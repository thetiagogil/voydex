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
-- The Indigo Disk learnset delta rows for species 601-650.
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
  -- Eelektrik - Electroweb - TM211
  (603, 60300, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 1),
  -- Eelektrik - Throat Chop - TM221
  (603, 60300, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 2),
  -- Eelektross - Supercell Slam - TM210
  (604, 60400, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 1),
  -- Eelektross - Electroweb - TM211
  (604, 60400, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 2),
  -- Eelektross - Throat Chop - TM221
  (604, 60400, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Litwick - Pain Split - TM202
  (607, 60700, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Litwick - Psych Up - TM203
  (607, 60700, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Litwick - Temper Flare - TM207
  (607, 60700, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 3),
  -- Litwick - Skitter Smack - TM219
  (607, 60700, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 4),
  -- Litwick - Curse - TM224
  (607, 60700, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Lampent - Pain Split - TM202
  (608, 60800, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Lampent - Psych Up - TM203
  (608, 60800, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Lampent - Temper Flare - TM207
  (608, 60800, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 3),
  -- Lampent - Skitter Smack - TM219
  (608, 60800, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 4),
  -- Lampent - Curse - TM224
  (608, 60800, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Chandelure - Pain Split - TM202
  (609, 60900, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Chandelure - Psych Up - TM203
  (609, 60900, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Chandelure - Temper Flare - TM207
  (609, 60900, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 3),
  -- Chandelure - Skitter Smack - TM219
  (609, 60900, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 4),
  -- Chandelure - Curse - TM224
  (609, 60900, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Axew - Double-Edge - TM204
  (610, 61000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Axew - Endeavor - TM205
  (610, 61000, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Axew - Breaking Swipe - TM222
  (610, 61000, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 3),
  -- Axew - Dragon Cheer - TM226
  (610, 61000, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 4),
  -- Fraxure - Double-Edge - TM204
  (611, 61100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Fraxure - Endeavor - TM205
  (611, 61100, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Fraxure - Breaking Swipe - TM222
  (611, 61100, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 3),
  -- Fraxure - Dragon Cheer - TM226
  (611, 61100, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 4),
  -- Haxorus - Double-Edge - TM204
  (612, 61200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Haxorus - Endeavor - TM205
  (612, 61200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Haxorus - Breaking Swipe - TM222
  (612, 61200, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 3),
  -- Haxorus - Dragon Cheer - TM226
  (612, 61200, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 4),
  -- Cubchoo - Endeavor - TM205
  (613, 61300, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Beartic - Double-Edge - TM204
  (614, 61400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Beartic - Endeavor - TM205
  (614, 61400, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Beartic - Throat Chop - TM221
  (614, 61400, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Beartic - Curse - TM224
  (614, 61400, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Beartic - Hard Press - TM225
  (614, 61400, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 5),
  -- Cryogonal - Triple Axel - TM212
  (615, 61500, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 1),
  -- Mienfoo - Psych Up - TM203
  (619, 61900, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Mienfoo - Coaching - TM213
  (619, 61900, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 2),
  -- Mienfoo - Upper Hand - TM229
  (619, 61900, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 3),
  -- Mienshao - Psych Up - TM203
  (620, 62000, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Mienshao - Double-Edge - TM204
  (620, 62000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Mienshao - Triple Axel - TM212
  (620, 62000, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 3),
  -- Mienshao - Coaching - TM213
  (620, 62000, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 4),
  -- Mienshao - Upper Hand - TM229
  (620, 62000, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 5),
  -- Golett - Gravity - TM178
  (622, 62200, 356, 25, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Golett - Smack Down - TM179
  (622, 62200, 479, 25, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Golett - Gyro Ball - TM180
  (622, 62200, 360, 25, NULL, 2, NULL, NULL, 24002180, NULL, 3),
  -- Golett - Knock Off - TM181
  (622, 62200, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 4),
  -- Golett - Focus Punch - TM192
  (622, 62200, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 5),
  -- Golett - Poltergeist - TM198
  (622, 62200, 809, 25, NULL, 2, NULL, NULL, 24002198, NULL, 6),
  -- Golett - Psych Up - TM203
  (622, 62200, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 7),
  -- Golett - Double-Edge - TM204
  (622, 62200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 8),
  -- Golett - Scorching Sands - TM215
  (622, 62200, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 9),
  -- Golett - Curse - TM224
  (622, 62200, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 10),
  -- Golurk - Gravity - TM178
  (623, 62300, 356, 25, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Golurk - Smack Down - TM179
  (623, 62300, 479, 25, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Golurk - Gyro Ball - TM180
  (623, 62300, 360, 25, NULL, 2, NULL, NULL, 24002180, NULL, 3),
  -- Golurk - Knock Off - TM181
  (623, 62300, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 4),
  -- Golurk - High Horsepower - TM186
  (623, 62300, 667, 25, NULL, 2, NULL, NULL, 24002186, NULL, 5),
  -- Golurk - Heat Crash - TM189
  (623, 62300, 535, 25, NULL, 2, NULL, NULL, 24002189, NULL, 6),
  -- Golurk - Focus Punch - TM192
  (623, 62300, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 7),
  -- Golurk - Poltergeist - TM198
  (623, 62300, 809, 25, NULL, 2, NULL, NULL, 24002198, NULL, 8),
  -- Golurk - Psych Up - TM203
  (623, 62300, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 9),
  -- Golurk - Double-Edge - TM204
  (623, 62300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 10),
  -- Golurk - Scorching Sands - TM215
  (623, 62300, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 11),
  -- Golurk - Curse - TM224
  (623, 62300, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 12),
  -- Golurk - Hard Press - TM225
  (623, 62300, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 13),
  -- Pawniard - Metal Sound - TM223
  (624, 62400, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 1),
  -- Bisharp - Throat Chop - TM221
  (625, 62500, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 1),
  -- Bisharp - Metal Sound - TM223
  (625, 62500, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 2),
  -- Rufflet - Double-Edge - TM204
  (627, 62700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Rufflet - Feather Dance - TM216
  (627, 62700, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 2),
  -- Braviary - Double-Edge - TM204
  (628, 62800, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Braviary - Feather Dance - TM216
  (628, 62800, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 2),
  -- Braviary (Hisuian Braviary) - Psych Up - TM203
  (628, 62801, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Braviary (Hisuian Braviary) - Double-Edge - TM204
  (628, 62801, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Braviary (Hisuian Braviary) - Feather Dance - TM216
  (628, 62801, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 3),
  -- Braviary (Hisuian Braviary) - Future Sight - TM217
  (628, 62801, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 4),
  -- Braviary (Hisuian Braviary) - Expanding Force - TM218
  (628, 62801, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 5),
  -- Braviary (Hisuian Braviary) - Psychic Noise - TM228
  (628, 62801, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 6),
  -- Vullaby - Psych Up - TM203
  (629, 62900, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Vullaby - Double-Edge - TM204
  (629, 62900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Vullaby - Feather Dance - TM216
  (629, 62900, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 3),
  -- Vullaby - Throat Chop - TM221
  (629, 62900, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Mandibuzz - Psych Up - TM203
  (630, 63000, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Mandibuzz - Double-Edge - TM204
  (630, 63000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Mandibuzz - Feather Dance - TM216
  (630, 63000, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 3),
  -- Mandibuzz - Throat Chop - TM221
  (630, 63000, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Deino - Psych Up - TM203
  (633, 63300, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Deino - Dragon Cheer - TM226
  (633, 63300, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 2),
  -- Zweilous - Psych Up - TM203
  (634, 63400, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Zweilous - Dragon Cheer - TM226
  (634, 63400, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 2),
  -- Hydreigon - Psych Up - TM203
  (635, 63500, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Hydreigon - Throat Chop - TM221
  (635, 63500, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 2),
  -- Hydreigon - Breaking Swipe - TM222
  (635, 63500, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 3),
  -- Hydreigon - Dragon Cheer - TM226
  (635, 63500, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 4),
  -- Larvesta - Double-Edge - TM204
  (636, 63600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Larvesta - Skitter Smack - TM219
  (636, 63600, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2),
  -- Volcarona - Double-Edge - TM204
  (637, 63700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Volcarona - Skitter Smack - TM219
  (637, 63700, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2),
  -- Cobalion - Psych Up - TM203
  (638, 63800, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Cobalion - Double-Edge - TM204
  (638, 63800, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Cobalion - Coaching - TM213
  (638, 63800, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 3),
  -- Cobalion - Metal Sound - TM223
  (638, 63800, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 4),
  -- Cobalion - Upper Hand - TM229
  (638, 63800, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 5),
  -- Terrakion - Psych Up - TM203
  (639, 63900, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Terrakion - Double-Edge - TM204
  (639, 63900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Terrakion - Coaching - TM213
  (639, 63900, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 3),
  -- Terrakion - Upper Hand - TM229
  (639, 63900, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 4),
  -- Virizion - Psych Up - TM203
  (640, 64000, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Virizion - Double-Edge - TM204
  (640, 64000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Virizion - Coaching - TM213
  (640, 64000, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 3),
  -- Virizion - Upper Hand - TM229
  (640, 64000, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 4),
  -- Tornadus - Sludge Wave - TM214
  (641, 64100, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 1),
  -- Tornadus (Therian) - Sludge Wave - TM214
  (641, 64101, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 1),
  -- Thundurus - Supercell Slam - TM210
  (642, 64200, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 1),
  -- Thundurus - Electroweb - TM211
  (642, 64200, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 2),
  -- Thundurus - Sludge Wave - TM214
  (642, 64200, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 3),
  -- Thundurus (Therian) - Supercell Slam - TM210
  (642, 64201, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 1),
  -- Thundurus (Therian) - Electroweb - TM211
  (642, 64201, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 2),
  -- Thundurus (Therian) - Sludge Wave - TM214
  (642, 64201, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 3),
  -- Reshiram - Double-Edge - TM204
  (643, 64300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Reshiram - Scorching Sands - TM215
  (643, 64300, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 2),
  -- Reshiram - Breaking Swipe - TM222
  (643, 64300, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 3),
  -- Reshiram - Dragon Cheer - TM226
  (643, 64300, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 4),
  -- Zekrom - Double-Edge - TM204
  (644, 64400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Zekrom - Supercell Slam - TM210
  (644, 64400, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 2),
  -- Zekrom - Breaking Swipe - TM222
  (644, 64400, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 3),
  -- Zekrom - Dragon Cheer - TM226
  (644, 64400, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 4),
  -- Landorus - Sludge Wave - TM214
  (645, 64500, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 1),
  -- Landorus - Scorching Sands - TM215
  (645, 64500, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 2),
  -- Landorus (Therian) - Sludge Wave - TM214
  (645, 64501, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 1),
  -- Landorus (Therian) - Scorching Sands - TM215
  (645, 64501, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 2),
  -- Kyurem - Endeavor - TM205
  (646, 64600, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Kyurem - Breaking Swipe - TM222
  (646, 64600, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 2),
  -- Kyurem - Dragon Cheer - TM226
  (646, 64600, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 3),
  -- Kyurem (White) - Endeavor - TM205
  (646, 64601, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Kyurem (White) - Breaking Swipe - TM222
  (646, 64601, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 2),
  -- Kyurem (White) - Dragon Cheer - TM226
  (646, 64601, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 3),
  -- Kyurem (Black) - Endeavor - TM205
  (646, 64602, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Kyurem (Black) - Breaking Swipe - TM222
  (646, 64602, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 2),
  -- Kyurem (Black) - Dragon Cheer - TM226
  (646, 64602, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 3),
  -- Keldeo - Pain Split - TM202
  (647, 64700, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Keldeo - Psych Up - TM203
  (647, 64700, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Keldeo - Double-Edge - TM204
  (647, 64700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 3),
  -- Keldeo - Muddy Water - TM209
  (647, 64700, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 4),
  -- Keldeo - Coaching - TM213
  (647, 64700, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 5),
  -- Keldeo - Upper Hand - TM229
  (647, 64700, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 6),
  -- Meloetta - Psych Up - TM203
  (648, 64800, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Meloetta - Triple Axel - TM212
  (648, 64800, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 2),
  -- Meloetta - Coaching - TM213
  (648, 64800, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 3),
  -- Meloetta - Alluring Voice - TM227
  (648, 64800, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 4),
  -- Chespin - Pain Split - TM202
  (650, 65000, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Chespin - Endeavor - TM205
  (650, 65000, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Chespin - Curse - TM224
  (650, 65000, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3);
