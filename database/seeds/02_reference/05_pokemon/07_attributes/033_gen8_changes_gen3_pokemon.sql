-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon species, form, type, stat, ability, and egg group pages.
-- Cross-check: Serebii Pokedex/form pages and PokemonDB stats/type pages.
-- Machine-readable sanity: PokeAPI snapshots for current-form rows only.
-- Migration source: 033_pokemon_attributes_gen8_changes_gen3_pokemon.sql.
-- Scope note: one row per generation change point; query the latest row at or before the target generation.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_attributes
-- Scope: gen8 changes gen3 pokemon.
INSERT INTO reference.pokemon_attributes (species_id, form_id, generation_start_id, primary_type_id, secondary_type_id, primary_ability_id, secondary_ability_id, hidden_ability_id, primary_egg_group_id, secondary_egg_group_id, base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed)
VALUES
  -- #0280 Ralts
  (280, 28000, 8, 11, 18, 28, 36, 140, 10, 12, 28, 25, 25, 45, 35, 40),
  -- #0281 Kirlia
  (281, 28100, 8, 11, 18, 28, 36, 140, 10, 12, 38, 35, 35, 65, 55, 50),
  -- #0282 Gardevoir
  (282, 28200, 8, 11, 18, 28, 36, 140, 10, 12, 68, 65, 65, 125, 115, 80),
  -- #0328 Trapinch
  (328, 32800, 8, 9, NULL, 52, 71, 125, 5, 13, 45, 100, 45, 45, 45, 10),
  -- #0329 Vibrava
  (329, 32900, 8, 9, 15, 26, NULL, NULL, 5, 13, 50, 70, 50, 50, 50, 70),
  -- #0330 Flygon
  (330, 33000, 8, 9, 15, 26, NULL, NULL, 5, 13, 80, 100, 80, 80, 80, 100);
