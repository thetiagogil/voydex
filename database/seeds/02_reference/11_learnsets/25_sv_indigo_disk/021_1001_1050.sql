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
-- The Indigo Disk learnset delta rows for species 1001-1050.
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
  -- Chien-Pao - Throat Chop - TM221
  (1002, 100200, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 1),
  -- Ting-Lu - Double-Edge - TM204
  (1003, 100300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Ting-Lu - Throat Chop - TM221
  (1003, 100300, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 2),
  -- Chi-Yu - Temper Flare - TM207
  (1004, 100400, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 1),
  -- Roaring Moon - Double-Edge - TM204
  (1005, 100500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Roaring Moon - Throat Chop - TM221
  (1005, 100500, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 2),
  -- Roaring Moon - Breaking Swipe - TM222
  (1005, 100500, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 3),
  -- Roaring Moon - Dragon Cheer - TM226
  (1005, 100500, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 4),
  -- Iron Valiant - Psych Up - TM203
  (1006, 100600, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Iron Valiant - Coaching - TM213
  (1006, 100600, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 2),
  -- Iron Valiant - Future Sight - TM217
  (1006, 100600, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 3),
  -- Iron Valiant - Expanding Force - TM218
  (1006, 100600, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 4),
  -- Iron Valiant - Throat Chop - TM221
  (1006, 100600, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 5),
  -- Koraidon - Double-Edge - TM204
  (1007, 100700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Koraidon - Temper Flare - TM207
  (1007, 100700, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 2),
  -- Koraidon - Meteor Beam - TM220
  (1007, 100700, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 3),
  -- Koraidon - Breaking Swipe - TM222
  (1007, 100700, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 4),
  -- Koraidon - Dragon Cheer - TM226
  (1007, 100700, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 5),
  -- Miraidon - Supercell Slam - TM210
  (1008, 100800, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 1),
  -- Miraidon - Metal Sound - TM223
  (1008, 100800, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 2),
  -- Miraidon - Dragon Cheer - TM226
  (1008, 100800, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 3),
  -- Walking Wake - Double-Edge - TM204
  (1009, 100900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Walking Wake - Whirlpool - TM208
  (1009, 100900, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Walking Wake - Breaking Swipe - TM222
  (1009, 100900, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 3),
  -- Walking Wake - Dragon Cheer - TM226
  (1009, 100900, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 4),
  -- Iron Leaves - Double-Edge - TM204
  (1010, 101000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Iron Leaves - Coaching - TM213
  (1010, 101000, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 2),
  -- Iron Leaves - Throat Chop - TM221
  (1010, 101000, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Iron Leaves - Metal Sound - TM223
  (1010, 101000, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 4),
  -- Dipplin - Dragon Cheer - TM226
  (1011, 101100, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 1),
  -- Poltchageist - Pain Split - TM202
  (1012, 101200, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Poltchageist - Psych Up - TM203
  (1012, 101200, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Poltchageist - Curse - TM224
  (1012, 101200, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Sinistcha - Pain Split - TM202
  (1013, 101300, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Sinistcha - Psych Up - TM203
  (1013, 101300, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Sinistcha - Curse - TM224
  (1013, 101300, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Okidogi - Double-Edge - TM204
  (1014, 101400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Okidogi - Sludge Wave - TM214
  (1014, 101400, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 2),
  -- Okidogi - Throat Chop - TM221
  (1014, 101400, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Okidogi - Curse - TM224
  (1014, 101400, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Okidogi - Hard Press - TM225
  (1014, 101400, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 5),
  -- Okidogi - Upper Hand - TM229
  (1014, 101400, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 6),
  -- Munkidori - Psych Up - TM203
  (1015, 101500, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Munkidori - Sludge Wave - TM214
  (1015, 101500, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 2),
  -- Munkidori - Future Sight - TM217
  (1015, 101500, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 3),
  -- Munkidori - Psychic Noise - TM228
  (1015, 101500, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 4),
  -- Fezandipiti - Psych Up - TM203
  (1016, 101600, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Fezandipiti - Alluring Voice - TM227
  (1016, 101600, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 2),
  -- Ogerpon - Throat Chop - TM221
  (1017, 101700, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 1),
  -- Ogerpon (Wellspring Mask) - Throat Chop - TM221
  (1017, 101701, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 1),
  -- Ogerpon (Hearthflame Mask) - Throat Chop - TM221
  (1017, 101702, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 1),
  -- Ogerpon (Cornerstone Mask) - Throat Chop - TM221
  (1017, 101703, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 1),
  -- Archaludon - Roar - TM172
  (1018, 101800, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Archaludon - Smack Down - TM179
  (1018, 101800, 479, 25, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Archaludon - Gyro Ball - TM180
  (1018, 101800, 360, 25, NULL, 2, NULL, NULL, 24002180, NULL, 3),
  -- Archaludon - Double-Edge - TM204
  (1018, 101800, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 4),
  -- Archaludon - Meteor Beam - TM220
  (1018, 101800, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 5),
  -- Archaludon - Breaking Swipe - TM222
  (1018, 101800, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 6),
  -- Archaludon - Metal Sound - TM223
  (1018, 101800, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 7),
  -- Archaludon - Hard Press - TM225
  (1018, 101800, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 8),
  -- Archaludon - Dragon Cheer - TM226
  (1018, 101800, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 9),
  -- Hydrapple - Gyro Ball - TM180
  (1019, 101900, 360, 25, NULL, 2, NULL, NULL, 24002180, NULL, 1),
  -- Hydrapple - Bug Bite - TM182
  (1019, 101900, 450, 25, NULL, 2, NULL, NULL, 24002182, NULL, 2),
  -- Hydrapple - Uproar - TM191
  (1019, 101900, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Hydrapple - Grassy Glide - TM194
  (1019, 101900, 803, 25, NULL, 2, NULL, NULL, 24002194, NULL, 4),
  -- Hydrapple - Double-Edge - TM204
  (1019, 101900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 5),
  -- Hydrapple - Breaking Swipe - TM222
  (1019, 101900, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 6),
  -- Hydrapple - Curse - TM224
  (1019, 101900, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 7),
  -- Hydrapple - Dragon Cheer - TM226
  (1019, 101900, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 8),
  -- Gouging Fire - Roar - TM172
  (1020, 102000, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Gouging Fire - Heat Crash - TM189
  (1020, 102000, 535, 25, NULL, 2, NULL, NULL, 24002189, NULL, 2),
  -- Gouging Fire - Weather Ball - TM193
  (1020, 102000, 311, 25, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Gouging Fire - Scale Shot - TM200
  (1020, 102000, 799, 25, NULL, 2, NULL, NULL, 24002200, NULL, 4),
  -- Gouging Fire - Double-Edge - TM204
  (1020, 102000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 5),
  -- Gouging Fire - Temper Flare - TM207
  (1020, 102000, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 6),
  -- Gouging Fire - Scorching Sands - TM215
  (1020, 102000, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 7),
  -- Gouging Fire - Breaking Swipe - TM222
  (1020, 102000, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 8),
  -- Gouging Fire - Dragon Cheer - TM226
  (1020, 102000, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 9),
  -- Raging Bolt - Roar - TM172
  (1021, 102100, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Raging Bolt - Charge - TM173
  (1021, 102100, 268, 25, NULL, 2, NULL, NULL, 24002173, NULL, 2),
  -- Raging Bolt - Weather Ball - TM193
  (1021, 102100, 311, 25, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Raging Bolt - Double-Edge - TM204
  (1021, 102100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 4),
  -- Raging Bolt - Supercell Slam - TM210
  (1021, 102100, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 5),
  -- Raging Bolt - Electroweb - TM211
  (1021, 102100, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 6),
  -- Raging Bolt - Breaking Swipe - TM222
  (1021, 102100, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 7),
  -- Raging Bolt - Dragon Cheer - TM226
  (1021, 102100, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 8),
  -- Iron Boulder - Solar Blade - TM190
  (1022, 102200, 669, 25, NULL, 2, NULL, NULL, 24002190, NULL, 1),
  -- Iron Boulder - Double-Edge - TM204
  (1022, 102200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Iron Boulder - Meteor Beam - TM220
  (1022, 102200, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 3),
  -- Iron Boulder - Throat Chop - TM221
  (1022, 102200, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Iron Crown - Gravity - TM178
  (1023, 102300, 356, 25, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Iron Crown - Solar Blade - TM190
  (1023, 102300, 669, 25, NULL, 2, NULL, NULL, 24002190, NULL, 2),
  -- Iron Crown - Double-Edge - TM204
  (1023, 102300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 3),
  -- Iron Crown - Supercell Slam - TM210
  (1023, 102300, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 4),
  -- Iron Crown - Future Sight - TM217
  (1023, 102300, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 5),
  -- Iron Crown - Expanding Force - TM218
  (1023, 102300, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 6),
  -- Iron Crown - Metal Sound - TM223
  (1023, 102300, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 7),
  -- Iron Crown - Psychic Noise - TM228
  (1023, 102300, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 8),
  -- Terapagos - Roar - TM172
  (1024, 102400, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Terapagos - Toxic - TM175
  (1024, 102400, 92, 25, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Terapagos - Gravity - TM178
  (1024, 102400, 356, 25, NULL, 2, NULL, NULL, 24002178, NULL, 3),
  -- Terapagos - Gyro Ball - TM180
  (1024, 102400, 360, 25, NULL, 2, NULL, NULL, 24002180, NULL, 4),
  -- Terapagos - Heat Crash - TM189
  (1024, 102400, 535, 25, NULL, 2, NULL, NULL, 24002189, NULL, 5),
  -- Terapagos - Weather Ball - TM193
  (1024, 102400, 311, 25, NULL, 2, NULL, NULL, 24002193, NULL, 6),
  -- Terapagos - Double-Edge - TM204
  (1024, 102400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 7),
  -- Terapagos - Supercell Slam - TM210
  (1024, 102400, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 8),
  -- Terapagos - Scorching Sands - TM215
  (1024, 102400, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 9),
  -- Terapagos - Meteor Beam - TM220
  (1024, 102400, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 10),
  -- Pecharunt - Toxic - TM175
  (1025, 102500, 92, 25, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Pecharunt - Spite - TM177
  (1025, 102500, 180, 25, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Pecharunt - Poltergeist - TM198
  (1025, 102500, 809, 25, NULL, 2, NULL, NULL, 24002198, NULL, 3),
  -- Pecharunt - Sludge Wave - TM214
  (1025, 102500, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 4),
  -- Pecharunt - Curse - TM224
  (1025, 102500, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5);
