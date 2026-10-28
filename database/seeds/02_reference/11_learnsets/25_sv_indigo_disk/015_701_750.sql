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
-- The Indigo Disk learnset delta rows for species 701-750.
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
  -- Hawlucha - Endeavor - TM205
  (701, 70100, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Hawlucha - Coaching - TM213
  (701, 70100, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 2),
  -- Hawlucha - Feather Dance - TM216
  (701, 70100, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 3),
  -- Hawlucha - Throat Chop - TM221
  (701, 70100, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Hawlucha - Upper Hand - TM229
  (701, 70100, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 5),
  -- Dedenne - Endeavor - TM205
  (702, 70200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Dedenne - Electroweb - TM211
  (702, 70200, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 2),
  -- Carbink - Psych Up - TM203
  (703, 70300, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Carbink - Double-Edge - TM204
  (703, 70300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Carbink - Endeavor - TM205
  (703, 70300, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Carbink - Meteor Beam - TM220
  (703, 70300, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 4),
  -- Goomy - Muddy Water - TM209
  (704, 70400, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 1),
  -- Goomy - Sludge Wave - TM214
  (704, 70400, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 2),
  -- Goomy - Skitter Smack - TM219
  (704, 70400, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 3),
  -- Goomy - Curse - TM224
  (704, 70400, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Sliggoo - Muddy Water - TM209
  (705, 70500, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 1),
  -- Sliggoo - Sludge Wave - TM214
  (705, 70500, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 2),
  -- Sliggoo - Skitter Smack - TM219
  (705, 70500, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 3),
  -- Sliggoo - Curse - TM224
  (705, 70500, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Sliggoo (Hisuian Sliggoo) - Muddy Water - TM209
  (705, 70501, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 1),
  -- Sliggoo (Hisuian Sliggoo) - Sludge Wave - TM214
  (705, 70501, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 2),
  -- Sliggoo (Hisuian Sliggoo) - Skitter Smack - TM219
  (705, 70501, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 3),
  -- Sliggoo (Hisuian Sliggoo) - Curse - TM224
  (705, 70501, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Goodra - Muddy Water - TM209
  (706, 70600, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 1),
  -- Goodra - Sludge Wave - TM214
  (706, 70600, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 2),
  -- Goodra - Skitter Smack - TM219
  (706, 70600, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 3),
  -- Goodra - Breaking Swipe - TM222
  (706, 70600, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 4),
  -- Goodra - Curse - TM224
  (706, 70600, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Goodra - Dragon Cheer - TM226
  (706, 70600, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 6),
  -- Goodra (Hisuian Goodra) - Muddy Water - TM209
  (706, 70601, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 1),
  -- Goodra (Hisuian Goodra) - Sludge Wave - TM214
  (706, 70601, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 2),
  -- Goodra (Hisuian Goodra) - Skitter Smack - TM219
  (706, 70601, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 3),
  -- Goodra (Hisuian Goodra) - Breaking Swipe - TM222
  (706, 70601, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 4),
  -- Goodra (Hisuian Goodra) - Curse - TM224
  (706, 70601, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Goodra (Hisuian Goodra) - Dragon Cheer - TM226
  (706, 70601, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 6),
  -- Klefki - Psych Up - TM203
  (707, 70700, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Klefki - Skitter Smack - TM219
  (707, 70700, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2),
  -- Klefki - Metal Sound - TM223
  (707, 70700, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 3),
  -- Phantump - Pain Split - TM202
  (708, 70800, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Phantump - Psych Up - TM203
  (708, 70800, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Phantump - Skitter Smack - TM219
  (708, 70800, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 3),
  -- Phantump - Curse - TM224
  (708, 70800, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Trevenant - Pain Split - TM202
  (709, 70900, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Trevenant - Psych Up - TM203
  (709, 70900, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Trevenant - Skitter Smack - TM219
  (709, 70900, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 3),
  -- Trevenant - Curse - TM224
  (709, 70900, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Trevenant - Psychic Noise - TM228
  (709, 70900, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 5),
  -- Bergmite - Double-Edge - TM204
  (712, 71200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Bergmite - Curse - TM224
  (712, 71200, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 2),
  -- Avalugg - Double-Edge - TM204
  (713, 71300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Avalugg - Curse - TM224
  (713, 71300, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 2),
  -- Avalugg (Hisuian Avalugg) - Double-Edge - TM204
  (713, 71301, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Avalugg (Hisuian Avalugg) - Meteor Beam - TM220
  (713, 71301, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 2),
  -- Avalugg (Hisuian Avalugg) - Curse - TM224
  (713, 71301, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Avalugg (Hisuian Avalugg) - Hard Press - TM225
  (713, 71301, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 4),
  -- Noibat - Double-Edge - TM204
  (714, 71400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Noibat - Breaking Swipe - TM222
  (714, 71400, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 2),
  -- Noibat - Dragon Cheer - TM226
  (714, 71400, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 3),
  -- Noibat - Psychic Noise - TM228
  (714, 71400, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 4),
  -- Noivern - Double-Edge - TM204
  (715, 71500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Noivern - Breaking Swipe - TM222
  (715, 71500, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 2),
  -- Noivern - Dragon Cheer - TM226
  (715, 71500, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 3),
  -- Noivern - Psychic Noise - TM228
  (715, 71500, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 4),
  -- Diancie - Psych Up - TM203
  (719, 71900, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Diancie - Endeavor - TM205
  (719, 71900, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Diancie - Scorching Sands - TM215
  (719, 71900, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 3),
  -- Diancie - Meteor Beam - TM220
  (719, 71900, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 4),
  -- Hoopa - Psych Up - TM203
  (720, 72000, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Hoopa - Future Sight - TM217
  (720, 72000, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 2),
  -- Hoopa - Expanding Force - TM218
  (720, 72000, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 3),
  -- Hoopa - Skitter Smack - TM219
  (720, 72000, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 4),
  -- Hoopa - Throat Chop - TM221
  (720, 72000, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 5),
  -- Hoopa - Psychic Noise - TM228
  (720, 72000, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 6),
  -- Hoopa (Unbound) - Psych Up - TM203
  (720, 72001, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Hoopa (Unbound) - Future Sight - TM217
  (720, 72001, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 2),
  -- Hoopa (Unbound) - Expanding Force - TM218
  (720, 72001, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 3),
  -- Hoopa (Unbound) - Skitter Smack - TM219
  (720, 72001, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 4),
  -- Hoopa (Unbound) - Throat Chop - TM221
  (720, 72001, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 5),
  -- Hoopa (Unbound) - Psychic Noise - TM228
  (720, 72001, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 6),
  -- Volcanion - Double-Edge - TM204
  (721, 72100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Volcanion - Sludge Wave - TM214
  (721, 72100, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 2),
  -- Volcanion - Scorching Sands - TM215
  (721, 72100, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 3),
  -- Rowlet - Feather Dance - TM216
  (722, 72200, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 1),
  -- Dartrix - Feather Dance - TM216
  (723, 72300, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 1),
  -- Decidueye - Feather Dance - TM216
  (724, 72400, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 1),
  -- Decidueye - Skitter Smack - TM219
  (724, 72400, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2),
  -- Decidueye - Curse - TM224
  (724, 72400, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Decidueye (Hisuian Decidueye) - Coaching - TM213
  (724, 72401, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 1),
  -- Decidueye (Hisuian Decidueye) - Feather Dance - TM216
  (724, 72401, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 2),
  -- Decidueye (Hisuian Decidueye) - Upper Hand - TM229
  (724, 72401, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 3),
  -- Litten - Roar - TM172
  (725, 72500, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Litten - Double-Edge - TM204
  (725, 72500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Litten - Endeavor - TM205
  (725, 72500, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Litten - Temper Flare - TM207
  (725, 72500, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 4),
  -- Torracat - Roar - TM172
  (726, 72600, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Torracat - Double-Edge - TM204
  (726, 72600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Torracat - Endeavor - TM205
  (726, 72600, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Torracat - Temper Flare - TM207
  (726, 72600, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 4),
  -- Incineroar - Roar - TM172
  (727, 72700, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Incineroar - Knock Off - TM181
  (727, 72700, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Incineroar - Heat Crash - TM189
  (727, 72700, 535, 25, NULL, 2, NULL, NULL, 24002189, NULL, 3),
  -- Incineroar - Focus Punch - TM192
  (727, 72700, 264, 25, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Incineroar - Burning Jealousy - TM195
  (727, 72700, 807, 25, NULL, 2, NULL, NULL, 24002195, NULL, 5),
  -- Incineroar - Lash Out - TM199
  (727, 72700, 808, 25, NULL, 2, NULL, NULL, 24002199, NULL, 6),
  -- Incineroar - Double-Edge - TM204
  (727, 72700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 7),
  -- Incineroar - Endeavor - TM205
  (727, 72700, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 8),
  -- Incineroar - Temper Flare - TM207
  (727, 72700, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 9),
  -- Incineroar - Scorching Sands - TM215
  (727, 72700, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 10),
  -- Incineroar - Throat Chop - TM221
  (727, 72700, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 11),
  -- Popplio - Uproar - TM191
  (728, 72800, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 1),
  -- Popplio - Flip Turn - TM196
  (728, 72800, 812, 25, NULL, 2, NULL, NULL, 24002196, NULL, 2),
  -- Popplio - Whirlpool - TM208
  (728, 72800, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 3),
  -- Popplio - Triple Axel - TM212
  (728, 72800, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 4),
  -- Brionne - Uproar - TM191
  (729, 72900, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 1),
  -- Brionne - Flip Turn - TM196
  (729, 72900, 812, 25, NULL, 2, NULL, NULL, 24002196, NULL, 2),
  -- Brionne - Whirlpool - TM208
  (729, 72900, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 3),
  -- Brionne - Triple Axel - TM212
  (729, 72900, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 4),
  -- Primarina - Haze - TM174
  (730, 73000, 114, 25, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Primarina - Uproar - TM191
  (730, 73000, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 2),
  -- Primarina - Weather Ball - TM193
  (730, 73000, 311, 25, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Primarina - Flip Turn - TM196
  (730, 73000, 812, 25, NULL, 2, NULL, NULL, 24002196, NULL, 4),
  -- Primarina - Misty Explosion - TM201
  (730, 73000, 802, 25, NULL, 2, NULL, NULL, 24002201, NULL, 5),
  -- Primarina - Psych Up - TM203
  (730, 73000, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 6),
  -- Primarina - Whirlpool - TM208
  (730, 73000, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 7),
  -- Primarina - Triple Axel - TM212
  (730, 73000, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 8),
  -- Primarina - Alluring Voice - TM227
  (730, 73000, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 9),
  -- Primarina - Psychic Noise - TM228
  (730, 73000, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 10),
  -- Pikipek - Smack Down - TM179
  (731, 73100, 479, 25, NULL, 2, NULL, NULL, 24002179, NULL, 1),
  -- Pikipek - Knock Off - TM181
  (731, 73100, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Pikipek - Uproar - TM191
  (731, 73100, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Pikipek - Dual Wingbeat - TM197
  (731, 73100, 814, 25, NULL, 2, NULL, NULL, 24002197, NULL, 4),
  -- Pikipek - Endeavor - TM205
  (731, 73100, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 5),
  -- Pikipek - Feather Dance - TM216
  (731, 73100, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 6),
  -- Trumbeak - Smack Down - TM179
  (732, 73200, 479, 25, NULL, 2, NULL, NULL, 24002179, NULL, 1),
  -- Trumbeak - Knock Off - TM181
  (732, 73200, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Trumbeak - Uproar - TM191
  (732, 73200, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Trumbeak - Dual Wingbeat - TM197
  (732, 73200, 814, 25, NULL, 2, NULL, NULL, 24002197, NULL, 4),
  -- Trumbeak - Endeavor - TM205
  (732, 73200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 5),
  -- Trumbeak - Feather Dance - TM216
  (732, 73200, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 6),
  -- Toucannon - Smack Down - TM179
  (733, 73300, 479, 25, NULL, 2, NULL, NULL, 24002179, NULL, 1),
  -- Toucannon - Knock Off - TM181
  (733, 73300, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Toucannon - Uproar - TM191
  (733, 73300, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Toucannon - Dual Wingbeat - TM197
  (733, 73300, 814, 25, NULL, 2, NULL, NULL, 24002197, NULL, 4),
  -- Toucannon - Psych Up - TM203
  (733, 73300, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 5),
  -- Toucannon - Endeavor - TM205
  (733, 73300, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 6),
  -- Toucannon - Temper Flare - TM207
  (733, 73300, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 7),
  -- Toucannon - Feather Dance - TM216
  (733, 73300, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 8),
  -- Toucannon - Throat Chop - TM221
  (733, 73300, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 9),
  -- Yungoos - Double-Edge - TM204
  (734, 73400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Yungoos - Endeavor - TM205
  (734, 73400, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Gumshoos - Double-Edge - TM204
  (735, 73500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Gumshoos - Endeavor - TM205
  (735, 73500, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Gumshoos - Curse - TM224
  (735, 73500, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Grubbin - Electroweb - TM211
  (736, 73600, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 1),
  -- Grubbin - Skitter Smack - TM219
  (736, 73600, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2),
  -- Charjabug - Electroweb - TM211
  (737, 73700, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 1),
  -- Charjabug - Skitter Smack - TM219
  (737, 73700, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2),
  -- Vikavolt - Supercell Slam - TM210
  (738, 73800, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 1),
  -- Vikavolt - Electroweb - TM211
  (738, 73800, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 2),
  -- Vikavolt - Skitter Smack - TM219
  (738, 73800, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 3),
  -- Crabrawler - Endeavor - TM205
  (739, 73900, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Crabrawler - Coaching - TM213
  (739, 73900, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 2),
  -- Crabrawler - Upper Hand - TM229
  (739, 73900, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 3),
  -- Crabominable - Endeavor - TM205
  (740, 74000, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Crabominable - Coaching - TM213
  (740, 74000, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 2),
  -- Crabominable - Hard Press - TM225
  (740, 74000, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 3),
  -- Crabominable - Upper Hand - TM229
  (740, 74000, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 4),
  -- Oricorio - Psych Up - TM203
  (741, 74100, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Oricorio - Feather Dance - TM216
  (741, 74100, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 2),
  -- Oricorio - Alluring Voice - TM227
  (741, 74100, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 3),
  -- Cutiefly - Psych Up - TM203
  (742, 74200, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Cutiefly - Skitter Smack - TM219
  (742, 74200, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2),
  -- Ribombee - Psych Up - TM203
  (743, 74300, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Ribombee - Skitter Smack - TM219
  (743, 74300, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2),
  -- Ribombee - Alluring Voice - TM227
  (743, 74300, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 3),
  -- Ribombee - Psychic Noise - TM228
  (743, 74300, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 4),
  -- Rockruff - Double-Edge - TM204
  (744, 74400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Rockruff - Endeavor - TM205
  (744, 74400, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Lycanroc - Double-Edge - TM204
  (745, 74500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Lycanroc - Endeavor - TM205
  (745, 74500, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Lycanroc (Midnight) - Double-Edge - TM204
  (745, 74501, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Lycanroc (Midnight) - Endeavor - TM205
  (745, 74501, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Lycanroc (Midnight) - Throat Chop - TM221
  (745, 74501, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Lycanroc (Midnight) - Upper Hand - TM229
  (745, 74501, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 4),
  -- Lycanroc (Dusk) - Double-Edge - TM204
  (745, 74502, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Lycanroc (Dusk) - Endeavor - TM205
  (745, 74502, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Lycanroc (Dusk) - Throat Chop - TM221
  (745, 74502, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Mareanie - Pain Split - TM202
  (747, 74700, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Mareanie - Muddy Water - TM209
  (747, 74700, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 2),
  -- Mareanie - Sludge Wave - TM214
  (747, 74700, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 3),
  -- Toxapex - Pain Split - TM202
  (748, 74800, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Toxapex - Muddy Water - TM209
  (748, 74800, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 2),
  -- Toxapex - Sludge Wave - TM214
  (748, 74800, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 3),
  -- Mudbray - Double-Edge - TM204
  (749, 74900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Mudbray - Endeavor - TM205
  (749, 74900, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Mudbray - Curse - TM224
  (749, 74900, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Mudsdale - Double-Edge - TM204
  (750, 75000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Mudsdale - Endeavor - TM205
  (750, 75000, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Mudsdale - Curse - TM224
  (750, 75000, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3);
