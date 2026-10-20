-- ============================================================================
-- View: views.mainline_play_team_plan_detail
-- Play-scoped reusable Plan context and ordered planned members.
-- ============================================================================
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

COMMENT ON VIEW views.mainline_play_team_plan_detail IS 'Play-scoped reusable Plan context and ordered planned members. Automatic comparison with current and historical Play Pokémon is derived by the application at read time.';
