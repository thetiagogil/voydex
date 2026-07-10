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
-- The Indigo Disk learnset delta rows for species 851-900.
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
  -- Sinistea - Curse - TM224
  (854, 85400, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 1),
  -- Polteageist - Pain Split - TM202
  (855, 85500, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Polteageist - Curse - TM224
  (855, 85500, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 2),
  -- Hatenna - Psych Up - TM203
  (856, 85600, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Hatenna - Future Sight - TM217
  (856, 85600, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 2),
  -- Hatenna - Expanding Force - TM218
  (856, 85600, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 3),
  -- Hattrem - Psych Up - TM203
  (857, 85700, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Hattrem - Future Sight - TM217
  (857, 85700, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 2),
  -- Hattrem - Expanding Force - TM218
  (857, 85700, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 3),
  -- Hatterene - Pain Split - TM202
  (858, 85800, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Hatterene - Psych Up - TM203
  (858, 85800, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Hatterene - Future Sight - TM217
  (858, 85800, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 3),
  -- Hatterene - Expanding Force - TM218
  (858, 85800, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 4),
  -- Hatterene - Psychic Noise - TM228
  (858, 85800, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 5),
  -- Impidimp - Throat Chop - TM221
  (859, 85900, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 1),
  -- Morgrem - Throat Chop - TM221
  (860, 86000, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 1),
  -- Grimmsnarl - Throat Chop - TM221
  (861, 86100, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 1),
  -- Perrserker - Double-Edge - TM204
  (863, 86300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Perrserker - Endeavor - TM205
  (863, 86300, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Perrserker - Throat Chop - TM221
  (863, 86300, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Perrserker - Metal Sound - TM223
  (863, 86300, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 4),
  -- Perrserker - Curse - TM224
  (863, 86300, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Alcremie - Misty Explosion - TM201
  (869, 86900, 802, 25, NULL, 2, NULL, NULL, 24002201, NULL, 1),
  -- Alcremie - Pain Split - TM202
  (869, 86900, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 2),
  -- Alcremie - Psych Up - TM203
  (869, 86900, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 3),
  -- Alcremie - Endeavor - TM205
  (869, 86900, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 4),
  -- Alcremie - Alluring Voice - TM227
  (869, 86900, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 5),
  -- Falinks - Psych Up - TM203
  (870, 87000, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Falinks - Endeavor - TM205
  (870, 87000, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Falinks - Coaching - TM213
  (870, 87000, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 3),
  -- Falinks - Throat Chop - TM221
  (870, 87000, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Falinks - Upper Hand - TM229
  (870, 87000, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 5),
  -- Pincurchin - Pain Split - TM202
  (871, 87100, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Pincurchin - Muddy Water - TM209
  (871, 87100, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 2),
  -- Pincurchin - Supercell Slam - TM210
  (871, 87100, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 3),
  -- Pincurchin - Electroweb - TM211
  (871, 87100, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 4),
  -- Pincurchin - Throat Chop - TM221
  (871, 87100, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 5),
  -- Pincurchin - Curse - TM224
  (871, 87100, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 6),
  -- Snom - Skitter Smack - TM219
  (872, 87200, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 1),
  -- Frosmoth - Triple Axel - TM212
  (873, 87300, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 1),
  -- Frosmoth - Feather Dance - TM216
  (873, 87300, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 2),
  -- Frosmoth - Skitter Smack - TM219
  (873, 87300, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 3),
  -- Stonjourner - Psych Up - TM203
  (874, 87400, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Stonjourner - Endeavor - TM205
  (874, 87400, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Stonjourner - Meteor Beam - TM220
  (874, 87400, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 3),
  -- Stonjourner - Curse - TM224
  (874, 87400, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Stonjourner - Hard Press - TM225
  (874, 87400, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 5),
  -- Eiscue - Double-Edge - TM204
  (875, 87500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Eiscue - Whirlpool - TM208
  (875, 87500, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Eiscue - Feather Dance - TM216
  (875, 87500, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 3),
  -- Indeedee - Psych Up - TM203
  (876, 87600, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Indeedee - Expanding Force - TM218
  (876, 87600, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 2),
  -- Indeedee - Psychic Noise - TM228
  (876, 87600, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 3),
  -- Indeedee (Female) - Psych Up - TM203
  (876, 87601, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Indeedee (Female) - Alluring Voice - TM227
  (876, 87601, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 2),
  -- Morpeko - Double-Edge - TM204
  (877, 87700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Morpeko - Endeavor - TM205
  (877, 87700, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Morpeko - Electroweb - TM211
  (877, 87700, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 3),
  -- Cufant - Double-Edge - TM204
  (878, 87800, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Cufant - Endeavor - TM205
  (878, 87800, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Cufant - Curse - TM224
  (878, 87800, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Copperajah - Double-Edge - TM204
  (879, 87900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Copperajah - Endeavor - TM205
  (879, 87900, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Copperajah - Supercell Slam - TM210
  (879, 87900, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 3),
  -- Copperajah - Curse - TM224
  (879, 87900, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Copperajah - Hard Press - TM225
  (879, 87900, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 5),
  -- Duraludon - Roar - TM172
  (884, 88400, 46, 25, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Duraludon - Gyro Ball - TM180
  (884, 88400, 360, 25, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Duraludon - Double-Edge - TM204
  (884, 88400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 3),
  -- Duraludon - Breaking Swipe - TM222
  (884, 88400, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 4),
  -- Duraludon - Metal Sound - TM223
  (884, 88400, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 5),
  -- Duraludon - Dragon Cheer - TM226
  (884, 88400, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 6),
  -- Dreepy - Curse - TM224
  (885, 88500, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 1),
  -- Drakloak - Double-Edge - TM204
  (886, 88600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Drakloak - Breaking Swipe - TM222
  (886, 88600, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 2),
  -- Drakloak - Curse - TM224
  (886, 88600, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Drakloak - Dragon Cheer - TM226
  (886, 88600, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 4),
  -- Dragapult - Double-Edge - TM204
  (887, 88700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Dragapult - Breaking Swipe - TM222
  (887, 88700, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 2),
  -- Dragapult - Curse - TM224
  (887, 88700, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Dragapult - Dragon Cheer - TM226
  (887, 88700, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 4),
  -- Zamazenta - Coaching - TM213
  (889, 88900, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 1),
  -- Eternatus - Sludge Wave - TM214
  (890, 89000, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 1),
  -- Eternatus - Meteor Beam - TM220
  (890, 89000, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 2),
  -- Kubfu - Double-Edge - TM204
  (891, 89100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Urshifu - Double-Edge - TM204
  (892, 89200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Urshifu - Coaching - TM213
  (892, 89200, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 2),
  -- Urshifu - Throat Chop - TM221
  (892, 89200, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Urshifu (Rapid Strike) - Double-Edge - TM204
  (892, 89201, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Urshifu (Rapid Strike) - Whirlpool - TM208
  (892, 89201, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Urshifu (Rapid Strike) - Coaching - TM213
  (892, 89201, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 3),
  -- Zarude - Double-Edge - TM204
  (893, 89300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Zarude - Petal Blizzard - TM206
  (893, 89300, 572, 25, NULL, 2, NULL, NULL, 25002206, NULL, 2),
  -- Zarude - Throat Chop - TM221
  (893, 89300, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Regieleki - Supercell Slam - TM210
  (894, 89400, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 1),
  -- Regieleki - Electroweb - TM211
  (894, 89400, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 2),
  -- Regidrago - Breaking Swipe - TM222
  (895, 89500, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 1),
  -- Regidrago - Dragon Cheer - TM226
  (895, 89500, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 2),
  -- Glastrier - Double-Edge - TM204
  (896, 89600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Glastrier - Throat Chop - TM221
  (896, 89600, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 2),
  -- Glastrier - Curse - TM224
  (896, 89600, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Spectrier - Pain Split - TM202
  (897, 89700, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Spectrier - Double-Edge - TM204
  (897, 89700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Spectrier - Curse - TM224
  (897, 89700, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Calyrex - Psych Up - TM203
  (898, 89800, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Calyrex - Future Sight - TM217
  (898, 89800, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 2),
  -- Calyrex - Expanding Force - TM218
  (898, 89800, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 3),
  -- Calyrex (Ice Rider) - Psych Up - TM203
  (898, 89801, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Calyrex (Ice Rider) - Double-Edge - TM204
  (898, 89801, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Calyrex (Ice Rider) - Future Sight - TM217
  (898, 89801, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 3),
  -- Calyrex (Ice Rider) - Expanding Force - TM218
  (898, 89801, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 4),
  -- Calyrex (Ice Rider) - Throat Chop - TM221
  (898, 89801, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 5),
  -- Calyrex (Ice Rider) - Curse - TM224
  (898, 89801, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 6),
  -- Calyrex (Shadow Rider) - Pain Split - TM202
  (898, 89802, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Calyrex (Shadow Rider) - Psych Up - TM203
  (898, 89802, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Calyrex (Shadow Rider) - Double-Edge - TM204
  (898, 89802, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 3),
  -- Calyrex (Shadow Rider) - Future Sight - TM217
  (898, 89802, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 4),
  -- Calyrex (Shadow Rider) - Expanding Force - TM218
  (898, 89802, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 5),
  -- Calyrex (Shadow Rider) - Curse - TM224
  (898, 89802, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 6),
  -- Wyrdeer - Psych Up - TM203
  (899, 89900, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Wyrdeer - Double-Edge - TM204
  (899, 89900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Wyrdeer - Future Sight - TM217
  (899, 89900, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 3),
  -- Wyrdeer - Expanding Force - TM218
  (899, 89900, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 4),
  -- Wyrdeer - Throat Chop - TM221
  (899, 89900, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 5),
  -- Wyrdeer - Curse - TM224
  (899, 89900, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 6),
  -- Wyrdeer - Psychic Noise - TM228
  (899, 89900, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 7),
  -- Kleavor - Double-Edge - TM204
  (900, 90000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Kleavor - Skitter Smack - TM219
  (900, 90000, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2);
