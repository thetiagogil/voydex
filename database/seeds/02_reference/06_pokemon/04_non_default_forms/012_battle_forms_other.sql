-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia form change, Primal Reversion and battle-only form pages.
-- Cross-check: Serebii Pokédex form pages.
-- Scope note: forms a Pokémon only takes during a battle, from Primal Reversion
-- to abilities like Zen Mode; a Pokémon is never stored in one.
-- Not here yet: Ogerpon's Terastal forms wait for Tera mechanics (#120).
-- Starmobiles: Bulbapedia's Revavroom and Starmobile pages; only Team Star's bosses field them (#115 audit).
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 3-9
-- Table: reference.pokemon_forms
-- Scope: every other battle form.
INSERT INTO reference.pokemon_forms (id, species_id, slug, name, introduced_generation_id, is_default, form_order, height_decimeters, weight_hectograms)
VALUES
  -- Primal Kyogre
  (38201, 382, 'primal-kyogre', 'Primal Kyogre', 6, FALSE, 2, NULL, NULL),
  -- Primal Groudon
  (38301, 383, 'primal-groudon', 'Primal Groudon', 6, FALSE, 2, NULL, NULL),
  -- Castform (Sunny Form)
  (35101, 351, 'castform-sunny', 'Castform (Sunny Form)', 3, FALSE, 2, NULL, NULL),
  -- Castform (Rainy Form)
  (35102, 351, 'castform-rainy', 'Castform (Rainy Form)', 3, FALSE, 3, NULL, NULL),
  -- Castform (Snowy Form)
  (35103, 351, 'castform-snowy', 'Castform (Snowy Form)', 3, FALSE, 4, NULL, NULL),
  -- Cherrim (Sunshine Form)
  (42101, 421, 'cherrim-sunshine', 'Cherrim (Sunshine Form)', 4, FALSE, 2, NULL, NULL),
  -- Darmanitan (Zen Mode)
  (55501, 555, 'darmanitan-zen', 'Darmanitan (Zen Mode)', 5, FALSE, 2, NULL, NULL),
  -- Galarian Darmanitan (Zen Mode)
  (55503, 555, 'galarian-darmanitan-zen', 'Galarian Darmanitan (Zen Mode)', 8, FALSE, 4, NULL, NULL),
  -- Meloetta (Pirouette Forme)
  (64801, 648, 'meloetta-pirouette', 'Meloetta (Pirouette Forme)', 5, FALSE, 2, NULL, NULL),
  -- Ash-Greninja
  (65803, 658, 'ash-greninja', 'Ash-Greninja', 7, FALSE, 4, NULL, NULL),
  -- Aegislash (Blade Forme)
  (68101, 681, 'aegislash-blade', 'Aegislash (Blade Forme)', 6, FALSE, 2, NULL, NULL),
  -- Zygarde (Complete Forme)
  (71803, 718, 'zygarde-complete', 'Zygarde (Complete Forme)', 7, FALSE, 4, NULL, NULL),
  -- Wishiwashi (School Form)
  (74601, 746, 'wishiwashi-school', 'Wishiwashi (School Form)', 7, FALSE, 2, NULL, NULL),
  -- Minior (Core)
  (77401, 774, 'minior-core', 'Minior (Core)', 7, FALSE, 2, NULL, NULL),
  -- Mimikyu (Busted Form)
  (77801, 778, 'mimikyu-busted', 'Mimikyu (Busted Form)', 7, FALSE, 2, NULL, NULL),
  -- Ultra Necrozma
  (80003, 800, 'ultra-necrozma', 'Ultra Necrozma', 7, FALSE, 4, NULL, NULL),
  -- Cramorant (Gulping Form)
  (84501, 845, 'cramorant-gulping', 'Cramorant (Gulping Form)', 8, FALSE, 2, NULL, NULL),
  -- Cramorant (Gorging Form)
  (84502, 845, 'cramorant-gorging', 'Cramorant (Gorging Form)', 8, FALSE, 3, NULL, NULL),
  -- Eiscue (Noice Face)
  (87501, 875, 'eiscue-noice', 'Eiscue (Noice Face)', 8, FALSE, 2, NULL, NULL),
  -- Morpeko (Hangry Mode)
  (87701, 877, 'morpeko-hangry', 'Morpeko (Hangry Mode)', 8, FALSE, 2, NULL, NULL),
  -- Zacian (Crowned Sword)
  (88801, 888, 'zacian-crowned', 'Zacian (Crowned Sword)', 8, FALSE, 2, NULL, NULL),
  -- Zamazenta (Crowned Shield)
  (88901, 889, 'zamazenta-crowned', 'Zamazenta (Crowned Shield)', 8, FALSE, 2, NULL, NULL),
  -- Eternamax Eternatus
  (89001, 890, 'eternamax-eternatus', 'Eternamax Eternatus', 8, FALSE, 2, NULL, NULL),
  -- Palafin (Hero Form)
  (96401, 964, 'palafin-hero', 'Palafin (Hero Form)', 9, FALSE, 2, NULL, NULL),
  -- Terapagos (Terastal Form)
  (102401, 1024, 'terapagos-terastal', 'Terapagos (Terastal Form)', 9, FALSE, 2, NULL, NULL),
  -- Terapagos (Stellar Form)
  (102402, 1024, 'terapagos-stellar', 'Terapagos (Stellar Form)', 9, FALSE, 3, NULL, NULL),
  -- Segin Starmobile (Giacomo's Revavroom)
  (96601, 966, 'segin-starmobile', 'Segin Starmobile', 9, FALSE, 2, NULL, NULL),
  -- Schedar Starmobile (Mela's Revavroom)
  (96602, 966, 'schedar-starmobile', 'Schedar Starmobile', 9, FALSE, 3, NULL, NULL),
  -- Navi Starmobile (Atticus's Revavroom)
  (96603, 966, 'navi-starmobile', 'Navi Starmobile', 9, FALSE, 4, NULL, NULL),
  -- Ruchbah Starmobile (Ortega's Revavroom)
  (96604, 966, 'ruchbah-starmobile', 'Ruchbah Starmobile', 9, FALSE, 5, NULL, NULL),
  -- Caph Starmobile (Eri's Revavroom)
  (96605, 966, 'caph-starmobile', 'Caph Starmobile', 9, FALSE, 6, NULL, NULL);
