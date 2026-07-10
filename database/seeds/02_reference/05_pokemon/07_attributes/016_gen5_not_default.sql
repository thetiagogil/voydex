-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon species, form, type, stat, ability, and egg group pages.
-- Cross-check: Serebii Pokedex/form pages and PokemonDB stats/type pages.
-- Machine-readable sanity: PokeAPI snapshots for current-form rows only.
-- Migration source: 016_pokemon_attributes_gen5_not_default.sql.
-- Scope note: one row per generation change point; query the latest row at or before the target generation.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_attributes
-- Scope: gen5 not default.
INSERT INTO reference.pokemon_attributes (species_id, form_id, generation_start_id, primary_type_id, secondary_type_id, primary_ability_id, secondary_ability_id, hidden_ability_id, primary_egg_group_id, secondary_egg_group_id, base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed)
VALUES
  -- #0413 Wormadam - Wormadam (Sandy Cloak)
  (413, 41301, 5, 12, 9, 107, NULL, 142, 5, NULL, 60, 79, 105, 59, 85, 36),
  -- #0413 Wormadam - Wormadam (Trash Cloak)
  (413, 41302, 5, 12, 17, 107, NULL, 142, 5, NULL, 60, 69, 95, 69, 95, 36),
  -- #0479 Rotom - Rotom (Heat)
  (479, 47901, 5, 4, 2, 26, NULL, NULL, 12, NULL, 50, 65, 107, 105, 107, 86),
  -- #0479 Rotom - Rotom (Wash)
  (479, 47902, 5, 4, 3, 26, NULL, NULL, 12, NULL, 50, 65, 107, 105, 107, 86),
  -- #0479 Rotom - Rotom (Frost)
  (479, 47903, 5, 4, 6, 26, NULL, NULL, 12, NULL, 50, 65, 107, 105, 107, 86),
  -- #0479 Rotom - Rotom (Fan)
  (479, 47904, 5, 4, 10, 26, NULL, NULL, 12, NULL, 50, 65, 107, 105, 107, 86),
  -- #0479 Rotom - Rotom (Mow)
  (479, 47905, 5, 4, 5, 26, NULL, NULL, 12, NULL, 50, 65, 107, 105, 107, 86),
  -- #0550 Basculin - Basculin (Blue-Striped)
  (550, 55001, 5, 3, NULL, 69, 91, 104, 3, NULL, 70, 92, 65, 80, 55, 98),
  -- #0641 Tornadus - Tornadus (Therian)
  (641, 64101, 5, 10, NULL, 144, NULL, NULL, 15, NULL, 79, 100, 80, 110, 90, 121),
  -- #0642 Thundurus - Thundurus (Therian)
  (642, 64201, 5, 4, 10, 10, NULL, NULL, 15, NULL, 79, 105, 70, 145, 80, 101),
  -- #0645 Landorus - Landorus (Therian)
  (645, 64501, 5, 9, 10, 22, NULL, NULL, 15, NULL, 89, 145, 90, 105, 80, 91),
  -- #0646 Kyurem - Kyurem (White)
  (646, 64601, 5, 15, 6, 163, NULL, NULL, 15, NULL, 125, 120, 90, 170, 100, 95),
  -- #0646 Kyurem - Kyurem (Black)
  (646, 64602, 5, 15, 6, 164, NULL, NULL, 15, NULL, 125, 170, 100, 120, 90, 95),
  -- #0649 Genesect - Genesect (Douse Drive)
  (649, 64901, 5, 12, 17, 88, NULL, NULL, 15, NULL, 71, 120, 95, 120, 95, 99),
  -- #0649 Genesect - Genesect (Shock Drive)
  (649, 64902, 5, 12, 17, 88, NULL, NULL, 15, NULL, 71, 120, 95, 120, 95, 99),
  -- #0649 Genesect - Genesect (Burn Drive)
  (649, 64903, 5, 12, 17, 88, NULL, NULL, 15, NULL, 71, 120, 95, 120, 95, 99),
  -- #0649 Genesect - Genesect (Chill Drive)
  (649, 64904, 5, 12, 17, 88, NULL, NULL, 15, NULL, 71, 120, 95, 120, 95, 99);
