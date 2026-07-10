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
-- The Indigo Disk learnset delta rows for species 401-450.
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
  -- Kricketot - Endeavor - TM205
  (401, 40100, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Kricketot - Skitter Smack - TM219
  (401, 40100, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2),
  -- Kricketune - Endeavor - TM205
  (402, 40200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Kricketune - Skitter Smack - TM219
  (402, 40200, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2),
  -- Kricketune - Throat Chop - TM221
  (402, 40200, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Shinx - Double-Edge - TM204
  (403, 40300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Shinx - Electroweb - TM211
  (403, 40300, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 2),
  -- Luxio - Double-Edge - TM204
  (404, 40400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Luxio - Electroweb - TM211
  (404, 40400, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 2),
  -- Luxray - Double-Edge - TM204
  (405, 40500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Luxray - Supercell Slam - TM210
  (405, 40500, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 2),
  -- Luxray - Electroweb - TM211
  (405, 40500, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 3),
  -- Luxray - Throat Chop - TM221
  (405, 40500, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Cranidos - Roar - TM172
  (408, 40800, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Cranidos - Smack Down - TM179
  (408, 40800, 479, 25, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Cranidos - Uproar - TM191
  (408, 40800, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Cranidos - Double-Edge - TM204
  (408, 40800, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 4),
  -- Cranidos - Endeavor - TM205
  (408, 40800, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 5),
  -- Cranidos - Curse - TM224
  (408, 40800, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 6),
  -- Cranidos - Dragon Cheer - TM226
  (408, 40800, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 7),
  -- Rampardos - Roar - TM172
  (409, 40900, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Rampardos - Smack Down - TM179
  (409, 40900, 479, 25, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Rampardos - Uproar - TM191
  (409, 40900, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Rampardos - Focus Punch - TM192
  (409, 40900, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Rampardos - Double-Edge - TM204
  (409, 40900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 5),
  -- Rampardos - Endeavor - TM205
  (409, 40900, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 6),
  -- Rampardos - Supercell Slam - TM210
  (409, 40900, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 7),
  -- Rampardos - Breaking Swipe - TM222
  (409, 40900, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 8),
  -- Rampardos - Curse - TM224
  (409, 40900, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 9),
  -- Rampardos - Dragon Cheer - TM226
  (409, 40900, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 10),
  -- Shieldon - Roar - TM172
  (410, 41000, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Shieldon - Sand Tomb - TM176
  (410, 41000, 328, 25, NULL, 2, NULL, NULL, 24002176, NULL, 2),
  -- Shieldon - Smack Down - TM179
  (410, 41000, 479, 25, NULL, 2, NULL, NULL, 24002179, NULL, 3),
  -- Shieldon - Double-Edge - TM204
  (410, 41000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 4),
  -- Shieldon - Scorching Sands - TM215
  (410, 41000, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 5),
  -- Shieldon - Metal Sound - TM223
  (410, 41000, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 6),
  -- Shieldon - Curse - TM224
  (410, 41000, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 7),
  -- Shieldon - Hard Press - TM225
  (410, 41000, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 8),
  -- Bastiodon - Roar - TM172
  (411, 41100, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Bastiodon - Sand Tomb - TM176
  (411, 41100, 328, 25, NULL, 2, NULL, NULL, 24002176, NULL, 2),
  -- Bastiodon - Smack Down - TM179
  (411, 41100, 479, 25, NULL, 2, NULL, NULL, 24002179, NULL, 3),
  -- Bastiodon - Double-Edge - TM204
  (411, 41100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 4),
  -- Bastiodon - Scorching Sands - TM215
  (411, 41100, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 5),
  -- Bastiodon - Meteor Beam - TM220
  (411, 41100, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 6),
  -- Bastiodon - Metal Sound - TM223
  (411, 41100, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 7),
  -- Bastiodon - Curse - TM224
  (411, 41100, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 8),
  -- Bastiodon - Hard Press - TM225
  (411, 41100, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 9),
  -- Combee - Endeavor - TM205
  (415, 41500, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Combee - Skitter Smack - TM219
  (415, 41500, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2),
  -- Vespiquen - Endeavor - TM205
  (416, 41600, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Vespiquen - Skitter Smack - TM219
  (416, 41600, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2),
  -- Vespiquen - Psychic Noise - TM228
  (416, 41600, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 3),
  -- Pachirisu - Endeavor - TM205
  (417, 41700, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Pachirisu - Electroweb - TM211
  (417, 41700, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 2),
  -- Pachirisu - Alluring Voice - TM227
  (417, 41700, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 3),
  -- Buizel - Whirlpool - TM208
  (418, 41800, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 1),
  -- Floatzel - Double-Edge - TM204
  (419, 41900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Floatzel - Whirlpool - TM208
  (419, 41900, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Floatzel - Muddy Water - TM209
  (419, 41900, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 3),
  -- Shellos - Pain Split - TM202
  (422, 42200, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Shellos - Whirlpool - TM208
  (422, 42200, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Shellos - Muddy Water - TM209
  (422, 42200, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 3),
  -- Shellos - Skitter Smack - TM219
  (422, 42200, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 4),
  -- Shellos - Curse - TM224
  (422, 42200, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Gastrodon - Pain Split - TM202
  (423, 42300, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Gastrodon - Whirlpool - TM208
  (423, 42300, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Gastrodon - Muddy Water - TM209
  (423, 42300, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 3),
  -- Gastrodon - Sludge Wave - TM214
  (423, 42300, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 4),
  -- Gastrodon - Skitter Smack - TM219
  (423, 42300, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 5),
  -- Gastrodon - Curse - TM224
  (423, 42300, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 6),
  -- Ambipom - Double-Edge - TM204
  (424, 42400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Ambipom - Endeavor - TM205
  (424, 42400, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Ambipom - Triple Axel - TM212
  (424, 42400, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 3),
  -- Ambipom - Throat Chop - TM221
  (424, 42400, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Ambipom - Upper Hand - TM229
  (424, 42400, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 5),
  -- Drifloon - Pain Split - TM202
  (425, 42500, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Drifloon - Temper Flare - TM207
  (425, 42500, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 2),
  -- Drifloon - Curse - TM224
  (425, 42500, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Drifblim - Pain Split - TM202
  (426, 42600, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Drifblim - Temper Flare - TM207
  (426, 42600, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 2),
  -- Drifblim - Curse - TM224
  (426, 42600, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Mismagius - Pain Split - TM202
  (429, 42900, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Mismagius - Psych Up - TM203
  (429, 42900, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Mismagius - Future Sight - TM217
  (429, 42900, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 3),
  -- Mismagius - Curse - TM224
  (429, 42900, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Mismagius - Psychic Noise - TM228
  (429, 42900, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 5),
  -- Honchkrow - Psych Up - TM203
  (430, 43000, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Honchkrow - Double-Edge - TM204
  (430, 43000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Honchkrow - Endeavor - TM205
  (430, 43000, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Honchkrow - Feather Dance - TM216
  (430, 43000, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 4),
  -- Honchkrow - Psychic Noise - TM228
  (430, 43000, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 5),
  -- Chingling - Psych Up - TM203
  (433, 43300, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Chingling - Double-Edge - TM204
  (433, 43300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Chingling - Future Sight - TM217
  (433, 43300, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 3),
  -- Chingling - Curse - TM224
  (433, 43300, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Chingling - Psychic Noise - TM228
  (433, 43300, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 5),
  -- Stunky - Double-Edge - TM204
  (434, 43400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Stunky - Temper Flare - TM207
  (434, 43400, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 2),
  -- Stunky - Sludge Wave - TM214
  (434, 43400, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 3),
  -- Stunky - Throat Chop - TM221
  (434, 43400, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Skuntank - Double-Edge - TM204
  (435, 43500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Skuntank - Endeavor - TM205
  (435, 43500, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Skuntank - Temper Flare - TM207
  (435, 43500, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 3),
  -- Skuntank - Sludge Wave - TM214
  (435, 43500, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 4),
  -- Skuntank - Throat Chop - TM221
  (435, 43500, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 5),
  -- Bronzor - Psych Up - TM203
  (436, 43600, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Bronzor - Future Sight - TM217
  (436, 43600, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 2),
  -- Bronzor - Expanding Force - TM218
  (436, 43600, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 3),
  -- Bronzor - Metal Sound - TM223
  (436, 43600, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 4),
  -- Bronzong - Psych Up - TM203
  (437, 43700, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Bronzong - Future Sight - TM217
  (437, 43700, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 2),
  -- Bronzong - Expanding Force - TM218
  (437, 43700, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 3),
  -- Bronzong - Meteor Beam - TM220
  (437, 43700, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 4),
  -- Bronzong - Metal Sound - TM223
  (437, 43700, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 5),
  -- Bronzong - Hard Press - TM225
  (437, 43700, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 6),
  -- Bronzong - Psychic Noise - TM228
  (437, 43700, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 7),
  -- Bonsly - Psych Up - TM203
  (438, 43800, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Bonsly - Double-Edge - TM204
  (438, 43800, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Bonsly - Curse - TM224
  (438, 43800, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Spiritomb - Pain Split - TM202
  (442, 44200, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Spiritomb - Curse - TM224
  (442, 44200, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 2),
  -- Gible - Double-Edge - TM204
  (443, 44300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Gible - Scorching Sands - TM215
  (443, 44300, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 2),
  -- Gible - Dragon Cheer - TM226
  (443, 44300, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 3),
  -- Gabite - Double-Edge - TM204
  (444, 44400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Gabite - Scorching Sands - TM215
  (444, 44400, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 2),
  -- Gabite - Breaking Swipe - TM222
  (444, 44400, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 3),
  -- Gabite - Dragon Cheer - TM226
  (444, 44400, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 4),
  -- Garchomp - Double-Edge - TM204
  (445, 44500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Garchomp - Scorching Sands - TM215
  (445, 44500, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 2),
  -- Garchomp - Breaking Swipe - TM222
  (445, 44500, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 3),
  -- Garchomp - Dragon Cheer - TM226
  (445, 44500, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 4),
  -- Munchlax - Double-Edge - TM204
  (446, 44600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Munchlax - Curse - TM224
  (446, 44600, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 2),
  -- Riolu - Psych Up - TM203
  (447, 44700, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Riolu - Coaching - TM213
  (447, 44700, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 2),
  -- Riolu - Upper Hand - TM229
  (447, 44700, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 3),
  -- Lucario - Psych Up - TM203
  (448, 44800, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Lucario - Coaching - TM213
  (448, 44800, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 2),
  -- Lucario - Metal Sound - TM223
  (448, 44800, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 3),
  -- Lucario - Upper Hand - TM229
  (448, 44800, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 4),
  -- Hippopotas - Double-Edge - TM204
  (449, 44900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Hippopotas - Muddy Water - TM209
  (449, 44900, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 2),
  -- Hippopotas - Scorching Sands - TM215
  (449, 44900, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 3),
  -- Hippopotas - Curse - TM224
  (449, 44900, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Hippowdon - Double-Edge - TM204
  (450, 45000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Hippowdon - Muddy Water - TM209
  (450, 45000, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 2),
  -- Hippowdon - Scorching Sands - TM215
  (450, 45000, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 3),
  -- Hippowdon - Curse - TM224
  (450, 45000, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Hippowdon - Hard Press - TM225
  (450, 45000, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 5);
