-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon species, form, type, stat, ability, and egg group pages.
-- Cross-check: Serebii Pokedex/form pages and PokemonDB stats/type pages.
-- Machine-readable sanity: PokeAPI snapshots for current-form rows only.
-- Migration source: 028_pokemon_attributes_gen7_changes_gen5_pokemon.sql.
-- Scope note: one row per generation change point; query the latest row at or before the target generation.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_attributes
-- Scope: gen7 changes gen5 pokemon.
INSERT INTO reference.pokemon_attributes (species_id, form_id, generation_start_id, primary_type_id, secondary_type_id, primary_ability_id, secondary_ability_id, hidden_ability_id, primary_egg_group_id, secondary_egg_group_id, base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed)
VALUES
  -- #0524 Roggenrola
  (524, 52400, 7, 13, NULL, 5, 133, 159, 11, NULL, 55, 75, 85, 25, 25, 15),
  -- #0525 Boldore
  (525, 52500, 7, 13, NULL, 5, 133, 159, 11, NULL, 70, 105, 105, 50, 40, 20),
  -- #0526 Gigalith
  (526, 52600, 7, 13, NULL, 5, 45, 159, 11, NULL, 85, 135, 130, 60, 80, 25),
  -- #0527 Woobat
  (527, 52700, 7, 11, 10, 109, 103, 86, 7, 6, 65, 45, 43, 55, 43, 72),
  -- #0558 Crustle
  (558, 55800, 7, 12, 13, 5, 75, 133, 5, 11, 70, 105, 125, 65, 75, 45),
  -- #0582 Vanillite
  (582, 58200, 7, 6, NULL, 115, 81, 133, 11, NULL, 36, 50, 50, 65, 60, 44),
  -- #0583 Vanillish
  (583, 58300, 7, 6, NULL, 115, 81, 133, 11, NULL, 51, 65, 65, 80, 75, 59),
  -- #0584 Vanilluxe
  (584, 58400, 7, 6, NULL, 115, 117, 133, 11, NULL, 71, 95, 85, 110, 95, 79),
  -- #0613 Cubchoo
  (613, 61300, 7, 6, NULL, 81, 202, 155, 7, NULL, 55, 70, 40, 60, 40, 40),
  -- #0614 Beartic
  (614, 61400, 7, 6, NULL, 81, 202, 33, 7, NULL, 95, 130, 80, 70, 80, 50),
  -- #0615 Cryogonal
  (615, 61500, 7, 6, NULL, 26, NULL, NULL, 11, NULL, 80, 50, 50, 95, 135, 105);
