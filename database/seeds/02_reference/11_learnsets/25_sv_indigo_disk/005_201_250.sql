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
-- The Indigo Disk learnset delta rows for species 201-250.
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
  -- Girafarig - Psych Up - TM203
  (203, 20300, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Girafarig - Double-Edge - TM204
  (203, 20300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Girafarig - Endeavor - TM205
  (203, 20300, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Girafarig - Future Sight - TM217
  (203, 20300, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 4),
  -- Girafarig - Expanding Force - TM218
  (203, 20300, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 5),
  -- Girafarig - Psychic Noise - TM228
  (203, 20300, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 6),
  -- Pineco - Pain Split - TM202
  (204, 20400, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Pineco - Double-Edge - TM204
  (204, 20400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Pineco - Curse - TM224
  (204, 20400, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Forretress - Pain Split - TM202
  (205, 20500, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Forretress - Double-Edge - TM204
  (205, 20500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Forretress - Metal Sound - TM223
  (205, 20500, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 3),
  -- Forretress - Curse - TM224
  (205, 20500, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Forretress - Hard Press - TM225
  (205, 20500, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 5),
  -- Dunsparce - Pain Split - TM202
  (206, 20600, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Dunsparce - Psych Up - TM203
  (206, 20600, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Dunsparce - Double-Edge - TM204
  (206, 20600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 3),
  -- Dunsparce - Endeavor - TM205
  (206, 20600, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 4),
  -- Dunsparce - Skitter Smack - TM219
  (206, 20600, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 5),
  -- Dunsparce - Breaking Swipe - TM222
  (206, 20600, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 6),
  -- Dunsparce - Curse - TM224
  (206, 20600, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 7),
  -- Gligar - Double-Edge - TM204
  (207, 20700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Gligar - Skitter Smack - TM219
  (207, 20700, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2),
  -- Gligar - Throat Chop - TM221
  (207, 20700, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Gligar - Breaking Swipe - TM222
  (207, 20700, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 4),
  -- Snubbull - Roar - TM172
  (209, 20900, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Snubbull - Spite - TM177
  (209, 20900, 180, 25, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Snubbull - Super Fang - TM183
  (209, 20900, 162, 25, NULL, 2, NULL, NULL, 24002183, NULL, 3),
  -- Snubbull - Uproar - TM191
  (209, 20900, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 4),
  -- Snubbull - Focus Punch - TM192
  (209, 20900, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 5),
  -- Snubbull - Lash Out - TM199
  (209, 20900, 808, 25, NULL, 2, NULL, NULL, 24002199, NULL, 6),
  -- Snubbull - Double-Edge - TM204
  (209, 20900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 7),
  -- Snubbull - Endeavor - TM205
  (209, 20900, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 8),
  -- Snubbull - Temper Flare - TM207
  (209, 20900, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 9),
  -- Snubbull - Curse - TM224
  (209, 20900, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 10),
  -- Granbull - Roar - TM172
  (210, 21000, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Granbull - Spite - TM177
  (210, 21000, 180, 25, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Granbull - Super Fang - TM183
  (210, 21000, 162, 25, NULL, 2, NULL, NULL, 24002183, NULL, 3),
  -- Granbull - Uproar - TM191
  (210, 21000, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 4),
  -- Granbull - Focus Punch - TM192
  (210, 21000, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 5),
  -- Granbull - Lash Out - TM199
  (210, 21000, 808, 25, NULL, 2, NULL, NULL, 24002199, NULL, 6),
  -- Granbull - Double-Edge - TM204
  (210, 21000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 7),
  -- Granbull - Endeavor - TM205
  (210, 21000, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 8),
  -- Granbull - Temper Flare - TM207
  (210, 21000, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 9),
  -- Granbull - Curse - TM224
  (210, 21000, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 10),
  -- Qwilfish - Pain Split - TM202
  (211, 21100, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Qwilfish - Double-Edge - TM204
  (211, 21100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Qwilfish - Whirlpool - TM208
  (211, 21100, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 3),
  -- Qwilfish - Sludge Wave - TM214
  (211, 21100, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 4),
  -- Qwilfish - Throat Chop - TM221
  (211, 21100, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 5),
  -- Qwilfish - Curse - TM224
  (211, 21100, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 6),
  -- Qwilfish (Hisuian Qwilfish) - Pain Split - TM202
  (211, 21101, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Qwilfish (Hisuian Qwilfish) - Double-Edge - TM204
  (211, 21101, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Qwilfish (Hisuian Qwilfish) - Throat Chop - TM221
  (211, 21101, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Qwilfish (Hisuian Qwilfish) - Curse - TM224
  (211, 21101, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Scizor - Double-Edge - TM204
  (212, 21200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Scizor - Skitter Smack - TM219
  (212, 21200, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2),
  -- Scizor - Curse - TM224
  (212, 21200, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Scizor - Hard Press - TM225
  (212, 21200, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 4),
  -- Heracross - Double-Edge - TM204
  (214, 21400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Heracross - Endeavor - TM205
  (214, 21400, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Heracross - Coaching - TM213
  (214, 21400, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 3),
  -- Heracross - Skitter Smack - TM219
  (214, 21400, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 4),
  -- Heracross - Throat Chop - TM221
  (214, 21400, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 5),
  -- Heracross - Curse - TM224
  (214, 21400, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 6),
  -- Heracross - Upper Hand - TM229
  (214, 21400, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 7),
  -- Sneasel - Triple Axel - TM212
  (215, 21500, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 1),
  -- Sneasel - Throat Chop - TM221
  (215, 21500, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 2),
  -- Sneasel - Upper Hand - TM229
  (215, 21500, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 3),
  -- Sneasel (Hisuian Sneasel) - Coaching - TM213
  (215, 21501, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 1),
  -- Sneasel (Hisuian Sneasel) - Sludge Wave - TM214
  (215, 21501, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 2),
  -- Sneasel (Hisuian Sneasel) - Throat Chop - TM221
  (215, 21501, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Teddiursa - Double-Edge - TM204
  (216, 21600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Ursaring - Double-Edge - TM204
  (217, 21700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Ursaring - Throat Chop - TM221
  (217, 21700, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 2),
  -- Slugma - Pain Split - TM202
  (218, 21800, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Slugma - Temper Flare - TM207
  (218, 21800, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 2),
  -- Slugma - Curse - TM224
  (218, 21800, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Magcargo - Pain Split - TM202
  (219, 21900, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Magcargo - Temper Flare - TM207
  (219, 21900, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 2),
  -- Magcargo - Scorching Sands - TM215
  (219, 21900, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 3),
  -- Magcargo - Curse - TM224
  (219, 21900, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Swinub - Double-Edge - TM204
  (220, 22000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Swinub - Endeavor - TM205
  (220, 22000, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Swinub - Curse - TM224
  (220, 22000, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Piloswine - Double-Edge - TM204
  (221, 22100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Piloswine - Endeavor - TM205
  (221, 22100, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Piloswine - Throat Chop - TM221
  (221, 22100, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Piloswine - Curse - TM224
  (221, 22100, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Delibird - Endeavor - TM205
  (225, 22500, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Delibird - Triple Axel - TM212
  (225, 22500, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 2),
  -- Delibird - Feather Dance - TM216
  (225, 22500, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 3),
  -- Skarmory - Roar - TM172
  (227, 22700, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Skarmory - Sand Tomb - TM176
  (227, 22700, 328, 25, NULL, 2, NULL, NULL, 24002176, NULL, 2),
  -- Skarmory - Dual Wingbeat - TM197
  (227, 22700, 814, 25, NULL, 2, NULL, NULL, 24002197, NULL, 3),
  -- Skarmory - Metal Sound - TM223
  (227, 22700, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 4),
  -- Skarmory - Curse - TM224
  (227, 22700, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Houndour - Pain Split - TM202
  (228, 22800, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Houndour - Double-Edge - TM204
  (228, 22800, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Houndour - Temper Flare - TM207
  (228, 22800, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 3),
  -- Houndoom - Pain Split - TM202
  (229, 22900, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Houndoom - Double-Edge - TM204
  (229, 22900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Houndoom - Endeavor - TM205
  (229, 22900, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Houndoom - Temper Flare - TM207
  (229, 22900, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 4),
  -- Houndoom - Throat Chop - TM221
  (229, 22900, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 5),
  -- Kingdra - Scald - TM188
  (230, 23000, 503, 25, NULL, 2, NULL, NULL, 24002188, NULL, 1),
  -- Kingdra - Weather Ball - TM193
  (230, 23000, 311, 25, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Kingdra - Flip Turn - TM196
  (230, 23000, 812, 25, NULL, 2, NULL, NULL, 24002196, NULL, 3),
  -- Kingdra - Scale Shot - TM200
  (230, 23000, 799, 25, NULL, 2, NULL, NULL, 24002200, NULL, 4),
  -- Kingdra - Double-Edge - TM204
  (230, 23000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 5),
  -- Kingdra - Whirlpool - TM208
  (230, 23000, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 6),
  -- Kingdra - Muddy Water - TM209
  (230, 23000, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 7),
  -- Kingdra - Breaking Swipe - TM222
  (230, 23000, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 8),
  -- Phanpy - Double-Edge - TM204
  (231, 23100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Phanpy - Endeavor - TM205
  (231, 23100, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Phanpy - Curse - TM224
  (231, 23100, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Donphan - Double-Edge - TM204
  (232, 23200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Donphan - Endeavor - TM205
  (232, 23200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Donphan - Throat Chop - TM221
  (232, 23200, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Donphan - Curse - TM224
  (232, 23200, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Porygon2 - Charge - TM173
  (233, 23300, 268, 25, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Porygon2 - Gravity - TM178
  (233, 23300, 356, 25, NULL, 2, NULL, NULL, 24002178, NULL, 2),
  -- Porygon2 - Double-Edge - TM204
  (233, 23300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 3),
  -- Porygon2 - Electroweb - TM211
  (233, 23300, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 4),
  -- Stantler - Psych Up - TM203
  (234, 23400, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Stantler - Double-Edge - TM204
  (234, 23400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Stantler - Future Sight - TM217
  (234, 23400, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 3),
  -- Stantler - Throat Chop - TM221
  (234, 23400, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Stantler - Curse - TM224
  (234, 23400, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Tyrogue - Vacuum Wave - TM184
  (236, 23600, 410, 25, NULL, 2, NULL, NULL, 24002184, NULL, 1),
  -- Tyrogue - Uproar - TM191
  (236, 23600, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 2),
  -- Tyrogue - Upper Hand - TM229
  (236, 23600, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 3),
  -- Hitmontop - Gyro Ball - TM180
  (237, 23700, 360, 25, NULL, 2, NULL, NULL, 24002180, NULL, 1),
  -- Hitmontop - Vacuum Wave - TM184
  (237, 23700, 410, 25, NULL, 2, NULL, NULL, 24002184, NULL, 2),
  -- Hitmontop - Uproar - TM191
  (237, 23700, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Hitmontop - Double-Edge - TM204
  (237, 23700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 4),
  -- Hitmontop - Endeavor - TM205
  (237, 23700, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 5),
  -- Hitmontop - Triple Axel - TM212
  (237, 23700, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 6),
  -- Hitmontop - Coaching - TM213
  (237, 23700, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 7),
  -- Hitmontop - Upper Hand - TM229
  (237, 23700, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 8),
  -- Elekid - Charge - TM173
  (239, 23900, 268, 25, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Elekid - Knock Off - TM181
  (239, 23900, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Elekid - Uproar - TM191
  (239, 23900, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Elekid - Focus Punch - TM192
  (239, 23900, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Elekid - Double-Edge - TM204
  (239, 23900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 5),
  -- Elekid - Supercell Slam - TM210
  (239, 23900, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 6),
  -- Elekid - Electroweb - TM211
  (239, 23900, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 7),
  -- Elekid - Metal Sound - TM223
  (239, 23900, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 8),
  -- Magby - Focus Punch - TM192
  (240, 24000, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 1),
  -- Magby - Burning Jealousy - TM195
  (240, 24000, 807, 25, NULL, 2, NULL, NULL, 24002195, NULL, 2),
  -- Magby - Double-Edge - TM204
  (240, 24000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 3),
  -- Magby - Temper Flare - TM207
  (240, 24000, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 4),
  -- Magby - Curse - TM224
  (240, 24000, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Blissey - Psych Up - TM203
  (242, 24200, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Blissey - Double-Edge - TM204
  (242, 24200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Blissey - Endeavor - TM205
  (242, 24200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Blissey - Alluring Voice - TM227
  (242, 24200, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 4),
  -- Raikou - Double-Edge - TM204
  (243, 24300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Raikou - Supercell Slam - TM210
  (243, 24300, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 2),
  -- Raikou - Electroweb - TM211
  (243, 24300, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 3),
  -- Raikou - Throat Chop - TM221
  (243, 24300, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Entei - Double-Edge - TM204
  (244, 24400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Entei - Scorching Sands - TM215
  (244, 24400, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 2),
  -- Suicune - Double-Edge - TM204
  (245, 24500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Suicune - Whirlpool - TM208
  (245, 24500, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Larvitar - Double-Edge - TM204
  (246, 24600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Larvitar - Curse - TM224
  (246, 24600, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 2),
  -- Pupitar - Double-Edge - TM204
  (247, 24700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Pupitar - Curse - TM224
  (247, 24700, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 2),
  -- Tyranitar - Double-Edge - TM204
  (248, 24800, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Tyranitar - Muddy Water - TM209
  (248, 24800, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 2),
  -- Tyranitar - Breaking Swipe - TM222
  (248, 24800, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 3),
  -- Tyranitar - Curse - TM224
  (248, 24800, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Tyranitar - Hard Press - TM225
  (248, 24800, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 5),
  -- Lugia - Psych Up - TM203
  (249, 24900, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Lugia - Double-Edge - TM204
  (249, 24900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Lugia - Whirlpool - TM208
  (249, 24900, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 3),
  -- Lugia - Future Sight - TM217
  (249, 24900, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 4),
  -- Lugia - Curse - TM224
  (249, 24900, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Lugia - Psychic Noise - TM228
  (249, 24900, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 6),
  -- Ho-Oh - Psych Up - TM203
  (250, 25000, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Ho-Oh - Double-Edge - TM204
  (250, 25000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Ho-Oh - Scorching Sands - TM215
  (250, 25000, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 3),
  -- Ho-Oh - Future Sight - TM217
  (250, 25000, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 4);
