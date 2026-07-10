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
-- The Teal Mask learnset delta rows for species 151-200.
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
  -- Mew - Roar - TM172
  (151, 15100, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Mew - Charge - TM173
  (151, 15100, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 2),
  -- Mew - Haze - TM174
  (151, 15100, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 3),
  -- Mew - Toxic - TM175
  (151, 15100, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 4),
  -- Mew - Sand Tomb - TM176
  (151, 15100, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 5),
  -- Mew - Spite - TM177
  (151, 15100, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 6),
  -- Mew - Gravity - TM178
  (151, 15100, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 7),
  -- Mew - Smack Down - TM179
  (151, 15100, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 8),
  -- Mew - Gyro Ball - TM180
  (151, 15100, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 9),
  -- Mew - Knock Off - TM181
  (151, 15100, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 10),
  -- Mew - Bug Bite - TM182
  (151, 15100, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 11),
  -- Mew - Super Fang - TM183
  (151, 15100, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 12),
  -- Mew - Vacuum Wave - TM184
  (151, 15100, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 13),
  -- Mew - Lunge - TM185
  (151, 15100, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 14),
  -- Mew - High Horsepower - TM186
  (151, 15100, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 15),
  -- Mew - Icicle Spear - TM187
  (151, 15100, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 16),
  -- Mew - Scald - TM188
  (151, 15100, 503, 24, NULL, 2, NULL, NULL, 24002188, NULL, 17),
  -- Mew - Heat Crash - TM189
  (151, 15100, 535, 24, NULL, 2, NULL, NULL, 24002189, NULL, 18),
  -- Mew - Solar Blade - TM190
  (151, 15100, 669, 24, NULL, 2, NULL, NULL, 24002190, NULL, 19),
  -- Mew - Uproar - TM191
  (151, 15100, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 20),
  -- Mew - Focus Punch - TM192
  (151, 15100, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 21),
  -- Mew - Weather Ball - TM193
  (151, 15100, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 22),
  -- Mew - Grassy Glide - TM194
  (151, 15100, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 23),
  -- Mew - Burning Jealousy - TM195
  (151, 15100, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 24),
  -- Mew - Flip Turn - TM196
  (151, 15100, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 25),
  -- Mew - Dual Wingbeat - TM197
  (151, 15100, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 26),
  -- Mew - Poltergeist - TM198
  (151, 15100, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 27),
  -- Mew - Lash Out - TM199
  (151, 15100, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 28),
  -- Mew - Scale Shot - TM200
  (151, 15100, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 29),
  -- Mew - Misty Explosion - TM201
  (151, 15100, 802, 24, NULL, 2, NULL, NULL, 24002201, NULL, 30),
  -- Cyndaquil - Roar - TM172
  (155, 15500, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Cyndaquil - Burning Jealousy - TM195
  (155, 15500, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 2),
  -- Quilava - Roar - TM172
  (156, 15600, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Quilava - Burning Jealousy - TM195
  (156, 15600, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 2),
  -- Typhlosion - Roar - TM172
  (157, 15700, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Typhlosion - Gyro Ball - TM180
  (157, 15700, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Typhlosion - Focus Punch - TM192
  (157, 15700, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Typhlosion - Burning Jealousy - TM195
  (157, 15700, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 4),
  -- Typhlosion (Hisuian Typhlosion) - Roar - TM172
  (157, 15701, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Typhlosion (Hisuian Typhlosion) - Spite - TM177
  (157, 15701, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Typhlosion (Hisuian Typhlosion) - Gyro Ball - TM180
  (157, 15701, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 3),
  -- Typhlosion (Hisuian Typhlosion) - Focus Punch - TM192
  (157, 15701, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Typhlosion (Hisuian Typhlosion) - Burning Jealousy - TM195
  (157, 15701, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 5),
  -- Typhlosion (Hisuian Typhlosion) - Poltergeist - TM198
  (157, 15701, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 6),
  -- Sentret - Knock Off - TM181
  (161, 16100, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Sentret - Super Fang - TM183
  (161, 16100, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 2),
  -- Sentret - Uproar - TM191
  (161, 16100, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Sentret - Focus Punch - TM192
  (161, 16100, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Furret - Knock Off - TM181
  (162, 16200, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Furret - Super Fang - TM183
  (162, 16200, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 2),
  -- Furret - Uproar - TM191
  (162, 16200, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Furret - Focus Punch - TM192
  (162, 16200, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Hoothoot - Haze - TM174
  (163, 16300, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Hoothoot - Spite - TM177
  (163, 16300, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Hoothoot - Uproar - TM191
  (163, 16300, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Hoothoot - Dual Wingbeat - TM197
  (163, 16300, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 4),
  -- Noctowl - Haze - TM174
  (164, 16400, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Noctowl - Spite - TM177
  (164, 16400, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Noctowl - Uproar - TM191
  (164, 16400, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Noctowl - Dual Wingbeat - TM197
  (164, 16400, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 4),
  -- Spinarak - Toxic - TM175
  (167, 16700, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Spinarak - Spite - TM177
  (167, 16700, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Spinarak - Knock Off - TM181
  (167, 16700, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Spinarak - Bug Bite - TM182
  (167, 16700, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 4),
  -- Spinarak - Lunge - TM185
  (167, 16700, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 5),
  -- Ariados - Toxic - TM175
  (168, 16800, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Ariados - Spite - TM177
  (168, 16800, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Ariados - Knock Off - TM181
  (168, 16800, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Ariados - Bug Bite - TM182
  (168, 16800, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 4),
  -- Ariados - Lunge - TM185
  (168, 16800, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 5),
  -- Pichu - Charge - TM173
  (172, 17200, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Cleffa - Gravity - TM178
  (173, 17300, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Cleffa - Uproar - TM191
  (173, 17300, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 2),
  -- Igglybuff - Gravity - TM178
  (174, 17400, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Mareep - Charge - TM173
  (179, 17900, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Flaaffy - Roar - TM172
  (180, 18000, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Flaaffy - Charge - TM173
  (180, 18000, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 2),
  -- Flaaffy - Focus Punch - TM192
  (180, 18000, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Ampharos - Roar - TM172
  (181, 18100, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Ampharos - Charge - TM173
  (181, 18100, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 2),
  -- Ampharos - Focus Punch - TM192
  (181, 18100, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Marill - Knock Off - TM181
  (183, 18300, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Marill - Focus Punch - TM192
  (183, 18300, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 2),
  -- Marill - Misty Explosion - TM201
  (183, 18300, 802, 24, NULL, 2, NULL, NULL, 24002201, NULL, 3),
  -- Azumarill - Knock Off - TM181
  (184, 18400, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Azumarill - Focus Punch - TM192
  (184, 18400, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 2),
  -- Azumarill - Misty Explosion - TM201
  (184, 18400, 802, 24, NULL, 2, NULL, NULL, 24002201, NULL, 3),
  -- Sudowoodo - Sand Tomb - TM176
  (185, 18500, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Sudowoodo - Smack Down - TM179
  (185, 18500, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Sudowoodo - High Horsepower - TM186
  (185, 18500, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 3),
  -- Sudowoodo - Focus Punch - TM192
  (185, 18500, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Politoed - Haze - TM174
  (186, 18600, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Politoed - Focus Punch - TM192
  (186, 18600, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 2),
  -- Politoed - Weather Ball - TM193
  (186, 18600, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Hoppip - Lunge - TM185
  (187, 18700, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 1),
  -- Skiploom - Lunge - TM185
  (188, 18800, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 1),
  -- Jumpluff - Lunge - TM185
  (189, 18900, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 1),
  -- Aipom - Spite - TM177
  (190, 19000, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Aipom - Smack Down - TM179
  (190, 19000, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Aipom - Knock Off - TM181
  (190, 19000, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Aipom - Focus Punch - TM192
  (190, 19000, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Sunkern - Weather Ball - TM193
  (191, 19100, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 1),
  -- Sunflora - Weather Ball - TM193
  (192, 19200, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 1),
  -- Sunflora - Grassy Glide - TM194
  (192, 19200, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 2),
  -- Yanma - Bug Bite - TM182
  (193, 19300, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 1),
  -- Yanma - Lunge - TM185
  (193, 19300, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 2),
  -- Yanma - Uproar - TM191
  (193, 19300, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Wooper - Haze - TM174
  (194, 19400, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Wooper - Toxic - TM175
  (194, 19400, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Wooper (Paldean Wooper) - Haze - TM174
  (194, 19401, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Wooper (Paldean Wooper) - Toxic - TM175
  (194, 19401, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Quagsire - Haze - TM174
  (195, 19500, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Quagsire - Toxic - TM175
  (195, 19500, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Quagsire - High Horsepower - TM186
  (195, 19500, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 3),
  -- Quagsire - Focus Punch - TM192
  (195, 19500, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Espeon - Roar - TM172
  (196, 19600, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Espeon - Gravity - TM178
  (196, 19600, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 2),
  -- Espeon - Weather Ball - TM193
  (196, 19600, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Umbreon - Roar - TM172
  (197, 19700, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Umbreon - Toxic - TM175
  (197, 19700, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Umbreon - Spite - TM177
  (197, 19700, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 3),
  -- Umbreon - Weather Ball - TM193
  (197, 19700, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 4),
  -- Umbreon - Lash Out - TM199
  (197, 19700, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 5),
  -- Murkrow - Haze - TM174
  (198, 19800, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Murkrow - Spite - TM177
  (198, 19800, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Murkrow - Uproar - TM191
  (198, 19800, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Murkrow - Dual Wingbeat - TM197
  (198, 19800, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 4),
  -- Murkrow - Lash Out - TM199
  (198, 19800, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 5),
  -- Slowking - Scald - TM188
  (199, 19900, 503, 24, NULL, 2, NULL, NULL, 24002188, NULL, 1),
  -- Slowking - Focus Punch - TM192
  (199, 19900, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 2),
  -- Slowking - Weather Ball - TM193
  (199, 19900, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Slowking (Galarian Slowking) - Toxic - TM175
  (199, 19901, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Slowking (Galarian Slowking) - Weather Ball - TM193
  (199, 19901, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Misdreavus - Spite - TM177
  (200, 20000, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Misdreavus - Burning Jealousy - TM195
  (200, 20000, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 2),
  -- Misdreavus - Poltergeist - TM198
  (200, 20000, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 3);
