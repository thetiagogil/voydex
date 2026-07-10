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
-- The Indigo Disk learnset delta rows for species 051-100.
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
  -- Dugtrio - Double-Edge - TM204
  (51, 5100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Dugtrio - Endeavor - TM205
  (51, 5100, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Dugtrio - Sludge Wave - TM214
  (51, 5100, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 3),
  -- Dugtrio - Scorching Sands - TM215
  (51, 5100, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 4),
  -- Dugtrio - Throat Chop - TM221
  (51, 5100, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 5),
  -- Dugtrio - Curse - TM224
  (51, 5100, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 6),
  -- Dugtrio (Alolan Dugtrio) - Double-Edge - TM204
  (51, 5101, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Dugtrio (Alolan Dugtrio) - Endeavor - TM205
  (51, 5101, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Dugtrio (Alolan Dugtrio) - Sludge Wave - TM214
  (51, 5101, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 3),
  -- Dugtrio (Alolan Dugtrio) - Scorching Sands - TM215
  (51, 5101, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 4),
  -- Dugtrio (Alolan Dugtrio) - Throat Chop - TM221
  (51, 5101, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 5),
  -- Dugtrio (Alolan Dugtrio) - Metal Sound - TM223
  (51, 5101, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 6),
  -- Dugtrio (Alolan Dugtrio) - Curse - TM224
  (51, 5101, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 7),
  -- Meowth - Pain Split - TM202
  (52, 5200, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Meowth - Psych Up - TM203
  (52, 5200, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Meowth - Double-Edge - TM204
  (52, 5200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 3),
  -- Meowth - Endeavor - TM205
  (52, 5200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 4),
  -- Meowth - Throat Chop - TM221
  (52, 5200, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 5),
  -- Meowth (Alolan Meowth) - Psych Up - TM203
  (52, 5201, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Meowth (Alolan Meowth) - Double-Edge - TM204
  (52, 5201, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Meowth (Alolan Meowth) - Endeavor - TM205
  (52, 5201, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Meowth (Alolan Meowth) - Throat Chop - TM221
  (52, 5201, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Meowth (Alolan Meowth) - Curse - TM224
  (52, 5201, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Meowth (Galarian Meowth) - Double-Edge - TM204
  (52, 5202, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Meowth (Galarian Meowth) - Endeavor - TM205
  (52, 5202, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Meowth (Galarian Meowth) - Throat Chop - TM221
  (52, 5202, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Meowth (Galarian Meowth) - Metal Sound - TM223
  (52, 5202, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 4),
  -- Meowth (Galarian Meowth) - Curse - TM224
  (52, 5202, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Persian - Pain Split - TM202
  (53, 5300, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Persian - Psych Up - TM203
  (53, 5300, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Persian - Double-Edge - TM204
  (53, 5300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 3),
  -- Persian - Endeavor - TM205
  (53, 5300, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 4),
  -- Persian - Skitter Smack - TM219
  (53, 5300, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 5),
  -- Persian - Throat Chop - TM221
  (53, 5300, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 6),
  -- Persian (Alolan Persian) - Psych Up - TM203
  (53, 5301, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Persian (Alolan Persian) - Double-Edge - TM204
  (53, 5301, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Persian (Alolan Persian) - Endeavor - TM205
  (53, 5301, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Persian (Alolan Persian) - Skitter Smack - TM219
  (53, 5301, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 4),
  -- Persian (Alolan Persian) - Throat Chop - TM221
  (53, 5301, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 5),
  -- Persian (Alolan Persian) - Curse - TM224
  (53, 5301, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 6),
  -- Psyduck - Psych Up - TM203
  (54, 5400, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Psyduck - Double-Edge - TM204
  (54, 5400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Psyduck - Endeavor - TM205
  (54, 5400, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Psyduck - Whirlpool - TM208
  (54, 5400, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 4),
  -- Psyduck - Muddy Water - TM209
  (54, 5400, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 5),
  -- Psyduck - Psychic Noise - TM228
  (54, 5400, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 6),
  -- Golduck - Psych Up - TM203
  (55, 5500, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Golduck - Double-Edge - TM204
  (55, 5500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Golduck - Endeavor - TM205
  (55, 5500, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Golduck - Whirlpool - TM208
  (55, 5500, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 4),
  -- Golduck - Muddy Water - TM209
  (55, 5500, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 5),
  -- Golduck - Future Sight - TM217
  (55, 5500, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 6),
  -- Golduck - Psychic Noise - TM228
  (55, 5500, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 7),
  -- Mankey - Double-Edge - TM204
  (56, 5600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Mankey - Endeavor - TM205
  (56, 5600, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Mankey - Throat Chop - TM221
  (56, 5600, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Mankey - Curse - TM224
  (56, 5600, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Primeape - Double-Edge - TM204
  (57, 5700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Primeape - Endeavor - TM205
  (57, 5700, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Primeape - Throat Chop - TM221
  (57, 5700, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Primeape - Curse - TM224
  (57, 5700, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Growlithe - Double-Edge - TM204
  (58, 5800, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Growlithe - Temper Flare - TM207
  (58, 5800, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 2),
  -- Growlithe - Curse - TM224
  (58, 5800, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Growlithe (Hisuian Growlithe) - Double-Edge - TM204
  (58, 5801, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Growlithe (Hisuian Growlithe) - Temper Flare - TM207
  (58, 5801, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 2),
  -- Growlithe (Hisuian Growlithe) - Scorching Sands - TM215
  (58, 5801, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 3),
  -- Arcanine - Double-Edge - TM204
  (59, 5900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Arcanine - Temper Flare - TM207
  (59, 5900, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 2),
  -- Arcanine - Scorching Sands - TM215
  (59, 5900, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 3),
  -- Arcanine - Curse - TM224
  (59, 5900, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Arcanine (Hisuian Arcanine) - Double-Edge - TM204
  (59, 5901, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Arcanine (Hisuian Arcanine) - Temper Flare - TM207
  (59, 5901, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 2),
  -- Arcanine (Hisuian Arcanine) - Scorching Sands - TM215
  (59, 5901, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 3),
  -- Poliwag - Double-Edge - TM204
  (60, 6000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Poliwag - Endeavor - TM205
  (60, 6000, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Poliwag - Whirlpool - TM208
  (60, 6000, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 3),
  -- Poliwag - Muddy Water - TM209
  (60, 6000, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 4),
  -- Poliwhirl - Psych Up - TM203
  (61, 6100, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Poliwhirl - Double-Edge - TM204
  (61, 6100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Poliwhirl - Endeavor - TM205
  (61, 6100, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Poliwhirl - Whirlpool - TM208
  (61, 6100, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 4),
  -- Poliwhirl - Muddy Water - TM209
  (61, 6100, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 5),
  -- Poliwrath - Psych Up - TM203
  (62, 6200, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Poliwrath - Double-Edge - TM204
  (62, 6200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Poliwrath - Endeavor - TM205
  (62, 6200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Poliwrath - Whirlpool - TM208
  (62, 6200, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 4),
  -- Poliwrath - Muddy Water - TM209
  (62, 6200, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 5),
  -- Poliwrath - Coaching - TM213
  (62, 6200, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 6),
  -- Poliwrath - Throat Chop - TM221
  (62, 6200, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 7),
  -- Poliwrath - Upper Hand - TM229
  (62, 6200, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 8),
  -- Bellsprout - Sludge Wave - TM214
  (69, 6900, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 1),
  -- Weepinbell - Sludge Wave - TM214
  (70, 7000, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 1),
  -- Victreebel - Sludge Wave - TM214
  (71, 7100, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 1),
  -- Tentacool - Haze - TM174
  (72, 7200, 114, 25, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Tentacool - Toxic - TM175
  (72, 7200, 92, 25, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Tentacool - Knock Off - TM181
  (72, 7200, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Tentacool - Flip Turn - TM196
  (72, 7200, 812, 25, NULL, 2, NULL, NULL, 24002196, NULL, 4),
  -- Tentacool - Whirlpool - TM208
  (72, 7200, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 5),
  -- Tentacool - Muddy Water - TM209
  (72, 7200, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 6),
  -- Tentacool - Sludge Wave - TM214
  (72, 7200, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 7),
  -- Tentacool - Throat Chop - TM221
  (72, 7200, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 8),
  -- Tentacruel - Haze - TM174
  (73, 7300, 114, 25, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Tentacruel - Toxic - TM175
  (73, 7300, 92, 25, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Tentacruel - Knock Off - TM181
  (73, 7300, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Tentacruel - Weather Ball - TM193
  (73, 7300, 311, 25, NULL, 2, NULL, NULL, 24002193, NULL, 4),
  -- Tentacruel - Flip Turn - TM196
  (73, 7300, 812, 25, NULL, 2, NULL, NULL, 24002196, NULL, 5),
  -- Tentacruel - Whirlpool - TM208
  (73, 7300, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 6),
  -- Tentacruel - Muddy Water - TM209
  (73, 7300, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 7),
  -- Tentacruel - Sludge Wave - TM214
  (73, 7300, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 8),
  -- Tentacruel - Skitter Smack - TM219
  (73, 7300, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 9),
  -- Tentacruel - Throat Chop - TM221
  (73, 7300, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 10),
  -- Geodude - Double-Edge - TM204
  (74, 7400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Geodude - Curse - TM224
  (74, 7400, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 2),
  -- Geodude (Alolan Geodude) - Double-Edge - TM204
  (74, 7401, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Geodude (Alolan Geodude) - Supercell Slam - TM210
  (74, 7401, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 2),
  -- Geodude (Alolan Geodude) - Electroweb - TM211
  (74, 7401, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 3),
  -- Geodude (Alolan Geodude) - Curse - TM224
  (74, 7401, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Graveler - Double-Edge - TM204
  (75, 7500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Graveler - Curse - TM224
  (75, 7500, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 2),
  -- Graveler - Hard Press - TM225
  (75, 7500, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 3),
  -- Graveler (Alolan Graveler) - Double-Edge - TM204
  (75, 7501, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Graveler (Alolan Graveler) - Supercell Slam - TM210
  (75, 7501, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 2),
  -- Graveler (Alolan Graveler) - Electroweb - TM211
  (75, 7501, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 3),
  -- Graveler (Alolan Graveler) - Curse - TM224
  (75, 7501, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Graveler (Alolan Graveler) - Hard Press - TM225
  (75, 7501, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 5),
  -- Golem - Double-Edge - TM204
  (76, 7600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Golem - Curse - TM224
  (76, 7600, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 2),
  -- Golem - Hard Press - TM225
  (76, 7600, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 3),
  -- Golem (Alolan Golem) - Double-Edge - TM204
  (76, 7601, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Golem (Alolan Golem) - Supercell Slam - TM210
  (76, 7601, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 2),
  -- Golem (Alolan Golem) - Electroweb - TM211
  (76, 7601, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 3),
  -- Golem (Alolan Golem) - Meteor Beam - TM220
  (76, 7601, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 4),
  -- Golem (Alolan Golem) - Curse - TM224
  (76, 7601, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Golem (Alolan Golem) - Hard Press - TM225
  (76, 7601, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 6),
  -- Slowpoke - Psych Up - TM203
  (79, 7900, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Slowpoke - Whirlpool - TM208
  (79, 7900, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Slowpoke - Expanding Force - TM218
  (79, 7900, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 3),
  -- Slowpoke - Curse - TM224
  (79, 7900, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Slowpoke (Galarian Slowpoke) - Psych Up - TM203
  (79, 7901, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Slowpoke (Galarian Slowpoke) - Whirlpool - TM208
  (79, 7901, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Slowpoke (Galarian Slowpoke) - Expanding Force - TM218
  (79, 7901, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 3),
  -- Slowpoke (Galarian Slowpoke) - Curse - TM224
  (79, 7901, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Slowbro - Psych Up - TM203
  (80, 8000, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Slowbro - Whirlpool - TM208
  (80, 8000, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Slowbro - Muddy Water - TM209
  (80, 8000, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 3),
  -- Slowbro - Future Sight - TM217
  (80, 8000, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 4),
  -- Slowbro - Expanding Force - TM218
  (80, 8000, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 5),
  -- Slowbro - Curse - TM224
  (80, 8000, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 6),
  -- Slowbro - Psychic Noise - TM228
  (80, 8000, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 7),
  -- Slowbro (Galarian Slowbro) - Psych Up - TM203
  (80, 8002, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Slowbro (Galarian Slowbro) - Double-Edge - TM204
  (80, 8002, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Slowbro (Galarian Slowbro) - Whirlpool - TM208
  (80, 8002, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 3),
  -- Slowbro (Galarian Slowbro) - Muddy Water - TM209
  (80, 8002, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 4),
  -- Slowbro (Galarian Slowbro) - Sludge Wave - TM214
  (80, 8002, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 5),
  -- Slowbro (Galarian Slowbro) - Expanding Force - TM218
  (80, 8002, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 6),
  -- Slowbro (Galarian Slowbro) - Curse - TM224
  (80, 8002, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 7),
  -- Magnemite - Electroweb - TM211
  (81, 8100, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 1),
  -- Magnemite - Metal Sound - TM223
  (81, 8100, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 2),
  -- Magneton - Electroweb - TM211
  (82, 8200, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 1),
  -- Magneton - Metal Sound - TM223
  (82, 8200, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 2),
  -- Doduo - Knock Off - TM181
  (84, 8400, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Doduo - Lunge - TM185
  (84, 8400, 679, 25, NULL, 2, NULL, NULL, 24002185, NULL, 2),
  -- Doduo - Uproar - TM191
  (84, 8400, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Doduo - Double-Edge - TM204
  (84, 8400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 4),
  -- Doduo - Endeavor - TM205
  (84, 8400, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 5),
  -- Doduo - Feather Dance - TM216
  (84, 8400, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 6),
  -- Doduo - Throat Chop - TM221
  (84, 8400, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 7),
  -- Dodrio - Knock Off - TM181
  (85, 8500, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Dodrio - Lunge - TM185
  (85, 8500, 679, 25, NULL, 2, NULL, NULL, 24002185, NULL, 2),
  -- Dodrio - Uproar - TM191
  (85, 8500, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Dodrio - Double-Edge - TM204
  (85, 8500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 4),
  -- Dodrio - Endeavor - TM205
  (85, 8500, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 5),
  -- Dodrio - Feather Dance - TM216
  (85, 8500, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 6),
  -- Dodrio - Throat Chop - TM221
  (85, 8500, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 7),
  -- Seel - Haze - TM174
  (86, 8600, 114, 25, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Seel - Icicle Spear - TM187
  (86, 8600, 333, 25, NULL, 2, NULL, NULL, 24002187, NULL, 2),
  -- Seel - Uproar - TM191
  (86, 8600, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Seel - Weather Ball - TM193
  (86, 8600, 311, 25, NULL, 2, NULL, NULL, 24002193, NULL, 4),
  -- Seel - Flip Turn - TM196
  (86, 8600, 812, 25, NULL, 2, NULL, NULL, 24002196, NULL, 5),
  -- Seel - Double-Edge - TM204
  (86, 8600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 6),
  -- Seel - Whirlpool - TM208
  (86, 8600, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 7),
  -- Seel - Muddy Water - TM209
  (86, 8600, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 8),
  -- Seel - Triple Axel - TM212
  (86, 8600, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 9),
  -- Seel - Curse - TM224
  (86, 8600, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 10),
  -- Dewgong - Haze - TM174
  (87, 8700, 114, 25, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Dewgong - Knock Off - TM181
  (87, 8700, 282, 25, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Dewgong - Icicle Spear - TM187
  (87, 8700, 333, 25, NULL, 2, NULL, NULL, 24002187, NULL, 3),
  -- Dewgong - Uproar - TM191
  (87, 8700, 253, 25, NULL, 2, NULL, NULL, 24002191, NULL, 4),
  -- Dewgong - Weather Ball - TM193
  (87, 8700, 311, 25, NULL, 2, NULL, NULL, 24002193, NULL, 5),
  -- Dewgong - Flip Turn - TM196
  (87, 8700, 812, 25, NULL, 2, NULL, NULL, 24002196, NULL, 6),
  -- Dewgong - Double-Edge - TM204
  (87, 8700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 7),
  -- Dewgong - Endeavor - TM205
  (87, 8700, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 8),
  -- Dewgong - Whirlpool - TM208
  (87, 8700, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 9),
  -- Dewgong - Muddy Water - TM209
  (87, 8700, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 10),
  -- Dewgong - Triple Axel - TM212
  (87, 8700, 813, 25, NULL, 2, NULL, NULL, 25002212, NULL, 11),
  -- Dewgong - Curse - TM224
  (87, 8700, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 12),
  -- Dewgong - Alluring Voice - TM227
  (87, 8700, 914, 25, NULL, 2, NULL, NULL, 25002227, NULL, 13),
  -- Grimer - Pain Split - TM202
  (88, 8800, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Grimer - Sludge Wave - TM214
  (88, 8800, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 2),
  -- Grimer - Curse - TM224
  (88, 8800, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Grimer (Alolan Grimer) - Pain Split - TM202
  (88, 8801, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Grimer (Alolan Grimer) - Sludge Wave - TM214
  (88, 8801, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 2),
  -- Grimer (Alolan Grimer) - Curse - TM224
  (88, 8801, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Muk - Pain Split - TM202
  (89, 8900, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Muk - Sludge Wave - TM214
  (89, 8900, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 2),
  -- Muk - Curse - TM224
  (89, 8900, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Muk (Alolan Muk) - Pain Split - TM202
  (89, 8901, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Muk (Alolan Muk) - Sludge Wave - TM214
  (89, 8901, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 2),
  -- Muk (Alolan Muk) - Curse - TM224
  (89, 8901, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Shellder - Whirlpool - TM208
  (90, 9000, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 1),
  -- Cloyster - Whirlpool - TM208
  (91, 9100, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 1),
  -- Gastly - Pain Split - TM202
  (92, 9200, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Gastly - Psych Up - TM203
  (92, 9200, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Gastly - Sludge Wave - TM214
  (92, 9200, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 3),
  -- Gastly - Skitter Smack - TM219
  (92, 9200, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 4),
  -- Gastly - Curse - TM224
  (92, 9200, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Haunter - Pain Split - TM202
  (93, 9300, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Haunter - Psych Up - TM203
  (93, 9300, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Haunter - Sludge Wave - TM214
  (93, 9300, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 3),
  -- Haunter - Skitter Smack - TM219
  (93, 9300, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 4),
  -- Haunter - Curse - TM224
  (93, 9300, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Gengar - Pain Split - TM202
  (94, 9400, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Gengar - Psych Up - TM203
  (94, 9400, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Gengar - Sludge Wave - TM214
  (94, 9400, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 3),
  -- Gengar - Skitter Smack - TM219
  (94, 9400, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 4),
  -- Gengar - Curse - TM224
  (94, 9400, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Gengar - Psychic Noise - TM228
  (94, 9400, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 6),
  -- Drowzee - Psych Up - TM203
  (96, 9600, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Drowzee - Double-Edge - TM204
  (96, 9600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Drowzee - Endeavor - TM205
  (96, 9600, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Drowzee - Future Sight - TM217
  (96, 9600, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 4),
  -- Drowzee - Expanding Force - TM218
  (96, 9600, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 5),
  -- Drowzee - Curse - TM224
  (96, 9600, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 6),
  -- Drowzee - Psychic Noise - TM228
  (96, 9600, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 7),
  -- Hypno - Psych Up - TM203
  (97, 9700, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Hypno - Double-Edge - TM204
  (97, 9700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Hypno - Endeavor - TM205
  (97, 9700, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Hypno - Future Sight - TM217
  (97, 9700, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 4),
  -- Hypno - Expanding Force - TM218
  (97, 9700, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 5),
  -- Hypno - Curse - TM224
  (97, 9700, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 6),
  -- Hypno - Psychic Noise - TM228
  (97, 9700, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 7),
  -- Voltorb - Double-Edge - TM204
  (100, 10000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Voltorb - Electroweb - TM211
  (100, 10000, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 2),
  -- Voltorb - Metal Sound - TM223
  (100, 10000, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 3),
  -- Voltorb (Hisuian Voltorb) - Double-Edge - TM204
  (100, 10001, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Voltorb (Hisuian Voltorb) - Electroweb - TM211
  (100, 10001, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 2);
