-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation IV Pokémon learnset raw pages, using HeartGold / SoulSilver
-- level columns, TM/HM compatibility rows, egg move rows, and tutor rows.
-- Cross-check: Serebii HeartGold / SoulSilver Pokedex learnset pages, Serebii HeartGold / SoulSilver
-- Move Tutor pages, and PokemonDB Generation 4 HeartGold / SoulSilver learnset pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_learnsets
-- Version Group: HeartGold / SoulSilver
-- Pokémon: #051-#100
-- Rows: 3151
-- Scope: level-up, TM, HM, egg move, and Move Tutor acquisition rows.
-- Event, transfer, and prior-evolution sections are intentionally excluded from
-- this HeartGold / SoulSilver seed.
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
)
VALUES
  -- Dugtrio - Scratch - Level 1
  (51, 5100, 10, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dugtrio - Sand Attack - Level 1
  (51, 5100, 28, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dugtrio - Growl - Level 1
  (51, 5100, 45, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dugtrio - Tri Attack - Level 1
  (51, 5100, 161, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dugtrio - Night Slash - Level 1
  (51, 5100, 400, 10, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dugtrio - Growl - Level 4
  (51, 5100, 45, 10, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Dugtrio - Astonish - Level 7
  (51, 5100, 310, 10, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Dugtrio - Magnitude - Level 12
  (51, 5100, 222, 10, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Dugtrio - Mud-Slap - Level 15
  (51, 5100, 189, 10, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Dugtrio - Dig - Level 18
  (51, 5100, 91, 10, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Dugtrio - Sucker Punch - Level 23
  (51, 5100, 389, 10, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Dugtrio - Sand Tomb - Level 26
  (51, 5100, 328, 10, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Dugtrio - Earth Power - Level 28
  (51, 5100, 414, 10, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Dugtrio - Mud Bomb - Level 33
  (51, 5100, 426, 10, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Dugtrio - Slash - Level 40
  (51, 5100, 163, 10, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Dugtrio - Earthquake - Level 45
  (51, 5100, 89, 10, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Dugtrio - Fissure - Level 50
  (51, 5100, 90, 10, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Dugtrio - Toxic - TM06
  (51, 5100, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 18),
  -- Dugtrio - Hidden Power - TM10
  (51, 5100, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 19),
  -- Dugtrio - Sunny Day - TM11
  (51, 5100, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 20),
  -- Dugtrio - Hyper Beam - TM15
  (51, 5100, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 21),
  -- Dugtrio - Protect - TM17
  (51, 5100, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 22),
  -- Dugtrio - Frustration - TM21
  (51, 5100, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 23),
  -- Dugtrio - Earthquake - TM26
  (51, 5100, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 24),
  -- Dugtrio - Return - TM27
  (51, 5100, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 25),
  -- Dugtrio - Dig - TM28
  (51, 5100, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 26),
  -- Dugtrio - Double Team - TM32
  (51, 5100, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 27),
  -- Dugtrio - Sludge Bomb - TM36
  (51, 5100, 188, 10, NULL, 2, NULL, NULL, 10002036, NULL, 28),
  -- Dugtrio - Sandstorm - TM37
  (51, 5100, 201, 10, NULL, 2, NULL, NULL, 10002037, NULL, 29),
  -- Dugtrio - Rock Tomb - TM39
  (51, 5100, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 30),
  -- Dugtrio - Aerial Ace - TM40
  (51, 5100, 332, 10, NULL, 2, NULL, NULL, 10002040, NULL, 31),
  -- Dugtrio - Facade - TM42
  (51, 5100, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 32),
  -- Dugtrio - Secret Power - TM43
  (51, 5100, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 33),
  -- Dugtrio - Rest - TM44
  (51, 5100, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 34),
  -- Dugtrio - Attract - TM45
  (51, 5100, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 35),
  -- Dugtrio - Thief - TM46
  (51, 5100, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 36),
  -- Dugtrio - Endure - TM58
  (51, 5100, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 37),
  -- Dugtrio - Shadow Claw - TM65
  (51, 5100, 421, 10, NULL, 2, NULL, NULL, 10002065, NULL, 38),
  -- Dugtrio - Giga Impact - TM68
  (51, 5100, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 39),
  -- Dugtrio - Stone Edge - TM71
  (51, 5100, 444, 10, NULL, 2, NULL, NULL, 10002071, NULL, 40),
  -- Dugtrio - Stealth Rock - TM76
  (51, 5100, 446, 10, NULL, 2, NULL, NULL, 10002076, NULL, 41),
  -- Dugtrio - Captivate - TM78
  (51, 5100, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 42),
  -- Dugtrio - Rock Slide - TM80
  (51, 5100, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 43),
  -- Dugtrio - Sleep Talk - TM82
  (51, 5100, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 44),
  -- Dugtrio - Natural Gift - TM83
  (51, 5100, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 45),
  -- Dugtrio - Swagger - TM87
  (51, 5100, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 46),
  -- Dugtrio - Substitute - TM90
  (51, 5100, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 47),
  -- Dugtrio - Cut - HM01
  (51, 5100, 15, 10, NULL, 3, NULL, NULL, 10003001, NULL, 48),
  -- Dugtrio - Rock Smash - HM06
  (51, 5100, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 49),
  -- Dugtrio - Snore - Tutor
  (51, 5100, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 50),
  -- Dugtrio - Mud-Slap - Tutor
  (51, 5100, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 51),
  -- Dugtrio - Sucker Punch - Tutor
  (51, 5100, 389, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 52),
  -- Dugtrio - Earth Power - Tutor
  (51, 5100, 414, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 53),
  -- Meowth - Scratch - Level 1
  (52, 5200, 10, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meowth - Growl - Level 1
  (52, 5200, 45, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meowth - Bite - Level 6
  (52, 5200, 44, 10, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Meowth - Fake Out - Level 9
  (52, 5200, 252, 10, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Meowth - Fury Swipes - Level 14
  (52, 5200, 154, 10, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Meowth - Screech - Level 17
  (52, 5200, 103, 10, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Meowth - Feint Attack - Level 22
  (52, 5200, 185, 10, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Meowth - Taunt - Level 25
  (52, 5200, 269, 10, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Meowth - Pay Day - Level 30
  (52, 5200, 6, 10, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Meowth - Slash - Level 33
  (52, 5200, 163, 10, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Meowth - Nasty Plot - Level 38
  (52, 5200, 417, 10, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Meowth - Assurance - Level 41
  (52, 5200, 372, 10, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Meowth - Captivate - Level 46
  (52, 5200, 445, 10, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Meowth - Night Slash - Level 49
  (52, 5200, 400, 10, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Meowth - Feint - Level 54
  (52, 5200, 364, 10, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Meowth - Water Pulse - TM03
  (52, 5200, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 16),
  -- Meowth - Toxic - TM06
  (52, 5200, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 17),
  -- Meowth - Hidden Power - TM10
  (52, 5200, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 18),
  -- Meowth - Sunny Day - TM11
  (52, 5200, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 19),
  -- Meowth - Taunt - TM12
  (52, 5200, 269, 10, NULL, 2, NULL, NULL, 10002012, NULL, 20),
  -- Meowth - Protect - TM17
  (52, 5200, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 21),
  -- Meowth - Rain Dance - TM18
  (52, 5200, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 22),
  -- Meowth - Frustration - TM21
  (52, 5200, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 23),
  -- Meowth - Iron Tail - TM23
  (52, 5200, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 24),
  -- Meowth - Thunderbolt - TM24
  (52, 5200, 85, 10, NULL, 2, NULL, NULL, 10002024, NULL, 25),
  -- Meowth - Thunder - TM25
  (52, 5200, 87, 10, NULL, 2, NULL, NULL, 10002025, NULL, 26),
  -- Meowth - Return - TM27
  (52, 5200, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 27),
  -- Meowth - Dig - TM28
  (52, 5200, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 28),
  -- Meowth - Shadow Ball - TM30
  (52, 5200, 247, 10, NULL, 2, NULL, NULL, 10002030, NULL, 29),
  -- Meowth - Double Team - TM32
  (52, 5200, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 30),
  -- Meowth - Shock Wave - TM34
  (52, 5200, 351, 10, NULL, 2, NULL, NULL, 10002034, NULL, 31),
  -- Meowth - Aerial Ace - TM40
  (52, 5200, 332, 10, NULL, 2, NULL, NULL, 10002040, NULL, 32),
  -- Meowth - Torment - TM41
  (52, 5200, 259, 10, NULL, 2, NULL, NULL, 10002041, NULL, 33),
  -- Meowth - Facade - TM42
  (52, 5200, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 34),
  -- Meowth - Secret Power - TM43
  (52, 5200, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 35),
  -- Meowth - Rest - TM44
  (52, 5200, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 36),
  -- Meowth - Attract - TM45
  (52, 5200, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 37),
  -- Meowth - Thief - TM46
  (52, 5200, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 38),
  -- Meowth - Snatch - TM49
  (52, 5200, 289, 10, NULL, 2, NULL, NULL, 10002049, NULL, 39),
  -- Meowth - Endure - TM58
  (52, 5200, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 40),
  -- Meowth - Shadow Claw - TM65
  (52, 5200, 421, 10, NULL, 2, NULL, NULL, 10002065, NULL, 41),
  -- Meowth - Payback - TM66
  (52, 5200, 371, 10, NULL, 2, NULL, NULL, 10002066, NULL, 42),
  -- Meowth - Flash - TM70
  (52, 5200, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 43),
  -- Meowth - Psych Up - TM77
  (52, 5200, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 44),
  -- Meowth - Captivate - TM78
  (52, 5200, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 45),
  -- Meowth - Dark Pulse - TM79
  (52, 5200, 399, 10, NULL, 2, NULL, NULL, 10002079, NULL, 46),
  -- Meowth - Sleep Talk - TM82
  (52, 5200, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 47),
  -- Meowth - Natural Gift - TM83
  (52, 5200, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 48),
  -- Meowth - Dream Eater - TM85
  (52, 5200, 138, 10, NULL, 2, NULL, NULL, 10002085, NULL, 49),
  -- Meowth - Swagger - TM87
  (52, 5200, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 50),
  -- Meowth - U-turn - TM89
  (52, 5200, 369, 10, NULL, 2, NULL, NULL, 10002089, NULL, 51),
  -- Meowth - Substitute - TM90
  (52, 5200, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 52),
  -- Meowth - Cut - HM01
  (52, 5200, 15, 10, NULL, 3, NULL, NULL, 10003001, NULL, 53),
  -- Meowth - Tail Whip - Egg
  (52, 5200, 39, 10, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Meowth - Hypnosis - Egg
  (52, 5200, 95, 10, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Meowth - Amnesia - Egg
  (52, 5200, 133, 10, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Meowth - Flail - Egg
  (52, 5200, 175, 10, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Meowth - Spite - Egg
  (52, 5200, 180, 10, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Meowth - Charm - Egg
  (52, 5200, 204, 10, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Meowth - Psych Up - Egg
  (52, 5200, 244, 10, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Meowth - Assist - Egg
  (52, 5200, 274, 10, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Meowth - Odor Sleuth - Egg
  (52, 5200, 316, 10, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Meowth - Punishment - Egg
  (52, 5200, 386, 10, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Meowth - Last Resort - Egg
  (52, 5200, 387, 10, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Meowth - Headbutt - Tutor
  (52, 5200, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Meowth - Swift - Tutor
  (52, 5200, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Meowth - Snore - Tutor
  (52, 5200, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Meowth - Spite - Tutor
  (52, 5200, 180, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Meowth - Mud-Slap - Tutor
  (52, 5200, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Meowth - Icy Wind - Tutor
  (52, 5200, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 70),
  -- Meowth - Uproar - Tutor
  (52, 5200, 253, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 71),
  -- Meowth - Knock Off - Tutor
  (52, 5200, 282, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 72),
  -- Meowth - Last Resort - Tutor
  (52, 5200, 387, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 73),
  -- Meowth - Seed Bomb - Tutor
  (52, 5200, 402, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 74),
  -- Meowth - Gunk Shot - Tutor
  (52, 5200, 441, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 75),
  -- Persian - Scratch - Level 1
  (53, 5300, 10, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Persian - Bite - Level 1
  (53, 5300, 44, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Persian - Growl - Level 1
  (53, 5300, 45, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Persian - Fake Out - Level 1
  (53, 5300, 252, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Persian - Switcheroo - Level 1
  (53, 5300, 415, 10, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Persian - Bite - Level 6
  (53, 5300, 44, 10, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Persian - Fake Out - Level 9
  (53, 5300, 252, 10, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Persian - Fury Swipes - Level 14
  (53, 5300, 154, 10, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Persian - Screech - Level 17
  (53, 5300, 103, 10, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Persian - Feint Attack - Level 22
  (53, 5300, 185, 10, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Persian - Taunt - Level 25
  (53, 5300, 269, 10, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Persian - Power Gem - Level 32
  (53, 5300, 408, 10, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Persian - Slash - Level 37
  (53, 5300, 163, 10, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Persian - Nasty Plot - Level 44
  (53, 5300, 417, 10, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Persian - Assurance - Level 49
  (53, 5300, 372, 10, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Persian - Captivate - Level 56
  (53, 5300, 445, 10, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Persian - Night Slash - Level 61
  (53, 5300, 400, 10, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Persian - Feint - Level 68
  (53, 5300, 364, 10, NULL, 1, 68, NULL, NULL, NULL, 18),
  -- Persian - Water Pulse - TM03
  (53, 5300, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 19),
  -- Persian - Roar - TM05
  (53, 5300, 46, 10, NULL, 2, NULL, NULL, 10002005, NULL, 20),
  -- Persian - Toxic - TM06
  (53, 5300, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 21),
  -- Persian - Hidden Power - TM10
  (53, 5300, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 22),
  -- Persian - Sunny Day - TM11
  (53, 5300, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 23),
  -- Persian - Taunt - TM12
  (53, 5300, 269, 10, NULL, 2, NULL, NULL, 10002012, NULL, 24),
  -- Persian - Hyper Beam - TM15
  (53, 5300, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 25),
  -- Persian - Protect - TM17
  (53, 5300, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 26),
  -- Persian - Rain Dance - TM18
  (53, 5300, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 27),
  -- Persian - Frustration - TM21
  (53, 5300, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 28),
  -- Persian - Iron Tail - TM23
  (53, 5300, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 29),
  -- Persian - Thunderbolt - TM24
  (53, 5300, 85, 10, NULL, 2, NULL, NULL, 10002024, NULL, 30),
  -- Persian - Thunder - TM25
  (53, 5300, 87, 10, NULL, 2, NULL, NULL, 10002025, NULL, 31),
  -- Persian - Return - TM27
  (53, 5300, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 32),
  -- Persian - Dig - TM28
  (53, 5300, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 33),
  -- Persian - Shadow Ball - TM30
  (53, 5300, 247, 10, NULL, 2, NULL, NULL, 10002030, NULL, 34),
  -- Persian - Double Team - TM32
  (53, 5300, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 35),
  -- Persian - Shock Wave - TM34
  (53, 5300, 351, 10, NULL, 2, NULL, NULL, 10002034, NULL, 36),
  -- Persian - Aerial Ace - TM40
  (53, 5300, 332, 10, NULL, 2, NULL, NULL, 10002040, NULL, 37),
  -- Persian - Torment - TM41
  (53, 5300, 259, 10, NULL, 2, NULL, NULL, 10002041, NULL, 38),
  -- Persian - Facade - TM42
  (53, 5300, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 39),
  -- Persian - Secret Power - TM43
  (53, 5300, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 40),
  -- Persian - Rest - TM44
  (53, 5300, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 41),
  -- Persian - Attract - TM45
  (53, 5300, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 42),
  -- Persian - Thief - TM46
  (53, 5300, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 43),
  -- Persian - Snatch - TM49
  (53, 5300, 289, 10, NULL, 2, NULL, NULL, 10002049, NULL, 44),
  -- Persian - Endure - TM58
  (53, 5300, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 45),
  -- Persian - Embargo - TM63
  (53, 5300, 373, 10, NULL, 2, NULL, NULL, 10002063, NULL, 46),
  -- Persian - Shadow Claw - TM65
  (53, 5300, 421, 10, NULL, 2, NULL, NULL, 10002065, NULL, 47),
  -- Persian - Payback - TM66
  (53, 5300, 371, 10, NULL, 2, NULL, NULL, 10002066, NULL, 48),
  -- Persian - Giga Impact - TM68
  (53, 5300, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 49),
  -- Persian - Flash - TM70
  (53, 5300, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 50),
  -- Persian - Psych Up - TM77
  (53, 5300, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 51),
  -- Persian - Captivate - TM78
  (53, 5300, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 52),
  -- Persian - Dark Pulse - TM79
  (53, 5300, 399, 10, NULL, 2, NULL, NULL, 10002079, NULL, 53),
  -- Persian - Sleep Talk - TM82
  (53, 5300, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 54),
  -- Persian - Natural Gift - TM83
  (53, 5300, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 55),
  -- Persian - Dream Eater - TM85
  (53, 5300, 138, 10, NULL, 2, NULL, NULL, 10002085, NULL, 56),
  -- Persian - Swagger - TM87
  (53, 5300, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 57),
  -- Persian - U-turn - TM89
  (53, 5300, 369, 10, NULL, 2, NULL, NULL, 10002089, NULL, 58),
  -- Persian - Substitute - TM90
  (53, 5300, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 59),
  -- Persian - Cut - HM01
  (53, 5300, 15, 10, NULL, 3, NULL, NULL, 10003001, NULL, 60),
  -- Persian - Headbutt - Tutor
  (53, 5300, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Persian - Swift - Tutor
  (53, 5300, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Persian - Snore - Tutor
  (53, 5300, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Persian - Spite - Tutor
  (53, 5300, 180, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Persian - Mud-Slap - Tutor
  (53, 5300, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Persian - Icy Wind - Tutor
  (53, 5300, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Persian - Uproar - Tutor
  (53, 5300, 253, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Persian - Knock Off - Tutor
  (53, 5300, 282, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Persian - Last Resort - Tutor
  (53, 5300, 387, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Persian - Seed Bomb - Tutor
  (53, 5300, 402, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 70),
  -- Persian - Gunk Shot - Tutor
  (53, 5300, 441, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 71),
  -- Psyduck - Scratch - Level 1
  (54, 5400, 10, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Psyduck - Water Sport - Level 1
  (54, 5400, 346, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Psyduck - Tail Whip - Level 5
  (54, 5400, 39, 10, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Psyduck - Water Gun - Level 9
  (54, 5400, 55, 10, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Psyduck - Disable - Level 14
  (54, 5400, 50, 10, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Psyduck - Confusion - Level 18
  (54, 5400, 93, 10, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Psyduck - Water Pulse - Level 22
  (54, 5400, 352, 10, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Psyduck - Fury Swipes - Level 27
  (54, 5400, 154, 10, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Psyduck - Screech - Level 31
  (54, 5400, 103, 10, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Psyduck - Psych Up - Level 35
  (54, 5400, 244, 10, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Psyduck - Zen Headbutt - Level 40
  (54, 5400, 428, 10, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Psyduck - Amnesia - Level 44
  (54, 5400, 133, 10, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Psyduck - Hydro Pump - Level 48
  (54, 5400, 56, 10, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Psyduck - Focus Punch - TM01
  (54, 5400, 264, 10, NULL, 2, NULL, NULL, 10002001, NULL, 14),
  -- Psyduck - Water Pulse - TM03
  (54, 5400, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 15),
  -- Psyduck - Calm Mind - TM04
  (54, 5400, 347, 10, NULL, 2, NULL, NULL, 10002004, NULL, 16),
  -- Psyduck - Toxic - TM06
  (54, 5400, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 17),
  -- Psyduck - Hail - TM07
  (54, 5400, 258, 10, NULL, 2, NULL, NULL, 10002007, NULL, 18),
  -- Psyduck - Hidden Power - TM10
  (54, 5400, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 19),
  -- Psyduck - Ice Beam - TM13
  (54, 5400, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 20),
  -- Psyduck - Blizzard - TM14
  (54, 5400, 59, 10, NULL, 2, NULL, NULL, 10002014, NULL, 21),
  -- Psyduck - Protect - TM17
  (54, 5400, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 22),
  -- Psyduck - Rain Dance - TM18
  (54, 5400, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 23),
  -- Psyduck - Frustration - TM21
  (54, 5400, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 24),
  -- Psyduck - Iron Tail - TM23
  (54, 5400, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 25),
  -- Psyduck - Return - TM27
  (54, 5400, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 26),
  -- Psyduck - Dig - TM28
  (54, 5400, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 27),
  -- Psyduck - Psychic - TM29
  (54, 5400, 94, 10, NULL, 2, NULL, NULL, 10002029, NULL, 28),
  -- Psyduck - Brick Break - TM31
  (54, 5400, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 29),
  -- Psyduck - Double Team - TM32
  (54, 5400, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 30),
  -- Psyduck - Aerial Ace - TM40
  (54, 5400, 332, 10, NULL, 2, NULL, NULL, 10002040, NULL, 31),
  -- Psyduck - Facade - TM42
  (54, 5400, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 32),
  -- Psyduck - Secret Power - TM43
  (54, 5400, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 33),
  -- Psyduck - Rest - TM44
  (54, 5400, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 34),
  -- Psyduck - Attract - TM45
  (54, 5400, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 35),
  -- Psyduck - Brine - TM55
  (54, 5400, 362, 10, NULL, 2, NULL, NULL, 10002055, NULL, 36),
  -- Psyduck - Fling - TM56
  (54, 5400, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 37),
  -- Psyduck - Endure - TM58
  (54, 5400, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 38),
  -- Psyduck - Shadow Claw - TM65
  (54, 5400, 421, 10, NULL, 2, NULL, NULL, 10002065, NULL, 39),
  -- Psyduck - Flash - TM70
  (54, 5400, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 40),
  -- Psyduck - Psych Up - TM77
  (54, 5400, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 41),
  -- Psyduck - Captivate - TM78
  (54, 5400, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 42),
  -- Psyduck - Sleep Talk - TM82
  (54, 5400, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 43),
  -- Psyduck - Natural Gift - TM83
  (54, 5400, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 44),
  -- Psyduck - Swagger - TM87
  (54, 5400, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 45),
  -- Psyduck - Substitute - TM90
  (54, 5400, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 46),
  -- Psyduck - Surf - HM03
  (54, 5400, 57, 10, NULL, 3, NULL, NULL, 10003003, NULL, 47),
  -- Psyduck - Strength - HM04
  (54, 5400, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 48),
  -- Psyduck - Whirlpool - HM05
  (54, 5400, 250, 10, NULL, 3, NULL, NULL, 10003005, NULL, 49),
  -- Psyduck - Rock Smash - HM06
  (54, 5400, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 50),
  -- Psyduck - Waterfall - HM07
  (54, 5400, 127, 10, NULL, 3, NULL, NULL, 10003007, NULL, 51),
  -- Psyduck - Psybeam - Egg
  (54, 5400, 60, 10, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Psyduck - Psychic - Egg
  (54, 5400, 94, 10, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Psyduck - Hypnosis - Egg
  (54, 5400, 95, 10, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Psyduck - Confuse Ray - Egg
  (54, 5400, 109, 10, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Psyduck - Light Screen - Egg
  (54, 5400, 113, 10, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Psyduck - Foresight - Egg
  (54, 5400, 193, 10, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Psyduck - Encore - Egg
  (54, 5400, 227, 10, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Psyduck - Cross Chop - Egg
  (54, 5400, 238, 10, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Psyduck - Future Sight - Egg
  (54, 5400, 248, 10, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Psyduck - Yawn - Egg
  (54, 5400, 281, 10, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Psyduck - Refresh - Egg
  (54, 5400, 287, 10, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Psyduck - Mud Bomb - Egg
  (54, 5400, 426, 10, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Psyduck - Ice Punch - Tutor
  (54, 5400, 8, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Psyduck - Headbutt - Tutor
  (54, 5400, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Psyduck - Swift - Tutor
  (54, 5400, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Psyduck - Snore - Tutor
  (54, 5400, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Psyduck - Mud-Slap - Tutor
  (54, 5400, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Psyduck - Icy Wind - Tutor
  (54, 5400, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Psyduck - Role Play - Tutor
  (54, 5400, 272, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 70),
  -- Psyduck - Dive - Tutor
  (54, 5400, 291, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 71),
  -- Psyduck - Signal Beam - Tutor
  (54, 5400, 324, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 72),
  -- Psyduck - Worry Seed - Tutor
  (54, 5400, 388, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 73),
  -- Psyduck - Aqua Tail - Tutor
  (54, 5400, 401, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 74),
  -- Psyduck - Zen Headbutt - Tutor
  (54, 5400, 428, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 75),
  -- Golduck - Scratch - Level 1
  (55, 5500, 10, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golduck - Tail Whip - Level 1
  (55, 5500, 39, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golduck - Water Gun - Level 1
  (55, 5500, 55, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golduck - Water Sport - Level 1
  (55, 5500, 346, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Golduck - Aqua Jet - Level 1
  (55, 5500, 453, 10, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Golduck - Tail Whip - Level 5
  (55, 5500, 39, 10, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Golduck - Water Gun - Level 9
  (55, 5500, 55, 10, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Golduck - Disable - Level 14
  (55, 5500, 50, 10, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Golduck - Confusion - Level 18
  (55, 5500, 93, 10, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Golduck - Water Pulse - Level 22
  (55, 5500, 352, 10, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Golduck - Fury Swipes - Level 27
  (55, 5500, 154, 10, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Golduck - Screech - Level 31
  (55, 5500, 103, 10, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Golduck - Psych Up - Level 37
  (55, 5500, 244, 10, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Golduck - Zen Headbutt - Level 44
  (55, 5500, 428, 10, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Golduck - Amnesia - Level 50
  (55, 5500, 133, 10, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Golduck - Hydro Pump - Level 56
  (55, 5500, 56, 10, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Golduck - Focus Punch - TM01
  (55, 5500, 264, 10, NULL, 2, NULL, NULL, 10002001, NULL, 17),
  -- Golduck - Water Pulse - TM03
  (55, 5500, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 18),
  -- Golduck - Calm Mind - TM04
  (55, 5500, 347, 10, NULL, 2, NULL, NULL, 10002004, NULL, 19),
  -- Golduck - Toxic - TM06
  (55, 5500, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 20),
  -- Golduck - Hail - TM07
  (55, 5500, 258, 10, NULL, 2, NULL, NULL, 10002007, NULL, 21),
  -- Golduck - Hidden Power - TM10
  (55, 5500, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 22),
  -- Golduck - Ice Beam - TM13
  (55, 5500, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 23),
  -- Golduck - Blizzard - TM14
  (55, 5500, 59, 10, NULL, 2, NULL, NULL, 10002014, NULL, 24),
  -- Golduck - Hyper Beam - TM15
  (55, 5500, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 25),
  -- Golduck - Protect - TM17
  (55, 5500, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 26),
  -- Golduck - Rain Dance - TM18
  (55, 5500, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 27),
  -- Golduck - Frustration - TM21
  (55, 5500, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 28),
  -- Golduck - Iron Tail - TM23
  (55, 5500, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 29),
  -- Golduck - Return - TM27
  (55, 5500, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 30),
  -- Golduck - Dig - TM28
  (55, 5500, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 31),
  -- Golduck - Psychic - TM29
  (55, 5500, 94, 10, NULL, 2, NULL, NULL, 10002029, NULL, 32),
  -- Golduck - Brick Break - TM31
  (55, 5500, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 33),
  -- Golduck - Double Team - TM32
  (55, 5500, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 34),
  -- Golduck - Aerial Ace - TM40
  (55, 5500, 332, 10, NULL, 2, NULL, NULL, 10002040, NULL, 35),
  -- Golduck - Facade - TM42
  (55, 5500, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 36),
  -- Golduck - Secret Power - TM43
  (55, 5500, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 37),
  -- Golduck - Rest - TM44
  (55, 5500, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 38),
  -- Golduck - Attract - TM45
  (55, 5500, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 39),
  -- Golduck - Focus Blast - TM52
  (55, 5500, 411, 10, NULL, 2, NULL, NULL, 10002052, NULL, 40),
  -- Golduck - Brine - TM55
  (55, 5500, 362, 10, NULL, 2, NULL, NULL, 10002055, NULL, 41),
  -- Golduck - Fling - TM56
  (55, 5500, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 42),
  -- Golduck - Endure - TM58
  (55, 5500, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 43),
  -- Golduck - Shadow Claw - TM65
  (55, 5500, 421, 10, NULL, 2, NULL, NULL, 10002065, NULL, 44),
  -- Golduck - Giga Impact - TM68
  (55, 5500, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 45),
  -- Golduck - Flash - TM70
  (55, 5500, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 46),
  -- Golduck - Psych Up - TM77
  (55, 5500, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 47),
  -- Golduck - Captivate - TM78
  (55, 5500, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 48),
  -- Golduck - Sleep Talk - TM82
  (55, 5500, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 49),
  -- Golduck - Natural Gift - TM83
  (55, 5500, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 50),
  -- Golduck - Swagger - TM87
  (55, 5500, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 51),
  -- Golduck - Substitute - TM90
  (55, 5500, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 52),
  -- Golduck - Surf - HM03
  (55, 5500, 57, 10, NULL, 3, NULL, NULL, 10003003, NULL, 53),
  -- Golduck - Strength - HM04
  (55, 5500, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 54),
  -- Golduck - Whirlpool - HM05
  (55, 5500, 250, 10, NULL, 3, NULL, NULL, 10003005, NULL, 55),
  -- Golduck - Rock Smash - HM06
  (55, 5500, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 56),
  -- Golduck - Waterfall - HM07
  (55, 5500, 127, 10, NULL, 3, NULL, NULL, 10003007, NULL, 57),
  -- Golduck - Rock Climb - HM08
  (55, 5500, 431, 10, NULL, 3, NULL, NULL, 10003008, NULL, 58),
  -- Golduck - Ice Punch - Tutor
  (55, 5500, 8, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Golduck - Headbutt - Tutor
  (55, 5500, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Golduck - Low Kick - Tutor
  (55, 5500, 67, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Golduck - Swift - Tutor
  (55, 5500, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Golduck - Snore - Tutor
  (55, 5500, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Golduck - Mud-Slap - Tutor
  (55, 5500, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Golduck - Icy Wind - Tutor
  (55, 5500, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Golduck - Fury Cutter - Tutor
  (55, 5500, 210, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Golduck - Role Play - Tutor
  (55, 5500, 272, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Golduck - Dive - Tutor
  (55, 5500, 291, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Golduck - Signal Beam - Tutor
  (55, 5500, 324, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Golduck - Worry Seed - Tutor
  (55, 5500, 388, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 70),
  -- Golduck - Aqua Tail - Tutor
  (55, 5500, 401, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 71),
  -- Golduck - Zen Headbutt - Tutor
  (55, 5500, 428, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 72),
  -- Mankey - Scratch - Level 1
  (56, 5600, 10, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mankey - Leer - Level 1
  (56, 5600, 43, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mankey - Low Kick - Level 1
  (56, 5600, 67, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mankey - Focus Energy - Level 1
  (56, 5600, 116, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mankey - Covet - Level 1
  (56, 5600, 343, 10, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mankey - Fury Swipes - Level 9
  (56, 5600, 154, 10, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Mankey - Karate Chop - Level 13
  (56, 5600, 2, 10, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Mankey - Seismic Toss - Level 17
  (56, 5600, 69, 10, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Mankey - Screech - Level 21
  (56, 5600, 103, 10, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Mankey - Assurance - Level 25
  (56, 5600, 372, 10, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Mankey - Swagger - Level 33
  (56, 5600, 207, 10, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Mankey - Cross Chop - Level 37
  (56, 5600, 238, 10, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Mankey - Thrash - Level 41
  (56, 5600, 37, 10, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Mankey - Punishment - Level 45
  (56, 5600, 386, 10, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Mankey - Close Combat - Level 49
  (56, 5600, 370, 10, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Mankey - Focus Punch - TM01
  (56, 5600, 264, 10, NULL, 2, NULL, NULL, 10002001, NULL, 16),
  -- Mankey - Toxic - TM06
  (56, 5600, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 17),
  -- Mankey - Bulk Up - TM08
  (56, 5600, 339, 10, NULL, 2, NULL, NULL, 10002008, NULL, 18),
  -- Mankey - Hidden Power - TM10
  (56, 5600, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 19),
  -- Mankey - Sunny Day - TM11
  (56, 5600, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 20),
  -- Mankey - Taunt - TM12
  (56, 5600, 269, 10, NULL, 2, NULL, NULL, 10002012, NULL, 21),
  -- Mankey - Protect - TM17
  (56, 5600, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 22),
  -- Mankey - Rain Dance - TM18
  (56, 5600, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 23),
  -- Mankey - Frustration - TM21
  (56, 5600, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 24),
  -- Mankey - Iron Tail - TM23
  (56, 5600, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 25),
  -- Mankey - Thunderbolt - TM24
  (56, 5600, 85, 10, NULL, 2, NULL, NULL, 10002024, NULL, 26),
  -- Mankey - Thunder - TM25
  (56, 5600, 87, 10, NULL, 2, NULL, NULL, 10002025, NULL, 27),
  -- Mankey - Earthquake - TM26
  (56, 5600, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 28),
  -- Mankey - Return - TM27
  (56, 5600, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 29),
  -- Mankey - Dig - TM28
  (56, 5600, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 30),
  -- Mankey - Brick Break - TM31
  (56, 5600, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 31),
  -- Mankey - Double Team - TM32
  (56, 5600, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 32),
  -- Mankey - Rock Tomb - TM39
  (56, 5600, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 33),
  -- Mankey - Aerial Ace - TM40
  (56, 5600, 332, 10, NULL, 2, NULL, NULL, 10002040, NULL, 34),
  -- Mankey - Facade - TM42
  (56, 5600, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 35),
  -- Mankey - Secret Power - TM43
  (56, 5600, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 36),
  -- Mankey - Rest - TM44
  (56, 5600, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 37),
  -- Mankey - Attract - TM45
  (56, 5600, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 38),
  -- Mankey - Thief - TM46
  (56, 5600, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 39),
  -- Mankey - Overheat - TM50
  (56, 5600, 315, 10, NULL, 2, NULL, NULL, 10002050, NULL, 40),
  -- Mankey - Focus Blast - TM52
  (56, 5600, 411, 10, NULL, 2, NULL, NULL, 10002052, NULL, 41),
  -- Mankey - Fling - TM56
  (56, 5600, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 42),
  -- Mankey - Endure - TM58
  (56, 5600, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 43),
  -- Mankey - Payback - TM66
  (56, 5600, 371, 10, NULL, 2, NULL, NULL, 10002066, NULL, 44),
  -- Mankey - Captivate - TM78
  (56, 5600, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 45),
  -- Mankey - Rock Slide - TM80
  (56, 5600, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 46),
  -- Mankey - Sleep Talk - TM82
  (56, 5600, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 47),
  -- Mankey - Natural Gift - TM83
  (56, 5600, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 48),
  -- Mankey - Poison Jab - TM84
  (56, 5600, 398, 10, NULL, 2, NULL, NULL, 10002084, NULL, 49),
  -- Mankey - Swagger - TM87
  (56, 5600, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 50),
  -- Mankey - U-turn - TM89
  (56, 5600, 369, 10, NULL, 2, NULL, NULL, 10002089, NULL, 51),
  -- Mankey - Substitute - TM90
  (56, 5600, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 52),
  -- Mankey - Strength - HM04
  (56, 5600, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 53),
  -- Mankey - Rock Smash - HM06
  (56, 5600, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 54),
  -- Mankey - Rock Climb - HM08
  (56, 5600, 431, 10, NULL, 3, NULL, NULL, 10003008, NULL, 55),
  -- Mankey - Counter - Egg
  (56, 5600, 68, 10, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Mankey - Meditate - Egg
  (56, 5600, 96, 10, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Mankey - Rock Slide - Egg
  (56, 5600, 157, 10, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Mankey - Reversal - Egg
  (56, 5600, 179, 10, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Mankey - Foresight - Egg
  (56, 5600, 193, 10, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Mankey - Encore - Egg
  (56, 5600, 227, 10, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Mankey - Beat Up - Egg
  (56, 5600, 251, 10, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Mankey - Smelling Salts - Egg
  (56, 5600, 265, 10, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Mankey - Revenge - Egg
  (56, 5600, 279, 10, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Mankey - Close Combat - Egg
  (56, 5600, 370, 10, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Mankey - Fire Punch - Tutor
  (56, 5600, 7, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Mankey - Ice Punch - Tutor
  (56, 5600, 8, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Mankey - Thunder Punch - Tutor
  (56, 5600, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Mankey - Headbutt - Tutor
  (56, 5600, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Mankey - Low Kick - Tutor
  (56, 5600, 67, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 70),
  -- Mankey - Swift - Tutor
  (56, 5600, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 71),
  -- Mankey - Spite - Tutor
  (56, 5600, 180, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 72),
  -- Mankey - Mud-Slap - Tutor
  (56, 5600, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 73),
  -- Mankey - Outrage - Tutor
  (56, 5600, 200, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 74),
  -- Mankey - Uproar - Tutor
  (56, 5600, 253, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 75),
  -- Mankey - Helping Hand - Tutor
  (56, 5600, 270, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 76),
  -- Mankey - Role Play - Tutor
  (56, 5600, 272, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 77),
  -- Mankey - Endeavor - Tutor
  (56, 5600, 283, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 78),
  -- Mankey - Seed Bomb - Tutor
  (56, 5600, 402, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 79),
  -- Mankey - Vacuum Wave - Tutor
  (56, 5600, 410, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 80),
  -- Mankey - Gunk Shot - Tutor
  (56, 5600, 441, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 81),
  -- Primeape - Scratch - Level 1
  (57, 5700, 10, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Primeape - Leer - Level 1
  (57, 5700, 43, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Primeape - Low Kick - Level 1
  (57, 5700, 67, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Primeape - Focus Energy - Level 1
  (57, 5700, 116, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Primeape - Fling - Level 1
  (57, 5700, 374, 10, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Primeape - Fury Swipes - Level 9
  (57, 5700, 154, 10, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Primeape - Karate Chop - Level 13
  (57, 5700, 2, 10, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Primeape - Seismic Toss - Level 17
  (57, 5700, 69, 10, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Primeape - Screech - Level 21
  (57, 5700, 103, 10, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Primeape - Assurance - Level 25
  (57, 5700, 372, 10, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Primeape - Rage - Level 28
  (57, 5700, 99, 10, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Primeape - Swagger - Level 35
  (57, 5700, 207, 10, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Primeape - Cross Chop - Level 41
  (57, 5700, 238, 10, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Primeape - Thrash - Level 47
  (57, 5700, 37, 10, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Primeape - Punishment - Level 53
  (57, 5700, 386, 10, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Primeape - Close Combat - Level 59
  (57, 5700, 370, 10, NULL, 1, 59, NULL, NULL, NULL, 16),
  -- Primeape - Focus Punch - TM01
  (57, 5700, 264, 10, NULL, 2, NULL, NULL, 10002001, NULL, 17),
  -- Primeape - Toxic - TM06
  (57, 5700, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 18),
  -- Primeape - Bulk Up - TM08
  (57, 5700, 339, 10, NULL, 2, NULL, NULL, 10002008, NULL, 19),
  -- Primeape - Hidden Power - TM10
  (57, 5700, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 20),
  -- Primeape - Sunny Day - TM11
  (57, 5700, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 21),
  -- Primeape - Taunt - TM12
  (57, 5700, 269, 10, NULL, 2, NULL, NULL, 10002012, NULL, 22),
  -- Primeape - Hyper Beam - TM15
  (57, 5700, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 23),
  -- Primeape - Protect - TM17
  (57, 5700, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 24),
  -- Primeape - Rain Dance - TM18
  (57, 5700, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 25),
  -- Primeape - Frustration - TM21
  (57, 5700, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 26),
  -- Primeape - Iron Tail - TM23
  (57, 5700, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 27),
  -- Primeape - Thunderbolt - TM24
  (57, 5700, 85, 10, NULL, 2, NULL, NULL, 10002024, NULL, 28),
  -- Primeape - Thunder - TM25
  (57, 5700, 87, 10, NULL, 2, NULL, NULL, 10002025, NULL, 29),
  -- Primeape - Earthquake - TM26
  (57, 5700, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 30),
  -- Primeape - Return - TM27
  (57, 5700, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 31),
  -- Primeape - Dig - TM28
  (57, 5700, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 32),
  -- Primeape - Brick Break - TM31
  (57, 5700, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 33),
  -- Primeape - Double Team - TM32
  (57, 5700, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 34),
  -- Primeape - Rock Tomb - TM39
  (57, 5700, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 35),
  -- Primeape - Aerial Ace - TM40
  (57, 5700, 332, 10, NULL, 2, NULL, NULL, 10002040, NULL, 36),
  -- Primeape - Facade - TM42
  (57, 5700, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 37),
  -- Primeape - Secret Power - TM43
  (57, 5700, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 38),
  -- Primeape - Rest - TM44
  (57, 5700, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 39),
  -- Primeape - Attract - TM45
  (57, 5700, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 40),
  -- Primeape - Thief - TM46
  (57, 5700, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 41),
  -- Primeape - Overheat - TM50
  (57, 5700, 315, 10, NULL, 2, NULL, NULL, 10002050, NULL, 42),
  -- Primeape - Focus Blast - TM52
  (57, 5700, 411, 10, NULL, 2, NULL, NULL, 10002052, NULL, 43),
  -- Primeape - Fling - TM56
  (57, 5700, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 44),
  -- Primeape - Endure - TM58
  (57, 5700, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 45),
  -- Primeape - Payback - TM66
  (57, 5700, 371, 10, NULL, 2, NULL, NULL, 10002066, NULL, 46),
  -- Primeape - Giga Impact - TM68
  (57, 5700, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 47),
  -- Primeape - Stone Edge - TM71
  (57, 5700, 444, 10, NULL, 2, NULL, NULL, 10002071, NULL, 48),
  -- Primeape - Captivate - TM78
  (57, 5700, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 49),
  -- Primeape - Rock Slide - TM80
  (57, 5700, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 50),
  -- Primeape - Sleep Talk - TM82
  (57, 5700, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 51),
  -- Primeape - Natural Gift - TM83
  (57, 5700, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 52),
  -- Primeape - Poison Jab - TM84
  (57, 5700, 398, 10, NULL, 2, NULL, NULL, 10002084, NULL, 53),
  -- Primeape - Swagger - TM87
  (57, 5700, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 54),
  -- Primeape - U-turn - TM89
  (57, 5700, 369, 10, NULL, 2, NULL, NULL, 10002089, NULL, 55),
  -- Primeape - Substitute - TM90
  (57, 5700, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 56),
  -- Primeape - Strength - HM04
  (57, 5700, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 57),
  -- Primeape - Rock Smash - HM06
  (57, 5700, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 58),
  -- Primeape - Rock Climb - HM08
  (57, 5700, 431, 10, NULL, 3, NULL, NULL, 10003008, NULL, 59),
  -- Primeape - Fire Punch - Tutor
  (57, 5700, 7, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Primeape - Ice Punch - Tutor
  (57, 5700, 8, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Primeape - Thunder Punch - Tutor
  (57, 5700, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Primeape - Headbutt - Tutor
  (57, 5700, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Primeape - Low Kick - Tutor
  (57, 5700, 67, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Primeape - Swift - Tutor
  (57, 5700, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Primeape - Spite - Tutor
  (57, 5700, 180, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Primeape - Mud-Slap - Tutor
  (57, 5700, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Primeape - Outrage - Tutor
  (57, 5700, 200, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Primeape - Uproar - Tutor
  (57, 5700, 253, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Primeape - Helping Hand - Tutor
  (57, 5700, 270, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 70),
  -- Primeape - Role Play - Tutor
  (57, 5700, 272, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 71),
  -- Primeape - Endeavor - Tutor
  (57, 5700, 283, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 72),
  -- Primeape - Seed Bomb - Tutor
  (57, 5700, 402, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 73),
  -- Primeape - Vacuum Wave - Tutor
  (57, 5700, 410, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 74),
  -- Primeape - Gunk Shot - Tutor
  (57, 5700, 441, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 75),
  -- Growlithe - Bite - Level 1
  (58, 5800, 44, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Growlithe - Roar - Level 1
  (58, 5800, 46, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Growlithe - Ember - Level 6
  (58, 5800, 52, 10, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Growlithe - Leer - Level 9
  (58, 5800, 43, 10, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Growlithe - Odor Sleuth - Level 14
  (58, 5800, 316, 10, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Growlithe - Helping Hand - Level 17
  (58, 5800, 270, 10, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Growlithe - Flame Wheel - Level 20
  (58, 5800, 172, 10, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Growlithe - Reversal - Level 25
  (58, 5800, 179, 10, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Growlithe - Fire Fang - Level 28
  (58, 5800, 424, 10, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Growlithe - Take Down - Level 31
  (58, 5800, 36, 10, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Growlithe - Flamethrower - Level 34
  (58, 5800, 53, 10, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Growlithe - Agility - Level 39
  (58, 5800, 97, 10, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Growlithe - Crunch - Level 42
  (58, 5800, 242, 10, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Growlithe - Heat Wave - Level 45
  (58, 5800, 257, 10, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Growlithe - Flare Blitz - Level 48
  (58, 5800, 394, 10, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Growlithe - Roar - TM05
  (58, 5800, 46, 10, NULL, 2, NULL, NULL, 10002005, NULL, 16),
  -- Growlithe - Toxic - TM06
  (58, 5800, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 17),
  -- Growlithe - Hidden Power - TM10
  (58, 5800, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 18),
  -- Growlithe - Sunny Day - TM11
  (58, 5800, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 19),
  -- Growlithe - Protect - TM17
  (58, 5800, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 20),
  -- Growlithe - Frustration - TM21
  (58, 5800, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 21),
  -- Growlithe - Iron Tail - TM23
  (58, 5800, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 22),
  -- Growlithe - Return - TM27
  (58, 5800, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 23),
  -- Growlithe - Dig - TM28
  (58, 5800, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 24),
  -- Growlithe - Double Team - TM32
  (58, 5800, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 25),
  -- Growlithe - Flamethrower - TM35
  (58, 5800, 53, 10, NULL, 2, NULL, NULL, 10002035, NULL, 26),
  -- Growlithe - Fire Blast - TM38
  (58, 5800, 126, 10, NULL, 2, NULL, NULL, 10002038, NULL, 27),
  -- Growlithe - Aerial Ace - TM40
  (58, 5800, 332, 10, NULL, 2, NULL, NULL, 10002040, NULL, 28),
  -- Growlithe - Facade - TM42
  (58, 5800, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 29),
  -- Growlithe - Secret Power - TM43
  (58, 5800, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 30),
  -- Growlithe - Rest - TM44
  (58, 5800, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 31),
  -- Growlithe - Attract - TM45
  (58, 5800, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 32),
  -- Growlithe - Thief - TM46
  (58, 5800, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 33),
  -- Growlithe - Overheat - TM50
  (58, 5800, 315, 10, NULL, 2, NULL, NULL, 10002050, NULL, 34),
  -- Growlithe - Endure - TM58
  (58, 5800, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 35),
  -- Growlithe - Will-O-Wisp - TM61
  (58, 5800, 261, 10, NULL, 2, NULL, NULL, 10002061, NULL, 36),
  -- Growlithe - Captivate - TM78
  (58, 5800, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 37),
  -- Growlithe - Sleep Talk - TM82
  (58, 5800, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 38),
  -- Growlithe - Natural Gift - TM83
  (58, 5800, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 39),
  -- Growlithe - Swagger - TM87
  (58, 5800, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 40),
  -- Growlithe - Substitute - TM90
  (58, 5800, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 41),
  -- Growlithe - Strength - HM04
  (58, 5800, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 42),
  -- Growlithe - Rock Smash - HM06
  (58, 5800, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 43),
  -- Growlithe - Body Slam - Egg
  (58, 5800, 34, 10, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Growlithe - Thrash - Egg
  (58, 5800, 37, 10, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Growlithe - Double-Edge - Egg
  (58, 5800, 38, 10, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Growlithe - Fire Spin - Egg
  (58, 5800, 83, 10, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Growlithe - Safeguard - Egg
  (58, 5800, 219, 10, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Growlithe - Morning Sun - Egg
  (58, 5800, 234, 10, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Growlithe - Crunch - Egg
  (58, 5800, 242, 10, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Growlithe - Heat Wave - Egg
  (58, 5800, 257, 10, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Growlithe - Howl - Egg
  (58, 5800, 336, 10, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Growlithe - Flare Blitz - Egg
  (58, 5800, 394, 10, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Growlithe - Headbutt - Tutor
  (58, 5800, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 54),
  -- Growlithe - Swift - Tutor
  (58, 5800, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Growlithe - Snore - Tutor
  (58, 5800, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Growlithe - Mud-Slap - Tutor
  (58, 5800, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Growlithe - Heat Wave - Tutor
  (58, 5800, 257, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Growlithe - Helping Hand - Tutor
  (58, 5800, 270, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Arcanine - Bite - Level 1
  (59, 5900, 44, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arcanine - Roar - Level 1
  (59, 5900, 46, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Arcanine - Odor Sleuth - Level 1
  (59, 5900, 316, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Arcanine - Thunder Fang - Level 1
  (59, 5900, 422, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Arcanine - Fire Fang - Level 1
  (59, 5900, 424, 10, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Arcanine - Extreme Speed - Level 39
  (59, 5900, 245, 10, NULL, 1, 39, NULL, NULL, NULL, 6),
  -- Arcanine - Roar - TM05
  (59, 5900, 46, 10, NULL, 2, NULL, NULL, 10002005, NULL, 7),
  -- Arcanine - Toxic - TM06
  (59, 5900, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 8),
  -- Arcanine - Hidden Power - TM10
  (59, 5900, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 9),
  -- Arcanine - Sunny Day - TM11
  (59, 5900, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 10),
  -- Arcanine - Hyper Beam - TM15
  (59, 5900, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 11),
  -- Arcanine - Protect - TM17
  (59, 5900, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 12),
  -- Arcanine - Frustration - TM21
  (59, 5900, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 13),
  -- Arcanine - Solar Beam - TM22
  (59, 5900, 76, 10, NULL, 2, NULL, NULL, 10002022, NULL, 14),
  -- Arcanine - Iron Tail - TM23
  (59, 5900, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 15),
  -- Arcanine - Return - TM27
  (59, 5900, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 16),
  -- Arcanine - Dig - TM28
  (59, 5900, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 17),
  -- Arcanine - Double Team - TM32
  (59, 5900, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 18),
  -- Arcanine - Flamethrower - TM35
  (59, 5900, 53, 10, NULL, 2, NULL, NULL, 10002035, NULL, 19),
  -- Arcanine - Fire Blast - TM38
  (59, 5900, 126, 10, NULL, 2, NULL, NULL, 10002038, NULL, 20),
  -- Arcanine - Aerial Ace - TM40
  (59, 5900, 332, 10, NULL, 2, NULL, NULL, 10002040, NULL, 21),
  -- Arcanine - Facade - TM42
  (59, 5900, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 22),
  -- Arcanine - Secret Power - TM43
  (59, 5900, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 23),
  -- Arcanine - Rest - TM44
  (59, 5900, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 24),
  -- Arcanine - Attract - TM45
  (59, 5900, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 25),
  -- Arcanine - Thief - TM46
  (59, 5900, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 26),
  -- Arcanine - Overheat - TM50
  (59, 5900, 315, 10, NULL, 2, NULL, NULL, 10002050, NULL, 27),
  -- Arcanine - Endure - TM58
  (59, 5900, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 28),
  -- Arcanine - Dragon Pulse - TM59
  (59, 5900, 406, 10, NULL, 2, NULL, NULL, 10002059, NULL, 29),
  -- Arcanine - Will-O-Wisp - TM61
  (59, 5900, 261, 10, NULL, 2, NULL, NULL, 10002061, NULL, 30),
  -- Arcanine - Giga Impact - TM68
  (59, 5900, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 31),
  -- Arcanine - Captivate - TM78
  (59, 5900, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 32),
  -- Arcanine - Sleep Talk - TM82
  (59, 5900, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 33),
  -- Arcanine - Natural Gift - TM83
  (59, 5900, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 34),
  -- Arcanine - Swagger - TM87
  (59, 5900, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 35),
  -- Arcanine - Substitute - TM90
  (59, 5900, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 36),
  -- Arcanine - Strength - HM04
  (59, 5900, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 37),
  -- Arcanine - Rock Smash - HM06
  (59, 5900, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 38),
  -- Arcanine - Rock Climb - HM08
  (59, 5900, 431, 10, NULL, 3, NULL, NULL, 10003008, NULL, 39),
  -- Arcanine - Headbutt - Tutor
  (59, 5900, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 40),
  -- Arcanine - Swift - Tutor
  (59, 5900, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 41),
  -- Arcanine - Snore - Tutor
  (59, 5900, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 42),
  -- Arcanine - Mud-Slap - Tutor
  (59, 5900, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 43),
  -- Arcanine - Heat Wave - Tutor
  (59, 5900, 257, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 44),
  -- Arcanine - Helping Hand - Tutor
  (59, 5900, 270, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 45),
  -- Arcanine - Iron Head - Tutor
  (59, 5900, 442, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 46),
  -- Poliwag - Water Sport - Level 1
  (60, 6000, 346, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poliwag - Bubble - Level 5
  (60, 6000, 145, 10, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Poliwag - Hypnosis - Level 8
  (60, 6000, 95, 10, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Poliwag - Water Gun - Level 11
  (60, 6000, 55, 10, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Poliwag - Double Slap - Level 15
  (60, 6000, 3, 10, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Poliwag - Rain Dance - Level 18
  (60, 6000, 240, 10, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Poliwag - Body Slam - Level 21
  (60, 6000, 34, 10, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Poliwag - Bubble Beam - Level 25
  (60, 6000, 61, 10, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Poliwag - Mud Shot - Level 28
  (60, 6000, 341, 10, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Poliwag - Belly Drum - Level 31
  (60, 6000, 187, 10, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Poliwag - Wake-Up Slap - Level 35
  (60, 6000, 358, 10, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Poliwag - Hydro Pump - Level 38
  (60, 6000, 56, 10, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Poliwag - Mud Bomb - Level 41
  (60, 6000, 426, 10, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Poliwag - Water Pulse - TM03
  (60, 6000, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 14),
  -- Poliwag - Toxic - TM06
  (60, 6000, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 15),
  -- Poliwag - Hail - TM07
  (60, 6000, 258, 10, NULL, 2, NULL, NULL, 10002007, NULL, 16),
  -- Poliwag - Hidden Power - TM10
  (60, 6000, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 17),
  -- Poliwag - Ice Beam - TM13
  (60, 6000, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 18),
  -- Poliwag - Blizzard - TM14
  (60, 6000, 59, 10, NULL, 2, NULL, NULL, 10002014, NULL, 19),
  -- Poliwag - Protect - TM17
  (60, 6000, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 20),
  -- Poliwag - Rain Dance - TM18
  (60, 6000, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 21),
  -- Poliwag - Frustration - TM21
  (60, 6000, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 22),
  -- Poliwag - Return - TM27
  (60, 6000, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 23),
  -- Poliwag - Dig - TM28
  (60, 6000, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 24),
  -- Poliwag - Psychic - TM29
  (60, 6000, 94, 10, NULL, 2, NULL, NULL, 10002029, NULL, 25),
  -- Poliwag - Double Team - TM32
  (60, 6000, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 26),
  -- Poliwag - Facade - TM42
  (60, 6000, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 27),
  -- Poliwag - Secret Power - TM43
  (60, 6000, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 28),
  -- Poliwag - Rest - TM44
  (60, 6000, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 29),
  -- Poliwag - Attract - TM45
  (60, 6000, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 30),
  -- Poliwag - Thief - TM46
  (60, 6000, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 31),
  -- Poliwag - Endure - TM58
  (60, 6000, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 32),
  -- Poliwag - Captivate - TM78
  (60, 6000, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 33),
  -- Poliwag - Sleep Talk - TM82
  (60, 6000, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 34),
  -- Poliwag - Natural Gift - TM83
  (60, 6000, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 35),
  -- Poliwag - Swagger - TM87
  (60, 6000, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 36),
  -- Poliwag - Substitute - TM90
  (60, 6000, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 37),
  -- Poliwag - Surf - HM03
  (60, 6000, 57, 10, NULL, 3, NULL, NULL, 10003003, NULL, 38),
  -- Poliwag - Whirlpool - HM05
  (60, 6000, 250, 10, NULL, 3, NULL, NULL, 10003005, NULL, 39),
  -- Poliwag - Waterfall - HM07
  (60, 6000, 127, 10, NULL, 3, NULL, NULL, 10003007, NULL, 40),
  -- Poliwag - Mist - Egg
  (60, 6000, 54, 10, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Poliwag - Bubble Beam - Egg
  (60, 6000, 61, 10, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Poliwag - Haze - Egg
  (60, 6000, 114, 10, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Poliwag - Splash - Egg
  (60, 6000, 150, 10, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Poliwag - Mind Reader - Egg
  (60, 6000, 170, 10, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Poliwag - Encore - Egg
  (60, 6000, 227, 10, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Poliwag - Endeavor - Egg
  (60, 6000, 283, 10, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Poliwag - Refresh - Egg
  (60, 6000, 287, 10, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Poliwag - Ice Ball - Egg
  (60, 6000, 301, 10, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Poliwag - Mud Shot - Egg
  (60, 6000, 341, 10, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Poliwag - Water Sport - Egg
  (60, 6000, 346, 10, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Poliwag - Headbutt - Tutor
  (60, 6000, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 52),
  -- Poliwag - Snore - Tutor
  (60, 6000, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 53),
  -- Poliwag - Icy Wind - Tutor
  (60, 6000, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 54),
  -- Poliwag - Helping Hand - Tutor
  (60, 6000, 270, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Poliwag - Dive - Tutor
  (60, 6000, 291, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Poliwhirl - Hypnosis - Level 1
  (61, 6100, 95, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poliwhirl - Bubble - Level 1
  (61, 6100, 145, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Poliwhirl - Water Sport - Level 1
  (61, 6100, 346, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Poliwhirl - Bubble - Level 5
  (61, 6100, 145, 10, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Poliwhirl - Hypnosis - Level 8
  (61, 6100, 95, 10, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Poliwhirl - Water Gun - Level 11
  (61, 6100, 55, 10, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Poliwhirl - Double Slap - Level 15
  (61, 6100, 3, 10, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Poliwhirl - Rain Dance - Level 18
  (61, 6100, 240, 10, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Poliwhirl - Body Slam - Level 21
  (61, 6100, 34, 10, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Poliwhirl - Bubble Beam - Level 27
  (61, 6100, 61, 10, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Poliwhirl - Mud Shot - Level 32
  (61, 6100, 341, 10, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Poliwhirl - Belly Drum - Level 37
  (61, 6100, 187, 10, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Poliwhirl - Wake-Up Slap - Level 43
  (61, 6100, 358, 10, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Poliwhirl - Hydro Pump - Level 48
  (61, 6100, 56, 10, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Poliwhirl - Mud Bomb - Level 53
  (61, 6100, 426, 10, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Poliwhirl - Focus Punch - TM01
  (61, 6100, 264, 10, NULL, 2, NULL, NULL, 10002001, NULL, 16),
  -- Poliwhirl - Water Pulse - TM03
  (61, 6100, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 17),
  -- Poliwhirl - Toxic - TM06
  (61, 6100, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 18),
  -- Poliwhirl - Hail - TM07
  (61, 6100, 258, 10, NULL, 2, NULL, NULL, 10002007, NULL, 19),
  -- Poliwhirl - Hidden Power - TM10
  (61, 6100, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 20),
  -- Poliwhirl - Ice Beam - TM13
  (61, 6100, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 21),
  -- Poliwhirl - Blizzard - TM14
  (61, 6100, 59, 10, NULL, 2, NULL, NULL, 10002014, NULL, 22),
  -- Poliwhirl - Protect - TM17
  (61, 6100, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 23),
  -- Poliwhirl - Rain Dance - TM18
  (61, 6100, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 24),
  -- Poliwhirl - Frustration - TM21
  (61, 6100, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 25),
  -- Poliwhirl - Earthquake - TM26
  (61, 6100, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 26),
  -- Poliwhirl - Return - TM27
  (61, 6100, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 27),
  -- Poliwhirl - Dig - TM28
  (61, 6100, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 28),
  -- Poliwhirl - Psychic - TM29
  (61, 6100, 94, 10, NULL, 2, NULL, NULL, 10002029, NULL, 29),
  -- Poliwhirl - Brick Break - TM31
  (61, 6100, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 30),
  -- Poliwhirl - Double Team - TM32
  (61, 6100, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 31),
  -- Poliwhirl - Facade - TM42
  (61, 6100, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 32),
  -- Poliwhirl - Secret Power - TM43
  (61, 6100, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 33),
  -- Poliwhirl - Rest - TM44
  (61, 6100, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 34),
  -- Poliwhirl - Attract - TM45
  (61, 6100, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 35),
  -- Poliwhirl - Thief - TM46
  (61, 6100, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 36),
  -- Poliwhirl - Fling - TM56
  (61, 6100, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 37),
  -- Poliwhirl - Endure - TM58
  (61, 6100, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 38),
  -- Poliwhirl - Captivate - TM78
  (61, 6100, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 39),
  -- Poliwhirl - Sleep Talk - TM82
  (61, 6100, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 40),
  -- Poliwhirl - Natural Gift - TM83
  (61, 6100, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 41),
  -- Poliwhirl - Swagger - TM87
  (61, 6100, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 42),
  -- Poliwhirl - Substitute - TM90
  (61, 6100, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 43),
  -- Poliwhirl - Surf - HM03
  (61, 6100, 57, 10, NULL, 3, NULL, NULL, 10003003, NULL, 44),
  -- Poliwhirl - Strength - HM04
  (61, 6100, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 45),
  -- Poliwhirl - Whirlpool - HM05
  (61, 6100, 250, 10, NULL, 3, NULL, NULL, 10003005, NULL, 46),
  -- Poliwhirl - Rock Smash - HM06
  (61, 6100, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 47),
  -- Poliwhirl - Waterfall - HM07
  (61, 6100, 127, 10, NULL, 3, NULL, NULL, 10003007, NULL, 48),
  -- Poliwhirl - Ice Punch - Tutor
  (61, 6100, 8, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 49),
  -- Poliwhirl - Headbutt - Tutor
  (61, 6100, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 50),
  -- Poliwhirl - Snore - Tutor
  (61, 6100, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 51),
  -- Poliwhirl - Mud-Slap - Tutor
  (61, 6100, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 52),
  -- Poliwhirl - Icy Wind - Tutor
  (61, 6100, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 53),
  -- Poliwhirl - Helping Hand - Tutor
  (61, 6100, 270, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 54),
  -- Poliwhirl - Dive - Tutor
  (61, 6100, 291, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Poliwrath - Double Slap - Level 1
  (62, 6200, 3, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poliwrath - Bubble Beam - Level 1
  (62, 6200, 61, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Poliwrath - Submission - Level 1
  (62, 6200, 66, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Poliwrath - Hypnosis - Level 1
  (62, 6200, 95, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Poliwrath - Dynamic Punch - Level 43
  (62, 6200, 223, 10, NULL, 1, 43, NULL, NULL, NULL, 5),
  -- Poliwrath - Mind Reader - Level 53
  (62, 6200, 170, 10, NULL, 1, 53, NULL, NULL, NULL, 6),
  -- Poliwrath - Focus Punch - TM01
  (62, 6200, 264, 10, NULL, 2, NULL, NULL, 10002001, NULL, 7),
  -- Poliwrath - Water Pulse - TM03
  (62, 6200, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 8),
  -- Poliwrath - Toxic - TM06
  (62, 6200, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 9),
  -- Poliwrath - Hail - TM07
  (62, 6200, 258, 10, NULL, 2, NULL, NULL, 10002007, NULL, 10),
  -- Poliwrath - Bulk Up - TM08
  (62, 6200, 339, 10, NULL, 2, NULL, NULL, 10002008, NULL, 11),
  -- Poliwrath - Hidden Power - TM10
  (62, 6200, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 12),
  -- Poliwrath - Ice Beam - TM13
  (62, 6200, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 13),
  -- Poliwrath - Blizzard - TM14
  (62, 6200, 59, 10, NULL, 2, NULL, NULL, 10002014, NULL, 14),
  -- Poliwrath - Hyper Beam - TM15
  (62, 6200, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 15),
  -- Poliwrath - Protect - TM17
  (62, 6200, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 16),
  -- Poliwrath - Rain Dance - TM18
  (62, 6200, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 17),
  -- Poliwrath - Frustration - TM21
  (62, 6200, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 18),
  -- Poliwrath - Earthquake - TM26
  (62, 6200, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 19),
  -- Poliwrath - Return - TM27
  (62, 6200, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 20),
  -- Poliwrath - Dig - TM28
  (62, 6200, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 21),
  -- Poliwrath - Psychic - TM29
  (62, 6200, 94, 10, NULL, 2, NULL, NULL, 10002029, NULL, 22),
  -- Poliwrath - Brick Break - TM31
  (62, 6200, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 23),
  -- Poliwrath - Double Team - TM32
  (62, 6200, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 24),
  -- Poliwrath - Rock Tomb - TM39
  (62, 6200, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 25),
  -- Poliwrath - Facade - TM42
  (62, 6200, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 26),
  -- Poliwrath - Secret Power - TM43
  (62, 6200, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 27),
  -- Poliwrath - Rest - TM44
  (62, 6200, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 28),
  -- Poliwrath - Attract - TM45
  (62, 6200, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 29),
  -- Poliwrath - Thief - TM46
  (62, 6200, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 30),
  -- Poliwrath - Focus Blast - TM52
  (62, 6200, 411, 10, NULL, 2, NULL, NULL, 10002052, NULL, 31),
  -- Poliwrath - Fling - TM56
  (62, 6200, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 32),
  -- Poliwrath - Endure - TM58
  (62, 6200, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 33),
  -- Poliwrath - Payback - TM66
  (62, 6200, 371, 10, NULL, 2, NULL, NULL, 10002066, NULL, 34),
  -- Poliwrath - Giga Impact - TM68
  (62, 6200, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 35),
  -- Poliwrath - Captivate - TM78
  (62, 6200, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 36),
  -- Poliwrath - Rock Slide - TM80
  (62, 6200, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 37),
  -- Poliwrath - Sleep Talk - TM82
  (62, 6200, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 38),
  -- Poliwrath - Natural Gift - TM83
  (62, 6200, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 39),
  -- Poliwrath - Poison Jab - TM84
  (62, 6200, 398, 10, NULL, 2, NULL, NULL, 10002084, NULL, 40),
  -- Poliwrath - Swagger - TM87
  (62, 6200, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 41),
  -- Poliwrath - Substitute - TM90
  (62, 6200, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 42),
  -- Poliwrath - Surf - HM03
  (62, 6200, 57, 10, NULL, 3, NULL, NULL, 10003003, NULL, 43),
  -- Poliwrath - Strength - HM04
  (62, 6200, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 44),
  -- Poliwrath - Whirlpool - HM05
  (62, 6200, 250, 10, NULL, 3, NULL, NULL, 10003005, NULL, 45),
  -- Poliwrath - Rock Smash - HM06
  (62, 6200, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 46),
  -- Poliwrath - Waterfall - HM07
  (62, 6200, 127, 10, NULL, 3, NULL, NULL, 10003007, NULL, 47),
  -- Poliwrath - Rock Climb - HM08
  (62, 6200, 431, 10, NULL, 3, NULL, NULL, 10003008, NULL, 48),
  -- Poliwrath - Ice Punch - Tutor
  (62, 6200, 8, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 49),
  -- Poliwrath - Headbutt - Tutor
  (62, 6200, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 50),
  -- Poliwrath - Snore - Tutor
  (62, 6200, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 51),
  -- Poliwrath - Mud-Slap - Tutor
  (62, 6200, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 52),
  -- Poliwrath - Icy Wind - Tutor
  (62, 6200, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 53),
  -- Poliwrath - Helping Hand - Tutor
  (62, 6200, 270, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 54),
  -- Poliwrath - Dive - Tutor
  (62, 6200, 291, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Poliwrath - Vacuum Wave - Tutor
  (62, 6200, 410, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Abra - Teleport - Level 1
  (63, 6300, 100, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Abra - Focus Punch - TM01
  (63, 6300, 264, 10, NULL, 2, NULL, NULL, 10002001, NULL, 2),
  -- Abra - Calm Mind - TM04
  (63, 6300, 347, 10, NULL, 2, NULL, NULL, 10002004, NULL, 3),
  -- Abra - Toxic - TM06
  (63, 6300, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 4),
  -- Abra - Hidden Power - TM10
  (63, 6300, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 5),
  -- Abra - Sunny Day - TM11
  (63, 6300, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 6),
  -- Abra - Taunt - TM12
  (63, 6300, 269, 10, NULL, 2, NULL, NULL, 10002012, NULL, 7),
  -- Abra - Light Screen - TM16
  (63, 6300, 113, 10, NULL, 2, NULL, NULL, 10002016, NULL, 8),
  -- Abra - Protect - TM17
  (63, 6300, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 9),
  -- Abra - Rain Dance - TM18
  (63, 6300, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 10),
  -- Abra - Safeguard - TM20
  (63, 6300, 219, 10, NULL, 2, NULL, NULL, 10002020, NULL, 11),
  -- Abra - Frustration - TM21
  (63, 6300, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 12),
  -- Abra - Iron Tail - TM23
  (63, 6300, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 13),
  -- Abra - Return - TM27
  (63, 6300, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 14),
  -- Abra - Psychic - TM29
  (63, 6300, 94, 10, NULL, 2, NULL, NULL, 10002029, NULL, 15),
  -- Abra - Shadow Ball - TM30
  (63, 6300, 247, 10, NULL, 2, NULL, NULL, 10002030, NULL, 16),
  -- Abra - Double Team - TM32
  (63, 6300, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 17),
  -- Abra - Reflect - TM33
  (63, 6300, 115, 10, NULL, 2, NULL, NULL, 10002033, NULL, 18),
  -- Abra - Shock Wave - TM34
  (63, 6300, 351, 10, NULL, 2, NULL, NULL, 10002034, NULL, 19),
  -- Abra - Torment - TM41
  (63, 6300, 259, 10, NULL, 2, NULL, NULL, 10002041, NULL, 20),
  -- Abra - Facade - TM42
  (63, 6300, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 21),
  -- Abra - Secret Power - TM43
  (63, 6300, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 22),
  -- Abra - Rest - TM44
  (63, 6300, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 23),
  -- Abra - Attract - TM45
  (63, 6300, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 24),
  -- Abra - Thief - TM46
  (63, 6300, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 25),
  -- Abra - Skill Swap - TM48
  (63, 6300, 285, 10, NULL, 2, NULL, NULL, 10002048, NULL, 26),
  -- Abra - Snatch - TM49
  (63, 6300, 289, 10, NULL, 2, NULL, NULL, 10002049, NULL, 27),
  -- Abra - Energy Ball - TM53
  (63, 6300, 412, 10, NULL, 2, NULL, NULL, 10002053, NULL, 28),
  -- Abra - Fling - TM56
  (63, 6300, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 29),
  -- Abra - Charge Beam - TM57
  (63, 6300, 451, 10, NULL, 2, NULL, NULL, 10002057, NULL, 30),
  -- Abra - Endure - TM58
  (63, 6300, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 31),
  -- Abra - Drain Punch - TM60
  (63, 6300, 409, 10, NULL, 2, NULL, NULL, 10002060, NULL, 32),
  -- Abra - Embargo - TM63
  (63, 6300, 373, 10, NULL, 2, NULL, NULL, 10002063, NULL, 33),
  -- Abra - Recycle - TM67
  (63, 6300, 278, 10, NULL, 2, NULL, NULL, 10002067, NULL, 34),
  -- Abra - Flash - TM70
  (63, 6300, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 35),
  -- Abra - Thunder Wave - TM73
  (63, 6300, 86, 10, NULL, 2, NULL, NULL, 10002073, NULL, 36),
  -- Abra - Psych Up - TM77
  (63, 6300, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 37),
  -- Abra - Captivate - TM78
  (63, 6300, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 38),
  -- Abra - Sleep Talk - TM82
  (63, 6300, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 39),
  -- Abra - Natural Gift - TM83
  (63, 6300, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 40),
  -- Abra - Dream Eater - TM85
  (63, 6300, 138, 10, NULL, 2, NULL, NULL, 10002085, NULL, 41),
  -- Abra - Grass Knot - TM86
  (63, 6300, 447, 10, NULL, 2, NULL, NULL, 10002086, NULL, 42),
  -- Abra - Swagger - TM87
  (63, 6300, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 43),
  -- Abra - Substitute - TM90
  (63, 6300, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 44),
  -- Abra - Trick Room - TM92
  (63, 6300, 433, 10, NULL, 2, NULL, NULL, 10002092, NULL, 45),
  -- Abra - Fire Punch - Egg
  (63, 6300, 7, 10, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Abra - Ice Punch - Egg
  (63, 6300, 8, 10, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Abra - Thunder Punch - Egg
  (63, 6300, 9, 10, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Abra - Barrier - Egg
  (63, 6300, 112, 10, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Abra - Encore - Egg
  (63, 6300, 227, 10, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Abra - Knock Off - Egg
  (63, 6300, 282, 10, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Abra - Power Trick - Egg
  (63, 6300, 379, 10, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Abra - Guard Swap - Egg
  (63, 6300, 385, 10, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Abra - Fire Punch - Tutor
  (63, 6300, 7, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 54),
  -- Abra - Ice Punch - Tutor
  (63, 6300, 8, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Abra - Thunder Punch - Tutor
  (63, 6300, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Abra - Headbutt - Tutor
  (63, 6300, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Abra - Snore - Tutor
  (63, 6300, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Abra - Trick - Tutor
  (63, 6300, 271, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Abra - Role Play - Tutor
  (63, 6300, 272, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Abra - Magic Coat - Tutor
  (63, 6300, 277, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Abra - Knock Off - Tutor
  (63, 6300, 282, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Abra - Signal Beam - Tutor
  (63, 6300, 324, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Abra - Gravity - Tutor
  (63, 6300, 356, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Abra - Zen Headbutt - Tutor
  (63, 6300, 428, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Kadabra - Confusion - Level 1
  (64, 6400, 93, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kadabra - Teleport - Level 1
  (64, 6400, 100, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kadabra - Kinesis - Level 1
  (64, 6400, 134, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kadabra - Confusion - Level 16
  (64, 6400, 93, 10, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Kadabra - Disable - Level 18
  (64, 6400, 50, 10, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Kadabra - Miracle Eye - Level 22
  (64, 6400, 357, 10, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Kadabra - Psybeam - Level 24
  (64, 6400, 60, 10, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Kadabra - Reflect - Level 28
  (64, 6400, 115, 10, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Kadabra - Recover - Level 30
  (64, 6400, 105, 10, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Kadabra - Psycho Cut - Level 34
  (64, 6400, 427, 10, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Kadabra - Role Play - Level 36
  (64, 6400, 272, 10, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Kadabra - Psychic - Level 40
  (64, 6400, 94, 10, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Kadabra - Future Sight - Level 42
  (64, 6400, 248, 10, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Kadabra - Trick - Level 46
  (64, 6400, 271, 10, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Kadabra - Focus Punch - TM01
  (64, 6400, 264, 10, NULL, 2, NULL, NULL, 10002001, NULL, 15),
  -- Kadabra - Calm Mind - TM04
  (64, 6400, 347, 10, NULL, 2, NULL, NULL, 10002004, NULL, 16),
  -- Kadabra - Toxic - TM06
  (64, 6400, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 17),
  -- Kadabra - Hidden Power - TM10
  (64, 6400, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 18),
  -- Kadabra - Sunny Day - TM11
  (64, 6400, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 19),
  -- Kadabra - Taunt - TM12
  (64, 6400, 269, 10, NULL, 2, NULL, NULL, 10002012, NULL, 20),
  -- Kadabra - Light Screen - TM16
  (64, 6400, 113, 10, NULL, 2, NULL, NULL, 10002016, NULL, 21),
  -- Kadabra - Protect - TM17
  (64, 6400, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 22),
  -- Kadabra - Rain Dance - TM18
  (64, 6400, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 23),
  -- Kadabra - Safeguard - TM20
  (64, 6400, 219, 10, NULL, 2, NULL, NULL, 10002020, NULL, 24),
  -- Kadabra - Frustration - TM21
  (64, 6400, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 25),
  -- Kadabra - Iron Tail - TM23
  (64, 6400, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 26),
  -- Kadabra - Return - TM27
  (64, 6400, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 27),
  -- Kadabra - Psychic - TM29
  (64, 6400, 94, 10, NULL, 2, NULL, NULL, 10002029, NULL, 28),
  -- Kadabra - Shadow Ball - TM30
  (64, 6400, 247, 10, NULL, 2, NULL, NULL, 10002030, NULL, 29),
  -- Kadabra - Double Team - TM32
  (64, 6400, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 30),
  -- Kadabra - Reflect - TM33
  (64, 6400, 115, 10, NULL, 2, NULL, NULL, 10002033, NULL, 31),
  -- Kadabra - Shock Wave - TM34
  (64, 6400, 351, 10, NULL, 2, NULL, NULL, 10002034, NULL, 32),
  -- Kadabra - Torment - TM41
  (64, 6400, 259, 10, NULL, 2, NULL, NULL, 10002041, NULL, 33),
  -- Kadabra - Facade - TM42
  (64, 6400, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 34),
  -- Kadabra - Secret Power - TM43
  (64, 6400, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 35),
  -- Kadabra - Rest - TM44
  (64, 6400, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 36),
  -- Kadabra - Attract - TM45
  (64, 6400, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 37),
  -- Kadabra - Thief - TM46
  (64, 6400, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 38),
  -- Kadabra - Skill Swap - TM48
  (64, 6400, 285, 10, NULL, 2, NULL, NULL, 10002048, NULL, 39),
  -- Kadabra - Snatch - TM49
  (64, 6400, 289, 10, NULL, 2, NULL, NULL, 10002049, NULL, 40),
  -- Kadabra - Energy Ball - TM53
  (64, 6400, 412, 10, NULL, 2, NULL, NULL, 10002053, NULL, 41),
  -- Kadabra - Fling - TM56
  (64, 6400, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 42),
  -- Kadabra - Charge Beam - TM57
  (64, 6400, 451, 10, NULL, 2, NULL, NULL, 10002057, NULL, 43),
  -- Kadabra - Endure - TM58
  (64, 6400, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 44),
  -- Kadabra - Drain Punch - TM60
  (64, 6400, 409, 10, NULL, 2, NULL, NULL, 10002060, NULL, 45),
  -- Kadabra - Embargo - TM63
  (64, 6400, 373, 10, NULL, 2, NULL, NULL, 10002063, NULL, 46),
  -- Kadabra - Recycle - TM67
  (64, 6400, 278, 10, NULL, 2, NULL, NULL, 10002067, NULL, 47),
  -- Kadabra - Flash - TM70
  (64, 6400, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 48),
  -- Kadabra - Thunder Wave - TM73
  (64, 6400, 86, 10, NULL, 2, NULL, NULL, 10002073, NULL, 49),
  -- Kadabra - Psych Up - TM77
  (64, 6400, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 50),
  -- Kadabra - Captivate - TM78
  (64, 6400, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 51),
  -- Kadabra - Sleep Talk - TM82
  (64, 6400, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 52),
  -- Kadabra - Natural Gift - TM83
  (64, 6400, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 53),
  -- Kadabra - Dream Eater - TM85
  (64, 6400, 138, 10, NULL, 2, NULL, NULL, 10002085, NULL, 54),
  -- Kadabra - Grass Knot - TM86
  (64, 6400, 447, 10, NULL, 2, NULL, NULL, 10002086, NULL, 55),
  -- Kadabra - Swagger - TM87
  (64, 6400, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 56),
  -- Kadabra - Substitute - TM90
  (64, 6400, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 57),
  -- Kadabra - Trick Room - TM92
  (64, 6400, 433, 10, NULL, 2, NULL, NULL, 10002092, NULL, 58),
  -- Kadabra - Fire Punch - Tutor
  (64, 6400, 7, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Kadabra - Ice Punch - Tutor
  (64, 6400, 8, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Kadabra - Thunder Punch - Tutor
  (64, 6400, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Kadabra - Headbutt - Tutor
  (64, 6400, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Kadabra - Snore - Tutor
  (64, 6400, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Kadabra - Trick - Tutor
  (64, 6400, 271, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Kadabra - Role Play - Tutor
  (64, 6400, 272, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Kadabra - Magic Coat - Tutor
  (64, 6400, 277, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Kadabra - Knock Off - Tutor
  (64, 6400, 282, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Kadabra - Signal Beam - Tutor
  (64, 6400, 324, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Kadabra - Gravity - Tutor
  (64, 6400, 356, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Kadabra - Zen Headbutt - Tutor
  (64, 6400, 428, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 70),
  -- Alakazam - Confusion - Level 1
  (65, 6500, 93, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alakazam - Teleport - Level 1
  (65, 6500, 100, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alakazam - Kinesis - Level 1
  (65, 6500, 134, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Alakazam - Confusion - Level 16
  (65, 6500, 93, 10, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Alakazam - Disable - Level 18
  (65, 6500, 50, 10, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Alakazam - Miracle Eye - Level 22
  (65, 6500, 357, 10, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Alakazam - Psybeam - Level 24
  (65, 6500, 60, 10, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Alakazam - Reflect - Level 28
  (65, 6500, 115, 10, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Alakazam - Recover - Level 30
  (65, 6500, 105, 10, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Alakazam - Psycho Cut - Level 34
  (65, 6500, 427, 10, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Alakazam - Calm Mind - Level 36
  (65, 6500, 347, 10, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Alakazam - Psychic - Level 40
  (65, 6500, 94, 10, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Alakazam - Future Sight - Level 42
  (65, 6500, 248, 10, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Alakazam - Trick - Level 46
  (65, 6500, 271, 10, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Alakazam - Focus Punch - TM01
  (65, 6500, 264, 10, NULL, 2, NULL, NULL, 10002001, NULL, 15),
  -- Alakazam - Calm Mind - TM04
  (65, 6500, 347, 10, NULL, 2, NULL, NULL, 10002004, NULL, 16),
  -- Alakazam - Toxic - TM06
  (65, 6500, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 17),
  -- Alakazam - Hidden Power - TM10
  (65, 6500, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 18),
  -- Alakazam - Sunny Day - TM11
  (65, 6500, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 19),
  -- Alakazam - Taunt - TM12
  (65, 6500, 269, 10, NULL, 2, NULL, NULL, 10002012, NULL, 20),
  -- Alakazam - Hyper Beam - TM15
  (65, 6500, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 21),
  -- Alakazam - Light Screen - TM16
  (65, 6500, 113, 10, NULL, 2, NULL, NULL, 10002016, NULL, 22),
  -- Alakazam - Protect - TM17
  (65, 6500, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 23),
  -- Alakazam - Rain Dance - TM18
  (65, 6500, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 24),
  -- Alakazam - Safeguard - TM20
  (65, 6500, 219, 10, NULL, 2, NULL, NULL, 10002020, NULL, 25),
  -- Alakazam - Frustration - TM21
  (65, 6500, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 26),
  -- Alakazam - Iron Tail - TM23
  (65, 6500, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 27),
  -- Alakazam - Return - TM27
  (65, 6500, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 28),
  -- Alakazam - Psychic - TM29
  (65, 6500, 94, 10, NULL, 2, NULL, NULL, 10002029, NULL, 29),
  -- Alakazam - Shadow Ball - TM30
  (65, 6500, 247, 10, NULL, 2, NULL, NULL, 10002030, NULL, 30),
  -- Alakazam - Double Team - TM32
  (65, 6500, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 31),
  -- Alakazam - Reflect - TM33
  (65, 6500, 115, 10, NULL, 2, NULL, NULL, 10002033, NULL, 32),
  -- Alakazam - Shock Wave - TM34
  (65, 6500, 351, 10, NULL, 2, NULL, NULL, 10002034, NULL, 33),
  -- Alakazam - Torment - TM41
  (65, 6500, 259, 10, NULL, 2, NULL, NULL, 10002041, NULL, 34),
  -- Alakazam - Facade - TM42
  (65, 6500, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 35),
  -- Alakazam - Secret Power - TM43
  (65, 6500, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 36),
  -- Alakazam - Rest - TM44
  (65, 6500, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 37),
  -- Alakazam - Attract - TM45
  (65, 6500, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 38),
  -- Alakazam - Thief - TM46
  (65, 6500, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 39),
  -- Alakazam - Skill Swap - TM48
  (65, 6500, 285, 10, NULL, 2, NULL, NULL, 10002048, NULL, 40),
  -- Alakazam - Snatch - TM49
  (65, 6500, 289, 10, NULL, 2, NULL, NULL, 10002049, NULL, 41),
  -- Alakazam - Focus Blast - TM52
  (65, 6500, 411, 10, NULL, 2, NULL, NULL, 10002052, NULL, 42),
  -- Alakazam - Energy Ball - TM53
  (65, 6500, 412, 10, NULL, 2, NULL, NULL, 10002053, NULL, 43),
  -- Alakazam - Fling - TM56
  (65, 6500, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 44),
  -- Alakazam - Charge Beam - TM57
  (65, 6500, 451, 10, NULL, 2, NULL, NULL, 10002057, NULL, 45),
  -- Alakazam - Endure - TM58
  (65, 6500, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 46),
  -- Alakazam - Drain Punch - TM60
  (65, 6500, 409, 10, NULL, 2, NULL, NULL, 10002060, NULL, 47),
  -- Alakazam - Embargo - TM63
  (65, 6500, 373, 10, NULL, 2, NULL, NULL, 10002063, NULL, 48),
  -- Alakazam - Recycle - TM67
  (65, 6500, 278, 10, NULL, 2, NULL, NULL, 10002067, NULL, 49),
  -- Alakazam - Giga Impact - TM68
  (65, 6500, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 50),
  -- Alakazam - Flash - TM70
  (65, 6500, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 51),
  -- Alakazam - Thunder Wave - TM73
  (65, 6500, 86, 10, NULL, 2, NULL, NULL, 10002073, NULL, 52),
  -- Alakazam - Psych Up - TM77
  (65, 6500, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 53),
  -- Alakazam - Captivate - TM78
  (65, 6500, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 54),
  -- Alakazam - Sleep Talk - TM82
  (65, 6500, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 55),
  -- Alakazam - Natural Gift - TM83
  (65, 6500, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 56),
  -- Alakazam - Dream Eater - TM85
  (65, 6500, 138, 10, NULL, 2, NULL, NULL, 10002085, NULL, 57),
  -- Alakazam - Grass Knot - TM86
  (65, 6500, 447, 10, NULL, 2, NULL, NULL, 10002086, NULL, 58),
  -- Alakazam - Swagger - TM87
  (65, 6500, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 59),
  -- Alakazam - Substitute - TM90
  (65, 6500, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 60),
  -- Alakazam - Trick Room - TM92
  (65, 6500, 433, 10, NULL, 2, NULL, NULL, 10002092, NULL, 61),
  -- Alakazam - Fire Punch - Tutor
  (65, 6500, 7, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Alakazam - Ice Punch - Tutor
  (65, 6500, 8, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Alakazam - Thunder Punch - Tutor
  (65, 6500, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Alakazam - Headbutt - Tutor
  (65, 6500, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Alakazam - Snore - Tutor
  (65, 6500, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Alakazam - Trick - Tutor
  (65, 6500, 271, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Alakazam - Role Play - Tutor
  (65, 6500, 272, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Alakazam - Magic Coat - Tutor
  (65, 6500, 277, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Alakazam - Knock Off - Tutor
  (65, 6500, 282, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 70),
  -- Alakazam - Signal Beam - Tutor
  (65, 6500, 324, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 71),
  -- Alakazam - Gravity - Tutor
  (65, 6500, 356, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 72),
  -- Alakazam - Zen Headbutt - Tutor
  (65, 6500, 428, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 73),
  -- Machop - Leer - Level 1
  (66, 6600, 43, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machop - Low Kick - Level 1
  (66, 6600, 67, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Machop - Focus Energy - Level 7
  (66, 6600, 116, 10, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Machop - Karate Chop - Level 10
  (66, 6600, 2, 10, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Machop - Foresight - Level 13
  (66, 6600, 193, 10, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Machop - Seismic Toss - Level 19
  (66, 6600, 69, 10, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Machop - Revenge - Level 22
  (66, 6600, 279, 10, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Machop - Vital Throw - Level 25
  (66, 6600, 233, 10, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Machop - Submission - Level 31
  (66, 6600, 66, 10, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Machop - Wake-Up Slap - Level 34
  (66, 6600, 358, 10, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Machop - Cross Chop - Level 37
  (66, 6600, 238, 10, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Machop - Scary Face - Level 43
  (66, 6600, 184, 10, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Machop - Dynamic Punch - Level 46
  (66, 6600, 223, 10, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Machop - Focus Punch - TM01
  (66, 6600, 264, 10, NULL, 2, NULL, NULL, 10002001, NULL, 14),
  -- Machop - Toxic - TM06
  (66, 6600, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 15),
  -- Machop - Bulk Up - TM08
  (66, 6600, 339, 10, NULL, 2, NULL, NULL, 10002008, NULL, 16),
  -- Machop - Hidden Power - TM10
  (66, 6600, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 17),
  -- Machop - Sunny Day - TM11
  (66, 6600, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 18),
  -- Machop - Protect - TM17
  (66, 6600, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 19),
  -- Machop - Rain Dance - TM18
  (66, 6600, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 20),
  -- Machop - Frustration - TM21
  (66, 6600, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 21),
  -- Machop - Earthquake - TM26
  (66, 6600, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 22),
  -- Machop - Return - TM27
  (66, 6600, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 23),
  -- Machop - Dig - TM28
  (66, 6600, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 24),
  -- Machop - Brick Break - TM31
  (66, 6600, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 25),
  -- Machop - Double Team - TM32
  (66, 6600, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 26),
  -- Machop - Flamethrower - TM35
  (66, 6600, 53, 10, NULL, 2, NULL, NULL, 10002035, NULL, 27),
  -- Machop - Fire Blast - TM38
  (66, 6600, 126, 10, NULL, 2, NULL, NULL, 10002038, NULL, 28),
  -- Machop - Rock Tomb - TM39
  (66, 6600, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 29),
  -- Machop - Facade - TM42
  (66, 6600, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 30),
  -- Machop - Secret Power - TM43
  (66, 6600, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 31),
  -- Machop - Rest - TM44
  (66, 6600, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 32),
  -- Machop - Attract - TM45
  (66, 6600, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 33),
  -- Machop - Thief - TM46
  (66, 6600, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 34),
  -- Machop - Focus Blast - TM52
  (66, 6600, 411, 10, NULL, 2, NULL, NULL, 10002052, NULL, 35),
  -- Machop - Fling - TM56
  (66, 6600, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 36),
  -- Machop - Endure - TM58
  (66, 6600, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 37),
  -- Machop - Payback - TM66
  (66, 6600, 371, 10, NULL, 2, NULL, NULL, 10002066, NULL, 38),
  -- Machop - Captivate - TM78
  (66, 6600, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 39),
  -- Machop - Rock Slide - TM80
  (66, 6600, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 40),
  -- Machop - Sleep Talk - TM82
  (66, 6600, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 41),
  -- Machop - Natural Gift - TM83
  (66, 6600, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 42),
  -- Machop - Poison Jab - TM84
  (66, 6600, 398, 10, NULL, 2, NULL, NULL, 10002084, NULL, 43),
  -- Machop - Swagger - TM87
  (66, 6600, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 44),
  -- Machop - Substitute - TM90
  (66, 6600, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 45),
  -- Machop - Strength - HM04
  (66, 6600, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 46),
  -- Machop - Rock Smash - HM06
  (66, 6600, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 47),
  -- Machop - Rock Climb - HM08
  (66, 6600, 431, 10, NULL, 3, NULL, NULL, 10003008, NULL, 48),
  -- Machop - Fire Punch - Egg
  (66, 6600, 7, 10, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Machop - Ice Punch - Egg
  (66, 6600, 8, 10, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Machop - Thunder Punch - Egg
  (66, 6600, 9, 10, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Machop - Rolling Kick - Egg
  (66, 6600, 27, 10, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Machop - Counter - Egg
  (66, 6600, 68, 10, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Machop - Meditate - Egg
  (66, 6600, 96, 10, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Machop - Light Screen - Egg
  (66, 6600, 113, 10, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Machop - Rock Slide - Egg
  (66, 6600, 157, 10, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Machop - Encore - Egg
  (66, 6600, 227, 10, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Machop - Smelling Salts - Egg
  (66, 6600, 265, 10, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Machop - Close Combat - Egg
  (66, 6600, 370, 10, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Machop - Power Trick - Egg
  (66, 6600, 379, 10, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Machop - Bullet Punch - Egg
  (66, 6600, 418, 10, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Machop - Fire Punch - Tutor
  (66, 6600, 7, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Machop - Ice Punch - Tutor
  (66, 6600, 8, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Machop - Thunder Punch - Tutor
  (66, 6600, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Machop - Headbutt - Tutor
  (66, 6600, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Machop - Low Kick - Tutor
  (66, 6600, 67, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Machop - Snore - Tutor
  (66, 6600, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Machop - Mud-Slap - Tutor
  (66, 6600, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Machop - Helping Hand - Tutor
  (66, 6600, 270, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Machop - Role Play - Tutor
  (66, 6600, 272, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 70),
  -- Machop - Superpower - Tutor
  (66, 6600, 276, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 71),
  -- Machop - Vacuum Wave - Tutor
  (66, 6600, 410, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 72),
  -- Machoke - Leer - Level 1
  (67, 6700, 43, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machoke - Low Kick - Level 1
  (67, 6700, 67, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Machoke - Focus Energy - Level 1
  (67, 6700, 116, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Machoke - Focus Energy - Level 7
  (67, 6700, 116, 10, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Machoke - Karate Chop - Level 10
  (67, 6700, 2, 10, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Machoke - Foresight - Level 13
  (67, 6700, 193, 10, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Machoke - Seismic Toss - Level 19
  (67, 6700, 69, 10, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Machoke - Revenge - Level 22
  (67, 6700, 279, 10, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Machoke - Vital Throw - Level 25
  (67, 6700, 233, 10, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Machoke - Submission - Level 32
  (67, 6700, 66, 10, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Machoke - Wake-Up Slap - Level 36
  (67, 6700, 358, 10, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Machoke - Cross Chop - Level 40
  (67, 6700, 238, 10, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Machoke - Scary Face - Level 44
  (67, 6700, 184, 10, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Machoke - Dynamic Punch - Level 51
  (67, 6700, 223, 10, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Machoke - Focus Punch - TM01
  (67, 6700, 264, 10, NULL, 2, NULL, NULL, 10002001, NULL, 15),
  -- Machoke - Toxic - TM06
  (67, 6700, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 16),
  -- Machoke - Bulk Up - TM08
  (67, 6700, 339, 10, NULL, 2, NULL, NULL, 10002008, NULL, 17),
  -- Machoke - Hidden Power - TM10
  (67, 6700, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 18),
  -- Machoke - Sunny Day - TM11
  (67, 6700, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 19),
  -- Machoke - Protect - TM17
  (67, 6700, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 20),
  -- Machoke - Rain Dance - TM18
  (67, 6700, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 21),
  -- Machoke - Frustration - TM21
  (67, 6700, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 22),
  -- Machoke - Earthquake - TM26
  (67, 6700, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 23),
  -- Machoke - Return - TM27
  (67, 6700, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 24),
  -- Machoke - Dig - TM28
  (67, 6700, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 25),
  -- Machoke - Brick Break - TM31
  (67, 6700, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 26),
  -- Machoke - Double Team - TM32
  (67, 6700, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 27),
  -- Machoke - Flamethrower - TM35
  (67, 6700, 53, 10, NULL, 2, NULL, NULL, 10002035, NULL, 28),
  -- Machoke - Fire Blast - TM38
  (67, 6700, 126, 10, NULL, 2, NULL, NULL, 10002038, NULL, 29),
  -- Machoke - Rock Tomb - TM39
  (67, 6700, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 30),
  -- Machoke - Facade - TM42
  (67, 6700, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 31),
  -- Machoke - Secret Power - TM43
  (67, 6700, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 32),
  -- Machoke - Rest - TM44
  (67, 6700, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 33),
  -- Machoke - Attract - TM45
  (67, 6700, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 34),
  -- Machoke - Thief - TM46
  (67, 6700, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 35),
  -- Machoke - Focus Blast - TM52
  (67, 6700, 411, 10, NULL, 2, NULL, NULL, 10002052, NULL, 36),
  -- Machoke - Fling - TM56
  (67, 6700, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 37),
  -- Machoke - Endure - TM58
  (67, 6700, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 38),
  -- Machoke - Payback - TM66
  (67, 6700, 371, 10, NULL, 2, NULL, NULL, 10002066, NULL, 39),
  -- Machoke - Captivate - TM78
  (67, 6700, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 40),
  -- Machoke - Rock Slide - TM80
  (67, 6700, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 41),
  -- Machoke - Sleep Talk - TM82
  (67, 6700, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 42),
  -- Machoke - Natural Gift - TM83
  (67, 6700, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 43),
  -- Machoke - Poison Jab - TM84
  (67, 6700, 398, 10, NULL, 2, NULL, NULL, 10002084, NULL, 44),
  -- Machoke - Swagger - TM87
  (67, 6700, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 45),
  -- Machoke - Substitute - TM90
  (67, 6700, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 46),
  -- Machoke - Strength - HM04
  (67, 6700, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 47),
  -- Machoke - Rock Smash - HM06
  (67, 6700, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 48),
  -- Machoke - Rock Climb - HM08
  (67, 6700, 431, 10, NULL, 3, NULL, NULL, 10003008, NULL, 49),
  -- Machoke - Fire Punch - Tutor
  (67, 6700, 7, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 50),
  -- Machoke - Ice Punch - Tutor
  (67, 6700, 8, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 51),
  -- Machoke - Thunder Punch - Tutor
  (67, 6700, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 52),
  -- Machoke - Headbutt - Tutor
  (67, 6700, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 53),
  -- Machoke - Low Kick - Tutor
  (67, 6700, 67, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 54),
  -- Machoke - Snore - Tutor
  (67, 6700, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Machoke - Mud-Slap - Tutor
  (67, 6700, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Machoke - Helping Hand - Tutor
  (67, 6700, 270, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Machoke - Role Play - Tutor
  (67, 6700, 272, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Machoke - Superpower - Tutor
  (67, 6700, 276, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Machoke - Vacuum Wave - Tutor
  (67, 6700, 410, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Machamp - Leer - Level 1
  (68, 6800, 43, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machamp - Low Kick - Level 1
  (68, 6800, 67, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Machamp - Focus Energy - Level 1
  (68, 6800, 116, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Machamp - Focus Energy - Level 7
  (68, 6800, 116, 10, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Machamp - Karate Chop - Level 10
  (68, 6800, 2, 10, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Machamp - Foresight - Level 13
  (68, 6800, 193, 10, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Machamp - Seismic Toss - Level 19
  (68, 6800, 69, 10, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Machamp - Revenge - Level 22
  (68, 6800, 279, 10, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Machamp - Vital Throw - Level 25
  (68, 6800, 233, 10, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Machamp - Submission - Level 32
  (68, 6800, 66, 10, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Machamp - Wake-Up Slap - Level 36
  (68, 6800, 358, 10, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Machamp - Cross Chop - Level 40
  (68, 6800, 238, 10, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Machamp - Scary Face - Level 44
  (68, 6800, 184, 10, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Machamp - Dynamic Punch - Level 51
  (68, 6800, 223, 10, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Machamp - Focus Punch - TM01
  (68, 6800, 264, 10, NULL, 2, NULL, NULL, 10002001, NULL, 15),
  -- Machamp - Toxic - TM06
  (68, 6800, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 16),
  -- Machamp - Bulk Up - TM08
  (68, 6800, 339, 10, NULL, 2, NULL, NULL, 10002008, NULL, 17),
  -- Machamp - Hidden Power - TM10
  (68, 6800, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 18),
  -- Machamp - Sunny Day - TM11
  (68, 6800, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 19),
  -- Machamp - Hyper Beam - TM15
  (68, 6800, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 20),
  -- Machamp - Protect - TM17
  (68, 6800, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 21),
  -- Machamp - Rain Dance - TM18
  (68, 6800, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 22),
  -- Machamp - Frustration - TM21
  (68, 6800, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 23),
  -- Machamp - Earthquake - TM26
  (68, 6800, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 24),
  -- Machamp - Return - TM27
  (68, 6800, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 25),
  -- Machamp - Dig - TM28
  (68, 6800, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 26),
  -- Machamp - Brick Break - TM31
  (68, 6800, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 27),
  -- Machamp - Double Team - TM32
  (68, 6800, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 28),
  -- Machamp - Flamethrower - TM35
  (68, 6800, 53, 10, NULL, 2, NULL, NULL, 10002035, NULL, 29),
  -- Machamp - Fire Blast - TM38
  (68, 6800, 126, 10, NULL, 2, NULL, NULL, 10002038, NULL, 30),
  -- Machamp - Rock Tomb - TM39
  (68, 6800, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 31),
  -- Machamp - Facade - TM42
  (68, 6800, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 32),
  -- Machamp - Secret Power - TM43
  (68, 6800, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 33),
  -- Machamp - Rest - TM44
  (68, 6800, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 34),
  -- Machamp - Attract - TM45
  (68, 6800, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 35),
  -- Machamp - Thief - TM46
  (68, 6800, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 36),
  -- Machamp - Focus Blast - TM52
  (68, 6800, 411, 10, NULL, 2, NULL, NULL, 10002052, NULL, 37),
  -- Machamp - Fling - TM56
  (68, 6800, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 38),
  -- Machamp - Endure - TM58
  (68, 6800, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 39),
  -- Machamp - Payback - TM66
  (68, 6800, 371, 10, NULL, 2, NULL, NULL, 10002066, NULL, 40),
  -- Machamp - Giga Impact - TM68
  (68, 6800, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 41),
  -- Machamp - Stone Edge - TM71
  (68, 6800, 444, 10, NULL, 2, NULL, NULL, 10002071, NULL, 42),
  -- Machamp - Captivate - TM78
  (68, 6800, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 43),
  -- Machamp - Rock Slide - TM80
  (68, 6800, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 44),
  -- Machamp - Sleep Talk - TM82
  (68, 6800, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 45),
  -- Machamp - Natural Gift - TM83
  (68, 6800, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 46),
  -- Machamp - Poison Jab - TM84
  (68, 6800, 398, 10, NULL, 2, NULL, NULL, 10002084, NULL, 47),
  -- Machamp - Swagger - TM87
  (68, 6800, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 48),
  -- Machamp - Substitute - TM90
  (68, 6800, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 49),
  -- Machamp - Strength - HM04
  (68, 6800, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 50),
  -- Machamp - Rock Smash - HM06
  (68, 6800, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 51),
  -- Machamp - Rock Climb - HM08
  (68, 6800, 431, 10, NULL, 3, NULL, NULL, 10003008, NULL, 52),
  -- Machamp - Fire Punch - Tutor
  (68, 6800, 7, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 53),
  -- Machamp - Ice Punch - Tutor
  (68, 6800, 8, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 54),
  -- Machamp - Thunder Punch - Tutor
  (68, 6800, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Machamp - Headbutt - Tutor
  (68, 6800, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Machamp - Low Kick - Tutor
  (68, 6800, 67, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Machamp - Snore - Tutor
  (68, 6800, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Machamp - Mud-Slap - Tutor
  (68, 6800, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Machamp - Helping Hand - Tutor
  (68, 6800, 270, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Machamp - Role Play - Tutor
  (68, 6800, 272, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Machamp - Superpower - Tutor
  (68, 6800, 276, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Machamp - Vacuum Wave - Tutor
  (68, 6800, 410, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Bellsprout - Vine Whip - Level 1
  (69, 6900, 22, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bellsprout - Growth - Level 7
  (69, 6900, 74, 10, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Bellsprout - Wrap - Level 11
  (69, 6900, 35, 10, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Bellsprout - Sleep Powder - Level 13
  (69, 6900, 79, 10, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Bellsprout - Poison Powder - Level 15
  (69, 6900, 77, 10, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Bellsprout - Stun Spore - Level 17
  (69, 6900, 78, 10, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Bellsprout - Acid - Level 23
  (69, 6900, 51, 10, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Bellsprout - Knock Off - Level 27
  (69, 6900, 282, 10, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Bellsprout - Sweet Scent - Level 29
  (69, 6900, 230, 10, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Bellsprout - Gastro Acid - Level 35
  (69, 6900, 380, 10, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Bellsprout - Razor Leaf - Level 39
  (69, 6900, 75, 10, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Bellsprout - Slam - Level 41
  (69, 6900, 21, 10, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Bellsprout - Wring Out - Level 47
  (69, 6900, 378, 10, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Bellsprout - Toxic - TM06
  (69, 6900, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 14),
  -- Bellsprout - Bullet Seed - TM09
  (69, 6900, 331, 10, NULL, 2, NULL, NULL, 10002009, NULL, 15),
  -- Bellsprout - Hidden Power - TM10
  (69, 6900, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 16),
  -- Bellsprout - Sunny Day - TM11
  (69, 6900, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 17),
  -- Bellsprout - Protect - TM17
  (69, 6900, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 18),
  -- Bellsprout - Giga Drain - TM19
  (69, 6900, 202, 10, NULL, 2, NULL, NULL, 10002019, NULL, 19),
  -- Bellsprout - Frustration - TM21
  (69, 6900, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 20),
  -- Bellsprout - Solar Beam - TM22
  (69, 6900, 76, 10, NULL, 2, NULL, NULL, 10002022, NULL, 21),
  -- Bellsprout - Return - TM27
  (69, 6900, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 22),
  -- Bellsprout - Double Team - TM32
  (69, 6900, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 23),
  -- Bellsprout - Sludge Bomb - TM36
  (69, 6900, 188, 10, NULL, 2, NULL, NULL, 10002036, NULL, 24),
  -- Bellsprout - Facade - TM42
  (69, 6900, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 25),
  -- Bellsprout - Secret Power - TM43
  (69, 6900, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 26),
  -- Bellsprout - Rest - TM44
  (69, 6900, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 27),
  -- Bellsprout - Attract - TM45
  (69, 6900, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 28),
  -- Bellsprout - Thief - TM46
  (69, 6900, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 29),
  -- Bellsprout - Energy Ball - TM53
  (69, 6900, 412, 10, NULL, 2, NULL, NULL, 10002053, NULL, 30),
  -- Bellsprout - Endure - TM58
  (69, 6900, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 31),
  -- Bellsprout - Flash - TM70
  (69, 6900, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 32),
  -- Bellsprout - Swords Dance - TM75
  (69, 6900, 14, 10, NULL, 2, NULL, NULL, 10002075, NULL, 33),
  -- Bellsprout - Captivate - TM78
  (69, 6900, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 34),
  -- Bellsprout - Sleep Talk - TM82
  (69, 6900, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 35),
  -- Bellsprout - Natural Gift - TM83
  (69, 6900, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 36),
  -- Bellsprout - Grass Knot - TM86
  (69, 6900, 447, 10, NULL, 2, NULL, NULL, 10002086, NULL, 37),
  -- Bellsprout - Swagger - TM87
  (69, 6900, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 38),
  -- Bellsprout - Substitute - TM90
  (69, 6900, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 39),
  -- Bellsprout - Cut - HM01
  (69, 6900, 15, 10, NULL, 3, NULL, NULL, 10003001, NULL, 40),
  -- Bellsprout - Swords Dance - Egg
  (69, 6900, 14, 10, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Bellsprout - Reflect - Egg
  (69, 6900, 115, 10, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Bellsprout - Leech Life - Egg
  (69, 6900, 141, 10, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Bellsprout - Encore - Egg
  (69, 6900, 227, 10, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Bellsprout - Synthesis - Egg
  (69, 6900, 235, 10, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Bellsprout - Ingrain - Egg
  (69, 6900, 275, 10, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Bellsprout - Weather Ball - Egg
  (69, 6900, 311, 10, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Bellsprout - Tickle - Egg
  (69, 6900, 321, 10, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Bellsprout - Magical Leaf - Egg
  (69, 6900, 345, 10, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Bellsprout - Worry Seed - Egg
  (69, 6900, 388, 10, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Bellsprout - Snore - Tutor
  (69, 6900, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 51),
  -- Bellsprout - Synthesis - Tutor
  (69, 6900, 235, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 52),
  -- Bellsprout - Knock Off - Tutor
  (69, 6900, 282, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 53),
  -- Bellsprout - Gastro Acid - Tutor
  (69, 6900, 380, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 54),
  -- Bellsprout - Worry Seed - Tutor
  (69, 6900, 388, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Bellsprout - Sucker Punch - Tutor
  (69, 6900, 389, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Bellsprout - Seed Bomb - Tutor
  (69, 6900, 402, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Weepinbell - Vine Whip - Level 1
  (70, 7000, 22, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weepinbell - Wrap - Level 1
  (70, 7000, 35, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Weepinbell - Growth - Level 1
  (70, 7000, 74, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Weepinbell - Growth - Level 7
  (70, 7000, 74, 10, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Weepinbell - Wrap - Level 11
  (70, 7000, 35, 10, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Weepinbell - Sleep Powder - Level 13
  (70, 7000, 79, 10, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Weepinbell - Poison Powder - Level 15
  (70, 7000, 77, 10, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Weepinbell - Stun Spore - Level 17
  (70, 7000, 78, 10, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Weepinbell - Acid - Level 23
  (70, 7000, 51, 10, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Weepinbell - Knock Off - Level 27
  (70, 7000, 282, 10, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Weepinbell - Sweet Scent - Level 29
  (70, 7000, 230, 10, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Weepinbell - Gastro Acid - Level 35
  (70, 7000, 380, 10, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Weepinbell - Razor Leaf - Level 39
  (70, 7000, 75, 10, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Weepinbell - Slam - Level 41
  (70, 7000, 21, 10, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Weepinbell - Wring Out - Level 47
  (70, 7000, 378, 10, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Weepinbell - Toxic - TM06
  (70, 7000, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 16),
  -- Weepinbell - Bullet Seed - TM09
  (70, 7000, 331, 10, NULL, 2, NULL, NULL, 10002009, NULL, 17),
  -- Weepinbell - Hidden Power - TM10
  (70, 7000, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 18),
  -- Weepinbell - Sunny Day - TM11
  (70, 7000, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 19),
  -- Weepinbell - Protect - TM17
  (70, 7000, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 20),
  -- Weepinbell - Giga Drain - TM19
  (70, 7000, 202, 10, NULL, 2, NULL, NULL, 10002019, NULL, 21),
  -- Weepinbell - Frustration - TM21
  (70, 7000, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 22),
  -- Weepinbell - Solar Beam - TM22
  (70, 7000, 76, 10, NULL, 2, NULL, NULL, 10002022, NULL, 23),
  -- Weepinbell - Return - TM27
  (70, 7000, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 24),
  -- Weepinbell - Double Team - TM32
  (70, 7000, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 25),
  -- Weepinbell - Sludge Bomb - TM36
  (70, 7000, 188, 10, NULL, 2, NULL, NULL, 10002036, NULL, 26),
  -- Weepinbell - Facade - TM42
  (70, 7000, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 27),
  -- Weepinbell - Secret Power - TM43
  (70, 7000, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 28),
  -- Weepinbell - Rest - TM44
  (70, 7000, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 29),
  -- Weepinbell - Attract - TM45
  (70, 7000, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 30),
  -- Weepinbell - Thief - TM46
  (70, 7000, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 31),
  -- Weepinbell - Energy Ball - TM53
  (70, 7000, 412, 10, NULL, 2, NULL, NULL, 10002053, NULL, 32),
  -- Weepinbell - Endure - TM58
  (70, 7000, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 33),
  -- Weepinbell - Flash - TM70
  (70, 7000, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 34),
  -- Weepinbell - Swords Dance - TM75
  (70, 7000, 14, 10, NULL, 2, NULL, NULL, 10002075, NULL, 35),
  -- Weepinbell - Captivate - TM78
  (70, 7000, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 36),
  -- Weepinbell - Sleep Talk - TM82
  (70, 7000, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 37),
  -- Weepinbell - Natural Gift - TM83
  (70, 7000, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 38),
  -- Weepinbell - Grass Knot - TM86
  (70, 7000, 447, 10, NULL, 2, NULL, NULL, 10002086, NULL, 39),
  -- Weepinbell - Swagger - TM87
  (70, 7000, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 40),
  -- Weepinbell - Substitute - TM90
  (70, 7000, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 41),
  -- Weepinbell - Cut - HM01
  (70, 7000, 15, 10, NULL, 3, NULL, NULL, 10003001, NULL, 42),
  -- Weepinbell - Snore - Tutor
  (70, 7000, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 43),
  -- Weepinbell - Synthesis - Tutor
  (70, 7000, 235, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 44),
  -- Weepinbell - Knock Off - Tutor
  (70, 7000, 282, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 45),
  -- Weepinbell - Gastro Acid - Tutor
  (70, 7000, 380, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 46),
  -- Weepinbell - Worry Seed - Tutor
  (70, 7000, 388, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 47),
  -- Weepinbell - Sucker Punch - Tutor
  (70, 7000, 389, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 48),
  -- Weepinbell - Seed Bomb - Tutor
  (70, 7000, 402, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 49),
  -- Victreebel - Vine Whip - Level 1
  (71, 7100, 22, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Victreebel - Razor Leaf - Level 1
  (71, 7100, 75, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Victreebel - Sleep Powder - Level 1
  (71, 7100, 79, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Victreebel - Sweet Scent - Level 1
  (71, 7100, 230, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Victreebel - Stockpile - Level 1
  (71, 7100, 254, 10, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Victreebel - Spit Up - Level 1
  (71, 7100, 255, 10, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Victreebel - Swallow - Level 1
  (71, 7100, 256, 10, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Victreebel - Leaf Blade - Level 47
  (71, 7100, 348, 10, NULL, 1, 47, NULL, NULL, NULL, 8),
  -- Victreebel - Leaf Storm - Level 47
  (71, 7100, 437, 10, NULL, 1, 47, NULL, NULL, NULL, 9),
  -- Victreebel - Toxic - TM06
  (71, 7100, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 10),
  -- Victreebel - Bullet Seed - TM09
  (71, 7100, 331, 10, NULL, 2, NULL, NULL, 10002009, NULL, 11),
  -- Victreebel - Hidden Power - TM10
  (71, 7100, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 12),
  -- Victreebel - Sunny Day - TM11
  (71, 7100, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 13),
  -- Victreebel - Hyper Beam - TM15
  (71, 7100, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 14),
  -- Victreebel - Protect - TM17
  (71, 7100, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 15),
  -- Victreebel - Giga Drain - TM19
  (71, 7100, 202, 10, NULL, 2, NULL, NULL, 10002019, NULL, 16),
  -- Victreebel - Frustration - TM21
  (71, 7100, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 17),
  -- Victreebel - Solar Beam - TM22
  (71, 7100, 76, 10, NULL, 2, NULL, NULL, 10002022, NULL, 18),
  -- Victreebel - Return - TM27
  (71, 7100, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 19),
  -- Victreebel - Double Team - TM32
  (71, 7100, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 20),
  -- Victreebel - Sludge Bomb - TM36
  (71, 7100, 188, 10, NULL, 2, NULL, NULL, 10002036, NULL, 21),
  -- Victreebel - Facade - TM42
  (71, 7100, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 22),
  -- Victreebel - Secret Power - TM43
  (71, 7100, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 23),
  -- Victreebel - Rest - TM44
  (71, 7100, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 24),
  -- Victreebel - Attract - TM45
  (71, 7100, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 25),
  -- Victreebel - Thief - TM46
  (71, 7100, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 26),
  -- Victreebel - Energy Ball - TM53
  (71, 7100, 412, 10, NULL, 2, NULL, NULL, 10002053, NULL, 27),
  -- Victreebel - Endure - TM58
  (71, 7100, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 28),
  -- Victreebel - Giga Impact - TM68
  (71, 7100, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 29),
  -- Victreebel - Flash - TM70
  (71, 7100, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 30),
  -- Victreebel - Swords Dance - TM75
  (71, 7100, 14, 10, NULL, 2, NULL, NULL, 10002075, NULL, 31),
  -- Victreebel - Captivate - TM78
  (71, 7100, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 32),
  -- Victreebel - Sleep Talk - TM82
  (71, 7100, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 33),
  -- Victreebel - Natural Gift - TM83
  (71, 7100, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 34),
  -- Victreebel - Grass Knot - TM86
  (71, 7100, 447, 10, NULL, 2, NULL, NULL, 10002086, NULL, 35),
  -- Victreebel - Swagger - TM87
  (71, 7100, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 36),
  -- Victreebel - Substitute - TM90
  (71, 7100, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 37),
  -- Victreebel - Cut - HM01
  (71, 7100, 15, 10, NULL, 3, NULL, NULL, 10003001, NULL, 38),
  -- Victreebel - Snore - Tutor
  (71, 7100, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 39),
  -- Victreebel - Synthesis - Tutor
  (71, 7100, 235, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 40),
  -- Victreebel - Knock Off - Tutor
  (71, 7100, 282, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 41),
  -- Victreebel - Gastro Acid - Tutor
  (71, 7100, 380, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 42),
  -- Victreebel - Worry Seed - Tutor
  (71, 7100, 388, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 43),
  -- Victreebel - Sucker Punch - Tutor
  (71, 7100, 389, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 44),
  -- Victreebel - Seed Bomb - Tutor
  (71, 7100, 402, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 45),
  -- Tentacool - Poison Sting - Level 1
  (72, 7200, 40, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tentacool - Supersonic - Level 5
  (72, 7200, 48, 10, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Tentacool - Constrict - Level 8
  (72, 7200, 132, 10, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Tentacool - Acid - Level 12
  (72, 7200, 51, 10, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Tentacool - Toxic Spikes - Level 15
  (72, 7200, 390, 10, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Tentacool - Bubble Beam - Level 19
  (72, 7200, 61, 10, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Tentacool - Wrap - Level 22
  (72, 7200, 35, 10, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Tentacool - Barrier - Level 26
  (72, 7200, 112, 10, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Tentacool - Water Pulse - Level 29
  (72, 7200, 352, 10, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Tentacool - Poison Jab - Level 33
  (72, 7200, 398, 10, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Tentacool - Screech - Level 36
  (72, 7200, 103, 10, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Tentacool - Hydro Pump - Level 40
  (72, 7200, 56, 10, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Tentacool - Wring Out - Level 43
  (72, 7200, 378, 10, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Tentacool - Water Pulse - TM03
  (72, 7200, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 14),
  -- Tentacool - Toxic - TM06
  (72, 7200, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 15),
  -- Tentacool - Hail - TM07
  (72, 7200, 258, 10, NULL, 2, NULL, NULL, 10002007, NULL, 16),
  -- Tentacool - Hidden Power - TM10
  (72, 7200, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 17),
  -- Tentacool - Ice Beam - TM13
  (72, 7200, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 18),
  -- Tentacool - Blizzard - TM14
  (72, 7200, 59, 10, NULL, 2, NULL, NULL, 10002014, NULL, 19),
  -- Tentacool - Protect - TM17
  (72, 7200, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 20),
  -- Tentacool - Rain Dance - TM18
  (72, 7200, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 21),
  -- Tentacool - Giga Drain - TM19
  (72, 7200, 202, 10, NULL, 2, NULL, NULL, 10002019, NULL, 22),
  -- Tentacool - Frustration - TM21
  (72, 7200, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 23),
  -- Tentacool - Return - TM27
  (72, 7200, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 24),
  -- Tentacool - Double Team - TM32
  (72, 7200, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 25),
  -- Tentacool - Sludge Bomb - TM36
  (72, 7200, 188, 10, NULL, 2, NULL, NULL, 10002036, NULL, 26),
  -- Tentacool - Facade - TM42
  (72, 7200, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 27),
  -- Tentacool - Secret Power - TM43
  (72, 7200, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 28),
  -- Tentacool - Rest - TM44
  (72, 7200, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 29),
  -- Tentacool - Attract - TM45
  (72, 7200, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 30),
  -- Tentacool - Thief - TM46
  (72, 7200, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 31),
  -- Tentacool - Brine - TM55
  (72, 7200, 362, 10, NULL, 2, NULL, NULL, 10002055, NULL, 32),
  -- Tentacool - Endure - TM58
  (72, 7200, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 33),
  -- Tentacool - Payback - TM66
  (72, 7200, 371, 10, NULL, 2, NULL, NULL, 10002066, NULL, 34),
  -- Tentacool - Swords Dance - TM75
  (72, 7200, 14, 10, NULL, 2, NULL, NULL, 10002075, NULL, 35),
  -- Tentacool - Captivate - TM78
  (72, 7200, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 36),
  -- Tentacool - Sleep Talk - TM82
  (72, 7200, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 37),
  -- Tentacool - Natural Gift - TM83
  (72, 7200, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 38),
  -- Tentacool - Poison Jab - TM84
  (72, 7200, 398, 10, NULL, 2, NULL, NULL, 10002084, NULL, 39),
  -- Tentacool - Swagger - TM87
  (72, 7200, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 40),
  -- Tentacool - Substitute - TM90
  (72, 7200, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 41),
  -- Tentacool - Cut - HM01
  (72, 7200, 15, 10, NULL, 3, NULL, NULL, 10003001, NULL, 42),
  -- Tentacool - Surf - HM03
  (72, 7200, 57, 10, NULL, 3, NULL, NULL, 10003003, NULL, 43),
  -- Tentacool - Whirlpool - HM05
  (72, 7200, 250, 10, NULL, 3, NULL, NULL, 10003005, NULL, 44),
  -- Tentacool - Waterfall - HM07
  (72, 7200, 127, 10, NULL, 3, NULL, NULL, 10003007, NULL, 45),
  -- Tentacool - Aurora Beam - Egg
  (72, 7200, 62, 10, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Tentacool - Confuse Ray - Egg
  (72, 7200, 109, 10, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Tentacool - Haze - Egg
  (72, 7200, 114, 10, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Tentacool - Safeguard - Egg
  (72, 7200, 219, 10, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Tentacool - Rapid Spin - Egg
  (72, 7200, 229, 10, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Tentacool - Mirror Coat - Egg
  (72, 7200, 243, 10, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Tentacool - Knock Off - Egg
  (72, 7200, 282, 10, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Tentacool - Muddy Water - Egg
  (72, 7200, 330, 10, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Tentacool - Acupressure - Egg
  (72, 7200, 367, 10, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Tentacool - Snore - Tutor
  (72, 7200, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Tentacool - Icy Wind - Tutor
  (72, 7200, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Tentacool - Magic Coat - Tutor
  (72, 7200, 277, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Tentacool - Knock Off - Tutor
  (72, 7200, 282, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Tentacool - Dive - Tutor
  (72, 7200, 291, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Tentacruel - Poison Sting - Level 1
  (73, 7300, 40, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tentacruel - Supersonic - Level 1
  (73, 7300, 48, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tentacruel - Constrict - Level 1
  (73, 7300, 132, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tentacruel - Supersonic - Level 5
  (73, 7300, 48, 10, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Tentacruel - Constrict - Level 8
  (73, 7300, 132, 10, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Tentacruel - Acid - Level 12
  (73, 7300, 51, 10, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Tentacruel - Toxic Spikes - Level 15
  (73, 7300, 390, 10, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Tentacruel - Bubble Beam - Level 19
  (73, 7300, 61, 10, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Tentacruel - Wrap - Level 22
  (73, 7300, 35, 10, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Tentacruel - Barrier - Level 26
  (73, 7300, 112, 10, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Tentacruel - Water Pulse - Level 29
  (73, 7300, 352, 10, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Tentacruel - Poison Jab - Level 36
  (73, 7300, 398, 10, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Tentacruel - Screech - Level 42
  (73, 7300, 103, 10, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Tentacruel - Hydro Pump - Level 49
  (73, 7300, 56, 10, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Tentacruel - Wring Out - Level 55
  (73, 7300, 378, 10, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Tentacruel - Water Pulse - TM03
  (73, 7300, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 16),
  -- Tentacruel - Toxic - TM06
  (73, 7300, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 17),
  -- Tentacruel - Hail - TM07
  (73, 7300, 258, 10, NULL, 2, NULL, NULL, 10002007, NULL, 18),
  -- Tentacruel - Hidden Power - TM10
  (73, 7300, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 19),
  -- Tentacruel - Ice Beam - TM13
  (73, 7300, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 20),
  -- Tentacruel - Blizzard - TM14
  (73, 7300, 59, 10, NULL, 2, NULL, NULL, 10002014, NULL, 21),
  -- Tentacruel - Hyper Beam - TM15
  (73, 7300, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 22),
  -- Tentacruel - Protect - TM17
  (73, 7300, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 23),
  -- Tentacruel - Rain Dance - TM18
  (73, 7300, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 24),
  -- Tentacruel - Giga Drain - TM19
  (73, 7300, 202, 10, NULL, 2, NULL, NULL, 10002019, NULL, 25),
  -- Tentacruel - Frustration - TM21
  (73, 7300, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 26),
  -- Tentacruel - Return - TM27
  (73, 7300, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 27),
  -- Tentacruel - Double Team - TM32
  (73, 7300, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 28),
  -- Tentacruel - Sludge Bomb - TM36
  (73, 7300, 188, 10, NULL, 2, NULL, NULL, 10002036, NULL, 29),
  -- Tentacruel - Facade - TM42
  (73, 7300, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 30),
  -- Tentacruel - Secret Power - TM43
  (73, 7300, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 31),
  -- Tentacruel - Rest - TM44
  (73, 7300, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 32),
  -- Tentacruel - Attract - TM45
  (73, 7300, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 33),
  -- Tentacruel - Thief - TM46
  (73, 7300, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 34),
  -- Tentacruel - Brine - TM55
  (73, 7300, 362, 10, NULL, 2, NULL, NULL, 10002055, NULL, 35),
  -- Tentacruel - Endure - TM58
  (73, 7300, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 36),
  -- Tentacruel - Payback - TM66
  (73, 7300, 371, 10, NULL, 2, NULL, NULL, 10002066, NULL, 37),
  -- Tentacruel - Giga Impact - TM68
  (73, 7300, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 38),
  -- Tentacruel - Swords Dance - TM75
  (73, 7300, 14, 10, NULL, 2, NULL, NULL, 10002075, NULL, 39),
  -- Tentacruel - Captivate - TM78
  (73, 7300, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 40),
  -- Tentacruel - Sleep Talk - TM82
  (73, 7300, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 41),
  -- Tentacruel - Natural Gift - TM83
  (73, 7300, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 42),
  -- Tentacruel - Poison Jab - TM84
  (73, 7300, 398, 10, NULL, 2, NULL, NULL, 10002084, NULL, 43),
  -- Tentacruel - Swagger - TM87
  (73, 7300, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 44),
  -- Tentacruel - Substitute - TM90
  (73, 7300, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 45),
  -- Tentacruel - Cut - HM01
  (73, 7300, 15, 10, NULL, 3, NULL, NULL, 10003001, NULL, 46),
  -- Tentacruel - Surf - HM03
  (73, 7300, 57, 10, NULL, 3, NULL, NULL, 10003003, NULL, 47),
  -- Tentacruel - Whirlpool - HM05
  (73, 7300, 250, 10, NULL, 3, NULL, NULL, 10003005, NULL, 48),
  -- Tentacruel - Waterfall - HM07
  (73, 7300, 127, 10, NULL, 3, NULL, NULL, 10003007, NULL, 49),
  -- Tentacruel - Snore - Tutor
  (73, 7300, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 50),
  -- Tentacruel - Icy Wind - Tutor
  (73, 7300, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 51),
  -- Tentacruel - Magic Coat - Tutor
  (73, 7300, 277, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 52),
  -- Tentacruel - Knock Off - Tutor
  (73, 7300, 282, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 53),
  -- Tentacruel - Dive - Tutor
  (73, 7300, 291, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 54),
  -- Geodude - Tackle - Level 1
  (74, 7400, 33, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Geodude - Defense Curl - Level 1
  (74, 7400, 111, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Geodude - Mud Sport - Level 4
  (74, 7400, 300, 10, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Geodude - Rock Polish - Level 8
  (74, 7400, 397, 10, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Geodude - Rock Throw - Level 11
  (74, 7400, 88, 10, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Geodude - Magnitude - Level 15
  (74, 7400, 222, 10, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Geodude - Self-Destruct - Level 18
  (74, 7400, 120, 10, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Geodude - Rollout - Level 22
  (74, 7400, 205, 10, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Geodude - Rock Blast - Level 25
  (74, 7400, 350, 10, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Geodude - Earthquake - Level 29
  (74, 7400, 89, 10, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Geodude - Explosion - Level 32
  (74, 7400, 153, 10, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Geodude - Double-Edge - Level 36
  (74, 7400, 38, 10, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Geodude - Stone Edge - Level 39
  (74, 7400, 444, 10, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Geodude - Focus Punch - TM01
  (74, 7400, 264, 10, NULL, 2, NULL, NULL, 10002001, NULL, 14),
  -- Geodude - Toxic - TM06
  (74, 7400, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 15),
  -- Geodude - Hidden Power - TM10
  (74, 7400, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 16),
  -- Geodude - Sunny Day - TM11
  (74, 7400, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 17),
  -- Geodude - Protect - TM17
  (74, 7400, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 18),
  -- Geodude - Frustration - TM21
  (74, 7400, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 19),
  -- Geodude - Earthquake - TM26
  (74, 7400, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 20),
  -- Geodude - Return - TM27
  (74, 7400, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 21),
  -- Geodude - Dig - TM28
  (74, 7400, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 22),
  -- Geodude - Brick Break - TM31
  (74, 7400, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 23),
  -- Geodude - Double Team - TM32
  (74, 7400, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 24),
  -- Geodude - Flamethrower - TM35
  (74, 7400, 53, 10, NULL, 2, NULL, NULL, 10002035, NULL, 25),
  -- Geodude - Sandstorm - TM37
  (74, 7400, 201, 10, NULL, 2, NULL, NULL, 10002037, NULL, 26),
  -- Geodude - Fire Blast - TM38
  (74, 7400, 126, 10, NULL, 2, NULL, NULL, 10002038, NULL, 27),
  -- Geodude - Rock Tomb - TM39
  (74, 7400, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 28),
  -- Geodude - Facade - TM42
  (74, 7400, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 29),
  -- Geodude - Secret Power - TM43
  (74, 7400, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 30),
  -- Geodude - Rest - TM44
  (74, 7400, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 31),
  -- Geodude - Attract - TM45
  (74, 7400, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 32),
  -- Geodude - Fling - TM56
  (74, 7400, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 33),
  -- Geodude - Endure - TM58
  (74, 7400, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 34),
  -- Geodude - Explosion - TM64
  (74, 7400, 153, 10, NULL, 2, NULL, NULL, 10002064, NULL, 35),
  -- Geodude - Rock Polish - TM69
  (74, 7400, 397, 10, NULL, 2, NULL, NULL, 10002069, NULL, 36),
  -- Geodude - Stone Edge - TM71
  (74, 7400, 444, 10, NULL, 2, NULL, NULL, 10002071, NULL, 37),
  -- Geodude - Gyro Ball - TM74
  (74, 7400, 360, 10, NULL, 2, NULL, NULL, 10002074, NULL, 38),
  -- Geodude - Stealth Rock - TM76
  (74, 7400, 446, 10, NULL, 2, NULL, NULL, 10002076, NULL, 39),
  -- Geodude - Captivate - TM78
  (74, 7400, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 40),
  -- Geodude - Rock Slide - TM80
  (74, 7400, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 41),
  -- Geodude - Sleep Talk - TM82
  (74, 7400, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 42),
  -- Geodude - Natural Gift - TM83
  (74, 7400, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 43),
  -- Geodude - Swagger - TM87
  (74, 7400, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 44),
  -- Geodude - Substitute - TM90
  (74, 7400, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 45),
  -- Geodude - Strength - HM04
  (74, 7400, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 46),
  -- Geodude - Rock Smash - HM06
  (74, 7400, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 47),
  -- Geodude - Rock Climb - HM08
  (74, 7400, 431, 10, NULL, 3, NULL, NULL, 10003008, NULL, 48),
  -- Geodude - Mega Punch - Egg
  (74, 7400, 5, 10, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Geodude - Rock Slide - Egg
  (74, 7400, 157, 10, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Geodude - Curse - Egg
  (74, 7400, 174, 10, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Geodude - Flail - Egg
  (74, 7400, 175, 10, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Geodude - Block - Egg
  (74, 7400, 335, 10, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Geodude - Hammer Arm - Egg
  (74, 7400, 359, 10, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Geodude - Fire Punch - Tutor
  (74, 7400, 7, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Geodude - Thunder Punch - Tutor
  (74, 7400, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Geodude - Headbutt - Tutor
  (74, 7400, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Geodude - Snore - Tutor
  (74, 7400, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Geodude - Mud-Slap - Tutor
  (74, 7400, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Geodude - Rollout - Tutor
  (74, 7400, 205, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Geodude - Ancient Power - Tutor
  (74, 7400, 246, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Geodude - Superpower - Tutor
  (74, 7400, 276, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Geodude - Block - Tutor
  (74, 7400, 335, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Geodude - Sucker Punch - Tutor
  (74, 7400, 389, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Geodude - Earth Power - Tutor
  (74, 7400, 414, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Graveler - Tackle - Level 1
  (75, 7500, 33, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Graveler - Defense Curl - Level 1
  (75, 7500, 111, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Graveler - Mud Sport - Level 1
  (75, 7500, 300, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Graveler - Rock Polish - Level 1
  (75, 7500, 397, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Graveler - Mud Sport - Level 4
  (75, 7500, 300, 10, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Graveler - Rock Polish - Level 8
  (75, 7500, 397, 10, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Graveler - Rock Throw - Level 11
  (75, 7500, 88, 10, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Graveler - Magnitude - Level 15
  (75, 7500, 222, 10, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Graveler - Self-Destruct - Level 18
  (75, 7500, 120, 10, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Graveler - Rollout - Level 22
  (75, 7500, 205, 10, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Graveler - Rock Blast - Level 27
  (75, 7500, 350, 10, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Graveler - Earthquake - Level 33
  (75, 7500, 89, 10, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Graveler - Explosion - Level 38
  (75, 7500, 153, 10, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Graveler - Double-Edge - Level 44
  (75, 7500, 38, 10, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Graveler - Stone Edge - Level 49
  (75, 7500, 444, 10, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Graveler - Focus Punch - TM01
  (75, 7500, 264, 10, NULL, 2, NULL, NULL, 10002001, NULL, 16),
  -- Graveler - Toxic - TM06
  (75, 7500, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 17),
  -- Graveler - Hidden Power - TM10
  (75, 7500, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 18),
  -- Graveler - Sunny Day - TM11
  (75, 7500, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 19),
  -- Graveler - Protect - TM17
  (75, 7500, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 20),
  -- Graveler - Frustration - TM21
  (75, 7500, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 21),
  -- Graveler - Earthquake - TM26
  (75, 7500, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 22),
  -- Graveler - Return - TM27
  (75, 7500, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 23),
  -- Graveler - Dig - TM28
  (75, 7500, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 24),
  -- Graveler - Brick Break - TM31
  (75, 7500, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 25),
  -- Graveler - Double Team - TM32
  (75, 7500, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 26),
  -- Graveler - Flamethrower - TM35
  (75, 7500, 53, 10, NULL, 2, NULL, NULL, 10002035, NULL, 27),
  -- Graveler - Sandstorm - TM37
  (75, 7500, 201, 10, NULL, 2, NULL, NULL, 10002037, NULL, 28),
  -- Graveler - Fire Blast - TM38
  (75, 7500, 126, 10, NULL, 2, NULL, NULL, 10002038, NULL, 29),
  -- Graveler - Rock Tomb - TM39
  (75, 7500, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 30),
  -- Graveler - Facade - TM42
  (75, 7500, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 31),
  -- Graveler - Secret Power - TM43
  (75, 7500, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 32),
  -- Graveler - Rest - TM44
  (75, 7500, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 33),
  -- Graveler - Attract - TM45
  (75, 7500, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 34),
  -- Graveler - Fling - TM56
  (75, 7500, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 35),
  -- Graveler - Endure - TM58
  (75, 7500, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 36),
  -- Graveler - Explosion - TM64
  (75, 7500, 153, 10, NULL, 2, NULL, NULL, 10002064, NULL, 37),
  -- Graveler - Rock Polish - TM69
  (75, 7500, 397, 10, NULL, 2, NULL, NULL, 10002069, NULL, 38),
  -- Graveler - Stone Edge - TM71
  (75, 7500, 444, 10, NULL, 2, NULL, NULL, 10002071, NULL, 39),
  -- Graveler - Gyro Ball - TM74
  (75, 7500, 360, 10, NULL, 2, NULL, NULL, 10002074, NULL, 40),
  -- Graveler - Stealth Rock - TM76
  (75, 7500, 446, 10, NULL, 2, NULL, NULL, 10002076, NULL, 41),
  -- Graveler - Captivate - TM78
  (75, 7500, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 42),
  -- Graveler - Rock Slide - TM80
  (75, 7500, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 43),
  -- Graveler - Sleep Talk - TM82
  (75, 7500, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 44),
  -- Graveler - Natural Gift - TM83
  (75, 7500, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 45),
  -- Graveler - Swagger - TM87
  (75, 7500, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 46),
  -- Graveler - Substitute - TM90
  (75, 7500, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 47),
  -- Graveler - Strength - HM04
  (75, 7500, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 48),
  -- Graveler - Rock Smash - HM06
  (75, 7500, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 49),
  -- Graveler - Rock Climb - HM08
  (75, 7500, 431, 10, NULL, 3, NULL, NULL, 10003008, NULL, 50),
  -- Graveler - Fire Punch - Tutor
  (75, 7500, 7, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 51),
  -- Graveler - Thunder Punch - Tutor
  (75, 7500, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 52),
  -- Graveler - Headbutt - Tutor
  (75, 7500, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 53),
  -- Graveler - Snore - Tutor
  (75, 7500, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 54),
  -- Graveler - Mud-Slap - Tutor
  (75, 7500, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Graveler - Rollout - Tutor
  (75, 7500, 205, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Graveler - Ancient Power - Tutor
  (75, 7500, 246, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Graveler - Superpower - Tutor
  (75, 7500, 276, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Graveler - Block - Tutor
  (75, 7500, 335, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Graveler - Sucker Punch - Tutor
  (75, 7500, 389, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Graveler - Earth Power - Tutor
  (75, 7500, 414, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Golem - Tackle - Level 1
  (76, 7600, 33, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golem - Defense Curl - Level 1
  (76, 7600, 111, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golem - Mud Sport - Level 1
  (76, 7600, 300, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golem - Rock Polish - Level 1
  (76, 7600, 397, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Golem - Mud Sport - Level 4
  (76, 7600, 300, 10, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Golem - Rock Polish - Level 8
  (76, 7600, 397, 10, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Golem - Rock Throw - Level 11
  (76, 7600, 88, 10, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Golem - Magnitude - Level 15
  (76, 7600, 222, 10, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Golem - Self-Destruct - Level 18
  (76, 7600, 120, 10, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Golem - Rollout - Level 22
  (76, 7600, 205, 10, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Golem - Rock Blast - Level 27
  (76, 7600, 350, 10, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Golem - Earthquake - Level 33
  (76, 7600, 89, 10, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Golem - Explosion - Level 38
  (76, 7600, 153, 10, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Golem - Double-Edge - Level 44
  (76, 7600, 38, 10, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Golem - Stone Edge - Level 49
  (76, 7600, 444, 10, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Golem - Focus Punch - TM01
  (76, 7600, 264, 10, NULL, 2, NULL, NULL, 10002001, NULL, 16),
  -- Golem - Roar - TM05
  (76, 7600, 46, 10, NULL, 2, NULL, NULL, 10002005, NULL, 17),
  -- Golem - Toxic - TM06
  (76, 7600, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 18),
  -- Golem - Hidden Power - TM10
  (76, 7600, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 19),
  -- Golem - Sunny Day - TM11
  (76, 7600, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 20),
  -- Golem - Hyper Beam - TM15
  (76, 7600, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 21),
  -- Golem - Protect - TM17
  (76, 7600, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 22),
  -- Golem - Frustration - TM21
  (76, 7600, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 23),
  -- Golem - Earthquake - TM26
  (76, 7600, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 24),
  -- Golem - Return - TM27
  (76, 7600, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 25),
  -- Golem - Dig - TM28
  (76, 7600, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 26),
  -- Golem - Brick Break - TM31
  (76, 7600, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 27),
  -- Golem - Double Team - TM32
  (76, 7600, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 28),
  -- Golem - Flamethrower - TM35
  (76, 7600, 53, 10, NULL, 2, NULL, NULL, 10002035, NULL, 29),
  -- Golem - Sandstorm - TM37
  (76, 7600, 201, 10, NULL, 2, NULL, NULL, 10002037, NULL, 30),
  -- Golem - Fire Blast - TM38
  (76, 7600, 126, 10, NULL, 2, NULL, NULL, 10002038, NULL, 31),
  -- Golem - Rock Tomb - TM39
  (76, 7600, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 32),
  -- Golem - Facade - TM42
  (76, 7600, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 33),
  -- Golem - Secret Power - TM43
  (76, 7600, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 34),
  -- Golem - Rest - TM44
  (76, 7600, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 35),
  -- Golem - Attract - TM45
  (76, 7600, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 36),
  -- Golem - Focus Blast - TM52
  (76, 7600, 411, 10, NULL, 2, NULL, NULL, 10002052, NULL, 37),
  -- Golem - Fling - TM56
  (76, 7600, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 38),
  -- Golem - Endure - TM58
  (76, 7600, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 39),
  -- Golem - Explosion - TM64
  (76, 7600, 153, 10, NULL, 2, NULL, NULL, 10002064, NULL, 40),
  -- Golem - Giga Impact - TM68
  (76, 7600, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 41),
  -- Golem - Rock Polish - TM69
  (76, 7600, 397, 10, NULL, 2, NULL, NULL, 10002069, NULL, 42),
  -- Golem - Stone Edge - TM71
  (76, 7600, 444, 10, NULL, 2, NULL, NULL, 10002071, NULL, 43),
  -- Golem - Gyro Ball - TM74
  (76, 7600, 360, 10, NULL, 2, NULL, NULL, 10002074, NULL, 44),
  -- Golem - Stealth Rock - TM76
  (76, 7600, 446, 10, NULL, 2, NULL, NULL, 10002076, NULL, 45),
  -- Golem - Captivate - TM78
  (76, 7600, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 46),
  -- Golem - Rock Slide - TM80
  (76, 7600, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 47),
  -- Golem - Sleep Talk - TM82
  (76, 7600, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 48),
  -- Golem - Natural Gift - TM83
  (76, 7600, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 49),
  -- Golem - Swagger - TM87
  (76, 7600, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 50),
  -- Golem - Substitute - TM90
  (76, 7600, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 51),
  -- Golem - Strength - HM04
  (76, 7600, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 52),
  -- Golem - Rock Smash - HM06
  (76, 7600, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 53),
  -- Golem - Rock Climb - HM08
  (76, 7600, 431, 10, NULL, 3, NULL, NULL, 10003008, NULL, 54),
  -- Golem - Fire Punch - Tutor
  (76, 7600, 7, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Golem - Thunder Punch - Tutor
  (76, 7600, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Golem - Headbutt - Tutor
  (76, 7600, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Golem - Snore - Tutor
  (76, 7600, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Golem - Mud-Slap - Tutor
  (76, 7600, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Golem - Rollout - Tutor
  (76, 7600, 205, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Golem - Fury Cutter - Tutor
  (76, 7600, 210, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Golem - Ancient Power - Tutor
  (76, 7600, 246, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Golem - Superpower - Tutor
  (76, 7600, 276, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Golem - Block - Tutor
  (76, 7600, 335, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Golem - Sucker Punch - Tutor
  (76, 7600, 389, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Golem - Earth Power - Tutor
  (76, 7600, 414, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Golem - Iron Head - Tutor
  (76, 7600, 442, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Ponyta - Tackle - Level 1
  (77, 7700, 33, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ponyta - Growl - Level 1
  (77, 7700, 45, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ponyta - Tail Whip - Level 6
  (77, 7700, 39, 10, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Ponyta - Ember - Level 10
  (77, 7700, 52, 10, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Ponyta - Flame Wheel - Level 15
  (77, 7700, 172, 10, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Ponyta - Stomp - Level 19
  (77, 7700, 23, 10, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Ponyta - Fire Spin - Level 24
  (77, 7700, 83, 10, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Ponyta - Take Down - Level 28
  (77, 7700, 36, 10, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Ponyta - Agility - Level 33
  (77, 7700, 97, 10, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Ponyta - Fire Blast - Level 37
  (77, 7700, 126, 10, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Ponyta - Bounce - Level 42
  (77, 7700, 340, 10, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Ponyta - Flare Blitz - Level 46
  (77, 7700, 394, 10, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Ponyta - Toxic - TM06
  (77, 7700, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 13),
  -- Ponyta - Hidden Power - TM10
  (77, 7700, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 14),
  -- Ponyta - Sunny Day - TM11
  (77, 7700, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 15),
  -- Ponyta - Protect - TM17
  (77, 7700, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 16),
  -- Ponyta - Frustration - TM21
  (77, 7700, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 17),
  -- Ponyta - Solar Beam - TM22
  (77, 7700, 76, 10, NULL, 2, NULL, NULL, 10002022, NULL, 18),
  -- Ponyta - Iron Tail - TM23
  (77, 7700, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 19),
  -- Ponyta - Return - TM27
  (77, 7700, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 20),
  -- Ponyta - Double Team - TM32
  (77, 7700, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 21),
  -- Ponyta - Flamethrower - TM35
  (77, 7700, 53, 10, NULL, 2, NULL, NULL, 10002035, NULL, 22),
  -- Ponyta - Fire Blast - TM38
  (77, 7700, 126, 10, NULL, 2, NULL, NULL, 10002038, NULL, 23),
  -- Ponyta - Facade - TM42
  (77, 7700, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 24),
  -- Ponyta - Secret Power - TM43
  (77, 7700, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 25),
  -- Ponyta - Rest - TM44
  (77, 7700, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 26),
  -- Ponyta - Attract - TM45
  (77, 7700, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 27),
  -- Ponyta - Overheat - TM50
  (77, 7700, 315, 10, NULL, 2, NULL, NULL, 10002050, NULL, 28),
  -- Ponyta - Endure - TM58
  (77, 7700, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 29),
  -- Ponyta - Will-O-Wisp - TM61
  (77, 7700, 261, 10, NULL, 2, NULL, NULL, 10002061, NULL, 30),
  -- Ponyta - Captivate - TM78
  (77, 7700, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 31),
  -- Ponyta - Sleep Talk - TM82
  (77, 7700, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 32),
  -- Ponyta - Natural Gift - TM83
  (77, 7700, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 33),
  -- Ponyta - Swagger - TM87
  (77, 7700, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 34),
  -- Ponyta - Substitute - TM90
  (77, 7700, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 35),
  -- Ponyta - Strength - HM04
  (77, 7700, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 36),
  -- Ponyta - Double Kick - Egg
  (77, 7700, 24, 10, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Ponyta - Horn Drill - Egg
  (77, 7700, 32, 10, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Ponyta - Thrash - Egg
  (77, 7700, 37, 10, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Ponyta - Double-Edge - Egg
  (77, 7700, 38, 10, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Ponyta - Hypnosis - Egg
  (77, 7700, 95, 10, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Ponyta - Flame Wheel - Egg
  (77, 7700, 172, 10, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Ponyta - Charm - Egg
  (77, 7700, 204, 10, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Ponyta - Morning Sun - Egg
  (77, 7700, 234, 10, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Ponyta - Headbutt - Tutor
  (77, 7700, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 45),
  -- Ponyta - Swift - Tutor
  (77, 7700, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 46),
  -- Ponyta - Snore - Tutor
  (77, 7700, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 47),
  -- Ponyta - Heat Wave - Tutor
  (77, 7700, 257, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 48),
  -- Ponyta - Bounce - Tutor
  (77, 7700, 340, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 49),
  -- Rapidash - Tail Whip - Level 1
  (78, 7800, 39, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rapidash - Growl - Level 1
  (78, 7800, 45, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rapidash - Ember - Level 1
  (78, 7800, 52, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rapidash - Quick Attack - Level 1
  (78, 7800, 98, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rapidash - Megahorn - Level 1
  (78, 7800, 224, 10, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rapidash - Poison Jab - Level 1
  (78, 7800, 398, 10, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Rapidash - Tail Whip - Level 6
  (78, 7800, 39, 10, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Rapidash - Ember - Level 10
  (78, 7800, 52, 10, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Rapidash - Flame Wheel - Level 15
  (78, 7800, 172, 10, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Rapidash - Stomp - Level 19
  (78, 7800, 23, 10, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Rapidash - Fire Spin - Level 24
  (78, 7800, 83, 10, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Rapidash - Take Down - Level 28
  (78, 7800, 36, 10, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Rapidash - Agility - Level 33
  (78, 7800, 97, 10, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Rapidash - Fire Blast - Level 37
  (78, 7800, 126, 10, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Rapidash - Fury Attack - Level 40
  (78, 7800, 31, 10, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Rapidash - Bounce - Level 47
  (78, 7800, 340, 10, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Rapidash - Flare Blitz - Level 56
  (78, 7800, 394, 10, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Rapidash - Toxic - TM06
  (78, 7800, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 18),
  -- Rapidash - Hidden Power - TM10
  (78, 7800, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 19),
  -- Rapidash - Sunny Day - TM11
  (78, 7800, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 20),
  -- Rapidash - Hyper Beam - TM15
  (78, 7800, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 21),
  -- Rapidash - Protect - TM17
  (78, 7800, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 22),
  -- Rapidash - Frustration - TM21
  (78, 7800, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 23),
  -- Rapidash - Solar Beam - TM22
  (78, 7800, 76, 10, NULL, 2, NULL, NULL, 10002022, NULL, 24),
  -- Rapidash - Iron Tail - TM23
  (78, 7800, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 25),
  -- Rapidash - Return - TM27
  (78, 7800, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 26),
  -- Rapidash - Double Team - TM32
  (78, 7800, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 27),
  -- Rapidash - Flamethrower - TM35
  (78, 7800, 53, 10, NULL, 2, NULL, NULL, 10002035, NULL, 28),
  -- Rapidash - Fire Blast - TM38
  (78, 7800, 126, 10, NULL, 2, NULL, NULL, 10002038, NULL, 29),
  -- Rapidash - Facade - TM42
  (78, 7800, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 30),
  -- Rapidash - Secret Power - TM43
  (78, 7800, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 31),
  -- Rapidash - Rest - TM44
  (78, 7800, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 32),
  -- Rapidash - Attract - TM45
  (78, 7800, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 33),
  -- Rapidash - Overheat - TM50
  (78, 7800, 315, 10, NULL, 2, NULL, NULL, 10002050, NULL, 34),
  -- Rapidash - Endure - TM58
  (78, 7800, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 35),
  -- Rapidash - Will-O-Wisp - TM61
  (78, 7800, 261, 10, NULL, 2, NULL, NULL, 10002061, NULL, 36),
  -- Rapidash - Giga Impact - TM68
  (78, 7800, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 37),
  -- Rapidash - Captivate - TM78
  (78, 7800, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 38),
  -- Rapidash - Sleep Talk - TM82
  (78, 7800, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 39),
  -- Rapidash - Natural Gift - TM83
  (78, 7800, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 40),
  -- Rapidash - Poison Jab - TM84
  (78, 7800, 398, 10, NULL, 2, NULL, NULL, 10002084, NULL, 41),
  -- Rapidash - Swagger - TM87
  (78, 7800, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 42),
  -- Rapidash - Substitute - TM90
  (78, 7800, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 43),
  -- Rapidash - Strength - HM04
  (78, 7800, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 44),
  -- Rapidash - Headbutt - Tutor
  (78, 7800, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 45),
  -- Rapidash - Swift - Tutor
  (78, 7800, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 46),
  -- Rapidash - Snore - Tutor
  (78, 7800, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 47),
  -- Rapidash - Heat Wave - Tutor
  (78, 7800, 257, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 48),
  -- Rapidash - Bounce - Tutor
  (78, 7800, 340, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 49),
  -- Slowpoke - Tackle - Level 1
  (79, 7900, 33, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowpoke - Curse - Level 1
  (79, 7900, 174, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowpoke - Yawn - Level 1
  (79, 7900, 281, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slowpoke - Growl - Level 6
  (79, 7900, 45, 10, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Slowpoke - Water Gun - Level 11
  (79, 7900, 55, 10, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Slowpoke - Confusion - Level 15
  (79, 7900, 93, 10, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Slowpoke - Disable - Level 20
  (79, 7900, 50, 10, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Slowpoke - Headbutt - Level 25
  (79, 7900, 29, 10, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Slowpoke - Water Pulse - Level 29
  (79, 7900, 352, 10, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Slowpoke - Zen Headbutt - Level 34
  (79, 7900, 428, 10, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Slowpoke - Slack Off - Level 39
  (79, 7900, 303, 10, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Slowpoke - Amnesia - Level 43
  (79, 7900, 133, 10, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Slowpoke - Psychic - Level 48
  (79, 7900, 94, 10, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Slowpoke - Rain Dance - Level 53
  (79, 7900, 240, 10, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Slowpoke - Psych Up - Level 57
  (79, 7900, 244, 10, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Slowpoke - Water Pulse - TM03
  (79, 7900, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 16),
  -- Slowpoke - Calm Mind - TM04
  (79, 7900, 347, 10, NULL, 2, NULL, NULL, 10002004, NULL, 17),
  -- Slowpoke - Toxic - TM06
  (79, 7900, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 18),
  -- Slowpoke - Hail - TM07
  (79, 7900, 258, 10, NULL, 2, NULL, NULL, 10002007, NULL, 19),
  -- Slowpoke - Hidden Power - TM10
  (79, 7900, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 20),
  -- Slowpoke - Sunny Day - TM11
  (79, 7900, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 21),
  -- Slowpoke - Ice Beam - TM13
  (79, 7900, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 22),
  -- Slowpoke - Blizzard - TM14
  (79, 7900, 59, 10, NULL, 2, NULL, NULL, 10002014, NULL, 23),
  -- Slowpoke - Light Screen - TM16
  (79, 7900, 113, 10, NULL, 2, NULL, NULL, 10002016, NULL, 24),
  -- Slowpoke - Protect - TM17
  (79, 7900, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 25),
  -- Slowpoke - Rain Dance - TM18
  (79, 7900, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 26),
  -- Slowpoke - Safeguard - TM20
  (79, 7900, 219, 10, NULL, 2, NULL, NULL, 10002020, NULL, 27),
  -- Slowpoke - Frustration - TM21
  (79, 7900, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 28),
  -- Slowpoke - Iron Tail - TM23
  (79, 7900, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 29),
  -- Slowpoke - Earthquake - TM26
  (79, 7900, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 30),
  -- Slowpoke - Return - TM27
  (79, 7900, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 31),
  -- Slowpoke - Dig - TM28
  (79, 7900, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 32),
  -- Slowpoke - Psychic - TM29
  (79, 7900, 94, 10, NULL, 2, NULL, NULL, 10002029, NULL, 33),
  -- Slowpoke - Shadow Ball - TM30
  (79, 7900, 247, 10, NULL, 2, NULL, NULL, 10002030, NULL, 34),
  -- Slowpoke - Double Team - TM32
  (79, 7900, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 35),
  -- Slowpoke - Flamethrower - TM35
  (79, 7900, 53, 10, NULL, 2, NULL, NULL, 10002035, NULL, 36),
  -- Slowpoke - Fire Blast - TM38
  (79, 7900, 126, 10, NULL, 2, NULL, NULL, 10002038, NULL, 37),
  -- Slowpoke - Facade - TM42
  (79, 7900, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 38),
  -- Slowpoke - Secret Power - TM43
  (79, 7900, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 39),
  -- Slowpoke - Rest - TM44
  (79, 7900, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 40),
  -- Slowpoke - Attract - TM45
  (79, 7900, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 41),
  -- Slowpoke - Skill Swap - TM48
  (79, 7900, 285, 10, NULL, 2, NULL, NULL, 10002048, NULL, 42),
  -- Slowpoke - Brine - TM55
  (79, 7900, 362, 10, NULL, 2, NULL, NULL, 10002055, NULL, 43),
  -- Slowpoke - Endure - TM58
  (79, 7900, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 44),
  -- Slowpoke - Recycle - TM67
  (79, 7900, 278, 10, NULL, 2, NULL, NULL, 10002067, NULL, 45),
  -- Slowpoke - Flash - TM70
  (79, 7900, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 46),
  -- Slowpoke - Thunder Wave - TM73
  (79, 7900, 86, 10, NULL, 2, NULL, NULL, 10002073, NULL, 47),
  -- Slowpoke - Psych Up - TM77
  (79, 7900, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 48),
  -- Slowpoke - Captivate - TM78
  (79, 7900, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 49),
  -- Slowpoke - Sleep Talk - TM82
  (79, 7900, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 50),
  -- Slowpoke - Natural Gift - TM83
  (79, 7900, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 51),
  -- Slowpoke - Dream Eater - TM85
  (79, 7900, 138, 10, NULL, 2, NULL, NULL, 10002085, NULL, 52),
  -- Slowpoke - Grass Knot - TM86
  (79, 7900, 447, 10, NULL, 2, NULL, NULL, 10002086, NULL, 53),
  -- Slowpoke - Swagger - TM87
  (79, 7900, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 54),
  -- Slowpoke - Substitute - TM90
  (79, 7900, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 55),
  -- Slowpoke - Trick Room - TM92
  (79, 7900, 433, 10, NULL, 2, NULL, NULL, 10002092, NULL, 56),
  -- Slowpoke - Surf - HM03
  (79, 7900, 57, 10, NULL, 3, NULL, NULL, 10003003, NULL, 57),
  -- Slowpoke - Strength - HM04
  (79, 7900, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 58),
  -- Slowpoke - Whirlpool - HM05
  (79, 7900, 250, 10, NULL, 3, NULL, NULL, 10003005, NULL, 59),
  -- Slowpoke - Stomp - Egg
  (79, 7900, 23, 10, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Slowpoke - Snore - Egg
  (79, 7900, 173, 10, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Slowpoke - Belly Drum - Egg
  (79, 7900, 187, 10, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Slowpoke - Sleep Talk - Egg
  (79, 7900, 214, 10, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Slowpoke - Safeguard - Egg
  (79, 7900, 219, 10, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Slowpoke - Future Sight - Egg
  (79, 7900, 248, 10, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Slowpoke - Mud Sport - Egg
  (79, 7900, 300, 10, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Slowpoke - Block - Egg
  (79, 7900, 335, 10, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Slowpoke - Me First - Egg
  (79, 7900, 382, 10, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Slowpoke - Zen Headbutt - Egg
  (79, 7900, 428, 10, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Slowpoke - Headbutt - Tutor
  (79, 7900, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 70),
  -- Slowpoke - Swift - Tutor
  (79, 7900, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 71),
  -- Slowpoke - Snore - Tutor
  (79, 7900, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 72),
  -- Slowpoke - Mud-Slap - Tutor
  (79, 7900, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 73),
  -- Slowpoke - Icy Wind - Tutor
  (79, 7900, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 74),
  -- Slowpoke - Trick - Tutor
  (79, 7900, 271, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 75),
  -- Slowpoke - Magic Coat - Tutor
  (79, 7900, 277, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 76),
  -- Slowpoke - Dive - Tutor
  (79, 7900, 291, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 77),
  -- Slowpoke - Signal Beam - Tutor
  (79, 7900, 324, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 78),
  -- Slowpoke - Block - Tutor
  (79, 7900, 335, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 79),
  -- Slowpoke - Aqua Tail - Tutor
  (79, 7900, 401, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 80),
  -- Slowpoke - Zen Headbutt - Tutor
  (79, 7900, 428, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 81),
  -- Slowbro - Tackle - Level 1
  (80, 8000, 33, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowbro - Growl - Level 1
  (80, 8000, 45, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowbro - Curse - Level 1
  (80, 8000, 174, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slowbro - Yawn - Level 1
  (80, 8000, 281, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Slowbro - Growl - Level 6
  (80, 8000, 45, 10, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Slowbro - Water Gun - Level 11
  (80, 8000, 55, 10, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Slowbro - Confusion - Level 15
  (80, 8000, 93, 10, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Slowbro - Disable - Level 20
  (80, 8000, 50, 10, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Slowbro - Headbutt - Level 25
  (80, 8000, 29, 10, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Slowbro - Water Pulse - Level 29
  (80, 8000, 352, 10, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Slowbro - Zen Headbutt - Level 34
  (80, 8000, 428, 10, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Slowbro - Withdraw - Level 37
  (80, 8000, 110, 10, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Slowbro - Slack Off - Level 41
  (80, 8000, 303, 10, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Slowbro - Amnesia - Level 47
  (80, 8000, 133, 10, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Slowbro - Psychic - Level 54
  (80, 8000, 94, 10, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Slowbro - Rain Dance - Level 61
  (80, 8000, 240, 10, NULL, 1, 61, NULL, NULL, NULL, 16),
  -- Slowbro - Psych Up - Level 67
  (80, 8000, 244, 10, NULL, 1, 67, NULL, NULL, NULL, 17),
  -- Slowbro - Focus Punch - TM01
  (80, 8000, 264, 10, NULL, 2, NULL, NULL, 10002001, NULL, 18),
  -- Slowbro - Water Pulse - TM03
  (80, 8000, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 19),
  -- Slowbro - Calm Mind - TM04
  (80, 8000, 347, 10, NULL, 2, NULL, NULL, 10002004, NULL, 20),
  -- Slowbro - Toxic - TM06
  (80, 8000, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 21),
  -- Slowbro - Hail - TM07
  (80, 8000, 258, 10, NULL, 2, NULL, NULL, 10002007, NULL, 22),
  -- Slowbro - Hidden Power - TM10
  (80, 8000, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 23),
  -- Slowbro - Sunny Day - TM11
  (80, 8000, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 24),
  -- Slowbro - Ice Beam - TM13
  (80, 8000, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 25),
  -- Slowbro - Blizzard - TM14
  (80, 8000, 59, 10, NULL, 2, NULL, NULL, 10002014, NULL, 26),
  -- Slowbro - Hyper Beam - TM15
  (80, 8000, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 27),
  -- Slowbro - Light Screen - TM16
  (80, 8000, 113, 10, NULL, 2, NULL, NULL, 10002016, NULL, 28),
  -- Slowbro - Protect - TM17
  (80, 8000, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 29),
  -- Slowbro - Rain Dance - TM18
  (80, 8000, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 30),
  -- Slowbro - Safeguard - TM20
  (80, 8000, 219, 10, NULL, 2, NULL, NULL, 10002020, NULL, 31),
  -- Slowbro - Frustration - TM21
  (80, 8000, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 32),
  -- Slowbro - Iron Tail - TM23
  (80, 8000, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 33),
  -- Slowbro - Earthquake - TM26
  (80, 8000, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 34),
  -- Slowbro - Return - TM27
  (80, 8000, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 35),
  -- Slowbro - Dig - TM28
  (80, 8000, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 36),
  -- Slowbro - Psychic - TM29
  (80, 8000, 94, 10, NULL, 2, NULL, NULL, 10002029, NULL, 37),
  -- Slowbro - Shadow Ball - TM30
  (80, 8000, 247, 10, NULL, 2, NULL, NULL, 10002030, NULL, 38),
  -- Slowbro - Brick Break - TM31
  (80, 8000, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 39),
  -- Slowbro - Double Team - TM32
  (80, 8000, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 40),
  -- Slowbro - Flamethrower - TM35
  (80, 8000, 53, 10, NULL, 2, NULL, NULL, 10002035, NULL, 41),
  -- Slowbro - Fire Blast - TM38
  (80, 8000, 126, 10, NULL, 2, NULL, NULL, 10002038, NULL, 42),
  -- Slowbro - Facade - TM42
  (80, 8000, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 43),
  -- Slowbro - Secret Power - TM43
  (80, 8000, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 44),
  -- Slowbro - Rest - TM44
  (80, 8000, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 45),
  -- Slowbro - Attract - TM45
  (80, 8000, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 46),
  -- Slowbro - Skill Swap - TM48
  (80, 8000, 285, 10, NULL, 2, NULL, NULL, 10002048, NULL, 47),
  -- Slowbro - Focus Blast - TM52
  (80, 8000, 411, 10, NULL, 2, NULL, NULL, 10002052, NULL, 48),
  -- Slowbro - Brine - TM55
  (80, 8000, 362, 10, NULL, 2, NULL, NULL, 10002055, NULL, 49),
  -- Slowbro - Fling - TM56
  (80, 8000, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 50),
  -- Slowbro - Endure - TM58
  (80, 8000, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 51),
  -- Slowbro - Drain Punch - TM60
  (80, 8000, 409, 10, NULL, 2, NULL, NULL, 10002060, NULL, 52),
  -- Slowbro - Recycle - TM67
  (80, 8000, 278, 10, NULL, 2, NULL, NULL, 10002067, NULL, 53),
  -- Slowbro - Giga Impact - TM68
  (80, 8000, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 54),
  -- Slowbro - Flash - TM70
  (80, 8000, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 55),
  -- Slowbro - Avalanche - TM72
  (80, 8000, 419, 10, NULL, 2, NULL, NULL, 10002072, NULL, 56),
  -- Slowbro - Thunder Wave - TM73
  (80, 8000, 86, 10, NULL, 2, NULL, NULL, 10002073, NULL, 57),
  -- Slowbro - Psych Up - TM77
  (80, 8000, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 58),
  -- Slowbro - Captivate - TM78
  (80, 8000, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 59),
  -- Slowbro - Sleep Talk - TM82
  (80, 8000, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 60),
  -- Slowbro - Natural Gift - TM83
  (80, 8000, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 61),
  -- Slowbro - Dream Eater - TM85
  (80, 8000, 138, 10, NULL, 2, NULL, NULL, 10002085, NULL, 62),
  -- Slowbro - Grass Knot - TM86
  (80, 8000, 447, 10, NULL, 2, NULL, NULL, 10002086, NULL, 63),
  -- Slowbro - Swagger - TM87
  (80, 8000, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 64),
  -- Slowbro - Substitute - TM90
  (80, 8000, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 65),
  -- Slowbro - Trick Room - TM92
  (80, 8000, 433, 10, NULL, 2, NULL, NULL, 10002092, NULL, 66),
  -- Slowbro - Surf - HM03
  (80, 8000, 57, 10, NULL, 3, NULL, NULL, 10003003, NULL, 67),
  -- Slowbro - Strength - HM04
  (80, 8000, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 68),
  -- Slowbro - Whirlpool - HM05
  (80, 8000, 250, 10, NULL, 3, NULL, NULL, 10003005, NULL, 69),
  -- Slowbro - Rock Smash - HM06
  (80, 8000, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 70),
  -- Slowbro - Ice Punch - Tutor
  (80, 8000, 8, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 71),
  -- Slowbro - Headbutt - Tutor
  (80, 8000, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 72),
  -- Slowbro - Swift - Tutor
  (80, 8000, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 73),
  -- Slowbro - Snore - Tutor
  (80, 8000, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 74),
  -- Slowbro - Mud-Slap - Tutor
  (80, 8000, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 75),
  -- Slowbro - Icy Wind - Tutor
  (80, 8000, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 76),
  -- Slowbro - Fury Cutter - Tutor
  (80, 8000, 210, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 77),
  -- Slowbro - Trick - Tutor
  (80, 8000, 271, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 78),
  -- Slowbro - Magic Coat - Tutor
  (80, 8000, 277, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 79),
  -- Slowbro - Dive - Tutor
  (80, 8000, 291, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 80),
  -- Slowbro - Signal Beam - Tutor
  (80, 8000, 324, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 81),
  -- Slowbro - Iron Defense - Tutor
  (80, 8000, 334, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 82),
  -- Slowbro - Block - Tutor
  (80, 8000, 335, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 83),
  -- Slowbro - Aqua Tail - Tutor
  (80, 8000, 401, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 84),
  -- Slowbro - Zen Headbutt - Tutor
  (80, 8000, 428, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 85),
  -- Magnemite - Tackle - Level 1
  (81, 8100, 33, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magnemite - Metal Sound - Level 1
  (81, 8100, 319, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magnemite - Thunder Shock - Level 6
  (81, 8100, 84, 10, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Magnemite - Supersonic - Level 11
  (81, 8100, 48, 10, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Magnemite - Sonic Boom - Level 14
  (81, 8100, 49, 10, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Magnemite - Thunder Wave - Level 17
  (81, 8100, 86, 10, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Magnemite - Spark - Level 22
  (81, 8100, 209, 10, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Magnemite - Lock-On - Level 27
  (81, 8100, 199, 10, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Magnemite - Magnet Bomb - Level 30
  (81, 8100, 443, 10, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Magnemite - Screech - Level 33
  (81, 8100, 103, 10, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Magnemite - Discharge - Level 38
  (81, 8100, 435, 10, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Magnemite - Mirror Shot - Level 43
  (81, 8100, 429, 10, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Magnemite - Magnet Rise - Level 46
  (81, 8100, 393, 10, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Magnemite - Gyro Ball - Level 49
  (81, 8100, 360, 10, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Magnemite - Zap Cannon - Level 54
  (81, 8100, 192, 10, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Magnemite - Toxic - TM06
  (81, 8100, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 16),
  -- Magnemite - Hidden Power - TM10
  (81, 8100, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 17),
  -- Magnemite - Sunny Day - TM11
  (81, 8100, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 18),
  -- Magnemite - Light Screen - TM16
  (81, 8100, 113, 10, NULL, 2, NULL, NULL, 10002016, NULL, 19),
  -- Magnemite - Protect - TM17
  (81, 8100, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 20),
  -- Magnemite - Rain Dance - TM18
  (81, 8100, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 21),
  -- Magnemite - Frustration - TM21
  (81, 8100, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 22),
  -- Magnemite - Thunderbolt - TM24
  (81, 8100, 85, 10, NULL, 2, NULL, NULL, 10002024, NULL, 23),
  -- Magnemite - Thunder - TM25
  (81, 8100, 87, 10, NULL, 2, NULL, NULL, 10002025, NULL, 24),
  -- Magnemite - Return - TM27
  (81, 8100, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 25),
  -- Magnemite - Double Team - TM32
  (81, 8100, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 26),
  -- Magnemite - Reflect - TM33
  (81, 8100, 115, 10, NULL, 2, NULL, NULL, 10002033, NULL, 27),
  -- Magnemite - Shock Wave - TM34
  (81, 8100, 351, 10, NULL, 2, NULL, NULL, 10002034, NULL, 28),
  -- Magnemite - Facade - TM42
  (81, 8100, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 29),
  -- Magnemite - Secret Power - TM43
  (81, 8100, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 30),
  -- Magnemite - Rest - TM44
  (81, 8100, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 31),
  -- Magnemite - Charge Beam - TM57
  (81, 8100, 451, 10, NULL, 2, NULL, NULL, 10002057, NULL, 32),
  -- Magnemite - Endure - TM58
  (81, 8100, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 33),
  -- Magnemite - Explosion - TM64
  (81, 8100, 153, 10, NULL, 2, NULL, NULL, 10002064, NULL, 34),
  -- Magnemite - Recycle - TM67
  (81, 8100, 278, 10, NULL, 2, NULL, NULL, 10002067, NULL, 35),
  -- Magnemite - Flash - TM70
  (81, 8100, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 36),
  -- Magnemite - Thunder Wave - TM73
  (81, 8100, 86, 10, NULL, 2, NULL, NULL, 10002073, NULL, 37),
  -- Magnemite - Gyro Ball - TM74
  (81, 8100, 360, 10, NULL, 2, NULL, NULL, 10002074, NULL, 38),
  -- Magnemite - Psych Up - TM77
  (81, 8100, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 39),
  -- Magnemite - Sleep Talk - TM82
  (81, 8100, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 40),
  -- Magnemite - Natural Gift - TM83
  (81, 8100, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 41),
  -- Magnemite - Swagger - TM87
  (81, 8100, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 42),
  -- Magnemite - Substitute - TM90
  (81, 8100, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 43),
  -- Magnemite - Flash Cannon - TM91
  (81, 8100, 430, 10, NULL, 2, NULL, NULL, 10002091, NULL, 44),
  -- Magnemite - Swift - Tutor
  (81, 8100, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 45),
  -- Magnemite - Snore - Tutor
  (81, 8100, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 46),
  -- Magnemite - Rollout - Tutor
  (81, 8100, 205, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 47),
  -- Magnemite - Magic Coat - Tutor
  (81, 8100, 277, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 48),
  -- Magnemite - Signal Beam - Tutor
  (81, 8100, 324, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 49),
  -- Magnemite - Iron Defense - Tutor
  (81, 8100, 334, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 50),
  -- Magnemite - Gravity - Tutor
  (81, 8100, 356, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 51),
  -- Magnemite - Magnet Rise - Tutor
  (81, 8100, 393, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 52),
  -- Magneton - Tackle - Level 1
  (82, 8200, 33, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magneton - Supersonic - Level 1
  (82, 8200, 48, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magneton - Thunder Shock - Level 1
  (82, 8200, 84, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magneton - Tri Attack - Level 1
  (82, 8200, 161, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magneton - Metal Sound - Level 1
  (82, 8200, 319, 10, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Magneton - Thunder Shock - Level 6
  (82, 8200, 84, 10, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Magneton - Supersonic - Level 11
  (82, 8200, 48, 10, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Magneton - Sonic Boom - Level 14
  (82, 8200, 49, 10, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Magneton - Thunder Wave - Level 17
  (82, 8200, 86, 10, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Magneton - Spark - Level 22
  (82, 8200, 209, 10, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Magneton - Lock-On - Level 27
  (82, 8200, 199, 10, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Magneton - Magnet Bomb - Level 30
  (82, 8200, 443, 10, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Magneton - Screech - Level 34
  (82, 8200, 103, 10, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Magneton - Discharge - Level 40
  (82, 8200, 435, 10, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Magneton - Mirror Shot - Level 46
  (82, 8200, 429, 10, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Magneton - Magnet Rise - Level 50
  (82, 8200, 393, 10, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Magneton - Gyro Ball - Level 54
  (82, 8200, 360, 10, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Magneton - Zap Cannon - Level 60
  (82, 8200, 192, 10, NULL, 1, 60, NULL, NULL, NULL, 18),
  -- Magneton - Toxic - TM06
  (82, 8200, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 19),
  -- Magneton - Hidden Power - TM10
  (82, 8200, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 20),
  -- Magneton - Sunny Day - TM11
  (82, 8200, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 21),
  -- Magneton - Hyper Beam - TM15
  (82, 8200, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 22),
  -- Magneton - Light Screen - TM16
  (82, 8200, 113, 10, NULL, 2, NULL, NULL, 10002016, NULL, 23),
  -- Magneton - Protect - TM17
  (82, 8200, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 24),
  -- Magneton - Rain Dance - TM18
  (82, 8200, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 25),
  -- Magneton - Frustration - TM21
  (82, 8200, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 26),
  -- Magneton - Thunderbolt - TM24
  (82, 8200, 85, 10, NULL, 2, NULL, NULL, 10002024, NULL, 27),
  -- Magneton - Thunder - TM25
  (82, 8200, 87, 10, NULL, 2, NULL, NULL, 10002025, NULL, 28),
  -- Magneton - Return - TM27
  (82, 8200, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 29),
  -- Magneton - Double Team - TM32
  (82, 8200, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 30),
  -- Magneton - Reflect - TM33
  (82, 8200, 115, 10, NULL, 2, NULL, NULL, 10002033, NULL, 31),
  -- Magneton - Shock Wave - TM34
  (82, 8200, 351, 10, NULL, 2, NULL, NULL, 10002034, NULL, 32),
  -- Magneton - Facade - TM42
  (82, 8200, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 33),
  -- Magneton - Secret Power - TM43
  (82, 8200, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 34),
  -- Magneton - Rest - TM44
  (82, 8200, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 35),
  -- Magneton - Charge Beam - TM57
  (82, 8200, 451, 10, NULL, 2, NULL, NULL, 10002057, NULL, 36),
  -- Magneton - Endure - TM58
  (82, 8200, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 37),
  -- Magneton - Explosion - TM64
  (82, 8200, 153, 10, NULL, 2, NULL, NULL, 10002064, NULL, 38),
  -- Magneton - Recycle - TM67
  (82, 8200, 278, 10, NULL, 2, NULL, NULL, 10002067, NULL, 39),
  -- Magneton - Giga Impact - TM68
  (82, 8200, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 40),
  -- Magneton - Flash - TM70
  (82, 8200, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 41),
  -- Magneton - Thunder Wave - TM73
  (82, 8200, 86, 10, NULL, 2, NULL, NULL, 10002073, NULL, 42),
  -- Magneton - Gyro Ball - TM74
  (82, 8200, 360, 10, NULL, 2, NULL, NULL, 10002074, NULL, 43),
  -- Magneton - Psych Up - TM77
  (82, 8200, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 44),
  -- Magneton - Sleep Talk - TM82
  (82, 8200, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 45),
  -- Magneton - Natural Gift - TM83
  (82, 8200, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 46),
  -- Magneton - Swagger - TM87
  (82, 8200, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 47),
  -- Magneton - Substitute - TM90
  (82, 8200, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 48),
  -- Magneton - Flash Cannon - TM91
  (82, 8200, 430, 10, NULL, 2, NULL, NULL, 10002091, NULL, 49),
  -- Magneton - Swift - Tutor
  (82, 8200, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 50),
  -- Magneton - Snore - Tutor
  (82, 8200, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 51),
  -- Magneton - Rollout - Tutor
  (82, 8200, 205, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 52),
  -- Magneton - Magic Coat - Tutor
  (82, 8200, 277, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 53),
  -- Magneton - Signal Beam - Tutor
  (82, 8200, 324, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 54),
  -- Magneton - Iron Defense - Tutor
  (82, 8200, 334, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Magneton - Gravity - Tutor
  (82, 8200, 356, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Magneton - Magnet Rise - Tutor
  (82, 8200, 393, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Farfetch'd - Sand Attack - Level 1
  (83, 8300, 28, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Farfetch'd - Leer - Level 1
  (83, 8300, 43, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Farfetch'd - Peck - Level 1
  (83, 8300, 64, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Farfetch'd - Fury Cutter - Level 1
  (83, 8300, 210, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Farfetch'd - Poison Jab - Level 1
  (83, 8300, 398, 10, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Farfetch'd - Fury Attack - Level 7
  (83, 8300, 31, 10, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Farfetch'd - Knock Off - Level 9
  (83, 8300, 282, 10, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Farfetch'd - Aerial Ace - Level 13
  (83, 8300, 332, 10, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Farfetch'd - Slash - Level 19
  (83, 8300, 163, 10, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Farfetch'd - Air Cutter - Level 21
  (83, 8300, 314, 10, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Farfetch'd - Swords Dance - Level 25
  (83, 8300, 14, 10, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Farfetch'd - Agility - Level 31
  (83, 8300, 97, 10, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Farfetch'd - Night Slash - Level 33
  (83, 8300, 400, 10, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Farfetch'd - Air Slash - Level 37
  (83, 8300, 403, 10, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Farfetch'd - Feint - Level 43
  (83, 8300, 364, 10, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Farfetch'd - False Swipe - Level 45
  (83, 8300, 206, 10, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Farfetch'd - Toxic - TM06
  (83, 8300, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 17),
  -- Farfetch'd - Hidden Power - TM10
  (83, 8300, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 18),
  -- Farfetch'd - Sunny Day - TM11
  (83, 8300, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 19),
  -- Farfetch'd - Protect - TM17
  (83, 8300, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 20),
  -- Farfetch'd - Frustration - TM21
  (83, 8300, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 21),
  -- Farfetch'd - Iron Tail - TM23
  (83, 8300, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 22),
  -- Farfetch'd - Return - TM27
  (83, 8300, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 23),
  -- Farfetch'd - Double Team - TM32
  (83, 8300, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 24),
  -- Farfetch'd - Aerial Ace - TM40
  (83, 8300, 332, 10, NULL, 2, NULL, NULL, 10002040, NULL, 25),
  -- Farfetch'd - Facade - TM42
  (83, 8300, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 26),
  -- Farfetch'd - Secret Power - TM43
  (83, 8300, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 27),
  -- Farfetch'd - Rest - TM44
  (83, 8300, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 28),
  -- Farfetch'd - Attract - TM45
  (83, 8300, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 29),
  -- Farfetch'd - Thief - TM46
  (83, 8300, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 30),
  -- Farfetch'd - Steel Wing - TM47
  (83, 8300, 211, 10, NULL, 2, NULL, NULL, 10002047, NULL, 31),
  -- Farfetch'd - Roost - TM51
  (83, 8300, 355, 10, NULL, 2, NULL, NULL, 10002051, NULL, 32),
  -- Farfetch'd - False Swipe - TM54
  (83, 8300, 206, 10, NULL, 2, NULL, NULL, 10002054, NULL, 33),
  -- Farfetch'd - Endure - TM58
  (83, 8300, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 34),
  -- Farfetch'd - Swords Dance - TM75
  (83, 8300, 14, 10, NULL, 2, NULL, NULL, 10002075, NULL, 35),
  -- Farfetch'd - Psych Up - TM77
  (83, 8300, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 36),
  -- Farfetch'd - Captivate - TM78
  (83, 8300, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 37),
  -- Farfetch'd - Sleep Talk - TM82
  (83, 8300, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 38),
  -- Farfetch'd - Natural Gift - TM83
  (83, 8300, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 39),
  -- Farfetch'd - Poison Jab - TM84
  (83, 8300, 398, 10, NULL, 2, NULL, NULL, 10002084, NULL, 40),
  -- Farfetch'd - Swagger - TM87
  (83, 8300, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 41),
  -- Farfetch'd - Pluck - TM88
  (83, 8300, 365, 10, NULL, 2, NULL, NULL, 10002088, NULL, 42),
  -- Farfetch'd - U-turn - TM89
  (83, 8300, 369, 10, NULL, 2, NULL, NULL, 10002089, NULL, 43),
  -- Farfetch'd - Substitute - TM90
  (83, 8300, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 44),
  -- Farfetch'd - Cut - HM01
  (83, 8300, 15, 10, NULL, 3, NULL, NULL, 10003001, NULL, 45),
  -- Farfetch'd - Fly - HM02
  (83, 8300, 19, 10, NULL, 3, NULL, NULL, 10003002, NULL, 46),
  -- Farfetch'd - Gust - Egg
  (83, 8300, 16, 10, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Farfetch'd - Quick Attack - Egg
  (83, 8300, 98, 10, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Farfetch'd - Mirror Move - Egg
  (83, 8300, 119, 10, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Farfetch'd - Curse - Egg
  (83, 8300, 174, 10, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Farfetch'd - Flail - Egg
  (83, 8300, 175, 10, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Farfetch'd - Mud-Slap - Egg
  (83, 8300, 189, 10, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Farfetch'd - Foresight - Egg
  (83, 8300, 193, 10, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Farfetch'd - Steel Wing - Egg
  (83, 8300, 211, 10, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Farfetch'd - Feather Dance - Egg
  (83, 8300, 297, 10, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Farfetch'd - Covet - Egg
  (83, 8300, 343, 10, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Farfetch'd - Leaf Blade - Egg
  (83, 8300, 348, 10, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Farfetch'd - Night Slash - Egg
  (83, 8300, 400, 10, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Farfetch'd - Headbutt - Tutor
  (83, 8300, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Farfetch'd - Swift - Tutor
  (83, 8300, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Farfetch'd - Snore - Tutor
  (83, 8300, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Farfetch'd - Mud-Slap - Tutor
  (83, 8300, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Farfetch'd - Fury Cutter - Tutor
  (83, 8300, 210, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Farfetch'd - Twister - Tutor
  (83, 8300, 239, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Farfetch'd - Uproar - Tutor
  (83, 8300, 253, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Farfetch'd - Heat Wave - Tutor
  (83, 8300, 257, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Farfetch'd - Knock Off - Tutor
  (83, 8300, 282, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Farfetch'd - Air Cutter - Tutor
  (83, 8300, 314, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Farfetch'd - Last Resort - Tutor
  (83, 8300, 387, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Farfetch'd - Ominous Wind - Tutor
  (83, 8300, 466, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 70),
  -- Doduo - Growl - Level 1
  (84, 8400, 45, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Doduo - Peck - Level 1
  (84, 8400, 64, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Doduo - Quick Attack - Level 5
  (84, 8400, 98, 10, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Doduo - Rage - Level 10
  (84, 8400, 99, 10, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Doduo - Fury Attack - Level 14
  (84, 8400, 31, 10, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Doduo - Pursuit - Level 19
  (84, 8400, 228, 10, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Doduo - Uproar - Level 23
  (84, 8400, 253, 10, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Doduo - Acupressure - Level 28
  (84, 8400, 367, 10, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Doduo - Double Hit - Level 32
  (84, 8400, 458, 10, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Doduo - Agility - Level 37
  (84, 8400, 97, 10, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Doduo - Drill Peck - Level 41
  (84, 8400, 65, 10, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Doduo - Endeavor - Level 46
  (84, 8400, 283, 10, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Doduo - Toxic - TM06
  (84, 8400, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 13),
  -- Doduo - Hidden Power - TM10
  (84, 8400, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 14),
  -- Doduo - Sunny Day - TM11
  (84, 8400, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 15),
  -- Doduo - Protect - TM17
  (84, 8400, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 16),
  -- Doduo - Frustration - TM21
  (84, 8400, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 17),
  -- Doduo - Return - TM27
  (84, 8400, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 18),
  -- Doduo - Double Team - TM32
  (84, 8400, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 19),
  -- Doduo - Aerial Ace - TM40
  (84, 8400, 332, 10, NULL, 2, NULL, NULL, 10002040, NULL, 20),
  -- Doduo - Facade - TM42
  (84, 8400, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 21),
  -- Doduo - Secret Power - TM43
  (84, 8400, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 22),
  -- Doduo - Rest - TM44
  (84, 8400, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 23),
  -- Doduo - Attract - TM45
  (84, 8400, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 24),
  -- Doduo - Thief - TM46
  (84, 8400, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 25),
  -- Doduo - Steel Wing - TM47
  (84, 8400, 211, 10, NULL, 2, NULL, NULL, 10002047, NULL, 26),
  -- Doduo - Roost - TM51
  (84, 8400, 355, 10, NULL, 2, NULL, NULL, 10002051, NULL, 27),
  -- Doduo - Endure - TM58
  (84, 8400, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 28),
  -- Doduo - Captivate - TM78
  (84, 8400, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 29),
  -- Doduo - Sleep Talk - TM82
  (84, 8400, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 30),
  -- Doduo - Natural Gift - TM83
  (84, 8400, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 31),
  -- Doduo - Swagger - TM87
  (84, 8400, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 32),
  -- Doduo - Pluck - TM88
  (84, 8400, 365, 10, NULL, 2, NULL, NULL, 10002088, NULL, 33),
  -- Doduo - Substitute - TM90
  (84, 8400, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 34),
  -- Doduo - Fly - HM02
  (84, 8400, 19, 10, NULL, 3, NULL, NULL, 10003002, NULL, 35),
  -- Doduo - Supersonic - Egg
  (84, 8400, 48, 10, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Doduo - Quick Attack - Egg
  (84, 8400, 98, 10, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Doduo - Haze - Egg
  (84, 8400, 114, 10, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Doduo - Mirror Move - Egg
  (84, 8400, 119, 10, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Doduo - Flail - Egg
  (84, 8400, 175, 10, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Doduo - Feint Attack - Egg
  (84, 8400, 185, 10, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Doduo - Endeavor - Egg
  (84, 8400, 283, 10, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Doduo - Brave Bird - Egg
  (84, 8400, 413, 10, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Doduo - Swift - Tutor
  (84, 8400, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 44),
  -- Doduo - Snore - Tutor
  (84, 8400, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 45),
  -- Doduo - Mud-Slap - Tutor
  (84, 8400, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 46),
  -- Doduo - Uproar - Tutor
  (84, 8400, 253, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 47),
  -- Doduo - Knock Off - Tutor
  (84, 8400, 282, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 48),
  -- Doduo - Endeavor - Tutor
  (84, 8400, 283, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 49),
  -- Doduo - Air Cutter - Tutor
  (84, 8400, 314, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 50),
  -- Dodrio - Growl - Level 1
  (85, 8500, 45, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dodrio - Peck - Level 1
  (85, 8500, 64, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dodrio - Quick Attack - Level 1
  (85, 8500, 98, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dodrio - Rage - Level 1
  (85, 8500, 99, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dodrio - Pluck - Level 1
  (85, 8500, 365, 10, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dodrio - Quick Attack - Level 5
  (85, 8500, 98, 10, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Dodrio - Rage - Level 10
  (85, 8500, 99, 10, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Dodrio - Fury Attack - Level 14
  (85, 8500, 31, 10, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Dodrio - Pursuit - Level 19
  (85, 8500, 228, 10, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Dodrio - Uproar - Level 23
  (85, 8500, 253, 10, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Dodrio - Acupressure - Level 28
  (85, 8500, 367, 10, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Dodrio - Tri Attack - Level 34
  (85, 8500, 161, 10, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Dodrio - Agility - Level 41
  (85, 8500, 97, 10, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Dodrio - Drill Peck - Level 47
  (85, 8500, 65, 10, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Dodrio - Endeavor - Level 54
  (85, 8500, 283, 10, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Dodrio - Toxic - TM06
  (85, 8500, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 16),
  -- Dodrio - Hidden Power - TM10
  (85, 8500, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 17),
  -- Dodrio - Sunny Day - TM11
  (85, 8500, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 18),
  -- Dodrio - Taunt - TM12
  (85, 8500, 269, 10, NULL, 2, NULL, NULL, 10002012, NULL, 19),
  -- Dodrio - Hyper Beam - TM15
  (85, 8500, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 20),
  -- Dodrio - Protect - TM17
  (85, 8500, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 21),
  -- Dodrio - Frustration - TM21
  (85, 8500, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 22),
  -- Dodrio - Return - TM27
  (85, 8500, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 23),
  -- Dodrio - Double Team - TM32
  (85, 8500, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 24),
  -- Dodrio - Aerial Ace - TM40
  (85, 8500, 332, 10, NULL, 2, NULL, NULL, 10002040, NULL, 25),
  -- Dodrio - Torment - TM41
  (85, 8500, 259, 10, NULL, 2, NULL, NULL, 10002041, NULL, 26),
  -- Dodrio - Facade - TM42
  (85, 8500, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 27),
  -- Dodrio - Secret Power - TM43
  (85, 8500, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 28),
  -- Dodrio - Rest - TM44
  (85, 8500, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 29),
  -- Dodrio - Attract - TM45
  (85, 8500, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 30),
  -- Dodrio - Thief - TM46
  (85, 8500, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 31),
  -- Dodrio - Steel Wing - TM47
  (85, 8500, 211, 10, NULL, 2, NULL, NULL, 10002047, NULL, 32),
  -- Dodrio - Roost - TM51
  (85, 8500, 355, 10, NULL, 2, NULL, NULL, 10002051, NULL, 33),
  -- Dodrio - Endure - TM58
  (85, 8500, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 34),
  -- Dodrio - Payback - TM66
  (85, 8500, 371, 10, NULL, 2, NULL, NULL, 10002066, NULL, 35),
  -- Dodrio - Giga Impact - TM68
  (85, 8500, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 36),
  -- Dodrio - Captivate - TM78
  (85, 8500, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 37),
  -- Dodrio - Sleep Talk - TM82
  (85, 8500, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 38),
  -- Dodrio - Natural Gift - TM83
  (85, 8500, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 39),
  -- Dodrio - Swagger - TM87
  (85, 8500, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 40),
  -- Dodrio - Pluck - TM88
  (85, 8500, 365, 10, NULL, 2, NULL, NULL, 10002088, NULL, 41),
  -- Dodrio - Substitute - TM90
  (85, 8500, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 42),
  -- Dodrio - Fly - HM02
  (85, 8500, 19, 10, NULL, 3, NULL, NULL, 10003002, NULL, 43),
  -- Dodrio - Swift - Tutor
  (85, 8500, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 44),
  -- Dodrio - Sky Attack - Tutor
  (85, 8500, 143, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 45),
  -- Dodrio - Snore - Tutor
  (85, 8500, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 46),
  -- Dodrio - Mud-Slap - Tutor
  (85, 8500, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 47),
  -- Dodrio - Uproar - Tutor
  (85, 8500, 253, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 48),
  -- Dodrio - Knock Off - Tutor
  (85, 8500, 282, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 49),
  -- Dodrio - Endeavor - Tutor
  (85, 8500, 283, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 50),
  -- Dodrio - Air Cutter - Tutor
  (85, 8500, 314, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 51),
  -- Seel - Headbutt - Level 1
  (86, 8600, 29, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seel - Growl - Level 3
  (86, 8600, 45, 10, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Seel - Water Sport - Level 7
  (86, 8600, 346, 10, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Seel - Icy Wind - Level 11
  (86, 8600, 196, 10, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Seel - Encore - Level 13
  (86, 8600, 227, 10, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Seel - Ice Shard - Level 17
  (86, 8600, 420, 10, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Seel - Rest - Level 21
  (86, 8600, 156, 10, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Seel - Aqua Ring - Level 23
  (86, 8600, 392, 10, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Seel - Aurora Beam - Level 27
  (86, 8600, 62, 10, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Seel - Aqua Jet - Level 31
  (86, 8600, 453, 10, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Seel - Brine - Level 33
  (86, 8600, 362, 10, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Seel - Take Down - Level 37
  (86, 8600, 36, 10, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Seel - Dive - Level 41
  (86, 8600, 291, 10, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Seel - Aqua Tail - Level 43
  (86, 8600, 401, 10, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Seel - Ice Beam - Level 47
  (86, 8600, 58, 10, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Seel - Safeguard - Level 51
  (86, 8600, 219, 10, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Seel - Water Pulse - TM03
  (86, 8600, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 17),
  -- Seel - Toxic - TM06
  (86, 8600, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 18),
  -- Seel - Hail - TM07
  (86, 8600, 258, 10, NULL, 2, NULL, NULL, 10002007, NULL, 19),
  -- Seel - Hidden Power - TM10
  (86, 8600, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 20),
  -- Seel - Ice Beam - TM13
  (86, 8600, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 21),
  -- Seel - Blizzard - TM14
  (86, 8600, 59, 10, NULL, 2, NULL, NULL, 10002014, NULL, 22),
  -- Seel - Protect - TM17
  (86, 8600, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 23),
  -- Seel - Rain Dance - TM18
  (86, 8600, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 24),
  -- Seel - Safeguard - TM20
  (86, 8600, 219, 10, NULL, 2, NULL, NULL, 10002020, NULL, 25),
  -- Seel - Frustration - TM21
  (86, 8600, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 26),
  -- Seel - Return - TM27
  (86, 8600, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 27),
  -- Seel - Double Team - TM32
  (86, 8600, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 28),
  -- Seel - Facade - TM42
  (86, 8600, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 29),
  -- Seel - Secret Power - TM43
  (86, 8600, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 30),
  -- Seel - Rest - TM44
  (86, 8600, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 31),
  -- Seel - Attract - TM45
  (86, 8600, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 32),
  -- Seel - Thief - TM46
  (86, 8600, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 33),
  -- Seel - Brine - TM55
  (86, 8600, 362, 10, NULL, 2, NULL, NULL, 10002055, NULL, 34),
  -- Seel - Fling - TM56
  (86, 8600, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 35),
  -- Seel - Endure - TM58
  (86, 8600, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 36),
  -- Seel - Captivate - TM78
  (86, 8600, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 37),
  -- Seel - Sleep Talk - TM82
  (86, 8600, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 38),
  -- Seel - Natural Gift - TM83
  (86, 8600, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 39),
  -- Seel - Swagger - TM87
  (86, 8600, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 40),
  -- Seel - Substitute - TM90
  (86, 8600, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 41),
  -- Seel - Surf - HM03
  (86, 8600, 57, 10, NULL, 3, NULL, NULL, 10003003, NULL, 42),
  -- Seel - Whirlpool - HM05
  (86, 8600, 250, 10, NULL, 3, NULL, NULL, 10003005, NULL, 43),
  -- Seel - Waterfall - HM07
  (86, 8600, 127, 10, NULL, 3, NULL, NULL, 10003007, NULL, 44),
  -- Seel - Slam - Egg
  (86, 8600, 21, 10, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Seel - Horn Drill - Egg
  (86, 8600, 32, 10, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Seel - Disable - Egg
  (86, 8600, 50, 10, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Seel - Lick - Egg
  (86, 8600, 122, 10, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Seel - Perish Song - Egg
  (86, 8600, 195, 10, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Seel - Encore - Egg
  (86, 8600, 227, 10, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Seel - Fake Out - Egg
  (86, 8600, 252, 10, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Seel - Stockpile - Egg
  (86, 8600, 254, 10, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Seel - Spit Up - Egg
  (86, 8600, 255, 10, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Seel - Swallow - Egg
  (86, 8600, 256, 10, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Seel - Signal Beam - Egg
  (86, 8600, 324, 10, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Seel - Icicle Spear - Egg
  (86, 8600, 333, 10, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Seel - Headbutt - Tutor
  (86, 8600, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Seel - Snore - Tutor
  (86, 8600, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Seel - Icy Wind - Tutor
  (86, 8600, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Seel - Dive - Tutor
  (86, 8600, 291, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Seel - Signal Beam - Tutor
  (86, 8600, 324, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Seel - Aqua Tail - Tutor
  (86, 8600, 401, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Dewgong - Headbutt - Level 1
  (87, 8700, 29, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dewgong - Growl - Level 1
  (87, 8700, 45, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dewgong - Icy Wind - Level 1
  (87, 8700, 196, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dewgong - Signal Beam - Level 1
  (87, 8700, 324, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dewgong - Growl - Level 3
  (87, 8700, 45, 10, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Dewgong - Signal Beam - Level 7
  (87, 8700, 324, 10, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Dewgong - Icy Wind - Level 11
  (87, 8700, 196, 10, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Dewgong - Encore - Level 13
  (87, 8700, 227, 10, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Dewgong - Ice Shard - Level 17
  (87, 8700, 420, 10, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Dewgong - Rest - Level 21
  (87, 8700, 156, 10, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Dewgong - Aqua Ring - Level 23
  (87, 8700, 392, 10, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Dewgong - Aurora Beam - Level 27
  (87, 8700, 62, 10, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Dewgong - Aqua Jet - Level 31
  (87, 8700, 453, 10, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Dewgong - Brine - Level 33
  (87, 8700, 362, 10, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Dewgong - Sheer Cold - Level 34
  (87, 8700, 329, 10, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Dewgong - Take Down - Level 37
  (87, 8700, 36, 10, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Dewgong - Dive - Level 41
  (87, 8700, 291, 10, NULL, 1, 41, NULL, NULL, NULL, 17),
  -- Dewgong - Aqua Tail - Level 43
  (87, 8700, 401, 10, NULL, 1, 43, NULL, NULL, NULL, 18),
  -- Dewgong - Ice Beam - Level 47
  (87, 8700, 58, 10, NULL, 1, 47, NULL, NULL, NULL, 19),
  -- Dewgong - Safeguard - Level 51
  (87, 8700, 219, 10, NULL, 1, 51, NULL, NULL, NULL, 20),
  -- Dewgong - Water Pulse - TM03
  (87, 8700, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 21),
  -- Dewgong - Toxic - TM06
  (87, 8700, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 22),
  -- Dewgong - Hail - TM07
  (87, 8700, 258, 10, NULL, 2, NULL, NULL, 10002007, NULL, 23),
  -- Dewgong - Hidden Power - TM10
  (87, 8700, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 24),
  -- Dewgong - Ice Beam - TM13
  (87, 8700, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 25),
  -- Dewgong - Blizzard - TM14
  (87, 8700, 59, 10, NULL, 2, NULL, NULL, 10002014, NULL, 26),
  -- Dewgong - Hyper Beam - TM15
  (87, 8700, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 27),
  -- Dewgong - Protect - TM17
  (87, 8700, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 28),
  -- Dewgong - Rain Dance - TM18
  (87, 8700, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 29),
  -- Dewgong - Safeguard - TM20
  (87, 8700, 219, 10, NULL, 2, NULL, NULL, 10002020, NULL, 30),
  -- Dewgong - Frustration - TM21
  (87, 8700, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 31),
  -- Dewgong - Return - TM27
  (87, 8700, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 32),
  -- Dewgong - Double Team - TM32
  (87, 8700, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 33),
  -- Dewgong - Facade - TM42
  (87, 8700, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 34),
  -- Dewgong - Secret Power - TM43
  (87, 8700, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 35),
  -- Dewgong - Rest - TM44
  (87, 8700, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 36),
  -- Dewgong - Attract - TM45
  (87, 8700, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 37),
  -- Dewgong - Thief - TM46
  (87, 8700, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 38),
  -- Dewgong - Brine - TM55
  (87, 8700, 362, 10, NULL, 2, NULL, NULL, 10002055, NULL, 39),
  -- Dewgong - Fling - TM56
  (87, 8700, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 40),
  -- Dewgong - Endure - TM58
  (87, 8700, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 41),
  -- Dewgong - Giga Impact - TM68
  (87, 8700, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 42),
  -- Dewgong - Avalanche - TM72
  (87, 8700, 419, 10, NULL, 2, NULL, NULL, 10002072, NULL, 43),
  -- Dewgong - Captivate - TM78
  (87, 8700, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 44),
  -- Dewgong - Sleep Talk - TM82
  (87, 8700, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 45),
  -- Dewgong - Natural Gift - TM83
  (87, 8700, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 46),
  -- Dewgong - Swagger - TM87
  (87, 8700, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 47),
  -- Dewgong - Substitute - TM90
  (87, 8700, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 48),
  -- Dewgong - Surf - HM03
  (87, 8700, 57, 10, NULL, 3, NULL, NULL, 10003003, NULL, 49),
  -- Dewgong - Whirlpool - HM05
  (87, 8700, 250, 10, NULL, 3, NULL, NULL, 10003005, NULL, 50),
  -- Dewgong - Waterfall - HM07
  (87, 8700, 127, 10, NULL, 3, NULL, NULL, 10003007, NULL, 51),
  -- Dewgong - Headbutt - Tutor
  (87, 8700, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 52),
  -- Dewgong - Snore - Tutor
  (87, 8700, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 53),
  -- Dewgong - Icy Wind - Tutor
  (87, 8700, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 54),
  -- Dewgong - Dive - Tutor
  (87, 8700, 291, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Dewgong - Signal Beam - Tutor
  (87, 8700, 324, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Dewgong - Aqua Tail - Tutor
  (87, 8700, 401, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Grimer - Pound - Level 1
  (88, 8800, 1, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grimer - Poison Gas - Level 1
  (88, 8800, 139, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grimer - Harden - Level 4
  (88, 8800, 106, 10, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Grimer - Mud-Slap - Level 7
  (88, 8800, 189, 10, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Grimer - Disable - Level 12
  (88, 8800, 50, 10, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Grimer - Minimize - Level 17
  (88, 8800, 107, 10, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Grimer - Sludge - Level 20
  (88, 8800, 124, 10, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Grimer - Mud Bomb - Level 23
  (88, 8800, 426, 10, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Grimer - Fling - Level 28
  (88, 8800, 374, 10, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Grimer - Screech - Level 33
  (88, 8800, 103, 10, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Grimer - Sludge Bomb - Level 36
  (88, 8800, 188, 10, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Grimer - Acid Armor - Level 39
  (88, 8800, 151, 10, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Grimer - Gunk Shot - Level 44
  (88, 8800, 441, 10, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Grimer - Memento - Level 49
  (88, 8800, 262, 10, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Grimer - Toxic - TM06
  (88, 8800, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 15),
  -- Grimer - Hidden Power - TM10
  (88, 8800, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 16),
  -- Grimer - Sunny Day - TM11
  (88, 8800, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 17),
  -- Grimer - Taunt - TM12
  (88, 8800, 269, 10, NULL, 2, NULL, NULL, 10002012, NULL, 18),
  -- Grimer - Protect - TM17
  (88, 8800, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 19),
  -- Grimer - Rain Dance - TM18
  (88, 8800, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 20),
  -- Grimer - Giga Drain - TM19
  (88, 8800, 202, 10, NULL, 2, NULL, NULL, 10002019, NULL, 21),
  -- Grimer - Frustration - TM21
  (88, 8800, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 22),
  -- Grimer - Thunderbolt - TM24
  (88, 8800, 85, 10, NULL, 2, NULL, NULL, 10002024, NULL, 23),
  -- Grimer - Thunder - TM25
  (88, 8800, 87, 10, NULL, 2, NULL, NULL, 10002025, NULL, 24),
  -- Grimer - Return - TM27
  (88, 8800, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 25),
  -- Grimer - Dig - TM28
  (88, 8800, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 26),
  -- Grimer - Shadow Ball - TM30
  (88, 8800, 247, 10, NULL, 2, NULL, NULL, 10002030, NULL, 27),
  -- Grimer - Double Team - TM32
  (88, 8800, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 28),
  -- Grimer - Shock Wave - TM34
  (88, 8800, 351, 10, NULL, 2, NULL, NULL, 10002034, NULL, 29),
  -- Grimer - Flamethrower - TM35
  (88, 8800, 53, 10, NULL, 2, NULL, NULL, 10002035, NULL, 30),
  -- Grimer - Sludge Bomb - TM36
  (88, 8800, 188, 10, NULL, 2, NULL, NULL, 10002036, NULL, 31),
  -- Grimer - Fire Blast - TM38
  (88, 8800, 126, 10, NULL, 2, NULL, NULL, 10002038, NULL, 32),
  -- Grimer - Rock Tomb - TM39
  (88, 8800, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 33),
  -- Grimer - Torment - TM41
  (88, 8800, 259, 10, NULL, 2, NULL, NULL, 10002041, NULL, 34),
  -- Grimer - Facade - TM42
  (88, 8800, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 35),
  -- Grimer - Secret Power - TM43
  (88, 8800, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 36),
  -- Grimer - Rest - TM44
  (88, 8800, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 37),
  -- Grimer - Attract - TM45
  (88, 8800, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 38),
  -- Grimer - Thief - TM46
  (88, 8800, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 39),
  -- Grimer - Fling - TM56
  (88, 8800, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 40),
  -- Grimer - Endure - TM58
  (88, 8800, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 41),
  -- Grimer - Explosion - TM64
  (88, 8800, 153, 10, NULL, 2, NULL, NULL, 10002064, NULL, 42),
  -- Grimer - Payback - TM66
  (88, 8800, 371, 10, NULL, 2, NULL, NULL, 10002066, NULL, 43),
  -- Grimer - Captivate - TM78
  (88, 8800, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 44),
  -- Grimer - Rock Slide - TM80
  (88, 8800, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 45),
  -- Grimer - Sleep Talk - TM82
  (88, 8800, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 46),
  -- Grimer - Natural Gift - TM83
  (88, 8800, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 47),
  -- Grimer - Poison Jab - TM84
  (88, 8800, 398, 10, NULL, 2, NULL, NULL, 10002084, NULL, 48),
  -- Grimer - Swagger - TM87
  (88, 8800, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 49),
  -- Grimer - Substitute - TM90
  (88, 8800, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 50),
  -- Grimer - Strength - HM04
  (88, 8800, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 51),
  -- Grimer - Haze - Egg
  (88, 8800, 114, 10, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Grimer - Lick - Egg
  (88, 8800, 122, 10, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Grimer - Explosion - Egg
  (88, 8800, 153, 10, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Grimer - Curse - Egg
  (88, 8800, 174, 10, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Grimer - Mean Look - Egg
  (88, 8800, 212, 10, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Grimer - Stockpile - Egg
  (88, 8800, 254, 10, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Grimer - Spit Up - Egg
  (88, 8800, 255, 10, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Grimer - Swallow - Egg
  (88, 8800, 256, 10, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Grimer - Imprison - Egg
  (88, 8800, 286, 10, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Grimer - Shadow Punch - Egg
  (88, 8800, 325, 10, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Grimer - Shadow Sneak - Egg
  (88, 8800, 425, 10, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Grimer - Fire Punch - Tutor
  (88, 8800, 7, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Grimer - Ice Punch - Tutor
  (88, 8800, 8, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Grimer - Thunder Punch - Tutor
  (88, 8800, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Grimer - Snore - Tutor
  (88, 8800, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Grimer - Mud-Slap - Tutor
  (88, 8800, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Grimer - Pain Split - Tutor
  (88, 8800, 220, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Grimer - Gunk Shot - Tutor
  (88, 8800, 441, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Muk - Pound - Level 1
  (89, 8900, 1, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Muk - Harden - Level 1
  (89, 8900, 106, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Muk - Poison Gas - Level 1
  (89, 8900, 139, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Muk - Mud-Slap - Level 1
  (89, 8900, 189, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Muk - Harden - Level 4
  (89, 8900, 106, 10, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Muk - Mud-Slap - Level 7
  (89, 8900, 189, 10, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Muk - Disable - Level 12
  (89, 8900, 50, 10, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Muk - Minimize - Level 17
  (89, 8900, 107, 10, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Muk - Sludge - Level 20
  (89, 8900, 124, 10, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Muk - Mud Bomb - Level 23
  (89, 8900, 426, 10, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Muk - Fling - Level 28
  (89, 8900, 374, 10, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Muk - Screech - Level 33
  (89, 8900, 103, 10, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Muk - Sludge Bomb - Level 36
  (89, 8900, 188, 10, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Muk - Acid Armor - Level 44
  (89, 8900, 151, 10, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Muk - Gunk Shot - Level 54
  (89, 8900, 441, 10, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Muk - Memento - Level 65
  (89, 8900, 262, 10, NULL, 1, 65, NULL, NULL, NULL, 16),
  -- Muk - Focus Punch - TM01
  (89, 8900, 264, 10, NULL, 2, NULL, NULL, 10002001, NULL, 17),
  -- Muk - Toxic - TM06
  (89, 8900, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 18),
  -- Muk - Hidden Power - TM10
  (89, 8900, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 19),
  -- Muk - Sunny Day - TM11
  (89, 8900, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 20),
  -- Muk - Taunt - TM12
  (89, 8900, 269, 10, NULL, 2, NULL, NULL, 10002012, NULL, 21),
  -- Muk - Hyper Beam - TM15
  (89, 8900, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 22),
  -- Muk - Protect - TM17
  (89, 8900, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 23),
  -- Muk - Rain Dance - TM18
  (89, 8900, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 24),
  -- Muk - Giga Drain - TM19
  (89, 8900, 202, 10, NULL, 2, NULL, NULL, 10002019, NULL, 25),
  -- Muk - Frustration - TM21
  (89, 8900, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 26),
  -- Muk - Thunderbolt - TM24
  (89, 8900, 85, 10, NULL, 2, NULL, NULL, 10002024, NULL, 27),
  -- Muk - Thunder - TM25
  (89, 8900, 87, 10, NULL, 2, NULL, NULL, 10002025, NULL, 28),
  -- Muk - Return - TM27
  (89, 8900, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 29),
  -- Muk - Dig - TM28
  (89, 8900, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 30),
  -- Muk - Shadow Ball - TM30
  (89, 8900, 247, 10, NULL, 2, NULL, NULL, 10002030, NULL, 31),
  -- Muk - Brick Break - TM31
  (89, 8900, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 32),
  -- Muk - Double Team - TM32
  (89, 8900, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 33),
  -- Muk - Shock Wave - TM34
  (89, 8900, 351, 10, NULL, 2, NULL, NULL, 10002034, NULL, 34),
  -- Muk - Flamethrower - TM35
  (89, 8900, 53, 10, NULL, 2, NULL, NULL, 10002035, NULL, 35),
  -- Muk - Sludge Bomb - TM36
  (89, 8900, 188, 10, NULL, 2, NULL, NULL, 10002036, NULL, 36),
  -- Muk - Fire Blast - TM38
  (89, 8900, 126, 10, NULL, 2, NULL, NULL, 10002038, NULL, 37),
  -- Muk - Rock Tomb - TM39
  (89, 8900, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 38),
  -- Muk - Torment - TM41
  (89, 8900, 259, 10, NULL, 2, NULL, NULL, 10002041, NULL, 39),
  -- Muk - Facade - TM42
  (89, 8900, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 40),
  -- Muk - Secret Power - TM43
  (89, 8900, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 41),
  -- Muk - Rest - TM44
  (89, 8900, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 42),
  -- Muk - Attract - TM45
  (89, 8900, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 43),
  -- Muk - Thief - TM46
  (89, 8900, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 44),
  -- Muk - Focus Blast - TM52
  (89, 8900, 411, 10, NULL, 2, NULL, NULL, 10002052, NULL, 45),
  -- Muk - Fling - TM56
  (89, 8900, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 46),
  -- Muk - Endure - TM58
  (89, 8900, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 47),
  -- Muk - Explosion - TM64
  (89, 8900, 153, 10, NULL, 2, NULL, NULL, 10002064, NULL, 48),
  -- Muk - Payback - TM66
  (89, 8900, 371, 10, NULL, 2, NULL, NULL, 10002066, NULL, 49),
  -- Muk - Giga Impact - TM68
  (89, 8900, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 50),
  -- Muk - Captivate - TM78
  (89, 8900, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 51),
  -- Muk - Dark Pulse - TM79
  (89, 8900, 399, 10, NULL, 2, NULL, NULL, 10002079, NULL, 52),
  -- Muk - Rock Slide - TM80
  (89, 8900, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 53),
  -- Muk - Sleep Talk - TM82
  (89, 8900, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 54),
  -- Muk - Natural Gift - TM83
  (89, 8900, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 55),
  -- Muk - Poison Jab - TM84
  (89, 8900, 398, 10, NULL, 2, NULL, NULL, 10002084, NULL, 56),
  -- Muk - Swagger - TM87
  (89, 8900, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 57),
  -- Muk - Substitute - TM90
  (89, 8900, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 58),
  -- Muk - Strength - HM04
  (89, 8900, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 59),
  -- Muk - Rock Smash - HM06
  (89, 8900, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 60),
  -- Muk - Fire Punch - Tutor
  (89, 8900, 7, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Muk - Ice Punch - Tutor
  (89, 8900, 8, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Muk - Thunder Punch - Tutor
  (89, 8900, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Muk - Snore - Tutor
  (89, 8900, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Muk - Mud-Slap - Tutor
  (89, 8900, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Muk - Pain Split - Tutor
  (89, 8900, 220, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Muk - Block - Tutor
  (89, 8900, 335, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Muk - Gunk Shot - Tutor
  (89, 8900, 441, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Shellder - Tackle - Level 1
  (90, 9000, 33, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shellder - Withdraw - Level 4
  (90, 9000, 110, 10, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Shellder - Supersonic - Level 8
  (90, 9000, 48, 10, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Shellder - Icicle Spear - Level 13
  (90, 9000, 333, 10, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Shellder - Protect - Level 16
  (90, 9000, 182, 10, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Shellder - Leer - Level 20
  (90, 9000, 43, 10, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Shellder - Clamp - Level 25
  (90, 9000, 128, 10, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Shellder - Ice Shard - Level 28
  (90, 9000, 420, 10, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Shellder - Aurora Beam - Level 32
  (90, 9000, 62, 10, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Shellder - Whirlpool - Level 37
  (90, 9000, 250, 10, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Shellder - Iron Defense - Level 40
  (90, 9000, 334, 10, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Shellder - Brine - Level 44
  (90, 9000, 362, 10, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Shellder - Ice Beam - Level 49
  (90, 9000, 58, 10, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Shellder - Water Pulse - TM03
  (90, 9000, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 14),
  -- Shellder - Toxic - TM06
  (90, 9000, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 15),
  -- Shellder - Hail - TM07
  (90, 9000, 258, 10, NULL, 2, NULL, NULL, 10002007, NULL, 16),
  -- Shellder - Hidden Power - TM10
  (90, 9000, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 17),
  -- Shellder - Ice Beam - TM13
  (90, 9000, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 18),
  -- Shellder - Blizzard - TM14
  (90, 9000, 59, 10, NULL, 2, NULL, NULL, 10002014, NULL, 19),
  -- Shellder - Protect - TM17
  (90, 9000, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 20),
  -- Shellder - Rain Dance - TM18
  (90, 9000, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 21),
  -- Shellder - Frustration - TM21
  (90, 9000, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 22),
  -- Shellder - Return - TM27
  (90, 9000, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 23),
  -- Shellder - Double Team - TM32
  (90, 9000, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 24),
  -- Shellder - Facade - TM42
  (90, 9000, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 25),
  -- Shellder - Secret Power - TM43
  (90, 9000, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 26),
  -- Shellder - Rest - TM44
  (90, 9000, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 27),
  -- Shellder - Attract - TM45
  (90, 9000, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 28),
  -- Shellder - Brine - TM55
  (90, 9000, 362, 10, NULL, 2, NULL, NULL, 10002055, NULL, 29),
  -- Shellder - Endure - TM58
  (90, 9000, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 30),
  -- Shellder - Explosion - TM64
  (90, 9000, 153, 10, NULL, 2, NULL, NULL, 10002064, NULL, 31),
  -- Shellder - Payback - TM66
  (90, 9000, 371, 10, NULL, 2, NULL, NULL, 10002066, NULL, 32),
  -- Shellder - Captivate - TM78
  (90, 9000, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 33),
  -- Shellder - Sleep Talk - TM82
  (90, 9000, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 34),
  -- Shellder - Natural Gift - TM83
  (90, 9000, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 35),
  -- Shellder - Swagger - TM87
  (90, 9000, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 36),
  -- Shellder - Substitute - TM90
  (90, 9000, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 37),
  -- Shellder - Surf - HM03
  (90, 9000, 57, 10, NULL, 3, NULL, NULL, 10003003, NULL, 38),
  -- Shellder - Whirlpool - HM05
  (90, 9000, 250, 10, NULL, 3, NULL, NULL, 10003005, NULL, 39),
  -- Shellder - Take Down - Egg
  (90, 9000, 36, 10, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Shellder - Bubble Beam - Egg
  (90, 9000, 61, 10, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Shellder - Screech - Egg
  (90, 9000, 103, 10, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Shellder - Barrier - Egg
  (90, 9000, 112, 10, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Shellder - Rapid Spin - Egg
  (90, 9000, 229, 10, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Shellder - Icicle Spear - Egg
  (90, 9000, 333, 10, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Shellder - Mud Shot - Egg
  (90, 9000, 341, 10, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Shellder - Rock Blast - Egg
  (90, 9000, 350, 10, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Shellder - Swift - Tutor
  (90, 9000, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 48),
  -- Shellder - Snore - Tutor
  (90, 9000, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 49),
  -- Shellder - Icy Wind - Tutor
  (90, 9000, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 50),
  -- Shellder - Dive - Tutor
  (90, 9000, 291, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 51),
  -- Shellder - Iron Defense - Tutor
  (90, 9000, 334, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 52),
  -- Cloyster - Supersonic - Level 1
  (91, 9100, 48, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cloyster - Aurora Beam - Level 1
  (91, 9100, 62, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cloyster - Withdraw - Level 1
  (91, 9100, 110, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cloyster - Protect - Level 1
  (91, 9100, 182, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cloyster - Toxic Spikes - Level 1
  (91, 9100, 390, 10, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Cloyster - Spikes - Level 28
  (91, 9100, 191, 10, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Cloyster - Spike Cannon - Level 40
  (91, 9100, 131, 10, NULL, 1, 40, NULL, NULL, NULL, 7),
  -- Cloyster - Water Pulse - TM03
  (91, 9100, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 8),
  -- Cloyster - Toxic - TM06
  (91, 9100, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 9),
  -- Cloyster - Hail - TM07
  (91, 9100, 258, 10, NULL, 2, NULL, NULL, 10002007, NULL, 10),
  -- Cloyster - Hidden Power - TM10
  (91, 9100, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 11),
  -- Cloyster - Ice Beam - TM13
  (91, 9100, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 12),
  -- Cloyster - Blizzard - TM14
  (91, 9100, 59, 10, NULL, 2, NULL, NULL, 10002014, NULL, 13),
  -- Cloyster - Hyper Beam - TM15
  (91, 9100, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 14),
  -- Cloyster - Protect - TM17
  (91, 9100, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 15),
  -- Cloyster - Rain Dance - TM18
  (91, 9100, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 16),
  -- Cloyster - Frustration - TM21
  (91, 9100, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 17),
  -- Cloyster - Return - TM27
  (91, 9100, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 18),
  -- Cloyster - Double Team - TM32
  (91, 9100, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 19),
  -- Cloyster - Torment - TM41
  (91, 9100, 259, 10, NULL, 2, NULL, NULL, 10002041, NULL, 20),
  -- Cloyster - Facade - TM42
  (91, 9100, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 21),
  -- Cloyster - Secret Power - TM43
  (91, 9100, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 22),
  -- Cloyster - Rest - TM44
  (91, 9100, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 23),
  -- Cloyster - Attract - TM45
  (91, 9100, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 24),
  -- Cloyster - Brine - TM55
  (91, 9100, 362, 10, NULL, 2, NULL, NULL, 10002055, NULL, 25),
  -- Cloyster - Endure - TM58
  (91, 9100, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 26),
  -- Cloyster - Explosion - TM64
  (91, 9100, 153, 10, NULL, 2, NULL, NULL, 10002064, NULL, 27),
  -- Cloyster - Payback - TM66
  (91, 9100, 371, 10, NULL, 2, NULL, NULL, 10002066, NULL, 28),
  -- Cloyster - Giga Impact - TM68
  (91, 9100, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 29),
  -- Cloyster - Avalanche - TM72
  (91, 9100, 419, 10, NULL, 2, NULL, NULL, 10002072, NULL, 30),
  -- Cloyster - Captivate - TM78
  (91, 9100, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 31),
  -- Cloyster - Sleep Talk - TM82
  (91, 9100, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 32),
  -- Cloyster - Natural Gift - TM83
  (91, 9100, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 33),
  -- Cloyster - Poison Jab - TM84
  (91, 9100, 398, 10, NULL, 2, NULL, NULL, 10002084, NULL, 34),
  -- Cloyster - Swagger - TM87
  (91, 9100, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 35),
  -- Cloyster - Substitute - TM90
  (91, 9100, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 36),
  -- Cloyster - Surf - HM03
  (91, 9100, 57, 10, NULL, 3, NULL, NULL, 10003003, NULL, 37),
  -- Cloyster - Whirlpool - HM05
  (91, 9100, 250, 10, NULL, 3, NULL, NULL, 10003005, NULL, 38),
  -- Cloyster - Swift - Tutor
  (91, 9100, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 39),
  -- Cloyster - Snore - Tutor
  (91, 9100, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 40),
  -- Cloyster - Icy Wind - Tutor
  (91, 9100, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 41),
  -- Cloyster - Dive - Tutor
  (91, 9100, 291, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 42),
  -- Cloyster - Signal Beam - Tutor
  (91, 9100, 324, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 43),
  -- Cloyster - Iron Defense - Tutor
  (91, 9100, 334, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 44),
  -- Gastly - Hypnosis - Level 1
  (92, 9200, 95, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gastly - Lick - Level 1
  (92, 9200, 122, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gastly - Spite - Level 5
  (92, 9200, 180, 10, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Gastly - Mean Look - Level 8
  (92, 9200, 212, 10, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Gastly - Curse - Level 12
  (92, 9200, 174, 10, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Gastly - Night Shade - Level 15
  (92, 9200, 101, 10, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Gastly - Confuse Ray - Level 19
  (92, 9200, 109, 10, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Gastly - Sucker Punch - Level 22
  (92, 9200, 389, 10, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Gastly - Payback - Level 26
  (92, 9200, 371, 10, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Gastly - Shadow Ball - Level 29
  (92, 9200, 247, 10, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Gastly - Dream Eater - Level 33
  (92, 9200, 138, 10, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Gastly - Dark Pulse - Level 36
  (92, 9200, 399, 10, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Gastly - Destiny Bond - Level 40
  (92, 9200, 194, 10, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Gastly - Nightmare - Level 43
  (92, 9200, 171, 10, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Gastly - Toxic - TM06
  (92, 9200, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 15),
  -- Gastly - Hidden Power - TM10
  (92, 9200, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 16),
  -- Gastly - Sunny Day - TM11
  (92, 9200, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 17),
  -- Gastly - Taunt - TM12
  (92, 9200, 269, 10, NULL, 2, NULL, NULL, 10002012, NULL, 18),
  -- Gastly - Protect - TM17
  (92, 9200, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 19),
  -- Gastly - Rain Dance - TM18
  (92, 9200, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 20),
  -- Gastly - Giga Drain - TM19
  (92, 9200, 202, 10, NULL, 2, NULL, NULL, 10002019, NULL, 21),
  -- Gastly - Frustration - TM21
  (92, 9200, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 22),
  -- Gastly - Thunderbolt - TM24
  (92, 9200, 85, 10, NULL, 2, NULL, NULL, 10002024, NULL, 23),
  -- Gastly - Return - TM27
  (92, 9200, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 24),
  -- Gastly - Psychic - TM29
  (92, 9200, 94, 10, NULL, 2, NULL, NULL, 10002029, NULL, 25),
  -- Gastly - Shadow Ball - TM30
  (92, 9200, 247, 10, NULL, 2, NULL, NULL, 10002030, NULL, 26),
  -- Gastly - Double Team - TM32
  (92, 9200, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 27),
  -- Gastly - Sludge Bomb - TM36
  (92, 9200, 188, 10, NULL, 2, NULL, NULL, 10002036, NULL, 28),
  -- Gastly - Torment - TM41
  (92, 9200, 259, 10, NULL, 2, NULL, NULL, 10002041, NULL, 29),
  -- Gastly - Facade - TM42
  (92, 9200, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 30),
  -- Gastly - Secret Power - TM43
  (92, 9200, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 31),
  -- Gastly - Rest - TM44
  (92, 9200, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 32),
  -- Gastly - Attract - TM45
  (92, 9200, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 33),
  -- Gastly - Thief - TM46
  (92, 9200, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 34),
  -- Gastly - Skill Swap - TM48
  (92, 9200, 285, 10, NULL, 2, NULL, NULL, 10002048, NULL, 35),
  -- Gastly - Snatch - TM49
  (92, 9200, 289, 10, NULL, 2, NULL, NULL, 10002049, NULL, 36),
  -- Gastly - Energy Ball - TM53
  (92, 9200, 412, 10, NULL, 2, NULL, NULL, 10002053, NULL, 37),
  -- Gastly - Endure - TM58
  (92, 9200, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 38),
  -- Gastly - Will-O-Wisp - TM61
  (92, 9200, 261, 10, NULL, 2, NULL, NULL, 10002061, NULL, 39),
  -- Gastly - Embargo - TM63
  (92, 9200, 373, 10, NULL, 2, NULL, NULL, 10002063, NULL, 40),
  -- Gastly - Explosion - TM64
  (92, 9200, 153, 10, NULL, 2, NULL, NULL, 10002064, NULL, 41),
  -- Gastly - Payback - TM66
  (92, 9200, 371, 10, NULL, 2, NULL, NULL, 10002066, NULL, 42),
  -- Gastly - Psych Up - TM77
  (92, 9200, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 43),
  -- Gastly - Captivate - TM78
  (92, 9200, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 44),
  -- Gastly - Dark Pulse - TM79
  (92, 9200, 399, 10, NULL, 2, NULL, NULL, 10002079, NULL, 45),
  -- Gastly - Sleep Talk - TM82
  (92, 9200, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 46),
  -- Gastly - Natural Gift - TM83
  (92, 9200, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 47),
  -- Gastly - Dream Eater - TM85
  (92, 9200, 138, 10, NULL, 2, NULL, NULL, 10002085, NULL, 48),
  -- Gastly - Swagger - TM87
  (92, 9200, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 49),
  -- Gastly - Substitute - TM90
  (92, 9200, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 50),
  -- Gastly - Trick Room - TM92
  (92, 9200, 433, 10, NULL, 2, NULL, NULL, 10002092, NULL, 51),
  -- Gastly - Fire Punch - Egg
  (92, 9200, 7, 10, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Gastly - Ice Punch - Egg
  (92, 9200, 8, 10, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Gastly - Thunder Punch - Egg
  (92, 9200, 9, 10, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Gastly - Disable - Egg
  (92, 9200, 50, 10, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Gastly - Haze - Egg
  (92, 9200, 114, 10, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Gastly - Psywave - Egg
  (92, 9200, 149, 10, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Gastly - Explosion - Egg
  (92, 9200, 153, 10, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Gastly - Perish Song - Egg
  (92, 9200, 195, 10, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Gastly - Will-O-Wisp - Egg
  (92, 9200, 261, 10, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Gastly - Grudge - Egg
  (92, 9200, 288, 10, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Gastly - Astonish - Egg
  (92, 9200, 310, 10, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Gastly - Fire Punch - Tutor
  (92, 9200, 7, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Gastly - Ice Punch - Tutor
  (92, 9200, 8, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Gastly - Thunder Punch - Tutor
  (92, 9200, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Gastly - Snore - Tutor
  (92, 9200, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Gastly - Spite - Tutor
  (92, 9200, 180, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Gastly - Icy Wind - Tutor
  (92, 9200, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Gastly - Pain Split - Tutor
  (92, 9200, 220, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Gastly - Uproar - Tutor
  (92, 9200, 253, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 70),
  -- Gastly - Trick - Tutor
  (92, 9200, 271, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 71),
  -- Gastly - Knock Off - Tutor
  (92, 9200, 282, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 72),
  -- Gastly - Sucker Punch - Tutor
  (92, 9200, 389, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 73),
  -- Gastly - Ominous Wind - Tutor
  (92, 9200, 466, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 74),
  -- Haunter - Hypnosis - Level 1
  (93, 9300, 95, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Haunter - Lick - Level 1
  (93, 9300, 122, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Haunter - Spite - Level 1
  (93, 9300, 180, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Haunter - Spite - Level 5
  (93, 9300, 180, 10, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Haunter - Mean Look - Level 8
  (93, 9300, 212, 10, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Haunter - Curse - Level 12
  (93, 9300, 174, 10, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Haunter - Night Shade - Level 15
  (93, 9300, 101, 10, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Haunter - Confuse Ray - Level 19
  (93, 9300, 109, 10, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Haunter - Sucker Punch - Level 22
  (93, 9300, 389, 10, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Haunter - Shadow Punch - Level 25
  (93, 9300, 325, 10, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Haunter - Payback - Level 28
  (93, 9300, 371, 10, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Haunter - Shadow Ball - Level 33
  (93, 9300, 247, 10, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Haunter - Dream Eater - Level 39
  (93, 9300, 138, 10, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Haunter - Dark Pulse - Level 44
  (93, 9300, 399, 10, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Haunter - Destiny Bond - Level 50
  (93, 9300, 194, 10, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Haunter - Nightmare - Level 55
  (93, 9300, 171, 10, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Haunter - Toxic - TM06
  (93, 9300, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 17),
  -- Haunter - Hidden Power - TM10
  (93, 9300, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 18),
  -- Haunter - Sunny Day - TM11
  (93, 9300, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 19),
  -- Haunter - Taunt - TM12
  (93, 9300, 269, 10, NULL, 2, NULL, NULL, 10002012, NULL, 20),
  -- Haunter - Protect - TM17
  (93, 9300, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 21),
  -- Haunter - Rain Dance - TM18
  (93, 9300, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 22),
  -- Haunter - Giga Drain - TM19
  (93, 9300, 202, 10, NULL, 2, NULL, NULL, 10002019, NULL, 23),
  -- Haunter - Frustration - TM21
  (93, 9300, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 24),
  -- Haunter - Thunderbolt - TM24
  (93, 9300, 85, 10, NULL, 2, NULL, NULL, 10002024, NULL, 25),
  -- Haunter - Return - TM27
  (93, 9300, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 26),
  -- Haunter - Psychic - TM29
  (93, 9300, 94, 10, NULL, 2, NULL, NULL, 10002029, NULL, 27),
  -- Haunter - Shadow Ball - TM30
  (93, 9300, 247, 10, NULL, 2, NULL, NULL, 10002030, NULL, 28),
  -- Haunter - Double Team - TM32
  (93, 9300, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 29),
  -- Haunter - Sludge Bomb - TM36
  (93, 9300, 188, 10, NULL, 2, NULL, NULL, 10002036, NULL, 30),
  -- Haunter - Torment - TM41
  (93, 9300, 259, 10, NULL, 2, NULL, NULL, 10002041, NULL, 31),
  -- Haunter - Facade - TM42
  (93, 9300, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 32),
  -- Haunter - Secret Power - TM43
  (93, 9300, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 33),
  -- Haunter - Rest - TM44
  (93, 9300, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 34),
  -- Haunter - Attract - TM45
  (93, 9300, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 35),
  -- Haunter - Thief - TM46
  (93, 9300, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 36),
  -- Haunter - Skill Swap - TM48
  (93, 9300, 285, 10, NULL, 2, NULL, NULL, 10002048, NULL, 37),
  -- Haunter - Snatch - TM49
  (93, 9300, 289, 10, NULL, 2, NULL, NULL, 10002049, NULL, 38),
  -- Haunter - Energy Ball - TM53
  (93, 9300, 412, 10, NULL, 2, NULL, NULL, 10002053, NULL, 39),
  -- Haunter - Fling - TM56
  (93, 9300, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 40),
  -- Haunter - Endure - TM58
  (93, 9300, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 41),
  -- Haunter - Will-O-Wisp - TM61
  (93, 9300, 261, 10, NULL, 2, NULL, NULL, 10002061, NULL, 42),
  -- Haunter - Embargo - TM63
  (93, 9300, 373, 10, NULL, 2, NULL, NULL, 10002063, NULL, 43),
  -- Haunter - Explosion - TM64
  (93, 9300, 153, 10, NULL, 2, NULL, NULL, 10002064, NULL, 44),
  -- Haunter - Shadow Claw - TM65
  (93, 9300, 421, 10, NULL, 2, NULL, NULL, 10002065, NULL, 45),
  -- Haunter - Payback - TM66
  (93, 9300, 371, 10, NULL, 2, NULL, NULL, 10002066, NULL, 46),
  -- Haunter - Psych Up - TM77
  (93, 9300, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 47),
  -- Haunter - Captivate - TM78
  (93, 9300, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 48),
  -- Haunter - Dark Pulse - TM79
  (93, 9300, 399, 10, NULL, 2, NULL, NULL, 10002079, NULL, 49),
  -- Haunter - Sleep Talk - TM82
  (93, 9300, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 50),
  -- Haunter - Natural Gift - TM83
  (93, 9300, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 51),
  -- Haunter - Poison Jab - TM84
  (93, 9300, 398, 10, NULL, 2, NULL, NULL, 10002084, NULL, 52),
  -- Haunter - Dream Eater - TM85
  (93, 9300, 138, 10, NULL, 2, NULL, NULL, 10002085, NULL, 53),
  -- Haunter - Swagger - TM87
  (93, 9300, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 54),
  -- Haunter - Substitute - TM90
  (93, 9300, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 55),
  -- Haunter - Trick Room - TM92
  (93, 9300, 433, 10, NULL, 2, NULL, NULL, 10002092, NULL, 56),
  -- Haunter - Fire Punch - Tutor
  (93, 9300, 7, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Haunter - Ice Punch - Tutor
  (93, 9300, 8, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Haunter - Thunder Punch - Tutor
  (93, 9300, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Haunter - Snore - Tutor
  (93, 9300, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Haunter - Spite - Tutor
  (93, 9300, 180, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Haunter - Icy Wind - Tutor
  (93, 9300, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Haunter - Pain Split - Tutor
  (93, 9300, 220, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Haunter - Uproar - Tutor
  (93, 9300, 253, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Haunter - Trick - Tutor
  (93, 9300, 271, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Haunter - Knock Off - Tutor
  (93, 9300, 282, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Haunter - Sucker Punch - Tutor
  (93, 9300, 389, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Haunter - Ominous Wind - Tutor
  (93, 9300, 466, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Gengar - Hypnosis - Level 1
  (94, 9400, 95, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gengar - Lick - Level 1
  (94, 9400, 122, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gengar - Spite - Level 1
  (94, 9400, 180, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gengar - Spite - Level 5
  (94, 9400, 180, 10, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Gengar - Mean Look - Level 8
  (94, 9400, 212, 10, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Gengar - Curse - Level 12
  (94, 9400, 174, 10, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Gengar - Night Shade - Level 15
  (94, 9400, 101, 10, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Gengar - Confuse Ray - Level 19
  (94, 9400, 109, 10, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Gengar - Sucker Punch - Level 22
  (94, 9400, 389, 10, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Gengar - Shadow Punch - Level 25
  (94, 9400, 325, 10, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Gengar - Payback - Level 28
  (94, 9400, 371, 10, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Gengar - Shadow Ball - Level 33
  (94, 9400, 247, 10, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Gengar - Dream Eater - Level 39
  (94, 9400, 138, 10, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Gengar - Dark Pulse - Level 44
  (94, 9400, 399, 10, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Gengar - Destiny Bond - Level 50
  (94, 9400, 194, 10, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Gengar - Nightmare - Level 55
  (94, 9400, 171, 10, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Gengar - Focus Punch - TM01
  (94, 9400, 264, 10, NULL, 2, NULL, NULL, 10002001, NULL, 17),
  -- Gengar - Toxic - TM06
  (94, 9400, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 18),
  -- Gengar - Hidden Power - TM10
  (94, 9400, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 19),
  -- Gengar - Sunny Day - TM11
  (94, 9400, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 20),
  -- Gengar - Taunt - TM12
  (94, 9400, 269, 10, NULL, 2, NULL, NULL, 10002012, NULL, 21),
  -- Gengar - Hyper Beam - TM15
  (94, 9400, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 22),
  -- Gengar - Protect - TM17
  (94, 9400, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 23),
  -- Gengar - Rain Dance - TM18
  (94, 9400, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 24),
  -- Gengar - Giga Drain - TM19
  (94, 9400, 202, 10, NULL, 2, NULL, NULL, 10002019, NULL, 25),
  -- Gengar - Frustration - TM21
  (94, 9400, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 26),
  -- Gengar - Thunderbolt - TM24
  (94, 9400, 85, 10, NULL, 2, NULL, NULL, 10002024, NULL, 27),
  -- Gengar - Thunder - TM25
  (94, 9400, 87, 10, NULL, 2, NULL, NULL, 10002025, NULL, 28),
  -- Gengar - Return - TM27
  (94, 9400, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 29),
  -- Gengar - Psychic - TM29
  (94, 9400, 94, 10, NULL, 2, NULL, NULL, 10002029, NULL, 30),
  -- Gengar - Shadow Ball - TM30
  (94, 9400, 247, 10, NULL, 2, NULL, NULL, 10002030, NULL, 31),
  -- Gengar - Brick Break - TM31
  (94, 9400, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 32),
  -- Gengar - Double Team - TM32
  (94, 9400, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 33),
  -- Gengar - Sludge Bomb - TM36
  (94, 9400, 188, 10, NULL, 2, NULL, NULL, 10002036, NULL, 34),
  -- Gengar - Torment - TM41
  (94, 9400, 259, 10, NULL, 2, NULL, NULL, 10002041, NULL, 35),
  -- Gengar - Facade - TM42
  (94, 9400, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 36),
  -- Gengar - Secret Power - TM43
  (94, 9400, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 37),
  -- Gengar - Rest - TM44
  (94, 9400, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 38),
  -- Gengar - Attract - TM45
  (94, 9400, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 39),
  -- Gengar - Thief - TM46
  (94, 9400, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 40),
  -- Gengar - Skill Swap - TM48
  (94, 9400, 285, 10, NULL, 2, NULL, NULL, 10002048, NULL, 41),
  -- Gengar - Snatch - TM49
  (94, 9400, 289, 10, NULL, 2, NULL, NULL, 10002049, NULL, 42),
  -- Gengar - Focus Blast - TM52
  (94, 9400, 411, 10, NULL, 2, NULL, NULL, 10002052, NULL, 43),
  -- Gengar - Energy Ball - TM53
  (94, 9400, 412, 10, NULL, 2, NULL, NULL, 10002053, NULL, 44),
  -- Gengar - Fling - TM56
  (94, 9400, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 45),
  -- Gengar - Endure - TM58
  (94, 9400, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 46),
  -- Gengar - Drain Punch - TM60
  (94, 9400, 409, 10, NULL, 2, NULL, NULL, 10002060, NULL, 47),
  -- Gengar - Will-O-Wisp - TM61
  (94, 9400, 261, 10, NULL, 2, NULL, NULL, 10002061, NULL, 48),
  -- Gengar - Embargo - TM63
  (94, 9400, 373, 10, NULL, 2, NULL, NULL, 10002063, NULL, 49),
  -- Gengar - Explosion - TM64
  (94, 9400, 153, 10, NULL, 2, NULL, NULL, 10002064, NULL, 50),
  -- Gengar - Shadow Claw - TM65
  (94, 9400, 421, 10, NULL, 2, NULL, NULL, 10002065, NULL, 51),
  -- Gengar - Payback - TM66
  (94, 9400, 371, 10, NULL, 2, NULL, NULL, 10002066, NULL, 52),
  -- Gengar - Giga Impact - TM68
  (94, 9400, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 53),
  -- Gengar - Psych Up - TM77
  (94, 9400, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 54),
  -- Gengar - Captivate - TM78
  (94, 9400, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 55),
  -- Gengar - Dark Pulse - TM79
  (94, 9400, 399, 10, NULL, 2, NULL, NULL, 10002079, NULL, 56),
  -- Gengar - Sleep Talk - TM82
  (94, 9400, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 57),
  -- Gengar - Natural Gift - TM83
  (94, 9400, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 58),
  -- Gengar - Poison Jab - TM84
  (94, 9400, 398, 10, NULL, 2, NULL, NULL, 10002084, NULL, 59),
  -- Gengar - Dream Eater - TM85
  (94, 9400, 138, 10, NULL, 2, NULL, NULL, 10002085, NULL, 60),
  -- Gengar - Swagger - TM87
  (94, 9400, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 61),
  -- Gengar - Substitute - TM90
  (94, 9400, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 62),
  -- Gengar - Trick Room - TM92
  (94, 9400, 433, 10, NULL, 2, NULL, NULL, 10002092, NULL, 63),
  -- Gengar - Strength - HM04
  (94, 9400, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 64),
  -- Gengar - Rock Smash - HM06
  (94, 9400, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 65),
  -- Gengar - Fire Punch - Tutor
  (94, 9400, 7, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Gengar - Ice Punch - Tutor
  (94, 9400, 8, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Gengar - Thunder Punch - Tutor
  (94, 9400, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Gengar - Headbutt - Tutor
  (94, 9400, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Gengar - Snore - Tutor
  (94, 9400, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 70),
  -- Gengar - Spite - Tutor
  (94, 9400, 180, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 71),
  -- Gengar - Icy Wind - Tutor
  (94, 9400, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 72),
  -- Gengar - Pain Split - Tutor
  (94, 9400, 220, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 73),
  -- Gengar - Uproar - Tutor
  (94, 9400, 253, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 74),
  -- Gengar - Trick - Tutor
  (94, 9400, 271, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 75),
  -- Gengar - Role Play - Tutor
  (94, 9400, 272, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 76),
  -- Gengar - Knock Off - Tutor
  (94, 9400, 282, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 77),
  -- Gengar - Sucker Punch - Tutor
  (94, 9400, 389, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 78),
  -- Gengar - Ominous Wind - Tutor
  (94, 9400, 466, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 79),
  -- Onix - Bind - Level 1
  (95, 9500, 20, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Onix - Tackle - Level 1
  (95, 9500, 33, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Onix - Harden - Level 1
  (95, 9500, 106, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Onix - Mud Sport - Level 1
  (95, 9500, 300, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Onix - Screech - Level 6
  (95, 9500, 103, 10, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Onix - Rock Throw - Level 9
  (95, 9500, 88, 10, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Onix - Rage - Level 14
  (95, 9500, 99, 10, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Onix - Rock Tomb - Level 17
  (95, 9500, 317, 10, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Onix - Sandstorm - Level 22
  (95, 9500, 201, 10, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Onix - Slam - Level 25
  (95, 9500, 21, 10, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Onix - Rock Polish - Level 30
  (95, 9500, 397, 10, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Onix - Dragon Breath - Level 33
  (95, 9500, 225, 10, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Onix - Curse - Level 38
  (95, 9500, 174, 10, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Onix - Iron Tail - Level 41
  (95, 9500, 231, 10, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Onix - Sand Tomb - Level 46
  (95, 9500, 328, 10, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Onix - Double-Edge - Level 49
  (95, 9500, 38, 10, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Onix - Stone Edge - Level 54
  (95, 9500, 444, 10, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Onix - Roar - TM05
  (95, 9500, 46, 10, NULL, 2, NULL, NULL, 10002005, NULL, 18),
  -- Onix - Toxic - TM06
  (95, 9500, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 19),
  -- Onix - Hidden Power - TM10
  (95, 9500, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 20),
  -- Onix - Sunny Day - TM11
  (95, 9500, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 21),
  -- Onix - Taunt - TM12
  (95, 9500, 269, 10, NULL, 2, NULL, NULL, 10002012, NULL, 22),
  -- Onix - Protect - TM17
  (95, 9500, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 23),
  -- Onix - Frustration - TM21
  (95, 9500, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 24),
  -- Onix - Iron Tail - TM23
  (95, 9500, 231, 10, NULL, 2, NULL, NULL, 10002023, NULL, 25),
  -- Onix - Earthquake - TM26
  (95, 9500, 89, 10, NULL, 2, NULL, NULL, 10002026, NULL, 26),
  -- Onix - Return - TM27
  (95, 9500, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 27),
  -- Onix - Dig - TM28
  (95, 9500, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 28),
  -- Onix - Double Team - TM32
  (95, 9500, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 29),
  -- Onix - Sandstorm - TM37
  (95, 9500, 201, 10, NULL, 2, NULL, NULL, 10002037, NULL, 30),
  -- Onix - Rock Tomb - TM39
  (95, 9500, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 31),
  -- Onix - Torment - TM41
  (95, 9500, 259, 10, NULL, 2, NULL, NULL, 10002041, NULL, 32),
  -- Onix - Facade - TM42
  (95, 9500, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 33),
  -- Onix - Secret Power - TM43
  (95, 9500, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 34),
  -- Onix - Rest - TM44
  (95, 9500, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 35),
  -- Onix - Attract - TM45
  (95, 9500, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 36),
  -- Onix - Endure - TM58
  (95, 9500, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 37),
  -- Onix - Dragon Pulse - TM59
  (95, 9500, 406, 10, NULL, 2, NULL, NULL, 10002059, NULL, 38),
  -- Onix - Explosion - TM64
  (95, 9500, 153, 10, NULL, 2, NULL, NULL, 10002064, NULL, 39),
  -- Onix - Payback - TM66
  (95, 9500, 371, 10, NULL, 2, NULL, NULL, 10002066, NULL, 40),
  -- Onix - Rock Polish - TM69
  (95, 9500, 397, 10, NULL, 2, NULL, NULL, 10002069, NULL, 41),
  -- Onix - Stone Edge - TM71
  (95, 9500, 444, 10, NULL, 2, NULL, NULL, 10002071, NULL, 42),
  -- Onix - Gyro Ball - TM74
  (95, 9500, 360, 10, NULL, 2, NULL, NULL, 10002074, NULL, 43),
  -- Onix - Stealth Rock - TM76
  (95, 9500, 446, 10, NULL, 2, NULL, NULL, 10002076, NULL, 44),
  -- Onix - Psych Up - TM77
  (95, 9500, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 45),
  -- Onix - Captivate - TM78
  (95, 9500, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 46),
  -- Onix - Rock Slide - TM80
  (95, 9500, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 47),
  -- Onix - Sleep Talk - TM82
  (95, 9500, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 48),
  -- Onix - Natural Gift - TM83
  (95, 9500, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 49),
  -- Onix - Swagger - TM87
  (95, 9500, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 50),
  -- Onix - Substitute - TM90
  (95, 9500, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 51),
  -- Onix - Flash Cannon - TM91
  (95, 9500, 430, 10, NULL, 2, NULL, NULL, 10002091, NULL, 52),
  -- Onix - Strength - HM04
  (95, 9500, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 53),
  -- Onix - Rock Smash - HM06
  (95, 9500, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 54),
  -- Onix - Rock Climb - HM08
  (95, 9500, 431, 10, NULL, 3, NULL, NULL, 10003008, NULL, 55),
  -- Onix - Defense Curl - Egg
  (95, 9500, 111, 10, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Onix - Explosion - Egg
  (95, 9500, 153, 10, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Onix - Rock Slide - Egg
  (95, 9500, 157, 10, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Onix - Flail - Egg
  (95, 9500, 175, 10, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Onix - Rollout - Egg
  (95, 9500, 205, 10, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Onix - Block - Egg
  (95, 9500, 335, 10, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Onix - Rock Blast - Egg
  (95, 9500, 350, 10, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Onix - Headbutt - Tutor
  (95, 9500, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Onix - Snore - Tutor
  (95, 9500, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Onix - Mud-Slap - Tutor
  (95, 9500, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Onix - Rollout - Tutor
  (95, 9500, 205, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Onix - Twister - Tutor
  (95, 9500, 239, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Onix - Ancient Power - Tutor
  (95, 9500, 246, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Onix - Block - Tutor
  (95, 9500, 335, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Onix - Earth Power - Tutor
  (95, 9500, 414, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 70),
  -- Onix - Iron Head - Tutor
  (95, 9500, 442, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 71),
  -- Drowzee - Pound - Level 1
  (96, 9600, 1, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drowzee - Hypnosis - Level 1
  (96, 9600, 95, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drowzee - Disable - Level 7
  (96, 9600, 50, 10, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Drowzee - Confusion - Level 9
  (96, 9600, 93, 10, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Drowzee - Headbutt - Level 15
  (96, 9600, 29, 10, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Drowzee - Poison Gas - Level 18
  (96, 9600, 139, 10, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Drowzee - Meditate - Level 21
  (96, 9600, 96, 10, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Drowzee - Psybeam - Level 26
  (96, 9600, 60, 10, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Drowzee - Psych Up - Level 29
  (96, 9600, 244, 10, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Drowzee - Headbutt - Level 32
  (96, 9600, 29, 10, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Drowzee - Swagger - Level 37
  (96, 9600, 207, 10, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Drowzee - Psychic - Level 40
  (96, 9600, 94, 10, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Drowzee - Nasty Plot - Level 43
  (96, 9600, 417, 10, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Drowzee - Zen Headbutt - Level 50
  (96, 9600, 428, 10, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Drowzee - Future Sight - Level 53
  (96, 9600, 248, 10, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Drowzee - Focus Punch - TM01
  (96, 9600, 264, 10, NULL, 2, NULL, NULL, 10002001, NULL, 16),
  -- Drowzee - Calm Mind - TM04
  (96, 9600, 347, 10, NULL, 2, NULL, NULL, 10002004, NULL, 17),
  -- Drowzee - Toxic - TM06
  (96, 9600, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 18),
  -- Drowzee - Hidden Power - TM10
  (96, 9600, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 19),
  -- Drowzee - Sunny Day - TM11
  (96, 9600, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 20),
  -- Drowzee - Taunt - TM12
  (96, 9600, 269, 10, NULL, 2, NULL, NULL, 10002012, NULL, 21),
  -- Drowzee - Light Screen - TM16
  (96, 9600, 113, 10, NULL, 2, NULL, NULL, 10002016, NULL, 22),
  -- Drowzee - Protect - TM17
  (96, 9600, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 23),
  -- Drowzee - Rain Dance - TM18
  (96, 9600, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 24),
  -- Drowzee - Safeguard - TM20
  (96, 9600, 219, 10, NULL, 2, NULL, NULL, 10002020, NULL, 25),
  -- Drowzee - Frustration - TM21
  (96, 9600, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 26),
  -- Drowzee - Return - TM27
  (96, 9600, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 27),
  -- Drowzee - Psychic - TM29
  (96, 9600, 94, 10, NULL, 2, NULL, NULL, 10002029, NULL, 28),
  -- Drowzee - Shadow Ball - TM30
  (96, 9600, 247, 10, NULL, 2, NULL, NULL, 10002030, NULL, 29),
  -- Drowzee - Brick Break - TM31
  (96, 9600, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 30),
  -- Drowzee - Double Team - TM32
  (96, 9600, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 31),
  -- Drowzee - Reflect - TM33
  (96, 9600, 115, 10, NULL, 2, NULL, NULL, 10002033, NULL, 32),
  -- Drowzee - Torment - TM41
  (96, 9600, 259, 10, NULL, 2, NULL, NULL, 10002041, NULL, 33),
  -- Drowzee - Facade - TM42
  (96, 9600, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 34),
  -- Drowzee - Secret Power - TM43
  (96, 9600, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 35),
  -- Drowzee - Rest - TM44
  (96, 9600, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 36),
  -- Drowzee - Attract - TM45
  (96, 9600, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 37),
  -- Drowzee - Thief - TM46
  (96, 9600, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 38),
  -- Drowzee - Skill Swap - TM48
  (96, 9600, 285, 10, NULL, 2, NULL, NULL, 10002048, NULL, 39),
  -- Drowzee - Snatch - TM49
  (96, 9600, 289, 10, NULL, 2, NULL, NULL, 10002049, NULL, 40),
  -- Drowzee - Fling - TM56
  (96, 9600, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 41),
  -- Drowzee - Endure - TM58
  (96, 9600, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 42),
  -- Drowzee - Drain Punch - TM60
  (96, 9600, 409, 10, NULL, 2, NULL, NULL, 10002060, NULL, 43),
  -- Drowzee - Recycle - TM67
  (96, 9600, 278, 10, NULL, 2, NULL, NULL, 10002067, NULL, 44),
  -- Drowzee - Flash - TM70
  (96, 9600, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 45),
  -- Drowzee - Thunder Wave - TM73
  (96, 9600, 86, 10, NULL, 2, NULL, NULL, 10002073, NULL, 46),
  -- Drowzee - Psych Up - TM77
  (96, 9600, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 47),
  -- Drowzee - Captivate - TM78
  (96, 9600, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 48),
  -- Drowzee - Sleep Talk - TM82
  (96, 9600, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 49),
  -- Drowzee - Natural Gift - TM83
  (96, 9600, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 50),
  -- Drowzee - Dream Eater - TM85
  (96, 9600, 138, 10, NULL, 2, NULL, NULL, 10002085, NULL, 51),
  -- Drowzee - Grass Knot - TM86
  (96, 9600, 447, 10, NULL, 2, NULL, NULL, 10002086, NULL, 52),
  -- Drowzee - Swagger - TM87
  (96, 9600, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 53),
  -- Drowzee - Substitute - TM90
  (96, 9600, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 54),
  -- Drowzee - Trick Room - TM92
  (96, 9600, 433, 10, NULL, 2, NULL, NULL, 10002092, NULL, 55),
  -- Drowzee - Fire Punch - Egg
  (96, 9600, 7, 10, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Drowzee - Ice Punch - Egg
  (96, 9600, 8, 10, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Drowzee - Thunder Punch - Egg
  (96, 9600, 9, 10, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Drowzee - Barrier - Egg
  (96, 9600, 112, 10, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Drowzee - Flatter - Egg
  (96, 9600, 260, 10, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Drowzee - Role Play - Egg
  (96, 9600, 272, 10, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Drowzee - Assist - Egg
  (96, 9600, 274, 10, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Drowzee - Guard Swap - Egg
  (96, 9600, 385, 10, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Drowzee - Nasty Plot - Egg
  (96, 9600, 417, 10, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Drowzee - Psycho Cut - Egg
  (96, 9600, 427, 10, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Drowzee - Fire Punch - Tutor
  (96, 9600, 7, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Drowzee - Ice Punch - Tutor
  (96, 9600, 8, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Drowzee - Thunder Punch - Tutor
  (96, 9600, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Drowzee - Headbutt - Tutor
  (96, 9600, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Drowzee - Low Kick - Tutor
  (96, 9600, 67, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 70),
  -- Drowzee - Trick - Tutor
  (96, 9600, 271, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 71),
  -- Drowzee - Role Play - Tutor
  (96, 9600, 272, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 72),
  -- Drowzee - Magic Coat - Tutor
  (96, 9600, 277, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 73),
  -- Drowzee - Signal Beam - Tutor
  (96, 9600, 324, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 74),
  -- Drowzee - Zen Headbutt - Tutor
  (96, 9600, 428, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 75),
  -- Hypno - Pound - Level 1
  (97, 9700, 1, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hypno - Disable - Level 1
  (97, 9700, 50, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hypno - Confusion - Level 1
  (97, 9700, 93, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hypno - Hypnosis - Level 1
  (97, 9700, 95, 10, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hypno - Nightmare - Level 1
  (97, 9700, 171, 10, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hypno - Switcheroo - Level 1
  (97, 9700, 415, 10, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Hypno - Disable - Level 7
  (97, 9700, 50, 10, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Hypno - Confusion - Level 9
  (97, 9700, 93, 10, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Hypno - Headbutt - Level 15
  (97, 9700, 29, 10, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Hypno - Poison Gas - Level 18
  (97, 9700, 139, 10, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Hypno - Meditate - Level 21
  (97, 9700, 96, 10, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Hypno - Psybeam - Level 28
  (97, 9700, 60, 10, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Hypno - Psych Up - Level 33
  (97, 9700, 244, 10, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Hypno - Headbutt - Level 38
  (97, 9700, 29, 10, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Hypno - Swagger - Level 45
  (97, 9700, 207, 10, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Hypno - Psychic - Level 50
  (97, 9700, 94, 10, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Hypno - Nasty Plot - Level 55
  (97, 9700, 417, 10, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Hypno - Zen Headbutt - Level 64
  (97, 9700, 428, 10, NULL, 1, 64, NULL, NULL, NULL, 18),
  -- Hypno - Future Sight - Level 69
  (97, 9700, 248, 10, NULL, 1, 69, NULL, NULL, NULL, 19),
  -- Hypno - Focus Punch - TM01
  (97, 9700, 264, 10, NULL, 2, NULL, NULL, 10002001, NULL, 20),
  -- Hypno - Calm Mind - TM04
  (97, 9700, 347, 10, NULL, 2, NULL, NULL, 10002004, NULL, 21),
  -- Hypno - Toxic - TM06
  (97, 9700, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 22),
  -- Hypno - Hidden Power - TM10
  (97, 9700, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 23),
  -- Hypno - Sunny Day - TM11
  (97, 9700, 241, 10, NULL, 2, NULL, NULL, 10002011, NULL, 24),
  -- Hypno - Taunt - TM12
  (97, 9700, 269, 10, NULL, 2, NULL, NULL, 10002012, NULL, 25),
  -- Hypno - Hyper Beam - TM15
  (97, 9700, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 26),
  -- Hypno - Light Screen - TM16
  (97, 9700, 113, 10, NULL, 2, NULL, NULL, 10002016, NULL, 27),
  -- Hypno - Protect - TM17
  (97, 9700, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 28),
  -- Hypno - Rain Dance - TM18
  (97, 9700, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 29),
  -- Hypno - Safeguard - TM20
  (97, 9700, 219, 10, NULL, 2, NULL, NULL, 10002020, NULL, 30),
  -- Hypno - Frustration - TM21
  (97, 9700, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 31),
  -- Hypno - Return - TM27
  (97, 9700, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 32),
  -- Hypno - Psychic - TM29
  (97, 9700, 94, 10, NULL, 2, NULL, NULL, 10002029, NULL, 33),
  -- Hypno - Shadow Ball - TM30
  (97, 9700, 247, 10, NULL, 2, NULL, NULL, 10002030, NULL, 34),
  -- Hypno - Brick Break - TM31
  (97, 9700, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 35),
  -- Hypno - Double Team - TM32
  (97, 9700, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 36),
  -- Hypno - Reflect - TM33
  (97, 9700, 115, 10, NULL, 2, NULL, NULL, 10002033, NULL, 37),
  -- Hypno - Torment - TM41
  (97, 9700, 259, 10, NULL, 2, NULL, NULL, 10002041, NULL, 38),
  -- Hypno - Facade - TM42
  (97, 9700, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 39),
  -- Hypno - Secret Power - TM43
  (97, 9700, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 40),
  -- Hypno - Rest - TM44
  (97, 9700, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 41),
  -- Hypno - Attract - TM45
  (97, 9700, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 42),
  -- Hypno - Thief - TM46
  (97, 9700, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 43),
  -- Hypno - Skill Swap - TM48
  (97, 9700, 285, 10, NULL, 2, NULL, NULL, 10002048, NULL, 44),
  -- Hypno - Snatch - TM49
  (97, 9700, 289, 10, NULL, 2, NULL, NULL, 10002049, NULL, 45),
  -- Hypno - Focus Blast - TM52
  (97, 9700, 411, 10, NULL, 2, NULL, NULL, 10002052, NULL, 46),
  -- Hypno - Fling - TM56
  (97, 9700, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 47),
  -- Hypno - Endure - TM58
  (97, 9700, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 48),
  -- Hypno - Drain Punch - TM60
  (97, 9700, 409, 10, NULL, 2, NULL, NULL, 10002060, NULL, 49),
  -- Hypno - Recycle - TM67
  (97, 9700, 278, 10, NULL, 2, NULL, NULL, 10002067, NULL, 50),
  -- Hypno - Giga Impact - TM68
  (97, 9700, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 51),
  -- Hypno - Flash - TM70
  (97, 9700, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 52),
  -- Hypno - Thunder Wave - TM73
  (97, 9700, 86, 10, NULL, 2, NULL, NULL, 10002073, NULL, 53),
  -- Hypno - Psych Up - TM77
  (97, 9700, 244, 10, NULL, 2, NULL, NULL, 10002077, NULL, 54),
  -- Hypno - Captivate - TM78
  (97, 9700, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 55),
  -- Hypno - Sleep Talk - TM82
  (97, 9700, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 56),
  -- Hypno - Natural Gift - TM83
  (97, 9700, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 57),
  -- Hypno - Dream Eater - TM85
  (97, 9700, 138, 10, NULL, 2, NULL, NULL, 10002085, NULL, 58),
  -- Hypno - Grass Knot - TM86
  (97, 9700, 447, 10, NULL, 2, NULL, NULL, 10002086, NULL, 59),
  -- Hypno - Swagger - TM87
  (97, 9700, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 60),
  -- Hypno - Substitute - TM90
  (97, 9700, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 61),
  -- Hypno - Trick Room - TM92
  (97, 9700, 433, 10, NULL, 2, NULL, NULL, 10002092, NULL, 62),
  -- Hypno - Fire Punch - Tutor
  (97, 9700, 7, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Hypno - Ice Punch - Tutor
  (97, 9700, 8, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Hypno - Thunder Punch - Tutor
  (97, 9700, 9, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Hypno - Headbutt - Tutor
  (97, 9700, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Hypno - Low Kick - Tutor
  (97, 9700, 67, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Hypno - Trick - Tutor
  (97, 9700, 271, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Hypno - Role Play - Tutor
  (97, 9700, 272, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Hypno - Magic Coat - Tutor
  (97, 9700, 277, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 70),
  -- Hypno - Signal Beam - Tutor
  (97, 9700, 324, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 71),
  -- Hypno - Zen Headbutt - Tutor
  (97, 9700, 428, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 72),
  -- Krabby - Bubble - Level 1
  (98, 9800, 145, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Krabby - Mud Sport - Level 1
  (98, 9800, 300, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Krabby - Vise Grip - Level 5
  (98, 9800, 11, 10, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Krabby - Leer - Level 9
  (98, 9800, 43, 10, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Krabby - Harden - Level 11
  (98, 9800, 106, 10, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Krabby - Bubble Beam - Level 15
  (98, 9800, 61, 10, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Krabby - Mud Shot - Level 19
  (98, 9800, 341, 10, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Krabby - Metal Claw - Level 21
  (98, 9800, 232, 10, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Krabby - Stomp - Level 25
  (98, 9800, 23, 10, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Krabby - Protect - Level 29
  (98, 9800, 182, 10, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Krabby - Guillotine - Level 31
  (98, 9800, 12, 10, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Krabby - Slam - Level 35
  (98, 9800, 21, 10, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Krabby - Brine - Level 39
  (98, 9800, 362, 10, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Krabby - Crabhammer - Level 41
  (98, 9800, 152, 10, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Krabby - Flail - Level 45
  (98, 9800, 175, 10, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Krabby - Water Pulse - TM03
  (98, 9800, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 16),
  -- Krabby - Toxic - TM06
  (98, 9800, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 17),
  -- Krabby - Hail - TM07
  (98, 9800, 258, 10, NULL, 2, NULL, NULL, 10002007, NULL, 18),
  -- Krabby - Hidden Power - TM10
  (98, 9800, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 19),
  -- Krabby - Ice Beam - TM13
  (98, 9800, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 20),
  -- Krabby - Blizzard - TM14
  (98, 9800, 59, 10, NULL, 2, NULL, NULL, 10002014, NULL, 21),
  -- Krabby - Protect - TM17
  (98, 9800, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 22),
  -- Krabby - Rain Dance - TM18
  (98, 9800, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 23),
  -- Krabby - Frustration - TM21
  (98, 9800, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 24),
  -- Krabby - Return - TM27
  (98, 9800, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 25),
  -- Krabby - Dig - TM28
  (98, 9800, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 26),
  -- Krabby - Brick Break - TM31
  (98, 9800, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 27),
  -- Krabby - Double Team - TM32
  (98, 9800, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 28),
  -- Krabby - Rock Tomb - TM39
  (98, 9800, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 29),
  -- Krabby - Facade - TM42
  (98, 9800, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 30),
  -- Krabby - Secret Power - TM43
  (98, 9800, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 31),
  -- Krabby - Rest - TM44
  (98, 9800, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 32),
  -- Krabby - Attract - TM45
  (98, 9800, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 33),
  -- Krabby - Thief - TM46
  (98, 9800, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 34),
  -- Krabby - False Swipe - TM54
  (98, 9800, 206, 10, NULL, 2, NULL, NULL, 10002054, NULL, 35),
  -- Krabby - Brine - TM55
  (98, 9800, 362, 10, NULL, 2, NULL, NULL, 10002055, NULL, 36),
  -- Krabby - Fling - TM56
  (98, 9800, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 37),
  -- Krabby - Endure - TM58
  (98, 9800, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 38),
  -- Krabby - Swords Dance - TM75
  (98, 9800, 14, 10, NULL, 2, NULL, NULL, 10002075, NULL, 39),
  -- Krabby - Captivate - TM78
  (98, 9800, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 40),
  -- Krabby - Rock Slide - TM80
  (98, 9800, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 41),
  -- Krabby - X-Scissor - TM81
  (98, 9800, 404, 10, NULL, 2, NULL, NULL, 10002081, NULL, 42),
  -- Krabby - Sleep Talk - TM82
  (98, 9800, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 43),
  -- Krabby - Natural Gift - TM83
  (98, 9800, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 44),
  -- Krabby - Swagger - TM87
  (98, 9800, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 45),
  -- Krabby - Substitute - TM90
  (98, 9800, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 46),
  -- Krabby - Cut - HM01
  (98, 9800, 15, 10, NULL, 3, NULL, NULL, 10003001, NULL, 47),
  -- Krabby - Surf - HM03
  (98, 9800, 57, 10, NULL, 3, NULL, NULL, 10003003, NULL, 48),
  -- Krabby - Strength - HM04
  (98, 9800, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 49),
  -- Krabby - Whirlpool - HM05
  (98, 9800, 250, 10, NULL, 3, NULL, NULL, 10003005, NULL, 50),
  -- Krabby - Rock Smash - HM06
  (98, 9800, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 51),
  -- Krabby - Swords Dance - Egg
  (98, 9800, 14, 10, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Krabby - Slam - Egg
  (98, 9800, 21, 10, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Krabby - Dig - Egg
  (98, 9800, 91, 10, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Krabby - Agility - Egg
  (98, 9800, 97, 10, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Krabby - Haze - Egg
  (98, 9800, 114, 10, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Krabby - Amnesia - Egg
  (98, 9800, 133, 10, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Krabby - Flail - Egg
  (98, 9800, 175, 10, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Krabby - Ancient Power - Egg
  (98, 9800, 246, 10, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Krabby - Knock Off - Egg
  (98, 9800, 282, 10, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Krabby - Tickle - Egg
  (98, 9800, 321, 10, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Krabby - Snore - Tutor
  (98, 9800, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Krabby - Mud-Slap - Tutor
  (98, 9800, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Krabby - Icy Wind - Tutor
  (98, 9800, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 64),
  -- Krabby - Fury Cutter - Tutor
  (98, 9800, 210, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 65),
  -- Krabby - Ancient Power - Tutor
  (98, 9800, 246, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 66),
  -- Krabby - Superpower - Tutor
  (98, 9800, 276, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 67),
  -- Krabby - Knock Off - Tutor
  (98, 9800, 282, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 68),
  -- Krabby - Dive - Tutor
  (98, 9800, 291, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 69),
  -- Krabby - Iron Defense - Tutor
  (98, 9800, 334, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 70),
  -- Kingler - Vise Grip - Level 1
  (99, 9900, 11, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kingler - Bubble - Level 1
  (99, 9900, 145, 10, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kingler - Mud Sport - Level 1
  (99, 9900, 300, 10, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kingler - Vise Grip - Level 5
  (99, 9900, 11, 10, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Kingler - Leer - Level 9
  (99, 9900, 43, 10, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Kingler - Harden - Level 11
  (99, 9900, 106, 10, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Kingler - Bubble Beam - Level 15
  (99, 9900, 61, 10, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Kingler - Mud Shot - Level 19
  (99, 9900, 341, 10, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Kingler - Metal Claw - Level 21
  (99, 9900, 232, 10, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Kingler - Stomp - Level 25
  (99, 9900, 23, 10, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Kingler - Protect - Level 32
  (99, 9900, 182, 10, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Kingler - Guillotine - Level 37
  (99, 9900, 12, 10, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Kingler - Slam - Level 44
  (99, 9900, 21, 10, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Kingler - Brine - Level 51
  (99, 9900, 362, 10, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Kingler - Crabhammer - Level 56
  (99, 9900, 152, 10, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Kingler - Flail - Level 63
  (99, 9900, 175, 10, NULL, 1, 63, NULL, NULL, NULL, 16),
  -- Kingler - Water Pulse - TM03
  (99, 9900, 352, 10, NULL, 2, NULL, NULL, 10002003, NULL, 17),
  -- Kingler - Toxic - TM06
  (99, 9900, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 18),
  -- Kingler - Hail - TM07
  (99, 9900, 258, 10, NULL, 2, NULL, NULL, 10002007, NULL, 19),
  -- Kingler - Hidden Power - TM10
  (99, 9900, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 20),
  -- Kingler - Ice Beam - TM13
  (99, 9900, 58, 10, NULL, 2, NULL, NULL, 10002013, NULL, 21),
  -- Kingler - Blizzard - TM14
  (99, 9900, 59, 10, NULL, 2, NULL, NULL, 10002014, NULL, 22),
  -- Kingler - Hyper Beam - TM15
  (99, 9900, 63, 10, NULL, 2, NULL, NULL, 10002015, NULL, 23),
  -- Kingler - Protect - TM17
  (99, 9900, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 24),
  -- Kingler - Rain Dance - TM18
  (99, 9900, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 25),
  -- Kingler - Frustration - TM21
  (99, 9900, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 26),
  -- Kingler - Return - TM27
  (99, 9900, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 27),
  -- Kingler - Dig - TM28
  (99, 9900, 91, 10, NULL, 2, NULL, NULL, 10002028, NULL, 28),
  -- Kingler - Brick Break - TM31
  (99, 9900, 280, 10, NULL, 2, NULL, NULL, 10002031, NULL, 29),
  -- Kingler - Double Team - TM32
  (99, 9900, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 30),
  -- Kingler - Rock Tomb - TM39
  (99, 9900, 317, 10, NULL, 2, NULL, NULL, 10002039, NULL, 31),
  -- Kingler - Facade - TM42
  (99, 9900, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 32),
  -- Kingler - Secret Power - TM43
  (99, 9900, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 33),
  -- Kingler - Rest - TM44
  (99, 9900, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 34),
  -- Kingler - Attract - TM45
  (99, 9900, 213, 10, NULL, 2, NULL, NULL, 10002045, NULL, 35),
  -- Kingler - Thief - TM46
  (99, 9900, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 36),
  -- Kingler - False Swipe - TM54
  (99, 9900, 206, 10, NULL, 2, NULL, NULL, 10002054, NULL, 37),
  -- Kingler - Brine - TM55
  (99, 9900, 362, 10, NULL, 2, NULL, NULL, 10002055, NULL, 38),
  -- Kingler - Fling - TM56
  (99, 9900, 374, 10, NULL, 2, NULL, NULL, 10002056, NULL, 39),
  -- Kingler - Endure - TM58
  (99, 9900, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 40),
  -- Kingler - Giga Impact - TM68
  (99, 9900, 416, 10, NULL, 2, NULL, NULL, 10002068, NULL, 41),
  -- Kingler - Swords Dance - TM75
  (99, 9900, 14, 10, NULL, 2, NULL, NULL, 10002075, NULL, 42),
  -- Kingler - Captivate - TM78
  (99, 9900, 445, 10, NULL, 2, NULL, NULL, 10002078, NULL, 43),
  -- Kingler - Rock Slide - TM80
  (99, 9900, 157, 10, NULL, 2, NULL, NULL, 10002080, NULL, 44),
  -- Kingler - X-Scissor - TM81
  (99, 9900, 404, 10, NULL, 2, NULL, NULL, 10002081, NULL, 45),
  -- Kingler - Sleep Talk - TM82
  (99, 9900, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 46),
  -- Kingler - Natural Gift - TM83
  (99, 9900, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 47),
  -- Kingler - Swagger - TM87
  (99, 9900, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 48),
  -- Kingler - Substitute - TM90
  (99, 9900, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 49),
  -- Kingler - Cut - HM01
  (99, 9900, 15, 10, NULL, 3, NULL, NULL, 10003001, NULL, 50),
  -- Kingler - Surf - HM03
  (99, 9900, 57, 10, NULL, 3, NULL, NULL, 10003003, NULL, 51),
  -- Kingler - Strength - HM04
  (99, 9900, 70, 10, NULL, 3, NULL, NULL, 10003004, NULL, 52),
  -- Kingler - Whirlpool - HM05
  (99, 9900, 250, 10, NULL, 3, NULL, NULL, 10003005, NULL, 53),
  -- Kingler - Rock Smash - HM06
  (99, 9900, 249, 10, NULL, 3, NULL, NULL, 10003006, NULL, 54),
  -- Kingler - Snore - Tutor
  (99, 9900, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 55),
  -- Kingler - Mud-Slap - Tutor
  (99, 9900, 189, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 56),
  -- Kingler - Icy Wind - Tutor
  (99, 9900, 196, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 57),
  -- Kingler - Fury Cutter - Tutor
  (99, 9900, 210, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 58),
  -- Kingler - Ancient Power - Tutor
  (99, 9900, 246, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 59),
  -- Kingler - Superpower - Tutor
  (99, 9900, 276, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 60),
  -- Kingler - Knock Off - Tutor
  (99, 9900, 282, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 61),
  -- Kingler - Dive - Tutor
  (99, 9900, 291, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 62),
  -- Kingler - Iron Defense - Tutor
  (99, 9900, 334, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 63),
  -- Voltorb - Charge - Level 1
  (100, 10000, 268, 10, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Voltorb - Tackle - Level 5
  (100, 10000, 33, 10, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Voltorb - Sonic Boom - Level 8
  (100, 10000, 49, 10, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Voltorb - Spark - Level 12
  (100, 10000, 209, 10, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Voltorb - Rollout - Level 15
  (100, 10000, 205, 10, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Voltorb - Screech - Level 19
  (100, 10000, 103, 10, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Voltorb - Light Screen - Level 22
  (100, 10000, 113, 10, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Voltorb - Charge Beam - Level 26
  (100, 10000, 451, 10, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Voltorb - Self-Destruct - Level 29
  (100, 10000, 120, 10, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Voltorb - Swift - Level 33
  (100, 10000, 129, 10, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Voltorb - Magnet Rise - Level 36
  (100, 10000, 393, 10, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Voltorb - Gyro Ball - Level 40
  (100, 10000, 360, 10, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Voltorb - Explosion - Level 43
  (100, 10000, 153, 10, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Voltorb - Mirror Coat - Level 47
  (100, 10000, 243, 10, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Voltorb - Toxic - TM06
  (100, 10000, 92, 10, NULL, 2, NULL, NULL, 10002006, NULL, 15),
  -- Voltorb - Hidden Power - TM10
  (100, 10000, 237, 10, NULL, 2, NULL, NULL, 10002010, NULL, 16),
  -- Voltorb - Taunt - TM12
  (100, 10000, 269, 10, NULL, 2, NULL, NULL, 10002012, NULL, 17),
  -- Voltorb - Light Screen - TM16
  (100, 10000, 113, 10, NULL, 2, NULL, NULL, 10002016, NULL, 18),
  -- Voltorb - Protect - TM17
  (100, 10000, 182, 10, NULL, 2, NULL, NULL, 10002017, NULL, 19),
  -- Voltorb - Rain Dance - TM18
  (100, 10000, 240, 10, NULL, 2, NULL, NULL, 10002018, NULL, 20),
  -- Voltorb - Frustration - TM21
  (100, 10000, 218, 10, NULL, 2, NULL, NULL, 10002021, NULL, 21),
  -- Voltorb - Thunderbolt - TM24
  (100, 10000, 85, 10, NULL, 2, NULL, NULL, 10002024, NULL, 22),
  -- Voltorb - Thunder - TM25
  (100, 10000, 87, 10, NULL, 2, NULL, NULL, 10002025, NULL, 23),
  -- Voltorb - Return - TM27
  (100, 10000, 216, 10, NULL, 2, NULL, NULL, 10002027, NULL, 24),
  -- Voltorb - Double Team - TM32
  (100, 10000, 104, 10, NULL, 2, NULL, NULL, 10002032, NULL, 25),
  -- Voltorb - Shock Wave - TM34
  (100, 10000, 351, 10, NULL, 2, NULL, NULL, 10002034, NULL, 26),
  -- Voltorb - Torment - TM41
  (100, 10000, 259, 10, NULL, 2, NULL, NULL, 10002041, NULL, 27),
  -- Voltorb - Facade - TM42
  (100, 10000, 263, 10, NULL, 2, NULL, NULL, 10002042, NULL, 28),
  -- Voltorb - Secret Power - TM43
  (100, 10000, 290, 10, NULL, 2, NULL, NULL, 10002043, NULL, 29),
  -- Voltorb - Rest - TM44
  (100, 10000, 156, 10, NULL, 2, NULL, NULL, 10002044, NULL, 30),
  -- Voltorb - Thief - TM46
  (100, 10000, 168, 10, NULL, 2, NULL, NULL, 10002046, NULL, 31),
  -- Voltorb - Charge Beam - TM57
  (100, 10000, 451, 10, NULL, 2, NULL, NULL, 10002057, NULL, 32),
  -- Voltorb - Endure - TM58
  (100, 10000, 203, 10, NULL, 2, NULL, NULL, 10002058, NULL, 33),
  -- Voltorb - Explosion - TM64
  (100, 10000, 153, 10, NULL, 2, NULL, NULL, 10002064, NULL, 34),
  -- Voltorb - Flash - TM70
  (100, 10000, 148, 10, NULL, 2, NULL, NULL, 10002070, NULL, 35),
  -- Voltorb - Thunder Wave - TM73
  (100, 10000, 86, 10, NULL, 2, NULL, NULL, 10002073, NULL, 36),
  -- Voltorb - Gyro Ball - TM74
  (100, 10000, 360, 10, NULL, 2, NULL, NULL, 10002074, NULL, 37),
  -- Voltorb - Sleep Talk - TM82
  (100, 10000, 214, 10, NULL, 2, NULL, NULL, 10002082, NULL, 38),
  -- Voltorb - Natural Gift - TM83
  (100, 10000, 363, 10, NULL, 2, NULL, NULL, 10002083, NULL, 39),
  -- Voltorb - Swagger - TM87
  (100, 10000, 207, 10, NULL, 2, NULL, NULL, 10002087, NULL, 40),
  -- Voltorb - Substitute - TM90
  (100, 10000, 164, 10, NULL, 2, NULL, NULL, 10002090, NULL, 41),
  -- Voltorb - Headbutt - Tutor
  (100, 10000, 29, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 42),
  -- Voltorb - Swift - Tutor
  (100, 10000, 129, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 43),
  -- Voltorb - Snore - Tutor
  (100, 10000, 173, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 44),
  -- Voltorb - Rollout - Tutor
  (100, 10000, 205, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 45),
  -- Voltorb - Magic Coat - Tutor
  (100, 10000, 277, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 46),
  -- Voltorb - Signal Beam - Tutor
  (100, 10000, 324, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 47),
  -- Voltorb - Sucker Punch - Tutor
  (100, 10000, 389, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 48),
  -- Voltorb - Magnet Rise - Tutor
  (100, 10000, 393, 10, NULL, 6, NULL, NULL, NULL, 'HeartGold / SoulSilver Move Tutor.', 49);
