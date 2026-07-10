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
-- The Indigo Disk learnset delta rows for species 001-050.
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
  -- Bulbasaur - Toxic - TM175
  (1, 100, 92, 25, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Bulbasaur - Knock Off - TM181
  (1, 100, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Bulbasaur - Weather Ball - TM193
  (1, 100, 311, 25, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Bulbasaur - Grassy Glide - TM194
  (1, 100, 803, 25, NULL, 2, NULL, NULL, 24002194, NULL, 4),
  -- Bulbasaur - Double-Edge - TM204
  (1, 100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 5),
  -- Bulbasaur - Curse - TM224
  (1, 100, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 6),
  -- Ivysaur - Roar - TM172
  (2, 200, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Ivysaur - Toxic - TM175
  (2, 200, 92, 25, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Ivysaur - Knock Off - TM181
  (2, 200, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Ivysaur - Weather Ball - TM193
  (2, 200, 311, 25, NULL, 2, NULL, NULL, 24002193, NULL, 4),
  -- Ivysaur - Grassy Glide - TM194
  (2, 200, 803, 25, NULL, 2, NULL, NULL, 24002194, NULL, 5),
  -- Ivysaur - Double-Edge - TM204
  (2, 200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 6),
  -- Ivysaur - Curse - TM224
  (2, 200, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 7),
  -- Venusaur - Roar - TM172
  (3, 300, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Venusaur - Toxic - TM175
  (3, 300, 92, 25, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Venusaur - Knock Off - TM181
  (3, 300, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Venusaur - Weather Ball - TM193
  (3, 300, 311, 25, NULL, 2, NULL, NULL, 24002193, NULL, 4),
  -- Venusaur - Grassy Glide - TM194
  (3, 300, 803, 25, NULL, 2, NULL, NULL, 24002194, NULL, 5),
  -- Venusaur - Double-Edge - TM204
  (3, 300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 6),
  -- Venusaur - Petal Blizzard - TM206
  (3, 300, 572, 25, NULL, 2, NULL, NULL, 25002206, NULL, 7),
  -- Venusaur - Curse - TM224
  (3, 300, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 8),
  -- Charmander - Temper Flare - TM207
  (4, 400, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 1),
  -- Charmander - Breaking Swipe - TM222
  (4, 400, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 2),
  -- Charmeleon - Temper Flare - TM207
  (5, 500, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 1),
  -- Charmeleon - Breaking Swipe - TM222
  (5, 500, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 2),
  -- Charizard - Double-Edge - TM204
  (6, 600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Charizard - Temper Flare - TM207
  (6, 600, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 2),
  -- Charizard - Scorching Sands - TM215
  (6, 600, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 3),
  -- Charizard - Breaking Swipe - TM222
  (6, 600, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 4),
  -- Charizard - Dragon Cheer - TM226
  (6, 600, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 5),
  -- Squirtle - Haze - TM174
  (7, 700, 114, 25, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Squirtle - Gyro Ball - TM180
  (7, 700, 360, 25, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Squirtle - Focus Punch - TM192
  (7, 700, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Squirtle - Weather Ball - TM193
  (7, 700, 311, 25, NULL, 2, NULL, NULL, 24002193, NULL, 4),
  -- Squirtle - Flip Turn - TM196
  (7, 700, 812, 25, NULL, 2, NULL, NULL, 24002196, NULL, 5),
  -- Squirtle - Double-Edge - TM204
  (7, 700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 6),
  -- Squirtle - Whirlpool - TM208
  (7, 700, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 7),
  -- Squirtle - Muddy Water - TM209
  (7, 700, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 8),
  -- Wartortle - Haze - TM174
  (8, 800, 114, 25, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Wartortle - Gyro Ball - TM180
  (8, 800, 360, 25, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Wartortle - Focus Punch - TM192
  (8, 800, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Wartortle - Weather Ball - TM193
  (8, 800, 311, 25, NULL, 2, NULL, NULL, 24002193, NULL, 4),
  -- Wartortle - Flip Turn - TM196
  (8, 800, 812, 25, NULL, 2, NULL, NULL, 24002196, NULL, 5),
  -- Wartortle - Double-Edge - TM204
  (8, 800, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 6),
  -- Wartortle - Whirlpool - TM208
  (8, 800, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 7),
  -- Wartortle - Muddy Water - TM209
  (8, 800, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 8),
  -- Blastoise - Roar - TM172
  (9, 900, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Blastoise - Haze - TM174
  (9, 900, 114, 25, NULL, 2, NULL, NULL, 24002174, NULL, 2),
  -- Blastoise - Smack Down - TM179
  (9, 900, 479, 25, NULL, 2, NULL, NULL, 24002179, NULL, 3),
  -- Blastoise - Gyro Ball - TM180
  (9, 900, 360, 25, NULL, 2, NULL, NULL, 24002180, NULL, 4),
  -- Blastoise - Focus Punch - TM192
  (9, 900, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 5),
  -- Blastoise - Weather Ball - TM193
  (9, 900, 311, 25, NULL, 2, NULL, NULL, 24002193, NULL, 6),
  -- Blastoise - Flip Turn - TM196
  (9, 900, 812, 25, NULL, 2, NULL, NULL, 24002196, NULL, 7),
  -- Blastoise - Double-Edge - TM204
  (9, 900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 8),
  -- Blastoise - Whirlpool - TM208
  (9, 900, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 9),
  -- Blastoise - Muddy Water - TM209
  (9, 900, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 10),
  -- Ekans - Double-Edge - TM204
  (23, 2300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Ekans - Sludge Wave - TM214
  (23, 2300, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 2),
  -- Ekans - Skitter Smack - TM219
  (23, 2300, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 3),
  -- Arbok - Pain Split - TM202
  (24, 2400, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Arbok - Double-Edge - TM204
  (24, 2400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Arbok - Sludge Wave - TM214
  (24, 2400, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 3),
  -- Arbok - Skitter Smack - TM219
  (24, 2400, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 4),
  -- Arbok - Throat Chop - TM221
  (24, 2400, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 5),
  -- Arbok - Breaking Swipe - TM222
  (24, 2400, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 6),
  -- Pikachu - Endeavor - TM205
  (25, 2500, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Pikachu - Electroweb - TM211
  (25, 2500, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 2),
  -- Pikachu - Alluring Voice - TM227
  (25, 2500, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 3),
  -- Pikachu - Upper Hand - TM229
  (25, 2500, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 4),
  -- Raichu - Endeavor - TM205
  (26, 2600, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Raichu - Electroweb - TM211
  (26, 2600, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 2),
  -- Raichu - Alluring Voice - TM227
  (26, 2600, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 3),
  -- Raichu - Upper Hand - TM229
  (26, 2600, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 4),
  -- Raichu (Alolan Raichu) - Endeavor - TM205
  (26, 2601, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Raichu (Alolan Raichu) - Electroweb - TM211
  (26, 2601, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 2),
  -- Raichu (Alolan Raichu) - Expanding Force - TM218
  (26, 2601, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 3),
  -- Raichu (Alolan Raichu) - Alluring Voice - TM227
  (26, 2601, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 4),
  -- Raichu (Alolan Raichu) - Psychic Noise - TM228
  (26, 2601, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 5),
  -- Raichu (Alolan Raichu) - Upper Hand - TM229
  (26, 2601, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 6),
  -- Sandshrew - Double-Edge - TM204
  (27, 2700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Sandshrew - Endeavor - TM205
  (27, 2700, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Sandshrew - Scorching Sands - TM215
  (27, 2700, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 3),
  -- Sandshrew - Throat Chop - TM221
  (27, 2700, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Sandshrew - Curse - TM224
  (27, 2700, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Sandshrew (Alolan Sandshrew) - Double-Edge - TM204
  (27, 2701, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Sandshrew (Alolan Sandshrew) - Endeavor - TM205
  (27, 2701, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Sandshrew (Alolan Sandshrew) - Triple Axel - TM212
  (27, 2701, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 3),
  -- Sandshrew (Alolan Sandshrew) - Throat Chop - TM221
  (27, 2701, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Sandshrew (Alolan Sandshrew) - Curse - TM224
  (27, 2701, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Sandslash - Double-Edge - TM204
  (28, 2800, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Sandslash - Endeavor - TM205
  (28, 2800, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Sandslash - Scorching Sands - TM215
  (28, 2800, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 3),
  -- Sandslash - Throat Chop - TM221
  (28, 2800, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Sandslash - Curse - TM224
  (28, 2800, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Sandslash (Alolan Sandslash) - Double-Edge - TM204
  (28, 2801, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Sandslash (Alolan Sandslash) - Endeavor - TM205
  (28, 2801, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Sandslash (Alolan Sandslash) - Triple Axel - TM212
  (28, 2801, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 3),
  -- Sandslash (Alolan Sandslash) - Throat Chop - TM221
  (28, 2801, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Sandslash (Alolan Sandslash) - Curse - TM224
  (28, 2801, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Clefairy - Psych Up - TM203
  (35, 3500, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Clefairy - Double-Edge - TM204
  (35, 3500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Clefairy - Endeavor - TM205
  (35, 3500, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Clefairy - Meteor Beam - TM220
  (35, 3500, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 4),
  -- Clefairy - Alluring Voice - TM227
  (35, 3500, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 5),
  -- Clefable - Psych Up - TM203
  (36, 3600, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Clefable - Double-Edge - TM204
  (36, 3600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Clefable - Endeavor - TM205
  (36, 3600, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Clefable - Future Sight - TM217
  (36, 3600, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 4),
  -- Clefable - Meteor Beam - TM220
  (36, 3600, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 5),
  -- Clefable - Alluring Voice - TM227
  (36, 3600, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 6),
  -- Vulpix - Pain Split - TM202
  (37, 3700, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Vulpix - Psych Up - TM203
  (37, 3700, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Vulpix - Double-Edge - TM204
  (37, 3700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 3),
  -- Vulpix (Alolan Vulpix) - Pain Split - TM202
  (37, 3701, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Vulpix (Alolan Vulpix) - Psych Up - TM203
  (37, 3701, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Vulpix (Alolan Vulpix) - Double-Edge - TM204
  (37, 3701, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 3),
  -- Ninetales - Pain Split - TM202
  (38, 3800, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Ninetales - Psych Up - TM203
  (38, 3800, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Ninetales - Double-Edge - TM204
  (38, 3800, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 3),
  -- Ninetales - Scorching Sands - TM215
  (38, 3800, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 4),
  -- Ninetales (Alolan Ninetales) - Pain Split - TM202
  (38, 3801, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Ninetales (Alolan Ninetales) - Psych Up - TM203
  (38, 3801, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Ninetales (Alolan Ninetales) - Double-Edge - TM204
  (38, 3801, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 3),
  -- Ninetales (Alolan Ninetales) - Triple Axel - TM212
  (38, 3801, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 4),
  -- Jigglypuff - Pain Split - TM202
  (39, 3900, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Jigglypuff - Psych Up - TM203
  (39, 3900, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Jigglypuff - Double-Edge - TM204
  (39, 3900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 3),
  -- Jigglypuff - Endeavor - TM205
  (39, 3900, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 4),
  -- Jigglypuff - Alluring Voice - TM227
  (39, 3900, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 5),
  -- Jigglypuff - Psychic Noise - TM228
  (39, 3900, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 6),
  -- Wigglytuff - Pain Split - TM202
  (40, 4000, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Wigglytuff - Psych Up - TM203
  (40, 4000, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Wigglytuff - Double-Edge - TM204
  (40, 4000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 3),
  -- Wigglytuff - Endeavor - TM205
  (40, 4000, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 4),
  -- Wigglytuff - Expanding Force - TM218
  (40, 4000, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 5),
  -- Wigglytuff - Alluring Voice - TM227
  (40, 4000, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 6),
  -- Wigglytuff - Psychic Noise - TM228
  (40, 4000, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 7),
  -- Oddish - Toxic - TM175
  (43, 4300, 92, 25, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Oddish - Grassy Glide - TM194
  (43, 4300, 803, 25, NULL, 2, NULL, NULL, 24002194, NULL, 2),
  -- Gloom - Toxic - TM175
  (44, 4400, 92, 25, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Gloom - Grassy Glide - TM194
  (44, 4400, 803, 25, NULL, 2, NULL, NULL, 24002194, NULL, 2),
  -- Gloom - Petal Blizzard - TM206
  (44, 4400, 572, 25, NULL, 2, NULL, NULL, 25002206, NULL, 3),
  -- Vileplume - Toxic - TM175
  (45, 4500, 92, 25, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Vileplume - Solar Blade - TM190
  (45, 4500, 669, 25, NULL, 2, NULL, NULL, 24002190, NULL, 2),
  -- Vileplume - Weather Ball - TM193
  (45, 4500, 311, 25, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Vileplume - Grassy Glide - TM194
  (45, 4500, 803, 25, NULL, 2, NULL, NULL, 24002194, NULL, 4),
  -- Vileplume - Petal Blizzard - TM206
  (45, 4500, 572, 25, NULL, 2, NULL, NULL, 25002206, NULL, 5),
  -- Vileplume - Sludge Wave - TM214
  (45, 4500, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 6),
  -- Venonat - Endeavor - TM205
  (48, 4800, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Venonat - Skitter Smack - TM219
  (48, 4800, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2),
  -- Venonat - Psychic Noise - TM228
  (48, 4800, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 3),
  -- Venomoth - Double-Edge - TM204
  (49, 4900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Venomoth - Endeavor - TM205
  (49, 4900, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Venomoth - Sludge Wave - TM214
  (49, 4900, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 3),
  -- Venomoth - Skitter Smack - TM219
  (49, 4900, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 4),
  -- Venomoth - Psychic Noise - TM228
  (49, 4900, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 5),
  -- Diglett - Double-Edge - TM204
  (50, 5000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Diglett - Endeavor - TM205
  (50, 5000, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Diglett - Scorching Sands - TM215
  (50, 5000, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 3),
  -- Diglett - Throat Chop - TM221
  (50, 5000, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Diglett - Curse - TM224
  (50, 5000, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Diglett (Alolan Diglett) - Scorching Sands - TM215
  (50, 5001, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 1),
  -- Diglett (Alolan Diglett) - Metal Sound - TM223
  (50, 5001, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 2);
