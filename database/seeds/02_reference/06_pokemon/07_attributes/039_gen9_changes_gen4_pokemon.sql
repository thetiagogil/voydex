-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon species, form, type, stat, ability, and egg group pages.
-- Cross-check: Serebii Pokedex/form pages and PokemonDB stats/type pages.
-- Machine-readable sanity: PokeAPI snapshots for current-form rows only.
-- Migration source: 039_pokemon_attributes_gen9_changes_gen4_pokemon.sql.
-- Scope note: one row per generation change point; query the latest row at or before the target generation.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_attributes
-- Scope: gen9 changes gen4 pokemon.
INSERT INTO reference.pokemon_attributes (species_id, form_id, generation_start_id, primary_type_id, secondary_type_id, primary_ability_id, secondary_ability_id, hidden_ability_id, primary_egg_group_id, secondary_egg_group_id, base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed)
VALUES
  -- #0393 Piplup
  (393, 39300, 9, 3, NULL, 67, NULL, 172, 2, 7, 53, 51, 53, 61, 56, 40),
  -- #0394 Prinplup
  (394, 39400, 9, 3, NULL, 67, NULL, 172, 2, 7, 64, 66, 68, 81, 76, 50),
  -- #0395 Empoleon
  (395, 39500, 9, 3, 17, 67, NULL, 172, 2, 7, 84, 86, 88, 111, 101, 60),
  -- #0475 Gallade
  (475, 47500, 9, 11, 7, 80, 292, 154, 10, 12, 68, 125, 65, 65, 115, 80),
  -- #0488 Cresselia
  (488, 48800, 9, 11, NULL, 26, NULL, NULL, 15, NULL, 120, 70, 110, 75, 120, 85);
