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
-- The Indigo Disk learnset delta rows for species 951-1000.
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
  -- Capsakid - Endeavor - TM205
  (951, 95100, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Scovillain - Endeavor - TM205
  (952, 95200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Scovillain - Temper Flare - TM207
  (952, 95200, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 2),
  -- Rellor - Skitter Smack - TM219
  (953, 95300, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 1),
  -- Rabsca - Psych Up - TM203
  (954, 95400, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Rabsca - Future Sight - TM217
  (954, 95400, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 2),
  -- Rabsca - Expanding Force - TM218
  (954, 95400, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 3),
  -- Rabsca - Skitter Smack - TM219
  (954, 95400, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 4),
  -- Rabsca - Psychic Noise - TM228
  (954, 95400, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 5),
  -- Espathra - Psych Up - TM203
  (956, 95600, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Espathra - Double-Edge - TM204
  (956, 95600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Espathra - Feather Dance - TM216
  (956, 95600, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 3),
  -- Espathra - Expanding Force - TM218
  (956, 95600, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 4),
  -- Tinkatink - Endeavor - TM205
  (957, 95700, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Tinkatink - Skitter Smack - TM219
  (957, 95700, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2),
  -- Tinkatink - Metal Sound - TM223
  (957, 95700, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 3),
  -- Tinkatuff - Endeavor - TM205
  (958, 95800, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Tinkatuff - Skitter Smack - TM219
  (958, 95800, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2),
  -- Tinkatuff - Metal Sound - TM223
  (958, 95800, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 3),
  -- Tinkaton - Endeavor - TM205
  (959, 95900, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 1),
  -- Tinkaton - Skitter Smack - TM219
  (959, 95900, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 2),
  -- Tinkaton - Metal Sound - TM223
  (959, 95900, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 3),
  -- Tinkaton - Hard Press - TM225
  (959, 95900, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 4),
  -- Wiglett - Whirlpool - TM208
  (960, 96000, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 1),
  -- Wiglett - Muddy Water - TM209
  (960, 96000, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 2),
  -- Wiglett - Throat Chop - TM221
  (960, 96000, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Wugtrio - Pain Split - TM202
  (961, 96100, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Wugtrio - Whirlpool - TM208
  (961, 96100, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 2),
  -- Wugtrio - Muddy Water - TM209
  (961, 96100, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 3),
  -- Wugtrio - Throat Chop - TM221
  (961, 96100, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Bombirdier - Psych Up - TM203
  (962, 96200, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Bombirdier - Endeavor - TM205
  (962, 96200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Bombirdier - Feather Dance - TM216
  (962, 96200, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 3),
  -- Bombirdier - Curse - TM224
  (962, 96200, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Finizen - Psych Up - TM203
  (963, 96300, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Palafin - Psych Up - TM203
  (964, 96400, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Palafin - Endeavor - TM205
  (964, 96400, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Palafin - Whirlpool - TM208
  (964, 96400, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 3),
  -- Palafin - Throat Chop - TM221
  (964, 96400, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Palafin - Hard Press - TM225
  (964, 96400, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 5),
  -- Varoom - Double-Edge - TM204
  (965, 96500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Varoom - Sludge Wave - TM214
  (965, 96500, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 2),
  -- Varoom - Metal Sound - TM223
  (965, 96500, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 3),
  -- Varoom - Curse - TM224
  (965, 96500, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Revavroom - Double-Edge - TM204
  (966, 96600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Revavroom - Endeavor - TM205
  (966, 96600, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Revavroom - Temper Flare - TM207
  (966, 96600, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 3),
  -- Revavroom - Sludge Wave - TM214
  (966, 96600, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 4),
  -- Revavroom - Metal Sound - TM223
  (966, 96600, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 5),
  -- Revavroom - Curse - TM224
  (966, 96600, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 6),
  -- Revavroom - Hard Press - TM225
  (966, 96600, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 7),
  -- Cyclizar - Double-Edge - TM204
  (967, 96700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Cyclizar - Endeavor - TM205
  (967, 96700, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Cyclizar - Temper Flare - TM207
  (967, 96700, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 3),
  -- Cyclizar - Supercell Slam - TM210
  (967, 96700, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 4),
  -- Cyclizar - Breaking Swipe - TM222
  (967, 96700, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 5),
  -- Cyclizar - Dragon Cheer - TM226
  (967, 96700, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 6),
  -- Orthworm - Double-Edge - TM204
  (968, 96800, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Orthworm - Metal Sound - TM223
  (968, 96800, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 2),
  -- Orthworm - Curse - TM224
  (968, 96800, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 3),
  -- Glimmet - Sludge Wave - TM214
  (969, 96900, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 1),
  -- Glimmet - Meteor Beam - TM220
  (969, 96900, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 2),
  -- Glimmora - Sludge Wave - TM214
  (970, 97000, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 1),
  -- Glimmora - Meteor Beam - TM220
  (970, 97000, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 2),
  -- Greavard - Pain Split - TM202
  (971, 97100, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Greavard - Double-Edge - TM204
  (971, 97100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Greavard - Endeavor - TM205
  (971, 97100, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Houndstone - Pain Split - TM202
  (972, 97200, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Houndstone - Double-Edge - TM204
  (972, 97200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Houndstone - Endeavor - TM205
  (972, 97200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Flamigo - Psych Up - TM203
  (973, 97300, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Flamigo - Endeavor - TM205
  (973, 97300, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Flamigo - Feather Dance - TM216
  (973, 97300, 297, 25, NULL, 2, NULL, NULL, 25002216, NULL, 3),
  -- Flamigo - Throat Chop - TM221
  (973, 97300, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Flamigo - Upper Hand - TM229
  (973, 97300, 918, 25, NULL, 2, NULL, NULL, 25002229, NULL, 5),
  -- Cetoddle - Double-Edge - TM204
  (974, 97400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Cetoddle - Curse - TM224
  (974, 97400, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 2),
  -- Cetitan - Double-Edge - TM204
  (975, 97500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Cetitan - Curse - TM224
  (975, 97500, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 2),
  -- Cetitan - Hard Press - TM225
  (975, 97500, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 3),
  -- Veluza - Pain Split - TM202
  (976, 97600, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Veluza - Double-Edge - TM204
  (976, 97600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Veluza - Endeavor - TM205
  (976, 97600, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Veluza - Expanding Force - TM218
  (976, 97600, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 4),
  -- Dondozo - Double-Edge - TM204
  (977, 97700, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Dondozo - Curse - TM224
  (977, 97700, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 2),
  -- Tatsugiri - Whirlpool - TM208
  (978, 97800, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 1),
  -- Tatsugiri - Muddy Water - TM209
  (978, 97800, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 2),
  -- Tatsugiri - Dragon Cheer - TM226
  (978, 97800, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 3),
  -- Annihilape - Double-Edge - TM204
  (979, 97900, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Annihilape - Endeavor - TM205
  (979, 97900, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Annihilape - Coaching - TM213
  (979, 97900, 811, 25, NULL, 2, NULL, NULL, 25002213, NULL, 3),
  -- Annihilape - Throat Chop - TM221
  (979, 97900, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 4),
  -- Annihilape - Curse - TM224
  (979, 97900, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 5),
  -- Clodsire - Double-Edge - TM204
  (980, 98000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Clodsire - Muddy Water - TM209
  (980, 98000, 330, 25, NULL, 2, NULL, NULL, 25002209, NULL, 2),
  -- Clodsire - Sludge Wave - TM214
  (980, 98000, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 3),
  -- Clodsire - Curse - TM224
  (980, 98000, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Farigiraf - Psych Up - TM203
  (981, 98100, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Farigiraf - Double-Edge - TM204
  (981, 98100, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Farigiraf - Endeavor - TM205
  (981, 98100, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 3),
  -- Farigiraf - Future Sight - TM217
  (981, 98100, 248, 25, NULL, 2, NULL, NULL, 25002217, NULL, 4),
  -- Farigiraf - Expanding Force - TM218
  (981, 98100, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 5),
  -- Farigiraf - Curse - TM224
  (981, 98100, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 6),
  -- Farigiraf - Psychic Noise - TM228
  (981, 98100, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 7),
  -- Dudunsparce - Pain Split - TM202
  (982, 98200, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Dudunsparce - Psych Up - TM203
  (982, 98200, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 2),
  -- Dudunsparce - Double-Edge - TM204
  (982, 98200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 3),
  -- Dudunsparce - Endeavor - TM205
  (982, 98200, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 4),
  -- Dudunsparce - Skitter Smack - TM219
  (982, 98200, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 5),
  -- Dudunsparce - Throat Chop - TM221
  (982, 98200, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 6),
  -- Dudunsparce - Breaking Swipe - TM222
  (982, 98200, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 7),
  -- Dudunsparce - Curse - TM224
  (982, 98200, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 8),
  -- Kingambit - Throat Chop - TM221
  (983, 98300, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 1),
  -- Kingambit - Metal Sound - TM223
  (983, 98300, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 2),
  -- Great Tusk - Double-Edge - TM204
  (984, 98400, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Great Tusk - Endeavor - TM205
  (984, 98400, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Great Tusk - Temper Flare - TM207
  (984, 98400, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 3),
  -- Great Tusk - Supercell Slam - TM210
  (984, 98400, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 4),
  -- Great Tusk - Throat Chop - TM221
  (984, 98400, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 5),
  -- Scream Tail - Psych Up - TM203
  (985, 98500, 244, 25, NULL, 2, NULL, NULL, 25002203, NULL, 1),
  -- Scream Tail - Double-Edge - TM204
  (985, 98500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 2),
  -- Scream Tail - Expanding Force - TM218
  (985, 98500, 797, 25, NULL, 2, NULL, NULL, 25002218, NULL, 3),
  -- Scream Tail - Psychic Noise - TM228
  (985, 98500, 917, 25, NULL, 2, NULL, NULL, 25002228, NULL, 4),
  -- Brute Bonnet - Double-Edge - TM204
  (986, 98600, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Flutter Mane - Pain Split - TM202
  (987, 98700, 220, 25, NULL, 2, NULL, NULL, 25002202, NULL, 1),
  -- Slither Wing - Double-Edge - TM204
  (988, 98800, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Slither Wing - Temper Flare - TM207
  (988, 98800, 915, 25, NULL, 2, NULL, NULL, 25002207, NULL, 2),
  -- Slither Wing - Skitter Smack - TM219
  (988, 98800, 806, 25, NULL, 2, NULL, NULL, 25002219, NULL, 3),
  -- Slither Wing - Curse - TM224
  (988, 98800, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 4),
  -- Sandy Shocks - Supercell Slam - TM210
  (989, 98900, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 1),
  -- Sandy Shocks - Electroweb - TM211
  (989, 98900, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 2),
  -- Sandy Shocks - Scorching Sands - TM215
  (989, 98900, 815, 25, NULL, 2, NULL, NULL, 25002215, NULL, 3),
  -- Sandy Shocks - Metal Sound - TM223
  (989, 98900, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 4),
  -- Iron Treads - Double-Edge - TM204
  (990, 99000, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Iron Treads - Endeavor - TM205
  (990, 99000, 283, 25, NULL, 2, NULL, NULL, 25002205, NULL, 2),
  -- Iron Treads - Supercell Slam - TM210
  (990, 99000, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 3),
  -- Iron Treads - Metal Sound - TM223
  (990, 99000, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 4),
  -- Iron Treads - Hard Press - TM225
  (990, 99000, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 5),
  -- Iron Bundle - Whirlpool - TM208
  (991, 99100, 250, 25, NULL, 2, NULL, NULL, 25002208, NULL, 1),
  -- Iron Hands - Double-Edge - TM204
  (992, 99200, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Iron Hands - Supercell Slam - TM210
  (992, 99200, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 2),
  -- Iron Hands - Hard Press - TM225
  (992, 99200, 912, 25, NULL, 2, NULL, NULL, 25002225, NULL, 3),
  -- Iron Jugulis - Double-Edge - TM204
  (993, 99300, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Iron Jugulis - Meteor Beam - TM220
  (993, 99300, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 2),
  -- Iron Jugulis - Throat Chop - TM221
  (993, 99300, 675, 25, NULL, 2, NULL, NULL, 25002221, NULL, 3),
  -- Iron Jugulis - Metal Sound - TM223
  (993, 99300, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 4),
  -- Iron Jugulis - Dragon Cheer - TM226
  (993, 99300, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 5),
  -- Iron Moth - Sludge Wave - TM214
  (994, 99400, 482, 25, NULL, 2, NULL, NULL, 25002214, NULL, 1),
  -- Iron Moth - Meteor Beam - TM220
  (994, 99400, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 2),
  -- Iron Moth - Metal Sound - TM223
  (994, 99400, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 3),
  -- Iron Thorns - Double-Edge - TM204
  (995, 99500, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Iron Thorns - Supercell Slam - TM210
  (995, 99500, 916, 25, NULL, 2, NULL, NULL, 25002210, NULL, 2),
  -- Iron Thorns - Electroweb - TM211
  (995, 99500, 527, 25, NULL, 2, NULL, NULL, 25002211, NULL, 3),
  -- Iron Thorns - Meteor Beam - TM220
  (995, 99500, 800, 25, NULL, 2, NULL, NULL, 25002220, NULL, 4),
  -- Iron Thorns - Breaking Swipe - TM222
  (995, 99500, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 5),
  -- Iron Thorns - Curse - TM224
  (995, 99500, 174, 25, NULL, 2, NULL, NULL, 25002224, NULL, 6),
  -- Baxcalibur - Double-Edge - TM204
  (998, 99800, 38, 25, NULL, 2, NULL, NULL, 25002204, NULL, 1),
  -- Baxcalibur - Breaking Swipe - TM222
  (998, 99800, 784, 25, NULL, 2, NULL, NULL, 25002222, NULL, 2),
  -- Baxcalibur - Dragon Cheer - TM226
  (998, 99800, 913, 25, NULL, 2, NULL, NULL, 25002226, NULL, 3),
  -- Gholdengo - Metal Sound - TM223
  (1000, 100000, 319, 25, NULL, 2, NULL, NULL, 25002223, NULL, 1);
