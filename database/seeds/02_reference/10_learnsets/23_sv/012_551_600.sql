-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Scarlet / Violet Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Scarlet / Violet learnset pages.
-- Scope note: base Scarlet / Violet rows include level-up, base TM001-TM171, and egg moves for Pokémon compatible with this version-group scope.
-- DLC note: Teal Mask and Indigo Disk TM additions remain seeded as separate additive content-scope deltas.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Scarlet / Violet learnsets for species 551-600.
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
  -- Sandile - Leer - Level 1
  (551, 55100, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sandile - Power Trip - Level 1
  (551, 55100, 681, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sandile - Sand Attack - Level 3
  (551, 55100, 28, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Sandile - Hone Claws - Level 6
  (551, 55100, 468, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Sandile - Sand Tomb - Level 9
  (551, 55100, 328, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Sandile - Scary Face - Level 12
  (551, 55100, 184, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Sandile - Bite - Level 15
  (551, 55100, 44, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Sandile - Torment - Level 18
  (551, 55100, 259, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Sandile - Dig - Level 21
  (551, 55100, 91, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Sandile - Swagger - Level 24
  (551, 55100, 207, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Sandile - Crunch - Level 27
  (551, 55100, 242, 23, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Sandile - Sandstorm - Level 30
  (551, 55100, 201, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Sandile - Foul Play - Level 33
  (551, 55100, 492, 23, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Sandile - Earthquake - Level 36
  (551, 55100, 89, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Sandile - Thrash - Level 39
  (551, 55100, 37, 23, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Sandile - Take Down - TM001
  (551, 55100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Sandile - Mud-Slap - TM005
  (551, 55100, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 17),
  -- Sandile - Scary Face - TM006
  (551, 55100, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Sandile - Protect - TM007
  (551, 55100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Sandile - Fire Fang - TM008
  (551, 55100, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 20),
  -- Sandile - Thunder Fang - TM009
  (551, 55100, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 21),
  -- Sandile - Thief - TM018
  (551, 55100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Sandile - Facade - TM025
  (551, 55100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Sandile - Bulldoze - TM028
  (551, 55100, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 24),
  -- Sandile - Snarl - TM030
  (551, 55100, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 25),
  -- Sandile - Mud Shot - TM035
  (551, 55100, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 26),
  -- Sandile - Rock Tomb - TM036
  (551, 55100, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 27),
  -- Sandile - Fling - TM043
  (551, 55100, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 28),
  -- Sandile - Endure - TM047
  (551, 55100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Sandile - Sandstorm - TM051
  (551, 55100, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 30),
  -- Sandile - Dig - TM055
  (551, 55100, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 31),
  -- Sandile - Brick Break - TM058
  (551, 55100, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 32),
  -- Sandile - Shadow Claw - TM061
  (551, 55100, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 33),
  -- Sandile - Foul Play - TM062
  (551, 55100, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 34),
  -- Sandile - Body Slam - TM066
  (551, 55100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Sandile - Sleep Talk - TM070
  (551, 55100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Sandile - Grass Knot - TM081
  (551, 55100, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 37),
  -- Sandile - Stomping Tantrum - TM084
  (551, 55100, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 38),
  -- Sandile - Rest - TM085
  (551, 55100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Sandile - Rock Slide - TM086
  (551, 55100, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 40),
  -- Sandile - Taunt - TM087
  (551, 55100, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 41),
  -- Sandile - Dark Pulse - TM094
  (551, 55100, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 42),
  -- Sandile - Substitute - TM103
  (551, 55100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Sandile - Crunch - TM108
  (551, 55100, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 44),
  -- Sandile - Stealth Rock - TM116
  (551, 55100, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 45),
  -- Sandile - Helping Hand - TM130
  (551, 55100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 46),
  -- Sandile - Earth Power - TM133
  (551, 55100, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 47),
  -- Sandile - Sludge Bomb - TM148
  (551, 55100, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 48),
  -- Sandile - Earthquake - TM149
  (551, 55100, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 49),
  -- Sandile - Stone Edge - TM150
  (551, 55100, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 50),
  -- Sandile - Tera Blast - TM171
  (551, 55100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Sandile - Double-Edge - Egg
  (551, 55100, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Sandile - Counter - Egg
  (551, 55100, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Sandile - Spite - Egg
  (551, 55100, 180, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Sandile - Aqua Tail - Egg
  (551, 55100, 401, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Krokorok - Sand Attack - Level 1
  (552, 55200, 28, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Krokorok - Leer - Level 1
  (552, 55200, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Krokorok - Hone Claws - Level 1
  (552, 55200, 468, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Krokorok - Power Trip - Level 1
  (552, 55200, 681, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Krokorok - Sand Tomb - Level 9
  (552, 55200, 328, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Krokorok - Scary Face - Level 12
  (552, 55200, 184, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Krokorok - Bite - Level 15
  (552, 55200, 44, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Krokorok - Torment - Level 18
  (552, 55200, 259, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Krokorok - Dig - Level 21
  (552, 55200, 91, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Krokorok - Swagger - Level 24
  (552, 55200, 207, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Krokorok - Crunch - Level 27
  (552, 55200, 242, 23, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Krokorok - Sandstorm - Level 32
  (552, 55200, 201, 23, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Krokorok - Foul Play - Level 35
  (552, 55200, 492, 23, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Krokorok - Earthquake - Level 42
  (552, 55200, 89, 23, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Krokorok - Thrash - Level 47
  (552, 55200, 37, 23, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Krokorok - Take Down - TM001
  (552, 55200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Krokorok - Mud-Slap - TM005
  (552, 55200, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 17),
  -- Krokorok - Scary Face - TM006
  (552, 55200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Krokorok - Protect - TM007
  (552, 55200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Krokorok - Fire Fang - TM008
  (552, 55200, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 20),
  -- Krokorok - Thunder Fang - TM009
  (552, 55200, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 21),
  -- Krokorok - Low Kick - TM012
  (552, 55200, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 22),
  -- Krokorok - Thief - TM018
  (552, 55200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Krokorok - Facade - TM025
  (552, 55200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Krokorok - Aerial Ace - TM027
  (552, 55200, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 25),
  -- Krokorok - Bulldoze - TM028
  (552, 55200, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 26),
  -- Krokorok - Snarl - TM030
  (552, 55200, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 27),
  -- Krokorok - Mud Shot - TM035
  (552, 55200, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 28),
  -- Krokorok - Rock Tomb - TM036
  (552, 55200, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 29),
  -- Krokorok - Low Sweep - TM039
  (552, 55200, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 30),
  -- Krokorok - Fling - TM043
  (552, 55200, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 31),
  -- Krokorok - Dragon Tail - TM044
  (552, 55200, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 32),
  -- Krokorok - Endure - TM047
  (552, 55200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 33),
  -- Krokorok - Sandstorm - TM051
  (552, 55200, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 34),
  -- Krokorok - Dig - TM055
  (552, 55200, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 35),
  -- Krokorok - Brick Break - TM058
  (552, 55200, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 36),
  -- Krokorok - Shadow Claw - TM061
  (552, 55200, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 37),
  -- Krokorok - Foul Play - TM062
  (552, 55200, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 38),
  -- Krokorok - Body Slam - TM066
  (552, 55200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 39),
  -- Krokorok - Sleep Talk - TM070
  (552, 55200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 40),
  -- Krokorok - Dragon Claw - TM078
  (552, 55200, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 41),
  -- Krokorok - Grass Knot - TM081
  (552, 55200, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 42),
  -- Krokorok - Stomping Tantrum - TM084
  (552, 55200, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 43),
  -- Krokorok - Rest - TM085
  (552, 55200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 44),
  -- Krokorok - Rock Slide - TM086
  (552, 55200, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 45),
  -- Krokorok - Taunt - TM087
  (552, 55200, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 46),
  -- Krokorok - Dark Pulse - TM094
  (552, 55200, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 47),
  -- Krokorok - Substitute - TM103
  (552, 55200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 48),
  -- Krokorok - Crunch - TM108
  (552, 55200, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 49),
  -- Krokorok - Stealth Rock - TM116
  (552, 55200, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 50),
  -- Krokorok - Helping Hand - TM130
  (552, 55200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 51),
  -- Krokorok - Earth Power - TM133
  (552, 55200, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 52),
  -- Krokorok - Sludge Bomb - TM148
  (552, 55200, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 53),
  -- Krokorok - Earthquake - TM149
  (552, 55200, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 54),
  -- Krokorok - Stone Edge - TM150
  (552, 55200, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 55),
  -- Krokorok - Tera Blast - TM171
  (552, 55200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 56),
  -- Krokorok - Double-Edge - Egg
  (552, 55200, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Krokorok - Counter - Egg
  (552, 55200, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Krokorok - Spite - Egg
  (552, 55200, 180, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Krokorok - Aqua Tail - Egg
  (552, 55200, 401, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Krookodile - Sand Attack - Level 1
  (553, 55300, 28, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Krookodile - Leer - Level 1
  (553, 55300, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Krookodile - Hone Claws - Level 1
  (553, 55300, 468, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Krookodile - Power Trip - Level 1
  (553, 55300, 681, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Krookodile - Sand Tomb - Level 9
  (553, 55300, 328, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Krookodile - Scary Face - Level 12
  (553, 55300, 184, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Krookodile - Bite - Level 15
  (553, 55300, 44, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Krookodile - Torment - Level 18
  (553, 55300, 259, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Krookodile - Dig - Level 21
  (553, 55300, 91, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Krookodile - Swagger - Level 24
  (553, 55300, 207, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Krookodile - Crunch - Level 27
  (553, 55300, 242, 23, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Krookodile - Sandstorm - Level 32
  (553, 55300, 201, 23, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Krookodile - Foul Play - Level 35
  (553, 55300, 492, 23, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Krookodile - Earthquake - Level 44
  (553, 55300, 89, 23, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Krookodile - Thrash - Level 51
  (553, 55300, 37, 23, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Krookodile - Outrage - Level 58
  (553, 55300, 200, 23, NULL, 1, 58, NULL, NULL, NULL, 16),
  -- Krookodile - Take Down - TM001
  (553, 55300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Krookodile - Mud-Slap - TM005
  (553, 55300, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Krookodile - Scary Face - TM006
  (553, 55300, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Krookodile - Protect - TM007
  (553, 55300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Krookodile - Fire Fang - TM008
  (553, 55300, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 21),
  -- Krookodile - Thunder Fang - TM009
  (553, 55300, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 22),
  -- Krookodile - Low Kick - TM012
  (553, 55300, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 23),
  -- Krookodile - Thief - TM018
  (553, 55300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 24),
  -- Krookodile - Facade - TM025
  (553, 55300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Krookodile - Aerial Ace - TM027
  (553, 55300, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 26),
  -- Krookodile - Bulldoze - TM028
  (553, 55300, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 27),
  -- Krookodile - Snarl - TM030
  (553, 55300, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 28),
  -- Krookodile - Mud Shot - TM035
  (553, 55300, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 29),
  -- Krookodile - Rock Tomb - TM036
  (553, 55300, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 30),
  -- Krookodile - Low Sweep - TM039
  (553, 55300, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 31),
  -- Krookodile - Fling - TM043
  (553, 55300, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 32),
  -- Krookodile - Dragon Tail - TM044
  (553, 55300, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 33),
  -- Krookodile - Endure - TM047
  (553, 55300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 34),
  -- Krookodile - Sandstorm - TM051
  (553, 55300, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 35),
  -- Krookodile - Dig - TM055
  (553, 55300, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 36),
  -- Krookodile - Brick Break - TM058
  (553, 55300, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 37),
  -- Krookodile - Shadow Claw - TM061
  (553, 55300, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 38),
  -- Krookodile - Foul Play - TM062
  (553, 55300, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 39),
  -- Krookodile - Bulk Up - TM064
  (553, 55300, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 40),
  -- Krookodile - Body Slam - TM066
  (553, 55300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 41),
  -- Krookodile - Sleep Talk - TM070
  (553, 55300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 42),
  -- Krookodile - Dragon Claw - TM078
  (553, 55300, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 43),
  -- Krookodile - Grass Knot - TM081
  (553, 55300, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 44),
  -- Krookodile - Stomping Tantrum - TM084
  (553, 55300, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 45),
  -- Krookodile - Rest - TM085
  (553, 55300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Krookodile - Rock Slide - TM086
  (553, 55300, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 47),
  -- Krookodile - Taunt - TM087
  (553, 55300, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 48),
  -- Krookodile - Dark Pulse - TM094
  (553, 55300, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 49),
  -- Krookodile - Gunk Shot - TM102
  (553, 55300, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 50),
  -- Krookodile - Substitute - TM103
  (553, 55300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 51),
  -- Krookodile - Crunch - TM108
  (553, 55300, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 52),
  -- Krookodile - Dragon Pulse - TM115
  (553, 55300, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 53),
  -- Krookodile - Stealth Rock - TM116
  (553, 55300, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 54),
  -- Krookodile - Helping Hand - TM130
  (553, 55300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 55),
  -- Krookodile - Earth Power - TM133
  (553, 55300, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 56),
  -- Krookodile - Sludge Bomb - TM148
  (553, 55300, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 57),
  -- Krookodile - Earthquake - TM149
  (553, 55300, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 58),
  -- Krookodile - Stone Edge - TM150
  (553, 55300, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 59),
  -- Krookodile - Giga Impact - TM152
  (553, 55300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 60),
  -- Krookodile - Outrage - TM156
  (553, 55300, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 61),
  -- Krookodile - Focus Blast - TM158
  (553, 55300, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 62),
  -- Krookodile - Hyper Beam - TM163
  (553, 55300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 63),
  -- Krookodile - Close Combat - TM167
  (553, 55300, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 64),
  -- Krookodile - Tera Blast - TM171
  (553, 55300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 65),
  -- Krookodile - Double-Edge - Egg
  (553, 55300, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Krookodile - Counter - Egg
  (553, 55300, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Krookodile - Spite - Egg
  (553, 55300, 180, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Krookodile - Aqua Tail - Egg
  (553, 55300, 401, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Scraggy - Leer - Level 1
  (559, 55900, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scraggy - Low Kick - Level 1
  (559, 55900, 67, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scraggy - Payback - Level 4
  (559, 55900, 371, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Scraggy - Headbutt - Level 8
  (559, 55900, 29, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Scraggy - Sand Attack - Level 12
  (559, 55900, 28, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Scraggy - Facade - Level 16
  (559, 55900, 263, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Scraggy - Torment - Level 20
  (559, 55900, 259, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Scraggy - Beat Up - Level 24
  (559, 55900, 251, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Scraggy - Scary Face - Level 28
  (559, 55900, 184, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Scraggy - Brick Break - Level 32
  (559, 55900, 280, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Scraggy - Swagger - Level 36
  (559, 55900, 207, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Scraggy - Crunch - Level 40
  (559, 55900, 242, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Scraggy - High Jump Kick - Level 44
  (559, 55900, 136, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Scraggy - Focus Punch - Level 48
  (559, 55900, 264, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Scraggy - Head Smash - Level 52
  (559, 55900, 457, 23, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Scraggy - Take Down - TM001
  (559, 55900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Scraggy - Fake Tears - TM003
  (559, 55900, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 17),
  -- Scraggy - Scary Face - TM006
  (559, 55900, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Scraggy - Protect - TM007
  (559, 55900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Scraggy - Low Kick - TM012
  (559, 55900, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Scraggy - Acid Spray - TM013
  (559, 55900, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 21),
  -- Scraggy - Thief - TM018
  (559, 55900, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Scraggy - Trailblaze - TM020
  (559, 55900, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 23),
  -- Scraggy - Facade - TM025
  (559, 55900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Scraggy - Snarl - TM030
  (559, 55900, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 25),
  -- Scraggy - Rock Tomb - TM036
  (559, 55900, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 26),
  -- Scraggy - Low Sweep - TM039
  (559, 55900, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 27),
  -- Scraggy - Fling - TM043
  (559, 55900, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 28),
  -- Scraggy - Dragon Tail - TM044
  (559, 55900, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 29),
  -- Scraggy - Endure - TM047
  (559, 55900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Scraggy - Sunny Day - TM049
  (559, 55900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Scraggy - Rain Dance - TM050
  (559, 55900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Scraggy - Dig - TM055
  (559, 55900, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 33),
  -- Scraggy - Brick Break - TM058
  (559, 55900, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 34),
  -- Scraggy - Zen Headbutt - TM059
  (559, 55900, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 35),
  -- Scraggy - Foul Play - TM062
  (559, 55900, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 36),
  -- Scraggy - Bulk Up - TM064
  (559, 55900, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 37),
  -- Scraggy - Fire Punch - TM067
  (559, 55900, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 38),
  -- Scraggy - Thunder Punch - TM068
  (559, 55900, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 39),
  -- Scraggy - Ice Punch - TM069
  (559, 55900, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 40),
  -- Scraggy - Sleep Talk - TM070
  (559, 55900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 41),
  -- Scraggy - Drain Punch - TM073
  (559, 55900, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 42),
  -- Scraggy - Dragon Claw - TM078
  (559, 55900, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 43),
  -- Scraggy - Grass Knot - TM081
  (559, 55900, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 44),
  -- Scraggy - Poison Jab - TM083
  (559, 55900, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 45),
  -- Scraggy - Rest - TM085
  (559, 55900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Scraggy - Rock Slide - TM086
  (559, 55900, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 47),
  -- Scraggy - Taunt - TM087
  (559, 55900, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 48),
  -- Scraggy - Dark Pulse - TM094
  (559, 55900, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 49),
  -- Scraggy - Iron Head - TM099
  (559, 55900, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 50),
  -- Scraggy - Dragon Dance - TM100
  (559, 55900, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 51),
  -- Scraggy - Substitute - TM103
  (559, 55900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 52),
  -- Scraggy - Iron Defense - TM104
  (559, 55900, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 53),
  -- Scraggy - Crunch - TM108
  (559, 55900, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 54),
  -- Scraggy - Dragon Pulse - TM115
  (559, 55900, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 55),
  -- Scraggy - Encore - TM122
  (559, 55900, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 56),
  -- Scraggy - Amnesia - TM128
  (559, 55900, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 57),
  -- Scraggy - Helping Hand - TM130
  (559, 55900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 58),
  -- Scraggy - Sludge Bomb - TM148
  (559, 55900, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 59),
  -- Scraggy - Stone Edge - TM150
  (559, 55900, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 60),
  -- Scraggy - Focus Blast - TM158
  (559, 55900, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 61),
  -- Scraggy - Close Combat - TM167
  (559, 55900, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 62),
  -- Scraggy - Tera Blast - TM171
  (559, 55900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 63),
  -- Scraggy - Counter - Egg
  (559, 55900, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Scraggy - Detect - Egg
  (559, 55900, 197, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Scraggy - Fake Out - Egg
  (559, 55900, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Scraggy - Quick Guard - Egg
  (559, 55900, 501, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Scrafty - Headbutt - Level 1
  (560, 56000, 29, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scrafty - Leer - Level 1
  (560, 56000, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scrafty - Low Kick - Level 1
  (560, 56000, 67, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Scrafty - Payback - Level 1
  (560, 56000, 371, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Scrafty - Sand Attack - Level 12
  (560, 56000, 28, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Scrafty - Facade - Level 16
  (560, 56000, 263, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Scrafty - Torment - Level 20
  (560, 56000, 259, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Scrafty - Beat Up - Level 24
  (560, 56000, 251, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Scrafty - Scary Face - Level 28
  (560, 56000, 184, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Scrafty - Brick Break - Level 32
  (560, 56000, 280, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Scrafty - Swagger - Level 36
  (560, 56000, 207, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Scrafty - Crunch - Level 42
  (560, 56000, 242, 23, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Scrafty - High Jump Kick - Level 48
  (560, 56000, 136, 23, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Scrafty - Focus Punch - Level 54
  (560, 56000, 264, 23, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Scrafty - Head Smash - Level 60
  (560, 56000, 457, 23, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Scrafty - Take Down - TM001
  (560, 56000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Scrafty - Fake Tears - TM003
  (560, 56000, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 17),
  -- Scrafty - Scary Face - TM006
  (560, 56000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Scrafty - Protect - TM007
  (560, 56000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Scrafty - Low Kick - TM012
  (560, 56000, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Scrafty - Acid Spray - TM013
  (560, 56000, 491, 23, NULL, 2, NULL, NULL, 23002013, NULL, 21),
  -- Scrafty - Thief - TM018
  (560, 56000, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Scrafty - Trailblaze - TM020
  (560, 56000, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 23),
  -- Scrafty - Facade - TM025
  (560, 56000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Scrafty - Snarl - TM030
  (560, 56000, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 25),
  -- Scrafty - Rock Tomb - TM036
  (560, 56000, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 26),
  -- Scrafty - Low Sweep - TM039
  (560, 56000, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 27),
  -- Scrafty - Fling - TM043
  (560, 56000, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 28),
  -- Scrafty - Dragon Tail - TM044
  (560, 56000, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 29),
  -- Scrafty - Endure - TM047
  (560, 56000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Scrafty - Sunny Day - TM049
  (560, 56000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Scrafty - Rain Dance - TM050
  (560, 56000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Scrafty - Dig - TM055
  (560, 56000, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 33),
  -- Scrafty - Brick Break - TM058
  (560, 56000, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 34),
  -- Scrafty - Zen Headbutt - TM059
  (560, 56000, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 35),
  -- Scrafty - Foul Play - TM062
  (560, 56000, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 36),
  -- Scrafty - Bulk Up - TM064
  (560, 56000, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 37),
  -- Scrafty - Body Slam - TM066
  (560, 56000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 38),
  -- Scrafty - Fire Punch - TM067
  (560, 56000, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 39),
  -- Scrafty - Thunder Punch - TM068
  (560, 56000, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 40),
  -- Scrafty - Ice Punch - TM069
  (560, 56000, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 41),
  -- Scrafty - Sleep Talk - TM070
  (560, 56000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 42),
  -- Scrafty - Drain Punch - TM073
  (560, 56000, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 43),
  -- Scrafty - Dragon Claw - TM078
  (560, 56000, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 44),
  -- Scrafty - Metronome - TM080
  (560, 56000, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 45),
  -- Scrafty - Grass Knot - TM081
  (560, 56000, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 46),
  -- Scrafty - Poison Jab - TM083
  (560, 56000, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 47),
  -- Scrafty - Rest - TM085
  (560, 56000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 48),
  -- Scrafty - Rock Slide - TM086
  (560, 56000, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 49),
  -- Scrafty - Taunt - TM087
  (560, 56000, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 50),
  -- Scrafty - Swords Dance - TM088
  (560, 56000, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 51),
  -- Scrafty - Dark Pulse - TM094
  (560, 56000, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 52),
  -- Scrafty - Iron Head - TM099
  (560, 56000, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 53),
  -- Scrafty - Dragon Dance - TM100
  (560, 56000, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 54),
  -- Scrafty - Substitute - TM103
  (560, 56000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 55),
  -- Scrafty - Iron Defense - TM104
  (560, 56000, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 56),
  -- Scrafty - Crunch - TM108
  (560, 56000, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 57),
  -- Scrafty - Dragon Pulse - TM115
  (560, 56000, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 58),
  -- Scrafty - Encore - TM122
  (560, 56000, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 59),
  -- Scrafty - Amnesia - TM128
  (560, 56000, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 60),
  -- Scrafty - Helping Hand - TM130
  (560, 56000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 61),
  -- Scrafty - Reversal - TM134
  (560, 56000, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 62),
  -- Scrafty - Sludge Bomb - TM148
  (560, 56000, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 63),
  -- Scrafty - Stone Edge - TM150
  (560, 56000, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 64),
  -- Scrafty - Giga Impact - TM152
  (560, 56000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 65),
  -- Scrafty - Outrage - TM156
  (560, 56000, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 66),
  -- Scrafty - Focus Blast - TM158
  (560, 56000, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 67),
  -- Scrafty - Hyper Beam - TM163
  (560, 56000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 68),
  -- Scrafty - Close Combat - TM167
  (560, 56000, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 69),
  -- Scrafty - Tera Blast - TM171
  (560, 56000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 70),
  -- Scrafty - Counter - Egg
  (560, 56000, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Scrafty - Detect - Egg
  (560, 56000, 197, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Scrafty - Fake Out - Egg
  (560, 56000, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Scrafty - Quick Guard - Egg
  (560, 56000, 501, 23, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Zorua - Scratch - Level 1
  (570, 57000, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zorua - Leer - Level 1
  (570, 57000, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zorua - Torment - Level 4
  (570, 57000, 259, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Zorua - Hone Claws - Level 8
  (570, 57000, 468, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Zorua - Fury Swipes - Level 12
  (570, 57000, 154, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Zorua - Scary Face - Level 16
  (570, 57000, 184, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Zorua - Taunt - Level 20
  (570, 57000, 269, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Zorua - Knock Off - Level 24
  (570, 57000, 282, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Zorua - Fake Tears - Level 28
  (570, 57000, 313, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Zorua - Agility - Level 32
  (570, 57000, 97, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Zorua - Imprison - Level 36
  (570, 57000, 286, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Zorua - Night Daze - Level 40
  (570, 57000, 539, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Zorua - Nasty Plot - Level 44
  (570, 57000, 417, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Zorua - Foul Play - Level 48
  (570, 57000, 492, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Zorua - Take Down - TM001
  (570, 57000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Zorua - Fake Tears - TM003
  (570, 57000, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 16),
  -- Zorua - Agility - TM004
  (570, 57000, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Zorua - Scary Face - TM006
  (570, 57000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Zorua - Protect - TM007
  (570, 57000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Zorua - Confuse Ray - TM017
  (570, 57000, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 20),
  -- Zorua - Thief - TM018
  (570, 57000, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Zorua - Facade - TM025
  (570, 57000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Zorua - Hex - TM029
  (570, 57000, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 23),
  -- Zorua - Snarl - TM030
  (570, 57000, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 24),
  -- Zorua - Swift - TM032
  (570, 57000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Zorua - Night Shade - TM042
  (570, 57000, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 26),
  -- Zorua - Fling - TM043
  (570, 57000, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 27),
  -- Zorua - Endure - TM047
  (570, 57000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Zorua - Sunny Day - TM049
  (570, 57000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Zorua - Rain Dance - TM050
  (570, 57000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Zorua - Dig - TM055
  (570, 57000, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 31),
  -- Zorua - U-turn - TM060
  (570, 57000, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 32),
  -- Zorua - Shadow Claw - TM061
  (570, 57000, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 33),
  -- Zorua - Foul Play - TM062
  (570, 57000, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 34),
  -- Zorua - Sleep Talk - TM070
  (570, 57000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Zorua - Grass Knot - TM081
  (570, 57000, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 36),
  -- Zorua - Rest - TM085
  (570, 57000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Zorua - Taunt - TM087
  (570, 57000, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 38),
  -- Zorua - Swords Dance - TM088
  (570, 57000, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 39),
  -- Zorua - Imprison - TM092
  (570, 57000, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 40),
  -- Zorua - Dark Pulse - TM094
  (570, 57000, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 41),
  -- Zorua - Substitute - TM103
  (570, 57000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Zorua - Trick - TM109
  (570, 57000, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 43),
  -- Zorua - Shadow Ball - TM114
  (570, 57000, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 44),
  -- Zorua - Hyper Voice - TM117
  (570, 57000, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 45),
  -- Zorua - Encore - TM122
  (570, 57000, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 46),
  -- Zorua - Calm Mind - TM129
  (570, 57000, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 47),
  -- Zorua - Helping Hand - TM130
  (570, 57000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 48),
  -- Zorua - Nasty Plot - TM140
  (570, 57000, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 49),
  -- Zorua - Sludge Bomb - TM148
  (570, 57000, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 50),
  -- Zorua - Tera Blast - TM171
  (570, 57000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Zorua - Counter - Egg
  (570, 57000, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Zorua - Detect - Egg
  (570, 57000, 197, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Zorua - Memento - Egg
  (570, 57000, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Zorua - Extrasensory - Egg
  (570, 57000, 326, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Zorua - Copycat - Egg
  (570, 57000, 383, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Zorua - Sucker Punch - Egg
  (570, 57000, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Zorua (Hisuian Zorua) - Scratch - Level 1
  (570, 57001, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zorua (Hisuian Zorua) - Leer - Level 1
  (570, 57001, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zorua (Hisuian Zorua) - Torment - Level 4
  (570, 57001, 259, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Zorua (Hisuian Zorua) - Hone Claws - Level 8
  (570, 57001, 468, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Zorua (Hisuian Zorua) - Shadow Sneak - Level 12
  (570, 57001, 425, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Zorua (Hisuian Zorua) - Curse - Level 16
  (570, 57001, 174, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Zorua (Hisuian Zorua) - Taunt - Level 20
  (570, 57001, 269, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Zorua (Hisuian Zorua) - Knock Off - Level 24
  (570, 57001, 282, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Zorua (Hisuian Zorua) - Spite - Level 28
  (570, 57001, 180, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Zorua (Hisuian Zorua) - Agility - Level 32
  (570, 57001, 97, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Zorua (Hisuian Zorua) - Shadow Ball - Level 36
  (570, 57001, 247, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Zorua (Hisuian Zorua) - Bitter Malice - Level 40
  (570, 57001, 841, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Zorua (Hisuian Zorua) - Nasty Plot - Level 44
  (570, 57001, 417, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Zorua (Hisuian Zorua) - Foul Play - Level 48
  (570, 57001, 492, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Zorua (Hisuian Zorua) - Take Down - TM001
  (570, 57001, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Zorua (Hisuian Zorua) - Fake Tears - TM003
  (570, 57001, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 16),
  -- Zorua (Hisuian Zorua) - Agility - TM004
  (570, 57001, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Zorua (Hisuian Zorua) - Protect - TM007
  (570, 57001, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Zorua (Hisuian Zorua) - Confuse Ray - TM017
  (570, 57001, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 19),
  -- Zorua (Hisuian Zorua) - Thief - TM018
  (570, 57001, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Zorua (Hisuian Zorua) - Facade - TM025
  (570, 57001, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Zorua (Hisuian Zorua) - Hex - TM029
  (570, 57001, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 22),
  -- Zorua (Hisuian Zorua) - Snarl - TM030
  (570, 57001, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 23),
  -- Zorua (Hisuian Zorua) - Swift - TM032
  (570, 57001, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Zorua (Hisuian Zorua) - Icy Wind - TM034
  (570, 57001, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 25),
  -- Zorua (Hisuian Zorua) - Night Shade - TM042
  (570, 57001, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 26),
  -- Zorua (Hisuian Zorua) - Fling - TM043
  (570, 57001, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 27),
  -- Zorua (Hisuian Zorua) - Endure - TM047
  (570, 57001, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Zorua (Hisuian Zorua) - Rain Dance - TM050
  (570, 57001, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Zorua (Hisuian Zorua) - Snowscape - TM052
  (570, 57001, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 30),
  -- Zorua (Hisuian Zorua) - Dig - TM055
  (570, 57001, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 31),
  -- Zorua (Hisuian Zorua) - U-turn - TM060
  (570, 57001, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 32),
  -- Zorua (Hisuian Zorua) - Shadow Claw - TM061
  (570, 57001, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 33),
  -- Zorua (Hisuian Zorua) - Foul Play - TM062
  (570, 57001, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 34),
  -- Zorua (Hisuian Zorua) - Sleep Talk - TM070
  (570, 57001, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Zorua (Hisuian Zorua) - Rest - TM085
  (570, 57001, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Zorua (Hisuian Zorua) - Taunt - TM087
  (570, 57001, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 37),
  -- Zorua (Hisuian Zorua) - Imprison - TM092
  (570, 57001, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 38),
  -- Zorua (Hisuian Zorua) - Dark Pulse - TM094
  (570, 57001, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 39),
  -- Zorua (Hisuian Zorua) - Substitute - TM103
  (570, 57001, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 40),
  -- Zorua (Hisuian Zorua) - Will-O-Wisp - TM107
  (570, 57001, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 41),
  -- Zorua (Hisuian Zorua) - Trick - TM109
  (570, 57001, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 42),
  -- Zorua (Hisuian Zorua) - Shadow Ball - TM114
  (570, 57001, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 43),
  -- Zorua (Hisuian Zorua) - Calm Mind - TM129
  (570, 57001, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 44),
  -- Zorua (Hisuian Zorua) - Nasty Plot - TM140
  (570, 57001, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 45),
  -- Zorua (Hisuian Zorua) - Sludge Bomb - TM148
  (570, 57001, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 46),
  -- Zorua (Hisuian Zorua) - Phantom Force - TM151
  (570, 57001, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 47),
  -- Zorua (Hisuian Zorua) - Giga Impact - TM152
  (570, 57001, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 48),
  -- Zorua (Hisuian Zorua) - Hyper Beam - TM163
  (570, 57001, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 49),
  -- Zorua (Hisuian Zorua) - Tera Blast - TM171
  (570, 57001, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 50),
  -- Zorua (Hisuian Zorua) - Detect - Egg
  (570, 57001, 197, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Zorua (Hisuian Zorua) - Memento - Egg
  (570, 57001, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Zorua (Hisuian Zorua) - Extrasensory - Egg
  (570, 57001, 326, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Zorua (Hisuian Zorua) - Comeuppance - Egg
  (570, 57001, 894, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Zoroark - Scratch - Level 1
  (571, 57100, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zoroark - Leer - Level 1
  (571, 57100, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zoroark - Torment - Level 1
  (571, 57100, 259, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Zoroark - U-turn - Level 1
  (571, 57100, 369, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Zoroark - Hone Claws - Level 1
  (571, 57100, 468, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Zoroark - Fury Swipes - Level 12
  (571, 57100, 154, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Zoroark - Taunt - Level 20
  (571, 57100, 269, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Zoroark - Knock Off - Level 24
  (571, 57100, 282, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Zoroark - Fake Tears - Level 28
  (571, 57100, 313, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Zoroark - Agility - Level 34
  (571, 57100, 97, 23, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Zoroark - Imprison - Level 40
  (571, 57100, 286, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Zoroark - Night Daze - Level 46
  (571, 57100, 539, 23, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Zoroark - Nasty Plot - Level 52
  (571, 57100, 417, 23, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Zoroark - Foul Play - Level 58
  (571, 57100, 492, 23, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Zoroark - Take Down - TM001
  (571, 57100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Zoroark - Fake Tears - TM003
  (571, 57100, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 16),
  -- Zoroark - Agility - TM004
  (571, 57100, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Zoroark - Scary Face - TM006
  (571, 57100, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Zoroark - Protect - TM007
  (571, 57100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Zoroark - Low Kick - TM012
  (571, 57100, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Zoroark - Confuse Ray - TM017
  (571, 57100, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 21),
  -- Zoroark - Thief - TM018
  (571, 57100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Zoroark - Facade - TM025
  (571, 57100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Zoroark - Aerial Ace - TM027
  (571, 57100, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Zoroark - Hex - TM029
  (571, 57100, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 25),
  -- Zoroark - Snarl - TM030
  (571, 57100, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 26),
  -- Zoroark - Swift - TM032
  (571, 57100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 27),
  -- Zoroark - Low Sweep - TM039
  (571, 57100, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 28),
  -- Zoroark - Night Shade - TM042
  (571, 57100, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 29),
  -- Zoroark - Fling - TM043
  (571, 57100, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 30),
  -- Zoroark - Endure - TM047
  (571, 57100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Zoroark - Sunny Day - TM049
  (571, 57100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 32),
  -- Zoroark - Rain Dance - TM050
  (571, 57100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 33),
  -- Zoroark - Dig - TM055
  (571, 57100, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 34),
  -- Zoroark - Brick Break - TM058
  (571, 57100, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 35),
  -- Zoroark - U-turn - TM060
  (571, 57100, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 36),
  -- Zoroark - Shadow Claw - TM061
  (571, 57100, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 37),
  -- Zoroark - Foul Play - TM062
  (571, 57100, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 38),
  -- Zoroark - Body Slam - TM066
  (571, 57100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 39),
  -- Zoroark - Sleep Talk - TM070
  (571, 57100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 40),
  -- Zoroark - Grass Knot - TM081
  (571, 57100, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 41),
  -- Zoroark - Rest - TM085
  (571, 57100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 42),
  -- Zoroark - Taunt - TM087
  (571, 57100, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 43),
  -- Zoroark - Swords Dance - TM088
  (571, 57100, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 44),
  -- Zoroark - Imprison - TM092
  (571, 57100, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 45),
  -- Zoroark - Dark Pulse - TM094
  (571, 57100, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 46),
  -- Zoroark - Substitute - TM103
  (571, 57100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 47),
  -- Zoroark - Crunch - TM108
  (571, 57100, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 48),
  -- Zoroark - Trick - TM109
  (571, 57100, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 49),
  -- Zoroark - Shadow Ball - TM114
  (571, 57100, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 50),
  -- Zoroark - Hyper Voice - TM117
  (571, 57100, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 51),
  -- Zoroark - Psychic - TM120
  (571, 57100, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 52),
  -- Zoroark - Encore - TM122
  (571, 57100, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 53),
  -- Zoroark - Flamethrower - TM125
  (571, 57100, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 54),
  -- Zoroark - Calm Mind - TM129
  (571, 57100, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 55),
  -- Zoroark - Helping Hand - TM130
  (571, 57100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 56),
  -- Zoroark - Nasty Plot - TM140
  (571, 57100, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 57),
  -- Zoroark - Sludge Bomb - TM148
  (571, 57100, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 58),
  -- Zoroark - Giga Impact - TM152
  (571, 57100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 59),
  -- Zoroark - Focus Blast - TM158
  (571, 57100, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 60),
  -- Zoroark - Hyper Beam - TM163
  (571, 57100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 61),
  -- Zoroark - Tera Blast - TM171
  (571, 57100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 62),
  -- Zoroark - Counter - Egg
  (571, 57100, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Zoroark - Detect - Egg
  (571, 57100, 197, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Zoroark - Memento - Egg
  (571, 57100, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Zoroark - Extrasensory - Egg
  (571, 57100, 326, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Zoroark - Copycat - Egg
  (571, 57100, 383, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Zoroark - Sucker Punch - Egg
  (571, 57100, 389, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Zoroark - Night Slash - Evolution
  (571, 57100, 400, 23, NULL, 7, NULL, NULL, NULL, NULL, 69),
  -- Zoroark (Hisuian Zoroark) - Scratch - Level 1
  (571, 57101, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zoroark (Hisuian Zoroark) - Leer - Level 1
  (571, 57101, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zoroark (Hisuian Zoroark) - Torment - Level 1
  (571, 57101, 259, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Zoroark (Hisuian Zoroark) - U-turn - Level 1
  (571, 57101, 369, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Zoroark (Hisuian Zoroark) - Hone Claws - Level 1
  (571, 57101, 468, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Zoroark (Hisuian Zoroark) - Shadow Sneak - Level 12
  (571, 57101, 425, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Zoroark (Hisuian Zoroark) - Curse - Level 16
  (571, 57101, 174, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Zoroark (Hisuian Zoroark) - Taunt - Level 20
  (571, 57101, 269, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Zoroark (Hisuian Zoroark) - Knock Off - Level 24
  (571, 57101, 282, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Zoroark (Hisuian Zoroark) - Spite - Level 28
  (571, 57101, 180, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Zoroark (Hisuian Zoroark) - Agility - Level 34
  (571, 57101, 97, 23, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Zoroark (Hisuian Zoroark) - Shadow Ball - Level 40
  (571, 57101, 247, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Zoroark (Hisuian Zoroark) - Bitter Malice - Level 46
  (571, 57101, 841, 23, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Zoroark (Hisuian Zoroark) - Nasty Plot - Level 52
  (571, 57101, 417, 23, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Zoroark (Hisuian Zoroark) - Foul Play - Level 58
  (571, 57101, 492, 23, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Zoroark (Hisuian Zoroark) - Take Down - TM001
  (571, 57101, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Zoroark (Hisuian Zoroark) - Fake Tears - TM003
  (571, 57101, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 17),
  -- Zoroark (Hisuian Zoroark) - Agility - TM004
  (571, 57101, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 18),
  -- Zoroark (Hisuian Zoroark) - Scary Face - TM006
  (571, 57101, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Zoroark (Hisuian Zoroark) - Protect - TM007
  (571, 57101, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Zoroark (Hisuian Zoroark) - Low Kick - TM012
  (571, 57101, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 21),
  -- Zoroark (Hisuian Zoroark) - Confuse Ray - TM017
  (571, 57101, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 22),
  -- Zoroark (Hisuian Zoroark) - Thief - TM018
  (571, 57101, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Zoroark (Hisuian Zoroark) - Facade - TM025
  (571, 57101, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Zoroark (Hisuian Zoroark) - Aerial Ace - TM027
  (571, 57101, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 25),
  -- Zoroark (Hisuian Zoroark) - Hex - TM029
  (571, 57101, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 26),
  -- Zoroark (Hisuian Zoroark) - Snarl - TM030
  (571, 57101, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 27),
  -- Zoroark (Hisuian Zoroark) - Swift - TM032
  (571, 57101, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 28),
  -- Zoroark (Hisuian Zoroark) - Icy Wind - TM034
  (571, 57101, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 29),
  -- Zoroark (Hisuian Zoroark) - Low Sweep - TM039
  (571, 57101, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 30),
  -- Zoroark (Hisuian Zoroark) - Night Shade - TM042
  (571, 57101, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 31),
  -- Zoroark (Hisuian Zoroark) - Fling - TM043
  (571, 57101, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 32),
  -- Zoroark (Hisuian Zoroark) - Endure - TM047
  (571, 57101, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 33),
  -- Zoroark (Hisuian Zoroark) - Rain Dance - TM050
  (571, 57101, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 34),
  -- Zoroark (Hisuian Zoroark) - Snowscape - TM052
  (571, 57101, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 35),
  -- Zoroark (Hisuian Zoroark) - Dig - TM055
  (571, 57101, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 36),
  -- Zoroark (Hisuian Zoroark) - Brick Break - TM058
  (571, 57101, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 37),
  -- Zoroark (Hisuian Zoroark) - U-turn - TM060
  (571, 57101, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 38),
  -- Zoroark (Hisuian Zoroark) - Shadow Claw - TM061
  (571, 57101, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 39),
  -- Zoroark (Hisuian Zoroark) - Foul Play - TM062
  (571, 57101, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 40),
  -- Zoroark (Hisuian Zoroark) - Body Slam - TM066
  (571, 57101, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 41),
  -- Zoroark (Hisuian Zoroark) - Sleep Talk - TM070
  (571, 57101, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 42),
  -- Zoroark (Hisuian Zoroark) - Grass Knot - TM081
  (571, 57101, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 43),
  -- Zoroark (Hisuian Zoroark) - Rest - TM085
  (571, 57101, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 44),
  -- Zoroark (Hisuian Zoroark) - Taunt - TM087
  (571, 57101, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 45),
  -- Zoroark (Hisuian Zoroark) - Swords Dance - TM088
  (571, 57101, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 46),
  -- Zoroark (Hisuian Zoroark) - Imprison - TM092
  (571, 57101, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 47),
  -- Zoroark (Hisuian Zoroark) - Dark Pulse - TM094
  (571, 57101, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 48),
  -- Zoroark (Hisuian Zoroark) - Substitute - TM103
  (571, 57101, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 49),
  -- Zoroark (Hisuian Zoroark) - Will-O-Wisp - TM107
  (571, 57101, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 50),
  -- Zoroark (Hisuian Zoroark) - Crunch - TM108
  (571, 57101, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 51),
  -- Zoroark (Hisuian Zoroark) - Trick - TM109
  (571, 57101, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 52),
  -- Zoroark (Hisuian Zoroark) - Shadow Ball - TM114
  (571, 57101, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 53),
  -- Zoroark (Hisuian Zoroark) - Hyper Voice - TM117
  (571, 57101, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 54),
  -- Zoroark (Hisuian Zoroark) - Psychic - TM120
  (571, 57101, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 55),
  -- Zoroark (Hisuian Zoroark) - Flamethrower - TM125
  (571, 57101, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 56),
  -- Zoroark (Hisuian Zoroark) - Calm Mind - TM129
  (571, 57101, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 57),
  -- Zoroark (Hisuian Zoroark) - Helping Hand - TM130
  (571, 57101, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 58),
  -- Zoroark (Hisuian Zoroark) - Nasty Plot - TM140
  (571, 57101, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 59),
  -- Zoroark (Hisuian Zoroark) - Sludge Bomb - TM148
  (571, 57101, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 60),
  -- Zoroark (Hisuian Zoroark) - Phantom Force - TM151
  (571, 57101, 566, 23, NULL, 2, NULL, NULL, 23002151, NULL, 61),
  -- Zoroark (Hisuian Zoroark) - Giga Impact - TM152
  (571, 57101, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 62),
  -- Zoroark (Hisuian Zoroark) - Focus Blast - TM158
  (571, 57101, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 63),
  -- Zoroark (Hisuian Zoroark) - Hyper Beam - TM163
  (571, 57101, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 64),
  -- Zoroark (Hisuian Zoroark) - Tera Blast - TM171
  (571, 57101, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 65),
  -- Zoroark (Hisuian Zoroark) - Detect - Egg
  (571, 57101, 197, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Zoroark (Hisuian Zoroark) - Memento - Egg
  (571, 57101, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Zoroark (Hisuian Zoroark) - Extrasensory - Egg
  (571, 57101, 326, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Zoroark (Hisuian Zoroark) - Comeuppance - Egg
  (571, 57101, 894, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Zoroark (Hisuian Zoroark) - Shadow Claw - Evolution
  (571, 57101, 421, 23, NULL, 7, NULL, NULL, NULL, NULL, 70),
  -- Minccino - Pound - Level 1
  (572, 57200, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Minccino - Baby-Doll Eyes - Level 1
  (572, 57200, 608, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Minccino - Helping Hand - Level 4
  (572, 57200, 270, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Minccino - Echoed Voice - Level 8
  (572, 57200, 497, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Minccino - Sing - Level 12
  (572, 57200, 47, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Minccino - Charm - Level 16
  (572, 57200, 204, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Minccino - Swift - Level 20
  (572, 57200, 129, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Minccino - Encore - Level 24
  (572, 57200, 227, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Minccino - After You - Level 28
  (572, 57200, 495, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Minccino - Tail Slap - Level 32
  (572, 57200, 541, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Minccino - Tickle - Level 36
  (572, 57200, 321, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Minccino - Slam - Level 40
  (572, 57200, 21, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Minccino - Hyper Voice - Level 44
  (572, 57200, 304, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Minccino - Last Resort - Level 48
  (572, 57200, 387, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Minccino - Take Down - TM001
  (572, 57200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Minccino - Charm - TM002
  (572, 57200, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 16),
  -- Minccino - Fake Tears - TM003
  (572, 57200, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 17),
  -- Minccino - Mud-Slap - TM005
  (572, 57200, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Minccino - Protect - TM007
  (572, 57200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Minccino - Thief - TM018
  (572, 57200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Minccino - Trailblaze - TM020
  (572, 57200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Minccino - Chilling Water - TM022
  (572, 57200, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 22),
  -- Minccino - Facade - TM025
  (572, 57200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Minccino - Swift - TM032
  (572, 57200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Minccino - Fling - TM043
  (572, 57200, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Minccino - Endure - TM047
  (572, 57200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Minccino - Sunny Day - TM049
  (572, 57200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Minccino - Rain Dance - TM050
  (572, 57200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Minccino - Dig - TM055
  (572, 57200, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 29),
  -- Minccino - Bullet Seed - TM056
  (572, 57200, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 30),
  -- Minccino - U-turn - TM060
  (572, 57200, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 31),
  -- Minccino - Sleep Talk - TM070
  (572, 57200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 32),
  -- Minccino - Seed Bomb - TM071
  (572, 57200, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 33),
  -- Minccino - Dazzling Gleam - TM079
  (572, 57200, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 34),
  -- Minccino - Grass Knot - TM081
  (572, 57200, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 35),
  -- Minccino - Thunder Wave - TM082
  (572, 57200, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 36),
  -- Minccino - Rest - TM085
  (572, 57200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Minccino - Gunk Shot - TM102
  (572, 57200, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 38),
  -- Minccino - Substitute - TM103
  (572, 57200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Minccino - Hyper Voice - TM117
  (572, 57200, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 40),
  -- Minccino - Encore - TM122
  (572, 57200, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 41),
  -- Minccino - Thunderbolt - TM126
  (572, 57200, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 42),
  -- Minccino - Play Rough - TM127
  (572, 57200, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 43),
  -- Minccino - Calm Mind - TM129
  (572, 57200, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 44),
  -- Minccino - Helping Hand - TM130
  (572, 57200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 45),
  -- Minccino - Baton Pass - TM132
  (572, 57200, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 46),
  -- Minccino - Tera Blast - TM171
  (572, 57200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 47),
  -- Minccino - Tail Whip - Egg
  (572, 57200, 39, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Minccino - Flail - Egg
  (572, 57200, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Minccino - Knock Off - Egg
  (572, 57200, 282, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Minccino - Aqua Tail - Egg
  (572, 57200, 401, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Minccino - Tidy Up - Egg
  (572, 57200, 882, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Cinccino - Pound - Level 1
  (573, 57300, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cinccino - Sing - Level 1
  (573, 57300, 47, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cinccino - Charm - Level 1
  (573, 57300, 204, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cinccino - Bullet Seed - Level 1
  (573, 57300, 331, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cinccino - Take Down - TM001
  (573, 57300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 5),
  -- Cinccino - Charm - TM002
  (573, 57300, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 6),
  -- Cinccino - Fake Tears - TM003
  (573, 57300, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 7),
  -- Cinccino - Mud-Slap - TM005
  (573, 57300, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 8),
  -- Cinccino - Protect - TM007
  (573, 57300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 9),
  -- Cinccino - Thief - TM018
  (573, 57300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 10),
  -- Cinccino - Trailblaze - TM020
  (573, 57300, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 11),
  -- Cinccino - Chilling Water - TM022
  (573, 57300, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 12),
  -- Cinccino - Facade - TM025
  (573, 57300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 13),
  -- Cinccino - Swift - TM032
  (573, 57300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 14),
  -- Cinccino - Fling - TM043
  (573, 57300, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 15),
  -- Cinccino - Endure - TM047
  (573, 57300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 16),
  -- Cinccino - Sunny Day - TM049
  (573, 57300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 17),
  -- Cinccino - Rain Dance - TM050
  (573, 57300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 18),
  -- Cinccino - Dig - TM055
  (573, 57300, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 19),
  -- Cinccino - Bullet Seed - TM056
  (573, 57300, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 20),
  -- Cinccino - U-turn - TM060
  (573, 57300, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 21),
  -- Cinccino - Sleep Talk - TM070
  (573, 57300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 22),
  -- Cinccino - Seed Bomb - TM071
  (573, 57300, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 23),
  -- Cinccino - Light Screen - TM075
  (573, 57300, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 24),
  -- Cinccino - Rock Blast - TM076
  (573, 57300, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 25),
  -- Cinccino - Dazzling Gleam - TM079
  (573, 57300, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 26),
  -- Cinccino - Grass Knot - TM081
  (573, 57300, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 27),
  -- Cinccino - Thunder Wave - TM082
  (573, 57300, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 28),
  -- Cinccino - Rest - TM085
  (573, 57300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 29),
  -- Cinccino - Gunk Shot - TM102
  (573, 57300, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 30),
  -- Cinccino - Substitute - TM103
  (573, 57300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 31),
  -- Cinccino - Hyper Voice - TM117
  (573, 57300, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 32),
  -- Cinccino - Encore - TM122
  (573, 57300, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 33),
  -- Cinccino - Ice Spinner - TM124
  (573, 57300, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 34),
  -- Cinccino - Thunderbolt - TM126
  (573, 57300, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 35),
  -- Cinccino - Play Rough - TM127
  (573, 57300, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 36),
  -- Cinccino - Calm Mind - TM129
  (573, 57300, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 37),
  -- Cinccino - Helping Hand - TM130
  (573, 57300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 38),
  -- Cinccino - Baton Pass - TM132
  (573, 57300, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 39),
  -- Cinccino - Giga Impact - TM152
  (573, 57300, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 40),
  -- Cinccino - Focus Blast - TM158
  (573, 57300, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 41),
  -- Cinccino - Hyper Beam - TM163
  (573, 57300, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 42),
  -- Cinccino - Thunder - TM166
  (573, 57300, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 43),
  -- Cinccino - Tera Blast - TM171
  (573, 57300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 44),
  -- Cinccino - Tail Whip - Egg
  (573, 57300, 39, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Cinccino - Flail - Egg
  (573, 57300, 175, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Cinccino - Knock Off - Egg
  (573, 57300, 282, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Cinccino - Aqua Tail - Egg
  (573, 57300, 401, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Cinccino - Tidy Up - Egg
  (573, 57300, 882, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cinccino - Tail Slap - Evolution
  (573, 57300, 541, 23, NULL, 7, NULL, NULL, NULL, NULL, 50),
  -- Cinccino - Slam - Reminder
  (573, 57300, 21, 23, NULL, 9, NULL, NULL, NULL, NULL, 51),
  -- Cinccino - Swift - Reminder
  (573, 57300, 129, 23, NULL, 9, NULL, NULL, NULL, NULL, 52),
  -- Cinccino - Encore - Reminder
  (573, 57300, 227, 23, NULL, 9, NULL, NULL, NULL, NULL, 53),
  -- Cinccino - Helping Hand - Reminder
  (573, 57300, 270, 23, NULL, 9, NULL, NULL, NULL, NULL, 54),
  -- Cinccino - Hyper Voice - Reminder
  (573, 57300, 304, 23, NULL, 9, NULL, NULL, NULL, NULL, 55),
  -- Cinccino - Tickle - Reminder
  (573, 57300, 321, 23, NULL, 9, NULL, NULL, NULL, NULL, 56),
  -- Cinccino - Rock Blast - Reminder
  (573, 57300, 350, 23, NULL, 9, NULL, NULL, NULL, NULL, 57),
  -- Cinccino - Last Resort - Reminder
  (573, 57300, 387, 23, NULL, 9, NULL, NULL, NULL, NULL, 58),
  -- Cinccino - After You - Reminder
  (573, 57300, 495, 23, NULL, 9, NULL, NULL, NULL, NULL, 59),
  -- Cinccino - Echoed Voice - Reminder
  (573, 57300, 497, 23, NULL, 9, NULL, NULL, NULL, NULL, 60),
  -- Cinccino - Baby-Doll Eyes - Reminder
  (573, 57300, 608, 23, NULL, 9, NULL, NULL, NULL, NULL, 61),
  -- Gothita - Pound - Level 1
  (574, 57400, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gothita - Confusion - Level 1
  (574, 57400, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gothita - Play Nice - Level 4
  (574, 57400, 589, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Gothita - Tickle - Level 8
  (574, 57400, 321, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Gothita - Psybeam - Level 12
  (574, 57400, 60, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Gothita - Charm - Level 16
  (574, 57400, 204, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Gothita - Psyshock - Level 20
  (574, 57400, 473, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Gothita - Hypnosis - Level 24
  (574, 57400, 95, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Gothita - Fake Tears - Level 28
  (574, 57400, 313, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Gothita - Psych Up - Level 33
  (574, 57400, 244, 23, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Gothita - Psychic - Level 36
  (574, 57400, 94, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Gothita - Flatter - Level 40
  (574, 57400, 260, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Gothita - Future Sight - Level 44
  (574, 57400, 248, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Gothita - Magic Room - Level 48
  (574, 57400, 478, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Gothita - Charm - TM002
  (574, 57400, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 15),
  -- Gothita - Fake Tears - TM003
  (574, 57400, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 16),
  -- Gothita - Protect - TM007
  (574, 57400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Gothita - Psybeam - TM016
  (574, 57400, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 18),
  -- Gothita - Thief - TM018
  (574, 57400, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Gothita - Facade - TM025
  (574, 57400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Gothita - Swift - TM032
  (574, 57400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Gothita - Rock Tomb - TM036
  (574, 57400, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 22),
  -- Gothita - Stored Power - TM041
  (574, 57400, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 23),
  -- Gothita - Fling - TM043
  (574, 57400, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 24),
  -- Gothita - Endure - TM047
  (574, 57400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Gothita - Rain Dance - TM050
  (574, 57400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Gothita - Psyshock - TM054
  (574, 57400, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 27),
  -- Gothita - Zen Headbutt - TM059
  (574, 57400, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 28),
  -- Gothita - Foul Play - TM062
  (574, 57400, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 29),
  -- Gothita - Sleep Talk - TM070
  (574, 57400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Gothita - Reflect - TM074
  (574, 57400, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 31),
  -- Gothita - Light Screen - TM075
  (574, 57400, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 32),
  -- Gothita - Grass Knot - TM081
  (574, 57400, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 33),
  -- Gothita - Thunder Wave - TM082
  (574, 57400, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 34),
  -- Gothita - Rest - TM085
  (574, 57400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Gothita - Rock Slide - TM086
  (574, 57400, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 36),
  -- Gothita - Taunt - TM087
  (574, 57400, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 37),
  -- Gothita - Imprison - TM092
  (574, 57400, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 38),
  -- Gothita - Dark Pulse - TM094
  (574, 57400, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 39),
  -- Gothita - Skill Swap - TM098
  (574, 57400, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 40),
  -- Gothita - Substitute - TM103
  (574, 57400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Gothita - Trick - TM109
  (574, 57400, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 42),
  -- Gothita - Shadow Ball - TM114
  (574, 57400, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 43),
  -- Gothita - Energy Ball - TM119
  (574, 57400, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 44),
  -- Gothita - Psychic - TM120
  (574, 57400, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 45),
  -- Gothita - Thunderbolt - TM126
  (574, 57400, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 46),
  -- Gothita - Calm Mind - TM129
  (574, 57400, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 47),
  -- Gothita - Helping Hand - TM130
  (574, 57400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 48),
  -- Gothita - Psychic Terrain - TM138
  (574, 57400, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 49),
  -- Gothita - Nasty Plot - TM140
  (574, 57400, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 50),
  -- Gothita - Trick Room - TM161
  (574, 57400, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 51),
  -- Gothita - Tera Blast - TM171
  (574, 57400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 52),
  -- Gothita - Mean Look - Egg
  (574, 57400, 212, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Gothita - Mirror Coat - Egg
  (574, 57400, 243, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Gothita - Fake Out - Egg
  (574, 57400, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Gothita - Torment - Egg
  (574, 57400, 259, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Gothita - Heal Pulse - Egg
  (574, 57400, 505, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Gothorita - Pound - Level 1
  (575, 57500, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gothorita - Confusion - Level 1
  (575, 57500, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gothorita - Tickle - Level 1
  (575, 57500, 321, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gothorita - Play Nice - Level 1
  (575, 57500, 589, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gothorita - Psybeam - Level 12
  (575, 57500, 60, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Gothorita - Charm - Level 16
  (575, 57500, 204, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Gothorita - Psyshock - Level 20
  (575, 57500, 473, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Gothorita - Hypnosis - Level 24
  (575, 57500, 95, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Gothorita - Fake Tears - Level 28
  (575, 57500, 313, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Gothorita - Psych Up - Level 35
  (575, 57500, 244, 23, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Gothorita - Flatter - Level 46
  (575, 57500, 260, 23, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Gothorita - Future Sight - Level 52
  (575, 57500, 248, 23, NULL, 1, 52, NULL, NULL, NULL, 12),
  -- Gothorita - Magic Room - Level 58
  (575, 57500, 478, 23, NULL, 1, 58, NULL, NULL, NULL, 13),
  -- Gothorita - Charm - TM002
  (575, 57500, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 14),
  -- Gothorita - Fake Tears - TM003
  (575, 57500, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 15),
  -- Gothorita - Protect - TM007
  (575, 57500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Gothorita - Psybeam - TM016
  (575, 57500, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 17),
  -- Gothorita - Thief - TM018
  (575, 57500, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 18),
  -- Gothorita - Facade - TM025
  (575, 57500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Gothorita - Swift - TM032
  (575, 57500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 20),
  -- Gothorita - Rock Tomb - TM036
  (575, 57500, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 21),
  -- Gothorita - Stored Power - TM041
  (575, 57500, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 22),
  -- Gothorita - Fling - TM043
  (575, 57500, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 23),
  -- Gothorita - Endure - TM047
  (575, 57500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Gothorita - Rain Dance - TM050
  (575, 57500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Gothorita - Psyshock - TM054
  (575, 57500, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 26),
  -- Gothorita - Zen Headbutt - TM059
  (575, 57500, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 27),
  -- Gothorita - Foul Play - TM062
  (575, 57500, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 28),
  -- Gothorita - Sleep Talk - TM070
  (575, 57500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 29),
  -- Gothorita - Reflect - TM074
  (575, 57500, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 30),
  -- Gothorita - Light Screen - TM075
  (575, 57500, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 31),
  -- Gothorita - Metronome - TM080
  (575, 57500, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 32),
  -- Gothorita - Grass Knot - TM081
  (575, 57500, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 33),
  -- Gothorita - Thunder Wave - TM082
  (575, 57500, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 34),
  -- Gothorita - Rest - TM085
  (575, 57500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Gothorita - Rock Slide - TM086
  (575, 57500, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 36),
  -- Gothorita - Taunt - TM087
  (575, 57500, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 37),
  -- Gothorita - Imprison - TM092
  (575, 57500, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 38),
  -- Gothorita - Dark Pulse - TM094
  (575, 57500, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 39),
  -- Gothorita - Skill Swap - TM098
  (575, 57500, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 40),
  -- Gothorita - Substitute - TM103
  (575, 57500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Gothorita - Trick - TM109
  (575, 57500, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 42),
  -- Gothorita - Shadow Ball - TM114
  (575, 57500, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 43),
  -- Gothorita - Energy Ball - TM119
  (575, 57500, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 44),
  -- Gothorita - Psychic - TM120
  (575, 57500, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 45),
  -- Gothorita - Thunderbolt - TM126
  (575, 57500, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 46),
  -- Gothorita - Calm Mind - TM129
  (575, 57500, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 47),
  -- Gothorita - Helping Hand - TM130
  (575, 57500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 48),
  -- Gothorita - Psychic Terrain - TM138
  (575, 57500, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 49),
  -- Gothorita - Nasty Plot - TM140
  (575, 57500, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 50),
  -- Gothorita - Trick Room - TM161
  (575, 57500, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 51),
  -- Gothorita - Tera Blast - TM171
  (575, 57500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 52),
  -- Gothorita - Mean Look - Egg
  (575, 57500, 212, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Gothorita - Mirror Coat - Egg
  (575, 57500, 243, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Gothorita - Fake Out - Egg
  (575, 57500, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Gothorita - Torment - Egg
  (575, 57500, 259, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Gothorita - Heal Pulse - Egg
  (575, 57500, 505, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Gothitelle - Pound - Level 1
  (576, 57600, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gothitelle - Confusion - Level 1
  (576, 57600, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gothitelle - Tickle - Level 1
  (576, 57600, 321, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gothitelle - Play Nice - Level 1
  (576, 57600, 589, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gothitelle - Psybeam - Level 12
  (576, 57600, 60, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Gothitelle - Charm - Level 16
  (576, 57600, 204, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Gothitelle - Psyshock - Level 20
  (576, 57600, 473, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Gothitelle - Hypnosis - Level 24
  (576, 57600, 95, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Gothitelle - Fake Tears - Level 28
  (576, 57600, 313, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Gothitelle - Psych Up - Level 35
  (576, 57600, 244, 23, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Gothitelle - Psychic - Level 40
  (576, 57600, 94, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Gothitelle - Flatter - Level 48
  (576, 57600, 260, 23, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Gothitelle - Future Sight - Level 56
  (576, 57600, 248, 23, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Gothitelle - Magic Room - Level 64
  (576, 57600, 478, 23, NULL, 1, 64, NULL, NULL, NULL, 14),
  -- Gothitelle - Charm - TM002
  (576, 57600, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 15),
  -- Gothitelle - Fake Tears - TM003
  (576, 57600, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 16),
  -- Gothitelle - Protect - TM007
  (576, 57600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Gothitelle - Psybeam - TM016
  (576, 57600, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 18),
  -- Gothitelle - Thief - TM018
  (576, 57600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Gothitelle - Facade - TM025
  (576, 57600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Gothitelle - Swift - TM032
  (576, 57600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Gothitelle - Rock Tomb - TM036
  (576, 57600, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 22),
  -- Gothitelle - Low Sweep - TM039
  (576, 57600, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 23),
  -- Gothitelle - Stored Power - TM041
  (576, 57600, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 24),
  -- Gothitelle - Fling - TM043
  (576, 57600, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Gothitelle - Endure - TM047
  (576, 57600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Gothitelle - Rain Dance - TM050
  (576, 57600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Gothitelle - Psyshock - TM054
  (576, 57600, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 28),
  -- Gothitelle - Brick Break - TM058
  (576, 57600, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 29),
  -- Gothitelle - Zen Headbutt - TM059
  (576, 57600, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 30),
  -- Gothitelle - Foul Play - TM062
  (576, 57600, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 31),
  -- Gothitelle - Body Slam - TM066
  (576, 57600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Gothitelle - Sleep Talk - TM070
  (576, 57600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 33),
  -- Gothitelle - Reflect - TM074
  (576, 57600, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 34),
  -- Gothitelle - Light Screen - TM075
  (576, 57600, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 35),
  -- Gothitelle - Metronome - TM080
  (576, 57600, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 36),
  -- Gothitelle - Grass Knot - TM081
  (576, 57600, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 37),
  -- Gothitelle - Thunder Wave - TM082
  (576, 57600, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 38),
  -- Gothitelle - Rest - TM085
  (576, 57600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 39),
  -- Gothitelle - Rock Slide - TM086
  (576, 57600, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 40),
  -- Gothitelle - Taunt - TM087
  (576, 57600, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 41),
  -- Gothitelle - Imprison - TM092
  (576, 57600, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 42),
  -- Gothitelle - Dark Pulse - TM094
  (576, 57600, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 43),
  -- Gothitelle - Skill Swap - TM098
  (576, 57600, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 44),
  -- Gothitelle - Substitute - TM103
  (576, 57600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 45),
  -- Gothitelle - Trick - TM109
  (576, 57600, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 46),
  -- Gothitelle - Shadow Ball - TM114
  (576, 57600, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 47),
  -- Gothitelle - Energy Ball - TM119
  (576, 57600, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 48),
  -- Gothitelle - Psychic - TM120
  (576, 57600, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 49),
  -- Gothitelle - Thunderbolt - TM126
  (576, 57600, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 50),
  -- Gothitelle - Calm Mind - TM129
  (576, 57600, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 51),
  -- Gothitelle - Helping Hand - TM130
  (576, 57600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 52),
  -- Gothitelle - Psychic Terrain - TM138
  (576, 57600, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 53),
  -- Gothitelle - Nasty Plot - TM140
  (576, 57600, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 54),
  -- Gothitelle - Giga Impact - TM152
  (576, 57600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 55),
  -- Gothitelle - Focus Blast - TM158
  (576, 57600, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 56),
  -- Gothitelle - Trick Room - TM161
  (576, 57600, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 57),
  -- Gothitelle - Hyper Beam - TM163
  (576, 57600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 58),
  -- Gothitelle - Tera Blast - TM171
  (576, 57600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 59),
  -- Gothitelle - Mean Look - Egg
  (576, 57600, 212, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Gothitelle - Mirror Coat - Egg
  (576, 57600, 243, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Gothitelle - Fake Out - Egg
  (576, 57600, 252, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Gothitelle - Torment - Egg
  (576, 57600, 259, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Gothitelle - Heal Pulse - Egg
  (576, 57600, 505, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Solosis - Confusion - Level 1
  (577, 57700, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Solosis - Protect - Level 1
  (577, 57700, 182, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Solosis - Recover - Level 4
  (577, 57700, 105, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Solosis - Endeavor - Level 8
  (577, 57700, 283, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Solosis - Psybeam - Level 12
  (577, 57700, 60, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Solosis - Charm - Level 16
  (577, 57700, 204, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Solosis - Psyshock - Level 20
  (577, 57700, 473, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Solosis - Light Screen - Level 24
  (577, 57700, 113, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Solosis - Reflect - Level 24
  (577, 57700, 115, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Solosis - Ally Switch - Level 28
  (577, 57700, 502, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Solosis - Pain Split - Level 33
  (577, 57700, 220, 23, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Solosis - Psychic - Level 36
  (577, 57700, 94, 23, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Solosis - Skill Swap - Level 40
  (577, 57700, 285, 23, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Solosis - Future Sight - Level 44
  (577, 57700, 248, 23, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Solosis - Wonder Room - Level 48
  (577, 57700, 472, 23, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Solosis - Charm - TM002
  (577, 57700, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 16),
  -- Solosis - Protect - TM007
  (577, 57700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Solosis - Psybeam - TM016
  (577, 57700, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 18),
  -- Solosis - Confuse Ray - TM017
  (577, 57700, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 19),
  -- Solosis - Facade - TM025
  (577, 57700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Solosis - Swift - TM032
  (577, 57700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Solosis - Rock Tomb - TM036
  (577, 57700, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 22),
  -- Solosis - Stored Power - TM041
  (577, 57700, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 23),
  -- Solosis - Night Shade - TM042
  (577, 57700, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 24),
  -- Solosis - Endure - TM047
  (577, 57700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Solosis - Sunny Day - TM049
  (577, 57700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Solosis - Rain Dance - TM050
  (577, 57700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Solosis - Psyshock - TM054
  (577, 57700, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 28),
  -- Solosis - Zen Headbutt - TM059
  (577, 57700, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 29),
  -- Solosis - Sleep Talk - TM070
  (577, 57700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Solosis - Reflect - TM074
  (577, 57700, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 31),
  -- Solosis - Light Screen - TM075
  (577, 57700, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 32),
  -- Solosis - Thunder Wave - TM082
  (577, 57700, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 33),
  -- Solosis - Rest - TM085
  (577, 57700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Solosis - Rock Slide - TM086
  (577, 57700, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 35),
  -- Solosis - Imprison - TM092
  (577, 57700, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 36),
  -- Solosis - Flash Cannon - TM093
  (577, 57700, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 37),
  -- Solosis - Skill Swap - TM098
  (577, 57700, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 38),
  -- Solosis - Substitute - TM103
  (577, 57700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Solosis - Iron Defense - TM104
  (577, 57700, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 40),
  -- Solosis - Trick - TM109
  (577, 57700, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 41),
  -- Solosis - Shadow Ball - TM114
  (577, 57700, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 42),
  -- Solosis - Energy Ball - TM119
  (577, 57700, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 43),
  -- Solosis - Psychic - TM120
  (577, 57700, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 44),
  -- Solosis - Encore - TM122
  (577, 57700, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 45),
  -- Solosis - Calm Mind - TM129
  (577, 57700, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 46),
  -- Solosis - Helping Hand - TM130
  (577, 57700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 47),
  -- Solosis - Psychic Terrain - TM138
  (577, 57700, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 48),
  -- Solosis - Trick Room - TM161
  (577, 57700, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 49),
  -- Solosis - Thunder - TM166
  (577, 57700, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 50),
  -- Solosis - Tera Blast - TM171
  (577, 57700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Solosis - Confuse Ray - Egg
  (577, 57700, 109, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Solosis - Acid Armor - Egg
  (577, 57700, 151, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Solosis - Astonish - Egg
  (577, 57700, 310, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Duosion - Confusion - Level 1
  (578, 57800, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Duosion - Recover - Level 1
  (578, 57800, 105, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Duosion - Protect - Level 1
  (578, 57800, 182, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Duosion - Endeavor - Level 1
  (578, 57800, 283, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Duosion - Psybeam - Level 12
  (578, 57800, 60, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Duosion - Charm - Level 16
  (578, 57800, 204, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Duosion - Psyshock - Level 20
  (578, 57800, 473, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Duosion - Light Screen - Level 24
  (578, 57800, 113, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Duosion - Reflect - Level 24
  (578, 57800, 115, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Duosion - Ally Switch - Level 28
  (578, 57800, 502, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Duosion - Pain Split - Level 35
  (578, 57800, 220, 23, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Duosion - Psychic - Level 40
  (578, 57800, 94, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Duosion - Skill Swap - Level 46
  (578, 57800, 285, 23, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Duosion - Future Sight - Level 52
  (578, 57800, 248, 23, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Duosion - Wonder Room - Level 58
  (578, 57800, 472, 23, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Duosion - Charm - TM002
  (578, 57800, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 16),
  -- Duosion - Protect - TM007
  (578, 57800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Duosion - Psybeam - TM016
  (578, 57800, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 18),
  -- Duosion - Confuse Ray - TM017
  (578, 57800, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 19),
  -- Duosion - Facade - TM025
  (578, 57800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Duosion - Swift - TM032
  (578, 57800, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Duosion - Rock Tomb - TM036
  (578, 57800, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 22),
  -- Duosion - Stored Power - TM041
  (578, 57800, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 23),
  -- Duosion - Night Shade - TM042
  (578, 57800, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 24),
  -- Duosion - Endure - TM047
  (578, 57800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Duosion - Sunny Day - TM049
  (578, 57800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Duosion - Rain Dance - TM050
  (578, 57800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Duosion - Psyshock - TM054
  (578, 57800, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 28),
  -- Duosion - Zen Headbutt - TM059
  (578, 57800, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 29),
  -- Duosion - Sleep Talk - TM070
  (578, 57800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Duosion - Reflect - TM074
  (578, 57800, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 31),
  -- Duosion - Light Screen - TM075
  (578, 57800, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 32),
  -- Duosion - Thunder Wave - TM082
  (578, 57800, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 33),
  -- Duosion - Rest - TM085
  (578, 57800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Duosion - Rock Slide - TM086
  (578, 57800, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 35),
  -- Duosion - Imprison - TM092
  (578, 57800, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 36),
  -- Duosion - Flash Cannon - TM093
  (578, 57800, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 37),
  -- Duosion - Skill Swap - TM098
  (578, 57800, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 38),
  -- Duosion - Substitute - TM103
  (578, 57800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Duosion - Iron Defense - TM104
  (578, 57800, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 40),
  -- Duosion - Trick - TM109
  (578, 57800, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 41),
  -- Duosion - Shadow Ball - TM114
  (578, 57800, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 42),
  -- Duosion - Energy Ball - TM119
  (578, 57800, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 43),
  -- Duosion - Psychic - TM120
  (578, 57800, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 44),
  -- Duosion - Encore - TM122
  (578, 57800, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 45),
  -- Duosion - Calm Mind - TM129
  (578, 57800, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 46),
  -- Duosion - Helping Hand - TM130
  (578, 57800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 47),
  -- Duosion - Psychic Terrain - TM138
  (578, 57800, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 48),
  -- Duosion - Trick Room - TM161
  (578, 57800, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 49),
  -- Duosion - Thunder - TM166
  (578, 57800, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 50),
  -- Duosion - Tera Blast - TM171
  (578, 57800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 51),
  -- Duosion - Confuse Ray - Egg
  (578, 57800, 109, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Duosion - Acid Armor - Egg
  (578, 57800, 151, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Duosion - Astonish - Egg
  (578, 57800, 310, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Reuniclus - Confusion - Level 1
  (579, 57900, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Reuniclus - Recover - Level 1
  (579, 57900, 105, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Reuniclus - Protect - Level 1
  (579, 57900, 182, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Reuniclus - Endeavor - Level 1
  (579, 57900, 283, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Reuniclus - Psybeam - Level 12
  (579, 57900, 60, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Reuniclus - Charm - Level 16
  (579, 57900, 204, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Reuniclus - Psyshock - Level 20
  (579, 57900, 473, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Reuniclus - Light Screen - Level 24
  (579, 57900, 113, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Reuniclus - Reflect - Level 24
  (579, 57900, 115, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Reuniclus - Ally Switch - Level 28
  (579, 57900, 502, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Reuniclus - Pain Split - Level 35
  (579, 57900, 220, 23, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Reuniclus - Psychic - Level 40
  (579, 57900, 94, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Reuniclus - Skill Swap - Level 48
  (579, 57900, 285, 23, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Reuniclus - Future Sight - Level 56
  (579, 57900, 248, 23, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Reuniclus - Wonder Room - Level 64
  (579, 57900, 472, 23, NULL, 1, 64, NULL, NULL, NULL, 15),
  -- Reuniclus - Charm - TM002
  (579, 57900, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 16),
  -- Reuniclus - Protect - TM007
  (579, 57900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Reuniclus - Psybeam - TM016
  (579, 57900, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 18),
  -- Reuniclus - Confuse Ray - TM017
  (579, 57900, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 19),
  -- Reuniclus - Facade - TM025
  (579, 57900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Reuniclus - Swift - TM032
  (579, 57900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Reuniclus - Rock Tomb - TM036
  (579, 57900, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 22),
  -- Reuniclus - Stored Power - TM041
  (579, 57900, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 23),
  -- Reuniclus - Night Shade - TM042
  (579, 57900, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 24),
  -- Reuniclus - Fling - TM043
  (579, 57900, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 25),
  -- Reuniclus - Endure - TM047
  (579, 57900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Reuniclus - Sunny Day - TM049
  (579, 57900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Reuniclus - Rain Dance - TM050
  (579, 57900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Reuniclus - Psyshock - TM054
  (579, 57900, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 29),
  -- Reuniclus - Zen Headbutt - TM059
  (579, 57900, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 30),
  -- Reuniclus - Body Slam - TM066
  (579, 57900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 31),
  -- Reuniclus - Fire Punch - TM067
  (579, 57900, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 32),
  -- Reuniclus - Thunder Punch - TM068
  (579, 57900, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 33),
  -- Reuniclus - Ice Punch - TM069
  (579, 57900, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 34),
  -- Reuniclus - Sleep Talk - TM070
  (579, 57900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 35),
  -- Reuniclus - Drain Punch - TM073
  (579, 57900, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 36),
  -- Reuniclus - Reflect - TM074
  (579, 57900, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 37),
  -- Reuniclus - Light Screen - TM075
  (579, 57900, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 38),
  -- Reuniclus - Grass Knot - TM081
  (579, 57900, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 39),
  -- Reuniclus - Thunder Wave - TM082
  (579, 57900, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 40),
  -- Reuniclus - Rest - TM085
  (579, 57900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 41),
  -- Reuniclus - Rock Slide - TM086
  (579, 57900, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 42),
  -- Reuniclus - Imprison - TM092
  (579, 57900, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 43),
  -- Reuniclus - Flash Cannon - TM093
  (579, 57900, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 44),
  -- Reuniclus - Skill Swap - TM098
  (579, 57900, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 45),
  -- Reuniclus - Substitute - TM103
  (579, 57900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 46),
  -- Reuniclus - Iron Defense - TM104
  (579, 57900, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 47),
  -- Reuniclus - Trick - TM109
  (579, 57900, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 48),
  -- Reuniclus - Shadow Ball - TM114
  (579, 57900, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 49),
  -- Reuniclus - Energy Ball - TM119
  (579, 57900, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 50),
  -- Reuniclus - Psychic - TM120
  (579, 57900, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 51),
  -- Reuniclus - Encore - TM122
  (579, 57900, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 52),
  -- Reuniclus - Calm Mind - TM129
  (579, 57900, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 53),
  -- Reuniclus - Helping Hand - TM130
  (579, 57900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 54),
  -- Reuniclus - Psychic Terrain - TM138
  (579, 57900, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 55),
  -- Reuniclus - Giga Impact - TM152
  (579, 57900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 56),
  -- Reuniclus - Focus Blast - TM158
  (579, 57900, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 57),
  -- Reuniclus - Trick Room - TM161
  (579, 57900, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 58),
  -- Reuniclus - Hyper Beam - TM163
  (579, 57900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 59),
  -- Reuniclus - Thunder - TM166
  (579, 57900, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 60),
  -- Reuniclus - Tera Blast - TM171
  (579, 57900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 61),
  -- Reuniclus - Confuse Ray - Egg
  (579, 57900, 109, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Reuniclus - Acid Armor - Egg
  (579, 57900, 151, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Reuniclus - Astonish - Egg
  (579, 57900, 310, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Reuniclus - Hammer Arm - Evolution
  (579, 57900, 359, 23, NULL, 7, NULL, NULL, NULL, NULL, 65),
  -- Ducklett - Water Gun - Level 1
  (580, 58000, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ducklett - Defog - Level 6
  (580, 58000, 432, 23, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Ducklett - Wing Attack - Level 9
  (580, 58000, 17, 23, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Ducklett - Water Pulse - Level 13
  (580, 58000, 352, 23, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Ducklett - Aerial Ace - Level 15
  (580, 58000, 332, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Ducklett - Bubble Beam - Level 19
  (580, 58000, 61, 23, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Ducklett - Feather Dance - Level 21
  (580, 58000, 297, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Ducklett - Aqua Ring - Level 24
  (580, 58000, 392, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Ducklett - Air Slash - Level 27
  (580, 58000, 403, 23, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Ducklett - Roost - Level 30
  (580, 58000, 355, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Ducklett - Rain Dance - Level 34
  (580, 58000, 240, 23, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Ducklett - Tailwind - Level 37
  (580, 58000, 366, 23, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Ducklett - Brave Bird - Level 41
  (580, 58000, 413, 23, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Ducklett - Hurricane - Level 46
  (580, 58000, 542, 23, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Ducklett - Protect - TM007
  (580, 58000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Ducklett - Water Pulse - TM011
  (580, 58000, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 16),
  -- Ducklett - Disarming Voice - TM019
  (580, 58000, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 17),
  -- Ducklett - Trailblaze - TM020
  (580, 58000, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 18),
  -- Ducklett - Chilling Water - TM022
  (580, 58000, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 19),
  -- Ducklett - Facade - TM025
  (580, 58000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Ducklett - Aerial Ace - TM027
  (580, 58000, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 21),
  -- Ducklett - Swift - TM032
  (580, 58000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Ducklett - Icy Wind - TM034
  (580, 58000, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 23),
  -- Ducklett - Air Cutter - TM040
  (580, 58000, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 24),
  -- Ducklett - Endure - TM047
  (580, 58000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Ducklett - Rain Dance - TM050
  (580, 58000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Ducklett - Air Slash - TM065
  (580, 58000, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 27),
  -- Ducklett - Sleep Talk - TM070
  (580, 58000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Ducklett - Rest - TM085
  (580, 58000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 29),
  -- Ducklett - Fly - TM097
  (580, 58000, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 30),
  -- Ducklett - Substitute - TM103
  (580, 58000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 31),
  -- Ducklett - Liquidation - TM110
  (580, 58000, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 32),
  -- Ducklett - Tailwind - TM113
  (580, 58000, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 33),
  -- Ducklett - Surf - TM123
  (580, 58000, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 34),
  -- Ducklett - Helping Hand - TM130
  (580, 58000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 35),
  -- Ducklett - Ice Beam - TM135
  (580, 58000, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 36),
  -- Ducklett - Hurricane - TM160
  (580, 58000, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 37),
  -- Ducklett - Brave Bird - TM164
  (580, 58000, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 38),
  -- Ducklett - Tera Blast - TM171
  (580, 58000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 39),
  -- Ducklett - Gust - Egg
  (580, 58000, 16, 23, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Ducklett - Steel Wing - Egg
  (580, 58000, 211, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Ducklett - Endeavor - Egg
  (580, 58000, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Ducklett - Dive - Egg
  (580, 58000, 291, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Ducklett - Brine - Egg
  (580, 58000, 362, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Ducklett - Aqua Jet - Egg
  (580, 58000, 453, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Swanna - Wing Attack - Level 1
  (581, 58100, 17, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swanna - Water Gun - Level 1
  (581, 58100, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swanna - Defog - Level 1
  (581, 58100, 432, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Swanna - Water Pulse - Level 13
  (581, 58100, 352, 23, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Swanna - Aerial Ace - Level 15
  (581, 58100, 332, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Swanna - Bubble Beam - Level 19
  (581, 58100, 61, 23, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Swanna - Feather Dance - Level 21
  (581, 58100, 297, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Swanna - Aqua Ring - Level 24
  (581, 58100, 392, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Swanna - Air Slash - Level 27
  (581, 58100, 403, 23, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Swanna - Roost - Level 30
  (581, 58100, 355, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Swanna - Rain Dance - Level 34
  (581, 58100, 240, 23, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Swanna - Tailwind - Level 40
  (581, 58100, 366, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Swanna - Brave Bird - Level 47
  (581, 58100, 413, 23, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Swanna - Hurricane - Level 55
  (581, 58100, 542, 23, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Swanna - Protect - TM007
  (581, 58100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Swanna - Water Pulse - TM011
  (581, 58100, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 16),
  -- Swanna - Acrobatics - TM014
  (581, 58100, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 17),
  -- Swanna - Disarming Voice - TM019
  (581, 58100, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 18),
  -- Swanna - Trailblaze - TM020
  (581, 58100, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 19),
  -- Swanna - Chilling Water - TM022
  (581, 58100, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 20),
  -- Swanna - Facade - TM025
  (581, 58100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Swanna - Aerial Ace - TM027
  (581, 58100, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 22),
  -- Swanna - Swift - TM032
  (581, 58100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Swanna - Icy Wind - TM034
  (581, 58100, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 24),
  -- Swanna - Air Cutter - TM040
  (581, 58100, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 25),
  -- Swanna - Endure - TM047
  (581, 58100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Swanna - Rain Dance - TM050
  (581, 58100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Swanna - Air Slash - TM065
  (581, 58100, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 28),
  -- Swanna - Sleep Talk - TM070
  (581, 58100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 29),
  -- Swanna - Rest - TM085
  (581, 58100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 30),
  -- Swanna - Fly - TM097
  (581, 58100, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 31),
  -- Swanna - Substitute - TM103
  (581, 58100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 32),
  -- Swanna - Liquidation - TM110
  (581, 58100, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 33),
  -- Swanna - Tailwind - TM113
  (581, 58100, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 34),
  -- Swanna - Surf - TM123
  (581, 58100, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 35),
  -- Swanna - Helping Hand - TM130
  (581, 58100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 36),
  -- Swanna - Ice Beam - TM135
  (581, 58100, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 37),
  -- Swanna - Hydro Pump - TM142
  (581, 58100, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 38),
  -- Swanna - Giga Impact - TM152
  (581, 58100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 39),
  -- Swanna - Hurricane - TM160
  (581, 58100, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 40),
  -- Swanna - Hyper Beam - TM163
  (581, 58100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 41),
  -- Swanna - Brave Bird - TM164
  (581, 58100, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 42),
  -- Swanna - Tera Blast - TM171
  (581, 58100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 43),
  -- Swanna - Gust - Egg
  (581, 58100, 16, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Swanna - Steel Wing - Egg
  (581, 58100, 211, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Swanna - Endeavor - Egg
  (581, 58100, 283, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Swanna - Dive - Egg
  (581, 58100, 291, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Swanna - Brine - Egg
  (581, 58100, 362, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Swanna - Aqua Jet - Egg
  (581, 58100, 453, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Deerling - Tackle - Level 1
  (585, 58500, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Deerling - Growl - Level 4
  (585, 58500, 45, 23, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Deerling - Sand Attack - Level 7
  (585, 58500, 28, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Deerling - Double Kick - Level 10
  (585, 58500, 24, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Deerling - Leech Seed - Level 13
  (585, 58500, 73, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Deerling - Bullet Seed - Level 16
  (585, 58500, 331, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Deerling - Take Down - Level 20
  (585, 58500, 36, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Deerling - Zen Headbutt - Level 24
  (585, 58500, 428, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Deerling - Energy Ball - Level 28
  (585, 58500, 412, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Deerling - Charm - Level 32
  (585, 58500, 204, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Deerling - Double-Edge - Level 37
  (585, 58500, 38, 23, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Deerling - Solar Beam - Level 42
  (585, 58500, 76, 23, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Deerling - Take Down - TM001
  (585, 58500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Deerling - Charm - TM002
  (585, 58500, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 14),
  -- Deerling - Fake Tears - TM003
  (585, 58500, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 15),
  -- Deerling - Agility - TM004
  (585, 58500, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Deerling - Protect - TM007
  (585, 58500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Deerling - Trailblaze - TM020
  (585, 58500, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 18),
  -- Deerling - Facade - TM025
  (585, 58500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Deerling - Bulldoze - TM028
  (585, 58500, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 20),
  -- Deerling - Magical Leaf - TM033
  (585, 58500, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 21),
  -- Deerling - Endure - TM047
  (585, 58500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Deerling - Sunny Day - TM049
  (585, 58500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 23),
  -- Deerling - Rain Dance - TM050
  (585, 58500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 24),
  -- Deerling - Dig - TM055
  (585, 58500, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 25),
  -- Deerling - Bullet Seed - TM056
  (585, 58500, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 26),
  -- Deerling - Zen Headbutt - TM059
  (585, 58500, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 27),
  -- Deerling - Body Slam - TM066
  (585, 58500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 28),
  -- Deerling - Sleep Talk - TM070
  (585, 58500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 29),
  -- Deerling - Seed Bomb - TM071
  (585, 58500, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 30),
  -- Deerling - Light Screen - TM075
  (585, 58500, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 31),
  -- Deerling - Grass Knot - TM081
  (585, 58500, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 32),
  -- Deerling - Thunder Wave - TM082
  (585, 58500, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 33),
  -- Deerling - Rest - TM085
  (585, 58500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 34),
  -- Deerling - Substitute - TM103
  (585, 58500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Deerling - Giga Drain - TM111
  (585, 58500, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 36),
  -- Deerling - Shadow Ball - TM114
  (585, 58500, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 37),
  -- Deerling - Energy Ball - TM119
  (585, 58500, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 38),
  -- Deerling - Play Rough - TM127
  (585, 58500, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 39),
  -- Deerling - Helping Hand - TM130
  (585, 58500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 40),
  -- Deerling - Baton Pass - TM132
  (585, 58500, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 41),
  -- Deerling - Grassy Terrain - TM137
  (585, 58500, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 42),
  -- Deerling - Wild Charge - TM147
  (585, 58500, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 43),
  -- Deerling - Leaf Storm - TM159
  (585, 58500, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 44),
  -- Deerling - Solar Beam - TM168
  (585, 58500, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 45),
  -- Deerling - Tera Blast - TM171
  (585, 58500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Deerling - Headbutt - Egg
  (585, 58500, 29, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Deerling - Agility - Egg
  (585, 58500, 97, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Deerling - Sleep Talk - Egg
  (585, 58500, 214, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Deerling - Baton Pass - Egg
  (585, 58500, 226, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Deerling - Synthesis - Egg
  (585, 58500, 235, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Deerling - Fake Tears - Egg
  (585, 58500, 313, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Deerling - Worry Seed - Egg
  (585, 58500, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Sawsbuck - Sand Attack - Level 1
  (586, 58600, 28, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sawsbuck - Tackle - Level 1
  (586, 58600, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sawsbuck - Growl - Level 1
  (586, 58600, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sawsbuck - Megahorn - Level 1
  (586, 58600, 224, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sawsbuck - Double Kick - Level 10
  (586, 58600, 24, 23, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Sawsbuck - Leech Seed - Level 13
  (586, 58600, 73, 23, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Sawsbuck - Bullet Seed - Level 16
  (586, 58600, 331, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Sawsbuck - Take Down - Level 20
  (586, 58600, 36, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Sawsbuck - Zen Headbutt - Level 24
  (586, 58600, 428, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Sawsbuck - Energy Ball - Level 28
  (586, 58600, 412, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Sawsbuck - Charm - Level 36
  (586, 58600, 204, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Sawsbuck - Double-Edge - Level 44
  (586, 58600, 38, 23, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Sawsbuck - Solar Beam - Level 52
  (586, 58600, 76, 23, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Sawsbuck - Take Down - TM001
  (586, 58600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Sawsbuck - Charm - TM002
  (586, 58600, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 15),
  -- Sawsbuck - Fake Tears - TM003
  (586, 58600, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 16),
  -- Sawsbuck - Agility - TM004
  (586, 58600, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Sawsbuck - Protect - TM007
  (586, 58600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Sawsbuck - Trailblaze - TM020
  (586, 58600, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 19),
  -- Sawsbuck - Facade - TM025
  (586, 58600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Sawsbuck - Bulldoze - TM028
  (586, 58600, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 21),
  -- Sawsbuck - Magical Leaf - TM033
  (586, 58600, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 22),
  -- Sawsbuck - Endure - TM047
  (586, 58600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Sawsbuck - Sunny Day - TM049
  (586, 58600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Sawsbuck - Rain Dance - TM050
  (586, 58600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Sawsbuck - Smart Strike - TM053
  (586, 58600, 684, 23, NULL, 2, NULL, NULL, 23002053, NULL, 26),
  -- Sawsbuck - Dig - TM055
  (586, 58600, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 27),
  -- Sawsbuck - Bullet Seed - TM056
  (586, 58600, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 28),
  -- Sawsbuck - Zen Headbutt - TM059
  (586, 58600, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 29),
  -- Sawsbuck - Body Slam - TM066
  (586, 58600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 30),
  -- Sawsbuck - Sleep Talk - TM070
  (586, 58600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Sawsbuck - Seed Bomb - TM071
  (586, 58600, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 32),
  -- Sawsbuck - Light Screen - TM075
  (586, 58600, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 33),
  -- Sawsbuck - Grass Knot - TM081
  (586, 58600, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 34),
  -- Sawsbuck - Thunder Wave - TM082
  (586, 58600, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 35),
  -- Sawsbuck - Stomping Tantrum - TM084
  (586, 58600, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 36),
  -- Sawsbuck - Rest - TM085
  (586, 58600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Sawsbuck - Swords Dance - TM088
  (586, 58600, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 38),
  -- Sawsbuck - Substitute - TM103
  (586, 58600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 39),
  -- Sawsbuck - Giga Drain - TM111
  (586, 58600, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 40),
  -- Sawsbuck - Shadow Ball - TM114
  (586, 58600, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 41),
  -- Sawsbuck - Energy Ball - TM119
  (586, 58600, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 42),
  -- Sawsbuck - Play Rough - TM127
  (586, 58600, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 43),
  -- Sawsbuck - Helping Hand - TM130
  (586, 58600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 44),
  -- Sawsbuck - Baton Pass - TM132
  (586, 58600, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 45),
  -- Sawsbuck - Grassy Terrain - TM137
  (586, 58600, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 46),
  -- Sawsbuck - Wild Charge - TM147
  (586, 58600, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 47),
  -- Sawsbuck - Giga Impact - TM152
  (586, 58600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 48),
  -- Sawsbuck - Leaf Storm - TM159
  (586, 58600, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 49),
  -- Sawsbuck - Hyper Beam - TM163
  (586, 58600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 50),
  -- Sawsbuck - Solar Beam - TM168
  (586, 58600, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 51),
  -- Sawsbuck - Tera Blast - TM171
  (586, 58600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 52),
  -- Sawsbuck - Headbutt - Egg
  (586, 58600, 29, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Sawsbuck - Agility - Egg
  (586, 58600, 97, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Sawsbuck - Sleep Talk - Egg
  (586, 58600, 214, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Sawsbuck - Baton Pass - Egg
  (586, 58600, 226, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Sawsbuck - Synthesis - Egg
  (586, 58600, 235, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Sawsbuck - Fake Tears - Egg
  (586, 58600, 313, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Sawsbuck - Worry Seed - Egg
  (586, 58600, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Sawsbuck - Horn Leech - Evolution
  (586, 58600, 532, 23, NULL, 7, NULL, NULL, NULL, NULL, 60),
  -- Foongus - Absorb - Level 1
  (590, 59000, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Foongus - Astonish - Level 1
  (590, 59000, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Foongus - Growth - Level 4
  (590, 59000, 74, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Foongus - Stun Spore - Level 8
  (590, 59000, 78, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Foongus - Mega Drain - Level 12
  (590, 59000, 72, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Foongus - Synthesis - Level 16
  (590, 59000, 235, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Foongus - Clear Smog - Level 20
  (590, 59000, 499, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Foongus - Sweet Scent - Level 24
  (590, 59000, 230, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Foongus - Giga Drain - Level 28
  (590, 59000, 202, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Foongus - Ingrain - Level 32
  (590, 59000, 275, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Foongus - Toxic - Level 36
  (590, 59000, 92, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Foongus - Rage Powder - Level 40
  (590, 59000, 476, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Foongus - Solar Beam - Level 44
  (590, 59000, 76, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Foongus - Spore - Level 48
  (590, 59000, 147, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Foongus - Protect - TM007
  (590, 59000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Foongus - Facade - TM025
  (590, 59000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 16),
  -- Foongus - Magical Leaf - TM033
  (590, 59000, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 17),
  -- Foongus - Venoshock - TM045
  (590, 59000, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 18),
  -- Foongus - Endure - TM047
  (590, 59000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 19),
  -- Foongus - Sunny Day - TM049
  (590, 59000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 20),
  -- Foongus - Rain Dance - TM050
  (590, 59000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 21),
  -- Foongus - Bullet Seed - TM056
  (590, 59000, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 22),
  -- Foongus - Foul Play - TM062
  (590, 59000, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 23),
  -- Foongus - Body Slam - TM066
  (590, 59000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 24),
  -- Foongus - Sleep Talk - TM070
  (590, 59000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 25),
  -- Foongus - Seed Bomb - TM071
  (590, 59000, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 26),
  -- Foongus - Grass Knot - TM081
  (590, 59000, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 27),
  -- Foongus - Rest - TM085
  (590, 59000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 28),
  -- Foongus - Substitute - TM103
  (590, 59000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 29),
  -- Foongus - Giga Drain - TM111
  (590, 59000, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 30),
  -- Foongus - Energy Ball - TM119
  (590, 59000, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 31),
  -- Foongus - Pollen Puff - TM131
  (590, 59000, 676, 23, NULL, 2, NULL, NULL, 23002131, NULL, 32),
  -- Foongus - Grassy Terrain - TM137
  (590, 59000, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 33),
  -- Foongus - Sludge Bomb - TM148
  (590, 59000, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 34),
  -- Foongus - Leaf Storm - TM159
  (590, 59000, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 35),
  -- Foongus - Solar Beam - TM168
  (590, 59000, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 36),
  -- Foongus - Tera Blast - TM171
  (590, 59000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 37),
  -- Foongus - Poison Powder - Egg
  (590, 59000, 77, 23, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Foongus - Defense Curl - Egg
  (590, 59000, 111, 23, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Foongus - Rollout - Egg
  (590, 59000, 205, 23, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Foongus - Worry Seed - Egg
  (590, 59000, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Amoonguss - Absorb - Level 1
  (591, 59100, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Amoonguss - Growth - Level 1
  (591, 59100, 74, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Amoonguss - Stun Spore - Level 1
  (591, 59100, 78, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Amoonguss - Astonish - Level 1
  (591, 59100, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Amoonguss - Mega Drain - Level 12
  (591, 59100, 72, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Amoonguss - Synthesis - Level 16
  (591, 59100, 235, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Amoonguss - Clear Smog - Level 20
  (591, 59100, 499, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Amoonguss - Sweet Scent - Level 24
  (591, 59100, 230, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Amoonguss - Giga Drain - Level 28
  (591, 59100, 202, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Amoonguss - Ingrain - Level 32
  (591, 59100, 275, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Amoonguss - Toxic - Level 36
  (591, 59100, 92, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Amoonguss - Rage Powder - Level 42
  (591, 59100, 476, 23, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Amoonguss - Solar Beam - Level 48
  (591, 59100, 76, 23, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Amoonguss - Spore - Level 54
  (591, 59100, 147, 23, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Amoonguss - Scary Face - TM006
  (591, 59100, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 15),
  -- Amoonguss - Protect - TM007
  (591, 59100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Amoonguss - Facade - TM025
  (591, 59100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Amoonguss - Hex - TM029
  (591, 59100, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 18),
  -- Amoonguss - Magical Leaf - TM033
  (591, 59100, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 19),
  -- Amoonguss - Venoshock - TM045
  (591, 59100, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 20),
  -- Amoonguss - Endure - TM047
  (591, 59100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 21),
  -- Amoonguss - Sunny Day - TM049
  (591, 59100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 22),
  -- Amoonguss - Rain Dance - TM050
  (591, 59100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 23),
  -- Amoonguss - Bullet Seed - TM056
  (591, 59100, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 24),
  -- Amoonguss - Foul Play - TM062
  (591, 59100, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 25),
  -- Amoonguss - Body Slam - TM066
  (591, 59100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 26),
  -- Amoonguss - Sleep Talk - TM070
  (591, 59100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Amoonguss - Seed Bomb - TM071
  (591, 59100, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 28),
  -- Amoonguss - Grass Knot - TM081
  (591, 59100, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 29),
  -- Amoonguss - Stomping Tantrum - TM084
  (591, 59100, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 30),
  -- Amoonguss - Rest - TM085
  (591, 59100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Amoonguss - Substitute - TM103
  (591, 59100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 32),
  -- Amoonguss - Giga Drain - TM111
  (591, 59100, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 33),
  -- Amoonguss - Energy Ball - TM119
  (591, 59100, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 34),
  -- Amoonguss - Pollen Puff - TM131
  (591, 59100, 676, 23, NULL, 2, NULL, NULL, 23002131, NULL, 35),
  -- Amoonguss - Grassy Terrain - TM137
  (591, 59100, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 36),
  -- Amoonguss - Sludge Bomb - TM148
  (591, 59100, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 37),
  -- Amoonguss - Giga Impact - TM152
  (591, 59100, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 38),
  -- Amoonguss - Leaf Storm - TM159
  (591, 59100, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 39),
  -- Amoonguss - Hyper Beam - TM163
  (591, 59100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 40),
  -- Amoonguss - Solar Beam - TM168
  (591, 59100, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 41),
  -- Amoonguss - Tera Blast - TM171
  (591, 59100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 42),
  -- Amoonguss - Poison Powder - Egg
  (591, 59100, 77, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Amoonguss - Defense Curl - Egg
  (591, 59100, 111, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Amoonguss - Rollout - Egg
  (591, 59100, 205, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Amoonguss - Worry Seed - Egg
  (591, 59100, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Alomomola - Pound - Level 1
  (594, 59400, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alomomola - Play Nice - Level 1
  (594, 59400, 589, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alomomola - Aqua Ring - Level 5
  (594, 59400, 392, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Alomomola - Aqua Jet - Level 9
  (594, 59400, 453, 23, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Alomomola - Helping Hand - Level 13
  (594, 59400, 270, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Alomomola - Wide Guard - Level 13
  (594, 59400, 469, 23, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Alomomola - Protect - Level 21
  (594, 59400, 182, 23, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Alomomola - Water Pulse - Level 25
  (594, 59400, 352, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Alomomola - Healing Wish - Level 29
  (594, 59400, 361, 23, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Alomomola - Soak - Level 33
  (594, 59400, 487, 23, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Alomomola - Wish - Level 37
  (594, 59400, 273, 23, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Alomomola - Brine - Level 41
  (594, 59400, 362, 23, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Alomomola - Safeguard - Level 45
  (594, 59400, 219, 23, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Alomomola - Whirlpool - Level 49
  (594, 59400, 250, 23, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Alomomola - Hydro Pump - Level 55
  (594, 59400, 56, 23, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Alomomola - Take Down - TM001
  (594, 59400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Alomomola - Protect - TM007
  (594, 59400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Alomomola - Water Pulse - TM011
  (594, 59400, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 18),
  -- Alomomola - Acrobatics - TM014
  (594, 59400, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 19),
  -- Alomomola - Chilling Water - TM022
  (594, 59400, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 20),
  -- Alomomola - Facade - TM025
  (594, 59400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Alomomola - Icy Wind - TM034
  (594, 59400, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 22),
  -- Alomomola - Endure - TM047
  (594, 59400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Alomomola - Rain Dance - TM050
  (594, 59400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 24),
  -- Alomomola - Snowscape - TM052
  (594, 59400, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 25),
  -- Alomomola - Zen Headbutt - TM059
  (594, 59400, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 26),
  -- Alomomola - Body Slam - TM066
  (594, 59400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 27),
  -- Alomomola - Sleep Talk - TM070
  (594, 59400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Alomomola - Light Screen - TM075
  (594, 59400, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 29),
  -- Alomomola - Waterfall - TM077
  (594, 59400, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 30),
  -- Alomomola - Rest - TM085
  (594, 59400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Alomomola - Skill Swap - TM098
  (594, 59400, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 32),
  -- Alomomola - Substitute - TM103
  (594, 59400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 33),
  -- Alomomola - Liquidation - TM110
  (594, 59400, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 34),
  -- Alomomola - Shadow Ball - TM114
  (594, 59400, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 35),
  -- Alomomola - Psychic - TM120
  (594, 59400, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 36),
  -- Alomomola - Surf - TM123
  (594, 59400, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 37),
  -- Alomomola - Play Rough - TM127
  (594, 59400, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 38),
  -- Alomomola - Calm Mind - TM129
  (594, 59400, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 39),
  -- Alomomola - Helping Hand - TM130
  (594, 59400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 40),
  -- Alomomola - Baton Pass - TM132
  (594, 59400, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 41),
  -- Alomomola - Ice Beam - TM135
  (594, 59400, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 42),
  -- Alomomola - Misty Terrain - TM139
  (594, 59400, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 43),
  -- Alomomola - Hydro Pump - TM142
  (594, 59400, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 44),
  -- Alomomola - Blizzard - TM143
  (594, 59400, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 45),
  -- Alomomola - Giga Impact - TM152
  (594, 59400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 46),
  -- Alomomola - Hyper Beam - TM163
  (594, 59400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 47),
  -- Alomomola - Tera Blast - TM171
  (594, 59400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 48),
  -- Alomomola - Mist - Egg
  (594, 59400, 54, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Alomomola - Endure - Egg
  (594, 59400, 203, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Alomomola - Pain Split - Egg
  (594, 59400, 220, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Alomomola - Mirror Coat - Egg
  (594, 59400, 243, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Alomomola - Tickle - Egg
  (594, 59400, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Alomomola - Bounce - Egg
  (594, 59400, 340, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Joltik - Absorb - Level 1
  (595, 59500, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Joltik - Fury Cutter - Level 1
  (595, 59500, 210, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Joltik - Electroweb - Level 4
  (595, 59500, 527, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Joltik - Bug Bite - Level 8
  (595, 59500, 450, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Joltik - String Shot - Level 12
  (595, 59500, 81, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Joltik - Thunder Wave - Level 16
  (595, 59500, 86, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Joltik - Electro Ball - Level 20
  (595, 59500, 486, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Joltik - Agility - Level 24
  (595, 59500, 97, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Joltik - Sucker Punch - Level 28
  (595, 59500, 389, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Joltik - Slash - Level 32
  (595, 59500, 163, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Joltik - Discharge - Level 37
  (595, 59500, 435, 23, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Joltik - Screech - Level 40
  (595, 59500, 103, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Joltik - Gastro Acid - Level 44
  (595, 59500, 380, 23, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Joltik - Bug Buzz - Level 48
  (595, 59500, 405, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Joltik - Agility - TM004
  (595, 59500, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 15),
  -- Joltik - Protect - TM007
  (595, 59500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Joltik - Struggle Bug - TM015
  (595, 59500, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 17),
  -- Joltik - Thief - TM018
  (595, 59500, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 18),
  -- Joltik - Pounce - TM021
  (595, 59500, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 19),
  -- Joltik - Charge Beam - TM023
  (595, 59500, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 20),
  -- Joltik - Facade - TM025
  (595, 59500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Joltik - Swift - TM032
  (595, 59500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Joltik - Endure - TM047
  (595, 59500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Joltik - Volt Switch - TM048
  (595, 59500, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 24),
  -- Joltik - Rain Dance - TM050
  (595, 59500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Joltik - Sleep Talk - TM070
  (595, 59500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 26),
  -- Joltik - Electro Ball - TM072
  (595, 59500, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 27),
  -- Joltik - Light Screen - TM075
  (595, 59500, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 28),
  -- Joltik - Thunder Wave - TM082
  (595, 59500, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 29),
  -- Joltik - Poison Jab - TM083
  (595, 59500, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 30),
  -- Joltik - Rest - TM085
  (595, 59500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Joltik - Leech Life - TM095
  (595, 59500, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 32),
  -- Joltik - Substitute - TM103
  (595, 59500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 33),
  -- Joltik - X-Scissor - TM105
  (595, 59500, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 34),
  -- Joltik - Giga Drain - TM111
  (595, 59500, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 35),
  -- Joltik - Energy Ball - TM119
  (595, 59500, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 36),
  -- Joltik - Thunderbolt - TM126
  (595, 59500, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 37),
  -- Joltik - Helping Hand - TM130
  (595, 59500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 38),
  -- Joltik - Wild Charge - TM147
  (595, 59500, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 39),
  -- Joltik - Bug Buzz - TM162
  (595, 59500, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 40),
  -- Joltik - Thunder - TM166
  (595, 59500, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 41),
  -- Joltik - Tera Blast - TM171
  (595, 59500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 42),
  -- Joltik - Poison Sting - Egg
  (595, 59500, 40, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Joltik - Double Team - Egg
  (595, 59500, 104, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Joltik - Struggle Bug - Egg
  (595, 59500, 522, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Joltik - Infestation - Egg
  (595, 59500, 611, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Joltik - Lunge - Egg
  (595, 59500, 679, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Galvantula - Absorb - Level 1
  (596, 59600, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Galvantula - Fury Cutter - Level 1
  (596, 59600, 210, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Galvantula - Bug Bite - Level 1
  (596, 59600, 450, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Galvantula - Electroweb - Level 1
  (596, 59600, 527, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Galvantula - String Shot - Level 12
  (596, 59600, 81, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Galvantula - Thunder Wave - Level 16
  (596, 59600, 86, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Galvantula - Electro Ball - Level 20
  (596, 59600, 486, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Galvantula - Agility - Level 24
  (596, 59600, 97, 23, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Galvantula - Sucker Punch - Level 28
  (596, 59600, 389, 23, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Galvantula - Slash - Level 32
  (596, 59600, 163, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Galvantula - Discharge - Level 39
  (596, 59600, 435, 23, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Galvantula - Screech - Level 44
  (596, 59600, 103, 23, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Galvantula - Gastro Acid - Level 50
  (596, 59600, 380, 23, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Galvantula - Bug Buzz - Level 56
  (596, 59600, 405, 23, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Galvantula - Agility - TM004
  (596, 59600, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 15),
  -- Galvantula - Protect - TM007
  (596, 59600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Galvantula - Struggle Bug - TM015
  (596, 59600, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 17),
  -- Galvantula - Thief - TM018
  (596, 59600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 18),
  -- Galvantula - Pounce - TM021
  (596, 59600, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 19),
  -- Galvantula - Charge Beam - TM023
  (596, 59600, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 20),
  -- Galvantula - Facade - TM025
  (596, 59600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Galvantula - Swift - TM032
  (596, 59600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 22),
  -- Galvantula - Endure - TM047
  (596, 59600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 23),
  -- Galvantula - Volt Switch - TM048
  (596, 59600, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 24),
  -- Galvantula - Rain Dance - TM050
  (596, 59600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Galvantula - Sleep Talk - TM070
  (596, 59600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 26),
  -- Galvantula - Electro Ball - TM072
  (596, 59600, 486, 23, NULL, 2, NULL, NULL, 23002072, NULL, 27),
  -- Galvantula - Light Screen - TM075
  (596, 59600, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 28),
  -- Galvantula - Thunder Wave - TM082
  (596, 59600, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 29),
  -- Galvantula - Poison Jab - TM083
  (596, 59600, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 30),
  -- Galvantula - Rest - TM085
  (596, 59600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Galvantula - Leech Life - TM095
  (596, 59600, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 32),
  -- Galvantula - Substitute - TM103
  (596, 59600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 33),
  -- Galvantula - X-Scissor - TM105
  (596, 59600, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 34),
  -- Galvantula - Giga Drain - TM111
  (596, 59600, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 35),
  -- Galvantula - Energy Ball - TM119
  (596, 59600, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 36),
  -- Galvantula - Thunderbolt - TM126
  (596, 59600, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 37),
  -- Galvantula - Helping Hand - TM130
  (596, 59600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 38),
  -- Galvantula - Wild Charge - TM147
  (596, 59600, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 39),
  -- Galvantula - Giga Impact - TM152
  (596, 59600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 40),
  -- Galvantula - Bug Buzz - TM162
  (596, 59600, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 41),
  -- Galvantula - Hyper Beam - TM163
  (596, 59600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 42),
  -- Galvantula - Thunder - TM166
  (596, 59600, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 43),
  -- Galvantula - Tera Blast - TM171
  (596, 59600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 44),
  -- Galvantula - Poison Sting - Egg
  (596, 59600, 40, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Galvantula - Double Team - Egg
  (596, 59600, 104, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Galvantula - Struggle Bug - Egg
  (596, 59600, 522, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Galvantula - Infestation - Egg
  (596, 59600, 611, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Galvantula - Lunge - Egg
  (596, 59600, 679, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Galvantula - Sticky Web - Evolution
  (596, 59600, 564, 23, NULL, 7, NULL, NULL, NULL, NULL, 50);
