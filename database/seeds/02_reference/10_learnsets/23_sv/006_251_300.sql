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
-- Scarlet / Violet learnsets for species 251-300.
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
  -- Treecko - Pound - Level 1
  (252, 25200, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Treecko - Leer - Level 1
  (252, 25200, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Treecko - Leafage - Level 3
  (252, 25200, 670, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Treecko - Quick Attack - Level 6
  (252, 25200, 98, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Treecko - Mega Drain - Level 9
  (252, 25200, 72, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Treecko - Detect - Level 12
  (252, 25200, 197, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Treecko - Quick Guard - Level 15
  (252, 25200, 501, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Treecko - Assurance - Level 18
  (252, 25200, 372, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Treecko - Giga Drain - Level 21
  (252, 25200, 202, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Treecko - Slam - Level 24
  (252, 25200, 21, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Treecko - Double Team - Level 27
  (252, 25200, 104, 23, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Treecko - Energy Ball - Level 30
  (252, 25200, 412, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Treecko - Screech - Level 33
  (252, 25200, 103, 23, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Treecko - Endeavor - Level 36
  (252, 25200, 283, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Treecko - Leaf Storm - Level 39
  (252, 25200, 437, 23, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Treecko - Take Down - TM001
  (252, 25200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Treecko - Agility - TM004
  (252, 25200, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Treecko - Protect - TM007
  (252, 25200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Treecko - Low Kick - TM012
  (252, 25200, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 19),
  -- Treecko - Acrobatics - TM014
  (252, 25200, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 20),
  -- Treecko - Thief - TM018
  (252, 25200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Treecko - Trailblaze - TM020
  (252, 25200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 22),
  -- Treecko - Facade - TM025
  (252, 25200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Treecko - Aerial Ace - TM027
  (252, 25200, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Treecko - Swift - TM032
  (252, 25200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Treecko - Magical Leaf - TM033
  (252, 25200, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 26),
  -- Treecko - Rock Tomb - TM036
  (252, 25200, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 27),
  -- Treecko - Fling - TM043
  (252, 25200, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 28),
  -- Treecko - Dragon Tail - TM044
  (252, 25200, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 29),
  -- Treecko - Endure - TM047
  (252, 25200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Treecko - Sunny Day - TM049
  (252, 25200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Treecko - Dig - TM055
  (252, 25200, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 32),
  -- Treecko - Bullet Seed - TM056
  (252, 25200, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 33),
  -- Treecko - Brick Break - TM058
  (252, 25200, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 34),
  -- Treecko - Thunder Punch - TM068
  (252, 25200, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 35),
  -- Treecko - Sleep Talk - TM070
  (252, 25200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Treecko - Seed Bomb - TM071
  (252, 25200, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 37),
  -- Treecko - Drain Punch - TM073
  (252, 25200, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 38),
  -- Treecko - Grass Knot - TM081
  (252, 25200, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 39),
  -- Treecko - Rest - TM085
  (252, 25200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Treecko - Rock Slide - TM086
  (252, 25200, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 41),
  -- Treecko - Swords Dance - TM088
  (252, 25200, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 42),
  -- Treecko - Substitute - TM103
  (252, 25200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Treecko - Crunch - TM108
  (252, 25200, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 44),
  -- Treecko - Giga Drain - TM111
  (252, 25200, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 45),
  -- Treecko - Energy Ball - TM119
  (252, 25200, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 46),
  -- Treecko - Helping Hand - TM130
  (252, 25200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 47),
  -- Treecko - Grassy Terrain - TM137
  (252, 25200, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 48),
  -- Treecko - Grass Pledge - TM146
  (252, 25200, 520, 23, NULL, 2, NULL, NULL, 23002146, NULL, 49),
  -- Treecko - Leaf Storm - TM159
  (252, 25200, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 50),
  -- Treecko - Solar Beam - TM168
  (252, 25200, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 51),
  -- Treecko - Tera Blast - TM171
  (252, 25200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 52),
  -- Treecko - Double Kick - Egg
  (252, 25200, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Treecko - Absorb - Egg
  (252, 25200, 71, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Treecko - Leech Seed - Egg
  (252, 25200, 73, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Treecko - Slash - Egg
  (252, 25200, 163, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Treecko - Dragon Breath - Egg
  (252, 25200, 225, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Treecko - Synthesis - Egg
  (252, 25200, 235, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Treecko - Worry Seed - Egg
  (252, 25200, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Treecko - Night Slash - Egg
  (252, 25200, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Grovyle - Pound - Level 1
  (253, 25300, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grovyle - Leer - Level 1
  (253, 25300, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grovyle - Quick Attack - Level 1
  (253, 25300, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Grovyle - Leafage - Level 1
  (253, 25300, 670, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Grovyle - Mega Drain - Level 9
  (253, 25300, 72, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Grovyle - Detect - Level 12
  (253, 25300, 197, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Grovyle - Quick Guard - Level 15
  (253, 25300, 501, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Grovyle - Assurance - Level 20
  (253, 25300, 372, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Grovyle - Giga Drain - Level 25
  (253, 25300, 202, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Grovyle - Slam - Level 30
  (253, 25300, 21, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Grovyle - Double Team - Level 35
  (253, 25300, 104, 23, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Grovyle - Leaf Blade - Level 40
  (253, 25300, 348, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Grovyle - Screech - Level 45
  (253, 25300, 103, 23, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Grovyle - Endeavor - Level 50
  (253, 25300, 283, 23, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Grovyle - Leaf Storm - Level 55
  (253, 25300, 437, 23, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Grovyle - Take Down - TM001
  (253, 25300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Grovyle - Agility - TM004
  (253, 25300, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Grovyle - Protect - TM007
  (253, 25300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Grovyle - Low Kick - TM012
  (253, 25300, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 19),
  -- Grovyle - Acrobatics - TM014
  (253, 25300, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 20),
  -- Grovyle - Thief - TM018
  (253, 25300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Grovyle - Trailblaze - TM020
  (253, 25300, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 22),
  -- Grovyle - Facade - TM025
  (253, 25300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Grovyle - Aerial Ace - TM027
  (253, 25300, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Grovyle - Swift - TM032
  (253, 25300, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Grovyle - Magical Leaf - TM033
  (253, 25300, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 26),
  -- Grovyle - Rock Tomb - TM036
  (253, 25300, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 27),
  -- Grovyle - Low Sweep - TM039
  (253, 25300, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 28),
  -- Grovyle - Fling - TM043
  (253, 25300, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 29),
  -- Grovyle - Dragon Tail - TM044
  (253, 25300, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 30),
  -- Grovyle - Endure - TM047
  (253, 25300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Grovyle - Sunny Day - TM049
  (253, 25300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 32),
  -- Grovyle - Dig - TM055
  (253, 25300, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 33),
  -- Grovyle - Bullet Seed - TM056
  (253, 25300, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 34),
  -- Grovyle - False Swipe - TM057
  (253, 25300, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 35),
  -- Grovyle - Brick Break - TM058
  (253, 25300, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 36),
  -- Grovyle - Thunder Punch - TM068
  (253, 25300, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 37),
  -- Grovyle - Sleep Talk - TM070
  (253, 25300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 38),
  -- Grovyle - Seed Bomb - TM071
  (253, 25300, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 39),
  -- Grovyle - Drain Punch - TM073
  (253, 25300, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 40),
  -- Grovyle - Grass Knot - TM081
  (253, 25300, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 41),
  -- Grovyle - Rest - TM085
  (253, 25300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 42),
  -- Grovyle - Rock Slide - TM086
  (253, 25300, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 43),
  -- Grovyle - Swords Dance - TM088
  (253, 25300, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 44),
  -- Grovyle - Substitute - TM103
  (253, 25300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 45),
  -- Grovyle - X-Scissor - TM105
  (253, 25300, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 46),
  -- Grovyle - Crunch - TM108
  (253, 25300, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 47),
  -- Grovyle - Giga Drain - TM111
  (253, 25300, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 48),
  -- Grovyle - Energy Ball - TM119
  (253, 25300, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 49),
  -- Grovyle - Helping Hand - TM130
  (253, 25300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 50),
  -- Grovyle - Grassy Terrain - TM137
  (253, 25300, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 51),
  -- Grovyle - Grass Pledge - TM146
  (253, 25300, 520, 23, NULL, 2, NULL, NULL, 23002146, NULL, 52),
  -- Grovyle - Leaf Storm - TM159
  (253, 25300, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 53),
  -- Grovyle - Solar Beam - TM168
  (253, 25300, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 54),
  -- Grovyle - Tera Blast - TM171
  (253, 25300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 55),
  -- Grovyle - Double Kick - Egg
  (253, 25300, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Grovyle - Absorb - Egg
  (253, 25300, 71, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Grovyle - Leech Seed - Egg
  (253, 25300, 73, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Grovyle - Slash - Egg
  (253, 25300, 163, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Grovyle - Dragon Breath - Egg
  (253, 25300, 225, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Grovyle - Synthesis - Egg
  (253, 25300, 235, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Grovyle - Worry Seed - Egg
  (253, 25300, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Grovyle - Night Slash - Egg
  (253, 25300, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Grovyle - False Swipe - Reminder
  (253, 25300, 206, 23, NULL, 9, NULL, NULL, NULL, NULL, 64),
  -- Grovyle - Fury Cutter - Reminder
  (253, 25300, 210, 23, NULL, 9, NULL, NULL, NULL, NULL, 65),
  -- Grovyle - X-Scissor - Reminder
  (253, 25300, 404, 23, NULL, 9, NULL, NULL, NULL, NULL, 66),
  -- Grovyle - Energy Ball - Reminder
  (253, 25300, 412, 23, NULL, 9, NULL, NULL, NULL, NULL, 67),
  -- Sceptile - Pound - Level 1
  (254, 25400, 1, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sceptile - Leer - Level 1
  (254, 25400, 43, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sceptile - Quick Attack - Level 1
  (254, 25400, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sceptile - Leafage - Level 1
  (254, 25400, 670, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sceptile - Mega Drain - Level 5
  (254, 25400, 72, 23, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Sceptile - Detect - Level 12
  (254, 25400, 197, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Sceptile - Quick Guard - Level 15
  (254, 25400, 501, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Sceptile - Assurance - Level 20
  (254, 25400, 372, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Sceptile - Giga Drain - Level 25
  (254, 25400, 202, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Sceptile - Slam - Level 30
  (254, 25400, 21, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Sceptile - Double Team - Level 35
  (254, 25400, 104, 23, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Sceptile - Screech - Level 42
  (254, 25400, 103, 23, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Sceptile - Endeavor - Level 49
  (254, 25400, 283, 23, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Sceptile - Leaf Storm - Level 56
  (254, 25400, 437, 23, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Sceptile - Take Down - TM001
  (254, 25400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Sceptile - Agility - TM004
  (254, 25400, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 16),
  -- Sceptile - Protect - TM007
  (254, 25400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Sceptile - Low Kick - TM012
  (254, 25400, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 18),
  -- Sceptile - Acrobatics - TM014
  (254, 25400, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 19),
  -- Sceptile - Thief - TM018
  (254, 25400, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Sceptile - Trailblaze - TM020
  (254, 25400, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 21),
  -- Sceptile - Facade - TM025
  (254, 25400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Sceptile - Aerial Ace - TM027
  (254, 25400, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 23),
  -- Sceptile - Bulldoze - TM028
  (254, 25400, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 24),
  -- Sceptile - Swift - TM032
  (254, 25400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 25),
  -- Sceptile - Magical Leaf - TM033
  (254, 25400, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 26),
  -- Sceptile - Rock Tomb - TM036
  (254, 25400, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 27),
  -- Sceptile - Low Sweep - TM039
  (254, 25400, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 28),
  -- Sceptile - Fling - TM043
  (254, 25400, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 29),
  -- Sceptile - Dragon Tail - TM044
  (254, 25400, 525, 23, NULL, 2, NULL, NULL, 23002044, NULL, 30),
  -- Sceptile - Endure - TM047
  (254, 25400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Sceptile - Sunny Day - TM049
  (254, 25400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 32),
  -- Sceptile - Dig - TM055
  (254, 25400, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 33),
  -- Sceptile - Bullet Seed - TM056
  (254, 25400, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 34),
  -- Sceptile - False Swipe - TM057
  (254, 25400, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 35),
  -- Sceptile - Brick Break - TM058
  (254, 25400, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 36),
  -- Sceptile - Body Slam - TM066
  (254, 25400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 37),
  -- Sceptile - Thunder Punch - TM068
  (254, 25400, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 38),
  -- Sceptile - Sleep Talk - TM070
  (254, 25400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Sceptile - Seed Bomb - TM071
  (254, 25400, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 40),
  -- Sceptile - Drain Punch - TM073
  (254, 25400, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 41),
  -- Sceptile - Dragon Claw - TM078
  (254, 25400, 337, 23, NULL, 2, NULL, NULL, 23002078, NULL, 42),
  -- Sceptile - Grass Knot - TM081
  (254, 25400, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 43),
  -- Sceptile - Rest - TM085
  (254, 25400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 44),
  -- Sceptile - Rock Slide - TM086
  (254, 25400, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 45),
  -- Sceptile - Swords Dance - TM088
  (254, 25400, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 46),
  -- Sceptile - Dragon Dance - TM100
  (254, 25400, 349, 23, NULL, 2, NULL, NULL, 23002100, NULL, 47),
  -- Sceptile - Substitute - TM103
  (254, 25400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 48),
  -- Sceptile - X-Scissor - TM105
  (254, 25400, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 49),
  -- Sceptile - Crunch - TM108
  (254, 25400, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 50),
  -- Sceptile - Giga Drain - TM111
  (254, 25400, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 51),
  -- Sceptile - Dragon Pulse - TM115
  (254, 25400, 406, 23, NULL, 2, NULL, NULL, 23002115, NULL, 52),
  -- Sceptile - Energy Ball - TM119
  (254, 25400, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 53),
  -- Sceptile - Helping Hand - TM130
  (254, 25400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 54),
  -- Sceptile - Grassy Terrain - TM137
  (254, 25400, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 55),
  -- Sceptile - Grass Pledge - TM146
  (254, 25400, 520, 23, NULL, 2, NULL, NULL, 23002146, NULL, 56),
  -- Sceptile - Earthquake - TM149
  (254, 25400, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 57),
  -- Sceptile - Giga Impact - TM152
  (254, 25400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 58),
  -- Sceptile - Frenzy Plant - TM155
  (254, 25400, 338, 23, NULL, 2, NULL, NULL, 23002155, NULL, 59),
  -- Sceptile - Outrage - TM156
  (254, 25400, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 60),
  -- Sceptile - Focus Blast - TM158
  (254, 25400, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 61),
  -- Sceptile - Leaf Storm - TM159
  (254, 25400, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 62),
  -- Sceptile - Hyper Beam - TM163
  (254, 25400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 63),
  -- Sceptile - Solar Beam - TM168
  (254, 25400, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 64),
  -- Sceptile - Tera Blast - TM171
  (254, 25400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 65),
  -- Sceptile - Double Kick - Egg
  (254, 25400, 24, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Sceptile - Absorb - Egg
  (254, 25400, 71, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Sceptile - Leech Seed - Egg
  (254, 25400, 73, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Sceptile - Slash - Egg
  (254, 25400, 163, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Sceptile - Dragon Breath - Egg
  (254, 25400, 225, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Sceptile - Synthesis - Egg
  (254, 25400, 235, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Sceptile - Worry Seed - Egg
  (254, 25400, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Sceptile - Night Slash - Egg
  (254, 25400, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Sceptile - Leaf Blade - Evolution
  (254, 25400, 348, 23, NULL, 7, NULL, NULL, NULL, NULL, 74),
  -- Sceptile - False Swipe - Reminder
  (254, 25400, 206, 23, NULL, 9, NULL, NULL, NULL, NULL, 75),
  -- Sceptile - Fury Cutter - Reminder
  (254, 25400, 210, 23, NULL, 9, NULL, NULL, NULL, NULL, 76),
  -- Sceptile - X-Scissor - Reminder
  (254, 25400, 404, 23, NULL, 9, NULL, NULL, NULL, NULL, 77),
  -- Sceptile - Energy Ball - Reminder
  (254, 25400, 412, 23, NULL, 9, NULL, NULL, NULL, NULL, 78),
  -- Sceptile - Shed Tail - Reminder
  (254, 25400, 880, 23, NULL, 9, NULL, NULL, NULL, NULL, 79),
  -- Torchic - Scratch - Level 1
  (255, 25500, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Torchic - Growl - Level 1
  (255, 25500, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Torchic - Ember - Level 3
  (255, 25500, 52, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Torchic - Quick Attack - Level 6
  (255, 25500, 98, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Torchic - Flame Charge - Level 9
  (255, 25500, 488, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Torchic - Detect - Level 12
  (255, 25500, 197, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Torchic - Sand Attack - Level 15
  (255, 25500, 28, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Torchic - Aerial Ace - Level 18
  (255, 25500, 332, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Torchic - Slash - Level 21
  (255, 25500, 163, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Torchic - Bounce - Level 24
  (255, 25500, 340, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Torchic - Focus Energy - Level 27
  (255, 25500, 116, 23, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Torchic - Flamethrower - Level 30
  (255, 25500, 53, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Torchic - Feather Dance - Level 33
  (255, 25500, 297, 23, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Torchic - Reversal - Level 36
  (255, 25500, 179, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Torchic - Flare Blitz - Level 39
  (255, 25500, 394, 23, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Torchic - Take Down - TM001
  (255, 25500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Torchic - Agility - TM004
  (255, 25500, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Torchic - Protect - TM007
  (255, 25500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Torchic - Low Kick - TM012
  (255, 25500, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 19),
  -- Torchic - Fire Spin - TM024
  (255, 25500, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 20),
  -- Torchic - Facade - TM025
  (255, 25500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Torchic - Aerial Ace - TM027
  (255, 25500, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 22),
  -- Torchic - Swift - TM032
  (255, 25500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 23),
  -- Torchic - Rock Tomb - TM036
  (255, 25500, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 24),
  -- Torchic - Flame Charge - TM038
  (255, 25500, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 25),
  -- Torchic - Endure - TM047
  (255, 25500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 26),
  -- Torchic - Sunny Day - TM049
  (255, 25500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 27),
  -- Torchic - Dig - TM055
  (255, 25500, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 28),
  -- Torchic - Shadow Claw - TM061
  (255, 25500, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 29),
  -- Torchic - Body Slam - TM066
  (255, 25500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 30),
  -- Torchic - Sleep Talk - TM070
  (255, 25500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Torchic - Rest - TM085
  (255, 25500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 32),
  -- Torchic - Rock Slide - TM086
  (255, 25500, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 33),
  -- Torchic - Swords Dance - TM088
  (255, 25500, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 34),
  -- Torchic - Substitute - TM103
  (255, 25500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Torchic - Will-O-Wisp - TM107
  (255, 25500, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 36),
  -- Torchic - Heat Wave - TM118
  (255, 25500, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 37),
  -- Torchic - Flamethrower - TM125
  (255, 25500, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 38),
  -- Torchic - Helping Hand - TM130
  (255, 25500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 39),
  -- Torchic - Baton Pass - TM132
  (255, 25500, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 40),
  -- Torchic - Reversal - TM134
  (255, 25500, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 41),
  -- Torchic - Fire Blast - TM141
  (255, 25500, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 42),
  -- Torchic - Fire Pledge - TM144
  (255, 25500, 519, 23, NULL, 2, NULL, NULL, 23002144, NULL, 43),
  -- Torchic - Overheat - TM157
  (255, 25500, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 44),
  -- Torchic - Flare Blitz - TM165
  (255, 25500, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 45),
  -- Torchic - Tera Blast - TM171
  (255, 25500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 46),
  -- Torchic - Peck - Egg
  (255, 25500, 64, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Torchic - Counter - Egg
  (255, 25500, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Torchic - Crush Claw - Egg
  (255, 25500, 306, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Torchic - Feint - Egg
  (255, 25500, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Torchic - Last Resort - Egg
  (255, 25500, 387, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Torchic - Night Slash - Egg
  (255, 25500, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Combusken - Scratch - Level 1
  (256, 25600, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Combusken - Growl - Level 1
  (256, 25600, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Combusken - Ember - Level 1
  (256, 25600, 52, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Combusken - Quick Attack - Level 1
  (256, 25600, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Combusken - Flame Charge - Level 9
  (256, 25600, 488, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Combusken - Detect - Level 12
  (256, 25600, 197, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Combusken - Sand Attack - Level 15
  (256, 25600, 28, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Combusken - Aerial Ace - Level 20
  (256, 25600, 332, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Combusken - Slash - Level 25
  (256, 25600, 163, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Combusken - Bounce - Level 30
  (256, 25600, 340, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Combusken - Focus Energy - Level 35
  (256, 25600, 116, 23, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Combusken - Blaze Kick - Level 40
  (256, 25600, 299, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Combusken - Bulk Up - Level 45
  (256, 25600, 339, 23, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Combusken - Reversal - Level 50
  (256, 25600, 179, 23, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Combusken - Flare Blitz - Level 55
  (256, 25600, 394, 23, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Combusken - Take Down - TM001
  (256, 25600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Combusken - Agility - TM004
  (256, 25600, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Combusken - Protect - TM007
  (256, 25600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Combusken - Low Kick - TM012
  (256, 25600, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 19),
  -- Combusken - Thief - TM018
  (256, 25600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Combusken - Fire Spin - TM024
  (256, 25600, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 21),
  -- Combusken - Facade - TM025
  (256, 25600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Combusken - Aerial Ace - TM027
  (256, 25600, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 23),
  -- Combusken - Swift - TM032
  (256, 25600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Combusken - Rock Tomb - TM036
  (256, 25600, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Combusken - Flame Charge - TM038
  (256, 25600, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 26),
  -- Combusken - Low Sweep - TM039
  (256, 25600, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 27),
  -- Combusken - Fling - TM043
  (256, 25600, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 28),
  -- Combusken - Endure - TM047
  (256, 25600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Combusken - Sunny Day - TM049
  (256, 25600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Combusken - Dig - TM055
  (256, 25600, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 31),
  -- Combusken - Brick Break - TM058
  (256, 25600, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 32),
  -- Combusken - Shadow Claw - TM061
  (256, 25600, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 33),
  -- Combusken - Bulk Up - TM064
  (256, 25600, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 34),
  -- Combusken - Body Slam - TM066
  (256, 25600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Combusken - Fire Punch - TM067
  (256, 25600, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 36),
  -- Combusken - Thunder Punch - TM068
  (256, 25600, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 37),
  -- Combusken - Sleep Talk - TM070
  (256, 25600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 38),
  -- Combusken - Poison Jab - TM083
  (256, 25600, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 39),
  -- Combusken - Rest - TM085
  (256, 25600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Combusken - Rock Slide - TM086
  (256, 25600, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 41),
  -- Combusken - Swords Dance - TM088
  (256, 25600, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 42),
  -- Combusken - Substitute - TM103
  (256, 25600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Combusken - Will-O-Wisp - TM107
  (256, 25600, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 44),
  -- Combusken - Heat Wave - TM118
  (256, 25600, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 45),
  -- Combusken - Flamethrower - TM125
  (256, 25600, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 46),
  -- Combusken - Helping Hand - TM130
  (256, 25600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 47),
  -- Combusken - Baton Pass - TM132
  (256, 25600, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 48),
  -- Combusken - Reversal - TM134
  (256, 25600, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 49),
  -- Combusken - Fire Blast - TM141
  (256, 25600, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 50),
  -- Combusken - Fire Pledge - TM144
  (256, 25600, 519, 23, NULL, 2, NULL, NULL, 23002144, NULL, 51),
  -- Combusken - Overheat - TM157
  (256, 25600, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 52),
  -- Combusken - Focus Blast - TM158
  (256, 25600, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 53),
  -- Combusken - Flare Blitz - TM165
  (256, 25600, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 54),
  -- Combusken - Close Combat - TM167
  (256, 25600, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 55),
  -- Combusken - Tera Blast - TM171
  (256, 25600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 56),
  -- Combusken - Peck - Egg
  (256, 25600, 64, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Combusken - Counter - Egg
  (256, 25600, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Combusken - Crush Claw - Egg
  (256, 25600, 306, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Combusken - Feint - Egg
  (256, 25600, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Combusken - Last Resort - Egg
  (256, 25600, 387, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Combusken - Night Slash - Egg
  (256, 25600, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Combusken - Double Kick - Evolution
  (256, 25600, 24, 23, NULL, 7, NULL, NULL, NULL, NULL, 63),
  -- Combusken - Flamethrower - Reminder
  (256, 25600, 53, 23, NULL, 9, NULL, NULL, NULL, NULL, 64),
  -- Combusken - Feather Dance - Reminder
  (256, 25600, 297, 23, NULL, 9, NULL, NULL, NULL, NULL, 65),
  -- Blaziken - Scratch - Level 1
  (257, 25700, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Blaziken - Double Kick - Level 1
  (257, 25700, 24, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Blaziken - Growl - Level 1
  (257, 25700, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Blaziken - Quick Attack - Level 1
  (257, 25700, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Blaziken - Flame Charge - Level 9
  (257, 25700, 488, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Blaziken - Detect - Level 12
  (257, 25700, 197, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Blaziken - Sand Attack - Level 15
  (257, 25700, 28, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Blaziken - Aerial Ace - Level 20
  (257, 25700, 332, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Blaziken - Slash - Level 25
  (257, 25700, 163, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Blaziken - Bounce - Level 30
  (257, 25700, 340, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Blaziken - Focus Energy - Level 35
  (257, 25700, 116, 23, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Blaziken - Bulk Up - Level 42
  (257, 25700, 339, 23, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Blaziken - Reversal - Level 49
  (257, 25700, 179, 23, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Blaziken - Flare Blitz - Level 56
  (257, 25700, 394, 23, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Blaziken - Brave Bird - Level 63
  (257, 25700, 413, 23, NULL, 1, 63, NULL, NULL, NULL, 15),
  -- Blaziken - Take Down - TM001
  (257, 25700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Blaziken - Agility - TM004
  (257, 25700, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 17),
  -- Blaziken - Mud-Slap - TM005
  (257, 25700, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Blaziken - Protect - TM007
  (257, 25700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Blaziken - Low Kick - TM012
  (257, 25700, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Blaziken - Acrobatics - TM014
  (257, 25700, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 21),
  -- Blaziken - Thief - TM018
  (257, 25700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Blaziken - Fire Spin - TM024
  (257, 25700, 83, 23, NULL, 2, NULL, NULL, 23002024, NULL, 23),
  -- Blaziken - Facade - TM025
  (257, 25700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Blaziken - Aerial Ace - TM027
  (257, 25700, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 25),
  -- Blaziken - Bulldoze - TM028
  (257, 25700, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 26),
  -- Blaziken - Swift - TM032
  (257, 25700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 27),
  -- Blaziken - Rock Tomb - TM036
  (257, 25700, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 28),
  -- Blaziken - Flame Charge - TM038
  (257, 25700, 488, 23, NULL, 2, NULL, NULL, 23002038, NULL, 29),
  -- Blaziken - Low Sweep - TM039
  (257, 25700, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 30),
  -- Blaziken - Fling - TM043
  (257, 25700, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 31),
  -- Blaziken - Endure - TM047
  (257, 25700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Blaziken - Sunny Day - TM049
  (257, 25700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 33),
  -- Blaziken - Dig - TM055
  (257, 25700, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 34),
  -- Blaziken - Brick Break - TM058
  (257, 25700, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 35),
  -- Blaziken - U-turn - TM060
  (257, 25700, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 36),
  -- Blaziken - Shadow Claw - TM061
  (257, 25700, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 37),
  -- Blaziken - Bulk Up - TM064
  (257, 25700, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 38),
  -- Blaziken - Body Slam - TM066
  (257, 25700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 39),
  -- Blaziken - Fire Punch - TM067
  (257, 25700, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 40),
  -- Blaziken - Thunder Punch - TM068
  (257, 25700, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 41),
  -- Blaziken - Sleep Talk - TM070
  (257, 25700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 42),
  -- Blaziken - Poison Jab - TM083
  (257, 25700, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 43),
  -- Blaziken - Rest - TM085
  (257, 25700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 44),
  -- Blaziken - Rock Slide - TM086
  (257, 25700, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 45),
  -- Blaziken - Swords Dance - TM088
  (257, 25700, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 46),
  -- Blaziken - Substitute - TM103
  (257, 25700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 47),
  -- Blaziken - Will-O-Wisp - TM107
  (257, 25700, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 48),
  -- Blaziken - Aura Sphere - TM112
  (257, 25700, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 49),
  -- Blaziken - Heat Wave - TM118
  (257, 25700, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 50),
  -- Blaziken - Flamethrower - TM125
  (257, 25700, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 51),
  -- Blaziken - Helping Hand - TM130
  (257, 25700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 52),
  -- Blaziken - Baton Pass - TM132
  (257, 25700, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 53),
  -- Blaziken - Reversal - TM134
  (257, 25700, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 54),
  -- Blaziken - Fire Blast - TM141
  (257, 25700, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 55),
  -- Blaziken - Fire Pledge - TM144
  (257, 25700, 519, 23, NULL, 2, NULL, NULL, 23002144, NULL, 56),
  -- Blaziken - Earthquake - TM149
  (257, 25700, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 57),
  -- Blaziken - Stone Edge - TM150
  (257, 25700, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 58),
  -- Blaziken - Giga Impact - TM152
  (257, 25700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 59),
  -- Blaziken - Blast Burn - TM153
  (257, 25700, 307, 23, NULL, 2, NULL, NULL, 23002153, NULL, 60),
  -- Blaziken - Overheat - TM157
  (257, 25700, 315, 23, NULL, 2, NULL, NULL, 23002157, NULL, 61),
  -- Blaziken - Focus Blast - TM158
  (257, 25700, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 62),
  -- Blaziken - Hyper Beam - TM163
  (257, 25700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 63),
  -- Blaziken - Brave Bird - TM164
  (257, 25700, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 64),
  -- Blaziken - Flare Blitz - TM165
  (257, 25700, 394, 23, NULL, 2, NULL, NULL, 23002165, NULL, 65),
  -- Blaziken - Close Combat - TM167
  (257, 25700, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 66),
  -- Blaziken - Solar Beam - TM168
  (257, 25700, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 67),
  -- Blaziken - Tera Blast - TM171
  (257, 25700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 68),
  -- Blaziken - Peck - Egg
  (257, 25700, 64, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Blaziken - Counter - Egg
  (257, 25700, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Blaziken - Crush Claw - Egg
  (257, 25700, 306, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Blaziken - Feint - Egg
  (257, 25700, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Blaziken - Last Resort - Egg
  (257, 25700, 387, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Blaziken - Night Slash - Egg
  (257, 25700, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Blaziken - Blaze Kick - Evolution
  (257, 25700, 299, 23, NULL, 7, NULL, NULL, NULL, NULL, 75),
  -- Blaziken - Fire Punch - Reminder
  (257, 25700, 7, 23, NULL, 9, NULL, NULL, NULL, NULL, 76),
  -- Blaziken - Ember - Reminder
  (257, 25700, 52, 23, NULL, 9, NULL, NULL, NULL, NULL, 77),
  -- Blaziken - Flamethrower - Reminder
  (257, 25700, 53, 23, NULL, 9, NULL, NULL, NULL, NULL, 78),
  -- Blaziken - Feather Dance - Reminder
  (257, 25700, 297, 23, NULL, 9, NULL, NULL, NULL, NULL, 79),
  -- Mudkip - Tackle - Level 1
  (258, 25800, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mudkip - Growl - Level 1
  (258, 25800, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mudkip - Water Gun - Level 3
  (258, 25800, 55, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Mudkip - Rock Smash - Level 6
  (258, 25800, 249, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Mudkip - Rock Throw - Level 9
  (258, 25800, 88, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Mudkip - Protect - Level 12
  (258, 25800, 182, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Mudkip - Supersonic - Level 15
  (258, 25800, 48, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Mudkip - Water Pulse - Level 18
  (258, 25800, 352, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Mudkip - Rock Slide - Level 21
  (258, 25800, 157, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Mudkip - Take Down - Level 24
  (258, 25800, 36, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Mudkip - Amnesia - Level 27
  (258, 25800, 133, 23, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Mudkip - Surf - Level 30
  (258, 25800, 57, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Mudkip - Screech - Level 33
  (258, 25800, 103, 23, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Mudkip - Endeavor - Level 36
  (258, 25800, 283, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Mudkip - Hydro Pump - Level 39
  (258, 25800, 56, 23, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Mudkip - Take Down - TM001
  (258, 25800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Mudkip - Mud-Slap - TM005
  (258, 25800, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 17),
  -- Mudkip - Protect - TM007
  (258, 25800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Mudkip - Water Pulse - TM011
  (258, 25800, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 19),
  -- Mudkip - Low Kick - TM012
  (258, 25800, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 20),
  -- Mudkip - Chilling Water - TM022
  (258, 25800, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 21),
  -- Mudkip - Facade - TM025
  (258, 25800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Mudkip - Icy Wind - TM034
  (258, 25800, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 23),
  -- Mudkip - Mud Shot - TM035
  (258, 25800, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 24),
  -- Mudkip - Rock Tomb - TM036
  (258, 25800, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Mudkip - Avalanche - TM046
  (258, 25800, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 26),
  -- Mudkip - Endure - TM047
  (258, 25800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 27),
  -- Mudkip - Rain Dance - TM050
  (258, 25800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 28),
  -- Mudkip - Dig - TM055
  (258, 25800, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 29),
  -- Mudkip - Body Slam - TM066
  (258, 25800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 30),
  -- Mudkip - Sleep Talk - TM070
  (258, 25800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 31),
  -- Mudkip - Waterfall - TM077
  (258, 25800, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 32),
  -- Mudkip - Rest - TM085
  (258, 25800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Mudkip - Rock Slide - TM086
  (258, 25800, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 34),
  -- Mudkip - Substitute - TM103
  (258, 25800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Mudkip - Liquidation - TM110
  (258, 25800, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 36),
  -- Mudkip - Surf - TM123
  (258, 25800, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 37),
  -- Mudkip - Amnesia - TM128
  (258, 25800, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 38),
  -- Mudkip - Earth Power - TM133
  (258, 25800, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 39),
  -- Mudkip - Ice Beam - TM135
  (258, 25800, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 40),
  -- Mudkip - Hydro Pump - TM142
  (258, 25800, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 41),
  -- Mudkip - Blizzard - TM143
  (258, 25800, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 42),
  -- Mudkip - Water Pledge - TM145
  (258, 25800, 518, 23, NULL, 2, NULL, NULL, 23002145, NULL, 43),
  -- Mudkip - Tera Blast - TM171
  (258, 25800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 44),
  -- Mudkip - Stomp - Egg
  (258, 25800, 23, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Mudkip - Double-Edge - Egg
  (258, 25800, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Mudkip - Bite - Egg
  (258, 25800, 44, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Mudkip - Counter - Egg
  (258, 25800, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Mudkip - Sludge - Egg
  (258, 25800, 124, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Mudkip - Curse - Egg
  (258, 25800, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Mudkip - Mud-Slap - Egg
  (258, 25800, 189, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Mudkip - Mirror Coat - Egg
  (258, 25800, 243, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Mudkip - Ancient Power - Egg
  (258, 25800, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Mudkip - Yawn - Egg
  (258, 25800, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Mudkip - Wide Guard - Egg
  (258, 25800, 469, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Marshtomp - Tackle - Level 1
  (259, 25900, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Marshtomp - Growl - Level 1
  (259, 25900, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Marshtomp - Water Gun - Level 1
  (259, 25900, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Marshtomp - Rock Throw - Level 9
  (259, 25900, 88, 23, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Marshtomp - Protect - Level 12
  (259, 25900, 182, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Marshtomp - Supersonic - Level 15
  (259, 25900, 48, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Marshtomp - Water Pulse - Level 20
  (259, 25900, 352, 23, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Marshtomp - Rock Slide - Level 25
  (259, 25900, 157, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Marshtomp - Take Down - Level 30
  (259, 25900, 36, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Marshtomp - Amnesia - Level 35
  (259, 25900, 133, 23, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Marshtomp - Muddy Water - Level 40
  (259, 25900, 330, 23, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Marshtomp - Screech - Level 45
  (259, 25900, 103, 23, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Marshtomp - Endeavor - Level 50
  (259, 25900, 283, 23, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Marshtomp - Hydro Pump - Level 55
  (259, 25900, 56, 23, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Marshtomp - Take Down - TM001
  (259, 25900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 15),
  -- Marshtomp - Mud-Slap - TM005
  (259, 25900, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 16),
  -- Marshtomp - Protect - TM007
  (259, 25900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Marshtomp - Water Pulse - TM011
  (259, 25900, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 18),
  -- Marshtomp - Low Kick - TM012
  (259, 25900, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 19),
  -- Marshtomp - Chilling Water - TM022
  (259, 25900, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 20),
  -- Marshtomp - Facade - TM025
  (259, 25900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Marshtomp - Bulldoze - TM028
  (259, 25900, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 22),
  -- Marshtomp - Icy Wind - TM034
  (259, 25900, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 23),
  -- Marshtomp - Mud Shot - TM035
  (259, 25900, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 24),
  -- Marshtomp - Rock Tomb - TM036
  (259, 25900, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 25),
  -- Marshtomp - Fling - TM043
  (259, 25900, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 26),
  -- Marshtomp - Avalanche - TM046
  (259, 25900, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 27),
  -- Marshtomp - Endure - TM047
  (259, 25900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Marshtomp - Rain Dance - TM050
  (259, 25900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 29),
  -- Marshtomp - Dig - TM055
  (259, 25900, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 30),
  -- Marshtomp - Brick Break - TM058
  (259, 25900, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 31),
  -- Marshtomp - Body Slam - TM066
  (259, 25900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Marshtomp - Ice Punch - TM069
  (259, 25900, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 33),
  -- Marshtomp - Sleep Talk - TM070
  (259, 25900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Marshtomp - Waterfall - TM077
  (259, 25900, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 35),
  -- Marshtomp - Rest - TM085
  (259, 25900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 36),
  -- Marshtomp - Rock Slide - TM086
  (259, 25900, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 37),
  -- Marshtomp - Substitute - TM103
  (259, 25900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Marshtomp - Liquidation - TM110
  (259, 25900, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 39),
  -- Marshtomp - Stealth Rock - TM116
  (259, 25900, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 40),
  -- Marshtomp - Surf - TM123
  (259, 25900, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 41),
  -- Marshtomp - Amnesia - TM128
  (259, 25900, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 42),
  -- Marshtomp - Helping Hand - TM130
  (259, 25900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 43),
  -- Marshtomp - Earth Power - TM133
  (259, 25900, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 44),
  -- Marshtomp - Ice Beam - TM135
  (259, 25900, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 45),
  -- Marshtomp - Hydro Pump - TM142
  (259, 25900, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 46),
  -- Marshtomp - Blizzard - TM143
  (259, 25900, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 47),
  -- Marshtomp - Water Pledge - TM145
  (259, 25900, 518, 23, NULL, 2, NULL, NULL, 23002145, NULL, 48),
  -- Marshtomp - Earthquake - TM149
  (259, 25900, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 49),
  -- Marshtomp - Tera Blast - TM171
  (259, 25900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 50),
  -- Marshtomp - Stomp - Egg
  (259, 25900, 23, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Marshtomp - Double-Edge - Egg
  (259, 25900, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Marshtomp - Bite - Egg
  (259, 25900, 44, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Marshtomp - Counter - Egg
  (259, 25900, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Marshtomp - Sludge - Egg
  (259, 25900, 124, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Marshtomp - Curse - Egg
  (259, 25900, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Marshtomp - Mud-Slap - Egg
  (259, 25900, 189, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Marshtomp - Mirror Coat - Egg
  (259, 25900, 243, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Marshtomp - Ancient Power - Egg
  (259, 25900, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Marshtomp - Yawn - Egg
  (259, 25900, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Marshtomp - Wide Guard - Egg
  (259, 25900, 469, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Marshtomp - Mud Shot - Evolution
  (259, 25900, 341, 23, NULL, 7, NULL, NULL, NULL, NULL, 62),
  -- Marshtomp - Rock Smash - Reminder
  (259, 25900, 249, 23, NULL, 9, NULL, NULL, NULL, NULL, 63),
  -- Swampert - Tackle - Level 1
  (260, 26000, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swampert - Growl - Level 1
  (260, 26000, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swampert - Water Gun - Level 1
  (260, 26000, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Swampert - Mud Shot - Level 1
  (260, 26000, 341, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Swampert - Rock Throw - Level 9
  (260, 26000, 88, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Swampert - Protect - Level 12
  (260, 26000, 182, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Swampert - Supersonic - Level 15
  (260, 26000, 48, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Swampert - Water Pulse - Level 20
  (260, 26000, 352, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Swampert - Rock Slide - Level 25
  (260, 26000, 157, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Swampert - Take Down - Level 30
  (260, 26000, 36, 23, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Swampert - Amnesia - Level 35
  (260, 26000, 133, 23, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Swampert - Muddy Water - Level 42
  (260, 26000, 330, 23, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Swampert - Screech - Level 49
  (260, 26000, 103, 23, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Swampert - Endeavor - Level 56
  (260, 26000, 283, 23, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Swampert - Hydro Pump - Level 63
  (260, 26000, 56, 23, NULL, 1, 63, NULL, NULL, NULL, 15),
  -- Swampert - Take Down - TM001
  (260, 26000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Swampert - Mud-Slap - TM005
  (260, 26000, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 17),
  -- Swampert - Scary Face - TM006
  (260, 26000, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 18),
  -- Swampert - Protect - TM007
  (260, 26000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Swampert - Water Pulse - TM011
  (260, 26000, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 20),
  -- Swampert - Low Kick - TM012
  (260, 26000, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 21),
  -- Swampert - Chilling Water - TM022
  (260, 26000, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 22),
  -- Swampert - Facade - TM025
  (260, 26000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Swampert - Bulldoze - TM028
  (260, 26000, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 24),
  -- Swampert - Icy Wind - TM034
  (260, 26000, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 25),
  -- Swampert - Mud Shot - TM035
  (260, 26000, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 26),
  -- Swampert - Rock Tomb - TM036
  (260, 26000, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 27),
  -- Swampert - Fling - TM043
  (260, 26000, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 28),
  -- Swampert - Avalanche - TM046
  (260, 26000, 419, 23, NULL, 2, NULL, NULL, 23002046, NULL, 29),
  -- Swampert - Endure - TM047
  (260, 26000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Swampert - Rain Dance - TM050
  (260, 26000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Swampert - Dig - TM055
  (260, 26000, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 32),
  -- Swampert - Brick Break - TM058
  (260, 26000, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 33),
  -- Swampert - Bulk Up - TM064
  (260, 26000, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 34),
  -- Swampert - Body Slam - TM066
  (260, 26000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Swampert - Ice Punch - TM069
  (260, 26000, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 36),
  -- Swampert - Sleep Talk - TM070
  (260, 26000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 37),
  -- Swampert - Waterfall - TM077
  (260, 26000, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 38),
  -- Swampert - Poison Jab - TM083
  (260, 26000, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 39),
  -- Swampert - Stomping Tantrum - TM084
  (260, 26000, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 40),
  -- Swampert - Rest - TM085
  (260, 26000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 41),
  -- Swampert - Rock Slide - TM086
  (260, 26000, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 42),
  -- Swampert - Body Press - TM089
  (260, 26000, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 43),
  -- Swampert - Substitute - TM103
  (260, 26000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 44),
  -- Swampert - Liquidation - TM110
  (260, 26000, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 45),
  -- Swampert - Stealth Rock - TM116
  (260, 26000, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 46),
  -- Swampert - Surf - TM123
  (260, 26000, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 47),
  -- Swampert - Amnesia - TM128
  (260, 26000, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 48),
  -- Swampert - Helping Hand - TM130
  (260, 26000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 49),
  -- Swampert - Earth Power - TM133
  (260, 26000, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 50),
  -- Swampert - Ice Beam - TM135
  (260, 26000, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 51),
  -- Swampert - Hydro Pump - TM142
  (260, 26000, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 52),
  -- Swampert - Blizzard - TM143
  (260, 26000, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 53),
  -- Swampert - Water Pledge - TM145
  (260, 26000, 518, 23, NULL, 2, NULL, NULL, 23002145, NULL, 54),
  -- Swampert - Earthquake - TM149
  (260, 26000, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 55),
  -- Swampert - Stone Edge - TM150
  (260, 26000, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 56),
  -- Swampert - Giga Impact - TM152
  (260, 26000, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 57),
  -- Swampert - Hydro Cannon - TM154
  (260, 26000, 308, 23, NULL, 2, NULL, NULL, 23002154, NULL, 58),
  -- Swampert - Outrage - TM156
  (260, 26000, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 59),
  -- Swampert - Focus Blast - TM158
  (260, 26000, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 60),
  -- Swampert - Hyper Beam - TM163
  (260, 26000, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 61),
  -- Swampert - Tera Blast - TM171
  (260, 26000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 62),
  -- Swampert - Stomp - Egg
  (260, 26000, 23, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Swampert - Double-Edge - Egg
  (260, 26000, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Swampert - Bite - Egg
  (260, 26000, 44, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Swampert - Counter - Egg
  (260, 26000, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Swampert - Sludge - Egg
  (260, 26000, 124, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Swampert - Curse - Egg
  (260, 26000, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Swampert - Mud-Slap - Egg
  (260, 26000, 189, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Swampert - Mirror Coat - Egg
  (260, 26000, 243, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Swampert - Ancient Power - Egg
  (260, 26000, 246, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Swampert - Yawn - Egg
  (260, 26000, 281, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Swampert - Wide Guard - Egg
  (260, 26000, 469, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Swampert - Surf - Reminder
  (260, 26000, 57, 23, NULL, 9, NULL, NULL, NULL, NULL, 74),
  -- Swampert - Earthquake - Reminder
  (260, 26000, 89, 23, NULL, 9, NULL, NULL, NULL, NULL, 75),
  -- Swampert - Rock Smash - Reminder
  (260, 26000, 249, 23, NULL, 9, NULL, NULL, NULL, NULL, 76),
  -- Swampert - Hammer Arm - Reminder
  (260, 26000, 359, 23, NULL, 9, NULL, NULL, NULL, NULL, 77),
  -- Poochyena - Tackle - Level 1
  (261, 26100, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poochyena - Howl - Level 4
  (261, 26100, 336, 23, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Poochyena - Sand Attack - Level 7
  (261, 26100, 28, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Poochyena - Bite - Level 10
  (261, 26100, 44, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Poochyena - Leer - Level 13
  (261, 26100, 43, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Poochyena - Roar - Level 16
  (261, 26100, 46, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Poochyena - Swagger - Level 19
  (261, 26100, 207, 23, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Poochyena - Assurance - Level 22
  (261, 26100, 372, 23, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Poochyena - Scary Face - Level 25
  (261, 26100, 184, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Poochyena - Taunt - Level 28
  (261, 26100, 269, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Poochyena - Crunch - Level 31
  (261, 26100, 242, 23, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Poochyena - Yawn - Level 34
  (261, 26100, 281, 23, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Poochyena - Take Down - Level 36
  (261, 26100, 36, 23, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Poochyena - Sucker Punch - Level 40
  (261, 26100, 389, 23, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Poochyena - Play Rough - Level 44
  (261, 26100, 583, 23, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Poochyena - Take Down - TM001
  (261, 26100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 16),
  -- Poochyena - Charm - TM002
  (261, 26100, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 17),
  -- Poochyena - Mud-Slap - TM005
  (261, 26100, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 18),
  -- Poochyena - Scary Face - TM006
  (261, 26100, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 19),
  -- Poochyena - Protect - TM007
  (261, 26100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Poochyena - Fire Fang - TM008
  (261, 26100, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 21),
  -- Poochyena - Thunder Fang - TM009
  (261, 26100, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 22),
  -- Poochyena - Ice Fang - TM010
  (261, 26100, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 23),
  -- Poochyena - Thief - TM018
  (261, 26100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 24),
  -- Poochyena - Trailblaze - TM020
  (261, 26100, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 25),
  -- Poochyena - Facade - TM025
  (261, 26100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Poochyena - Snarl - TM030
  (261, 26100, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 27),
  -- Poochyena - Endure - TM047
  (261, 26100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 28),
  -- Poochyena - Sunny Day - TM049
  (261, 26100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 29),
  -- Poochyena - Rain Dance - TM050
  (261, 26100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 30),
  -- Poochyena - Dig - TM055
  (261, 26100, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 31),
  -- Poochyena - Foul Play - TM062
  (261, 26100, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 32),
  -- Poochyena - Psychic Fangs - TM063
  (261, 26100, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 33),
  -- Poochyena - Sleep Talk - TM070
  (261, 26100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Poochyena - Rest - TM085
  (261, 26100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Poochyena - Taunt - TM087
  (261, 26100, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 36),
  -- Poochyena - Dark Pulse - TM094
  (261, 26100, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 37),
  -- Poochyena - Substitute - TM103
  (261, 26100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 38),
  -- Poochyena - Crunch - TM108
  (261, 26100, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 39),
  -- Poochyena - Shadow Ball - TM114
  (261, 26100, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 40),
  -- Poochyena - Hyper Voice - TM117
  (261, 26100, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 41),
  -- Poochyena - Play Rough - TM127
  (261, 26100, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 42),
  -- Poochyena - Helping Hand - TM130
  (261, 26100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 43),
  -- Poochyena - Nasty Plot - TM140
  (261, 26100, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 44),
  -- Poochyena - Tera Blast - TM171
  (261, 26100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 45),
  -- Poochyena - Poison Fang - Egg
  (261, 26100, 305, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Poochyena - Astonish - Egg
  (261, 26100, 310, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Poochyena - Covet - Egg
  (261, 26100, 343, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Mightyena - Sand Attack - Level 1
  (262, 26200, 28, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mightyena - Tackle - Level 1
  (262, 26200, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mightyena - Bite - Level 1
  (262, 26200, 44, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mightyena - Thief - Level 1
  (262, 26200, 168, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mightyena - Crunch - Level 1
  (262, 26200, 242, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mightyena - Thunder Fang - Level 1
  (262, 26200, 422, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Mightyena - Ice Fang - Level 1
  (262, 26200, 423, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Mightyena - Fire Fang - Level 1
  (262, 26200, 424, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Mightyena - Leer - Level 13
  (262, 26200, 43, 23, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Mightyena - Howl - Level 13
  (262, 26200, 336, 23, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Mightyena - Roar - Level 16
  (262, 26200, 46, 23, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Mightyena - Swagger - Level 20
  (262, 26200, 207, 23, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Mightyena - Assurance - Level 24
  (262, 26200, 372, 23, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Mightyena - Scary Face - Level 28
  (262, 26200, 184, 23, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Mightyena - Taunt - Level 36
  (262, 26200, 269, 23, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Mightyena - Yawn - Level 44
  (262, 26200, 281, 23, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Mightyena - Take Down - Level 48
  (262, 26200, 36, 23, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Mightyena - Sucker Punch - Level 52
  (262, 26200, 389, 23, NULL, 1, 52, NULL, NULL, NULL, 18),
  -- Mightyena - Play Rough - Level 56
  (262, 26200, 583, 23, NULL, 1, 56, NULL, NULL, NULL, 19),
  -- Mightyena - Take Down - TM001
  (262, 26200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 20),
  -- Mightyena - Charm - TM002
  (262, 26200, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 21),
  -- Mightyena - Mud-Slap - TM005
  (262, 26200, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 22),
  -- Mightyena - Scary Face - TM006
  (262, 26200, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 23),
  -- Mightyena - Protect - TM007
  (262, 26200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 24),
  -- Mightyena - Fire Fang - TM008
  (262, 26200, 424, 23, NULL, 2, NULL, NULL, 23002008, NULL, 25),
  -- Mightyena - Thunder Fang - TM009
  (262, 26200, 422, 23, NULL, 2, NULL, NULL, 23002009, NULL, 26),
  -- Mightyena - Ice Fang - TM010
  (262, 26200, 423, 23, NULL, 2, NULL, NULL, 23002010, NULL, 27),
  -- Mightyena - Thief - TM018
  (262, 26200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 28),
  -- Mightyena - Trailblaze - TM020
  (262, 26200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 29),
  -- Mightyena - Facade - TM025
  (262, 26200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 30),
  -- Mightyena - Snarl - TM030
  (262, 26200, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 31),
  -- Mightyena - Endure - TM047
  (262, 26200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Mightyena - Sunny Day - TM049
  (262, 26200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 33),
  -- Mightyena - Rain Dance - TM050
  (262, 26200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 34),
  -- Mightyena - Dig - TM055
  (262, 26200, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 35),
  -- Mightyena - Foul Play - TM062
  (262, 26200, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 36),
  -- Mightyena - Psychic Fangs - TM063
  (262, 26200, 706, 23, NULL, 2, NULL, NULL, 23002063, NULL, 37),
  -- Mightyena - Body Slam - TM066
  (262, 26200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 38),
  -- Mightyena - Sleep Talk - TM070
  (262, 26200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Mightyena - Rest - TM085
  (262, 26200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Mightyena - Taunt - TM087
  (262, 26200, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 41),
  -- Mightyena - Dark Pulse - TM094
  (262, 26200, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 42),
  -- Mightyena - Substitute - TM103
  (262, 26200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Mightyena - Crunch - TM108
  (262, 26200, 242, 23, NULL, 2, NULL, NULL, 23002108, NULL, 44),
  -- Mightyena - Shadow Ball - TM114
  (262, 26200, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 45),
  -- Mightyena - Hyper Voice - TM117
  (262, 26200, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 46),
  -- Mightyena - Play Rough - TM127
  (262, 26200, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 47),
  -- Mightyena - Helping Hand - TM130
  (262, 26200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 48),
  -- Mightyena - Nasty Plot - TM140
  (262, 26200, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 49),
  -- Mightyena - Giga Impact - TM152
  (262, 26200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 50),
  -- Mightyena - Hyper Beam - TM163
  (262, 26200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 51),
  -- Mightyena - Tera Blast - TM171
  (262, 26200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 52),
  -- Mightyena - Poison Fang - Egg
  (262, 26200, 305, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Mightyena - Astonish - Egg
  (262, 26200, 310, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Mightyena - Covet - Egg
  (262, 26200, 343, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Mightyena - Snarl - Evolution
  (262, 26200, 555, 23, NULL, 7, NULL, NULL, NULL, NULL, 56),
  -- Lotad - Growl - Level 1
  (270, 27000, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lotad - Astonish - Level 1
  (270, 27000, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lotad - Absorb - Level 3
  (270, 27000, 71, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Lotad - Water Gun - Level 6
  (270, 27000, 55, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Lotad - Mist - Level 9
  (270, 27000, 54, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Lotad - Mega Drain - Level 12
  (270, 27000, 72, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Lotad - Flail - Level 16
  (270, 27000, 175, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Lotad - Bubble Beam - Level 20
  (270, 27000, 61, 23, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Lotad - Leech Seed - Level 24
  (270, 27000, 73, 23, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Lotad - Giga Drain - Level 28
  (270, 27000, 202, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Lotad - Rain Dance - Level 33
  (270, 27000, 240, 23, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Lotad - Zen Headbutt - Level 38
  (270, 27000, 428, 23, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Lotad - Energy Ball - Level 43
  (270, 27000, 412, 23, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Lotad - Take Down - TM001
  (270, 27000, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Lotad - Protect - TM007
  (270, 27000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Lotad - Water Pulse - TM011
  (270, 27000, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 16),
  -- Lotad - Thief - TM018
  (270, 27000, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 17),
  -- Lotad - Disarming Voice - TM019
  (270, 27000, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 18),
  -- Lotad - Trailblaze - TM020
  (270, 27000, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 19),
  -- Lotad - Chilling Water - TM022
  (270, 27000, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 20),
  -- Lotad - Facade - TM025
  (270, 27000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 21),
  -- Lotad - Magical Leaf - TM033
  (270, 27000, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 22),
  -- Lotad - Icy Wind - TM034
  (270, 27000, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 23),
  -- Lotad - Endure - TM047
  (270, 27000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Lotad - Sunny Day - TM049
  (270, 27000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Lotad - Rain Dance - TM050
  (270, 27000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Lotad - Bullet Seed - TM056
  (270, 27000, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 27),
  -- Lotad - Zen Headbutt - TM059
  (270, 27000, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 28),
  -- Lotad - Body Slam - TM066
  (270, 27000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 29),
  -- Lotad - Sleep Talk - TM070
  (270, 27000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Lotad - Seed Bomb - TM071
  (270, 27000, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 31),
  -- Lotad - Grass Knot - TM081
  (270, 27000, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 32),
  -- Lotad - Rest - TM085
  (270, 27000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Lotad - Swords Dance - TM088
  (270, 27000, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 34),
  -- Lotad - Substitute - TM103
  (270, 27000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Lotad - Giga Drain - TM111
  (270, 27000, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 36),
  -- Lotad - Energy Ball - TM119
  (270, 27000, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 37),
  -- Lotad - Surf - TM123
  (270, 27000, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 38),
  -- Lotad - Ice Beam - TM135
  (270, 27000, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 39),
  -- Lotad - Grassy Terrain - TM137
  (270, 27000, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 40),
  -- Lotad - Blizzard - TM143
  (270, 27000, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 41),
  -- Lotad - Solar Beam - TM168
  (270, 27000, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 42),
  -- Lotad - Tera Blast - TM171
  (270, 27000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 43),
  -- Lotad - Counter - Egg
  (270, 27000, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Lotad - Razor Leaf - Egg
  (270, 27000, 75, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Lotad - Sweet Scent - Egg
  (270, 27000, 230, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Lotad - Synthesis - Egg
  (270, 27000, 235, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Lotad - Teeter Dance - Egg
  (270, 27000, 298, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Lotad - Tickle - Egg
  (270, 27000, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Lombre - Growl - Level 1
  (271, 27100, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lombre - Water Gun - Level 1
  (271, 27100, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lombre - Absorb - Level 1
  (271, 27100, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lombre - Flail - Level 1
  (271, 27100, 175, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lombre - Fake Out - Level 1
  (271, 27100, 252, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Lombre - Knock Off - Level 1
  (271, 27100, 282, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Lombre - Teeter Dance - Level 1
  (271, 27100, 298, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Lombre - Astonish - Level 1
  (271, 27100, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Lombre - Mist - Level 9
  (271, 27100, 54, 23, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Lombre - Mega Drain - Level 12
  (271, 27100, 72, 23, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Lombre - Fury Swipes - Level 18
  (271, 27100, 154, 23, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Lombre - Bubble Beam - Level 24
  (271, 27100, 61, 23, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Lombre - Leech Seed - Level 30
  (271, 27100, 73, 23, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Lombre - Giga Drain - Level 36
  (271, 27100, 202, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Lombre - Zen Headbutt - Level 50
  (271, 27100, 428, 23, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Lombre - Energy Ball - Level 57
  (271, 27100, 412, 23, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Lombre - Hydro Pump - Level 64
  (271, 27100, 56, 23, NULL, 1, 64, NULL, NULL, NULL, 17),
  -- Lombre - Take Down - TM001
  (271, 27100, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Lombre - Protect - TM007
  (271, 27100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 19),
  -- Lombre - Water Pulse - TM011
  (271, 27100, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 20),
  -- Lombre - Thief - TM018
  (271, 27100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 21),
  -- Lombre - Disarming Voice - TM019
  (271, 27100, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 22),
  -- Lombre - Trailblaze - TM020
  (271, 27100, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 23),
  -- Lombre - Chilling Water - TM022
  (271, 27100, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 24),
  -- Lombre - Facade - TM025
  (271, 27100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Lombre - Magical Leaf - TM033
  (271, 27100, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 26),
  -- Lombre - Icy Wind - TM034
  (271, 27100, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 27),
  -- Lombre - Mud Shot - TM035
  (271, 27100, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 28),
  -- Lombre - Fling - TM043
  (271, 27100, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 29),
  -- Lombre - Endure - TM047
  (271, 27100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Lombre - Sunny Day - TM049
  (271, 27100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Lombre - Rain Dance - TM050
  (271, 27100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Lombre - Bullet Seed - TM056
  (271, 27100, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 33),
  -- Lombre - Brick Break - TM058
  (271, 27100, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 34),
  -- Lombre - Zen Headbutt - TM059
  (271, 27100, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 35),
  -- Lombre - Body Slam - TM066
  (271, 27100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 36),
  -- Lombre - Fire Punch - TM067
  (271, 27100, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 37),
  -- Lombre - Thunder Punch - TM068
  (271, 27100, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 38),
  -- Lombre - Ice Punch - TM069
  (271, 27100, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 39),
  -- Lombre - Sleep Talk - TM070
  (271, 27100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 40),
  -- Lombre - Seed Bomb - TM071
  (271, 27100, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 41),
  -- Lombre - Drain Punch - TM073
  (271, 27100, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 42),
  -- Lombre - Waterfall - TM077
  (271, 27100, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 43),
  -- Lombre - Metronome - TM080
  (271, 27100, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 44),
  -- Lombre - Grass Knot - TM081
  (271, 27100, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 45),
  -- Lombre - Rest - TM085
  (271, 27100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Lombre - Swords Dance - TM088
  (271, 27100, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 47),
  -- Lombre - Substitute - TM103
  (271, 27100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 48),
  -- Lombre - Giga Drain - TM111
  (271, 27100, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 49),
  -- Lombre - Hyper Voice - TM117
  (271, 27100, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 50),
  -- Lombre - Energy Ball - TM119
  (271, 27100, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 51),
  -- Lombre - Encore - TM122
  (271, 27100, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 52),
  -- Lombre - Surf - TM123
  (271, 27100, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 53),
  -- Lombre - Ice Beam - TM135
  (271, 27100, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 54),
  -- Lombre - Grassy Terrain - TM137
  (271, 27100, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 55),
  -- Lombre - Hydro Pump - TM142
  (271, 27100, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 56),
  -- Lombre - Blizzard - TM143
  (271, 27100, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 57),
  -- Lombre - Solar Beam - TM168
  (271, 27100, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 58),
  -- Lombre - Tera Blast - TM171
  (271, 27100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 59),
  -- Lombre - Counter - Egg
  (271, 27100, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Lombre - Razor Leaf - Egg
  (271, 27100, 75, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Lombre - Sweet Scent - Egg
  (271, 27100, 230, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Lombre - Synthesis - Egg
  (271, 27100, 235, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Lombre - Teeter Dance - Egg
  (271, 27100, 298, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Lombre - Tickle - Egg
  (271, 27100, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Ludicolo - Bubble Beam - Level 1
  (272, 27200, 61, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ludicolo - Rain Dance - Level 1
  (272, 27200, 240, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ludicolo - Fake Out - Level 1
  (272, 27200, 252, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ludicolo - Take Down - TM001
  (272, 27200, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 4),
  -- Ludicolo - Protect - TM007
  (272, 27200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 5),
  -- Ludicolo - Water Pulse - TM011
  (272, 27200, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 6),
  -- Ludicolo - Thief - TM018
  (272, 27200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 7),
  -- Ludicolo - Disarming Voice - TM019
  (272, 27200, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 8),
  -- Ludicolo - Trailblaze - TM020
  (272, 27200, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 9),
  -- Ludicolo - Chilling Water - TM022
  (272, 27200, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 10),
  -- Ludicolo - Facade - TM025
  (272, 27200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 11),
  -- Ludicolo - Swift - TM032
  (272, 27200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 12),
  -- Ludicolo - Magical Leaf - TM033
  (272, 27200, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 13),
  -- Ludicolo - Icy Wind - TM034
  (272, 27200, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 14),
  -- Ludicolo - Mud Shot - TM035
  (272, 27200, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 15),
  -- Ludicolo - Fling - TM043
  (272, 27200, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 16),
  -- Ludicolo - Endure - TM047
  (272, 27200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 17),
  -- Ludicolo - Sunny Day - TM049
  (272, 27200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 18),
  -- Ludicolo - Rain Dance - TM050
  (272, 27200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 19),
  -- Ludicolo - Bullet Seed - TM056
  (272, 27200, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 20),
  -- Ludicolo - Brick Break - TM058
  (272, 27200, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 21),
  -- Ludicolo - Zen Headbutt - TM059
  (272, 27200, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 22),
  -- Ludicolo - Body Slam - TM066
  (272, 27200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 23),
  -- Ludicolo - Fire Punch - TM067
  (272, 27200, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 24),
  -- Ludicolo - Thunder Punch - TM068
  (272, 27200, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 25),
  -- Ludicolo - Ice Punch - TM069
  (272, 27200, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 26),
  -- Ludicolo - Sleep Talk - TM070
  (272, 27200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Ludicolo - Seed Bomb - TM071
  (272, 27200, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 28),
  -- Ludicolo - Drain Punch - TM073
  (272, 27200, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 29),
  -- Ludicolo - Waterfall - TM077
  (272, 27200, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 30),
  -- Ludicolo - Metronome - TM080
  (272, 27200, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 31),
  -- Ludicolo - Grass Knot - TM081
  (272, 27200, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 32),
  -- Ludicolo - Rest - TM085
  (272, 27200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Ludicolo - Swords Dance - TM088
  (272, 27200, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 34),
  -- Ludicolo - Substitute - TM103
  (272, 27200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Ludicolo - Giga Drain - TM111
  (272, 27200, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 36),
  -- Ludicolo - Hyper Voice - TM117
  (272, 27200, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 37),
  -- Ludicolo - Energy Ball - TM119
  (272, 27200, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 38),
  -- Ludicolo - Encore - TM122
  (272, 27200, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 39),
  -- Ludicolo - Surf - TM123
  (272, 27200, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 40),
  -- Ludicolo - Ice Spinner - TM124
  (272, 27200, 861, 23, NULL, 2, NULL, NULL, 23002124, NULL, 41),
  -- Ludicolo - Amnesia - TM128
  (272, 27200, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 42),
  -- Ludicolo - Ice Beam - TM135
  (272, 27200, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 43),
  -- Ludicolo - Grassy Terrain - TM137
  (272, 27200, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 44),
  -- Ludicolo - Hydro Pump - TM142
  (272, 27200, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 45),
  -- Ludicolo - Blizzard - TM143
  (272, 27200, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 46),
  -- Ludicolo - Giga Impact - TM152
  (272, 27200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 47),
  -- Ludicolo - Focus Blast - TM158
  (272, 27200, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 48),
  -- Ludicolo - Leaf Storm - TM159
  (272, 27200, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 49),
  -- Ludicolo - Hyper Beam - TM163
  (272, 27200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 50),
  -- Ludicolo - Solar Beam - TM168
  (272, 27200, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 51),
  -- Ludicolo - Tera Blast - TM171
  (272, 27200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 52),
  -- Ludicolo - Counter - Egg
  (272, 27200, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Ludicolo - Razor Leaf - Egg
  (272, 27200, 75, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Ludicolo - Sweet Scent - Egg
  (272, 27200, 230, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Ludicolo - Synthesis - Egg
  (272, 27200, 235, 23, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Ludicolo - Teeter Dance - Egg
  (272, 27200, 298, 23, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Ludicolo - Tickle - Egg
  (272, 27200, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Ludicolo - Growl - Reminder
  (272, 27200, 45, 23, NULL, 9, NULL, NULL, NULL, NULL, 59),
  -- Ludicolo - Mist - Reminder
  (272, 27200, 54, 23, NULL, 9, NULL, NULL, NULL, NULL, 60),
  -- Ludicolo - Water Gun - Reminder
  (272, 27200, 55, 23, NULL, 9, NULL, NULL, NULL, NULL, 61),
  -- Ludicolo - Hydro Pump - Reminder
  (272, 27200, 56, 23, NULL, 9, NULL, NULL, NULL, NULL, 62),
  -- Ludicolo - Absorb - Reminder
  (272, 27200, 71, 23, NULL, 9, NULL, NULL, NULL, NULL, 63),
  -- Ludicolo - Mega Drain - Reminder
  (272, 27200, 72, 23, NULL, 9, NULL, NULL, NULL, NULL, 64),
  -- Ludicolo - Fury Swipes - Reminder
  (272, 27200, 154, 23, NULL, 9, NULL, NULL, NULL, NULL, 65),
  -- Ludicolo - Flail - Reminder
  (272, 27200, 175, 23, NULL, 9, NULL, NULL, NULL, NULL, 66),
  -- Ludicolo - Knock Off - Reminder
  (272, 27200, 282, 23, NULL, 9, NULL, NULL, NULL, NULL, 67),
  -- Ludicolo - Teeter Dance - Reminder
  (272, 27200, 298, 23, NULL, 9, NULL, NULL, NULL, NULL, 68),
  -- Ludicolo - Astonish - Reminder
  (272, 27200, 310, 23, NULL, 9, NULL, NULL, NULL, NULL, 69),
  -- Ludicolo - Energy Ball - Reminder
  (272, 27200, 412, 23, NULL, 9, NULL, NULL, NULL, NULL, 70),
  -- Ludicolo - Zen Headbutt - Reminder
  (272, 27200, 428, 23, NULL, 9, NULL, NULL, NULL, NULL, 71),
  -- Seedot - Tackle - Level 1
  (273, 27300, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seedot - Harden - Level 1
  (273, 27300, 106, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Seedot - Absorb - Level 3
  (273, 27300, 71, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Seedot - Astonish - Level 6
  (273, 27300, 310, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Seedot - Growth - Level 9
  (273, 27300, 74, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Seedot - Rollout - Level 12
  (273, 27300, 205, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Seedot - Mega Drain - Level 15
  (273, 27300, 72, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Seedot - Payback - Level 18
  (273, 27300, 371, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Seedot - Headbutt - Level 21
  (273, 27300, 29, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Seedot - Sunny Day - Level 24
  (273, 27300, 241, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Seedot - Synthesis - Level 27
  (273, 27300, 235, 23, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Seedot - Sucker Punch - Level 30
  (273, 27300, 389, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Seedot - Explosion - Level 33
  (273, 27300, 153, 23, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Seedot - Take Down - TM001
  (273, 27300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Seedot - Protect - TM007
  (273, 27300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Seedot - Trailblaze - TM020
  (273, 27300, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 16),
  -- Seedot - Facade - TM025
  (273, 27300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Seedot - Magical Leaf - TM033
  (273, 27300, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 18),
  -- Seedot - Endure - TM047
  (273, 27300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 19),
  -- Seedot - Sunny Day - TM049
  (273, 27300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 20),
  -- Seedot - Rain Dance - TM050
  (273, 27300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 21),
  -- Seedot - Dig - TM055
  (273, 27300, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 22),
  -- Seedot - Bullet Seed - TM056
  (273, 27300, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 23),
  -- Seedot - False Swipe - TM057
  (273, 27300, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 24),
  -- Seedot - Foul Play - TM062
  (273, 27300, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 25),
  -- Seedot - Body Slam - TM066
  (273, 27300, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 26),
  -- Seedot - Sleep Talk - TM070
  (273, 27300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 27),
  -- Seedot - Seed Bomb - TM071
  (273, 27300, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 28),
  -- Seedot - Grass Knot - TM081
  (273, 27300, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 29),
  -- Seedot - Rest - TM085
  (273, 27300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 30),
  -- Seedot - Substitute - TM103
  (273, 27300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 31),
  -- Seedot - Giga Drain - TM111
  (273, 27300, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 32),
  -- Seedot - Shadow Ball - TM114
  (273, 27300, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 33),
  -- Seedot - Energy Ball - TM119
  (273, 27300, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 34),
  -- Seedot - Amnesia - TM128
  (273, 27300, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 35),
  -- Seedot - Grassy Terrain - TM137
  (273, 27300, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 36),
  -- Seedot - Nasty Plot - TM140
  (273, 27300, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 37),
  -- Seedot - Leaf Storm - TM159
  (273, 27300, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 38),
  -- Seedot - Solar Beam - TM168
  (273, 27300, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 39),
  -- Seedot - Tera Blast - TM171
  (273, 27300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 40),
  -- Seedot - Take Down - Egg
  (273, 27300, 36, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Seedot - Leech Seed - Egg
  (273, 27300, 73, 23, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Seedot - Quick Attack - Egg
  (273, 27300, 98, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Seedot - Worry Seed - Egg
  (273, 27300, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Seedot - Night Slash - Egg
  (273, 27300, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Seedot - Defog - Egg
  (273, 27300, 432, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Nuzleaf - Tackle - Level 1
  (274, 27400, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nuzleaf - Absorb - Level 1
  (274, 27400, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nuzleaf - Harden - Level 1
  (274, 27400, 106, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Nuzleaf - Explosion - Level 1
  (274, 27400, 153, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Nuzleaf - Swagger - Level 1
  (274, 27400, 207, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Nuzleaf - Fake Out - Level 1
  (274, 27400, 252, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Nuzleaf - Torment - Level 1
  (274, 27400, 259, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Nuzleaf - Astonish - Level 1
  (274, 27400, 310, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Nuzleaf - Air Cutter - Level 1
  (274, 27400, 314, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Nuzleaf - Growth - Level 9
  (274, 27400, 74, 23, NULL, 1, 9, NULL, NULL, NULL, 10),
  -- Nuzleaf - Rollout - Level 12
  (274, 27400, 205, 23, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Nuzleaf - Mega Drain - Level 18
  (274, 27400, 72, 23, NULL, 1, 18, NULL, NULL, NULL, 12),
  -- Nuzleaf - Payback - Level 24
  (274, 27400, 371, 23, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Nuzleaf - Synthesis - Level 30
  (274, 27400, 235, 23, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Nuzleaf - Sunny Day - Level 36
  (274, 27400, 241, 23, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Nuzleaf - Extrasensory - Level 43
  (274, 27400, 326, 23, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Nuzleaf - Sucker Punch - Level 50
  (274, 27400, 389, 23, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Nuzleaf - Leaf Blade - Level 57
  (274, 27400, 348, 23, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Nuzleaf - Take Down - TM001
  (274, 27400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 19),
  -- Nuzleaf - Scary Face - TM006
  (274, 27400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 20),
  -- Nuzleaf - Protect - TM007
  (274, 27400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 21),
  -- Nuzleaf - Low Kick - TM012
  (274, 27400, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 22),
  -- Nuzleaf - Thief - TM018
  (274, 27400, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Nuzleaf - Trailblaze - TM020
  (274, 27400, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 24),
  -- Nuzleaf - Chilling Water - TM022
  (274, 27400, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 25),
  -- Nuzleaf - Facade - TM025
  (274, 27400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Nuzleaf - Snarl - TM030
  (274, 27400, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 27),
  -- Nuzleaf - Swift - TM032
  (274, 27400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 28),
  -- Nuzleaf - Magical Leaf - TM033
  (274, 27400, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 29),
  -- Nuzleaf - Rock Tomb - TM036
  (274, 27400, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 30),
  -- Nuzleaf - Low Sweep - TM039
  (274, 27400, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 31),
  -- Nuzleaf - Air Cutter - TM040
  (274, 27400, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 32),
  -- Nuzleaf - Fling - TM043
  (274, 27400, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 33),
  -- Nuzleaf - Endure - TM047
  (274, 27400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 34),
  -- Nuzleaf - Sunny Day - TM049
  (274, 27400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 35),
  -- Nuzleaf - Rain Dance - TM050
  (274, 27400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 36),
  -- Nuzleaf - Dig - TM055
  (274, 27400, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 37),
  -- Nuzleaf - Bullet Seed - TM056
  (274, 27400, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 38),
  -- Nuzleaf - False Swipe - TM057
  (274, 27400, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 39),
  -- Nuzleaf - Brick Break - TM058
  (274, 27400, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 40),
  -- Nuzleaf - Foul Play - TM062
  (274, 27400, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 41),
  -- Nuzleaf - Body Slam - TM066
  (274, 27400, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 42),
  -- Nuzleaf - Sleep Talk - TM070
  (274, 27400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 43),
  -- Nuzleaf - Seed Bomb - TM071
  (274, 27400, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 44),
  -- Nuzleaf - Grass Knot - TM081
  (274, 27400, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 45),
  -- Nuzleaf - Rest - TM085
  (274, 27400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Nuzleaf - Rock Slide - TM086
  (274, 27400, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 47),
  -- Nuzleaf - Swords Dance - TM088
  (274, 27400, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 48),
  -- Nuzleaf - Dark Pulse - TM094
  (274, 27400, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 49),
  -- Nuzleaf - Substitute - TM103
  (274, 27400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 50),
  -- Nuzleaf - Giga Drain - TM111
  (274, 27400, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 51),
  -- Nuzleaf - Shadow Ball - TM114
  (274, 27400, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 52),
  -- Nuzleaf - Energy Ball - TM119
  (274, 27400, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 53),
  -- Nuzleaf - Amnesia - TM128
  (274, 27400, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 54),
  -- Nuzleaf - Grassy Terrain - TM137
  (274, 27400, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 55),
  -- Nuzleaf - Nasty Plot - TM140
  (274, 27400, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 56),
  -- Nuzleaf - Leaf Storm - TM159
  (274, 27400, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 57),
  -- Nuzleaf - Solar Beam - TM168
  (274, 27400, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 58),
  -- Nuzleaf - Tera Blast - TM171
  (274, 27400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 59),
  -- Nuzleaf - Take Down - Egg
  (274, 27400, 36, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Nuzleaf - Leech Seed - Egg
  (274, 27400, 73, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Nuzleaf - Quick Attack - Egg
  (274, 27400, 98, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Nuzleaf - Worry Seed - Egg
  (274, 27400, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Nuzleaf - Night Slash - Egg
  (274, 27400, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Nuzleaf - Defog - Egg
  (274, 27400, 432, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Nuzleaf - Razor Leaf - Evolution
  (274, 27400, 75, 23, NULL, 7, NULL, NULL, NULL, NULL, 66),
  -- Shiftry - Sunny Day - Level 1
  (275, 27500, 241, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shiftry - Air Cutter - Level 1
  (275, 27500, 314, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shiftry - Payback - Level 1
  (275, 27500, 371, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Shiftry - Hurricane - Level 1
  (275, 27500, 542, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Shiftry - Take Down - TM001
  (275, 27500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 5),
  -- Shiftry - Scary Face - TM006
  (275, 27500, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 6),
  -- Shiftry - Protect - TM007
  (275, 27500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 7),
  -- Shiftry - Low Kick - TM012
  (275, 27500, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 8),
  -- Shiftry - Confuse Ray - TM017
  (275, 27500, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 9),
  -- Shiftry - Thief - TM018
  (275, 27500, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 10),
  -- Shiftry - Trailblaze - TM020
  (275, 27500, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 11),
  -- Shiftry - Chilling Water - TM022
  (275, 27500, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 12),
  -- Shiftry - Facade - TM025
  (275, 27500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 13),
  -- Shiftry - Aerial Ace - TM027
  (275, 27500, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 14),
  -- Shiftry - Hex - TM029
  (275, 27500, 506, 23, NULL, 2, NULL, NULL, 23002029, NULL, 15),
  -- Shiftry - Snarl - TM030
  (275, 27500, 555, 23, NULL, 2, NULL, NULL, 23002030, NULL, 16),
  -- Shiftry - Swift - TM032
  (275, 27500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 17),
  -- Shiftry - Magical Leaf - TM033
  (275, 27500, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 18),
  -- Shiftry - Icy Wind - TM034
  (275, 27500, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 19),
  -- Shiftry - Rock Tomb - TM036
  (275, 27500, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 20),
  -- Shiftry - Low Sweep - TM039
  (275, 27500, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 21),
  -- Shiftry - Air Cutter - TM040
  (275, 27500, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 22),
  -- Shiftry - Fling - TM043
  (275, 27500, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 23),
  -- Shiftry - Endure - TM047
  (275, 27500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Shiftry - Sunny Day - TM049
  (275, 27500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Shiftry - Rain Dance - TM050
  (275, 27500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Shiftry - Dig - TM055
  (275, 27500, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 27),
  -- Shiftry - Bullet Seed - TM056
  (275, 27500, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 28),
  -- Shiftry - False Swipe - TM057
  (275, 27500, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 29),
  -- Shiftry - Brick Break - TM058
  (275, 27500, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 30),
  -- Shiftry - Foul Play - TM062
  (275, 27500, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 31),
  -- Shiftry - Air Slash - TM065
  (275, 27500, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 32),
  -- Shiftry - Body Slam - TM066
  (275, 27500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 33),
  -- Shiftry - Sleep Talk - TM070
  (275, 27500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 34),
  -- Shiftry - Seed Bomb - TM071
  (275, 27500, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 35),
  -- Shiftry - Grass Knot - TM081
  (275, 27500, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 36),
  -- Shiftry - Rest - TM085
  (275, 27500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 37),
  -- Shiftry - Rock Slide - TM086
  (275, 27500, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 38),
  -- Shiftry - Taunt - TM087
  (275, 27500, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 39),
  -- Shiftry - Swords Dance - TM088
  (275, 27500, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 40),
  -- Shiftry - Toxic Spikes - TM091
  (275, 27500, 390, 23, NULL, 2, NULL, NULL, 23002091, NULL, 41),
  -- Shiftry - Imprison - TM092
  (275, 27500, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 42),
  -- Shiftry - Dark Pulse - TM094
  (275, 27500, 399, 23, NULL, 2, NULL, NULL, 23002094, NULL, 43),
  -- Shiftry - Substitute - TM103
  (275, 27500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 44),
  -- Shiftry - X-Scissor - TM105
  (275, 27500, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 45),
  -- Shiftry - Will-O-Wisp - TM107
  (275, 27500, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 46),
  -- Shiftry - Giga Drain - TM111
  (275, 27500, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 47),
  -- Shiftry - Tailwind - TM113
  (275, 27500, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 48),
  -- Shiftry - Shadow Ball - TM114
  (275, 27500, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 49),
  -- Shiftry - Heat Wave - TM118
  (275, 27500, 257, 23, NULL, 2, NULL, NULL, 23002118, NULL, 50),
  -- Shiftry - Energy Ball - TM119
  (275, 27500, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 51),
  -- Shiftry - Amnesia - TM128
  (275, 27500, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 52),
  -- Shiftry - Reversal - TM134
  (275, 27500, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 53),
  -- Shiftry - Grassy Terrain - TM137
  (275, 27500, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 54),
  -- Shiftry - Nasty Plot - TM140
  (275, 27500, 417, 23, NULL, 2, NULL, NULL, 23002140, NULL, 55),
  -- Shiftry - Giga Impact - TM152
  (275, 27500, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 56),
  -- Shiftry - Focus Blast - TM158
  (275, 27500, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 57),
  -- Shiftry - Leaf Storm - TM159
  (275, 27500, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 58),
  -- Shiftry - Hurricane - TM160
  (275, 27500, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 59),
  -- Shiftry - Hyper Beam - TM163
  (275, 27500, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 60),
  -- Shiftry - Solar Beam - TM168
  (275, 27500, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 61),
  -- Shiftry - Tera Blast - TM171
  (275, 27500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 62),
  -- Shiftry - Take Down - Egg
  (275, 27500, 36, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Shiftry - Leech Seed - Egg
  (275, 27500, 73, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Shiftry - Quick Attack - Egg
  (275, 27500, 98, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Shiftry - Worry Seed - Egg
  (275, 27500, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Shiftry - Night Slash - Egg
  (275, 27500, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Shiftry - Defog - Egg
  (275, 27500, 432, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Shiftry - Leaf Blade - Evolution
  (275, 27500, 348, 23, NULL, 7, NULL, NULL, NULL, NULL, 69),
  -- Shiftry - Whirlwind - Reminder
  (275, 27500, 18, 23, NULL, 9, NULL, NULL, NULL, NULL, 70),
  -- Shiftry - Tackle - Reminder
  (275, 27500, 33, 23, NULL, 9, NULL, NULL, NULL, NULL, 71),
  -- Shiftry - Absorb - Reminder
  (275, 27500, 71, 23, NULL, 9, NULL, NULL, NULL, NULL, 72),
  -- Shiftry - Mega Drain - Reminder
  (275, 27500, 72, 23, NULL, 9, NULL, NULL, NULL, NULL, 73),
  -- Shiftry - Growth - Reminder
  (275, 27500, 74, 23, NULL, 9, NULL, NULL, NULL, NULL, 74),
  -- Shiftry - Razor Leaf - Reminder
  (275, 27500, 75, 23, NULL, 9, NULL, NULL, NULL, NULL, 75),
  -- Shiftry - Harden - Reminder
  (275, 27500, 106, 23, NULL, 9, NULL, NULL, NULL, NULL, 76),
  -- Shiftry - Explosion - Reminder
  (275, 27500, 153, 23, NULL, 9, NULL, NULL, NULL, NULL, 77),
  -- Shiftry - Rollout - Reminder
  (275, 27500, 205, 23, NULL, 9, NULL, NULL, NULL, NULL, 78),
  -- Shiftry - Swagger - Reminder
  (275, 27500, 207, 23, NULL, 9, NULL, NULL, NULL, NULL, 79),
  -- Shiftry - Synthesis - Reminder
  (275, 27500, 235, 23, NULL, 9, NULL, NULL, NULL, NULL, 80),
  -- Shiftry - Beat Up - Reminder
  (275, 27500, 251, 23, NULL, 9, NULL, NULL, NULL, NULL, 81),
  -- Shiftry - Fake Out - Reminder
  (275, 27500, 252, 23, NULL, 9, NULL, NULL, NULL, NULL, 82),
  -- Shiftry - Torment - Reminder
  (275, 27500, 259, 23, NULL, 9, NULL, NULL, NULL, NULL, 83),
  -- Shiftry - Astonish - Reminder
  (275, 27500, 310, 23, NULL, 9, NULL, NULL, NULL, NULL, 84),
  -- Shiftry - Extrasensory - Reminder
  (275, 27500, 326, 23, NULL, 9, NULL, NULL, NULL, NULL, 85),
  -- Shiftry - Sucker Punch - Reminder
  (275, 27500, 389, 23, NULL, 9, NULL, NULL, NULL, NULL, 86),
  -- Wingull - Growl - Level 1
  (278, 27800, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wingull - Water Gun - Level 1
  (278, 27800, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wingull - Quick Attack - Level 5
  (278, 27800, 98, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Wingull - Supersonic - Level 10
  (278, 27800, 48, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Wingull - Wing Attack - Level 15
  (278, 27800, 17, 23, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Wingull - Water Pulse - Level 20
  (278, 27800, 352, 23, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Wingull - Agility - Level 26
  (278, 27800, 97, 23, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Wingull - Air Slash - Level 30
  (278, 27800, 403, 23, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Wingull - Mist - Level 35
  (278, 27800, 54, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Wingull - Roost - Level 40
  (278, 27800, 355, 23, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Wingull - Hurricane - Level 45
  (278, 27800, 542, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Wingull - Take Down - TM001
  (278, 27800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 12),
  -- Wingull - Agility - TM004
  (278, 27800, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 13),
  -- Wingull - Protect - TM007
  (278, 27800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Wingull - Water Pulse - TM011
  (278, 27800, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 15),
  -- Wingull - Acrobatics - TM014
  (278, 27800, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 16),
  -- Wingull - Thief - TM018
  (278, 27800, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 17),
  -- Wingull - Chilling Water - TM022
  (278, 27800, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 18),
  -- Wingull - Facade - TM025
  (278, 27800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Wingull - Aerial Ace - TM027
  (278, 27800, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 20),
  -- Wingull - Swift - TM032
  (278, 27800, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 21),
  -- Wingull - Icy Wind - TM034
  (278, 27800, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 22),
  -- Wingull - Air Cutter - TM040
  (278, 27800, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 23),
  -- Wingull - Endure - TM047
  (278, 27800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Wingull - Rain Dance - TM050
  (278, 27800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 25),
  -- Wingull - Snowscape - TM052
  (278, 27800, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 26),
  -- Wingull - U-turn - TM060
  (278, 27800, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 27),
  -- Wingull - Air Slash - TM065
  (278, 27800, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 28),
  -- Wingull - Sleep Talk - TM070
  (278, 27800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 29),
  -- Wingull - Waterfall - TM077
  (278, 27800, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 30),
  -- Wingull - Rest - TM085
  (278, 27800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 31),
  -- Wingull - Fly - TM097
  (278, 27800, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 32),
  -- Wingull - Substitute - TM103
  (278, 27800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 33),
  -- Wingull - Liquidation - TM110
  (278, 27800, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 34),
  -- Wingull - Tailwind - TM113
  (278, 27800, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 35),
  -- Wingull - Surf - TM123
  (278, 27800, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 36),
  -- Wingull - Helping Hand - TM130
  (278, 27800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 37),
  -- Wingull - Ice Beam - TM135
  (278, 27800, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 38),
  -- Wingull - Hydro Pump - TM142
  (278, 27800, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 39),
  -- Wingull - Blizzard - TM143
  (278, 27800, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 40),
  -- Wingull - Hurricane - TM160
  (278, 27800, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 41),
  -- Wingull - Brave Bird - TM164
  (278, 27800, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 42),
  -- Wingull - Tera Blast - TM171
  (278, 27800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 43),
  -- Wingull - Gust - Egg
  (278, 27800, 16, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Wingull - Twister - Egg
  (278, 27800, 239, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Wingull - Knock Off - Egg
  (278, 27800, 282, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Wingull - Air Cutter - Egg
  (278, 27800, 314, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Wingull - Aerial Ace - Egg
  (278, 27800, 332, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Wingull - Aqua Ring - Egg
  (278, 27800, 392, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Wingull - Wide Guard - Egg
  (278, 27800, 469, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Wingull - Soak - Egg
  (278, 27800, 487, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Pelipper - Growl - Level 1
  (279, 27900, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pelipper - Supersonic - Level 1
  (279, 27900, 48, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pelipper - Water Gun - Level 1
  (279, 27900, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pelipper - Agility - Level 1
  (279, 27900, 97, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pelipper - Quick Attack - Level 1
  (279, 27900, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Pelipper - Protect - Level 1
  (279, 27900, 182, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Pelipper - Tailwind - Level 1
  (279, 27900, 366, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Pelipper - Air Slash - Level 1
  (279, 27900, 403, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Pelipper - Soak - Level 1
  (279, 27900, 487, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Pelipper - Wing Attack - Level 15
  (279, 27900, 17, 23, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Pelipper - Water Pulse - Level 20
  (279, 27900, 352, 23, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Pelipper - Stockpile - Level 28
  (279, 27900, 254, 23, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Pelipper - Spit Up - Level 28
  (279, 27900, 255, 23, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Pelipper - Swallow - Level 28
  (279, 27900, 256, 23, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Pelipper - Fling - Level 34
  (279, 27900, 374, 23, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Pelipper - Mist - Level 41
  (279, 27900, 54, 23, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Pelipper - Roost - Level 48
  (279, 27900, 355, 23, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Pelipper - Hurricane - Level 55
  (279, 27900, 542, 23, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Pelipper - Hydro Pump - Level 62
  (279, 27900, 56, 23, NULL, 1, 62, NULL, NULL, NULL, 19),
  -- Pelipper - Take Down - TM001
  (279, 27900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 20),
  -- Pelipper - Agility - TM004
  (279, 27900, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 21),
  -- Pelipper - Protect - TM007
  (279, 27900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 22),
  -- Pelipper - Water Pulse - TM011
  (279, 27900, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 23),
  -- Pelipper - Acrobatics - TM014
  (279, 27900, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 24),
  -- Pelipper - Thief - TM018
  (279, 27900, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 25),
  -- Pelipper - Chilling Water - TM022
  (279, 27900, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 26),
  -- Pelipper - Facade - TM025
  (279, 27900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 27),
  -- Pelipper - Aerial Ace - TM027
  (279, 27900, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 28),
  -- Pelipper - Swift - TM032
  (279, 27900, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 29),
  -- Pelipper - Icy Wind - TM034
  (279, 27900, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 30),
  -- Pelipper - Air Cutter - TM040
  (279, 27900, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 31),
  -- Pelipper - Fling - TM043
  (279, 27900, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 32),
  -- Pelipper - Endure - TM047
  (279, 27900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 33),
  -- Pelipper - Rain Dance - TM050
  (279, 27900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 34),
  -- Pelipper - Snowscape - TM052
  (279, 27900, 883, 23, NULL, 2, NULL, NULL, 23002052, NULL, 35),
  -- Pelipper - U-turn - TM060
  (279, 27900, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 36),
  -- Pelipper - Air Slash - TM065
  (279, 27900, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 37),
  -- Pelipper - Body Slam - TM066
  (279, 27900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 38),
  -- Pelipper - Sleep Talk - TM070
  (279, 27900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Pelipper - Seed Bomb - TM071
  (279, 27900, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 40),
  -- Pelipper - Waterfall - TM077
  (279, 27900, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 41),
  -- Pelipper - Rest - TM085
  (279, 27900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 42),
  -- Pelipper - Fly - TM097
  (279, 27900, 19, 23, NULL, 2, NULL, NULL, 23002097, NULL, 43),
  -- Pelipper - Gunk Shot - TM102
  (279, 27900, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 44),
  -- Pelipper - Substitute - TM103
  (279, 27900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 45),
  -- Pelipper - Liquidation - TM110
  (279, 27900, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 46),
  -- Pelipper - Tailwind - TM113
  (279, 27900, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 47),
  -- Pelipper - Surf - TM123
  (279, 27900, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 48),
  -- Pelipper - Helping Hand - TM130
  (279, 27900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 49),
  -- Pelipper - Ice Beam - TM135
  (279, 27900, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 50),
  -- Pelipper - Hydro Pump - TM142
  (279, 27900, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 51),
  -- Pelipper - Blizzard - TM143
  (279, 27900, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 52),
  -- Pelipper - Giga Impact - TM152
  (279, 27900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 53),
  -- Pelipper - Hurricane - TM160
  (279, 27900, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 54),
  -- Pelipper - Hyper Beam - TM163
  (279, 27900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 55),
  -- Pelipper - Brave Bird - TM164
  (279, 27900, 413, 23, NULL, 2, NULL, NULL, 23002164, NULL, 56),
  -- Pelipper - Tera Blast - TM171
  (279, 27900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 57),
  -- Pelipper - Gust - Egg
  (279, 27900, 16, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Pelipper - Twister - Egg
  (279, 27900, 239, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Pelipper - Knock Off - Egg
  (279, 27900, 282, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Pelipper - Air Cutter - Egg
  (279, 27900, 314, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Pelipper - Aerial Ace - Egg
  (279, 27900, 332, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Pelipper - Aqua Ring - Egg
  (279, 27900, 392, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Pelipper - Wide Guard - Egg
  (279, 27900, 469, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Pelipper - Soak - Egg
  (279, 27900, 487, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Ralts - Growl - Level 1
  (280, 28000, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ralts - Disarming Voice - Level 1
  (280, 28000, 574, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ralts - Double Team - Level 3
  (280, 28000, 104, 23, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Ralts - Confusion - Level 6
  (280, 28000, 93, 23, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Ralts - Hypnosis - Level 9
  (280, 28000, 95, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Ralts - Draining Kiss - Level 12
  (280, 28000, 577, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Ralts - Teleport - Level 15
  (280, 28000, 100, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Ralts - Psybeam - Level 18
  (280, 28000, 60, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Ralts - Life Dew - Level 21
  (280, 28000, 791, 23, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Ralts - Charm - Level 24
  (280, 28000, 204, 23, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Ralts - Calm Mind - Level 27
  (280, 28000, 347, 23, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Ralts - Psychic - Level 30
  (280, 28000, 94, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Ralts - Heal Pulse - Level 33
  (280, 28000, 505, 23, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Ralts - Dream Eater - Level 36
  (280, 28000, 138, 23, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Ralts - Future Sight - Level 39
  (280, 28000, 248, 23, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Ralts - Charm - TM002
  (280, 28000, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 16),
  -- Ralts - Protect - TM007
  (280, 28000, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Ralts - Psybeam - TM016
  (280, 28000, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 18),
  -- Ralts - Confuse Ray - TM017
  (280, 28000, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 19),
  -- Ralts - Thief - TM018
  (280, 28000, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Ralts - Disarming Voice - TM019
  (280, 28000, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 21),
  -- Ralts - Charge Beam - TM023
  (280, 28000, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 22),
  -- Ralts - Facade - TM025
  (280, 28000, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Ralts - Swift - TM032
  (280, 28000, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Ralts - Magical Leaf - TM033
  (280, 28000, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 25),
  -- Ralts - Icy Wind - TM034
  (280, 28000, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 26),
  -- Ralts - Draining Kiss - TM037
  (280, 28000, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 27),
  -- Ralts - Stored Power - TM041
  (280, 28000, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 28),
  -- Ralts - Fling - TM043
  (280, 28000, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 29),
  -- Ralts - Endure - TM047
  (280, 28000, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Ralts - Sunny Day - TM049
  (280, 28000, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Ralts - Rain Dance - TM050
  (280, 28000, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Ralts - Psyshock - TM054
  (280, 28000, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 33),
  -- Ralts - Zen Headbutt - TM059
  (280, 28000, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 34),
  -- Ralts - Body Slam - TM066
  (280, 28000, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Ralts - Fire Punch - TM067
  (280, 28000, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 36),
  -- Ralts - Thunder Punch - TM068
  (280, 28000, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 37),
  -- Ralts - Ice Punch - TM069
  (280, 28000, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 38),
  -- Ralts - Sleep Talk - TM070
  (280, 28000, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Ralts - Reflect - TM074
  (280, 28000, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 40),
  -- Ralts - Light Screen - TM075
  (280, 28000, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 41),
  -- Ralts - Dazzling Gleam - TM079
  (280, 28000, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 42),
  -- Ralts - Metronome - TM080
  (280, 28000, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 43),
  -- Ralts - Grass Knot - TM081
  (280, 28000, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 44),
  -- Ralts - Thunder Wave - TM082
  (280, 28000, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 45),
  -- Ralts - Rest - TM085
  (280, 28000, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Ralts - Taunt - TM087
  (280, 28000, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 47),
  -- Ralts - Imprison - TM092
  (280, 28000, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 48),
  -- Ralts - Skill Swap - TM098
  (280, 28000, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 49),
  -- Ralts - Substitute - TM103
  (280, 28000, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 50),
  -- Ralts - Will-O-Wisp - TM107
  (280, 28000, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 51),
  -- Ralts - Trick - TM109
  (280, 28000, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 52),
  -- Ralts - Shadow Ball - TM114
  (280, 28000, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 53),
  -- Ralts - Hyper Voice - TM117
  (280, 28000, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 54),
  -- Ralts - Psychic - TM120
  (280, 28000, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 55),
  -- Ralts - Encore - TM122
  (280, 28000, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 56),
  -- Ralts - Thunderbolt - TM126
  (280, 28000, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 57),
  -- Ralts - Calm Mind - TM129
  (280, 28000, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 58),
  -- Ralts - Helping Hand - TM130
  (280, 28000, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 59),
  -- Ralts - Psychic Terrain - TM138
  (280, 28000, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 60),
  -- Ralts - Misty Terrain - TM139
  (280, 28000, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 61),
  -- Ralts - Trick Room - TM161
  (280, 28000, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 62),
  -- Ralts - Tera Blast - TM171
  (280, 28000, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 63),
  -- Ralts - Disable - Egg
  (280, 28000, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Ralts - Confuse Ray - Egg
  (280, 28000, 109, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Ralts - Destiny Bond - Egg
  (280, 28000, 194, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Ralts - Mean Look - Egg
  (280, 28000, 212, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Ralts - Memento - Egg
  (280, 28000, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Ralts - Knock Off - Egg
  (280, 28000, 282, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Ralts - Shadow Sneak - Egg
  (280, 28000, 425, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Ralts - Mystical Fire - Egg
  (280, 28000, 595, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Kirlia - Growl - Level 1
  (281, 28100, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kirlia - Confusion - Level 1
  (281, 28100, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kirlia - Double Team - Level 1
  (281, 28100, 104, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kirlia - Disarming Voice - Level 1
  (281, 28100, 574, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kirlia - Hypnosis - Level 9
  (281, 28100, 95, 23, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Kirlia - Draining Kiss - Level 12
  (281, 28100, 577, 23, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Kirlia - Teleport - Level 15
  (281, 28100, 100, 23, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Kirlia - Psybeam - Level 18
  (281, 28100, 60, 23, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Kirlia - Life Dew - Level 23
  (281, 28100, 791, 23, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Kirlia - Charm - Level 28
  (281, 28100, 204, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Kirlia - Calm Mind - Level 33
  (281, 28100, 347, 23, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Kirlia - Psychic - Level 38
  (281, 28100, 94, 23, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Kirlia - Heal Pulse - Level 43
  (281, 28100, 505, 23, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Kirlia - Dream Eater - Level 48
  (281, 28100, 138, 23, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Kirlia - Future Sight - Level 53
  (281, 28100, 248, 23, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Kirlia - Charm - TM002
  (281, 28100, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 16),
  -- Kirlia - Protect - TM007
  (281, 28100, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Kirlia - Psybeam - TM016
  (281, 28100, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 18),
  -- Kirlia - Confuse Ray - TM017
  (281, 28100, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 19),
  -- Kirlia - Thief - TM018
  (281, 28100, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 20),
  -- Kirlia - Disarming Voice - TM019
  (281, 28100, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 21),
  -- Kirlia - Charge Beam - TM023
  (281, 28100, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 22),
  -- Kirlia - Facade - TM025
  (281, 28100, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Kirlia - Swift - TM032
  (281, 28100, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 24),
  -- Kirlia - Magical Leaf - TM033
  (281, 28100, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 25),
  -- Kirlia - Icy Wind - TM034
  (281, 28100, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 26),
  -- Kirlia - Draining Kiss - TM037
  (281, 28100, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 27),
  -- Kirlia - Stored Power - TM041
  (281, 28100, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 28),
  -- Kirlia - Fling - TM043
  (281, 28100, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 29),
  -- Kirlia - Endure - TM047
  (281, 28100, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 30),
  -- Kirlia - Sunny Day - TM049
  (281, 28100, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 31),
  -- Kirlia - Rain Dance - TM050
  (281, 28100, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 32),
  -- Kirlia - Psyshock - TM054
  (281, 28100, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 33),
  -- Kirlia - Zen Headbutt - TM059
  (281, 28100, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 34),
  -- Kirlia - Body Slam - TM066
  (281, 28100, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 35),
  -- Kirlia - Fire Punch - TM067
  (281, 28100, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 36),
  -- Kirlia - Thunder Punch - TM068
  (281, 28100, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 37),
  -- Kirlia - Ice Punch - TM069
  (281, 28100, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 38),
  -- Kirlia - Sleep Talk - TM070
  (281, 28100, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 39),
  -- Kirlia - Reflect - TM074
  (281, 28100, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 40),
  -- Kirlia - Light Screen - TM075
  (281, 28100, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 41),
  -- Kirlia - Dazzling Gleam - TM079
  (281, 28100, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 42),
  -- Kirlia - Metronome - TM080
  (281, 28100, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 43),
  -- Kirlia - Grass Knot - TM081
  (281, 28100, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 44),
  -- Kirlia - Thunder Wave - TM082
  (281, 28100, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 45),
  -- Kirlia - Rest - TM085
  (281, 28100, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 46),
  -- Kirlia - Taunt - TM087
  (281, 28100, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 47),
  -- Kirlia - Imprison - TM092
  (281, 28100, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 48),
  -- Kirlia - Skill Swap - TM098
  (281, 28100, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 49),
  -- Kirlia - Substitute - TM103
  (281, 28100, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 50),
  -- Kirlia - Will-O-Wisp - TM107
  (281, 28100, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 51),
  -- Kirlia - Trick - TM109
  (281, 28100, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 52),
  -- Kirlia - Shadow Ball - TM114
  (281, 28100, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 53),
  -- Kirlia - Hyper Voice - TM117
  (281, 28100, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 54),
  -- Kirlia - Psychic - TM120
  (281, 28100, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 55),
  -- Kirlia - Encore - TM122
  (281, 28100, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 56),
  -- Kirlia - Thunderbolt - TM126
  (281, 28100, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 57),
  -- Kirlia - Calm Mind - TM129
  (281, 28100, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 58),
  -- Kirlia - Helping Hand - TM130
  (281, 28100, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 59),
  -- Kirlia - Psychic Terrain - TM138
  (281, 28100, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 60),
  -- Kirlia - Misty Terrain - TM139
  (281, 28100, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 61),
  -- Kirlia - Trick Room - TM161
  (281, 28100, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 62),
  -- Kirlia - Hyper Beam - TM163
  (281, 28100, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 63),
  -- Kirlia - Tera Blast - TM171
  (281, 28100, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 64),
  -- Kirlia - Disable - Egg
  (281, 28100, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Kirlia - Confuse Ray - Egg
  (281, 28100, 109, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Kirlia - Destiny Bond - Egg
  (281, 28100, 194, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Kirlia - Mean Look - Egg
  (281, 28100, 212, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Kirlia - Memento - Egg
  (281, 28100, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Kirlia - Knock Off - Egg
  (281, 28100, 282, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Kirlia - Shadow Sneak - Egg
  (281, 28100, 425, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Kirlia - Mystical Fire - Egg
  (281, 28100, 595, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Gardevoir - Growl - Level 1
  (282, 28200, 45, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gardevoir - Confusion - Level 1
  (282, 28200, 93, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gardevoir - Double Team - Level 1
  (282, 28200, 104, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gardevoir - Charm - Level 1
  (282, 28200, 204, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gardevoir - Healing Wish - Level 1
  (282, 28200, 361, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gardevoir - Heal Pulse - Level 1
  (282, 28200, 505, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Gardevoir - Disarming Voice - Level 1
  (282, 28200, 574, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Gardevoir - Misty Terrain - Level 1
  (282, 28200, 581, 23, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Gardevoir - Mystical Fire - Level 1
  (282, 28200, 595, 23, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Gardevoir - Hypnosis - Level 9
  (282, 28200, 95, 23, NULL, 1, 9, NULL, NULL, NULL, 10),
  -- Gardevoir - Draining Kiss - Level 12
  (282, 28200, 577, 23, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Gardevoir - Teleport - Level 15
  (282, 28200, 100, 23, NULL, 1, 15, NULL, NULL, NULL, 12),
  -- Gardevoir - Psybeam - Level 18
  (282, 28200, 60, 23, NULL, 1, 18, NULL, NULL, NULL, 13),
  -- Gardevoir - Life Dew - Level 23
  (282, 28200, 791, 23, NULL, 1, 23, NULL, NULL, NULL, 14),
  -- Gardevoir - Wish - Level 28
  (282, 28200, 273, 23, NULL, 1, 28, NULL, NULL, NULL, 15),
  -- Gardevoir - Calm Mind - Level 35
  (282, 28200, 347, 23, NULL, 1, 35, NULL, NULL, NULL, 16),
  -- Gardevoir - Psychic - Level 42
  (282, 28200, 94, 23, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Gardevoir - Moonblast - Level 49
  (282, 28200, 585, 23, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Gardevoir - Dream Eater - Level 56
  (282, 28200, 138, 23, NULL, 1, 56, NULL, NULL, NULL, 19),
  -- Gardevoir - Future Sight - Level 63
  (282, 28200, 248, 23, NULL, 1, 63, NULL, NULL, NULL, 20),
  -- Gardevoir - Charm - TM002
  (282, 28200, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 21),
  -- Gardevoir - Protect - TM007
  (282, 28200, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 22),
  -- Gardevoir - Psybeam - TM016
  (282, 28200, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 23),
  -- Gardevoir - Confuse Ray - TM017
  (282, 28200, 109, 23, NULL, 2, NULL, NULL, 23002017, NULL, 24),
  -- Gardevoir - Thief - TM018
  (282, 28200, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 25),
  -- Gardevoir - Disarming Voice - TM019
  (282, 28200, 574, 23, NULL, 2, NULL, NULL, 23002019, NULL, 26),
  -- Gardevoir - Charge Beam - TM023
  (282, 28200, 451, 23, NULL, 2, NULL, NULL, 23002023, NULL, 27),
  -- Gardevoir - Facade - TM025
  (282, 28200, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 28),
  -- Gardevoir - Swift - TM032
  (282, 28200, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 29),
  -- Gardevoir - Magical Leaf - TM033
  (282, 28200, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 30),
  -- Gardevoir - Icy Wind - TM034
  (282, 28200, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 31),
  -- Gardevoir - Draining Kiss - TM037
  (282, 28200, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 32),
  -- Gardevoir - Stored Power - TM041
  (282, 28200, 500, 23, NULL, 2, NULL, NULL, 23002041, NULL, 33),
  -- Gardevoir - Night Shade - TM042
  (282, 28200, 101, 23, NULL, 2, NULL, NULL, 23002042, NULL, 34),
  -- Gardevoir - Fling - TM043
  (282, 28200, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 35),
  -- Gardevoir - Endure - TM047
  (282, 28200, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 36),
  -- Gardevoir - Sunny Day - TM049
  (282, 28200, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 37),
  -- Gardevoir - Rain Dance - TM050
  (282, 28200, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 38),
  -- Gardevoir - Psyshock - TM054
  (282, 28200, 473, 23, NULL, 2, NULL, NULL, 23002054, NULL, 39),
  -- Gardevoir - Zen Headbutt - TM059
  (282, 28200, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 40),
  -- Gardevoir - Body Slam - TM066
  (282, 28200, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 41),
  -- Gardevoir - Fire Punch - TM067
  (282, 28200, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 42),
  -- Gardevoir - Thunder Punch - TM068
  (282, 28200, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 43),
  -- Gardevoir - Ice Punch - TM069
  (282, 28200, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 44),
  -- Gardevoir - Sleep Talk - TM070
  (282, 28200, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 45),
  -- Gardevoir - Reflect - TM074
  (282, 28200, 115, 23, NULL, 2, NULL, NULL, 23002074, NULL, 46),
  -- Gardevoir - Light Screen - TM075
  (282, 28200, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 47),
  -- Gardevoir - Dazzling Gleam - TM079
  (282, 28200, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 48),
  -- Gardevoir - Metronome - TM080
  (282, 28200, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 49),
  -- Gardevoir - Grass Knot - TM081
  (282, 28200, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 50),
  -- Gardevoir - Thunder Wave - TM082
  (282, 28200, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 51),
  -- Gardevoir - Rest - TM085
  (282, 28200, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 52),
  -- Gardevoir - Taunt - TM087
  (282, 28200, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 53),
  -- Gardevoir - Imprison - TM092
  (282, 28200, 286, 23, NULL, 2, NULL, NULL, 23002092, NULL, 54),
  -- Gardevoir - Skill Swap - TM098
  (282, 28200, 285, 23, NULL, 2, NULL, NULL, 23002098, NULL, 55),
  -- Gardevoir - Substitute - TM103
  (282, 28200, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 56),
  -- Gardevoir - Will-O-Wisp - TM107
  (282, 28200, 261, 23, NULL, 2, NULL, NULL, 23002107, NULL, 57),
  -- Gardevoir - Trick - TM109
  (282, 28200, 271, 23, NULL, 2, NULL, NULL, 23002109, NULL, 58),
  -- Gardevoir - Aura Sphere - TM112
  (282, 28200, 396, 23, NULL, 2, NULL, NULL, 23002112, NULL, 59),
  -- Gardevoir - Shadow Ball - TM114
  (282, 28200, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 60),
  -- Gardevoir - Hyper Voice - TM117
  (282, 28200, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 61),
  -- Gardevoir - Energy Ball - TM119
  (282, 28200, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 62),
  -- Gardevoir - Psychic - TM120
  (282, 28200, 94, 23, NULL, 2, NULL, NULL, 23002120, NULL, 63),
  -- Gardevoir - Encore - TM122
  (282, 28200, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 64),
  -- Gardevoir - Thunderbolt - TM126
  (282, 28200, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 65),
  -- Gardevoir - Calm Mind - TM129
  (282, 28200, 347, 23, NULL, 2, NULL, NULL, 23002129, NULL, 66),
  -- Gardevoir - Helping Hand - TM130
  (282, 28200, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 67),
  -- Gardevoir - Psychic Terrain - TM138
  (282, 28200, 678, 23, NULL, 2, NULL, NULL, 23002138, NULL, 68),
  -- Gardevoir - Misty Terrain - TM139
  (282, 28200, 581, 23, NULL, 2, NULL, NULL, 23002139, NULL, 69),
  -- Gardevoir - Giga Impact - TM152
  (282, 28200, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 70),
  -- Gardevoir - Focus Blast - TM158
  (282, 28200, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 71),
  -- Gardevoir - Trick Room - TM161
  (282, 28200, 433, 23, NULL, 2, NULL, NULL, 23002161, NULL, 72),
  -- Gardevoir - Hyper Beam - TM163
  (282, 28200, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 73),
  -- Gardevoir - Tera Blast - TM171
  (282, 28200, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 74),
  -- Gardevoir - Disable - Egg
  (282, 28200, 50, 23, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Gardevoir - Confuse Ray - Egg
  (282, 28200, 109, 23, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Gardevoir - Destiny Bond - Egg
  (282, 28200, 194, 23, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Gardevoir - Mean Look - Egg
  (282, 28200, 212, 23, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Gardevoir - Memento - Egg
  (282, 28200, 262, 23, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Gardevoir - Knock Off - Egg
  (282, 28200, 282, 23, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Gardevoir - Shadow Sneak - Egg
  (282, 28200, 425, 23, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Gardevoir - Mystical Fire - Egg
  (282, 28200, 595, 23, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Gardevoir - Dazzling Gleam - Evolution
  (282, 28200, 605, 23, NULL, 7, NULL, NULL, NULL, NULL, 83),
  -- Surskit - Water Gun - Level 1
  (283, 28300, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Surskit - Quick Attack - Level 6
  (283, 28300, 98, 23, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Surskit - Sweet Scent - Level 9
  (283, 28300, 230, 23, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Surskit - Soak - Level 14
  (283, 28300, 487, 23, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Surskit - Bubble Beam - Level 17
  (283, 28300, 61, 23, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Surskit - Agility - Level 22
  (283, 28300, 97, 23, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Surskit - Mist - Level 25
  (283, 28300, 54, 23, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Surskit - Haze - Level 25
  (283, 28300, 114, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Surskit - Baton Pass - Level 35
  (283, 28300, 226, 23, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Surskit - Sticky Web - Level 38
  (283, 28300, 564, 23, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Surskit - Take Down - TM001
  (283, 28300, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 11),
  -- Surskit - Agility - TM004
  (283, 28300, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 12),
  -- Surskit - Mud-Slap - TM005
  (283, 28300, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 13),
  -- Surskit - Protect - TM007
  (283, 28300, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Surskit - Water Pulse - TM011
  (283, 28300, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 15),
  -- Surskit - Acrobatics - TM014
  (283, 28300, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 16),
  -- Surskit - Struggle Bug - TM015
  (283, 28300, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 17),
  -- Surskit - Psybeam - TM016
  (283, 28300, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 18),
  -- Surskit - Thief - TM018
  (283, 28300, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Surskit - Pounce - TM021
  (283, 28300, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 20),
  -- Surskit - Chilling Water - TM022
  (283, 28300, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 21),
  -- Surskit - Facade - TM025
  (283, 28300, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 22),
  -- Surskit - Icy Wind - TM034
  (283, 28300, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 23),
  -- Surskit - Mud Shot - TM035
  (283, 28300, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 24),
  -- Surskit - Endure - TM047
  (283, 28300, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 25),
  -- Surskit - Sunny Day - TM049
  (283, 28300, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 26),
  -- Surskit - Rain Dance - TM050
  (283, 28300, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 27),
  -- Surskit - Sleep Talk - TM070
  (283, 28300, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 28),
  -- Surskit - Waterfall - TM077
  (283, 28300, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 29),
  -- Surskit - Rest - TM085
  (283, 28300, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 30),
  -- Surskit - Leech Life - TM095
  (283, 28300, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 31),
  -- Surskit - Substitute - TM103
  (283, 28300, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 32),
  -- Surskit - Liquidation - TM110
  (283, 28300, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 33),
  -- Surskit - Giga Drain - TM111
  (283, 28300, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 34),
  -- Surskit - Shadow Ball - TM114
  (283, 28300, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 35),
  -- Surskit - Surf - TM123
  (283, 28300, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 36),
  -- Surskit - Helping Hand - TM130
  (283, 28300, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 37),
  -- Surskit - Baton Pass - TM132
  (283, 28300, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 38),
  -- Surskit - Ice Beam - TM135
  (283, 28300, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 39),
  -- Surskit - Hydro Pump - TM142
  (283, 28300, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 40),
  -- Surskit - Blizzard - TM143
  (283, 28300, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 41),
  -- Surskit - Bug Buzz - TM162
  (283, 28300, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 42),
  -- Surskit - Solar Beam - TM168
  (283, 28300, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 43),
  -- Surskit - Tera Blast - TM171
  (283, 28300, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 44),
  -- Surskit - Hydro Pump - Egg
  (283, 28300, 56, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Surskit - Psybeam - Egg
  (283, 28300, 60, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Surskit - Mud Shot - Egg
  (283, 28300, 341, 23, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Surskit - Bug Bite - Egg
  (283, 28300, 450, 23, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Surskit - Aqua Jet - Egg
  (283, 28300, 453, 23, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Surskit - Power Split - Egg
  (283, 28300, 471, 23, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Surskit - Fell Stinger - Egg
  (283, 28300, 565, 23, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Surskit - Lunge - Egg
  (283, 28300, 679, 23, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Masquerain - Whirlwind - Level 1
  (284, 28400, 18, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Masquerain - Water Gun - Level 1
  (284, 28400, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Masquerain - Quick Attack - Level 1
  (284, 28400, 98, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Masquerain - Sweet Scent - Level 1
  (284, 28400, 230, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Masquerain - Soak - Level 1
  (284, 28400, 487, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Masquerain - Gust - Level 17
  (284, 28400, 16, 23, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Masquerain - Scary Face - Level 22
  (284, 28400, 184, 23, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Masquerain - Air Cutter - Level 22
  (284, 28400, 314, 23, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Masquerain - Stun Spore - Level 26
  (284, 28400, 78, 23, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Masquerain - Air Slash - Level 32
  (284, 28400, 403, 23, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Masquerain - Giga Drain - Level 38
  (284, 28400, 202, 23, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Masquerain - Bug Buzz - Level 44
  (284, 28400, 405, 23, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Masquerain - Quiver Dance - Level 52
  (284, 28400, 483, 23, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Masquerain - Take Down - TM001
  (284, 28400, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Masquerain - Agility - TM004
  (284, 28400, 97, 23, NULL, 2, NULL, NULL, 23002004, NULL, 15),
  -- Masquerain - Mud-Slap - TM005
  (284, 28400, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 16),
  -- Masquerain - Scary Face - TM006
  (284, 28400, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 17),
  -- Masquerain - Protect - TM007
  (284, 28400, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Masquerain - Water Pulse - TM011
  (284, 28400, 352, 23, NULL, 2, NULL, NULL, 23002011, NULL, 19),
  -- Masquerain - Acrobatics - TM014
  (284, 28400, 512, 23, NULL, 2, NULL, NULL, 23002014, NULL, 20),
  -- Masquerain - Struggle Bug - TM015
  (284, 28400, 522, 23, NULL, 2, NULL, NULL, 23002015, NULL, 21),
  -- Masquerain - Psybeam - TM016
  (284, 28400, 60, 23, NULL, 2, NULL, NULL, 23002016, NULL, 22),
  -- Masquerain - Thief - TM018
  (284, 28400, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 23),
  -- Masquerain - Pounce - TM021
  (284, 28400, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 24),
  -- Masquerain - Chilling Water - TM022
  (284, 28400, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 25),
  -- Masquerain - Facade - TM025
  (284, 28400, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 26),
  -- Masquerain - Aerial Ace - TM027
  (284, 28400, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 27),
  -- Masquerain - Swift - TM032
  (284, 28400, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 28),
  -- Masquerain - Icy Wind - TM034
  (284, 28400, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 29),
  -- Masquerain - Mud Shot - TM035
  (284, 28400, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 30),
  -- Masquerain - Air Cutter - TM040
  (284, 28400, 314, 23, NULL, 2, NULL, NULL, 23002040, NULL, 31),
  -- Masquerain - Endure - TM047
  (284, 28400, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Masquerain - Sunny Day - TM049
  (284, 28400, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 33),
  -- Masquerain - Rain Dance - TM050
  (284, 28400, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 34),
  -- Masquerain - U-turn - TM060
  (284, 28400, 369, 23, NULL, 2, NULL, NULL, 23002060, NULL, 35),
  -- Masquerain - Foul Play - TM062
  (284, 28400, 492, 23, NULL, 2, NULL, NULL, 23002062, NULL, 36),
  -- Masquerain - Air Slash - TM065
  (284, 28400, 403, 23, NULL, 2, NULL, NULL, 23002065, NULL, 37),
  -- Masquerain - Sleep Talk - TM070
  (284, 28400, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 38),
  -- Masquerain - Waterfall - TM077
  (284, 28400, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 39),
  -- Masquerain - Rest - TM085
  (284, 28400, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Masquerain - Leech Life - TM095
  (284, 28400, 141, 23, NULL, 2, NULL, NULL, 23002095, NULL, 41),
  -- Masquerain - Substitute - TM103
  (284, 28400, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 42),
  -- Masquerain - Liquidation - TM110
  (284, 28400, 710, 23, NULL, 2, NULL, NULL, 23002110, NULL, 43),
  -- Masquerain - Giga Drain - TM111
  (284, 28400, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 44),
  -- Masquerain - Tailwind - TM113
  (284, 28400, 366, 23, NULL, 2, NULL, NULL, 23002113, NULL, 45),
  -- Masquerain - Shadow Ball - TM114
  (284, 28400, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 46),
  -- Masquerain - Energy Ball - TM119
  (284, 28400, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 47),
  -- Masquerain - Surf - TM123
  (284, 28400, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 48),
  -- Masquerain - Helping Hand - TM130
  (284, 28400, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 49),
  -- Masquerain - Baton Pass - TM132
  (284, 28400, 226, 23, NULL, 2, NULL, NULL, 23002132, NULL, 50),
  -- Masquerain - Ice Beam - TM135
  (284, 28400, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 51),
  -- Masquerain - Hydro Pump - TM142
  (284, 28400, 56, 23, NULL, 2, NULL, NULL, 23002142, NULL, 52),
  -- Masquerain - Blizzard - TM143
  (284, 28400, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 53),
  -- Masquerain - Giga Impact - TM152
  (284, 28400, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 54),
  -- Masquerain - Hurricane - TM160
  (284, 28400, 542, 23, NULL, 2, NULL, NULL, 23002160, NULL, 55),
  -- Masquerain - Bug Buzz - TM162
  (284, 28400, 405, 23, NULL, 2, NULL, NULL, 23002162, NULL, 56),
  -- Masquerain - Hyper Beam - TM163
  (284, 28400, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 57),
  -- Masquerain - Solar Beam - TM168
  (284, 28400, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 58),
  -- Masquerain - Tera Blast - TM171
  (284, 28400, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 59),
  -- Masquerain - Hydro Pump - Egg
  (284, 28400, 56, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Masquerain - Psybeam - Egg
  (284, 28400, 60, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Masquerain - Mud Shot - Egg
  (284, 28400, 341, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Masquerain - Bug Bite - Egg
  (284, 28400, 450, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Masquerain - Aqua Jet - Egg
  (284, 28400, 453, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Masquerain - Power Split - Egg
  (284, 28400, 471, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Masquerain - Fell Stinger - Egg
  (284, 28400, 565, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Masquerain - Lunge - Egg
  (284, 28400, 679, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Shroomish - Tackle - Level 1
  (285, 28500, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shroomish - Absorb - Level 1
  (285, 28500, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shroomish - Stun Spore - Level 5
  (285, 28500, 78, 23, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Shroomish - Leech Seed - Level 8
  (285, 28500, 73, 23, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Shroomish - Mega Drain - Level 12
  (285, 28500, 72, 23, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Shroomish - Headbutt - Level 15
  (285, 28500, 29, 23, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Shroomish - Poison Powder - Level 19
  (285, 28500, 77, 23, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Shroomish - Giga Drain - Level 26
  (285, 28500, 202, 23, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Shroomish - Growth - Level 29
  (285, 28500, 74, 23, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Shroomish - Toxic - Level 33
  (285, 28500, 92, 23, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Shroomish - Seed Bomb - Level 36
  (285, 28500, 402, 23, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Shroomish - Spore - Level 40
  (285, 28500, 147, 23, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Shroomish - Take Down - TM001
  (285, 28500, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 13),
  -- Shroomish - Charm - TM002
  (285, 28500, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 14),
  -- Shroomish - Fake Tears - TM003
  (285, 28500, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 15),
  -- Shroomish - Protect - TM007
  (285, 28500, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 16),
  -- Shroomish - Pounce - TM021
  (285, 28500, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 17),
  -- Shroomish - Facade - TM025
  (285, 28500, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 18),
  -- Shroomish - Swift - TM032
  (285, 28500, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 19),
  -- Shroomish - Magical Leaf - TM033
  (285, 28500, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 20),
  -- Shroomish - Venoshock - TM045
  (285, 28500, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 21),
  -- Shroomish - Endure - TM047
  (285, 28500, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Shroomish - Sunny Day - TM049
  (285, 28500, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 23),
  -- Shroomish - Rain Dance - TM050
  (285, 28500, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 24),
  -- Shroomish - Bullet Seed - TM056
  (285, 28500, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 25),
  -- Shroomish - False Swipe - TM057
  (285, 28500, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 26),
  -- Shroomish - Zen Headbutt - TM059
  (285, 28500, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 27),
  -- Shroomish - Body Slam - TM066
  (285, 28500, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 28),
  -- Shroomish - Sleep Talk - TM070
  (285, 28500, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 29),
  -- Shroomish - Seed Bomb - TM071
  (285, 28500, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 30),
  -- Shroomish - Drain Punch - TM073
  (285, 28500, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 31),
  -- Shroomish - Grass Knot - TM081
  (285, 28500, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 32),
  -- Shroomish - Rest - TM085
  (285, 28500, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 33),
  -- Shroomish - Gunk Shot - TM102
  (285, 28500, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 34),
  -- Shroomish - Substitute - TM103
  (285, 28500, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 35),
  -- Shroomish - Giga Drain - TM111
  (285, 28500, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 36),
  -- Shroomish - Energy Ball - TM119
  (285, 28500, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 37),
  -- Shroomish - Helping Hand - TM130
  (285, 28500, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 38),
  -- Shroomish - Grassy Terrain - TM137
  (285, 28500, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 39),
  -- Shroomish - Sludge Bomb - TM148
  (285, 28500, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 40),
  -- Shroomish - Solar Beam - TM168
  (285, 28500, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 41),
  -- Shroomish - Tera Blast - TM171
  (285, 28500, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 42),
  -- Shroomish - Charm - Egg
  (285, 28500, 204, 23, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Shroomish - Helping Hand - Egg
  (285, 28500, 270, 23, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Shroomish - Fake Tears - Egg
  (285, 28500, 313, 23, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Shroomish - Worry Seed - Egg
  (285, 28500, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Breloom - Tackle - Level 1
  (286, 28600, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Breloom - Absorb - Level 1
  (286, 28600, 71, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Breloom - Leech Seed - Level 1
  (286, 28600, 73, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Breloom - Growth - Level 1
  (286, 28600, 74, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Breloom - Poison Powder - Level 1
  (286, 28600, 77, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Breloom - Stun Spore - Level 1
  (286, 28600, 78, 23, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Breloom - Toxic - Level 1
  (286, 28600, 92, 23, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Breloom - Mega Drain - Level 12
  (286, 28600, 72, 23, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Breloom - Headbutt - Level 15
  (286, 28600, 29, 23, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Breloom - Feint - Level 19
  (286, 28600, 364, 23, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Breloom - Counter - Level 22
  (286, 28600, 68, 23, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Breloom - Force Palm - Level 28
  (286, 28600, 395, 23, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Breloom - Worry Seed - Level 33
  (286, 28600, 388, 23, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Breloom - Brick Break - Level 39
  (286, 28600, 280, 23, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Breloom - Seed Bomb - Level 44
  (286, 28600, 402, 23, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Breloom - Dynamic Punch - Level 50
  (286, 28600, 223, 23, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Breloom - Focus Punch - Level 55
  (286, 28600, 264, 23, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Breloom - Take Down - TM001
  (286, 28600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Breloom - Charm - TM002
  (286, 28600, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 19),
  -- Breloom - Fake Tears - TM003
  (286, 28600, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 20),
  -- Breloom - Mud-Slap - TM005
  (286, 28600, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 21),
  -- Breloom - Protect - TM007
  (286, 28600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 22),
  -- Breloom - Low Kick - TM012
  (286, 28600, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 23),
  -- Breloom - Pounce - TM021
  (286, 28600, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 24),
  -- Breloom - Facade - TM025
  (286, 28600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 25),
  -- Breloom - Aerial Ace - TM027
  (286, 28600, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 26),
  -- Breloom - Bulldoze - TM028
  (286, 28600, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 27),
  -- Breloom - Swift - TM032
  (286, 28600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 28),
  -- Breloom - Magical Leaf - TM033
  (286, 28600, 345, 23, NULL, 2, NULL, NULL, 23002033, NULL, 29),
  -- Breloom - Mud Shot - TM035
  (286, 28600, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 30),
  -- Breloom - Rock Tomb - TM036
  (286, 28600, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 31),
  -- Breloom - Low Sweep - TM039
  (286, 28600, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 32),
  -- Breloom - Fling - TM043
  (286, 28600, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 33),
  -- Breloom - Venoshock - TM045
  (286, 28600, 474, 23, NULL, 2, NULL, NULL, 23002045, NULL, 34),
  -- Breloom - Endure - TM047
  (286, 28600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 35),
  -- Breloom - Sunny Day - TM049
  (286, 28600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 36),
  -- Breloom - Rain Dance - TM050
  (286, 28600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 37),
  -- Breloom - Dig - TM055
  (286, 28600, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 38),
  -- Breloom - Bullet Seed - TM056
  (286, 28600, 331, 23, NULL, 2, NULL, NULL, 23002056, NULL, 39),
  -- Breloom - False Swipe - TM057
  (286, 28600, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 40),
  -- Breloom - Brick Break - TM058
  (286, 28600, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 41),
  -- Breloom - Zen Headbutt - TM059
  (286, 28600, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 42),
  -- Breloom - Bulk Up - TM064
  (286, 28600, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 43),
  -- Breloom - Body Slam - TM066
  (286, 28600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 44),
  -- Breloom - Thunder Punch - TM068
  (286, 28600, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 45),
  -- Breloom - Sleep Talk - TM070
  (286, 28600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 46),
  -- Breloom - Seed Bomb - TM071
  (286, 28600, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 47),
  -- Breloom - Drain Punch - TM073
  (286, 28600, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 48),
  -- Breloom - Grass Knot - TM081
  (286, 28600, 447, 23, NULL, 2, NULL, NULL, 23002081, NULL, 49),
  -- Breloom - Poison Jab - TM083
  (286, 28600, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 50),
  -- Breloom - Rest - TM085
  (286, 28600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 51),
  -- Breloom - Rock Slide - TM086
  (286, 28600, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 52),
  -- Breloom - Swords Dance - TM088
  (286, 28600, 14, 23, NULL, 2, NULL, NULL, 23002088, NULL, 53),
  -- Breloom - Gunk Shot - TM102
  (286, 28600, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 54),
  -- Breloom - Substitute - TM103
  (286, 28600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 55),
  -- Breloom - Giga Drain - TM111
  (286, 28600, 202, 23, NULL, 2, NULL, NULL, 23002111, NULL, 56),
  -- Breloom - Energy Ball - TM119
  (286, 28600, 412, 23, NULL, 2, NULL, NULL, 23002119, NULL, 57),
  -- Breloom - Helping Hand - TM130
  (286, 28600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 58),
  -- Breloom - Reversal - TM134
  (286, 28600, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 59),
  -- Breloom - Grassy Terrain - TM137
  (286, 28600, 580, 23, NULL, 2, NULL, NULL, 23002137, NULL, 60),
  -- Breloom - Sludge Bomb - TM148
  (286, 28600, 188, 23, NULL, 2, NULL, NULL, 23002148, NULL, 61),
  -- Breloom - Stone Edge - TM150
  (286, 28600, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 62),
  -- Breloom - Giga Impact - TM152
  (286, 28600, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 63),
  -- Breloom - Focus Blast - TM158
  (286, 28600, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 64),
  -- Breloom - Leaf Storm - TM159
  (286, 28600, 437, 23, NULL, 2, NULL, NULL, 23002159, NULL, 65),
  -- Breloom - Hyper Beam - TM163
  (286, 28600, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 66),
  -- Breloom - Close Combat - TM167
  (286, 28600, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 67),
  -- Breloom - Solar Beam - TM168
  (286, 28600, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 68),
  -- Breloom - Tera Blast - TM171
  (286, 28600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 69),
  -- Breloom - Charm - Egg
  (286, 28600, 204, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Breloom - Helping Hand - Egg
  (286, 28600, 270, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Breloom - Fake Tears - Egg
  (286, 28600, 313, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Breloom - Worry Seed - Egg
  (286, 28600, 388, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Breloom - Mach Punch - Evolution
  (286, 28600, 183, 23, NULL, 7, NULL, NULL, NULL, NULL, 74),
  -- Breloom - Spore - Reminder
  (286, 28600, 147, 23, NULL, 9, NULL, NULL, NULL, NULL, 75),
  -- Slakoth - Scratch - Level 1
  (287, 28700, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slakoth - Yawn - Level 1
  (287, 28700, 281, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slakoth - Encore - Level 6
  (287, 28700, 227, 23, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Slakoth - Slack Off - Level 9
  (287, 28700, 303, 23, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Slakoth - Headbutt - Level 14
  (287, 28700, 29, 23, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Slakoth - Amnesia - Level 17
  (287, 28700, 133, 23, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Slakoth - Covet - Level 22
  (287, 28700, 343, 23, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Slakoth - Throat Chop - Level 25
  (287, 28700, 675, 23, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Slakoth - Counter - Level 30
  (287, 28700, 68, 23, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Slakoth - Flail - Level 33
  (287, 28700, 175, 23, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Slakoth - Play Rough - Level 38
  (287, 28700, 583, 23, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Slakoth - Take Down - TM001
  (287, 28700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 12),
  -- Slakoth - Mud-Slap - TM005
  (287, 28700, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 13),
  -- Slakoth - Protect - TM007
  (287, 28700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 14),
  -- Slakoth - Thief - TM018
  (287, 28700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 15),
  -- Slakoth - Chilling Water - TM022
  (287, 28700, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 16),
  -- Slakoth - Facade - TM025
  (287, 28700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 17),
  -- Slakoth - Aerial Ace - TM027
  (287, 28700, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 18),
  -- Slakoth - Metal Claw - TM031
  (287, 28700, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 19),
  -- Slakoth - Icy Wind - TM034
  (287, 28700, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 20),
  -- Slakoth - Mud Shot - TM035
  (287, 28700, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 21),
  -- Slakoth - Rock Tomb - TM036
  (287, 28700, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 22),
  -- Slakoth - Fling - TM043
  (287, 28700, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 23),
  -- Slakoth - Endure - TM047
  (287, 28700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 24),
  -- Slakoth - Sunny Day - TM049
  (287, 28700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 25),
  -- Slakoth - Rain Dance - TM050
  (287, 28700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 26),
  -- Slakoth - False Swipe - TM057
  (287, 28700, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 27),
  -- Slakoth - Brick Break - TM058
  (287, 28700, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 28),
  -- Slakoth - Zen Headbutt - TM059
  (287, 28700, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 29),
  -- Slakoth - Shadow Claw - TM061
  (287, 28700, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 30),
  -- Slakoth - Bulk Up - TM064
  (287, 28700, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 31),
  -- Slakoth - Body Slam - TM066
  (287, 28700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 32),
  -- Slakoth - Fire Punch - TM067
  (287, 28700, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 33),
  -- Slakoth - Thunder Punch - TM068
  (287, 28700, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 34),
  -- Slakoth - Ice Punch - TM069
  (287, 28700, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 35),
  -- Slakoth - Sleep Talk - TM070
  (287, 28700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 36),
  -- Slakoth - Seed Bomb - TM071
  (287, 28700, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 37),
  -- Slakoth - Metronome - TM080
  (287, 28700, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 38),
  -- Slakoth - Poison Jab - TM083
  (287, 28700, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 39),
  -- Slakoth - Rest - TM085
  (287, 28700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 40),
  -- Slakoth - Rock Slide - TM086
  (287, 28700, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 41),
  -- Slakoth - Gunk Shot - TM102
  (287, 28700, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 42),
  -- Slakoth - Substitute - TM103
  (287, 28700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 43),
  -- Slakoth - X-Scissor - TM105
  (287, 28700, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 44),
  -- Slakoth - Shadow Ball - TM114
  (287, 28700, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 45),
  -- Slakoth - Encore - TM122
  (287, 28700, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 46),
  -- Slakoth - Flamethrower - TM125
  (287, 28700, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 47),
  -- Slakoth - Thunderbolt - TM126
  (287, 28700, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 48),
  -- Slakoth - Play Rough - TM127
  (287, 28700, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 49),
  -- Slakoth - Amnesia - TM128
  (287, 28700, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 50),
  -- Slakoth - Helping Hand - TM130
  (287, 28700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 51),
  -- Slakoth - Ice Beam - TM135
  (287, 28700, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 52),
  -- Slakoth - Fire Blast - TM141
  (287, 28700, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 53),
  -- Slakoth - Blizzard - TM143
  (287, 28700, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 54),
  -- Slakoth - Thunder - TM166
  (287, 28700, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 55),
  -- Slakoth - Solar Beam - TM168
  (287, 28700, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 56),
  -- Slakoth - Tera Blast - TM171
  (287, 28700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 57),
  -- Slakoth - Body Slam - Egg
  (287, 28700, 34, 23, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Slakoth - Slash - Egg
  (287, 28700, 163, 23, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Slakoth - Snore - Egg
  (287, 28700, 173, 23, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Slakoth - Curse - Egg
  (287, 28700, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Slakoth - Crush Claw - Egg
  (287, 28700, 306, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Slakoth - Tickle - Egg
  (287, 28700, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Slakoth - Hammer Arm - Egg
  (287, 28700, 359, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Slakoth - Night Slash - Egg
  (287, 28700, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Slakoth - After You - Egg
  (287, 28700, 495, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Vigoroth - Scratch - Level 1
  (288, 28800, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vigoroth - Focus Energy - Level 1
  (288, 28800, 116, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vigoroth - Encore - Level 1
  (288, 28800, 227, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vigoroth - Uproar - Level 1
  (288, 28800, 253, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vigoroth - Fury Swipes - Level 14
  (288, 28800, 154, 23, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Vigoroth - Endure - Level 17
  (288, 28800, 203, 23, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Vigoroth - Slash - Level 23
  (288, 28800, 163, 23, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Vigoroth - Throat Chop - Level 27
  (288, 28800, 675, 23, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Vigoroth - Counter - Level 33
  (288, 28800, 68, 23, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Vigoroth - Focus Punch - Level 37
  (288, 28800, 264, 23, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Vigoroth - Reversal - Level 43
  (288, 28800, 179, 23, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Vigoroth - Take Down - TM001
  (288, 28800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 12),
  -- Vigoroth - Mud-Slap - TM005
  (288, 28800, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 13),
  -- Vigoroth - Scary Face - TM006
  (288, 28800, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 14),
  -- Vigoroth - Protect - TM007
  (288, 28800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 15),
  -- Vigoroth - Low Kick - TM012
  (288, 28800, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 16),
  -- Vigoroth - Thief - TM018
  (288, 28800, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 17),
  -- Vigoroth - Trailblaze - TM020
  (288, 28800, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 18),
  -- Vigoroth - Chilling Water - TM022
  (288, 28800, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 19),
  -- Vigoroth - Facade - TM025
  (288, 28800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 20),
  -- Vigoroth - Aerial Ace - TM027
  (288, 28800, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 21),
  -- Vigoroth - Bulldoze - TM028
  (288, 28800, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 22),
  -- Vigoroth - Metal Claw - TM031
  (288, 28800, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 23),
  -- Vigoroth - Icy Wind - TM034
  (288, 28800, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 24),
  -- Vigoroth - Mud Shot - TM035
  (288, 28800, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 25),
  -- Vigoroth - Rock Tomb - TM036
  (288, 28800, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 26),
  -- Vigoroth - Low Sweep - TM039
  (288, 28800, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 27),
  -- Vigoroth - Fling - TM043
  (288, 28800, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 28),
  -- Vigoroth - Endure - TM047
  (288, 28800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 29),
  -- Vigoroth - Sunny Day - TM049
  (288, 28800, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 30),
  -- Vigoroth - Rain Dance - TM050
  (288, 28800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 31),
  -- Vigoroth - Dig - TM055
  (288, 28800, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 32),
  -- Vigoroth - False Swipe - TM057
  (288, 28800, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 33),
  -- Vigoroth - Brick Break - TM058
  (288, 28800, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 34),
  -- Vigoroth - Zen Headbutt - TM059
  (288, 28800, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 35),
  -- Vigoroth - Shadow Claw - TM061
  (288, 28800, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 36),
  -- Vigoroth - Bulk Up - TM064
  (288, 28800, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 37),
  -- Vigoroth - Body Slam - TM066
  (288, 28800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 38),
  -- Vigoroth - Fire Punch - TM067
  (288, 28800, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 39),
  -- Vigoroth - Thunder Punch - TM068
  (288, 28800, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 40),
  -- Vigoroth - Ice Punch - TM069
  (288, 28800, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 41),
  -- Vigoroth - Sleep Talk - TM070
  (288, 28800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 42),
  -- Vigoroth - Seed Bomb - TM071
  (288, 28800, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 43),
  -- Vigoroth - Drain Punch - TM073
  (288, 28800, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 44),
  -- Vigoroth - Metronome - TM080
  (288, 28800, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 45),
  -- Vigoroth - Thunder Wave - TM082
  (288, 28800, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 46),
  -- Vigoroth - Poison Jab - TM083
  (288, 28800, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 47),
  -- Vigoroth - Stomping Tantrum - TM084
  (288, 28800, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 48),
  -- Vigoroth - Rest - TM085
  (288, 28800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 49),
  -- Vigoroth - Rock Slide - TM086
  (288, 28800, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 50),
  -- Vigoroth - Taunt - TM087
  (288, 28800, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 51),
  -- Vigoroth - Gunk Shot - TM102
  (288, 28800, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 52),
  -- Vigoroth - Substitute - TM103
  (288, 28800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 53),
  -- Vigoroth - X-Scissor - TM105
  (288, 28800, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 54),
  -- Vigoroth - Shadow Ball - TM114
  (288, 28800, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 55),
  -- Vigoroth - Hyper Voice - TM117
  (288, 28800, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 56),
  -- Vigoroth - Encore - TM122
  (288, 28800, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 57),
  -- Vigoroth - Flamethrower - TM125
  (288, 28800, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 58),
  -- Vigoroth - Thunderbolt - TM126
  (288, 28800, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 59),
  -- Vigoroth - Play Rough - TM127
  (288, 28800, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 60),
  -- Vigoroth - Amnesia - TM128
  (288, 28800, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 61),
  -- Vigoroth - Helping Hand - TM130
  (288, 28800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 62),
  -- Vigoroth - Reversal - TM134
  (288, 28800, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 63),
  -- Vigoroth - Ice Beam - TM135
  (288, 28800, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 64),
  -- Vigoroth - Fire Blast - TM141
  (288, 28800, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 65),
  -- Vigoroth - Blizzard - TM143
  (288, 28800, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 66),
  -- Vigoroth - Earthquake - TM149
  (288, 28800, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 67),
  -- Vigoroth - Outrage - TM156
  (288, 28800, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 68),
  -- Vigoroth - Focus Blast - TM158
  (288, 28800, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 69),
  -- Vigoroth - Thunder - TM166
  (288, 28800, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 70),
  -- Vigoroth - Solar Beam - TM168
  (288, 28800, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 71),
  -- Vigoroth - Tera Blast - TM171
  (288, 28800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 72),
  -- Vigoroth - Body Slam - Egg
  (288, 28800, 34, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Vigoroth - Slash - Egg
  (288, 28800, 163, 23, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Vigoroth - Snore - Egg
  (288, 28800, 173, 23, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Vigoroth - Curse - Egg
  (288, 28800, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Vigoroth - Crush Claw - Egg
  (288, 28800, 306, 23, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Vigoroth - Tickle - Egg
  (288, 28800, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Vigoroth - Hammer Arm - Egg
  (288, 28800, 359, 23, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Vigoroth - Night Slash - Egg
  (288, 28800, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Vigoroth - After You - Egg
  (288, 28800, 495, 23, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Slaking - Scratch - Level 1
  (289, 28900, 10, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slaking - Encore - Level 1
  (289, 28900, 227, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slaking - Yawn - Level 1
  (289, 28900, 281, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slaking - Slack Off - Level 1
  (289, 28900, 303, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Slaking - Sucker Punch - Level 1
  (289, 28900, 389, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Slaking - Amnesia - Level 17
  (289, 28900, 133, 23, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Slaking - Covet - Level 23
  (289, 28900, 343, 23, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Slaking - Throat Chop - Level 27
  (289, 28900, 675, 23, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Slaking - Counter - Level 33
  (289, 28900, 68, 23, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Slaking - Flail - Level 39
  (289, 28900, 175, 23, NULL, 1, 39, NULL, NULL, NULL, 10),
  -- Slaking - Fling - Level 45
  (289, 28900, 374, 23, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Slaking - Mega Kick - Level 52
  (289, 28900, 25, 23, NULL, 1, 52, NULL, NULL, NULL, 12),
  -- Slaking - Hammer Arm - Level 63
  (289, 28900, 359, 23, NULL, 1, 63, NULL, NULL, NULL, 13),
  -- Slaking - Take Down - TM001
  (289, 28900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 14),
  -- Slaking - Mud-Slap - TM005
  (289, 28900, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 15),
  -- Slaking - Scary Face - TM006
  (289, 28900, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 16),
  -- Slaking - Protect - TM007
  (289, 28900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 17),
  -- Slaking - Low Kick - TM012
  (289, 28900, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 18),
  -- Slaking - Thief - TM018
  (289, 28900, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 19),
  -- Slaking - Trailblaze - TM020
  (289, 28900, 885, 23, NULL, 2, NULL, NULL, 23002020, NULL, 20),
  -- Slaking - Pounce - TM021
  (289, 28900, 884, 23, NULL, 2, NULL, NULL, 23002021, NULL, 21),
  -- Slaking - Chilling Water - TM022
  (289, 28900, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 22),
  -- Slaking - Facade - TM025
  (289, 28900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 23),
  -- Slaking - Aerial Ace - TM027
  (289, 28900, 332, 23, NULL, 2, NULL, NULL, 23002027, NULL, 24),
  -- Slaking - Bulldoze - TM028
  (289, 28900, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 25),
  -- Slaking - Metal Claw - TM031
  (289, 28900, 232, 23, NULL, 2, NULL, NULL, 23002031, NULL, 26),
  -- Slaking - Icy Wind - TM034
  (289, 28900, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 27),
  -- Slaking - Mud Shot - TM035
  (289, 28900, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 28),
  -- Slaking - Rock Tomb - TM036
  (289, 28900, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 29),
  -- Slaking - Low Sweep - TM039
  (289, 28900, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 30),
  -- Slaking - Fling - TM043
  (289, 28900, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 31),
  -- Slaking - Endure - TM047
  (289, 28900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 32),
  -- Slaking - Sunny Day - TM049
  (289, 28900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 33),
  -- Slaking - Rain Dance - TM050
  (289, 28900, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 34),
  -- Slaking - Dig - TM055
  (289, 28900, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 35),
  -- Slaking - False Swipe - TM057
  (289, 28900, 206, 23, NULL, 2, NULL, NULL, 23002057, NULL, 36),
  -- Slaking - Brick Break - TM058
  (289, 28900, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 37),
  -- Slaking - Zen Headbutt - TM059
  (289, 28900, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 38),
  -- Slaking - Shadow Claw - TM061
  (289, 28900, 421, 23, NULL, 2, NULL, NULL, 23002061, NULL, 39),
  -- Slaking - Bulk Up - TM064
  (289, 28900, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 40),
  -- Slaking - Body Slam - TM066
  (289, 28900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 41),
  -- Slaking - Fire Punch - TM067
  (289, 28900, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 42),
  -- Slaking - Thunder Punch - TM068
  (289, 28900, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 43),
  -- Slaking - Ice Punch - TM069
  (289, 28900, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 44),
  -- Slaking - Sleep Talk - TM070
  (289, 28900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 45),
  -- Slaking - Seed Bomb - TM071
  (289, 28900, 402, 23, NULL, 2, NULL, NULL, 23002071, NULL, 46),
  -- Slaking - Drain Punch - TM073
  (289, 28900, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 47),
  -- Slaking - Metronome - TM080
  (289, 28900, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 48),
  -- Slaking - Thunder Wave - TM082
  (289, 28900, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 49),
  -- Slaking - Poison Jab - TM083
  (289, 28900, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 50),
  -- Slaking - Stomping Tantrum - TM084
  (289, 28900, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 51),
  -- Slaking - Rest - TM085
  (289, 28900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 52),
  -- Slaking - Rock Slide - TM086
  (289, 28900, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 53),
  -- Slaking - Taunt - TM087
  (289, 28900, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 54),
  -- Slaking - Body Press - TM089
  (289, 28900, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 55),
  -- Slaking - Gunk Shot - TM102
  (289, 28900, 441, 23, NULL, 2, NULL, NULL, 23002102, NULL, 56),
  -- Slaking - Substitute - TM103
  (289, 28900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 57),
  -- Slaking - X-Scissor - TM105
  (289, 28900, 404, 23, NULL, 2, NULL, NULL, 23002105, NULL, 58),
  -- Slaking - Shadow Ball - TM114
  (289, 28900, 247, 23, NULL, 2, NULL, NULL, 23002114, NULL, 59),
  -- Slaking - Hyper Voice - TM117
  (289, 28900, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 60),
  -- Slaking - Heavy Slam - TM121
  (289, 28900, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 61),
  -- Slaking - Encore - TM122
  (289, 28900, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 62),
  -- Slaking - Flamethrower - TM125
  (289, 28900, 53, 23, NULL, 2, NULL, NULL, 23002125, NULL, 63),
  -- Slaking - Thunderbolt - TM126
  (289, 28900, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 64),
  -- Slaking - Play Rough - TM127
  (289, 28900, 583, 23, NULL, 2, NULL, NULL, 23002127, NULL, 65),
  -- Slaking - Amnesia - TM128
  (289, 28900, 133, 23, NULL, 2, NULL, NULL, 23002128, NULL, 66),
  -- Slaking - Helping Hand - TM130
  (289, 28900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 67),
  -- Slaking - Reversal - TM134
  (289, 28900, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 68),
  -- Slaking - Ice Beam - TM135
  (289, 28900, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 69),
  -- Slaking - Fire Blast - TM141
  (289, 28900, 126, 23, NULL, 2, NULL, NULL, 23002141, NULL, 70),
  -- Slaking - Blizzard - TM143
  (289, 28900, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 71),
  -- Slaking - Wild Charge - TM147
  (289, 28900, 528, 23, NULL, 2, NULL, NULL, 23002147, NULL, 72),
  -- Slaking - Earthquake - TM149
  (289, 28900, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 73),
  -- Slaking - Giga Impact - TM152
  (289, 28900, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 74),
  -- Slaking - Outrage - TM156
  (289, 28900, 200, 23, NULL, 2, NULL, NULL, 23002156, NULL, 75),
  -- Slaking - Focus Blast - TM158
  (289, 28900, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 76),
  -- Slaking - Hyper Beam - TM163
  (289, 28900, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 77),
  -- Slaking - Thunder - TM166
  (289, 28900, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 78),
  -- Slaking - Solar Beam - TM168
  (289, 28900, 76, 23, NULL, 2, NULL, NULL, 23002168, NULL, 79),
  -- Slaking - Tera Blast - TM171
  (289, 28900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 80),
  -- Slaking - Body Slam - Egg
  (289, 28900, 34, 23, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Slaking - Slash - Egg
  (289, 28900, 163, 23, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Slaking - Snore - Egg
  (289, 28900, 173, 23, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Slaking - Curse - Egg
  (289, 28900, 174, 23, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Slaking - Crush Claw - Egg
  (289, 28900, 306, 23, NULL, 5, NULL, NULL, NULL, NULL, 85),
  -- Slaking - Tickle - Egg
  (289, 28900, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 86),
  -- Slaking - Hammer Arm - Egg
  (289, 28900, 359, 23, NULL, 5, NULL, NULL, NULL, NULL, 87),
  -- Slaking - Night Slash - Egg
  (289, 28900, 400, 23, NULL, 5, NULL, NULL, NULL, NULL, 88),
  -- Slaking - After You - Egg
  (289, 28900, 495, 23, NULL, 5, NULL, NULL, NULL, NULL, 89),
  -- Slaking - Swagger - Evolution
  (289, 28900, 207, 23, NULL, 7, NULL, NULL, NULL, NULL, 90),
  -- Makuhita - Tackle - Level 1
  (296, 29600, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Makuhita - Focus Energy - Level 1
  (296, 29600, 116, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Makuhita - Sand Attack - Level 4
  (296, 29600, 28, 23, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Makuhita - Arm Thrust - Level 7
  (296, 29600, 292, 23, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Makuhita - Fake Out - Level 10
  (296, 29600, 252, 23, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Makuhita - Force Palm - Level 13
  (296, 29600, 395, 23, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Makuhita - Whirlwind - Level 16
  (296, 29600, 18, 23, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Makuhita - Knock Off - Level 19
  (296, 29600, 282, 23, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Makuhita - Bulk Up - Level 22
  (296, 29600, 339, 23, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Makuhita - Belly Drum - Level 25
  (296, 29600, 187, 23, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Makuhita - Detect - Level 28
  (296, 29600, 197, 23, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Makuhita - Seismic Toss - Level 31
  (296, 29600, 69, 23, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Makuhita - Focus Punch - Level 34
  (296, 29600, 264, 23, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Makuhita - Endure - Level 37
  (296, 29600, 203, 23, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Makuhita - Close Combat - Level 40
  (296, 29600, 370, 23, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Makuhita - Reversal - Level 43
  (296, 29600, 179, 23, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Makuhita - Heavy Slam - Level 46
  (296, 29600, 484, 23, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Makuhita - Take Down - TM001
  (296, 29600, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 18),
  -- Makuhita - Mud-Slap - TM005
  (296, 29600, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 19),
  -- Makuhita - Protect - TM007
  (296, 29600, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 20),
  -- Makuhita - Low Kick - TM012
  (296, 29600, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 21),
  -- Makuhita - Thief - TM018
  (296, 29600, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 22),
  -- Makuhita - Chilling Water - TM022
  (296, 29600, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 23),
  -- Makuhita - Facade - TM025
  (296, 29600, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 24),
  -- Makuhita - Bulldoze - TM028
  (296, 29600, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 25),
  -- Makuhita - Swift - TM032
  (296, 29600, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 26),
  -- Makuhita - Mud Shot - TM035
  (296, 29600, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 27),
  -- Makuhita - Rock Tomb - TM036
  (296, 29600, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 28),
  -- Makuhita - Low Sweep - TM039
  (296, 29600, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 29),
  -- Makuhita - Fling - TM043
  (296, 29600, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 30),
  -- Makuhita - Endure - TM047
  (296, 29600, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 31),
  -- Makuhita - Sunny Day - TM049
  (296, 29600, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 32),
  -- Makuhita - Rain Dance - TM050
  (296, 29600, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 33),
  -- Makuhita - Dig - TM055
  (296, 29600, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 34),
  -- Makuhita - Brick Break - TM058
  (296, 29600, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 35),
  -- Makuhita - Zen Headbutt - TM059
  (296, 29600, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 36),
  -- Makuhita - Bulk Up - TM064
  (296, 29600, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 37),
  -- Makuhita - Body Slam - TM066
  (296, 29600, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 38),
  -- Makuhita - Fire Punch - TM067
  (296, 29600, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 39),
  -- Makuhita - Thunder Punch - TM068
  (296, 29600, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 40),
  -- Makuhita - Ice Punch - TM069
  (296, 29600, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 41),
  -- Makuhita - Sleep Talk - TM070
  (296, 29600, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 42),
  -- Makuhita - Drain Punch - TM073
  (296, 29600, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 43),
  -- Makuhita - Metronome - TM080
  (296, 29600, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 44),
  -- Makuhita - Poison Jab - TM083
  (296, 29600, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 45),
  -- Makuhita - Stomping Tantrum - TM084
  (296, 29600, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 46),
  -- Makuhita - Rest - TM085
  (296, 29600, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 47),
  -- Makuhita - Rock Slide - TM086
  (296, 29600, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 48),
  -- Makuhita - Taunt - TM087
  (296, 29600, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 49),
  -- Makuhita - Body Press - TM089
  (296, 29600, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 50),
  -- Makuhita - Substitute - TM103
  (296, 29600, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 51),
  -- Makuhita - Heavy Slam - TM121
  (296, 29600, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 52),
  -- Makuhita - Surf - TM123
  (296, 29600, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 53),
  -- Makuhita - Helping Hand - TM130
  (296, 29600, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 54),
  -- Makuhita - Reversal - TM134
  (296, 29600, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 55),
  -- Makuhita - Earthquake - TM149
  (296, 29600, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 56),
  -- Makuhita - Stone Edge - TM150
  (296, 29600, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 57),
  -- Makuhita - Focus Blast - TM158
  (296, 29600, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 58),
  -- Makuhita - Close Combat - TM167
  (296, 29600, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 59),
  -- Makuhita - Tera Blast - TM171
  (296, 29600, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 60),
  -- Makuhita - Counter - Egg
  (296, 29600, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Makuhita - Dynamic Punch - Egg
  (296, 29600, 223, 23, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Makuhita - Cross Chop - Egg
  (296, 29600, 238, 23, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Makuhita - Helping Hand - Egg
  (296, 29600, 270, 23, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Makuhita - Feint - Egg
  (296, 29600, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Makuhita - Bullet Punch - Egg
  (296, 29600, 418, 23, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Makuhita - Wide Guard - Egg
  (296, 29600, 469, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Hariyama - Sand Attack - Level 1
  (297, 29700, 28, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hariyama - Tackle - Level 1
  (297, 29700, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hariyama - Focus Energy - Level 1
  (297, 29700, 116, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hariyama - Arm Thrust - Level 1
  (297, 29700, 292, 23, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hariyama - Brine - Level 1
  (297, 29700, 362, 23, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hariyama - Fake Out - Level 10
  (297, 29700, 252, 23, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Hariyama - Force Palm - Level 13
  (297, 29700, 395, 23, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Hariyama - Whirlwind - Level 16
  (297, 29700, 18, 23, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Hariyama - Knock Off - Level 19
  (297, 29700, 282, 23, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Hariyama - Bulk Up - Level 22
  (297, 29700, 339, 23, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Hariyama - Belly Drum - Level 26
  (297, 29700, 187, 23, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Hariyama - Detect - Level 30
  (297, 29700, 197, 23, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Hariyama - Seismic Toss - Level 34
  (297, 29700, 69, 23, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Hariyama - Focus Punch - Level 38
  (297, 29700, 264, 23, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Hariyama - Endure - Level 42
  (297, 29700, 203, 23, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Hariyama - Close Combat - Level 46
  (297, 29700, 370, 23, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Hariyama - Reversal - Level 50
  (297, 29700, 179, 23, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Hariyama - Heavy Slam - Level 54
  (297, 29700, 484, 23, NULL, 1, 54, NULL, NULL, NULL, 18),
  -- Hariyama - Headlong Rush - Level 60
  (297, 29700, 838, 23, NULL, 1, 60, NULL, NULL, NULL, 19),
  -- Hariyama - Take Down - TM001
  (297, 29700, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 20),
  -- Hariyama - Mud-Slap - TM005
  (297, 29700, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 21),
  -- Hariyama - Scary Face - TM006
  (297, 29700, 184, 23, NULL, 2, NULL, NULL, 23002006, NULL, 22),
  -- Hariyama - Protect - TM007
  (297, 29700, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 23),
  -- Hariyama - Low Kick - TM012
  (297, 29700, 67, 23, NULL, 2, NULL, NULL, 23002012, NULL, 24),
  -- Hariyama - Thief - TM018
  (297, 29700, 168, 23, NULL, 2, NULL, NULL, 23002018, NULL, 25),
  -- Hariyama - Chilling Water - TM022
  (297, 29700, 886, 23, NULL, 2, NULL, NULL, 23002022, NULL, 26),
  -- Hariyama - Facade - TM025
  (297, 29700, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 27),
  -- Hariyama - Bulldoze - TM028
  (297, 29700, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 28),
  -- Hariyama - Swift - TM032
  (297, 29700, 129, 23, NULL, 2, NULL, NULL, 23002032, NULL, 29),
  -- Hariyama - Mud Shot - TM035
  (297, 29700, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 30),
  -- Hariyama - Rock Tomb - TM036
  (297, 29700, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 31),
  -- Hariyama - Low Sweep - TM039
  (297, 29700, 490, 23, NULL, 2, NULL, NULL, 23002039, NULL, 32),
  -- Hariyama - Fling - TM043
  (297, 29700, 374, 23, NULL, 2, NULL, NULL, 23002043, NULL, 33),
  -- Hariyama - Endure - TM047
  (297, 29700, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 34),
  -- Hariyama - Sunny Day - TM049
  (297, 29700, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 35),
  -- Hariyama - Rain Dance - TM050
  (297, 29700, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 36),
  -- Hariyama - Dig - TM055
  (297, 29700, 91, 23, NULL, 2, NULL, NULL, 23002055, NULL, 37),
  -- Hariyama - Brick Break - TM058
  (297, 29700, 280, 23, NULL, 2, NULL, NULL, 23002058, NULL, 38),
  -- Hariyama - Zen Headbutt - TM059
  (297, 29700, 428, 23, NULL, 2, NULL, NULL, 23002059, NULL, 39),
  -- Hariyama - Bulk Up - TM064
  (297, 29700, 339, 23, NULL, 2, NULL, NULL, 23002064, NULL, 40),
  -- Hariyama - Body Slam - TM066
  (297, 29700, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 41),
  -- Hariyama - Fire Punch - TM067
  (297, 29700, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 42),
  -- Hariyama - Thunder Punch - TM068
  (297, 29700, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 43),
  -- Hariyama - Ice Punch - TM069
  (297, 29700, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 44),
  -- Hariyama - Sleep Talk - TM070
  (297, 29700, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 45),
  -- Hariyama - Drain Punch - TM073
  (297, 29700, 409, 23, NULL, 2, NULL, NULL, 23002073, NULL, 46),
  -- Hariyama - Metronome - TM080
  (297, 29700, 118, 23, NULL, 2, NULL, NULL, 23002080, NULL, 47),
  -- Hariyama - Poison Jab - TM083
  (297, 29700, 398, 23, NULL, 2, NULL, NULL, 23002083, NULL, 48),
  -- Hariyama - Stomping Tantrum - TM084
  (297, 29700, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 49),
  -- Hariyama - Rest - TM085
  (297, 29700, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 50),
  -- Hariyama - Rock Slide - TM086
  (297, 29700, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 51),
  -- Hariyama - Taunt - TM087
  (297, 29700, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 52),
  -- Hariyama - Body Press - TM089
  (297, 29700, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 53),
  -- Hariyama - Iron Head - TM099
  (297, 29700, 442, 23, NULL, 2, NULL, NULL, 23002099, NULL, 54),
  -- Hariyama - Substitute - TM103
  (297, 29700, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 55),
  -- Hariyama - Heavy Slam - TM121
  (297, 29700, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 56),
  -- Hariyama - Surf - TM123
  (297, 29700, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 57),
  -- Hariyama - Helping Hand - TM130
  (297, 29700, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 58),
  -- Hariyama - Reversal - TM134
  (297, 29700, 179, 23, NULL, 2, NULL, NULL, 23002134, NULL, 59),
  -- Hariyama - Earthquake - TM149
  (297, 29700, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 60),
  -- Hariyama - Stone Edge - TM150
  (297, 29700, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 61),
  -- Hariyama - Giga Impact - TM152
  (297, 29700, 416, 23, NULL, 2, NULL, NULL, 23002152, NULL, 62),
  -- Hariyama - Focus Blast - TM158
  (297, 29700, 411, 23, NULL, 2, NULL, NULL, 23002158, NULL, 63),
  -- Hariyama - Hyper Beam - TM163
  (297, 29700, 63, 23, NULL, 2, NULL, NULL, 23002163, NULL, 64),
  -- Hariyama - Close Combat - TM167
  (297, 29700, 370, 23, NULL, 2, NULL, NULL, 23002167, NULL, 65),
  -- Hariyama - Tera Blast - TM171
  (297, 29700, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 66),
  -- Hariyama - Counter - Egg
  (297, 29700, 68, 23, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Hariyama - Dynamic Punch - Egg
  (297, 29700, 223, 23, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Hariyama - Cross Chop - Egg
  (297, 29700, 238, 23, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Hariyama - Helping Hand - Egg
  (297, 29700, 270, 23, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Hariyama - Feint - Egg
  (297, 29700, 364, 23, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Hariyama - Bullet Punch - Egg
  (297, 29700, 418, 23, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Hariyama - Wide Guard - Egg
  (297, 29700, 469, 23, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Azurill - Tail Whip - Level 1
  (298, 29800, 39, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Azurill - Water Gun - Level 1
  (298, 29800, 55, 23, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Azurill - Splash - Level 1
  (298, 29800, 150, 23, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Azurill - Helping Hand - Level 3
  (298, 29800, 270, 23, NULL, 1, 3, NULL, NULL, NULL, 4),
  -- Azurill - Bubble Beam - Level 6
  (298, 29800, 61, 23, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Azurill - Charm - Level 9
  (298, 29800, 204, 23, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Azurill - Slam - Level 12
  (298, 29800, 21, 23, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Azurill - Bounce - Level 15
  (298, 29800, 340, 23, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Azurill - Take Down - TM001
  (298, 29800, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 9),
  -- Azurill - Charm - TM002
  (298, 29800, 204, 23, NULL, 2, NULL, NULL, 23002002, NULL, 10),
  -- Azurill - Fake Tears - TM003
  (298, 29800, 313, 23, NULL, 2, NULL, NULL, 23002003, NULL, 11),
  -- Azurill - Mud-Slap - TM005
  (298, 29800, 189, 23, NULL, 2, NULL, NULL, 23002005, NULL, 12),
  -- Azurill - Protect - TM007
  (298, 29800, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 13),
  -- Azurill - Facade - TM025
  (298, 29800, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 14),
  -- Azurill - Icy Wind - TM034
  (298, 29800, 196, 23, NULL, 2, NULL, NULL, 23002034, NULL, 15),
  -- Azurill - Mud Shot - TM035
  (298, 29800, 341, 23, NULL, 2, NULL, NULL, 23002035, NULL, 16),
  -- Azurill - Draining Kiss - TM037
  (298, 29800, 577, 23, NULL, 2, NULL, NULL, 23002037, NULL, 17),
  -- Azurill - Endure - TM047
  (298, 29800, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 18),
  -- Azurill - Rain Dance - TM050
  (298, 29800, 240, 23, NULL, 2, NULL, NULL, 23002050, NULL, 19),
  -- Azurill - Body Slam - TM066
  (298, 29800, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 20),
  -- Azurill - Sleep Talk - TM070
  (298, 29800, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 21),
  -- Azurill - Light Screen - TM075
  (298, 29800, 113, 23, NULL, 2, NULL, NULL, 23002075, NULL, 22),
  -- Azurill - Waterfall - TM077
  (298, 29800, 127, 23, NULL, 2, NULL, NULL, 23002077, NULL, 23),
  -- Azurill - Rest - TM085
  (298, 29800, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 24),
  -- Azurill - Substitute - TM103
  (298, 29800, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 25),
  -- Azurill - Hyper Voice - TM117
  (298, 29800, 304, 23, NULL, 2, NULL, NULL, 23002117, NULL, 26),
  -- Azurill - Encore - TM122
  (298, 29800, 227, 23, NULL, 2, NULL, NULL, 23002122, NULL, 27),
  -- Azurill - Surf - TM123
  (298, 29800, 57, 23, NULL, 2, NULL, NULL, 23002123, NULL, 28),
  -- Azurill - Helping Hand - TM130
  (298, 29800, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 29),
  -- Azurill - Ice Beam - TM135
  (298, 29800, 58, 23, NULL, 2, NULL, NULL, 23002135, NULL, 30),
  -- Azurill - Blizzard - TM143
  (298, 29800, 59, 23, NULL, 2, NULL, NULL, 23002143, NULL, 31),
  -- Azurill - Tera Blast - TM171
  (298, 29800, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 32),
  -- Azurill - Sing - Egg
  (298, 29800, 47, 23, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Azurill - Supersonic - Egg
  (298, 29800, 48, 23, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Azurill - Belly Drum - Egg
  (298, 29800, 187, 23, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Azurill - Perish Song - Egg
  (298, 29800, 195, 23, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Azurill - Present - Egg
  (298, 29800, 217, 23, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Azurill - Tickle - Egg
  (298, 29800, 321, 23, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Azurill - Copycat - Egg
  (298, 29800, 383, 23, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Azurill - Aqua Jet - Egg
  (298, 29800, 453, 23, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Azurill - Soak - Egg
  (298, 29800, 487, 23, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Nosepass - Tackle - Level 1
  (299, 29900, 33, 23, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nosepass - Harden - Level 4
  (299, 29900, 106, 23, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Nosepass - Block - Level 7
  (299, 29900, 335, 23, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Nosepass - Rock Throw - Level 10
  (299, 29900, 88, 23, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Nosepass - Thunder Wave - Level 13
  (299, 29900, 86, 23, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Nosepass - Rest - Level 16
  (299, 29900, 156, 23, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Nosepass - Spark - Level 19
  (299, 29900, 209, 23, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Nosepass - Rock Slide - Level 22
  (299, 29900, 157, 23, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Nosepass - Power Gem - Level 25
  (299, 29900, 408, 23, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Nosepass - Rock Blast - Level 28
  (299, 29900, 350, 23, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Nosepass - Discharge - Level 31
  (299, 29900, 435, 23, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Nosepass - Sandstorm - Level 34
  (299, 29900, 201, 23, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Nosepass - Earth Power - Level 37
  (299, 29900, 414, 23, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Nosepass - Stone Edge - Level 40
  (299, 29900, 444, 23, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Nosepass - Zap Cannon - Level 43
  (299, 29900, 192, 23, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Nosepass - Lock-On - Level 43
  (299, 29900, 199, 23, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Nosepass - Take Down - TM001
  (299, 29900, 36, 23, NULL, 2, NULL, NULL, 23002001, NULL, 17),
  -- Nosepass - Protect - TM007
  (299, 29900, 182, 23, NULL, 2, NULL, NULL, 23002007, NULL, 18),
  -- Nosepass - Facade - TM025
  (299, 29900, 263, 23, NULL, 2, NULL, NULL, 23002025, NULL, 19),
  -- Nosepass - Bulldoze - TM028
  (299, 29900, 523, 23, NULL, 2, NULL, NULL, 23002028, NULL, 20),
  -- Nosepass - Rock Tomb - TM036
  (299, 29900, 317, 23, NULL, 2, NULL, NULL, 23002036, NULL, 21),
  -- Nosepass - Endure - TM047
  (299, 29900, 203, 23, NULL, 2, NULL, NULL, 23002047, NULL, 22),
  -- Nosepass - Volt Switch - TM048
  (299, 29900, 521, 23, NULL, 2, NULL, NULL, 23002048, NULL, 23),
  -- Nosepass - Sunny Day - TM049
  (299, 29900, 241, 23, NULL, 2, NULL, NULL, 23002049, NULL, 24),
  -- Nosepass - Sandstorm - TM051
  (299, 29900, 201, 23, NULL, 2, NULL, NULL, 23002051, NULL, 25),
  -- Nosepass - Body Slam - TM066
  (299, 29900, 34, 23, NULL, 2, NULL, NULL, 23002066, NULL, 26),
  -- Nosepass - Fire Punch - TM067
  (299, 29900, 7, 23, NULL, 2, NULL, NULL, 23002067, NULL, 27),
  -- Nosepass - Thunder Punch - TM068
  (299, 29900, 9, 23, NULL, 2, NULL, NULL, 23002068, NULL, 28),
  -- Nosepass - Ice Punch - TM069
  (299, 29900, 8, 23, NULL, 2, NULL, NULL, 23002069, NULL, 29),
  -- Nosepass - Sleep Talk - TM070
  (299, 29900, 214, 23, NULL, 2, NULL, NULL, 23002070, NULL, 30),
  -- Nosepass - Rock Blast - TM076
  (299, 29900, 350, 23, NULL, 2, NULL, NULL, 23002076, NULL, 31),
  -- Nosepass - Dazzling Gleam - TM079
  (299, 29900, 605, 23, NULL, 2, NULL, NULL, 23002079, NULL, 32),
  -- Nosepass - Thunder Wave - TM082
  (299, 29900, 86, 23, NULL, 2, NULL, NULL, 23002082, NULL, 33),
  -- Nosepass - Stomping Tantrum - TM084
  (299, 29900, 707, 23, NULL, 2, NULL, NULL, 23002084, NULL, 34),
  -- Nosepass - Rest - TM085
  (299, 29900, 156, 23, NULL, 2, NULL, NULL, 23002085, NULL, 35),
  -- Nosepass - Rock Slide - TM086
  (299, 29900, 157, 23, NULL, 2, NULL, NULL, 23002086, NULL, 36),
  -- Nosepass - Taunt - TM087
  (299, 29900, 269, 23, NULL, 2, NULL, NULL, 23002087, NULL, 37),
  -- Nosepass - Body Press - TM089
  (299, 29900, 776, 23, NULL, 2, NULL, NULL, 23002089, NULL, 38),
  -- Nosepass - Flash Cannon - TM093
  (299, 29900, 430, 23, NULL, 2, NULL, NULL, 23002093, NULL, 39),
  -- Nosepass - Power Gem - TM101
  (299, 29900, 408, 23, NULL, 2, NULL, NULL, 23002101, NULL, 40),
  -- Nosepass - Substitute - TM103
  (299, 29900, 164, 23, NULL, 2, NULL, NULL, 23002103, NULL, 41),
  -- Nosepass - Iron Defense - TM104
  (299, 29900, 334, 23, NULL, 2, NULL, NULL, 23002104, NULL, 42),
  -- Nosepass - Stealth Rock - TM116
  (299, 29900, 446, 23, NULL, 2, NULL, NULL, 23002116, NULL, 43),
  -- Nosepass - Heavy Slam - TM121
  (299, 29900, 484, 23, NULL, 2, NULL, NULL, 23002121, NULL, 44),
  -- Nosepass - Thunderbolt - TM126
  (299, 29900, 85, 23, NULL, 2, NULL, NULL, 23002126, NULL, 45),
  -- Nosepass - Helping Hand - TM130
  (299, 29900, 270, 23, NULL, 2, NULL, NULL, 23002130, NULL, 46),
  -- Nosepass - Earth Power - TM133
  (299, 29900, 414, 23, NULL, 2, NULL, NULL, 23002133, NULL, 47),
  -- Nosepass - Earthquake - TM149
  (299, 29900, 89, 23, NULL, 2, NULL, NULL, 23002149, NULL, 48),
  -- Nosepass - Stone Edge - TM150
  (299, 29900, 444, 23, NULL, 2, NULL, NULL, 23002150, NULL, 49),
  -- Nosepass - Thunder - TM166
  (299, 29900, 87, 23, NULL, 2, NULL, NULL, 23002166, NULL, 50),
  -- Nosepass - Steel Beam - TM170
  (299, 29900, 796, 23, NULL, 2, NULL, NULL, 23002170, NULL, 51),
  -- Nosepass - Tera Blast - TM171
  (299, 29900, 851, 23, NULL, 2, NULL, NULL, 23002171, NULL, 52),
  -- Nosepass - Double-Edge - Egg
  (299, 29900, 38, 23, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Nosepass - Rollout - Egg
  (299, 29900, 205, 23, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Nosepass - Head Smash - Egg
  (299, 29900, 457, 23, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Nosepass - Wide Guard - Egg
  (299, 29900, 469, 23, NULL, 5, NULL, NULL, NULL, NULL, 56);
