-- ============================================================================
-- Functions: planning mainline team plan to play mutations
-- Client-callable helpers for linking and Play-scoped Plan cloning.
-- ============================================================================
CREATE FUNCTION planning.link_mainline_team_plan_to_play (p_play_id uuid, p_team_plan_id uuid, p_created_from_plan boolean DEFAULT FALSE)
    RETURNS TABLE (
        result_play_plan_link_id uuid)
    LANGUAGE plpgsql
    SECURITY INVOKER
    SET search_path = ''
    AS $$
DECLARE
    v_play gameplay.mainline_plays%ROWTYPE;
    v_team_plan planning.mainline_team_plans%ROWTYPE;
    v_existing_play_plan_link planning.mainline_play_plan_links%ROWTYPE;
    v_play_plan_link_id uuid;
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
    RETURN QUERY
    SELECT
        v_play_plan_link_id;
END;
$$;

CREATE FUNCTION planning.clone_mainline_team_plan_for_play (p_play_id uuid, p_name text DEFAULT NULL)
    RETURNS TABLE (
        result_source_team_plan_id uuid,
        result_team_plan_id uuid,
        result_play_plan_link_id uuid)
    LANGUAGE plpgsql
    SECURITY INVOKER
    SET search_path = ''
    AS $$
DECLARE
    v_play_plan_link planning.mainline_play_plan_links%ROWTYPE;
    v_source_plan planning.mainline_team_plans%ROWTYPE;
    v_source_member planning.mainline_team_plan_members%ROWTYPE;
    v_new_plan_id uuid;
    v_new_member_id uuid;
    v_name text;
BEGIN
    IF p_play_id IS NULL THEN
        RAISE EXCEPTION 'play_id is required'
            USING ERRCODE = '23502';
    END IF;
    SELECT
        mainline_play_plan_links.*
    INTO
        v_play_plan_link
    FROM
        planning.mainline_play_plan_links
    WHERE
        mainline_play_plan_links.play_id = p_play_id
    FOR UPDATE;
    IF v_play_plan_link.id IS NULL THEN
        RAISE EXCEPTION 'Unknown or unavailable linked Plan for play_id %', p_play_id
            USING ERRCODE = '23503';
    END IF;
    SELECT
        mainline_team_plans.*
    INTO
        v_source_plan
    FROM
        planning.mainline_team_plans
    WHERE
        mainline_team_plans.id = v_play_plan_link.team_plan_id
    FOR UPDATE;
    IF v_source_plan.id IS NULL THEN
        RAISE EXCEPTION 'Unknown or unavailable source team Plan'
            USING ERRCODE = '23503';
    END IF;
    v_name := COALESCE(NULLIF (BTRIM(p_name), ''), v_source_plan.name);
    INSERT INTO planning.mainline_team_plans (user_id, game_id, version_group_id, status_id, name, notes)
        VALUES (v_source_plan.user_id, v_source_plan.game_id, v_source_plan.version_group_id, v_source_plan.status_id, v_name, v_source_plan.notes)
    RETURNING
        id
    INTO
        v_new_plan_id;
    INSERT INTO planning.mainline_team_plan_optional_content_scopes (team_plan_id, game_id, version_group_id)
    SELECT
        v_new_plan_id,
        mainline_team_plan_optional_content_scopes.game_id,
        mainline_team_plan_optional_content_scopes.version_group_id
    FROM
        planning.mainline_team_plan_optional_content_scopes
    WHERE
        mainline_team_plan_optional_content_scopes.team_plan_id = v_source_plan.id;
    FOR v_source_member IN
    SELECT
        mainline_team_plan_members.*
    FROM
        planning.mainline_team_plan_members
    WHERE
        mainline_team_plan_members.team_plan_id = v_source_plan.id
    ORDER BY
        mainline_team_plan_members.slot LOOP
            INSERT INTO planning.mainline_team_plan_members (team_plan_id, slot, target_species_id, target_form_id, role_id, notes, gender, nature_id, ability_id, held_item_id)
                VALUES (v_new_plan_id, v_source_member.slot, v_source_member.target_species_id, v_source_member.target_form_id, v_source_member.role_id, v_source_member.notes, v_source_member.gender, v_source_member.nature_id, v_source_member.ability_id, v_source_member.held_item_id)
            RETURNING
                id
            INTO
                v_new_member_id;
            INSERT INTO planning.mainline_team_plan_member_moves (team_plan_member_id, slot, move_id)
            SELECT
                v_new_member_id,
                mainline_team_plan_member_moves.slot,
                mainline_team_plan_member_moves.move_id
            FROM
                planning.mainline_team_plan_member_moves
            WHERE
                mainline_team_plan_member_moves.team_plan_member_id = v_source_member.id;
        END LOOP;
    INSERT INTO planning.mainline_team_plan_tags (team_plan_id, tag_id, user_id)
    SELECT
        v_new_plan_id,
        mainline_team_plan_tags.tag_id,
        mainline_team_plan_tags.user_id
    FROM
        planning.mainline_team_plan_tags
    WHERE
        mainline_team_plan_tags.team_plan_id = v_source_plan.id;
    INSERT INTO planning.mainline_team_plan_challenge_rules (team_plan_id, challenge_rule_id, config_override)
    SELECT
        v_new_plan_id,
        mainline_team_plan_challenge_rules.challenge_rule_id,
        mainline_team_plan_challenge_rules.config_override
    FROM
        planning.mainline_team_plan_challenge_rules
    WHERE
        mainline_team_plan_challenge_rules.team_plan_id = v_source_plan.id;
    UPDATE
        planning.mainline_play_plan_links
    SET
        team_plan_id = v_new_plan_id,
        created_from_plan = FALSE
    WHERE
        mainline_play_plan_links.id = v_play_plan_link.id;
    RETURN QUERY
    SELECT
        v_source_plan.id,
        v_new_plan_id,
        v_play_plan_link.id;
END;
$$;

REVOKE ALL ON FUNCTION planning.link_mainline_team_plan_to_play (UUID, UUID, BOOLEAN) FROM PUBLIC;

REVOKE ALL ON FUNCTION planning.link_mainline_team_plan_to_play (UUID, UUID, BOOLEAN) FROM anon;

GRANT EXECUTE ON FUNCTION planning.link_mainline_team_plan_to_play (UUID, UUID, BOOLEAN) TO authenticated, service_role;

REVOKE ALL ON FUNCTION planning.clone_mainline_team_plan_for_play (UUID, TEXT) FROM PUBLIC;

REVOKE ALL ON FUNCTION planning.clone_mainline_team_plan_for_play (UUID, TEXT) FROM anon;

GRANT EXECUTE ON FUNCTION planning.clone_mainline_team_plan_for_play (UUID, TEXT) TO authenticated, service_role;

COMMENT ON FUNCTION planning.link_mainline_team_plan_to_play (UUID, UUID, BOOLEAN) IS 'Links a mainline play to its single reusable team Plan. Plan comparison is derived at read time instead of stored in per-member relationship rows.';

COMMENT ON FUNCTION planning.clone_mainline_team_plan_for_play (UUID, TEXT) IS 'Clones the complete reusable Plan linked to one Play and atomically relinks only that Play to the clone. Runs as SECURITY INVOKER so planning RLS applies.';
