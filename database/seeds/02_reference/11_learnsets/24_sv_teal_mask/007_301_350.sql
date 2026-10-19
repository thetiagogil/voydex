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
-- The Teal Mask learnset delta rows for species 301-350.
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
  -- Sableye - Spite - TM177
  (302, 30200, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Sableye - Gravity - TM178
  (302, 30200, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 2),
  -- Sableye - Gyro Ball - TM180
  (302, 30200, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 3),
  -- Sableye - Knock Off - TM181
  (302, 30200, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 4),
  -- Sableye - Focus Punch - TM192
  (302, 30200, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 5),
  -- Sableye - Poltergeist - TM198
  (302, 30200, 809, 24, NULL, 2, NULL, NULL, 24002198, NULL, 6),
  -- Sableye - Lash Out - TM199
  (302, 30200, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 7),
  -- Meditite - Focus Punch - TM192
  (307, 30700, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 1),
  -- Medicham - Gravity - TM178
  (308, 30800, 356, 24, NULL, 2, NULL, NULL, 24002178, NULL, 1),
  -- Medicham - Vacuum Wave - TM184
  (308, 30800, 410, 24, NULL, 2, NULL, NULL, 24002184, NULL, 2),
  -- Medicham - Focus Punch - TM192
  (308, 30800, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Volbeat - Bug Bite - TM182
  (313, 31300, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 1),
  -- Volbeat - Lunge - TM185
  (313, 31300, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 2),
  -- Volbeat - Focus Punch - TM192
  (313, 31300, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Illumise - Bug Bite - TM182
  (314, 31400, 450, 24, NULL, 2, NULL, NULL, 24002182, NULL, 1),
  -- Illumise - Focus Punch - TM192
  (314, 31400, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 2),
  -- Gulpin - Toxic - TM175
  (316, 31600, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Swalot - Toxic - TM175
  (317, 31700, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 1),
  -- Swalot - Knock Off - TM181
  (317, 31700, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Numel - Roar - TM172
  (322, 32200, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Numel - High Horsepower - TM186
  (322, 32200, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 2),
  -- Numel - Heat Crash - TM189
  (322, 32200, 535, 24, NULL, 2, NULL, NULL, 24002189, NULL, 3),
  -- Numel - Lash Out - TM199
  (322, 32200, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 4),
  -- Camerupt - Roar - TM172
  (323, 32300, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Camerupt - Smack Down - TM179
  (323, 32300, 479, 24, NULL, 2, NULL, NULL, 24002179, NULL, 2),
  -- Camerupt - High Horsepower - TM186
  (323, 32300, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 3),
  -- Camerupt - Heat Crash - TM189
  (323, 32300, 535, 24, NULL, 2, NULL, NULL, 24002189, NULL, 4),
  -- Camerupt - Lash Out - TM199
  (323, 32300, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 5),
  -- Torkoal - Gyro Ball - TM180
  (324, 32400, 360, 24, NULL, 2, NULL, NULL, 24002180, NULL, 1),
  -- Torkoal - Heat Crash - TM189
  (324, 32400, 535, 24, NULL, 2, NULL, NULL, 24002189, NULL, 2),
  -- Torkoal - Weather Ball - TM193
  (324, 32400, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Torkoal - Burning Jealousy - TM195
  (324, 32400, 807, 24, NULL, 2, NULL, NULL, 24002195, NULL, 4),
  -- Spoink - Lunge - TM185
  (325, 32500, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 1),
  -- Spoink - Uproar - TM191
  (325, 32500, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 2),
  -- Grumpig - Lunge - TM185
  (326, 32600, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 1),
  -- Grumpig - Uproar - TM191
  (326, 32600, 253, 24, NULL, 2, NULL, NULL, 24002191, NULL, 2),
  -- Grumpig - Focus Punch - TM192
  (326, 32600, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Cacnea - Spite - TM177
  (331, 33100, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Cacnea - Focus Punch - TM192
  (331, 33100, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 2),
  -- Cacnea - Grassy Glide - TM194
  (331, 33100, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 3),
  -- Cacturne - Spite - TM177
  (332, 33200, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Cacturne - Knock Off - TM181
  (332, 33200, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Cacturne - Lunge - TM185
  (332, 33200, 679, 24, NULL, 2, NULL, NULL, 24002185, NULL, 3),
  -- Cacturne - Focus Punch - TM192
  (332, 33200, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 4),
  -- Cacturne - Grassy Glide - TM194
  (332, 33200, 803, 24, NULL, 2, NULL, NULL, 24002194, NULL, 5),
  -- Cacturne - Lash Out - TM199
  (332, 33200, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 6),
  -- Swablu - Haze - TM174
  (333, 33300, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Swablu - Dual Wingbeat - TM197
  (333, 33300, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 2),
  -- Altaria - Roar - TM172
  (334, 33400, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Altaria - Haze - TM174
  (334, 33400, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 2),
  -- Altaria - Weather Ball - TM193
  (334, 33400, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Altaria - Dual Wingbeat - TM197
  (334, 33400, 814, 24, NULL, 2, NULL, NULL, 24002197, NULL, 4),
  -- Zangoose - Roar - TM172
  (335, 33500, 46, 24, NULL, 2, NULL, NULL, 24002172, NULL, 1),
  -- Zangoose - Knock Off - TM181
  (335, 33500, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Zangoose - Focus Punch - TM192
  (335, 33500, 264, 24, NULL, 2, NULL, NULL, 24002192, NULL, 3),
  -- Seviper - Haze - TM174
  (336, 33600, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Seviper - Toxic - TM175
  (336, 33600, 92, 24, NULL, 2, NULL, NULL, 24002175, NULL, 2),
  -- Seviper - Knock Off - TM181
  (336, 33600, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 3),
  -- Seviper - Lash Out - TM199
  (336, 33600, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 4),
  -- Barboach - High Horsepower - TM186
  (339, 33900, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 1),
  -- Whiscash - Sand Tomb - TM176
  (340, 34000, 328, 24, NULL, 2, NULL, NULL, 24002176, NULL, 1),
  -- Whiscash - High Horsepower - TM186
  (340, 34000, 667, 24, NULL, 2, NULL, NULL, 24002186, NULL, 2),
  -- Whiscash - Weather Ball - TM193
  (340, 34000, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Corphish - Knock Off - TM181
  (341, 34100, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 1),
  -- Crawdaunt - Spite - TM177
  (342, 34200, 180, 24, NULL, 2, NULL, NULL, 24002177, NULL, 1),
  -- Crawdaunt - Knock Off - TM181
  (342, 34200, 282, 24, NULL, 2, NULL, NULL, 24002181, NULL, 2),
  -- Crawdaunt - Lash Out - TM199
  (342, 34200, 808, 24, NULL, 2, NULL, NULL, 24002199, NULL, 3),
  -- Feebas - Haze - TM174
  (349, 34900, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Feebas - Scale Shot - TM200
  (349, 34900, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 2),
  -- Milotic - Haze - TM174
  (350, 35000, 114, 24, NULL, 2, NULL, NULL, 24002174, NULL, 1),
  -- Milotic - Scald - TM188
  (350, 35000, 503, 24, NULL, 2, NULL, NULL, 24002188, NULL, 2),
  -- Milotic - Weather Ball - TM193
  (350, 35000, 311, 24, NULL, 2, NULL, NULL, 24002193, NULL, 3),
  -- Milotic - Flip Turn - TM196
  (350, 35000, 812, 24, NULL, 2, NULL, NULL, 24002196, NULL, 4),
  -- Milotic - Scale Shot - TM200
  (350, 35000, 799, 24, NULL, 2, NULL, NULL, 24002200, NULL, 5);
