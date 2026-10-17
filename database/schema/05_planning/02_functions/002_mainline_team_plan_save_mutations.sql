-- ============================================================================
-- Functions: planning mainline team plan save mutations
-- Client-callable helper that writes a whole Plan in one transaction.
-- ============================================================================
CREATE FUNCTION planning.save_mainline_team_plan (p_version_group_id integer, p_name text, p_members jsonb DEFAULT '[]'::jsonb, p_expansion_version_group_ids integer[] DEFAULT '{}'::integer[], p_team_plan_id uuid DEFAULT NULL, p_game_id integer DEFAULT NULL)
    RETURNS TABLE (
        result_team_plan_id uuid,
        result_created boolean)
    LANGUAGE plpgsql
    SECURITY INVOKER
    SET search_path = ''
    AS $$
DECLARE
    v_user_id uuid := auth.uid ();
    v_version_group reference.version_groups%ROWTYPE;
    v_existing_plan planning.mainline_team_plans%ROWTYPE;
    v_game_id integer;
    v_status_id integer;
    v_plan_id uuid;
    v_created boolean;
    v_expansion_ids integer[];
    v_invalid_expansion_ids integer[];
    v_member record;
    v_member_id uuid;
BEGIN
    IF v_user_id IS NULL THEN
        RAISE EXCEPTION 'An authenticated user is required to save a Plan'
            USING ERRCODE = '42501';
    END IF;
    IF p_version_group_id IS NULL THEN
        RAISE EXCEPTION 'version_group_id is required'
            USING ERRCODE = '23502';
    END IF;
    p_name := NULLIF (BTRIM(p_name), '');
    IF p_name IS NULL THEN
        RAISE EXCEPTION 'name is required'
            USING ERRCODE = '23502';
    END IF;
    p_members := COALESCE(p_members, '[]'::jsonb);
    IF jsonb_typeof(p_members) <> 'array' THEN
        RAISE EXCEPTION 'members must be a JSON array'
            USING ERRCODE = '22023';
    END IF;
    IF EXISTS (
        SELECT
            1
        FROM
            jsonb_array_elements(p_members) AS members (member)
        WHERE
            jsonb_typeof(members.member) <> 'object'
            OR jsonb_typeof(COALESCE(members.member -> 'move_ids', '[]'::jsonb))
            NOT IN ('array', 'null')) THEN
    RAISE EXCEPTION 'Each member must be a JSON object whose move_ids is an array'
        USING ERRCODE = '22023';
END IF;
    IF jsonb_array_length(p_members) > 6 THEN
        RAISE EXCEPTION 'A Plan can have at most six members'
            USING ERRCODE = '23514';
    END IF;
    IF EXISTS (
        SELECT
            1
        FROM
            jsonb_array_elements(p_members) AS members (member)
        WHERE
            jsonb_typeof(members.member -> 'move_ids') = 'array'
            AND jsonb_array_length(members.member -> 'move_ids') > 4) THEN
    RAISE EXCEPTION 'A planned Pokémon can have at most four moves'
    USING ERRCODE = '23514';
END IF;
    IF EXISTS (
        SELECT
            1
        FROM
            jsonb_to_recordset(p_members) AS members (slot integer)
        GROUP BY
            members.slot
        HAVING
            members.slot IS NULL
            OR COUNT(*) > 1) THEN
    RAISE EXCEPTION 'Every Plan member needs its own slot' USING ERRCODE = '23514';
END IF;
    SELECT
        version_groups.*
    INTO
        v_version_group
    FROM
        reference.version_groups
    WHERE
        version_groups.id = p_version_group_id;
    IF v_version_group.id IS NULL THEN
        RAISE EXCEPTION 'Unknown version_group_id %', p_version_group_id
            USING ERRCODE = '23503';
    END IF;
    IF v_version_group.parent_version_group_id IS NOT NULL THEN
        RAISE EXCEPTION 'Version group % is an expansion, not a game a Plan can be for', p_version_group_id
            USING ERRCODE = '23514';
    END IF;
    IF p_team_plan_id IS NOT NULL THEN
        SELECT
            mainline_team_plans.*
        INTO
            v_existing_plan
        FROM
            planning.mainline_team_plans
        WHERE
            mainline_team_plans.id = p_team_plan_id
        FOR UPDATE;
        IF v_existing_plan.id IS NULL THEN
            RAISE EXCEPTION 'Unknown or unavailable team_plan_id %', p_team_plan_id
                USING ERRCODE = '23503';
        END IF;
    END IF;
    -- The Plan's game: the one asked for, else the one it keeps while its
    -- version group is unchanged, else the version group's first game.
    IF p_game_id IS NOT NULL THEN
        IF NOT EXISTS (
            SELECT
                1
            FROM
                reference.games
            WHERE
                games.id = p_game_id
                AND games.version_group_id = p_version_group_id) THEN
        RAISE EXCEPTION 'Game % is not part of version group %', p_game_id, p_version_group_id
            USING ERRCODE = '23514';
    END IF;
    v_game_id := p_game_id;
ELSIF v_existing_plan.id IS NOT NULL
    AND v_existing_plan.version_group_id = p_version_group_id THEN
    v_game_id := v_existing_plan.game_id;
ELSE
    SELECT
        games.id
    INTO
        v_game_id
    FROM
        reference.games
    WHERE
        games.version_group_id = p_version_group_id
    ORDER BY
        games.sort_order,
        games.id
    LIMIT 1;
    IF v_game_id IS NULL THEN
        RAISE EXCEPTION 'Version group % has no games', p_version_group_id
            USING ERRCODE = '23503';
    END IF;
END IF;
    SELECT
        COALESCE(ARRAY_AGG(DISTINCT requested_id ORDER BY requested_id), '{}'::integer[])
    INTO
        v_expansion_ids
    FROM
        UNNEST(COALESCE(p_expansion_version_group_ids, '{}'::integer[])) AS requested (requested_id)
WHERE
    requested_id IS NOT NULL;
    SELECT
        COALESCE(ARRAY_AGG(requested_id ORDER BY requested_id), '{}'::integer[])
    INTO
        v_invalid_expansion_ids
    FROM
        UNNEST(v_expansion_ids) AS requested (requested_id)
WHERE
    NOT EXISTS (
        SELECT
            1
        FROM
            reference.game_content_scopes
            JOIN reference.version_groups ON version_groups.id = game_content_scopes.version_group_id
        WHERE
            game_content_scopes.game_id = v_game_id
            AND game_content_scopes.version_group_id = requested_id
            AND NOT game_content_scopes.is_base_scope
            AND version_groups.parent_version_group_id = p_version_group_id);
    IF ARRAY_LENGTH(v_invalid_expansion_ids, 1) IS NOT NULL THEN
        RAISE EXCEPTION 'Version groups % are not expansions of version group %', v_invalid_expansion_ids, p_version_group_id
            USING ERRCODE = '23514';
    END IF;
    IF v_existing_plan.id IS NULL THEN
        SELECT
            mainline_team_plan_statuses.id
        INTO
            v_status_id
        FROM
            planning.mainline_team_plan_statuses
        WHERE
            mainline_team_plan_statuses.slug = 'active';
        IF v_status_id IS NULL THEN
            RAISE EXCEPTION 'Plan status active is not set up'
                USING ERRCODE = '23503';
        END IF;
        INSERT INTO planning.mainline_team_plans (user_id, game_id, version_group_id, status_id, name)
            VALUES (v_user_id, v_game_id, p_version_group_id, v_status_id, p_name)
        RETURNING
            id
        INTO
            v_plan_id;
        v_created := TRUE;
    ELSE
        v_plan_id := v_existing_plan.id;
        v_created := FALSE;
        IF (v_existing_plan.version_group_id <> p_version_group_id OR v_existing_plan.game_id <> v_game_id) AND EXISTS (
        SELECT
            1
        FROM
            planning.mainline_play_plan_links
        WHERE
            mainline_play_plan_links.team_plan_id = v_plan_id) THEN
            RAISE EXCEPTION 'A Play follows team plan %, so its game cannot change', v_plan_id
                USING ERRCODE = '55000';
        END IF;
        -- Expansions are rewritten below; clearing them first lets the game change.
        DELETE FROM planning.mainline_team_plan_optional_content_scopes
        WHERE mainline_team_plan_optional_content_scopes.team_plan_id = v_plan_id;
        UPDATE
            planning.mainline_team_plans
        SET
            game_id = v_game_id,
            version_group_id = p_version_group_id,
            name = p_name
        WHERE
            mainline_team_plans.id = v_plan_id;
        -- Planned moves cascade with their members.
        DELETE FROM planning.mainline_team_plan_members
        WHERE mainline_team_plan_members.team_plan_id = v_plan_id;
    END IF;
    FOR v_member IN
    SELECT
        members.*
    FROM
        jsonb_to_recordset(p_members) AS members (slot integer,
        target_species_id integer,
        target_form_id integer,
        role_label text,
        notes text,
        gender text,
        nature_id integer,
        ability_id integer,
        held_item_id integer,
        move_ids jsonb)
ORDER BY
    members.slot LOOP
        INSERT INTO planning.mainline_team_plan_members (team_plan_id, slot, target_species_id, target_form_id, role_label, notes, gender, nature_id, ability_id, held_item_id)
            VALUES (v_plan_id, v_member.slot, v_member.target_species_id, v_member.target_form_id, NULLIF (BTRIM(v_member.role_label), ''), NULLIF (BTRIM(v_member.notes), ''), v_member.gender, v_member.nature_id, v_member.ability_id, v_member.held_item_id)
        RETURNING
            id
        INTO
            v_member_id;
        -- move_ids holds the four move slots in order; null leaves a slot empty.
        INSERT INTO planning.mainline_team_plan_member_moves (team_plan_member_id, slot, move_id)
        SELECT
            v_member_id,
            moves.move_slot::integer,
            (moves.move_id #>> '{}')::integer
        FROM
            jsonb_array_elements(COALESCE(NULLIF (v_member.move_ids, 'null'::jsonb), '[]'::jsonb))
            WITH ORDINALITY AS moves (move_id, move_slot)
        WHERE
            jsonb_typeof(moves.move_id) <> 'null';
    END LOOP;
INSERT INTO planning.mainline_team_plan_optional_content_scopes (team_plan_id, game_id, version_group_id)
SELECT
    v_plan_id,
    v_game_id,
    expansion_ids.version_group_id
FROM
    UNNEST(v_expansion_ids) AS expansion_ids (version_group_id);
    RETURN QUERY
    SELECT
        v_plan_id,
        v_created;
END;
$$;

REVOKE ALL ON FUNCTION planning.save_mainline_team_plan (INTEGER, TEXT, JSONB, INTEGER[], UUID, INTEGER) FROM PUBLIC;

REVOKE ALL ON FUNCTION planning.save_mainline_team_plan (INTEGER, TEXT, JSONB, INTEGER[], UUID, INTEGER) FROM anon;

GRANT EXECUTE ON FUNCTION planning.save_mainline_team_plan (INTEGER, TEXT, JSONB, INTEGER[], UUID, INTEGER) TO authenticated, service_role;

COMMENT ON FUNCTION planning.save_mainline_team_plan (INTEGER, TEXT, JSONB, INTEGER[], UUID, INTEGER) IS 'Atomically creates (no team_plan_id) or rewrites a Plan: its row, ordered members, planned move slots, and expansions. Refuses a game change while a Play follows the Plan. Build validation against reference data stays with the caller; ownership comes from planning RLS. Runs as SECURITY INVOKER.';
