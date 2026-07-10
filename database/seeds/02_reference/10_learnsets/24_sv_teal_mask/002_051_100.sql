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
-- The Teal Mask learnset delta rows for species 051-100.
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
  -- Dugtrio - Sand Tomb - TM176
  (51, 5100, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Dugtrio - Smack Down - TM179
  (51, 5100, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Dugtrio - Uproar - TM191
  (51, 5100, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Dugtrio (Alolan Dugtrio) - Sand Tomb - TM176
  (51, 5101, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Dugtrio (Alolan Dugtrio) - Smack Down - TM179
  (51, 5101, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Dugtrio (Alolan Dugtrio) - Uproar - TM191
  (51, 5101, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Meowth - Spite - TM177
  (52, 5200, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Meowth - Knock Off - TM181
  (52, 5200, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Meowth - Lash Out - TM199
  (52, 5200, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 3),
  -- Meowth (Alolan Meowth) - Spite - TM177
  (52, 5201, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Meowth (Alolan Meowth) - Knock Off - TM181
  (52, 5201, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Meowth (Alolan Meowth) - Lash Out - TM199
  (52, 5201, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 3),
  -- Meowth (Galarian Meowth) - Spite - TM177
  (52, 5202, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Meowth (Galarian Meowth) - Gyro Ball - TM180
  (52, 5202, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Meowth (Galarian Meowth) - Knock Off - TM181
  (52, 5202, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Meowth (Galarian Meowth) - Lash Out - TM199
  (52, 5202, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 4),
  -- Persian - Roar - TM172
  (53, 5300, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Persian - Spite - TM177
  (53, 5300, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Persian - Knock Off - TM181
  (53, 5300, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Persian - Lash Out - TM199
  (53, 5300, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 4),
  -- Persian (Alolan Persian) - Roar - TM172
  (53, 5301, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Persian (Alolan Persian) - Spite - TM177
  (53, 5301, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Persian (Alolan Persian) - Smack Down - TM179
  (53, 5301, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 3),
  -- Persian (Alolan Persian) - Knock Off - TM181
  (53, 5301, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 4),
  -- Persian (Alolan Persian) - Burning Jealousy - TM195
  (53, 5301, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 5),
  -- Persian (Alolan Persian) - Lash Out - TM199
  (53, 5301, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 6),
  -- Psyduck - Haze - TM174
  (54, 5400, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Psyduck - Knock Off - TM181
  (54, 5400, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Psyduck - Vacuum Wave - TM184
  (54, 5400, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 3),
  -- Psyduck - Focus Punch - TM192
  (54, 5400, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Psyduck - Flip Turn - TM196
  (54, 5400, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 5),
  -- Golduck - Haze - TM174
  (55, 5500, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Golduck - Knock Off - TM181
  (55, 5500, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Golduck - Vacuum Wave - TM184
  (55, 5500, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 3),
  -- Golduck - Focus Punch - TM192
  (55, 5500, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Golduck - Flip Turn - TM196
  (55, 5500, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 5),
  -- Mankey - Spite - TM177
  (56, 5600, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Mankey - Uproar - TM191
  (56, 5600, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 2),
  -- Mankey - Focus Punch - TM192
  (56, 5600, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Mankey - Lash Out - TM199
  (56, 5600, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 4),
  -- Primeape - Spite - TM177
  (57, 5700, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Primeape - Smack Down - TM179
  (57, 5700, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Primeape - Vacuum Wave - TM184
  (57, 5700, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 3),
  -- Primeape - Uproar - TM191
  (57, 5700, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 4),
  -- Primeape - Focus Punch - TM192
  (57, 5700, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 5),
  -- Primeape - Lash Out - TM199
  (57, 5700, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 6),
  -- Growlithe - Roar - TM172
  (58, 5800, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Growlithe (Hisuian Growlithe) - Roar - TM172
  (58, 5801, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Growlithe (Hisuian Growlithe) - Smack Down - TM179
  (58, 5801, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Arcanine - Roar - TM172
  (59, 5900, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Arcanine - Heat Crash - TM189
  (59, 5900, 535, 24, NULL, 2, NULL, NULL, 24002189, NULL, 2),
  -- Arcanine (Hisuian Arcanine) - Roar - TM172
  (59, 5901, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Arcanine (Hisuian Arcanine) - Smack Down - TM179
  (59, 5901, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Arcanine (Hisuian Arcanine) - Heat Crash - TM189
  (59, 5901, 535, 24, NULL, 2, NULL, NULL, 24002189, NULL, 3),
  -- Poliwag - Haze - TM174
  (60, 6000, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Poliwag - Focus Punch - TM192
  (60, 6000, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 2),
  -- Poliwag - Weather Ball - TM193
  (60, 6000, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Poliwhirl - Haze - TM174
  (61, 6100, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Poliwhirl - Focus Punch - TM192
  (61, 6100, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 2),
  -- Poliwhirl - Weather Ball - TM193
  (61, 6100, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Poliwrath - Haze - TM174
  (62, 6200, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Poliwrath - Knock Off - TM181
  (62, 6200, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Poliwrath - Vacuum Wave - TM184
  (62, 6200, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 3),
  -- Poliwrath - High Horsepower - TM186
  (62, 6200, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 4),
  -- Poliwrath - Focus Punch - TM192
  (62, 6200, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 5),
  -- Poliwrath - Weather Ball - TM193
  (62, 6200, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 6),
  -- Bellsprout - Toxic - TM175
  (69, 6900, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Bellsprout - Knock Off - TM181
  (69, 6900, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Bellsprout - Lunge - TM185
  (69, 6900, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 3),
  -- Bellsprout - Weather Ball - TM193
  (69, 6900, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 4),
  -- Bellsprout - Grassy Glide - TM194
  (69, 6900, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 5),
  -- Weepinbell - Toxic - TM175
  (70, 7000, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Weepinbell - Knock Off - TM181
  (70, 7000, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Weepinbell - Bug Bite - TM182
  (70, 7000, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 3),
  -- Weepinbell - Lunge - TM185
  (70, 7000, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 4),
  -- Weepinbell - Weather Ball - TM193
  (70, 7000, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 5),
  -- Weepinbell - Grassy Glide - TM194
  (70, 7000, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 6),
  -- Victreebel - Toxic - TM175
  (71, 7100, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Victreebel - Knock Off - TM181
  (71, 7100, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Victreebel - Bug Bite - TM182
  (71, 7100, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 3),
  -- Victreebel - Lunge - TM185
  (71, 7100, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 4),
  -- Victreebel - Weather Ball - TM193
  (71, 7100, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 5),
  -- Victreebel - Grassy Glide - TM194
  (71, 7100, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 6),
  -- Geodude - Smack Down - TM179
  (74, 7400, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 1),
  -- Geodude - Gyro Ball - TM180
  (74, 7400, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Geodude - High Horsepower - TM186
  (74, 7400, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 3),
  -- Geodude - Focus Punch - TM192
  (74, 7400, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Geodude (Alolan Geodude) - Charge - TM173
  (74, 7401, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Geodude (Alolan Geodude) - Smack Down - TM179
  (74, 7401, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Geodude (Alolan Geodude) - Gyro Ball - TM180
  (74, 7401, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 3),
  -- Geodude (Alolan Geodude) - High Horsepower - TM186
  (74, 7401, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 4),
  -- Geodude (Alolan Geodude) - Focus Punch - TM192
  (74, 7401, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 5),
  -- Graveler - Smack Down - TM179
  (75, 7500, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 1),
  -- Graveler - Gyro Ball - TM180
  (75, 7500, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Graveler - High Horsepower - TM186
  (75, 7500, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 3),
  -- Graveler - Focus Punch - TM192
  (75, 7500, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Graveler (Alolan Graveler) - Charge - TM173
  (75, 7501, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Graveler (Alolan Graveler) - Smack Down - TM179
  (75, 7501, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Graveler (Alolan Graveler) - Gyro Ball - TM180
  (75, 7501, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 3),
  -- Graveler (Alolan Graveler) - High Horsepower - TM186
  (75, 7501, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 4),
  -- Graveler (Alolan Graveler) - Focus Punch - TM192
  (75, 7501, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 5),
  -- Golem - Roar - TM172
  (76, 7600, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Golem - Smack Down - TM179
  (76, 7600, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Golem - Gyro Ball - TM180
  (76, 7600, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 3),
  -- Golem - High Horsepower - TM186
  (76, 7600, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 4),
  -- Golem - Focus Punch - TM192
  (76, 7600, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 5),
  -- Golem (Alolan Golem) - Roar - TM172
  (76, 7601, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Golem (Alolan Golem) - Charge - TM173
  (76, 7601, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 2),
  -- Golem (Alolan Golem) - Smack Down - TM179
  (76, 7601, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 3),
  -- Golem (Alolan Golem) - Gyro Ball - TM180
  (76, 7601, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 4),
  -- Golem (Alolan Golem) - Focus Punch - TM192
  (76, 7601, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 5),
  -- Slowpoke - Weather Ball - TM193
  (79, 7900, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 1),
  -- Slowpoke (Galarian Slowpoke) - Weather Ball - TM193
  (79, 7901, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 1),
  -- Slowbro - Scald - TM188
  (80, 8000, 503, 24, NULL, 2, NULL, NULL, 24002188, NULL, 1),
  -- Slowbro - Focus Punch - TM192
  (80, 8000, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 2),
  -- Slowbro - Weather Ball - TM193
  (80, 8000, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Slowbro (Galarian Slowbro) - Haze - TM174
  (80, 8002, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Slowbro (Galarian Slowbro) - Toxic - TM175
  (80, 8002, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Slowbro (Galarian Slowbro) - Smack Down - TM179
  (80, 8002, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 3),
  -- Slowbro (Galarian Slowbro) - Weather Ball - TM193
  (80, 8002, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 4),
  -- Magnemite - Charge - TM173
  (81, 8100, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Magnemite - Gravity - TM178
  (81, 8100, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 2),
  -- Magnemite - Gyro Ball - TM180
  (81, 8100, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 3),
  -- Magneton - Charge - TM173
  (82, 8200, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Magneton - Gravity - TM178
  (82, 8200, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 2),
  -- Magneton - Gyro Ball - TM180
  (82, 8200, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 3),
  -- Grimer - Haze - TM174
  (88, 8800, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Grimer - Toxic - TM175
  (88, 8800, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Grimer (Alolan Grimer) - Toxic - TM175
  (88, 8801, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Grimer (Alolan Grimer) - Spite - TM177
  (88, 8801, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Grimer (Alolan Grimer) - Knock Off - TM181
  (88, 8801, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Muk - Haze - TM174
  (89, 8900, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Muk - Toxic - TM175
  (89, 8900, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Muk - Spite - TM177
  (89, 8900, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 3),
  -- Muk - Knock Off - TM181
  (89, 8900, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 4),
  -- Muk - Lunge - TM185
  (89, 8900, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 5),
  -- Muk - Focus Punch - TM192
  (89, 8900, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 6),
  -- Muk - Lash Out - TM199
  (89, 8900, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 7),
  -- Muk (Alolan Muk) - Haze - TM174
  (89, 8901, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Muk (Alolan Muk) - Toxic - TM175
  (89, 8901, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Muk (Alolan Muk) - Spite - TM177
  (89, 8901, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 3),
  -- Muk (Alolan Muk) - Knock Off - TM181
  (89, 8901, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 4),
  -- Muk (Alolan Muk) - Focus Punch - TM192
  (89, 8901, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 5),
  -- Muk (Alolan Muk) - Lash Out - TM199
  (89, 8901, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 6),
  -- Shellder - Icicle Spear - TM187
  (90, 9000, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 1),
  -- Cloyster - Icicle Spear - TM187
  (91, 9100, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 1),
  -- Cloyster - Weather Ball - TM193
  (91, 9100, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Gastly - Haze - TM174
  (92, 9200, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Gastly - Toxic - TM175
  (92, 9200, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Gastly - Spite - TM177
  (92, 9200, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 3),
  -- Gastly - Poltergeist - TM198
  (92, 9200, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 4),
  -- Haunter - Haze - TM174
  (93, 9300, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Haunter - Toxic - TM175
  (93, 9300, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Haunter - Spite - TM177
  (93, 9300, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 3),
  -- Haunter - Poltergeist - TM198
  (93, 9300, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 4),
  -- Gengar - Haze - TM174
  (94, 9400, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Gengar - Toxic - TM175
  (94, 9400, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Gengar - Spite - TM177
  (94, 9400, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 3),
  -- Gengar - Knock Off - TM181
  (94, 9400, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 4),
  -- Gengar - Focus Punch - TM192
  (94, 9400, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 5),
  -- Gengar - Poltergeist - TM198
  (94, 9400, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 6),
  -- Drowzee - Haze - TM174
  (96, 9600, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Drowzee - Toxic - TM175
  (96, 9600, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Drowzee - Knock Off - TM181
  (96, 9600, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Drowzee - Focus Punch - TM192
  (96, 9600, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Hypno - Haze - TM174
  (97, 9700, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Hypno - Toxic - TM175
  (97, 9700, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Hypno - Knock Off - TM181
  (97, 9700, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Hypno - Focus Punch - TM192
  (97, 9700, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Voltorb - Charge - TM173
  (100, 10000, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Voltorb - Gyro Ball - TM180
  (100, 10000, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Voltorb (Hisuian Voltorb) - Charge - TM173
  (100, 10001, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Voltorb (Hisuian Voltorb) - Gyro Ball - TM180
  (100, 10001, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Voltorb (Hisuian Voltorb) - Grassy Glide - TM194
  (100, 10001, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 3);
