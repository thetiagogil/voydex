-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon species, form, type, stat, ability, and egg group pages.
-- Cross-check: Serebii Pokedex/form pages and PokemonDB stats/type pages.
-- Machine-readable sanity: PokeAPI snapshots for current-form rows only.
-- Migration source: 035_pokemon_attributes_gen8_changes_gen6_pokemon.sql.
-- Scope note: one row per generation change point; query the latest row at or before the target generation.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_attributes
-- Scope: gen8 changes gen6 pokemon.
INSERT INTO reference.pokemon_attributes (species_id, form_id, generation_start_id, primary_type_id, secondary_type_id, primary_ability_id, secondary_ability_id, hidden_ability_id, primary_egg_group_id, secondary_egg_group_id, base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed)
VALUES
  -- #0681 Aegislash
  (681, 68100, 8, 17, 14, 176, NULL, NULL, 11, NULL, 60, 50, 140, 50, 140, 60),
  -- #0701 Hawlucha
  (701, 70100, 8, 7, 10, 7, 84, 104, 6, 10, 78, 92, 75, 74, 63, 118),
  -- #0712 Bergmite
  (712, 71200, 8, 6, NULL, 20, 115, 5, 1, 11, 55, 69, 85, 32, 35, 28),
  -- #0713 Avalugg
  (713, 71300, 8, 6, NULL, 20, 115, 5, 1, 11, 95, 117, 184, 44, 46, 28),
  -- #0714 Noibat
  (714, 71400, 8, 10, 15, 119, 151, 140, 6, 13, 40, 30, 35, 45, 40, 55),
  -- #0715 Noivern
  (715, 71500, 8, 10, 15, 119, 151, 140, 6, 13, 85, 70, 80, 97, 80, 123);
