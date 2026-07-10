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
-- The Indigo Disk learnset delta rows for species 101-150.
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
  -- Electrode - Double-Edge - TM204
  (101, 10100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Electrode - Supercell Slam - TM210
  (101, 10100, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 2),
  -- Electrode - Electroweb - TM211
  (101, 10100, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 3),
  -- Electrode - Metal Sound - TM223
  (101, 10100, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 4),
  -- Electrode - Curse - TM224
  (101, 10100, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Electrode (Hisuian Electrode) - Double-Edge - TM204
  (101, 10101, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Electrode (Hisuian Electrode) - Supercell Slam - TM210
  (101, 10101, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 2),
  -- Electrode (Hisuian Electrode) - Electroweb - TM211
  (101, 10101, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 3),
  -- Electrode (Hisuian Electrode) - Curse - TM224
  (101, 10101, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Exeggcute - Uproar - TM191
  (102, 10200, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 1),
  -- Exeggcute - Grassy Glide - TM194
  (102, 10200, 803, 25, NULL, 2, NULL, NULL, 24002194, NULL, 2),
  -- Exeggcute - Psych Up - TM203
  (102, 10200, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 3),
  -- Exeggcute - Curse - TM224
  (102, 10200, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Exeggcute - Psychic Noise - TM228
  (102, 10200, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 5),
  -- Exeggutor - Gravity - TM178
  (103, 10300, 356, 25, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Exeggutor - Uproar - TM191
  (103, 10300, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 2),
  -- Exeggutor - Grassy Glide - TM194
  (103, 10300, 803, 25, NULL, 2, NULL, NULL, 24002194, NULL, 3),
  -- Exeggutor - Psych Up - TM203
  (103, 10300, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 4),
  -- Exeggutor - Double-Edge - TM204
  (103, 10300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 5),
  -- Exeggutor - Future Sight - TM217
  (103, 10300, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 6),
  -- Exeggutor - Expanding Force - TM218
  (103, 10300, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 7),
  -- Exeggutor - Curse - TM224
  (103, 10300, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 8),
  -- Exeggutor - Psychic Noise - TM228
  (103, 10300, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 9),
  -- Exeggutor (Alolan Exeggutor) - Gravity - TM178
  (103, 10301, 356, 25, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Exeggutor (Alolan Exeggutor) - Knock Off - TM181
  (103, 10301, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Exeggutor (Alolan Exeggutor) - Uproar - TM191
  (103, 10301, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Exeggutor (Alolan Exeggutor) - Grassy Glide - TM194
  (103, 10301, 803, 25, NULL, 2, NULL, NULL, 24002194, NULL, 4),
  -- Exeggutor (Alolan Exeggutor) - Psych Up - TM203
  (103, 10301, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 5),
  -- Exeggutor (Alolan Exeggutor) - Double-Edge - TM204
  (103, 10301, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 6),
  -- Exeggutor (Alolan Exeggutor) - Breaking Swipe - TM222
  (103, 10301, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 7),
  -- Exeggutor (Alolan Exeggutor) - Curse - TM224
  (103, 10301, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 8),
  -- Exeggutor (Alolan Exeggutor) - Dragon Cheer - TM226
  (103, 10301, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 9),
  -- Exeggutor (Alolan Exeggutor) - Psychic Noise - TM228
  (103, 10301, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 10),
  -- Hitmonlee - Knock Off - TM181
  (106, 10600, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Hitmonlee - Vacuum Wave - TM184
  (106, 10600, 410, 25, NULL, 2, NULL, NULL, 24002184, NULL, 2),
  -- Hitmonlee - Lunge - TM185
  (106, 10600, 679, 25, NULL, 2, NULL, NULL, 24002185, NULL, 3),
  -- Hitmonlee - Uproar - TM191
  (106, 10600, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 4),
  -- Hitmonlee - Double-Edge - TM204
  (106, 10600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 5),
  -- Hitmonlee - Endeavor - TM205
  (106, 10600, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 6),
  -- Hitmonlee - Coaching - TM213
  (106, 10600, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 7),
  -- Hitmonlee - Throat Chop - TM221
  (106, 10600, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 8),
  -- Hitmonlee - Upper Hand - TM229
  (106, 10600, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 9),
  -- Hitmonchan - Knock Off - TM181
  (107, 10700, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Hitmonchan - Vacuum Wave - TM184
  (107, 10700, 410, 25, NULL, 2, NULL, NULL, 24002184, NULL, 2),
  -- Hitmonchan - Uproar - TM191
  (107, 10700, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Hitmonchan - Focus Punch - TM192
  (107, 10700, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Hitmonchan - Double-Edge - TM204
  (107, 10700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 5),
  -- Hitmonchan - Endeavor - TM205
  (107, 10700, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 6),
  -- Hitmonchan - Coaching - TM213
  (107, 10700, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 7),
  -- Hitmonchan - Throat Chop - TM221
  (107, 10700, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 8),
  -- Hitmonchan - Upper Hand - TM229
  (107, 10700, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 9),
  -- Koffing - Pain Split - TM202
  (109, 10900, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Koffing - Sludge Wave - TM214
  (109, 10900, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 2),
  -- Koffing - Curse - TM224
  (109, 10900, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Weezing - Pain Split - TM202
  (110, 11000, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Weezing - Sludge Wave - TM214
  (110, 11000, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 2),
  -- Weezing - Curse - TM224
  (110, 11000, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Weezing (Galarian Weezing) - Pain Split - TM202
  (110, 11001, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Weezing (Galarian Weezing) - Double-Edge - TM204
  (110, 11001, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Weezing (Galarian Weezing) - Sludge Wave - TM214
  (110, 11001, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 3),
  -- Weezing (Galarian Weezing) - Curse - TM224
  (110, 11001, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Rhyhorn - Roar - TM172
  (111, 11100, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Rhyhorn - Smack Down - TM179
  (111, 11100, 479, 25, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Rhyhorn - High Horsepower - TM186
  (111, 11100, 667, 25, NULL, 2, NULL, NULL, 24002186, NULL, 3),
  -- Rhyhorn - Uproar - TM191
  (111, 11100, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 4),
  -- Rhyhorn - Double-Edge - TM204
  (111, 11100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 5),
  -- Rhyhorn - Endeavor - TM205
  (111, 11100, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 6),
  -- Rhyhorn - Supercell Slam - TM210
  (111, 11100, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 7),
  -- Rhyhorn - Scorching Sands - TM215
  (111, 11100, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 8),
  -- Rhyhorn - Curse - TM224
  (111, 11100, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 9),
  -- Rhydon - Roar - TM172
  (112, 11200, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Rhydon - Smack Down - TM179
  (112, 11200, 479, 25, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Rhydon - High Horsepower - TM186
  (112, 11200, 667, 25, NULL, 2, NULL, NULL, 24002186, NULL, 3),
  -- Rhydon - Heat Crash - TM189
  (112, 11200, 535, 25, NULL, 2, NULL, NULL, 24002189, NULL, 4),
  -- Rhydon - Uproar - TM191
  (112, 11200, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 5),
  -- Rhydon - Focus Punch - TM192
  (112, 11200, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 6),
  -- Rhydon - Double-Edge - TM204
  (112, 11200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 7),
  -- Rhydon - Endeavor - TM205
  (112, 11200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 8),
  -- Rhydon - Supercell Slam - TM210
  (112, 11200, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 9),
  -- Rhydon - Scorching Sands - TM215
  (112, 11200, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 10),
  -- Rhydon - Meteor Beam - TM220
  (112, 11200, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 11),
  -- Rhydon - Breaking Swipe - TM222
  (112, 11200, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 12),
  -- Rhydon - Curse - TM224
  (112, 11200, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 13),
  -- Chansey - Double-Edge - TM204
  (113, 11300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Chansey - Endeavor - TM205
  (113, 11300, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Horsea - Weather Ball - TM193
  (116, 11600, 311, 25, NULL, 2, NULL, NULL, 24002193, NULL, 1),
  -- Horsea - Flip Turn - TM196
  (116, 11600, 812, 25, NULL, 2, NULL, NULL, 24002196, NULL, 2),
  -- Horsea - Scale Shot - TM200
  (116, 11600, 799, 25, NULL, 2, NULL, NULL, 24002200, NULL, 3),
  -- Horsea - Whirlpool - TM208
  (116, 11600, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 4),
  -- Horsea - Muddy Water - TM209
  (116, 11600, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 5),
  -- Seadra - Weather Ball - TM193
  (117, 11700, 311, 25, NULL, 2, NULL, NULL, 24002193, NULL, 1),
  -- Seadra - Flip Turn - TM196
  (117, 11700, 812, 25, NULL, 2, NULL, NULL, 24002196, NULL, 2),
  -- Seadra - Scale Shot - TM200
  (117, 11700, 799, 25, NULL, 2, NULL, NULL, 24002200, NULL, 3),
  -- Seadra - Whirlpool - TM208
  (117, 11700, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 4),
  -- Seadra - Muddy Water - TM209
  (117, 11700, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 5),
  -- Scyther - Skitter Smack - TM219
  (123, 12300, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 1),
  -- Electabuzz - Charge - TM173
  (125, 12500, 268, 25, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Electabuzz - Knock Off - TM181
  (125, 12500, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Electabuzz - Uproar - TM191
  (125, 12500, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Electabuzz - Focus Punch - TM192
  (125, 12500, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Electabuzz - Double-Edge - TM204
  (125, 12500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 5),
  -- Electabuzz - Supercell Slam - TM210
  (125, 12500, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 6),
  -- Electabuzz - Electroweb - TM211
  (125, 12500, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 7),
  -- Electabuzz - Metal Sound - TM223
  (125, 12500, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 8),
  -- Magmar - Roar - TM172
  (126, 12600, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Magmar - Knock Off - TM181
  (126, 12600, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Magmar - Heat Crash - TM189
  (126, 12600, 535, 25, NULL, 2, NULL, NULL, 24002189, NULL, 3),
  -- Magmar - Uproar - TM191
  (126, 12600, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 4),
  -- Magmar - Focus Punch - TM192
  (126, 12600, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 5),
  -- Magmar - Burning Jealousy - TM195
  (126, 12600, 807, 25, NULL, 2, NULL, NULL, 24002195, NULL, 6),
  -- Magmar - Double-Edge - TM204
  (126, 12600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 7),
  -- Magmar - Temper Flare - TM207
  (126, 12600, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 8),
  -- Magmar - Scorching Sands - TM215
  (126, 12600, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 9),
  -- Magmar - Curse - TM224
  (126, 12600, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 10),
  -- Tauros - Double-Edge - TM204
  (128, 12800, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Tauros - Endeavor - TM205
  (128, 12800, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Tauros - Throat Chop - TM221
  (128, 12800, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Tauros - Curse - TM224
  (128, 12800, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Tauros (Paldean Tauros (Combat Breed)) - Double-Edge - TM204
  (128, 12801, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Tauros (Paldean Tauros (Combat Breed)) - Endeavor - TM205
  (128, 12801, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Tauros (Paldean Tauros (Combat Breed)) - Throat Chop - TM221
  (128, 12801, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Tauros (Paldean Tauros (Combat Breed)) - Curse - TM224
  (128, 12801, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Double-Edge - TM204
  (128, 12802, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Endeavor - TM205
  (128, 12802, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Temper Flare - TM207
  (128, 12802, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 3),
  -- Tauros (Paldean Tauros (Blaze Breed)) - Curse - TM224
  (128, 12802, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Double-Edge - TM204
  (128, 12803, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Endeavor - TM205
  (128, 12803, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Whirlpool - TM208
  (128, 12803, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 3),
  -- Tauros (Paldean Tauros (Aqua Breed)) - Curse - TM224
  (128, 12803, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Gyarados - Double-Edge - TM204
  (130, 13000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Gyarados - Endeavor - TM205
  (130, 13000, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Gyarados - Temper Flare - TM207
  (130, 13000, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 3),
  -- Gyarados - Whirlpool - TM208
  (130, 13000, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 4),
  -- Gyarados - Muddy Water - TM209
  (130, 13000, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 5),
  -- Gyarados - Dragon Cheer - TM226
  (130, 13000, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 6),
  -- Lapras - Haze - TM174
  (131, 13100, 114, 25, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Lapras - Icicle Spear - TM187
  (131, 13100, 333, 25, NULL, 2, NULL, NULL, 24002187, NULL, 2),
  -- Lapras - Weather Ball - TM193
  (131, 13100, 311, 25, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Lapras - Double-Edge - TM204
  (131, 13100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 4),
  -- Lapras - Whirlpool - TM208
  (131, 13100, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 5),
  -- Lapras - Muddy Water - TM209
  (131, 13100, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 6),
  -- Lapras - Curse - TM224
  (131, 13100, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 7),
  -- Lapras - Dragon Cheer - TM226
  (131, 13100, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 8),
  -- Lapras - Alluring Voice - TM227
  (131, 13100, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 9),
  -- Lapras - Psychic Noise - TM228
  (131, 13100, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 10),
  -- Eevee - Double-Edge - TM204
  (133, 13300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Eevee - Curse - TM224
  (133, 13300, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 2),
  -- Eevee - Alluring Voice - TM227
  (133, 13300, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 3),
  -- Vaporeon - Double-Edge - TM204
  (134, 13400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Vaporeon - Whirlpool - TM208
  (134, 13400, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Vaporeon - Muddy Water - TM209
  (134, 13400, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 3),
  -- Vaporeon - Curse - TM224
  (134, 13400, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Vaporeon - Alluring Voice - TM227
  (134, 13400, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 5),
  -- Jolteon - Double-Edge - TM204
  (135, 13500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Jolteon - Electroweb - TM211
  (135, 13500, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 2),
  -- Jolteon - Metal Sound - TM223
  (135, 13500, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 3),
  -- Jolteon - Curse - TM224
  (135, 13500, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Jolteon - Alluring Voice - TM227
  (135, 13500, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 5),
  -- Flareon - Double-Edge - TM204
  (136, 13600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Flareon - Endeavor - TM205
  (136, 13600, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Flareon - Temper Flare - TM207
  (136, 13600, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 3),
  -- Flareon - Scorching Sands - TM215
  (136, 13600, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 4),
  -- Flareon - Curse - TM224
  (136, 13600, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Flareon - Alluring Voice - TM227
  (136, 13600, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 6),
  -- Porygon - Charge - TM173
  (137, 13700, 268, 25, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Porygon - Gravity - TM178
  (137, 13700, 356, 25, NULL, 2, NULL, NULL, 24002178, NULL, 2),
  -- Porygon - Double-Edge - TM204
  (137, 13700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 3),
  -- Porygon - Electroweb - TM211
  (137, 13700, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 4),
  -- Snorlax - Double-Edge - TM204
  (143, 14300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Snorlax - Supercell Slam - TM210
  (143, 14300, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 2),
  -- Snorlax - Curse - TM224
  (143, 14300, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Snorlax - Hard Press - TM225
  (143, 14300, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 4),
  -- Articuno - Double-Edge - TM204
  (144, 14400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Articuno - Triple Axel - TM212
  (144, 14400, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 2),
  -- Articuno - Feather Dance - TM216
  (144, 14400, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 3),
  -- Articuno (Galarian Articuno) - Future Sight - TM217
  (144, 14401, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 1),
  -- Articuno (Galarian Articuno) - Expanding Force - TM218
  (144, 14401, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 2),
  -- Articuno (Galarian Articuno) - Psychic Noise - TM228
  (144, 14401, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 3),
  -- Zapdos - Supercell Slam - TM210
  (145, 14500, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 1),
  -- Zapdos - Metal Sound - TM223
  (145, 14500, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 2),
  -- Zapdos (Galarian Zapdos) - Double-Edge - TM204
  (145, 14501, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Zapdos (Galarian Zapdos) - Endeavor - TM205
  (145, 14501, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Zapdos (Galarian Zapdos) - Coaching - TM213
  (145, 14501, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 3),
  -- Zapdos (Galarian Zapdos) - Throat Chop - TM221
  (145, 14501, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Moltres - Double-Edge - TM204
  (146, 14600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Moltres - Temper Flare - TM207
  (146, 14600, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 2),
  -- Moltres - Scorching Sands - TM215
  (146, 14600, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 3),
  -- Moltres (Galarian Moltres) - Pain Split - TM202
  (146, 14601, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Dratini - Breaking Swipe - TM222
  (147, 14700, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 1),
  -- Dratini - Dragon Cheer - TM226
  (147, 14700, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 2),
  -- Dragonair - Breaking Swipe - TM222
  (148, 14800, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 1),
  -- Dragonair - Dragon Cheer - TM226
  (148, 14800, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 2),
  -- Dragonite - Breaking Swipe - TM222
  (149, 14900, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 1),
  -- Dragonite - Dragon Cheer - TM226
  (149, 14900, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 2),
  -- Mewtwo - Psych Up - TM203
  (150, 15000, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Mewtwo - Double-Edge - TM204
  (150, 15000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Mewtwo - Future Sight - TM217
  (150, 15000, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 3),
  -- Mewtwo - Expanding Force - TM218
  (150, 15000, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 4),
  -- Mewtwo - Curse - TM224
  (150, 15000, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Mewtwo - Psychic Noise - TM228
  (150, 15000, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 6);
