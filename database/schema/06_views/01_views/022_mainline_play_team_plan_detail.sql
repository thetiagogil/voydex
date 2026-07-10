-- ============================================================================
-- View: views.mainline_play_team_plan_detail
-- Play-scoped team plan member rows with realization status.
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
    COALESCE(
        mainline_play_plan_member_links.status_id, 1
) AS member_link_status_id,
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
    JOIN planning.mainline_plan_member_link_statuses AS plan_member_link_statuses ON plan_member_link_statuses.id = COALESCE(
        mainline_play_plan_member_links.status_id, 1)
    LEFT JOIN gameplay.mainline_play_pokemon ON mainline_play_pokemon.id = mainline_play_plan_member_links.play_pokemon_id
        AND mainline_play_pokemon.play_id = mainline_play_plan_links.play_id
    LEFT JOIN gameplay.mainline_play_pokemon_roster_states AS roster_states ON roster_states.id = mainline_play_pokemon.roster_state_id
    LEFT JOIN reference.pokemon_species AS play_species ON play_species.id = mainline_play_pokemon.species_id
    LEFT JOIN reference.pokemon_forms AS play_forms ON play_forms.species_id = mainline_play_pokemon.species_id
        AND play_forms.id = mainline_play_pokemon.form_id
    LEFT JOIN LATERAL (
        SELECT
            jsonb_agg(jsonb_build_object('slot', mainline_team_plan_member_moves.slot, 'move_id', moves.id, 'slug', moves.slug, 'name', moves.name)
            ORDER BY mainline_team_plan_member_moves.slot) AS moves
        FROM
            planning.mainline_team_plan_member_moves
            JOIN reference.moves ON moves.id = mainline_team_plan_member_moves.move_id
        WHERE
            mainline_team_plan_member_moves.team_plan_member_id = mainline_team_plan_members.id) AS moves ON TRUE;

COMMENT ON VIEW views.mainline_play_team_plan_detail IS 'Play-scoped team plan detail rows with planned member identity, realization status, linked play Pokémon, and planned moves. Uses security_invoker so planning and gameplay RLS apply to the caller.';
