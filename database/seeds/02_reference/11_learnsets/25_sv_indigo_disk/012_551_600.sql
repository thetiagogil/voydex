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
-- The Indigo Disk learnset delta rows for species 551-600.
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
  -- Sandile - Double-Edge - TM204
  (551, 55100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Sandile - Scorching Sands - TM215
  (551, 55100, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 2),
  -- Sandile - Skitter Smack - TM219
  (551, 55100, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 3),
  -- Sandile - Curse - TM224
  (551, 55100, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Krokorok - Double-Edge - TM204
  (552, 55200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Krokorok - Endeavor - TM205
  (552, 55200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Krokorok - Scorching Sands - TM215
  (552, 55200, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 3),
  -- Krokorok - Skitter Smack - TM219
  (552, 55200, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 4),
  -- Krokorok - Breaking Swipe - TM222
  (552, 55200, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 5),
  -- Krokorok - Curse - TM224
  (552, 55200, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 6),
  -- Krookodile - Double-Edge - TM204
  (553, 55300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Krookodile - Endeavor - TM205
  (553, 55300, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Krookodile - Scorching Sands - TM215
  (553, 55300, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 3),
  -- Krookodile - Skitter Smack - TM219
  (553, 55300, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 4),
  -- Krookodile - Throat Chop - TM221
  (553, 55300, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 5),
  -- Krookodile - Breaking Swipe - TM222
  (553, 55300, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 6),
  -- Krookodile - Curse - TM224
  (553, 55300, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 7),
  -- Scraggy - Roar - TM172
  (559, 55900, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Scraggy - Smack Down - TM179
  (559, 55900, 479, 25, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Scraggy - Knock Off - TM181
  (559, 55900, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Scraggy - Super Fang - TM183
  (559, 55900, 162, 25, NULL, 2, NULL, NULL, 24002183, NULL, 4),
  -- Scraggy - Uproar - TM191
  (559, 55900, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 5),
  -- Scraggy - Focus Punch - TM192
  (559, 55900, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 6),
  -- Scraggy - Lash Out - TM199
  (559, 55900, 808, 25, NULL, 2, NULL, NULL, 24002199, NULL, 7),
  -- Scraggy - Double-Edge - TM204
  (559, 55900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 8),
  -- Scraggy - Endeavor - TM205
  (559, 55900, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 9),
  -- Scraggy - Coaching - TM213
  (559, 55900, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 10),
  -- Scraggy - Throat Chop - TM221
  (559, 55900, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 11),
  -- Scraggy - Curse - TM224
  (559, 55900, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 12),
  -- Scraggy - Upper Hand - TM229
  (559, 55900, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 13),
  -- Scrafty - Roar - TM172
  (560, 56000, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Scrafty - Spite - TM177
  (560, 56000, 180, 25, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Scrafty - Smack Down - TM179
  (560, 56000, 479, 25, NULL, 2, NULL, NULL, 24002179, NULL, 3),
  -- Scrafty - Knock Off - TM181
  (560, 56000, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 4),
  -- Scrafty - Super Fang - TM183
  (560, 56000, 162, 25, NULL, 2, NULL, NULL, 24002183, NULL, 5),
  -- Scrafty - Uproar - TM191
  (560, 56000, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 6),
  -- Scrafty - Focus Punch - TM192
  (560, 56000, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 7),
  -- Scrafty - Lash Out - TM199
  (560, 56000, 808, 25, NULL, 2, NULL, NULL, 24002199, NULL, 8),
  -- Scrafty - Double-Edge - TM204
  (560, 56000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 9),
  -- Scrafty - Endeavor - TM205
  (560, 56000, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 10),
  -- Scrafty - Coaching - TM213
  (560, 56000, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 11),
  -- Scrafty - Throat Chop - TM221
  (560, 56000, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 12),
  -- Scrafty - Curse - TM224
  (560, 56000, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 13),
  -- Scrafty - Upper Hand - TM229
  (560, 56000, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 14),
  -- Zorua - Pain Split - TM202
  (570, 57000, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Zorua - Psych Up - TM203
  (570, 57000, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Zorua - Skitter Smack - TM219
  (570, 57000, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 3),
  -- Zorua (Hisuian Zorua) - Pain Split - TM202
  (570, 57001, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Zorua (Hisuian Zorua) - Psych Up - TM203
  (570, 57001, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Zorua (Hisuian Zorua) - Skitter Smack - TM219
  (570, 57001, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 3),
  -- Zorua (Hisuian Zorua) - Curse - TM224
  (570, 57001, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Zoroark - Pain Split - TM202
  (571, 57100, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Zoroark - Psych Up - TM203
  (571, 57100, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Zoroark - Skitter Smack - TM219
  (571, 57100, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 3),
  -- Zoroark - Throat Chop - TM221
  (571, 57100, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Zoroark (Hisuian Zoroark) - Pain Split - TM202
  (571, 57101, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Zoroark (Hisuian Zoroark) - Psych Up - TM203
  (571, 57101, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Zoroark (Hisuian Zoroark) - Skitter Smack - TM219
  (571, 57101, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 3),
  -- Zoroark (Hisuian Zoroark) - Throat Chop - TM221
  (571, 57101, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Zoroark (Hisuian Zoroark) - Curse - TM224
  (571, 57101, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Minccino - Knock Off - TM181
  (572, 57200, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Minccino - Super Fang - TM183
  (572, 57200, 162, 25, NULL, 2, NULL, NULL, 24002183, NULL, 2),
  -- Minccino - Uproar - TM191
  (572, 57200, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Minccino - Endeavor - TM205
  (572, 57200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 4),
  -- Minccino - Triple Axel - TM212
  (572, 57200, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 5),
  -- Minccino - Alluring Voice - TM227
  (572, 57200, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 6),
  -- Cinccino - Knock Off - TM181
  (573, 57300, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Cinccino - Super Fang - TM183
  (573, 57300, 162, 25, NULL, 2, NULL, NULL, 24002183, NULL, 2),
  -- Cinccino - Uproar - TM191
  (573, 57300, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Cinccino - Double-Edge - TM204
  (573, 57300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 4),
  -- Cinccino - Endeavor - TM205
  (573, 57300, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 5),
  -- Cinccino - Triple Axel - TM212
  (573, 57300, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 6),
  -- Cinccino - Alluring Voice - TM227
  (573, 57300, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 7),
  -- Gothita - Psych Up - TM203
  (574, 57400, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Gothita - Future Sight - TM217
  (574, 57400, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 2),
  -- Gothita - Expanding Force - TM218
  (574, 57400, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 3),
  -- Gothita - Psychic Noise - TM228
  (574, 57400, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 4),
  -- Gothorita - Psych Up - TM203
  (575, 57500, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Gothorita - Future Sight - TM217
  (575, 57500, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 2),
  -- Gothorita - Expanding Force - TM218
  (575, 57500, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 3),
  -- Gothorita - Psychic Noise - TM228
  (575, 57500, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 4),
  -- Gothitelle - Psych Up - TM203
  (576, 57600, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Gothitelle - Future Sight - TM217
  (576, 57600, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 2),
  -- Gothitelle - Expanding Force - TM218
  (576, 57600, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 3),
  -- Gothitelle - Psychic Noise - TM228
  (576, 57600, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 4),
  -- Solosis - Gravity - TM178
  (577, 57700, 356, 25, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Solosis - Gyro Ball - TM180
  (577, 57700, 360, 25, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Solosis - Pain Split - TM202
  (577, 57700, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 3),
  -- Solosis - Psych Up - TM203
  (577, 57700, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 4),
  -- Solosis - Endeavor - TM205
  (577, 57700, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 5),
  -- Solosis - Future Sight - TM217
  (577, 57700, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 6),
  -- Solosis - Expanding Force - TM218
  (577, 57700, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 7),
  -- Duosion - Gravity - TM178
  (578, 57800, 356, 25, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Duosion - Gyro Ball - TM180
  (578, 57800, 360, 25, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Duosion - Pain Split - TM202
  (578, 57800, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 3),
  -- Duosion - Psych Up - TM203
  (578, 57800, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 4),
  -- Duosion - Endeavor - TM205
  (578, 57800, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 5),
  -- Duosion - Future Sight - TM217
  (578, 57800, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 6),
  -- Duosion - Expanding Force - TM218
  (578, 57800, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 7),
  -- Reuniclus - Gravity - TM178
  (579, 57900, 356, 25, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Reuniclus - Gyro Ball - TM180
  (579, 57900, 360, 25, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Reuniclus - Knock Off - TM181
  (579, 57900, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Reuniclus - Focus Punch - TM192
  (579, 57900, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Reuniclus - Pain Split - TM202
  (579, 57900, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 5),
  -- Reuniclus - Psych Up - TM203
  (579, 57900, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 6),
  -- Reuniclus - Endeavor - TM205
  (579, 57900, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 7),
  -- Reuniclus - Future Sight - TM217
  (579, 57900, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 8),
  -- Reuniclus - Expanding Force - TM218
  (579, 57900, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 9),
  -- Reuniclus - Psychic Noise - TM228
  (579, 57900, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 10),
  -- Ducklett - Double-Edge - TM204
  (580, 58000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Ducklett - Endeavor - TM205
  (580, 58000, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Ducklett - Whirlpool - TM208
  (580, 58000, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 3),
  -- Ducklett - Feather Dance - TM216
  (580, 58000, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 4),
  -- Swanna - Double-Edge - TM204
  (581, 58100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Swanna - Endeavor - TM205
  (581, 58100, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Swanna - Whirlpool - TM208
  (581, 58100, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 3),
  -- Swanna - Feather Dance - TM216
  (581, 58100, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 4),
  -- Swanna - Alluring Voice - TM227
  (581, 58100, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 5),
  -- Deerling - Double-Edge - TM204
  (585, 58500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Deerling - Endeavor - TM205
  (585, 58500, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Sawsbuck - Double-Edge - TM204
  (586, 58600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Sawsbuck - Endeavor - TM205
  (586, 58600, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Sawsbuck - Petal Blizzard - TM206
  (586, 58600, 572, 25, NULL, 2, NULL, NULL, 25002206, NULL, 3),
  -- Sawsbuck - Throat Chop - TM221
  (586, 58600, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Sawsbuck - Curse - TM224
  (586, 58600, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Alomomola - Pain Split - TM202
  (594, 59400, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Alomomola - Whirlpool - TM208
  (594, 59400, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Alomomola - Alluring Voice - TM227
  (594, 59400, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 3),
  -- Joltik - Bug Bite - TM182
  (595, 59500, 450, 25, NULL, 2, NULL, NULL, 24002182, NULL, 1),
  -- Joltik - Lunge - TM185
  (595, 59500, 679, 25, NULL, 2, NULL, NULL, 24002185, NULL, 2),
  -- Joltik - Electroweb - TM211
  (595, 59500, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 3),
  -- Joltik - Skitter Smack - TM219
  (595, 59500, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 4),
  -- Galvantula - Charge - TM173
  (596, 59600, 268, 25, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Galvantula - Bug Bite - TM182
  (596, 59600, 450, 25, NULL, 2, NULL, NULL, 24002182, NULL, 2),
  -- Galvantula - Lunge - TM185
  (596, 59600, 679, 25, NULL, 2, NULL, NULL, 24002185, NULL, 3),
  -- Galvantula - Electroweb - TM211
  (596, 59600, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 4),
  -- Galvantula - Skitter Smack - TM219
  (596, 59600, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 5),
  -- Galvantula - Throat Chop - TM221
  (596, 59600, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 6);
