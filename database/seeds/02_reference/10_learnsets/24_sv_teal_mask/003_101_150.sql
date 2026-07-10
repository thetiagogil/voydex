-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Scarlet / Violet Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Scarlet / Violet learnset pages.
-- Scope note: DLC rows are machine compatibility deltas only; base level-up, base TM001-TM171, egg, evolution, and reminder rows stay in the Scarlet / Violet base scope.
-- Delta note: Content scopes are cumulative. Indigo rows exclude Teal rows already present for the same species/form/machine.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Teal Mask learnset delta rows for species 101-150.
-- ============================================================================

INSERT INTO reference.pokemon_learnsets (
  species_id,
  form_id,
  move_id,
  version_group_id,
  game_id,
  learn_method_id,
  level_learned_at,
  source_item_id,
  move_machine_id,
  condition_summary,
  sort_order
) VALUES
  -- Electrode - Charge - TM173
  (101, 10100, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Electrode - Gyro Ball - TM180
  (101, 10100, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Electrode (Hisuian Electrode) - Charge - TM173
  (101, 10101, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Electrode (Hisuian Electrode) - Gyro Ball - TM180
  (101, 10101, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Electrode (Hisuian Electrode) - Grassy Glide - TM194
  (101, 10101, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 3),
  -- Koffing - Haze - TM174
  (109, 10900, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Koffing - Toxic - TM175
  (109, 10900, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Koffing - Spite - TM177
  (109, 10900, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 3),
  -- Koffing - Gyro Ball - TM180
  (109, 10900, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 4),
  -- Weezing - Haze - TM174
  (110, 11000, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Weezing - Toxic - TM175
  (110, 11000, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Weezing - Spite - TM177
  (110, 11000, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 3),
  -- Weezing - Gyro Ball - TM180
  (110, 11000, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 4),
  -- Weezing (Galarian Weezing) - Haze - TM174
  (110, 11001, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Weezing (Galarian Weezing) - Toxic - TM175
  (110, 11001, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Weezing (Galarian Weezing) - Spite - TM177
  (110, 11001, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 3),
  -- Weezing (Galarian Weezing) - Gyro Ball - TM180
  (110, 11001, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 4),
  -- Weezing (Galarian Weezing) - Misty Explosion - TM201
  (110, 11001, 802, 24, NULL, 2, NULL, NULL, 24002201, NULL, 5),
  -- Chansey - Gravity - TM178
  (113, 11300, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Scyther - Bug Bite - TM182
  (123, 12300, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 1),
  -- Scyther - Vacuum Wave - TM184
  (123, 12300, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 2),
  -- Scyther - Lunge - TM185
  (123, 12300, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 3),
  -- Scyther - Dual Wingbeat - TM197
  (123, 12300, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 4),
  -- Tauros - High Horsepower - TM186
  (128, 12800, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 1),
  -- Tauros - Lash Out - TM199
  (128, 12800, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 2),
  -- Tauros (Paldean Tauros (Combat Breed)) - High Horsepower - TM186
  (128, 12801, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 1),
  -- Tauros (Paldean Tauros (Combat Breed)) - Lash Out - TM199
  (128, 12801, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 2),
  -- Tauros (Paldean Tauros (Blaze Breed)) - High Horsepower - TM186
  (128, 12802, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 1),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Lash Out - TM199
  (128, 12802, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 2),
  -- Tauros (Paldean Tauros (Aqua Breed)) - High Horsepower - TM186
  (128, 12803, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 1),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Lash Out - TM199
  (128, 12803, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 2),
  -- Gyarados - Roar - TM172
  (130, 13000, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Gyarados - Spite - TM177
  (130, 13000, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Gyarados - Scald - TM188
  (130, 13000, 503, 24, NULL, 2, NULL, NULL, 24002188, NULL, 3),
  -- Gyarados - Lash Out - TM199
  (130, 13000, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 4),
  -- Gyarados - Scale Shot - TM200
  (130, 13000, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 5),
  -- Eevee - Roar - TM172
  (133, 13300, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Eevee - Weather Ball - TM193
  (133, 13300, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Vaporeon - Roar - TM172
  (134, 13400, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Vaporeon - Haze - TM174
  (134, 13400, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 2),
  -- Vaporeon - Scald - TM188
  (134, 13400, 503, 24, NULL, 2, NULL, NULL, 24002188, NULL, 3),
  -- Vaporeon - Weather Ball - TM193
  (134, 13400, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 4),
  -- Vaporeon - Flip Turn - TM196
  (134, 13400, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 5),
  -- Jolteon - Roar - TM172
  (135, 13500, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Jolteon - Charge - TM173
  (135, 13500, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 2),
  -- Jolteon - Weather Ball - TM193
  (135, 13500, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Flareon - Roar - TM172
  (136, 13600, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Flareon - Weather Ball - TM193
  (136, 13600, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Flareon - Burning Jealousy - TM195
  (136, 13600, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 3),
  -- Snorlax - Smack Down - TM179
  (143, 14300, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 1),
  -- Snorlax - High Horsepower - TM186
  (143, 14300, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 2),
  -- Snorlax - Heat Crash - TM189
  (143, 14300, 535, 24, NULL, 2, NULL, NULL, 24002189, NULL, 3),
  -- Snorlax - Uproar - TM191
  (143, 14300, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 4),
  -- Snorlax - Focus Punch - TM192
  (143, 14300, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 5),
  -- Articuno - Roar - TM172
  (144, 14400, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Articuno - Haze - TM174
  (144, 14400, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 2),
  -- Articuno - Icicle Spear - TM187
  (144, 14400, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 3),
  -- Articuno - Weather Ball - TM193
  (144, 14400, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 4),
  -- Articuno - Dual Wingbeat - TM197
  (144, 14400, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 5),
  -- Articuno (Galarian Articuno) - Dual Wingbeat - TM197
  (144, 14401, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 1),
  -- Zapdos - Charge - TM173
  (145, 14500, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Zapdos - Weather Ball - TM193
  (145, 14500, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Zapdos - Dual Wingbeat - TM197
  (145, 14500, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 3),
  -- Zapdos (Galarian Zapdos) - Knock Off - TM181
  (145, 14501, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Zapdos (Galarian Zapdos) - Dual Wingbeat - TM197
  (145, 14501, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 2),
  -- Moltres - Roar - TM172
  (146, 14600, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Moltres - Weather Ball - TM193
  (146, 14600, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Moltres - Burning Jealousy - TM195
  (146, 14600, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 3),
  -- Moltres - Dual Wingbeat - TM197
  (146, 14600, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 4),
  -- Moltres (Galarian Moltres) - Spite - TM177
  (146, 14601, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Moltres (Galarian Moltres) - Dual Wingbeat - TM197
  (146, 14601, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 2),
  -- Moltres (Galarian Moltres) - Lash Out - TM199
  (146, 14601, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 3),
  -- Dratini - Haze - TM174
  (147, 14700, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Dratini - Scale Shot - TM200
  (147, 14700, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 2),
  -- Dragonair - Haze - TM174
  (148, 14800, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Dragonair - Weather Ball - TM193
  (148, 14800, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Dragonair - Scale Shot - TM200
  (148, 14800, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 3),
  -- Dragonite - Roar - TM172
  (149, 14900, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Dragonite - Haze - TM174
  (149, 14900, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 2),
  -- Dragonite - Focus Punch - TM192
  (149, 14900, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Dragonite - Weather Ball - TM193
  (149, 14900, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 4),
  -- Dragonite - Scale Shot - TM200
  (149, 14900, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 5),
  -- Mewtwo - Spite - TM177
  (150, 15000, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Mewtwo - Gravity - TM178
  (150, 15000, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 2),
  -- Mewtwo - Knock Off - TM181
  (150, 15000, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Mewtwo - Focus Punch - TM192
  (150, 15000, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Mewtwo - Weather Ball - TM193
  (150, 15000, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 5),
  -- Mewtwo - Lash Out - TM199
  (150, 15000, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 6);
