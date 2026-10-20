-- ============================================================================
-- View: views.mainline_team_plan_detail
-- Ordered planned Pokémon targets with display metadata and planned moves.
-- ============================================================================
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

COMMENT ON VIEW views.mainline_team_plan_detail IS 'Ordered team Plan members with target identity, optional build preferences, and planned moves. Uses security_invoker so planning RLS applies to the caller.';
