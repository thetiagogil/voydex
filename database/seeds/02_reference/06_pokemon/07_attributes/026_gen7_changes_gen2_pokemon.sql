-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon species, form, type, stat, ability, and egg group pages.
-- Cross-check: Serebii Pokedex/form pages and PokemonDB stats/type pages.
-- Machine-readable sanity: PokeAPI snapshots for current-form rows only.
-- Migration source: 026_pokemon_attributes_gen7_changes_gen2_pokemon.sql.
-- Scope note: one row per generation change point; query the latest row at or before the target generation.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_attributes
-- Scope: gen7 changes gen2 pokemon.
INSERT INTO reference.pokemon_attributes (species_id, form_id, generation_start_id, primary_type_id, secondary_type_id, primary_ability_id, secondary_ability_id, hidden_ability_id, primary_egg_group_id, secondary_egg_group_id, base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed)
VALUES
  -- #0164 Noctowl
  (164, 16400, 7, 1, 10, 15, 51, 110, 6, NULL, 100, 50, 50, 86, 96, 70),
  -- #0168 Ariados
  (168, 16800, 7, 12, 8, 68, 15, 97, 5, NULL, 70, 90, 70, 60, 70, 40),
  -- #0211 Qwilfish
  (211, 21100, 7, 3, 8, 38, 33, 22, 3, NULL, 65, 95, 85, 55, 55, 85),
  -- #0219 Magcargo
  (219, 21900, 7, 2, 13, 40, 49, 133, 12, NULL, 60, 50, 120, 90, 80, 30),
  -- #0222 Corsola
  (222, 22200, 7, 3, 13, 55, 30, 144, 2, 4, 65, 55, 95, 65, 95, 35),
  -- #0226 Mantine
  (226, 22600, 7, 3, 10, 33, 11, 41, 2, NULL, 85, 40, 70, 80, 140, 70),
  -- #0243 Raikou
  (243, 24300, 7, 4, NULL, 46, NULL, 39, 15, NULL, 90, 85, 75, 115, 100, 115),
  -- #0244 Entei
  (244, 24400, 7, 2, NULL, 46, NULL, 39, 15, NULL, 115, 115, 85, 90, 75, 100),
  -- #0245 Suicune
  (245, 24500, 7, 3, NULL, 46, NULL, 39, 15, NULL, 100, 75, 115, 90, 115, 85);
