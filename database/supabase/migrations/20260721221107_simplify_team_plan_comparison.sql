-- Replace explicit per-member Plan realization with automatic runtime
-- comparison against the Play's current and historical Pokémon records.
DROP VIEW IF EXISTS views.mainline_play_team_plan_detail;

DROP VIEW IF EXISTS views.mainline_team_plan_detail;

DROP VIEW IF EXISTS views.mainline_team_plan_summary;

DROP FUNCTION IF EXISTS planning.link_mainline_team_plan_to_play (UUID, UUID, BOOLEAN, BOOLEAN);

DROP FUNCTION IF EXISTS planning.link_mainline_team_plan_to_play (UUID, UUID, BOOLEAN);

DROP FUNCTION IF EXISTS planning.clone_mainline_team_plan_for_play (UUID, TEXT);

DROP FUNCTION IF EXISTS planning.initialize_mainline_play_plan_member_links (UUID, TEXT);

DROP FUNCTION IF EXISTS planning.refresh_mainline_play_plan_member_link_status (UUID, UUID, TIMESTAMPTZ);

DROP FUNCTION IF EXISTS planning.link_mainline_play_pokemon_to_plan_member (UUID, UUID, UUID, TEXT, TIMESTAMPTZ);

DROP FUNCTION IF EXISTS planning.realize_mainline_team_plan_member (UUID, UUID, BOOLEAN, INTEGER, INTEGER, TEXT, INTEGER, TEXT, BOOLEAN, INTEGER, INTEGER, INTEGER, TEXT, INTEGER, INTEGER, TEXT, BOOLEAN, BOOLEAN, TEXT, TEXT, TIMESTAMPTZ, TEXT);

DROP FUNCTION IF EXISTS planning.skip_mainline_team_plan_member (UUID, UUID, TEXT, TIMESTAMPTZ);

DROP TABLE IF EXISTS planning.mainline_play_plan_member_links;

DROP TABLE IF EXISTS planning.mainline_plan_member_link_statuses;

DROP INDEX IF EXISTS planning.team_plan_members_plan_group_slot_unique;

DROP INDEX IF EXISTS planning.team_plan_members_preferred_start_identity_idx;

DO $$
BEGIN
    IF EXISTS (
        SELECT
            1
        FROM
            information_schema.columns
        WHERE
            table_schema = 'planning'
            AND table_name = 'mainline_team_plan_members'
            AND column_name = 'member_group') THEN
    WITH ranked_members AS (
        SELECT
            id,
            ROW_NUMBER() OVER (PARTITION BY team_plan_id ORDER BY CASE member_group
                WHEN 'primary' THEN
                    0
                ELSE
                    1
                END,
                slot NULLS LAST,
                created_at,
                id) AS member_rank
    FROM
        planning.mainline_team_plan_members)
DELETE FROM planning.mainline_team_plan_members USING ranked_members
    WHERE mainline_team_plan_members.id = ranked_members.id
        AND ranked_members.member_rank > 6;
        WITH ranked_members AS (
            SELECT
                id,
                ROW_NUMBER() OVER (PARTITION BY team_plan_id ORDER BY CASE member_group
                    WHEN 'primary' THEN
                        0
                    ELSE
                        1
                    END,
                    slot NULLS LAST,
                    created_at,
                    id) AS member_rank
            FROM
                planning.mainline_team_plan_members)
        UPDATE
            planning.mainline_team_plan_members
        SET
            slot = ranked_members.member_rank
        FROM
            ranked_members
        WHERE
            mainline_team_plan_members.id = ranked_members.id;
        ALTER TABLE planning.mainline_team_plan_members
            DROP CONSTRAINT IF EXISTS team_plan_members_preferred_start_form_fkey,
            DROP CONSTRAINT IF EXISTS team_plan_members_group_check,
            DROP CONSTRAINT IF EXISTS team_plan_members_preferred_start_pair_check,
            DROP CONSTRAINT IF EXISTS team_plan_members_slot_range_check,
            DROP COLUMN IF EXISTS member_group,
            DROP COLUMN IF EXISTS preferred_start_species_id,
            DROP COLUMN IF EXISTS preferred_start_form_id,
            ADD COLUMN gender text,
            ALTER COLUMN slot SET NOT NULL,
            ADD CONSTRAINT team_plan_members_plan_slot_unique UNIQUE (team_plan_id, slot),
            ADD CONSTRAINT team_plan_members_slot_range_check CHECK (slot BETWEEN 1 AND 6),
            ADD CONSTRAINT team_plan_members_gender_check CHECK (gender IS NULL OR gender IN ('male', 'female', 'genderless'));
END IF;
END;
$$;

COMMENT ON TABLE planning.mainline_team_plan_members IS 'Ordered planned Pokémon targets. Every member is a primary target; species and form are required while build preferences are optional.';

COMMENT ON COLUMN planning.mainline_team_plan_members.gender IS 'Optional planned gender. NULL means the plan does not constrain gender.';

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
            INSERT INTO planning.mainline_team_plan_members (team_plan_id, slot, target_species_id, target_form_id, role_label, notes, gender, nature_id, ability_id, held_item_id)
                VALUES (v_new_plan_id, v_source_member.slot, v_source_member.target_species_id, v_source_member.target_form_id, v_source_member.role_label, v_source_member.notes, v_source_member.gender, v_source_member.nature_id, v_source_member.ability_id, v_source_member.held_item_id)
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

REVOKE ALL ON FUNCTION planning.link_mainline_team_plan_to_play (UUID, UUID, BOOLEAN) FROM PUBLIC, anon;

GRANT EXECUTE ON FUNCTION planning.link_mainline_team_plan_to_play (UUID, UUID, BOOLEAN) TO authenticated, service_role;

REVOKE ALL ON FUNCTION planning.clone_mainline_team_plan_for_play (UUID, TEXT) FROM PUBLIC, anon;

GRANT EXECUTE ON FUNCTION planning.clone_mainline_team_plan_for_play (UUID, TEXT) TO authenticated, service_role;

COMMENT ON FUNCTION planning.link_mainline_team_plan_to_play (UUID, UUID, BOOLEAN) IS 'Links a mainline play to its single reusable team Plan. Plan comparison is derived at read time instead of stored in per-member relationship rows.';

COMMENT ON FUNCTION planning.clone_mainline_team_plan_for_play (UUID, TEXT) IS 'Clones the complete reusable Plan linked to one Play and atomically relinks only that Play to the clone. Runs as SECURITY INVOKER so planning RLS applies.';

CREATE VIEW views.mainline_team_plan_summary WITH ( security_invoker = TRUE
) AS
SELECT
    mainline_team_plans.id AS team_plan_id,
    mainline_team_plans.user_id,
    mainline_team_plans.name AS team_plan_name,
    mainline_team_plans.game_id,
    games.slug AS game_slug,
    games.name AS game_name,
    mainline_team_plans.version_group_id,
    version_groups.slug AS version_group_slug,
    version_groups.name AS version_group_name,
    games.generation_id,
    generations.slug AS generation_slug,
    generations.name AS generation_name,
    mainline_team_plans.status_id,
    mainline_team_plan_statuses.slug AS status_slug,
    mainline_team_plan_statuses.name AS status_name,
    mainline_team_plans.notes,
    mainline_team_plans.created_at,
    mainline_team_plans.updated_at,
    (
        SELECT
            COUNT(
                *
)
        FROM
            planning.mainline_team_plan_members
        WHERE
            mainline_team_plan_members.team_plan_id = mainline_team_plans.id
) AS member_count,
    (
        SELECT
            COUNT(
                *
)
        FROM
            planning.mainline_play_plan_links
        WHERE
            mainline_play_plan_links.team_plan_id = mainline_team_plans.id
) AS linked_play_count,
    (
        SELECT
            COUNT(
                *
)
        FROM
            planning.mainline_team_plan_optional_content_scopes
        WHERE
            mainline_team_plan_optional_content_scopes.team_plan_id = mainline_team_plans.id
) AS optional_content_scope_count
FROM
    planning.mainline_team_plans
    JOIN planning.mainline_team_plan_statuses ON mainline_team_plan_statuses.id = mainline_team_plans.status_id
    JOIN reference.games ON games.id = mainline_team_plans.game_id
    JOIN reference.version_groups ON version_groups.id = mainline_team_plans.version_group_id
    JOIN reference.generations ON generations.id = games.generation_id;

CREATE VIEW views.mainline_team_plan_detail WITH ( security_invoker = TRUE
) AS
SELECT
    mainline_team_plan_members.id AS team_plan_member_id,
    mainline_team_plan_members.team_plan_id,
    mainline_team_plans.user_id,
    mainline_team_plan_members.slot,
    mainline_team_plan_members.target_species_id,
    target_species.slug AS target_species_slug,
    target_species.name AS target_species_name,
    target_species.national_number AS target_national_number,
    target_species.evolution_family_id AS target_evolution_family_id,
    mainline_team_plan_members.target_form_id,
    target_forms.slug AS target_form_slug,
    target_forms.name AS target_form_name,
    target_forms.sprite_slug AS target_sprite_slug,
    mainline_team_plan_members.role_label,
    mainline_team_plan_members.notes,
    mainline_team_plan_members.gender,
    mainline_team_plan_members.nature_id,
    natures.name AS nature_name,
    mainline_team_plan_members.ability_id,
    abilities.name AS ability_name,
    mainline_team_plan_members.held_item_id,
    held_items.name AS held_item_name,
    mainline_team_plan_members.created_at,
    mainline_team_plan_members.updated_at,
    COALESCE(
        moves.moves, '[]'::jsonb
) AS moves
FROM
    planning.mainline_team_plan_members
    JOIN planning.mainline_team_plans ON mainline_team_plans.id = mainline_team_plan_members.team_plan_id
    JOIN reference.pokemon_species AS target_species ON target_species.id = mainline_team_plan_members.target_species_id
    JOIN reference.pokemon_forms AS target_forms ON target_forms.species_id = mainline_team_plan_members.target_species_id
        AND target_forms.id = mainline_team_plan_members.target_form_id
    LEFT JOIN reference.natures ON natures.id = mainline_team_plan_members.nature_id
    LEFT JOIN reference.abilities ON abilities.id = mainline_team_plan_members.ability_id
    LEFT JOIN reference.items AS held_items ON held_items.id = mainline_team_plan_members.held_item_id
    LEFT JOIN LATERAL (
        SELECT
            jsonb_agg(
                jsonb_build_object(
                    'slot', mainline_team_plan_member_moves.slot, 'move_id', reference_moves.id, 'slug', reference_moves.slug, 'name', reference_moves.name
) ORDER BY mainline_team_plan_member_moves.slot
) AS moves
        FROM
            planning.mainline_team_plan_member_moves
            JOIN reference.moves AS reference_moves ON reference_moves.id = mainline_team_plan_member_moves.move_id
        WHERE
            mainline_team_plan_member_moves.team_plan_member_id = mainline_team_plan_members.id
) AS moves ON TRUE;

CREATE VIEW views.mainline_play_team_plan_detail WITH ( security_invoker = TRUE
) AS
SELECT
    mainline_play_plan_links.id AS play_plan_link_id,
    mainline_play_plan_links.play_id,
    mainline_play_plan_links.team_plan_id,
    mainline_play_plan_links.user_id,
    mainline_play_plan_links.game_id,
    games.slug AS game_slug,
    games.name AS game_name,
    mainline_play_plan_links.version_group_id,
    version_groups.slug AS version_group_slug,
    version_groups.name AS version_group_name,
    games.generation_id,
    generations.slug AS generation_slug,
    generations.name AS generation_name,
    mainline_play_plan_links.created_from_plan,
    mainline_play_plan_links.created_at AS linked_plan_at,
    mainline_team_plans.name AS team_plan_name,
    mainline_team_plans.status_id AS team_plan_status_id,
    team_plan_statuses.slug AS team_plan_status_slug,
    team_plan_statuses.name AS team_plan_status_name,
    mainline_team_plans.notes AS team_plan_notes,
    mainline_team_plans.updated_at AS team_plan_updated_at,
    linked_plays.linked_play_count,
    mainline_team_plan_members.id AS team_plan_member_id,
    mainline_team_plan_members.slot,
    mainline_team_plan_members.target_species_id,
    target_species.slug AS target_species_slug,
    target_species.name AS target_species_name,
    target_species.national_number AS target_national_number,
    target_species.evolution_family_id AS target_evolution_family_id,
    mainline_team_plan_members.target_form_id,
    target_forms.slug AS target_form_slug,
    target_forms.name AS target_form_name,
    target_forms.sprite_slug AS target_sprite_slug,
    mainline_team_plan_members.role_label,
    mainline_team_plan_members.notes AS team_plan_member_notes,
    mainline_team_plan_members.gender AS planned_gender,
    mainline_team_plan_members.nature_id AS planned_nature_id,
    planned_natures.name AS planned_nature_name,
    mainline_team_plan_members.ability_id AS planned_ability_id,
    planned_abilities.name AS planned_ability_name,
    mainline_team_plan_members.held_item_id AS planned_held_item_id,
    planned_held_items.name AS planned_held_item_name,
    COALESCE(
        moves.moves, '[]'::jsonb
) AS planned_moves
FROM
    planning.mainline_play_plan_links
    JOIN planning.mainline_team_plans ON mainline_team_plans.id = mainline_play_plan_links.team_plan_id
    JOIN planning.mainline_team_plan_statuses AS team_plan_statuses ON team_plan_statuses.id = mainline_team_plans.status_id
    JOIN reference.games ON games.id = mainline_play_plan_links.game_id
    JOIN reference.version_groups ON version_groups.id = mainline_play_plan_links.version_group_id
    JOIN reference.generations ON generations.id = games.generation_id
    LEFT JOIN planning.mainline_team_plan_members ON mainline_team_plan_members.team_plan_id = mainline_team_plans.id
    LEFT JOIN reference.pokemon_species AS target_species ON target_species.id = mainline_team_plan_members.target_species_id
    LEFT JOIN reference.pokemon_forms AS target_forms ON target_forms.species_id = mainline_team_plan_members.target_species_id
        AND target_forms.id = mainline_team_plan_members.target_form_id
    LEFT JOIN reference.natures AS planned_natures ON planned_natures.id = mainline_team_plan_members.nature_id
    LEFT JOIN reference.abilities AS planned_abilities ON planned_abilities.id = mainline_team_plan_members.ability_id
    LEFT JOIN reference.items AS planned_held_items ON planned_held_items.id = mainline_team_plan_members.held_item_id
    LEFT JOIN LATERAL (
        SELECT
            COUNT(
                *
) AS linked_play_count
        FROM
            planning.mainline_play_plan_links AS plan_usage
        WHERE
            plan_usage.team_plan_id = mainline_team_plans.id
) AS linked_plays ON TRUE
    LEFT JOIN LATERAL (
        SELECT
            jsonb_agg(
                jsonb_build_object(
                    'slot', mainline_team_plan_member_moves.slot, 'move_id', reference_moves.id, 'slug', reference_moves.slug, 'name', reference_moves.name
) ORDER BY mainline_team_plan_member_moves.slot
) AS moves
        FROM
            planning.mainline_team_plan_member_moves
            JOIN reference.moves AS reference_moves ON reference_moves.id = mainline_team_plan_member_moves.move_id
        WHERE
            mainline_team_plan_member_moves.team_plan_member_id = mainline_team_plan_members.id
) AS moves ON TRUE;

COMMENT ON VIEW views.mainline_team_plan_summary IS 'Compact team Plan summary rows with ordered-member and linked-Play counts. Uses security_invoker so planning RLS applies to the caller.';

COMMENT ON VIEW views.mainline_team_plan_detail IS 'Ordered team Plan members with target identity, optional build preferences, and planned moves. Uses security_invoker so planning RLS applies to the caller.';

COMMENT ON VIEW views.mainline_play_team_plan_detail IS 'Play-scoped reusable Plan context and ordered planned members. Automatic comparison with current and historical Play Pokémon is derived by the application at read time.';

REVOKE ALL ON TABLE views.mainline_team_plan_summary FROM PUBLIC, anon, authenticated;

REVOKE ALL ON TABLE views.mainline_team_plan_detail FROM PUBLIC, anon, authenticated;

REVOKE ALL ON TABLE views.mainline_play_team_plan_detail FROM PUBLIC, anon, authenticated;

GRANT SELECT ON TABLE views.mainline_team_plan_summary TO authenticated, service_role;

GRANT SELECT ON TABLE views.mainline_team_plan_detail TO authenticated, service_role;

GRANT SELECT ON TABLE views.mainline_play_team_plan_detail TO authenticated, service_role;

NOTIFY pgrst,
'reload schema';
