-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon species, form, type, stat, ability, and egg group pages.
-- Cross-check: Serebii Pokedex/form pages and PokemonDB stats/type pages.
-- Machine-readable sanity: PokeAPI snapshots for current-form rows only.
-- Migration source: 022_pokemon_attributes_gen6_changes_gen5_pokemon.sql.
-- Scope note: one row per generation change point; query the latest row at or before the target generation.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_attributes
-- Scope: gen6 changes gen5 pokemon.
INSERT INTO reference.pokemon_attributes (species_id, form_id, generation_start_id, primary_type_id, secondary_type_id, primary_ability_id, secondary_ability_id, hidden_ability_id, primary_egg_group_id, secondary_egg_group_id, base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed)
VALUES
  -- #0508 Stoutland
  (508, 50800, 6, 1, NULL, 22, 146, 113, 7, NULL, 85, 110, 90, 45, 90, 80),
  -- #0521 Unfezant
  (521, 52100, 6, 1, 10, 145, 105, 79, 6, NULL, 80, 115, 80, 65, 55, 93),
  -- #0526 Gigalith
  (526, 52600, 6, 13, NULL, 5, NULL, 159, 11, NULL, 85, 135, 130, 60, 80, 25),
  -- #0537 Seismitoad
  (537, 53700, 6, 3, 9, 33, 143, 11, 2, NULL, 105, 95, 75, 85, 75, 74),
  -- #0542 Leavanny
  (542, 54200, 6, 12, 5, 68, 34, 142, 5, NULL, 75, 103, 80, 70, 80, 92),
  -- #0543 Venipede
  (543, 54300, 6, 12, 8, 38, 68, 3, 5, NULL, 30, 45, 59, 30, 39, 57),
  -- #0544 Whirlipede
  (544, 54400, 6, 12, 8, 38, 68, 3, 5, NULL, 40, 55, 99, 40, 79, 47),
  -- #0545 Scolipede
  (545, 54500, 6, 12, 8, 38, 68, 3, 5, NULL, 60, 100, 89, 55, 69, 112),
  -- #0546 Cottonee
  (546, 54600, 6, 5, 18, 158, 151, 34, 9, 8, 40, 27, 60, 37, 50, 66),
  -- #0547 Whimsicott
  (547, 54700, 6, 5, 18, 158, 151, 34, 9, 8, 60, 67, 85, 77, 75, 116),
  -- #0553 Krookodile
  (553, 55300, 6, 9, 16, 22, 153, 83, 7, NULL, 95, 117, 80, 65, 70, 92),
  -- #0574 Gothita
  (574, 57400, 6, 11, NULL, 119, 172, 23, 10, NULL, 45, 30, 50, 55, 65, 45),
  -- #0575 Gothorita
  (575, 57500, 6, 11, NULL, 119, 172, 23, 10, NULL, 60, 45, 70, 75, 85, 55),
  -- #0576 Gothitelle
  (576, 57600, 6, 11, NULL, 119, 172, 23, 10, NULL, 70, 55, 95, 95, 110, 65),
  -- #0598 Ferrothorn
  (598, 59800, 6, 5, 17, 160, NULL, 107, 9, 11, 74, 94, 131, 54, 116, 20),
  -- #0607 Litwick
  (607, 60700, 6, 14, 2, 18, 49, 151, 12, NULL, 50, 30, 55, 65, 55, 20),
  -- #0608 Lampent
  (608, 60800, 6, 14, 2, 18, 49, 151, 12, NULL, 60, 40, 60, 95, 60, 55),
  -- #0609 Chandelure
  (609, 60900, 6, 14, 2, 18, 49, 151, 12, NULL, 60, 55, 90, 145, 90, 80);
