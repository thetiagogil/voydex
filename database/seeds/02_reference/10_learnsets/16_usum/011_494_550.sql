-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VII raw learnset pages for Ultra Sun / Ultra Moon.
-- Cross-check: PokemonDB Generation 7 learnset pages where source rows were ambiguous.
-- Machine normalization: Bulbapedia Generation VII TM catalog data.
-- Source names and caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Ultra Sun / Ultra Moon learnsets for default forms, species 494-550.
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
  -- Victini - Confusion - Level 1
  (494, 49400, 93, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Victini - Quick Attack - Level 1
  (494, 49400, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Victini - Focus Energy - Level 1
  (494, 49400, 116, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Victini - Incinerate - Level 1
  (494, 49400, 510, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Victini - Searing Shot - Level 1
  (494, 49400, 545, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Victini - Endure - Level 9
  (494, 49400, 203, 16, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Victini - Headbutt - Level 17
  (494, 49400, 29, 16, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Victini - Flame Charge - Level 25
  (494, 49400, 488, 16, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Victini - Reversal - Level 33
  (494, 49400, 179, 16, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Victini - Flame Burst - Level 41
  (494, 49400, 481, 16, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Victini - Zen Headbutt - Level 49
  (494, 49400, 428, 16, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Victini - Inferno - Level 57
  (494, 49400, 517, 16, NULL, 1, 57, NULL, NULL, NULL, 12),
  -- Victini - Double-Edge - Level 65
  (494, 49400, 38, 16, NULL, 1, 65, NULL, NULL, NULL, 13),
  -- Victini - Flare Blitz - Level 73
  (494, 49400, 394, 16, NULL, 1, 73, NULL, NULL, NULL, 14),
  -- Victini - Final Gambit - Level 81
  (494, 49400, 515, 16, NULL, 1, 81, NULL, NULL, NULL, 15),
  -- Victini - Stored Power - Level 89
  (494, 49400, 500, 16, NULL, 1, 89, NULL, NULL, NULL, 16),
  -- Victini - Overheat - Level 97
  (494, 49400, 315, 16, NULL, 1, 97, NULL, NULL, NULL, 17),
  -- Victini - Work Up - TM01
  (494, 49400, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 18),
  -- Victini - Psyshock - TM03
  (494, 49400, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 19),
  -- Victini - Toxic - TM06
  (494, 49400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Victini - Hidden Power - TM10
  (494, 49400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Victini - Sunny Day - TM11
  (494, 49400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Victini - Taunt - TM12
  (494, 49400, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 23),
  -- Victini - Hyper Beam - TM15
  (494, 49400, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 24),
  -- Victini - Light Screen - TM16
  (494, 49400, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 25),
  -- Victini - Protect - TM17
  (494, 49400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Victini - Safeguard - TM20
  (494, 49400, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 27),
  -- Victini - Frustration - TM21
  (494, 49400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Victini - Solar Beam - TM22
  (494, 49400, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 29),
  -- Victini - Thunderbolt - TM24
  (494, 49400, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 30),
  -- Victini - Thunder - TM25
  (494, 49400, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 31),
  -- Victini - Return - TM27
  (494, 49400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 32),
  -- Victini - Psychic - TM29
  (494, 49400, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 33),
  -- Victini - Shadow Ball - TM30
  (494, 49400, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 34),
  -- Victini - Brick Break - TM31
  (494, 49400, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 35),
  -- Victini - Double Team - TM32
  (494, 49400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 36),
  -- Victini - Flamethrower - TM35
  (494, 49400, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 37),
  -- Victini - Fire Blast - TM38
  (494, 49400, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 38),
  -- Victini - Facade - TM42
  (494, 49400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 39),
  -- Victini - Flame Charge - TM43
  (494, 49400, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 40),
  -- Victini - Rest - TM44
  (494, 49400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 41),
  -- Victini - Round - TM48
  (494, 49400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 42),
  -- Victini - Overheat - TM50
  (494, 49400, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 43),
  -- Victini - Focus Blast - TM52
  (494, 49400, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 44),
  -- Victini - Energy Ball - TM53
  (494, 49400, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 45),
  -- Victini - Fling - TM56
  (494, 49400, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 46),
  -- Victini - Charge Beam - TM57
  (494, 49400, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 47),
  -- Victini - Will-O-Wisp - TM61
  (494, 49400, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 48),
  -- Victini - Embargo - TM63
  (494, 49400, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 49),
  -- Victini - Giga Impact - TM68
  (494, 49400, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 50),
  -- Victini - Thunder Wave - TM73
  (494, 49400, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 51),
  -- Victini - Psych Up - TM77
  (494, 49400, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 52),
  -- Victini - Grass Knot - TM86
  (494, 49400, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 53),
  -- Victini - Swagger - TM87
  (494, 49400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 54),
  -- Victini - Sleep Talk - TM88
  (494, 49400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 55),
  -- Victini - U-turn - TM89
  (494, 49400, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 56),
  -- Victini - Substitute - TM90
  (494, 49400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 57),
  -- Victini - Trick Room - TM92
  (494, 49400, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 58),
  -- Victini - Wild Charge - TM93
  (494, 49400, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 59),
  -- Victini - Dazzling Gleam - TM99
  (494, 49400, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 60),
  -- Victini - Confide - TM100
  (494, 49400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 61),
  -- Victini - Fire Punch - Tutor
  (494, 49400, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Victini - Thunder Punch - Tutor
  (494, 49400, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Victini - Snore - Tutor
  (494, 49400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Victini - Uproar - Tutor
  (494, 49400, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Victini - Heat Wave - Tutor
  (494, 49400, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Victini - Helping Hand - Tutor
  (494, 49400, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Victini - Trick - Tutor
  (494, 49400, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Victini - Role Play - Tutor
  (494, 49400, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Victini - Magic Coat - Tutor
  (494, 49400, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Victini - Skill Swap - Tutor
  (494, 49400, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Victini - Signal Beam - Tutor
  (494, 49400, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Victini - Bounce - Tutor
  (494, 49400, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Victini - Shock Wave - Tutor
  (494, 49400, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Victini - Last Resort - Tutor
  (494, 49400, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Victini - Zen Headbutt - Tutor
  (494, 49400, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Victini - Telekinesis - Tutor
  (494, 49400, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Victini - Laser Focus - Tutor
  (494, 49400, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),

  -- Snivy - Tackle - Level 1
  (495, 49500, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snivy - Leer - Level 4
  (495, 49500, 43, 16, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Snivy - Vine Whip - Level 7
  (495, 49500, 22, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Snivy - Wrap - Level 10
  (495, 49500, 35, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Snivy - Growth - Level 13
  (495, 49500, 74, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Snivy - Leaf Tornado - Level 16
  (495, 49500, 536, 16, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Snivy - Leech Seed - Level 19
  (495, 49500, 73, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Snivy - Mega Drain - Level 22
  (495, 49500, 72, 16, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Snivy - Slam - Level 25
  (495, 49500, 21, 16, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Snivy - Leaf Blade - Level 28
  (495, 49500, 348, 16, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Snivy - Coil - Level 31
  (495, 49500, 489, 16, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Snivy - Giga Drain - Level 34
  (495, 49500, 202, 16, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Snivy - Wring Out - Level 37
  (495, 49500, 378, 16, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Snivy - Gastro Acid - Level 40
  (495, 49500, 380, 16, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Snivy - Leaf Storm - Level 43
  (495, 49500, 437, 16, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Snivy - Work Up - TM01
  (495, 49500, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 16),
  -- Snivy - Calm Mind - TM04
  (495, 49500, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 17),
  -- Snivy - Toxic - TM06
  (495, 49500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Snivy - Hidden Power - TM10
  (495, 49500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Snivy - Sunny Day - TM11
  (495, 49500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Snivy - Taunt - TM12
  (495, 49500, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 21),
  -- Snivy - Light Screen - TM16
  (495, 49500, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 22),
  -- Snivy - Protect - TM17
  (495, 49500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Snivy - Safeguard - TM20
  (495, 49500, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 24),
  -- Snivy - Frustration - TM21
  (495, 49500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Snivy - Solar Beam - TM22
  (495, 49500, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 26),
  -- Snivy - Return - TM27
  (495, 49500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Snivy - Double Team - TM32
  (495, 49500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Snivy - Reflect - TM33
  (495, 49500, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 29),
  -- Snivy - Aerial Ace - TM40
  (495, 49500, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 30),
  -- Snivy - Torment - TM41
  (495, 49500, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 31),
  -- Snivy - Facade - TM42
  (495, 49500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 32),
  -- Snivy - Rest - TM44
  (495, 49500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 33),
  -- Snivy - Attract - TM45
  (495, 49500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 34),
  -- Snivy - Round - TM48
  (495, 49500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Snivy - Energy Ball - TM53
  (495, 49500, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 36),
  -- Snivy - Swords Dance - TM75
  (495, 49500, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 37),
  -- Snivy - Grass Knot - TM86
  (495, 49500, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 38),
  -- Snivy - Swagger - TM87
  (495, 49500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 39),
  -- Snivy - Sleep Talk - TM88
  (495, 49500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 40),
  -- Snivy - Substitute - TM90
  (495, 49500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 41),
  -- Snivy - Nature Power - TM96
  (495, 49500, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 42),
  -- Snivy - Confide - TM100
  (495, 49500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 43),
  -- Snivy - Glare - Egg
  (495, 49500, 137, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Snivy - Mean Look - Egg
  (495, 49500, 212, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Snivy - Pursuit - Egg
  (495, 49500, 228, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Snivy - Sweet Scent - Egg
  (495, 49500, 230, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Snivy - Iron Tail - Egg
  (495, 49500, 231, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Snivy - Twister - Egg
  (495, 49500, 239, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Snivy - Mirror Coat - Egg
  (495, 49500, 243, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Snivy - Magical Leaf - Egg
  (495, 49500, 345, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Snivy - Natural Gift - Egg
  (495, 49500, 363, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Snivy - Captivate - Egg
  (495, 49500, 445, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Snivy - Grassy Terrain - Egg
  (495, 49500, 580, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Snivy - Bind - Tutor
  (495, 49500, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Snivy - Snore - Tutor
  (495, 49500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Snivy - Giga Drain - Tutor
  (495, 49500, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Snivy - Iron Tail - Tutor
  (495, 49500, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Snivy - Synthesis - Tutor
  (495, 49500, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Snivy - Knock Off - Tutor
  (495, 49500, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Snivy - Snatch - Tutor
  (495, 49500, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Snivy - Gastro Acid - Tutor
  (495, 49500, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Snivy - Worry Seed - Tutor
  (495, 49500, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Snivy - Aqua Tail - Tutor
  (495, 49500, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Snivy - Seed Bomb - Tutor
  (495, 49500, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Snivy - Defog - Tutor
  (495, 49500, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Snivy - Grass Pledge - Tutor
  (495, 49500, 520, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),

  -- Servine - Vine Whip - Level 1
  (496, 49600, 22, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Servine - Tackle - Level 1
  (496, 49600, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Servine - Wrap - Level 1
  (496, 49600, 35, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Servine - Leer - Level 1
  (496, 49600, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Servine - Leer - Level 4
  (496, 49600, 43, 16, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Servine - Vine Whip - Level 7
  (496, 49600, 22, 16, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Servine - Wrap - Level 10
  (496, 49600, 35, 16, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Servine - Growth - Level 13
  (496, 49600, 74, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Servine - Leaf Tornado - Level 16
  (496, 49600, 536, 16, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Servine - Leech Seed - Level 20
  (496, 49600, 73, 16, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Servine - Mega Drain - Level 24
  (496, 49600, 72, 16, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Servine - Slam - Level 28
  (496, 49600, 21, 16, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Servine - Leaf Blade - Level 32
  (496, 49600, 348, 16, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Servine - Coil - Level 36
  (496, 49600, 489, 16, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Servine - Giga Drain - Level 40
  (496, 49600, 202, 16, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Servine - Wring Out - Level 44
  (496, 49600, 378, 16, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Servine - Gastro Acid - Level 48
  (496, 49600, 380, 16, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Servine - Leaf Storm - Level 52
  (496, 49600, 437, 16, NULL, 1, 52, NULL, NULL, NULL, 18),
  -- Servine - Work Up - TM01
  (496, 49600, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 19),
  -- Servine - Calm Mind - TM04
  (496, 49600, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 20),
  -- Servine - Toxic - TM06
  (496, 49600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Servine - Hidden Power - TM10
  (496, 49600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Servine - Sunny Day - TM11
  (496, 49600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Servine - Taunt - TM12
  (496, 49600, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 24),
  -- Servine - Light Screen - TM16
  (496, 49600, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 25),
  -- Servine - Protect - TM17
  (496, 49600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Servine - Safeguard - TM20
  (496, 49600, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 27),
  -- Servine - Frustration - TM21
  (496, 49600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Servine - Solar Beam - TM22
  (496, 49600, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 29),
  -- Servine - Return - TM27
  (496, 49600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Servine - Double Team - TM32
  (496, 49600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Servine - Reflect - TM33
  (496, 49600, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 32),
  -- Servine - Aerial Ace - TM40
  (496, 49600, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 33),
  -- Servine - Torment - TM41
  (496, 49600, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 34),
  -- Servine - Facade - TM42
  (496, 49600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 35),
  -- Servine - Rest - TM44
  (496, 49600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 36),
  -- Servine - Attract - TM45
  (496, 49600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 37),
  -- Servine - Round - TM48
  (496, 49600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 38),
  -- Servine - Energy Ball - TM53
  (496, 49600, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 39),
  -- Servine - Swords Dance - TM75
  (496, 49600, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 40),
  -- Servine - Grass Knot - TM86
  (496, 49600, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 41),
  -- Servine - Swagger - TM87
  (496, 49600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 42),
  -- Servine - Sleep Talk - TM88
  (496, 49600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 43),
  -- Servine - Substitute - TM90
  (496, 49600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 44),
  -- Servine - Nature Power - TM96
  (496, 49600, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 45),
  -- Servine - Confide - TM100
  (496, 49600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 46),
  -- Servine - Bind - Tutor
  (496, 49600, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Servine - Snore - Tutor
  (496, 49600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Servine - Giga Drain - Tutor
  (496, 49600, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Servine - Iron Tail - Tutor
  (496, 49600, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Servine - Synthesis - Tutor
  (496, 49600, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Servine - Knock Off - Tutor
  (496, 49600, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Servine - Snatch - Tutor
  (496, 49600, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Servine - Gastro Acid - Tutor
  (496, 49600, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Servine - Worry Seed - Tutor
  (496, 49600, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Servine - Aqua Tail - Tutor
  (496, 49600, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Servine - Seed Bomb - Tutor
  (496, 49600, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Servine - Defog - Tutor
  (496, 49600, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Servine - Grass Pledge - Tutor
  (496, 49600, 520, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),

  -- Serperior - Vine Whip - Level 1
  (497, 49700, 22, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Serperior - Tackle - Level 1
  (497, 49700, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Serperior - Wrap - Level 1
  (497, 49700, 35, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Serperior - Leer - Level 1
  (497, 49700, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Serperior - Leer - Level 4
  (497, 49700, 43, 16, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Serperior - Vine Whip - Level 7
  (497, 49700, 22, 16, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Serperior - Wrap - Level 10
  (497, 49700, 35, 16, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Serperior - Growth - Level 13
  (497, 49700, 74, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Serperior - Leaf Tornado - Level 16
  (497, 49700, 536, 16, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Serperior - Leech Seed - Level 20
  (497, 49700, 73, 16, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Serperior - Mega Drain - Level 24
  (497, 49700, 72, 16, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Serperior - Slam - Level 28
  (497, 49700, 21, 16, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Serperior - Leaf Blade - Level 32
  (497, 49700, 348, 16, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Serperior - Coil - Level 38
  (497, 49700, 489, 16, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Serperior - Giga Drain - Level 44
  (497, 49700, 202, 16, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Serperior - Wring Out - Level 50
  (497, 49700, 378, 16, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Serperior - Gastro Acid - Level 56
  (497, 49700, 380, 16, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Serperior - Leaf Storm - Level 62
  (497, 49700, 437, 16, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Serperior - Work Up - TM01
  (497, 49700, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 19),
  -- Serperior - Calm Mind - TM04
  (497, 49700, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 20),
  -- Serperior - Toxic - TM06
  (497, 49700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Serperior - Hidden Power - TM10
  (497, 49700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Serperior - Sunny Day - TM11
  (497, 49700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Serperior - Taunt - TM12
  (497, 49700, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 24),
  -- Serperior - Hyper Beam - TM15
  (497, 49700, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Serperior - Light Screen - TM16
  (497, 49700, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 26),
  -- Serperior - Protect - TM17
  (497, 49700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 27),
  -- Serperior - Safeguard - TM20
  (497, 49700, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 28),
  -- Serperior - Frustration - TM21
  (497, 49700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 29),
  -- Serperior - Solar Beam - TM22
  (497, 49700, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 30),
  -- Serperior - Return - TM27
  (497, 49700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Serperior - Double Team - TM32
  (497, 49700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Serperior - Reflect - TM33
  (497, 49700, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 33),
  -- Serperior - Aerial Ace - TM40
  (497, 49700, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 34),
  -- Serperior - Torment - TM41
  (497, 49700, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 35),
  -- Serperior - Facade - TM42
  (497, 49700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 36),
  -- Serperior - Rest - TM44
  (497, 49700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 37),
  -- Serperior - Attract - TM45
  (497, 49700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 38),
  -- Serperior - Round - TM48
  (497, 49700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 39),
  -- Serperior - Energy Ball - TM53
  (497, 49700, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 40),
  -- Serperior - Brutal Swing - TM59
  (497, 49700, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 41),
  -- Serperior - Giga Impact - TM68
  (497, 49700, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 42),
  -- Serperior - Swords Dance - TM75
  (497, 49700, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 43),
  -- Serperior - Dragon Tail - TM82
  (497, 49700, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 44),
  -- Serperior - Grass Knot - TM86
  (497, 49700, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 45),
  -- Serperior - Swagger - TM87
  (497, 49700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 46),
  -- Serperior - Sleep Talk - TM88
  (497, 49700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 47),
  -- Serperior - Substitute - TM90
  (497, 49700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 48),
  -- Serperior - Nature Power - TM96
  (497, 49700, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 49),
  -- Serperior - Confide - TM100
  (497, 49700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 50),
  -- Serperior - Bind - Tutor
  (497, 49700, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Serperior - Snore - Tutor
  (497, 49700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Serperior - Outrage - Tutor
  (497, 49700, 200, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Serperior - Giga Drain - Tutor
  (497, 49700, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Serperior - Iron Tail - Tutor
  (497, 49700, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Serperior - Synthesis - Tutor
  (497, 49700, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Serperior - Knock Off - Tutor
  (497, 49700, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Serperior - Snatch - Tutor
  (497, 49700, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Serperior - Frenzy Plant - Tutor
  (497, 49700, 338, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Serperior - Gastro Acid - Tutor
  (497, 49700, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Serperior - Worry Seed - Tutor
  (497, 49700, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Serperior - Aqua Tail - Tutor
  (497, 49700, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Serperior - Seed Bomb - Tutor
  (497, 49700, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Serperior - Dragon Pulse - Tutor
  (497, 49700, 406, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Serperior - Defog - Tutor
  (497, 49700, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Serperior - Grass Pledge - Tutor
  (497, 49700, 520, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),

  -- Tepig - Tackle - Level 1
  (498, 49800, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tepig - Tail Whip - Level 3
  (498, 49800, 39, 16, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Tepig - Ember - Level 7
  (498, 49800, 52, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Tepig - Odor Sleuth - Level 9
  (498, 49800, 316, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Tepig - Defense Curl - Level 13
  (498, 49800, 111, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Tepig - Flame Charge - Level 15
  (498, 49800, 488, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Tepig - Smog - Level 19
  (498, 49800, 123, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Tepig - Rollout - Level 21
  (498, 49800, 205, 16, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Tepig - Take Down - Level 25
  (498, 49800, 36, 16, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Tepig - Heat Crash - Level 27
  (498, 49800, 535, 16, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Tepig - Assurance - Level 31
  (498, 49800, 372, 16, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Tepig - Flamethrower - Level 33
  (498, 49800, 53, 16, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Tepig - Head Smash - Level 37
  (498, 49800, 457, 16, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Tepig - Roar - Level 39
  (498, 49800, 46, 16, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Tepig - Flare Blitz - Level 43
  (498, 49800, 394, 16, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Tepig - Work Up - TM01
  (498, 49800, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 16),
  -- Tepig - Roar - TM05
  (498, 49800, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 17),
  -- Tepig - Toxic - TM06
  (498, 49800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Tepig - Hidden Power - TM10
  (498, 49800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Tepig - Sunny Day - TM11
  (498, 49800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Tepig - Taunt - TM12
  (498, 49800, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 21),
  -- Tepig - Protect - TM17
  (498, 49800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Tepig - Frustration - TM21
  (498, 49800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Tepig - Solar Beam - TM22
  (498, 49800, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 24),
  -- Tepig - Return - TM27
  (498, 49800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Tepig - Double Team - TM32
  (498, 49800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Tepig - Flamethrower - TM35
  (498, 49800, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 27),
  -- Tepig - Fire Blast - TM38
  (498, 49800, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 28),
  -- Tepig - Rock Tomb - TM39
  (498, 49800, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 29),
  -- Tepig - Facade - TM42
  (498, 49800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 30),
  -- Tepig - Flame Charge - TM43
  (498, 49800, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 31),
  -- Tepig - Rest - TM44
  (498, 49800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Tepig - Attract - TM45
  (498, 49800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Tepig - Round - TM48
  (498, 49800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 34),
  -- Tepig - Echoed Voice - TM49
  (498, 49800, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 35),
  -- Tepig - Overheat - TM50
  (498, 49800, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 36),
  -- Tepig - Will-O-Wisp - TM61
  (498, 49800, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 37),
  -- Tepig - Gyro Ball - TM74
  (498, 49800, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 38),
  -- Tepig - Grass Knot - TM86
  (498, 49800, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 39),
  -- Tepig - Swagger - TM87
  (498, 49800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 40),
  -- Tepig - Sleep Talk - TM88
  (498, 49800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 41),
  -- Tepig - Substitute - TM90
  (498, 49800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 42),
  -- Tepig - Wild Charge - TM93
  (498, 49800, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 43),
  -- Tepig - Confide - TM100
  (498, 49800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 44),
  -- Tepig - Body Slam - Egg
  (498, 49800, 34, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Tepig - Thrash - Egg
  (498, 49800, 37, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Tepig - Curse - Egg
  (498, 49800, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Tepig - Sleep Talk - Egg
  (498, 49800, 214, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Tepig - Magnitude - Egg
  (498, 49800, 222, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Tepig - Superpower - Egg
  (498, 49800, 276, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Tepig - Yawn - Egg
  (498, 49800, 281, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Tepig - Endeavor - Egg
  (498, 49800, 283, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Tepig - Covet - Egg
  (498, 49800, 343, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Tepig - Sucker Punch - Egg
  (498, 49800, 389, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Tepig - Heavy Slam - Egg
  (498, 49800, 484, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Tepig - Burn Up - Egg
  (498, 49800, 682, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Tepig - Snore - Tutor
  (498, 49800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Tepig - Iron Tail - Tutor
  (498, 49800, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Tepig - Heat Wave - Tutor
  (498, 49800, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Tepig - Helping Hand - Tutor
  (498, 49800, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Tepig - Superpower - Tutor
  (498, 49800, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Tepig - Endeavor - Tutor
  (498, 49800, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Tepig - Covet - Tutor
  (498, 49800, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Tepig - Zen Headbutt - Tutor
  (498, 49800, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Tepig - Fire Pledge - Tutor
  (498, 49800, 519, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Tepig - Stomping Tantrum - Tutor
  (498, 49800, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),

  -- Pignite - Tackle - Level 1
  (499, 49900, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pignite - Tail Whip - Level 1
  (499, 49900, 39, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pignite - Ember - Level 1
  (499, 49900, 52, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pignite - Arm Thrust - Level 1
  (499, 49900, 292, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pignite - Odor Sleuth - Level 1
  (499, 49900, 316, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Pignite - Tail Whip - Level 3
  (499, 49900, 39, 16, NULL, 1, 3, NULL, NULL, NULL, 6),
  -- Pignite - Ember - Level 7
  (499, 49900, 52, 16, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Pignite - Odor Sleuth - Level 9
  (499, 49900, 316, 16, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Pignite - Defense Curl - Level 13
  (499, 49900, 111, 16, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Pignite - Flame Charge - Level 15
  (499, 49900, 488, 16, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Pignite - Smog - Level 20
  (499, 49900, 123, 16, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Pignite - Rollout - Level 23
  (499, 49900, 205, 16, NULL, 1, 23, NULL, NULL, NULL, 12),
  -- Pignite - Take Down - Level 28
  (499, 49900, 36, 16, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Pignite - Heat Crash - Level 31
  (499, 49900, 535, 16, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Pignite - Assurance - Level 36
  (499, 49900, 372, 16, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Pignite - Flamethrower - Level 39
  (499, 49900, 53, 16, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Pignite - Head Smash - Level 44
  (499, 49900, 457, 16, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Pignite - Roar - Level 47
  (499, 49900, 46, 16, NULL, 1, 47, NULL, NULL, NULL, 18),
  -- Pignite - Flare Blitz - Level 52
  (499, 49900, 394, 16, NULL, 1, 52, NULL, NULL, NULL, 19),
  -- Pignite - Work Up - TM01
  (499, 49900, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 20),
  -- Pignite - Roar - TM05
  (499, 49900, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 21),
  -- Pignite - Toxic - TM06
  (499, 49900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Pignite - Hidden Power - TM10
  (499, 49900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Pignite - Sunny Day - TM11
  (499, 49900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 24),
  -- Pignite - Taunt - TM12
  (499, 49900, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 25),
  -- Pignite - Protect - TM17
  (499, 49900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Pignite - Frustration - TM21
  (499, 49900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Pignite - Solar Beam - TM22
  (499, 49900, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 28),
  -- Pignite - Return - TM27
  (499, 49900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Pignite - Brick Break - TM31
  (499, 49900, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 30),
  -- Pignite - Double Team - TM32
  (499, 49900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Pignite - Flamethrower - TM35
  (499, 49900, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 32),
  -- Pignite - Fire Blast - TM38
  (499, 49900, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 33),
  -- Pignite - Rock Tomb - TM39
  (499, 49900, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 34),
  -- Pignite - Facade - TM42
  (499, 49900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 35),
  -- Pignite - Flame Charge - TM43
  (499, 49900, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 36),
  -- Pignite - Rest - TM44
  (499, 49900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 37),
  -- Pignite - Attract - TM45
  (499, 49900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 38),
  -- Pignite - Low Sweep - TM47
  (499, 49900, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 39),
  -- Pignite - Round - TM48
  (499, 49900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 40),
  -- Pignite - Echoed Voice - TM49
  (499, 49900, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 41),
  -- Pignite - Overheat - TM50
  (499, 49900, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 42),
  -- Pignite - Focus Blast - TM52
  (499, 49900, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 43),
  -- Pignite - Fling - TM56
  (499, 49900, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 44),
  -- Pignite - Will-O-Wisp - TM61
  (499, 49900, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 45),
  -- Pignite - Stone Edge - TM71
  (499, 49900, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 46),
  -- Pignite - Gyro Ball - TM74
  (499, 49900, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 47),
  -- Pignite - Bulldoze - TM78
  (499, 49900, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 48),
  -- Pignite - Rock Slide - TM80
  (499, 49900, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 49),
  -- Pignite - Poison Jab - TM84
  (499, 49900, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 50),
  -- Pignite - Grass Knot - TM86
  (499, 49900, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 51),
  -- Pignite - Swagger - TM87
  (499, 49900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 52),
  -- Pignite - Sleep Talk - TM88
  (499, 49900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 53),
  -- Pignite - Substitute - TM90
  (499, 49900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 54),
  -- Pignite - Wild Charge - TM93
  (499, 49900, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 55),
  -- Pignite - Confide - TM100
  (499, 49900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 56),
  -- Pignite - Fire Punch - Tutor
  (499, 49900, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Pignite - Thunder Punch - Tutor
  (499, 49900, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Pignite - Low Kick - Tutor
  (499, 49900, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Pignite - Snore - Tutor
  (499, 49900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Pignite - Iron Tail - Tutor
  (499, 49900, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Pignite - Heat Wave - Tutor
  (499, 49900, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Pignite - Focus Punch - Tutor
  (499, 49900, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Pignite - Helping Hand - Tutor
  (499, 49900, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Pignite - Superpower - Tutor
  (499, 49900, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Pignite - Endeavor - Tutor
  (499, 49900, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Pignite - Covet - Tutor
  (499, 49900, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Pignite - Zen Headbutt - Tutor
  (499, 49900, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Pignite - Fire Pledge - Tutor
  (499, 49900, 519, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Pignite - Stomping Tantrum - Tutor
  (499, 49900, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Pignite - Arm Thrust - Evolution
  (499, 49900, 292, 16, NULL, 7, NULL, NULL, NULL, NULL, 71),

  -- Emboar - Tackle - Level 1
  (500, 50000, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Emboar - Tail Whip - Level 1
  (500, 50000, 39, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Emboar - Ember - Level 1
  (500, 50000, 52, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Emboar - Arm Thrust - Level 1
  (500, 50000, 292, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Emboar - Odor Sleuth - Level 1
  (500, 50000, 316, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Emboar - Hammer Arm - Level 1
  (500, 50000, 359, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Emboar - Tail Whip - Level 3
  (500, 50000, 39, 16, NULL, 1, 3, NULL, NULL, NULL, 7),
  -- Emboar - Ember - Level 7
  (500, 50000, 52, 16, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Emboar - Odor Sleuth - Level 9
  (500, 50000, 316, 16, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Emboar - Defense Curl - Level 13
  (500, 50000, 111, 16, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Emboar - Flame Charge - Level 15
  (500, 50000, 488, 16, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Emboar - Smog - Level 20
  (500, 50000, 123, 16, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Emboar - Rollout - Level 23
  (500, 50000, 205, 16, NULL, 1, 23, NULL, NULL, NULL, 13),
  -- Emboar - Take Down - Level 28
  (500, 50000, 36, 16, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Emboar - Heat Crash - Level 31
  (500, 50000, 535, 16, NULL, 1, 31, NULL, NULL, NULL, 15),
  -- Emboar - Assurance - Level 38
  (500, 50000, 372, 16, NULL, 1, 38, NULL, NULL, NULL, 16),
  -- Emboar - Flamethrower - Level 43
  (500, 50000, 53, 16, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Emboar - Head Smash - Level 50
  (500, 50000, 457, 16, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Emboar - Roar - Level 55
  (500, 50000, 46, 16, NULL, 1, 55, NULL, NULL, NULL, 19),
  -- Emboar - Flare Blitz - Level 62
  (500, 50000, 394, 16, NULL, 1, 62, NULL, NULL, NULL, 20),
  -- Emboar - Work Up - TM01
  (500, 50000, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 21),
  -- Emboar - Roar - TM05
  (500, 50000, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 22),
  -- Emboar - Toxic - TM06
  (500, 50000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 23),
  -- Emboar - Bulk Up - TM08
  (500, 50000, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 24),
  -- Emboar - Hidden Power - TM10
  (500, 50000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 25),
  -- Emboar - Sunny Day - TM11
  (500, 50000, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 26),
  -- Emboar - Taunt - TM12
  (500, 50000, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 27),
  -- Emboar - Hyper Beam - TM15
  (500, 50000, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 28),
  -- Emboar - Protect - TM17
  (500, 50000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 29),
  -- Emboar - Frustration - TM21
  (500, 50000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 30),
  -- Emboar - Solar Beam - TM22
  (500, 50000, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 31),
  -- Emboar - Smack Down - TM23
  (500, 50000, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 32),
  -- Emboar - Earthquake - TM26
  (500, 50000, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 33),
  -- Emboar - Return - TM27
  (500, 50000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 34),
  -- Emboar - Brick Break - TM31
  (500, 50000, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 35),
  -- Emboar - Double Team - TM32
  (500, 50000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 36),
  -- Emboar - Flamethrower - TM35
  (500, 50000, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 37),
  -- Emboar - Fire Blast - TM38
  (500, 50000, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 38),
  -- Emboar - Rock Tomb - TM39
  (500, 50000, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 39),
  -- Emboar - Facade - TM42
  (500, 50000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 40),
  -- Emboar - Flame Charge - TM43
  (500, 50000, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 41),
  -- Emboar - Rest - TM44
  (500, 50000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 42),
  -- Emboar - Attract - TM45
  (500, 50000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 43),
  -- Emboar - Low Sweep - TM47
  (500, 50000, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 44),
  -- Emboar - Round - TM48
  (500, 50000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 45),
  -- Emboar - Echoed Voice - TM49
  (500, 50000, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 46),
  -- Emboar - Overheat - TM50
  (500, 50000, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 47),
  -- Emboar - Focus Blast - TM52
  (500, 50000, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 48),
  -- Emboar - Scald - TM55
  (500, 50000, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 49),
  -- Emboar - Fling - TM56
  (500, 50000, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 50),
  -- Emboar - Will-O-Wisp - TM61
  (500, 50000, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 51),
  -- Emboar - Giga Impact - TM68
  (500, 50000, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 52),
  -- Emboar - Stone Edge - TM71
  (500, 50000, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 53),
  -- Emboar - Gyro Ball - TM74
  (500, 50000, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 54),
  -- Emboar - Bulldoze - TM78
  (500, 50000, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 55),
  -- Emboar - Rock Slide - TM80
  (500, 50000, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 56),
  -- Emboar - Poison Jab - TM84
  (500, 50000, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 57),
  -- Emboar - Grass Knot - TM86
  (500, 50000, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 58),
  -- Emboar - Swagger - TM87
  (500, 50000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 59),
  -- Emboar - Sleep Talk - TM88
  (500, 50000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 60),
  -- Emboar - Substitute - TM90
  (500, 50000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 61),
  -- Emboar - Wild Charge - TM93
  (500, 50000, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 62),
  -- Emboar - Confide - TM100
  (500, 50000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 63),
  -- Emboar - Fire Punch - Tutor
  (500, 50000, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Emboar - Thunder Punch - Tutor
  (500, 50000, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Emboar - Low Kick - Tutor
  (500, 50000, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Emboar - Snore - Tutor
  (500, 50000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Emboar - Iron Tail - Tutor
  (500, 50000, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Emboar - Heat Wave - Tutor
  (500, 50000, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Emboar - Focus Punch - Tutor
  (500, 50000, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Emboar - Helping Hand - Tutor
  (500, 50000, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Emboar - Superpower - Tutor
  (500, 50000, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Emboar - Endeavor - Tutor
  (500, 50000, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Emboar - Blast Burn - Tutor
  (500, 50000, 307, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Emboar - Block - Tutor
  (500, 50000, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Emboar - Covet - Tutor
  (500, 50000, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Emboar - Zen Headbutt - Tutor
  (500, 50000, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Emboar - Iron Head - Tutor
  (500, 50000, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Emboar - Fire Pledge - Tutor
  (500, 50000, 519, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Emboar - Stomping Tantrum - Tutor
  (500, 50000, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),

  -- Oshawott - Tackle - Level 1
  (501, 50100, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Oshawott - Tail Whip - Level 5
  (501, 50100, 39, 16, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Oshawott - Water Gun - Level 7
  (501, 50100, 55, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Oshawott - Water Sport - Level 11
  (501, 50100, 346, 16, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Oshawott - Focus Energy - Level 13
  (501, 50100, 116, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Oshawott - Razor Shell - Level 17
  (501, 50100, 534, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Oshawott - Fury Cutter - Level 19
  (501, 50100, 210, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Oshawott - Water Pulse - Level 23
  (501, 50100, 352, 16, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Oshawott - Revenge - Level 25
  (501, 50100, 279, 16, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Oshawott - Aqua Jet - Level 29
  (501, 50100, 453, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Oshawott - Encore - Level 31
  (501, 50100, 227, 16, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Oshawott - Aqua Tail - Level 35
  (501, 50100, 401, 16, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Oshawott - Retaliate - Level 37
  (501, 50100, 514, 16, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Oshawott - Swords Dance - Level 41
  (501, 50100, 14, 16, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Oshawott - Hydro Pump - Level 43
  (501, 50100, 56, 16, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Oshawott - Work Up - TM01
  (501, 50100, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 16),
  -- Oshawott - Toxic - TM06
  (501, 50100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Oshawott - Hail - TM07
  (501, 50100, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 18),
  -- Oshawott - Hidden Power - TM10
  (501, 50100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Oshawott - Taunt - TM12
  (501, 50100, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 20),
  -- Oshawott - Ice Beam - TM13
  (501, 50100, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 21),
  -- Oshawott - Blizzard - TM14
  (501, 50100, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 22),
  -- Oshawott - Protect - TM17
  (501, 50100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Oshawott - Rain Dance - TM18
  (501, 50100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Oshawott - Frustration - TM21
  (501, 50100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Oshawott - Return - TM27
  (501, 50100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Oshawott - Double Team - TM32
  (501, 50100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 27),
  -- Oshawott - Aerial Ace - TM40
  (501, 50100, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 28),
  -- Oshawott - Facade - TM42
  (501, 50100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Oshawott - Rest - TM44
  (501, 50100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Oshawott - Attract - TM45
  (501, 50100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Oshawott - Round - TM48
  (501, 50100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 32),
  -- Oshawott - False Swipe - TM54
  (501, 50100, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 33),
  -- Oshawott - Scald - TM55
  (501, 50100, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 34),
  -- Oshawott - Fling - TM56
  (501, 50100, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 35),
  -- Oshawott - Swords Dance - TM75
  (501, 50100, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 36),
  -- Oshawott - X-Scissor - TM81
  (501, 50100, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 37),
  -- Oshawott - Grass Knot - TM86
  (501, 50100, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 38),
  -- Oshawott - Swagger - TM87
  (501, 50100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 39),
  -- Oshawott - Sleep Talk - TM88
  (501, 50100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 40),
  -- Oshawott - Substitute - TM90
  (501, 50100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 41),
  -- Oshawott - Surf - TM94
  (501, 50100, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 42),
  -- Oshawott - Waterfall - TM98
  (501, 50100, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 43),
  -- Oshawott - Confide - TM100
  (501, 50100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 44),
  -- Oshawott - Screech - Egg
  (501, 50100, 103, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Oshawott - Detect - Egg
  (501, 50100, 197, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Oshawott - Brine - Egg
  (501, 50100, 362, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Oshawott - Assurance - Egg
  (501, 50100, 372, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Oshawott - Trump Card - Egg
  (501, 50100, 376, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Oshawott - Copycat - Egg
  (501, 50100, 383, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Oshawott - Night Slash - Egg
  (501, 50100, 400, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Oshawott - Air Slash - Egg
  (501, 50100, 403, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Oshawott - Sacred Sword - Egg
  (501, 50100, 533, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Oshawott - Snore - Tutor
  (501, 50100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Oshawott - Icy Wind - Tutor
  (501, 50100, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Oshawott - Iron Tail - Tutor
  (501, 50100, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Oshawott - Helping Hand - Tutor
  (501, 50100, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Oshawott - Covet - Tutor
  (501, 50100, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Oshawott - Water Pulse - Tutor
  (501, 50100, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Oshawott - Aqua Tail - Tutor
  (501, 50100, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Oshawott - Water Pledge - Tutor
  (501, 50100, 518, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),

  -- Dewott - Tackle - Level 1
  (502, 50200, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dewott - Tail Whip - Level 1
  (502, 50200, 39, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dewott - Water Gun - Level 1
  (502, 50200, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dewott - Water Sport - Level 1
  (502, 50200, 346, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dewott - Tail Whip - Level 5
  (502, 50200, 39, 16, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Dewott - Water Gun - Level 7
  (502, 50200, 55, 16, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Dewott - Water Sport - Level 11
  (502, 50200, 346, 16, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Dewott - Focus Energy - Level 13
  (502, 50200, 116, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Dewott - Razor Shell - Level 18
  (502, 50200, 534, 16, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Dewott - Fury Cutter - Level 21
  (502, 50200, 210, 16, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Dewott - Water Pulse - Level 26
  (502, 50200, 352, 16, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Dewott - Revenge - Level 29
  (502, 50200, 279, 16, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Dewott - Aqua Jet - Level 34
  (502, 50200, 453, 16, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Dewott - Encore - Level 37
  (502, 50200, 227, 16, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Dewott - Aqua Tail - Level 42
  (502, 50200, 401, 16, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Dewott - Retaliate - Level 45
  (502, 50200, 514, 16, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Dewott - Swords Dance - Level 50
  (502, 50200, 14, 16, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Dewott - Hydro Pump - Level 53
  (502, 50200, 56, 16, NULL, 1, 53, NULL, NULL, NULL, 18),
  -- Dewott - Work Up - TM01
  (502, 50200, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 19),
  -- Dewott - Toxic - TM06
  (502, 50200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Dewott - Hail - TM07
  (502, 50200, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 21),
  -- Dewott - Hidden Power - TM10
  (502, 50200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Dewott - Taunt - TM12
  (502, 50200, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 23),
  -- Dewott - Ice Beam - TM13
  (502, 50200, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 24),
  -- Dewott - Blizzard - TM14
  (502, 50200, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 25),
  -- Dewott - Protect - TM17
  (502, 50200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Dewott - Rain Dance - TM18
  (502, 50200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Dewott - Frustration - TM21
  (502, 50200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Dewott - Return - TM27
  (502, 50200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Dewott - Double Team - TM32
  (502, 50200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Dewott - Aerial Ace - TM40
  (502, 50200, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 31),
  -- Dewott - Facade - TM42
  (502, 50200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 32),
  -- Dewott - Rest - TM44
  (502, 50200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 33),
  -- Dewott - Attract - TM45
  (502, 50200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 34),
  -- Dewott - Round - TM48
  (502, 50200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Dewott - False Swipe - TM54
  (502, 50200, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 36),
  -- Dewott - Scald - TM55
  (502, 50200, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 37),
  -- Dewott - Fling - TM56
  (502, 50200, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 38),
  -- Dewott - Swords Dance - TM75
  (502, 50200, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 39),
  -- Dewott - X-Scissor - TM81
  (502, 50200, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 40),
  -- Dewott - Grass Knot - TM86
  (502, 50200, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 41),
  -- Dewott - Swagger - TM87
  (502, 50200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 42),
  -- Dewott - Sleep Talk - TM88
  (502, 50200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 43),
  -- Dewott - Substitute - TM90
  (502, 50200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 44),
  -- Dewott - Surf - TM94
  (502, 50200, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 45),
  -- Dewott - Waterfall - TM98
  (502, 50200, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 46),
  -- Dewott - Confide - TM100
  (502, 50200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 47),
  -- Dewott - Snore - Tutor
  (502, 50200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Dewott - Icy Wind - Tutor
  (502, 50200, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Dewott - Iron Tail - Tutor
  (502, 50200, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Dewott - Helping Hand - Tutor
  (502, 50200, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Dewott - Covet - Tutor
  (502, 50200, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Dewott - Water Pulse - Tutor
  (502, 50200, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Dewott - Aqua Tail - Tutor
  (502, 50200, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Dewott - Water Pledge - Tutor
  (502, 50200, 518, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),

  -- Samurott - Tackle - Level 1
  (503, 50300, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Samurott - Tail Whip - Level 1
  (503, 50300, 39, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Samurott - Water Gun - Level 1
  (503, 50300, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Samurott - Slash - Level 1
  (503, 50300, 163, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Samurott - Megahorn - Level 1
  (503, 50300, 224, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Samurott - Water Sport - Level 1
  (503, 50300, 346, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Samurott - Tail Whip - Level 5
  (503, 50300, 39, 16, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Samurott - Water Gun - Level 7
  (503, 50300, 55, 16, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Samurott - Water Sport - Level 11
  (503, 50300, 346, 16, NULL, 1, 11, NULL, NULL, NULL, 9),
  -- Samurott - Focus Energy - Level 13
  (503, 50300, 116, 16, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Samurott - Razor Shell - Level 18
  (503, 50300, 534, 16, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Samurott - Fury Cutter - Level 21
  (503, 50300, 210, 16, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Samurott - Water Pulse - Level 25
  (503, 50300, 352, 16, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Samurott - Revenge - Level 29
  (503, 50300, 279, 16, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Samurott - Aqua Jet - Level 34
  (503, 50300, 453, 16, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Samurott - Encore - Level 39
  (503, 50300, 227, 16, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Samurott - Aqua Tail - Level 46
  (503, 50300, 401, 16, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Samurott - Retaliate - Level 51
  (503, 50300, 514, 16, NULL, 1, 51, NULL, NULL, NULL, 18),
  -- Samurott - Swords Dance - Level 58
  (503, 50300, 14, 16, NULL, 1, 58, NULL, NULL, NULL, 19),
  -- Samurott - Hydro Pump - Level 63
  (503, 50300, 56, 16, NULL, 1, 63, NULL, NULL, NULL, 20),
  -- Samurott - Work Up - TM01
  (503, 50300, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 21),
  -- Samurott - Toxic - TM06
  (503, 50300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Samurott - Hail - TM07
  (503, 50300, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 23),
  -- Samurott - Hidden Power - TM10
  (503, 50300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 24),
  -- Samurott - Taunt - TM12
  (503, 50300, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 25),
  -- Samurott - Ice Beam - TM13
  (503, 50300, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 26),
  -- Samurott - Blizzard - TM14
  (503, 50300, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 27),
  -- Samurott - Hyper Beam - TM15
  (503, 50300, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 28),
  -- Samurott - Protect - TM17
  (503, 50300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 29),
  -- Samurott - Rain Dance - TM18
  (503, 50300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 30),
  -- Samurott - Frustration - TM21
  (503, 50300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 31),
  -- Samurott - Return - TM27
  (503, 50300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 32),
  -- Samurott - Double Team - TM32
  (503, 50300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Samurott - Aerial Ace - TM40
  (503, 50300, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 34),
  -- Samurott - Facade - TM42
  (503, 50300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 35),
  -- Samurott - Rest - TM44
  (503, 50300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 36),
  -- Samurott - Attract - TM45
  (503, 50300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 37),
  -- Samurott - Round - TM48
  (503, 50300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 38),
  -- Samurott - False Swipe - TM54
  (503, 50300, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 39),
  -- Samurott - Scald - TM55
  (503, 50300, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 40),
  -- Samurott - Fling - TM56
  (503, 50300, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 41),
  -- Samurott - Smart Strike - TM67
  (503, 50300, 684, 16, NULL, 2, NULL, NULL, 16002067, NULL, 42),
  -- Samurott - Giga Impact - TM68
  (503, 50300, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 43),
  -- Samurott - Swords Dance - TM75
  (503, 50300, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 44),
  -- Samurott - X-Scissor - TM81
  (503, 50300, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 45),
  -- Samurott - Dragon Tail - TM82
  (503, 50300, 525, 16, NULL, 2, NULL, NULL, 16002082, NULL, 46),
  -- Samurott - Grass Knot - TM86
  (503, 50300, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 47),
  -- Samurott - Swagger - TM87
  (503, 50300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 48),
  -- Samurott - Sleep Talk - TM88
  (503, 50300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 49),
  -- Samurott - Substitute - TM90
  (503, 50300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 50),
  -- Samurott - Surf - TM94
  (503, 50300, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 51),
  -- Samurott - Waterfall - TM98
  (503, 50300, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 52),
  -- Samurott - Confide - TM100
  (503, 50300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 53),
  -- Samurott - Snore - Tutor
  (503, 50300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Samurott - Icy Wind - Tutor
  (503, 50300, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Samurott - Iron Tail - Tutor
  (503, 50300, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Samurott - Helping Hand - Tutor
  (503, 50300, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Samurott - Superpower - Tutor
  (503, 50300, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Samurott - Knock Off - Tutor
  (503, 50300, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Samurott - Hydro Cannon - Tutor
  (503, 50300, 308, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Samurott - Block - Tutor
  (503, 50300, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Samurott - Covet - Tutor
  (503, 50300, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Samurott - Water Pulse - Tutor
  (503, 50300, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Samurott - Aqua Tail - Tutor
  (503, 50300, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Samurott - Water Pledge - Tutor
  (503, 50300, 518, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Samurott - Liquidation - Tutor
  (503, 50300, 710, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Samurott - Slash - Evolution
  (503, 50300, 163, 16, NULL, 7, NULL, NULL, NULL, NULL, 67),

  -- Patrat - Tackle - Level 1
  (504, 50400, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Patrat - Leer - Level 3
  (504, 50400, 43, 16, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Patrat - Bite - Level 6
  (504, 50400, 44, 16, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Patrat - Bide - Level 8
  (504, 50400, 117, 16, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Patrat - Detect - Level 11
  (504, 50400, 197, 16, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Patrat - Sand Attack - Level 13
  (504, 50400, 28, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Patrat - Crunch - Level 16
  (504, 50400, 242, 16, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Patrat - Hypnosis - Level 18
  (504, 50400, 95, 16, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Patrat - Super Fang - Level 21
  (504, 50400, 162, 16, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Patrat - After You - Level 23
  (504, 50400, 495, 16, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Patrat - Focus Energy - Level 26
  (504, 50400, 116, 16, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Patrat - Work Up - Level 28
  (504, 50400, 526, 16, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Patrat - Hyper Fang - Level 31
  (504, 50400, 158, 16, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Patrat - Nasty Plot - Level 33
  (504, 50400, 417, 16, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Patrat - Mean Look - Level 36
  (504, 50400, 212, 16, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Patrat - Baton Pass - Level 38
  (504, 50400, 226, 16, NULL, 1, 38, NULL, NULL, NULL, 16),
  -- Patrat - Slam - Level 41
  (504, 50400, 21, 16, NULL, 1, 41, NULL, NULL, NULL, 17),
  -- Patrat - Work Up - TM01
  (504, 50400, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 18),
  -- Patrat - Toxic - TM06
  (504, 50400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Patrat - Hidden Power - TM10
  (504, 50400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Patrat - Sunny Day - TM11
  (504, 50400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Patrat - Protect - TM17
  (504, 50400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Patrat - Rain Dance - TM18
  (504, 50400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 23),
  -- Patrat - Frustration - TM21
  (504, 50400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Patrat - Thunderbolt - TM24
  (504, 50400, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 25),
  -- Patrat - Return - TM27
  (504, 50400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Patrat - Shadow Ball - TM30
  (504, 50400, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 27),
  -- Patrat - Double Team - TM32
  (504, 50400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Patrat - Facade - TM42
  (504, 50400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Patrat - Rest - TM44
  (504, 50400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Patrat - Attract - TM45
  (504, 50400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Patrat - Round - TM48
  (504, 50400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 32),
  -- Patrat - Fling - TM56
  (504, 50400, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 33),
  -- Patrat - Swords Dance - TM75
  (504, 50400, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 34),
  -- Patrat - Grass Knot - TM86
  (504, 50400, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 35),
  -- Patrat - Swagger - TM87
  (504, 50400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 36),
  -- Patrat - Sleep Talk - TM88
  (504, 50400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 37),
  -- Patrat - Substitute - TM90
  (504, 50400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 38),
  -- Patrat - Confide - TM100
  (504, 50400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 39),
  -- Patrat - Screech - Egg
  (504, 50400, 103, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Patrat - Flail - Egg
  (504, 50400, 175, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Patrat - Foresight - Egg
  (504, 50400, 193, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Patrat - Pursuit - Egg
  (504, 50400, 228, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Patrat - Iron Tail - Egg
  (504, 50400, 231, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Patrat - Revenge - Egg
  (504, 50400, 279, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Patrat - Bullet Seed - Egg
  (504, 50400, 331, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Patrat - Assurance - Egg
  (504, 50400, 372, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Patrat - Tearful Look - Egg
  (504, 50400, 715, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Patrat - Low Kick - Tutor
  (504, 50400, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Patrat - Super Fang - Tutor
  (504, 50400, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Patrat - Snore - Tutor
  (504, 50400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Patrat - Iron Tail - Tutor
  (504, 50400, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Patrat - Helping Hand - Tutor
  (504, 50400, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Patrat - Endeavor - Tutor
  (504, 50400, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Patrat - Covet - Tutor
  (504, 50400, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Patrat - Shock Wave - Tutor
  (504, 50400, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Patrat - Last Resort - Tutor
  (504, 50400, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Patrat - Aqua Tail - Tutor
  (504, 50400, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Patrat - Seed Bomb - Tutor
  (504, 50400, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Patrat - Zen Headbutt - Tutor
  (504, 50400, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Patrat - Gunk Shot - Tutor
  (504, 50400, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Patrat - After You - Tutor
  (504, 50400, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Patrat - Laser Focus - Tutor
  (504, 50400, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),

  -- Watchog - Tackle - Level 1
  (505, 50500, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Watchog - Leer - Level 1
  (505, 50500, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Watchog - Bite - Level 1
  (505, 50500, 44, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Watchog - Low Kick - Level 1
  (505, 50500, 67, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Watchog - Confuse Ray - Level 1
  (505, 50500, 109, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Watchog - Rototiller - Level 1
  (505, 50500, 563, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Watchog - Leer - Level 3
  (505, 50500, 43, 16, NULL, 1, 3, NULL, NULL, NULL, 7),
  -- Watchog - Bite - Level 6
  (505, 50500, 44, 16, NULL, 1, 6, NULL, NULL, NULL, 8),
  -- Watchog - Bide - Level 8
  (505, 50500, 117, 16, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Watchog - Detect - Level 11
  (505, 50500, 197, 16, NULL, 1, 11, NULL, NULL, NULL, 10),
  -- Watchog - Sand Attack - Level 13
  (505, 50500, 28, 16, NULL, 1, 13, NULL, NULL, NULL, 11),
  -- Watchog - Crunch - Level 16
  (505, 50500, 242, 16, NULL, 1, 16, NULL, NULL, NULL, 12),
  -- Watchog - Hypnosis - Level 18
  (505, 50500, 95, 16, NULL, 1, 18, NULL, NULL, NULL, 13),
  -- Watchog - Super Fang - Level 22
  (505, 50500, 162, 16, NULL, 1, 22, NULL, NULL, NULL, 14),
  -- Watchog - After You - Level 25
  (505, 50500, 495, 16, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Watchog - Focus Energy - Level 29
  (505, 50500, 116, 16, NULL, 1, 29, NULL, NULL, NULL, 16),
  -- Watchog - Psych Up - Level 32
  (505, 50500, 244, 16, NULL, 1, 32, NULL, NULL, NULL, 17),
  -- Watchog - Hyper Fang - Level 36
  (505, 50500, 158, 16, NULL, 1, 36, NULL, NULL, NULL, 18),
  -- Watchog - Nasty Plot - Level 39
  (505, 50500, 417, 16, NULL, 1, 39, NULL, NULL, NULL, 19),
  -- Watchog - Mean Look - Level 43
  (505, 50500, 212, 16, NULL, 1, 43, NULL, NULL, NULL, 20),
  -- Watchog - Baton Pass - Level 46
  (505, 50500, 226, 16, NULL, 1, 46, NULL, NULL, NULL, 21),
  -- Watchog - Slam - Level 50
  (505, 50500, 21, 16, NULL, 1, 50, NULL, NULL, NULL, 22),
  -- Watchog - Work Up - TM01
  (505, 50500, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 23),
  -- Watchog - Toxic - TM06
  (505, 50500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 24),
  -- Watchog - Hidden Power - TM10
  (505, 50500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 25),
  -- Watchog - Sunny Day - TM11
  (505, 50500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 26),
  -- Watchog - Hyper Beam - TM15
  (505, 50500, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 27),
  -- Watchog - Light Screen - TM16
  (505, 50500, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 28),
  -- Watchog - Protect - TM17
  (505, 50500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 29),
  -- Watchog - Rain Dance - TM18
  (505, 50500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 30),
  -- Watchog - Frustration - TM21
  (505, 50500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 31),
  -- Watchog - Thunderbolt - TM24
  (505, 50500, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 32),
  -- Watchog - Thunder - TM25
  (505, 50500, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 33),
  -- Watchog - Return - TM27
  (505, 50500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 34),
  -- Watchog - Shadow Ball - TM30
  (505, 50500, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 35),
  -- Watchog - Double Team - TM32
  (505, 50500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 36),
  -- Watchog - Flamethrower - TM35
  (505, 50500, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 37),
  -- Watchog - Facade - TM42
  (505, 50500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 38),
  -- Watchog - Rest - TM44
  (505, 50500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 39),
  -- Watchog - Attract - TM45
  (505, 50500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 40),
  -- Watchog - Round - TM48
  (505, 50500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 41),
  -- Watchog - Focus Blast - TM52
  (505, 50500, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 42),
  -- Watchog - Fling - TM56
  (505, 50500, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 43),
  -- Watchog - Giga Impact - TM68
  (505, 50500, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 44),
  -- Watchog - Thunder Wave - TM73
  (505, 50500, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 45),
  -- Watchog - Swords Dance - TM75
  (505, 50500, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 46),
  -- Watchog - Psych Up - TM77
  (505, 50500, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 47),
  -- Watchog - Dream Eater - TM85
  (505, 50500, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 48),
  -- Watchog - Grass Knot - TM86
  (505, 50500, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 49),
  -- Watchog - Swagger - TM87
  (505, 50500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 50),
  -- Watchog - Sleep Talk - TM88
  (505, 50500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 51),
  -- Watchog - Substitute - TM90
  (505, 50500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 52),
  -- Watchog - Confide - TM100
  (505, 50500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 53),
  -- Watchog - Fire Punch - Tutor
  (505, 50500, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Watchog - Ice Punch - Tutor
  (505, 50500, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Watchog - Thunder Punch - Tutor
  (505, 50500, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Watchog - Low Kick - Tutor
  (505, 50500, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Watchog - Super Fang - Tutor
  (505, 50500, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Watchog - Snore - Tutor
  (505, 50500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Watchog - Iron Tail - Tutor
  (505, 50500, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Watchog - Focus Punch - Tutor
  (505, 50500, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Watchog - Helping Hand - Tutor
  (505, 50500, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Watchog - Knock Off - Tutor
  (505, 50500, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Watchog - Endeavor - Tutor
  (505, 50500, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Watchog - Signal Beam - Tutor
  (505, 50500, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Watchog - Covet - Tutor
  (505, 50500, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Watchog - Shock Wave - Tutor
  (505, 50500, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Watchog - Last Resort - Tutor
  (505, 50500, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Watchog - Aqua Tail - Tutor
  (505, 50500, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Watchog - Seed Bomb - Tutor
  (505, 50500, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Watchog - Zen Headbutt - Tutor
  (505, 50500, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Watchog - Gunk Shot - Tutor
  (505, 50500, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Watchog - After You - Tutor
  (505, 50500, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Watchog - Laser Focus - Tutor
  (505, 50500, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Watchog - Stomping Tantrum - Tutor
  (505, 50500, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Watchog - Confuse Ray - Evolution
  (505, 50500, 109, 16, NULL, 7, NULL, NULL, NULL, NULL, 76),

  -- Lillipup - Tackle - Level 1
  (506, 50600, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lillipup - Leer - Level 1
  (506, 50600, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lillipup - Odor Sleuth - Level 5
  (506, 50600, 316, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Lillipup - Bite - Level 8
  (506, 50600, 44, 16, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Lillipup - Baby-Doll Eyes - Level 10
  (506, 50600, 608, 16, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Lillipup - Helping Hand - Level 12
  (506, 50600, 270, 16, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Lillipup - Take Down - Level 15
  (506, 50600, 36, 16, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Lillipup - Work Up - Level 19
  (506, 50600, 526, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Lillipup - Crunch - Level 22
  (506, 50600, 242, 16, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Lillipup - Roar - Level 26
  (506, 50600, 46, 16, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Lillipup - Retaliate - Level 29
  (506, 50600, 514, 16, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Lillipup - Reversal - Level 33
  (506, 50600, 179, 16, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Lillipup - Last Resort - Level 36
  (506, 50600, 387, 16, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Lillipup - Giga Impact - Level 40
  (506, 50600, 416, 16, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Lillipup - Play Rough - Level 45
  (506, 50600, 583, 16, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Lillipup - Work Up - TM01
  (506, 50600, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 16),
  -- Lillipup - Roar - TM05
  (506, 50600, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 17),
  -- Lillipup - Toxic - TM06
  (506, 50600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Lillipup - Hidden Power - TM10
  (506, 50600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Lillipup - Sunny Day - TM11
  (506, 50600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Lillipup - Protect - TM17
  (506, 50600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Lillipup - Rain Dance - TM18
  (506, 50600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Lillipup - Frustration - TM21
  (506, 50600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Lillipup - Thunderbolt - TM24
  (506, 50600, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 24),
  -- Lillipup - Return - TM27
  (506, 50600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Lillipup - Shadow Ball - TM30
  (506, 50600, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 26),
  -- Lillipup - Double Team - TM32
  (506, 50600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 27),
  -- Lillipup - Rock Tomb - TM39
  (506, 50600, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 28),
  -- Lillipup - Aerial Ace - TM40
  (506, 50600, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 29),
  -- Lillipup - Facade - TM42
  (506, 50600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 30),
  -- Lillipup - Rest - TM44
  (506, 50600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 31),
  -- Lillipup - Attract - TM45
  (506, 50600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 32),
  -- Lillipup - Round - TM48
  (506, 50600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Lillipup - Giga Impact - TM68
  (506, 50600, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 34),
  -- Lillipup - Thunder Wave - TM73
  (506, 50600, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 35),
  -- Lillipup - Swagger - TM87
  (506, 50600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 36),
  -- Lillipup - Sleep Talk - TM88
  (506, 50600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 37),
  -- Lillipup - Substitute - TM90
  (506, 50600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 38),
  -- Lillipup - Wild Charge - TM93
  (506, 50600, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 39),
  -- Lillipup - Snarl - TM95
  (506, 50600, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 40),
  -- Lillipup - Confide - TM100
  (506, 50600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 41),
  -- Lillipup - Sand Attack - Egg
  (506, 50600, 28, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Lillipup - Lick - Egg
  (506, 50600, 122, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Lillipup - Mud-Slap - Egg
  (506, 50600, 189, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Lillipup - Endure - Egg
  (506, 50600, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Lillipup - Charm - Egg
  (506, 50600, 204, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Lillipup - Pursuit - Egg
  (506, 50600, 228, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Lillipup - Yawn - Egg
  (506, 50600, 281, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Lillipup - Howl - Egg
  (506, 50600, 336, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Lillipup - Thunder Fang - Egg
  (506, 50600, 422, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Lillipup - Ice Fang - Egg
  (506, 50600, 423, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Lillipup - Fire Fang - Egg
  (506, 50600, 424, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Lillipup - After You - Egg
  (506, 50600, 495, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Lillipup - Psychic Fangs - Egg
  (506, 50600, 706, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Lillipup - Snore - Tutor
  (506, 50600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Lillipup - Uproar - Tutor
  (506, 50600, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Lillipup - Helping Hand - Tutor
  (506, 50600, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Lillipup - Hyper Voice - Tutor
  (506, 50600, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Lillipup - Covet - Tutor
  (506, 50600, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Lillipup - Shock Wave - Tutor
  (506, 50600, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Lillipup - Last Resort - Tutor
  (506, 50600, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Lillipup - After You - Tutor
  (506, 50600, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),

  -- Herdier - Tackle - Level 1
  (507, 50700, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Herdier - Leer - Level 1
  (507, 50700, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Herdier - Bite - Level 1
  (507, 50700, 44, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Herdier - Odor Sleuth - Level 1
  (507, 50700, 316, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Herdier - Odor Sleuth - Level 5
  (507, 50700, 316, 16, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Herdier - Bite - Level 8
  (507, 50700, 44, 16, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Herdier - Helping Hand - Level 12
  (507, 50700, 270, 16, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Herdier - Take Down - Level 15
  (507, 50700, 36, 16, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Herdier - Work Up - Level 20
  (507, 50700, 526, 16, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Herdier - Crunch - Level 24
  (507, 50700, 242, 16, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Herdier - Roar - Level 29
  (507, 50700, 46, 16, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Herdier - Retaliate - Level 33
  (507, 50700, 514, 16, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Herdier - Reversal - Level 38
  (507, 50700, 179, 16, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Herdier - Last Resort - Level 42
  (507, 50700, 387, 16, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Herdier - Giga Impact - Level 47
  (507, 50700, 416, 16, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Herdier - Play Rough - Level 52
  (507, 50700, 583, 16, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Herdier - Work Up - TM01
  (507, 50700, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 17),
  -- Herdier - Roar - TM05
  (507, 50700, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 18),
  -- Herdier - Toxic - TM06
  (507, 50700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Herdier - Hidden Power - TM10
  (507, 50700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Herdier - Sunny Day - TM11
  (507, 50700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Herdier - Protect - TM17
  (507, 50700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Herdier - Rain Dance - TM18
  (507, 50700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 23),
  -- Herdier - Frustration - TM21
  (507, 50700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Herdier - Thunderbolt - TM24
  (507, 50700, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 25),
  -- Herdier - Return - TM27
  (507, 50700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Herdier - Shadow Ball - TM30
  (507, 50700, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 27),
  -- Herdier - Double Team - TM32
  (507, 50700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Herdier - Rock Tomb - TM39
  (507, 50700, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 29),
  -- Herdier - Aerial Ace - TM40
  (507, 50700, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 30),
  -- Herdier - Facade - TM42
  (507, 50700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Herdier - Rest - TM44
  (507, 50700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Herdier - Attract - TM45
  (507, 50700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Herdier - Round - TM48
  (507, 50700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 34),
  -- Herdier - Payback - TM66
  (507, 50700, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 35),
  -- Herdier - Giga Impact - TM68
  (507, 50700, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 36),
  -- Herdier - Thunder Wave - TM73
  (507, 50700, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 37),
  -- Herdier - Swagger - TM87
  (507, 50700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 38),
  -- Herdier - Sleep Talk - TM88
  (507, 50700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 39),
  -- Herdier - Substitute - TM90
  (507, 50700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 40),
  -- Herdier - Wild Charge - TM93
  (507, 50700, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 41),
  -- Herdier - Surf - TM94
  (507, 50700, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 42),
  -- Herdier - Snarl - TM95
  (507, 50700, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 43),
  -- Herdier - Confide - TM100
  (507, 50700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 44),
  -- Herdier - Snore - Tutor
  (507, 50700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Herdier - Uproar - Tutor
  (507, 50700, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Herdier - Helping Hand - Tutor
  (507, 50700, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Herdier - Hyper Voice - Tutor
  (507, 50700, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Herdier - Covet - Tutor
  (507, 50700, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Herdier - Shock Wave - Tutor
  (507, 50700, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Herdier - Last Resort - Tutor
  (507, 50700, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Herdier - After You - Tutor
  (507, 50700, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),

  -- Stoutland - Tackle - Level 1
  (508, 50800, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Stoutland - Leer - Level 1
  (508, 50800, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Stoutland - Bite - Level 1
  (508, 50800, 44, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Stoutland - Odor Sleuth - Level 1
  (508, 50800, 316, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Stoutland - Thunder Fang - Level 1
  (508, 50800, 422, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Stoutland - Ice Fang - Level 1
  (508, 50800, 423, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Stoutland - Fire Fang - Level 1
  (508, 50800, 424, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Stoutland - Odor Sleuth - Level 5
  (508, 50800, 316, 16, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Stoutland - Bite - Level 8
  (508, 50800, 44, 16, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Stoutland - Helping Hand - Level 12
  (508, 50800, 270, 16, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Stoutland - Take Down - Level 15
  (508, 50800, 36, 16, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Stoutland - Work Up - Level 20
  (508, 50800, 526, 16, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Stoutland - Crunch - Level 24
  (508, 50800, 242, 16, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Stoutland - Roar - Level 29
  (508, 50800, 46, 16, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Stoutland - Retaliate - Level 36
  (508, 50800, 514, 16, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Stoutland - Reversal - Level 42
  (508, 50800, 179, 16, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Stoutland - Last Resort - Level 51
  (508, 50800, 387, 16, NULL, 1, 51, NULL, NULL, NULL, 17),
  -- Stoutland - Giga Impact - Level 59
  (508, 50800, 416, 16, NULL, 1, 59, NULL, NULL, NULL, 18),
  -- Stoutland - Play Rough - Level 63
  (508, 50800, 583, 16, NULL, 1, 63, NULL, NULL, NULL, 19),
  -- Stoutland - Work Up - TM01
  (508, 50800, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 20),
  -- Stoutland - Roar - TM05
  (508, 50800, 46, 16, NULL, 2, NULL, NULL, 16002005, NULL, 21),
  -- Stoutland - Toxic - TM06
  (508, 50800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Stoutland - Hidden Power - TM10
  (508, 50800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 23),
  -- Stoutland - Sunny Day - TM11
  (508, 50800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 24),
  -- Stoutland - Hyper Beam - TM15
  (508, 50800, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Stoutland - Protect - TM17
  (508, 50800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Stoutland - Rain Dance - TM18
  (508, 50800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Stoutland - Frustration - TM21
  (508, 50800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Stoutland - Thunderbolt - TM24
  (508, 50800, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 29),
  -- Stoutland - Thunder - TM25
  (508, 50800, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 30),
  -- Stoutland - Return - TM27
  (508, 50800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Stoutland - Shadow Ball - TM30
  (508, 50800, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 32),
  -- Stoutland - Double Team - TM32
  (508, 50800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Stoutland - Rock Tomb - TM39
  (508, 50800, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 34),
  -- Stoutland - Aerial Ace - TM40
  (508, 50800, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 35),
  -- Stoutland - Facade - TM42
  (508, 50800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 36),
  -- Stoutland - Rest - TM44
  (508, 50800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 37),
  -- Stoutland - Attract - TM45
  (508, 50800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 38),
  -- Stoutland - Round - TM48
  (508, 50800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 39),
  -- Stoutland - Payback - TM66
  (508, 50800, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 40),
  -- Stoutland - Giga Impact - TM68
  (508, 50800, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 41),
  -- Stoutland - Thunder Wave - TM73
  (508, 50800, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 42),
  -- Stoutland - Swagger - TM87
  (508, 50800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 43),
  -- Stoutland - Sleep Talk - TM88
  (508, 50800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 44),
  -- Stoutland - Substitute - TM90
  (508, 50800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 45),
  -- Stoutland - Wild Charge - TM93
  (508, 50800, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 46),
  -- Stoutland - Surf - TM94
  (508, 50800, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 47),
  -- Stoutland - Snarl - TM95
  (508, 50800, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 48),
  -- Stoutland - Confide - TM100
  (508, 50800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 49),
  -- Stoutland - Snore - Tutor
  (508, 50800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Stoutland - Uproar - Tutor
  (508, 50800, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Stoutland - Helping Hand - Tutor
  (508, 50800, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Stoutland - Superpower - Tutor
  (508, 50800, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Stoutland - Hyper Voice - Tutor
  (508, 50800, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Stoutland - Covet - Tutor
  (508, 50800, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Stoutland - Shock Wave - Tutor
  (508, 50800, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Stoutland - Last Resort - Tutor
  (508, 50800, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Stoutland - Iron Head - Tutor
  (508, 50800, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Stoutland - After You - Tutor
  (508, 50800, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Stoutland - Stomping Tantrum - Tutor
  (508, 50800, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),

  -- Purrloin - Scratch - Level 1
  (509, 50900, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Purrloin - Growl - Level 3
  (509, 50900, 45, 16, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Purrloin - Assist - Level 6
  (509, 50900, 274, 16, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Purrloin - Sand Attack - Level 10
  (509, 50900, 28, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Purrloin - Fury Swipes - Level 12
  (509, 50900, 154, 16, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Purrloin - Pursuit - Level 15
  (509, 50900, 228, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Purrloin - Torment - Level 19
  (509, 50900, 259, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Purrloin - Fake Out - Level 21
  (509, 50900, 252, 16, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Purrloin - Hone Claws - Level 24
  (509, 50900, 468, 16, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Purrloin - Assurance - Level 28
  (509, 50900, 372, 16, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Purrloin - Slash - Level 30
  (509, 50900, 163, 16, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Purrloin - Captivate - Level 33
  (509, 50900, 445, 16, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Purrloin - Night Slash - Level 37
  (509, 50900, 400, 16, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Purrloin - Snatch - Level 39
  (509, 50900, 289, 16, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Purrloin - Nasty Plot - Level 42
  (509, 50900, 417, 16, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Purrloin - Sucker Punch - Level 46
  (509, 50900, 389, 16, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Purrloin - Play Rough - Level 49
  (509, 50900, 583, 16, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Purrloin - Toxic - TM06
  (509, 50900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Purrloin - Hidden Power - TM10
  (509, 50900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Purrloin - Sunny Day - TM11
  (509, 50900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Purrloin - Taunt - TM12
  (509, 50900, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 21),
  -- Purrloin - Protect - TM17
  (509, 50900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Purrloin - Rain Dance - TM18
  (509, 50900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 23),
  -- Purrloin - Frustration - TM21
  (509, 50900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Purrloin - Return - TM27
  (509, 50900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Purrloin - Shadow Ball - TM30
  (509, 50900, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 26),
  -- Purrloin - Double Team - TM32
  (509, 50900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 27),
  -- Purrloin - Aerial Ace - TM40
  (509, 50900, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 28),
  -- Purrloin - Torment - TM41
  (509, 50900, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 29),
  -- Purrloin - Facade - TM42
  (509, 50900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 30),
  -- Purrloin - Rest - TM44
  (509, 50900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 31),
  -- Purrloin - Attract - TM45
  (509, 50900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 32),
  -- Purrloin - Thief - TM46
  (509, 50900, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 33),
  -- Purrloin - Round - TM48
  (509, 50900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 34),
  -- Purrloin - Echoed Voice - TM49
  (509, 50900, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 35),
  -- Purrloin - Embargo - TM63
  (509, 50900, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 36),
  -- Purrloin - Shadow Claw - TM65
  (509, 50900, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 37),
  -- Purrloin - Payback - TM66
  (509, 50900, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 38),
  -- Purrloin - Thunder Wave - TM73
  (509, 50900, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 39),
  -- Purrloin - Psych Up - TM77
  (509, 50900, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 40),
  -- Purrloin - Dream Eater - TM85
  (509, 50900, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 41),
  -- Purrloin - Grass Knot - TM86
  (509, 50900, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 42),
  -- Purrloin - Swagger - TM87
  (509, 50900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 43),
  -- Purrloin - Sleep Talk - TM88
  (509, 50900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 44),
  -- Purrloin - U-turn - TM89
  (509, 50900, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 45),
  -- Purrloin - Substitute - TM90
  (509, 50900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 46),
  -- Purrloin - Snarl - TM95
  (509, 50900, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 47),
  -- Purrloin - Dark Pulse - TM97
  (509, 50900, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 48),
  -- Purrloin - Confide - TM100
  (509, 50900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 49),
  -- Purrloin - Pay Day - Egg
  (509, 50900, 6, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Purrloin - Feint Attack - Egg
  (509, 50900, 185, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Purrloin - Charm - Egg
  (509, 50900, 204, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Purrloin - Encore - Egg
  (509, 50900, 227, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Purrloin - Yawn - Egg
  (509, 50900, 281, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Purrloin - Fake Tears - Egg
  (509, 50900, 313, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Purrloin - Covet - Egg
  (509, 50900, 343, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Purrloin - Copycat - Egg
  (509, 50900, 383, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Purrloin - Foul Play - Egg
  (509, 50900, 492, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Purrloin - Snore - Tutor
  (509, 50900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Purrloin - Spite - Tutor
  (509, 50900, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Purrloin - Iron Tail - Tutor
  (509, 50900, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Purrloin - Trick - Tutor
  (509, 50900, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Purrloin - Role Play - Tutor
  (509, 50900, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Purrloin - Knock Off - Tutor
  (509, 50900, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Purrloin - Snatch - Tutor
  (509, 50900, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Purrloin - Hyper Voice - Tutor
  (509, 50900, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Purrloin - Covet - Tutor
  (509, 50900, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Purrloin - Seed Bomb - Tutor
  (509, 50900, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Purrloin - Gunk Shot - Tutor
  (509, 50900, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Purrloin - Foul Play - Tutor
  (509, 50900, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),

  -- Liepard - Scratch - Level 1
  (510, 51000, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Liepard - Sand Attack - Level 1
  (510, 51000, 28, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Liepard - Growl - Level 1
  (510, 51000, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Liepard - Assist - Level 1
  (510, 51000, 274, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Liepard - Growl - Level 3
  (510, 51000, 45, 16, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Liepard - Assist - Level 6
  (510, 51000, 274, 16, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Liepard - Sand Attack - Level 10
  (510, 51000, 28, 16, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Liepard - Fury Swipes - Level 12
  (510, 51000, 154, 16, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Liepard - Pursuit - Level 15
  (510, 51000, 228, 16, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Liepard - Torment - Level 19
  (510, 51000, 259, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Liepard - Fake Out - Level 22
  (510, 51000, 252, 16, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Liepard - Hone Claws - Level 26
  (510, 51000, 468, 16, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Liepard - Assurance - Level 31
  (510, 51000, 372, 16, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Liepard - Slash - Level 34
  (510, 51000, 163, 16, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Liepard - Taunt - Level 38
  (510, 51000, 269, 16, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Liepard - Night Slash - Level 43
  (510, 51000, 400, 16, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Liepard - Snatch - Level 47
  (510, 51000, 289, 16, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Liepard - Nasty Plot - Level 50
  (510, 51000, 417, 16, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Liepard - Sucker Punch - Level 55
  (510, 51000, 389, 16, NULL, 1, 55, NULL, NULL, NULL, 19),
  -- Liepard - Play Rough - Level 58
  (510, 51000, 583, 16, NULL, 1, 58, NULL, NULL, NULL, 20),
  -- Liepard - Toxic - TM06
  (510, 51000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 21),
  -- Liepard - Hidden Power - TM10
  (510, 51000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Liepard - Sunny Day - TM11
  (510, 51000, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Liepard - Taunt - TM12
  (510, 51000, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 24),
  -- Liepard - Hyper Beam - TM15
  (510, 51000, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Liepard - Protect - TM17
  (510, 51000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Liepard - Rain Dance - TM18
  (510, 51000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Liepard - Frustration - TM21
  (510, 51000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Liepard - Return - TM27
  (510, 51000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Liepard - Shadow Ball - TM30
  (510, 51000, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 30),
  -- Liepard - Double Team - TM32
  (510, 51000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Liepard - Aerial Ace - TM40
  (510, 51000, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 32),
  -- Liepard - Torment - TM41
  (510, 51000, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 33),
  -- Liepard - Facade - TM42
  (510, 51000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Liepard - Rest - TM44
  (510, 51000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Liepard - Attract - TM45
  (510, 51000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 36),
  -- Liepard - Thief - TM46
  (510, 51000, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 37),
  -- Liepard - Round - TM48
  (510, 51000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 38),
  -- Liepard - Echoed Voice - TM49
  (510, 51000, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 39),
  -- Liepard - Embargo - TM63
  (510, 51000, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 40),
  -- Liepard - Shadow Claw - TM65
  (510, 51000, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 41),
  -- Liepard - Payback - TM66
  (510, 51000, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 42),
  -- Liepard - Giga Impact - TM68
  (510, 51000, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 43),
  -- Liepard - Thunder Wave - TM73
  (510, 51000, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 44),
  -- Liepard - Psych Up - TM77
  (510, 51000, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 45),
  -- Liepard - Dream Eater - TM85
  (510, 51000, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 46),
  -- Liepard - Grass Knot - TM86
  (510, 51000, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 47),
  -- Liepard - Swagger - TM87
  (510, 51000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 48),
  -- Liepard - Sleep Talk - TM88
  (510, 51000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 49),
  -- Liepard - U-turn - TM89
  (510, 51000, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 50),
  -- Liepard - Substitute - TM90
  (510, 51000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 51),
  -- Liepard - Snarl - TM95
  (510, 51000, 555, 16, NULL, 2, NULL, NULL, 16002095, NULL, 52),
  -- Liepard - Dark Pulse - TM97
  (510, 51000, 399, 16, NULL, 2, NULL, NULL, 16002097, NULL, 53),
  -- Liepard - Confide - TM100
  (510, 51000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 54),
  -- Liepard - Snore - Tutor
  (510, 51000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Liepard - Spite - Tutor
  (510, 51000, 180, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Liepard - Iron Tail - Tutor
  (510, 51000, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Liepard - Trick - Tutor
  (510, 51000, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Liepard - Role Play - Tutor
  (510, 51000, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Liepard - Knock Off - Tutor
  (510, 51000, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Liepard - Snatch - Tutor
  (510, 51000, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Liepard - Hyper Voice - Tutor
  (510, 51000, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Liepard - Covet - Tutor
  (510, 51000, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Liepard - Seed Bomb - Tutor
  (510, 51000, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Liepard - Gunk Shot - Tutor
  (510, 51000, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Liepard - Foul Play - Tutor
  (510, 51000, 492, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Liepard - Laser Focus - Tutor
  (510, 51000, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Liepard - Throat Chop - Tutor
  (510, 51000, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),

  -- Pansage - Scratch - Level 1
  (511, 51100, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pansage - Play Nice - Level 1
  (511, 51100, 589, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pansage - Leer - Level 4
  (511, 51100, 43, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Pansage - Lick - Level 7
  (511, 51100, 122, 16, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Pansage - Vine Whip - Level 10
  (511, 51100, 22, 16, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Pansage - Fury Swipes - Level 13
  (511, 51100, 154, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Pansage - Leech Seed - Level 16
  (511, 51100, 73, 16, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Pansage - Bite - Level 19
  (511, 51100, 44, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Pansage - Seed Bomb - Level 22
  (511, 51100, 402, 16, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Pansage - Torment - Level 25
  (511, 51100, 259, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Pansage - Fling - Level 28
  (511, 51100, 374, 16, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Pansage - Acrobatics - Level 31
  (511, 51100, 512, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Pansage - Grass Knot - Level 34
  (511, 51100, 447, 16, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Pansage - Recycle - Level 37
  (511, 51100, 278, 16, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Pansage - Natural Gift - Level 40
  (511, 51100, 363, 16, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Pansage - Crunch - Level 43
  (511, 51100, 242, 16, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Pansage - Work Up - TM01
  (511, 51100, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 17),
  -- Pansage - Toxic - TM06
  (511, 51100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Pansage - Hidden Power - TM10
  (511, 51100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Pansage - Sunny Day - TM11
  (511, 51100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Pansage - Taunt - TM12
  (511, 51100, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 21),
  -- Pansage - Protect - TM17
  (511, 51100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Pansage - Frustration - TM21
  (511, 51100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Pansage - Solar Beam - TM22
  (511, 51100, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 24),
  -- Pansage - Return - TM27
  (511, 51100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Pansage - Double Team - TM32
  (511, 51100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Pansage - Rock Tomb - TM39
  (511, 51100, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 27),
  -- Pansage - Torment - TM41
  (511, 51100, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 28),
  -- Pansage - Facade - TM42
  (511, 51100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Pansage - Rest - TM44
  (511, 51100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Pansage - Attract - TM45
  (511, 51100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Pansage - Thief - TM46
  (511, 51100, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 32),
  -- Pansage - Low Sweep - TM47
  (511, 51100, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 33),
  -- Pansage - Round - TM48
  (511, 51100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 34),
  -- Pansage - Energy Ball - TM53
  (511, 51100, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 35),
  -- Pansage - Fling - TM56
  (511, 51100, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 36),
  -- Pansage - Acrobatics - TM62
  (511, 51100, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 37),
  -- Pansage - Shadow Claw - TM65
  (511, 51100, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 38),
  -- Pansage - Payback - TM66
  (511, 51100, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 39),
  -- Pansage - Grass Knot - TM86
  (511, 51100, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 40),
  -- Pansage - Swagger - TM87
  (511, 51100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 41),
  -- Pansage - Sleep Talk - TM88
  (511, 51100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 42),
  -- Pansage - Substitute - TM90
  (511, 51100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 43),
  -- Pansage - Nature Power - TM96
  (511, 51100, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 44),
  -- Pansage - Confide - TM100
  (511, 51100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 45),
  -- Pansage - Low Kick - Egg
  (511, 51100, 67, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Pansage - Role Play - Egg
  (511, 51100, 272, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Pansage - Astonish - Egg
  (511, 51100, 310, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Pansage - Grass Whistle - Egg
  (511, 51100, 320, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Pansage - Tickle - Egg
  (511, 51100, 321, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Pansage - Bullet Seed - Egg
  (511, 51100, 331, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Pansage - Covet - Egg
  (511, 51100, 343, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Pansage - Magical Leaf - Egg
  (511, 51100, 345, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Pansage - Nasty Plot - Egg
  (511, 51100, 417, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Pansage - Leaf Storm - Egg
  (511, 51100, 437, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Pansage - Disarming Voice - Egg
  (511, 51100, 574, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Pansage - Spiky Shield - Egg
  (511, 51100, 596, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Pansage - Low Kick - Tutor
  (511, 51100, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Pansage - Snore - Tutor
  (511, 51100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Pansage - Giga Drain - Tutor
  (511, 51100, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Pansage - Iron Tail - Tutor
  (511, 51100, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Pansage - Synthesis - Tutor
  (511, 51100, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Pansage - Uproar - Tutor
  (511, 51100, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Pansage - Focus Punch - Tutor
  (511, 51100, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Pansage - Helping Hand - Tutor
  (511, 51100, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Pansage - Role Play - Tutor
  (511, 51100, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Pansage - Recycle - Tutor
  (511, 51100, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Pansage - Knock Off - Tutor
  (511, 51100, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Pansage - Endeavor - Tutor
  (511, 51100, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Pansage - Covet - Tutor
  (511, 51100, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Pansage - Gastro Acid - Tutor
  (511, 51100, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Pansage - Worry Seed - Tutor
  (511, 51100, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Pansage - Seed Bomb - Tutor
  (511, 51100, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Pansage - Gunk Shot - Tutor
  (511, 51100, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Pansage - Grass Pledge - Tutor
  (511, 51100, 520, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),

  -- Simisage - Leer - Level 1
  (512, 51200, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Simisage - Lick - Level 1
  (512, 51200, 122, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Simisage - Fury Swipes - Level 1
  (512, 51200, 154, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Simisage - Seed Bomb - Level 1
  (512, 51200, 402, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Simisage - Work Up - TM01
  (512, 51200, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 5),
  -- Simisage - Toxic - TM06
  (512, 51200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 6),
  -- Simisage - Hidden Power - TM10
  (512, 51200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 7),
  -- Simisage - Sunny Day - TM11
  (512, 51200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 8),
  -- Simisage - Taunt - TM12
  (512, 51200, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 9),
  -- Simisage - Hyper Beam - TM15
  (512, 51200, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 10),
  -- Simisage - Protect - TM17
  (512, 51200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 11),
  -- Simisage - Frustration - TM21
  (512, 51200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 12),
  -- Simisage - Solar Beam - TM22
  (512, 51200, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 13),
  -- Simisage - Return - TM27
  (512, 51200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 14),
  -- Simisage - Brick Break - TM31
  (512, 51200, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 15),
  -- Simisage - Double Team - TM32
  (512, 51200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 16),
  -- Simisage - Rock Tomb - TM39
  (512, 51200, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 17),
  -- Simisage - Torment - TM41
  (512, 51200, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 18),
  -- Simisage - Facade - TM42
  (512, 51200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 19),
  -- Simisage - Rest - TM44
  (512, 51200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 20),
  -- Simisage - Attract - TM45
  (512, 51200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 21),
  -- Simisage - Thief - TM46
  (512, 51200, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 22),
  -- Simisage - Low Sweep - TM47
  (512, 51200, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 23),
  -- Simisage - Round - TM48
  (512, 51200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 24),
  -- Simisage - Focus Blast - TM52
  (512, 51200, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 25),
  -- Simisage - Energy Ball - TM53
  (512, 51200, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 26),
  -- Simisage - Fling - TM56
  (512, 51200, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 27),
  -- Simisage - Acrobatics - TM62
  (512, 51200, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 28),
  -- Simisage - Shadow Claw - TM65
  (512, 51200, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 29),
  -- Simisage - Payback - TM66
  (512, 51200, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 30),
  -- Simisage - Giga Impact - TM68
  (512, 51200, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 31),
  -- Simisage - Rock Slide - TM80
  (512, 51200, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 32),
  -- Simisage - Grass Knot - TM86
  (512, 51200, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 33),
  -- Simisage - Swagger - TM87
  (512, 51200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 34),
  -- Simisage - Sleep Talk - TM88
  (512, 51200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 35),
  -- Simisage - Substitute - TM90
  (512, 51200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 36),
  -- Simisage - Nature Power - TM96
  (512, 51200, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 37),
  -- Simisage - Confide - TM100
  (512, 51200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 38),
  -- Simisage - Low Kick - Tutor
  (512, 51200, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 39),
  -- Simisage - Snore - Tutor
  (512, 51200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 40),
  -- Simisage - Giga Drain - Tutor
  (512, 51200, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Simisage - Iron Tail - Tutor
  (512, 51200, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Simisage - Synthesis - Tutor
  (512, 51200, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Simisage - Uproar - Tutor
  (512, 51200, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Simisage - Focus Punch - Tutor
  (512, 51200, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Simisage - Helping Hand - Tutor
  (512, 51200, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Simisage - Role Play - Tutor
  (512, 51200, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Simisage - Superpower - Tutor
  (512, 51200, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Simisage - Recycle - Tutor
  (512, 51200, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Simisage - Knock Off - Tutor
  (512, 51200, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Simisage - Endeavor - Tutor
  (512, 51200, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Simisage - Covet - Tutor
  (512, 51200, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Simisage - Gastro Acid - Tutor
  (512, 51200, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Simisage - Worry Seed - Tutor
  (512, 51200, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Simisage - Seed Bomb - Tutor
  (512, 51200, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Simisage - Gunk Shot - Tutor
  (512, 51200, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Simisage - Grass Pledge - Tutor
  (512, 51200, 520, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Simisage - Throat Chop - Tutor
  (512, 51200, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),

  -- Pansear - Scratch - Level 1
  (513, 51300, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pansear - Play Nice - Level 1
  (513, 51300, 589, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pansear - Leer - Level 4
  (513, 51300, 43, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Pansear - Lick - Level 7
  (513, 51300, 122, 16, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Pansear - Incinerate - Level 10
  (513, 51300, 510, 16, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Pansear - Fury Swipes - Level 13
  (513, 51300, 154, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Pansear - Yawn - Level 16
  (513, 51300, 281, 16, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Pansear - Bite - Level 19
  (513, 51300, 44, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Pansear - Flame Burst - Level 22
  (513, 51300, 481, 16, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Pansear - Amnesia - Level 25
  (513, 51300, 133, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Pansear - Fling - Level 28
  (513, 51300, 374, 16, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Pansear - Acrobatics - Level 31
  (513, 51300, 512, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Pansear - Fire Blast - Level 34
  (513, 51300, 126, 16, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Pansear - Recycle - Level 37
  (513, 51300, 278, 16, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Pansear - Natural Gift - Level 40
  (513, 51300, 363, 16, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Pansear - Crunch - Level 43
  (513, 51300, 242, 16, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Pansear - Work Up - TM01
  (513, 51300, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 17),
  -- Pansear - Toxic - TM06
  (513, 51300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Pansear - Hidden Power - TM10
  (513, 51300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Pansear - Sunny Day - TM11
  (513, 51300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Pansear - Taunt - TM12
  (513, 51300, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 21),
  -- Pansear - Protect - TM17
  (513, 51300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Pansear - Frustration - TM21
  (513, 51300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 23),
  -- Pansear - Solar Beam - TM22
  (513, 51300, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 24),
  -- Pansear - Return - TM27
  (513, 51300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Pansear - Double Team - TM32
  (513, 51300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Pansear - Flamethrower - TM35
  (513, 51300, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 27),
  -- Pansear - Fire Blast - TM38
  (513, 51300, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 28),
  -- Pansear - Rock Tomb - TM39
  (513, 51300, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 29),
  -- Pansear - Torment - TM41
  (513, 51300, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 30),
  -- Pansear - Facade - TM42
  (513, 51300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Pansear - Flame Charge - TM43
  (513, 51300, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 32),
  -- Pansear - Rest - TM44
  (513, 51300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 33),
  -- Pansear - Attract - TM45
  (513, 51300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 34),
  -- Pansear - Thief - TM46
  (513, 51300, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 35),
  -- Pansear - Low Sweep - TM47
  (513, 51300, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 36),
  -- Pansear - Round - TM48
  (513, 51300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Pansear - Overheat - TM50
  (513, 51300, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 38),
  -- Pansear - Fling - TM56
  (513, 51300, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 39),
  -- Pansear - Will-O-Wisp - TM61
  (513, 51300, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 40),
  -- Pansear - Acrobatics - TM62
  (513, 51300, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 41),
  -- Pansear - Shadow Claw - TM65
  (513, 51300, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 42),
  -- Pansear - Payback - TM66
  (513, 51300, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 43),
  -- Pansear - Grass Knot - TM86
  (513, 51300, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 44),
  -- Pansear - Swagger - TM87
  (513, 51300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 45),
  -- Pansear - Sleep Talk - TM88
  (513, 51300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 46),
  -- Pansear - Substitute - TM90
  (513, 51300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 47),
  -- Pansear - Confide - TM100
  (513, 51300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 48),
  -- Pansear - Fire Punch - Egg
  (513, 51300, 7, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Pansear - Low Kick - Egg
  (513, 51300, 67, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Pansear - Fire Spin - Egg
  (513, 51300, 83, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Pansear - Sleep Talk - Egg
  (513, 51300, 214, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Pansear - Heat Wave - Egg
  (513, 51300, 257, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Pansear - Role Play - Egg
  (513, 51300, 272, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Pansear - Astonish - Egg
  (513, 51300, 310, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Pansear - Tickle - Egg
  (513, 51300, 321, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Pansear - Covet - Egg
  (513, 51300, 343, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Pansear - Flare Blitz - Egg
  (513, 51300, 394, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Pansear - Nasty Plot - Egg
  (513, 51300, 417, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Pansear - Belch - Egg
  (513, 51300, 562, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Pansear - Disarming Voice - Egg
  (513, 51300, 574, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Pansear - Fire Punch - Tutor
  (513, 51300, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Pansear - Low Kick - Tutor
  (513, 51300, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Pansear - Snore - Tutor
  (513, 51300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Pansear - Iron Tail - Tutor
  (513, 51300, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Pansear - Uproar - Tutor
  (513, 51300, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Pansear - Heat Wave - Tutor
  (513, 51300, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Pansear - Focus Punch - Tutor
  (513, 51300, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Pansear - Helping Hand - Tutor
  (513, 51300, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Pansear - Role Play - Tutor
  (513, 51300, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Pansear - Recycle - Tutor
  (513, 51300, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Pansear - Knock Off - Tutor
  (513, 51300, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Pansear - Endeavor - Tutor
  (513, 51300, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Pansear - Covet - Tutor
  (513, 51300, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Pansear - Gastro Acid - Tutor
  (513, 51300, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Pansear - Gunk Shot - Tutor
  (513, 51300, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Pansear - Fire Pledge - Tutor
  (513, 51300, 519, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),

  -- Simisear - Leer - Level 1
  (514, 51400, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Simisear - Lick - Level 1
  (514, 51400, 122, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Simisear - Fury Swipes - Level 1
  (514, 51400, 154, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Simisear - Flame Burst - Level 1
  (514, 51400, 481, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Simisear - Work Up - TM01
  (514, 51400, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 5),
  -- Simisear - Toxic - TM06
  (514, 51400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 6),
  -- Simisear - Hidden Power - TM10
  (514, 51400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 7),
  -- Simisear - Sunny Day - TM11
  (514, 51400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 8),
  -- Simisear - Taunt - TM12
  (514, 51400, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 9),
  -- Simisear - Hyper Beam - TM15
  (514, 51400, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 10),
  -- Simisear - Protect - TM17
  (514, 51400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 11),
  -- Simisear - Frustration - TM21
  (514, 51400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 12),
  -- Simisear - Solar Beam - TM22
  (514, 51400, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 13),
  -- Simisear - Return - TM27
  (514, 51400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 14),
  -- Simisear - Brick Break - TM31
  (514, 51400, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 15),
  -- Simisear - Double Team - TM32
  (514, 51400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 16),
  -- Simisear - Flamethrower - TM35
  (514, 51400, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 17),
  -- Simisear - Fire Blast - TM38
  (514, 51400, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 18),
  -- Simisear - Rock Tomb - TM39
  (514, 51400, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 19),
  -- Simisear - Torment - TM41
  (514, 51400, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 20),
  -- Simisear - Facade - TM42
  (514, 51400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 21),
  -- Simisear - Flame Charge - TM43
  (514, 51400, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 22),
  -- Simisear - Rest - TM44
  (514, 51400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 23),
  -- Simisear - Attract - TM45
  (514, 51400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 24),
  -- Simisear - Thief - TM46
  (514, 51400, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 25),
  -- Simisear - Low Sweep - TM47
  (514, 51400, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 26),
  -- Simisear - Round - TM48
  (514, 51400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 27),
  -- Simisear - Overheat - TM50
  (514, 51400, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 28),
  -- Simisear - Focus Blast - TM52
  (514, 51400, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 29),
  -- Simisear - Fling - TM56
  (514, 51400, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 30),
  -- Simisear - Will-O-Wisp - TM61
  (514, 51400, 261, 16, NULL, 2, NULL, NULL, 16002061, NULL, 31),
  -- Simisear - Acrobatics - TM62
  (514, 51400, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 32),
  -- Simisear - Shadow Claw - TM65
  (514, 51400, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 33),
  -- Simisear - Payback - TM66
  (514, 51400, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 34),
  -- Simisear - Giga Impact - TM68
  (514, 51400, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 35),
  -- Simisear - Rock Slide - TM80
  (514, 51400, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 36),
  -- Simisear - Grass Knot - TM86
  (514, 51400, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 37),
  -- Simisear - Swagger - TM87
  (514, 51400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 38),
  -- Simisear - Sleep Talk - TM88
  (514, 51400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 39),
  -- Simisear - Substitute - TM90
  (514, 51400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 40),
  -- Simisear - Confide - TM100
  (514, 51400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 41),
  -- Simisear - Fire Punch - Tutor
  (514, 51400, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Simisear - Low Kick - Tutor
  (514, 51400, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Simisear - Snore - Tutor
  (514, 51400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Simisear - Iron Tail - Tutor
  (514, 51400, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Simisear - Uproar - Tutor
  (514, 51400, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Simisear - Heat Wave - Tutor
  (514, 51400, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Simisear - Focus Punch - Tutor
  (514, 51400, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Simisear - Helping Hand - Tutor
  (514, 51400, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Simisear - Role Play - Tutor
  (514, 51400, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Simisear - Superpower - Tutor
  (514, 51400, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Simisear - Recycle - Tutor
  (514, 51400, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Simisear - Knock Off - Tutor
  (514, 51400, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Simisear - Endeavor - Tutor
  (514, 51400, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Simisear - Covet - Tutor
  (514, 51400, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Simisear - Gastro Acid - Tutor
  (514, 51400, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Simisear - Gunk Shot - Tutor
  (514, 51400, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Simisear - Fire Pledge - Tutor
  (514, 51400, 519, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Simisear - Throat Chop - Tutor
  (514, 51400, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),

  -- Panpour - Scratch - Level 1
  (515, 51500, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Panpour - Play Nice - Level 1
  (515, 51500, 589, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Panpour - Leer - Level 4
  (515, 51500, 43, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Panpour - Lick - Level 7
  (515, 51500, 122, 16, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Panpour - Water Gun - Level 10
  (515, 51500, 55, 16, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Panpour - Fury Swipes - Level 13
  (515, 51500, 154, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Panpour - Water Sport - Level 16
  (515, 51500, 346, 16, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Panpour - Bite - Level 19
  (515, 51500, 44, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Panpour - Scald - Level 22
  (515, 51500, 503, 16, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Panpour - Taunt - Level 25
  (515, 51500, 269, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Panpour - Fling - Level 28
  (515, 51500, 374, 16, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Panpour - Acrobatics - Level 31
  (515, 51500, 512, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Panpour - Brine - Level 34
  (515, 51500, 362, 16, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Panpour - Recycle - Level 37
  (515, 51500, 278, 16, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Panpour - Natural Gift - Level 40
  (515, 51500, 363, 16, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Panpour - Crunch - Level 43
  (515, 51500, 242, 16, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Panpour - Work Up - TM01
  (515, 51500, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 17),
  -- Panpour - Toxic - TM06
  (515, 51500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Panpour - Hail - TM07
  (515, 51500, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 19),
  -- Panpour - Hidden Power - TM10
  (515, 51500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Panpour - Taunt - TM12
  (515, 51500, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 21),
  -- Panpour - Ice Beam - TM13
  (515, 51500, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 22),
  -- Panpour - Blizzard - TM14
  (515, 51500, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 23),
  -- Panpour - Protect - TM17
  (515, 51500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Panpour - Rain Dance - TM18
  (515, 51500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Panpour - Frustration - TM21
  (515, 51500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Panpour - Return - TM27
  (515, 51500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Panpour - Double Team - TM32
  (515, 51500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Panpour - Rock Tomb - TM39
  (515, 51500, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 29),
  -- Panpour - Torment - TM41
  (515, 51500, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 30),
  -- Panpour - Facade - TM42
  (515, 51500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Panpour - Rest - TM44
  (515, 51500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Panpour - Attract - TM45
  (515, 51500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Panpour - Thief - TM46
  (515, 51500, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 34),
  -- Panpour - Low Sweep - TM47
  (515, 51500, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 35),
  -- Panpour - Round - TM48
  (515, 51500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 36),
  -- Panpour - Scald - TM55
  (515, 51500, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 37),
  -- Panpour - Fling - TM56
  (515, 51500, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 38),
  -- Panpour - Acrobatics - TM62
  (515, 51500, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 39),
  -- Panpour - Shadow Claw - TM65
  (515, 51500, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 40),
  -- Panpour - Payback - TM66
  (515, 51500, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 41),
  -- Panpour - Grass Knot - TM86
  (515, 51500, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 42),
  -- Panpour - Swagger - TM87
  (515, 51500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 43),
  -- Panpour - Sleep Talk - TM88
  (515, 51500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 44),
  -- Panpour - Substitute - TM90
  (515, 51500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 45),
  -- Panpour - Surf - TM94
  (515, 51500, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 46),
  -- Panpour - Waterfall - TM98
  (515, 51500, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 47),
  -- Panpour - Confide - TM100
  (515, 51500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 48),
  -- Panpour - Hydro Pump - Egg
  (515, 51500, 56, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Panpour - Low Kick - Egg
  (515, 51500, 67, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Panpour - Role Play - Egg
  (515, 51500, 272, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Panpour - Mud Sport - Egg
  (515, 51500, 300, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Panpour - Astonish - Egg
  (515, 51500, 310, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Panpour - Tickle - Egg
  (515, 51500, 321, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Panpour - Covet - Egg
  (515, 51500, 343, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Panpour - Aqua Ring - Egg
  (515, 51500, 392, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Panpour - Aqua Tail - Egg
  (515, 51500, 401, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Panpour - Nasty Plot - Egg
  (515, 51500, 417, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Panpour - Disarming Voice - Egg
  (515, 51500, 574, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Panpour - Ice Punch - Tutor
  (515, 51500, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Panpour - Low Kick - Tutor
  (515, 51500, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Panpour - Snore - Tutor
  (515, 51500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Panpour - Icy Wind - Tutor
  (515, 51500, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Panpour - Iron Tail - Tutor
  (515, 51500, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Panpour - Uproar - Tutor
  (515, 51500, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Panpour - Focus Punch - Tutor
  (515, 51500, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Panpour - Helping Hand - Tutor
  (515, 51500, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Panpour - Role Play - Tutor
  (515, 51500, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Panpour - Recycle - Tutor
  (515, 51500, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Panpour - Knock Off - Tutor
  (515, 51500, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Panpour - Endeavor - Tutor
  (515, 51500, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Panpour - Covet - Tutor
  (515, 51500, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Panpour - Water Pulse - Tutor
  (515, 51500, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Panpour - Gastro Acid - Tutor
  (515, 51500, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Panpour - Aqua Tail - Tutor
  (515, 51500, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Panpour - Gunk Shot - Tutor
  (515, 51500, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Panpour - Water Pledge - Tutor
  (515, 51500, 518, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),

  -- Simipour - Leer - Level 1
  (516, 51600, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Simipour - Lick - Level 1
  (516, 51600, 122, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Simipour - Fury Swipes - Level 1
  (516, 51600, 154, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Simipour - Scald - Level 1
  (516, 51600, 503, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Simipour - Work Up - TM01
  (516, 51600, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 5),
  -- Simipour - Toxic - TM06
  (516, 51600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 6),
  -- Simipour - Hail - TM07
  (516, 51600, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 7),
  -- Simipour - Hidden Power - TM10
  (516, 51600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 8),
  -- Simipour - Taunt - TM12
  (516, 51600, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 9),
  -- Simipour - Ice Beam - TM13
  (516, 51600, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 10),
  -- Simipour - Blizzard - TM14
  (516, 51600, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 11),
  -- Simipour - Hyper Beam - TM15
  (516, 51600, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 12),
  -- Simipour - Protect - TM17
  (516, 51600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 13),
  -- Simipour - Rain Dance - TM18
  (516, 51600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 14),
  -- Simipour - Frustration - TM21
  (516, 51600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 15),
  -- Simipour - Return - TM27
  (516, 51600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 16),
  -- Simipour - Brick Break - TM31
  (516, 51600, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 17),
  -- Simipour - Double Team - TM32
  (516, 51600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 18),
  -- Simipour - Rock Tomb - TM39
  (516, 51600, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 19),
  -- Simipour - Torment - TM41
  (516, 51600, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 20),
  -- Simipour - Facade - TM42
  (516, 51600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 21),
  -- Simipour - Rest - TM44
  (516, 51600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 22),
  -- Simipour - Attract - TM45
  (516, 51600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 23),
  -- Simipour - Thief - TM46
  (516, 51600, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 24),
  -- Simipour - Low Sweep - TM47
  (516, 51600, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 25),
  -- Simipour - Round - TM48
  (516, 51600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 26),
  -- Simipour - Focus Blast - TM52
  (516, 51600, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 27),
  -- Simipour - Scald - TM55
  (516, 51600, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 28),
  -- Simipour - Fling - TM56
  (516, 51600, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 29),
  -- Simipour - Acrobatics - TM62
  (516, 51600, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 30),
  -- Simipour - Shadow Claw - TM65
  (516, 51600, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 31),
  -- Simipour - Payback - TM66
  (516, 51600, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 32),
  -- Simipour - Giga Impact - TM68
  (516, 51600, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 33),
  -- Simipour - Rock Slide - TM80
  (516, 51600, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 34),
  -- Simipour - Grass Knot - TM86
  (516, 51600, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 35),
  -- Simipour - Swagger - TM87
  (516, 51600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 36),
  -- Simipour - Sleep Talk - TM88
  (516, 51600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 37),
  -- Simipour - Substitute - TM90
  (516, 51600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 38),
  -- Simipour - Surf - TM94
  (516, 51600, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 39),
  -- Simipour - Waterfall - TM98
  (516, 51600, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 40),
  -- Simipour - Confide - TM100
  (516, 51600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 41),
  -- Simipour - Ice Punch - Tutor
  (516, 51600, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Simipour - Low Kick - Tutor
  (516, 51600, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Simipour - Snore - Tutor
  (516, 51600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Simipour - Icy Wind - Tutor
  (516, 51600, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Simipour - Iron Tail - Tutor
  (516, 51600, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Simipour - Uproar - Tutor
  (516, 51600, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Simipour - Focus Punch - Tutor
  (516, 51600, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Simipour - Helping Hand - Tutor
  (516, 51600, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Simipour - Role Play - Tutor
  (516, 51600, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Simipour - Superpower - Tutor
  (516, 51600, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Simipour - Recycle - Tutor
  (516, 51600, 278, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Simipour - Knock Off - Tutor
  (516, 51600, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Simipour - Endeavor - Tutor
  (516, 51600, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Simipour - Covet - Tutor
  (516, 51600, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Simipour - Water Pulse - Tutor
  (516, 51600, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Simipour - Gastro Acid - Tutor
  (516, 51600, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Simipour - Aqua Tail - Tutor
  (516, 51600, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Simipour - Gunk Shot - Tutor
  (516, 51600, 441, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Simipour - Water Pledge - Tutor
  (516, 51600, 518, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Simipour - Throat Chop - Tutor
  (516, 51600, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),

  -- Munna - Defense Curl - Level 1
  (517, 51700, 111, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Munna - Psywave - Level 1
  (517, 51700, 149, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Munna - Lucky Chant - Level 5
  (517, 51700, 381, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Munna - Yawn - Level 7
  (517, 51700, 281, 16, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Munna - Psybeam - Level 11
  (517, 51700, 60, 16, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Munna - Imprison - Level 13
  (517, 51700, 286, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Munna - Moonlight - Level 17
  (517, 51700, 236, 16, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Munna - Hypnosis - Level 19
  (517, 51700, 95, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Munna - Zen Headbutt - Level 23
  (517, 51700, 428, 16, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Munna - Synchronoise - Level 25
  (517, 51700, 485, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Munna - Nightmare - Level 29
  (517, 51700, 171, 16, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Munna - Future Sight - Level 31
  (517, 51700, 248, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Munna - Calm Mind - Level 35
  (517, 51700, 347, 16, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Munna - Psychic - Level 37
  (517, 51700, 94, 16, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Munna - Dream Eater - Level 41
  (517, 51700, 138, 16, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Munna - Telekinesis - Level 43
  (517, 51700, 477, 16, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Munna - Stored Power - Level 47
  (517, 51700, 500, 16, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Munna - Psyshock - TM03
  (517, 51700, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 18),
  -- Munna - Calm Mind - TM04
  (517, 51700, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 19),
  -- Munna - Toxic - TM06
  (517, 51700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Munna - Hidden Power - TM10
  (517, 51700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Munna - Light Screen - TM16
  (517, 51700, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 22),
  -- Munna - Protect - TM17
  (517, 51700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Munna - Rain Dance - TM18
  (517, 51700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Munna - Safeguard - TM20
  (517, 51700, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 25),
  -- Munna - Frustration - TM21
  (517, 51700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Munna - Return - TM27
  (517, 51700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Munna - Psychic - TM29
  (517, 51700, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 28),
  -- Munna - Shadow Ball - TM30
  (517, 51700, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 29),
  -- Munna - Double Team - TM32
  (517, 51700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Munna - Reflect - TM33
  (517, 51700, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 31),
  -- Munna - Rock Tomb - TM39
  (517, 51700, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 32),
  -- Munna - Torment - TM41
  (517, 51700, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 33),
  -- Munna - Facade - TM42
  (517, 51700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Munna - Rest - TM44
  (517, 51700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Munna - Attract - TM45
  (517, 51700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 36),
  -- Munna - Round - TM48
  (517, 51700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Munna - Energy Ball - TM53
  (517, 51700, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 38),
  -- Munna - Charge Beam - TM57
  (517, 51700, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 39),
  -- Munna - Thunder Wave - TM73
  (517, 51700, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 40),
  -- Munna - Gyro Ball - TM74
  (517, 51700, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 41),
  -- Munna - Psych Up - TM77
  (517, 51700, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 42),
  -- Munna - Rock Slide - TM80
  (517, 51700, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 43),
  -- Munna - Dream Eater - TM85
  (517, 51700, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 44),
  -- Munna - Swagger - TM87
  (517, 51700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 45),
  -- Munna - Sleep Talk - TM88
  (517, 51700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 46),
  -- Munna - Substitute - TM90
  (517, 51700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 47),
  -- Munna - Trick Room - TM92
  (517, 51700, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 48),
  -- Munna - Dazzling Gleam - TM99
  (517, 51700, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 49),
  -- Munna - Confide - TM100
  (517, 51700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 50),
  -- Munna - Sonic Boom - Egg
  (517, 51700, 49, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Munna - Barrier - Egg
  (517, 51700, 112, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Munna - Swift - Egg
  (517, 51700, 129, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Munna - Curse - Egg
  (517, 51700, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Munna - Sleep Talk - Egg
  (517, 51700, 214, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Munna - Baton Pass - Egg
  (517, 51700, 226, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Munna - Helping Hand - Egg
  (517, 51700, 270, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Munna - Magic Coat - Egg
  (517, 51700, 277, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Munna - Secret Power - Egg
  (517, 51700, 290, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Munna - Healing Wish - Egg
  (517, 51700, 361, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Munna - Snore - Tutor
  (517, 51700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Munna - Heal Bell - Tutor
  (517, 51700, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Munna - Pain Split - Tutor
  (517, 51700, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Munna - Helping Hand - Tutor
  (517, 51700, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Munna - Trick - Tutor
  (517, 51700, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Munna - Magic Coat - Tutor
  (517, 51700, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Munna - Skill Swap - Tutor
  (517, 51700, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Munna - Signal Beam - Tutor
  (517, 51700, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Munna - Shock Wave - Tutor
  (517, 51700, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Munna - Gravity - Tutor
  (517, 51700, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Munna - Worry Seed - Tutor
  (517, 51700, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Munna - Zen Headbutt - Tutor
  (517, 51700, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Munna - Wonder Room - Tutor
  (517, 51700, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Munna - Telekinesis - Tutor
  (517, 51700, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Munna - After You - Tutor
  (517, 51700, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Munna - Ally Switch - Tutor
  (517, 51700, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),

  -- Musharna - Psybeam - Level 1
  (518, 51800, 60, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Musharna - Hypnosis - Level 1
  (518, 51800, 95, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Musharna - Defense Curl - Level 1
  (518, 51800, 111, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Musharna - Lucky Chant - Level 1
  (518, 51800, 381, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Musharna - Psychic Terrain - Level 1
  (518, 51800, 678, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Musharna - Psyshock - TM03
  (518, 51800, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 6),
  -- Musharna - Calm Mind - TM04
  (518, 51800, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 7),
  -- Musharna - Toxic - TM06
  (518, 51800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 8),
  -- Musharna - Hidden Power - TM10
  (518, 51800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 9),
  -- Musharna - Hyper Beam - TM15
  (518, 51800, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 10),
  -- Musharna - Light Screen - TM16
  (518, 51800, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 11),
  -- Musharna - Protect - TM17
  (518, 51800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 12),
  -- Musharna - Rain Dance - TM18
  (518, 51800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 13),
  -- Musharna - Safeguard - TM20
  (518, 51800, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 14),
  -- Musharna - Frustration - TM21
  (518, 51800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 15),
  -- Musharna - Return - TM27
  (518, 51800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 16),
  -- Musharna - Psychic - TM29
  (518, 51800, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 17),
  -- Musharna - Shadow Ball - TM30
  (518, 51800, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 18),
  -- Musharna - Double Team - TM32
  (518, 51800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 19),
  -- Musharna - Reflect - TM33
  (518, 51800, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 20),
  -- Musharna - Rock Tomb - TM39
  (518, 51800, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 21),
  -- Musharna - Torment - TM41
  (518, 51800, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 22),
  -- Musharna - Facade - TM42
  (518, 51800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 23),
  -- Musharna - Rest - TM44
  (518, 51800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 24),
  -- Musharna - Attract - TM45
  (518, 51800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 25),
  -- Musharna - Round - TM48
  (518, 51800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 26),
  -- Musharna - Energy Ball - TM53
  (518, 51800, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 27),
  -- Musharna - Charge Beam - TM57
  (518, 51800, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 28),
  -- Musharna - Giga Impact - TM68
  (518, 51800, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 29),
  -- Musharna - Thunder Wave - TM73
  (518, 51800, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 30),
  -- Musharna - Gyro Ball - TM74
  (518, 51800, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 31),
  -- Musharna - Psych Up - TM77
  (518, 51800, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 32),
  -- Musharna - Rock Slide - TM80
  (518, 51800, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 33),
  -- Musharna - Dream Eater - TM85
  (518, 51800, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 34),
  -- Musharna - Swagger - TM87
  (518, 51800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 35),
  -- Musharna - Sleep Talk - TM88
  (518, 51800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 36),
  -- Musharna - Substitute - TM90
  (518, 51800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 37),
  -- Musharna - Trick Room - TM92
  (518, 51800, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 38),
  -- Musharna - Dazzling Gleam - TM99
  (518, 51800, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 39),
  -- Musharna - Confide - TM100
  (518, 51800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 40),
  -- Musharna - Snore - Tutor
  (518, 51800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Musharna - Heal Bell - Tutor
  (518, 51800, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Musharna - Pain Split - Tutor
  (518, 51800, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Musharna - Helping Hand - Tutor
  (518, 51800, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Musharna - Trick - Tutor
  (518, 51800, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Musharna - Magic Coat - Tutor
  (518, 51800, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Musharna - Skill Swap - Tutor
  (518, 51800, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Musharna - Signal Beam - Tutor
  (518, 51800, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Musharna - Shock Wave - Tutor
  (518, 51800, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Musharna - Gravity - Tutor
  (518, 51800, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Musharna - Worry Seed - Tutor
  (518, 51800, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Musharna - Zen Headbutt - Tutor
  (518, 51800, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Musharna - Wonder Room - Tutor
  (518, 51800, 472, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Musharna - Telekinesis - Tutor
  (518, 51800, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Musharna - After You - Tutor
  (518, 51800, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Musharna - Ally Switch - Tutor
  (518, 51800, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),

  -- Pidove - Gust - Level 1
  (519, 51900, 16, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pidove - Growl - Level 4
  (519, 51900, 45, 16, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Pidove - Leer - Level 8
  (519, 51900, 43, 16, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Pidove - Quick Attack - Level 11
  (519, 51900, 98, 16, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Pidove - Air Cutter - Level 15
  (519, 51900, 314, 16, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Pidove - Roost - Level 18
  (519, 51900, 355, 16, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Pidove - Detect - Level 22
  (519, 51900, 197, 16, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Pidove - Taunt - Level 25
  (519, 51900, 269, 16, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Pidove - Air Slash - Level 29
  (519, 51900, 403, 16, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Pidove - Razor Wind - Level 32
  (519, 51900, 13, 16, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Pidove - Feather Dance - Level 36
  (519, 51900, 297, 16, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Pidove - Swagger - Level 39
  (519, 51900, 207, 16, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Pidove - Facade - Level 43
  (519, 51900, 263, 16, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Pidove - Tailwind - Level 46
  (519, 51900, 366, 16, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Pidove - Sky Attack - Level 50
  (519, 51900, 143, 16, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Pidove - Work Up - TM01
  (519, 51900, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 16),
  -- Pidove - Toxic - TM06
  (519, 51900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Pidove - Hidden Power - TM10
  (519, 51900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Pidove - Sunny Day - TM11
  (519, 51900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Pidove - Taunt - TM12
  (519, 51900, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 20),
  -- Pidove - Protect - TM17
  (519, 51900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Pidove - Rain Dance - TM18
  (519, 51900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Pidove - Roost - TM19
  (519, 51900, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 23),
  -- Pidove - Frustration - TM21
  (519, 51900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Pidove - Return - TM27
  (519, 51900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 25),
  -- Pidove - Double Team - TM32
  (519, 51900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 26),
  -- Pidove - Aerial Ace - TM40
  (519, 51900, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 27),
  -- Pidove - Facade - TM42
  (519, 51900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 28),
  -- Pidove - Rest - TM44
  (519, 51900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 29),
  -- Pidove - Attract - TM45
  (519, 51900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 30),
  -- Pidove - Round - TM48
  (519, 51900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Pidove - Echoed Voice - TM49
  (519, 51900, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 32),
  -- Pidove - Steel Wing - TM51
  (519, 51900, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 33),
  -- Pidove - Fly - TM76
  (519, 51900, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 34),
  -- Pidove - Swagger - TM87
  (519, 51900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 35),
  -- Pidove - Sleep Talk - TM88
  (519, 51900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 36),
  -- Pidove - U-turn - TM89
  (519, 51900, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 37),
  -- Pidove - Substitute - TM90
  (519, 51900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 38),
  -- Pidove - Confide - TM100
  (519, 51900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 39),
  -- Pidove - Hypnosis - Egg
  (519, 51900, 95, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Pidove - Steel Wing - Egg
  (519, 51900, 211, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Pidove - Morning Sun - Egg
  (519, 51900, 234, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Pidove - Uproar - Egg
  (519, 51900, 253, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Pidove - Wish - Egg
  (519, 51900, 273, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Pidove - Lucky Chant - Egg
  (519, 51900, 381, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Pidove - Night Slash - Egg
  (519, 51900, 400, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Pidove - Bestow - Egg
  (519, 51900, 516, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Pidove - Sky Attack - Tutor
  (519, 51900, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Pidove - Snore - Tutor
  (519, 51900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Pidove - Uproar - Tutor
  (519, 51900, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Pidove - Heat Wave - Tutor
  (519, 51900, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Pidove - Tailwind - Tutor
  (519, 51900, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Pidove - Defog - Tutor
  (519, 51900, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),

  -- Tranquill - Gust - Level 1
  (520, 52000, 16, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tranquill - Leer - Level 1
  (520, 52000, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tranquill - Growl - Level 1
  (520, 52000, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tranquill - Quick Attack - Level 1
  (520, 52000, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tranquill - Growl - Level 4
  (520, 52000, 45, 16, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Tranquill - Leer - Level 8
  (520, 52000, 43, 16, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Tranquill - Quick Attack - Level 11
  (520, 52000, 98, 16, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Tranquill - Air Cutter - Level 15
  (520, 52000, 314, 16, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Tranquill - Roost - Level 18
  (520, 52000, 355, 16, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Tranquill - Detect - Level 23
  (520, 52000, 197, 16, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Tranquill - Taunt - Level 27
  (520, 52000, 269, 16, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Tranquill - Air Slash - Level 32
  (520, 52000, 403, 16, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Tranquill - Razor Wind - Level 36
  (520, 52000, 13, 16, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Tranquill - Feather Dance - Level 41
  (520, 52000, 297, 16, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Tranquill - Swagger - Level 45
  (520, 52000, 207, 16, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Tranquill - Facade - Level 50
  (520, 52000, 263, 16, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Tranquill - Tailwind - Level 54
  (520, 52000, 366, 16, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Tranquill - Sky Attack - Level 59
  (520, 52000, 143, 16, NULL, 1, 59, NULL, NULL, NULL, 18),
  -- Tranquill - Work Up - TM01
  (520, 52000, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 19),
  -- Tranquill - Toxic - TM06
  (520, 52000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Tranquill - Hidden Power - TM10
  (520, 52000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Tranquill - Sunny Day - TM11
  (520, 52000, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Tranquill - Taunt - TM12
  (520, 52000, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 23),
  -- Tranquill - Protect - TM17
  (520, 52000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Tranquill - Rain Dance - TM18
  (520, 52000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Tranquill - Roost - TM19
  (520, 52000, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 26),
  -- Tranquill - Frustration - TM21
  (520, 52000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Tranquill - Return - TM27
  (520, 52000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Tranquill - Double Team - TM32
  (520, 52000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Tranquill - Aerial Ace - TM40
  (520, 52000, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 30),
  -- Tranquill - Facade - TM42
  (520, 52000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Tranquill - Rest - TM44
  (520, 52000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Tranquill - Attract - TM45
  (520, 52000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Tranquill - Round - TM48
  (520, 52000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 34),
  -- Tranquill - Echoed Voice - TM49
  (520, 52000, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 35),
  -- Tranquill - Steel Wing - TM51
  (520, 52000, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 36),
  -- Tranquill - Fly - TM76
  (520, 52000, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 37),
  -- Tranquill - Swagger - TM87
  (520, 52000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 38),
  -- Tranquill - Sleep Talk - TM88
  (520, 52000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 39),
  -- Tranquill - U-turn - TM89
  (520, 52000, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 40),
  -- Tranquill - Substitute - TM90
  (520, 52000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 41),
  -- Tranquill - Confide - TM100
  (520, 52000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 42),
  -- Tranquill - Sky Attack - Tutor
  (520, 52000, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Tranquill - Snore - Tutor
  (520, 52000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Tranquill - Uproar - Tutor
  (520, 52000, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Tranquill - Heat Wave - Tutor
  (520, 52000, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Tranquill - Tailwind - Tutor
  (520, 52000, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Tranquill - Defog - Tutor
  (520, 52000, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),

  -- Unfezant - Gust - Level 1
  (521, 52100, 16, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Unfezant - Leer - Level 1
  (521, 52100, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Unfezant - Growl - Level 1
  (521, 52100, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Unfezant - Quick Attack - Level 1
  (521, 52100, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Unfezant - Growl - Level 4
  (521, 52100, 45, 16, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Unfezant - Leer - Level 8
  (521, 52100, 43, 16, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Unfezant - Quick Attack - Level 11
  (521, 52100, 98, 16, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Unfezant - Air Cutter - Level 15
  (521, 52100, 314, 16, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Unfezant - Roost - Level 18
  (521, 52100, 355, 16, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Unfezant - Detect - Level 23
  (521, 52100, 197, 16, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Unfezant - Taunt - Level 27
  (521, 52100, 269, 16, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Unfezant - Air Slash - Level 33
  (521, 52100, 403, 16, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Unfezant - Razor Wind - Level 38
  (521, 52100, 13, 16, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Unfezant - Feather Dance - Level 44
  (521, 52100, 297, 16, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Unfezant - Swagger - Level 49
  (521, 52100, 207, 16, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Unfezant - Facade - Level 55
  (521, 52100, 263, 16, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Unfezant - Tailwind - Level 60
  (521, 52100, 366, 16, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Unfezant - Sky Attack - Level 66
  (521, 52100, 143, 16, NULL, 1, 66, NULL, NULL, NULL, 18),
  -- Unfezant - Work Up - TM01
  (521, 52100, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 19),
  -- Unfezant - Toxic - TM06
  (521, 52100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Unfezant - Hidden Power - TM10
  (521, 52100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Unfezant - Sunny Day - TM11
  (521, 52100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Unfezant - Taunt - TM12
  (521, 52100, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 23),
  -- Unfezant - Hyper Beam - TM15
  (521, 52100, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 24),
  -- Unfezant - Protect - TM17
  (521, 52100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Unfezant - Rain Dance - TM18
  (521, 52100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Unfezant - Roost - TM19
  (521, 52100, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 27),
  -- Unfezant - Frustration - TM21
  (521, 52100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Unfezant - Return - TM27
  (521, 52100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Unfezant - Double Team - TM32
  (521, 52100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Unfezant - Aerial Ace - TM40
  (521, 52100, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 31),
  -- Unfezant - Facade - TM42
  (521, 52100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 32),
  -- Unfezant - Rest - TM44
  (521, 52100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 33),
  -- Unfezant - Attract - TM45
  (521, 52100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 34),
  -- Unfezant - Round - TM48
  (521, 52100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Unfezant - Echoed Voice - TM49
  (521, 52100, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 36),
  -- Unfezant - Steel Wing - TM51
  (521, 52100, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 37),
  -- Unfezant - Giga Impact - TM68
  (521, 52100, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 38),
  -- Unfezant - Fly - TM76
  (521, 52100, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 39),
  -- Unfezant - Psych Up - TM77
  (521, 52100, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 40),
  -- Unfezant - Swagger - TM87
  (521, 52100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 41),
  -- Unfezant - Sleep Talk - TM88
  (521, 52100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 42),
  -- Unfezant - U-turn - TM89
  (521, 52100, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 43),
  -- Unfezant - Substitute - TM90
  (521, 52100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 44),
  -- Unfezant - Confide - TM100
  (521, 52100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 45),
  -- Unfezant - Sky Attack - Tutor
  (521, 52100, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Unfezant - Snore - Tutor
  (521, 52100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Unfezant - Uproar - Tutor
  (521, 52100, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Unfezant - Heat Wave - Tutor
  (521, 52100, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Unfezant - Tailwind - Tutor
  (521, 52100, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Unfezant - Defog - Tutor
  (521, 52100, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),

  -- Blitzle - Quick Attack - Level 1
  (522, 52200, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Blitzle - Tail Whip - Level 4
  (522, 52200, 39, 16, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Blitzle - Charge - Level 8
  (522, 52200, 268, 16, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Blitzle - Shock Wave - Level 11
  (522, 52200, 351, 16, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Blitzle - Thunder Wave - Level 15
  (522, 52200, 86, 16, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Blitzle - Flame Charge - Level 18
  (522, 52200, 488, 16, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Blitzle - Pursuit - Level 22
  (522, 52200, 228, 16, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Blitzle - Spark - Level 25
  (522, 52200, 209, 16, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Blitzle - Stomp - Level 29
  (522, 52200, 23, 16, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Blitzle - Discharge - Level 32
  (522, 52200, 435, 16, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Blitzle - Agility - Level 36
  (522, 52200, 97, 16, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Blitzle - Wild Charge - Level 39
  (522, 52200, 528, 16, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Blitzle - Thrash - Level 43
  (522, 52200, 37, 16, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Blitzle - Toxic - TM06
  (522, 52200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 14),
  -- Blitzle - Hidden Power - TM10
  (522, 52200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 15),
  -- Blitzle - Light Screen - TM16
  (522, 52200, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 16),
  -- Blitzle - Protect - TM17
  (522, 52200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 17),
  -- Blitzle - Rain Dance - TM18
  (522, 52200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 18),
  -- Blitzle - Frustration - TM21
  (522, 52200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 19),
  -- Blitzle - Thunderbolt - TM24
  (522, 52200, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 20),
  -- Blitzle - Thunder - TM25
  (522, 52200, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 21),
  -- Blitzle - Return - TM27
  (522, 52200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 22),
  -- Blitzle - Double Team - TM32
  (522, 52200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 23),
  -- Blitzle - Facade - TM42
  (522, 52200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 24),
  -- Blitzle - Flame Charge - TM43
  (522, 52200, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 25),
  -- Blitzle - Rest - TM44
  (522, 52200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 26),
  -- Blitzle - Attract - TM45
  (522, 52200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 27),
  -- Blitzle - Round - TM48
  (522, 52200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 28),
  -- Blitzle - Charge Beam - TM57
  (522, 52200, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 29),
  -- Blitzle - Volt Switch - TM72
  (522, 52200, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 30),
  -- Blitzle - Thunder Wave - TM73
  (522, 52200, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 31),
  -- Blitzle - Swagger - TM87
  (522, 52200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 32),
  -- Blitzle - Sleep Talk - TM88
  (522, 52200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 33),
  -- Blitzle - Substitute - TM90
  (522, 52200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 34),
  -- Blitzle - Wild Charge - TM93
  (522, 52200, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 35),
  -- Blitzle - Confide - TM100
  (522, 52200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 36),
  -- Blitzle - Double Kick - Egg
  (522, 52200, 24, 16, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Blitzle - Sand Attack - Egg
  (522, 52200, 28, 16, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Blitzle - Take Down - Egg
  (522, 52200, 36, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Blitzle - Double-Edge - Egg
  (522, 52200, 38, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Blitzle - Rage - Egg
  (522, 52200, 99, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Blitzle - Screech - Egg
  (522, 52200, 103, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Blitzle - Endure - Egg
  (522, 52200, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Blitzle - Snatch - Egg
  (522, 52200, 289, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Blitzle - Shock Wave - Egg
  (522, 52200, 351, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Blitzle - Feint - Egg
  (522, 52200, 364, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Blitzle - Me First - Egg
  (522, 52200, 382, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Blitzle - Low Kick - Tutor
  (522, 52200, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Blitzle - Snore - Tutor
  (522, 52200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Blitzle - Snatch - Tutor
  (522, 52200, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Blitzle - Signal Beam - Tutor
  (522, 52200, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Blitzle - Bounce - Tutor
  (522, 52200, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Blitzle - Shock Wave - Tutor
  (522, 52200, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Blitzle - Magnet Rise - Tutor
  (522, 52200, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),

  -- Zebstrika - Tail Whip - Level 1
  (523, 52300, 39, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zebstrika - Thunder Wave - Level 1
  (523, 52300, 86, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zebstrika - Quick Attack - Level 1
  (523, 52300, 98, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Zebstrika - Charge - Level 1
  (523, 52300, 268, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Zebstrika - Ion Deluge - Level 1
  (523, 52300, 569, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Zebstrika - Tail Whip - Level 4
  (523, 52300, 39, 16, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Zebstrika - Charge - Level 8
  (523, 52300, 268, 16, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Zebstrika - Shock Wave - Level 11
  (523, 52300, 351, 16, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Zebstrika - Thunder Wave - Level 15
  (523, 52300, 86, 16, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Zebstrika - Flame Charge - Level 18
  (523, 52300, 488, 16, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Zebstrika - Pursuit - Level 22
  (523, 52300, 228, 16, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Zebstrika - Spark - Level 25
  (523, 52300, 209, 16, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Zebstrika - Stomp - Level 31
  (523, 52300, 23, 16, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Zebstrika - Discharge - Level 36
  (523, 52300, 435, 16, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Zebstrika - Agility - Level 42
  (523, 52300, 97, 16, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Zebstrika - Wild Charge - Level 47
  (523, 52300, 528, 16, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Zebstrika - Thrash - Level 53
  (523, 52300, 37, 16, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Zebstrika - Ion Deluge - Level 58
  (523, 52300, 569, 16, NULL, 1, 58, NULL, NULL, NULL, 18),
  -- Zebstrika - Toxic - TM06
  (523, 52300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Zebstrika - Hidden Power - TM10
  (523, 52300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Zebstrika - Hyper Beam - TM15
  (523, 52300, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 21),
  -- Zebstrika - Light Screen - TM16
  (523, 52300, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 22),
  -- Zebstrika - Protect - TM17
  (523, 52300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Zebstrika - Rain Dance - TM18
  (523, 52300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Zebstrika - Frustration - TM21
  (523, 52300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Zebstrika - Thunderbolt - TM24
  (523, 52300, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 26),
  -- Zebstrika - Thunder - TM25
  (523, 52300, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 27),
  -- Zebstrika - Return - TM27
  (523, 52300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Zebstrika - Double Team - TM32
  (523, 52300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Zebstrika - Facade - TM42
  (523, 52300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 30),
  -- Zebstrika - Flame Charge - TM43
  (523, 52300, 488, 16, NULL, 2, NULL, NULL, 16002043, NULL, 31),
  -- Zebstrika - Rest - TM44
  (523, 52300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Zebstrika - Attract - TM45
  (523, 52300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Zebstrika - Round - TM48
  (523, 52300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 34),
  -- Zebstrika - Overheat - TM50
  (523, 52300, 315, 16, NULL, 2, NULL, NULL, 16002050, NULL, 35),
  -- Zebstrika - Charge Beam - TM57
  (523, 52300, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 36),
  -- Zebstrika - Giga Impact - TM68
  (523, 52300, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 37),
  -- Zebstrika - Volt Switch - TM72
  (523, 52300, 521, 16, NULL, 2, NULL, NULL, 16002072, NULL, 38),
  -- Zebstrika - Thunder Wave - TM73
  (523, 52300, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 39),
  -- Zebstrika - Swagger - TM87
  (523, 52300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 40),
  -- Zebstrika - Sleep Talk - TM88
  (523, 52300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 41),
  -- Zebstrika - Substitute - TM90
  (523, 52300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 42),
  -- Zebstrika - Wild Charge - TM93
  (523, 52300, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 43),
  -- Zebstrika - Confide - TM100
  (523, 52300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 44),
  -- Zebstrika - Low Kick - Tutor
  (523, 52300, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Zebstrika - Snore - Tutor
  (523, 52300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Zebstrika - Snatch - Tutor
  (523, 52300, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Zebstrika - Signal Beam - Tutor
  (523, 52300, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Zebstrika - Bounce - Tutor
  (523, 52300, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Zebstrika - Shock Wave - Tutor
  (523, 52300, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Zebstrika - Magnet Rise - Tutor
  (523, 52300, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Zebstrika - Ally Switch - Tutor
  (523, 52300, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Zebstrika - Laser Focus - Tutor
  (523, 52300, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),

  -- Roggenrola - Tackle - Level 1
  (524, 52400, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Roggenrola - Harden - Level 4
  (524, 52400, 106, 16, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Roggenrola - Sand Attack - Level 7
  (524, 52400, 28, 16, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Roggenrola - Headbutt - Level 10
  (524, 52400, 29, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Roggenrola - Rock Blast - Level 14
  (524, 52400, 350, 16, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Roggenrola - Mud-Slap - Level 17
  (524, 52400, 189, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Roggenrola - Iron Defense - Level 20
  (524, 52400, 334, 16, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Roggenrola - Smack Down - Level 23
  (524, 52400, 479, 16, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Roggenrola - Rock Slide - Level 27
  (524, 52400, 157, 16, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Roggenrola - Stealth Rock - Level 30
  (524, 52400, 446, 16, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Roggenrola - Sandstorm - Level 33
  (524, 52400, 201, 16, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Roggenrola - Stone Edge - Level 36
  (524, 52400, 444, 16, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Roggenrola - Explosion - Level 40
  (524, 52400, 153, 16, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Roggenrola - Toxic - TM06
  (524, 52400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 14),
  -- Roggenrola - Hidden Power - TM10
  (524, 52400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 15),
  -- Roggenrola - Protect - TM17
  (524, 52400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 16),
  -- Roggenrola - Frustration - TM21
  (524, 52400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 17),
  -- Roggenrola - Smack Down - TM23
  (524, 52400, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 18),
  -- Roggenrola - Earthquake - TM26
  (524, 52400, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 19),
  -- Roggenrola - Return - TM27
  (524, 52400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 20),
  -- Roggenrola - Double Team - TM32
  (524, 52400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 21),
  -- Roggenrola - Sandstorm - TM37
  (524, 52400, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 22),
  -- Roggenrola - Rock Tomb - TM39
  (524, 52400, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 23),
  -- Roggenrola - Facade - TM42
  (524, 52400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 24),
  -- Roggenrola - Rest - TM44
  (524, 52400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 25),
  -- Roggenrola - Attract - TM45
  (524, 52400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 26),
  -- Roggenrola - Round - TM48
  (524, 52400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 27),
  -- Roggenrola - Explosion - TM64
  (524, 52400, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 28),
  -- Roggenrola - Rock Polish - TM69
  (524, 52400, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 29),
  -- Roggenrola - Stone Edge - TM71
  (524, 52400, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 30),
  -- Roggenrola - Bulldoze - TM78
  (524, 52400, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 31),
  -- Roggenrola - Rock Slide - TM80
  (524, 52400, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 32),
  -- Roggenrola - Swagger - TM87
  (524, 52400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 33),
  -- Roggenrola - Sleep Talk - TM88
  (524, 52400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 34),
  -- Roggenrola - Substitute - TM90
  (524, 52400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 35),
  -- Roggenrola - Flash Cannon - TM91
  (524, 52400, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 36),
  -- Roggenrola - Nature Power - TM96
  (524, 52400, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 37),
  -- Roggenrola - Confide - TM100
  (524, 52400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 38),
  -- Roggenrola - Take Down - Egg
  (524, 52400, 36, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Roggenrola - Curse - Egg
  (524, 52400, 174, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Roggenrola - Lock-On - Egg
  (524, 52400, 199, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Roggenrola - Magnitude - Egg
  (524, 52400, 222, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Roggenrola - Rock Tomb - Egg
  (524, 52400, 317, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Roggenrola - Gravity - Egg
  (524, 52400, 356, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Roggenrola - Wide Guard - Egg
  (524, 52400, 469, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Roggenrola - Autotomize - Egg
  (524, 52400, 475, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Roggenrola - Heavy Slam - Egg
  (524, 52400, 484, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Roggenrola - Snore - Tutor
  (524, 52400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Roggenrola - Iron Defense - Tutor
  (524, 52400, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Roggenrola - Block - Tutor
  (524, 52400, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Roggenrola - Gravity - Tutor
  (524, 52400, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Roggenrola - Earth Power - Tutor
  (524, 52400, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Roggenrola - Stealth Rock - Tutor
  (524, 52400, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),

  -- Boldore - Sand Attack - Level 1
  (525, 52500, 28, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Boldore - Headbutt - Level 1
  (525, 52500, 29, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Boldore - Tackle - Level 1
  (525, 52500, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Boldore - Harden - Level 1
  (525, 52500, 106, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Boldore - Power Gem - Level 1
  (525, 52500, 408, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Boldore - Harden - Level 4
  (525, 52500, 106, 16, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Boldore - Sand Attack - Level 7
  (525, 52500, 28, 16, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Boldore - Headbutt - Level 10
  (525, 52500, 29, 16, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Boldore - Rock Blast - Level 14
  (525, 52500, 350, 16, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Boldore - Mud-Slap - Level 17
  (525, 52500, 189, 16, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Boldore - Iron Defense - Level 20
  (525, 52500, 334, 16, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Boldore - Smack Down - Level 23
  (525, 52500, 479, 16, NULL, 1, 23, NULL, NULL, NULL, 12),
  -- Boldore - Rock Slide - Level 30
  (525, 52500, 157, 16, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Boldore - Stealth Rock - Level 36
  (525, 52500, 446, 16, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Boldore - Sandstorm - Level 42
  (525, 52500, 201, 16, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Boldore - Stone Edge - Level 48
  (525, 52500, 444, 16, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Boldore - Explosion - Level 55
  (525, 52500, 153, 16, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Boldore - Toxic - TM06
  (525, 52500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Boldore - Hidden Power - TM10
  (525, 52500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Boldore - Protect - TM17
  (525, 52500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Boldore - Frustration - TM21
  (525, 52500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 21),
  -- Boldore - Smack Down - TM23
  (525, 52500, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 22),
  -- Boldore - Earthquake - TM26
  (525, 52500, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 23),
  -- Boldore - Return - TM27
  (525, 52500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Boldore - Double Team - TM32
  (525, 52500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 25),
  -- Boldore - Sandstorm - TM37
  (525, 52500, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 26),
  -- Boldore - Rock Tomb - TM39
  (525, 52500, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 27),
  -- Boldore - Facade - TM42
  (525, 52500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 28),
  -- Boldore - Rest - TM44
  (525, 52500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 29),
  -- Boldore - Attract - TM45
  (525, 52500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 30),
  -- Boldore - Round - TM48
  (525, 52500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Boldore - Explosion - TM64
  (525, 52500, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 32),
  -- Boldore - Rock Polish - TM69
  (525, 52500, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 33),
  -- Boldore - Stone Edge - TM71
  (525, 52500, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 34),
  -- Boldore - Bulldoze - TM78
  (525, 52500, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 35),
  -- Boldore - Rock Slide - TM80
  (525, 52500, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 36),
  -- Boldore - Swagger - TM87
  (525, 52500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 37),
  -- Boldore - Sleep Talk - TM88
  (525, 52500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 38),
  -- Boldore - Substitute - TM90
  (525, 52500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 39),
  -- Boldore - Flash Cannon - TM91
  (525, 52500, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 40),
  -- Boldore - Nature Power - TM96
  (525, 52500, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 41),
  -- Boldore - Confide - TM100
  (525, 52500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 42),
  -- Boldore - Snore - Tutor
  (525, 52500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Boldore - Iron Defense - Tutor
  (525, 52500, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Boldore - Block - Tutor
  (525, 52500, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Boldore - Gravity - Tutor
  (525, 52500, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Boldore - Earth Power - Tutor
  (525, 52500, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Boldore - Stealth Rock - Tutor
  (525, 52500, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Boldore - Stomping Tantrum - Tutor
  (525, 52500, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Boldore - Power Gem - Evolution
  (525, 52500, 408, 16, NULL, 7, NULL, NULL, NULL, NULL, 50),

  -- Gigalith - Sand Attack - Level 1
  (526, 52600, 28, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gigalith - Headbutt - Level 1
  (526, 52600, 29, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gigalith - Tackle - Level 1
  (526, 52600, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gigalith - Harden - Level 1
  (526, 52600, 106, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gigalith - Power Gem - Level 1
  (526, 52600, 408, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gigalith - Harden - Level 4
  (526, 52600, 106, 16, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Gigalith - Sand Attack - Level 7
  (526, 52600, 28, 16, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Gigalith - Headbutt - Level 10
  (526, 52600, 29, 16, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Gigalith - Rock Blast - Level 14
  (526, 52600, 350, 16, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Gigalith - Mud-Slap - Level 17
  (526, 52600, 189, 16, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Gigalith - Iron Defense - Level 20
  (526, 52600, 334, 16, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Gigalith - Smack Down - Level 23
  (526, 52600, 479, 16, NULL, 1, 23, NULL, NULL, NULL, 12),
  -- Gigalith - Rock Slide - Level 30
  (526, 52600, 157, 16, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Gigalith - Stealth Rock - Level 36
  (526, 52600, 446, 16, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Gigalith - Sandstorm - Level 42
  (526, 52600, 201, 16, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Gigalith - Stone Edge - Level 48
  (526, 52600, 444, 16, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Gigalith - Explosion - Level 55
  (526, 52600, 153, 16, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Gigalith - Toxic - TM06
  (526, 52600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Gigalith - Hidden Power - TM10
  (526, 52600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Gigalith - Hyper Beam - TM15
  (526, 52600, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 20),
  -- Gigalith - Protect - TM17
  (526, 52600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Gigalith - Frustration - TM21
  (526, 52600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Gigalith - Solar Beam - TM22
  (526, 52600, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 23),
  -- Gigalith - Smack Down - TM23
  (526, 52600, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 24),
  -- Gigalith - Earthquake - TM26
  (526, 52600, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 25),
  -- Gigalith - Return - TM27
  (526, 52600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Gigalith - Double Team - TM32
  (526, 52600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 27),
  -- Gigalith - Sandstorm - TM37
  (526, 52600, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 28),
  -- Gigalith - Rock Tomb - TM39
  (526, 52600, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 29),
  -- Gigalith - Facade - TM42
  (526, 52600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 30),
  -- Gigalith - Rest - TM44
  (526, 52600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 31),
  -- Gigalith - Attract - TM45
  (526, 52600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 32),
  -- Gigalith - Round - TM48
  (526, 52600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 33),
  -- Gigalith - Explosion - TM64
  (526, 52600, 153, 16, NULL, 2, NULL, NULL, 16002064, NULL, 34),
  -- Gigalith - Giga Impact - TM68
  (526, 52600, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 35),
  -- Gigalith - Rock Polish - TM69
  (526, 52600, 397, 16, NULL, 2, NULL, NULL, 16002069, NULL, 36),
  -- Gigalith - Stone Edge - TM71
  (526, 52600, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 37),
  -- Gigalith - Bulldoze - TM78
  (526, 52600, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 38),
  -- Gigalith - Rock Slide - TM80
  (526, 52600, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 39),
  -- Gigalith - Swagger - TM87
  (526, 52600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 40),
  -- Gigalith - Sleep Talk - TM88
  (526, 52600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 41),
  -- Gigalith - Substitute - TM90
  (526, 52600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 42),
  -- Gigalith - Flash Cannon - TM91
  (526, 52600, 430, 16, NULL, 2, NULL, NULL, 16002091, NULL, 43),
  -- Gigalith - Nature Power - TM96
  (526, 52600, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 44),
  -- Gigalith - Confide - TM100
  (526, 52600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 45),
  -- Gigalith - Snore - Tutor
  (526, 52600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Gigalith - Superpower - Tutor
  (526, 52600, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Gigalith - Iron Defense - Tutor
  (526, 52600, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Gigalith - Block - Tutor
  (526, 52600, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Gigalith - Gravity - Tutor
  (526, 52600, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Gigalith - Earth Power - Tutor
  (526, 52600, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Gigalith - Iron Head - Tutor
  (526, 52600, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Gigalith - Stealth Rock - Tutor
  (526, 52600, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Gigalith - Laser Focus - Tutor
  (526, 52600, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Gigalith - Throat Chop - Tutor
  (526, 52600, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Gigalith - Stomping Tantrum - Tutor
  (526, 52600, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),

  -- Woobat - Confusion - Level 1
  (527, 52700, 93, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Woobat - Odor Sleuth - Level 4
  (527, 52700, 316, 16, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Woobat - Gust - Level 8
  (527, 52700, 16, 16, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Woobat - Assurance - Level 12
  (527, 52700, 372, 16, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Woobat - Heart Stamp - Level 15
  (527, 52700, 531, 16, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Woobat - Imprison - Level 19
  (527, 52700, 286, 16, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Woobat - Air Cutter - Level 21
  (527, 52700, 314, 16, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Woobat - Attract - Level 25
  (527, 52700, 213, 16, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Woobat - Amnesia - Level 29
  (527, 52700, 133, 16, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Woobat - Calm Mind - Level 29
  (527, 52700, 347, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Woobat - Air Slash - Level 32
  (527, 52700, 403, 16, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Woobat - Future Sight - Level 36
  (527, 52700, 248, 16, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Woobat - Psychic - Level 41
  (527, 52700, 94, 16, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Woobat - Endeavor - Level 47
  (527, 52700, 283, 16, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Woobat - Psyshock - TM03
  (527, 52700, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 15),
  -- Woobat - Calm Mind - TM04
  (527, 52700, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 16),
  -- Woobat - Toxic - TM06
  (527, 52700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Woobat - Hidden Power - TM10
  (527, 52700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Woobat - Taunt - TM12
  (527, 52700, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 19),
  -- Woobat - Light Screen - TM16
  (527, 52700, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 20),
  -- Woobat - Protect - TM17
  (527, 52700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 21),
  -- Woobat - Rain Dance - TM18
  (527, 52700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 22),
  -- Woobat - Roost - TM19
  (527, 52700, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 23),
  -- Woobat - Safeguard - TM20
  (527, 52700, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 24),
  -- Woobat - Frustration - TM21
  (527, 52700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Woobat - Return - TM27
  (527, 52700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Woobat - Psychic - TM29
  (527, 52700, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 27),
  -- Woobat - Shadow Ball - TM30
  (527, 52700, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 28),
  -- Woobat - Double Team - TM32
  (527, 52700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Woobat - Reflect - TM33
  (527, 52700, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 30),
  -- Woobat - Aerial Ace - TM40
  (527, 52700, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 31),
  -- Woobat - Torment - TM41
  (527, 52700, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 32),
  -- Woobat - Facade - TM42
  (527, 52700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 33),
  -- Woobat - Rest - TM44
  (527, 52700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Woobat - Attract - TM45
  (527, 52700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 35),
  -- Woobat - Thief - TM46
  (527, 52700, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 36),
  -- Woobat - Round - TM48
  (527, 52700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Woobat - Steel Wing - TM51
  (527, 52700, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 38),
  -- Woobat - Energy Ball - TM53
  (527, 52700, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 39),
  -- Woobat - Charge Beam - TM57
  (527, 52700, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 40),
  -- Woobat - Acrobatics - TM62
  (527, 52700, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 41),
  -- Woobat - Embargo - TM63
  (527, 52700, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 42),
  -- Woobat - Thunder Wave - TM73
  (527, 52700, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 43),
  -- Woobat - Gyro Ball - TM74
  (527, 52700, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 44),
  -- Woobat - Fly - TM76
  (527, 52700, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 45),
  -- Woobat - Psych Up - TM77
  (527, 52700, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 46),
  -- Woobat - Dream Eater - TM85
  (527, 52700, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 47),
  -- Woobat - Swagger - TM87
  (527, 52700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 48),
  -- Woobat - Sleep Talk - TM88
  (527, 52700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 49),
  -- Woobat - U-turn - TM89
  (527, 52700, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 50),
  -- Woobat - Substitute - TM90
  (527, 52700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 51),
  -- Woobat - Trick Room - TM92
  (527, 52700, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 52),
  -- Woobat - Confide - TM100
  (527, 52700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 53),
  -- Woobat - Supersonic - Egg
  (527, 52700, 48, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Woobat - Charm - Egg
  (527, 52700, 204, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Woobat - Flatter - Egg
  (527, 52700, 260, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Woobat - Helping Hand - Egg
  (527, 52700, 270, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Woobat - Knock Off - Egg
  (527, 52700, 282, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Woobat - Fake Tears - Egg
  (527, 52700, 313, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Woobat - Roost - Egg
  (527, 52700, 355, 16, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Woobat - Psycho Shift - Egg
  (527, 52700, 375, 16, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Woobat - Captivate - Egg
  (527, 52700, 445, 16, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Woobat - Synchronoise - Egg
  (527, 52700, 485, 16, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Woobat - Stored Power - Egg
  (527, 52700, 500, 16, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Woobat - Venom Drench - Egg
  (527, 52700, 599, 16, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Woobat - Super Fang - Tutor
  (527, 52700, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Woobat - Snore - Tutor
  (527, 52700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Woobat - Giga Drain - Tutor
  (527, 52700, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Woobat - Uproar - Tutor
  (527, 52700, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Woobat - Heat Wave - Tutor
  (527, 52700, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Woobat - Helping Hand - Tutor
  (527, 52700, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Woobat - Trick - Tutor
  (527, 52700, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Woobat - Magic Coat - Tutor
  (527, 52700, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Woobat - Knock Off - Tutor
  (527, 52700, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Woobat - Endeavor - Tutor
  (527, 52700, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Woobat - Skill Swap - Tutor
  (527, 52700, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Woobat - Signal Beam - Tutor
  (527, 52700, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Woobat - Shock Wave - Tutor
  (527, 52700, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Woobat - Tailwind - Tutor
  (527, 52700, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Woobat - Zen Headbutt - Tutor
  (527, 52700, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Woobat - Defog - Tutor
  (527, 52700, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Woobat - Telekinesis - Tutor
  (527, 52700, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Woobat - After You - Tutor
  (527, 52700, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),
  -- Woobat - Ally Switch - Tutor
  (527, 52700, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 84),

  -- Swoobat - Gust - Level 1
  (528, 52800, 16, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swoobat - Confusion - Level 1
  (528, 52800, 93, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swoobat - Odor Sleuth - Level 1
  (528, 52800, 316, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Swoobat - Assurance - Level 1
  (528, 52800, 372, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Swoobat - Odor Sleuth - Level 4
  (528, 52800, 316, 16, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Swoobat - Gust - Level 8
  (528, 52800, 16, 16, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Swoobat - Assurance - Level 12
  (528, 52800, 372, 16, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Swoobat - Heart Stamp - Level 15
  (528, 52800, 531, 16, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Swoobat - Imprison - Level 19
  (528, 52800, 286, 16, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Swoobat - Air Cutter - Level 21
  (528, 52800, 314, 16, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Swoobat - Attract - Level 25
  (528, 52800, 213, 16, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Swoobat - Amnesia - Level 29
  (528, 52800, 133, 16, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Swoobat - Calm Mind - Level 29
  (528, 52800, 347, 16, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Swoobat - Air Slash - Level 32
  (528, 52800, 403, 16, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Swoobat - Future Sight - Level 36
  (528, 52800, 248, 16, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Swoobat - Psychic - Level 41
  (528, 52800, 94, 16, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Swoobat - Endeavor - Level 47
  (528, 52800, 283, 16, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Swoobat - Psyshock - TM03
  (528, 52800, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 18),
  -- Swoobat - Calm Mind - TM04
  (528, 52800, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 19),
  -- Swoobat - Toxic - TM06
  (528, 52800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Swoobat - Hidden Power - TM10
  (528, 52800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Swoobat - Taunt - TM12
  (528, 52800, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 22),
  -- Swoobat - Hyper Beam - TM15
  (528, 52800, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 23),
  -- Swoobat - Light Screen - TM16
  (528, 52800, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 24),
  -- Swoobat - Protect - TM17
  (528, 52800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Swoobat - Rain Dance - TM18
  (528, 52800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Swoobat - Roost - TM19
  (528, 52800, 355, 16, NULL, 2, NULL, NULL, 16002019, NULL, 27),
  -- Swoobat - Safeguard - TM20
  (528, 52800, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 28),
  -- Swoobat - Frustration - TM21
  (528, 52800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 29),
  -- Swoobat - Return - TM27
  (528, 52800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 30),
  -- Swoobat - Psychic - TM29
  (528, 52800, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 31),
  -- Swoobat - Shadow Ball - TM30
  (528, 52800, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 32),
  -- Swoobat - Double Team - TM32
  (528, 52800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Swoobat - Reflect - TM33
  (528, 52800, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 34),
  -- Swoobat - Aerial Ace - TM40
  (528, 52800, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 35),
  -- Swoobat - Torment - TM41
  (528, 52800, 259, 16, NULL, 2, NULL, NULL, 16002041, NULL, 36),
  -- Swoobat - Facade - TM42
  (528, 52800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 37),
  -- Swoobat - Rest - TM44
  (528, 52800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 38),
  -- Swoobat - Attract - TM45
  (528, 52800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 39),
  -- Swoobat - Thief - TM46
  (528, 52800, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 40),
  -- Swoobat - Round - TM48
  (528, 52800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 41),
  -- Swoobat - Steel Wing - TM51
  (528, 52800, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 42),
  -- Swoobat - Energy Ball - TM53
  (528, 52800, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 43),
  -- Swoobat - Charge Beam - TM57
  (528, 52800, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 44),
  -- Swoobat - Acrobatics - TM62
  (528, 52800, 512, 16, NULL, 2, NULL, NULL, 16002062, NULL, 45),
  -- Swoobat - Embargo - TM63
  (528, 52800, 373, 16, NULL, 2, NULL, NULL, 16002063, NULL, 46),
  -- Swoobat - Giga Impact - TM68
  (528, 52800, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 47),
  -- Swoobat - Thunder Wave - TM73
  (528, 52800, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 48),
  -- Swoobat - Gyro Ball - TM74
  (528, 52800, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 49),
  -- Swoobat - Fly - TM76
  (528, 52800, 19, 16, NULL, 2, NULL, NULL, 16002076, NULL, 50),
  -- Swoobat - Psych Up - TM77
  (528, 52800, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 51),
  -- Swoobat - Dream Eater - TM85
  (528, 52800, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 52),
  -- Swoobat - Swagger - TM87
  (528, 52800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 53),
  -- Swoobat - Sleep Talk - TM88
  (528, 52800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 54),
  -- Swoobat - U-turn - TM89
  (528, 52800, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 55),
  -- Swoobat - Substitute - TM90
  (528, 52800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 56),
  -- Swoobat - Trick Room - TM92
  (528, 52800, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 57),
  -- Swoobat - Confide - TM100
  (528, 52800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 58),
  -- Swoobat - Sky Attack - Tutor
  (528, 52800, 143, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Swoobat - Super Fang - Tutor
  (528, 52800, 162, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Swoobat - Snore - Tutor
  (528, 52800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Swoobat - Giga Drain - Tutor
  (528, 52800, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Swoobat - Uproar - Tutor
  (528, 52800, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Swoobat - Heat Wave - Tutor
  (528, 52800, 257, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Swoobat - Helping Hand - Tutor
  (528, 52800, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Swoobat - Trick - Tutor
  (528, 52800, 271, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Swoobat - Magic Coat - Tutor
  (528, 52800, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Swoobat - Knock Off - Tutor
  (528, 52800, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Swoobat - Endeavor - Tutor
  (528, 52800, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Swoobat - Skill Swap - Tutor
  (528, 52800, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Swoobat - Signal Beam - Tutor
  (528, 52800, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 71),
  -- Swoobat - Shock Wave - Tutor
  (528, 52800, 351, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 72),
  -- Swoobat - Tailwind - Tutor
  (528, 52800, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 73),
  -- Swoobat - Zen Headbutt - Tutor
  (528, 52800, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 74),
  -- Swoobat - Defog - Tutor
  (528, 52800, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 75),
  -- Swoobat - Telekinesis - Tutor
  (528, 52800, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Swoobat - After You - Tutor
  (528, 52800, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Swoobat - Ally Switch - Tutor
  (528, 52800, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Swoobat - Laser Focus - Tutor
  (528, 52800, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),

  -- Drilbur - Scratch - Level 1
  (529, 52900, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drilbur - Mud Sport - Level 1
  (529, 52900, 300, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drilbur - Rapid Spin - Level 5
  (529, 52900, 229, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Drilbur - Mud-Slap - Level 8
  (529, 52900, 189, 16, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Drilbur - Fury Swipes - Level 12
  (529, 52900, 154, 16, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Drilbur - Metal Claw - Level 15
  (529, 52900, 232, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Drilbur - Dig - Level 19
  (529, 52900, 91, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Drilbur - Hone Claws - Level 22
  (529, 52900, 468, 16, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Drilbur - Slash - Level 26
  (529, 52900, 163, 16, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Drilbur - Rock Slide - Level 29
  (529, 52900, 157, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Drilbur - Earthquake - Level 33
  (529, 52900, 89, 16, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Drilbur - Swords Dance - Level 36
  (529, 52900, 14, 16, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Drilbur - Sandstorm - Level 40
  (529, 52900, 201, 16, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Drilbur - Drill Run - Level 43
  (529, 52900, 529, 16, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Drilbur - Fissure - Level 47
  (529, 52900, 90, 16, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Drilbur - Toxic - TM06
  (529, 52900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Drilbur - Hidden Power - TM10
  (529, 52900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Drilbur - Protect - TM17
  (529, 52900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 18),
  -- Drilbur - Frustration - TM21
  (529, 52900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 19),
  -- Drilbur - Earthquake - TM26
  (529, 52900, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 20),
  -- Drilbur - Return - TM27
  (529, 52900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 21),
  -- Drilbur - Brick Break - TM31
  (529, 52900, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 22),
  -- Drilbur - Double Team - TM32
  (529, 52900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 23),
  -- Drilbur - Sludge Bomb - TM36
  (529, 52900, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 24),
  -- Drilbur - Sandstorm - TM37
  (529, 52900, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 25),
  -- Drilbur - Rock Tomb - TM39
  (529, 52900, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 26),
  -- Drilbur - Aerial Ace - TM40
  (529, 52900, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 27),
  -- Drilbur - Facade - TM42
  (529, 52900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 28),
  -- Drilbur - Rest - TM44
  (529, 52900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 29),
  -- Drilbur - Attract - TM45
  (529, 52900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 30),
  -- Drilbur - Round - TM48
  (529, 52900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Drilbur - Fling - TM56
  (529, 52900, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 32),
  -- Drilbur - Shadow Claw - TM65
  (529, 52900, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 33),
  -- Drilbur - Swords Dance - TM75
  (529, 52900, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 34),
  -- Drilbur - Bulldoze - TM78
  (529, 52900, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 35),
  -- Drilbur - Rock Slide - TM80
  (529, 52900, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 36),
  -- Drilbur - X-Scissor - TM81
  (529, 52900, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 37),
  -- Drilbur - Poison Jab - TM84
  (529, 52900, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 38),
  -- Drilbur - Swagger - TM87
  (529, 52900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 39),
  -- Drilbur - Sleep Talk - TM88
  (529, 52900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 40),
  -- Drilbur - Substitute - TM90
  (529, 52900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 41),
  -- Drilbur - Confide - TM100
  (529, 52900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 42),
  -- Drilbur - Submission - Egg
  (529, 52900, 66, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Drilbur - Skull Bash - Egg
  (529, 52900, 130, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Drilbur - Rapid Spin - Egg
  (529, 52900, 229, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Drilbur - Crush Claw - Egg
  (529, 52900, 306, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Drilbur - Metal Sound - Egg
  (529, 52900, 319, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Drilbur - Iron Defense - Egg
  (529, 52900, 334, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Drilbur - Earth Power - Egg
  (529, 52900, 414, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Drilbur - Rock Climb - Egg
  (529, 52900, 431, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Drilbur - Snore - Tutor
  (529, 52900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Drilbur - Iron Defense - Tutor
  (529, 52900, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Drilbur - Earth Power - Tutor
  (529, 52900, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Drilbur - Stealth Rock - Tutor
  (529, 52900, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Drilbur - Drill Run - Tutor
  (529, 52900, 529, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),

  -- Excadrill - Scratch - Level 1
  (530, 53000, 10, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Excadrill - Horn Drill - Level 1
  (530, 53000, 32, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Excadrill - Mud-Slap - Level 1
  (530, 53000, 189, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Excadrill - Rapid Spin - Level 1
  (530, 53000, 229, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Excadrill - Mud Sport - Level 1
  (530, 53000, 300, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Excadrill - Rototiller - Level 1
  (530, 53000, 563, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Excadrill - Rapid Spin - Level 5
  (530, 53000, 229, 16, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Excadrill - Mud-Slap - Level 8
  (530, 53000, 189, 16, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Excadrill - Fury Swipes - Level 12
  (530, 53000, 154, 16, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Excadrill - Metal Claw - Level 15
  (530, 53000, 232, 16, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Excadrill - Dig - Level 19
  (530, 53000, 91, 16, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Excadrill - Hone Claws - Level 22
  (530, 53000, 468, 16, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Excadrill - Slash - Level 26
  (530, 53000, 163, 16, NULL, 1, 26, NULL, NULL, NULL, 13),
  -- Excadrill - Rock Slide - Level 29
  (530, 53000, 157, 16, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Excadrill - Earthquake - Level 36
  (530, 53000, 89, 16, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Excadrill - Swords Dance - Level 42
  (530, 53000, 14, 16, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Excadrill - Sandstorm - Level 49
  (530, 53000, 201, 16, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Excadrill - Drill Run - Level 55
  (530, 53000, 529, 16, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Excadrill - Fissure - Level 62
  (530, 53000, 90, 16, NULL, 1, 62, NULL, NULL, NULL, 19),
  -- Excadrill - Toxic - TM06
  (530, 53000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Excadrill - Hidden Power - TM10
  (530, 53000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Excadrill - Hyper Beam - TM15
  (530, 53000, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 22),
  -- Excadrill - Protect - TM17
  (530, 53000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Excadrill - Frustration - TM21
  (530, 53000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Excadrill - Earthquake - TM26
  (530, 53000, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 25),
  -- Excadrill - Return - TM27
  (530, 53000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Excadrill - Brick Break - TM31
  (530, 53000, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 27),
  -- Excadrill - Double Team - TM32
  (530, 53000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Excadrill - Sludge Bomb - TM36
  (530, 53000, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 29),
  -- Excadrill - Sandstorm - TM37
  (530, 53000, 201, 16, NULL, 2, NULL, NULL, 16002037, NULL, 30),
  -- Excadrill - Rock Tomb - TM39
  (530, 53000, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 31),
  -- Excadrill - Aerial Ace - TM40
  (530, 53000, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 32),
  -- Excadrill - Facade - TM42
  (530, 53000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 33),
  -- Excadrill - Rest - TM44
  (530, 53000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Excadrill - Attract - TM45
  (530, 53000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 35),
  -- Excadrill - Round - TM48
  (530, 53000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 36),
  -- Excadrill - Focus Blast - TM52
  (530, 53000, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 37),
  -- Excadrill - Fling - TM56
  (530, 53000, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 38),
  -- Excadrill - Brutal Swing - TM59
  (530, 53000, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 39),
  -- Excadrill - Shadow Claw - TM65
  (530, 53000, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 40),
  -- Excadrill - Smart Strike - TM67
  (530, 53000, 684, 16, NULL, 2, NULL, NULL, 16002067, NULL, 41),
  -- Excadrill - Giga Impact - TM68
  (530, 53000, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 42),
  -- Excadrill - Swords Dance - TM75
  (530, 53000, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 43),
  -- Excadrill - Bulldoze - TM78
  (530, 53000, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 44),
  -- Excadrill - Rock Slide - TM80
  (530, 53000, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 45),
  -- Excadrill - X-Scissor - TM81
  (530, 53000, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 46),
  -- Excadrill - Poison Jab - TM84
  (530, 53000, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 47),
  -- Excadrill - Swagger - TM87
  (530, 53000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 48),
  -- Excadrill - Sleep Talk - TM88
  (530, 53000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 49),
  -- Excadrill - Substitute - TM90
  (530, 53000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 50),
  -- Excadrill - Confide - TM100
  (530, 53000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 51),
  -- Excadrill - Snore - Tutor
  (530, 53000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Excadrill - Iron Defense - Tutor
  (530, 53000, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Excadrill - Magnet Rise - Tutor
  (530, 53000, 393, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Excadrill - Earth Power - Tutor
  (530, 53000, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Excadrill - Iron Head - Tutor
  (530, 53000, 442, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Excadrill - Stealth Rock - Tutor
  (530, 53000, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Excadrill - Drill Run - Tutor
  (530, 53000, 529, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Excadrill - Stomping Tantrum - Tutor
  (530, 53000, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Excadrill - Horn Drill - Evolution
  (530, 53000, 32, 16, NULL, 7, NULL, NULL, NULL, NULL, 60),

  -- Audino - Pound - Level 1
  (531, 53100, 1, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Audino - Growl - Level 1
  (531, 53100, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Audino - Helping Hand - Level 1
  (531, 53100, 270, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Audino - Hyper Voice - Level 1
  (531, 53100, 304, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Audino - Last Resort - Level 1
  (531, 53100, 387, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Audino - Misty Terrain - Level 1
  (531, 53100, 581, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Audino - Play Nice - Level 1
  (531, 53100, 589, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Audino - Baby-Doll Eyes - Level 5
  (531, 53100, 608, 16, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Audino - Refresh - Level 9
  (531, 53100, 287, 16, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Audino - Disarming Voice - Level 13
  (531, 53100, 574, 16, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Audino - Double Slap - Level 17
  (531, 53100, 3, 16, NULL, 1, 17, NULL, NULL, NULL, 11),
  -- Audino - Attract - Level 21
  (531, 53100, 213, 16, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Audino - Secret Power - Level 25
  (531, 53100, 290, 16, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Audino - Entrainment - Level 29
  (531, 53100, 494, 16, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Audino - Take Down - Level 33
  (531, 53100, 36, 16, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Audino - Heal Pulse - Level 37
  (531, 53100, 505, 16, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Audino - After You - Level 41
  (531, 53100, 495, 16, NULL, 1, 41, NULL, NULL, NULL, 17),
  -- Audino - Simple Beam - Level 45
  (531, 53100, 493, 16, NULL, 1, 45, NULL, NULL, NULL, 18),
  -- Audino - Double-Edge - Level 49
  (531, 53100, 38, 16, NULL, 1, 49, NULL, NULL, NULL, 19),
  -- Audino - Hyper Voice - Level 53
  (531, 53100, 304, 16, NULL, 1, 53, NULL, NULL, NULL, 20),
  -- Audino - Last Resort - Level 57
  (531, 53100, 387, 16, NULL, 1, 57, NULL, NULL, NULL, 21),
  -- Audino - Work Up - TM01
  (531, 53100, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 22),
  -- Audino - Psyshock - TM03
  (531, 53100, 473, 16, NULL, 2, NULL, NULL, 16002003, NULL, 23),
  -- Audino - Calm Mind - TM04
  (531, 53100, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 24),
  -- Audino - Toxic - TM06
  (531, 53100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 25),
  -- Audino - Hidden Power - TM10
  (531, 53100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 26),
  -- Audino - Sunny Day - TM11
  (531, 53100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 27),
  -- Audino - Ice Beam - TM13
  (531, 53100, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 28),
  -- Audino - Blizzard - TM14
  (531, 53100, 59, 16, NULL, 2, NULL, NULL, 16002014, NULL, 29),
  -- Audino - Hyper Beam - TM15
  (531, 53100, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 30),
  -- Audino - Light Screen - TM16
  (531, 53100, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 31),
  -- Audino - Protect - TM17
  (531, 53100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 32),
  -- Audino - Rain Dance - TM18
  (531, 53100, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 33),
  -- Audino - Safeguard - TM20
  (531, 53100, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 34),
  -- Audino - Frustration - TM21
  (531, 53100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 35),
  -- Audino - Solar Beam - TM22
  (531, 53100, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 36),
  -- Audino - Thunderbolt - TM24
  (531, 53100, 85, 16, NULL, 2, NULL, NULL, 16002024, NULL, 37),
  -- Audino - Thunder - TM25
  (531, 53100, 87, 16, NULL, 2, NULL, NULL, 16002025, NULL, 38),
  -- Audino - Return - TM27
  (531, 53100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 39),
  -- Audino - Psychic - TM29
  (531, 53100, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 40),
  -- Audino - Shadow Ball - TM30
  (531, 53100, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 41),
  -- Audino - Double Team - TM32
  (531, 53100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 42),
  -- Audino - Reflect - TM33
  (531, 53100, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 43),
  -- Audino - Flamethrower - TM35
  (531, 53100, 53, 16, NULL, 2, NULL, NULL, 16002035, NULL, 44),
  -- Audino - Fire Blast - TM38
  (531, 53100, 126, 16, NULL, 2, NULL, NULL, 16002038, NULL, 45),
  -- Audino - Facade - TM42
  (531, 53100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 46),
  -- Audino - Rest - TM44
  (531, 53100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 47),
  -- Audino - Attract - TM45
  (531, 53100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 48),
  -- Audino - Round - TM48
  (531, 53100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 49),
  -- Audino - Echoed Voice - TM49
  (531, 53100, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 50),
  -- Audino - Fling - TM56
  (531, 53100, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 51),
  -- Audino - Charge Beam - TM57
  (531, 53100, 451, 16, NULL, 2, NULL, NULL, 16002057, NULL, 52),
  -- Audino - Thunder Wave - TM73
  (531, 53100, 86, 16, NULL, 2, NULL, NULL, 16002073, NULL, 53),
  -- Audino - Psych Up - TM77
  (531, 53100, 244, 16, NULL, 2, NULL, NULL, 16002077, NULL, 54),
  -- Audino - Dream Eater - TM85
  (531, 53100, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 55),
  -- Audino - Grass Knot - TM86
  (531, 53100, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 56),
  -- Audino - Swagger - TM87
  (531, 53100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 57),
  -- Audino - Sleep Talk - TM88
  (531, 53100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 58),
  -- Audino - Substitute - TM90
  (531, 53100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 59),
  -- Audino - Trick Room - TM92
  (531, 53100, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 60),
  -- Audino - Wild Charge - TM93
  (531, 53100, 528, 16, NULL, 2, NULL, NULL, 16002093, NULL, 61),
  -- Audino - Surf - TM94
  (531, 53100, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 62),
  -- Audino - Dazzling Gleam - TM99
  (531, 53100, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 63),
  -- Audino - Confide - TM100
  (531, 53100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 64),
  -- Audino - Amnesia - Egg
  (531, 53100, 133, 16, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Audino - Sweet Kiss - Egg
  (531, 53100, 186, 16, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Audino - Sleep Talk - Egg
  (531, 53100, 214, 16, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Audino - Heal Bell - Egg
  (531, 53100, 215, 16, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Audino - Encore - Egg
  (531, 53100, 227, 16, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Audino - Wish - Egg
  (531, 53100, 273, 16, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Audino - Yawn - Egg
  (531, 53100, 281, 16, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Audino - Healing Wish - Egg
  (531, 53100, 361, 16, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Audino - Lucky Chant - Egg
  (531, 53100, 381, 16, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Audino - Bestow - Egg
  (531, 53100, 516, 16, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Audino - Draining Kiss - Egg
  (531, 53100, 577, 16, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Audino - Fire Punch - Tutor
  (531, 53100, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 76),
  -- Audino - Ice Punch - Tutor
  (531, 53100, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 77),
  -- Audino - Thunder Punch - Tutor
  (531, 53100, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 78),
  -- Audino - Low Kick - Tutor
  (531, 53100, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 79),
  -- Audino - Snore - Tutor
  (531, 53100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 80),
  -- Audino - Icy Wind - Tutor
  (531, 53100, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 81),
  -- Audino - Heal Bell - Tutor
  (531, 53100, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 82),
  -- Audino - Pain Split - Tutor
  (531, 53100, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 83),
  -- Audino - Iron Tail - Tutor
  (531, 53100, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 84),
  -- Audino - Uproar - Tutor
  (531, 53100, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 85),
  -- Audino - Focus Punch - Tutor
  (531, 53100, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 86),
  -- Audino - Helping Hand - Tutor
  (531, 53100, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 87),
  -- Audino - Role Play - Tutor
  (531, 53100, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 88),
  -- Audino - Magic Coat - Tutor
  (531, 53100, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 89),
  -- Audino - Knock Off - Tutor
  (531, 53100, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 90),
  -- Audino - Skill Swap - Tutor
  (531, 53100, 285, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 91),
  -- Audino - Snatch - Tutor
  (531, 53100, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 92),
  -- Audino - Hyper Voice - Tutor
  (531, 53100, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 93),
  -- Audino - Signal Beam - Tutor
  (531, 53100, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 94),
  -- Audino - Covet - Tutor
  (531, 53100, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 95),
  -- Audino - Gravity - Tutor
  (531, 53100, 356, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 96),
  -- Audino - Last Resort - Tutor
  (531, 53100, 387, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 97),
  -- Audino - Drain Punch - Tutor
  (531, 53100, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 98),
  -- Audino - Zen Headbutt - Tutor
  (531, 53100, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 99),
  -- Audino - Telekinesis - Tutor
  (531, 53100, 477, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 100),
  -- Audino - After You - Tutor
  (531, 53100, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 101),
  -- Audino - Ally Switch - Tutor
  (531, 53100, 502, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 102),
  -- Audino - Laser Focus - Tutor
  (531, 53100, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 103),
  -- Audino - Throat Chop - Tutor
  (531, 53100, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 104),
  -- Audino - Stomping Tantrum - Tutor
  (531, 53100, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 105),

  -- Timburr - Pound - Level 1
  (532, 53200, 1, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Timburr - Leer - Level 1
  (532, 53200, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Timburr - Focus Energy - Level 4
  (532, 53200, 116, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Timburr - Bide - Level 8
  (532, 53200, 117, 16, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Timburr - Low Kick - Level 12
  (532, 53200, 67, 16, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Timburr - Rock Throw - Level 16
  (532, 53200, 88, 16, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Timburr - Wake-Up Slap - Level 20
  (532, 53200, 358, 16, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Timburr - Chip Away - Level 24
  (532, 53200, 498, 16, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Timburr - Bulk Up - Level 28
  (532, 53200, 339, 16, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Timburr - Rock Slide - Level 31
  (532, 53200, 157, 16, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Timburr - Dynamic Punch - Level 34
  (532, 53200, 223, 16, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Timburr - Scary Face - Level 37
  (532, 53200, 184, 16, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Timburr - Hammer Arm - Level 40
  (532, 53200, 359, 16, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Timburr - Stone Edge - Level 43
  (532, 53200, 444, 16, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Timburr - Focus Punch - Level 46
  (532, 53200, 264, 16, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Timburr - Superpower - Level 49
  (532, 53200, 276, 16, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Timburr - Work Up - TM01
  (532, 53200, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 17),
  -- Timburr - Toxic - TM06
  (532, 53200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Timburr - Bulk Up - TM08
  (532, 53200, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 19),
  -- Timburr - Hidden Power - TM10
  (532, 53200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Timburr - Sunny Day - TM11
  (532, 53200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Timburr - Taunt - TM12
  (532, 53200, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 22),
  -- Timburr - Protect - TM17
  (532, 53200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Timburr - Rain Dance - TM18
  (532, 53200, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Timburr - Frustration - TM21
  (532, 53200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Timburr - Smack Down - TM23
  (532, 53200, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 26),
  -- Timburr - Return - TM27
  (532, 53200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Timburr - Brick Break - TM31
  (532, 53200, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 28),
  -- Timburr - Double Team - TM32
  (532, 53200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Timburr - Rock Tomb - TM39
  (532, 53200, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 30),
  -- Timburr - Facade - TM42
  (532, 53200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Timburr - Rest - TM44
  (532, 53200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Timburr - Attract - TM45
  (532, 53200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Timburr - Low Sweep - TM47
  (532, 53200, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 34),
  -- Timburr - Round - TM48
  (532, 53200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Timburr - Focus Blast - TM52
  (532, 53200, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 36),
  -- Timburr - Fling - TM56
  (532, 53200, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 37),
  -- Timburr - Brutal Swing - TM59
  (532, 53200, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 38),
  -- Timburr - Payback - TM66
  (532, 53200, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 39),
  -- Timburr - Stone Edge - TM71
  (532, 53200, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 40),
  -- Timburr - Rock Slide - TM80
  (532, 53200, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 41),
  -- Timburr - Poison Jab - TM84
  (532, 53200, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 42),
  -- Timburr - Grass Knot - TM86
  (532, 53200, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 43),
  -- Timburr - Swagger - TM87
  (532, 53200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 44),
  -- Timburr - Sleep Talk - TM88
  (532, 53200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 45),
  -- Timburr - Substitute - TM90
  (532, 53200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 46),
  -- Timburr - Confide - TM100
  (532, 53200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 47),
  -- Timburr - Comet Punch - Egg
  (532, 53200, 4, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Timburr - Counter - Egg
  (532, 53200, 68, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Timburr - Reversal - Egg
  (532, 53200, 179, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Timburr - Mach Punch - Egg
  (532, 53200, 183, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Timburr - Foresight - Egg
  (532, 53200, 193, 16, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Timburr - Detect - Egg
  (532, 53200, 197, 16, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Timburr - Endure - Egg
  (532, 53200, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Timburr - Smelling Salts - Egg
  (532, 53200, 265, 16, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Timburr - Force Palm - Egg
  (532, 53200, 395, 16, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Timburr - Drain Punch - Egg
  (532, 53200, 409, 16, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Timburr - Wide Guard - Egg
  (532, 53200, 469, 16, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Timburr - Power-Up Punch - Egg
  (532, 53200, 612, 16, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Timburr - Fire Punch - Tutor
  (532, 53200, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Timburr - Ice Punch - Tutor
  (532, 53200, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Timburr - Thunder Punch - Tutor
  (532, 53200, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Timburr - Low Kick - Tutor
  (532, 53200, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Timburr - Snore - Tutor
  (532, 53200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Timburr - Focus Punch - Tutor
  (532, 53200, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Timburr - Helping Hand - Tutor
  (532, 53200, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Timburr - Superpower - Tutor
  (532, 53200, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Timburr - Knock Off - Tutor
  (532, 53200, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Timburr - Block - Tutor
  (532, 53200, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Timburr - Drain Punch - Tutor
  (532, 53200, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),

  -- Gurdurr - Pound - Level 1
  (533, 53300, 1, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gurdurr - Leer - Level 1
  (533, 53300, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gurdurr - Focus Energy - Level 1
  (533, 53300, 116, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gurdurr - Bide - Level 1
  (533, 53300, 117, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gurdurr - Focus Energy - Level 4
  (533, 53300, 116, 16, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Gurdurr - Bide - Level 8
  (533, 53300, 117, 16, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Gurdurr - Low Kick - Level 12
  (533, 53300, 67, 16, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Gurdurr - Rock Throw - Level 16
  (533, 53300, 88, 16, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Gurdurr - Wake-Up Slap - Level 20
  (533, 53300, 358, 16, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Gurdurr - Chip Away - Level 24
  (533, 53300, 498, 16, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Gurdurr - Bulk Up - Level 29
  (533, 53300, 339, 16, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Gurdurr - Rock Slide - Level 33
  (533, 53300, 157, 16, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Gurdurr - Dynamic Punch - Level 37
  (533, 53300, 223, 16, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Gurdurr - Scary Face - Level 41
  (533, 53300, 184, 16, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Gurdurr - Hammer Arm - Level 45
  (533, 53300, 359, 16, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Gurdurr - Stone Edge - Level 49
  (533, 53300, 444, 16, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Gurdurr - Focus Punch - Level 53
  (533, 53300, 264, 16, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Gurdurr - Superpower - Level 57
  (533, 53300, 276, 16, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Gurdurr - Work Up - TM01
  (533, 53300, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 19),
  -- Gurdurr - Toxic - TM06
  (533, 53300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Gurdurr - Bulk Up - TM08
  (533, 53300, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 21),
  -- Gurdurr - Hidden Power - TM10
  (533, 53300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Gurdurr - Sunny Day - TM11
  (533, 53300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Gurdurr - Taunt - TM12
  (533, 53300, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 24),
  -- Gurdurr - Protect - TM17
  (533, 53300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 25),
  -- Gurdurr - Rain Dance - TM18
  (533, 53300, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 26),
  -- Gurdurr - Frustration - TM21
  (533, 53300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 27),
  -- Gurdurr - Smack Down - TM23
  (533, 53300, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 28),
  -- Gurdurr - Return - TM27
  (533, 53300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 29),
  -- Gurdurr - Brick Break - TM31
  (533, 53300, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 30),
  -- Gurdurr - Double Team - TM32
  (533, 53300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 31),
  -- Gurdurr - Rock Tomb - TM39
  (533, 53300, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 32),
  -- Gurdurr - Facade - TM42
  (533, 53300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 33),
  -- Gurdurr - Rest - TM44
  (533, 53300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 34),
  -- Gurdurr - Attract - TM45
  (533, 53300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 35),
  -- Gurdurr - Low Sweep - TM47
  (533, 53300, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 36),
  -- Gurdurr - Round - TM48
  (533, 53300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Gurdurr - Focus Blast - TM52
  (533, 53300, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 38),
  -- Gurdurr - Fling - TM56
  (533, 53300, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 39),
  -- Gurdurr - Brutal Swing - TM59
  (533, 53300, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 40),
  -- Gurdurr - Payback - TM66
  (533, 53300, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 41),
  -- Gurdurr - Stone Edge - TM71
  (533, 53300, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 42),
  -- Gurdurr - Rock Slide - TM80
  (533, 53300, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 43),
  -- Gurdurr - Poison Jab - TM84
  (533, 53300, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 44),
  -- Gurdurr - Grass Knot - TM86
  (533, 53300, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 45),
  -- Gurdurr - Swagger - TM87
  (533, 53300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 46),
  -- Gurdurr - Sleep Talk - TM88
  (533, 53300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 47),
  -- Gurdurr - Substitute - TM90
  (533, 53300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 48),
  -- Gurdurr - Confide - TM100
  (533, 53300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 49),
  -- Gurdurr - Fire Punch - Tutor
  (533, 53300, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Gurdurr - Ice Punch - Tutor
  (533, 53300, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Gurdurr - Thunder Punch - Tutor
  (533, 53300, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Gurdurr - Low Kick - Tutor
  (533, 53300, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Gurdurr - Snore - Tutor
  (533, 53300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Gurdurr - Focus Punch - Tutor
  (533, 53300, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Gurdurr - Helping Hand - Tutor
  (533, 53300, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Gurdurr - Superpower - Tutor
  (533, 53300, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Gurdurr - Knock Off - Tutor
  (533, 53300, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Gurdurr - Block - Tutor
  (533, 53300, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Gurdurr - Drain Punch - Tutor
  (533, 53300, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),

  -- Conkeldurr - Pound - Level 1
  (534, 53400, 1, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Conkeldurr - Leer - Level 1
  (534, 53400, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Conkeldurr - Focus Energy - Level 1
  (534, 53400, 116, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Conkeldurr - Bide - Level 1
  (534, 53400, 117, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Conkeldurr - Focus Energy - Level 4
  (534, 53400, 116, 16, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Conkeldurr - Bide - Level 8
  (534, 53400, 117, 16, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Conkeldurr - Low Kick - Level 12
  (534, 53400, 67, 16, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Conkeldurr - Rock Throw - Level 16
  (534, 53400, 88, 16, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Conkeldurr - Wake-Up Slap - Level 20
  (534, 53400, 358, 16, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Conkeldurr - Chip Away - Level 24
  (534, 53400, 498, 16, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Conkeldurr - Bulk Up - Level 29
  (534, 53400, 339, 16, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Conkeldurr - Rock Slide - Level 33
  (534, 53400, 157, 16, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Conkeldurr - Dynamic Punch - Level 37
  (534, 53400, 223, 16, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Conkeldurr - Scary Face - Level 41
  (534, 53400, 184, 16, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Conkeldurr - Hammer Arm - Level 45
  (534, 53400, 359, 16, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Conkeldurr - Stone Edge - Level 49
  (534, 53400, 444, 16, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Conkeldurr - Focus Punch - Level 53
  (534, 53400, 264, 16, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Conkeldurr - Superpower - Level 57
  (534, 53400, 276, 16, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Conkeldurr - Work Up - TM01
  (534, 53400, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 19),
  -- Conkeldurr - Toxic - TM06
  (534, 53400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 20),
  -- Conkeldurr - Bulk Up - TM08
  (534, 53400, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 21),
  -- Conkeldurr - Hidden Power - TM10
  (534, 53400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Conkeldurr - Sunny Day - TM11
  (534, 53400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 23),
  -- Conkeldurr - Taunt - TM12
  (534, 53400, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 24),
  -- Conkeldurr - Hyper Beam - TM15
  (534, 53400, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 25),
  -- Conkeldurr - Protect - TM17
  (534, 53400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 26),
  -- Conkeldurr - Rain Dance - TM18
  (534, 53400, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 27),
  -- Conkeldurr - Frustration - TM21
  (534, 53400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Conkeldurr - Smack Down - TM23
  (534, 53400, 479, 16, NULL, 2, NULL, NULL, 16002023, NULL, 29),
  -- Conkeldurr - Earthquake - TM26
  (534, 53400, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 30),
  -- Conkeldurr - Return - TM27
  (534, 53400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Conkeldurr - Brick Break - TM31
  (534, 53400, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 32),
  -- Conkeldurr - Double Team - TM32
  (534, 53400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 33),
  -- Conkeldurr - Rock Tomb - TM39
  (534, 53400, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 34),
  -- Conkeldurr - Facade - TM42
  (534, 53400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 35),
  -- Conkeldurr - Rest - TM44
  (534, 53400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 36),
  -- Conkeldurr - Attract - TM45
  (534, 53400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 37),
  -- Conkeldurr - Low Sweep - TM47
  (534, 53400, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 38),
  -- Conkeldurr - Round - TM48
  (534, 53400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 39),
  -- Conkeldurr - Focus Blast - TM52
  (534, 53400, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 40),
  -- Conkeldurr - Fling - TM56
  (534, 53400, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 41),
  -- Conkeldurr - Brutal Swing - TM59
  (534, 53400, 693, 16, NULL, 2, NULL, NULL, 16002059, NULL, 42),
  -- Conkeldurr - Payback - TM66
  (534, 53400, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 43),
  -- Conkeldurr - Giga Impact - TM68
  (534, 53400, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 44),
  -- Conkeldurr - Stone Edge - TM71
  (534, 53400, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 45),
  -- Conkeldurr - Bulldoze - TM78
  (534, 53400, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 46),
  -- Conkeldurr - Rock Slide - TM80
  (534, 53400, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 47),
  -- Conkeldurr - Poison Jab - TM84
  (534, 53400, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 48),
  -- Conkeldurr - Grass Knot - TM86
  (534, 53400, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 49),
  -- Conkeldurr - Swagger - TM87
  (534, 53400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 50),
  -- Conkeldurr - Sleep Talk - TM88
  (534, 53400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 51),
  -- Conkeldurr - Substitute - TM90
  (534, 53400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 52),
  -- Conkeldurr - Confide - TM100
  (534, 53400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 53),
  -- Conkeldurr - Fire Punch - Tutor
  (534, 53400, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Conkeldurr - Ice Punch - Tutor
  (534, 53400, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Conkeldurr - Thunder Punch - Tutor
  (534, 53400, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Conkeldurr - Low Kick - Tutor
  (534, 53400, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Conkeldurr - Snore - Tutor
  (534, 53400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Conkeldurr - Focus Punch - Tutor
  (534, 53400, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Conkeldurr - Helping Hand - Tutor
  (534, 53400, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Conkeldurr - Superpower - Tutor
  (534, 53400, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Conkeldurr - Knock Off - Tutor
  (534, 53400, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Conkeldurr - Block - Tutor
  (534, 53400, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Conkeldurr - Drain Punch - Tutor
  (534, 53400, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Conkeldurr - Stomping Tantrum - Tutor
  (534, 53400, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),

  -- Tympole - Growl - Level 1
  (535, 53500, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tympole - Bubble - Level 1
  (535, 53500, 145, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tympole - Supersonic - Level 5
  (535, 53500, 48, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Tympole - Round - Level 9
  (535, 53500, 496, 16, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Tympole - Bubble Beam - Level 12
  (535, 53500, 61, 16, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Tympole - Mud Shot - Level 16
  (535, 53500, 341, 16, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Tympole - Aqua Ring - Level 20
  (535, 53500, 392, 16, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Tympole - Uproar - Level 23
  (535, 53500, 253, 16, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Tympole - Muddy Water - Level 27
  (535, 53500, 330, 16, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Tympole - Rain Dance - Level 31
  (535, 53500, 240, 16, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Tympole - Flail - Level 34
  (535, 53500, 175, 16, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Tympole - Echoed Voice - Level 38
  (535, 53500, 497, 16, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Tympole - Hydro Pump - Level 42
  (535, 53500, 56, 16, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Tympole - Hyper Voice - Level 45
  (535, 53500, 304, 16, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Tympole - Toxic - TM06
  (535, 53500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 15),
  -- Tympole - Hail - TM07
  (535, 53500, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 16),
  -- Tympole - Hidden Power - TM10
  (535, 53500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 17),
  -- Tympole - Protect - TM17
  (535, 53500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 18),
  -- Tympole - Rain Dance - TM18
  (535, 53500, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 19),
  -- Tympole - Frustration - TM21
  (535, 53500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 20),
  -- Tympole - Return - TM27
  (535, 53500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 21),
  -- Tympole - Double Team - TM32
  (535, 53500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 22),
  -- Tympole - Sludge Wave - TM34
  (535, 53500, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 23),
  -- Tympole - Sludge Bomb - TM36
  (535, 53500, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 24),
  -- Tympole - Facade - TM42
  (535, 53500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 25),
  -- Tympole - Rest - TM44
  (535, 53500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 26),
  -- Tympole - Attract - TM45
  (535, 53500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 27),
  -- Tympole - Round - TM48
  (535, 53500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 28),
  -- Tympole - Echoed Voice - TM49
  (535, 53500, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 29),
  -- Tympole - Scald - TM55
  (535, 53500, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 30),
  -- Tympole - Infestation - TM83
  (535, 53500, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 31),
  -- Tympole - Swagger - TM87
  (535, 53500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 32),
  -- Tympole - Sleep Talk - TM88
  (535, 53500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 33),
  -- Tympole - Substitute - TM90
  (535, 53500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 34),
  -- Tympole - Surf - TM94
  (535, 53500, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 35),
  -- Tympole - Confide - TM100
  (535, 53500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 36),
  -- Tympole - Mist - Egg
  (535, 53500, 54, 16, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Tympole - Snore - Egg
  (535, 53500, 173, 16, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Tympole - Sleep Talk - Egg
  (535, 53500, 214, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Tympole - Refresh - Egg
  (535, 53500, 287, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Tympole - Mud Sport - Egg
  (535, 53500, 300, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Tympole - Water Pulse - Egg
  (535, 53500, 352, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Tympole - Earth Power - Egg
  (535, 53500, 414, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Tympole - Mud Bomb - Egg
  (535, 53500, 426, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Tympole - After You - Egg
  (535, 53500, 495, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Tympole - Venom Drench - Egg
  (535, 53500, 599, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Tympole - Snore - Tutor
  (535, 53500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Tympole - Icy Wind - Tutor
  (535, 53500, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Tympole - Uproar - Tutor
  (535, 53500, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Tympole - Endeavor - Tutor
  (535, 53500, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Tympole - Hyper Voice - Tutor
  (535, 53500, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Tympole - Bounce - Tutor
  (535, 53500, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Tympole - Water Pulse - Tutor
  (535, 53500, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Tympole - Earth Power - Tutor
  (535, 53500, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Tympole - After You - Tutor
  (535, 53500, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),

  -- Palpitoad - Growl - Level 1
  (536, 53600, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Palpitoad - Supersonic - Level 1
  (536, 53600, 48, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Palpitoad - Bubble - Level 1
  (536, 53600, 145, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Palpitoad - Round - Level 1
  (536, 53600, 496, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Palpitoad - Supersonic - Level 5
  (536, 53600, 48, 16, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Palpitoad - Round - Level 9
  (536, 53600, 496, 16, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Palpitoad - Bubble Beam - Level 12
  (536, 53600, 61, 16, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Palpitoad - Mud Shot - Level 16
  (536, 53600, 341, 16, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Palpitoad - Aqua Ring - Level 20
  (536, 53600, 392, 16, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Palpitoad - Uproar - Level 23
  (536, 53600, 253, 16, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Palpitoad - Muddy Water - Level 28
  (536, 53600, 330, 16, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Palpitoad - Rain Dance - Level 33
  (536, 53600, 240, 16, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Palpitoad - Flail - Level 37
  (536, 53600, 175, 16, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Palpitoad - Echoed Voice - Level 42
  (536, 53600, 497, 16, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Palpitoad - Hydro Pump - Level 47
  (536, 53600, 56, 16, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Palpitoad - Hyper Voice - Level 51
  (536, 53600, 304, 16, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Palpitoad - Toxic - TM06
  (536, 53600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Palpitoad - Hail - TM07
  (536, 53600, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 18),
  -- Palpitoad - Hidden Power - TM10
  (536, 53600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Palpitoad - Protect - TM17
  (536, 53600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Palpitoad - Rain Dance - TM18
  (536, 53600, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 21),
  -- Palpitoad - Frustration - TM21
  (536, 53600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Palpitoad - Return - TM27
  (536, 53600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 23),
  -- Palpitoad - Double Team - TM32
  (536, 53600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 24),
  -- Palpitoad - Sludge Wave - TM34
  (536, 53600, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 25),
  -- Palpitoad - Sludge Bomb - TM36
  (536, 53600, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 26),
  -- Palpitoad - Facade - TM42
  (536, 53600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 27),
  -- Palpitoad - Rest - TM44
  (536, 53600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 28),
  -- Palpitoad - Attract - TM45
  (536, 53600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 29),
  -- Palpitoad - Round - TM48
  (536, 53600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 30),
  -- Palpitoad - Echoed Voice - TM49
  (536, 53600, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 31),
  -- Palpitoad - Scald - TM55
  (536, 53600, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 32),
  -- Palpitoad - Bulldoze - TM78
  (536, 53600, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 33),
  -- Palpitoad - Infestation - TM83
  (536, 53600, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 34),
  -- Palpitoad - Swagger - TM87
  (536, 53600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 35),
  -- Palpitoad - Sleep Talk - TM88
  (536, 53600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 36),
  -- Palpitoad - Substitute - TM90
  (536, 53600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 37),
  -- Palpitoad - Surf - TM94
  (536, 53600, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 38),
  -- Palpitoad - Confide - TM100
  (536, 53600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 39),
  -- Palpitoad - Snore - Tutor
  (536, 53600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 40),
  -- Palpitoad - Icy Wind - Tutor
  (536, 53600, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Palpitoad - Uproar - Tutor
  (536, 53600, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Palpitoad - Focus Punch - Tutor
  (536, 53600, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Palpitoad - Endeavor - Tutor
  (536, 53600, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Palpitoad - Hyper Voice - Tutor
  (536, 53600, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Palpitoad - Bounce - Tutor
  (536, 53600, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Palpitoad - Water Pulse - Tutor
  (536, 53600, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Palpitoad - Gastro Acid - Tutor
  (536, 53600, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Palpitoad - Earth Power - Tutor
  (536, 53600, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Palpitoad - Stealth Rock - Tutor
  (536, 53600, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Palpitoad - After You - Tutor
  (536, 53600, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),

  -- Seismitoad - Growl - Level 1
  (537, 53700, 45, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seismitoad - Supersonic - Level 1
  (537, 53700, 48, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Seismitoad - Acid - Level 1
  (537, 53700, 51, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Seismitoad - Bubble - Level 1
  (537, 53700, 145, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Seismitoad - Round - Level 1
  (537, 53700, 496, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Seismitoad - Supersonic - Level 5
  (537, 53700, 48, 16, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Seismitoad - Round - Level 9
  (537, 53700, 496, 16, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Seismitoad - Bubble Beam - Level 12
  (537, 53700, 61, 16, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Seismitoad - Mud Shot - Level 16
  (537, 53700, 341, 16, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Seismitoad - Aqua Ring - Level 20
  (537, 53700, 392, 16, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Seismitoad - Uproar - Level 23
  (537, 53700, 253, 16, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Seismitoad - Muddy Water - Level 28
  (537, 53700, 330, 16, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Seismitoad - Rain Dance - Level 33
  (537, 53700, 240, 16, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Seismitoad - Flail - Level 39
  (537, 53700, 175, 16, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Seismitoad - Drain Punch - Level 44
  (537, 53700, 409, 16, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Seismitoad - Echoed Voice - Level 49
  (537, 53700, 497, 16, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Seismitoad - Hydro Pump - Level 53
  (537, 53700, 56, 16, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Seismitoad - Hyper Voice - Level 59
  (537, 53700, 304, 16, NULL, 1, 59, NULL, NULL, NULL, 18),
  -- Seismitoad - Toxic - TM06
  (537, 53700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Seismitoad - Hail - TM07
  (537, 53700, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 20),
  -- Seismitoad - Venoshock - TM09
  (537, 53700, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 21),
  -- Seismitoad - Hidden Power - TM10
  (537, 53700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 22),
  -- Seismitoad - Hyper Beam - TM15
  (537, 53700, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 23),
  -- Seismitoad - Protect - TM17
  (537, 53700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Seismitoad - Rain Dance - TM18
  (537, 53700, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Seismitoad - Frustration - TM21
  (537, 53700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Seismitoad - Earthquake - TM26
  (537, 53700, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 27),
  -- Seismitoad - Return - TM27
  (537, 53700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 28),
  -- Seismitoad - Brick Break - TM31
  (537, 53700, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 29),
  -- Seismitoad - Double Team - TM32
  (537, 53700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 30),
  -- Seismitoad - Sludge Wave - TM34
  (537, 53700, 482, 16, NULL, 2, NULL, NULL, 16002034, NULL, 31),
  -- Seismitoad - Sludge Bomb - TM36
  (537, 53700, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 32),
  -- Seismitoad - Rock Tomb - TM39
  (537, 53700, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 33),
  -- Seismitoad - Facade - TM42
  (537, 53700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 34),
  -- Seismitoad - Rest - TM44
  (537, 53700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 35),
  -- Seismitoad - Attract - TM45
  (537, 53700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 36),
  -- Seismitoad - Round - TM48
  (537, 53700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 37),
  -- Seismitoad - Echoed Voice - TM49
  (537, 53700, 497, 16, NULL, 2, NULL, NULL, 16002049, NULL, 38),
  -- Seismitoad - Focus Blast - TM52
  (537, 53700, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 39),
  -- Seismitoad - Scald - TM55
  (537, 53700, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 40),
  -- Seismitoad - Fling - TM56
  (537, 53700, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 41),
  -- Seismitoad - Payback - TM66
  (537, 53700, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 42),
  -- Seismitoad - Giga Impact - TM68
  (537, 53700, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 43),
  -- Seismitoad - Bulldoze - TM78
  (537, 53700, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 44),
  -- Seismitoad - Rock Slide - TM80
  (537, 53700, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 45),
  -- Seismitoad - Infestation - TM83
  (537, 53700, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 46),
  -- Seismitoad - Poison Jab - TM84
  (537, 53700, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 47),
  -- Seismitoad - Grass Knot - TM86
  (537, 53700, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 48),
  -- Seismitoad - Swagger - TM87
  (537, 53700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 49),
  -- Seismitoad - Sleep Talk - TM88
  (537, 53700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 50),
  -- Seismitoad - Substitute - TM90
  (537, 53700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 51),
  -- Seismitoad - Surf - TM94
  (537, 53700, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 52),
  -- Seismitoad - Confide - TM100
  (537, 53700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 53),
  -- Seismitoad - Ice Punch - Tutor
  (537, 53700, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Seismitoad - Low Kick - Tutor
  (537, 53700, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Seismitoad - Snore - Tutor
  (537, 53700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Seismitoad - Icy Wind - Tutor
  (537, 53700, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Seismitoad - Uproar - Tutor
  (537, 53700, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Seismitoad - Focus Punch - Tutor
  (537, 53700, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Seismitoad - Knock Off - Tutor
  (537, 53700, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Seismitoad - Endeavor - Tutor
  (537, 53700, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Seismitoad - Hyper Voice - Tutor
  (537, 53700, 304, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Seismitoad - Bounce - Tutor
  (537, 53700, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Seismitoad - Water Pulse - Tutor
  (537, 53700, 352, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Seismitoad - Gastro Acid - Tutor
  (537, 53700, 380, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Seismitoad - Drain Punch - Tutor
  (537, 53700, 409, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 66),
  -- Seismitoad - Earth Power - Tutor
  (537, 53700, 414, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 67),
  -- Seismitoad - Stealth Rock - Tutor
  (537, 53700, 446, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 68),
  -- Seismitoad - After You - Tutor
  (537, 53700, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 69),
  -- Seismitoad - Stomping Tantrum - Tutor
  (537, 53700, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 70),
  -- Seismitoad - Acid - Evolution
  (537, 53700, 51, 16, NULL, 7, NULL, NULL, NULL, NULL, 71),

  -- Throh - Bind - Level 1
  (538, 53800, 20, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Throh - Leer - Level 1
  (538, 53800, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Throh - Focus Energy - Level 1
  (538, 53800, 116, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Throh - Bide - Level 1
  (538, 53800, 117, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Throh - Mat Block - Level 1
  (538, 53800, 561, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Throh - Seismic Toss - Level 5
  (538, 53800, 69, 16, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Throh - Vital Throw - Level 9
  (538, 53800, 233, 16, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Throh - Revenge - Level 13
  (538, 53800, 279, 16, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Throh - Storm Throw - Level 17
  (538, 53800, 480, 16, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Throh - Body Slam - Level 21
  (538, 53800, 34, 16, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Throh - Bulk Up - Level 25
  (538, 53800, 339, 16, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Throh - Circle Throw - Level 29
  (538, 53800, 509, 16, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Throh - Endure - Level 33
  (538, 53800, 203, 16, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Throh - Wide Guard - Level 37
  (538, 53800, 469, 16, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Throh - Superpower - Level 41
  (538, 53800, 276, 16, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Throh - Reversal - Level 45
  (538, 53800, 179, 16, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Throh - Work Up - TM01
  (538, 53800, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 17),
  -- Throh - Toxic - TM06
  (538, 53800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Throh - Bulk Up - TM08
  (538, 53800, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 19),
  -- Throh - Hidden Power - TM10
  (538, 53800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 20),
  -- Throh - Sunny Day - TM11
  (538, 53800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 21),
  -- Throh - Taunt - TM12
  (538, 53800, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 22),
  -- Throh - Protect - TM17
  (538, 53800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Throh - Rain Dance - TM18
  (538, 53800, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 24),
  -- Throh - Frustration - TM21
  (538, 53800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Throh - Earthquake - TM26
  (538, 53800, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 26),
  -- Throh - Return - TM27
  (538, 53800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Throh - Brick Break - TM31
  (538, 53800, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 28),
  -- Throh - Double Team - TM32
  (538, 53800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 29),
  -- Throh - Rock Tomb - TM39
  (538, 53800, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 30),
  -- Throh - Facade - TM42
  (538, 53800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Throh - Rest - TM44
  (538, 53800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Throh - Attract - TM45
  (538, 53800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Throh - Low Sweep - TM47
  (538, 53800, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 34),
  -- Throh - Round - TM48
  (538, 53800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 35),
  -- Throh - Focus Blast - TM52
  (538, 53800, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 36),
  -- Throh - Fling - TM56
  (538, 53800, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 37),
  -- Throh - Payback - TM66
  (538, 53800, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 38),
  -- Throh - Giga Impact - TM68
  (538, 53800, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 39),
  -- Throh - Stone Edge - TM71
  (538, 53800, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 40),
  -- Throh - Bulldoze - TM78
  (538, 53800, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 41),
  -- Throh - Rock Slide - TM80
  (538, 53800, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 42),
  -- Throh - Poison Jab - TM84
  (538, 53800, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 43),
  -- Throh - Grass Knot - TM86
  (538, 53800, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 44),
  -- Throh - Swagger - TM87
  (538, 53800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 45),
  -- Throh - Sleep Talk - TM88
  (538, 53800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 46),
  -- Throh - Substitute - TM90
  (538, 53800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 47),
  -- Throh - Confide - TM100
  (538, 53800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 48),
  -- Throh - Fire Punch - Tutor
  (538, 53800, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Throh - Ice Punch - Tutor
  (538, 53800, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Throh - Thunder Punch - Tutor
  (538, 53800, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Throh - Bind - Tutor
  (538, 53800, 20, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Throh - Low Kick - Tutor
  (538, 53800, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Throh - Snore - Tutor
  (538, 53800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Throh - Pain Split - Tutor
  (538, 53800, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Throh - Focus Punch - Tutor
  (538, 53800, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Throh - Helping Hand - Tutor
  (538, 53800, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Throh - Superpower - Tutor
  (538, 53800, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Throh - Knock Off - Tutor
  (538, 53800, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Throh - Block - Tutor
  (538, 53800, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Throh - Zen Headbutt - Tutor
  (538, 53800, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Throh - Laser Focus - Tutor
  (538, 53800, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Throh - Stomping Tantrum - Tutor
  (538, 53800, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),

  -- Sawk - Leer - Level 1
  (539, 53900, 43, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sawk - Focus Energy - Level 1
  (539, 53900, 116, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sawk - Bide - Level 1
  (539, 53900, 117, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sawk - Rock Smash - Level 1
  (539, 53900, 249, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sawk - Double Kick - Level 5
  (539, 53900, 24, 16, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Sawk - Low Sweep - Level 9
  (539, 53900, 490, 16, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Sawk - Counter - Level 13
  (539, 53900, 68, 16, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Sawk - Karate Chop - Level 17
  (539, 53900, 2, 16, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Sawk - Brick Break - Level 21
  (539, 53900, 280, 16, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Sawk - Bulk Up - Level 25
  (539, 53900, 339, 16, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Sawk - Retaliate - Level 29
  (539, 53900, 514, 16, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Sawk - Endure - Level 33
  (539, 53900, 203, 16, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Sawk - Quick Guard - Level 37
  (539, 53900, 501, 16, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Sawk - Close Combat - Level 41
  (539, 53900, 370, 16, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Sawk - Reversal - Level 45
  (539, 53900, 179, 16, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Sawk - Work Up - TM01
  (539, 53900, 526, 16, NULL, 2, NULL, NULL, 16002001, NULL, 16),
  -- Sawk - Toxic - TM06
  (539, 53900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Sawk - Bulk Up - TM08
  (539, 53900, 339, 16, NULL, 2, NULL, NULL, 16002008, NULL, 18),
  -- Sawk - Hidden Power - TM10
  (539, 53900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Sawk - Sunny Day - TM11
  (539, 53900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Sawk - Taunt - TM12
  (539, 53900, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 21),
  -- Sawk - Protect - TM17
  (539, 53900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Sawk - Rain Dance - TM18
  (539, 53900, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 23),
  -- Sawk - Frustration - TM21
  (539, 53900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Sawk - Earthquake - TM26
  (539, 53900, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 25),
  -- Sawk - Return - TM27
  (539, 53900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Sawk - Brick Break - TM31
  (539, 53900, 280, 16, NULL, 2, NULL, NULL, 16002031, NULL, 27),
  -- Sawk - Double Team - TM32
  (539, 53900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Sawk - Rock Tomb - TM39
  (539, 53900, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 29),
  -- Sawk - Facade - TM42
  (539, 53900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 30),
  -- Sawk - Rest - TM44
  (539, 53900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 31),
  -- Sawk - Attract - TM45
  (539, 53900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 32),
  -- Sawk - Low Sweep - TM47
  (539, 53900, 490, 16, NULL, 2, NULL, NULL, 16002047, NULL, 33),
  -- Sawk - Round - TM48
  (539, 53900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 34),
  -- Sawk - Focus Blast - TM52
  (539, 53900, 411, 16, NULL, 2, NULL, NULL, 16002052, NULL, 35),
  -- Sawk - Fling - TM56
  (539, 53900, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 36),
  -- Sawk - Payback - TM66
  (539, 53900, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 37),
  -- Sawk - Giga Impact - TM68
  (539, 53900, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 38),
  -- Sawk - Stone Edge - TM71
  (539, 53900, 444, 16, NULL, 2, NULL, NULL, 16002071, NULL, 39),
  -- Sawk - Bulldoze - TM78
  (539, 53900, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 40),
  -- Sawk - Rock Slide - TM80
  (539, 53900, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 41),
  -- Sawk - Poison Jab - TM84
  (539, 53900, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 42),
  -- Sawk - Grass Knot - TM86
  (539, 53900, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 43),
  -- Sawk - Swagger - TM87
  (539, 53900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 44),
  -- Sawk - Sleep Talk - TM88
  (539, 53900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 45),
  -- Sawk - Substitute - TM90
  (539, 53900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 46),
  -- Sawk - Confide - TM100
  (539, 53900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 47),
  -- Sawk - Fire Punch - Tutor
  (539, 53900, 7, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Sawk - Ice Punch - Tutor
  (539, 53900, 8, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Sawk - Thunder Punch - Tutor
  (539, 53900, 9, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Sawk - Low Kick - Tutor
  (539, 53900, 67, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Sawk - Snore - Tutor
  (539, 53900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Sawk - Pain Split - Tutor
  (539, 53900, 220, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Sawk - Focus Punch - Tutor
  (539, 53900, 264, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Sawk - Helping Hand - Tutor
  (539, 53900, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Sawk - Superpower - Tutor
  (539, 53900, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Sawk - Knock Off - Tutor
  (539, 53900, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Sawk - Block - Tutor
  (539, 53900, 335, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Sawk - Zen Headbutt - Tutor
  (539, 53900, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Sawk - Dual Chop - Tutor
  (539, 53900, 530, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Sawk - Laser Focus - Tutor
  (539, 53900, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Sawk - Throat Chop - Tutor
  (539, 53900, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),

  -- Sewaddle - Tackle - Level 1
  (540, 54000, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sewaddle - String Shot - Level 1
  (540, 54000, 81, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sewaddle - Bug Bite - Level 8
  (540, 54000, 450, 16, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Sewaddle - Razor Leaf - Level 15
  (540, 54000, 75, 16, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Sewaddle - Struggle Bug - Level 22
  (540, 54000, 522, 16, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Sewaddle - Endure - Level 29
  (540, 54000, 203, 16, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Sewaddle - Sticky Web - Level 31
  (540, 54000, 564, 16, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Sewaddle - Bug Buzz - Level 36
  (540, 54000, 405, 16, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Sewaddle - Flail - Level 43
  (540, 54000, 175, 16, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Sewaddle - Calm Mind - TM04
  (540, 54000, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 10),
  -- Sewaddle - Toxic - TM06
  (540, 54000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 11),
  -- Sewaddle - Hidden Power - TM10
  (540, 54000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 12),
  -- Sewaddle - Sunny Day - TM11
  (540, 54000, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 13),
  -- Sewaddle - Light Screen - TM16
  (540, 54000, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 14),
  -- Sewaddle - Protect - TM17
  (540, 54000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 15),
  -- Sewaddle - Safeguard - TM20
  (540, 54000, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 16),
  -- Sewaddle - Frustration - TM21
  (540, 54000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 17),
  -- Sewaddle - Solar Beam - TM22
  (540, 54000, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 18),
  -- Sewaddle - Return - TM27
  (540, 54000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 19),
  -- Sewaddle - Double Team - TM32
  (540, 54000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 20),
  -- Sewaddle - Facade - TM42
  (540, 54000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 21),
  -- Sewaddle - Rest - TM44
  (540, 54000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 22),
  -- Sewaddle - Attract - TM45
  (540, 54000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 23),
  -- Sewaddle - Round - TM48
  (540, 54000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 24),
  -- Sewaddle - Energy Ball - TM53
  (540, 54000, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 25),
  -- Sewaddle - Payback - TM66
  (540, 54000, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 26),
  -- Sewaddle - Dream Eater - TM85
  (540, 54000, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 27),
  -- Sewaddle - Grass Knot - TM86
  (540, 54000, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 28),
  -- Sewaddle - Swagger - TM87
  (540, 54000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 29),
  -- Sewaddle - Sleep Talk - TM88
  (540, 54000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 30),
  -- Sewaddle - Substitute - TM90
  (540, 54000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 31),
  -- Sewaddle - Nature Power - TM96
  (540, 54000, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 32),
  -- Sewaddle - Confide - TM100
  (540, 54000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 33),
  -- Sewaddle - Razor Wind - Egg
  (540, 54000, 13, 16, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Sewaddle - Agility - Egg
  (540, 54000, 97, 16, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Sewaddle - Screech - Egg
  (540, 54000, 103, 16, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Sewaddle - Mind Reader - Egg
  (540, 54000, 170, 16, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Sewaddle - Baton Pass - Egg
  (540, 54000, 226, 16, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Sewaddle - Camouflage - Egg
  (540, 54000, 293, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Sewaddle - Silver Wind - Egg
  (540, 54000, 318, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Sewaddle - Me First - Egg
  (540, 54000, 382, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Sewaddle - Air Slash - Egg
  (540, 54000, 403, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Sewaddle - Grassy Terrain - Egg
  (540, 54000, 580, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Sewaddle - Snore - Tutor
  (540, 54000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Sewaddle - Giga Drain - Tutor
  (540, 54000, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Sewaddle - Synthesis - Tutor
  (540, 54000, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Sewaddle - Magic Coat - Tutor
  (540, 54000, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Sewaddle - Signal Beam - Tutor
  (540, 54000, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Sewaddle - Iron Defense - Tutor
  (540, 54000, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Sewaddle - Worry Seed - Tutor
  (540, 54000, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Sewaddle - Seed Bomb - Tutor
  (540, 54000, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Sewaddle - Bug Bite - Tutor
  (540, 54000, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Sewaddle - Electroweb - Tutor
  (540, 54000, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),

  -- Swadloon - Tackle - Level 1
  (541, 54100, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swadloon - Razor Leaf - Level 1
  (541, 54100, 75, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swadloon - String Shot - Level 1
  (541, 54100, 81, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Swadloon - Protect - Level 1
  (541, 54100, 182, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Swadloon - Grass Whistle - Level 1
  (541, 54100, 320, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Swadloon - Bug Bite - Level 1
  (541, 54100, 450, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Swadloon - Calm Mind - TM04
  (541, 54100, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 7),
  -- Swadloon - Toxic - TM06
  (541, 54100, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 8),
  -- Swadloon - Hidden Power - TM10
  (541, 54100, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 9),
  -- Swadloon - Sunny Day - TM11
  (541, 54100, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 10),
  -- Swadloon - Light Screen - TM16
  (541, 54100, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 11),
  -- Swadloon - Protect - TM17
  (541, 54100, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 12),
  -- Swadloon - Safeguard - TM20
  (541, 54100, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 13),
  -- Swadloon - Frustration - TM21
  (541, 54100, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 14),
  -- Swadloon - Solar Beam - TM22
  (541, 54100, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 15),
  -- Swadloon - Return - TM27
  (541, 54100, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 16),
  -- Swadloon - Double Team - TM32
  (541, 54100, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 17),
  -- Swadloon - Facade - TM42
  (541, 54100, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 18),
  -- Swadloon - Rest - TM44
  (541, 54100, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 19),
  -- Swadloon - Attract - TM45
  (541, 54100, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 20),
  -- Swadloon - Round - TM48
  (541, 54100, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 21),
  -- Swadloon - Energy Ball - TM53
  (541, 54100, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 22),
  -- Swadloon - Payback - TM66
  (541, 54100, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 23),
  -- Swadloon - Dream Eater - TM85
  (541, 54100, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 24),
  -- Swadloon - Grass Knot - TM86
  (541, 54100, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 25),
  -- Swadloon - Swagger - TM87
  (541, 54100, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 26),
  -- Swadloon - Sleep Talk - TM88
  (541, 54100, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 27),
  -- Swadloon - Substitute - TM90
  (541, 54100, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 28),
  -- Swadloon - Nature Power - TM96
  (541, 54100, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 29),
  -- Swadloon - Confide - TM100
  (541, 54100, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 30),
  -- Swadloon - Snore - Tutor
  (541, 54100, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 31),
  -- Swadloon - Giga Drain - Tutor
  (541, 54100, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 32),
  -- Swadloon - Synthesis - Tutor
  (541, 54100, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 33),
  -- Swadloon - Magic Coat - Tutor
  (541, 54100, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 34),
  -- Swadloon - Signal Beam - Tutor
  (541, 54100, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 35),
  -- Swadloon - Iron Defense - Tutor
  (541, 54100, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 36),
  -- Swadloon - Worry Seed - Tutor
  (541, 54100, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 37),
  -- Swadloon - Seed Bomb - Tutor
  (541, 54100, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 38),
  -- Swadloon - Bug Bite - Tutor
  (541, 54100, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 39),
  -- Swadloon - Electroweb - Tutor
  (541, 54100, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 40),
  -- Swadloon - Protect - Evolution
  (541, 54100, 182, 16, NULL, 7, NULL, NULL, NULL, NULL, 41),

  -- Leavanny - Tackle - Level 1
  (542, 54200, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Leavanny - Razor Leaf - Level 1
  (542, 54200, 75, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Leavanny - String Shot - Level 1
  (542, 54200, 81, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Leavanny - Slash - Level 1
  (542, 54200, 163, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Leavanny - False Swipe - Level 1
  (542, 54200, 206, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Leavanny - Bug Bite - Level 1
  (542, 54200, 450, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Leavanny - Bug Bite - Level 8
  (542, 54200, 450, 16, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Leavanny - Razor Leaf - Level 15
  (542, 54200, 75, 16, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Leavanny - Struggle Bug - Level 22
  (542, 54200, 522, 16, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Leavanny - Fell Stinger - Level 29
  (542, 54200, 565, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Leavanny - Helping Hand - Level 32
  (542, 54200, 270, 16, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Leavanny - Leaf Blade - Level 36
  (542, 54200, 348, 16, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Leavanny - X-Scissor - Level 39
  (542, 54200, 404, 16, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Leavanny - Entrainment - Level 43
  (542, 54200, 494, 16, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Leavanny - Swords Dance - Level 46
  (542, 54200, 14, 16, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Leavanny - Leaf Storm - Level 50
  (542, 54200, 437, 16, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Leavanny - Calm Mind - TM04
  (542, 54200, 347, 16, NULL, 2, NULL, NULL, 16002004, NULL, 17),
  -- Leavanny - Toxic - TM06
  (542, 54200, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Leavanny - Hidden Power - TM10
  (542, 54200, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Leavanny - Sunny Day - TM11
  (542, 54200, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Leavanny - Hyper Beam - TM15
  (542, 54200, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 21),
  -- Leavanny - Light Screen - TM16
  (542, 54200, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 22),
  -- Leavanny - Protect - TM17
  (542, 54200, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Leavanny - Safeguard - TM20
  (542, 54200, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 24),
  -- Leavanny - Frustration - TM21
  (542, 54200, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 25),
  -- Leavanny - Solar Beam - TM22
  (542, 54200, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 26),
  -- Leavanny - Return - TM27
  (542, 54200, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Leavanny - Double Team - TM32
  (542, 54200, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Leavanny - Reflect - TM33
  (542, 54200, 115, 16, NULL, 2, NULL, NULL, 16002033, NULL, 29),
  -- Leavanny - Aerial Ace - TM40
  (542, 54200, 332, 16, NULL, 2, NULL, NULL, 16002040, NULL, 30),
  -- Leavanny - Facade - TM42
  (542, 54200, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 31),
  -- Leavanny - Rest - TM44
  (542, 54200, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 32),
  -- Leavanny - Attract - TM45
  (542, 54200, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 33),
  -- Leavanny - Round - TM48
  (542, 54200, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 34),
  -- Leavanny - Steel Wing - TM51
  (542, 54200, 211, 16, NULL, 2, NULL, NULL, 16002051, NULL, 35),
  -- Leavanny - Energy Ball - TM53
  (542, 54200, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 36),
  -- Leavanny - False Swipe - TM54
  (542, 54200, 206, 16, NULL, 2, NULL, NULL, 16002054, NULL, 37),
  -- Leavanny - Shadow Claw - TM65
  (542, 54200, 421, 16, NULL, 2, NULL, NULL, 16002065, NULL, 38),
  -- Leavanny - Payback - TM66
  (542, 54200, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 39),
  -- Leavanny - Giga Impact - TM68
  (542, 54200, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 40),
  -- Leavanny - Swords Dance - TM75
  (542, 54200, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 41),
  -- Leavanny - X-Scissor - TM81
  (542, 54200, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 42),
  -- Leavanny - Poison Jab - TM84
  (542, 54200, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 43),
  -- Leavanny - Dream Eater - TM85
  (542, 54200, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 44),
  -- Leavanny - Grass Knot - TM86
  (542, 54200, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 45),
  -- Leavanny - Swagger - TM87
  (542, 54200, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 46),
  -- Leavanny - Sleep Talk - TM88
  (542, 54200, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 47),
  -- Leavanny - Substitute - TM90
  (542, 54200, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 48),
  -- Leavanny - Nature Power - TM96
  (542, 54200, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 49),
  -- Leavanny - Confide - TM100
  (542, 54200, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 50),
  -- Leavanny - Snore - Tutor
  (542, 54200, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Leavanny - Giga Drain - Tutor
  (542, 54200, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Leavanny - Heal Bell - Tutor
  (542, 54200, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Leavanny - Synthesis - Tutor
  (542, 54200, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Leavanny - Helping Hand - Tutor
  (542, 54200, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Leavanny - Magic Coat - Tutor
  (542, 54200, 277, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Leavanny - Knock Off - Tutor
  (542, 54200, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Leavanny - Signal Beam - Tutor
  (542, 54200, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Leavanny - Iron Defense - Tutor
  (542, 54200, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Leavanny - Worry Seed - Tutor
  (542, 54200, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Leavanny - Seed Bomb - Tutor
  (542, 54200, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Leavanny - Bug Bite - Tutor
  (542, 54200, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Leavanny - Electroweb - Tutor
  (542, 54200, 527, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Leavanny - Laser Focus - Tutor
  (542, 54200, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 64),
  -- Leavanny - Throat Chop - Tutor
  (542, 54200, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 65),
  -- Leavanny - Slash - Evolution
  (542, 54200, 163, 16, NULL, 7, NULL, NULL, NULL, NULL, 66),

  -- Venipede - Defense Curl - Level 1
  (543, 54300, 111, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Venipede - Rollout - Level 1
  (543, 54300, 205, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Venipede - Poison Sting - Level 5
  (543, 54300, 40, 16, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Venipede - Screech - Level 8
  (543, 54300, 103, 16, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Venipede - Pursuit - Level 12
  (543, 54300, 228, 16, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Venipede - Protect - Level 15
  (543, 54300, 182, 16, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Venipede - Poison Tail - Level 19
  (543, 54300, 342, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Venipede - Bug Bite - Level 22
  (543, 54300, 450, 16, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Venipede - Venoshock - Level 26
  (543, 54300, 474, 16, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Venipede - Agility - Level 29
  (543, 54300, 97, 16, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Venipede - Steamroller - Level 33
  (543, 54300, 537, 16, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Venipede - Toxic - Level 36
  (543, 54300, 92, 16, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Venipede - Venom Drench - Level 38
  (543, 54300, 599, 16, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Venipede - Rock Climb - Level 40
  (543, 54300, 431, 16, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Venipede - Double-Edge - Level 43
  (543, 54300, 38, 16, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Venipede - Toxic - TM06
  (543, 54300, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 16),
  -- Venipede - Venoshock - TM09
  (543, 54300, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 17),
  -- Venipede - Hidden Power - TM10
  (543, 54300, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Venipede - Sunny Day - TM11
  (543, 54300, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Venipede - Protect - TM17
  (543, 54300, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Venipede - Frustration - TM21
  (543, 54300, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 21),
  -- Venipede - Solar Beam - TM22
  (543, 54300, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 22),
  -- Venipede - Return - TM27
  (543, 54300, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 23),
  -- Venipede - Double Team - TM32
  (543, 54300, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 24),
  -- Venipede - Sludge Bomb - TM36
  (543, 54300, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 25),
  -- Venipede - Facade - TM42
  (543, 54300, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 26),
  -- Venipede - Rest - TM44
  (543, 54300, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 27),
  -- Venipede - Attract - TM45
  (543, 54300, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 28),
  -- Venipede - Round - TM48
  (543, 54300, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 29),
  -- Venipede - Payback - TM66
  (543, 54300, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 30),
  -- Venipede - Gyro Ball - TM74
  (543, 54300, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 31),
  -- Venipede - Infestation - TM83
  (543, 54300, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 32),
  -- Venipede - Poison Jab - TM84
  (543, 54300, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 33),
  -- Venipede - Swagger - TM87
  (543, 54300, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 34),
  -- Venipede - Sleep Talk - TM88
  (543, 54300, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 35),
  -- Venipede - Substitute - TM90
  (543, 54300, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 36),
  -- Venipede - Confide - TM100
  (543, 54300, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 37),
  -- Venipede - Take Down - Egg
  (543, 54300, 36, 16, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Venipede - Twineedle - Egg
  (543, 54300, 41, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Venipede - Pin Missile - Egg
  (543, 54300, 42, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Venipede - Spikes - Egg
  (543, 54300, 191, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Venipede - Toxic Spikes - Egg
  (543, 54300, 390, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Venipede - Rock Climb - Egg
  (543, 54300, 431, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Venipede - Snore - Tutor
  (543, 54300, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Venipede - Endeavor - Tutor
  (543, 54300, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Venipede - Signal Beam - Tutor
  (543, 54300, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Venipede - Iron Defense - Tutor
  (543, 54300, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Venipede - Bug Bite - Tutor
  (543, 54300, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),

  -- Whirlipede - Poison Sting - Level 1
  (544, 54400, 40, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Whirlipede - Screech - Level 1
  (544, 54400, 103, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Whirlipede - Defense Curl - Level 1
  (544, 54400, 111, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Whirlipede - Rollout - Level 1
  (544, 54400, 205, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Whirlipede - Iron Defense - Level 1
  (544, 54400, 334, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Whirlipede - Poison Sting - Level 5
  (544, 54400, 40, 16, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Whirlipede - Screech - Level 8
  (544, 54400, 103, 16, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Whirlipede - Pursuit - Level 12
  (544, 54400, 228, 16, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Whirlipede - Protect - Level 15
  (544, 54400, 182, 16, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Whirlipede - Poison Tail - Level 19
  (544, 54400, 342, 16, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Whirlipede - Bug Bite - Level 23
  (544, 54400, 450, 16, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Whirlipede - Venoshock - Level 28
  (544, 54400, 474, 16, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Whirlipede - Agility - Level 32
  (544, 54400, 97, 16, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Whirlipede - Steamroller - Level 37
  (544, 54400, 537, 16, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Whirlipede - Toxic - Level 41
  (544, 54400, 92, 16, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Whirlipede - Venom Drench - Level 43
  (544, 54400, 599, 16, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Whirlipede - Rock Climb - Level 46
  (544, 54400, 431, 16, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Whirlipede - Double-Edge - Level 50
  (544, 54400, 38, 16, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Whirlipede - Toxic - TM06
  (544, 54400, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Whirlipede - Venoshock - TM09
  (544, 54400, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 20),
  -- Whirlipede - Hidden Power - TM10
  (544, 54400, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Whirlipede - Sunny Day - TM11
  (544, 54400, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 22),
  -- Whirlipede - Protect - TM17
  (544, 54400, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 23),
  -- Whirlipede - Frustration - TM21
  (544, 54400, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Whirlipede - Solar Beam - TM22
  (544, 54400, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 25),
  -- Whirlipede - Return - TM27
  (544, 54400, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Whirlipede - Double Team - TM32
  (544, 54400, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 27),
  -- Whirlipede - Sludge Bomb - TM36
  (544, 54400, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 28),
  -- Whirlipede - Facade - TM42
  (544, 54400, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Whirlipede - Rest - TM44
  (544, 54400, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Whirlipede - Attract - TM45
  (544, 54400, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Whirlipede - Round - TM48
  (544, 54400, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 32),
  -- Whirlipede - Payback - TM66
  (544, 54400, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 33),
  -- Whirlipede - Gyro Ball - TM74
  (544, 54400, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 34),
  -- Whirlipede - Infestation - TM83
  (544, 54400, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 35),
  -- Whirlipede - Poison Jab - TM84
  (544, 54400, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 36),
  -- Whirlipede - Swagger - TM87
  (544, 54400, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 37),
  -- Whirlipede - Sleep Talk - TM88
  (544, 54400, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 38),
  -- Whirlipede - Substitute - TM90
  (544, 54400, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 39),
  -- Whirlipede - Confide - TM100
  (544, 54400, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 40),
  -- Whirlipede - Snore - Tutor
  (544, 54400, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Whirlipede - Endeavor - Tutor
  (544, 54400, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Whirlipede - Signal Beam - Tutor
  (544, 54400, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Whirlipede - Iron Defense - Tutor
  (544, 54400, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Whirlipede - Bug Bite - Tutor
  (544, 54400, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Whirlipede - Iron Defense - Evolution
  (544, 54400, 334, 16, NULL, 7, NULL, NULL, NULL, NULL, 46),

  -- Scolipede - Poison Sting - Level 1
  (545, 54500, 40, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scolipede - Screech - Level 1
  (545, 54500, 103, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scolipede - Defense Curl - Level 1
  (545, 54500, 111, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Scolipede - Rollout - Level 1
  (545, 54500, 205, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Scolipede - Megahorn - Level 1
  (545, 54500, 224, 16, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Scolipede - Baton Pass - Level 1
  (545, 54500, 226, 16, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Scolipede - Iron Defense - Level 1
  (545, 54500, 334, 16, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Scolipede - Poison Sting - Level 5
  (545, 54500, 40, 16, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Scolipede - Screech - Level 8
  (545, 54500, 103, 16, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Scolipede - Pursuit - Level 12
  (545, 54500, 228, 16, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Scolipede - Protect - Level 15
  (545, 54500, 182, 16, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Scolipede - Poison Tail - Level 19
  (545, 54500, 342, 16, NULL, 1, 19, NULL, NULL, NULL, 12),
  -- Scolipede - Bug Bite - Level 23
  (545, 54500, 450, 16, NULL, 1, 23, NULL, NULL, NULL, 13),
  -- Scolipede - Venoshock - Level 28
  (545, 54500, 474, 16, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Scolipede - Agility - Level 33
  (545, 54500, 97, 16, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Scolipede - Steamroller - Level 39
  (545, 54500, 537, 16, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Scolipede - Toxic - Level 44
  (545, 54500, 92, 16, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Scolipede - Venom Drench - Level 47
  (545, 54500, 599, 16, NULL, 1, 47, NULL, NULL, NULL, 18),
  -- Scolipede - Rock Climb - Level 50
  (545, 54500, 431, 16, NULL, 1, 50, NULL, NULL, NULL, 19),
  -- Scolipede - Double-Edge - Level 55
  (545, 54500, 38, 16, NULL, 1, 55, NULL, NULL, NULL, 20),
  -- Scolipede - Megahorn - Level 65
  (545, 54500, 224, 16, NULL, 1, 65, NULL, NULL, NULL, 21),
  -- Scolipede - Toxic - TM06
  (545, 54500, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 22),
  -- Scolipede - Venoshock - TM09
  (545, 54500, 474, 16, NULL, 2, NULL, NULL, 16002009, NULL, 23),
  -- Scolipede - Hidden Power - TM10
  (545, 54500, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 24),
  -- Scolipede - Sunny Day - TM11
  (545, 54500, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 25),
  -- Scolipede - Hyper Beam - TM15
  (545, 54500, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 26),
  -- Scolipede - Protect - TM17
  (545, 54500, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 27),
  -- Scolipede - Frustration - TM21
  (545, 54500, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 28),
  -- Scolipede - Solar Beam - TM22
  (545, 54500, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 29),
  -- Scolipede - Earthquake - TM26
  (545, 54500, 89, 16, NULL, 2, NULL, NULL, 16002026, NULL, 30),
  -- Scolipede - Return - TM27
  (545, 54500, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 31),
  -- Scolipede - Double Team - TM32
  (545, 54500, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 32),
  -- Scolipede - Sludge Bomb - TM36
  (545, 54500, 188, 16, NULL, 2, NULL, NULL, 16002036, NULL, 33),
  -- Scolipede - Rock Tomb - TM39
  (545, 54500, 317, 16, NULL, 2, NULL, NULL, 16002039, NULL, 34),
  -- Scolipede - Facade - TM42
  (545, 54500, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 35),
  -- Scolipede - Rest - TM44
  (545, 54500, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 36),
  -- Scolipede - Attract - TM45
  (545, 54500, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 37),
  -- Scolipede - Round - TM48
  (545, 54500, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 38),
  -- Scolipede - Payback - TM66
  (545, 54500, 371, 16, NULL, 2, NULL, NULL, 16002066, NULL, 39),
  -- Scolipede - Smart Strike - TM67
  (545, 54500, 684, 16, NULL, 2, NULL, NULL, 16002067, NULL, 40),
  -- Scolipede - Giga Impact - TM68
  (545, 54500, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 41),
  -- Scolipede - Gyro Ball - TM74
  (545, 54500, 360, 16, NULL, 2, NULL, NULL, 16002074, NULL, 42),
  -- Scolipede - Swords Dance - TM75
  (545, 54500, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 43),
  -- Scolipede - Bulldoze - TM78
  (545, 54500, 523, 16, NULL, 2, NULL, NULL, 16002078, NULL, 44),
  -- Scolipede - Rock Slide - TM80
  (545, 54500, 157, 16, NULL, 2, NULL, NULL, 16002080, NULL, 45),
  -- Scolipede - X-Scissor - TM81
  (545, 54500, 404, 16, NULL, 2, NULL, NULL, 16002081, NULL, 46),
  -- Scolipede - Infestation - TM83
  (545, 54500, 611, 16, NULL, 2, NULL, NULL, 16002083, NULL, 47),
  -- Scolipede - Poison Jab - TM84
  (545, 54500, 398, 16, NULL, 2, NULL, NULL, 16002084, NULL, 48),
  -- Scolipede - Swagger - TM87
  (545, 54500, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 49),
  -- Scolipede - Sleep Talk - TM88
  (545, 54500, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 50),
  -- Scolipede - Substitute - TM90
  (545, 54500, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 51),
  -- Scolipede - Confide - TM100
  (545, 54500, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 52),
  -- Scolipede - Snore - Tutor
  (545, 54500, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Scolipede - Iron Tail - Tutor
  (545, 54500, 231, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Scolipede - Superpower - Tutor
  (545, 54500, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Scolipede - Endeavor - Tutor
  (545, 54500, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Scolipede - Snatch - Tutor
  (545, 54500, 289, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Scolipede - Signal Beam - Tutor
  (545, 54500, 324, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Scolipede - Iron Defense - Tutor
  (545, 54500, 334, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Scolipede - Aqua Tail - Tutor
  (545, 54500, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Scolipede - Bug Bite - Tutor
  (545, 54500, 450, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),
  -- Scolipede - Throat Chop - Tutor
  (545, 54500, 675, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 62),
  -- Scolipede - Stomping Tantrum - Tutor
  (545, 54500, 707, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 63),
  -- Scolipede - Baton Pass - Evolution
  (545, 54500, 226, 16, NULL, 7, NULL, NULL, NULL, NULL, 64),

  -- Cottonee - Absorb - Level 1
  (546, 54600, 71, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cottonee - Fairy Wind - Level 1
  (546, 54600, 584, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cottonee - Growth - Level 4
  (546, 54600, 74, 16, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Cottonee - Leech Seed - Level 8
  (546, 54600, 73, 16, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Cottonee - Stun Spore - Level 10
  (546, 54600, 78, 16, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Cottonee - Mega Drain - Level 13
  (546, 54600, 72, 16, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Cottonee - Cotton Spore - Level 17
  (546, 54600, 178, 16, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Cottonee - Razor Leaf - Level 19
  (546, 54600, 75, 16, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Cottonee - Poison Powder - Level 22
  (546, 54600, 77, 16, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Cottonee - Giga Drain - Level 26
  (546, 54600, 202, 16, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Cottonee - Charm - Level 28
  (546, 54600, 204, 16, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Cottonee - Helping Hand - Level 31
  (546, 54600, 270, 16, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Cottonee - Energy Ball - Level 35
  (546, 54600, 412, 16, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Cottonee - Cotton Guard - Level 37
  (546, 54600, 538, 16, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Cottonee - Sunny Day - Level 40
  (546, 54600, 241, 16, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Cottonee - Endeavor - Level 44
  (546, 54600, 283, 16, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Cottonee - Solar Beam - Level 46
  (546, 54600, 76, 16, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Cottonee - Toxic - TM06
  (546, 54600, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 18),
  -- Cottonee - Hidden Power - TM10
  (546, 54600, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 19),
  -- Cottonee - Sunny Day - TM11
  (546, 54600, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 20),
  -- Cottonee - Taunt - TM12
  (546, 54600, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 21),
  -- Cottonee - Protect - TM17
  (546, 54600, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 22),
  -- Cottonee - Safeguard - TM20
  (546, 54600, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 23),
  -- Cottonee - Frustration - TM21
  (546, 54600, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 24),
  -- Cottonee - Solar Beam - TM22
  (546, 54600, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 25),
  -- Cottonee - Return - TM27
  (546, 54600, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 26),
  -- Cottonee - Double Team - TM32
  (546, 54600, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 27),
  -- Cottonee - Facade - TM42
  (546, 54600, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 28),
  -- Cottonee - Rest - TM44
  (546, 54600, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 29),
  -- Cottonee - Attract - TM45
  (546, 54600, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 30),
  -- Cottonee - Round - TM48
  (546, 54600, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 31),
  -- Cottonee - Energy Ball - TM53
  (546, 54600, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 32),
  -- Cottonee - Dream Eater - TM85
  (546, 54600, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 33),
  -- Cottonee - Grass Knot - TM86
  (546, 54600, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 34),
  -- Cottonee - Swagger - TM87
  (546, 54600, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 35),
  -- Cottonee - Sleep Talk - TM88
  (546, 54600, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 36),
  -- Cottonee - Substitute - TM90
  (546, 54600, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 37),
  -- Cottonee - Nature Power - TM96
  (546, 54600, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 38),
  -- Cottonee - Dazzling Gleam - TM99
  (546, 54600, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 39),
  -- Cottonee - Confide - TM100
  (546, 54600, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 40),
  -- Cottonee - Encore - Egg
  (546, 54600, 227, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Cottonee - Beat Up - Egg
  (546, 54600, 251, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Cottonee - Memento - Egg
  (546, 54600, 262, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Cottonee - Fake Tears - Egg
  (546, 54600, 313, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Cottonee - Grass Whistle - Egg
  (546, 54600, 320, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Cottonee - Tickle - Egg
  (546, 54600, 321, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Cottonee - Natural Gift - Egg
  (546, 54600, 363, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Cottonee - Worry Seed - Egg
  (546, 54600, 388, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Cottonee - Switcheroo - Egg
  (546, 54600, 415, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cottonee - Captivate - Egg
  (546, 54600, 445, 16, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Cottonee - Misty Terrain - Egg
  (546, 54600, 581, 16, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Cottonee - Snore - Tutor
  (546, 54600, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Cottonee - Giga Drain - Tutor
  (546, 54600, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Cottonee - Helping Hand - Tutor
  (546, 54600, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Cottonee - Knock Off - Tutor
  (546, 54600, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Cottonee - Endeavor - Tutor
  (546, 54600, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Cottonee - Covet - Tutor
  (546, 54600, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Cottonee - Tailwind - Tutor
  (546, 54600, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58),
  -- Cottonee - Worry Seed - Tutor
  (546, 54600, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 59),
  -- Cottonee - Seed Bomb - Tutor
  (546, 54600, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 60),
  -- Cottonee - Defog - Tutor
  (546, 54600, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 61),

  -- Whimsicott - Mega Drain - Level 1
  (547, 54700, 72, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Whimsicott - Leech Seed - Level 1
  (547, 54700, 73, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Whimsicott - Growth - Level 1
  (547, 54700, 74, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Whimsicott - Cotton Spore - Level 1
  (547, 54700, 178, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Whimsicott - Gust - Level 10
  (547, 54700, 16, 16, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Whimsicott - Tailwind - Level 28
  (547, 54700, 366, 16, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Whimsicott - Hurricane - Level 46
  (547, 54700, 542, 16, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Whimsicott - Moonblast - Level 50
  (547, 54700, 585, 16, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Whimsicott - Toxic - TM06
  (547, 54700, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 9),
  -- Whimsicott - Hidden Power - TM10
  (547, 54700, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 10),
  -- Whimsicott - Sunny Day - TM11
  (547, 54700, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 11),
  -- Whimsicott - Taunt - TM12
  (547, 54700, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 12),
  -- Whimsicott - Hyper Beam - TM15
  (547, 54700, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 13),
  -- Whimsicott - Light Screen - TM16
  (547, 54700, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 14),
  -- Whimsicott - Protect - TM17
  (547, 54700, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 15),
  -- Whimsicott - Safeguard - TM20
  (547, 54700, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 16),
  -- Whimsicott - Frustration - TM21
  (547, 54700, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 17),
  -- Whimsicott - Solar Beam - TM22
  (547, 54700, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 18),
  -- Whimsicott - Return - TM27
  (547, 54700, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 19),
  -- Whimsicott - Psychic - TM29
  (547, 54700, 94, 16, NULL, 2, NULL, NULL, 16002029, NULL, 20),
  -- Whimsicott - Shadow Ball - TM30
  (547, 54700, 247, 16, NULL, 2, NULL, NULL, 16002030, NULL, 21),
  -- Whimsicott - Double Team - TM32
  (547, 54700, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 22),
  -- Whimsicott - Facade - TM42
  (547, 54700, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 23),
  -- Whimsicott - Rest - TM44
  (547, 54700, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 24),
  -- Whimsicott - Attract - TM45
  (547, 54700, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 25),
  -- Whimsicott - Thief - TM46
  (547, 54700, 168, 16, NULL, 2, NULL, NULL, 16002046, NULL, 26),
  -- Whimsicott - Round - TM48
  (547, 54700, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 27),
  -- Whimsicott - Energy Ball - TM53
  (547, 54700, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 28),
  -- Whimsicott - Fling - TM56
  (547, 54700, 374, 16, NULL, 2, NULL, NULL, 16002056, NULL, 29),
  -- Whimsicott - Giga Impact - TM68
  (547, 54700, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 30),
  -- Whimsicott - Dream Eater - TM85
  (547, 54700, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 31),
  -- Whimsicott - Grass Knot - TM86
  (547, 54700, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 32),
  -- Whimsicott - Swagger - TM87
  (547, 54700, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 33),
  -- Whimsicott - Sleep Talk - TM88
  (547, 54700, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 34),
  -- Whimsicott - U-turn - TM89
  (547, 54700, 369, 16, NULL, 2, NULL, NULL, 16002089, NULL, 35),
  -- Whimsicott - Substitute - TM90
  (547, 54700, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 36),
  -- Whimsicott - Trick Room - TM92
  (547, 54700, 433, 16, NULL, 2, NULL, NULL, 16002092, NULL, 37),
  -- Whimsicott - Nature Power - TM96
  (547, 54700, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 38),
  -- Whimsicott - Dazzling Gleam - TM99
  (547, 54700, 605, 16, NULL, 2, NULL, NULL, 16002099, NULL, 39),
  -- Whimsicott - Confide - TM100
  (547, 54700, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 40),
  -- Whimsicott - Snore - Tutor
  (547, 54700, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Whimsicott - Giga Drain - Tutor
  (547, 54700, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Whimsicott - Helping Hand - Tutor
  (547, 54700, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Whimsicott - Knock Off - Tutor
  (547, 54700, 282, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),
  -- Whimsicott - Endeavor - Tutor
  (547, 54700, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 45),
  -- Whimsicott - Covet - Tutor
  (547, 54700, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 46),
  -- Whimsicott - Tailwind - Tutor
  (547, 54700, 366, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 47),
  -- Whimsicott - Worry Seed - Tutor
  (547, 54700, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Whimsicott - Seed Bomb - Tutor
  (547, 54700, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Whimsicott - Defog - Tutor
  (547, 54700, 432, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),

  -- Petilil - Absorb - Level 1
  (548, 54800, 71, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Petilil - Growth - Level 4
  (548, 54800, 74, 16, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Petilil - Leech Seed - Level 8
  (548, 54800, 73, 16, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Petilil - Sleep Powder - Level 10
  (548, 54800, 79, 16, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Petilil - Mega Drain - Level 13
  (548, 54800, 72, 16, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Petilil - Synthesis - Level 17
  (548, 54800, 235, 16, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Petilil - Magical Leaf - Level 19
  (548, 54800, 345, 16, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Petilil - Stun Spore - Level 22
  (548, 54800, 78, 16, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Petilil - Giga Drain - Level 26
  (548, 54800, 202, 16, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Petilil - Aromatherapy - Level 28
  (548, 54800, 312, 16, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Petilil - Helping Hand - Level 31
  (548, 54800, 270, 16, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Petilil - Energy Ball - Level 35
  (548, 54800, 412, 16, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Petilil - Entrainment - Level 37
  (548, 54800, 494, 16, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Petilil - Sunny Day - Level 40
  (548, 54800, 241, 16, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Petilil - After You - Level 44
  (548, 54800, 495, 16, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Petilil - Leaf Storm - Level 46
  (548, 54800, 437, 16, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Petilil - Toxic - TM06
  (548, 54800, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 17),
  -- Petilil - Hidden Power - TM10
  (548, 54800, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 18),
  -- Petilil - Sunny Day - TM11
  (548, 54800, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 19),
  -- Petilil - Protect - TM17
  (548, 54800, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 20),
  -- Petilil - Safeguard - TM20
  (548, 54800, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 21),
  -- Petilil - Frustration - TM21
  (548, 54800, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 22),
  -- Petilil - Solar Beam - TM22
  (548, 54800, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 23),
  -- Petilil - Return - TM27
  (548, 54800, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 24),
  -- Petilil - Double Team - TM32
  (548, 54800, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 25),
  -- Petilil - Facade - TM42
  (548, 54800, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 26),
  -- Petilil - Rest - TM44
  (548, 54800, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 27),
  -- Petilil - Attract - TM45
  (548, 54800, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 28),
  -- Petilil - Round - TM48
  (548, 54800, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 29),
  -- Petilil - Energy Ball - TM53
  (548, 54800, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 30),
  -- Petilil - Dream Eater - TM85
  (548, 54800, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 31),
  -- Petilil - Grass Knot - TM86
  (548, 54800, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 32),
  -- Petilil - Swagger - TM87
  (548, 54800, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 33),
  -- Petilil - Sleep Talk - TM88
  (548, 54800, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 34),
  -- Petilil - Substitute - TM90
  (548, 54800, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 35),
  -- Petilil - Nature Power - TM96
  (548, 54800, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 36),
  -- Petilil - Confide - TM100
  (548, 54800, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 37),
  -- Petilil - Bide - Egg
  (548, 54800, 117, 16, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Petilil - Endure - Egg
  (548, 54800, 203, 16, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Petilil - Charm - Egg
  (548, 54800, 204, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Petilil - Encore - Egg
  (548, 54800, 227, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Petilil - Sweet Scent - Egg
  (548, 54800, 230, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Petilil - Ingrain - Egg
  (548, 54800, 275, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Petilil - Grass Whistle - Egg
  (548, 54800, 320, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Petilil - Healing Wish - Egg
  (548, 54800, 361, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Petilil - Natural Gift - Egg
  (548, 54800, 363, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Petilil - Worry Seed - Egg
  (548, 54800, 388, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Petilil - Snore - Tutor
  (548, 54800, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 48),
  -- Petilil - Giga Drain - Tutor
  (548, 54800, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 49),
  -- Petilil - Heal Bell - Tutor
  (548, 54800, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Petilil - Synthesis - Tutor
  (548, 54800, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Petilil - Helping Hand - Tutor
  (548, 54800, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Petilil - Covet - Tutor
  (548, 54800, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Petilil - Worry Seed - Tutor
  (548, 54800, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Petilil - Seed Bomb - Tutor
  (548, 54800, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Petilil - After You - Tutor
  (548, 54800, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Petilil - Laser Focus - Tutor
  (548, 54800, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),

  -- Lilligant - Mega Drain - Level 1
  (549, 54900, 72, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lilligant - Leech Seed - Level 1
  (549, 54900, 73, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lilligant - Growth - Level 1
  (549, 54900, 74, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lilligant - Synthesis - Level 1
  (549, 54900, 235, 16, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lilligant - Teeter Dance - Level 10
  (549, 54900, 298, 16, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Lilligant - Quiver Dance - Level 28
  (549, 54900, 483, 16, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Lilligant - Petal Dance - Level 46
  (549, 54900, 80, 16, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Lilligant - Petal Blizzard - Level 50
  (549, 54900, 572, 16, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Lilligant - Toxic - TM06
  (549, 54900, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 9),
  -- Lilligant - Hidden Power - TM10
  (549, 54900, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 10),
  -- Lilligant - Sunny Day - TM11
  (549, 54900, 241, 16, NULL, 2, NULL, NULL, 16002011, NULL, 11),
  -- Lilligant - Hyper Beam - TM15
  (549, 54900, 63, 16, NULL, 2, NULL, NULL, 16002015, NULL, 12),
  -- Lilligant - Light Screen - TM16
  (549, 54900, 113, 16, NULL, 2, NULL, NULL, 16002016, NULL, 13),
  -- Lilligant - Protect - TM17
  (549, 54900, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 14),
  -- Lilligant - Safeguard - TM20
  (549, 54900, 219, 16, NULL, 2, NULL, NULL, 16002020, NULL, 15),
  -- Lilligant - Frustration - TM21
  (549, 54900, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 16),
  -- Lilligant - Solar Beam - TM22
  (549, 54900, 76, 16, NULL, 2, NULL, NULL, 16002022, NULL, 17),
  -- Lilligant - Return - TM27
  (549, 54900, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 18),
  -- Lilligant - Double Team - TM32
  (549, 54900, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 19),
  -- Lilligant - Facade - TM42
  (549, 54900, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 20),
  -- Lilligant - Rest - TM44
  (549, 54900, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 21),
  -- Lilligant - Attract - TM45
  (549, 54900, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 22),
  -- Lilligant - Round - TM48
  (549, 54900, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 23),
  -- Lilligant - Energy Ball - TM53
  (549, 54900, 412, 16, NULL, 2, NULL, NULL, 16002053, NULL, 24),
  -- Lilligant - Giga Impact - TM68
  (549, 54900, 416, 16, NULL, 2, NULL, NULL, 16002068, NULL, 25),
  -- Lilligant - Swords Dance - TM75
  (549, 54900, 14, 16, NULL, 2, NULL, NULL, 16002075, NULL, 26),
  -- Lilligant - Dream Eater - TM85
  (549, 54900, 138, 16, NULL, 2, NULL, NULL, 16002085, NULL, 27),
  -- Lilligant - Grass Knot - TM86
  (549, 54900, 447, 16, NULL, 2, NULL, NULL, 16002086, NULL, 28),
  -- Lilligant - Swagger - TM87
  (549, 54900, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 29),
  -- Lilligant - Sleep Talk - TM88
  (549, 54900, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 30),
  -- Lilligant - Substitute - TM90
  (549, 54900, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 31),
  -- Lilligant - Nature Power - TM96
  (549, 54900, 267, 16, NULL, 2, NULL, NULL, 16002096, NULL, 32),
  -- Lilligant - Confide - TM100
  (549, 54900, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 33),
  -- Lilligant - Snore - Tutor
  (549, 54900, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 34),
  -- Lilligant - Giga Drain - Tutor
  (549, 54900, 202, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 35),
  -- Lilligant - Heal Bell - Tutor
  (549, 54900, 215, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 36),
  -- Lilligant - Synthesis - Tutor
  (549, 54900, 235, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 37),
  -- Lilligant - Helping Hand - Tutor
  (549, 54900, 270, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 38),
  -- Lilligant - Role Play - Tutor
  (549, 54900, 272, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 39),
  -- Lilligant - Covet - Tutor
  (549, 54900, 343, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 40),
  -- Lilligant - Worry Seed - Tutor
  (549, 54900, 388, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 41),
  -- Lilligant - Seed Bomb - Tutor
  (549, 54900, 402, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 42),
  -- Lilligant - After You - Tutor
  (549, 54900, 495, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 43),
  -- Lilligant - Laser Focus - Tutor
  (549, 54900, 673, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 44),

  -- Basculin - Tackle - Level 1
  (550, 55000, 33, 16, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Basculin - Tail Whip - Level 1
  (550, 55000, 39, 16, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Basculin - Water Gun - Level 1
  (550, 55000, 55, 16, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Basculin - Uproar - Level 3
  (550, 55000, 253, 16, NULL, 1, 3, NULL, NULL, NULL, 4),
  -- Basculin - Headbutt - Level 5
  (550, 55000, 29, 16, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Basculin - Bite - Level 7
  (550, 55000, 44, 16, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Basculin - Aqua Jet - Level 9
  (550, 55000, 453, 16, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Basculin - Chip Away - Level 11
  (550, 55000, 498, 16, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Basculin - Take Down - Level 14
  (550, 55000, 36, 16, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Basculin - Crunch - Level 17
  (550, 55000, 242, 16, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Basculin - Aqua Tail - Level 20
  (550, 55000, 401, 16, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Basculin - Soak - Level 23
  (550, 55000, 487, 16, NULL, 1, 23, NULL, NULL, NULL, 12),
  -- Basculin - Double-Edge - Level 26
  (550, 55000, 38, 16, NULL, 1, 26, NULL, NULL, NULL, 13),
  -- Basculin - Scary Face - Level 30
  (550, 55000, 184, 16, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Basculin - Flail - Level 34
  (550, 55000, 175, 16, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Basculin - Final Gambit - Level 38
  (550, 55000, 515, 16, NULL, 1, 38, NULL, NULL, NULL, 16),
  -- Basculin - Thrash - Level 42
  (550, 55000, 37, 16, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Basculin - Head Smash - Level 46
  (550, 55000, 457, 16, NULL, 1, 46, NULL, NULL, NULL, 18),
  -- Basculin - Toxic - TM06
  (550, 55000, 92, 16, NULL, 2, NULL, NULL, 16002006, NULL, 19),
  -- Basculin - Hail - TM07
  (550, 55000, 258, 16, NULL, 2, NULL, NULL, 16002007, NULL, 20),
  -- Basculin - Hidden Power - TM10
  (550, 55000, 237, 16, NULL, 2, NULL, NULL, 16002010, NULL, 21),
  -- Basculin - Taunt - TM12
  (550, 55000, 269, 16, NULL, 2, NULL, NULL, 16002012, NULL, 22),
  -- Basculin - Ice Beam - TM13
  (550, 55000, 58, 16, NULL, 2, NULL, NULL, 16002013, NULL, 23),
  -- Basculin - Protect - TM17
  (550, 55000, 182, 16, NULL, 2, NULL, NULL, 16002017, NULL, 24),
  -- Basculin - Rain Dance - TM18
  (550, 55000, 240, 16, NULL, 2, NULL, NULL, 16002018, NULL, 25),
  -- Basculin - Frustration - TM21
  (550, 55000, 218, 16, NULL, 2, NULL, NULL, 16002021, NULL, 26),
  -- Basculin - Return - TM27
  (550, 55000, 216, 16, NULL, 2, NULL, NULL, 16002027, NULL, 27),
  -- Basculin - Double Team - TM32
  (550, 55000, 104, 16, NULL, 2, NULL, NULL, 16002032, NULL, 28),
  -- Basculin - Facade - TM42
  (550, 55000, 263, 16, NULL, 2, NULL, NULL, 16002042, NULL, 29),
  -- Basculin - Rest - TM44
  (550, 55000, 156, 16, NULL, 2, NULL, NULL, 16002044, NULL, 30),
  -- Basculin - Attract - TM45
  (550, 55000, 213, 16, NULL, 2, NULL, NULL, 16002045, NULL, 31),
  -- Basculin - Round - TM48
  (550, 55000, 496, 16, NULL, 2, NULL, NULL, 16002048, NULL, 32),
  -- Basculin - Scald - TM55
  (550, 55000, 503, 16, NULL, 2, NULL, NULL, 16002055, NULL, 33),
  -- Basculin - Swagger - TM87
  (550, 55000, 207, 16, NULL, 2, NULL, NULL, 16002087, NULL, 34),
  -- Basculin - Sleep Talk - TM88
  (550, 55000, 214, 16, NULL, 2, NULL, NULL, 16002088, NULL, 35),
  -- Basculin - Substitute - TM90
  (550, 55000, 164, 16, NULL, 2, NULL, NULL, 16002090, NULL, 36),
  -- Basculin - Surf - TM94
  (550, 55000, 57, 16, NULL, 2, NULL, NULL, 16002094, NULL, 37),
  -- Basculin - Waterfall - TM98
  (550, 55000, 127, 16, NULL, 2, NULL, NULL, 16002098, NULL, 38),
  -- Basculin - Confide - TM100
  (550, 55000, 590, 16, NULL, 2, NULL, NULL, 16002100, NULL, 39),
  -- Basculin - Bubble Beam - Egg
  (550, 55000, 61, 16, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Basculin - Agility - Egg
  (550, 55000, 97, 16, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Basculin - Rage - Egg
  (550, 55000, 99, 16, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Basculin - Swift - Egg
  (550, 55000, 129, 16, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Basculin - Whirlpool - Egg
  (550, 55000, 250, 16, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Basculin - Revenge - Egg
  (550, 55000, 279, 16, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Basculin - Muddy Water - Egg
  (550, 55000, 330, 16, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Basculin - Mud Shot - Egg
  (550, 55000, 341, 16, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Basculin - Brine - Egg
  (550, 55000, 362, 16, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Basculin - Head Smash - Egg
  (550, 55000, 457, 16, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Basculin - Snore - Tutor
  (550, 55000, 173, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 50),
  -- Basculin - Icy Wind - Tutor
  (550, 55000, 196, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 51),
  -- Basculin - Uproar - Tutor
  (550, 55000, 253, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 52),
  -- Basculin - Superpower - Tutor
  (550, 55000, 276, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 53),
  -- Basculin - Endeavor - Tutor
  (550, 55000, 283, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 54),
  -- Basculin - Bounce - Tutor
  (550, 55000, 340, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 55),
  -- Basculin - Aqua Tail - Tutor
  (550, 55000, 401, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 56),
  -- Basculin - Zen Headbutt - Tutor
  (550, 55000, 428, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 57),
  -- Basculin - Liquidation - Tutor
  (550, 55000, 710, 16, NULL, 6, NULL, NULL, NULL, 'Ultra Sun / Ultra Moon Move Tutor.', 58);
