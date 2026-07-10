-- ============================================================================
-- Functions: planning mainline team plan to play mutations
-- Client-callable helpers for plan-to-play realization.
-- ============================================================================
CREATE FUNCTION planning.link_mainline_team_plan_to_play (p_play_id uuid, p_team_plan_id uuid, p_created_from_plan boolean DEFAULT FALSE, p_create_member_links boolean DEFAULT TRUE)
    RETURNS TABLE (
        result_play_plan_link_id uuid,
        result_created_member_link_count integer)
    LANGUAGE plpgsql
    SECURITY INVOKER
    SET search_path = ''
    AS $$
DECLARE
    v_play gameplay.mainline_plays%ROWTYPE;
    v_team_plan planning.mainline_team_plans%ROWTYPE;
    v_existing_play_plan_link planning.mainline_play_plan_links%ROWTYPE;
    v_play_plan_link_id uuid;
    v_created_member_link_count integer := 0;
BEGIN
    IF p_play_id IS NULL THEN
        RAISE EXCEPTION 'play_id is required'
            USING ERRCODE = '23502';
    END IF;
    IF p_team_plan_id IS NULL THEN
        RAISE EXCEPTION 'team_plan_id is required'
            USING ERRCODE = '23502';
    END IF;
    SELECT
        mainline_plays.*
    INTO
        v_play
    FROM
        gameplay.mainline_plays
    WHERE
        mainline_plays.id = p_play_id
    FOR UPDATE;
    IF v_play.id IS NULL THEN
        RAISE EXCEPTION 'Unknown or unavailable play_id %', p_play_id
            USING ERRCODE = '23503';
    END IF;
    SELECT
        mainline_team_plans.*
    INTO
        v_team_plan
    FROM
        planning.mainline_team_plans
    WHERE
        mainline_team_plans.id = p_team_plan_id
    FOR UPDATE;
    IF v_team_plan.id IS NULL THEN
        RAISE EXCEPTION 'Unknown or unavailable team_plan_id %', p_team_plan_id
            USING ERRCODE = '23503';
    END IF;
    IF v_play.user_id <> v_team_plan.user_id OR v_play.game_id <> v_team_plan.game_id OR v_play.version_group_id <> v_team_plan.version_group_id THEN
        RAISE EXCEPTION 'Play and team plan must have the same owner, game, and version group'
            USING ERRCODE = '23514';
    END IF;
    SELECT
        mainline_play_plan_links.*
    INTO
        v_existing_play_plan_link
    FROM
        planning.mainline_play_plan_links
    WHERE
        mainline_play_plan_links.play_id = v_play.id
    FOR UPDATE;
    IF v_existing_play_plan_link.id IS NOT NULL AND v_existing_play_plan_link.team_plan_id <> v_team_plan.id THEN
        RAISE EXCEPTION 'Play already has a linked team plan. Unlink or replace it explicitly before linking another team plan.'
            USING ERRCODE = '23505';
    END IF;
    IF v_existing_play_plan_link.id IS NULL THEN
        INSERT INTO planning.mainline_play_plan_links (play_id, team_plan_id, user_id, game_id, version_group_id, created_from_plan)
            VALUES (v_play.id, v_team_plan.id, v_play.user_id, v_play.game_id, v_play.version_group_id, p_created_from_plan)
        RETURNING
            id
        INTO
            v_play_plan_link_id;
    ELSE
        UPDATE
            planning.mainline_play_plan_links
        SET
            created_from_plan = planning.mainline_play_plan_links.created_from_plan
            OR p_created_from_plan
        WHERE
            mainline_play_plan_links.id = v_existing_play_plan_link.id
        RETURNING
            id
        INTO
            v_play_plan_link_id;
    END IF;
    IF p_create_member_links THEN
        INSERT INTO planning.mainline_play_plan_member_links (play_plan_link_id, play_id, team_plan_id, team_plan_member_id, status_id)
        SELECT
            v_play_plan_link_id,
            v_play.id,
            v_team_plan.id,
            mainline_team_plan_members.id,
            1
        FROM
            planning.mainline_team_plan_members
        WHERE
            mainline_team_plan_members.team_plan_id = v_team_plan.id
        ON CONFLICT (play_plan_link_id,
            team_plan_member_id)
            DO NOTHING;
        GET DIAGNOSTICS v_created_member_link_count = ROW_COUNT;
    END IF;
    RETURN QUERY
    SELECT
        v_play_plan_link_id,
        v_created_member_link_count;
END;
$$;

CREATE FUNCTION planning.initialize_mainline_play_plan_member_links (p_play_plan_link_id uuid, p_member_group text DEFAULT NULL)
    RETURNS integer
    LANGUAGE plpgsql
    SECURITY INVOKER
    SET search_path = ''
    AS $$
DECLARE
    v_play_plan_link planning.mainline_play_plan_links%ROWTYPE;
    v_member_group text;
    v_created_member_link_count integer := 0;
BEGIN
    IF p_play_plan_link_id IS NULL THEN
        RAISE EXCEPTION 'play_plan_link_id is required'
            USING ERRCODE = '23502';
    END IF;
    v_member_group := NULLIF (BTRIM(p_member_group), '');
    IF v_member_group IS NOT NULL AND v_member_group NOT IN ('primary', 'alternate') THEN
        RAISE EXCEPTION 'Unsupported plan member group %', v_member_group
            USING ERRCODE = '23514';
    END IF;
    SELECT
        mainline_play_plan_links.*
    INTO
        v_play_plan_link
    FROM
        planning.mainline_play_plan_links
    WHERE
        mainline_play_plan_links.id = p_play_plan_link_id
    FOR UPDATE;
    IF v_play_plan_link.id IS NULL THEN
        RAISE EXCEPTION 'Unknown or unavailable play_plan_link_id %', p_play_plan_link_id
            USING ERRCODE = '23503';
    END IF;
    INSERT INTO planning.mainline_play_plan_member_links (play_plan_link_id, play_id, team_plan_id, team_plan_member_id, status_id)
    SELECT
        v_play_plan_link.id,
        v_play_plan_link.play_id,
        v_play_plan_link.team_plan_id,
        mainline_team_plan_members.id,
        1
    FROM
        planning.mainline_team_plan_members
    WHERE
        mainline_team_plan_members.team_plan_id = v_play_plan_link.team_plan_id
        AND (v_member_group IS NULL
            OR mainline_team_plan_members.member_group = v_member_group)
    ON CONFLICT (play_plan_link_id,
        team_plan_member_id)
        DO NOTHING;
    GET DIAGNOSTICS v_created_member_link_count = ROW_COUNT;
    RETURN v_created_member_link_count;
END;
$$;

CREATE FUNCTION planning.refresh_mainline_play_plan_member_link_status (p_play_plan_link_id uuid, p_team_plan_member_id uuid, p_reached_at timestamptz DEFAULT NOW())
    RETURNS TABLE (
        result_play_plan_link_id uuid,
        result_team_plan_member_id uuid,
        result_play_pokemon_id uuid,
        result_status_id integer,
        result_reached_at timestamptz)
    LANGUAGE plpgsql
    SECURITY INVOKER
    SET search_path = ''
    AS $$
DECLARE
    v_member_link planning.mainline_play_plan_member_links%ROWTYPE;
    v_plan_member planning.mainline_team_plan_members%ROWTYPE;
    v_has_reached_target boolean := FALSE;
BEGIN
    IF p_play_plan_link_id IS NULL THEN
        RAISE EXCEPTION 'play_plan_link_id is required'
            USING ERRCODE = '23502';
    END IF;
    IF p_team_plan_member_id IS NULL THEN
        RAISE EXCEPTION 'team_plan_member_id is required'
            USING ERRCODE = '23502';
    END IF;
    SELECT
        mainline_play_plan_member_links.*
    INTO
        v_member_link
    FROM
        planning.mainline_play_plan_member_links
    WHERE
        mainline_play_plan_member_links.play_plan_link_id = p_play_plan_link_id
        AND mainline_play_plan_member_links.team_plan_member_id = p_team_plan_member_id
    FOR UPDATE;
    IF v_member_link.play_plan_link_id IS NULL THEN
        RAISE EXCEPTION 'Unknown or unavailable play-plan member link'
            USING ERRCODE = '23503';
    END IF;
    SELECT
        mainline_team_plan_members.*
    INTO
        v_plan_member
    FROM
        planning.mainline_team_plan_members
    WHERE
        mainline_team_plan_members.id = v_member_link.team_plan_member_id
        AND mainline_team_plan_members.team_plan_id = v_member_link.team_plan_id;
    IF v_plan_member.id IS NULL THEN
        RAISE EXCEPTION 'Unknown or unavailable team_plan_member_id %', p_team_plan_member_id
            USING ERRCODE = '23503';
    END IF;
    IF v_member_link.status_id = 4 THEN
        RETURN QUERY
        SELECT
            v_member_link.play_plan_link_id,
            v_member_link.team_plan_member_id,
            v_member_link.play_pokemon_id,
            v_member_link.status_id,
            v_member_link.reached_at;
        RETURN;
    END IF;
    IF v_member_link.play_pokemon_id IS NULL THEN
        UPDATE
            planning.mainline_play_plan_member_links
        SET
            status_id = 1,
            linked_at = NULL,
            reached_at = NULL
        WHERE
            mainline_play_plan_member_links.play_plan_link_id = p_play_plan_link_id
            AND mainline_play_plan_member_links.team_plan_member_id = p_team_plan_member_id
        RETURNING
            mainline_play_plan_member_links.*
        INTO
            v_member_link;
    ELSE
        SELECT
            EXISTS (
                SELECT
                    1
                FROM
                    gameplay.mainline_play_pokemon
                WHERE
                    mainline_play_pokemon.id = v_member_link.play_pokemon_id
                    AND mainline_play_pokemon.play_id = v_member_link.play_id
                    AND mainline_play_pokemon.species_id = v_plan_member.target_species_id
                    AND mainline_play_pokemon.form_id = v_plan_member.target_form_id)
            OR EXISTS (
                SELECT
                    1
                FROM
                    gameplay.mainline_play_event_pokemon_refs
                WHERE
                    mainline_play_event_pokemon_refs.play_id = v_member_link.play_id
                    AND mainline_play_event_pokemon_refs.play_pokemon_id = v_member_link.play_pokemon_id
                    AND mainline_play_event_pokemon_refs.species_id = v_plan_member.target_species_id
                    AND mainline_play_event_pokemon_refs.form_id = v_plan_member.target_form_id)
        INTO
            v_has_reached_target;
        UPDATE
            planning.mainline_play_plan_member_links
        SET
            status_id = CASE WHEN v_has_reached_target THEN
                3
            ELSE
                2
            END,
            linked_at = COALESCE(planning.mainline_play_plan_member_links.linked_at, NOW()),
            reached_at = CASE WHEN v_has_reached_target THEN
                COALESCE(planning.mainline_play_plan_member_links.reached_at, p_reached_at, NOW())
            ELSE
                planning.mainline_play_plan_member_links.reached_at
            END,
            skipped_at = NULL
        WHERE
            mainline_play_plan_member_links.play_plan_link_id = p_play_plan_link_id
            AND mainline_play_plan_member_links.team_plan_member_id = p_team_plan_member_id
        RETURNING
            mainline_play_plan_member_links.*
        INTO
            v_member_link;
    END IF;
    RETURN QUERY
    SELECT
        v_member_link.play_plan_link_id,
        v_member_link.team_plan_member_id,
        v_member_link.play_pokemon_id,
        v_member_link.status_id,
        v_member_link.reached_at;
END;
$$;

CREATE FUNCTION planning.link_mainline_play_pokemon_to_plan_member (p_play_plan_link_id uuid, p_team_plan_member_id uuid, p_play_pokemon_id uuid, p_notes text DEFAULT NULL, p_reached_at timestamptz DEFAULT NOW())
    RETURNS TABLE (
        result_play_plan_link_id uuid,
        result_team_plan_member_id uuid,
        result_play_pokemon_id uuid,
        result_status_id integer,
        result_reached_at timestamptz)
    LANGUAGE plpgsql
    SECURITY INVOKER
    SET search_path = ''
    AS $$
DECLARE
    v_play_plan_link planning.mainline_play_plan_links%ROWTYPE;
    v_plan_member planning.mainline_team_plan_members%ROWTYPE;
    v_play_pokemon gameplay.mainline_play_pokemon%ROWTYPE;
    v_notes text;
BEGIN
    IF p_play_plan_link_id IS NULL THEN
        RAISE EXCEPTION 'play_plan_link_id is required'
            USING ERRCODE = '23502';
    END IF;
    IF p_team_plan_member_id IS NULL THEN
        RAISE EXCEPTION 'team_plan_member_id is required'
            USING ERRCODE = '23502';
    END IF;
    IF p_play_pokemon_id IS NULL THEN
        RAISE EXCEPTION 'play_pokemon_id is required'
            USING ERRCODE = '23502';
    END IF;
    v_notes := NULLIF (BTRIM(p_notes), '');
    SELECT
        mainline_play_plan_links.*
    INTO
        v_play_plan_link
    FROM
        planning.mainline_play_plan_links
    WHERE
        mainline_play_plan_links.id = p_play_plan_link_id
    FOR UPDATE;
    IF v_play_plan_link.id IS NULL THEN
        RAISE EXCEPTION 'Unknown or unavailable play_plan_link_id %', p_play_plan_link_id
            USING ERRCODE = '23503';
    END IF;
    SELECT
        mainline_team_plan_members.*
    INTO
        v_plan_member
    FROM
        planning.mainline_team_plan_members
    WHERE
        mainline_team_plan_members.id = p_team_plan_member_id
        AND mainline_team_plan_members.team_plan_id = v_play_plan_link.team_plan_id;
    IF v_plan_member.id IS NULL THEN
        RAISE EXCEPTION 'Unknown or unavailable team_plan_member_id % for this play-plan link', p_team_plan_member_id
            USING ERRCODE = '23503';
    END IF;
    SELECT
        mainline_play_pokemon.*
    INTO
        v_play_pokemon
    FROM
        gameplay.mainline_play_pokemon
    WHERE
        mainline_play_pokemon.id = p_play_pokemon_id
        AND mainline_play_pokemon.play_id = v_play_plan_link.play_id
    FOR UPDATE;
    IF v_play_pokemon.id IS NULL THEN
        RAISE EXCEPTION 'Unknown or unavailable play_pokemon_id % for this play', p_play_pokemon_id
            USING ERRCODE = '23503';
    END IF;
    INSERT INTO planning.mainline_play_plan_member_links (play_plan_link_id, play_id, team_plan_id, team_plan_member_id, play_pokemon_id, status_id, linked_at, notes)
        VALUES (v_play_plan_link.id, v_play_plan_link.play_id, v_play_plan_link.team_plan_id, v_plan_member.id, v_play_pokemon.id, 2, NOW(), v_notes)
    ON CONFLICT (play_plan_link_id, team_plan_member_id)
        DO UPDATE SET
            play_pokemon_id = EXCLUDED.play_pokemon_id,
            status_id = 2,
            linked_at = COALESCE(planning.mainline_play_plan_member_links.linked_at, EXCLUDED.linked_at),
            reached_at = NULL,
            skipped_at = NULL,
            notes = COALESCE(EXCLUDED.notes, planning.mainline_play_plan_member_links.notes);
    RETURN QUERY
    SELECT
        *
    FROM
        planning.refresh_mainline_play_plan_member_link_status (v_play_plan_link.id, v_plan_member.id, p_reached_at);
END;
$$;

CREATE FUNCTION planning.realize_mainline_team_plan_member (p_play_plan_link_id uuid, p_team_plan_member_id uuid, p_use_preferred_start boolean DEFAULT TRUE, p_roster_state_id integer DEFAULT 1, p_slot integer DEFAULT NULL, p_nickname text DEFAULT NULL, p_level integer DEFAULT NULL, p_gender text DEFAULT 'unknown', p_is_shiny boolean DEFAULT FALSE, p_nature_id integer DEFAULT NULL, p_ability_id integer DEFAULT NULL, p_held_item_id integer DEFAULT NULL, p_met_location_label text DEFAULT NULL, p_met_level integer DEFAULT NULL, p_ball_item_id integer DEFAULT NULL, p_personal_notes text DEFAULT NULL, p_include_planned_moves boolean DEFAULT FALSE, p_create_event boolean DEFAULT TRUE, p_event_title text DEFAULT NULL, p_event_body text DEFAULT NULL, p_event_happened_at timestamptz DEFAULT NOW(), p_link_notes text DEFAULT NULL)
    RETURNS TABLE (
        result_play_plan_link_id uuid,
        result_team_plan_member_id uuid,
        result_play_pokemon_id uuid,
        result_event_id uuid,
        result_status_id integer,
        result_reached_at timestamptz)
    LANGUAGE plpgsql
    SECURITY INVOKER
    SET search_path = ''
    AS $$
DECLARE
    v_play_plan_link planning.mainline_play_plan_links%ROWTYPE;
    v_plan_member planning.mainline_team_plan_members%ROWTYPE;
    v_species_id integer;
    v_form_id integer;
    v_move_ids integer[] := '{}'::integer[];
    v_play_pokemon_id uuid;
    v_event_id uuid;
    v_link_result RECORD;
BEGIN
    IF p_play_plan_link_id IS NULL THEN
        RAISE EXCEPTION 'play_plan_link_id is required'
            USING ERRCODE = '23502';
    END IF;
    IF p_team_plan_member_id IS NULL THEN
        RAISE EXCEPTION 'team_plan_member_id is required'
            USING ERRCODE = '23502';
    END IF;
    SELECT
        mainline_play_plan_links.*
    INTO
        v_play_plan_link
    FROM
        planning.mainline_play_plan_links
    WHERE
        mainline_play_plan_links.id = p_play_plan_link_id
    FOR UPDATE;
    IF v_play_plan_link.id IS NULL THEN
        RAISE EXCEPTION 'Unknown or unavailable play_plan_link_id %', p_play_plan_link_id
            USING ERRCODE = '23503';
    END IF;
    SELECT
        mainline_team_plan_members.*
    INTO
        v_plan_member
    FROM
        planning.mainline_team_plan_members
    WHERE
        mainline_team_plan_members.id = p_team_plan_member_id
        AND mainline_team_plan_members.team_plan_id = v_play_plan_link.team_plan_id
    FOR UPDATE;
    IF v_plan_member.id IS NULL THEN
        RAISE EXCEPTION 'Unknown or unavailable team_plan_member_id % for this play-plan link', p_team_plan_member_id
            USING ERRCODE = '23503';
    END IF;
    IF p_use_preferred_start AND v_plan_member.preferred_start_species_id IS NOT NULL THEN
        v_species_id := v_plan_member.preferred_start_species_id;
        v_form_id := v_plan_member.preferred_start_form_id;
    ELSE
        v_species_id := v_plan_member.target_species_id;
        v_form_id := v_plan_member.target_form_id;
    END IF;
    IF p_include_planned_moves THEN
        SELECT
            COALESCE(ARRAY_AGG(mainline_team_plan_member_moves.move_id ORDER BY mainline_team_plan_member_moves.slot), '{}'::integer[])
        INTO
            v_move_ids
        FROM
            planning.mainline_team_plan_member_moves
        WHERE
            mainline_team_plan_member_moves.team_plan_member_id = v_plan_member.id;
    END IF;
    SELECT
        added.result_play_pokemon_id,
        added.result_event_id
    INTO
        v_play_pokemon_id,
        v_event_id
    FROM
        gameplay.add_mainline_play_pokemon (v_play_plan_link.play_id, p_roster_state_id, p_slot, v_species_id, v_form_id, p_nickname, p_level, p_gender, p_is_shiny, COALESCE(p_nature_id, v_plan_member.nature_id), COALESCE(p_ability_id, v_plan_member.ability_id), COALESCE(p_held_item_id, v_plan_member.held_item_id), p_met_location_label, p_met_level, p_ball_item_id, p_personal_notes, v_move_ids, p_create_event, p_event_title, p_event_body, p_event_happened_at) AS added;
    SELECT
        *
    INTO
        v_link_result
    FROM
        planning.link_mainline_play_pokemon_to_plan_member (v_play_plan_link.id, v_plan_member.id, v_play_pokemon_id, p_link_notes, p_event_happened_at);
    RETURN QUERY
    SELECT
        v_play_plan_link.id,
        v_plan_member.id,
        v_play_pokemon_id,
        v_event_id,
        v_link_result.result_status_id::integer,
        v_link_result.result_reached_at::timestamptz;
END;
$$;

CREATE FUNCTION planning.skip_mainline_team_plan_member (p_play_plan_link_id uuid, p_team_plan_member_id uuid, p_notes text DEFAULT NULL, p_skipped_at timestamptz DEFAULT NOW())
    RETURNS TABLE (
        result_play_plan_link_id uuid,
        result_team_plan_member_id uuid,
        result_status_id integer,
        result_skipped_at timestamptz)
    LANGUAGE plpgsql
    SECURITY INVOKER
    SET search_path = ''
    AS $$
DECLARE
    v_member_link planning.mainline_play_plan_member_links%ROWTYPE;
    v_notes text;
BEGIN
    IF p_play_plan_link_id IS NULL THEN
        RAISE EXCEPTION 'play_plan_link_id is required'
            USING ERRCODE = '23502';
    END IF;
    IF p_team_plan_member_id IS NULL THEN
        RAISE EXCEPTION 'team_plan_member_id is required'
            USING ERRCODE = '23502';
    END IF;
    v_notes := NULLIF (BTRIM(p_notes), '');
    UPDATE
        planning.mainline_play_plan_member_links
    SET
        status_id = 4,
        skipped_at = COALESCE(p_skipped_at, NOW()),
        notes = COALESCE(v_notes, planning.mainline_play_plan_member_links.notes)
    WHERE
        mainline_play_plan_member_links.play_plan_link_id = p_play_plan_link_id
        AND mainline_play_plan_member_links.team_plan_member_id = p_team_plan_member_id
    RETURNING
        mainline_play_plan_member_links.*
    INTO
        v_member_link;
    IF v_member_link.play_plan_link_id IS NULL THEN
        RAISE EXCEPTION 'Unknown or unavailable play-plan member link'
            USING ERRCODE = '23503';
    END IF;
    UPDATE
        planning.mainline_play_plan_member_links
    SET
        play_pokemon_id = NULL,
        linked_at = NULL,
        reached_at = NULL
    WHERE
        mainline_play_plan_member_links.play_plan_link_id = p_play_plan_link_id
        AND mainline_play_plan_member_links.team_plan_member_id = p_team_plan_member_id
    RETURNING
        mainline_play_plan_member_links.*
    INTO
        v_member_link;
    RETURN QUERY
    SELECT
        v_member_link.play_plan_link_id,
        v_member_link.team_plan_member_id,
        v_member_link.status_id,
        v_member_link.skipped_at;
END;
$$;

REVOKE ALL ON FUNCTION planning.link_mainline_team_plan_to_play (UUID, UUID, BOOLEAN, BOOLEAN) FROM PUBLIC;

REVOKE ALL ON FUNCTION planning.link_mainline_team_plan_to_play (UUID, UUID, BOOLEAN, BOOLEAN) FROM anon;

GRANT EXECUTE ON FUNCTION planning.link_mainline_team_plan_to_play (UUID, UUID, BOOLEAN, BOOLEAN) TO authenticated, service_role;

REVOKE ALL ON FUNCTION planning.initialize_mainline_play_plan_member_links (UUID, TEXT) FROM PUBLIC;

REVOKE ALL ON FUNCTION planning.initialize_mainline_play_plan_member_links (UUID, TEXT) FROM anon;

GRANT EXECUTE ON FUNCTION planning.initialize_mainline_play_plan_member_links (UUID, TEXT) TO authenticated, service_role;

REVOKE ALL ON FUNCTION planning.refresh_mainline_play_plan_member_link_status (UUID, UUID, TIMESTAMPTZ) FROM PUBLIC;

REVOKE ALL ON FUNCTION planning.refresh_mainline_play_plan_member_link_status (UUID, UUID, TIMESTAMPTZ) FROM anon;

GRANT EXECUTE ON FUNCTION planning.refresh_mainline_play_plan_member_link_status (UUID, UUID, TIMESTAMPTZ) TO authenticated, service_role;

REVOKE ALL ON FUNCTION planning.link_mainline_play_pokemon_to_plan_member (UUID, UUID, UUID, TEXT, TIMESTAMPTZ) FROM PUBLIC;

REVOKE ALL ON FUNCTION planning.link_mainline_play_pokemon_to_plan_member (UUID, UUID, UUID, TEXT, TIMESTAMPTZ) FROM anon;

GRANT EXECUTE ON FUNCTION planning.link_mainline_play_pokemon_to_plan_member (UUID, UUID, UUID, TEXT, TIMESTAMPTZ) TO authenticated, service_role;

REVOKE ALL ON FUNCTION planning.realize_mainline_team_plan_member (UUID, UUID, BOOLEAN, INTEGER, INTEGER, TEXT, INTEGER, TEXT, BOOLEAN, INTEGER, INTEGER, INTEGER, TEXT, INTEGER, INTEGER, TEXT, BOOLEAN, BOOLEAN, TEXT, TEXT, TIMESTAMPTZ, TEXT) FROM PUBLIC;

REVOKE ALL ON FUNCTION planning.realize_mainline_team_plan_member (UUID, UUID, BOOLEAN, INTEGER, INTEGER, TEXT, INTEGER, TEXT, BOOLEAN, INTEGER, INTEGER, INTEGER, TEXT, INTEGER, INTEGER, TEXT, BOOLEAN, BOOLEAN, TEXT, TEXT, TIMESTAMPTZ, TEXT) FROM anon;

GRANT EXECUTE ON FUNCTION planning.realize_mainline_team_plan_member (UUID, UUID, BOOLEAN, INTEGER, INTEGER, TEXT, INTEGER, TEXT, BOOLEAN, INTEGER, INTEGER, INTEGER, TEXT, INTEGER, INTEGER, TEXT, BOOLEAN, BOOLEAN, TEXT, TEXT, TIMESTAMPTZ, TEXT) TO authenticated, service_role;

REVOKE ALL ON FUNCTION planning.skip_mainline_team_plan_member (UUID, UUID, TEXT, TIMESTAMPTZ) FROM PUBLIC;

REVOKE ALL ON FUNCTION planning.skip_mainline_team_plan_member (UUID, UUID, TEXT, TIMESTAMPTZ) FROM anon;

GRANT EXECUTE ON FUNCTION planning.skip_mainline_team_plan_member (UUID, UUID, TEXT, TIMESTAMPTZ) TO authenticated, service_role;

COMMENT ON FUNCTION planning.link_mainline_team_plan_to_play (UUID, UUID, BOOLEAN, BOOLEAN) IS 'Links a mainline play to its single reusable team plan and optionally initializes pending plan member links. Runs as SECURITY INVOKER so gameplay and planning RLS apply.';

COMMENT ON FUNCTION planning.initialize_mainline_play_plan_member_links (UUID, TEXT) IS 'Creates missing pending plan member links for a play-plan link. Runs as SECURITY INVOKER so planning RLS applies.';

COMMENT ON FUNCTION planning.refresh_mainline_play_plan_member_link_status (UUID, UUID, TIMESTAMPTZ) IS 'Refreshes a play-plan member link to pending, linked, or reached by checking the linked play Pokémon current and event-time identities. Runs as SECURITY INVOKER so planning and gameplay RLS apply.';

COMMENT ON FUNCTION planning.link_mainline_play_pokemon_to_plan_member (UUID, UUID, UUID, TEXT, TIMESTAMPTZ) IS 'Links an existing play Pokémon to a planned team member and refreshes linked/reached status. Runs as SECURITY INVOKER so planning and gameplay RLS apply.';

COMMENT ON FUNCTION planning.realize_mainline_team_plan_member (UUID, UUID, BOOLEAN, INTEGER, INTEGER, TEXT, INTEGER, TEXT, BOOLEAN, INTEGER, INTEGER, INTEGER, TEXT, INTEGER, INTEGER, TEXT, BOOLEAN, BOOLEAN, TEXT, TEXT, TIMESTAMPTZ, TEXT) IS 'Creates a play Pokémon from a planned member, preserving the reusable plan while linking the realized Pokémon to that plan member. Runs as SECURITY INVOKER so planning and gameplay RLS apply.';

COMMENT ON FUNCTION planning.skip_mainline_team_plan_member (UUID, UUID, TEXT, TIMESTAMPTZ) IS 'Marks a play-specific plan member link as skipped and clears any Pokémon link. Runs as SECURITY INVOKER so planning RLS applies.';
