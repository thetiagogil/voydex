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
-- The Teal Mask learnset delta rows for species 401-450.
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
  -- Kricketot - Bug Bite - TM182
  (401, 40100, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 1),
  -- Kricketot - Lunge - TM185
  (401, 40100, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 2),
  -- Kricketune - Knock Off - TM181
  (402, 40200, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Kricketune - Bug Bite - TM182
  (402, 40200, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 2),
  -- Kricketune - Lunge - TM185
  (402, 40200, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 3),
  -- Kricketune - Uproar - TM191
  (402, 40200, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 4),
  -- Shinx - Roar - TM172
  (403, 40300, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Shinx - Charge - TM173
  (403, 40300, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 2),
  -- Luxio - Roar - TM172
  (404, 40400, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Luxio - Charge - TM173
  (404, 40400, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 2),
  -- Luxray - Roar - TM172
  (405, 40500, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Luxray - Charge - TM173
  (405, 40500, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 2),
  -- Combee - Bug Bite - TM182
  (415, 41500, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 1),
  -- Combee - Lunge - TM185
  (415, 41500, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 2),
  -- Vespiquen - Toxic - TM175
  (416, 41600, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Vespiquen - Spite - TM177
  (416, 41600, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Vespiquen - Bug Bite - TM182
  (416, 41600, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 3),
  -- Vespiquen - Lunge - TM185
  (416, 41600, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 4),
  -- Vespiquen - Dual Wingbeat - TM197
  (416, 41600, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 5),
  -- Pachirisu - Charge - TM173
  (417, 41700, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Pachirisu - Super Fang - TM183
  (417, 41700, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 2),
  -- Pachirisu - Uproar - TM191
  (417, 41700, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Buizel - Roar - TM172
  (418, 41800, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Buizel - Focus Punch - TM192
  (418, 41800, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 2),
  -- Buizel - Flip Turn - TM196
  (418, 41800, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 3),
  -- Floatzel - Roar - TM172
  (419, 41900, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Floatzel - Focus Punch - TM192
  (419, 41900, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 2),
  -- Floatzel - Flip Turn - TM196
  (419, 41900, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 3),
  -- Gastrodon - Sand Tomb - TM176
  (423, 42300, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Gastrodon - Weather Ball - TM193
  (423, 42300, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Ambipom - Spite - TM177
  (424, 42400, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Ambipom - Smack Down - TM179
  (424, 42400, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Ambipom - Knock Off - TM181
  (424, 42400, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Ambipom - Focus Punch - TM192
  (424, 42400, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Drifloon - Haze - TM174
  (425, 42500, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Drifloon - Spite - TM177
  (425, 42500, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Drifloon - Gyro Ball - TM180
  (425, 42500, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 3),
  -- Drifloon - Knock Off - TM181
  (425, 42500, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 4),
  -- Drifloon - Weather Ball - TM193
  (425, 42500, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 5),
  -- Drifblim - Haze - TM174
  (426, 42600, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Drifblim - Spite - TM177
  (426, 42600, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Drifblim - Gyro Ball - TM180
  (426, 42600, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 3),
  -- Drifblim - Knock Off - TM181
  (426, 42600, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 4),
  -- Drifblim - Weather Ball - TM193
  (426, 42600, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 5),
  -- Mismagius - Spite - TM177
  (429, 42900, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Mismagius - Burning Jealousy - TM195
  (429, 42900, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 2),
  -- Mismagius - Poltergeist - TM198
  (429, 42900, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 3),
  -- Mismagius - Lash Out - TM199
  (429, 42900, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 4),
  -- Honchkrow - Haze - TM174
  (430, 43000, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Honchkrow - Spite - TM177
  (430, 43000, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Honchkrow - Uproar - TM191
  (430, 43000, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Honchkrow - Dual Wingbeat - TM197
  (430, 43000, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 4),
  -- Honchkrow - Lash Out - TM199
  (430, 43000, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 5),
  -- Chingling - Gravity - TM178
  (433, 43300, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Chingling - Knock Off - TM181
  (433, 43300, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Chingling - Uproar - TM191
  (433, 43300, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Stunky - Roar - TM172
  (434, 43400, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Stunky - Haze - TM174
  (434, 43400, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 2),
  -- Stunky - Toxic - TM175
  (434, 43400, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 3),
  -- Stunky - Knock Off - TM181
  (434, 43400, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 4),
  -- Stunky - Lash Out - TM199
  (434, 43400, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 5),
  -- Skuntank - Roar - TM172
  (435, 43500, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Skuntank - Haze - TM174
  (435, 43500, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 2),
  -- Skuntank - Toxic - TM175
  (435, 43500, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 3),
  -- Skuntank - Knock Off - TM181
  (435, 43500, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 4),
  -- Skuntank - Super Fang - TM183
  (435, 43500, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 5),
  -- Skuntank - Burning Jealousy - TM195
  (435, 43500, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 6),
  -- Skuntank - Lash Out - TM199
  (435, 43500, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 7),
  -- Bronzor - Gravity - TM178
  (436, 43600, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Bronzor - Gyro Ball - TM180
  (436, 43600, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Bronzong - Gravity - TM178
  (437, 43700, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Bronzong - Gyro Ball - TM180
  (437, 43700, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Bronzong - Weather Ball - TM193
  (437, 43700, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Bonsly - Sand Tomb - TM176
  (438, 43800, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Bonsly - Smack Down - TM179
  (438, 43800, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Happiny - Gravity - TM178
  (440, 44000, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Spiritomb - Toxic - TM175
  (442, 44200, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Spiritomb - Spite - TM177
  (442, 44200, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Spiritomb - Burning Jealousy - TM195
  (442, 44200, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 3),
  -- Spiritomb - Poltergeist - TM198
  (442, 44200, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 4),
  -- Spiritomb - Lash Out - TM199
  (442, 44200, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 5),
  -- Gible - Sand Tomb - TM176
  (443, 44300, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Gible - Scale Shot - TM200
  (443, 44300, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 2),
  -- Gabite - Sand Tomb - TM176
  (444, 44400, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Gabite - Scale Shot - TM200
  (444, 44400, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 2),
  -- Garchomp - Sand Tomb - TM176
  (445, 44500, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Garchomp - Scale Shot - TM200
  (445, 44500, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 2),
  -- Munchlax - Uproar - TM191
  (446, 44600, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 1),
  -- Munchlax - Focus Punch - TM192
  (446, 44600, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 2),
  -- Riolu - Vacuum Wave - TM184
  (447, 44700, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 1),
  -- Riolu - Focus Punch - TM192
  (447, 44700, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 2),
  -- Lucario - Roar - TM172
  (448, 44800, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Lucario - Vacuum Wave - TM184
  (448, 44800, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 2),
  -- Lucario - Focus Punch - TM192
  (448, 44800, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Hippopotas - Roar - TM172
  (449, 44900, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Hippopotas - Sand Tomb - TM176
  (449, 44900, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 2),
  -- Hippopotas - High Horsepower - TM186
  (449, 44900, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 3),
  -- Hippowdon - Roar - TM172
  (450, 45000, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Hippowdon - Sand Tomb - TM176
  (450, 45000, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 2),
  -- Hippowdon - High Horsepower - TM186
  (450, 45000, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 3);
