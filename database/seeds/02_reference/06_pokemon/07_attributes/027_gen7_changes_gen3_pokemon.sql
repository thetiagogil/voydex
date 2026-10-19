-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon species, form, type, stat, ability, and egg group pages.
-- Cross-check: Serebii Pokedex/form pages and PokemonDB stats/type pages.
-- Machine-readable sanity: PokeAPI snapshots for current-form rows only.
-- Migration source: 027_pokemon_attributes_gen7_changes_gen3_pokemon.sql.
-- Scope note: one row per generation change point; query the latest row at or before the target generation.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_attributes
-- Scope: gen7 changes gen3 pokemon.
INSERT INTO reference.pokemon_attributes (species_id, form_id, generation_start_id, primary_type_id, secondary_type_id, primary_ability_id, secondary_ability_id, hidden_ability_id, primary_egg_group_id, secondary_egg_group_id, base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed)
VALUES
  -- #0277 Swellow
  (277, 27700, 7, 1, 10, 62, NULL, 113, 6, NULL, 60, 85, 60, 75, 50, 125),
  -- #0278 Wingull
  (278, 27800, 7, 3, 10, 51, 93, 44, 2, 6, 40, 30, 30, 55, 30, 85),
  -- #0279 Pelipper
  (279, 27900, 7, 3, 10, 51, 2, 44, 2, 6, 60, 50, 100, 95, 70, 65),
  -- #0284 Masquerain
  (284, 28400, 7, 12, 10, 22, NULL, 127, 2, 5, 70, 60, 62, 100, 82, 80),
  -- #0301 Delcatty
  (301, 30100, 7, 1, NULL, 56, 96, 147, 7, 8, 70, 65, 65, 55, 55, 90),
  -- #0313 Volbeat
  (313, 31300, 7, 12, NULL, 35, 68, 158, 5, 10, 65, 73, 75, 47, 85, 85),
  -- #0314 Illumise
  (314, 31400, 7, 12, NULL, 12, 110, 158, 5, 10, 65, 47, 75, 73, 85, 85),
  -- #0324 Torkoal
  (324, 32400, 7, 2, NULL, 73, 70, 75, 7, NULL, 70, 85, 140, 85, 70, 20),
  -- #0337 Lunatone
  (337, 33700, 7, 13, 11, 26, NULL, NULL, 11, NULL, 90, 55, 65, 95, 85, 70),
  -- #0338 Solrock
  (338, 33800, 7, 13, 11, 26, NULL, NULL, 11, NULL, 90, 95, 85, 55, 65, 70),
  -- #0358 Chimecho
  (358, 35800, 7, 11, NULL, 26, NULL, NULL, 12, NULL, 75, 50, 80, 95, 90, 65);
