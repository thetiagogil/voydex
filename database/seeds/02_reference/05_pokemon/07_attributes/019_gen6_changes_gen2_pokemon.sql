-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon species, form, type, stat, ability, and egg group pages.
-- Cross-check: Serebii Pokedex/form pages and PokemonDB stats/type pages.
-- Machine-readable sanity: PokeAPI snapshots for current-form rows only.
-- Migration source: 019_pokemon_attributes_gen6_changes_gen2_pokemon.sql.
-- Scope note: one row per generation change point; query the latest row at or before the target generation.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_attributes
-- Scope: gen6 changes gen2 pokemon.
INSERT INTO reference.pokemon_attributes (species_id, form_id, generation_start_id, primary_type_id, secondary_type_id, primary_ability_id, secondary_ability_id, hidden_ability_id, primary_egg_group_id, secondary_egg_group_id, base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed)
VALUES
  -- #0173 Cleffa
  (173, 17300, 6, 18, NULL, 56, 98, 132, 15, NULL, 50, 25, 28, 45, 55, 15),
  -- #0174 Igglybuff
  (174, 17400, 6, 1, 18, 56, 172, 132, 15, NULL, 90, 30, 15, 40, 20, 15),
  -- #0175 Togepi
  (175, 17500, 6, 18, NULL, 55, 32, 105, 15, NULL, 35, 20, 65, 40, 65, 20),
  -- #0176 Togetic
  (176, 17600, 6, 18, 10, 55, 32, 105, 6, 8, 55, 40, 85, 80, 105, 40),
  -- #0181 Ampharos
  (181, 18100, 6, 4, NULL, 9, NULL, 57, 1, 7, 90, 75, 85, 115, 90, 55),
  -- #0182 Bellossom
  (182, 18200, 6, 5, NULL, 34, NULL, 131, 9, NULL, 75, 80, 95, 90, 100, 50),
  -- #0183 Marill
  (183, 18300, 6, 3, 18, 47, 37, 157, 2, 8, 70, 20, 50, 20, 50, 40),
  -- #0184 Azumarill
  (184, 18400, 6, 3, 18, 47, 37, 157, 2, 8, 100, 50, 80, 60, 80, 50),
  -- #0189 Jumpluff
  (189, 18900, 6, 5, 10, 34, 102, 151, 8, 9, 75, 55, 70, 55, 95, 110),
  -- #0209 Snubbull
  (209, 20900, 6, 18, NULL, 22, 50, 155, 7, 8, 60, 80, 50, 40, 40, 30),
  -- #0210 Granbull
  (210, 21000, 6, 18, NULL, 22, 95, 155, 7, 8, 90, 120, 75, 60, 60, 45);
