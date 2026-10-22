-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia form change, Primal Reversion and battle-only form pages.
-- Cross-check: Serebii Pokédex form pages.
-- Scope note: one row per generation change point; egg groups follow the form it changes from.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_attributes
-- Scope: every other battle form.
INSERT INTO reference.pokemon_attributes (species_id, form_id, generation_start_id, primary_type_id, secondary_type_id, primary_ability_id, secondary_ability_id, hidden_ability_id, primary_egg_group_id, secondary_egg_group_id, base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed)
VALUES
  -- #0382 Kyogre - Primal Kyogre
  (382, 38201, 6, 3, NULL, 189, NULL, NULL, 15, NULL, 100, 150, 90, 180, 160, 90),
  -- #0383 Groudon - Primal Groudon
  (383, 38301, 6, 9, 2, 190, NULL, NULL, 15, NULL, 100, 180, 160, 150, 90, 90),
  -- #0351 Castform - Castform (Sunny Form)
  (351, 35101, 3, 2, NULL, 59, NULL, NULL, 8, 12, 70, 70, 70, 70, 70, 70),
  -- #0351 Castform - Castform (Rainy Form)
  (351, 35102, 3, 3, NULL, 59, NULL, NULL, 8, 12, 70, 70, 70, 70, 70, 70),
  -- #0351 Castform - Castform (Snowy Form)
  (351, 35103, 3, 6, NULL, 59, NULL, NULL, 8, 12, 70, 70, 70, 70, 70, 70),
  -- #0421 Cherrim - Cherrim (Sunshine Form)
  (421, 42101, 4, 5, NULL, 122, NULL, NULL, 8, 9, 70, 60, 70, 87, 78, 85),
  -- #0555 Darmanitan - Darmanitan (Zen Mode)
  (555, 55501, 5, 2, 11, 161, NULL, NULL, 7, NULL, 105, 30, 105, 140, 105, 55),
  -- #0555 Darmanitan - Galarian Darmanitan (Zen Mode)
  (555, 55503, 8, 6, 2, 161, NULL, NULL, 7, NULL, 105, 160, 55, 30, 55, 135),
  -- #0648 Meloetta - Meloetta (Pirouette Forme)
  (648, 64801, 5, 1, 7, 32, NULL, NULL, 15, NULL, 100, 128, 90, 77, 77, 128),
  -- #0681 Aegislash - Aegislash (Blade Forme)
  (681, 68101, 6, 17, 14, 176, NULL, NULL, 11, NULL, 60, 150, 50, 150, 50, 60),
  -- #0681 Aegislash - Aegislash (Blade Forme)
  (681, 68101, 8, 17, 14, 176, NULL, NULL, 11, NULL, 60, 140, 50, 140, 50, 60),
  -- #0718 Zygarde - Zygarde (Complete Forme)
  (718, 71803, 7, 15, 9, 211, NULL, NULL, 15, NULL, 216, 100, 121, 91, 95, 85),
  -- #0746 Wishiwashi - Wishiwashi (School Form)
  (746, 74601, 7, 3, NULL, 208, NULL, NULL, 3, NULL, 45, 140, 130, 140, 135, 30),
  -- #0774 Minior - Minior (Core)
  (774, 77401, 7, 13, 10, 197, NULL, NULL, 11, NULL, 60, 100, 60, 100, 60, 120),
  -- #0778 Mimikyu - Mimikyu (Busted Form)
  (778, 77801, 7, 14, 18, 209, NULL, NULL, 12, NULL, 55, 90, 80, 50, 105, 96),
  -- #0800 Necrozma - Ultra Necrozma
  (800, 80003, 7, 11, 15, 233, NULL, NULL, 15, NULL, 97, 167, 97, 167, 97, 129),
  -- #0845 Cramorant - Cramorant (Gulping Form)
  (845, 84501, 8, 10, 3, 241, NULL, NULL, 2, 6, 70, 85, 55, 85, 95, 85),
  -- #0845 Cramorant - Cramorant (Gorging Form)
  (845, 84502, 8, 10, 3, 241, NULL, NULL, 2, 6, 70, 85, 55, 85, 95, 85),
  -- #0875 Eiscue - Eiscue (Noice Face)
  (875, 87501, 8, 6, NULL, 248, NULL, NULL, 2, 7, 75, 80, 70, 65, 50, 130),
  -- #0877 Morpeko - Morpeko (Hangry Mode)
  (877, 87701, 8, 4, 16, 258, NULL, NULL, 7, 8, 58, 95, 58, 70, 58, 97),
  -- #0888 Zacian - Zacian (Crowned Sword)
  (888, 88801, 8, 18, 17, 234, NULL, NULL, 15, NULL, 92, 170, 115, 80, 115, 148),
  -- #0888 Zacian - Zacian (Crowned Sword)
  (888, 88801, 9, 18, 17, 234, NULL, NULL, 15, NULL, 92, 150, 115, 80, 115, 148),
  -- #0889 Zamazenta - Zamazenta (Crowned Shield)
  (889, 88901, 8, 7, 17, 235, NULL, NULL, 15, NULL, 92, 130, 145, 80, 145, 128),
  -- #0889 Zamazenta - Zamazenta (Crowned Shield)
  (889, 88901, 9, 7, 17, 235, NULL, NULL, 15, NULL, 92, 120, 140, 80, 140, 128),
  -- #0890 Eternatus - Eternamax Eternatus
  (890, 89001, 8, 8, 15, 46, NULL, NULL, 15, NULL, 255, 115, 250, 125, 250, 130),
  -- #0964 Palafin - Palafin (Hero Form)
  (964, 96401, 9, 3, NULL, 278, NULL, NULL, 7, 3, 100, 160, 97, 106, 87, 100),
  -- #1024 Terapagos - Terapagos (Terastal Form)
  (1024, 102401, 9, 1, NULL, 308, NULL, NULL, 15, NULL, 95, 95, 110, 105, 110, 85),
  -- #1024 Terapagos - Terapagos (Stellar Form)
  (1024, 102402, 9, 1, NULL, 309, NULL, NULL, 15, NULL, 160, 105, 110, 130, 110, 85);
