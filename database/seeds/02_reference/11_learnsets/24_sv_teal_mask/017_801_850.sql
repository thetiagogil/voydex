-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Scarlet / Violet Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Scarlet / Violet learnset pages.
-- Scope note: DLC rows are machine compatibility deltas only; base level-up, base TM001-TM171, egg, evolution, and reminder rows stay in the Scarlet / Violet base scope.
-- Delta note: Content scopes are cumulative. Indigo rows exclude Teal rows already present for the same species/form/machine.
-- Correction: legendary and mythical rows and every form's Scarlet / Violet
-- TMs are checked against each game's own data (PKHeX learnset and personal
-- tables); see docs/database/reference-data.md.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Teal Mask learnset delta rows for species 801-850.
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
  -- Magearna - Gravity - TM178
  (801, 80100, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Magearna - Gyro Ball - TM180
  (801, 80100, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Magearna - Misty Explosion - TM201
  (801, 80100, 802, 24, NULL, 2, NULL, NULL, 24002201, NULL, 3),
  -- Grookey - Knock Off - TM181
  (810, 81000, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Grookey - Solar Blade - TM190
  (810, 81000, 669, 24, NULL, 2, NULL, NULL, 24002190, NULL, 2),
  -- Grookey - Uproar - TM191
  (810, 81000, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Grookey - Grassy Glide - TM194
  (810, 81000, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 4),
  -- Thwackey - Knock Off - TM181
  (811, 81100, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Thwackey - Solar Blade - TM190
  (811, 81100, 669, 24, NULL, 2, NULL, NULL, 24002190, NULL, 2),
  -- Thwackey - Uproar - TM191
  (811, 81100, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Thwackey - Grassy Glide - TM194
  (811, 81100, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 4),
  -- Rillaboom - Knock Off - TM181
  (812, 81200, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Rillaboom - High Horsepower - TM186
  (812, 81200, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 2),
  -- Rillaboom - Solar Blade - TM190
  (812, 81200, 669, 24, NULL, 2, NULL, NULL, 24002190, NULL, 3),
  -- Rillaboom - Uproar - TM191
  (812, 81200, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 4),
  -- Rillaboom - Focus Punch - TM192
  (812, 81200, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 5),
  -- Rillaboom - Grassy Glide - TM194
  (812, 81200, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 6),
  -- Scorbunny - Super Fang - TM183
  (813, 81300, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 1),
  -- Scorbunny - Burning Jealousy - TM195
  (813, 81300, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 2),
  -- Raboot - Super Fang - TM183
  (814, 81400, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 1),
  -- Raboot - Weather Ball - TM193
  (814, 81400, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Raboot - Burning Jealousy - TM195
  (814, 81400, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 3),
  -- Cinderace - Smack Down - TM179
  (815, 81500, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 1),
  -- Cinderace - Super Fang - TM183
  (815, 81500, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 2),
  -- Cinderace - Weather Ball - TM193
  (815, 81500, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Cinderace - Burning Jealousy - TM195
  (815, 81500, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 4),
  -- Sobble - Haze - TM174
  (816, 81600, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Sobble - Weather Ball - TM193
  (816, 81600, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Drizzile - Haze - TM174
  (817, 81700, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Drizzile - Weather Ball - TM193
  (817, 81700, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Inteleon - Haze - TM174
  (818, 81800, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Inteleon - Smack Down - TM179
  (818, 81800, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Inteleon - Vacuum Wave - TM184
  (818, 81800, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 3),
  -- Inteleon - Icicle Spear - TM187
  (818, 81800, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 4),
  -- Inteleon - Scald - TM188
  (818, 81800, 503, 24, NULL, 2, NULL, NULL, 24002188, NULL, 5),
  -- Inteleon - Weather Ball - TM193
  (818, 81800, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 6),
  -- Inteleon - Flip Turn - TM196
  (818, 81800, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 7),
  -- Skwovet - Gyro Ball - TM180
  (819, 81900, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 1),
  -- Skwovet - Super Fang - TM183
  (819, 81900, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 2),
  -- Greedent - Gyro Ball - TM180
  (820, 82000, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 1),
  -- Greedent - Knock Off - TM181
  (820, 82000, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Greedent - Super Fang - TM183
  (820, 82000, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 3),
  -- Greedent - High Horsepower - TM186
  (820, 82000, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 4),
  -- Rookidee - Spite - TM177
  (821, 82100, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Rookidee - Dual Wingbeat - TM197
  (821, 82100, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 2),
  -- Corvisquire - Spite - TM177
  (822, 82200, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Corvisquire - Dual Wingbeat - TM197
  (822, 82200, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 2),
  -- Corviknight - Spite - TM177
  (823, 82300, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Corviknight - Dual Wingbeat - TM197
  (823, 82300, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 2),
  -- Drednaw - Sand Tomb - TM176
  (834, 83400, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Drednaw - Super Fang - TM183
  (834, 83400, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 2),
  -- Drednaw - High Horsepower - TM186
  (834, 83400, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 3),
  -- Rolycoly - Sand Tomb - TM176
  (837, 83700, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Rolycoly - Smack Down - TM179
  (837, 83700, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Rolycoly - Gyro Ball - TM180
  (837, 83700, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 3),
  -- Rolycoly - Heat Crash - TM189
  (837, 83700, 535, 24, NULL, 2, NULL, NULL, 24002189, NULL, 4),
  -- Carkol - Sand Tomb - TM176
  (838, 83800, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Carkol - Smack Down - TM179
  (838, 83800, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Carkol - Gyro Ball - TM180
  (838, 83800, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 3),
  -- Carkol - Scald - TM188
  (838, 83800, 503, 24, NULL, 2, NULL, NULL, 24002188, NULL, 4),
  -- Carkol - Heat Crash - TM189
  (838, 83800, 535, 24, NULL, 2, NULL, NULL, 24002189, NULL, 5),
  -- Coalossal - Sand Tomb - TM176
  (839, 83900, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Coalossal - Smack Down - TM179
  (839, 83900, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Coalossal - Gyro Ball - TM180
  (839, 83900, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 3),
  -- Coalossal - High Horsepower - TM186
  (839, 83900, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 4),
  -- Coalossal - Scald - TM188
  (839, 83900, 503, 24, NULL, 2, NULL, NULL, 24002188, NULL, 5),
  -- Coalossal - Heat Crash - TM189
  (839, 83900, 535, 24, NULL, 2, NULL, NULL, 24002189, NULL, 6),
  -- Flapple - Grassy Glide - TM194
  (841, 84100, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 1),
  -- Flapple - Dual Wingbeat - TM197
  (841, 84100, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 2),
  -- Appletun - Gyro Ball - TM180
  (842, 84200, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 1),
  -- Appletun - High Horsepower - TM186
  (842, 84200, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 2),
  -- Appletun - Grassy Glide - TM194
  (842, 84200, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 3),
  -- Silicobra - Sand Tomb - TM176
  (843, 84300, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Silicobra - Scale Shot - TM200
  (843, 84300, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 2),
  -- Sandaconda - Sand Tomb - TM176
  (844, 84400, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Sandaconda - High Horsepower - TM186
  (844, 84400, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 2),
  -- Sandaconda - Scale Shot - TM200
  (844, 84400, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 3),
  -- Cramorant - Uproar - TM191
  (845, 84500, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 1),
  -- Cramorant - Weather Ball - TM193
  (845, 84500, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Cramorant - Dual Wingbeat - TM197
  (845, 84500, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 3),
  -- Arrokuda - Flip Turn - TM196
  (846, 84600, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 1),
  -- Arrokuda - Scale Shot - TM200
  (846, 84600, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 2),
  -- Barraskewda - Flip Turn - TM196
  (847, 84700, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 1),
  -- Barraskewda - Scale Shot - TM200
  (847, 84700, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 2),
  -- Toxtricity - Charge - TM173
  (849, 84900, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Toxtricity - Toxic - TM175
  (849, 84900, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Toxtricity - Uproar - TM191
  (849, 84900, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Toxtricity (Low Key) - Charge - TM173
  (849, 84901, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Toxtricity (Low Key) - Toxic - TM175
  (849, 84901, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Toxtricity (Low Key) - Uproar - TM191
  (849, 84901, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 3);
