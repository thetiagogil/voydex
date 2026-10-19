-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon species, form, type, stat, ability, and egg group pages.
-- Cross-check: Serebii Pokedex/form pages and PokemonDB stats/type pages.
-- Machine-readable sanity: PokeAPI snapshots for current-form rows only.
-- Migration source: 021_pokemon_attributes_gen6_changes_gen4_pokemon.sql.
-- Scope note: one row per generation change point; query the latest row at or before the target generation.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_attributes
-- Scope: gen6 changes gen4 pokemon.
INSERT INTO reference.pokemon_attributes (species_id, form_id, generation_start_id, primary_type_id, secondary_type_id, primary_ability_id, secondary_ability_id, hidden_ability_id, primary_egg_group_id, secondary_egg_group_id, base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed)
VALUES
  -- #0396 Starly
  (396, 39600, 6, 1, 10, 51, NULL, 120, 6, NULL, 40, 55, 30, 30, 30, 60),
  -- #0439 Mime Jr.
  (439, 43900, 6, 11, 18, 43, 111, 101, 15, NULL, 20, 25, 45, 70, 90, 60),
  -- #0468 Togekiss
  (468, 46800, 6, 18, 10, 55, 32, 105, 6, 8, 85, 50, 95, 120, 115, 80),
  -- #0477 Dusknoir
  (477, 47700, 6, 14, NULL, 46, NULL, 119, 12, NULL, 45, 100, 135, 65, 135, 45);
