-- ============================================================================
-- View: views.mainline_play_team_detail
-- Current and historical Pokémon rows with display metadata and moves.
-- ============================================================================
CREATE VIEW views.mainline_play_team_detail WITH ( security_invoker = TRUE
) AS
SELECT
    mainline_play_pokemon.id AS play_pokemon_id,
    mainline_play_pokemon.play_id,
    mainline_play_pokemon.roster_state_id,
    roster_states.slug AS roster_state_slug,
    roster_states.name AS roster_state_name,
    mainline_play_pokemon.slot,
    mainline_play_pokemon.species_id,
    pokemon_species.slug AS species_slug,
    pokemon_species.name AS species_name,
    pokemon_species.national_number,
    pokemon_species.evolution_family_id,
    mainline_play_pokemon.form_id,
    pokemon_forms.slug AS form_slug,
    pokemon_forms.name AS form_name,
    pokemon_forms.is_default AS is_default_form,
    pokemon_forms.sprite_slug,
    mainline_play_pokemon.nickname,
    mainline_play_pokemon.level,
    mainline_play_pokemon.gender,
    mainline_play_pokemon.is_shiny,
    mainline_play_pokemon.nature_id,
    natures.name AS nature_name,
    mainline_play_pokemon.ability_id,
    abilities.name AS ability_name,
    mainline_play_pokemon.held_item_id,
    held_items.name AS held_item_name,
    mainline_play_pokemon.ball_item_id,
    ball_items.name AS ball_item_name,
    mainline_play_pokemon.met_location_label,
    mainline_play_pokemon.met_level,
    mainline_play_pokemon.is_mvp,
    mainline_play_pokemon.final_status,
    mainline_play_pokemon.personal_notes,
    mainline_play_pokemon.created_at,
    mainline_play_pokemon.updated_at,
    COALESCE(
        moves.moves, '[]'::jsonb
) AS moves
FROM
    gameplay.mainline_play_pokemon
    JOIN gameplay.mainline_play_pokemon_roster_states AS roster_states ON roster_states.id = mainline_play_pokemon.roster_state_id
    JOIN reference.pokemon_species ON pokemon_species.id = mainline_play_pokemon.species_id
    JOIN reference.pokemon_forms ON pokemon_forms.species_id = mainline_play_pokemon.species_id
        AND pokemon_forms.id = mainline_play_pokemon.form_id
    LEFT JOIN reference.natures ON natures.id = mainline_play_pokemon.nature_id
    LEFT JOIN reference.abilities ON abilities.id = mainline_play_pokemon.ability_id
    LEFT JOIN reference.items AS held_items ON held_items.id = mainline_play_pokemon.held_item_id
    LEFT JOIN reference.items AS ball_items ON ball_items.id = mainline_play_pokemon.ball_item_id
    LEFT JOIN LATERAL (
        SELECT
            jsonb_agg(
                jsonb_build_object(
                    'slot', mainline_play_pokemon_moves.slot, 'move_id', moves.id, 'slug', moves.slug, 'name', moves.name
) ORDER BY mainline_play_pokemon_moves.slot
) AS moves
        FROM
            gameplay.mainline_play_pokemon_moves
            JOIN reference.moves ON moves.id = mainline_play_pokemon_moves.move_id
        WHERE
            mainline_play_pokemon_moves.play_pokemon_id = mainline_play_pokemon.id
) AS moves ON TRUE;

COMMENT ON VIEW views.mainline_play_team_detail IS 'Pokémon team detail rows with display identity and move slots. Uses security_invoker so gameplay RLS applies to the caller.';
