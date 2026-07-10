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
-- The Teal Mask learnset delta rows for species 201-250.
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
  -- Girafarig - Gravity - TM178
  (203, 20300, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Girafarig - High Horsepower - TM186
  (203, 20300, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 2),
  -- Girafarig - Uproar - TM191
  (203, 20300, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Pineco - Sand Tomb - TM176
  (204, 20400, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Pineco - Gravity - TM178
  (204, 20400, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 2),
  -- Pineco - Gyro Ball - TM180
  (204, 20400, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 3),
  -- Pineco - Bug Bite - TM182
  (204, 20400, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 4),
  -- Pineco - Lunge - TM185
  (204, 20400, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 5),
  -- Forretress - Sand Tomb - TM176
  (205, 20500, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Forretress - Gravity - TM178
  (205, 20500, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 2),
  -- Forretress - Gyro Ball - TM180
  (205, 20500, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 3),
  -- Forretress - Bug Bite - TM182
  (205, 20500, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 4),
  -- Forretress - Lunge - TM185
  (205, 20500, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 5),
  -- Dunsparce - Toxic - TM175
  (206, 20600, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Dunsparce - Spite - TM177
  (206, 20600, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Dunsparce - Gyro Ball - TM180
  (206, 20600, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 3),
  -- Dunsparce - Lunge - TM185
  (206, 20600, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 4),
  -- Dunsparce - Uproar - TM191
  (206, 20600, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 5),
  -- Dunsparce - Scale Shot - TM200
  (206, 20600, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 6),
  -- Gligar - Toxic - TM175
  (207, 20700, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Gligar - Sand Tomb - TM176
  (207, 20700, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 2),
  -- Gligar - Knock Off - TM181
  (207, 20700, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Gligar - Lunge - TM185
  (207, 20700, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 4),
  -- Gligar - High Horsepower - TM186
  (207, 20700, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 5),
  -- Gligar - Dual Wingbeat - TM197
  (207, 20700, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 6),
  -- Gligar - Scale Shot - TM200
  (207, 20700, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 7),
  -- Qwilfish - Haze - TM174
  (211, 21100, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Qwilfish - Toxic - TM175
  (211, 21100, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Qwilfish - Spite - TM177
  (211, 21100, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 3),
  -- Qwilfish - Gyro Ball - TM180
  (211, 21100, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 4),
  -- Qwilfish - Flip Turn - TM196
  (211, 21100, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 5),
  -- Qwilfish - Scale Shot - TM200
  (211, 21100, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 6),
  -- Qwilfish (Hisuian Qwilfish) - Haze - TM174
  (211, 21101, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Qwilfish (Hisuian Qwilfish) - Toxic - TM175
  (211, 21101, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Qwilfish (Hisuian Qwilfish) - Spite - TM177
  (211, 21101, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 3),
  -- Qwilfish (Hisuian Qwilfish) - Gyro Ball - TM180
  (211, 21101, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 4),
  -- Qwilfish (Hisuian Qwilfish) - Lash Out - TM199
  (211, 21101, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 5),
  -- Qwilfish (Hisuian Qwilfish) - Scale Shot - TM200
  (211, 21101, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 6),
  -- Scizor - Knock Off - TM181
  (212, 21200, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Scizor - Bug Bite - TM182
  (212, 21200, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 2),
  -- Scizor - Vacuum Wave - TM184
  (212, 21200, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 3),
  -- Scizor - Lunge - TM185
  (212, 21200, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 4),
  -- Scizor - Dual Wingbeat - TM197
  (212, 21200, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 5),
  -- Heracross - Smack Down - TM179
  (214, 21400, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 1),
  -- Heracross - Knock Off - TM181
  (214, 21400, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Heracross - Bug Bite - TM182
  (214, 21400, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 3),
  -- Heracross - Vacuum Wave - TM184
  (214, 21400, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 4),
  -- Heracross - Lunge - TM185
  (214, 21400, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 5),
  -- Heracross - High Horsepower - TM186
  (214, 21400, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 6),
  -- Heracross - Focus Punch - TM192
  (214, 21400, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 7),
  -- Sneasel - Spite - TM177
  (215, 21500, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Sneasel - Knock Off - TM181
  (215, 21500, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Sneasel - Icicle Spear - TM187
  (215, 21500, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 3),
  -- Sneasel - Focus Punch - TM192
  (215, 21500, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Sneasel - Lash Out - TM199
  (215, 21500, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 5),
  -- Sneasel (Hisuian Sneasel) - Toxic - TM175
  (215, 21501, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Sneasel (Hisuian Sneasel) - Spite - TM177
  (215, 21501, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Sneasel (Hisuian Sneasel) - Vacuum Wave - TM184
  (215, 21501, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 3),
  -- Sneasel (Hisuian Sneasel) - Focus Punch - TM192
  (215, 21501, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Sneasel (Hisuian Sneasel) - Lash Out - TM199
  (215, 21501, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 5),
  -- Teddiursa - Smack Down - TM179
  (216, 21600, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 1),
  -- Teddiursa - Uproar - TM191
  (216, 21600, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 2),
  -- Teddiursa - Focus Punch - TM192
  (216, 21600, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Ursaring - Smack Down - TM179
  (217, 21700, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 1),
  -- Ursaring - High Horsepower - TM186
  (217, 21700, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 2),
  -- Ursaring - Uproar - TM191
  (217, 21700, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Ursaring - Focus Punch - TM192
  (217, 21700, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Slugma - Smack Down - TM179
  (218, 21800, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 1),
  -- Slugma - High Horsepower - TM186
  (218, 21800, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 2),
  -- Slugma - Heat Crash - TM189
  (218, 21800, 535, 24, NULL, 2, NULL, NULL, 24002189, NULL, 3),
  -- Magcargo - Sand Tomb - TM176
  (219, 21900, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Magcargo - Smack Down - TM179
  (219, 21900, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Magcargo - Gyro Ball - TM180
  (219, 21900, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 3),
  -- Magcargo - Heat Crash - TM189
  (219, 21900, 535, 24, NULL, 2, NULL, NULL, 24002189, NULL, 4),
  -- Magcargo - Burning Jealousy - TM195
  (219, 21900, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 5),
  -- Swinub - Roar - TM172
  (220, 22000, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Swinub - Haze - TM174
  (220, 22000, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 2),
  -- Swinub - Sand Tomb - TM176
  (220, 22000, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 3),
  -- Swinub - Smack Down - TM179
  (220, 22000, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 4),
  -- Swinub - High Horsepower - TM186
  (220, 22000, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 5),
  -- Swinub - Icicle Spear - TM187
  (220, 22000, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 6),
  -- Piloswine - Roar - TM172
  (221, 22100, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Piloswine - Haze - TM174
  (221, 22100, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 2),
  -- Piloswine - Sand Tomb - TM176
  (221, 22100, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 3),
  -- Piloswine - Smack Down - TM179
  (221, 22100, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 4),
  -- Piloswine - High Horsepower - TM186
  (221, 22100, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 5),
  -- Piloswine - Icicle Spear - TM187
  (221, 22100, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 6),
  -- Delibird - Haze - TM174
  (225, 22500, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Delibird - Icicle Spear - TM187
  (225, 22500, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 2),
  -- Delibird - Focus Punch - TM192
  (225, 22500, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Delibird - Weather Ball - TM193
  (225, 22500, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 4),
  -- Delibird - Dual Wingbeat - TM197
  (225, 22500, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 5),
  -- Houndour - Roar - TM172
  (228, 22800, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Houndour - Toxic - TM175
  (228, 22800, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Houndour - Spite - TM177
  (228, 22800, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 3),
  -- Houndour - Super Fang - TM183
  (228, 22800, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 4),
  -- Houndour - Burning Jealousy - TM195
  (228, 22800, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 5),
  -- Houndour - Lash Out - TM199
  (228, 22800, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 6),
  -- Houndoom - Roar - TM172
  (229, 22900, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Houndoom - Toxic - TM175
  (229, 22900, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Houndoom - Spite - TM177
  (229, 22900, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 3),
  -- Houndoom - Super Fang - TM183
  (229, 22900, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 4),
  -- Houndoom - Burning Jealousy - TM195
  (229, 22900, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 5),
  -- Houndoom - Lash Out - TM199
  (229, 22900, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 6),
  -- Phanpy - Roar - TM172
  (231, 23100, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Phanpy - Sand Tomb - TM176
  (231, 23100, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 2),
  -- Phanpy - Smack Down - TM179
  (231, 23100, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 3),
  -- Phanpy - Knock Off - TM181
  (231, 23100, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 4),
  -- Phanpy - High Horsepower - TM186
  (231, 23100, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 5),
  -- Donphan - Roar - TM172
  (232, 23200, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Donphan - Sand Tomb - TM176
  (232, 23200, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 2),
  -- Donphan - Smack Down - TM179
  (232, 23200, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 3),
  -- Donphan - Gyro Ball - TM180
  (232, 23200, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 4),
  -- Donphan - Knock Off - TM181
  (232, 23200, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 5),
  -- Donphan - High Horsepower - TM186
  (232, 23200, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 6),
  -- Stantler - Roar - TM172
  (234, 23400, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Stantler - Spite - TM177
  (234, 23400, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Stantler - Gravity - TM178
  (234, 23400, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 3),
  -- Stantler - Lunge - TM185
  (234, 23400, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 4),
  -- Stantler - Uproar - TM191
  (234, 23400, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 5),
  -- Blissey - Gravity - TM178
  (242, 24200, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Blissey - Focus Punch - TM192
  (242, 24200, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 2),
  -- Raikou - Roar - TM172
  (243, 24300, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Raikou - Charge - TM173
  (243, 24300, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 2),
  -- Raikou - Scald - TM188
  (243, 24300, 503, 24, NULL, 2, NULL, NULL, 24002188, NULL, 3),
  -- Raikou - Weather Ball - TM193
  (243, 24300, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 4),
  -- Entei - Roar - TM172
  (244, 24400, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Entei - Weather Ball - TM193
  (244, 24400, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Suicune - Roar - TM172
  (245, 24500, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Suicune - Scald - TM188
  (245, 24500, 503, 24, NULL, 2, NULL, NULL, 24002188, NULL, 2),
  -- Suicune - Weather Ball - TM193
  (245, 24500, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Larvitar - Sand Tomb - TM176
  (246, 24600, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Larvitar - Spite - TM177
  (246, 24600, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Larvitar - Smack Down - TM179
  (246, 24600, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 3),
  -- Pupitar - Sand Tomb - TM176
  (247, 24700, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Pupitar - Spite - TM177
  (247, 24700, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Pupitar - Smack Down - TM179
  (247, 24700, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 3),
  -- Pupitar - High Horsepower - TM186
  (247, 24700, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 4),
  -- Pupitar - Lash Out - TM199
  (247, 24700, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 5),
  -- Tyranitar - Roar - TM172
  (248, 24800, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Tyranitar - Sand Tomb - TM176
  (248, 24800, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 2),
  -- Tyranitar - Spite - TM177
  (248, 24800, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 3),
  -- Tyranitar - Smack Down - TM179
  (248, 24800, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 4),
  -- Tyranitar - Knock Off - TM181
  (248, 24800, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 5),
  -- Tyranitar - High Horsepower - TM186
  (248, 24800, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 6),
  -- Tyranitar - Focus Punch - TM192
  (248, 24800, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 7),
  -- Tyranitar - Lash Out - TM199
  (248, 24800, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 8),
  -- Lugia - Weather Ball - TM193
  (249, 24900, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 1),
  -- Lugia - Dual Wingbeat - TM197
  (249, 24900, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 2),
  -- Lugia - Scale Shot - TM200
  (249, 24900, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 3),
  -- Ho-Oh - Weather Ball - TM193
  (250, 25000, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 1),
  -- Ho-Oh - Dual Wingbeat - TM197
  (250, 25000, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 2);
