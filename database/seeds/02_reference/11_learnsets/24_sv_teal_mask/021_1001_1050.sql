-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Scarlet / Violet Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Scarlet / Violet learnset pages.
-- Scope note: DLC rows are machine compatibility deltas only; base level-up, base TM001-TM171, egg, evolution, and reminder rows stay in the Scarlet / Violet base scope.
-- Delta note: Content scopes are cumulative. Indigo rows exclude Teal rows already present for the same species/form/machine.
-- Correction: legendary and mythical rows are checked against each game's own
-- data (PKHeX learnset and personal tables); see docs/database/reference-data.md.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Teal Mask learnset delta rows for species 1001-1050.
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
  -- Wo-Chien - Spite - TM177
  (1001, 100100, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Wo-Chien - Knock Off - TM181
  (1001, 100100, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Wo-Chien - Solar Blade - TM190
  (1001, 100100, 669, 24, NULL, 2, NULL, NULL, 24002190, NULL, 3),
  -- Wo-Chien - Lash Out - TM199
  (1001, 100100, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 4),
  -- Chien-Pao - Haze - TM174
  (1002, 100200, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Chien-Pao - Spite - TM177
  (1002, 100200, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Chien-Pao - Lash Out - TM199
  (1002, 100200, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 3),
  -- Ting-Lu - Sand Tomb - TM176
  (1003, 100300, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Ting-Lu - Spite - TM177
  (1003, 100300, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Ting-Lu - Lash Out - TM199
  (1003, 100300, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 3),
  -- Chi-Yu - Spite - TM177
  (1004, 100400, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Chi-Yu - Burning Jealousy - TM195
  (1004, 100400, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 2),
  -- Chi-Yu - Lash Out - TM199
  (1004, 100400, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 3),
  -- Roaring Moon - Roar - TM172
  (1005, 100500, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Roaring Moon - Knock Off - TM181
  (1005, 100500, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Roaring Moon - Lash Out - TM199
  (1005, 100500, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 3),
  -- Roaring Moon - Scale Shot - TM200
  (1005, 100500, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 4),
  -- Iron Valiant - Knock Off - TM181
  (1006, 100600, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Iron Valiant - Vacuum Wave - TM184
  (1006, 100600, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 2),
  -- Koraidon - Roar - TM172
  (1007, 100700, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Koraidon - Heat Crash - TM189
  (1007, 100700, 535, 24, NULL, 2, NULL, NULL, 24002189, NULL, 2),
  -- Koraidon - Uproar - TM191
  (1007, 100700, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Koraidon - Focus Punch - TM192
  (1007, 100700, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Koraidon - Dual Wingbeat - TM197
  (1007, 100700, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 5),
  -- Koraidon - Scale Shot - TM200
  (1007, 100700, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 6),
  -- Miraidon - Charge - TM173
  (1008, 100800, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Walking Wake - Roar - TM172
  (1009, 100900, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Walking Wake - Knock Off - TM181
  (1009, 100900, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Walking Wake - Scald - TM188
  (1009, 100900, 503, 24, NULL, 2, NULL, NULL, 24002188, NULL, 3),
  -- Walking Wake - Weather Ball - TM193
  (1009, 100900, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 4),
  -- Walking Wake - Flip Turn - TM196
  (1009, 100900, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 5),
  -- Iron Leaves - Gravity - TM178
  (1010, 101000, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Iron Leaves - Solar Blade - TM190
  (1010, 101000, 669, 24, NULL, 2, NULL, NULL, 24002190, NULL, 2),
  -- Dipplin - Gyro Ball - TM180
  (1011, 101100, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 1),
  -- Dipplin - Bug Bite - TM182
  (1011, 101100, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 2),
  -- Dipplin - Grassy Glide - TM194
  (1011, 101100, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 3),
  -- Poltchageist - Spite - TM177
  (1012, 101200, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Poltchageist - Scald - TM188
  (1012, 101200, 503, 24, NULL, 2, NULL, NULL, 24002188, NULL, 2),
  -- Poltchageist - Uproar - TM191
  (1012, 101200, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Poltchageist - Poltergeist - TM198
  (1012, 101200, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 4),
  -- Sinistcha - Spite - TM177
  (1013, 101300, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Sinistcha - Scald - TM188
  (1013, 101300, 503, 24, NULL, 2, NULL, NULL, 24002188, NULL, 2),
  -- Sinistcha - Uproar - TM191
  (1013, 101300, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Sinistcha - Poltergeist - TM198
  (1013, 101300, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 4),
  -- Okidogi - Roar - TM172
  (1014, 101400, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Okidogi - Toxic - TM175
  (1014, 101400, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Okidogi - Spite - TM177
  (1014, 101400, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 3),
  -- Okidogi - Knock Off - TM181
  (1014, 101400, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 4),
  -- Okidogi - High Horsepower - TM186
  (1014, 101400, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 5),
  -- Okidogi - Uproar - TM191
  (1014, 101400, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 6),
  -- Okidogi - Focus Punch - TM192
  (1014, 101400, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 7),
  -- Okidogi - Lash Out - TM199
  (1014, 101400, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 8),
  -- Munkidori - Toxic - TM175
  (1015, 101500, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Munkidori - Spite - TM177
  (1015, 101500, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Munkidori - Uproar - TM191
  (1015, 101500, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Munkidori - Poltergeist - TM198
  (1015, 101500, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 4),
  -- Munkidori - Lash Out - TM199
  (1015, 101500, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 5),
  -- Fezandipiti - Toxic - TM175
  (1016, 101600, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Fezandipiti - Spite - TM177
  (1016, 101600, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Fezandipiti - Uproar - TM191
  (1016, 101600, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Fezandipiti - Dual Wingbeat - TM197
  (1016, 101600, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 4),
  -- Fezandipiti - Lash Out - TM199
  (1016, 101600, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 5),
  -- Ogerpon - Knock Off - TM181
  (1017, 101700, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Ogerpon - Solar Blade - TM190
  (1017, 101700, 669, 24, NULL, 2, NULL, NULL, 24002190, NULL, 2),
  -- Ogerpon - Grassy Glide - TM194
  (1017, 101700, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 3),
  -- Ogerpon - Lash Out - TM199
  (1017, 101700, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 4),
  -- Ogerpon (Wellspring Mask) - Knock Off - TM181
  (1017, 101701, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Ogerpon (Wellspring Mask) - Solar Blade - TM190
  (1017, 101701, 669, 24, NULL, 2, NULL, NULL, 24002190, NULL, 2),
  -- Ogerpon (Wellspring Mask) - Grassy Glide - TM194
  (1017, 101701, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 3),
  -- Ogerpon (Wellspring Mask) - Lash Out - TM199
  (1017, 101701, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 4),
  -- Ogerpon (Hearthflame Mask) - Knock Off - TM181
  (1017, 101702, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Ogerpon (Hearthflame Mask) - Solar Blade - TM190
  (1017, 101702, 669, 24, NULL, 2, NULL, NULL, 24002190, NULL, 2),
  -- Ogerpon (Hearthflame Mask) - Grassy Glide - TM194
  (1017, 101702, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 3),
  -- Ogerpon (Hearthflame Mask) - Lash Out - TM199
  (1017, 101702, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 4),
  -- Ogerpon (Cornerstone Mask) - Knock Off - TM181
  (1017, 101703, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Ogerpon (Cornerstone Mask) - Solar Blade - TM190
  (1017, 101703, 669, 24, NULL, 2, NULL, NULL, 24002190, NULL, 2),
  -- Ogerpon (Cornerstone Mask) - Grassy Glide - TM194
  (1017, 101703, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 3),
  -- Ogerpon (Cornerstone Mask) - Lash Out - TM199
  (1017, 101703, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 4);
