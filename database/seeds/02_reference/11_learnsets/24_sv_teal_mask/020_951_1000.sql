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
-- The Teal Mask learnset delta rows for species 951-1000.
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
  -- Capsakid - Super Fang - TM183
  (951, 95100, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 1),
  -- Capsakid - Grassy Glide - TM194
  (951, 95100, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 2),
  -- Scovillain - Super Fang - TM183
  (952, 95200, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 1),
  -- Scovillain - Grassy Glide - TM194
  (952, 95200, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 2),
  -- Scovillain - Burning Jealousy - TM195
  (952, 95200, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 3),
  -- Scovillain - Lash Out - TM199
  (952, 95200, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 4),
  -- Rellor - Bug Bite - TM182
  (953, 95300, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 1),
  -- Rellor - Lunge - TM185
  (953, 95300, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 2),
  -- Rellor - Weather Ball - TM193
  (953, 95300, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Rabsca - Gravity - TM178
  (954, 95400, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Rabsca - Bug Bite - TM182
  (954, 95400, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 2),
  -- Rabsca - Lunge - TM185
  (954, 95400, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 3),
  -- Rabsca - Weather Ball - TM193
  (954, 95400, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 4),
  -- Rabsca - Poltergeist - TM198
  (954, 95400, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 5),
  -- Flittle - Uproar - TM191
  (955, 95500, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 1),
  -- Espathra - Uproar - TM191
  (956, 95600, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 1),
  -- Tinkatink - Knock Off - TM181
  (957, 95700, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Tinkatuff - Knock Off - TM181
  (958, 95800, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Tinkaton - Smack Down - TM179
  (959, 95900, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 1),
  -- Tinkaton - Knock Off - TM181
  (959, 95900, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Bombirdier - Knock Off - TM181
  (962, 96200, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Bombirdier - Dual Wingbeat - TM197
  (962, 96200, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 2),
  -- Bombirdier - Lash Out - TM199
  (962, 96200, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 3),
  -- Finizen - Haze - TM174
  (963, 96300, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Palafin - Haze - TM174
  (964, 96400, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Palafin - Focus Punch - TM192
  (964, 96400, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 2),
  -- Palafin - Flip Turn - TM196
  (964, 96400, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 3),
  -- Varoom - Haze - TM174
  (965, 96500, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Varoom - Toxic - TM175
  (965, 96500, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Varoom - Gyro Ball - TM180
  (965, 96500, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 3),
  -- Varoom - Uproar - TM191
  (965, 96500, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 4),
  -- Revavroom - Haze - TM174
  (966, 96600, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Revavroom - Toxic - TM175
  (966, 96600, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Revavroom - Gyro Ball - TM180
  (966, 96600, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 3),
  -- Revavroom - High Horsepower - TM186
  (966, 96600, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 4),
  -- Revavroom - Uproar - TM191
  (966, 96600, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 5),
  -- Revavroom - Lash Out - TM199
  (966, 96600, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 6),
  -- Cyclizar - Knock Off - TM181
  (967, 96700, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Cyclizar - Uproar - TM191
  (967, 96700, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 2),
  -- Cyclizar - Scale Shot - TM200
  (967, 96700, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 3),
  -- Orthworm - Sand Tomb - TM176
  (968, 96800, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Orthworm - Smack Down - TM179
  (968, 96800, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Orthworm - High Horsepower - TM186
  (968, 96800, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 3),
  -- Glimmet - Toxic - TM175
  (969, 96900, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Glimmet - Sand Tomb - TM176
  (969, 96900, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 2),
  -- Glimmet - Smack Down - TM179
  (969, 96900, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 3),
  -- Glimmora - Toxic - TM175
  (970, 97000, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Glimmora - Sand Tomb - TM176
  (970, 97000, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 2),
  -- Glimmora - Smack Down - TM179
  (970, 97000, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 3),
  -- Greavard - Roar - TM172
  (971, 97100, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Greavard - Uproar - TM191
  (971, 97100, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 2),
  -- Greavard - Poltergeist - TM198
  (971, 97100, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 3),
  -- Houndstone - Roar - TM172
  (972, 97200, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Houndstone - Uproar - TM191
  (972, 97200, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 2),
  -- Houndstone - Poltergeist - TM198
  (972, 97200, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 3),
  -- Flamigo - Lunge - TM185
  (973, 97300, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 1),
  -- Flamigo - Dual Wingbeat - TM197
  (973, 97300, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 2),
  -- Cetoddle - Knock Off - TM181
  (974, 97400, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Cetoddle - High Horsepower - TM186
  (974, 97400, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 2),
  -- Cetoddle - Icicle Spear - TM187
  (974, 97400, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 3),
  -- Cetitan - Knock Off - TM181
  (975, 97500, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Cetitan - High Horsepower - TM186
  (975, 97500, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 2),
  -- Cetitan - Icicle Spear - TM187
  (975, 97500, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 3),
  -- Veluza - Flip Turn - TM196
  (976, 97600, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 1),
  -- Veluza - Scale Shot - TM200
  (976, 97600, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 2),
  -- Tatsugiri - Lunge - TM185
  (978, 97800, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 1),
  -- Annihilape - Spite - TM177
  (979, 97900, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Annihilape - Smack Down - TM179
  (979, 97900, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Annihilape - Vacuum Wave - TM184
  (979, 97900, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 3),
  -- Annihilape - Uproar - TM191
  (979, 97900, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 4),
  -- Annihilape - Focus Punch - TM192
  (979, 97900, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 5),
  -- Annihilape - Lash Out - TM199
  (979, 97900, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 6),
  -- Clodsire - Haze - TM174
  (980, 98000, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Clodsire - Toxic - TM175
  (980, 98000, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Clodsire - High Horsepower - TM186
  (980, 98000, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 3),
  -- Farigiraf - Roar - TM172
  (981, 98100, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Farigiraf - Gravity - TM178
  (981, 98100, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 2),
  -- Farigiraf - High Horsepower - TM186
  (981, 98100, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 3),
  -- Farigiraf - Uproar - TM191
  (981, 98100, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 4),
  -- Dudunsparce - Toxic - TM175
  (982, 98200, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Dudunsparce - Spite - TM177
  (982, 98200, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Dudunsparce - Gyro Ball - TM180
  (982, 98200, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 3),
  -- Dudunsparce - Lunge - TM185
  (982, 98200, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 4),
  -- Dudunsparce - Uproar - TM191
  (982, 98200, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 5),
  -- Dudunsparce - Dual Wingbeat - TM197
  (982, 98200, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 6),
  -- Dudunsparce - Scale Shot - TM200
  (982, 98200, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 7),
  -- Kingambit - Spite - TM177
  (983, 98300, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Kingambit - Lash Out - TM199
  (983, 98300, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 2),
  -- Great Tusk - Roar - TM172
  (984, 98400, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Great Tusk - Smack Down - TM179
  (984, 98400, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Great Tusk - Knock Off - TM181
  (984, 98400, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Great Tusk - High Horsepower - TM186
  (984, 98400, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 4),
  -- Scream Tail - Roar - TM172
  (985, 98500, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Scream Tail - Gyro Ball - TM180
  (985, 98500, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Scream Tail - Uproar - TM191
  (985, 98500, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Scream Tail - Misty Explosion - TM201
  (985, 98500, 802, 24, NULL, 2, NULL, NULL, 24002201, NULL, 4),
  -- Brute Bonnet - Lash Out - TM199
  (986, 98600, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 1),
  -- Flutter Mane - Spite - TM177
  (987, 98700, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Flutter Mane - Poltergeist - TM198
  (987, 98700, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 2),
  -- Slither Wing - Bug Bite - TM182
  (988, 98800, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 1),
  -- Slither Wing - Lunge - TM185
  (988, 98800, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 2),
  -- Slither Wing - High Horsepower - TM186
  (988, 98800, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 3),
  -- Slither Wing - Heat Crash - TM189
  (988, 98800, 535, 24, NULL, 2, NULL, NULL, 24002189, NULL, 4),
  -- Slither Wing - Dual Wingbeat - TM197
  (988, 98800, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 5),
  -- Sandy Shocks - Charge - TM173
  (989, 98900, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Sandy Shocks - Sand Tomb - TM176
  (989, 98900, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 2),
  -- Sandy Shocks - Gravity - TM178
  (989, 98900, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 3),
  -- Sandy Shocks - High Horsepower - TM186
  (989, 98900, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 4),
  -- Iron Treads - Gyro Ball - TM180
  (990, 99000, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 1),
  -- Iron Treads - Knock Off - TM181
  (990, 99000, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Iron Treads - High Horsepower - TM186
  (990, 99000, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 3),
  -- Iron Bundle - Flip Turn - TM196
  (991, 99100, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 1),
  -- Iron Hands - Charge - TM173
  (992, 99200, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Iron Hands - Focus Punch - TM192
  (992, 99200, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 2),
  -- Iron Jugulis - Roar - TM172
  (993, 99300, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Iron Jugulis - Knock Off - TM181
  (993, 99300, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Iron Jugulis - Dual Wingbeat - TM197
  (993, 99300, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 3),
  -- Iron Jugulis - Lash Out - TM199
  (993, 99300, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 4),
  -- Iron Moth - Toxic - TM175
  (994, 99400, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Iron Moth - Lunge - TM185
  (994, 99400, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 2),
  -- Iron Thorns - Charge - TM173
  (995, 99500, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Iron Thorns - Sand Tomb - TM176
  (995, 99500, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 2),
  -- Iron Thorns - Smack Down - TM179
  (995, 99500, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 3),
  -- Iron Thorns - High Horsepower - TM186
  (995, 99500, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 4),
  -- Frigibax - Icicle Spear - TM187
  (996, 99600, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 1),
  -- Arctibax - Icicle Spear - TM187
  (997, 99700, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 1),
  -- Baxcalibur - High Horsepower - TM186
  (998, 99800, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 1),
  -- Baxcalibur - Icicle Spear - TM187
  (998, 99800, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 2),
  -- Baxcalibur - Scale Shot - TM200
  (998, 99800, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 3),
  -- Gholdengo - Focus Punch - TM192
  (1000, 100000, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 1),
  -- Gholdengo - Poltergeist - TM198
  (1000, 100000, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 2);
