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
-- The Indigo Disk learnset delta rows for species 151-200.
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
  -- Mew - Pain Split - TM202
  (151, 15100, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Mew - Psych Up - TM203
  (151, 15100, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Mew - Double-Edge - TM204
  (151, 15100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 3),
  -- Mew - Endeavor - TM205
  (151, 15100, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 4),
  -- Mew - Petal Blizzard - TM206
  (151, 15100, 572, 25, NULL, 2, NULL, NULL, 25002206, NULL, 5),
  -- Mew - Temper Flare - TM207
  (151, 15100, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 6),
  -- Mew - Whirlpool - TM208
  (151, 15100, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 7),
  -- Mew - Muddy Water - TM209
  (151, 15100, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 8),
  -- Mew - Supercell Slam - TM210
  (151, 15100, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 9),
  -- Mew - Electroweb - TM211
  (151, 15100, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 10),
  -- Mew - Triple Axel - TM212
  (151, 15100, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 11),
  -- Mew - Coaching - TM213
  (151, 15100, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 12),
  -- Mew - Sludge Wave - TM214
  (151, 15100, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 13),
  -- Mew - Scorching Sands - TM215
  (151, 15100, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 14),
  -- Mew - Feather Dance - TM216
  (151, 15100, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 15),
  -- Mew - Future Sight - TM217
  (151, 15100, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 16),
  -- Mew - Expanding Force - TM218
  (151, 15100, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 17),
  -- Mew - Skitter Smack - TM219
  (151, 15100, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 18),
  -- Mew - Meteor Beam - TM220
  (151, 15100, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 19),
  -- Mew - Throat Chop - TM221
  (151, 15100, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 20),
  -- Mew - Breaking Swipe - TM222
  (151, 15100, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 21),
  -- Mew - Metal Sound - TM223
  (151, 15100, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 22),
  -- Mew - Curse - TM224
  (151, 15100, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 23),
  -- Mew - Hard Press - TM225
  (151, 15100, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 24),
  -- Mew - Dragon Cheer - TM226
  (151, 15100, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 25),
  -- Mew - Alluring Voice - TM227
  (151, 15100, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 26),
  -- Mew - Psychic Noise - TM228
  (151, 15100, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 27),
  -- Mew - Upper Hand - TM229
  (151, 15100, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 28),
  -- Chikorita - Solar Blade - TM190
  (152, 15200, 669, 25, NULL, 2, NULL, NULL, 24002190, NULL, 1),
  -- Chikorita - Grassy Glide - TM194
  (152, 15200, 803, 25, NULL, 2, NULL, NULL, 24002194, NULL, 2),
  -- Chikorita - Double-Edge - TM204
  (152, 15200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 3),
  -- Chikorita - Curse - TM224
  (152, 15200, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Bayleef - Knock Off - TM181
  (153, 15300, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Bayleef - Solar Blade - TM190
  (153, 15300, 669, 25, NULL, 2, NULL, NULL, 24002190, NULL, 2),
  -- Bayleef - Grassy Glide - TM194
  (153, 15300, 803, 25, NULL, 2, NULL, NULL, 24002194, NULL, 3),
  -- Bayleef - Double-Edge - TM204
  (153, 15300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 4),
  -- Bayleef - Curse - TM224
  (153, 15300, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Meganium - Knock Off - TM181
  (154, 15400, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Meganium - Solar Blade - TM190
  (154, 15400, 669, 25, NULL, 2, NULL, NULL, 24002190, NULL, 2),
  -- Meganium - Weather Ball - TM193
  (154, 15400, 311, 25, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Meganium - Grassy Glide - TM194
  (154, 15400, 803, 25, NULL, 2, NULL, NULL, 24002194, NULL, 4),
  -- Meganium - Double-Edge - TM204
  (154, 15400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 5),
  -- Meganium - Endeavor - TM205
  (154, 15400, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 6),
  -- Meganium - Petal Blizzard - TM206
  (154, 15400, 572, 25, NULL, 2, NULL, NULL, 25002206, NULL, 7),
  -- Meganium - Curse - TM224
  (154, 15400, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 8),
  -- Cyndaquil - Double-Edge - TM204
  (155, 15500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Cyndaquil - Temper Flare - TM207
  (155, 15500, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 2),
  -- Cyndaquil - Curse - TM224
  (155, 15500, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Quilava - Double-Edge - TM204
  (156, 15600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Quilava - Endeavor - TM205
  (156, 15600, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Quilava - Temper Flare - TM207
  (156, 15600, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 3),
  -- Quilava - Curse - TM224
  (156, 15600, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Typhlosion - Double-Edge - TM204
  (157, 15700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Typhlosion - Endeavor - TM205
  (157, 15700, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Typhlosion - Temper Flare - TM207
  (157, 15700, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 3),
  -- Typhlosion - Scorching Sands - TM215
  (157, 15700, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 4),
  -- Typhlosion - Throat Chop - TM221
  (157, 15700, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 5),
  -- Typhlosion - Curse - TM224
  (157, 15700, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 6),
  -- Typhlosion (Hisuian Typhlosion) - Double-Edge - TM204
  (157, 15701, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Typhlosion (Hisuian Typhlosion) - Endeavor - TM205
  (157, 15701, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Typhlosion (Hisuian Typhlosion) - Temper Flare - TM207
  (157, 15701, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 3),
  -- Typhlosion (Hisuian Typhlosion) - Curse - TM224
  (157, 15701, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Totodile - Spite - TM177
  (158, 15800, 180, 25, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Totodile - Uproar - TM191
  (158, 15800, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 2),
  -- Totodile - Focus Punch - TM192
  (158, 15800, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Totodile - Flip Turn - TM196
  (158, 15800, 812, 25, NULL, 2, NULL, NULL, 24002196, NULL, 4),
  -- Totodile - Double-Edge - TM204
  (158, 15800, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 5),
  -- Totodile - Endeavor - TM205
  (158, 15800, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 6),
  -- Totodile - Whirlpool - TM208
  (158, 15800, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 7),
  -- Totodile - Muddy Water - TM209
  (158, 15800, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 8),
  -- Totodile - Breaking Swipe - TM222
  (158, 15800, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 9),
  -- Totodile - Curse - TM224
  (158, 15800, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 10),
  -- Croconaw - Roar - TM172
  (159, 15900, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Croconaw - Spite - TM177
  (159, 15900, 180, 25, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Croconaw - Uproar - TM191
  (159, 15900, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Croconaw - Focus Punch - TM192
  (159, 15900, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Croconaw - Flip Turn - TM196
  (159, 15900, 812, 25, NULL, 2, NULL, NULL, 24002196, NULL, 5),
  -- Croconaw - Double-Edge - TM204
  (159, 15900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 6),
  -- Croconaw - Endeavor - TM205
  (159, 15900, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 7),
  -- Croconaw - Whirlpool - TM208
  (159, 15900, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 8),
  -- Croconaw - Muddy Water - TM209
  (159, 15900, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 9),
  -- Croconaw - Breaking Swipe - TM222
  (159, 15900, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 10),
  -- Croconaw - Curse - TM224
  (159, 15900, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 11),
  -- Feraligatr - Roar - TM172
  (160, 16000, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Feraligatr - Spite - TM177
  (160, 16000, 180, 25, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Feraligatr - Uproar - TM191
  (160, 16000, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Feraligatr - Focus Punch - TM192
  (160, 16000, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Feraligatr - Flip Turn - TM196
  (160, 16000, 812, 25, NULL, 2, NULL, NULL, 24002196, NULL, 5),
  -- Feraligatr - Lash Out - TM199
  (160, 16000, 808, 25, NULL, 2, NULL, NULL, 24002199, NULL, 6),
  -- Feraligatr - Scale Shot - TM200
  (160, 16000, 799, 25, NULL, 2, NULL, NULL, 24002200, NULL, 7),
  -- Feraligatr - Double-Edge - TM204
  (160, 16000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 8),
  -- Feraligatr - Endeavor - TM205
  (160, 16000, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 9),
  -- Feraligatr - Whirlpool - TM208
  (160, 16000, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 10),
  -- Feraligatr - Muddy Water - TM209
  (160, 16000, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 11),
  -- Feraligatr - Breaking Swipe - TM222
  (160, 16000, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 12),
  -- Feraligatr - Curse - TM224
  (160, 16000, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 13),
  -- Sentret - Double-Edge - TM204
  (161, 16100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Sentret - Endeavor - TM205
  (161, 16100, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Furret - Double-Edge - TM204
  (162, 16200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Furret - Endeavor - TM205
  (162, 16200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Hoothoot - Psych Up - TM203
  (163, 16300, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Hoothoot - Feather Dance - TM216
  (163, 16300, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 2),
  -- Noctowl - Psych Up - TM203
  (164, 16400, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Noctowl - Double-Edge - TM204
  (164, 16400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Noctowl - Feather Dance - TM216
  (164, 16400, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 3),
  -- Noctowl - Future Sight - TM217
  (164, 16400, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 4),
  -- Noctowl - Curse - TM224
  (164, 16400, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Noctowl - Psychic Noise - TM228
  (164, 16400, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 6),
  -- Spinarak - Electroweb - TM211
  (167, 16700, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 1),
  -- Spinarak - Sludge Wave - TM214
  (167, 16700, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 2),
  -- Spinarak - Skitter Smack - TM219
  (167, 16700, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 3),
  -- Ariados - Electroweb - TM211
  (168, 16800, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 1),
  -- Ariados - Sludge Wave - TM214
  (168, 16800, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 2),
  -- Ariados - Skitter Smack - TM219
  (168, 16800, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 3),
  -- Ariados - Throat Chop - TM221
  (168, 16800, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Chinchou - Charge - TM173
  (170, 17000, 268, 25, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Chinchou - Scald - TM188
  (170, 17000, 503, 25, NULL, 2, NULL, NULL, 24002188, NULL, 2),
  -- Chinchou - Flip Turn - TM196
  (170, 17000, 812, 25, NULL, 2, NULL, NULL, 24002196, NULL, 3),
  -- Chinchou - Double-Edge - TM204
  (170, 17000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 4),
  -- Chinchou - Whirlpool - TM208
  (170, 17000, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 5),
  -- Chinchou - Muddy Water - TM209
  (170, 17000, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 6),
  -- Chinchou - Electroweb - TM211
  (170, 17000, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 7),
  -- Chinchou - Curse - TM224
  (170, 17000, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 8),
  -- Lanturn - Charge - TM173
  (171, 17100, 268, 25, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Lanturn - Scald - TM188
  (171, 17100, 503, 25, NULL, 2, NULL, NULL, 24002188, NULL, 2),
  -- Lanturn - Flip Turn - TM196
  (171, 17100, 812, 25, NULL, 2, NULL, NULL, 24002196, NULL, 3),
  -- Lanturn - Double-Edge - TM204
  (171, 17100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 4),
  -- Lanturn - Whirlpool - TM208
  (171, 17100, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 5),
  -- Lanturn - Muddy Water - TM209
  (171, 17100, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 6),
  -- Lanturn - Electroweb - TM211
  (171, 17100, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 7),
  -- Lanturn - Curse - TM224
  (171, 17100, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 8),
  -- Pichu - Electroweb - TM211
  (172, 17200, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 1),
  -- Cleffa - Endeavor - TM205
  (173, 17300, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Cleffa - Alluring Voice - TM227
  (173, 17300, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 2),
  -- Igglybuff - Pain Split - TM202
  (174, 17400, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Igglybuff - Psych Up - TM203
  (174, 17400, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Igglybuff - Double-Edge - TM204
  (174, 17400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 3),
  -- Igglybuff - Endeavor - TM205
  (174, 17400, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 4),
  -- Igglybuff - Alluring Voice - TM227
  (174, 17400, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 5),
  -- Mareep - Double-Edge - TM204
  (179, 17900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Mareep - Endeavor - TM205
  (179, 17900, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Mareep - Electroweb - TM211
  (179, 17900, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 3),
  -- Flaaffy - Double-Edge - TM204
  (180, 18000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Flaaffy - Endeavor - TM205
  (180, 18000, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Flaaffy - Electroweb - TM211
  (180, 18000, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 3),
  -- Ampharos - Double-Edge - TM204
  (181, 18100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Ampharos - Endeavor - TM205
  (181, 18100, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Ampharos - Supercell Slam - TM210
  (181, 18100, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 3),
  -- Ampharos - Electroweb - TM211
  (181, 18100, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 4),
  -- Ampharos - Meteor Beam - TM220
  (181, 18100, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 5),
  -- Ampharos - Breaking Swipe - TM222
  (181, 18100, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 6),
  -- Ampharos - Dragon Cheer - TM226
  (181, 18100, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 7),
  -- Bellossom - Toxic - TM175
  (182, 18200, 92, 25, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Bellossom - Solar Blade - TM190
  (182, 18200, 669, 25, NULL, 2, NULL, NULL, 24002190, NULL, 2),
  -- Bellossom - Uproar - TM191
  (182, 18200, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Bellossom - Weather Ball - TM193
  (182, 18200, 311, 25, NULL, 2, NULL, NULL, 24002193, NULL, 4),
  -- Bellossom - Grassy Glide - TM194
  (182, 18200, 803, 25, NULL, 2, NULL, NULL, 24002194, NULL, 5),
  -- Bellossom - Endeavor - TM205
  (182, 18200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 6),
  -- Bellossom - Petal Blizzard - TM206
  (182, 18200, 572, 25, NULL, 2, NULL, NULL, 25002206, NULL, 7),
  -- Bellossom - Triple Axel - TM212
  (182, 18200, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 8),
  -- Marill - Double-Edge - TM204
  (183, 18300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Marill - Whirlpool - TM208
  (183, 18300, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Marill - Muddy Water - TM209
  (183, 18300, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 3),
  -- Marill - Alluring Voice - TM227
  (183, 18300, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 4),
  -- Azumarill - Double-Edge - TM204
  (184, 18400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Azumarill - Whirlpool - TM208
  (184, 18400, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Azumarill - Muddy Water - TM209
  (184, 18400, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 3),
  -- Azumarill - Alluring Voice - TM227
  (184, 18400, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 4),
  -- Sudowoodo - Psych Up - TM203
  (185, 18500, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Sudowoodo - Double-Edge - TM204
  (185, 18500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Sudowoodo - Endeavor - TM205
  (185, 18500, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Sudowoodo - Meteor Beam - TM220
  (185, 18500, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 4),
  -- Sudowoodo - Curse - TM224
  (185, 18500, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Politoed - Psych Up - TM203
  (186, 18600, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Politoed - Double-Edge - TM204
  (186, 18600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Politoed - Endeavor - TM205
  (186, 18600, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Politoed - Whirlpool - TM208
  (186, 18600, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 4),
  -- Politoed - Muddy Water - TM209
  (186, 18600, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 5),
  -- Hoppip - Double-Edge - TM204
  (187, 18700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Skiploom - Double-Edge - TM204
  (188, 18800, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Skiploom - Endeavor - TM205
  (188, 18800, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Jumpluff - Double-Edge - TM204
  (189, 18900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Jumpluff - Endeavor - TM205
  (189, 18900, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Aipom - Double-Edge - TM204
  (190, 19000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Aipom - Endeavor - TM205
  (190, 19000, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Aipom - Throat Chop - TM221
  (190, 19000, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Aipom - Upper Hand - TM229
  (190, 19000, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 4),
  -- Sunkern - Double-Edge - TM204
  (191, 19100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Sunkern - Endeavor - TM205
  (191, 19100, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Sunkern - Curse - TM224
  (191, 19100, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Sunflora - Double-Edge - TM204
  (192, 19200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Sunflora - Endeavor - TM205
  (192, 19200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Sunflora - Petal Blizzard - TM206
  (192, 19200, 572, 25, NULL, 2, NULL, NULL, 25002206, NULL, 3),
  -- Sunflora - Curse - TM224
  (192, 19200, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Yanma - Psych Up - TM203
  (193, 19300, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Yanma - Double-Edge - TM204
  (193, 19300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Yanma - Skitter Smack - TM219
  (193, 19300, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 3),
  -- Yanma - Psychic Noise - TM228
  (193, 19300, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 4),
  -- Wooper - Double-Edge - TM204
  (194, 19400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Wooper - Whirlpool - TM208
  (194, 19400, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Wooper - Muddy Water - TM209
  (194, 19400, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 3),
  -- Wooper - Sludge Wave - TM214
  (194, 19400, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 4),
  -- Wooper - Curse - TM224
  (194, 19400, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Wooper (Paldean Wooper) - Double-Edge - TM204
  (194, 19401, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Wooper (Paldean Wooper) - Sludge Wave - TM214
  (194, 19401, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 2),
  -- Wooper (Paldean Wooper) - Curse - TM224
  (194, 19401, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Quagsire - Double-Edge - TM204
  (195, 19500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Quagsire - Whirlpool - TM208
  (195, 19500, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Quagsire - Muddy Water - TM209
  (195, 19500, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 3),
  -- Quagsire - Sludge Wave - TM214
  (195, 19500, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 4),
  -- Quagsire - Curse - TM224
  (195, 19500, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Espeon - Psych Up - TM203
  (196, 19600, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Espeon - Double-Edge - TM204
  (196, 19600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Espeon - Future Sight - TM217
  (196, 19600, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 3),
  -- Espeon - Expanding Force - TM218
  (196, 19600, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 4),
  -- Espeon - Curse - TM224
  (196, 19600, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Espeon - Alluring Voice - TM227
  (196, 19600, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 6),
  -- Espeon - Psychic Noise - TM228
  (196, 19600, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 7),
  -- Umbreon - Psych Up - TM203
  (197, 19700, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Umbreon - Double-Edge - TM204
  (197, 19700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Umbreon - Throat Chop - TM221
  (197, 19700, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Umbreon - Curse - TM224
  (197, 19700, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Umbreon - Alluring Voice - TM227
  (197, 19700, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 5),
  -- Murkrow - Double-Edge - TM204
  (198, 19800, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Murkrow - Feather Dance - TM216
  (198, 19800, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 2),
  -- Murkrow - Psychic Noise - TM228
  (198, 19800, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 3),
  -- Slowking - Psych Up - TM203
  (199, 19900, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Slowking - Whirlpool - TM208
  (199, 19900, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Slowking - Muddy Water - TM209
  (199, 19900, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 3),
  -- Slowking - Future Sight - TM217
  (199, 19900, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 4),
  -- Slowking - Expanding Force - TM218
  (199, 19900, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 5),
  -- Slowking - Curse - TM224
  (199, 19900, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 6),
  -- Slowking - Psychic Noise - TM228
  (199, 19900, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 7),
  -- Slowking (Galarian Slowking) - Psych Up - TM203
  (199, 19901, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Slowking (Galarian Slowking) - Whirlpool - TM208
  (199, 19901, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Slowking (Galarian Slowking) - Muddy Water - TM209
  (199, 19901, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 3),
  -- Slowking (Galarian Slowking) - Sludge Wave - TM214
  (199, 19901, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 4),
  -- Slowking (Galarian Slowking) - Future Sight - TM217
  (199, 19901, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 5),
  -- Slowking (Galarian Slowking) - Expanding Force - TM218
  (199, 19901, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 6),
  -- Slowking (Galarian Slowking) - Curse - TM224
  (199, 19901, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 7),
  -- Slowking (Galarian Slowking) - Psychic Noise - TM228
  (199, 19901, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 8),
  -- Misdreavus - Pain Split - TM202
  (200, 20000, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Misdreavus - Psych Up - TM203
  (200, 20000, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Misdreavus - Future Sight - TM217
  (200, 20000, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 3),
  -- Misdreavus - Curse - TM224
  (200, 20000, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Misdreavus - Psychic Noise - TM228
  (200, 20000, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 5);
