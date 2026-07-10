-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon species, form, type, stat, ability, and egg group pages.
-- Cross-check: Serebii Pokedex/form pages and PokemonDB stats/type pages.
-- Machine-readable sanity: PokeAPI snapshots for current-form rows only.
-- Migration source: 018_pokemon_attributes_gen6_changes_gen1_pokemon.sql.
-- Scope note: one row per generation change point; query the latest row at or before the target generation.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_attributes
-- Scope: gen6 changes gen1 pokemon.
-- Generation 1 stores the single Special stat in both special-attack columns and has no egg groups or abilities.
INSERT INTO reference.pokemon_attributes (species_id, form_id, generation_start_id, primary_type_id, secondary_type_id, primary_ability_id, secondary_ability_id, hidden_ability_id, primary_egg_group_id, secondary_egg_group_id, base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed)
VALUES
  -- #0012 Butterfree
  (12, 1200, 6, 12, 10, 14, NULL, 110, 5, NULL, 60, 45, 50, 90, 80, 70),
  -- #0015 Beedrill
  (15, 1500, 6, 12, 8, 68, NULL, 97, 5, NULL, 65, 90, 40, 45, 80, 75),
  -- #0018 Pidgeot
  (18, 1800, 6, 1, 10, 51, 77, 145, 6, NULL, 83, 80, 75, 70, 70, 101),
  -- #0025 Pikachu
  (25, 2500, 6, 4, NULL, 9, NULL, 31, 7, 8, 35, 55, 40, 50, 50, 90),
  -- #0026 Raichu
  (26, 2600, 6, 4, NULL, 9, NULL, 31, 7, 8, 60, 90, 55, 90, 80, 110),
  -- #0031 Nidoqueen
  (31, 3100, 6, 8, 9, 38, 79, 125, 15, NULL, 90, 92, 87, 75, 85, 76),
  -- #0034 Nidoking
  (34, 3400, 6, 8, 9, 38, 79, 125, 1, 7, 81, 102, 77, 85, 75, 85),
  -- #0035 Clefairy
  (35, 3500, 6, 18, NULL, 56, 98, 132, 8, NULL, 70, 45, 48, 60, 65, 35),
  -- #0036 Clefable
  (36, 3600, 6, 18, NULL, 56, 98, 109, 8, NULL, 95, 70, 73, 95, 90, 60),
  -- #0039 Jigglypuff
  (39, 3900, 6, 1, 18, 56, 172, 132, 8, NULL, 115, 45, 20, 45, 25, 20),
  -- #0040 Wigglytuff
  (40, 4000, 6, 1, 18, 56, 172, 119, 8, NULL, 140, 70, 45, 85, 50, 45),
  -- #0045 Vileplume
  (45, 4500, 6, 5, 8, 34, NULL, 27, 9, NULL, 75, 80, 85, 110, 90, 50),
  -- #0062 Poliwrath
  (62, 6200, 6, 3, 7, 11, 6, 33, 2, NULL, 90, 95, 95, 70, 90, 70),
  -- #0065 Alakazam
  (65, 6500, 6, 11, NULL, 28, 39, 98, 10, NULL, 55, 50, 45, 135, 95, 120),
  -- #0071 Victreebel
  (71, 7100, 6, 5, 8, 34, NULL, 82, 9, NULL, 80, 105, 65, 100, 70, 70),
  -- #0076 Golem
  (76, 7600, 6, 13, 9, 69, 5, 8, 11, NULL, 80, 120, 130, 55, 65, 45),
  -- #0122 Mr. Mime
  (122, 12200, 6, 11, 18, 43, 111, 101, 10, NULL, 40, 45, 65, 100, 120, 90),
  -- #0145 Zapdos
  (145, 14500, 6, 4, 10, 46, NULL, 9, 15, NULL, 90, 90, 85, 125, 90, 100);
