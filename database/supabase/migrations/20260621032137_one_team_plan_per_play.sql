-- Enforce a single linked team plan per mainline play.

DROP FUNCTION IF EXISTS planning.link_mainline_team_plan_to_play (UUID, UUID, BOOLEAN, BOOLEAN, BOOLEAN);

DO $$
BEGIN
    IF EXISTS (
        SELECT
            1
        FROM
            information_schema.columns
        WHERE
            table_schema = 'planning'
            AND table_name = 'mainline_play_plan_links'
            AND column_name = 'is_primary'
) THEN
        EXECUTE $_cleanup_$
            WITH ranked_play_plan_links AS (
                SELECT
                    id,
                    ROW_NUMBER() OVER (
                        PARTITION BY play_id
                        ORDER BY is_primary DESC, created_from_plan DESC, created_at ASC, id ASC
) AS link_rank
                FROM
                    planning.mainline_play_plan_links
)
            DELETE FROM planning.mainline_play_plan_links
            USING ranked_play_plan_links
            WHERE
                mainline_play_plan_links.id = ranked_play_plan_links.id
                AND ranked_play_plan_links.link_rank > 1
        $_cleanup_$;
    END IF;
END;
$$;

DROP INDEX IF EXISTS planning.play_plan_links_primary_play_unique;

ALTER TABLE planning.mainline_play_plan_links
    DROP CONSTRAINT IF EXISTS play_plan_links_play_plan_unique;

ALTER TABLE planning.mainline_play_plan_links
    DROP COLUMN IF EXISTS is_primary;

DO $$
BEGIN
    IF NOT EXISTS (
        SELECT
            1
        FROM
            pg_constraint
        WHERE
            conname = 'play_plan_links_play_unique'
            AND conrelid = 'planning.mainline_play_plan_links'::regclass
) THEN
        ALTER TABLE planning.mainline_play_plan_links
            ADD CONSTRAINT play_plan_links_play_unique UNIQUE (play_id);
    END IF;
END;
$$;

COMMENT ON TABLE planning.mainline_play_plan_links IS 'Links each play to zero or one reusable team plan while enforcing that the play and plan share owner, game, and version group.';

COMMENT ON COLUMN planning.mainline_play_plan_links.created_from_plan IS 'True when the play was originally created from the linked plan.';

CREATE OR REPLACE FUNCTION planning.link_mainline_team_plan_to_play (p_play_id uuid, p_team_plan_id uuid, p_created_from_plan boolean DEFAULT FALSE, p_create_member_links boolean DEFAULT TRUE)
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

REVOKE ALL ON FUNCTION planning.link_mainline_team_plan_to_play (UUID, UUID, BOOLEAN, BOOLEAN) FROM PUBLIC;

REVOKE ALL ON FUNCTION planning.link_mainline_team_plan_to_play (UUID, UUID, BOOLEAN, BOOLEAN) FROM anon;

GRANT EXECUTE ON FUNCTION planning.link_mainline_team_plan_to_play (UUID, UUID, BOOLEAN, BOOLEAN) TO authenticated, service_role;

COMMENT ON FUNCTION planning.link_mainline_team_plan_to_play (UUID, UUID, BOOLEAN, BOOLEAN) IS 'Links a mainline play to its single reusable team plan and optionally initializes pending plan member links. Runs as SECURITY INVOKER so gameplay and planning RLS apply.';

CREATE OR REPLACE VIEW views.mainline_play_team_plan_detail WITH ( security_invoker = TRUE
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
    mainline_team_plan_members.id AS team_plan_member_id,
    mainline_team_plan_members.member_group,
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
    mainline_team_plan_members.preferred_start_species_id,
    preferred_start_species.slug AS preferred_start_species_slug,
    preferred_start_species.name AS preferred_start_species_name,
    mainline_team_plan_members.preferred_start_form_id,
    preferred_start_forms.slug AS preferred_start_form_slug,
    preferred_start_forms.name AS preferred_start_form_name,
    mainline_team_plan_members.role_label,
    mainline_team_plan_members.notes AS team_plan_member_notes,
    mainline_team_plan_members.nature_id AS planned_nature_id,
    planned_natures.name AS planned_nature_name,
    mainline_team_plan_members.ability_id AS planned_ability_id,
    planned_abilities.name AS planned_ability_name,
    mainline_team_plan_members.held_item_id AS planned_held_item_id,
    planned_held_items.name AS planned_held_item_name,
    COALESCE(mainline_play_plan_member_links.status_id, 1) AS member_link_status_id,
    plan_member_link_statuses.slug AS member_link_status_slug,
    plan_member_link_statuses.name AS member_link_status_name,
    mainline_play_plan_member_links.play_pokemon_id,
    mainline_play_plan_member_links.linked_at AS member_linked_at,
    mainline_play_plan_member_links.reached_at AS member_reached_at,
    mainline_play_plan_member_links.skipped_at AS member_skipped_at,
    mainline_play_plan_member_links.notes AS member_link_notes,
    mainline_play_pokemon.roster_state_id AS play_pokemon_roster_state_id,
    roster_states.slug AS play_pokemon_roster_state_slug,
    roster_states.name AS play_pokemon_roster_state_name,
    mainline_play_pokemon.slot AS play_pokemon_slot,
    mainline_play_pokemon.species_id AS play_pokemon_species_id,
    play_species.slug AS play_pokemon_species_slug,
    play_species.name AS play_pokemon_species_name,
    mainline_play_pokemon.form_id AS play_pokemon_form_id,
    play_forms.slug AS play_pokemon_form_slug,
    play_forms.name AS play_pokemon_form_name,
    play_forms.sprite_slug AS play_pokemon_sprite_slug,
    mainline_play_pokemon.nickname AS play_pokemon_nickname,
    mainline_play_pokemon.level AS play_pokemon_level,
    mainline_play_pokemon.is_shiny AS play_pokemon_is_shiny,
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
    JOIN planning.mainline_team_plan_members ON mainline_team_plan_members.team_plan_id = mainline_team_plans.id
    JOIN reference.pokemon_species AS target_species ON target_species.id = mainline_team_plan_members.target_species_id
    JOIN reference.pokemon_forms AS target_forms ON target_forms.species_id = mainline_team_plan_members.target_species_id
        AND target_forms.id = mainline_team_plan_members.target_form_id
    LEFT JOIN reference.pokemon_species AS preferred_start_species ON preferred_start_species.id = mainline_team_plan_members.preferred_start_species_id
    LEFT JOIN reference.pokemon_forms AS preferred_start_forms ON preferred_start_forms.species_id = mainline_team_plan_members.preferred_start_species_id
        AND preferred_start_forms.id = mainline_team_plan_members.preferred_start_form_id
    LEFT JOIN reference.natures AS planned_natures ON planned_natures.id = mainline_team_plan_members.nature_id
    LEFT JOIN reference.abilities AS planned_abilities ON planned_abilities.id = mainline_team_plan_members.ability_id
    LEFT JOIN reference.items AS planned_held_items ON planned_held_items.id = mainline_team_plan_members.held_item_id
    LEFT JOIN planning.mainline_play_plan_member_links ON mainline_play_plan_member_links.play_plan_link_id = mainline_play_plan_links.id
        AND mainline_play_plan_member_links.team_plan_member_id = mainline_team_plan_members.id
    JOIN planning.mainline_plan_member_link_statuses AS plan_member_link_statuses ON plan_member_link_statuses.id = COALESCE(mainline_play_plan_member_links.status_id, 1)
    LEFT JOIN gameplay.mainline_play_pokemon ON mainline_play_pokemon.id = mainline_play_plan_member_links.play_pokemon_id
        AND mainline_play_pokemon.play_id = mainline_play_plan_links.play_id
    LEFT JOIN gameplay.mainline_play_pokemon_roster_states AS roster_states ON roster_states.id = mainline_play_pokemon.roster_state_id
    LEFT JOIN reference.pokemon_species AS play_species ON play_species.id = mainline_play_pokemon.species_id
    LEFT JOIN reference.pokemon_forms AS play_forms ON play_forms.species_id = mainline_play_pokemon.species_id
        AND play_forms.id = mainline_play_pokemon.form_id
    LEFT JOIN LATERAL (
        SELECT
            jsonb_agg(
                jsonb_build_object(
                    'slot', mainline_team_plan_member_moves.slot, 'move_id', moves.id, 'slug', moves.slug, 'name', moves.name
) ORDER BY mainline_team_plan_member_moves.slot
) AS moves
        FROM
            planning.mainline_team_plan_member_moves
            JOIN reference.moves ON moves.id = mainline_team_plan_member_moves.move_id
        WHERE
            mainline_team_plan_member_moves.team_plan_member_id = mainline_team_plan_members.id
) AS moves ON TRUE;

COMMENT ON VIEW views.mainline_play_team_plan_detail IS 'Play-scoped team plan detail rows with planned member identity, realization status, linked play Pokémon, and planned moves. Uses security_invoker so planning and gameplay RLS apply to the caller.';

REVOKE ALL ON TABLE views.mainline_play_team_plan_detail FROM PUBLIC, anon, authenticated;

GRANT SELECT ON TABLE views.mainline_play_team_plan_detail TO authenticated, service_role;

