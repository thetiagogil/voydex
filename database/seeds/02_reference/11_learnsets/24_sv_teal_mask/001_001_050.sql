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
-- The Teal Mask learnset delta rows for species 001-050.
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
  -- Charmander - Roar - TM172
  (4, 400, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Charmander - Focus Punch - TM192
  (4, 400, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 2),
  -- Charmander - Weather Ball - TM193
  (4, 400, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Charmeleon - Roar - TM172
  (5, 500, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Charmeleon - Focus Punch - TM192
  (5, 500, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 2),
  -- Charmeleon - Weather Ball - TM193
  (5, 500, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Charizard - Roar - TM172
  (6, 600, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Charizard - Heat Crash - TM189
  (6, 600, 535, 24, NULL, 2, NULL, NULL, 24002189, NULL, 2),
  -- Charizard - Focus Punch - TM192
  (6, 600, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Charizard - Weather Ball - TM193
  (6, 600, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 4),
  -- Ekans - Haze - TM174
  (23, 2300, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Ekans - Toxic - TM175
  (23, 2300, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Ekans - Spite - TM177
  (23, 2300, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 3),
  -- Ekans - Knock Off - TM181
  (23, 2300, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 4),
  -- Ekans - Lash Out - TM199
  (23, 2300, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 5),
  -- Ekans - Scale Shot - TM200
  (23, 2300, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 6),
  -- Arbok - Haze - TM174
  (24, 2400, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Arbok - Toxic - TM175
  (24, 2400, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Arbok - Spite - TM177
  (24, 2400, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 3),
  -- Arbok - Knock Off - TM181
  (24, 2400, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 4),
  -- Arbok - Lash Out - TM199
  (24, 2400, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 5),
  -- Arbok - Scale Shot - TM200
  (24, 2400, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 6),
  -- Pikachu - Charge - TM173
  (25, 2500, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Pikachu - Knock Off - TM181
  (25, 2500, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Pikachu - Focus Punch - TM192
  (25, 2500, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Raichu - Charge - TM173
  (26, 2600, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Raichu - Knock Off - TM181
  (26, 2600, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Raichu - Focus Punch - TM192
  (26, 2600, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Raichu (Alolan Raichu) - Charge - TM173
  (26, 2601, 268, 24, NULL, 2, NULL, NULL, 24002173, NULL, 1),
  -- Raichu (Alolan Raichu) - Knock Off - TM181
  (26, 2601, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Raichu (Alolan Raichu) - Focus Punch - TM192
  (26, 2601, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Sandshrew - Sand Tomb - TM176
  (27, 2700, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Sandshrew - Smack Down - TM179
  (27, 2700, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Sandshrew - Gyro Ball - TM180
  (27, 2700, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 3),
  -- Sandshrew - Knock Off - TM181
  (27, 2700, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 4),
  -- Sandshrew - Super Fang - TM183
  (27, 2700, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 5),
  -- Sandshrew - High Horsepower - TM186
  (27, 2700, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 6),
  -- Sandshrew - Focus Punch - TM192
  (27, 2700, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 7),
  -- Sandshrew (Alolan Sandshrew) - Gyro Ball - TM180
  (27, 2701, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 1),
  -- Sandshrew (Alolan Sandshrew) - Knock Off - TM181
  (27, 2701, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Sandshrew (Alolan Sandshrew) - Super Fang - TM183
  (27, 2701, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 3),
  -- Sandshrew (Alolan Sandshrew) - Icicle Spear - TM187
  (27, 2701, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 4),
  -- Sandshrew (Alolan Sandshrew) - Focus Punch - TM192
  (27, 2701, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 5),
  -- Sandslash - Sand Tomb - TM176
  (28, 2800, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Sandslash - Smack Down - TM179
  (28, 2800, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Sandslash - Gyro Ball - TM180
  (28, 2800, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 3),
  -- Sandslash - Knock Off - TM181
  (28, 2800, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 4),
  -- Sandslash - Super Fang - TM183
  (28, 2800, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 5),
  -- Sandslash - High Horsepower - TM186
  (28, 2800, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 6),
  -- Sandslash - Focus Punch - TM192
  (28, 2800, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 7),
  -- Sandslash (Alolan Sandslash) - Gyro Ball - TM180
  (28, 2801, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 1),
  -- Sandslash (Alolan Sandslash) - Knock Off - TM181
  (28, 2801, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Sandslash (Alolan Sandslash) - Super Fang - TM183
  (28, 2801, 162, 24, NULL, 2, NULL, NULL, 24002183, NULL, 3),
  -- Sandslash (Alolan Sandslash) - Icicle Spear - TM187
  (28, 2801, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 4),
  -- Sandslash (Alolan Sandslash) - Focus Punch - TM192
  (28, 2801, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 5),
  -- Clefairy - Gravity - TM178
  (35, 3500, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Clefairy - Knock Off - TM181
  (35, 3500, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Clefairy - Uproar - TM191
  (35, 3500, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Clefairy - Focus Punch - TM192
  (35, 3500, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Clefairy - Dual Wingbeat - TM197
  (35, 3500, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 5),
  -- Clefairy - Misty Explosion - TM201
  (35, 3500, 802, 24, NULL, 2, NULL, NULL, 24002201, NULL, 6),
  -- Clefable - Gravity - TM178
  (36, 3600, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Clefable - Knock Off - TM181
  (36, 3600, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Clefable - Uproar - TM191
  (36, 3600, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Clefable - Focus Punch - TM192
  (36, 3600, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Clefable - Dual Wingbeat - TM197
  (36, 3600, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 5),
  -- Clefable - Misty Explosion - TM201
  (36, 3600, 802, 24, NULL, 2, NULL, NULL, 24002201, NULL, 6),
  -- Vulpix - Roar - TM172
  (37, 3700, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Vulpix - Spite - TM177
  (37, 3700, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Vulpix - Weather Ball - TM193
  (37, 3700, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Vulpix - Burning Jealousy - TM195
  (37, 3700, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 4),
  -- Vulpix (Alolan Vulpix) - Roar - TM172
  (37, 3701, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Vulpix (Alolan Vulpix) - Spite - TM177
  (37, 3701, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Vulpix (Alolan Vulpix) - Icicle Spear - TM187
  (37, 3701, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 3),
  -- Vulpix (Alolan Vulpix) - Weather Ball - TM193
  (37, 3701, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 4),
  -- Ninetales - Roar - TM172
  (38, 3800, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Ninetales - Spite - TM177
  (38, 3800, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Ninetales - Weather Ball - TM193
  (38, 3800, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Ninetales - Burning Jealousy - TM195
  (38, 3800, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 4),
  -- Ninetales (Alolan Ninetales) - Roar - TM172
  (38, 3801, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Ninetales (Alolan Ninetales) - Spite - TM177
  (38, 3801, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Ninetales (Alolan Ninetales) - Icicle Spear - TM187
  (38, 3801, 333, 24, NULL, 2, NULL, NULL, 24002187, NULL, 3),
  -- Ninetales (Alolan Ninetales) - Weather Ball - TM193
  (38, 3801, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 4),
  -- Jigglypuff - Gravity - TM178
  (39, 3900, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Jigglypuff - Gyro Ball - TM180
  (39, 3900, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Jigglypuff - Knock Off - TM181
  (39, 3900, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Jigglypuff - Uproar - TM191
  (39, 3900, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 4),
  -- Jigglypuff - Focus Punch - TM192
  (39, 3900, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 5),
  -- Jigglypuff - Misty Explosion - TM201
  (39, 3900, 802, 24, NULL, 2, NULL, NULL, 24002201, NULL, 6),
  -- Wigglytuff - Gravity - TM178
  (40, 4000, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Wigglytuff - Gyro Ball - TM180
  (40, 4000, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 2),
  -- Wigglytuff - Knock Off - TM181
  (40, 4000, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Wigglytuff - Uproar - TM191
  (40, 4000, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 4),
  -- Wigglytuff - Focus Punch - TM192
  (40, 4000, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 5),
  -- Wigglytuff - Misty Explosion - TM201
  (40, 4000, 802, 24, NULL, 2, NULL, NULL, 24002201, NULL, 6),
  -- Venonat - Toxic - TM175
  (48, 4800, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Venonat - Bug Bite - TM182
  (48, 4800, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 2),
  -- Venonat - Lunge - TM185
  (48, 4800, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 3),
  -- Venomoth - Toxic - TM175
  (49, 4900, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Venomoth - Bug Bite - TM182
  (49, 4900, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 2),
  -- Venomoth - Lunge - TM185
  (49, 4900, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 3),
  -- Diglett - Sand Tomb - TM176
  (50, 5000, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Diglett - Smack Down - TM179
  (50, 5000, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Diglett - Uproar - TM191
  (50, 5000, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 3),
  -- Diglett (Alolan Diglett) - Sand Tomb - TM176
  (50, 5001, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Diglett (Alolan Diglett) - Smack Down - TM179
  (50, 5001, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2);
