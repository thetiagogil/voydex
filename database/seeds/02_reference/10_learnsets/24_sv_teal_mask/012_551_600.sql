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
-- The Teal Mask learnset delta rows for species 551-600.
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
  -- Sandile - Roar - TM172
  (551, 55100, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Sandile - Sand Tomb - TM176
  (551, 55100, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 2),
  -- Sandile - Spite - TM177
  (551, 55100, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 3),
  -- Sandile - Lash Out - TM199
  (551, 55100, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 4),
  -- Krokorok - Roar - TM172
  (552, 55200, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Krokorok - Sand Tomb - TM176
  (552, 55200, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 2),
  -- Krokorok - Spite - TM177
  (552, 55200, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 3),
  -- Krokorok - Knock Off - TM181
  (552, 55200, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 4),
  -- Krokorok - Focus Punch - TM192
  (552, 55200, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 5),
  -- Krokorok - Lash Out - TM199
  (552, 55200, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 6),
  -- Krokorok - Scale Shot - TM200
  (552, 55200, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 7),
  -- Krookodile - Roar - TM172
  (553, 55300, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Krookodile - Sand Tomb - TM176
  (553, 55300, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 2),
  -- Krookodile - Spite - TM177
  (553, 55300, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 3),
  -- Krookodile - Smack Down - TM179
  (553, 55300, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 4),
  -- Krookodile - Knock Off - TM181
  (553, 55300, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 5),
  -- Krookodile - High Horsepower - TM186
  (553, 55300, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 6),
  -- Krookodile - Focus Punch - TM192
  (553, 55300, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 7),
  -- Krookodile - Lash Out - TM199
  (553, 55300, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 8),
  -- Krookodile - Scale Shot - TM200
  (553, 55300, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 9),
  -- Zorua - Roar - TM172
  (570, 57000, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Zorua - Spite - TM177
  (570, 57000, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Zorua - Knock Off - TM181
  (570, 57000, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Zorua - Burning Jealousy - TM195
  (570, 57000, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 4),
  -- Zorua - Lash Out - TM199
  (570, 57000, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 5),
  -- Zorua (Hisuian Zorua) - Roar - TM172
  (570, 57001, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Zorua (Hisuian Zorua) - Spite - TM177
  (570, 57001, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Zorua (Hisuian Zorua) - Knock Off - TM181
  (570, 57001, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Zorua (Hisuian Zorua) - Focus Punch - TM192
  (570, 57001, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Zorua (Hisuian Zorua) - Burning Jealousy - TM195
  (570, 57001, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 5),
  -- Zorua (Hisuian Zorua) - Lash Out - TM199
  (570, 57001, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 6),
  -- Zoroark - Roar - TM172
  (571, 57100, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Zoroark - Toxic - TM175
  (571, 57100, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Zoroark - Spite - TM177
  (571, 57100, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 3),
  -- Zoroark - Knock Off - TM181
  (571, 57100, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 4),
  -- Zoroark - Burning Jealousy - TM195
  (571, 57100, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 5),
  -- Zoroark - Lash Out - TM199
  (571, 57100, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 6),
  -- Zoroark (Hisuian Zoroark) - Roar - TM172
  (571, 57101, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Zoroark (Hisuian Zoroark) - Spite - TM177
  (571, 57101, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 2),
  -- Zoroark (Hisuian Zoroark) - Knock Off - TM181
  (571, 57101, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Zoroark (Hisuian Zoroark) - Focus Punch - TM192
  (571, 57101, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Zoroark (Hisuian Zoroark) - Burning Jealousy - TM195
  (571, 57101, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 5),
  -- Zoroark (Hisuian Zoroark) - Poltergeist - TM198
  (571, 57101, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 6),
  -- Zoroark (Hisuian Zoroark) - Lash Out - TM199
  (571, 57101, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 7),
  -- Gothita - Gravity - TM178
  (574, 57400, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Gothorita - Gravity - TM178
  (575, 57500, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Gothitelle - Gravity - TM178
  (576, 57600, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Swanna - Knock Off - TM181
  (581, 58100, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Swanna - Weather Ball - TM193
  (581, 58100, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 2),
  -- Swanna - Flip Turn - TM196
  (581, 58100, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 3),
  -- Deerling - Grassy Glide - TM194
  (585, 58500, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 1),
  -- Sawsbuck - High Horsepower - TM186
  (586, 58600, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 1),
  -- Sawsbuck - Grassy Glide - TM194
  (586, 58600, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 2),
  -- Foongus - Toxic - TM175
  (590, 59000, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Amoonguss - Toxic - TM175
  (591, 59100, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Alomomola - Scald - TM188
  (594, 59400, 503, 24, NULL, 2, NULL, NULL, 24002188, NULL, 1),
  -- Alomomola - Flip Turn - TM196
  (594, 59400, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 2),
  -- Alomomola - Scale Shot - TM200
  (594, 59400, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 3);
