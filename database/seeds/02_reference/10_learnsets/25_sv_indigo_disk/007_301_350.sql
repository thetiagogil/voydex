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
-- The Indigo Disk learnset delta rows for species 301-350.
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
  -- Sableye - Pain Split - TM202
  (302, 30200, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Sableye - Psych Up - TM203
  (302, 30200, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Sableye - Skitter Smack - TM219
  (302, 30200, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 3),
  -- Sableye - Throat Chop - TM221
  (302, 30200, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Meditite - Pain Split - TM202
  (307, 30700, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Meditite - Psych Up - TM203
  (307, 30700, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Meditite - Expanding Force - TM218
  (307, 30700, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 3),
  -- Meditite - Upper Hand - TM229
  (307, 30700, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 4),
  -- Medicham - Pain Split - TM202
  (308, 30800, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Medicham - Psych Up - TM203
  (308, 30800, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Medicham - Expanding Force - TM218
  (308, 30800, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 3),
  -- Medicham - Upper Hand - TM229
  (308, 30800, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 4),
  -- Plusle - Charge - TM173
  (311, 31100, 268, 25, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Plusle - Super Fang - TM183
  (311, 31100, 162, 25, NULL, 2, NULL, NULL, 24002183, NULL, 2),
  -- Plusle - Uproar - TM191
  (311, 31100, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Plusle - Endeavor - TM205
  (311, 31100, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 4),
  -- Plusle - Electroweb - TM211
  (311, 31100, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 5),
  -- Plusle - Alluring Voice - TM227
  (311, 31100, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 6),
  -- Minun - Charge - TM173
  (312, 31200, 268, 25, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Minun - Super Fang - TM183
  (312, 31200, 162, 25, NULL, 2, NULL, NULL, 24002183, NULL, 2),
  -- Minun - Uproar - TM191
  (312, 31200, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Minun - Endeavor - TM205
  (312, 31200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 4),
  -- Minun - Electroweb - TM211
  (312, 31200, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 5),
  -- Minun - Alluring Voice - TM227
  (312, 31200, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 6),
  -- Volbeat - Double-Edge - TM204
  (313, 31300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Volbeat - Endeavor - TM205
  (313, 31300, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Volbeat - Skitter Smack - TM219
  (313, 31300, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 3),
  -- Illumise - Psych Up - TM203
  (314, 31400, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Illumise - Double-Edge - TM204
  (314, 31400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Illumise - Endeavor - TM205
  (314, 31400, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Illumise - Skitter Smack - TM219
  (314, 31400, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 4),
  -- Gulpin - Pain Split - TM202
  (316, 31600, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Gulpin - Sludge Wave - TM214
  (316, 31600, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 2),
  -- Gulpin - Curse - TM224
  (316, 31600, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Swalot - Pain Split - TM202
  (317, 31700, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Swalot - Double-Edge - TM204
  (317, 31700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Swalot - Sludge Wave - TM214
  (317, 31700, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 3),
  -- Swalot - Curse - TM224
  (317, 31700, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Numel - Double-Edge - TM204
  (322, 32200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Numel - Endeavor - TM205
  (322, 32200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Numel - Temper Flare - TM207
  (322, 32200, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 3),
  -- Numel - Scorching Sands - TM215
  (322, 32200, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 4),
  -- Numel - Curse - TM224
  (322, 32200, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Camerupt - Double-Edge - TM204
  (323, 32300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Camerupt - Endeavor - TM205
  (323, 32300, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Camerupt - Temper Flare - TM207
  (323, 32300, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 3),
  -- Camerupt - Scorching Sands - TM215
  (323, 32300, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 4),
  -- Camerupt - Curse - TM224
  (323, 32300, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Torkoal - Double-Edge - TM204
  (324, 32400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Torkoal - Temper Flare - TM207
  (324, 32400, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 2),
  -- Torkoal - Scorching Sands - TM215
  (324, 32400, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 3),
  -- Torkoal - Curse - TM224
  (324, 32400, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Spoink - Psych Up - TM203
  (325, 32500, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Spoink - Endeavor - TM205
  (325, 32500, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Spoink - Future Sight - TM217
  (325, 32500, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 3),
  -- Spoink - Expanding Force - TM218
  (325, 32500, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 4),
  -- Grumpig - Psych Up - TM203
  (326, 32600, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Grumpig - Endeavor - TM205
  (326, 32600, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Grumpig - Future Sight - TM217
  (326, 32600, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 3),
  -- Grumpig - Expanding Force - TM218
  (326, 32600, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 4),
  -- Grumpig - Psychic Noise - TM228
  (326, 32600, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 5),
  -- Trapinch - Sand Tomb - TM176
  (328, 32800, 328, 25, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Trapinch - Bug Bite - TM182
  (328, 32800, 450, 25, NULL, 2, NULL, NULL, 24002182, NULL, 2),
  -- Trapinch - Scorching Sands - TM215
  (328, 32800, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 3),
  -- Vibrava - Sand Tomb - TM176
  (329, 32900, 328, 25, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Vibrava - Bug Bite - TM182
  (329, 32900, 450, 25, NULL, 2, NULL, NULL, 24002182, NULL, 2),
  -- Vibrava - Uproar - TM191
  (329, 32900, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Vibrava - Dual Wingbeat - TM197
  (329, 32900, 814, 25, NULL, 2, NULL, NULL, 24002197, NULL, 4),
  -- Vibrava - Scorching Sands - TM215
  (329, 32900, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 5),
  -- Vibrava - Throat Chop - TM221
  (329, 32900, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 6),
  -- Flygon - Sand Tomb - TM176
  (330, 33000, 328, 25, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Flygon - Bug Bite - TM182
  (330, 33000, 450, 25, NULL, 2, NULL, NULL, 24002182, NULL, 2),
  -- Flygon - Vacuum Wave - TM184
  (330, 33000, 410, 25, NULL, 2, NULL, NULL, 24002184, NULL, 3),
  -- Flygon - Uproar - TM191
  (330, 33000, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 4),
  -- Flygon - Dual Wingbeat - TM197
  (330, 33000, 814, 25, NULL, 2, NULL, NULL, 24002197, NULL, 5),
  -- Flygon - Scale Shot - TM200
  (330, 33000, 799, 25, NULL, 2, NULL, NULL, 24002200, NULL, 6),
  -- Flygon - Double-Edge - TM204
  (330, 33000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 7),
  -- Flygon - Scorching Sands - TM215
  (330, 33000, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 8),
  -- Flygon - Throat Chop - TM221
  (330, 33000, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 9),
  -- Flygon - Breaking Swipe - TM222
  (330, 33000, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 10),
  -- Flygon - Dragon Cheer - TM226
  (330, 33000, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 11),
  -- Flygon - Alluring Voice - TM227
  (330, 33000, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 12),
  -- Flygon - Psychic Noise - TM228
  (330, 33000, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 13),
  -- Cacnea - Endeavor - TM205
  (331, 33100, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Cacnea - Skitter Smack - TM219
  (331, 33100, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2),
  -- Cacnea - Throat Chop - TM221
  (331, 33100, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Cacnea - Curse - TM224
  (331, 33100, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Cacturne - Endeavor - TM205
  (332, 33200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Cacturne - Skitter Smack - TM219
  (332, 33200, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2),
  -- Cacturne - Throat Chop - TM221
  (332, 33200, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Cacturne - Curse - TM224
  (332, 33200, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Swablu - Endeavor - TM205
  (333, 33300, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Swablu - Feather Dance - TM216
  (333, 33300, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 2),
  -- Swablu - Dragon Cheer - TM226
  (333, 33300, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 3),
  -- Altaria - Double-Edge - TM204
  (334, 33400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Altaria - Endeavor - TM205
  (334, 33400, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Altaria - Feather Dance - TM216
  (334, 33400, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 3),
  -- Altaria - Breaking Swipe - TM222
  (334, 33400, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 4),
  -- Altaria - Dragon Cheer - TM226
  (334, 33400, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 5),
  -- Altaria - Alluring Voice - TM227
  (334, 33400, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 6),
  -- Zangoose - Double-Edge - TM204
  (335, 33500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Zangoose - Endeavor - TM205
  (335, 33500, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Zangoose - Throat Chop - TM221
  (335, 33500, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Zangoose - Curse - TM224
  (335, 33500, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Zangoose - Upper Hand - TM229
  (335, 33500, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 5),
  -- Seviper - Double-Edge - TM204
  (336, 33600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Seviper - Endeavor - TM205
  (336, 33600, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Seviper - Sludge Wave - TM214
  (336, 33600, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 3),
  -- Seviper - Skitter Smack - TM219
  (336, 33600, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 4),
  -- Seviper - Throat Chop - TM221
  (336, 33600, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 5),
  -- Seviper - Breaking Swipe - TM222
  (336, 33600, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 6),
  -- Seviper - Curse - TM224
  (336, 33600, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 7),
  -- Barboach - Double-Edge - TM204
  (339, 33900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Barboach - Whirlpool - TM208
  (339, 33900, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Barboach - Muddy Water - TM209
  (339, 33900, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 3),
  -- Barboach - Future Sight - TM217
  (339, 33900, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 4),
  -- Whiscash - Double-Edge - TM204
  (340, 34000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Whiscash - Whirlpool - TM208
  (340, 34000, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Whiscash - Muddy Water - TM209
  (340, 34000, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 3),
  -- Whiscash - Future Sight - TM217
  (340, 34000, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 4),
  -- Whiscash - Curse - TM224
  (340, 34000, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Corphish - Double-Edge - TM204
  (341, 34100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Corphish - Endeavor - TM205
  (341, 34100, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Corphish - Whirlpool - TM208
  (341, 34100, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 3),
  -- Corphish - Muddy Water - TM209
  (341, 34100, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 4),
  -- Crawdaunt - Double-Edge - TM204
  (342, 34200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Crawdaunt - Endeavor - TM205
  (342, 34200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Crawdaunt - Whirlpool - TM208
  (342, 34200, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 3),
  -- Crawdaunt - Muddy Water - TM209
  (342, 34200, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 4),
  -- Crawdaunt - Sludge Wave - TM214
  (342, 34200, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 5),
  -- Crawdaunt - Hard Press - TM225
  (342, 34200, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 6),
  -- Feebas - Double-Edge - TM204
  (349, 34900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Feebas - Whirlpool - TM208
  (349, 34900, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Feebas - Muddy Water - TM209
  (349, 34900, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 3),
  -- Milotic - Psych Up - TM203
  (350, 35000, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Milotic - Double-Edge - TM204
  (350, 35000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Milotic - Whirlpool - TM208
  (350, 35000, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 3),
  -- Milotic - Muddy Water - TM209
  (350, 35000, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 4),
  -- Milotic - Triple Axel - TM212
  (350, 35000, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 5),
  -- Milotic - Skitter Smack - TM219
  (350, 35000, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 6),
  -- Milotic - Breaking Swipe - TM222
  (350, 35000, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 7),
  -- Milotic - Dragon Cheer - TM226
  (350, 35000, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 8),
  -- Milotic - Alluring Voice - TM227
  (350, 35000, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 9);
