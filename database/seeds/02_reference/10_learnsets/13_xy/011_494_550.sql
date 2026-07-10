-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VI raw learnset pages.
-- Cross-check: PokemonDB X / Y learnset pages and legacy Voydex Generation VI learnset seeds.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- X / Y learnsets for default forms, species 494-550.
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
  (494, 49400, 93, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Victini - Quick Attack - Level 1
  (494, 49400, 98, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Victini - Focus Energy - Level 1
  (494, 49400, 116, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Victini - Incinerate - Level 1
  (494, 49400, 510, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Victini - Searing Shot - Level 1
  (494, 49400, 545, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Victini - Endure - Level 9
  (494, 49400, 203, 13, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Victini - Headbutt - Level 17
  (494, 49400, 29, 13, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Victini - Flame Charge - Level 25
  (494, 49400, 488, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Victini - Reversal - Level 33
  (494, 49400, 179, 13, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Victini - Flame Burst - Level 41
  (494, 49400, 481, 13, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Victini - Zen Headbutt - Level 49
  (494, 49400, 428, 13, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Victini - Inferno - Level 57
  (494, 49400, 517, 13, NULL, 1, 57, NULL, NULL, NULL, 12),
  -- Victini - Double-Edge - Level 65
  (494, 49400, 38, 13, NULL, 1, 65, NULL, NULL, NULL, 13),
  -- Victini - Flare Blitz - Level 73
  (494, 49400, 394, 13, NULL, 1, 73, NULL, NULL, NULL, 14),
  -- Victini - Final Gambit - Level 81
  (494, 49400, 515, 13, NULL, 1, 81, NULL, NULL, NULL, 15),
  -- Victini - Stored Power - Level 89
  (494, 49400, 500, 13, NULL, 1, 89, NULL, NULL, NULL, 16),
  -- Victini - Overheat - Level 97
  (494, 49400, 315, 13, NULL, 1, 97, NULL, NULL, NULL, 17),
  -- Victini - Psyshock - TM03
  (494, 49400, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 18),
  -- Victini - Toxic - TM06
  (494, 49400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Victini - Hidden Power - TM10
  (494, 49400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Victini - Sunny Day - TM11
  (494, 49400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Victini - Taunt - TM12
  (494, 49400, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 22),
  -- Victini - Hyper Beam - TM15
  (494, 49400, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 23),
  -- Victini - Light Screen - TM16
  (494, 49400, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 24),
  -- Victini - Protect - TM17
  (494, 49400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Victini - Safeguard - TM20
  (494, 49400, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 26),
  -- Victini - Frustration - TM21
  (494, 49400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 27),
  -- Victini - Solar Beam - TM22
  (494, 49400, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 28),
  -- Victini - Thunderbolt - TM24
  (494, 49400, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 29),
  -- Victini - Thunder - TM25
  (494, 49400, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 30),
  -- Victini - Return - TM27
  (494, 49400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 31),
  -- Victini - Psychic - TM29
  (494, 49400, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 32),
  -- Victini - Shadow Ball - TM30
  (494, 49400, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 33),
  -- Victini - Brick Break - TM31
  (494, 49400, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 34),
  -- Victini - Double Team - TM32
  (494, 49400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 35),
  -- Victini - Flamethrower - TM35
  (494, 49400, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 36),
  -- Victini - Fire Blast - TM38
  (494, 49400, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 37),
  -- Victini - Facade - TM42
  (494, 49400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 38),
  -- Victini - Flame Charge - TM43
  (494, 49400, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 39),
  -- Victini - Rest - TM44
  (494, 49400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 40),
  -- Victini - Round - TM48
  (494, 49400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 41),
  -- Victini - Overheat - TM50
  (494, 49400, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 42),
  -- Victini - Focus Blast - TM52
  (494, 49400, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 43),
  -- Victini - Energy Ball - TM53
  (494, 49400, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 44),
  -- Victini - Fling - TM56
  (494, 49400, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 45),
  -- Victini - Charge Beam - TM57
  (494, 49400, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 46),
  -- Victini - Incinerate - TM59
  (494, 49400, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 47),
  -- Victini - Will-O-Wisp - TM61
  (494, 49400, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 48),
  -- Victini - Embargo - TM63
  (494, 49400, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 49),
  -- Victini - Giga Impact - TM68
  (494, 49400, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 50),
  -- Victini - Flash - TM70
  (494, 49400, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 51),
  -- Victini - Thunder Wave - TM73
  (494, 49400, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 52),
  -- Victini - Psych Up - TM77
  (494, 49400, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 53),
  -- Victini - Grass Knot - TM86
  (494, 49400, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 54),
  -- Victini - Swagger - TM87
  (494, 49400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 55),
  -- Victini - Sleep Talk - TM88
  (494, 49400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 56),
  -- Victini - U-turn - TM89
  (494, 49400, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 57),
  -- Victini - Substitute - TM90
  (494, 49400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 58),
  -- Victini - Trick Room - TM92
  (494, 49400, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 59),
  -- Victini - Wild Charge - TM93
  (494, 49400, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 60),
  -- Victini - Rock Smash - TM94
  (494, 49400, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 61),
  -- Victini - Power-Up Punch - TM98
  (494, 49400, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 62),
  -- Victini - Dazzling Gleam - TM99
  (494, 49400, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 63),
  -- Victini - Confide - TM100
  (494, 49400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 64),
  -- Snivy - Tackle - Level 1
  (495, 49500, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snivy - Leer - Level 4
  (495, 49500, 43, 13, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Snivy - Vine Whip - Level 7
  (495, 49500, 22, 13, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Snivy - Wrap - Level 10
  (495, 49500, 35, 13, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Snivy - Growth - Level 13
  (495, 49500, 74, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Snivy - Leaf Tornado - Level 16
  (495, 49500, 536, 13, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Snivy - Leech Seed - Level 19
  (495, 49500, 73, 13, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Snivy - Mega Drain - Level 22
  (495, 49500, 72, 13, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Snivy - Slam - Level 25
  (495, 49500, 21, 13, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Snivy - Leaf Blade - Level 28
  (495, 49500, 348, 13, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Snivy - Coil - Level 31
  (495, 49500, 489, 13, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Snivy - Giga Drain - Level 34
  (495, 49500, 202, 13, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Snivy - Wring Out - Level 37
  (495, 49500, 378, 13, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Snivy - Gastro Acid - Level 40
  (495, 49500, 380, 13, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Snivy - Leaf Storm - Level 43
  (495, 49500, 437, 13, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Snivy - Calm Mind - TM04
  (495, 49500, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 16),
  -- Snivy - Toxic - TM06
  (495, 49500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Snivy - Hidden Power - TM10
  (495, 49500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Snivy - Sunny Day - TM11
  (495, 49500, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 19),
  -- Snivy - Taunt - TM12
  (495, 49500, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 20),
  -- Snivy - Light Screen - TM16
  (495, 49500, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 21),
  -- Snivy - Protect - TM17
  (495, 49500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Snivy - Safeguard - TM20
  (495, 49500, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 23),
  -- Snivy - Frustration - TM21
  (495, 49500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 24),
  -- Snivy - Solar Beam - TM22
  (495, 49500, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 25),
  -- Snivy - Return - TM27
  (495, 49500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 26),
  -- Snivy - Double Team - TM32
  (495, 49500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 27),
  -- Snivy - Reflect - TM33
  (495, 49500, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 28),
  -- Snivy - Aerial Ace - TM40
  (495, 49500, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 29),
  -- Snivy - Torment - TM41
  (495, 49500, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 30),
  -- Snivy - Facade - TM42
  (495, 49500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 31),
  -- Snivy - Rest - TM44
  (495, 49500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 32),
  -- Snivy - Attract - TM45
  (495, 49500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 33),
  -- Snivy - Round - TM48
  (495, 49500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 34),
  -- Snivy - Energy Ball - TM53
  (495, 49500, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 35),
  -- Snivy - Flash - TM70
  (495, 49500, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 36),
  -- Snivy - Swords Dance - TM75
  (495, 49500, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 37),
  -- Snivy - Grass Knot - TM86
  (495, 49500, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 38),
  -- Snivy - Swagger - TM87
  (495, 49500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 39),
  -- Snivy - Sleep Talk - TM88
  (495, 49500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 40),
  -- Snivy - Substitute - TM90
  (495, 49500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 41),
  -- Snivy - Nature Power - TM96
  (495, 49500, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 42),
  -- Snivy - Confide - TM100
  (495, 49500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 43),
  -- Snivy - Cut - HM01
  (495, 49500, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 44),
  -- Snivy - Glare - Egg
  (495, 49500, 137, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Snivy - Mean Look - Egg
  (495, 49500, 212, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Snivy - Pursuit - Egg
  (495, 49500, 228, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Snivy - Sweet Scent - Egg
  (495, 49500, 230, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Snivy - Iron Tail - Egg
  (495, 49500, 231, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Snivy - Twister - Egg
  (495, 49500, 239, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Snivy - Mirror Coat - Egg
  (495, 49500, 243, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Snivy - Magical Leaf - Egg
  (495, 49500, 345, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Snivy - Natural Gift - Egg
  (495, 49500, 363, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Snivy - Captivate - Egg
  (495, 49500, 445, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Snivy - Grassy Terrain - Egg
  (495, 49500, 580, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Snivy - Grass Pledge - Tutor
  (495, 49500, 520, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 56),
  -- Servine - Vine Whip - Level 1
  (496, 49600, 22, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Servine - Tackle - Level 1
  (496, 49600, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Servine - Wrap - Level 1
  (496, 49600, 35, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Servine - Leer - Level 1
  (496, 49600, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Servine - Leer - Level 4
  (496, 49600, 43, 13, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Servine - Vine Whip - Level 7
  (496, 49600, 22, 13, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Servine - Wrap - Level 10
  (496, 49600, 35, 13, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Servine - Growth - Level 13
  (496, 49600, 74, 13, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Servine - Leaf Tornado - Level 16
  (496, 49600, 536, 13, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Servine - Leech Seed - Level 20
  (496, 49600, 73, 13, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Servine - Mega Drain - Level 24
  (496, 49600, 72, 13, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Servine - Slam - Level 28
  (496, 49600, 21, 13, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Servine - Leaf Blade - Level 32
  (496, 49600, 348, 13, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Servine - Coil - Level 36
  (496, 49600, 489, 13, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Servine - Giga Drain - Level 40
  (496, 49600, 202, 13, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Servine - Wring Out - Level 44
  (496, 49600, 378, 13, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Servine - Gastro Acid - Level 48
  (496, 49600, 380, 13, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Servine - Leaf Storm - Level 52
  (496, 49600, 437, 13, NULL, 1, 52, NULL, NULL, NULL, 18),
  -- Servine - Calm Mind - TM04
  (496, 49600, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 19),
  -- Servine - Toxic - TM06
  (496, 49600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 20),
  -- Servine - Hidden Power - TM10
  (496, 49600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Servine - Sunny Day - TM11
  (496, 49600, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 22),
  -- Servine - Taunt - TM12
  (496, 49600, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 23),
  -- Servine - Light Screen - TM16
  (496, 49600, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 24),
  -- Servine - Protect - TM17
  (496, 49600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Servine - Safeguard - TM20
  (496, 49600, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 26),
  -- Servine - Frustration - TM21
  (496, 49600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 27),
  -- Servine - Solar Beam - TM22
  (496, 49600, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 28),
  -- Servine - Return - TM27
  (496, 49600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 29),
  -- Servine - Double Team - TM32
  (496, 49600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 30),
  -- Servine - Reflect - TM33
  (496, 49600, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 31),
  -- Servine - Aerial Ace - TM40
  (496, 49600, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 32),
  -- Servine - Torment - TM41
  (496, 49600, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 33),
  -- Servine - Facade - TM42
  (496, 49600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 34),
  -- Servine - Rest - TM44
  (496, 49600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 35),
  -- Servine - Attract - TM45
  (496, 49600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 36),
  -- Servine - Round - TM48
  (496, 49600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 37),
  -- Servine - Energy Ball - TM53
  (496, 49600, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 38),
  -- Servine - Flash - TM70
  (496, 49600, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 39),
  -- Servine - Swords Dance - TM75
  (496, 49600, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 40),
  -- Servine - Grass Knot - TM86
  (496, 49600, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 41),
  -- Servine - Swagger - TM87
  (496, 49600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 42),
  -- Servine - Sleep Talk - TM88
  (496, 49600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 43),
  -- Servine - Substitute - TM90
  (496, 49600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 44),
  -- Servine - Nature Power - TM96
  (496, 49600, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 45),
  -- Servine - Confide - TM100
  (496, 49600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 46),
  -- Servine - Cut - HM01
  (496, 49600, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 47),
  -- Servine - Grass Pledge - Tutor
  (496, 49600, 520, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 48),
  -- Serperior - Vine Whip - Level 1
  (497, 49700, 22, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Serperior - Tackle - Level 1
  (497, 49700, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Serperior - Wrap - Level 1
  (497, 49700, 35, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Serperior - Leer - Level 1
  (497, 49700, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Serperior - Leer - Level 4
  (497, 49700, 43, 13, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Serperior - Vine Whip - Level 7
  (497, 49700, 22, 13, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Serperior - Wrap - Level 10
  (497, 49700, 35, 13, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Serperior - Growth - Level 13
  (497, 49700, 74, 13, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Serperior - Leaf Tornado - Level 16
  (497, 49700, 536, 13, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Serperior - Leech Seed - Level 20
  (497, 49700, 73, 13, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Serperior - Mega Drain - Level 24
  (497, 49700, 72, 13, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Serperior - Slam - Level 28
  (497, 49700, 21, 13, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Serperior - Leaf Blade - Level 32
  (497, 49700, 348, 13, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Serperior - Coil - Level 38
  (497, 49700, 489, 13, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Serperior - Giga Drain - Level 44
  (497, 49700, 202, 13, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Serperior - Wring Out - Level 50
  (497, 49700, 378, 13, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Serperior - Gastro Acid - Level 56
  (497, 49700, 380, 13, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Serperior - Leaf Storm - Level 62
  (497, 49700, 437, 13, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Serperior - Calm Mind - TM04
  (497, 49700, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 19),
  -- Serperior - Toxic - TM06
  (497, 49700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 20),
  -- Serperior - Hidden Power - TM10
  (497, 49700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Serperior - Sunny Day - TM11
  (497, 49700, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 22),
  -- Serperior - Taunt - TM12
  (497, 49700, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 23),
  -- Serperior - Hyper Beam - TM15
  (497, 49700, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 24),
  -- Serperior - Light Screen - TM16
  (497, 49700, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 25),
  -- Serperior - Protect - TM17
  (497, 49700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 26),
  -- Serperior - Safeguard - TM20
  (497, 49700, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 27),
  -- Serperior - Frustration - TM21
  (497, 49700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Serperior - Solar Beam - TM22
  (497, 49700, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 29),
  -- Serperior - Return - TM27
  (497, 49700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 30),
  -- Serperior - Double Team - TM32
  (497, 49700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 31),
  -- Serperior - Reflect - TM33
  (497, 49700, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 32),
  -- Serperior - Aerial Ace - TM40
  (497, 49700, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 33),
  -- Serperior - Torment - TM41
  (497, 49700, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 34),
  -- Serperior - Facade - TM42
  (497, 49700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 35),
  -- Serperior - Rest - TM44
  (497, 49700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 36),
  -- Serperior - Attract - TM45
  (497, 49700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 37),
  -- Serperior - Round - TM48
  (497, 49700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 38),
  -- Serperior - Energy Ball - TM53
  (497, 49700, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 39),
  -- Serperior - Giga Impact - TM68
  (497, 49700, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 40),
  -- Serperior - Flash - TM70
  (497, 49700, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 41),
  -- Serperior - Swords Dance - TM75
  (497, 49700, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 42),
  -- Serperior - Dragon Tail - TM82
  (497, 49700, 525, 13, NULL, 2, NULL, NULL, 13002082, NULL, 43),
  -- Serperior - Grass Knot - TM86
  (497, 49700, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 44),
  -- Serperior - Swagger - TM87
  (497, 49700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 45),
  -- Serperior - Sleep Talk - TM88
  (497, 49700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 46),
  -- Serperior - Substitute - TM90
  (497, 49700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 47),
  -- Serperior - Rock Smash - TM94
  (497, 49700, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 48),
  -- Serperior - Nature Power - TM96
  (497, 49700, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 49),
  -- Serperior - Confide - TM100
  (497, 49700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 50),
  -- Serperior - Cut - HM01
  (497, 49700, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 51),
  -- Serperior - Strength - HM04
  (497, 49700, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 52),
  -- Serperior - Frenzy Plant - Tutor
  (497, 49700, 338, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 53),
  -- Serperior - Grass Pledge - Tutor
  (497, 49700, 520, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 54),
  -- Tepig - Tackle - Level 1
  (498, 49800, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tepig - Tail Whip - Level 3
  (498, 49800, 39, 13, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Tepig - Ember - Level 7
  (498, 49800, 52, 13, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Tepig - Odor Sleuth - Level 9
  (498, 49800, 316, 13, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Tepig - Defense Curl - Level 13
  (498, 49800, 111, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Tepig - Flame Charge - Level 15
  (498, 49800, 488, 13, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Tepig - Smog - Level 19
  (498, 49800, 123, 13, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Tepig - Rollout - Level 21
  (498, 49800, 205, 13, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Tepig - Take Down - Level 25
  (498, 49800, 36, 13, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Tepig - Heat Crash - Level 27
  (498, 49800, 535, 13, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Tepig - Assurance - Level 31
  (498, 49800, 372, 13, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Tepig - Flamethrower - Level 33
  (498, 49800, 53, 13, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Tepig - Head Smash - Level 37
  (498, 49800, 457, 13, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Tepig - Roar - Level 39
  (498, 49800, 46, 13, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Tepig - Flare Blitz - Level 43
  (498, 49800, 394, 13, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Tepig - Roar - TM05
  (498, 49800, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 16),
  -- Tepig - Toxic - TM06
  (498, 49800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Tepig - Hidden Power - TM10
  (498, 49800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Tepig - Sunny Day - TM11
  (498, 49800, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 19),
  -- Tepig - Taunt - TM12
  (498, 49800, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 20),
  -- Tepig - Protect - TM17
  (498, 49800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 21),
  -- Tepig - Frustration - TM21
  (498, 49800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Tepig - Solar Beam - TM22
  (498, 49800, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 23),
  -- Tepig - Return - TM27
  (498, 49800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 24),
  -- Tepig - Double Team - TM32
  (498, 49800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 25),
  -- Tepig - Flamethrower - TM35
  (498, 49800, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 26),
  -- Tepig - Fire Blast - TM38
  (498, 49800, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 27),
  -- Tepig - Rock Tomb - TM39
  (498, 49800, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 28),
  -- Tepig - Facade - TM42
  (498, 49800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 29),
  -- Tepig - Flame Charge - TM43
  (498, 49800, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 30),
  -- Tepig - Rest - TM44
  (498, 49800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 31),
  -- Tepig - Attract - TM45
  (498, 49800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 32),
  -- Tepig - Round - TM48
  (498, 49800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 33),
  -- Tepig - Echoed Voice - TM49
  (498, 49800, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 34),
  -- Tepig - Overheat - TM50
  (498, 49800, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 35),
  -- Tepig - Incinerate - TM59
  (498, 49800, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 36),
  -- Tepig - Will-O-Wisp - TM61
  (498, 49800, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 37),
  -- Tepig - Gyro Ball - TM74
  (498, 49800, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 38),
  -- Tepig - Grass Knot - TM86
  (498, 49800, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 39),
  -- Tepig - Swagger - TM87
  (498, 49800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 40),
  -- Tepig - Sleep Talk - TM88
  (498, 49800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 41),
  -- Tepig - Substitute - TM90
  (498, 49800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 42),
  -- Tepig - Wild Charge - TM93
  (498, 49800, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 43),
  -- Tepig - Rock Smash - TM94
  (498, 49800, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 44),
  -- Tepig - Confide - TM100
  (498, 49800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 45),
  -- Tepig - Strength - HM04
  (498, 49800, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 46),
  -- Tepig - Body Slam - Egg
  (498, 49800, 34, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Tepig - Thrash - Egg
  (498, 49800, 37, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Tepig - Curse - Egg
  (498, 49800, 174, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Tepig - Sleep Talk - Egg
  (498, 49800, 214, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Tepig - Magnitude - Egg
  (498, 49800, 222, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Tepig - Superpower - Egg
  (498, 49800, 276, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Tepig - Yawn - Egg
  (498, 49800, 281, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Tepig - Endeavor - Egg
  (498, 49800, 283, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Tepig - Covet - Egg
  (498, 49800, 343, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Tepig - Sucker Punch - Egg
  (498, 49800, 389, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Tepig - Heavy Slam - Egg
  (498, 49800, 484, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Tepig - Fire Pledge - Tutor
  (498, 49800, 519, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 58),
  -- Pignite - Tackle - Level 1
  (499, 49900, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pignite - Tail Whip - Level 1
  (499, 49900, 39, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pignite - Ember - Level 1
  (499, 49900, 52, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pignite - Odor Sleuth - Level 1
  (499, 49900, 316, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pignite - Tail Whip - Level 3
  (499, 49900, 39, 13, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Pignite - Ember - Level 7
  (499, 49900, 52, 13, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Pignite - Odor Sleuth - Level 9
  (499, 49900, 316, 13, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Pignite - Defense Curl - Level 13
  (499, 49900, 111, 13, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Pignite - Flame Charge - Level 15
  (499, 49900, 488, 13, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Pignite - Arm Thrust - Level 17
  (499, 49900, 292, 13, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Pignite - Smog - Level 20
  (499, 49900, 123, 13, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Pignite - Rollout - Level 23
  (499, 49900, 205, 13, NULL, 1, 23, NULL, NULL, NULL, 12),
  -- Pignite - Take Down - Level 28
  (499, 49900, 36, 13, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Pignite - Heat Crash - Level 31
  (499, 49900, 535, 13, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Pignite - Assurance - Level 36
  (499, 49900, 372, 13, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Pignite - Flamethrower - Level 39
  (499, 49900, 53, 13, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Pignite - Head Smash - Level 44
  (499, 49900, 457, 13, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Pignite - Roar - Level 47
  (499, 49900, 46, 13, NULL, 1, 47, NULL, NULL, NULL, 18),
  -- Pignite - Flare Blitz - Level 52
  (499, 49900, 394, 13, NULL, 1, 52, NULL, NULL, NULL, 19),
  -- Pignite - Roar - TM05
  (499, 49900, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 20),
  -- Pignite - Toxic - TM06
  (499, 49900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Pignite - Hidden Power - TM10
  (499, 49900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 22),
  -- Pignite - Sunny Day - TM11
  (499, 49900, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 23),
  -- Pignite - Taunt - TM12
  (499, 49900, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 24),
  -- Pignite - Protect - TM17
  (499, 49900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Pignite - Frustration - TM21
  (499, 49900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Pignite - Solar Beam - TM22
  (499, 49900, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 27),
  -- Pignite - Return - TM27
  (499, 49900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 28),
  -- Pignite - Brick Break - TM31
  (499, 49900, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 29),
  -- Pignite - Double Team - TM32
  (499, 49900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 30),
  -- Pignite - Flamethrower - TM35
  (499, 49900, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 31),
  -- Pignite - Fire Blast - TM38
  (499, 49900, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 32),
  -- Pignite - Rock Tomb - TM39
  (499, 49900, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 33),
  -- Pignite - Facade - TM42
  (499, 49900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 34),
  -- Pignite - Flame Charge - TM43
  (499, 49900, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 35),
  -- Pignite - Rest - TM44
  (499, 49900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 36),
  -- Pignite - Attract - TM45
  (499, 49900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 37),
  -- Pignite - Low Sweep - TM47
  (499, 49900, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 38),
  -- Pignite - Round - TM48
  (499, 49900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 39),
  -- Pignite - Echoed Voice - TM49
  (499, 49900, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 40),
  -- Pignite - Overheat - TM50
  (499, 49900, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 41),
  -- Pignite - Focus Blast - TM52
  (499, 49900, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 42),
  -- Pignite - Fling - TM56
  (499, 49900, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 43),
  -- Pignite - Incinerate - TM59
  (499, 49900, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 44),
  -- Pignite - Will-O-Wisp - TM61
  (499, 49900, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 45),
  -- Pignite - Stone Edge - TM71
  (499, 49900, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 46),
  -- Pignite - Gyro Ball - TM74
  (499, 49900, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 47),
  -- Pignite - Bulldoze - TM78
  (499, 49900, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 48),
  -- Pignite - Rock Slide - TM80
  (499, 49900, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 49),
  -- Pignite - Poison Jab - TM84
  (499, 49900, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 50),
  -- Pignite - Grass Knot - TM86
  (499, 49900, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 51),
  -- Pignite - Swagger - TM87
  (499, 49900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 52),
  -- Pignite - Sleep Talk - TM88
  (499, 49900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 53),
  -- Pignite - Substitute - TM90
  (499, 49900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 54),
  -- Pignite - Wild Charge - TM93
  (499, 49900, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 55),
  -- Pignite - Rock Smash - TM94
  (499, 49900, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 56),
  -- Pignite - Power-Up Punch - TM98
  (499, 49900, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 57),
  -- Pignite - Confide - TM100
  (499, 49900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 58),
  -- Pignite - Strength - HM04
  (499, 49900, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 59),
  -- Pignite - Fire Pledge - Tutor
  (499, 49900, 519, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 60),
  -- Emboar - Tackle - Level 1
  (500, 50000, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Emboar - Tail Whip - Level 1
  (500, 50000, 39, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Emboar - Ember - Level 1
  (500, 50000, 52, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Emboar - Odor Sleuth - Level 1
  (500, 50000, 316, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Emboar - Hammer Arm - Level 1
  (500, 50000, 359, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Emboar - Tail Whip - Level 3
  (500, 50000, 39, 13, NULL, 1, 3, NULL, NULL, NULL, 6),
  -- Emboar - Ember - Level 7
  (500, 50000, 52, 13, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Emboar - Odor Sleuth - Level 9
  (500, 50000, 316, 13, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Emboar - Defense Curl - Level 13
  (500, 50000, 111, 13, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Emboar - Flame Charge - Level 15
  (500, 50000, 488, 13, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Emboar - Arm Thrust - Level 17
  (500, 50000, 292, 13, NULL, 1, 17, NULL, NULL, NULL, 11),
  -- Emboar - Smog - Level 20
  (500, 50000, 123, 13, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Emboar - Rollout - Level 23
  (500, 50000, 205, 13, NULL, 1, 23, NULL, NULL, NULL, 13),
  -- Emboar - Take Down - Level 28
  (500, 50000, 36, 13, NULL, 1, 28, NULL, NULL, NULL, 14),
  -- Emboar - Heat Crash - Level 31
  (500, 50000, 535, 13, NULL, 1, 31, NULL, NULL, NULL, 15),
  -- Emboar - Assurance - Level 38
  (500, 50000, 372, 13, NULL, 1, 38, NULL, NULL, NULL, 16),
  -- Emboar - Flamethrower - Level 43
  (500, 50000, 53, 13, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Emboar - Head Smash - Level 50
  (500, 50000, 457, 13, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Emboar - Roar - Level 55
  (500, 50000, 46, 13, NULL, 1, 55, NULL, NULL, NULL, 19),
  -- Emboar - Flare Blitz - Level 62
  (500, 50000, 394, 13, NULL, 1, 62, NULL, NULL, NULL, 20),
  -- Emboar - Roar - TM05
  (500, 50000, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 21),
  -- Emboar - Toxic - TM06
  (500, 50000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 22),
  -- Emboar - Bulk Up - TM08
  (500, 50000, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 23),
  -- Emboar - Hidden Power - TM10
  (500, 50000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 24),
  -- Emboar - Sunny Day - TM11
  (500, 50000, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 25),
  -- Emboar - Taunt - TM12
  (500, 50000, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 26),
  -- Emboar - Hyper Beam - TM15
  (500, 50000, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 27),
  -- Emboar - Protect - TM17
  (500, 50000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 28),
  -- Emboar - Frustration - TM21
  (500, 50000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 29),
  -- Emboar - Solar Beam - TM22
  (500, 50000, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 30),
  -- Emboar - Smack Down - TM23
  (500, 50000, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 31),
  -- Emboar - Earthquake - TM26
  (500, 50000, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 32),
  -- Emboar - Return - TM27
  (500, 50000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 33),
  -- Emboar - Brick Break - TM31
  (500, 50000, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 34),
  -- Emboar - Double Team - TM32
  (500, 50000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 35),
  -- Emboar - Flamethrower - TM35
  (500, 50000, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 36),
  -- Emboar - Fire Blast - TM38
  (500, 50000, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 37),
  -- Emboar - Rock Tomb - TM39
  (500, 50000, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 38),
  -- Emboar - Facade - TM42
  (500, 50000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 39),
  -- Emboar - Flame Charge - TM43
  (500, 50000, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 40),
  -- Emboar - Rest - TM44
  (500, 50000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 41),
  -- Emboar - Attract - TM45
  (500, 50000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 42),
  -- Emboar - Low Sweep - TM47
  (500, 50000, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 43),
  -- Emboar - Round - TM48
  (500, 50000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 44),
  -- Emboar - Echoed Voice - TM49
  (500, 50000, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 45),
  -- Emboar - Overheat - TM50
  (500, 50000, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 46),
  -- Emboar - Focus Blast - TM52
  (500, 50000, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 47),
  -- Emboar - Scald - TM55
  (500, 50000, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 48),
  -- Emboar - Fling - TM56
  (500, 50000, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 49),
  -- Emboar - Incinerate - TM59
  (500, 50000, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 50),
  -- Emboar - Will-O-Wisp - TM61
  (500, 50000, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 51),
  -- Emboar - Giga Impact - TM68
  (500, 50000, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 52),
  -- Emboar - Stone Edge - TM71
  (500, 50000, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 53),
  -- Emboar - Gyro Ball - TM74
  (500, 50000, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 54),
  -- Emboar - Bulldoze - TM78
  (500, 50000, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 55),
  -- Emboar - Rock Slide - TM80
  (500, 50000, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 56),
  -- Emboar - Poison Jab - TM84
  (500, 50000, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 57),
  -- Emboar - Grass Knot - TM86
  (500, 50000, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 58),
  -- Emboar - Swagger - TM87
  (500, 50000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 59),
  -- Emboar - Sleep Talk - TM88
  (500, 50000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 60),
  -- Emboar - Substitute - TM90
  (500, 50000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 61),
  -- Emboar - Wild Charge - TM93
  (500, 50000, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 62),
  -- Emboar - Rock Smash - TM94
  (500, 50000, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 63),
  -- Emboar - Power-Up Punch - TM98
  (500, 50000, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 64),
  -- Emboar - Confide - TM100
  (500, 50000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 65),
  -- Emboar - Strength - HM04
  (500, 50000, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 66),
  -- Emboar - Blast Burn - Tutor
  (500, 50000, 307, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 67),
  -- Emboar - Fire Pledge - Tutor
  (500, 50000, 519, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 68),
  -- Oshawott - Tackle - Level 1
  (501, 50100, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Oshawott - Tail Whip - Level 5
  (501, 50100, 39, 13, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Oshawott - Water Gun - Level 7
  (501, 50100, 55, 13, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Oshawott - Water Sport - Level 11
  (501, 50100, 346, 13, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Oshawott - Focus Energy - Level 13
  (501, 50100, 116, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Oshawott - Razor Shell - Level 17
  (501, 50100, 534, 13, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Oshawott - Fury Cutter - Level 19
  (501, 50100, 210, 13, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Oshawott - Water Pulse - Level 23
  (501, 50100, 352, 13, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Oshawott - Revenge - Level 25
  (501, 50100, 279, 13, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Oshawott - Aqua Jet - Level 29
  (501, 50100, 453, 13, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Oshawott - Encore - Level 31
  (501, 50100, 227, 13, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Oshawott - Aqua Tail - Level 35
  (501, 50100, 401, 13, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Oshawott - Retaliate - Level 37
  (501, 50100, 514, 13, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Oshawott - Swords Dance - Level 41
  (501, 50100, 14, 13, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Oshawott - Hydro Pump - Level 43
  (501, 50100, 56, 13, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Oshawott - Toxic - TM06
  (501, 50100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Oshawott - Hail - TM07
  (501, 50100, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 17),
  -- Oshawott - Hidden Power - TM10
  (501, 50100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Oshawott - Taunt - TM12
  (501, 50100, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 19),
  -- Oshawott - Ice Beam - TM13
  (501, 50100, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 20),
  -- Oshawott - Blizzard - TM14
  (501, 50100, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 21),
  -- Oshawott - Protect - TM17
  (501, 50100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Oshawott - Rain Dance - TM18
  (501, 50100, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 23),
  -- Oshawott - Frustration - TM21
  (501, 50100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 24),
  -- Oshawott - Return - TM27
  (501, 50100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 25),
  -- Oshawott - Dig - TM28
  (501, 50100, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 26),
  -- Oshawott - Double Team - TM32
  (501, 50100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 27),
  -- Oshawott - Aerial Ace - TM40
  (501, 50100, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 28),
  -- Oshawott - Facade - TM42
  (501, 50100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 29),
  -- Oshawott - Rest - TM44
  (501, 50100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 30),
  -- Oshawott - Attract - TM45
  (501, 50100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 31),
  -- Oshawott - Round - TM48
  (501, 50100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 32),
  -- Oshawott - False Swipe - TM54
  (501, 50100, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 33),
  -- Oshawott - Scald - TM55
  (501, 50100, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 34),
  -- Oshawott - Fling - TM56
  (501, 50100, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 35),
  -- Oshawott - Retaliate - TM67
  (501, 50100, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 36),
  -- Oshawott - Swords Dance - TM75
  (501, 50100, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 37),
  -- Oshawott - X-Scissor - TM81
  (501, 50100, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 38),
  -- Oshawott - Grass Knot - TM86
  (501, 50100, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 39),
  -- Oshawott - Swagger - TM87
  (501, 50100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 40),
  -- Oshawott - Sleep Talk - TM88
  (501, 50100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 41),
  -- Oshawott - Substitute - TM90
  (501, 50100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 42),
  -- Oshawott - Rock Smash - TM94
  (501, 50100, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 43),
  -- Oshawott - Confide - TM100
  (501, 50100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 44),
  -- Oshawott - Cut - HM01
  (501, 50100, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 45),
  -- Oshawott - Surf - HM03
  (501, 50100, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 46),
  -- Oshawott - Waterfall - HM05
  (501, 50100, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 47),
  -- Oshawott - Screech - Egg
  (501, 50100, 103, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Oshawott - Detect - Egg
  (501, 50100, 197, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Oshawott - Brine - Egg
  (501, 50100, 362, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Oshawott - Assurance - Egg
  (501, 50100, 372, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Oshawott - Trump Card - Egg
  (501, 50100, 376, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Oshawott - Copycat - Egg
  (501, 50100, 383, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Oshawott - Night Slash - Egg
  (501, 50100, 400, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Oshawott - Air Slash - Egg
  (501, 50100, 403, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Oshawott - Water Pledge - Tutor
  (501, 50100, 518, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 56),
  -- Dewott - Tackle - Level 1
  (502, 50200, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dewott - Tail Whip - Level 1
  (502, 50200, 39, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dewott - Water Gun - Level 1
  (502, 50200, 55, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dewott - Water Sport - Level 1
  (502, 50200, 346, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dewott - Tail Whip - Level 5
  (502, 50200, 39, 13, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Dewott - Water Gun - Level 7
  (502, 50200, 55, 13, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Dewott - Water Sport - Level 11
  (502, 50200, 346, 13, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Dewott - Focus Energy - Level 13
  (502, 50200, 116, 13, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Dewott - Razor Shell - Level 17
  (502, 50200, 534, 13, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Dewott - Fury Cutter - Level 20
  (502, 50200, 210, 13, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Dewott - Water Pulse - Level 25
  (502, 50200, 352, 13, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Dewott - Revenge - Level 28
  (502, 50200, 279, 13, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Dewott - Aqua Jet - Level 33
  (502, 50200, 453, 13, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Dewott - Encore - Level 36
  (502, 50200, 227, 13, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Dewott - Aqua Tail - Level 41
  (502, 50200, 401, 13, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Dewott - Retaliate - Level 44
  (502, 50200, 514, 13, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Dewott - Swords Dance - Level 49
  (502, 50200, 14, 13, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Dewott - Hydro Pump - Level 52
  (502, 50200, 56, 13, NULL, 1, 52, NULL, NULL, NULL, 18),
  -- Dewott - Toxic - TM06
  (502, 50200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Dewott - Hail - TM07
  (502, 50200, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 20),
  -- Dewott - Hidden Power - TM10
  (502, 50200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Dewott - Taunt - TM12
  (502, 50200, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 22),
  -- Dewott - Ice Beam - TM13
  (502, 50200, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 23),
  -- Dewott - Blizzard - TM14
  (502, 50200, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 24),
  -- Dewott - Protect - TM17
  (502, 50200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Dewott - Rain Dance - TM18
  (502, 50200, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 26),
  -- Dewott - Frustration - TM21
  (502, 50200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 27),
  -- Dewott - Return - TM27
  (502, 50200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 28),
  -- Dewott - Dig - TM28
  (502, 50200, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 29),
  -- Dewott - Double Team - TM32
  (502, 50200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 30),
  -- Dewott - Aerial Ace - TM40
  (502, 50200, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 31),
  -- Dewott - Facade - TM42
  (502, 50200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 32),
  -- Dewott - Rest - TM44
  (502, 50200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 33),
  -- Dewott - Attract - TM45
  (502, 50200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 34),
  -- Dewott - Round - TM48
  (502, 50200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 35),
  -- Dewott - False Swipe - TM54
  (502, 50200, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 36),
  -- Dewott - Scald - TM55
  (502, 50200, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 37),
  -- Dewott - Fling - TM56
  (502, 50200, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 38),
  -- Dewott - Retaliate - TM67
  (502, 50200, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 39),
  -- Dewott - Swords Dance - TM75
  (502, 50200, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 40),
  -- Dewott - X-Scissor - TM81
  (502, 50200, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 41),
  -- Dewott - Grass Knot - TM86
  (502, 50200, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 42),
  -- Dewott - Swagger - TM87
  (502, 50200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 43),
  -- Dewott - Sleep Talk - TM88
  (502, 50200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 44),
  -- Dewott - Substitute - TM90
  (502, 50200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 45),
  -- Dewott - Rock Smash - TM94
  (502, 50200, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 46),
  -- Dewott - Confide - TM100
  (502, 50200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 47),
  -- Dewott - Cut - HM01
  (502, 50200, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 48),
  -- Dewott - Surf - HM03
  (502, 50200, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 49),
  -- Dewott - Waterfall - HM05
  (502, 50200, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 50),
  -- Dewott - Water Pledge - Tutor
  (502, 50200, 518, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 51),
  -- Samurott - Tackle - Level 1
  (503, 50300, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Samurott - Tail Whip - Level 1
  (503, 50300, 39, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Samurott - Water Gun - Level 1
  (503, 50300, 55, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Samurott - Megahorn - Level 1
  (503, 50300, 224, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Samurott - Water Sport - Level 1
  (503, 50300, 346, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Samurott - Tail Whip - Level 5
  (503, 50300, 39, 13, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Samurott - Water Gun - Level 7
  (503, 50300, 55, 13, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Samurott - Water Sport - Level 11
  (503, 50300, 346, 13, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Samurott - Focus Energy - Level 13
  (503, 50300, 116, 13, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Samurott - Razor Shell - Level 17
  (503, 50300, 534, 13, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Samurott - Fury Cutter - Level 20
  (503, 50300, 210, 13, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Samurott - Water Pulse - Level 25
  (503, 50300, 352, 13, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Samurott - Revenge - Level 28
  (503, 50300, 279, 13, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Samurott - Aqua Jet - Level 33
  (503, 50300, 453, 13, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Samurott - Slash - Level 36
  (503, 50300, 163, 13, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Samurott - Encore - Level 38
  (503, 50300, 227, 13, NULL, 1, 38, NULL, NULL, NULL, 16),
  -- Samurott - Aqua Tail - Level 45
  (503, 50300, 401, 13, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Samurott - Retaliate - Level 50
  (503, 50300, 514, 13, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Samurott - Swords Dance - Level 57
  (503, 50300, 14, 13, NULL, 1, 57, NULL, NULL, NULL, 19),
  -- Samurott - Hydro Pump - Level 62
  (503, 50300, 56, 13, NULL, 1, 62, NULL, NULL, NULL, 20),
  -- Samurott - Toxic - TM06
  (503, 50300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Samurott - Hail - TM07
  (503, 50300, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 22),
  -- Samurott - Hidden Power - TM10
  (503, 50300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 23),
  -- Samurott - Taunt - TM12
  (503, 50300, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 24),
  -- Samurott - Ice Beam - TM13
  (503, 50300, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 25),
  -- Samurott - Blizzard - TM14
  (503, 50300, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 26),
  -- Samurott - Hyper Beam - TM15
  (503, 50300, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 27),
  -- Samurott - Protect - TM17
  (503, 50300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 28),
  -- Samurott - Rain Dance - TM18
  (503, 50300, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 29),
  -- Samurott - Frustration - TM21
  (503, 50300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 30),
  -- Samurott - Return - TM27
  (503, 50300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 31),
  -- Samurott - Dig - TM28
  (503, 50300, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 32),
  -- Samurott - Double Team - TM32
  (503, 50300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 33),
  -- Samurott - Aerial Ace - TM40
  (503, 50300, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 34),
  -- Samurott - Facade - TM42
  (503, 50300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 35),
  -- Samurott - Rest - TM44
  (503, 50300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 36),
  -- Samurott - Attract - TM45
  (503, 50300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 37),
  -- Samurott - Round - TM48
  (503, 50300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 38),
  -- Samurott - False Swipe - TM54
  (503, 50300, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 39),
  -- Samurott - Scald - TM55
  (503, 50300, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 40),
  -- Samurott - Fling - TM56
  (503, 50300, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 41),
  -- Samurott - Retaliate - TM67
  (503, 50300, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 42),
  -- Samurott - Giga Impact - TM68
  (503, 50300, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 43),
  -- Samurott - Swords Dance - TM75
  (503, 50300, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 44),
  -- Samurott - X-Scissor - TM81
  (503, 50300, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 45),
  -- Samurott - Dragon Tail - TM82
  (503, 50300, 525, 13, NULL, 2, NULL, NULL, 13002082, NULL, 46),
  -- Samurott - Grass Knot - TM86
  (503, 50300, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 47),
  -- Samurott - Swagger - TM87
  (503, 50300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 48),
  -- Samurott - Sleep Talk - TM88
  (503, 50300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 49),
  -- Samurott - Substitute - TM90
  (503, 50300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 50),
  -- Samurott - Rock Smash - TM94
  (503, 50300, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 51),
  -- Samurott - Confide - TM100
  (503, 50300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 52),
  -- Samurott - Cut - HM01
  (503, 50300, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 53),
  -- Samurott - Surf - HM03
  (503, 50300, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 54),
  -- Samurott - Strength - HM04
  (503, 50300, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 55),
  -- Samurott - Waterfall - HM05
  (503, 50300, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 56),
  -- Samurott - Hydro Cannon - Tutor
  (503, 50300, 308, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 57),
  -- Samurott - Water Pledge - Tutor
  (503, 50300, 518, 13, NULL, 6, NULL, NULL, NULL, 'X / Y Move Tutor.', 58),
  -- Patrat - Tackle - Level 1
  (504, 50400, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Patrat - Leer - Level 3
  (504, 50400, 43, 13, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Patrat - Bite - Level 6
  (504, 50400, 44, 13, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Patrat - Bide - Level 8
  (504, 50400, 117, 13, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Patrat - Detect - Level 11
  (504, 50400, 197, 13, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Patrat - Sand Attack - Level 13
  (504, 50400, 28, 13, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Patrat - Crunch - Level 16
  (504, 50400, 242, 13, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Patrat - Hypnosis - Level 18
  (504, 50400, 95, 13, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Patrat - Super Fang - Level 21
  (504, 50400, 162, 13, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Patrat - After You - Level 23
  (504, 50400, 495, 13, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Patrat - Work Up - Level 26
  (504, 50400, 526, 13, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Patrat - Hyper Fang - Level 28
  (504, 50400, 158, 13, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Patrat - Mean Look - Level 31
  (504, 50400, 212, 13, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Patrat - Baton Pass - Level 33
  (504, 50400, 226, 13, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Patrat - Slam - Level 36
  (504, 50400, 21, 13, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Patrat - Toxic - TM06
  (504, 50400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Patrat - Hidden Power - TM10
  (504, 50400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 17),
  -- Patrat - Sunny Day - TM11
  (504, 50400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 18),
  -- Patrat - Protect - TM17
  (504, 50400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 19),
  -- Patrat - Rain Dance - TM18
  (504, 50400, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 20),
  -- Patrat - Frustration - TM21
  (504, 50400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 21),
  -- Patrat - Thunderbolt - TM24
  (504, 50400, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 22),
  -- Patrat - Return - TM27
  (504, 50400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 23),
  -- Patrat - Dig - TM28
  (504, 50400, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 24),
  -- Patrat - Shadow Ball - TM30
  (504, 50400, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 25),
  -- Patrat - Double Team - TM32
  (504, 50400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 26),
  -- Patrat - Facade - TM42
  (504, 50400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 27),
  -- Patrat - Rest - TM44
  (504, 50400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 28),
  -- Patrat - Attract - TM45
  (504, 50400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 29),
  -- Patrat - Round - TM48
  (504, 50400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 30),
  -- Patrat - Fling - TM56
  (504, 50400, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 31),
  -- Patrat - Retaliate - TM67
  (504, 50400, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 32),
  -- Patrat - Swords Dance - TM75
  (504, 50400, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 33),
  -- Patrat - Grass Knot - TM86
  (504, 50400, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 34),
  -- Patrat - Swagger - TM87
  (504, 50400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 35),
  -- Patrat - Sleep Talk - TM88
  (504, 50400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 36),
  -- Patrat - Substitute - TM90
  (504, 50400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 37),
  -- Patrat - Confide - TM100
  (504, 50400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 38),
  -- Patrat - Cut - HM01
  (504, 50400, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 39),
  -- Patrat - Screech - Egg
  (504, 50400, 103, 13, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Patrat - Flail - Egg
  (504, 50400, 175, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Patrat - Foresight - Egg
  (504, 50400, 193, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Patrat - Pursuit - Egg
  (504, 50400, 228, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Patrat - Iron Tail - Egg
  (504, 50400, 231, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Patrat - Revenge - Egg
  (504, 50400, 279, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Patrat - Assurance - Egg
  (504, 50400, 372, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Watchog - Tackle - Level 1
  (505, 50500, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Watchog - Leer - Level 1
  (505, 50500, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Watchog - Bite - Level 1
  (505, 50500, 44, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Watchog - Low Kick - Level 1
  (505, 50500, 67, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Watchog - Rototiller - Level 1
  (505, 50500, 563, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Watchog - Leer - Level 3
  (505, 50500, 43, 13, NULL, 1, 3, NULL, NULL, NULL, 6),
  -- Watchog - Bite - Level 6
  (505, 50500, 44, 13, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Watchog - Bide - Level 8
  (505, 50500, 117, 13, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Watchog - Detect - Level 11
  (505, 50500, 197, 13, NULL, 1, 11, NULL, NULL, NULL, 9),
  -- Watchog - Sand Attack - Level 13
  (505, 50500, 28, 13, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Watchog - Crunch - Level 16
  (505, 50500, 242, 13, NULL, 1, 16, NULL, NULL, NULL, 11),
  -- Watchog - Hypnosis - Level 18
  (505, 50500, 95, 13, NULL, 1, 18, NULL, NULL, NULL, 12),
  -- Watchog - Confuse Ray - Level 20
  (505, 50500, 109, 13, NULL, 1, 20, NULL, NULL, NULL, 13),
  -- Watchog - Super Fang - Level 22
  (505, 50500, 162, 13, NULL, 1, 22, NULL, NULL, NULL, 14),
  -- Watchog - After You - Level 25
  (505, 50500, 495, 13, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Watchog - Psych Up - Level 29
  (505, 50500, 244, 13, NULL, 1, 29, NULL, NULL, NULL, 16),
  -- Watchog - Hyper Fang - Level 32
  (505, 50500, 158, 13, NULL, 1, 32, NULL, NULL, NULL, 17),
  -- Watchog - Mean Look - Level 36
  (505, 50500, 212, 13, NULL, 1, 36, NULL, NULL, NULL, 18),
  -- Watchog - Baton Pass - Level 39
  (505, 50500, 226, 13, NULL, 1, 39, NULL, NULL, NULL, 19),
  -- Watchog - Slam - Level 43
  (505, 50500, 21, 13, NULL, 1, 43, NULL, NULL, NULL, 20),
  -- Watchog - Toxic - TM06
  (505, 50500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Watchog - Hidden Power - TM10
  (505, 50500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 22),
  -- Watchog - Sunny Day - TM11
  (505, 50500, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 23),
  -- Watchog - Hyper Beam - TM15
  (505, 50500, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 24),
  -- Watchog - Light Screen - TM16
  (505, 50500, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 25),
  -- Watchog - Protect - TM17
  (505, 50500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 26),
  -- Watchog - Rain Dance - TM18
  (505, 50500, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 27),
  -- Watchog - Frustration - TM21
  (505, 50500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 28),
  -- Watchog - Thunderbolt - TM24
  (505, 50500, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 29),
  -- Watchog - Thunder - TM25
  (505, 50500, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 30),
  -- Watchog - Return - TM27
  (505, 50500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 31),
  -- Watchog - Dig - TM28
  (505, 50500, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 32),
  -- Watchog - Shadow Ball - TM30
  (505, 50500, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 33),
  -- Watchog - Double Team - TM32
  (505, 50500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 34),
  -- Watchog - Flamethrower - TM35
  (505, 50500, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 35),
  -- Watchog - Facade - TM42
  (505, 50500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 36),
  -- Watchog - Rest - TM44
  (505, 50500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 37),
  -- Watchog - Attract - TM45
  (505, 50500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 38),
  -- Watchog - Round - TM48
  (505, 50500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 39),
  -- Watchog - Focus Blast - TM52
  (505, 50500, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 40),
  -- Watchog - Fling - TM56
  (505, 50500, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 41),
  -- Watchog - Retaliate - TM67
  (505, 50500, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 42),
  -- Watchog - Giga Impact - TM68
  (505, 50500, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 43),
  -- Watchog - Flash - TM70
  (505, 50500, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 44),
  -- Watchog - Thunder Wave - TM73
  (505, 50500, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 45),
  -- Watchog - Swords Dance - TM75
  (505, 50500, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 46),
  -- Watchog - Psych Up - TM77
  (505, 50500, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 47),
  -- Watchog - Dream Eater - TM85
  (505, 50500, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 48),
  -- Watchog - Grass Knot - TM86
  (505, 50500, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 49),
  -- Watchog - Swagger - TM87
  (505, 50500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 50),
  -- Watchog - Sleep Talk - TM88
  (505, 50500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 51),
  -- Watchog - Substitute - TM90
  (505, 50500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 52),
  -- Watchog - Rock Smash - TM94
  (505, 50500, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 53),
  -- Watchog - Power-Up Punch - TM98
  (505, 50500, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 54),
  -- Watchog - Confide - TM100
  (505, 50500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 55),
  -- Watchog - Cut - HM01
  (505, 50500, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 56),
  -- Watchog - Strength - HM04
  (505, 50500, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 57),
  -- Lillipup - Tackle - Level 1
  (506, 50600, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lillipup - Leer - Level 1
  (506, 50600, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lillipup - Odor Sleuth - Level 5
  (506, 50600, 316, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Lillipup - Bite - Level 8
  (506, 50600, 44, 13, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Lillipup - Baby-Doll Eyes - Level 10
  (506, 50600, 608, 13, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Lillipup - Helping Hand - Level 12
  (506, 50600, 270, 13, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Lillipup - Take Down - Level 15
  (506, 50600, 36, 13, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Lillipup - Work Up - Level 19
  (506, 50600, 526, 13, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Lillipup - Crunch - Level 22
  (506, 50600, 242, 13, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Lillipup - Roar - Level 26
  (506, 50600, 46, 13, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Lillipup - Retaliate - Level 29
  (506, 50600, 514, 13, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Lillipup - Reversal - Level 33
  (506, 50600, 179, 13, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Lillipup - Last Resort - Level 36
  (506, 50600, 387, 13, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Lillipup - Giga Impact - Level 40
  (506, 50600, 416, 13, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Lillipup - Play Rough - Level 45
  (506, 50600, 583, 13, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Lillipup - Roar - TM05
  (506, 50600, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 16),
  -- Lillipup - Toxic - TM06
  (506, 50600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Lillipup - Hidden Power - TM10
  (506, 50600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Lillipup - Sunny Day - TM11
  (506, 50600, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 19),
  -- Lillipup - Protect - TM17
  (506, 50600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 20),
  -- Lillipup - Rain Dance - TM18
  (506, 50600, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 21),
  -- Lillipup - Frustration - TM21
  (506, 50600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Lillipup - Thunderbolt - TM24
  (506, 50600, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 23),
  -- Lillipup - Return - TM27
  (506, 50600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 24),
  -- Lillipup - Dig - TM28
  (506, 50600, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 25),
  -- Lillipup - Shadow Ball - TM30
  (506, 50600, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 26),
  -- Lillipup - Double Team - TM32
  (506, 50600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 27),
  -- Lillipup - Rock Tomb - TM39
  (506, 50600, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 28),
  -- Lillipup - Aerial Ace - TM40
  (506, 50600, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 29),
  -- Lillipup - Facade - TM42
  (506, 50600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 30),
  -- Lillipup - Rest - TM44
  (506, 50600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 31),
  -- Lillipup - Attract - TM45
  (506, 50600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 32),
  -- Lillipup - Round - TM48
  (506, 50600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 33),
  -- Lillipup - Retaliate - TM67
  (506, 50600, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 34),
  -- Lillipup - Giga Impact - TM68
  (506, 50600, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 35),
  -- Lillipup - Thunder Wave - TM73
  (506, 50600, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 36),
  -- Lillipup - Swagger - TM87
  (506, 50600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 37),
  -- Lillipup - Sleep Talk - TM88
  (506, 50600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 38),
  -- Lillipup - Substitute - TM90
  (506, 50600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 39),
  -- Lillipup - Wild Charge - TM93
  (506, 50600, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 40),
  -- Lillipup - Rock Smash - TM94
  (506, 50600, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 41),
  -- Lillipup - Snarl - TM95
  (506, 50600, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 42),
  -- Lillipup - Confide - TM100
  (506, 50600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 43),
  -- Lillipup - Sand Attack - Egg
  (506, 50600, 28, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Lillipup - Lick - Egg
  (506, 50600, 122, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Lillipup - Mud-Slap - Egg
  (506, 50600, 189, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Lillipup - Endure - Egg
  (506, 50600, 203, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Lillipup - Charm - Egg
  (506, 50600, 204, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Lillipup - Pursuit - Egg
  (506, 50600, 228, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Lillipup - Yawn - Egg
  (506, 50600, 281, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Lillipup - Howl - Egg
  (506, 50600, 336, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Lillipup - Thunder Fang - Egg
  (506, 50600, 422, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Lillipup - Ice Fang - Egg
  (506, 50600, 423, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Lillipup - Fire Fang - Egg
  (506, 50600, 424, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Lillipup - After You - Egg
  (506, 50600, 495, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Herdier - Tackle - Level 1
  (507, 50700, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Herdier - Leer - Level 1
  (507, 50700, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Herdier - Bite - Level 1
  (507, 50700, 44, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Herdier - Odor Sleuth - Level 1
  (507, 50700, 316, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Herdier - Odor Sleuth - Level 5
  (507, 50700, 316, 13, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Herdier - Bite - Level 8
  (507, 50700, 44, 13, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Herdier - Helping Hand - Level 12
  (507, 50700, 270, 13, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Herdier - Take Down - Level 15
  (507, 50700, 36, 13, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Herdier - Work Up - Level 20
  (507, 50700, 526, 13, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Herdier - Crunch - Level 24
  (507, 50700, 242, 13, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Herdier - Roar - Level 29
  (507, 50700, 46, 13, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Herdier - Retaliate - Level 33
  (507, 50700, 514, 13, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Herdier - Reversal - Level 38
  (507, 50700, 179, 13, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Herdier - Last Resort - Level 42
  (507, 50700, 387, 13, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Herdier - Giga Impact - Level 47
  (507, 50700, 416, 13, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Herdier - Play Rough - Level 52
  (507, 50700, 583, 13, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Herdier - Roar - TM05
  (507, 50700, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 17),
  -- Herdier - Toxic - TM06
  (507, 50700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Herdier - Hidden Power - TM10
  (507, 50700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Herdier - Sunny Day - TM11
  (507, 50700, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Herdier - Protect - TM17
  (507, 50700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 21),
  -- Herdier - Rain Dance - TM18
  (507, 50700, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 22),
  -- Herdier - Frustration - TM21
  (507, 50700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Herdier - Thunderbolt - TM24
  (507, 50700, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 24),
  -- Herdier - Return - TM27
  (507, 50700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 25),
  -- Herdier - Dig - TM28
  (507, 50700, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 26),
  -- Herdier - Shadow Ball - TM30
  (507, 50700, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 27),
  -- Herdier - Double Team - TM32
  (507, 50700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Herdier - Rock Tomb - TM39
  (507, 50700, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 29),
  -- Herdier - Aerial Ace - TM40
  (507, 50700, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 30),
  -- Herdier - Facade - TM42
  (507, 50700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 31),
  -- Herdier - Rest - TM44
  (507, 50700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 32),
  -- Herdier - Attract - TM45
  (507, 50700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 33),
  -- Herdier - Round - TM48
  (507, 50700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 34),
  -- Herdier - Payback - TM66
  (507, 50700, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 35),
  -- Herdier - Retaliate - TM67
  (507, 50700, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 36),
  -- Herdier - Giga Impact - TM68
  (507, 50700, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 37),
  -- Herdier - Thunder Wave - TM73
  (507, 50700, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 38),
  -- Herdier - Swagger - TM87
  (507, 50700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 39),
  -- Herdier - Sleep Talk - TM88
  (507, 50700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 40),
  -- Herdier - Substitute - TM90
  (507, 50700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 41),
  -- Herdier - Wild Charge - TM93
  (507, 50700, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 42),
  -- Herdier - Rock Smash - TM94
  (507, 50700, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 43),
  -- Herdier - Snarl - TM95
  (507, 50700, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 44),
  -- Herdier - Confide - TM100
  (507, 50700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 45),
  -- Herdier - Surf - HM03
  (507, 50700, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 46),
  -- Herdier - Strength - HM04
  (507, 50700, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 47),
  -- Stoutland - Tackle - Level 1
  (508, 50800, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Stoutland - Leer - Level 1
  (508, 50800, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Stoutland - Bite - Level 1
  (508, 50800, 44, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Stoutland - Odor Sleuth - Level 1
  (508, 50800, 316, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Stoutland - Thunder Fang - Level 1
  (508, 50800, 422, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Stoutland - Ice Fang - Level 1
  (508, 50800, 423, 13, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Stoutland - Fire Fang - Level 1
  (508, 50800, 424, 13, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Stoutland - Odor Sleuth - Level 5
  (508, 50800, 316, 13, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Stoutland - Bite - Level 8
  (508, 50800, 44, 13, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Stoutland - Helping Hand - Level 12
  (508, 50800, 270, 13, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Stoutland - Take Down - Level 15
  (508, 50800, 36, 13, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Stoutland - Work Up - Level 20
  (508, 50800, 526, 13, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Stoutland - Crunch - Level 24
  (508, 50800, 242, 13, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Stoutland - Roar - Level 29
  (508, 50800, 46, 13, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Stoutland - Retaliate - Level 36
  (508, 50800, 514, 13, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Stoutland - Reversal - Level 42
  (508, 50800, 179, 13, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Stoutland - Last Resort - Level 51
  (508, 50800, 387, 13, NULL, 1, 51, NULL, NULL, NULL, 17),
  -- Stoutland - Giga Impact - Level 59
  (508, 50800, 416, 13, NULL, 1, 59, NULL, NULL, NULL, 18),
  -- Stoutland - Play Rough - Level 63
  (508, 50800, 583, 13, NULL, 1, 63, NULL, NULL, NULL, 19),
  -- Stoutland - Roar - TM05
  (508, 50800, 46, 13, NULL, 2, NULL, NULL, 13002005, NULL, 20),
  -- Stoutland - Toxic - TM06
  (508, 50800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Stoutland - Hidden Power - TM10
  (508, 50800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 22),
  -- Stoutland - Sunny Day - TM11
  (508, 50800, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 23),
  -- Stoutland - Hyper Beam - TM15
  (508, 50800, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 24),
  -- Stoutland - Protect - TM17
  (508, 50800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Stoutland - Rain Dance - TM18
  (508, 50800, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 26),
  -- Stoutland - Frustration - TM21
  (508, 50800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 27),
  -- Stoutland - Thunderbolt - TM24
  (508, 50800, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 28),
  -- Stoutland - Thunder - TM25
  (508, 50800, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 29),
  -- Stoutland - Return - TM27
  (508, 50800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 30),
  -- Stoutland - Dig - TM28
  (508, 50800, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 31),
  -- Stoutland - Shadow Ball - TM30
  (508, 50800, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 32),
  -- Stoutland - Double Team - TM32
  (508, 50800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 33),
  -- Stoutland - Rock Tomb - TM39
  (508, 50800, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 34),
  -- Stoutland - Aerial Ace - TM40
  (508, 50800, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 35),
  -- Stoutland - Facade - TM42
  (508, 50800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 36),
  -- Stoutland - Rest - TM44
  (508, 50800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 37),
  -- Stoutland - Attract - TM45
  (508, 50800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 38),
  -- Stoutland - Round - TM48
  (508, 50800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 39),
  -- Stoutland - Payback - TM66
  (508, 50800, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 40),
  -- Stoutland - Retaliate - TM67
  (508, 50800, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 41),
  -- Stoutland - Giga Impact - TM68
  (508, 50800, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 42),
  -- Stoutland - Thunder Wave - TM73
  (508, 50800, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 43),
  -- Stoutland - Swagger - TM87
  (508, 50800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 44),
  -- Stoutland - Sleep Talk - TM88
  (508, 50800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 45),
  -- Stoutland - Substitute - TM90
  (508, 50800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 46),
  -- Stoutland - Wild Charge - TM93
  (508, 50800, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 47),
  -- Stoutland - Rock Smash - TM94
  (508, 50800, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 48),
  -- Stoutland - Snarl - TM95
  (508, 50800, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 49),
  -- Stoutland - Confide - TM100
  (508, 50800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 50),
  -- Stoutland - Surf - HM03
  (508, 50800, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 51),
  -- Stoutland - Strength - HM04
  (508, 50800, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 52),
  -- Purrloin - Scratch - Level 1
  (509, 50900, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Purrloin - Growl - Level 3
  (509, 50900, 45, 13, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Purrloin - Assist - Level 6
  (509, 50900, 274, 13, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Purrloin - Sand Attack - Level 10
  (509, 50900, 28, 13, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Purrloin - Fury Swipes - Level 12
  (509, 50900, 154, 13, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Purrloin - Pursuit - Level 15
  (509, 50900, 228, 13, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Purrloin - Torment - Level 19
  (509, 50900, 259, 13, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Purrloin - Fake Out - Level 21
  (509, 50900, 252, 13, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Purrloin - Hone Claws - Level 24
  (509, 50900, 468, 13, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Purrloin - Assurance - Level 28
  (509, 50900, 372, 13, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Purrloin - Slash - Level 30
  (509, 50900, 163, 13, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Purrloin - Captivate - Level 33
  (509, 50900, 445, 13, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Purrloin - Night Slash - Level 37
  (509, 50900, 400, 13, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Purrloin - Snatch - Level 39
  (509, 50900, 289, 13, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Purrloin - Nasty Plot - Level 42
  (509, 50900, 417, 13, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Purrloin - Sucker Punch - Level 46
  (509, 50900, 389, 13, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Purrloin - Play Rough - Level 49
  (509, 50900, 583, 13, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Purrloin - Hone Claws - TM01
  (509, 50900, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 18),
  -- Purrloin - Toxic - TM06
  (509, 50900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Purrloin - Hidden Power - TM10
  (509, 50900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Purrloin - Sunny Day - TM11
  (509, 50900, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Purrloin - Taunt - TM12
  (509, 50900, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 22),
  -- Purrloin - Protect - TM17
  (509, 50900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Purrloin - Rain Dance - TM18
  (509, 50900, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 24),
  -- Purrloin - Frustration - TM21
  (509, 50900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 25),
  -- Purrloin - Return - TM27
  (509, 50900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 26),
  -- Purrloin - Shadow Ball - TM30
  (509, 50900, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 27),
  -- Purrloin - Double Team - TM32
  (509, 50900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Purrloin - Aerial Ace - TM40
  (509, 50900, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 29),
  -- Purrloin - Torment - TM41
  (509, 50900, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 30),
  -- Purrloin - Facade - TM42
  (509, 50900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 31),
  -- Purrloin - Rest - TM44
  (509, 50900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 32),
  -- Purrloin - Attract - TM45
  (509, 50900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 33),
  -- Purrloin - Thief - TM46
  (509, 50900, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 34),
  -- Purrloin - Round - TM48
  (509, 50900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 35),
  -- Purrloin - Echoed Voice - TM49
  (509, 50900, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 36),
  -- Purrloin - Embargo - TM63
  (509, 50900, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 37),
  -- Purrloin - Shadow Claw - TM65
  (509, 50900, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 38),
  -- Purrloin - Payback - TM66
  (509, 50900, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 39),
  -- Purrloin - Thunder Wave - TM73
  (509, 50900, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 40),
  -- Purrloin - Psych Up - TM77
  (509, 50900, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 41),
  -- Purrloin - Dream Eater - TM85
  (509, 50900, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 42),
  -- Purrloin - Grass Knot - TM86
  (509, 50900, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 43),
  -- Purrloin - Swagger - TM87
  (509, 50900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 44),
  -- Purrloin - Sleep Talk - TM88
  (509, 50900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 45),
  -- Purrloin - U-turn - TM89
  (509, 50900, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 46),
  -- Purrloin - Substitute - TM90
  (509, 50900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 47),
  -- Purrloin - Snarl - TM95
  (509, 50900, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 48),
  -- Purrloin - Dark Pulse - TM97
  (509, 50900, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 49),
  -- Purrloin - Confide - TM100
  (509, 50900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 50),
  -- Purrloin - Cut - HM01
  (509, 50900, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 51),
  -- Purrloin - Pay Day - Egg
  (509, 50900, 6, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Purrloin - Feint Attack - Egg
  (509, 50900, 185, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Purrloin - Charm - Egg
  (509, 50900, 204, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Purrloin - Encore - Egg
  (509, 50900, 227, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Purrloin - Yawn - Egg
  (509, 50900, 281, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Purrloin - Fake Tears - Egg
  (509, 50900, 313, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Purrloin - Covet - Egg
  (509, 50900, 343, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Purrloin - Copycat - Egg
  (509, 50900, 383, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Purrloin - Foul Play - Egg
  (509, 50900, 492, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Liepard - Scratch - Level 1
  (510, 51000, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Liepard - Sand Attack - Level 1
  (510, 51000, 28, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Liepard - Growl - Level 1
  (510, 51000, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Liepard - Assist - Level 1
  (510, 51000, 274, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Liepard - Growl - Level 3
  (510, 51000, 45, 13, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Liepard - Assist - Level 6
  (510, 51000, 274, 13, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Liepard - Sand Attack - Level 10
  (510, 51000, 28, 13, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Liepard - Fury Swipes - Level 12
  (510, 51000, 154, 13, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Liepard - Pursuit - Level 15
  (510, 51000, 228, 13, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Liepard - Torment - Level 19
  (510, 51000, 259, 13, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Liepard - Fake Out - Level 22
  (510, 51000, 252, 13, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Liepard - Hone Claws - Level 26
  (510, 51000, 468, 13, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Liepard - Assurance - Level 31
  (510, 51000, 372, 13, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Liepard - Slash - Level 34
  (510, 51000, 163, 13, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Liepard - Taunt - Level 38
  (510, 51000, 269, 13, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Liepard - Night Slash - Level 43
  (510, 51000, 400, 13, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Liepard - Snatch - Level 47
  (510, 51000, 289, 13, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Liepard - Nasty Plot - Level 50
  (510, 51000, 417, 13, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Liepard - Sucker Punch - Level 55
  (510, 51000, 389, 13, NULL, 1, 55, NULL, NULL, NULL, 19),
  -- Liepard - Play Rough - Level 58
  (510, 51000, 583, 13, NULL, 1, 58, NULL, NULL, NULL, 20),
  -- Liepard - Hone Claws - TM01
  (510, 51000, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 21),
  -- Liepard - Toxic - TM06
  (510, 51000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 22),
  -- Liepard - Hidden Power - TM10
  (510, 51000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 23),
  -- Liepard - Sunny Day - TM11
  (510, 51000, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 24),
  -- Liepard - Taunt - TM12
  (510, 51000, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 25),
  -- Liepard - Hyper Beam - TM15
  (510, 51000, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 26),
  -- Liepard - Protect - TM17
  (510, 51000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 27),
  -- Liepard - Rain Dance - TM18
  (510, 51000, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 28),
  -- Liepard - Frustration - TM21
  (510, 51000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 29),
  -- Liepard - Return - TM27
  (510, 51000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 30),
  -- Liepard - Shadow Ball - TM30
  (510, 51000, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 31),
  -- Liepard - Double Team - TM32
  (510, 51000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 32),
  -- Liepard - Aerial Ace - TM40
  (510, 51000, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 33),
  -- Liepard - Torment - TM41
  (510, 51000, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 34),
  -- Liepard - Facade - TM42
  (510, 51000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 35),
  -- Liepard - Rest - TM44
  (510, 51000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 36),
  -- Liepard - Attract - TM45
  (510, 51000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 37),
  -- Liepard - Thief - TM46
  (510, 51000, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 38),
  -- Liepard - Round - TM48
  (510, 51000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 39),
  -- Liepard - Echoed Voice - TM49
  (510, 51000, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 40),
  -- Liepard - Embargo - TM63
  (510, 51000, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 41),
  -- Liepard - Shadow Claw - TM65
  (510, 51000, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 42),
  -- Liepard - Payback - TM66
  (510, 51000, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 43),
  -- Liepard - Giga Impact - TM68
  (510, 51000, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 44),
  -- Liepard - Thunder Wave - TM73
  (510, 51000, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 45),
  -- Liepard - Psych Up - TM77
  (510, 51000, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 46),
  -- Liepard - Dream Eater - TM85
  (510, 51000, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 47),
  -- Liepard - Grass Knot - TM86
  (510, 51000, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 48),
  -- Liepard - Swagger - TM87
  (510, 51000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 49),
  -- Liepard - Sleep Talk - TM88
  (510, 51000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 50),
  -- Liepard - U-turn - TM89
  (510, 51000, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 51),
  -- Liepard - Substitute - TM90
  (510, 51000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 52),
  -- Liepard - Rock Smash - TM94
  (510, 51000, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 53),
  -- Liepard - Snarl - TM95
  (510, 51000, 555, 13, NULL, 2, NULL, NULL, 13002095, NULL, 54),
  -- Liepard - Dark Pulse - TM97
  (510, 51000, 399, 13, NULL, 2, NULL, NULL, 13002097, NULL, 55),
  -- Liepard - Confide - TM100
  (510, 51000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 56),
  -- Liepard - Cut - HM01
  (510, 51000, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 57),
  -- Pansage - Scratch - Level 1
  (511, 51100, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pansage - Play Nice - Level 1
  (511, 51100, 589, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pansage - Leer - Level 4
  (511, 51100, 43, 13, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Pansage - Lick - Level 7
  (511, 51100, 122, 13, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Pansage - Vine Whip - Level 10
  (511, 51100, 22, 13, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Pansage - Fury Swipes - Level 13
  (511, 51100, 154, 13, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Pansage - Leech Seed - Level 16
  (511, 51100, 73, 13, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Pansage - Bite - Level 19
  (511, 51100, 44, 13, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Pansage - Seed Bomb - Level 22
  (511, 51100, 402, 13, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Pansage - Torment - Level 25
  (511, 51100, 259, 13, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Pansage - Fling - Level 28
  (511, 51100, 374, 13, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Pansage - Acrobatics - Level 31
  (511, 51100, 512, 13, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Pansage - Grass Knot - Level 34
  (511, 51100, 447, 13, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Pansage - Recycle - Level 37
  (511, 51100, 278, 13, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Pansage - Natural Gift - Level 40
  (511, 51100, 363, 13, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Pansage - Crunch - Level 43
  (511, 51100, 242, 13, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Pansage - Hone Claws - TM01
  (511, 51100, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 17),
  -- Pansage - Toxic - TM06
  (511, 51100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Pansage - Hidden Power - TM10
  (511, 51100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Pansage - Sunny Day - TM11
  (511, 51100, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Pansage - Taunt - TM12
  (511, 51100, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 21),
  -- Pansage - Protect - TM17
  (511, 51100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Pansage - Frustration - TM21
  (511, 51100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Pansage - Solar Beam - TM22
  (511, 51100, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 24),
  -- Pansage - Return - TM27
  (511, 51100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 25),
  -- Pansage - Dig - TM28
  (511, 51100, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 26),
  -- Pansage - Double Team - TM32
  (511, 51100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 27),
  -- Pansage - Rock Tomb - TM39
  (511, 51100, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 28),
  -- Pansage - Torment - TM41
  (511, 51100, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 29),
  -- Pansage - Facade - TM42
  (511, 51100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 30),
  -- Pansage - Rest - TM44
  (511, 51100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 31),
  -- Pansage - Attract - TM45
  (511, 51100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 32),
  -- Pansage - Thief - TM46
  (511, 51100, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 33),
  -- Pansage - Low Sweep - TM47
  (511, 51100, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 34),
  -- Pansage - Round - TM48
  (511, 51100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 35),
  -- Pansage - Energy Ball - TM53
  (511, 51100, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 36),
  -- Pansage - Fling - TM56
  (511, 51100, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 37),
  -- Pansage - Acrobatics - TM62
  (511, 51100, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 38),
  -- Pansage - Shadow Claw - TM65
  (511, 51100, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 39),
  -- Pansage - Payback - TM66
  (511, 51100, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 40),
  -- Pansage - Flash - TM70
  (511, 51100, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 41),
  -- Pansage - Grass Knot - TM86
  (511, 51100, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 42),
  -- Pansage - Swagger - TM87
  (511, 51100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 43),
  -- Pansage - Sleep Talk - TM88
  (511, 51100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 44),
  -- Pansage - Substitute - TM90
  (511, 51100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 45),
  -- Pansage - Rock Smash - TM94
  (511, 51100, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 46),
  -- Pansage - Nature Power - TM96
  (511, 51100, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 47),
  -- Pansage - Confide - TM100
  (511, 51100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 48),
  -- Pansage - Cut - HM01
  (511, 51100, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 49),
  -- Pansage - Low Kick - Egg
  (511, 51100, 67, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Pansage - Role Play - Egg
  (511, 51100, 272, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Pansage - Astonish - Egg
  (511, 51100, 310, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Pansage - Grass Whistle - Egg
  (511, 51100, 320, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Pansage - Tickle - Egg
  (511, 51100, 321, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Pansage - Bullet Seed - Egg
  (511, 51100, 331, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Pansage - Covet - Egg
  (511, 51100, 343, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Pansage - Magical Leaf - Egg
  (511, 51100, 345, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Pansage - Nasty Plot - Egg
  (511, 51100, 417, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Pansage - Leaf Storm - Egg
  (511, 51100, 437, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Pansage - Disarming Voice - Egg
  (511, 51100, 574, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Simisage - Leer - Level 1
  (512, 51200, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Simisage - Lick - Level 1
  (512, 51200, 122, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Simisage - Fury Swipes - Level 1
  (512, 51200, 154, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Simisage - Seed Bomb - Level 1
  (512, 51200, 402, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Simisage - Hone Claws - TM01
  (512, 51200, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 5),
  -- Simisage - Toxic - TM06
  (512, 51200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 6),
  -- Simisage - Hidden Power - TM10
  (512, 51200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 7),
  -- Simisage - Sunny Day - TM11
  (512, 51200, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 8),
  -- Simisage - Taunt - TM12
  (512, 51200, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 9),
  -- Simisage - Hyper Beam - TM15
  (512, 51200, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 10),
  -- Simisage - Protect - TM17
  (512, 51200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 11),
  -- Simisage - Frustration - TM21
  (512, 51200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 12),
  -- Simisage - Solar Beam - TM22
  (512, 51200, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 13),
  -- Simisage - Return - TM27
  (512, 51200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 14),
  -- Simisage - Dig - TM28
  (512, 51200, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 15),
  -- Simisage - Brick Break - TM31
  (512, 51200, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 16),
  -- Simisage - Double Team - TM32
  (512, 51200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 17),
  -- Simisage - Rock Tomb - TM39
  (512, 51200, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 18),
  -- Simisage - Torment - TM41
  (512, 51200, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 19),
  -- Simisage - Facade - TM42
  (512, 51200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 20),
  -- Simisage - Rest - TM44
  (512, 51200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 21),
  -- Simisage - Attract - TM45
  (512, 51200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 22),
  -- Simisage - Thief - TM46
  (512, 51200, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 23),
  -- Simisage - Low Sweep - TM47
  (512, 51200, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 24),
  -- Simisage - Round - TM48
  (512, 51200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 25),
  -- Simisage - Focus Blast - TM52
  (512, 51200, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 26),
  -- Simisage - Energy Ball - TM53
  (512, 51200, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 27),
  -- Simisage - Fling - TM56
  (512, 51200, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 28),
  -- Simisage - Acrobatics - TM62
  (512, 51200, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 29),
  -- Simisage - Shadow Claw - TM65
  (512, 51200, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 30),
  -- Simisage - Payback - TM66
  (512, 51200, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 31),
  -- Simisage - Giga Impact - TM68
  (512, 51200, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 32),
  -- Simisage - Flash - TM70
  (512, 51200, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 33),
  -- Simisage - Rock Slide - TM80
  (512, 51200, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 34),
  -- Simisage - Grass Knot - TM86
  (512, 51200, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 35),
  -- Simisage - Swagger - TM87
  (512, 51200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 36),
  -- Simisage - Sleep Talk - TM88
  (512, 51200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 37),
  -- Simisage - Substitute - TM90
  (512, 51200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 38),
  -- Simisage - Rock Smash - TM94
  (512, 51200, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 39),
  -- Simisage - Nature Power - TM96
  (512, 51200, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 40),
  -- Simisage - Power-Up Punch - TM98
  (512, 51200, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 41),
  -- Simisage - Confide - TM100
  (512, 51200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 42),
  -- Simisage - Cut - HM01
  (512, 51200, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 43),
  -- Pansear - Scratch - Level 1
  (513, 51300, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pansear - Play Nice - Level 1
  (513, 51300, 589, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pansear - Leer - Level 4
  (513, 51300, 43, 13, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Pansear - Lick - Level 7
  (513, 51300, 122, 13, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Pansear - Incinerate - Level 10
  (513, 51300, 510, 13, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Pansear - Fury Swipes - Level 13
  (513, 51300, 154, 13, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Pansear - Yawn - Level 16
  (513, 51300, 281, 13, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Pansear - Bite - Level 19
  (513, 51300, 44, 13, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Pansear - Flame Burst - Level 22
  (513, 51300, 481, 13, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Pansear - Amnesia - Level 25
  (513, 51300, 133, 13, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Pansear - Fling - Level 28
  (513, 51300, 374, 13, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Pansear - Acrobatics - Level 31
  (513, 51300, 512, 13, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Pansear - Fire Blast - Level 34
  (513, 51300, 126, 13, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Pansear - Recycle - Level 37
  (513, 51300, 278, 13, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Pansear - Natural Gift - Level 40
  (513, 51300, 363, 13, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Pansear - Crunch - Level 43
  (513, 51300, 242, 13, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Pansear - Hone Claws - TM01
  (513, 51300, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 17),
  -- Pansear - Toxic - TM06
  (513, 51300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Pansear - Hidden Power - TM10
  (513, 51300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Pansear - Sunny Day - TM11
  (513, 51300, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Pansear - Taunt - TM12
  (513, 51300, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 21),
  -- Pansear - Protect - TM17
  (513, 51300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Pansear - Frustration - TM21
  (513, 51300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Pansear - Solar Beam - TM22
  (513, 51300, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 24),
  -- Pansear - Return - TM27
  (513, 51300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 25),
  -- Pansear - Dig - TM28
  (513, 51300, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 26),
  -- Pansear - Double Team - TM32
  (513, 51300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 27),
  -- Pansear - Flamethrower - TM35
  (513, 51300, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 28),
  -- Pansear - Fire Blast - TM38
  (513, 51300, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 29),
  -- Pansear - Rock Tomb - TM39
  (513, 51300, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 30),
  -- Pansear - Torment - TM41
  (513, 51300, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 31),
  -- Pansear - Facade - TM42
  (513, 51300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 32),
  -- Pansear - Flame Charge - TM43
  (513, 51300, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 33),
  -- Pansear - Rest - TM44
  (513, 51300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 34),
  -- Pansear - Attract - TM45
  (513, 51300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 35),
  -- Pansear - Thief - TM46
  (513, 51300, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 36),
  -- Pansear - Low Sweep - TM47
  (513, 51300, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 37),
  -- Pansear - Round - TM48
  (513, 51300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 38),
  -- Pansear - Overheat - TM50
  (513, 51300, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 39),
  -- Pansear - Fling - TM56
  (513, 51300, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 40),
  -- Pansear - Incinerate - TM59
  (513, 51300, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 41),
  -- Pansear - Will-O-Wisp - TM61
  (513, 51300, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 42),
  -- Pansear - Acrobatics - TM62
  (513, 51300, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 43),
  -- Pansear - Shadow Claw - TM65
  (513, 51300, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 44),
  -- Pansear - Payback - TM66
  (513, 51300, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 45),
  -- Pansear - Grass Knot - TM86
  (513, 51300, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 46),
  -- Pansear - Swagger - TM87
  (513, 51300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 47),
  -- Pansear - Sleep Talk - TM88
  (513, 51300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 48),
  -- Pansear - Substitute - TM90
  (513, 51300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 49),
  -- Pansear - Rock Smash - TM94
  (513, 51300, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 50),
  -- Pansear - Confide - TM100
  (513, 51300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 51),
  -- Pansear - Cut - HM01
  (513, 51300, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 52),
  -- Pansear - Fire Punch - Egg
  (513, 51300, 7, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Pansear - Low Kick - Egg
  (513, 51300, 67, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Pansear - Fire Spin - Egg
  (513, 51300, 83, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Pansear - Sleep Talk - Egg
  (513, 51300, 214, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Pansear - Heat Wave - Egg
  (513, 51300, 257, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Pansear - Role Play - Egg
  (513, 51300, 272, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Pansear - Astonish - Egg
  (513, 51300, 310, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Pansear - Tickle - Egg
  (513, 51300, 321, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Pansear - Covet - Egg
  (513, 51300, 343, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Pansear - Nasty Plot - Egg
  (513, 51300, 417, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Pansear - Disarming Voice - Egg
  (513, 51300, 574, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Simisear - Leer - Level 1
  (514, 51400, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Simisear - Lick - Level 1
  (514, 51400, 122, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Simisear - Fury Swipes - Level 1
  (514, 51400, 154, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Simisear - Flame Burst - Level 1
  (514, 51400, 481, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Simisear - Hone Claws - TM01
  (514, 51400, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 5),
  -- Simisear - Toxic - TM06
  (514, 51400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 6),
  -- Simisear - Hidden Power - TM10
  (514, 51400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 7),
  -- Simisear - Sunny Day - TM11
  (514, 51400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 8),
  -- Simisear - Taunt - TM12
  (514, 51400, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 9),
  -- Simisear - Hyper Beam - TM15
  (514, 51400, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 10),
  -- Simisear - Protect - TM17
  (514, 51400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 11),
  -- Simisear - Frustration - TM21
  (514, 51400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 12),
  -- Simisear - Solar Beam - TM22
  (514, 51400, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 13),
  -- Simisear - Return - TM27
  (514, 51400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 14),
  -- Simisear - Dig - TM28
  (514, 51400, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 15),
  -- Simisear - Brick Break - TM31
  (514, 51400, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 16),
  -- Simisear - Double Team - TM32
  (514, 51400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 17),
  -- Simisear - Flamethrower - TM35
  (514, 51400, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 18),
  -- Simisear - Fire Blast - TM38
  (514, 51400, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 19),
  -- Simisear - Rock Tomb - TM39
  (514, 51400, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 20),
  -- Simisear - Torment - TM41
  (514, 51400, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 21),
  -- Simisear - Facade - TM42
  (514, 51400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 22),
  -- Simisear - Flame Charge - TM43
  (514, 51400, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 23),
  -- Simisear - Rest - TM44
  (514, 51400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 24),
  -- Simisear - Attract - TM45
  (514, 51400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 25),
  -- Simisear - Thief - TM46
  (514, 51400, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 26),
  -- Simisear - Low Sweep - TM47
  (514, 51400, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 27),
  -- Simisear - Round - TM48
  (514, 51400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 28),
  -- Simisear - Overheat - TM50
  (514, 51400, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 29),
  -- Simisear - Focus Blast - TM52
  (514, 51400, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 30),
  -- Simisear - Fling - TM56
  (514, 51400, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 31),
  -- Simisear - Incinerate - TM59
  (514, 51400, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 32),
  -- Simisear - Will-O-Wisp - TM61
  (514, 51400, 261, 13, NULL, 2, NULL, NULL, 13002061, NULL, 33),
  -- Simisear - Acrobatics - TM62
  (514, 51400, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 34),
  -- Simisear - Shadow Claw - TM65
  (514, 51400, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 35),
  -- Simisear - Payback - TM66
  (514, 51400, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 36),
  -- Simisear - Giga Impact - TM68
  (514, 51400, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 37),
  -- Simisear - Rock Slide - TM80
  (514, 51400, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 38),
  -- Simisear - Grass Knot - TM86
  (514, 51400, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 39),
  -- Simisear - Swagger - TM87
  (514, 51400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 40),
  -- Simisear - Sleep Talk - TM88
  (514, 51400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 41),
  -- Simisear - Substitute - TM90
  (514, 51400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 42),
  -- Simisear - Rock Smash - TM94
  (514, 51400, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 43),
  -- Simisear - Power-Up Punch - TM98
  (514, 51400, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 44),
  -- Simisear - Confide - TM100
  (514, 51400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 45),
  -- Simisear - Cut - HM01
  (514, 51400, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 46),
  -- Panpour - Scratch - Level 1
  (515, 51500, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Panpour - Play Nice - Level 1
  (515, 51500, 589, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Panpour - Leer - Level 4
  (515, 51500, 43, 13, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Panpour - Lick - Level 7
  (515, 51500, 122, 13, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Panpour - Water Gun - Level 10
  (515, 51500, 55, 13, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Panpour - Fury Swipes - Level 13
  (515, 51500, 154, 13, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Panpour - Water Sport - Level 16
  (515, 51500, 346, 13, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Panpour - Bite - Level 19
  (515, 51500, 44, 13, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Panpour - Scald - Level 22
  (515, 51500, 503, 13, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Panpour - Taunt - Level 25
  (515, 51500, 269, 13, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Panpour - Fling - Level 28
  (515, 51500, 374, 13, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Panpour - Acrobatics - Level 31
  (515, 51500, 512, 13, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Panpour - Brine - Level 34
  (515, 51500, 362, 13, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Panpour - Recycle - Level 37
  (515, 51500, 278, 13, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Panpour - Natural Gift - Level 40
  (515, 51500, 363, 13, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Panpour - Crunch - Level 43
  (515, 51500, 242, 13, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Panpour - Hone Claws - TM01
  (515, 51500, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 17),
  -- Panpour - Toxic - TM06
  (515, 51500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Panpour - Hail - TM07
  (515, 51500, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 19),
  -- Panpour - Hidden Power - TM10
  (515, 51500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Panpour - Taunt - TM12
  (515, 51500, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 21),
  -- Panpour - Ice Beam - TM13
  (515, 51500, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 22),
  -- Panpour - Blizzard - TM14
  (515, 51500, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 23),
  -- Panpour - Protect - TM17
  (515, 51500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 24),
  -- Panpour - Rain Dance - TM18
  (515, 51500, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 25),
  -- Panpour - Frustration - TM21
  (515, 51500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Panpour - Return - TM27
  (515, 51500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 27),
  -- Panpour - Dig - TM28
  (515, 51500, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 28),
  -- Panpour - Double Team - TM32
  (515, 51500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 29),
  -- Panpour - Rock Tomb - TM39
  (515, 51500, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 30),
  -- Panpour - Torment - TM41
  (515, 51500, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 31),
  -- Panpour - Facade - TM42
  (515, 51500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 32),
  -- Panpour - Rest - TM44
  (515, 51500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 33),
  -- Panpour - Attract - TM45
  (515, 51500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 34),
  -- Panpour - Thief - TM46
  (515, 51500, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 35),
  -- Panpour - Low Sweep - TM47
  (515, 51500, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 36),
  -- Panpour - Round - TM48
  (515, 51500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 37),
  -- Panpour - Scald - TM55
  (515, 51500, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 38),
  -- Panpour - Fling - TM56
  (515, 51500, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 39),
  -- Panpour - Acrobatics - TM62
  (515, 51500, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 40),
  -- Panpour - Shadow Claw - TM65
  (515, 51500, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 41),
  -- Panpour - Payback - TM66
  (515, 51500, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 42),
  -- Panpour - Grass Knot - TM86
  (515, 51500, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 43),
  -- Panpour - Swagger - TM87
  (515, 51500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 44),
  -- Panpour - Sleep Talk - TM88
  (515, 51500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 45),
  -- Panpour - Substitute - TM90
  (515, 51500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 46),
  -- Panpour - Rock Smash - TM94
  (515, 51500, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 47),
  -- Panpour - Confide - TM100
  (515, 51500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 48),
  -- Panpour - Cut - HM01
  (515, 51500, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 49),
  -- Panpour - Surf - HM03
  (515, 51500, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 50),
  -- Panpour - Waterfall - HM05
  (515, 51500, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 51),
  -- Panpour - Hydro Pump - Egg
  (515, 51500, 56, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Panpour - Low Kick - Egg
  (515, 51500, 67, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Panpour - Role Play - Egg
  (515, 51500, 272, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Panpour - Mud Sport - Egg
  (515, 51500, 300, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Panpour - Astonish - Egg
  (515, 51500, 310, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Panpour - Tickle - Egg
  (515, 51500, 321, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Panpour - Covet - Egg
  (515, 51500, 343, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Panpour - Aqua Ring - Egg
  (515, 51500, 392, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Panpour - Aqua Tail - Egg
  (515, 51500, 401, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Panpour - Nasty Plot - Egg
  (515, 51500, 417, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Panpour - Disarming Voice - Egg
  (515, 51500, 574, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Simipour - Leer - Level 1
  (516, 51600, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Simipour - Lick - Level 1
  (516, 51600, 122, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Simipour - Fury Swipes - Level 1
  (516, 51600, 154, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Simipour - Scald - Level 1
  (516, 51600, 503, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Simipour - Hone Claws - TM01
  (516, 51600, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 5),
  -- Simipour - Toxic - TM06
  (516, 51600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 6),
  -- Simipour - Hail - TM07
  (516, 51600, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 7),
  -- Simipour - Hidden Power - TM10
  (516, 51600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 8),
  -- Simipour - Taunt - TM12
  (516, 51600, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 9),
  -- Simipour - Ice Beam - TM13
  (516, 51600, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 10),
  -- Simipour - Blizzard - TM14
  (516, 51600, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 11),
  -- Simipour - Hyper Beam - TM15
  (516, 51600, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 12),
  -- Simipour - Protect - TM17
  (516, 51600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 13),
  -- Simipour - Rain Dance - TM18
  (516, 51600, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 14),
  -- Simipour - Frustration - TM21
  (516, 51600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 15),
  -- Simipour - Return - TM27
  (516, 51600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 16),
  -- Simipour - Dig - TM28
  (516, 51600, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 17),
  -- Simipour - Brick Break - TM31
  (516, 51600, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 18),
  -- Simipour - Double Team - TM32
  (516, 51600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 19),
  -- Simipour - Rock Tomb - TM39
  (516, 51600, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 20),
  -- Simipour - Torment - TM41
  (516, 51600, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 21),
  -- Simipour - Facade - TM42
  (516, 51600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 22),
  -- Simipour - Rest - TM44
  (516, 51600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 23),
  -- Simipour - Attract - TM45
  (516, 51600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 24),
  -- Simipour - Thief - TM46
  (516, 51600, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 25),
  -- Simipour - Low Sweep - TM47
  (516, 51600, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 26),
  -- Simipour - Round - TM48
  (516, 51600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 27),
  -- Simipour - Focus Blast - TM52
  (516, 51600, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 28),
  -- Simipour - Scald - TM55
  (516, 51600, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 29),
  -- Simipour - Fling - TM56
  (516, 51600, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 30),
  -- Simipour - Acrobatics - TM62
  (516, 51600, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 31),
  -- Simipour - Shadow Claw - TM65
  (516, 51600, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 32),
  -- Simipour - Payback - TM66
  (516, 51600, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 33),
  -- Simipour - Giga Impact - TM68
  (516, 51600, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 34),
  -- Simipour - Rock Slide - TM80
  (516, 51600, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 35),
  -- Simipour - Grass Knot - TM86
  (516, 51600, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 36),
  -- Simipour - Swagger - TM87
  (516, 51600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 37),
  -- Simipour - Sleep Talk - TM88
  (516, 51600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 38),
  -- Simipour - Substitute - TM90
  (516, 51600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 39),
  -- Simipour - Rock Smash - TM94
  (516, 51600, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 40),
  -- Simipour - Power-Up Punch - TM98
  (516, 51600, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 41),
  -- Simipour - Confide - TM100
  (516, 51600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 42),
  -- Simipour - Cut - HM01
  (516, 51600, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 43),
  -- Simipour - Surf - HM03
  (516, 51600, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 44),
  -- Simipour - Waterfall - HM05
  (516, 51600, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 45),
  -- Munna - Defense Curl - Level 1
  (517, 51700, 111, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Munna - Psywave - Level 1
  (517, 51700, 149, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Munna - Lucky Chant - Level 5
  (517, 51700, 381, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Munna - Yawn - Level 7
  (517, 51700, 281, 13, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Munna - Psybeam - Level 11
  (517, 51700, 60, 13, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Munna - Imprison - Level 13
  (517, 51700, 286, 13, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Munna - Moonlight - Level 17
  (517, 51700, 236, 13, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Munna - Hypnosis - Level 19
  (517, 51700, 95, 13, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Munna - Zen Headbutt - Level 23
  (517, 51700, 428, 13, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Munna - Synchronoise - Level 25
  (517, 51700, 485, 13, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Munna - Nightmare - Level 29
  (517, 51700, 171, 13, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Munna - Future Sight - Level 31
  (517, 51700, 248, 13, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Munna - Calm Mind - Level 35
  (517, 51700, 347, 13, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Munna - Psychic - Level 37
  (517, 51700, 94, 13, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Munna - Dream Eater - Level 41
  (517, 51700, 138, 13, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Munna - Telekinesis - Level 43
  (517, 51700, 477, 13, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Munna - Stored Power - Level 47
  (517, 51700, 500, 13, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Munna - Psyshock - TM03
  (517, 51700, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 18),
  -- Munna - Calm Mind - TM04
  (517, 51700, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 19),
  -- Munna - Toxic - TM06
  (517, 51700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 20),
  -- Munna - Hidden Power - TM10
  (517, 51700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Munna - Light Screen - TM16
  (517, 51700, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 22),
  -- Munna - Protect - TM17
  (517, 51700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Munna - Rain Dance - TM18
  (517, 51700, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 24),
  -- Munna - Safeguard - TM20
  (517, 51700, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 25),
  -- Munna - Frustration - TM21
  (517, 51700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Munna - Return - TM27
  (517, 51700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 27),
  -- Munna - Psychic - TM29
  (517, 51700, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 28),
  -- Munna - Shadow Ball - TM30
  (517, 51700, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 29),
  -- Munna - Double Team - TM32
  (517, 51700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 30),
  -- Munna - Reflect - TM33
  (517, 51700, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 31),
  -- Munna - Rock Tomb - TM39
  (517, 51700, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 32),
  -- Munna - Torment - TM41
  (517, 51700, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 33),
  -- Munna - Facade - TM42
  (517, 51700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 34),
  -- Munna - Rest - TM44
  (517, 51700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 35),
  -- Munna - Attract - TM45
  (517, 51700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 36),
  -- Munna - Round - TM48
  (517, 51700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 37),
  -- Munna - Energy Ball - TM53
  (517, 51700, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 38),
  -- Munna - Charge Beam - TM57
  (517, 51700, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 39),
  -- Munna - Flash - TM70
  (517, 51700, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 40),
  -- Munna - Thunder Wave - TM73
  (517, 51700, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 41),
  -- Munna - Gyro Ball - TM74
  (517, 51700, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 42),
  -- Munna - Psych Up - TM77
  (517, 51700, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 43),
  -- Munna - Rock Slide - TM80
  (517, 51700, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 44),
  -- Munna - Dream Eater - TM85
  (517, 51700, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 45),
  -- Munna - Swagger - TM87
  (517, 51700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 46),
  -- Munna - Sleep Talk - TM88
  (517, 51700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 47),
  -- Munna - Substitute - TM90
  (517, 51700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 48),
  -- Munna - Trick Room - TM92
  (517, 51700, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 49),
  -- Munna - Dazzling Gleam - TM99
  (517, 51700, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 50),
  -- Munna - Confide - TM100
  (517, 51700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 51),
  -- Munna - Sonic Boom - Egg
  (517, 51700, 49, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Munna - Barrier - Egg
  (517, 51700, 112, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Munna - Swift - Egg
  (517, 51700, 129, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Munna - Curse - Egg
  (517, 51700, 174, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Munna - Sleep Talk - Egg
  (517, 51700, 214, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Munna - Baton Pass - Egg
  (517, 51700, 226, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Munna - Helping Hand - Egg
  (517, 51700, 270, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Munna - Magic Coat - Egg
  (517, 51700, 277, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Munna - Secret Power - Egg
  (517, 51700, 290, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Munna - Healing Wish - Egg
  (517, 51700, 361, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Musharna - Psybeam - Level 1
  (518, 51800, 60, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Musharna - Hypnosis - Level 1
  (518, 51800, 95, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Musharna - Defense Curl - Level 1
  (518, 51800, 111, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Musharna - Lucky Chant - Level 1
  (518, 51800, 381, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Musharna - Psyshock - TM03
  (518, 51800, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 5),
  -- Musharna - Calm Mind - TM04
  (518, 51800, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 6),
  -- Musharna - Toxic - TM06
  (518, 51800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 7),
  -- Musharna - Hidden Power - TM10
  (518, 51800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 8),
  -- Musharna - Hyper Beam - TM15
  (518, 51800, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 9),
  -- Musharna - Light Screen - TM16
  (518, 51800, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 10),
  -- Musharna - Protect - TM17
  (518, 51800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 11),
  -- Musharna - Rain Dance - TM18
  (518, 51800, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 12),
  -- Musharna - Safeguard - TM20
  (518, 51800, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 13),
  -- Musharna - Frustration - TM21
  (518, 51800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 14),
  -- Musharna - Return - TM27
  (518, 51800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 15),
  -- Musharna - Psychic - TM29
  (518, 51800, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 16),
  -- Musharna - Shadow Ball - TM30
  (518, 51800, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 17),
  -- Musharna - Double Team - TM32
  (518, 51800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 18),
  -- Musharna - Reflect - TM33
  (518, 51800, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 19),
  -- Musharna - Rock Tomb - TM39
  (518, 51800, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 20),
  -- Musharna - Torment - TM41
  (518, 51800, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 21),
  -- Musharna - Facade - TM42
  (518, 51800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 22),
  -- Musharna - Rest - TM44
  (518, 51800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 23),
  -- Musharna - Attract - TM45
  (518, 51800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 24),
  -- Musharna - Round - TM48
  (518, 51800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 25),
  -- Musharna - Energy Ball - TM53
  (518, 51800, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 26),
  -- Musharna - Charge Beam - TM57
  (518, 51800, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 27),
  -- Musharna - Giga Impact - TM68
  (518, 51800, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 28),
  -- Musharna - Flash - TM70
  (518, 51800, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 29),
  -- Musharna - Thunder Wave - TM73
  (518, 51800, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 30),
  -- Musharna - Gyro Ball - TM74
  (518, 51800, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 31),
  -- Musharna - Psych Up - TM77
  (518, 51800, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 32),
  -- Musharna - Rock Slide - TM80
  (518, 51800, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 33),
  -- Musharna - Dream Eater - TM85
  (518, 51800, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 34),
  -- Musharna - Swagger - TM87
  (518, 51800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 35),
  -- Musharna - Sleep Talk - TM88
  (518, 51800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 36),
  -- Musharna - Substitute - TM90
  (518, 51800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 37),
  -- Musharna - Trick Room - TM92
  (518, 51800, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 38),
  -- Musharna - Dazzling Gleam - TM99
  (518, 51800, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 39),
  -- Musharna - Confide - TM100
  (518, 51800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 40),
  -- Pidove - Gust - Level 1
  (519, 51900, 16, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pidove - Growl - Level 4
  (519, 51900, 45, 13, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Pidove - Leer - Level 8
  (519, 51900, 43, 13, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Pidove - Quick Attack - Level 11
  (519, 51900, 98, 13, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Pidove - Air Cutter - Level 15
  (519, 51900, 314, 13, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Pidove - Roost - Level 18
  (519, 51900, 355, 13, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Pidove - Detect - Level 22
  (519, 51900, 197, 13, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Pidove - Taunt - Level 25
  (519, 51900, 269, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Pidove - Air Slash - Level 29
  (519, 51900, 403, 13, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Pidove - Razor Wind - Level 32
  (519, 51900, 13, 13, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Pidove - Feather Dance - Level 36
  (519, 51900, 297, 13, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Pidove - Swagger - Level 39
  (519, 51900, 207, 13, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Pidove - Facade - Level 43
  (519, 51900, 263, 13, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Pidove - Tailwind - Level 46
  (519, 51900, 366, 13, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Pidove - Sky Attack - Level 50
  (519, 51900, 143, 13, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Pidove - Toxic - TM06
  (519, 51900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Pidove - Hidden Power - TM10
  (519, 51900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 17),
  -- Pidove - Sunny Day - TM11
  (519, 51900, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 18),
  -- Pidove - Taunt - TM12
  (519, 51900, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 19),
  -- Pidove - Protect - TM17
  (519, 51900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 20),
  -- Pidove - Rain Dance - TM18
  (519, 51900, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 21),
  -- Pidove - Roost - TM19
  (519, 51900, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 22),
  -- Pidove - Frustration - TM21
  (519, 51900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Pidove - Return - TM27
  (519, 51900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 24),
  -- Pidove - Double Team - TM32
  (519, 51900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 25),
  -- Pidove - Aerial Ace - TM40
  (519, 51900, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 26),
  -- Pidove - Facade - TM42
  (519, 51900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 27),
  -- Pidove - Rest - TM44
  (519, 51900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 28),
  -- Pidove - Attract - TM45
  (519, 51900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 29),
  -- Pidove - Round - TM48
  (519, 51900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 30),
  -- Pidove - Echoed Voice - TM49
  (519, 51900, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 31),
  -- Pidove - Steel Wing - TM51
  (519, 51900, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 32),
  -- Pidove - Swagger - TM87
  (519, 51900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 33),
  -- Pidove - Sleep Talk - TM88
  (519, 51900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 34),
  -- Pidove - U-turn - TM89
  (519, 51900, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 35),
  -- Pidove - Substitute - TM90
  (519, 51900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 36),
  -- Pidove - Confide - TM100
  (519, 51900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 37),
  -- Pidove - Fly - HM02
  (519, 51900, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 38),
  -- Pidove - Hypnosis - Egg
  (519, 51900, 95, 13, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Pidove - Steel Wing - Egg
  (519, 51900, 211, 13, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Pidove - Morning Sun - Egg
  (519, 51900, 234, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Pidove - Uproar - Egg
  (519, 51900, 253, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Pidove - Wish - Egg
  (519, 51900, 273, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Pidove - Lucky Chant - Egg
  (519, 51900, 381, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Pidove - Night Slash - Egg
  (519, 51900, 400, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Pidove - Bestow - Egg
  (519, 51900, 516, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Tranquill - Gust - Level 1
  (520, 52000, 16, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tranquill - Leer - Level 1
  (520, 52000, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tranquill - Growl - Level 1
  (520, 52000, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tranquill - Quick Attack - Level 1
  (520, 52000, 98, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tranquill - Growl - Level 4
  (520, 52000, 45, 13, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Tranquill - Leer - Level 8
  (520, 52000, 43, 13, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Tranquill - Quick Attack - Level 11
  (520, 52000, 98, 13, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Tranquill - Air Cutter - Level 15
  (520, 52000, 314, 13, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Tranquill - Roost - Level 18
  (520, 52000, 355, 13, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Tranquill - Detect - Level 23
  (520, 52000, 197, 13, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Tranquill - Taunt - Level 27
  (520, 52000, 269, 13, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Tranquill - Air Slash - Level 32
  (520, 52000, 403, 13, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Tranquill - Razor Wind - Level 36
  (520, 52000, 13, 13, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Tranquill - Feather Dance - Level 41
  (520, 52000, 297, 13, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Tranquill - Swagger - Level 45
  (520, 52000, 207, 13, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Tranquill - Facade - Level 50
  (520, 52000, 263, 13, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Tranquill - Tailwind - Level 54
  (520, 52000, 366, 13, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Tranquill - Sky Attack - Level 59
  (520, 52000, 143, 13, NULL, 1, 59, NULL, NULL, NULL, 18),
  -- Tranquill - Toxic - TM06
  (520, 52000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Tranquill - Hidden Power - TM10
  (520, 52000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Tranquill - Sunny Day - TM11
  (520, 52000, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Tranquill - Taunt - TM12
  (520, 52000, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 22),
  -- Tranquill - Protect - TM17
  (520, 52000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Tranquill - Rain Dance - TM18
  (520, 52000, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 24),
  -- Tranquill - Roost - TM19
  (520, 52000, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 25),
  -- Tranquill - Frustration - TM21
  (520, 52000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Tranquill - Return - TM27
  (520, 52000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 27),
  -- Tranquill - Double Team - TM32
  (520, 52000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Tranquill - Aerial Ace - TM40
  (520, 52000, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 29),
  -- Tranquill - Facade - TM42
  (520, 52000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 30),
  -- Tranquill - Rest - TM44
  (520, 52000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 31),
  -- Tranquill - Attract - TM45
  (520, 52000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 32),
  -- Tranquill - Round - TM48
  (520, 52000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 33),
  -- Tranquill - Echoed Voice - TM49
  (520, 52000, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 34),
  -- Tranquill - Steel Wing - TM51
  (520, 52000, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 35),
  -- Tranquill - Swagger - TM87
  (520, 52000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 36),
  -- Tranquill - Sleep Talk - TM88
  (520, 52000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 37),
  -- Tranquill - U-turn - TM89
  (520, 52000, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 38),
  -- Tranquill - Substitute - TM90
  (520, 52000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 39),
  -- Tranquill - Confide - TM100
  (520, 52000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 40),
  -- Tranquill - Fly - HM02
  (520, 52000, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 41),
  -- Unfezant - Gust - Level 1
  (521, 52100, 16, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Unfezant - Leer - Level 1
  (521, 52100, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Unfezant - Growl - Level 1
  (521, 52100, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Unfezant - Quick Attack - Level 1
  (521, 52100, 98, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Unfezant - Growl - Level 4
  (521, 52100, 45, 13, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Unfezant - Leer - Level 8
  (521, 52100, 43, 13, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Unfezant - Quick Attack - Level 11
  (521, 52100, 98, 13, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Unfezant - Air Cutter - Level 15
  (521, 52100, 314, 13, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Unfezant - Roost - Level 18
  (521, 52100, 355, 13, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Unfezant - Detect - Level 23
  (521, 52100, 197, 13, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Unfezant - Taunt - Level 27
  (521, 52100, 269, 13, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Unfezant - Air Slash - Level 33
  (521, 52100, 403, 13, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Unfezant - Razor Wind - Level 38
  (521, 52100, 13, 13, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Unfezant - Feather Dance - Level 44
  (521, 52100, 297, 13, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Unfezant - Swagger - Level 49
  (521, 52100, 207, 13, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Unfezant - Facade - Level 55
  (521, 52100, 263, 13, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Unfezant - Tailwind - Level 60
  (521, 52100, 366, 13, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Unfezant - Sky Attack - Level 66
  (521, 52100, 143, 13, NULL, 1, 66, NULL, NULL, NULL, 18),
  -- Unfezant - Toxic - TM06
  (521, 52100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Unfezant - Hidden Power - TM10
  (521, 52100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Unfezant - Sunny Day - TM11
  (521, 52100, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Unfezant - Taunt - TM12
  (521, 52100, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 22),
  -- Unfezant - Hyper Beam - TM15
  (521, 52100, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 23),
  -- Unfezant - Protect - TM17
  (521, 52100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 24),
  -- Unfezant - Rain Dance - TM18
  (521, 52100, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 25),
  -- Unfezant - Roost - TM19
  (521, 52100, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 26),
  -- Unfezant - Frustration - TM21
  (521, 52100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 27),
  -- Unfezant - Return - TM27
  (521, 52100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 28),
  -- Unfezant - Double Team - TM32
  (521, 52100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 29),
  -- Unfezant - Aerial Ace - TM40
  (521, 52100, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 30),
  -- Unfezant - Facade - TM42
  (521, 52100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 31),
  -- Unfezant - Rest - TM44
  (521, 52100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 32),
  -- Unfezant - Attract - TM45
  (521, 52100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 33),
  -- Unfezant - Round - TM48
  (521, 52100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 34),
  -- Unfezant - Echoed Voice - TM49
  (521, 52100, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 35),
  -- Unfezant - Steel Wing - TM51
  (521, 52100, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 36),
  -- Unfezant - Giga Impact - TM68
  (521, 52100, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 37),
  -- Unfezant - Psych Up - TM77
  (521, 52100, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 38),
  -- Unfezant - Swagger - TM87
  (521, 52100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 39),
  -- Unfezant - Sleep Talk - TM88
  (521, 52100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 40),
  -- Unfezant - U-turn - TM89
  (521, 52100, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 41),
  -- Unfezant - Substitute - TM90
  (521, 52100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 42),
  -- Unfezant - Confide - TM100
  (521, 52100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 43),
  -- Unfezant - Fly - HM02
  (521, 52100, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 44),
  -- Blitzle - Quick Attack - Level 1
  (522, 52200, 98, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Blitzle - Tail Whip - Level 4
  (522, 52200, 39, 13, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Blitzle - Charge - Level 8
  (522, 52200, 268, 13, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Blitzle - Shock Wave - Level 11
  (522, 52200, 351, 13, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Blitzle - Thunder Wave - Level 15
  (522, 52200, 86, 13, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Blitzle - Flame Charge - Level 18
  (522, 52200, 488, 13, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Blitzle - Pursuit - Level 22
  (522, 52200, 228, 13, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Blitzle - Spark - Level 25
  (522, 52200, 209, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Blitzle - Stomp - Level 29
  (522, 52200, 23, 13, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Blitzle - Discharge - Level 32
  (522, 52200, 435, 13, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Blitzle - Agility - Level 36
  (522, 52200, 97, 13, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Blitzle - Wild Charge - Level 39
  (522, 52200, 528, 13, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Blitzle - Thrash - Level 43
  (522, 52200, 37, 13, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Blitzle - Toxic - TM06
  (522, 52200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 14),
  -- Blitzle - Hidden Power - TM10
  (522, 52200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 15),
  -- Blitzle - Light Screen - TM16
  (522, 52200, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 16),
  -- Blitzle - Protect - TM17
  (522, 52200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 17),
  -- Blitzle - Rain Dance - TM18
  (522, 52200, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 18),
  -- Blitzle - Frustration - TM21
  (522, 52200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 19),
  -- Blitzle - Thunderbolt - TM24
  (522, 52200, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 20),
  -- Blitzle - Thunder - TM25
  (522, 52200, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 21),
  -- Blitzle - Return - TM27
  (522, 52200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 22),
  -- Blitzle - Double Team - TM32
  (522, 52200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 23),
  -- Blitzle - Facade - TM42
  (522, 52200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 24),
  -- Blitzle - Flame Charge - TM43
  (522, 52200, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 25),
  -- Blitzle - Rest - TM44
  (522, 52200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 26),
  -- Blitzle - Attract - TM45
  (522, 52200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 27),
  -- Blitzle - Round - TM48
  (522, 52200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 28),
  -- Blitzle - Charge Beam - TM57
  (522, 52200, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 29),
  -- Blitzle - Flash - TM70
  (522, 52200, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 30),
  -- Blitzle - Volt Switch - TM72
  (522, 52200, 521, 13, NULL, 2, NULL, NULL, 13002072, NULL, 31),
  -- Blitzle - Thunder Wave - TM73
  (522, 52200, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 32),
  -- Blitzle - Swagger - TM87
  (522, 52200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 33),
  -- Blitzle - Sleep Talk - TM88
  (522, 52200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 34),
  -- Blitzle - Substitute - TM90
  (522, 52200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 35),
  -- Blitzle - Wild Charge - TM93
  (522, 52200, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 36),
  -- Blitzle - Confide - TM100
  (522, 52200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 37),
  -- Blitzle - Double Kick - Egg
  (522, 52200, 24, 13, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Blitzle - Sand Attack - Egg
  (522, 52200, 28, 13, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Blitzle - Take Down - Egg
  (522, 52200, 36, 13, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Blitzle - Double-Edge - Egg
  (522, 52200, 38, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Blitzle - Rage - Egg
  (522, 52200, 99, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Blitzle - Screech - Egg
  (522, 52200, 103, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Blitzle - Endure - Egg
  (522, 52200, 203, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Blitzle - Snatch - Egg
  (522, 52200, 289, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Blitzle - Shock Wave - Egg
  (522, 52200, 351, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Blitzle - Me First - Egg
  (522, 52200, 382, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Zebstrika - Tail Whip - Level 1
  (523, 52300, 39, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zebstrika - Thunder Wave - Level 1
  (523, 52300, 86, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zebstrika - Quick Attack - Level 1
  (523, 52300, 98, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Zebstrika - Charge - Level 1
  (523, 52300, 268, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Zebstrika - Ion Deluge - Level 1
  (523, 52300, 569, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Zebstrika - Tail Whip - Level 4
  (523, 52300, 39, 13, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Zebstrika - Charge - Level 8
  (523, 52300, 268, 13, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Zebstrika - Shock Wave - Level 11
  (523, 52300, 351, 13, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Zebstrika - Thunder Wave - Level 15
  (523, 52300, 86, 13, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Zebstrika - Flame Charge - Level 18
  (523, 52300, 488, 13, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Zebstrika - Pursuit - Level 22
  (523, 52300, 228, 13, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Zebstrika - Spark - Level 25
  (523, 52300, 209, 13, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Zebstrika - Stomp - Level 31
  (523, 52300, 23, 13, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Zebstrika - Discharge - Level 36
  (523, 52300, 435, 13, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Zebstrika - Agility - Level 42
  (523, 52300, 97, 13, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Zebstrika - Wild Charge - Level 47
  (523, 52300, 528, 13, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Zebstrika - Thrash - Level 53
  (523, 52300, 37, 13, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Zebstrika - Ion Deluge - Level 58
  (523, 52300, 569, 13, NULL, 1, 58, NULL, NULL, NULL, 18),
  -- Zebstrika - Toxic - TM06
  (523, 52300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Zebstrika - Hidden Power - TM10
  (523, 52300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Zebstrika - Hyper Beam - TM15
  (523, 52300, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 21),
  -- Zebstrika - Light Screen - TM16
  (523, 52300, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 22),
  -- Zebstrika - Protect - TM17
  (523, 52300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Zebstrika - Rain Dance - TM18
  (523, 52300, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 24),
  -- Zebstrika - Frustration - TM21
  (523, 52300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 25),
  -- Zebstrika - Thunderbolt - TM24
  (523, 52300, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 26),
  -- Zebstrika - Thunder - TM25
  (523, 52300, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 27),
  -- Zebstrika - Return - TM27
  (523, 52300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 28),
  -- Zebstrika - Double Team - TM32
  (523, 52300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 29),
  -- Zebstrika - Facade - TM42
  (523, 52300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 30),
  -- Zebstrika - Flame Charge - TM43
  (523, 52300, 488, 13, NULL, 2, NULL, NULL, 13002043, NULL, 31),
  -- Zebstrika - Rest - TM44
  (523, 52300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 32),
  -- Zebstrika - Attract - TM45
  (523, 52300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 33),
  -- Zebstrika - Round - TM48
  (523, 52300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 34),
  -- Zebstrika - Overheat - TM50
  (523, 52300, 315, 13, NULL, 2, NULL, NULL, 13002050, NULL, 35),
  -- Zebstrika - Charge Beam - TM57
  (523, 52300, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 36),
  -- Zebstrika - Giga Impact - TM68
  (523, 52300, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 37),
  -- Zebstrika - Flash - TM70
  (523, 52300, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 38),
  -- Zebstrika - Volt Switch - TM72
  (523, 52300, 521, 13, NULL, 2, NULL, NULL, 13002072, NULL, 39),
  -- Zebstrika - Thunder Wave - TM73
  (523, 52300, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 40),
  -- Zebstrika - Swagger - TM87
  (523, 52300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 41),
  -- Zebstrika - Sleep Talk - TM88
  (523, 52300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 42),
  -- Zebstrika - Substitute - TM90
  (523, 52300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 43),
  -- Zebstrika - Wild Charge - TM93
  (523, 52300, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 44),
  -- Zebstrika - Rock Smash - TM94
  (523, 52300, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 45),
  -- Zebstrika - Confide - TM100
  (523, 52300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 46),
  -- Roggenrola - Tackle - Level 1
  (524, 52400, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Roggenrola - Harden - Level 4
  (524, 52400, 106, 13, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Roggenrola - Sand Attack - Level 7
  (524, 52400, 28, 13, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Roggenrola - Headbutt - Level 10
  (524, 52400, 29, 13, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Roggenrola - Rock Blast - Level 14
  (524, 52400, 350, 13, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Roggenrola - Mud-Slap - Level 17
  (524, 52400, 189, 13, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Roggenrola - Iron Defense - Level 20
  (524, 52400, 334, 13, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Roggenrola - Smack Down - Level 23
  (524, 52400, 479, 13, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Roggenrola - Rock Slide - Level 27
  (524, 52400, 157, 13, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Roggenrola - Stealth Rock - Level 30
  (524, 52400, 446, 13, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Roggenrola - Sandstorm - Level 33
  (524, 52400, 201, 13, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Roggenrola - Stone Edge - Level 36
  (524, 52400, 444, 13, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Roggenrola - Explosion - Level 40
  (524, 52400, 153, 13, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Roggenrola - Toxic - TM06
  (524, 52400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 14),
  -- Roggenrola - Hidden Power - TM10
  (524, 52400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 15),
  -- Roggenrola - Protect - TM17
  (524, 52400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 16),
  -- Roggenrola - Frustration - TM21
  (524, 52400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 17),
  -- Roggenrola - Smack Down - TM23
  (524, 52400, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 18),
  -- Roggenrola - Earthquake - TM26
  (524, 52400, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 19),
  -- Roggenrola - Return - TM27
  (524, 52400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 20),
  -- Roggenrola - Double Team - TM32
  (524, 52400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 21),
  -- Roggenrola - Sandstorm - TM37
  (524, 52400, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 22),
  -- Roggenrola - Rock Tomb - TM39
  (524, 52400, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 23),
  -- Roggenrola - Facade - TM42
  (524, 52400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 24),
  -- Roggenrola - Rest - TM44
  (524, 52400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 25),
  -- Roggenrola - Attract - TM45
  (524, 52400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 26),
  -- Roggenrola - Round - TM48
  (524, 52400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 27),
  -- Roggenrola - Explosion - TM64
  (524, 52400, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 28),
  -- Roggenrola - Rock Polish - TM69
  (524, 52400, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 29),
  -- Roggenrola - Stone Edge - TM71
  (524, 52400, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 30),
  -- Roggenrola - Bulldoze - TM78
  (524, 52400, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 31),
  -- Roggenrola - Rock Slide - TM80
  (524, 52400, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 32),
  -- Roggenrola - Swagger - TM87
  (524, 52400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 33),
  -- Roggenrola - Sleep Talk - TM88
  (524, 52400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 34),
  -- Roggenrola - Substitute - TM90
  (524, 52400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 35),
  -- Roggenrola - Flash Cannon - TM91
  (524, 52400, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 36),
  -- Roggenrola - Rock Smash - TM94
  (524, 52400, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 37),
  -- Roggenrola - Nature Power - TM96
  (524, 52400, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 38),
  -- Roggenrola - Confide - TM100
  (524, 52400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 39),
  -- Roggenrola - Strength - HM04
  (524, 52400, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 40),
  -- Roggenrola - Take Down - Egg
  (524, 52400, 36, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Roggenrola - Curse - Egg
  (524, 52400, 174, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Roggenrola - Lock-On - Egg
  (524, 52400, 199, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Roggenrola - Magnitude - Egg
  (524, 52400, 222, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Roggenrola - Rock Tomb - Egg
  (524, 52400, 317, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Roggenrola - Gravity - Egg
  (524, 52400, 356, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Roggenrola - Wide Guard - Egg
  (524, 52400, 469, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Roggenrola - Autotomize - Egg
  (524, 52400, 475, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Roggenrola - Heavy Slam - Egg
  (524, 52400, 484, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Boldore - Sand Attack - Level 1
  (525, 52500, 28, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Boldore - Headbutt - Level 1
  (525, 52500, 29, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Boldore - Tackle - Level 1
  (525, 52500, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Boldore - Harden - Level 1
  (525, 52500, 106, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Boldore - Harden - Level 4
  (525, 52500, 106, 13, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Boldore - Sand Attack - Level 7
  (525, 52500, 28, 13, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Boldore - Headbutt - Level 10
  (525, 52500, 29, 13, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Boldore - Rock Blast - Level 14
  (525, 52500, 350, 13, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Boldore - Mud-Slap - Level 17
  (525, 52500, 189, 13, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Boldore - Iron Defense - Level 20
  (525, 52500, 334, 13, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Boldore - Smack Down - Level 23
  (525, 52500, 479, 13, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Boldore - Power Gem - Level 25
  (525, 52500, 408, 13, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Boldore - Rock Slide - Level 30
  (525, 52500, 157, 13, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Boldore - Stealth Rock - Level 36
  (525, 52500, 446, 13, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Boldore - Sandstorm - Level 42
  (525, 52500, 201, 13, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Boldore - Stone Edge - Level 48
  (525, 52500, 444, 13, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Boldore - Explosion - Level 55
  (525, 52500, 153, 13, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Boldore - Toxic - TM06
  (525, 52500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Boldore - Hidden Power - TM10
  (525, 52500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Boldore - Protect - TM17
  (525, 52500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 20),
  -- Boldore - Frustration - TM21
  (525, 52500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 21),
  -- Boldore - Smack Down - TM23
  (525, 52500, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 22),
  -- Boldore - Earthquake - TM26
  (525, 52500, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 23),
  -- Boldore - Return - TM27
  (525, 52500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 24),
  -- Boldore - Double Team - TM32
  (525, 52500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 25),
  -- Boldore - Sandstorm - TM37
  (525, 52500, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 26),
  -- Boldore - Rock Tomb - TM39
  (525, 52500, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 27),
  -- Boldore - Facade - TM42
  (525, 52500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 28),
  -- Boldore - Rest - TM44
  (525, 52500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 29),
  -- Boldore - Attract - TM45
  (525, 52500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 30),
  -- Boldore - Round - TM48
  (525, 52500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 31),
  -- Boldore - Explosion - TM64
  (525, 52500, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 32),
  -- Boldore - Rock Polish - TM69
  (525, 52500, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 33),
  -- Boldore - Stone Edge - TM71
  (525, 52500, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 34),
  -- Boldore - Bulldoze - TM78
  (525, 52500, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 35),
  -- Boldore - Rock Slide - TM80
  (525, 52500, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 36),
  -- Boldore - Swagger - TM87
  (525, 52500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 37),
  -- Boldore - Sleep Talk - TM88
  (525, 52500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 38),
  -- Boldore - Substitute - TM90
  (525, 52500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 39),
  -- Boldore - Flash Cannon - TM91
  (525, 52500, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 40),
  -- Boldore - Rock Smash - TM94
  (525, 52500, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 41),
  -- Boldore - Nature Power - TM96
  (525, 52500, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 42),
  -- Boldore - Confide - TM100
  (525, 52500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 43),
  -- Boldore - Strength - HM04
  (525, 52500, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 44),
  -- Gigalith - Sand Attack - Level 1
  (526, 52600, 28, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gigalith - Headbutt - Level 1
  (526, 52600, 29, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gigalith - Tackle - Level 1
  (526, 52600, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gigalith - Harden - Level 1
  (526, 52600, 106, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gigalith - Harden - Level 4
  (526, 52600, 106, 13, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Gigalith - Sand Attack - Level 7
  (526, 52600, 28, 13, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Gigalith - Headbutt - Level 10
  (526, 52600, 29, 13, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Gigalith - Rock Blast - Level 14
  (526, 52600, 350, 13, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Gigalith - Mud-Slap - Level 17
  (526, 52600, 189, 13, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Gigalith - Iron Defense - Level 20
  (526, 52600, 334, 13, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Gigalith - Smack Down - Level 23
  (526, 52600, 479, 13, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Gigalith - Power Gem - Level 25
  (526, 52600, 408, 13, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Gigalith - Rock Slide - Level 30
  (526, 52600, 157, 13, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Gigalith - Stealth Rock - Level 36
  (526, 52600, 446, 13, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Gigalith - Sandstorm - Level 42
  (526, 52600, 201, 13, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Gigalith - Stone Edge - Level 48
  (526, 52600, 444, 13, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Gigalith - Explosion - Level 55
  (526, 52600, 153, 13, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Gigalith - Toxic - TM06
  (526, 52600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Gigalith - Hidden Power - TM10
  (526, 52600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Gigalith - Hyper Beam - TM15
  (526, 52600, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 20),
  -- Gigalith - Protect - TM17
  (526, 52600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 21),
  -- Gigalith - Frustration - TM21
  (526, 52600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Gigalith - Solar Beam - TM22
  (526, 52600, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 23),
  -- Gigalith - Smack Down - TM23
  (526, 52600, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 24),
  -- Gigalith - Earthquake - TM26
  (526, 52600, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 25),
  -- Gigalith - Return - TM27
  (526, 52600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 26),
  -- Gigalith - Double Team - TM32
  (526, 52600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 27),
  -- Gigalith - Sandstorm - TM37
  (526, 52600, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 28),
  -- Gigalith - Rock Tomb - TM39
  (526, 52600, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 29),
  -- Gigalith - Facade - TM42
  (526, 52600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 30),
  -- Gigalith - Rest - TM44
  (526, 52600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 31),
  -- Gigalith - Attract - TM45
  (526, 52600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 32),
  -- Gigalith - Round - TM48
  (526, 52600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 33),
  -- Gigalith - Explosion - TM64
  (526, 52600, 153, 13, NULL, 2, NULL, NULL, 13002064, NULL, 34),
  -- Gigalith - Giga Impact - TM68
  (526, 52600, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 35),
  -- Gigalith - Rock Polish - TM69
  (526, 52600, 397, 13, NULL, 2, NULL, NULL, 13002069, NULL, 36),
  -- Gigalith - Stone Edge - TM71
  (526, 52600, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 37),
  -- Gigalith - Bulldoze - TM78
  (526, 52600, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 38),
  -- Gigalith - Rock Slide - TM80
  (526, 52600, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 39),
  -- Gigalith - Swagger - TM87
  (526, 52600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 40),
  -- Gigalith - Sleep Talk - TM88
  (526, 52600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 41),
  -- Gigalith - Substitute - TM90
  (526, 52600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 42),
  -- Gigalith - Flash Cannon - TM91
  (526, 52600, 430, 13, NULL, 2, NULL, NULL, 13002091, NULL, 43),
  -- Gigalith - Rock Smash - TM94
  (526, 52600, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 44),
  -- Gigalith - Nature Power - TM96
  (526, 52600, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 45),
  -- Gigalith - Confide - TM100
  (526, 52600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 46),
  -- Gigalith - Strength - HM04
  (526, 52600, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 47),
  -- Woobat - Confusion - Level 1
  (527, 52700, 93, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Woobat - Odor Sleuth - Level 4
  (527, 52700, 316, 13, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Woobat - Gust - Level 8
  (527, 52700, 16, 13, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Woobat - Assurance - Level 12
  (527, 52700, 372, 13, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Woobat - Heart Stamp - Level 15
  (527, 52700, 531, 13, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Woobat - Imprison - Level 19
  (527, 52700, 286, 13, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Woobat - Air Cutter - Level 21
  (527, 52700, 314, 13, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Woobat - Attract - Level 25
  (527, 52700, 213, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Woobat - Amnesia - Level 29
  (527, 52700, 133, 13, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Woobat - Calm Mind - Level 29
  (527, 52700, 347, 13, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Woobat - Air Slash - Level 32
  (527, 52700, 403, 13, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Woobat - Future Sight - Level 36
  (527, 52700, 248, 13, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Woobat - Psychic - Level 41
  (527, 52700, 94, 13, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Woobat - Endeavor - Level 47
  (527, 52700, 283, 13, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Woobat - Psyshock - TM03
  (527, 52700, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 15),
  -- Woobat - Calm Mind - TM04
  (527, 52700, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 16),
  -- Woobat - Toxic - TM06
  (527, 52700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Woobat - Hidden Power - TM10
  (527, 52700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Woobat - Taunt - TM12
  (527, 52700, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 19),
  -- Woobat - Light Screen - TM16
  (527, 52700, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 20),
  -- Woobat - Protect - TM17
  (527, 52700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 21),
  -- Woobat - Rain Dance - TM18
  (527, 52700, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 22),
  -- Woobat - Roost - TM19
  (527, 52700, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 23),
  -- Woobat - Safeguard - TM20
  (527, 52700, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 24),
  -- Woobat - Frustration - TM21
  (527, 52700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 25),
  -- Woobat - Return - TM27
  (527, 52700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 26),
  -- Woobat - Psychic - TM29
  (527, 52700, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 27),
  -- Woobat - Shadow Ball - TM30
  (527, 52700, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 28),
  -- Woobat - Double Team - TM32
  (527, 52700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 29),
  -- Woobat - Reflect - TM33
  (527, 52700, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 30),
  -- Woobat - Aerial Ace - TM40
  (527, 52700, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 31),
  -- Woobat - Torment - TM41
  (527, 52700, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 32),
  -- Woobat - Facade - TM42
  (527, 52700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 33),
  -- Woobat - Rest - TM44
  (527, 52700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 34),
  -- Woobat - Attract - TM45
  (527, 52700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 35),
  -- Woobat - Thief - TM46
  (527, 52700, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 36),
  -- Woobat - Round - TM48
  (527, 52700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 37),
  -- Woobat - Steel Wing - TM51
  (527, 52700, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 38),
  -- Woobat - Energy Ball - TM53
  (527, 52700, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 39),
  -- Woobat - Charge Beam - TM57
  (527, 52700, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 40),
  -- Woobat - Acrobatics - TM62
  (527, 52700, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 41),
  -- Woobat - Embargo - TM63
  (527, 52700, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 42),
  -- Woobat - Flash - TM70
  (527, 52700, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 43),
  -- Woobat - Thunder Wave - TM73
  (527, 52700, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 44),
  -- Woobat - Gyro Ball - TM74
  (527, 52700, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 45),
  -- Woobat - Psych Up - TM77
  (527, 52700, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 46),
  -- Woobat - Dream Eater - TM85
  (527, 52700, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 47),
  -- Woobat - Swagger - TM87
  (527, 52700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 48),
  -- Woobat - Sleep Talk - TM88
  (527, 52700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 49),
  -- Woobat - U-turn - TM89
  (527, 52700, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 50),
  -- Woobat - Substitute - TM90
  (527, 52700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 51),
  -- Woobat - Trick Room - TM92
  (527, 52700, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 52),
  -- Woobat - Confide - TM100
  (527, 52700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 53),
  -- Woobat - Fly - HM02
  (527, 52700, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 54),
  -- Woobat - Supersonic - Egg
  (527, 52700, 48, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Woobat - Charm - Egg
  (527, 52700, 204, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Woobat - Flatter - Egg
  (527, 52700, 260, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Woobat - Helping Hand - Egg
  (527, 52700, 270, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Woobat - Knock Off - Egg
  (527, 52700, 282, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Woobat - Fake Tears - Egg
  (527, 52700, 313, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Woobat - Roost - Egg
  (527, 52700, 355, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Woobat - Psycho Shift - Egg
  (527, 52700, 375, 13, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Woobat - Captivate - Egg
  (527, 52700, 445, 13, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Woobat - Synchronoise - Egg
  (527, 52700, 485, 13, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Woobat - Stored Power - Egg
  (527, 52700, 500, 13, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Woobat - Venom Drench - Egg
  (527, 52700, 599, 13, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Swoobat - Gust - Level 1
  (528, 52800, 16, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swoobat - Confusion - Level 1
  (528, 52800, 93, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swoobat - Odor Sleuth - Level 1
  (528, 52800, 316, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Swoobat - Assurance - Level 1
  (528, 52800, 372, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Swoobat - Odor Sleuth - Level 4
  (528, 52800, 316, 13, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Swoobat - Gust - Level 8
  (528, 52800, 16, 13, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Swoobat - Assurance - Level 12
  (528, 52800, 372, 13, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Swoobat - Heart Stamp - Level 15
  (528, 52800, 531, 13, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Swoobat - Imprison - Level 19
  (528, 52800, 286, 13, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Swoobat - Air Cutter - Level 21
  (528, 52800, 314, 13, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Swoobat - Attract - Level 25
  (528, 52800, 213, 13, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Swoobat - Amnesia - Level 29
  (528, 52800, 133, 13, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Swoobat - Calm Mind - Level 29
  (528, 52800, 347, 13, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Swoobat - Air Slash - Level 32
  (528, 52800, 403, 13, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Swoobat - Future Sight - Level 36
  (528, 52800, 248, 13, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Swoobat - Psychic - Level 41
  (528, 52800, 94, 13, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Swoobat - Endeavor - Level 47
  (528, 52800, 283, 13, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Swoobat - Psyshock - TM03
  (528, 52800, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 18),
  -- Swoobat - Calm Mind - TM04
  (528, 52800, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 19),
  -- Swoobat - Toxic - TM06
  (528, 52800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 20),
  -- Swoobat - Hidden Power - TM10
  (528, 52800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Swoobat - Taunt - TM12
  (528, 52800, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 22),
  -- Swoobat - Hyper Beam - TM15
  (528, 52800, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 23),
  -- Swoobat - Light Screen - TM16
  (528, 52800, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 24),
  -- Swoobat - Protect - TM17
  (528, 52800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Swoobat - Rain Dance - TM18
  (528, 52800, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 26),
  -- Swoobat - Roost - TM19
  (528, 52800, 355, 13, NULL, 2, NULL, NULL, 13002019, NULL, 27),
  -- Swoobat - Safeguard - TM20
  (528, 52800, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 28),
  -- Swoobat - Frustration - TM21
  (528, 52800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 29),
  -- Swoobat - Return - TM27
  (528, 52800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 30),
  -- Swoobat - Psychic - TM29
  (528, 52800, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 31),
  -- Swoobat - Shadow Ball - TM30
  (528, 52800, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 32),
  -- Swoobat - Double Team - TM32
  (528, 52800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 33),
  -- Swoobat - Reflect - TM33
  (528, 52800, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 34),
  -- Swoobat - Aerial Ace - TM40
  (528, 52800, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 35),
  -- Swoobat - Torment - TM41
  (528, 52800, 259, 13, NULL, 2, NULL, NULL, 13002041, NULL, 36),
  -- Swoobat - Facade - TM42
  (528, 52800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 37),
  -- Swoobat - Rest - TM44
  (528, 52800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 38),
  -- Swoobat - Attract - TM45
  (528, 52800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 39),
  -- Swoobat - Thief - TM46
  (528, 52800, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 40),
  -- Swoobat - Round - TM48
  (528, 52800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 41),
  -- Swoobat - Steel Wing - TM51
  (528, 52800, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 42),
  -- Swoobat - Energy Ball - TM53
  (528, 52800, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 43),
  -- Swoobat - Charge Beam - TM57
  (528, 52800, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 44),
  -- Swoobat - Acrobatics - TM62
  (528, 52800, 512, 13, NULL, 2, NULL, NULL, 13002062, NULL, 45),
  -- Swoobat - Embargo - TM63
  (528, 52800, 373, 13, NULL, 2, NULL, NULL, 13002063, NULL, 46),
  -- Swoobat - Giga Impact - TM68
  (528, 52800, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 47),
  -- Swoobat - Flash - TM70
  (528, 52800, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 48),
  -- Swoobat - Thunder Wave - TM73
  (528, 52800, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 49),
  -- Swoobat - Gyro Ball - TM74
  (528, 52800, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 50),
  -- Swoobat - Psych Up - TM77
  (528, 52800, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 51),
  -- Swoobat - Dream Eater - TM85
  (528, 52800, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 52),
  -- Swoobat - Swagger - TM87
  (528, 52800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 53),
  -- Swoobat - Sleep Talk - TM88
  (528, 52800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 54),
  -- Swoobat - U-turn - TM89
  (528, 52800, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 55),
  -- Swoobat - Substitute - TM90
  (528, 52800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 56),
  -- Swoobat - Trick Room - TM92
  (528, 52800, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 57),
  -- Swoobat - Confide - TM100
  (528, 52800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 58),
  -- Swoobat - Fly - HM02
  (528, 52800, 19, 13, NULL, 3, NULL, NULL, 13003002, NULL, 59),
  -- Drilbur - Scratch - Level 1
  (529, 52900, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drilbur - Mud Sport - Level 1
  (529, 52900, 300, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drilbur - Rapid Spin - Level 5
  (529, 52900, 229, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Drilbur - Mud-Slap - Level 8
  (529, 52900, 189, 13, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Drilbur - Fury Swipes - Level 12
  (529, 52900, 154, 13, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Drilbur - Metal Claw - Level 15
  (529, 52900, 232, 13, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Drilbur - Dig - Level 19
  (529, 52900, 91, 13, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Drilbur - Hone Claws - Level 22
  (529, 52900, 468, 13, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Drilbur - Slash - Level 26
  (529, 52900, 163, 13, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Drilbur - Rock Slide - Level 29
  (529, 52900, 157, 13, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Drilbur - Earthquake - Level 33
  (529, 52900, 89, 13, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Drilbur - Swords Dance - Level 36
  (529, 52900, 14, 13, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Drilbur - Sandstorm - Level 40
  (529, 52900, 201, 13, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Drilbur - Drill Run - Level 43
  (529, 52900, 529, 13, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Drilbur - Fissure - Level 47
  (529, 52900, 90, 13, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Drilbur - Hone Claws - TM01
  (529, 52900, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 16),
  -- Drilbur - Toxic - TM06
  (529, 52900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Drilbur - Hidden Power - TM10
  (529, 52900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Drilbur - Protect - TM17
  (529, 52900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 19),
  -- Drilbur - Frustration - TM21
  (529, 52900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 20),
  -- Drilbur - Earthquake - TM26
  (529, 52900, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 21),
  -- Drilbur - Return - TM27
  (529, 52900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 22),
  -- Drilbur - Dig - TM28
  (529, 52900, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 23),
  -- Drilbur - Brick Break - TM31
  (529, 52900, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 24),
  -- Drilbur - Double Team - TM32
  (529, 52900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 25),
  -- Drilbur - Sludge Bomb - TM36
  (529, 52900, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 26),
  -- Drilbur - Sandstorm - TM37
  (529, 52900, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 27),
  -- Drilbur - Rock Tomb - TM39
  (529, 52900, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 28),
  -- Drilbur - Aerial Ace - TM40
  (529, 52900, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 29),
  -- Drilbur - Facade - TM42
  (529, 52900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 30),
  -- Drilbur - Rest - TM44
  (529, 52900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 31),
  -- Drilbur - Attract - TM45
  (529, 52900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 32),
  -- Drilbur - Round - TM48
  (529, 52900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 33),
  -- Drilbur - Fling - TM56
  (529, 52900, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 34),
  -- Drilbur - Shadow Claw - TM65
  (529, 52900, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 35),
  -- Drilbur - Swords Dance - TM75
  (529, 52900, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 36),
  -- Drilbur - Bulldoze - TM78
  (529, 52900, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 37),
  -- Drilbur - Rock Slide - TM80
  (529, 52900, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 38),
  -- Drilbur - X-Scissor - TM81
  (529, 52900, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 39),
  -- Drilbur - Poison Jab - TM84
  (529, 52900, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 40),
  -- Drilbur - Swagger - TM87
  (529, 52900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 41),
  -- Drilbur - Sleep Talk - TM88
  (529, 52900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 42),
  -- Drilbur - Substitute - TM90
  (529, 52900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 43),
  -- Drilbur - Rock Smash - TM94
  (529, 52900, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 44),
  -- Drilbur - Confide - TM100
  (529, 52900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 45),
  -- Drilbur - Cut - HM01
  (529, 52900, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 46),
  -- Drilbur - Strength - HM04
  (529, 52900, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 47),
  -- Drilbur - Submission - Egg
  (529, 52900, 66, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Drilbur - Skull Bash - Egg
  (529, 52900, 130, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Drilbur - Rapid Spin - Egg
  (529, 52900, 229, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Drilbur - Crush Claw - Egg
  (529, 52900, 306, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Drilbur - Metal Sound - Egg
  (529, 52900, 319, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Drilbur - Iron Defense - Egg
  (529, 52900, 334, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Drilbur - Earth Power - Egg
  (529, 52900, 414, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Drilbur - Rock Climb - Egg
  (529, 52900, 431, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Excadrill - Scratch - Level 1
  (530, 53000, 10, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Excadrill - Mud-Slap - Level 1
  (530, 53000, 189, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Excadrill - Rapid Spin - Level 1
  (530, 53000, 229, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Excadrill - Mud Sport - Level 1
  (530, 53000, 300, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Excadrill - Rototiller - Level 1
  (530, 53000, 563, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Excadrill - Rapid Spin - Level 5
  (530, 53000, 229, 13, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Excadrill - Mud-Slap - Level 8
  (530, 53000, 189, 13, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Excadrill - Fury Swipes - Level 12
  (530, 53000, 154, 13, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Excadrill - Metal Claw - Level 15
  (530, 53000, 232, 13, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Excadrill - Dig - Level 19
  (530, 53000, 91, 13, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Excadrill - Hone Claws - Level 22
  (530, 53000, 468, 13, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Excadrill - Slash - Level 26
  (530, 53000, 163, 13, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Excadrill - Rock Slide - Level 29
  (530, 53000, 157, 13, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Excadrill - Horn Drill - Level 31
  (530, 53000, 32, 13, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Excadrill - Earthquake - Level 36
  (530, 53000, 89, 13, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Excadrill - Swords Dance - Level 42
  (530, 53000, 14, 13, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Excadrill - Sandstorm - Level 49
  (530, 53000, 201, 13, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Excadrill - Drill Run - Level 55
  (530, 53000, 529, 13, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Excadrill - Fissure - Level 62
  (530, 53000, 90, 13, NULL, 1, 62, NULL, NULL, NULL, 19),
  -- Excadrill - Hone Claws - TM01
  (530, 53000, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 20),
  -- Excadrill - Toxic - TM06
  (530, 53000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Excadrill - Hidden Power - TM10
  (530, 53000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 22),
  -- Excadrill - Hyper Beam - TM15
  (530, 53000, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 23),
  -- Excadrill - Protect - TM17
  (530, 53000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 24),
  -- Excadrill - Frustration - TM21
  (530, 53000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 25),
  -- Excadrill - Earthquake - TM26
  (530, 53000, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 26),
  -- Excadrill - Return - TM27
  (530, 53000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 27),
  -- Excadrill - Dig - TM28
  (530, 53000, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 28),
  -- Excadrill - Brick Break - TM31
  (530, 53000, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 29),
  -- Excadrill - Double Team - TM32
  (530, 53000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 30),
  -- Excadrill - Sludge Bomb - TM36
  (530, 53000, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 31),
  -- Excadrill - Sandstorm - TM37
  (530, 53000, 201, 13, NULL, 2, NULL, NULL, 13002037, NULL, 32),
  -- Excadrill - Rock Tomb - TM39
  (530, 53000, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 33),
  -- Excadrill - Aerial Ace - TM40
  (530, 53000, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 34),
  -- Excadrill - Facade - TM42
  (530, 53000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 35),
  -- Excadrill - Rest - TM44
  (530, 53000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 36),
  -- Excadrill - Attract - TM45
  (530, 53000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 37),
  -- Excadrill - Round - TM48
  (530, 53000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 38),
  -- Excadrill - Focus Blast - TM52
  (530, 53000, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 39),
  -- Excadrill - Fling - TM56
  (530, 53000, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 40),
  -- Excadrill - Shadow Claw - TM65
  (530, 53000, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 41),
  -- Excadrill - Giga Impact - TM68
  (530, 53000, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 42),
  -- Excadrill - Swords Dance - TM75
  (530, 53000, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 43),
  -- Excadrill - Bulldoze - TM78
  (530, 53000, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 44),
  -- Excadrill - Rock Slide - TM80
  (530, 53000, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 45),
  -- Excadrill - X-Scissor - TM81
  (530, 53000, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 46),
  -- Excadrill - Poison Jab - TM84
  (530, 53000, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 47),
  -- Excadrill - Swagger - TM87
  (530, 53000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 48),
  -- Excadrill - Sleep Talk - TM88
  (530, 53000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 49),
  -- Excadrill - Substitute - TM90
  (530, 53000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 50),
  -- Excadrill - Rock Smash - TM94
  (530, 53000, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 51),
  -- Excadrill - Confide - TM100
  (530, 53000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 52),
  -- Excadrill - Cut - HM01
  (530, 53000, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 53),
  -- Excadrill - Strength - HM04
  (530, 53000, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 54),
  -- Audino - Pound - Level 1
  (531, 53100, 1, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Audino - Growl - Level 1
  (531, 53100, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Audino - Helping Hand - Level 1
  (531, 53100, 270, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Audino - Last Resort - Level 1
  (531, 53100, 387, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Audino - Play Nice - Level 1
  (531, 53100, 589, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Audino - Refresh - Level 5
  (531, 53100, 287, 13, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Audino - Double Slap - Level 10
  (531, 53100, 3, 13, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Audino - Attract - Level 15
  (531, 53100, 213, 13, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Audino - Secret Power - Level 20
  (531, 53100, 290, 13, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Audino - Entrainment - Level 25
  (531, 53100, 494, 13, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Audino - Take Down - Level 30
  (531, 53100, 36, 13, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Audino - Heal Pulse - Level 35
  (531, 53100, 505, 13, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Audino - After You - Level 40
  (531, 53100, 495, 13, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Audino - Simple Beam - Level 45
  (531, 53100, 493, 13, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Audino - Double-Edge - Level 50
  (531, 53100, 38, 13, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Audino - Last Resort - Level 55
  (531, 53100, 387, 13, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Audino - Psyshock - TM03
  (531, 53100, 473, 13, NULL, 2, NULL, NULL, 13002003, NULL, 17),
  -- Audino - Calm Mind - TM04
  (531, 53100, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 18),
  -- Audino - Toxic - TM06
  (531, 53100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Audino - Hidden Power - TM10
  (531, 53100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Audino - Sunny Day - TM11
  (531, 53100, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Audino - Ice Beam - TM13
  (531, 53100, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 22),
  -- Audino - Blizzard - TM14
  (531, 53100, 59, 13, NULL, 2, NULL, NULL, 13002014, NULL, 23),
  -- Audino - Hyper Beam - TM15
  (531, 53100, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 24),
  -- Audino - Light Screen - TM16
  (531, 53100, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 25),
  -- Audino - Protect - TM17
  (531, 53100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 26),
  -- Audino - Rain Dance - TM18
  (531, 53100, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 27),
  -- Audino - Safeguard - TM20
  (531, 53100, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 28),
  -- Audino - Frustration - TM21
  (531, 53100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 29),
  -- Audino - Solar Beam - TM22
  (531, 53100, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 30),
  -- Audino - Thunderbolt - TM24
  (531, 53100, 85, 13, NULL, 2, NULL, NULL, 13002024, NULL, 31),
  -- Audino - Thunder - TM25
  (531, 53100, 87, 13, NULL, 2, NULL, NULL, 13002025, NULL, 32),
  -- Audino - Return - TM27
  (531, 53100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 33),
  -- Audino - Dig - TM28
  (531, 53100, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 34),
  -- Audino - Psychic - TM29
  (531, 53100, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 35),
  -- Audino - Shadow Ball - TM30
  (531, 53100, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 36),
  -- Audino - Double Team - TM32
  (531, 53100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 37),
  -- Audino - Reflect - TM33
  (531, 53100, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 38),
  -- Audino - Flamethrower - TM35
  (531, 53100, 53, 13, NULL, 2, NULL, NULL, 13002035, NULL, 39),
  -- Audino - Fire Blast - TM38
  (531, 53100, 126, 13, NULL, 2, NULL, NULL, 13002038, NULL, 40),
  -- Audino - Facade - TM42
  (531, 53100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 41),
  -- Audino - Rest - TM44
  (531, 53100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 42),
  -- Audino - Attract - TM45
  (531, 53100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 43),
  -- Audino - Round - TM48
  (531, 53100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 44),
  -- Audino - Echoed Voice - TM49
  (531, 53100, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 45),
  -- Audino - Fling - TM56
  (531, 53100, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 46),
  -- Audino - Charge Beam - TM57
  (531, 53100, 451, 13, NULL, 2, NULL, NULL, 13002057, NULL, 47),
  -- Audino - Incinerate - TM59
  (531, 53100, 510, 13, NULL, 2, NULL, NULL, 13002059, NULL, 48),
  -- Audino - Retaliate - TM67
  (531, 53100, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 49),
  -- Audino - Flash - TM70
  (531, 53100, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 50),
  -- Audino - Thunder Wave - TM73
  (531, 53100, 86, 13, NULL, 2, NULL, NULL, 13002073, NULL, 51),
  -- Audino - Psych Up - TM77
  (531, 53100, 244, 13, NULL, 2, NULL, NULL, 13002077, NULL, 52),
  -- Audino - Dream Eater - TM85
  (531, 53100, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 53),
  -- Audino - Grass Knot - TM86
  (531, 53100, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 54),
  -- Audino - Swagger - TM87
  (531, 53100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 55),
  -- Audino - Sleep Talk - TM88
  (531, 53100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 56),
  -- Audino - Substitute - TM90
  (531, 53100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 57),
  -- Audino - Trick Room - TM92
  (531, 53100, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 58),
  -- Audino - Wild Charge - TM93
  (531, 53100, 528, 13, NULL, 2, NULL, NULL, 13002093, NULL, 59),
  -- Audino - Power-Up Punch - TM98
  (531, 53100, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 60),
  -- Audino - Dazzling Gleam - TM99
  (531, 53100, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 61),
  -- Audino - Confide - TM100
  (531, 53100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 62),
  -- Audino - Surf - HM03
  (531, 53100, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 63),
  -- Audino - Amnesia - Egg
  (531, 53100, 133, 13, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Audino - Sweet Kiss - Egg
  (531, 53100, 186, 13, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Audino - Sleep Talk - Egg
  (531, 53100, 214, 13, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Audino - Heal Bell - Egg
  (531, 53100, 215, 13, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Audino - Encore - Egg
  (531, 53100, 227, 13, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Audino - Wish - Egg
  (531, 53100, 273, 13, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Audino - Yawn - Egg
  (531, 53100, 281, 13, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Audino - Healing Wish - Egg
  (531, 53100, 361, 13, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Audino - Lucky Chant - Egg
  (531, 53100, 381, 13, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Audino - Bestow - Egg
  (531, 53100, 516, 13, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Audino - Draining Kiss - Egg
  (531, 53100, 577, 13, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Timburr - Pound - Level 1
  (532, 53200, 1, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Timburr - Leer - Level 1
  (532, 53200, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Timburr - Focus Energy - Level 4
  (532, 53200, 116, 13, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Timburr - Bide - Level 8
  (532, 53200, 117, 13, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Timburr - Low Kick - Level 12
  (532, 53200, 67, 13, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Timburr - Rock Throw - Level 16
  (532, 53200, 88, 13, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Timburr - Wake-Up Slap - Level 20
  (532, 53200, 358, 13, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Timburr - Chip Away - Level 24
  (532, 53200, 498, 13, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Timburr - Bulk Up - Level 28
  (532, 53200, 339, 13, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Timburr - Rock Slide - Level 31
  (532, 53200, 157, 13, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Timburr - Dynamic Punch - Level 34
  (532, 53200, 223, 13, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Timburr - Scary Face - Level 37
  (532, 53200, 184, 13, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Timburr - Hammer Arm - Level 40
  (532, 53200, 359, 13, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Timburr - Stone Edge - Level 43
  (532, 53200, 444, 13, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Timburr - Focus Punch - Level 46
  (532, 53200, 264, 13, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Timburr - Superpower - Level 49
  (532, 53200, 276, 13, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Timburr - Toxic - TM06
  (532, 53200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Timburr - Bulk Up - TM08
  (532, 53200, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 18),
  -- Timburr - Hidden Power - TM10
  (532, 53200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Timburr - Sunny Day - TM11
  (532, 53200, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Timburr - Taunt - TM12
  (532, 53200, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 21),
  -- Timburr - Protect - TM17
  (532, 53200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Timburr - Rain Dance - TM18
  (532, 53200, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 23),
  -- Timburr - Frustration - TM21
  (532, 53200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 24),
  -- Timburr - Smack Down - TM23
  (532, 53200, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 25),
  -- Timburr - Return - TM27
  (532, 53200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 26),
  -- Timburr - Dig - TM28
  (532, 53200, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 27),
  -- Timburr - Brick Break - TM31
  (532, 53200, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 28),
  -- Timburr - Double Team - TM32
  (532, 53200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 29),
  -- Timburr - Rock Tomb - TM39
  (532, 53200, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 30),
  -- Timburr - Facade - TM42
  (532, 53200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 31),
  -- Timburr - Rest - TM44
  (532, 53200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 32),
  -- Timburr - Attract - TM45
  (532, 53200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 33),
  -- Timburr - Low Sweep - TM47
  (532, 53200, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 34),
  -- Timburr - Round - TM48
  (532, 53200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 35),
  -- Timburr - Focus Blast - TM52
  (532, 53200, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 36),
  -- Timburr - Fling - TM56
  (532, 53200, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 37),
  -- Timburr - Payback - TM66
  (532, 53200, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 38),
  -- Timburr - Retaliate - TM67
  (532, 53200, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 39),
  -- Timburr - Stone Edge - TM71
  (532, 53200, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 40),
  -- Timburr - Rock Slide - TM80
  (532, 53200, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 41),
  -- Timburr - Poison Jab - TM84
  (532, 53200, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 42),
  -- Timburr - Grass Knot - TM86
  (532, 53200, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 43),
  -- Timburr - Swagger - TM87
  (532, 53200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 44),
  -- Timburr - Sleep Talk - TM88
  (532, 53200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 45),
  -- Timburr - Substitute - TM90
  (532, 53200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 46),
  -- Timburr - Rock Smash - TM94
  (532, 53200, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 47),
  -- Timburr - Power-Up Punch - TM98
  (532, 53200, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 48),
  -- Timburr - Confide - TM100
  (532, 53200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 49),
  -- Timburr - Strength - HM04
  (532, 53200, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 50),
  -- Timburr - Comet Punch - Egg
  (532, 53200, 4, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Timburr - Counter - Egg
  (532, 53200, 68, 13, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Timburr - Reversal - Egg
  (532, 53200, 179, 13, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Timburr - Mach Punch - Egg
  (532, 53200, 183, 13, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Timburr - Foresight - Egg
  (532, 53200, 193, 13, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Timburr - Detect - Egg
  (532, 53200, 197, 13, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Timburr - Endure - Egg
  (532, 53200, 203, 13, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Timburr - Smelling Salts - Egg
  (532, 53200, 265, 13, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Timburr - Force Palm - Egg
  (532, 53200, 395, 13, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Timburr - Drain Punch - Egg
  (532, 53200, 409, 13, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Timburr - Wide Guard - Egg
  (532, 53200, 469, 13, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Gurdurr - Pound - Level 1
  (533, 53300, 1, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gurdurr - Leer - Level 1
  (533, 53300, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gurdurr - Focus Energy - Level 1
  (533, 53300, 116, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gurdurr - Bide - Level 1
  (533, 53300, 117, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gurdurr - Focus Energy - Level 4
  (533, 53300, 116, 13, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Gurdurr - Bide - Level 8
  (533, 53300, 117, 13, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Gurdurr - Low Kick - Level 12
  (533, 53300, 67, 13, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Gurdurr - Rock Throw - Level 16
  (533, 53300, 88, 13, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Gurdurr - Wake-Up Slap - Level 20
  (533, 53300, 358, 13, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Gurdurr - Chip Away - Level 24
  (533, 53300, 498, 13, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Gurdurr - Bulk Up - Level 29
  (533, 53300, 339, 13, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Gurdurr - Rock Slide - Level 33
  (533, 53300, 157, 13, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Gurdurr - Dynamic Punch - Level 37
  (533, 53300, 223, 13, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Gurdurr - Scary Face - Level 41
  (533, 53300, 184, 13, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Gurdurr - Hammer Arm - Level 45
  (533, 53300, 359, 13, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Gurdurr - Stone Edge - Level 49
  (533, 53300, 444, 13, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Gurdurr - Focus Punch - Level 53
  (533, 53300, 264, 13, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Gurdurr - Superpower - Level 57
  (533, 53300, 276, 13, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Gurdurr - Toxic - TM06
  (533, 53300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Gurdurr - Bulk Up - TM08
  (533, 53300, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 20),
  -- Gurdurr - Hidden Power - TM10
  (533, 53300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Gurdurr - Sunny Day - TM11
  (533, 53300, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 22),
  -- Gurdurr - Taunt - TM12
  (533, 53300, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 23),
  -- Gurdurr - Protect - TM17
  (533, 53300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 24),
  -- Gurdurr - Rain Dance - TM18
  (533, 53300, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 25),
  -- Gurdurr - Frustration - TM21
  (533, 53300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Gurdurr - Smack Down - TM23
  (533, 53300, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 27),
  -- Gurdurr - Return - TM27
  (533, 53300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 28),
  -- Gurdurr - Dig - TM28
  (533, 53300, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 29),
  -- Gurdurr - Brick Break - TM31
  (533, 53300, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 30),
  -- Gurdurr - Double Team - TM32
  (533, 53300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 31),
  -- Gurdurr - Rock Tomb - TM39
  (533, 53300, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 32),
  -- Gurdurr - Facade - TM42
  (533, 53300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 33),
  -- Gurdurr - Rest - TM44
  (533, 53300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 34),
  -- Gurdurr - Attract - TM45
  (533, 53300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 35),
  -- Gurdurr - Low Sweep - TM47
  (533, 53300, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 36),
  -- Gurdurr - Round - TM48
  (533, 53300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 37),
  -- Gurdurr - Focus Blast - TM52
  (533, 53300, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 38),
  -- Gurdurr - Fling - TM56
  (533, 53300, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 39),
  -- Gurdurr - Payback - TM66
  (533, 53300, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 40),
  -- Gurdurr - Retaliate - TM67
  (533, 53300, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 41),
  -- Gurdurr - Stone Edge - TM71
  (533, 53300, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 42),
  -- Gurdurr - Rock Slide - TM80
  (533, 53300, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 43),
  -- Gurdurr - Poison Jab - TM84
  (533, 53300, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 44),
  -- Gurdurr - Grass Knot - TM86
  (533, 53300, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 45),
  -- Gurdurr - Swagger - TM87
  (533, 53300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 46),
  -- Gurdurr - Sleep Talk - TM88
  (533, 53300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 47),
  -- Gurdurr - Substitute - TM90
  (533, 53300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 48),
  -- Gurdurr - Rock Smash - TM94
  (533, 53300, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 49),
  -- Gurdurr - Power-Up Punch - TM98
  (533, 53300, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 50),
  -- Gurdurr - Confide - TM100
  (533, 53300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 51),
  -- Gurdurr - Strength - HM04
  (533, 53300, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 52),
  -- Conkeldurr - Pound - Level 1
  (534, 53400, 1, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Conkeldurr - Leer - Level 1
  (534, 53400, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Conkeldurr - Focus Energy - Level 1
  (534, 53400, 116, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Conkeldurr - Bide - Level 1
  (534, 53400, 117, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Conkeldurr - Focus Energy - Level 4
  (534, 53400, 116, 13, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Conkeldurr - Bide - Level 8
  (534, 53400, 117, 13, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Conkeldurr - Low Kick - Level 12
  (534, 53400, 67, 13, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Conkeldurr - Rock Throw - Level 16
  (534, 53400, 88, 13, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Conkeldurr - Wake-Up Slap - Level 20
  (534, 53400, 358, 13, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Conkeldurr - Chip Away - Level 24
  (534, 53400, 498, 13, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Conkeldurr - Bulk Up - Level 29
  (534, 53400, 339, 13, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Conkeldurr - Rock Slide - Level 33
  (534, 53400, 157, 13, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Conkeldurr - Dynamic Punch - Level 37
  (534, 53400, 223, 13, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Conkeldurr - Scary Face - Level 41
  (534, 53400, 184, 13, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Conkeldurr - Hammer Arm - Level 45
  (534, 53400, 359, 13, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Conkeldurr - Stone Edge - Level 49
  (534, 53400, 444, 13, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Conkeldurr - Focus Punch - Level 53
  (534, 53400, 264, 13, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Conkeldurr - Superpower - Level 57
  (534, 53400, 276, 13, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Conkeldurr - Toxic - TM06
  (534, 53400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Conkeldurr - Bulk Up - TM08
  (534, 53400, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 20),
  -- Conkeldurr - Hidden Power - TM10
  (534, 53400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Conkeldurr - Sunny Day - TM11
  (534, 53400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 22),
  -- Conkeldurr - Taunt - TM12
  (534, 53400, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 23),
  -- Conkeldurr - Hyper Beam - TM15
  (534, 53400, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 24),
  -- Conkeldurr - Protect - TM17
  (534, 53400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Conkeldurr - Rain Dance - TM18
  (534, 53400, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 26),
  -- Conkeldurr - Frustration - TM21
  (534, 53400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 27),
  -- Conkeldurr - Smack Down - TM23
  (534, 53400, 479, 13, NULL, 2, NULL, NULL, 13002023, NULL, 28),
  -- Conkeldurr - Earthquake - TM26
  (534, 53400, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 29),
  -- Conkeldurr - Return - TM27
  (534, 53400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 30),
  -- Conkeldurr - Dig - TM28
  (534, 53400, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 31),
  -- Conkeldurr - Brick Break - TM31
  (534, 53400, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 32),
  -- Conkeldurr - Double Team - TM32
  (534, 53400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 33),
  -- Conkeldurr - Rock Tomb - TM39
  (534, 53400, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 34),
  -- Conkeldurr - Facade - TM42
  (534, 53400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 35),
  -- Conkeldurr - Rest - TM44
  (534, 53400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 36),
  -- Conkeldurr - Attract - TM45
  (534, 53400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 37),
  -- Conkeldurr - Low Sweep - TM47
  (534, 53400, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 38),
  -- Conkeldurr - Round - TM48
  (534, 53400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 39),
  -- Conkeldurr - Focus Blast - TM52
  (534, 53400, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 40),
  -- Conkeldurr - Fling - TM56
  (534, 53400, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 41),
  -- Conkeldurr - Payback - TM66
  (534, 53400, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 42),
  -- Conkeldurr - Retaliate - TM67
  (534, 53400, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 43),
  -- Conkeldurr - Giga Impact - TM68
  (534, 53400, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 44),
  -- Conkeldurr - Stone Edge - TM71
  (534, 53400, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 45),
  -- Conkeldurr - Bulldoze - TM78
  (534, 53400, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 46),
  -- Conkeldurr - Rock Slide - TM80
  (534, 53400, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 47),
  -- Conkeldurr - Poison Jab - TM84
  (534, 53400, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 48),
  -- Conkeldurr - Grass Knot - TM86
  (534, 53400, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 49),
  -- Conkeldurr - Swagger - TM87
  (534, 53400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 50),
  -- Conkeldurr - Sleep Talk - TM88
  (534, 53400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 51),
  -- Conkeldurr - Substitute - TM90
  (534, 53400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 52),
  -- Conkeldurr - Rock Smash - TM94
  (534, 53400, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 53),
  -- Conkeldurr - Power-Up Punch - TM98
  (534, 53400, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 54),
  -- Conkeldurr - Confide - TM100
  (534, 53400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 55),
  -- Conkeldurr - Strength - HM04
  (534, 53400, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 56),
  -- Tympole - Growl - Level 1
  (535, 53500, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tympole - Bubble - Level 1
  (535, 53500, 145, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tympole - Supersonic - Level 5
  (535, 53500, 48, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Tympole - Round - Level 9
  (535, 53500, 496, 13, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Tympole - Bubble Beam - Level 12
  (535, 53500, 61, 13, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Tympole - Mud Shot - Level 16
  (535, 53500, 341, 13, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Tympole - Aqua Ring - Level 20
  (535, 53500, 392, 13, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Tympole - Uproar - Level 23
  (535, 53500, 253, 13, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Tympole - Muddy Water - Level 27
  (535, 53500, 330, 13, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Tympole - Rain Dance - Level 31
  (535, 53500, 240, 13, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Tympole - Flail - Level 34
  (535, 53500, 175, 13, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Tympole - Echoed Voice - Level 38
  (535, 53500, 497, 13, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Tympole - Hydro Pump - Level 42
  (535, 53500, 56, 13, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Tympole - Hyper Voice - Level 45
  (535, 53500, 304, 13, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Tympole - Toxic - TM06
  (535, 53500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 15),
  -- Tympole - Hail - TM07
  (535, 53500, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 16),
  -- Tympole - Hidden Power - TM10
  (535, 53500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 17),
  -- Tympole - Protect - TM17
  (535, 53500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 18),
  -- Tympole - Rain Dance - TM18
  (535, 53500, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 19),
  -- Tympole - Frustration - TM21
  (535, 53500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 20),
  -- Tympole - Return - TM27
  (535, 53500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 21),
  -- Tympole - Double Team - TM32
  (535, 53500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 22),
  -- Tympole - Sludge Wave - TM34
  (535, 53500, 482, 13, NULL, 2, NULL, NULL, 13002034, NULL, 23),
  -- Tympole - Sludge Bomb - TM36
  (535, 53500, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 24),
  -- Tympole - Facade - TM42
  (535, 53500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 25),
  -- Tympole - Rest - TM44
  (535, 53500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 26),
  -- Tympole - Attract - TM45
  (535, 53500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 27),
  -- Tympole - Round - TM48
  (535, 53500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 28),
  -- Tympole - Echoed Voice - TM49
  (535, 53500, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 29),
  -- Tympole - Scald - TM55
  (535, 53500, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 30),
  -- Tympole - Infestation - TM83
  (535, 53500, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 31),
  -- Tympole - Swagger - TM87
  (535, 53500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 32),
  -- Tympole - Sleep Talk - TM88
  (535, 53500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 33),
  -- Tympole - Substitute - TM90
  (535, 53500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 34),
  -- Tympole - Confide - TM100
  (535, 53500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 35),
  -- Tympole - Surf - HM03
  (535, 53500, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 36),
  -- Tympole - Mist - Egg
  (535, 53500, 54, 13, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Tympole - Snore - Egg
  (535, 53500, 173, 13, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Tympole - Sleep Talk - Egg
  (535, 53500, 214, 13, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Tympole - Refresh - Egg
  (535, 53500, 287, 13, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Tympole - Mud Sport - Egg
  (535, 53500, 300, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Tympole - Water Pulse - Egg
  (535, 53500, 352, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Tympole - Earth Power - Egg
  (535, 53500, 414, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Tympole - Mud Bomb - Egg
  (535, 53500, 426, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Tympole - After You - Egg
  (535, 53500, 495, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Palpitoad - Growl - Level 1
  (536, 53600, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Palpitoad - Supersonic - Level 1
  (536, 53600, 48, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Palpitoad - Bubble - Level 1
  (536, 53600, 145, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Palpitoad - Round - Level 1
  (536, 53600, 496, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Palpitoad - Supersonic - Level 5
  (536, 53600, 48, 13, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Palpitoad - Round - Level 9
  (536, 53600, 496, 13, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Palpitoad - Bubble Beam - Level 12
  (536, 53600, 61, 13, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Palpitoad - Mud Shot - Level 16
  (536, 53600, 341, 13, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Palpitoad - Aqua Ring - Level 20
  (536, 53600, 392, 13, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Palpitoad - Uproar - Level 23
  (536, 53600, 253, 13, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Palpitoad - Muddy Water - Level 28
  (536, 53600, 330, 13, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Palpitoad - Rain Dance - Level 33
  (536, 53600, 240, 13, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Palpitoad - Flail - Level 37
  (536, 53600, 175, 13, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Palpitoad - Echoed Voice - Level 42
  (536, 53600, 497, 13, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Palpitoad - Hydro Pump - Level 47
  (536, 53600, 56, 13, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Palpitoad - Hyper Voice - Level 51
  (536, 53600, 304, 13, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Palpitoad - Toxic - TM06
  (536, 53600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Palpitoad - Hail - TM07
  (536, 53600, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 18),
  -- Palpitoad - Hidden Power - TM10
  (536, 53600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Palpitoad - Protect - TM17
  (536, 53600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 20),
  -- Palpitoad - Rain Dance - TM18
  (536, 53600, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 21),
  -- Palpitoad - Frustration - TM21
  (536, 53600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Palpitoad - Return - TM27
  (536, 53600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 23),
  -- Palpitoad - Double Team - TM32
  (536, 53600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 24),
  -- Palpitoad - Sludge Wave - TM34
  (536, 53600, 482, 13, NULL, 2, NULL, NULL, 13002034, NULL, 25),
  -- Palpitoad - Sludge Bomb - TM36
  (536, 53600, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 26),
  -- Palpitoad - Facade - TM42
  (536, 53600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 27),
  -- Palpitoad - Rest - TM44
  (536, 53600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 28),
  -- Palpitoad - Attract - TM45
  (536, 53600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 29),
  -- Palpitoad - Round - TM48
  (536, 53600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 30),
  -- Palpitoad - Echoed Voice - TM49
  (536, 53600, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 31),
  -- Palpitoad - Scald - TM55
  (536, 53600, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 32),
  -- Palpitoad - Bulldoze - TM78
  (536, 53600, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 33),
  -- Palpitoad - Infestation - TM83
  (536, 53600, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 34),
  -- Palpitoad - Swagger - TM87
  (536, 53600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 35),
  -- Palpitoad - Sleep Talk - TM88
  (536, 53600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 36),
  -- Palpitoad - Substitute - TM90
  (536, 53600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 37),
  -- Palpitoad - Rock Smash - TM94
  (536, 53600, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 38),
  -- Palpitoad - Confide - TM100
  (536, 53600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 39),
  -- Palpitoad - Surf - HM03
  (536, 53600, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 40),
  -- Seismitoad - Growl - Level 1
  (537, 53700, 45, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seismitoad - Supersonic - Level 1
  (537, 53700, 48, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Seismitoad - Bubble - Level 1
  (537, 53700, 145, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Seismitoad - Round - Level 1
  (537, 53700, 496, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Seismitoad - Supersonic - Level 5
  (537, 53700, 48, 13, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Seismitoad - Round - Level 9
  (537, 53700, 496, 13, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Seismitoad - Bubble Beam - Level 12
  (537, 53700, 61, 13, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Seismitoad - Mud Shot - Level 16
  (537, 53700, 341, 13, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Seismitoad - Aqua Ring - Level 20
  (537, 53700, 392, 13, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Seismitoad - Uproar - Level 23
  (537, 53700, 253, 13, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Seismitoad - Muddy Water - Level 28
  (537, 53700, 330, 13, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Seismitoad - Rain Dance - Level 33
  (537, 53700, 240, 13, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Seismitoad - Acid - Level 36
  (537, 53700, 51, 13, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Seismitoad - Flail - Level 39
  (537, 53700, 175, 13, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Seismitoad - Drain Punch - Level 44
  (537, 53700, 409, 13, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Seismitoad - Echoed Voice - Level 49
  (537, 53700, 497, 13, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Seismitoad - Hydro Pump - Level 53
  (537, 53700, 56, 13, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Seismitoad - Hyper Voice - Level 59
  (537, 53700, 304, 13, NULL, 1, 59, NULL, NULL, NULL, 18),
  -- Seismitoad - Toxic - TM06
  (537, 53700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Seismitoad - Hail - TM07
  (537, 53700, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 20),
  -- Seismitoad - Venoshock - TM09
  (537, 53700, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 21),
  -- Seismitoad - Hidden Power - TM10
  (537, 53700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 22),
  -- Seismitoad - Hyper Beam - TM15
  (537, 53700, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 23),
  -- Seismitoad - Protect - TM17
  (537, 53700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 24),
  -- Seismitoad - Rain Dance - TM18
  (537, 53700, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 25),
  -- Seismitoad - Frustration - TM21
  (537, 53700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Seismitoad - Earthquake - TM26
  (537, 53700, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 27),
  -- Seismitoad - Return - TM27
  (537, 53700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 28),
  -- Seismitoad - Dig - TM28
  (537, 53700, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 29),
  -- Seismitoad - Brick Break - TM31
  (537, 53700, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 30),
  -- Seismitoad - Double Team - TM32
  (537, 53700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 31),
  -- Seismitoad - Sludge Wave - TM34
  (537, 53700, 482, 13, NULL, 2, NULL, NULL, 13002034, NULL, 32),
  -- Seismitoad - Sludge Bomb - TM36
  (537, 53700, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 33),
  -- Seismitoad - Rock Tomb - TM39
  (537, 53700, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 34),
  -- Seismitoad - Facade - TM42
  (537, 53700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 35),
  -- Seismitoad - Rest - TM44
  (537, 53700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 36),
  -- Seismitoad - Attract - TM45
  (537, 53700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 37),
  -- Seismitoad - Round - TM48
  (537, 53700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 38),
  -- Seismitoad - Echoed Voice - TM49
  (537, 53700, 497, 13, NULL, 2, NULL, NULL, 13002049, NULL, 39),
  -- Seismitoad - Focus Blast - TM52
  (537, 53700, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 40),
  -- Seismitoad - Scald - TM55
  (537, 53700, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 41),
  -- Seismitoad - Fling - TM56
  (537, 53700, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 42),
  -- Seismitoad - Payback - TM66
  (537, 53700, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 43),
  -- Seismitoad - Giga Impact - TM68
  (537, 53700, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 44),
  -- Seismitoad - Bulldoze - TM78
  (537, 53700, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 45),
  -- Seismitoad - Rock Slide - TM80
  (537, 53700, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 46),
  -- Seismitoad - Infestation - TM83
  (537, 53700, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 47),
  -- Seismitoad - Poison Jab - TM84
  (537, 53700, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 48),
  -- Seismitoad - Grass Knot - TM86
  (537, 53700, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 49),
  -- Seismitoad - Swagger - TM87
  (537, 53700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 50),
  -- Seismitoad - Sleep Talk - TM88
  (537, 53700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 51),
  -- Seismitoad - Substitute - TM90
  (537, 53700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 52),
  -- Seismitoad - Rock Smash - TM94
  (537, 53700, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 53),
  -- Seismitoad - Power-Up Punch - TM98
  (537, 53700, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 54),
  -- Seismitoad - Confide - TM100
  (537, 53700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 55),
  -- Seismitoad - Surf - HM03
  (537, 53700, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 56),
  -- Seismitoad - Strength - HM04
  (537, 53700, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 57),
  -- Throh - Bind - Level 1
  (538, 53800, 20, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Throh - Leer - Level 1
  (538, 53800, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Throh - Bide - Level 5
  (538, 53800, 117, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Throh - Focus Energy - Level 9
  (538, 53800, 116, 13, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Throh - Seismic Toss - Level 13
  (538, 53800, 69, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Throh - Vital Throw - Level 17
  (538, 53800, 233, 13, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Throh - Revenge - Level 21
  (538, 53800, 279, 13, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Throh - Storm Throw - Level 25
  (538, 53800, 480, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Throh - Body Slam - Level 29
  (538, 53800, 34, 13, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Throh - Bulk Up - Level 33
  (538, 53800, 339, 13, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Throh - Circle Throw - Level 37
  (538, 53800, 509, 13, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Throh - Endure - Level 41
  (538, 53800, 203, 13, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Throh - Wide Guard - Level 45
  (538, 53800, 469, 13, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Throh - Superpower - Level 48
  (538, 53800, 276, 13, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Throh - Reversal - Level 50
  (538, 53800, 179, 13, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Throh - Toxic - TM06
  (538, 53800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Throh - Bulk Up - TM08
  (538, 53800, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 17),
  -- Throh - Hidden Power - TM10
  (538, 53800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Throh - Sunny Day - TM11
  (538, 53800, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 19),
  -- Throh - Taunt - TM12
  (538, 53800, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 20),
  -- Throh - Protect - TM17
  (538, 53800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 21),
  -- Throh - Rain Dance - TM18
  (538, 53800, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 22),
  -- Throh - Frustration - TM21
  (538, 53800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Throh - Earthquake - TM26
  (538, 53800, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 24),
  -- Throh - Return - TM27
  (538, 53800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 25),
  -- Throh - Dig - TM28
  (538, 53800, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 26),
  -- Throh - Brick Break - TM31
  (538, 53800, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 27),
  -- Throh - Double Team - TM32
  (538, 53800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Throh - Rock Tomb - TM39
  (538, 53800, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 29),
  -- Throh - Facade - TM42
  (538, 53800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 30),
  -- Throh - Rest - TM44
  (538, 53800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 31),
  -- Throh - Attract - TM45
  (538, 53800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 32),
  -- Throh - Low Sweep - TM47
  (538, 53800, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 33),
  -- Throh - Round - TM48
  (538, 53800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 34),
  -- Throh - Focus Blast - TM52
  (538, 53800, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 35),
  -- Throh - Fling - TM56
  (538, 53800, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 36),
  -- Throh - Payback - TM66
  (538, 53800, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 37),
  -- Throh - Retaliate - TM67
  (538, 53800, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 38),
  -- Throh - Giga Impact - TM68
  (538, 53800, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 39),
  -- Throh - Stone Edge - TM71
  (538, 53800, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 40),
  -- Throh - Bulldoze - TM78
  (538, 53800, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 41),
  -- Throh - Rock Slide - TM80
  (538, 53800, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 42),
  -- Throh - Poison Jab - TM84
  (538, 53800, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 43),
  -- Throh - Grass Knot - TM86
  (538, 53800, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 44),
  -- Throh - Swagger - TM87
  (538, 53800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 45),
  -- Throh - Sleep Talk - TM88
  (538, 53800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 46),
  -- Throh - Substitute - TM90
  (538, 53800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 47),
  -- Throh - Rock Smash - TM94
  (538, 53800, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 48),
  -- Throh - Power-Up Punch - TM98
  (538, 53800, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 49),
  -- Throh - Confide - TM100
  (538, 53800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 50),
  -- Throh - Strength - HM04
  (538, 53800, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 51),
  -- Sawk - Leer - Level 1
  (539, 53900, 43, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sawk - Rock Smash - Level 1
  (539, 53900, 249, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sawk - Bide - Level 5
  (539, 53900, 117, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Sawk - Focus Energy - Level 9
  (539, 53900, 116, 13, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Sawk - Double Kick - Level 13
  (539, 53900, 24, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Sawk - Low Sweep - Level 17
  (539, 53900, 490, 13, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Sawk - Counter - Level 21
  (539, 53900, 68, 13, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Sawk - Karate Chop - Level 25
  (539, 53900, 2, 13, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Sawk - Brick Break - Level 29
  (539, 53900, 280, 13, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Sawk - Bulk Up - Level 33
  (539, 53900, 339, 13, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Sawk - Retaliate - Level 37
  (539, 53900, 514, 13, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Sawk - Endure - Level 41
  (539, 53900, 203, 13, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Sawk - Quick Guard - Level 45
  (539, 53900, 501, 13, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Sawk - Close Combat - Level 48
  (539, 53900, 370, 13, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Sawk - Reversal - Level 50
  (539, 53900, 179, 13, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Sawk - Toxic - TM06
  (539, 53900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Sawk - Bulk Up - TM08
  (539, 53900, 339, 13, NULL, 2, NULL, NULL, 13002008, NULL, 17),
  -- Sawk - Hidden Power - TM10
  (539, 53900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Sawk - Sunny Day - TM11
  (539, 53900, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 19),
  -- Sawk - Taunt - TM12
  (539, 53900, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 20),
  -- Sawk - Protect - TM17
  (539, 53900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 21),
  -- Sawk - Rain Dance - TM18
  (539, 53900, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 22),
  -- Sawk - Frustration - TM21
  (539, 53900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 23),
  -- Sawk - Earthquake - TM26
  (539, 53900, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 24),
  -- Sawk - Return - TM27
  (539, 53900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 25),
  -- Sawk - Dig - TM28
  (539, 53900, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 26),
  -- Sawk - Brick Break - TM31
  (539, 53900, 280, 13, NULL, 2, NULL, NULL, 13002031, NULL, 27),
  -- Sawk - Double Team - TM32
  (539, 53900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 28),
  -- Sawk - Rock Tomb - TM39
  (539, 53900, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 29),
  -- Sawk - Facade - TM42
  (539, 53900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 30),
  -- Sawk - Rest - TM44
  (539, 53900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 31),
  -- Sawk - Attract - TM45
  (539, 53900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 32),
  -- Sawk - Low Sweep - TM47
  (539, 53900, 490, 13, NULL, 2, NULL, NULL, 13002047, NULL, 33),
  -- Sawk - Round - TM48
  (539, 53900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 34),
  -- Sawk - Focus Blast - TM52
  (539, 53900, 411, 13, NULL, 2, NULL, NULL, 13002052, NULL, 35),
  -- Sawk - Fling - TM56
  (539, 53900, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 36),
  -- Sawk - Payback - TM66
  (539, 53900, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 37),
  -- Sawk - Retaliate - TM67
  (539, 53900, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 38),
  -- Sawk - Giga Impact - TM68
  (539, 53900, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 39),
  -- Sawk - Stone Edge - TM71
  (539, 53900, 444, 13, NULL, 2, NULL, NULL, 13002071, NULL, 40),
  -- Sawk - Bulldoze - TM78
  (539, 53900, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 41),
  -- Sawk - Rock Slide - TM80
  (539, 53900, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 42),
  -- Sawk - Poison Jab - TM84
  (539, 53900, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 43),
  -- Sawk - Grass Knot - TM86
  (539, 53900, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 44),
  -- Sawk - Swagger - TM87
  (539, 53900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 45),
  -- Sawk - Sleep Talk - TM88
  (539, 53900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 46),
  -- Sawk - Substitute - TM90
  (539, 53900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 47),
  -- Sawk - Rock Smash - TM94
  (539, 53900, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 48),
  -- Sawk - Power-Up Punch - TM98
  (539, 53900, 612, 13, NULL, 2, NULL, NULL, 13002098, NULL, 49),
  -- Sawk - Confide - TM100
  (539, 53900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 50),
  -- Sawk - Strength - HM04
  (539, 53900, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 51),
  -- Sewaddle - Tackle - Level 1
  (540, 54000, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sewaddle - String Shot - Level 1
  (540, 54000, 81, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sewaddle - Bug Bite - Level 8
  (540, 54000, 450, 13, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Sewaddle - Razor Leaf - Level 15
  (540, 54000, 75, 13, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Sewaddle - Struggle Bug - Level 22
  (540, 54000, 522, 13, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Sewaddle - Endure - Level 29
  (540, 54000, 203, 13, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Sewaddle - Sticky Web - Level 31
  (540, 54000, 564, 13, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Sewaddle - Bug Buzz - Level 36
  (540, 54000, 405, 13, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Sewaddle - Flail - Level 43
  (540, 54000, 175, 13, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Sewaddle - Calm Mind - TM04
  (540, 54000, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 10),
  -- Sewaddle - Toxic - TM06
  (540, 54000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 11),
  -- Sewaddle - Hidden Power - TM10
  (540, 54000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 12),
  -- Sewaddle - Sunny Day - TM11
  (540, 54000, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 13),
  -- Sewaddle - Light Screen - TM16
  (540, 54000, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 14),
  -- Sewaddle - Protect - TM17
  (540, 54000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 15),
  -- Sewaddle - Safeguard - TM20
  (540, 54000, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 16),
  -- Sewaddle - Frustration - TM21
  (540, 54000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 17),
  -- Sewaddle - Solar Beam - TM22
  (540, 54000, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 18),
  -- Sewaddle - Return - TM27
  (540, 54000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 19),
  -- Sewaddle - Double Team - TM32
  (540, 54000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 20),
  -- Sewaddle - Facade - TM42
  (540, 54000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 21),
  -- Sewaddle - Rest - TM44
  (540, 54000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 22),
  -- Sewaddle - Attract - TM45
  (540, 54000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 23),
  -- Sewaddle - Round - TM48
  (540, 54000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 24),
  -- Sewaddle - Energy Ball - TM53
  (540, 54000, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 25),
  -- Sewaddle - Payback - TM66
  (540, 54000, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 26),
  -- Sewaddle - Flash - TM70
  (540, 54000, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 27),
  -- Sewaddle - Struggle Bug - TM76
  (540, 54000, 522, 13, NULL, 2, NULL, NULL, 13002076, NULL, 28),
  -- Sewaddle - Dream Eater - TM85
  (540, 54000, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 29),
  -- Sewaddle - Grass Knot - TM86
  (540, 54000, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 30),
  -- Sewaddle - Swagger - TM87
  (540, 54000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 31),
  -- Sewaddle - Sleep Talk - TM88
  (540, 54000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 32),
  -- Sewaddle - Substitute - TM90
  (540, 54000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 33),
  -- Sewaddle - Nature Power - TM96
  (540, 54000, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 34),
  -- Sewaddle - Confide - TM100
  (540, 54000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 35),
  -- Sewaddle - Cut - HM01
  (540, 54000, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 36),
  -- Sewaddle - Razor Wind - Egg
  (540, 54000, 13, 13, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Sewaddle - Agility - Egg
  (540, 54000, 97, 13, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Sewaddle - Screech - Egg
  (540, 54000, 103, 13, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Sewaddle - Mind Reader - Egg
  (540, 54000, 170, 13, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Sewaddle - Baton Pass - Egg
  (540, 54000, 226, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Sewaddle - Camouflage - Egg
  (540, 54000, 293, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Sewaddle - Silver Wind - Egg
  (540, 54000, 318, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Sewaddle - Me First - Egg
  (540, 54000, 382, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Sewaddle - Air Slash - Egg
  (540, 54000, 403, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Swadloon - Tackle - Level 1
  (541, 54100, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swadloon - Razor Leaf - Level 1
  (541, 54100, 75, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swadloon - String Shot - Level 1
  (541, 54100, 81, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Swadloon - Grass Whistle - Level 1
  (541, 54100, 320, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Swadloon - Bug Bite - Level 1
  (541, 54100, 450, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Swadloon - Protect - Level 20
  (541, 54100, 182, 13, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Swadloon - Calm Mind - TM04
  (541, 54100, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 7),
  -- Swadloon - Toxic - TM06
  (541, 54100, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 8),
  -- Swadloon - Hidden Power - TM10
  (541, 54100, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 9),
  -- Swadloon - Sunny Day - TM11
  (541, 54100, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 10),
  -- Swadloon - Light Screen - TM16
  (541, 54100, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 11),
  -- Swadloon - Protect - TM17
  (541, 54100, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 12),
  -- Swadloon - Safeguard - TM20
  (541, 54100, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 13),
  -- Swadloon - Frustration - TM21
  (541, 54100, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 14),
  -- Swadloon - Solar Beam - TM22
  (541, 54100, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 15),
  -- Swadloon - Return - TM27
  (541, 54100, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 16),
  -- Swadloon - Double Team - TM32
  (541, 54100, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 17),
  -- Swadloon - Facade - TM42
  (541, 54100, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 18),
  -- Swadloon - Rest - TM44
  (541, 54100, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 19),
  -- Swadloon - Attract - TM45
  (541, 54100, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 20),
  -- Swadloon - Round - TM48
  (541, 54100, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 21),
  -- Swadloon - Energy Ball - TM53
  (541, 54100, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 22),
  -- Swadloon - Payback - TM66
  (541, 54100, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 23),
  -- Swadloon - Flash - TM70
  (541, 54100, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 24),
  -- Swadloon - Struggle Bug - TM76
  (541, 54100, 522, 13, NULL, 2, NULL, NULL, 13002076, NULL, 25),
  -- Swadloon - Dream Eater - TM85
  (541, 54100, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 26),
  -- Swadloon - Grass Knot - TM86
  (541, 54100, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 27),
  -- Swadloon - Swagger - TM87
  (541, 54100, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 28),
  -- Swadloon - Sleep Talk - TM88
  (541, 54100, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 29),
  -- Swadloon - Substitute - TM90
  (541, 54100, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 30),
  -- Swadloon - Nature Power - TM96
  (541, 54100, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 31),
  -- Swadloon - Confide - TM100
  (541, 54100, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 32),
  -- Swadloon - Cut - HM01
  (541, 54100, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 33),
  -- Leavanny - Tackle - Level 1
  (542, 54200, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Leavanny - Razor Leaf - Level 1
  (542, 54200, 75, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Leavanny - String Shot - Level 1
  (542, 54200, 81, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Leavanny - False Swipe - Level 1
  (542, 54200, 206, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Leavanny - Bug Bite - Level 1
  (542, 54200, 450, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Leavanny - Bug Bite - Level 8
  (542, 54200, 450, 13, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Leavanny - Razor Leaf - Level 15
  (542, 54200, 75, 13, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Leavanny - Struggle Bug - Level 22
  (542, 54200, 522, 13, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Leavanny - Slash - Level 29
  (542, 54200, 163, 13, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Leavanny - Helping Hand - Level 32
  (542, 54200, 270, 13, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Leavanny - Fell Stinger - Level 34
  (542, 54200, 565, 13, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Leavanny - Leaf Blade - Level 36
  (542, 54200, 348, 13, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Leavanny - X-Scissor - Level 39
  (542, 54200, 404, 13, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Leavanny - Entrainment - Level 43
  (542, 54200, 494, 13, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Leavanny - Swords Dance - Level 46
  (542, 54200, 14, 13, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Leavanny - Leaf Storm - Level 50
  (542, 54200, 437, 13, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Leavanny - Hone Claws - TM01
  (542, 54200, 468, 13, NULL, 2, NULL, NULL, 13002001, NULL, 17),
  -- Leavanny - Calm Mind - TM04
  (542, 54200, 347, 13, NULL, 2, NULL, NULL, 13002004, NULL, 18),
  -- Leavanny - Toxic - TM06
  (542, 54200, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Leavanny - Hidden Power - TM10
  (542, 54200, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 20),
  -- Leavanny - Sunny Day - TM11
  (542, 54200, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 21),
  -- Leavanny - Hyper Beam - TM15
  (542, 54200, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 22),
  -- Leavanny - Light Screen - TM16
  (542, 54200, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 23),
  -- Leavanny - Protect - TM17
  (542, 54200, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 24),
  -- Leavanny - Safeguard - TM20
  (542, 54200, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 25),
  -- Leavanny - Frustration - TM21
  (542, 54200, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 26),
  -- Leavanny - Solar Beam - TM22
  (542, 54200, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 27),
  -- Leavanny - Return - TM27
  (542, 54200, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 28),
  -- Leavanny - Double Team - TM32
  (542, 54200, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 29),
  -- Leavanny - Reflect - TM33
  (542, 54200, 115, 13, NULL, 2, NULL, NULL, 13002033, NULL, 30),
  -- Leavanny - Aerial Ace - TM40
  (542, 54200, 332, 13, NULL, 2, NULL, NULL, 13002040, NULL, 31),
  -- Leavanny - Facade - TM42
  (542, 54200, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 32),
  -- Leavanny - Rest - TM44
  (542, 54200, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 33),
  -- Leavanny - Attract - TM45
  (542, 54200, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 34),
  -- Leavanny - Round - TM48
  (542, 54200, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 35),
  -- Leavanny - Steel Wing - TM51
  (542, 54200, 211, 13, NULL, 2, NULL, NULL, 13002051, NULL, 36),
  -- Leavanny - Energy Ball - TM53
  (542, 54200, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 37),
  -- Leavanny - False Swipe - TM54
  (542, 54200, 206, 13, NULL, 2, NULL, NULL, 13002054, NULL, 38),
  -- Leavanny - Shadow Claw - TM65
  (542, 54200, 421, 13, NULL, 2, NULL, NULL, 13002065, NULL, 39),
  -- Leavanny - Payback - TM66
  (542, 54200, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 40),
  -- Leavanny - Retaliate - TM67
  (542, 54200, 514, 13, NULL, 2, NULL, NULL, 13002067, NULL, 41),
  -- Leavanny - Giga Impact - TM68
  (542, 54200, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 42),
  -- Leavanny - Flash - TM70
  (542, 54200, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 43),
  -- Leavanny - Swords Dance - TM75
  (542, 54200, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 44),
  -- Leavanny - Struggle Bug - TM76
  (542, 54200, 522, 13, NULL, 2, NULL, NULL, 13002076, NULL, 45),
  -- Leavanny - X-Scissor - TM81
  (542, 54200, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 46),
  -- Leavanny - Poison Jab - TM84
  (542, 54200, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 47),
  -- Leavanny - Dream Eater - TM85
  (542, 54200, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 48),
  -- Leavanny - Grass Knot - TM86
  (542, 54200, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 49),
  -- Leavanny - Swagger - TM87
  (542, 54200, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 50),
  -- Leavanny - Sleep Talk - TM88
  (542, 54200, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 51),
  -- Leavanny - Substitute - TM90
  (542, 54200, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 52),
  -- Leavanny - Nature Power - TM96
  (542, 54200, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 53),
  -- Leavanny - Confide - TM100
  (542, 54200, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 54),
  -- Leavanny - Cut - HM01
  (542, 54200, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 55),
  -- Venipede - Defense Curl - Level 1
  (543, 54300, 111, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Venipede - Rollout - Level 1
  (543, 54300, 205, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Venipede - Poison Sting - Level 5
  (543, 54300, 40, 13, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Venipede - Screech - Level 8
  (543, 54300, 103, 13, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Venipede - Pursuit - Level 12
  (543, 54300, 228, 13, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Venipede - Protect - Level 15
  (543, 54300, 182, 13, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Venipede - Poison Tail - Level 19
  (543, 54300, 342, 13, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Venipede - Bug Bite - Level 22
  (543, 54300, 450, 13, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Venipede - Venoshock - Level 26
  (543, 54300, 474, 13, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Venipede - Agility - Level 29
  (543, 54300, 97, 13, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Venipede - Steamroller - Level 33
  (543, 54300, 537, 13, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Venipede - Toxic - Level 36
  (543, 54300, 92, 13, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Venipede - Venoshock - Level 38
  (543, 54300, 474, 13, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Venipede - Rock Climb - Level 40
  (543, 54300, 431, 13, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Venipede - Double-Edge - Level 43
  (543, 54300, 38, 13, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Venipede - Toxic - TM06
  (543, 54300, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 16),
  -- Venipede - Venoshock - TM09
  (543, 54300, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 17),
  -- Venipede - Hidden Power - TM10
  (543, 54300, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Venipede - Sunny Day - TM11
  (543, 54300, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 19),
  -- Venipede - Protect - TM17
  (543, 54300, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 20),
  -- Venipede - Frustration - TM21
  (543, 54300, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 21),
  -- Venipede - Solar Beam - TM22
  (543, 54300, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 22),
  -- Venipede - Return - TM27
  (543, 54300, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 23),
  -- Venipede - Double Team - TM32
  (543, 54300, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 24),
  -- Venipede - Sludge Bomb - TM36
  (543, 54300, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 25),
  -- Venipede - Facade - TM42
  (543, 54300, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 26),
  -- Venipede - Rest - TM44
  (543, 54300, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 27),
  -- Venipede - Attract - TM45
  (543, 54300, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 28),
  -- Venipede - Round - TM48
  (543, 54300, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 29),
  -- Venipede - Payback - TM66
  (543, 54300, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 30),
  -- Venipede - Gyro Ball - TM74
  (543, 54300, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 31),
  -- Venipede - Struggle Bug - TM76
  (543, 54300, 522, 13, NULL, 2, NULL, NULL, 13002076, NULL, 32),
  -- Venipede - Infestation - TM83
  (543, 54300, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 33),
  -- Venipede - Poison Jab - TM84
  (543, 54300, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 34),
  -- Venipede - Swagger - TM87
  (543, 54300, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 35),
  -- Venipede - Sleep Talk - TM88
  (543, 54300, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 36),
  -- Venipede - Substitute - TM90
  (543, 54300, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 37),
  -- Venipede - Rock Smash - TM94
  (543, 54300, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 38),
  -- Venipede - Confide - TM100
  (543, 54300, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 39),
  -- Venipede - Take Down - Egg
  (543, 54300, 36, 13, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Venipede - Twineedle - Egg
  (543, 54300, 41, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Venipede - Pin Missile - Egg
  (543, 54300, 42, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Venipede - Spikes - Egg
  (543, 54300, 191, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Venipede - Toxic Spikes - Egg
  (543, 54300, 390, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Venipede - Rock Climb - Egg
  (543, 54300, 431, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Whirlipede - Poison Sting - Level 1
  (544, 54400, 40, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Whirlipede - Screech - Level 1
  (544, 54400, 103, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Whirlipede - Defense Curl - Level 1
  (544, 54400, 111, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Whirlipede - Rollout - Level 1
  (544, 54400, 205, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Whirlipede - Poison Sting - Level 5
  (544, 54400, 40, 13, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Whirlipede - Screech - Level 8
  (544, 54400, 103, 13, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Whirlipede - Pursuit - Level 12
  (544, 54400, 228, 13, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Whirlipede - Protect - Level 15
  (544, 54400, 182, 13, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Whirlipede - Poison Tail - Level 19
  (544, 54400, 342, 13, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Whirlipede - Iron Defense - Level 22
  (544, 54400, 334, 13, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Whirlipede - Bug Bite - Level 23
  (544, 54400, 450, 13, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Whirlipede - Venoshock - Level 28
  (544, 54400, 474, 13, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Whirlipede - Agility - Level 32
  (544, 54400, 97, 13, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Whirlipede - Steamroller - Level 37
  (544, 54400, 537, 13, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Whirlipede - Toxic - Level 41
  (544, 54400, 92, 13, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Whirlipede - Venom Drench - Level 43
  (544, 54400, 599, 13, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Whirlipede - Rock Climb - Level 46
  (544, 54400, 431, 13, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Whirlipede - Double-Edge - Level 50
  (544, 54400, 38, 13, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Whirlipede - Toxic - TM06
  (544, 54400, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 19),
  -- Whirlipede - Venoshock - TM09
  (544, 54400, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 20),
  -- Whirlipede - Hidden Power - TM10
  (544, 54400, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 21),
  -- Whirlipede - Sunny Day - TM11
  (544, 54400, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 22),
  -- Whirlipede - Protect - TM17
  (544, 54400, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 23),
  -- Whirlipede - Frustration - TM21
  (544, 54400, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 24),
  -- Whirlipede - Solar Beam - TM22
  (544, 54400, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 25),
  -- Whirlipede - Return - TM27
  (544, 54400, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 26),
  -- Whirlipede - Double Team - TM32
  (544, 54400, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 27),
  -- Whirlipede - Sludge Bomb - TM36
  (544, 54400, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 28),
  -- Whirlipede - Facade - TM42
  (544, 54400, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 29),
  -- Whirlipede - Rest - TM44
  (544, 54400, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 30),
  -- Whirlipede - Attract - TM45
  (544, 54400, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 31),
  -- Whirlipede - Round - TM48
  (544, 54400, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 32),
  -- Whirlipede - Payback - TM66
  (544, 54400, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 33),
  -- Whirlipede - Gyro Ball - TM74
  (544, 54400, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 34),
  -- Whirlipede - Struggle Bug - TM76
  (544, 54400, 522, 13, NULL, 2, NULL, NULL, 13002076, NULL, 35),
  -- Whirlipede - Infestation - TM83
  (544, 54400, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 36),
  -- Whirlipede - Poison Jab - TM84
  (544, 54400, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 37),
  -- Whirlipede - Swagger - TM87
  (544, 54400, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 38),
  -- Whirlipede - Sleep Talk - TM88
  (544, 54400, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 39),
  -- Whirlipede - Substitute - TM90
  (544, 54400, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 40),
  -- Whirlipede - Rock Smash - TM94
  (544, 54400, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 41),
  -- Whirlipede - Confide - TM100
  (544, 54400, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 42),
  -- Scolipede - Poison Sting - Level 1
  (545, 54500, 40, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scolipede - Screech - Level 1
  (545, 54500, 103, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scolipede - Defense Curl - Level 1
  (545, 54500, 111, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Scolipede - Rollout - Level 1
  (545, 54500, 205, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Scolipede - Megahorn - Level 1
  (545, 54500, 224, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Scolipede - Poison Sting - Level 5
  (545, 54500, 40, 13, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Scolipede - Screech - Level 8
  (545, 54500, 103, 13, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Scolipede - Pursuit - Level 12
  (545, 54500, 228, 13, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Scolipede - Protect - Level 15
  (545, 54500, 182, 13, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Scolipede - Poison Tail - Level 19
  (545, 54500, 342, 13, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Scolipede - Bug Bite - Level 23
  (545, 54500, 450, 13, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Scolipede - Venoshock - Level 28
  (545, 54500, 474, 13, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Scolipede - Baton Pass - Level 30
  (545, 54500, 226, 13, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Scolipede - Agility - Level 33
  (545, 54500, 97, 13, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Scolipede - Steamroller - Level 39
  (545, 54500, 537, 13, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Scolipede - Toxic - Level 44
  (545, 54500, 92, 13, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Scolipede - Venom Drench - Level 47
  (545, 54500, 599, 13, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Scolipede - Rock Climb - Level 50
  (545, 54500, 431, 13, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Scolipede - Double-Edge - Level 55
  (545, 54500, 38, 13, NULL, 1, 55, NULL, NULL, NULL, 19),
  -- Scolipede - Megahorn - Level 65
  (545, 54500, 224, 13, NULL, 1, 65, NULL, NULL, NULL, 20),
  -- Scolipede - Toxic - TM06
  (545, 54500, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 21),
  -- Scolipede - Venoshock - TM09
  (545, 54500, 474, 13, NULL, 2, NULL, NULL, 13002009, NULL, 22),
  -- Scolipede - Hidden Power - TM10
  (545, 54500, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 23),
  -- Scolipede - Sunny Day - TM11
  (545, 54500, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 24),
  -- Scolipede - Hyper Beam - TM15
  (545, 54500, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 25),
  -- Scolipede - Protect - TM17
  (545, 54500, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 26),
  -- Scolipede - Frustration - TM21
  (545, 54500, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 27),
  -- Scolipede - Solar Beam - TM22
  (545, 54500, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 28),
  -- Scolipede - Earthquake - TM26
  (545, 54500, 89, 13, NULL, 2, NULL, NULL, 13002026, NULL, 29),
  -- Scolipede - Return - TM27
  (545, 54500, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 30),
  -- Scolipede - Dig - TM28
  (545, 54500, 91, 13, NULL, 2, NULL, NULL, 13002028, NULL, 31),
  -- Scolipede - Double Team - TM32
  (545, 54500, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 32),
  -- Scolipede - Sludge Bomb - TM36
  (545, 54500, 188, 13, NULL, 2, NULL, NULL, 13002036, NULL, 33),
  -- Scolipede - Rock Tomb - TM39
  (545, 54500, 317, 13, NULL, 2, NULL, NULL, 13002039, NULL, 34),
  -- Scolipede - Facade - TM42
  (545, 54500, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 35),
  -- Scolipede - Rest - TM44
  (545, 54500, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 36),
  -- Scolipede - Attract - TM45
  (545, 54500, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 37),
  -- Scolipede - Round - TM48
  (545, 54500, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 38),
  -- Scolipede - Payback - TM66
  (545, 54500, 371, 13, NULL, 2, NULL, NULL, 13002066, NULL, 39),
  -- Scolipede - Giga Impact - TM68
  (545, 54500, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 40),
  -- Scolipede - Gyro Ball - TM74
  (545, 54500, 360, 13, NULL, 2, NULL, NULL, 13002074, NULL, 41),
  -- Scolipede - Swords Dance - TM75
  (545, 54500, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 42),
  -- Scolipede - Struggle Bug - TM76
  (545, 54500, 522, 13, NULL, 2, NULL, NULL, 13002076, NULL, 43),
  -- Scolipede - Bulldoze - TM78
  (545, 54500, 523, 13, NULL, 2, NULL, NULL, 13002078, NULL, 44),
  -- Scolipede - Rock Slide - TM80
  (545, 54500, 157, 13, NULL, 2, NULL, NULL, 13002080, NULL, 45),
  -- Scolipede - X-Scissor - TM81
  (545, 54500, 404, 13, NULL, 2, NULL, NULL, 13002081, NULL, 46),
  -- Scolipede - Infestation - TM83
  (545, 54500, 611, 13, NULL, 2, NULL, NULL, 13002083, NULL, 47),
  -- Scolipede - Poison Jab - TM84
  (545, 54500, 398, 13, NULL, 2, NULL, NULL, 13002084, NULL, 48),
  -- Scolipede - Swagger - TM87
  (545, 54500, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 49),
  -- Scolipede - Sleep Talk - TM88
  (545, 54500, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 50),
  -- Scolipede - Substitute - TM90
  (545, 54500, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 51),
  -- Scolipede - Rock Smash - TM94
  (545, 54500, 249, 13, NULL, 2, NULL, NULL, 13002094, NULL, 52),
  -- Scolipede - Confide - TM100
  (545, 54500, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 53),
  -- Scolipede - Cut - HM01
  (545, 54500, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 54),
  -- Scolipede - Strength - HM04
  (545, 54500, 70, 13, NULL, 3, NULL, NULL, 13003004, NULL, 55),
  -- Cottonee - Absorb - Level 1
  (546, 54600, 71, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cottonee - Fairy Wind - Level 1
  (546, 54600, 584, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cottonee - Growth - Level 4
  (546, 54600, 74, 13, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Cottonee - Leech Seed - Level 8
  (546, 54600, 73, 13, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Cottonee - Stun Spore - Level 10
  (546, 54600, 78, 13, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Cottonee - Mega Drain - Level 13
  (546, 54600, 72, 13, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Cottonee - Cotton Spore - Level 17
  (546, 54600, 178, 13, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Cottonee - Razor Leaf - Level 19
  (546, 54600, 75, 13, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Cottonee - Poison Powder - Level 22
  (546, 54600, 77, 13, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Cottonee - Giga Drain - Level 26
  (546, 54600, 202, 13, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Cottonee - Charm - Level 28
  (546, 54600, 204, 13, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Cottonee - Helping Hand - Level 31
  (546, 54600, 270, 13, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Cottonee - Energy Ball - Level 35
  (546, 54600, 412, 13, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Cottonee - Cotton Guard - Level 37
  (546, 54600, 538, 13, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Cottonee - Sunny Day - Level 40
  (546, 54600, 241, 13, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Cottonee - Endeavor - Level 44
  (546, 54600, 283, 13, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Cottonee - Solar Beam - Level 46
  (546, 54600, 76, 13, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Cottonee - Toxic - TM06
  (546, 54600, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 18),
  -- Cottonee - Hidden Power - TM10
  (546, 54600, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 19),
  -- Cottonee - Sunny Day - TM11
  (546, 54600, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 20),
  -- Cottonee - Taunt - TM12
  (546, 54600, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 21),
  -- Cottonee - Protect - TM17
  (546, 54600, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 22),
  -- Cottonee - Safeguard - TM20
  (546, 54600, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 23),
  -- Cottonee - Frustration - TM21
  (546, 54600, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 24),
  -- Cottonee - Solar Beam - TM22
  (546, 54600, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 25),
  -- Cottonee - Return - TM27
  (546, 54600, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 26),
  -- Cottonee - Double Team - TM32
  (546, 54600, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 27),
  -- Cottonee - Facade - TM42
  (546, 54600, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 28),
  -- Cottonee - Rest - TM44
  (546, 54600, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 29),
  -- Cottonee - Attract - TM45
  (546, 54600, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 30),
  -- Cottonee - Round - TM48
  (546, 54600, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 31),
  -- Cottonee - Energy Ball - TM53
  (546, 54600, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 32),
  -- Cottonee - Flash - TM70
  (546, 54600, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 33),
  -- Cottonee - Dream Eater - TM85
  (546, 54600, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 34),
  -- Cottonee - Grass Knot - TM86
  (546, 54600, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 35),
  -- Cottonee - Swagger - TM87
  (546, 54600, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 36),
  -- Cottonee - Sleep Talk - TM88
  (546, 54600, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 37),
  -- Cottonee - Substitute - TM90
  (546, 54600, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 38),
  -- Cottonee - Nature Power - TM96
  (546, 54600, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 39),
  -- Cottonee - Dazzling Gleam - TM99
  (546, 54600, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 40),
  -- Cottonee - Confide - TM100
  (546, 54600, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 41),
  -- Cottonee - Encore - Egg
  (546, 54600, 227, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Cottonee - Beat Up - Egg
  (546, 54600, 251, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Cottonee - Memento - Egg
  (546, 54600, 262, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Cottonee - Fake Tears - Egg
  (546, 54600, 313, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Cottonee - Grass Whistle - Egg
  (546, 54600, 320, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Cottonee - Tickle - Egg
  (546, 54600, 321, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Cottonee - Natural Gift - Egg
  (546, 54600, 363, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Cottonee - Worry Seed - Egg
  (546, 54600, 388, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cottonee - Switcheroo - Egg
  (546, 54600, 415, 13, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Cottonee - Captivate - Egg
  (546, 54600, 445, 13, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Whimsicott - Mega Drain - Level 1
  (547, 54700, 72, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Whimsicott - Leech Seed - Level 1
  (547, 54700, 73, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Whimsicott - Growth - Level 1
  (547, 54700, 74, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Whimsicott - Cotton Spore - Level 1
  (547, 54700, 178, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Whimsicott - Gust - Level 10
  (547, 54700, 16, 13, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Whimsicott - Tailwind - Level 28
  (547, 54700, 366, 13, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Whimsicott - Hurricane - Level 46
  (547, 54700, 542, 13, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Whimsicott - Moonblast - Level 50
  (547, 54700, 585, 13, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Whimsicott - Toxic - TM06
  (547, 54700, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 9),
  -- Whimsicott - Hidden Power - TM10
  (547, 54700, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 10),
  -- Whimsicott - Sunny Day - TM11
  (547, 54700, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 11),
  -- Whimsicott - Taunt - TM12
  (547, 54700, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 12),
  -- Whimsicott - Hyper Beam - TM15
  (547, 54700, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 13),
  -- Whimsicott - Light Screen - TM16
  (547, 54700, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 14),
  -- Whimsicott - Protect - TM17
  (547, 54700, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 15),
  -- Whimsicott - Safeguard - TM20
  (547, 54700, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 16),
  -- Whimsicott - Frustration - TM21
  (547, 54700, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 17),
  -- Whimsicott - Solar Beam - TM22
  (547, 54700, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 18),
  -- Whimsicott - Return - TM27
  (547, 54700, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 19),
  -- Whimsicott - Psychic - TM29
  (547, 54700, 94, 13, NULL, 2, NULL, NULL, 13002029, NULL, 20),
  -- Whimsicott - Shadow Ball - TM30
  (547, 54700, 247, 13, NULL, 2, NULL, NULL, 13002030, NULL, 21),
  -- Whimsicott - Double Team - TM32
  (547, 54700, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 22),
  -- Whimsicott - Facade - TM42
  (547, 54700, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 23),
  -- Whimsicott - Rest - TM44
  (547, 54700, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 24),
  -- Whimsicott - Attract - TM45
  (547, 54700, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 25),
  -- Whimsicott - Thief - TM46
  (547, 54700, 168, 13, NULL, 2, NULL, NULL, 13002046, NULL, 26),
  -- Whimsicott - Round - TM48
  (547, 54700, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 27),
  -- Whimsicott - Energy Ball - TM53
  (547, 54700, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 28),
  -- Whimsicott - Fling - TM56
  (547, 54700, 374, 13, NULL, 2, NULL, NULL, 13002056, NULL, 29),
  -- Whimsicott - Giga Impact - TM68
  (547, 54700, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 30),
  -- Whimsicott - Flash - TM70
  (547, 54700, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 31),
  -- Whimsicott - Dream Eater - TM85
  (547, 54700, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 32),
  -- Whimsicott - Grass Knot - TM86
  (547, 54700, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 33),
  -- Whimsicott - Swagger - TM87
  (547, 54700, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 34),
  -- Whimsicott - Sleep Talk - TM88
  (547, 54700, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 35),
  -- Whimsicott - U-turn - TM89
  (547, 54700, 369, 13, NULL, 2, NULL, NULL, 13002089, NULL, 36),
  -- Whimsicott - Substitute - TM90
  (547, 54700, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 37),
  -- Whimsicott - Trick Room - TM92
  (547, 54700, 433, 13, NULL, 2, NULL, NULL, 13002092, NULL, 38),
  -- Whimsicott - Nature Power - TM96
  (547, 54700, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 39),
  -- Whimsicott - Dazzling Gleam - TM99
  (547, 54700, 605, 13, NULL, 2, NULL, NULL, 13002099, NULL, 40),
  -- Whimsicott - Confide - TM100
  (547, 54700, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 41),
  -- Petilil - Absorb - Level 1
  (548, 54800, 71, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Petilil - Growth - Level 4
  (548, 54800, 74, 13, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Petilil - Leech Seed - Level 8
  (548, 54800, 73, 13, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Petilil - Sleep Powder - Level 10
  (548, 54800, 79, 13, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Petilil - Mega Drain - Level 13
  (548, 54800, 72, 13, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Petilil - Synthesis - Level 17
  (548, 54800, 235, 13, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Petilil - Magical Leaf - Level 19
  (548, 54800, 345, 13, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Petilil - Stun Spore - Level 22
  (548, 54800, 78, 13, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Petilil - Giga Drain - Level 26
  (548, 54800, 202, 13, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Petilil - Aromatherapy - Level 28
  (548, 54800, 312, 13, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Petilil - Helping Hand - Level 31
  (548, 54800, 270, 13, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Petilil - Energy Ball - Level 35
  (548, 54800, 412, 13, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Petilil - Entrainment - Level 37
  (548, 54800, 494, 13, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Petilil - Sunny Day - Level 40
  (548, 54800, 241, 13, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Petilil - After You - Level 44
  (548, 54800, 495, 13, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Petilil - Leaf Storm - Level 46
  (548, 54800, 437, 13, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Petilil - Toxic - TM06
  (548, 54800, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 17),
  -- Petilil - Hidden Power - TM10
  (548, 54800, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 18),
  -- Petilil - Sunny Day - TM11
  (548, 54800, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 19),
  -- Petilil - Protect - TM17
  (548, 54800, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 20),
  -- Petilil - Safeguard - TM20
  (548, 54800, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 21),
  -- Petilil - Frustration - TM21
  (548, 54800, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 22),
  -- Petilil - Solar Beam - TM22
  (548, 54800, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 23),
  -- Petilil - Return - TM27
  (548, 54800, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 24),
  -- Petilil - Double Team - TM32
  (548, 54800, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 25),
  -- Petilil - Facade - TM42
  (548, 54800, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 26),
  -- Petilil - Rest - TM44
  (548, 54800, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 27),
  -- Petilil - Attract - TM45
  (548, 54800, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 28),
  -- Petilil - Round - TM48
  (548, 54800, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 29),
  -- Petilil - Energy Ball - TM53
  (548, 54800, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 30),
  -- Petilil - Flash - TM70
  (548, 54800, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 31),
  -- Petilil - Dream Eater - TM85
  (548, 54800, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 32),
  -- Petilil - Grass Knot - TM86
  (548, 54800, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 33),
  -- Petilil - Swagger - TM87
  (548, 54800, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 34),
  -- Petilil - Sleep Talk - TM88
  (548, 54800, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 35),
  -- Petilil - Substitute - TM90
  (548, 54800, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 36),
  -- Petilil - Nature Power - TM96
  (548, 54800, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 37),
  -- Petilil - Confide - TM100
  (548, 54800, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 38),
  -- Petilil - Cut - HM01
  (548, 54800, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 39),
  -- Petilil - Bide - Egg
  (548, 54800, 117, 13, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Petilil - Endure - Egg
  (548, 54800, 203, 13, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Petilil - Charm - Egg
  (548, 54800, 204, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Petilil - Sweet Scent - Egg
  (548, 54800, 230, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Petilil - Ingrain - Egg
  (548, 54800, 275, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Petilil - Grass Whistle - Egg
  (548, 54800, 320, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Petilil - Healing Wish - Egg
  (548, 54800, 361, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Petilil - Natural Gift - Egg
  (548, 54800, 363, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Petilil - Worry Seed - Egg
  (548, 54800, 388, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Lilligant - Mega Drain - Level 1
  (549, 54900, 72, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lilligant - Leech Seed - Level 1
  (549, 54900, 73, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lilligant - Growth - Level 1
  (549, 54900, 74, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lilligant - Synthesis - Level 1
  (549, 54900, 235, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lilligant - Teeter Dance - Level 10
  (549, 54900, 298, 13, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Lilligant - Quiver Dance - Level 28
  (549, 54900, 483, 13, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Lilligant - Petal Dance - Level 46
  (549, 54900, 80, 13, NULL, 1, 46, NULL, NULL, NULL, 7),
  -- Lilligant - Petal Blizzard - Level 50
  (549, 54900, 572, 13, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Lilligant - Toxic - TM06
  (549, 54900, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 9),
  -- Lilligant - Hidden Power - TM10
  (549, 54900, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 10),
  -- Lilligant - Sunny Day - TM11
  (549, 54900, 241, 13, NULL, 2, NULL, NULL, 13002011, NULL, 11),
  -- Lilligant - Hyper Beam - TM15
  (549, 54900, 63, 13, NULL, 2, NULL, NULL, 13002015, NULL, 12),
  -- Lilligant - Light Screen - TM16
  (549, 54900, 113, 13, NULL, 2, NULL, NULL, 13002016, NULL, 13),
  -- Lilligant - Protect - TM17
  (549, 54900, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 14),
  -- Lilligant - Safeguard - TM20
  (549, 54900, 219, 13, NULL, 2, NULL, NULL, 13002020, NULL, 15),
  -- Lilligant - Frustration - TM21
  (549, 54900, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 16),
  -- Lilligant - Solar Beam - TM22
  (549, 54900, 76, 13, NULL, 2, NULL, NULL, 13002022, NULL, 17),
  -- Lilligant - Return - TM27
  (549, 54900, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 18),
  -- Lilligant - Double Team - TM32
  (549, 54900, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 19),
  -- Lilligant - Facade - TM42
  (549, 54900, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 20),
  -- Lilligant - Rest - TM44
  (549, 54900, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 21),
  -- Lilligant - Attract - TM45
  (549, 54900, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 22),
  -- Lilligant - Round - TM48
  (549, 54900, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 23),
  -- Lilligant - Energy Ball - TM53
  (549, 54900, 412, 13, NULL, 2, NULL, NULL, 13002053, NULL, 24),
  -- Lilligant - Giga Impact - TM68
  (549, 54900, 416, 13, NULL, 2, NULL, NULL, 13002068, NULL, 25),
  -- Lilligant - Flash - TM70
  (549, 54900, 148, 13, NULL, 2, NULL, NULL, 13002070, NULL, 26),
  -- Lilligant - Swords Dance - TM75
  (549, 54900, 14, 13, NULL, 2, NULL, NULL, 13002075, NULL, 27),
  -- Lilligant - Dream Eater - TM85
  (549, 54900, 138, 13, NULL, 2, NULL, NULL, 13002085, NULL, 28),
  -- Lilligant - Grass Knot - TM86
  (549, 54900, 447, 13, NULL, 2, NULL, NULL, 13002086, NULL, 29),
  -- Lilligant - Swagger - TM87
  (549, 54900, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 30),
  -- Lilligant - Sleep Talk - TM88
  (549, 54900, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 31),
  -- Lilligant - Substitute - TM90
  (549, 54900, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 32),
  -- Lilligant - Nature Power - TM96
  (549, 54900, 267, 13, NULL, 2, NULL, NULL, 13002096, NULL, 33),
  -- Lilligant - Confide - TM100
  (549, 54900, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 34),
  -- Lilligant - Cut - HM01
  (549, 54900, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 35),
  -- Basculin - Tackle - Level 1
  (550, 55000, 33, 13, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Basculin - Thrash - Level 1
  (550, 55000, 37, 13, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Basculin - Tail Whip - Level 1
  (550, 55000, 39, 13, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Basculin - Water Gun - Level 1
  (550, 55000, 55, 13, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Basculin - Flail - Level 1
  (550, 55000, 175, 13, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Basculin - Uproar - Level 4
  (550, 55000, 253, 13, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Basculin - Headbutt - Level 7
  (550, 55000, 29, 13, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Basculin - Bite - Level 10
  (550, 55000, 44, 13, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Basculin - Aqua Jet - Level 13
  (550, 55000, 453, 13, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Basculin - Chip Away - Level 16
  (550, 55000, 498, 13, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Basculin - Take Down - Level 20
  (550, 55000, 36, 13, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Basculin - Crunch - Level 24
  (550, 55000, 242, 13, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Basculin - Aqua Tail - Level 28
  (550, 55000, 401, 13, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Basculin - Soak - Level 32
  (550, 55000, 487, 13, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Basculin - Double-Edge - Level 36
  (550, 55000, 38, 13, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Basculin - Scary Face - Level 41
  (550, 55000, 184, 13, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Basculin - Flail - Level 46
  (550, 55000, 175, 13, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Basculin - Final Gambit - Level 50
  (550, 55000, 515, 13, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Basculin - Thrash - Level 56
  (550, 55000, 37, 13, NULL, 1, 56, NULL, NULL, NULL, 19),
  -- Basculin - Toxic - TM06
  (550, 55000, 92, 13, NULL, 2, NULL, NULL, 13002006, NULL, 20),
  -- Basculin - Hail - TM07
  (550, 55000, 258, 13, NULL, 2, NULL, NULL, 13002007, NULL, 21),
  -- Basculin - Hidden Power - TM10
  (550, 55000, 237, 13, NULL, 2, NULL, NULL, 13002010, NULL, 22),
  -- Basculin - Taunt - TM12
  (550, 55000, 269, 13, NULL, 2, NULL, NULL, 13002012, NULL, 23),
  -- Basculin - Ice Beam - TM13
  (550, 55000, 58, 13, NULL, 2, NULL, NULL, 13002013, NULL, 24),
  -- Basculin - Protect - TM17
  (550, 55000, 182, 13, NULL, 2, NULL, NULL, 13002017, NULL, 25),
  -- Basculin - Rain Dance - TM18
  (550, 55000, 240, 13, NULL, 2, NULL, NULL, 13002018, NULL, 26),
  -- Basculin - Frustration - TM21
  (550, 55000, 218, 13, NULL, 2, NULL, NULL, 13002021, NULL, 27),
  -- Basculin - Return - TM27
  (550, 55000, 216, 13, NULL, 2, NULL, NULL, 13002027, NULL, 28),
  -- Basculin - Double Team - TM32
  (550, 55000, 104, 13, NULL, 2, NULL, NULL, 13002032, NULL, 29),
  -- Basculin - Facade - TM42
  (550, 55000, 263, 13, NULL, 2, NULL, NULL, 13002042, NULL, 30),
  -- Basculin - Rest - TM44
  (550, 55000, 156, 13, NULL, 2, NULL, NULL, 13002044, NULL, 31),
  -- Basculin - Attract - TM45
  (550, 55000, 213, 13, NULL, 2, NULL, NULL, 13002045, NULL, 32),
  -- Basculin - Round - TM48
  (550, 55000, 496, 13, NULL, 2, NULL, NULL, 13002048, NULL, 33),
  -- Basculin - Scald - TM55
  (550, 55000, 503, 13, NULL, 2, NULL, NULL, 13002055, NULL, 34),
  -- Basculin - Swagger - TM87
  (550, 55000, 207, 13, NULL, 2, NULL, NULL, 13002087, NULL, 35),
  -- Basculin - Sleep Talk - TM88
  (550, 55000, 214, 13, NULL, 2, NULL, NULL, 13002088, NULL, 36),
  -- Basculin - Substitute - TM90
  (550, 55000, 164, 13, NULL, 2, NULL, NULL, 13002090, NULL, 37),
  -- Basculin - Confide - TM100
  (550, 55000, 590, 13, NULL, 2, NULL, NULL, 13002100, NULL, 38),
  -- Basculin - Cut - HM01
  (550, 55000, 15, 13, NULL, 3, NULL, NULL, 13003001, NULL, 39),
  -- Basculin - Surf - HM03
  (550, 55000, 57, 13, NULL, 3, NULL, NULL, 13003003, NULL, 40),
  -- Basculin - Waterfall - HM05
  (550, 55000, 127, 13, NULL, 3, NULL, NULL, 13003005, NULL, 41),
  -- Basculin - Bubble Beam - Egg
  (550, 55000, 61, 13, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Basculin - Agility - Egg
  (550, 55000, 97, 13, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Basculin - Rage - Egg
  (550, 55000, 99, 13, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Basculin - Swift - Egg
  (550, 55000, 129, 13, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Basculin - Whirlpool - Egg
  (550, 55000, 250, 13, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Basculin - Revenge - Egg
  (550, 55000, 279, 13, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Basculin - Muddy Water - Egg
  (550, 55000, 330, 13, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Basculin - Mud Shot - Egg
  (550, 55000, 341, 13, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Basculin - Brine - Egg
  (550, 55000, 362, 13, NULL, 5, NULL, NULL, NULL, NULL, 50);
