-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon species, form, type, stat, ability, and egg group pages.
-- Cross-check: Serebii Pokedex/form pages and PokemonDB stats/type pages.
-- Machine-readable sanity: PokeAPI snapshots for current-form rows only.
-- Migration source: 025_pokemon_attributes_gen7_changes_gen1_pokemon.sql.
-- Scope note: one row per generation change point; query the latest row at or before the target generation.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_attributes
-- Scope: gen7 changes gen1 pokemon.
-- Generation 1 stores the single Special stat in both special-attack columns and has no egg groups or abilities.
INSERT INTO reference.pokemon_attributes (species_id, form_id, generation_start_id, primary_type_id, secondary_type_id, primary_ability_id, secondary_ability_id, hidden_ability_id, primary_egg_group_id, secondary_egg_group_id, base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed)
VALUES
  -- #0024 Arbok
  (24, 2400, 7, 8, NULL, 22, 61, 127, 7, 13, 60, 95, 69, 65, 79, 80),
  -- #0051 Dugtrio
  (51, 5100, 7, 9, NULL, 8, 71, 159, 7, NULL, 35, 100, 50, 50, 70, 120),
  -- #0083 Farfetch'd
  (83, 8300, 7, 1, 10, 51, 39, 128, 6, 7, 52, 90, 55, 58, 62, 60),
  -- #0085 Dodrio
  (85, 8500, 7, 1, 10, 50, 48, 77, 6, NULL, 60, 110, 70, 60, 60, 110),
  -- #0094 Gengar
  (94, 9400, 7, 14, 8, 130, NULL, NULL, 12, NULL, 60, 65, 60, 130, 75, 110),
  -- #0101 Electrode
  (101, 10100, 7, 4, NULL, 43, 9, 106, 11, NULL, 60, 50, 70, 80, 80, 150),
  -- #0103 Exeggutor
  (103, 10300, 7, 5, 11, 34, NULL, 139, 9, NULL, 95, 95, 85, 125, 75, 55);
