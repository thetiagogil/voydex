-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon species, form, type, stat, ability, and egg group pages.
-- Cross-check: Serebii Pokedex/form pages and PokemonDB stats/type pages.
-- Machine-readable sanity: PokeAPI snapshots for current-form rows only.
-- Migration source: 020_pokemon_attributes_gen6_changes_gen3_pokemon.sql.
-- Scope note: one row per generation change point; query the latest row at or before the target generation.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_attributes
-- Scope: gen6 changes gen3 pokemon.
INSERT INTO reference.pokemon_attributes (species_id, form_id, generation_start_id, primary_type_id, secondary_type_id, primary_ability_id, secondary_ability_id, hidden_ability_id, primary_egg_group_id, secondary_egg_group_id, base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed)
VALUES
  -- #0267 Beautifly
  (267, 26700, 6, 12, 10, 68, NULL, 79, 5, NULL, 60, 70, 50, 100, 50, 65),
  -- #0280 Ralts
  (280, 28000, 6, 11, 18, 28, 36, 140, 12, NULL, 28, 25, 25, 45, 35, 40),
  -- #0281 Kirlia
  (281, 28100, 6, 11, 18, 28, 36, 140, 12, NULL, 38, 35, 35, 65, 55, 50),
  -- #0282 Gardevoir
  (282, 28200, 6, 11, 18, 28, 36, 140, 12, NULL, 68, 65, 65, 125, 115, 80),
  -- #0295 Exploud
  (295, 29500, 6, 1, NULL, 43, NULL, 113, 1, 7, 104, 91, 63, 91, 73, 68),
  -- #0298 Azurill
  (298, 29800, 6, 1, 18, 47, 37, 157, 15, NULL, 50, 20, 40, 20, 40, 20),
  -- #0303 Mawile
  (303, 30300, 6, 17, 18, 52, 22, 125, 7, 8, 50, 85, 85, 55, 55, 50),
  -- #0311 Plusle
  (311, 31100, 6, 4, NULL, 57, NULL, 31, 8, NULL, 60, 50, 40, 85, 75, 95),
  -- #0312 Minun
  (312, 31200, 6, 4, NULL, 58, NULL, 10, 8, NULL, 60, 40, 50, 75, 85, 95),
  -- #0349 Feebas
  (349, 34900, 6, 3, NULL, 33, 12, 91, 2, 13, 20, 15, 20, 10, 55, 80),
  -- #0350 Milotic
  (350, 35000, 6, 3, NULL, 63, 172, 56, 2, 13, 95, 60, 79, 100, 125, 81),
  -- #0352 Kecleon
  (352, 35200, 6, 1, NULL, 16, NULL, 168, 7, NULL, 60, 90, 70, 60, 120, 40),
  -- #0355 Duskull
  (355, 35500, 6, 14, NULL, 26, NULL, 119, 12, NULL, 20, 40, 90, 30, 90, 25),
  -- #0356 Dusclops
  (356, 35600, 6, 14, NULL, 46, NULL, 119, 12, NULL, 40, 70, 130, 60, 130, 25);
