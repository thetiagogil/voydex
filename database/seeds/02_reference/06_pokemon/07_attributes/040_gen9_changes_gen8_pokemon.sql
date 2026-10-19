-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon species, form, type, stat, ability, and egg group pages.
-- Cross-check: Serebii Pokedex/form pages and PokemonDB stats/type pages.
-- Machine-readable sanity: PokeAPI snapshots for current-form rows only.
-- Migration source: 040_pokemon_attributes_gen9_changes_gen8_pokemon.sql.
-- Scope note: one row per generation change point; query the latest row at or before the target generation.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_attributes
-- Scope: gen9 changes gen8 pokemon.
INSERT INTO reference.pokemon_attributes (species_id, form_id, generation_start_id, primary_type_id, secondary_type_id, primary_ability_id, secondary_ability_id, hidden_ability_id, primary_egg_group_id, secondary_egg_group_id, base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed)
VALUES
  -- #0888 Zacian
  (888, 88800, 9, 18, NULL, 234, NULL, NULL, 15, NULL, 92, 120, 115, 80, 115, 138),
  -- #0889 Zamazenta
  (889, 88900, 9, 7, NULL, 235, NULL, NULL, 15, NULL, 92, 120, 115, 80, 115, 138),
  -- #0900 Kleavor
  (900, 90000, 9, 12, 13, 68, 125, 292, 5, NULL, 70, 135, 95, 45, 70, 85),
  -- #0902 Basculegion
  (902, 90200, 9, 3, 14, 33, 91, 104, 3, NULL, 120, 112, 65, 80, 75, 78),
  -- #0902 Basculegion - Basculegion (Female)
  (902, 90201, 9, 3, 14, 33, 91, 104, 3, NULL, 120, 92, 65, 100, 75, 78),
  -- #0903 Sneasler
  (903, 90300, 9, 7, 8, 46, 84, 143, 7, NULL, 80, 130, 60, 40, 80, 120),
  -- #0905 Enamorus
  (905, 90500, 9, 18, 10, 56, NULL, 126, 15, NULL, 74, 115, 70, 135, 80, 106);
