-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation V Pokémon learnset raw pages, using Black 2 / White 2
-- level columns, TM/HM compatibility rows, egg move rows, and tutor rows.
-- Cross-check: Serebii Black 2 / White 2 Pokedex learnset pages, Serebii Black 2 / White 2
-- Move Tutor pages, and PokemonDB Generation 5 Black 2 / White 2 learnset pages.
-- Migration source: generated from source-verified Voydex audit tooling.
-- Source names and source caveats remain in SQL comments/docs only.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_learnsets
-- Version Group: Black 2 / White 2
-- Pokémon: #051-#100
-- Rows: 3152
-- Scope: level-up, TM, HM, egg move, and Move Tutor acquisition rows.
-- Event, transfer, prior-evolution, Dream World, and form-change event sections
-- are intentionally excluded from this Black 2 / White 2 seed.
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
  -- Dugtrio - Night Slash - Level 1
  (51, 5100, 400, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dugtrio - Tri Attack - Level 1
  (51, 5100, 161, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dugtrio - Scratch - Level 1
  (51, 5100, 10, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dugtrio - Sand Attack - Level 1
  (51, 5100, 28, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dugtrio - Growl - Level 1
  (51, 5100, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dugtrio - Growl - Level 4
  (51, 5100, 45, 12, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Dugtrio - Astonish - Level 7
  (51, 5100, 310, 12, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Dugtrio - Mud-Slap - Level 12
  (51, 5100, 189, 12, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Dugtrio - Magnitude - Level 15
  (51, 5100, 222, 12, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Dugtrio - Bulldoze - Level 18
  (51, 5100, 523, 12, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Dugtrio - Sucker Punch - Level 23
  (51, 5100, 389, 12, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Dugtrio - Sand Tomb - Level 26
  (51, 5100, 328, 12, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Dugtrio - Mud Bomb - Level 28
  (51, 5100, 426, 12, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Dugtrio - Earth Power - Level 33
  (51, 5100, 414, 12, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Dugtrio - Dig - Level 40
  (51, 5100, 91, 12, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Dugtrio - Slash - Level 45
  (51, 5100, 163, 12, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Dugtrio - Earthquake - Level 50
  (51, 5100, 89, 12, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Dugtrio - Fissure - Level 57
  (51, 5100, 90, 12, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Dugtrio - Hone Claws - TM01
  (51, 5100, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 19),
  -- Dugtrio - Toxic - TM06
  (51, 5100, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 20),
  -- Dugtrio - Hidden Power - TM10
  (51, 5100, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 21),
  -- Dugtrio - Sunny Day - TM11
  (51, 5100, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 22),
  -- Dugtrio - Hyper Beam - TM15
  (51, 5100, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 23),
  -- Dugtrio - Protect - TM17
  (51, 5100, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 24),
  -- Dugtrio - Frustration - TM21
  (51, 5100, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 25),
  -- Dugtrio - Earthquake - TM26
  (51, 5100, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 26),
  -- Dugtrio - Return - TM27
  (51, 5100, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 27),
  -- Dugtrio - Dig - TM28
  (51, 5100, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 28),
  -- Dugtrio - Double Team - TM32
  (51, 5100, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 29),
  -- Dugtrio - Sludge Wave - TM34
  (51, 5100, 482, 12, NULL, 2, NULL, NULL, 12002034, NULL, 30),
  -- Dugtrio - Sludge Bomb - TM36
  (51, 5100, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 31),
  -- Dugtrio - Sandstorm - TM37
  (51, 5100, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 32),
  -- Dugtrio - Rock Tomb - TM39
  (51, 5100, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 33),
  -- Dugtrio - Aerial Ace - TM40
  (51, 5100, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 34),
  -- Dugtrio - Facade - TM42
  (51, 5100, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 35),
  -- Dugtrio - Rest - TM44
  (51, 5100, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 36),
  -- Dugtrio - Attract - TM45
  (51, 5100, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 37),
  -- Dugtrio - Thief - TM46
  (51, 5100, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 38),
  -- Dugtrio - Round - TM48
  (51, 5100, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 39),
  -- Dugtrio - Echoed Voice - TM49
  (51, 5100, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 40),
  -- Dugtrio - Shadow Claw - TM65
  (51, 5100, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 41),
  -- Dugtrio - Giga Impact - TM68
  (51, 5100, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 42),
  -- Dugtrio - Stone Edge - TM71
  (51, 5100, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 43),
  -- Dugtrio - Bulldoze - TM78
  (51, 5100, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 44),
  -- Dugtrio - Rock Slide - TM80
  (51, 5100, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 45),
  -- Dugtrio - Swagger - TM87
  (51, 5100, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 46),
  -- Dugtrio - Substitute - TM90
  (51, 5100, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 47),
  -- Dugtrio - Rock Smash - TM94
  (51, 5100, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 48),
  -- Dugtrio - Cut - HM01
  (51, 5100, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 49),
  -- Dugtrio - Earth Power - Move Tutor
  (51, 5100, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Dugtrio - Sleep Talk - Move Tutor
  (51, 5100, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Dugtrio - Snore - Move Tutor
  (51, 5100, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Dugtrio - Stealth Rock - Move Tutor
  (51, 5100, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Dugtrio - Uproar - Move Tutor
  (51, 5100, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Meowth - Scratch - Level 1
  (52, 5200, 10, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meowth - Growl - Level 1
  (52, 5200, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meowth - Bite - Level 6
  (52, 5200, 44, 12, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Meowth - Fake Out - Level 9
  (52, 5200, 252, 12, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Meowth - Fury Swipes - Level 14
  (52, 5200, 154, 12, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Meowth - Screech - Level 17
  (52, 5200, 103, 12, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Meowth - Feint Attack - Level 22
  (52, 5200, 185, 12, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Meowth - Taunt - Level 25
  (52, 5200, 269, 12, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Meowth - Pay Day - Level 30
  (52, 5200, 6, 12, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Meowth - Slash - Level 33
  (52, 5200, 163, 12, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Meowth - Nasty Plot - Level 38
  (52, 5200, 417, 12, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Meowth - Assurance - Level 41
  (52, 5200, 372, 12, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Meowth - Captivate - Level 46
  (52, 5200, 445, 12, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Meowth - Night Slash - Level 49
  (52, 5200, 400, 12, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Meowth - Feint - Level 54
  (52, 5200, 364, 12, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Meowth - Hone Claws - TM01
  (52, 5200, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 16),
  -- Meowth - Toxic - TM06
  (52, 5200, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Meowth - Hidden Power - TM10
  (52, 5200, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 18),
  -- Meowth - Sunny Day - TM11
  (52, 5200, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 19),
  -- Meowth - Taunt - TM12
  (52, 5200, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 20),
  -- Meowth - Protect - TM17
  (52, 5200, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 21),
  -- Meowth - Rain Dance - TM18
  (52, 5200, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 22),
  -- Meowth - Frustration - TM21
  (52, 5200, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 23),
  -- Meowth - Thunderbolt - TM24
  (52, 5200, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 24),
  -- Meowth - Thunder - TM25
  (52, 5200, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 25),
  -- Meowth - Return - TM27
  (52, 5200, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 26),
  -- Meowth - Dig - TM28
  (52, 5200, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 27),
  -- Meowth - Shadow Ball - TM30
  (52, 5200, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 28),
  -- Meowth - Double Team - TM32
  (52, 5200, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 29),
  -- Meowth - Aerial Ace - TM40
  (52, 5200, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 30),
  -- Meowth - Torment - TM41
  (52, 5200, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 31),
  -- Meowth - Facade - TM42
  (52, 5200, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 32),
  -- Meowth - Rest - TM44
  (52, 5200, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 33),
  -- Meowth - Attract - TM45
  (52, 5200, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 34),
  -- Meowth - Thief - TM46
  (52, 5200, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 35),
  -- Meowth - Round - TM48
  (52, 5200, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 36),
  -- Meowth - Echoed Voice - TM49
  (52, 5200, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 37),
  -- Meowth - Shadow Claw - TM65
  (52, 5200, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 38),
  -- Meowth - Payback - TM66
  (52, 5200, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 39),
  -- Meowth - Retaliate - TM67
  (52, 5200, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 40),
  -- Meowth - Flash - TM70
  (52, 5200, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 41),
  -- Meowth - Psych Up - TM77
  (52, 5200, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 42),
  -- Meowth - Work Up - TM83
  (52, 5200, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 43),
  -- Meowth - Dream Eater - TM85
  (52, 5200, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 44),
  -- Meowth - Swagger - TM87
  (52, 5200, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 45),
  -- Meowth - U-turn - TM89
  (52, 5200, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 46),
  -- Meowth - Substitute - TM90
  (52, 5200, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 47),
  -- Meowth - Cut - HM01
  (52, 5200, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 48),
  -- Meowth - Amnesia - Egg Move
  (52, 5200, 133, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Meowth - Assist - Egg Move
  (52, 5200, 274, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Meowth - Charm - Egg Move
  (52, 5200, 204, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Meowth - Flail - Egg Move
  (52, 5200, 175, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Meowth - Foul Play - Egg Move
  (52, 5200, 492, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Meowth - Hypnosis - Egg Move
  (52, 5200, 95, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Meowth - Iron Tail - Egg Move
  (52, 5200, 231, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Meowth - Last Resort - Egg Move
  (52, 5200, 387, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Meowth - Odor Sleuth - Egg Move
  (52, 5200, 316, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Meowth - Punishment - Egg Move
  (52, 5200, 386, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Meowth - Snatch - Egg Move
  (52, 5200, 289, 12, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Meowth - Spite - Egg Move
  (52, 5200, 180, 12, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Meowth - Tail Whip - Egg Move
  (52, 5200, 39, 12, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Meowth - Covet - Move Tutor
  (52, 5200, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Meowth - Dark Pulse - Move Tutor
  (52, 5200, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Meowth - Foul Play - Move Tutor
  (52, 5200, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Meowth - Gunk Shot - Move Tutor
  (52, 5200, 441, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Meowth - Hyper Voice - Move Tutor
  (52, 5200, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Meowth - Icy Wind - Move Tutor
  (52, 5200, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Meowth - Iron Tail - Move Tutor
  (52, 5200, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Meowth - Knock Off - Move Tutor
  (52, 5200, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Meowth - Last Resort - Move Tutor
  (52, 5200, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Meowth - Seed Bomb - Move Tutor
  (52, 5200, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Meowth - Sleep Talk - Move Tutor
  (52, 5200, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Meowth - Snatch - Move Tutor
  (52, 5200, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Meowth - Snore - Move Tutor
  (52, 5200, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Meowth - Spite - Move Tutor
  (52, 5200, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Meowth - Uproar - Move Tutor
  (52, 5200, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Persian - Switcheroo - Level 1
  (53, 5300, 415, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Persian - Scratch - Level 1
  (53, 5300, 10, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Persian - Growl - Level 1
  (53, 5300, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Persian - Bite - Level 1
  (53, 5300, 44, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Persian - Fake Out - Level 1
  (53, 5300, 252, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Persian - Bite - Level 6
  (53, 5300, 44, 12, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Persian - Fake Out - Level 9
  (53, 5300, 252, 12, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Persian - Fury Swipes - Level 14
  (53, 5300, 154, 12, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Persian - Screech - Level 17
  (53, 5300, 103, 12, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Persian - Feint Attack - Level 22
  (53, 5300, 185, 12, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Persian - Taunt - Level 25
  (53, 5300, 269, 12, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Persian - Swift - Level 28
  (53, 5300, 129, 12, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Persian - Power Gem - Level 32
  (53, 5300, 408, 12, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Persian - Slash - Level 37
  (53, 5300, 163, 12, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Persian - Nasty Plot - Level 44
  (53, 5300, 417, 12, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Persian - Assurance - Level 49
  (53, 5300, 372, 12, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Persian - Captivate - Level 56
  (53, 5300, 445, 12, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Persian - Night Slash - Level 61
  (53, 5300, 400, 12, NULL, 1, 61, NULL, NULL, NULL, 18),
  -- Persian - Feint - Level 68
  (53, 5300, 364, 12, NULL, 1, 68, NULL, NULL, NULL, 19),
  -- Persian - Hone Claws - TM01
  (53, 5300, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 20),
  -- Persian - Roar - TM05
  (53, 5300, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 21),
  -- Persian - Toxic - TM06
  (53, 5300, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 22),
  -- Persian - Hidden Power - TM10
  (53, 5300, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 23),
  -- Persian - Sunny Day - TM11
  (53, 5300, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 24),
  -- Persian - Taunt - TM12
  (53, 5300, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 25),
  -- Persian - Hyper Beam - TM15
  (53, 5300, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 26),
  -- Persian - Protect - TM17
  (53, 5300, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 27),
  -- Persian - Rain Dance - TM18
  (53, 5300, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 28),
  -- Persian - Frustration - TM21
  (53, 5300, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 29),
  -- Persian - Thunderbolt - TM24
  (53, 5300, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 30),
  -- Persian - Thunder - TM25
  (53, 5300, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 31),
  -- Persian - Return - TM27
  (53, 5300, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 32),
  -- Persian - Dig - TM28
  (53, 5300, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 33),
  -- Persian - Shadow Ball - TM30
  (53, 5300, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 34),
  -- Persian - Double Team - TM32
  (53, 5300, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 35),
  -- Persian - Aerial Ace - TM40
  (53, 5300, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 36),
  -- Persian - Torment - TM41
  (53, 5300, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 37),
  -- Persian - Facade - TM42
  (53, 5300, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 38),
  -- Persian - Rest - TM44
  (53, 5300, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 39),
  -- Persian - Attract - TM45
  (53, 5300, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 40),
  -- Persian - Thief - TM46
  (53, 5300, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 41),
  -- Persian - Round - TM48
  (53, 5300, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 42),
  -- Persian - Echoed Voice - TM49
  (53, 5300, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 43),
  -- Persian - Embargo - TM63
  (53, 5300, 373, 12, NULL, 2, NULL, NULL, 12002063, NULL, 44),
  -- Persian - Shadow Claw - TM65
  (53, 5300, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 45),
  -- Persian - Payback - TM66
  (53, 5300, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 46),
  -- Persian - Retaliate - TM67
  (53, 5300, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 47),
  -- Persian - Giga Impact - TM68
  (53, 5300, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 48),
  -- Persian - Flash - TM70
  (53, 5300, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 49),
  -- Persian - Psych Up - TM77
  (53, 5300, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 50),
  -- Persian - Work Up - TM83
  (53, 5300, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 51),
  -- Persian - Dream Eater - TM85
  (53, 5300, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 52),
  -- Persian - Swagger - TM87
  (53, 5300, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 53),
  -- Persian - U-turn - TM89
  (53, 5300, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 54),
  -- Persian - Substitute - TM90
  (53, 5300, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 55),
  -- Persian - Cut - HM01
  (53, 5300, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 56),
  -- Persian - Covet - Move Tutor
  (53, 5300, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Persian - Dark Pulse - Move Tutor
  (53, 5300, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Persian - Foul Play - Move Tutor
  (53, 5300, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Persian - Gunk Shot - Move Tutor
  (53, 5300, 441, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Persian - Hyper Voice - Move Tutor
  (53, 5300, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Persian - Icy Wind - Move Tutor
  (53, 5300, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Persian - Iron Tail - Move Tutor
  (53, 5300, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Persian - Knock Off - Move Tutor
  (53, 5300, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Persian - Last Resort - Move Tutor
  (53, 5300, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Persian - Seed Bomb - Move Tutor
  (53, 5300, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Persian - Sleep Talk - Move Tutor
  (53, 5300, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Persian - Snatch - Move Tutor
  (53, 5300, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Persian - Snore - Move Tutor
  (53, 5300, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Persian - Spite - Move Tutor
  (53, 5300, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Persian - Uproar - Move Tutor
  (53, 5300, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Psyduck - Water Sport - Level 1
  (54, 5400, 346, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Psyduck - Scratch - Level 1
  (54, 5400, 10, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Psyduck - Tail Whip - Level 4
  (54, 5400, 39, 12, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Psyduck - Water Gun - Level 8
  (54, 5400, 55, 12, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Psyduck - Disable - Level 11
  (54, 5400, 50, 12, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Psyduck - Confusion - Level 15
  (54, 5400, 93, 12, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Psyduck - Water Pulse - Level 18
  (54, 5400, 352, 12, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Psyduck - Fury Swipes - Level 22
  (54, 5400, 154, 12, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Psyduck - Screech - Level 25
  (54, 5400, 103, 12, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Psyduck - Zen Headbutt - Level 29
  (54, 5400, 428, 12, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Psyduck - Aqua Tail - Level 32
  (54, 5400, 401, 12, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Psyduck - Soak - Level 36
  (54, 5400, 487, 12, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Psyduck - Psych Up - Level 39
  (54, 5400, 244, 12, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Psyduck - Amnesia - Level 43
  (54, 5400, 133, 12, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Psyduck - Hydro Pump - Level 46
  (54, 5400, 56, 12, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Psyduck - Wonder Room - Level 50
  (54, 5400, 472, 12, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Psyduck - Hone Claws - TM01
  (54, 5400, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 17),
  -- Psyduck - Psyshock - TM03
  (54, 5400, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 18),
  -- Psyduck - Calm Mind - TM04
  (54, 5400, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 19),
  -- Psyduck - Toxic - TM06
  (54, 5400, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 20),
  -- Psyduck - Hail - TM07
  (54, 5400, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 21),
  -- Psyduck - Hidden Power - TM10
  (54, 5400, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 22),
  -- Psyduck - Ice Beam - TM13
  (54, 5400, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 23),
  -- Psyduck - Blizzard - TM14
  (54, 5400, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 24),
  -- Psyduck - Light Screen - TM16
  (54, 5400, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 25),
  -- Psyduck - Protect - TM17
  (54, 5400, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 26),
  -- Psyduck - Rain Dance - TM18
  (54, 5400, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 27),
  -- Psyduck - Telekinesis - TM19
  (54, 5400, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 28),
  -- Psyduck - Frustration - TM21
  (54, 5400, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 29),
  -- Psyduck - Return - TM27
  (54, 5400, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 30),
  -- Psyduck - Dig - TM28
  (54, 5400, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 31),
  -- Psyduck - Psychic - TM29
  (54, 5400, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 32),
  -- Psyduck - Brick Break - TM31
  (54, 5400, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 33),
  -- Psyduck - Double Team - TM32
  (54, 5400, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 34),
  -- Psyduck - Aerial Ace - TM40
  (54, 5400, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 35),
  -- Psyduck - Facade - TM42
  (54, 5400, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 36),
  -- Psyduck - Rest - TM44
  (54, 5400, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 37),
  -- Psyduck - Attract - TM45
  (54, 5400, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 38),
  -- Psyduck - Round - TM48
  (54, 5400, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 39),
  -- Psyduck - Scald - TM55
  (54, 5400, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 40),
  -- Psyduck - Fling - TM56
  (54, 5400, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 41),
  -- Psyduck - Shadow Claw - TM65
  (54, 5400, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 42),
  -- Psyduck - Flash - TM70
  (54, 5400, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 43),
  -- Psyduck - Psych Up - TM77
  (54, 5400, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 44),
  -- Psyduck - Swagger - TM87
  (54, 5400, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 45),
  -- Psyduck - Substitute - TM90
  (54, 5400, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 46),
  -- Psyduck - Rock Smash - TM94
  (54, 5400, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 47),
  -- Psyduck - Surf - HM03
  (54, 5400, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 48),
  -- Psyduck - Strength - HM04
  (54, 5400, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 49),
  -- Psyduck - Waterfall - HM05
  (54, 5400, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 50),
  -- Psyduck - Dive - HM06
  (54, 5400, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 51),
  -- Psyduck - Confuse Ray - Egg Move
  (54, 5400, 109, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Psyduck - Cross Chop - Egg Move
  (54, 5400, 238, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Psyduck - Encore - Egg Move
  (54, 5400, 227, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Psyduck - Foresight - Egg Move
  (54, 5400, 193, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Psyduck - Future Sight - Egg Move
  (54, 5400, 248, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Psyduck - Hypnosis - Egg Move
  (54, 5400, 95, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Psyduck - Mud Bomb - Egg Move
  (54, 5400, 426, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Psyduck - Psybeam - Egg Move
  (54, 5400, 60, 12, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Psyduck - Refresh - Egg Move
  (54, 5400, 287, 12, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Psyduck - Secret Power - Egg Move
  (54, 5400, 290, 12, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Psyduck - Sleep Talk - Egg Move
  (54, 5400, 214, 12, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Psyduck - Synchronoise - Egg Move
  (54, 5400, 485, 12, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Psyduck - Yawn - Egg Move
  (54, 5400, 281, 12, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Psyduck - Aqua Tail - Move Tutor
  (54, 5400, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Psyduck - Ice Punch - Move Tutor
  (54, 5400, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Psyduck - Icy Wind - Move Tutor
  (54, 5400, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Psyduck - Iron Tail - Move Tutor
  (54, 5400, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Psyduck - Role Play - Move Tutor
  (54, 5400, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Psyduck - Signal Beam - Move Tutor
  (54, 5400, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Psyduck - Sleep Talk - Move Tutor
  (54, 5400, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Psyduck - Snore - Move Tutor
  (54, 5400, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Psyduck - Wonder Room - Move Tutor
  (54, 5400, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Psyduck - Worry Seed - Move Tutor
  (54, 5400, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Psyduck - Zen Headbutt - Move Tutor
  (54, 5400, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Golduck - Aqua Jet - Level 1
  (55, 5500, 453, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golduck - Water Sport - Level 1
  (55, 5500, 346, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golduck - Scratch - Level 1
  (55, 5500, 10, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golduck - Tail Whip - Level 1
  (55, 5500, 39, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Golduck - Water Gun - Level 1
  (55, 5500, 55, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Golduck - Tail Whip - Level 4
  (55, 5500, 39, 12, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Golduck - Water Gun - Level 8
  (55, 5500, 55, 12, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Golduck - Disable - Level 11
  (55, 5500, 50, 12, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Golduck - Confusion - Level 15
  (55, 5500, 93, 12, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Golduck - Water Pulse - Level 18
  (55, 5500, 352, 12, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Golduck - Fury Swipes - Level 22
  (55, 5500, 154, 12, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Golduck - Screech - Level 25
  (55, 5500, 103, 12, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Golduck - Zen Headbutt - Level 29
  (55, 5500, 428, 12, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Golduck - Aqua Tail - Level 32
  (55, 5500, 401, 12, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Golduck - Soak - Level 38
  (55, 5500, 487, 12, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Golduck - Psych Up - Level 43
  (55, 5500, 244, 12, NULL, 1, 43, NULL, NULL, NULL, 16),
  -- Golduck - Amnesia - Level 49
  (55, 5500, 133, 12, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Golduck - Hydro Pump - Level 54
  (55, 5500, 56, 12, NULL, 1, 54, NULL, NULL, NULL, 18),
  -- Golduck - Wonder Room - Level 60
  (55, 5500, 472, 12, NULL, 1, 60, NULL, NULL, NULL, 19),
  -- Golduck - Hone Claws - TM01
  (55, 5500, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 20),
  -- Golduck - Psyshock - TM03
  (55, 5500, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 21),
  -- Golduck - Calm Mind - TM04
  (55, 5500, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 22),
  -- Golduck - Toxic - TM06
  (55, 5500, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 23),
  -- Golduck - Hail - TM07
  (55, 5500, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 24),
  -- Golduck - Hidden Power - TM10
  (55, 5500, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 25),
  -- Golduck - Ice Beam - TM13
  (55, 5500, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 26),
  -- Golduck - Blizzard - TM14
  (55, 5500, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 27),
  -- Golduck - Hyper Beam - TM15
  (55, 5500, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 28),
  -- Golduck - Light Screen - TM16
  (55, 5500, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 29),
  -- Golduck - Protect - TM17
  (55, 5500, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 30),
  -- Golduck - Rain Dance - TM18
  (55, 5500, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 31),
  -- Golduck - Telekinesis - TM19
  (55, 5500, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 32),
  -- Golduck - Frustration - TM21
  (55, 5500, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 33),
  -- Golduck - Return - TM27
  (55, 5500, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 34),
  -- Golduck - Dig - TM28
  (55, 5500, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 35),
  -- Golduck - Psychic - TM29
  (55, 5500, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 36),
  -- Golduck - Brick Break - TM31
  (55, 5500, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 37),
  -- Golduck - Double Team - TM32
  (55, 5500, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 38),
  -- Golduck - Aerial Ace - TM40
  (55, 5500, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 39),
  -- Golduck - Facade - TM42
  (55, 5500, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 40),
  -- Golduck - Rest - TM44
  (55, 5500, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 41),
  -- Golduck - Attract - TM45
  (55, 5500, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 42),
  -- Golduck - Low Sweep - TM47
  (55, 5500, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 43),
  -- Golduck - Round - TM48
  (55, 5500, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 44),
  -- Golduck - Focus Blast - TM52
  (55, 5500, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 45),
  -- Golduck - Scald - TM55
  (55, 5500, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 46),
  -- Golduck - Fling - TM56
  (55, 5500, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 47),
  -- Golduck - Shadow Claw - TM65
  (55, 5500, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 48),
  -- Golduck - Giga Impact - TM68
  (55, 5500, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 49),
  -- Golduck - Flash - TM70
  (55, 5500, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 50),
  -- Golduck - Psych Up - TM77
  (55, 5500, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 51),
  -- Golduck - Swagger - TM87
  (55, 5500, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 52),
  -- Golduck - Substitute - TM90
  (55, 5500, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 53),
  -- Golduck - Rock Smash - TM94
  (55, 5500, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 54),
  -- Golduck - Surf - HM03
  (55, 5500, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 55),
  -- Golduck - Strength - HM04
  (55, 5500, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 56),
  -- Golduck - Waterfall - HM05
  (55, 5500, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 57),
  -- Golduck - Dive - HM06
  (55, 5500, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 58),
  -- Golduck - Aqua Tail - Move Tutor
  (55, 5500, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Golduck - Ice Punch - Move Tutor
  (55, 5500, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Golduck - Icy Wind - Move Tutor
  (55, 5500, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Golduck - Iron Tail - Move Tutor
  (55, 5500, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Golduck - Low Kick - Move Tutor
  (55, 5500, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Golduck - Role Play - Move Tutor
  (55, 5500, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Golduck - Signal Beam - Move Tutor
  (55, 5500, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Golduck - Sleep Talk - Move Tutor
  (55, 5500, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Golduck - Snore - Move Tutor
  (55, 5500, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Golduck - Wonder Room - Move Tutor
  (55, 5500, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Golduck - Worry Seed - Move Tutor
  (55, 5500, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Golduck - Zen Headbutt - Move Tutor
  (55, 5500, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Mankey - Covet - Level 1
  (56, 5600, 343, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mankey - Scratch - Level 1
  (56, 5600, 10, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mankey - Low Kick - Level 1
  (56, 5600, 67, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mankey - Leer - Level 1
  (56, 5600, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mankey - Focus Energy - Level 1
  (56, 5600, 116, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mankey - Fury Swipes - Level 9
  (56, 5600, 154, 12, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Mankey - Karate Chop - Level 13
  (56, 5600, 2, 12, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Mankey - Seismic Toss - Level 17
  (56, 5600, 69, 12, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Mankey - Screech - Level 21
  (56, 5600, 103, 12, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Mankey - Assurance - Level 25
  (56, 5600, 372, 12, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Mankey - Swagger - Level 33
  (56, 5600, 207, 12, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Mankey - Cross Chop - Level 37
  (56, 5600, 238, 12, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Mankey - Thrash - Level 41
  (56, 5600, 37, 12, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Mankey - Punishment - Level 45
  (56, 5600, 386, 12, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Mankey - Close Combat - Level 49
  (56, 5600, 370, 12, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Mankey - Final Gambit - Level 53
  (56, 5600, 515, 12, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Mankey - Hone Claws - TM01
  (56, 5600, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 17),
  -- Mankey - Toxic - TM06
  (56, 5600, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 18),
  -- Mankey - Bulk Up - TM08
  (56, 5600, 339, 12, NULL, 2, NULL, NULL, 12002008, NULL, 19),
  -- Mankey - Hidden Power - TM10
  (56, 5600, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Mankey - Sunny Day - TM11
  (56, 5600, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 21),
  -- Mankey - Taunt - TM12
  (56, 5600, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 22),
  -- Mankey - Protect - TM17
  (56, 5600, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Mankey - Rain Dance - TM18
  (56, 5600, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 24),
  -- Mankey - Frustration - TM21
  (56, 5600, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 25),
  -- Mankey - Smack Down - TM23
  (56, 5600, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 26),
  -- Mankey - Thunderbolt - TM24
  (56, 5600, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 27),
  -- Mankey - Thunder - TM25
  (56, 5600, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 28),
  -- Mankey - Earthquake - TM26
  (56, 5600, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 29),
  -- Mankey - Return - TM27
  (56, 5600, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 30),
  -- Mankey - Dig - TM28
  (56, 5600, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 31),
  -- Mankey - Brick Break - TM31
  (56, 5600, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 32),
  -- Mankey - Double Team - TM32
  (56, 5600, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 33),
  -- Mankey - Rock Tomb - TM39
  (56, 5600, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 34),
  -- Mankey - Aerial Ace - TM40
  (56, 5600, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 35),
  -- Mankey - Facade - TM42
  (56, 5600, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 36),
  -- Mankey - Rest - TM44
  (56, 5600, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 37),
  -- Mankey - Attract - TM45
  (56, 5600, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 38),
  -- Mankey - Thief - TM46
  (56, 5600, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 39),
  -- Mankey - Low Sweep - TM47
  (56, 5600, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 40),
  -- Mankey - Round - TM48
  (56, 5600, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 41),
  -- Mankey - Overheat - TM50
  (56, 5600, 315, 12, NULL, 2, NULL, NULL, 12002050, NULL, 42),
  -- Mankey - Focus Blast - TM52
  (56, 5600, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 43),
  -- Mankey - Fling - TM56
  (56, 5600, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 44),
  -- Mankey - Acrobatics - TM62
  (56, 5600, 512, 12, NULL, 2, NULL, NULL, 12002062, NULL, 45),
  -- Mankey - Payback - TM66
  (56, 5600, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 46),
  -- Mankey - Retaliate - TM67
  (56, 5600, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 47),
  -- Mankey - Bulldoze - TM78
  (56, 5600, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 48),
  -- Mankey - Rock Slide - TM80
  (56, 5600, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 49),
  -- Mankey - Work Up - TM83
  (56, 5600, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 50),
  -- Mankey - Poison Jab - TM84
  (56, 5600, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 51),
  -- Mankey - Swagger - TM87
  (56, 5600, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 52),
  -- Mankey - U-turn - TM89
  (56, 5600, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 53),
  -- Mankey - Substitute - TM90
  (56, 5600, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 54),
  -- Mankey - Rock Smash - TM94
  (56, 5600, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 55),
  -- Mankey - Strength - HM04
  (56, 5600, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 56),
  -- Mankey - Beat Up - Egg Move
  (56, 5600, 251, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Mankey - Close Combat - Egg Move
  (56, 5600, 370, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Mankey - Counter - Egg Move
  (56, 5600, 68, 12, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Mankey - Encore - Egg Move
  (56, 5600, 227, 12, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Mankey - Focus Punch - Egg Move
  (56, 5600, 264, 12, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Mankey - Foresight - Egg Move
  (56, 5600, 193, 12, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Mankey - Meditate - Egg Move
  (56, 5600, 96, 12, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Mankey - Revenge - Egg Move
  (56, 5600, 279, 12, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Mankey - Reversal - Egg Move
  (56, 5600, 179, 12, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Mankey - Sleep Talk - Egg Move
  (56, 5600, 214, 12, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Mankey - Smelling Salts - Egg Move
  (56, 5600, 265, 12, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Mankey - Covet - Move Tutor
  (56, 5600, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Mankey - Dual Chop - Move Tutor
  (56, 5600, 530, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Mankey - Endeavor - Move Tutor
  (56, 5600, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Mankey - Fire Punch - Move Tutor
  (56, 5600, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Mankey - Gunk Shot - Move Tutor
  (56, 5600, 441, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Mankey - Helping Hand - Move Tutor
  (56, 5600, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Mankey - Ice Punch - Move Tutor
  (56, 5600, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Mankey - Iron Tail - Move Tutor
  (56, 5600, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Mankey - Low Kick - Move Tutor
  (56, 5600, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Mankey - Outrage - Move Tutor
  (56, 5600, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Mankey - Role Play - Move Tutor
  (56, 5600, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 78),
  -- Mankey - Seed Bomb - Move Tutor
  (56, 5600, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 79),
  -- Mankey - Sleep Talk - Move Tutor
  (56, 5600, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 80),
  -- Mankey - Spite - Move Tutor
  (56, 5600, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 81),
  -- Mankey - Thunder Punch - Move Tutor
  (56, 5600, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 82),
  -- Mankey - Uproar - Move Tutor
  (56, 5600, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 83),
  -- Primeape - Fling - Level 1
  (57, 5700, 374, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Primeape - Scratch - Level 1
  (57, 5700, 10, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Primeape - Low Kick - Level 1
  (57, 5700, 67, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Primeape - Leer - Level 1
  (57, 5700, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Primeape - Focus Energy - Level 1
  (57, 5700, 116, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Primeape - Fury Swipes - Level 9
  (57, 5700, 154, 12, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Primeape - Karate Chop - Level 13
  (57, 5700, 2, 12, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Primeape - Seismic Toss - Level 17
  (57, 5700, 69, 12, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Primeape - Screech - Level 21
  (57, 5700, 103, 12, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Primeape - Assurance - Level 25
  (57, 5700, 372, 12, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Primeape - Rage - Level 28
  (57, 5700, 99, 12, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Primeape - Swagger - Level 35
  (57, 5700, 207, 12, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Primeape - Cross Chop - Level 41
  (57, 5700, 238, 12, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Primeape - Thrash - Level 47
  (57, 5700, 37, 12, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Primeape - Punishment - Level 53
  (57, 5700, 386, 12, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Primeape - Close Combat - Level 59
  (57, 5700, 370, 12, NULL, 1, 59, NULL, NULL, NULL, 16),
  -- Primeape - Final Gambit - Level 63
  (57, 5700, 515, 12, NULL, 1, 63, NULL, NULL, NULL, 17),
  -- Primeape - Hone Claws - TM01
  (57, 5700, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 18),
  -- Primeape - Toxic - TM06
  (57, 5700, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Primeape - Bulk Up - TM08
  (57, 5700, 339, 12, NULL, 2, NULL, NULL, 12002008, NULL, 20),
  -- Primeape - Hidden Power - TM10
  (57, 5700, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 21),
  -- Primeape - Sunny Day - TM11
  (57, 5700, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 22),
  -- Primeape - Taunt - TM12
  (57, 5700, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 23),
  -- Primeape - Hyper Beam - TM15
  (57, 5700, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 24),
  -- Primeape - Protect - TM17
  (57, 5700, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 25),
  -- Primeape - Rain Dance - TM18
  (57, 5700, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 26),
  -- Primeape - Frustration - TM21
  (57, 5700, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 27),
  -- Primeape - Smack Down - TM23
  (57, 5700, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 28),
  -- Primeape - Thunderbolt - TM24
  (57, 5700, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 29),
  -- Primeape - Thunder - TM25
  (57, 5700, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 30),
  -- Primeape - Earthquake - TM26
  (57, 5700, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 31),
  -- Primeape - Return - TM27
  (57, 5700, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 32),
  -- Primeape - Dig - TM28
  (57, 5700, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 33),
  -- Primeape - Brick Break - TM31
  (57, 5700, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 34),
  -- Primeape - Double Team - TM32
  (57, 5700, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 35),
  -- Primeape - Rock Tomb - TM39
  (57, 5700, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 36),
  -- Primeape - Aerial Ace - TM40
  (57, 5700, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 37),
  -- Primeape - Facade - TM42
  (57, 5700, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 38),
  -- Primeape - Rest - TM44
  (57, 5700, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 39),
  -- Primeape - Attract - TM45
  (57, 5700, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 40),
  -- Primeape - Thief - TM46
  (57, 5700, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 41),
  -- Primeape - Low Sweep - TM47
  (57, 5700, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 42),
  -- Primeape - Round - TM48
  (57, 5700, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 43),
  -- Primeape - Overheat - TM50
  (57, 5700, 315, 12, NULL, 2, NULL, NULL, 12002050, NULL, 44),
  -- Primeape - Focus Blast - TM52
  (57, 5700, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 45),
  -- Primeape - Fling - TM56
  (57, 5700, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 46),
  -- Primeape - Acrobatics - TM62
  (57, 5700, 512, 12, NULL, 2, NULL, NULL, 12002062, NULL, 47),
  -- Primeape - Payback - TM66
  (57, 5700, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 48),
  -- Primeape - Retaliate - TM67
  (57, 5700, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 49),
  -- Primeape - Giga Impact - TM68
  (57, 5700, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 50),
  -- Primeape - Stone Edge - TM71
  (57, 5700, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 51),
  -- Primeape - Bulldoze - TM78
  (57, 5700, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 52),
  -- Primeape - Rock Slide - TM80
  (57, 5700, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 53),
  -- Primeape - Work Up - TM83
  (57, 5700, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 54),
  -- Primeape - Poison Jab - TM84
  (57, 5700, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 55),
  -- Primeape - Swagger - TM87
  (57, 5700, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 56),
  -- Primeape - U-turn - TM89
  (57, 5700, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 57),
  -- Primeape - Substitute - TM90
  (57, 5700, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 58),
  -- Primeape - Rock Smash - TM94
  (57, 5700, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 59),
  -- Primeape - Strength - HM04
  (57, 5700, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 60),
  -- Primeape - Covet - Move Tutor
  (57, 5700, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Primeape - Dual Chop - Move Tutor
  (57, 5700, 530, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Primeape - Endeavor - Move Tutor
  (57, 5700, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Primeape - Fire Punch - Move Tutor
  (57, 5700, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Primeape - Gunk Shot - Move Tutor
  (57, 5700, 441, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Primeape - Helping Hand - Move Tutor
  (57, 5700, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Primeape - Ice Punch - Move Tutor
  (57, 5700, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Primeape - Iron Tail - Move Tutor
  (57, 5700, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Primeape - Low Kick - Move Tutor
  (57, 5700, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Primeape - Outrage - Move Tutor
  (57, 5700, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Primeape - Role Play - Move Tutor
  (57, 5700, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Primeape - Seed Bomb - Move Tutor
  (57, 5700, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Primeape - Sleep Talk - Move Tutor
  (57, 5700, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Primeape - Spite - Move Tutor
  (57, 5700, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Primeape - Thunder Punch - Move Tutor
  (57, 5700, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Primeape - Uproar - Move Tutor
  (57, 5700, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Growlithe - Bite - Level 1
  (58, 5800, 44, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Growlithe - Roar - Level 1
  (58, 5800, 46, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Growlithe - Ember - Level 6
  (58, 5800, 52, 12, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Growlithe - Leer - Level 8
  (58, 5800, 43, 12, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Growlithe - Odor Sleuth - Level 10
  (58, 5800, 316, 12, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Growlithe - Helping Hand - Level 12
  (58, 5800, 270, 12, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Growlithe - Flame Wheel - Level 17
  (58, 5800, 172, 12, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Growlithe - Reversal - Level 19
  (58, 5800, 179, 12, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Growlithe - Fire Fang - Level 21
  (58, 5800, 424, 12, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Growlithe - Take Down - Level 23
  (58, 5800, 36, 12, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Growlithe - Flame Burst - Level 28
  (58, 5800, 481, 12, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Growlithe - Agility - Level 30
  (58, 5800, 97, 12, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Growlithe - Retaliate - Level 32
  (58, 5800, 514, 12, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Growlithe - Flamethrower - Level 34
  (58, 5800, 53, 12, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Growlithe - Crunch - Level 39
  (58, 5800, 242, 12, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Growlithe - Heat Wave - Level 41
  (58, 5800, 257, 12, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Growlithe - Outrage - Level 43
  (58, 5800, 200, 12, NULL, 1, 43, NULL, NULL, NULL, 17),
  -- Growlithe - Flare Blitz - Level 45
  (58, 5800, 394, 12, NULL, 1, 45, NULL, NULL, NULL, 18),
  -- Growlithe - Roar - TM05
  (58, 5800, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 19),
  -- Growlithe - Toxic - TM06
  (58, 5800, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 20),
  -- Growlithe - Hidden Power - TM10
  (58, 5800, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 21),
  -- Growlithe - Sunny Day - TM11
  (58, 5800, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 22),
  -- Growlithe - Protect - TM17
  (58, 5800, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Growlithe - Safeguard - TM20
  (58, 5800, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 24),
  -- Growlithe - Frustration - TM21
  (58, 5800, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 25),
  -- Growlithe - Return - TM27
  (58, 5800, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 26),
  -- Growlithe - Dig - TM28
  (58, 5800, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 27),
  -- Growlithe - Double Team - TM32
  (58, 5800, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 28),
  -- Growlithe - Flamethrower - TM35
  (58, 5800, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 29),
  -- Growlithe - Fire Blast - TM38
  (58, 5800, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 30),
  -- Growlithe - Aerial Ace - TM40
  (58, 5800, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 31),
  -- Growlithe - Facade - TM42
  (58, 5800, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 32),
  -- Growlithe - Flame Charge - TM43
  (58, 5800, 488, 12, NULL, 2, NULL, NULL, 12002043, NULL, 33),
  -- Growlithe - Rest - TM44
  (58, 5800, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 34),
  -- Growlithe - Attract - TM45
  (58, 5800, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 35),
  -- Growlithe - Thief - TM46
  (58, 5800, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 36),
  -- Growlithe - Round - TM48
  (58, 5800, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 37),
  -- Growlithe - Overheat - TM50
  (58, 5800, 315, 12, NULL, 2, NULL, NULL, 12002050, NULL, 38),
  -- Growlithe - Incinerate - TM59
  (58, 5800, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 39),
  -- Growlithe - Will-O-Wisp - TM61
  (58, 5800, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 40),
  -- Growlithe - Retaliate - TM67
  (58, 5800, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 41),
  -- Growlithe - Swagger - TM87
  (58, 5800, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 42),
  -- Growlithe - Substitute - TM90
  (58, 5800, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 43),
  -- Growlithe - Wild Charge - TM93
  (58, 5800, 528, 12, NULL, 2, NULL, NULL, 12002093, NULL, 44),
  -- Growlithe - Rock Smash - TM94
  (58, 5800, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 45),
  -- Growlithe - Snarl - TM95
  (58, 5800, 555, 12, NULL, 2, NULL, NULL, 12002095, NULL, 46),
  -- Growlithe - Strength - HM04
  (58, 5800, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 47),
  -- Growlithe - Body Slam - Egg Move
  (58, 5800, 34, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Growlithe - Close Combat - Egg Move
  (58, 5800, 370, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Growlithe - Covet - Egg Move
  (58, 5800, 343, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Growlithe - Crunch - Egg Move
  (58, 5800, 242, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Growlithe - Double-Edge - Egg Move
  (58, 5800, 38, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Growlithe - Double Kick - Egg Move
  (58, 5800, 24, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Growlithe - Fire Spin - Egg Move
  (58, 5800, 83, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Growlithe - Flare Blitz - Egg Move
  (58, 5800, 394, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Growlithe - Heat Wave - Egg Move
  (58, 5800, 257, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Growlithe - Howl - Egg Move
  (58, 5800, 336, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Growlithe - Iron Tail - Egg Move
  (58, 5800, 231, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Growlithe - Morning Sun - Egg Move
  (58, 5800, 234, 12, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Growlithe - Thrash - Egg Move
  (58, 5800, 37, 12, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Growlithe - Covet - Move Tutor
  (58, 5800, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Growlithe - Heat Wave - Move Tutor
  (58, 5800, 257, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Growlithe - Helping Hand - Move Tutor
  (58, 5800, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Growlithe - Iron Tail - Move Tutor
  (58, 5800, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Growlithe - Outrage - Move Tutor
  (58, 5800, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Growlithe - Sleep Talk - Move Tutor
  (58, 5800, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Growlithe - Snore - Move Tutor
  (58, 5800, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Arcanine - Thunder Fang - Level 1
  (59, 5900, 422, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Arcanine - Bite - Level 1
  (59, 5900, 44, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Arcanine - Roar - Level 1
  (59, 5900, 46, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Arcanine - Fire Fang - Level 1
  (59, 5900, 424, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Arcanine - Odor Sleuth - Level 1
  (59, 5900, 316, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Arcanine - Extreme Speed - Level 34
  (59, 5900, 245, 12, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Arcanine - Roar - TM05
  (59, 5900, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 7),
  -- Arcanine - Toxic - TM06
  (59, 5900, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 8),
  -- Arcanine - Hidden Power - TM10
  (59, 5900, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 9),
  -- Arcanine - Sunny Day - TM11
  (59, 5900, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 10),
  -- Arcanine - Hyper Beam - TM15
  (59, 5900, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 11),
  -- Arcanine - Protect - TM17
  (59, 5900, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 12),
  -- Arcanine - Safeguard - TM20
  (59, 5900, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 13),
  -- Arcanine - Frustration - TM21
  (59, 5900, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 14),
  -- Arcanine - Solar Beam - TM22
  (59, 5900, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 15),
  -- Arcanine - Return - TM27
  (59, 5900, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 16),
  -- Arcanine - Dig - TM28
  (59, 5900, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 17),
  -- Arcanine - Double Team - TM32
  (59, 5900, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 18),
  -- Arcanine - Flamethrower - TM35
  (59, 5900, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 19),
  -- Arcanine - Fire Blast - TM38
  (59, 5900, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 20),
  -- Arcanine - Aerial Ace - TM40
  (59, 5900, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 21),
  -- Arcanine - Facade - TM42
  (59, 5900, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 22),
  -- Arcanine - Flame Charge - TM43
  (59, 5900, 488, 12, NULL, 2, NULL, NULL, 12002043, NULL, 23),
  -- Arcanine - Rest - TM44
  (59, 5900, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 24),
  -- Arcanine - Attract - TM45
  (59, 5900, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 25),
  -- Arcanine - Thief - TM46
  (59, 5900, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 26),
  -- Arcanine - Round - TM48
  (59, 5900, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 27),
  -- Arcanine - Overheat - TM50
  (59, 5900, 315, 12, NULL, 2, NULL, NULL, 12002050, NULL, 28),
  -- Arcanine - Incinerate - TM59
  (59, 5900, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 29),
  -- Arcanine - Will-O-Wisp - TM61
  (59, 5900, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 30),
  -- Arcanine - Retaliate - TM67
  (59, 5900, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 31),
  -- Arcanine - Giga Impact - TM68
  (59, 5900, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 32),
  -- Arcanine - Bulldoze - TM78
  (59, 5900, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 33),
  -- Arcanine - Swagger - TM87
  (59, 5900, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 34),
  -- Arcanine - Substitute - TM90
  (59, 5900, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 35),
  -- Arcanine - Wild Charge - TM93
  (59, 5900, 528, 12, NULL, 2, NULL, NULL, 12002093, NULL, 36),
  -- Arcanine - Rock Smash - TM94
  (59, 5900, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 37),
  -- Arcanine - Snarl - TM95
  (59, 5900, 555, 12, NULL, 2, NULL, NULL, 12002095, NULL, 38),
  -- Arcanine - Strength - HM04
  (59, 5900, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 39),
  -- Arcanine - Covet - Move Tutor
  (59, 5900, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 40),
  -- Arcanine - Dragon Pulse - Move Tutor
  (59, 5900, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 41),
  -- Arcanine - Heat Wave - Move Tutor
  (59, 5900, 257, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 42),
  -- Arcanine - Helping Hand - Move Tutor
  (59, 5900, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Arcanine - Iron Head - Move Tutor
  (59, 5900, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Arcanine - Iron Tail - Move Tutor
  (59, 5900, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Arcanine - Outrage - Move Tutor
  (59, 5900, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Arcanine - Sleep Talk - Move Tutor
  (59, 5900, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Arcanine - Snore - Move Tutor
  (59, 5900, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Poliwag - Water Sport - Level 1
  (60, 6000, 346, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poliwag - Bubble - Level 5
  (60, 6000, 145, 12, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Poliwag - Hypnosis - Level 8
  (60, 6000, 95, 12, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Poliwag - Water Gun - Level 11
  (60, 6000, 55, 12, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Poliwag - Double Slap - Level 15
  (60, 6000, 3, 12, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Poliwag - Rain Dance - Level 18
  (60, 6000, 240, 12, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Poliwag - Body Slam - Level 21
  (60, 6000, 34, 12, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Poliwag - Bubble Beam - Level 25
  (60, 6000, 61, 12, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Poliwag - Mud Shot - Level 28
  (60, 6000, 341, 12, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Poliwag - Belly Drum - Level 31
  (60, 6000, 187, 12, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Poliwag - Wake-Up Slap - Level 35
  (60, 6000, 358, 12, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Poliwag - Hydro Pump - Level 38
  (60, 6000, 56, 12, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Poliwag - Mud Bomb - Level 41
  (60, 6000, 426, 12, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Poliwag - Toxic - TM06
  (60, 6000, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 14),
  -- Poliwag - Hail - TM07
  (60, 6000, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 15),
  -- Poliwag - Hidden Power - TM10
  (60, 6000, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 16),
  -- Poliwag - Ice Beam - TM13
  (60, 6000, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 17),
  -- Poliwag - Blizzard - TM14
  (60, 6000, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 18),
  -- Poliwag - Protect - TM17
  (60, 6000, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 19),
  -- Poliwag - Rain Dance - TM18
  (60, 6000, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 20),
  -- Poliwag - Frustration - TM21
  (60, 6000, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 21),
  -- Poliwag - Return - TM27
  (60, 6000, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 22),
  -- Poliwag - Dig - TM28
  (60, 6000, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 23),
  -- Poliwag - Psychic - TM29
  (60, 6000, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 24),
  -- Poliwag - Double Team - TM32
  (60, 6000, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 25),
  -- Poliwag - Facade - TM42
  (60, 6000, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 26),
  -- Poliwag - Rest - TM44
  (60, 6000, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 27),
  -- Poliwag - Attract - TM45
  (60, 6000, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 28),
  -- Poliwag - Thief - TM46
  (60, 6000, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 29),
  -- Poliwag - Round - TM48
  (60, 6000, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 30),
  -- Poliwag - Scald - TM55
  (60, 6000, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 31),
  -- Poliwag - Swagger - TM87
  (60, 6000, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 32),
  -- Poliwag - Substitute - TM90
  (60, 6000, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 33),
  -- Poliwag - Surf - HM03
  (60, 6000, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 34),
  -- Poliwag - Waterfall - HM05
  (60, 6000, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 35),
  -- Poliwag - Dive - HM06
  (60, 6000, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 36),
  -- Poliwag - Bubble Beam - Egg Move
  (60, 6000, 61, 12, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Poliwag - Encore - Egg Move
  (60, 6000, 227, 12, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Poliwag - Endeavor - Egg Move
  (60, 6000, 283, 12, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Poliwag - Endure - Egg Move
  (60, 6000, 203, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Poliwag - Haze - Egg Move
  (60, 6000, 114, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Poliwag - Ice Ball - Egg Move
  (60, 6000, 301, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Poliwag - Mind Reader - Egg Move
  (60, 6000, 170, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Poliwag - Mist - Egg Move
  (60, 6000, 54, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Poliwag - Mud Shot - Egg Move
  (60, 6000, 341, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Poliwag - Refresh - Egg Move
  (60, 6000, 287, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Poliwag - Splash - Egg Move
  (60, 6000, 150, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Poliwag - Water Pulse - Egg Move
  (60, 6000, 352, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Poliwag - Water Sport - Egg Move
  (60, 6000, 346, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Poliwag - Endeavor - Move Tutor
  (60, 6000, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Poliwag - Helping Hand - Move Tutor
  (60, 6000, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Poliwag - Icy Wind - Move Tutor
  (60, 6000, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Poliwag - Sleep Talk - Move Tutor
  (60, 6000, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Poliwag - Snore - Move Tutor
  (60, 6000, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Poliwhirl - Water Sport - Level 1
  (61, 6100, 346, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poliwhirl - Bubble - Level 1
  (61, 6100, 145, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Poliwhirl - Hypnosis - Level 1
  (61, 6100, 95, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Poliwhirl - Bubble - Level 5
  (61, 6100, 145, 12, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Poliwhirl - Hypnosis - Level 8
  (61, 6100, 95, 12, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Poliwhirl - Water Gun - Level 11
  (61, 6100, 55, 12, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Poliwhirl - Double Slap - Level 15
  (61, 6100, 3, 12, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Poliwhirl - Rain Dance - Level 18
  (61, 6100, 240, 12, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Poliwhirl - Body Slam - Level 21
  (61, 6100, 34, 12, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Poliwhirl - Bubble Beam - Level 27
  (61, 6100, 61, 12, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Poliwhirl - Mud Shot - Level 32
  (61, 6100, 341, 12, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Poliwhirl - Belly Drum - Level 37
  (61, 6100, 187, 12, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Poliwhirl - Wake-Up Slap - Level 43
  (61, 6100, 358, 12, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Poliwhirl - Hydro Pump - Level 48
  (61, 6100, 56, 12, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Poliwhirl - Mud Bomb - Level 53
  (61, 6100, 426, 12, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Poliwhirl - Toxic - TM06
  (61, 6100, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Poliwhirl - Hail - TM07
  (61, 6100, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 17),
  -- Poliwhirl - Hidden Power - TM10
  (61, 6100, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 18),
  -- Poliwhirl - Ice Beam - TM13
  (61, 6100, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 19),
  -- Poliwhirl - Blizzard - TM14
  (61, 6100, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 20),
  -- Poliwhirl - Protect - TM17
  (61, 6100, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 21),
  -- Poliwhirl - Rain Dance - TM18
  (61, 6100, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 22),
  -- Poliwhirl - Frustration - TM21
  (61, 6100, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 23),
  -- Poliwhirl - Earthquake - TM26
  (61, 6100, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 24),
  -- Poliwhirl - Return - TM27
  (61, 6100, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 25),
  -- Poliwhirl - Dig - TM28
  (61, 6100, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 26),
  -- Poliwhirl - Psychic - TM29
  (61, 6100, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 27),
  -- Poliwhirl - Brick Break - TM31
  (61, 6100, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 28),
  -- Poliwhirl - Double Team - TM32
  (61, 6100, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 29),
  -- Poliwhirl - Facade - TM42
  (61, 6100, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 30),
  -- Poliwhirl - Rest - TM44
  (61, 6100, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 31),
  -- Poliwhirl - Attract - TM45
  (61, 6100, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 32),
  -- Poliwhirl - Thief - TM46
  (61, 6100, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 33),
  -- Poliwhirl - Round - TM48
  (61, 6100, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 34),
  -- Poliwhirl - Scald - TM55
  (61, 6100, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 35),
  -- Poliwhirl - Fling - TM56
  (61, 6100, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 36),
  -- Poliwhirl - Bulldoze - TM78
  (61, 6100, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 37),
  -- Poliwhirl - Swagger - TM87
  (61, 6100, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 38),
  -- Poliwhirl - Substitute - TM90
  (61, 6100, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 39),
  -- Poliwhirl - Rock Smash - TM94
  (61, 6100, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 40),
  -- Poliwhirl - Surf - HM03
  (61, 6100, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 41),
  -- Poliwhirl - Strength - HM04
  (61, 6100, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 42),
  -- Poliwhirl - Waterfall - HM05
  (61, 6100, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 43),
  -- Poliwhirl - Dive - HM06
  (61, 6100, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 44),
  -- Poliwhirl - Endeavor - Move Tutor
  (61, 6100, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Poliwhirl - Helping Hand - Move Tutor
  (61, 6100, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Poliwhirl - Ice Punch - Move Tutor
  (61, 6100, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Poliwhirl - Icy Wind - Move Tutor
  (61, 6100, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Poliwhirl - Sleep Talk - Move Tutor
  (61, 6100, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Poliwhirl - Snore - Move Tutor
  (61, 6100, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Poliwrath - Bubble Beam - Level 1
  (62, 6200, 61, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Poliwrath - Hypnosis - Level 1
  (62, 6200, 95, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Poliwrath - Double Slap - Level 1
  (62, 6200, 3, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Poliwrath - Submission - Level 1
  (62, 6200, 66, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Poliwrath - Dynamic Punch - Level 32
  (62, 6200, 223, 12, NULL, 1, 32, NULL, NULL, NULL, 5),
  -- Poliwrath - Mind Reader - Level 43
  (62, 6200, 170, 12, NULL, 1, 43, NULL, NULL, NULL, 6),
  -- Poliwrath - Circle Throw - Level 53
  (62, 6200, 509, 12, NULL, 1, 53, NULL, NULL, NULL, 7),
  -- Poliwrath - Toxic - TM06
  (62, 6200, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 8),
  -- Poliwrath - Hail - TM07
  (62, 6200, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 9),
  -- Poliwrath - Bulk Up - TM08
  (62, 6200, 339, 12, NULL, 2, NULL, NULL, 12002008, NULL, 10),
  -- Poliwrath - Hidden Power - TM10
  (62, 6200, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 11),
  -- Poliwrath - Ice Beam - TM13
  (62, 6200, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 12),
  -- Poliwrath - Blizzard - TM14
  (62, 6200, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 13),
  -- Poliwrath - Hyper Beam - TM15
  (62, 6200, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 14),
  -- Poliwrath - Protect - TM17
  (62, 6200, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 15),
  -- Poliwrath - Rain Dance - TM18
  (62, 6200, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 16),
  -- Poliwrath - Frustration - TM21
  (62, 6200, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 17),
  -- Poliwrath - Earthquake - TM26
  (62, 6200, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 18),
  -- Poliwrath - Return - TM27
  (62, 6200, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 19),
  -- Poliwrath - Dig - TM28
  (62, 6200, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 20),
  -- Poliwrath - Psychic - TM29
  (62, 6200, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 21),
  -- Poliwrath - Brick Break - TM31
  (62, 6200, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 22),
  -- Poliwrath - Double Team - TM32
  (62, 6200, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 23),
  -- Poliwrath - Rock Tomb - TM39
  (62, 6200, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 24),
  -- Poliwrath - Facade - TM42
  (62, 6200, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 25),
  -- Poliwrath - Rest - TM44
  (62, 6200, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 26),
  -- Poliwrath - Attract - TM45
  (62, 6200, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 27),
  -- Poliwrath - Thief - TM46
  (62, 6200, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 28),
  -- Poliwrath - Low Sweep - TM47
  (62, 6200, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 29),
  -- Poliwrath - Round - TM48
  (62, 6200, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 30),
  -- Poliwrath - Focus Blast - TM52
  (62, 6200, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 31),
  -- Poliwrath - Scald - TM55
  (62, 6200, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 32),
  -- Poliwrath - Fling - TM56
  (62, 6200, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 33),
  -- Poliwrath - Payback - TM66
  (62, 6200, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 34),
  -- Poliwrath - Giga Impact - TM68
  (62, 6200, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 35),
  -- Poliwrath - Bulldoze - TM78
  (62, 6200, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 36),
  -- Poliwrath - Rock Slide - TM80
  (62, 6200, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 37),
  -- Poliwrath - Work Up - TM83
  (62, 6200, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 38),
  -- Poliwrath - Poison Jab - TM84
  (62, 6200, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 39),
  -- Poliwrath - Swagger - TM87
  (62, 6200, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 40),
  -- Poliwrath - Substitute - TM90
  (62, 6200, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 41),
  -- Poliwrath - Rock Smash - TM94
  (62, 6200, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 42),
  -- Poliwrath - Surf - HM03
  (62, 6200, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 43),
  -- Poliwrath - Strength - HM04
  (62, 6200, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 44),
  -- Poliwrath - Waterfall - HM05
  (62, 6200, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 45),
  -- Poliwrath - Dive - HM06
  (62, 6200, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 46),
  -- Poliwrath - Endeavor - Move Tutor
  (62, 6200, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Poliwrath - Helping Hand - Move Tutor
  (62, 6200, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Poliwrath - Ice Punch - Move Tutor
  (62, 6200, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Poliwrath - Icy Wind - Move Tutor
  (62, 6200, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Poliwrath - Sleep Talk - Move Tutor
  (62, 6200, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Poliwrath - Snore - Move Tutor
  (62, 6200, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Abra - Teleport - Level 1
  (63, 6300, 100, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Abra - Psyshock - TM03
  (63, 6300, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 2),
  -- Abra - Calm Mind - TM04
  (63, 6300, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 3),
  -- Abra - Toxic - TM06
  (63, 6300, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 4),
  -- Abra - Hidden Power - TM10
  (63, 6300, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 5),
  -- Abra - Sunny Day - TM11
  (63, 6300, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 6),
  -- Abra - Taunt - TM12
  (63, 6300, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 7),
  -- Abra - Light Screen - TM16
  (63, 6300, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 8),
  -- Abra - Protect - TM17
  (63, 6300, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 9),
  -- Abra - Rain Dance - TM18
  (63, 6300, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 10),
  -- Abra - Telekinesis - TM19
  (63, 6300, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 11),
  -- Abra - Safeguard - TM20
  (63, 6300, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 12),
  -- Abra - Frustration - TM21
  (63, 6300, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 13),
  -- Abra - Return - TM27
  (63, 6300, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 14),
  -- Abra - Psychic - TM29
  (63, 6300, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 15),
  -- Abra - Shadow Ball - TM30
  (63, 6300, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 16),
  -- Abra - Double Team - TM32
  (63, 6300, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 17),
  -- Abra - Reflect - TM33
  (63, 6300, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 18),
  -- Abra - Torment - TM41
  (63, 6300, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 19),
  -- Abra - Facade - TM42
  (63, 6300, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 20),
  -- Abra - Rest - TM44
  (63, 6300, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 21),
  -- Abra - Attract - TM45
  (63, 6300, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 22),
  -- Abra - Thief - TM46
  (63, 6300, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 23),
  -- Abra - Round - TM48
  (63, 6300, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 24),
  -- Abra - Ally Switch - TM51
  (63, 6300, 502, 12, NULL, 2, NULL, NULL, 12002051, NULL, 25),
  -- Abra - Energy Ball - TM53
  (63, 6300, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 26),
  -- Abra - Fling - TM56
  (63, 6300, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 27),
  -- Abra - Charge Beam - TM57
  (63, 6300, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 28),
  -- Abra - Embargo - TM63
  (63, 6300, 373, 12, NULL, 2, NULL, NULL, 12002063, NULL, 29),
  -- Abra - Flash - TM70
  (63, 6300, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 30),
  -- Abra - Thunder Wave - TM73
  (63, 6300, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 31),
  -- Abra - Psych Up - TM77
  (63, 6300, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 32),
  -- Abra - Dream Eater - TM85
  (63, 6300, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 33),
  -- Abra - Grass Knot - TM86
  (63, 6300, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 34),
  -- Abra - Swagger - TM87
  (63, 6300, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 35),
  -- Abra - Substitute - TM90
  (63, 6300, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 36),
  -- Abra - Trick Room - TM92
  (63, 6300, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 37),
  -- Abra - Barrier - Egg Move
  (63, 6300, 112, 12, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Abra - Encore - Egg Move
  (63, 6300, 227, 12, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Abra - Fire Punch - Egg Move
  (63, 6300, 7, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Abra - Guard Split - Egg Move
  (63, 6300, 470, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Abra - Guard Swap - Egg Move
  (63, 6300, 385, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Abra - Ice Punch - Egg Move
  (63, 6300, 8, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Abra - Knock Off - Egg Move
  (63, 6300, 282, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Abra - Power Trick - Egg Move
  (63, 6300, 379, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Abra - Skill Swap - Egg Move
  (63, 6300, 285, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Abra - Thunder Punch - Egg Move
  (63, 6300, 9, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Abra - Drain Punch - Move Tutor
  (63, 6300, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Abra - Fire Punch - Move Tutor
  (63, 6300, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Abra - Foul Play - Move Tutor
  (63, 6300, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Abra - Gravity - Move Tutor
  (63, 6300, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Abra - Ice Punch - Move Tutor
  (63, 6300, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Abra - Iron Tail - Move Tutor
  (63, 6300, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Abra - Knock Off - Move Tutor
  (63, 6300, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Abra - Magic Coat - Move Tutor
  (63, 6300, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Abra - Magic Room - Move Tutor
  (63, 6300, 478, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Abra - Recycle - Move Tutor
  (63, 6300, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Abra - Role Play - Move Tutor
  (63, 6300, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Abra - Signal Beam - Move Tutor
  (63, 6300, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Abra - Skill Swap - Move Tutor
  (63, 6300, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Abra - Sleep Talk - Move Tutor
  (63, 6300, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Abra - Snatch - Move Tutor
  (63, 6300, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Abra - Snore - Move Tutor
  (63, 6300, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Abra - Thunder Punch - Move Tutor
  (63, 6300, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Abra - Trick - Move Tutor
  (63, 6300, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Abra - Wonder Room - Move Tutor
  (63, 6300, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Abra - Zen Headbutt - Move Tutor
  (63, 6300, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Kadabra - Teleport - Level 1
  (64, 6400, 100, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kadabra - Kinesis - Level 1
  (64, 6400, 134, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kadabra - Confusion - Level 1
  (64, 6400, 93, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kadabra - Confusion - Level 16
  (64, 6400, 93, 12, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Kadabra - Disable - Level 18
  (64, 6400, 50, 12, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Kadabra - Miracle Eye - Level 22
  (64, 6400, 357, 12, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Kadabra - Ally Switch - Level 24
  (64, 6400, 502, 12, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Kadabra - Psybeam - Level 28
  (64, 6400, 60, 12, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Kadabra - Reflect - Level 30
  (64, 6400, 115, 12, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Kadabra - Telekinesis - Level 34
  (64, 6400, 477, 12, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Kadabra - Recover - Level 36
  (64, 6400, 105, 12, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Kadabra - Psycho Cut - Level 40
  (64, 6400, 427, 12, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Kadabra - Role Play - Level 42
  (64, 6400, 272, 12, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Kadabra - Psychic - Level 46
  (64, 6400, 94, 12, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Kadabra - Future Sight - Level 48
  (64, 6400, 248, 12, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Kadabra - Trick - Level 52
  (64, 6400, 271, 12, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Kadabra - Psyshock - TM03
  (64, 6400, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 17),
  -- Kadabra - Calm Mind - TM04
  (64, 6400, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 18),
  -- Kadabra - Toxic - TM06
  (64, 6400, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Kadabra - Hidden Power - TM10
  (64, 6400, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Kadabra - Sunny Day - TM11
  (64, 6400, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 21),
  -- Kadabra - Taunt - TM12
  (64, 6400, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 22),
  -- Kadabra - Light Screen - TM16
  (64, 6400, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 23),
  -- Kadabra - Protect - TM17
  (64, 6400, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 24),
  -- Kadabra - Rain Dance - TM18
  (64, 6400, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 25),
  -- Kadabra - Telekinesis - TM19
  (64, 6400, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 26),
  -- Kadabra - Safeguard - TM20
  (64, 6400, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 27),
  -- Kadabra - Frustration - TM21
  (64, 6400, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 28),
  -- Kadabra - Return - TM27
  (64, 6400, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 29),
  -- Kadabra - Psychic - TM29
  (64, 6400, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 30),
  -- Kadabra - Shadow Ball - TM30
  (64, 6400, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 31),
  -- Kadabra - Double Team - TM32
  (64, 6400, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 32),
  -- Kadabra - Reflect - TM33
  (64, 6400, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 33),
  -- Kadabra - Torment - TM41
  (64, 6400, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 34),
  -- Kadabra - Facade - TM42
  (64, 6400, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 35),
  -- Kadabra - Rest - TM44
  (64, 6400, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 36),
  -- Kadabra - Attract - TM45
  (64, 6400, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 37),
  -- Kadabra - Thief - TM46
  (64, 6400, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 38),
  -- Kadabra - Round - TM48
  (64, 6400, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 39),
  -- Kadabra - Ally Switch - TM51
  (64, 6400, 502, 12, NULL, 2, NULL, NULL, 12002051, NULL, 40),
  -- Kadabra - Energy Ball - TM53
  (64, 6400, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 41),
  -- Kadabra - Fling - TM56
  (64, 6400, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 42),
  -- Kadabra - Charge Beam - TM57
  (64, 6400, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 43),
  -- Kadabra - Embargo - TM63
  (64, 6400, 373, 12, NULL, 2, NULL, NULL, 12002063, NULL, 44),
  -- Kadabra - Flash - TM70
  (64, 6400, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 45),
  -- Kadabra - Thunder Wave - TM73
  (64, 6400, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 46),
  -- Kadabra - Psych Up - TM77
  (64, 6400, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 47),
  -- Kadabra - Dream Eater - TM85
  (64, 6400, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 48),
  -- Kadabra - Grass Knot - TM86
  (64, 6400, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 49),
  -- Kadabra - Swagger - TM87
  (64, 6400, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 50),
  -- Kadabra - Substitute - TM90
  (64, 6400, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 51),
  -- Kadabra - Trick Room - TM92
  (64, 6400, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 52),
  -- Kadabra - Drain Punch - Move Tutor
  (64, 6400, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Kadabra - Fire Punch - Move Tutor
  (64, 6400, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Kadabra - Foul Play - Move Tutor
  (64, 6400, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Kadabra - Gravity - Move Tutor
  (64, 6400, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Kadabra - Ice Punch - Move Tutor
  (64, 6400, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Kadabra - Iron Tail - Move Tutor
  (64, 6400, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Kadabra - Knock Off - Move Tutor
  (64, 6400, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Kadabra - Magic Coat - Move Tutor
  (64, 6400, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Kadabra - Magic Room - Move Tutor
  (64, 6400, 478, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Kadabra - Recycle - Move Tutor
  (64, 6400, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Kadabra - Role Play - Move Tutor
  (64, 6400, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Kadabra - Signal Beam - Move Tutor
  (64, 6400, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Kadabra - Skill Swap - Move Tutor
  (64, 6400, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Kadabra - Sleep Talk - Move Tutor
  (64, 6400, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Kadabra - Snatch - Move Tutor
  (64, 6400, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Kadabra - Snore - Move Tutor
  (64, 6400, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Kadabra - Thunder Punch - Move Tutor
  (64, 6400, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Kadabra - Trick - Move Tutor
  (64, 6400, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Kadabra - Wonder Room - Move Tutor
  (64, 6400, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Kadabra - Zen Headbutt - Move Tutor
  (64, 6400, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Alakazam - Teleport - Level 1
  (65, 6500, 100, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alakazam - Kinesis - Level 1
  (65, 6500, 134, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alakazam - Confusion - Level 1
  (65, 6500, 93, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Alakazam - Confusion - Level 16
  (65, 6500, 93, 12, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Alakazam - Disable - Level 18
  (65, 6500, 50, 12, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Alakazam - Miracle Eye - Level 22
  (65, 6500, 357, 12, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Alakazam - Ally Switch - Level 24
  (65, 6500, 502, 12, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Alakazam - Psybeam - Level 28
  (65, 6500, 60, 12, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Alakazam - Reflect - Level 30
  (65, 6500, 115, 12, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Alakazam - Telekinesis - Level 34
  (65, 6500, 477, 12, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Alakazam - Recover - Level 36
  (65, 6500, 105, 12, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Alakazam - Psycho Cut - Level 40
  (65, 6500, 427, 12, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Alakazam - Calm Mind - Level 42
  (65, 6500, 347, 12, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Alakazam - Psychic - Level 46
  (65, 6500, 94, 12, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Alakazam - Future Sight - Level 48
  (65, 6500, 248, 12, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Alakazam - Trick - Level 52
  (65, 6500, 271, 12, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Alakazam - Psyshock - TM03
  (65, 6500, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 17),
  -- Alakazam - Calm Mind - TM04
  (65, 6500, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 18),
  -- Alakazam - Toxic - TM06
  (65, 6500, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Alakazam - Hidden Power - TM10
  (65, 6500, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Alakazam - Sunny Day - TM11
  (65, 6500, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 21),
  -- Alakazam - Taunt - TM12
  (65, 6500, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 22),
  -- Alakazam - Hyper Beam - TM15
  (65, 6500, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 23),
  -- Alakazam - Light Screen - TM16
  (65, 6500, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 24),
  -- Alakazam - Protect - TM17
  (65, 6500, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 25),
  -- Alakazam - Rain Dance - TM18
  (65, 6500, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 26),
  -- Alakazam - Telekinesis - TM19
  (65, 6500, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 27),
  -- Alakazam - Safeguard - TM20
  (65, 6500, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 28),
  -- Alakazam - Frustration - TM21
  (65, 6500, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 29),
  -- Alakazam - Return - TM27
  (65, 6500, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 30),
  -- Alakazam - Psychic - TM29
  (65, 6500, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 31),
  -- Alakazam - Shadow Ball - TM30
  (65, 6500, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 32),
  -- Alakazam - Double Team - TM32
  (65, 6500, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 33),
  -- Alakazam - Reflect - TM33
  (65, 6500, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 34),
  -- Alakazam - Torment - TM41
  (65, 6500, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 35),
  -- Alakazam - Facade - TM42
  (65, 6500, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 36),
  -- Alakazam - Rest - TM44
  (65, 6500, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 37),
  -- Alakazam - Attract - TM45
  (65, 6500, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 38),
  -- Alakazam - Thief - TM46
  (65, 6500, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 39),
  -- Alakazam - Round - TM48
  (65, 6500, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 40),
  -- Alakazam - Ally Switch - TM51
  (65, 6500, 502, 12, NULL, 2, NULL, NULL, 12002051, NULL, 41),
  -- Alakazam - Focus Blast - TM52
  (65, 6500, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 42),
  -- Alakazam - Energy Ball - TM53
  (65, 6500, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 43),
  -- Alakazam - Fling - TM56
  (65, 6500, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 44),
  -- Alakazam - Charge Beam - TM57
  (65, 6500, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 45),
  -- Alakazam - Embargo - TM63
  (65, 6500, 373, 12, NULL, 2, NULL, NULL, 12002063, NULL, 46),
  -- Alakazam - Giga Impact - TM68
  (65, 6500, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 47),
  -- Alakazam - Flash - TM70
  (65, 6500, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 48),
  -- Alakazam - Thunder Wave - TM73
  (65, 6500, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 49),
  -- Alakazam - Psych Up - TM77
  (65, 6500, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 50),
  -- Alakazam - Dream Eater - TM85
  (65, 6500, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 51),
  -- Alakazam - Grass Knot - TM86
  (65, 6500, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 52),
  -- Alakazam - Swagger - TM87
  (65, 6500, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 53),
  -- Alakazam - Substitute - TM90
  (65, 6500, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 54),
  -- Alakazam - Trick Room - TM92
  (65, 6500, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 55),
  -- Alakazam - Drain Punch - Move Tutor
  (65, 6500, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Alakazam - Fire Punch - Move Tutor
  (65, 6500, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Alakazam - Foul Play - Move Tutor
  (65, 6500, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Alakazam - Gravity - Move Tutor
  (65, 6500, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Alakazam - Ice Punch - Move Tutor
  (65, 6500, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Alakazam - Iron Tail - Move Tutor
  (65, 6500, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Alakazam - Knock Off - Move Tutor
  (65, 6500, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Alakazam - Magic Coat - Move Tutor
  (65, 6500, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Alakazam - Magic Room - Move Tutor
  (65, 6500, 478, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Alakazam - Recycle - Move Tutor
  (65, 6500, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Alakazam - Role Play - Move Tutor
  (65, 6500, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Alakazam - Signal Beam - Move Tutor
  (65, 6500, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Alakazam - Skill Swap - Move Tutor
  (65, 6500, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Alakazam - Sleep Talk - Move Tutor
  (65, 6500, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Alakazam - Snatch - Move Tutor
  (65, 6500, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Alakazam - Snore - Move Tutor
  (65, 6500, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Alakazam - Thunder Punch - Move Tutor
  (65, 6500, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Alakazam - Trick - Move Tutor
  (65, 6500, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Alakazam - Wonder Room - Move Tutor
  (65, 6500, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Alakazam - Zen Headbutt - Move Tutor
  (65, 6500, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Machop - Low Kick - Level 1
  (66, 6600, 67, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machop - Leer - Level 1
  (66, 6600, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Machop - Focus Energy - Level 7
  (66, 6600, 116, 12, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Machop - Karate Chop - Level 10
  (66, 6600, 2, 12, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Machop - Low Sweep - Level 13
  (66, 6600, 490, 12, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Machop - Foresight - Level 19
  (66, 6600, 193, 12, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Machop - Seismic Toss - Level 22
  (66, 6600, 69, 12, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Machop - Revenge - Level 25
  (66, 6600, 279, 12, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Machop - Vital Throw - Level 31
  (66, 6600, 233, 12, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Machop - Submission - Level 34
  (66, 6600, 66, 12, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Machop - Wake-Up Slap - Level 37
  (66, 6600, 358, 12, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Machop - Cross Chop - Level 43
  (66, 6600, 238, 12, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Machop - Scary Face - Level 46
  (66, 6600, 184, 12, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Machop - Dynamic Punch - Level 49
  (66, 6600, 223, 12, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Machop - Toxic - TM06
  (66, 6600, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Machop - Bulk Up - TM08
  (66, 6600, 339, 12, NULL, 2, NULL, NULL, 12002008, NULL, 16),
  -- Machop - Hidden Power - TM10
  (66, 6600, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Machop - Sunny Day - TM11
  (66, 6600, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 18),
  -- Machop - Light Screen - TM16
  (66, 6600, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 19),
  -- Machop - Protect - TM17
  (66, 6600, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 20),
  -- Machop - Rain Dance - TM18
  (66, 6600, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 21),
  -- Machop - Frustration - TM21
  (66, 6600, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Machop - Smack Down - TM23
  (66, 6600, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 23),
  -- Machop - Earthquake - TM26
  (66, 6600, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 24),
  -- Machop - Return - TM27
  (66, 6600, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 25),
  -- Machop - Dig - TM28
  (66, 6600, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 26),
  -- Machop - Brick Break - TM31
  (66, 6600, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 27),
  -- Machop - Double Team - TM32
  (66, 6600, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 28),
  -- Machop - Flamethrower - TM35
  (66, 6600, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 29),
  -- Machop - Fire Blast - TM38
  (66, 6600, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 30),
  -- Machop - Rock Tomb - TM39
  (66, 6600, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 31),
  -- Machop - Facade - TM42
  (66, 6600, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 32),
  -- Machop - Rest - TM44
  (66, 6600, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 33),
  -- Machop - Attract - TM45
  (66, 6600, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 34),
  -- Machop - Thief - TM46
  (66, 6600, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 35),
  -- Machop - Low Sweep - TM47
  (66, 6600, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 36),
  -- Machop - Round - TM48
  (66, 6600, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 37),
  -- Machop - Focus Blast - TM52
  (66, 6600, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 38),
  -- Machop - Fling - TM56
  (66, 6600, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 39),
  -- Machop - Incinerate - TM59
  (66, 6600, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 40),
  -- Machop - Payback - TM66
  (66, 6600, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 41),
  -- Machop - Retaliate - TM67
  (66, 6600, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 42),
  -- Machop - Bulldoze - TM78
  (66, 6600, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 43),
  -- Machop - Rock Slide - TM80
  (66, 6600, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 44),
  -- Machop - Work Up - TM83
  (66, 6600, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 45),
  -- Machop - Poison Jab - TM84
  (66, 6600, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 46),
  -- Machop - Swagger - TM87
  (66, 6600, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 47),
  -- Machop - Substitute - TM90
  (66, 6600, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 48),
  -- Machop - Rock Smash - TM94
  (66, 6600, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 49),
  -- Machop - Strength - HM04
  (66, 6600, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 50),
  -- Machop - Bullet Punch - Egg Move
  (66, 6600, 418, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Machop - Close Combat - Egg Move
  (66, 6600, 370, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Machop - Counter - Egg Move
  (66, 6600, 68, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Machop - Encore - Egg Move
  (66, 6600, 227, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Machop - Fire Punch - Egg Move
  (66, 6600, 7, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Machop - Heavy Slam - Egg Move
  (66, 6600, 484, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Machop - Ice Punch - Egg Move
  (66, 6600, 8, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Machop - Knock Off - Egg Move
  (66, 6600, 282, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Machop - Meditate - Egg Move
  (66, 6600, 96, 12, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Machop - Power Trick - Egg Move
  (66, 6600, 379, 12, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Machop - Rolling Kick - Egg Move
  (66, 6600, 27, 12, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Machop - Smelling Salts - Egg Move
  (66, 6600, 265, 12, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Machop - Thunder Punch - Egg Move
  (66, 6600, 9, 12, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Machop - Tickle - Egg Move
  (66, 6600, 321, 12, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Machop - Dual Chop - Move Tutor
  (66, 6600, 530, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Machop - Fire Punch - Move Tutor
  (66, 6600, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Machop - Helping Hand - Move Tutor
  (66, 6600, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Machop - Ice Punch - Move Tutor
  (66, 6600, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Machop - Knock Off - Move Tutor
  (66, 6600, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Machop - Low Kick - Move Tutor
  (66, 6600, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Machop - Role Play - Move Tutor
  (66, 6600, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Machop - Sleep Talk - Move Tutor
  (66, 6600, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Machop - Snore - Move Tutor
  (66, 6600, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Machop - Superpower - Move Tutor
  (66, 6600, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Machop - Thunder Punch - Move Tutor
  (66, 6600, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Machoke - Low Kick - Level 1
  (67, 6700, 67, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machoke - Leer - Level 1
  (67, 6700, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Machoke - Focus Energy - Level 1
  (67, 6700, 116, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Machoke - Karate Chop - Level 1
  (67, 6700, 2, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Machoke - Focus Energy - Level 7
  (67, 6700, 116, 12, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Machoke - Karate Chop - Level 10
  (67, 6700, 2, 12, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Machoke - Low Sweep - Level 13
  (67, 6700, 490, 12, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Machoke - Foresight - Level 19
  (67, 6700, 193, 12, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Machoke - Seismic Toss - Level 22
  (67, 6700, 69, 12, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Machoke - Revenge - Level 25
  (67, 6700, 279, 12, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Machoke - Vital Throw - Level 32
  (67, 6700, 233, 12, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Machoke - Submission - Level 36
  (67, 6700, 66, 12, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Machoke - Wake-Up Slap - Level 40
  (67, 6700, 358, 12, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Machoke - Cross Chop - Level 44
  (67, 6700, 238, 12, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Machoke - Scary Face - Level 51
  (67, 6700, 184, 12, NULL, 1, 51, NULL, NULL, NULL, 15),
  -- Machoke - Dynamic Punch - Level 55
  (67, 6700, 223, 12, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Machoke - Toxic - TM06
  (67, 6700, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Machoke - Bulk Up - TM08
  (67, 6700, 339, 12, NULL, 2, NULL, NULL, 12002008, NULL, 18),
  -- Machoke - Hidden Power - TM10
  (67, 6700, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 19),
  -- Machoke - Sunny Day - TM11
  (67, 6700, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 20),
  -- Machoke - Light Screen - TM16
  (67, 6700, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 21),
  -- Machoke - Protect - TM17
  (67, 6700, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 22),
  -- Machoke - Rain Dance - TM18
  (67, 6700, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 23),
  -- Machoke - Frustration - TM21
  (67, 6700, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 24),
  -- Machoke - Smack Down - TM23
  (67, 6700, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 25),
  -- Machoke - Earthquake - TM26
  (67, 6700, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 26),
  -- Machoke - Return - TM27
  (67, 6700, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 27),
  -- Machoke - Dig - TM28
  (67, 6700, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 28),
  -- Machoke - Brick Break - TM31
  (67, 6700, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 29),
  -- Machoke - Double Team - TM32
  (67, 6700, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 30),
  -- Machoke - Flamethrower - TM35
  (67, 6700, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 31),
  -- Machoke - Fire Blast - TM38
  (67, 6700, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 32),
  -- Machoke - Rock Tomb - TM39
  (67, 6700, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 33),
  -- Machoke - Facade - TM42
  (67, 6700, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 34),
  -- Machoke - Rest - TM44
  (67, 6700, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 35),
  -- Machoke - Attract - TM45
  (67, 6700, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 36),
  -- Machoke - Thief - TM46
  (67, 6700, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 37),
  -- Machoke - Low Sweep - TM47
  (67, 6700, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 38),
  -- Machoke - Round - TM48
  (67, 6700, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 39),
  -- Machoke - Focus Blast - TM52
  (67, 6700, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 40),
  -- Machoke - Fling - TM56
  (67, 6700, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 41),
  -- Machoke - Incinerate - TM59
  (67, 6700, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 42),
  -- Machoke - Payback - TM66
  (67, 6700, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 43),
  -- Machoke - Retaliate - TM67
  (67, 6700, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 44),
  -- Machoke - Bulldoze - TM78
  (67, 6700, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 45),
  -- Machoke - Rock Slide - TM80
  (67, 6700, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 46),
  -- Machoke - Work Up - TM83
  (67, 6700, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 47),
  -- Machoke - Poison Jab - TM84
  (67, 6700, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 48),
  -- Machoke - Swagger - TM87
  (67, 6700, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 49),
  -- Machoke - Substitute - TM90
  (67, 6700, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 50),
  -- Machoke - Rock Smash - TM94
  (67, 6700, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 51),
  -- Machoke - Strength - HM04
  (67, 6700, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 52),
  -- Machoke - Dual Chop - Move Tutor
  (67, 6700, 530, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Machoke - Fire Punch - Move Tutor
  (67, 6700, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Machoke - Helping Hand - Move Tutor
  (67, 6700, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Machoke - Ice Punch - Move Tutor
  (67, 6700, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Machoke - Knock Off - Move Tutor
  (67, 6700, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Machoke - Low Kick - Move Tutor
  (67, 6700, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Machoke - Role Play - Move Tutor
  (67, 6700, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Machoke - Sleep Talk - Move Tutor
  (67, 6700, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Machoke - Snore - Move Tutor
  (67, 6700, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Machoke - Superpower - Move Tutor
  (67, 6700, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Machoke - Thunder Punch - Move Tutor
  (67, 6700, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Machamp - Wide Guard - Level 1
  (68, 6800, 469, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Machamp - Low Kick - Level 1
  (68, 6800, 67, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Machamp - Leer - Level 1
  (68, 6800, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Machamp - Focus Energy - Level 1
  (68, 6800, 116, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Machamp - Karate Chop - Level 1
  (68, 6800, 2, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Machamp - Focus Energy - Level 7
  (68, 6800, 116, 12, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Machamp - Karate Chop - Level 10
  (68, 6800, 2, 12, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Machamp - Low Sweep - Level 13
  (68, 6800, 490, 12, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Machamp - Foresight - Level 19
  (68, 6800, 193, 12, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Machamp - Seismic Toss - Level 22
  (68, 6800, 69, 12, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Machamp - Revenge - Level 25
  (68, 6800, 279, 12, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Machamp - Vital Throw - Level 32
  (68, 6800, 233, 12, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Machamp - Submission - Level 36
  (68, 6800, 66, 12, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Machamp - Wake-Up Slap - Level 40
  (68, 6800, 358, 12, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Machamp - Cross Chop - Level 44
  (68, 6800, 238, 12, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Machamp - Scary Face - Level 51
  (68, 6800, 184, 12, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Machamp - Dynamic Punch - Level 55
  (68, 6800, 223, 12, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Machamp - Toxic - TM06
  (68, 6800, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 18),
  -- Machamp - Bulk Up - TM08
  (68, 6800, 339, 12, NULL, 2, NULL, NULL, 12002008, NULL, 19),
  -- Machamp - Hidden Power - TM10
  (68, 6800, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Machamp - Sunny Day - TM11
  (68, 6800, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 21),
  -- Machamp - Hyper Beam - TM15
  (68, 6800, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 22),
  -- Machamp - Light Screen - TM16
  (68, 6800, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 23),
  -- Machamp - Protect - TM17
  (68, 6800, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 24),
  -- Machamp - Rain Dance - TM18
  (68, 6800, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 25),
  -- Machamp - Frustration - TM21
  (68, 6800, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Machamp - Smack Down - TM23
  (68, 6800, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 27),
  -- Machamp - Earthquake - TM26
  (68, 6800, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 28),
  -- Machamp - Return - TM27
  (68, 6800, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 29),
  -- Machamp - Dig - TM28
  (68, 6800, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 30),
  -- Machamp - Brick Break - TM31
  (68, 6800, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 31),
  -- Machamp - Double Team - TM32
  (68, 6800, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 32),
  -- Machamp - Flamethrower - TM35
  (68, 6800, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 33),
  -- Machamp - Fire Blast - TM38
  (68, 6800, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 34),
  -- Machamp - Rock Tomb - TM39
  (68, 6800, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 35),
  -- Machamp - Facade - TM42
  (68, 6800, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 36),
  -- Machamp - Rest - TM44
  (68, 6800, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 37),
  -- Machamp - Attract - TM45
  (68, 6800, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 38),
  -- Machamp - Thief - TM46
  (68, 6800, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 39),
  -- Machamp - Low Sweep - TM47
  (68, 6800, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 40),
  -- Machamp - Round - TM48
  (68, 6800, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 41),
  -- Machamp - Focus Blast - TM52
  (68, 6800, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 42),
  -- Machamp - Fling - TM56
  (68, 6800, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 43),
  -- Machamp - Incinerate - TM59
  (68, 6800, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 44),
  -- Machamp - Payback - TM66
  (68, 6800, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 45),
  -- Machamp - Retaliate - TM67
  (68, 6800, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 46),
  -- Machamp - Giga Impact - TM68
  (68, 6800, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 47),
  -- Machamp - Stone Edge - TM71
  (68, 6800, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 48),
  -- Machamp - Bulldoze - TM78
  (68, 6800, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 49),
  -- Machamp - Rock Slide - TM80
  (68, 6800, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 50),
  -- Machamp - Work Up - TM83
  (68, 6800, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 51),
  -- Machamp - Poison Jab - TM84
  (68, 6800, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 52),
  -- Machamp - Swagger - TM87
  (68, 6800, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 53),
  -- Machamp - Substitute - TM90
  (68, 6800, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 54),
  -- Machamp - Rock Smash - TM94
  (68, 6800, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 55),
  -- Machamp - Strength - HM04
  (68, 6800, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 56),
  -- Machamp - Dual Chop - Move Tutor
  (68, 6800, 530, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Machamp - Fire Punch - Move Tutor
  (68, 6800, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Machamp - Helping Hand - Move Tutor
  (68, 6800, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Machamp - Ice Punch - Move Tutor
  (68, 6800, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Machamp - Knock Off - Move Tutor
  (68, 6800, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Machamp - Low Kick - Move Tutor
  (68, 6800, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Machamp - Role Play - Move Tutor
  (68, 6800, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Machamp - Sleep Talk - Move Tutor
  (68, 6800, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Machamp - Snore - Move Tutor
  (68, 6800, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Machamp - Superpower - Move Tutor
  (68, 6800, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Machamp - Thunder Punch - Move Tutor
  (68, 6800, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Bellsprout - Vine Whip - Level 1
  (69, 6900, 22, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bellsprout - Growth - Level 7
  (69, 6900, 74, 12, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Bellsprout - Wrap - Level 11
  (69, 6900, 35, 12, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Bellsprout - Sleep Powder - Level 13
  (69, 6900, 79, 12, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Bellsprout - Poison Powder - Level 15
  (69, 6900, 77, 12, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Bellsprout - Stun Spore - Level 17
  (69, 6900, 78, 12, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Bellsprout - Acid - Level 23
  (69, 6900, 51, 12, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Bellsprout - Knock Off - Level 27
  (69, 6900, 282, 12, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Bellsprout - Sweet Scent - Level 29
  (69, 6900, 230, 12, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Bellsprout - Gastro Acid - Level 35
  (69, 6900, 380, 12, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Bellsprout - Razor Leaf - Level 39
  (69, 6900, 75, 12, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Bellsprout - Slam - Level 41
  (69, 6900, 21, 12, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Bellsprout - Wring Out - Level 47
  (69, 6900, 378, 12, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Bellsprout - Toxic - TM06
  (69, 6900, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 14),
  -- Bellsprout - Venoshock - TM09
  (69, 6900, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 15),
  -- Bellsprout - Hidden Power - TM10
  (69, 6900, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 16),
  -- Bellsprout - Sunny Day - TM11
  (69, 6900, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 17),
  -- Bellsprout - Protect - TM17
  (69, 6900, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 18),
  -- Bellsprout - Frustration - TM21
  (69, 6900, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 19),
  -- Bellsprout - Solar Beam - TM22
  (69, 6900, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 20),
  -- Bellsprout - Return - TM27
  (69, 6900, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 21),
  -- Bellsprout - Double Team - TM32
  (69, 6900, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 22),
  -- Bellsprout - Reflect - TM33
  (69, 6900, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 23),
  -- Bellsprout - Sludge Bomb - TM36
  (69, 6900, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 24),
  -- Bellsprout - Facade - TM42
  (69, 6900, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 25),
  -- Bellsprout - Rest - TM44
  (69, 6900, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 26),
  -- Bellsprout - Attract - TM45
  (69, 6900, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 27),
  -- Bellsprout - Thief - TM46
  (69, 6900, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 28),
  -- Bellsprout - Round - TM48
  (69, 6900, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 29),
  -- Bellsprout - Energy Ball - TM53
  (69, 6900, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 30),
  -- Bellsprout - Flash - TM70
  (69, 6900, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 31),
  -- Bellsprout - Swords Dance - TM75
  (69, 6900, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 32),
  -- Bellsprout - Grass Knot - TM86
  (69, 6900, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 33),
  -- Bellsprout - Swagger - TM87
  (69, 6900, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 34),
  -- Bellsprout - Substitute - TM90
  (69, 6900, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 35),
  -- Bellsprout - Cut - HM01
  (69, 6900, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 36),
  -- Bellsprout - Bullet Seed - Egg Move
  (69, 6900, 331, 12, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Bellsprout - Clear Smog - Egg Move
  (69, 6900, 499, 12, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Bellsprout - Encore - Egg Move
  (69, 6900, 227, 12, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Bellsprout - Giga Drain - Egg Move
  (69, 6900, 202, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Bellsprout - Ingrain - Egg Move
  (69, 6900, 275, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Bellsprout - Leech Life - Egg Move
  (69, 6900, 141, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Bellsprout - Magical Leaf - Egg Move
  (69, 6900, 345, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Bellsprout - Natural Gift - Egg Move
  (69, 6900, 363, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Bellsprout - Power Whip - Egg Move
  (69, 6900, 438, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Bellsprout - Synthesis - Egg Move
  (69, 6900, 235, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Bellsprout - Tickle - Egg Move
  (69, 6900, 321, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Bellsprout - Weather Ball - Egg Move
  (69, 6900, 311, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Bellsprout - Worry Seed - Egg Move
  (69, 6900, 388, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Bellsprout - Bind - Move Tutor
  (69, 6900, 20, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Bellsprout - Gastro Acid - Move Tutor
  (69, 6900, 380, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Bellsprout - Giga Drain - Move Tutor
  (69, 6900, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Bellsprout - Knock Off - Move Tutor
  (69, 6900, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Bellsprout - Seed Bomb - Move Tutor
  (69, 6900, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Bellsprout - Sleep Talk - Move Tutor
  (69, 6900, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Bellsprout - Snore - Move Tutor
  (69, 6900, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Bellsprout - Synthesis - Move Tutor
  (69, 6900, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Bellsprout - Worry Seed - Move Tutor
  (69, 6900, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Weepinbell - Vine Whip - Level 1
  (70, 7000, 22, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weepinbell - Growth - Level 1
  (70, 7000, 74, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Weepinbell - Wrap - Level 1
  (70, 7000, 35, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Weepinbell - Growth - Level 7
  (70, 7000, 74, 12, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Weepinbell - Wrap - Level 11
  (70, 7000, 35, 12, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Weepinbell - Sleep Powder - Level 13
  (70, 7000, 79, 12, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Weepinbell - Poison Powder - Level 15
  (70, 7000, 77, 12, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Weepinbell - Stun Spore - Level 17
  (70, 7000, 78, 12, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Weepinbell - Acid - Level 23
  (70, 7000, 51, 12, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Weepinbell - Knock Off - Level 27
  (70, 7000, 282, 12, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Weepinbell - Sweet Scent - Level 29
  (70, 7000, 230, 12, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Weepinbell - Gastro Acid - Level 35
  (70, 7000, 380, 12, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Weepinbell - Razor Leaf - Level 39
  (70, 7000, 75, 12, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Weepinbell - Slam - Level 41
  (70, 7000, 21, 12, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Weepinbell - Wring Out - Level 47
  (70, 7000, 378, 12, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Weepinbell - Toxic - TM06
  (70, 7000, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Weepinbell - Venoshock - TM09
  (70, 7000, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 17),
  -- Weepinbell - Hidden Power - TM10
  (70, 7000, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 18),
  -- Weepinbell - Sunny Day - TM11
  (70, 7000, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 19),
  -- Weepinbell - Protect - TM17
  (70, 7000, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 20),
  -- Weepinbell - Frustration - TM21
  (70, 7000, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 21),
  -- Weepinbell - Solar Beam - TM22
  (70, 7000, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 22),
  -- Weepinbell - Return - TM27
  (70, 7000, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 23),
  -- Weepinbell - Double Team - TM32
  (70, 7000, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 24),
  -- Weepinbell - Reflect - TM33
  (70, 7000, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 25),
  -- Weepinbell - Sludge Bomb - TM36
  (70, 7000, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 26),
  -- Weepinbell - Facade - TM42
  (70, 7000, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 27),
  -- Weepinbell - Rest - TM44
  (70, 7000, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 28),
  -- Weepinbell - Attract - TM45
  (70, 7000, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 29),
  -- Weepinbell - Thief - TM46
  (70, 7000, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 30),
  -- Weepinbell - Round - TM48
  (70, 7000, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 31),
  -- Weepinbell - Energy Ball - TM53
  (70, 7000, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 32),
  -- Weepinbell - Flash - TM70
  (70, 7000, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 33),
  -- Weepinbell - Swords Dance - TM75
  (70, 7000, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 34),
  -- Weepinbell - Grass Knot - TM86
  (70, 7000, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 35),
  -- Weepinbell - Swagger - TM87
  (70, 7000, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 36),
  -- Weepinbell - Substitute - TM90
  (70, 7000, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 37),
  -- Weepinbell - Cut - HM01
  (70, 7000, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 38),
  -- Weepinbell - Bind - Move Tutor
  (70, 7000, 20, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 39),
  -- Weepinbell - Bug Bite - Move Tutor
  (70, 7000, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 40),
  -- Weepinbell - Gastro Acid - Move Tutor
  (70, 7000, 380, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 41),
  -- Weepinbell - Giga Drain - Move Tutor
  (70, 7000, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 42),
  -- Weepinbell - Knock Off - Move Tutor
  (70, 7000, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Weepinbell - Seed Bomb - Move Tutor
  (70, 7000, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Weepinbell - Sleep Talk - Move Tutor
  (70, 7000, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Weepinbell - Snore - Move Tutor
  (70, 7000, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Weepinbell - Synthesis - Move Tutor
  (70, 7000, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Weepinbell - Worry Seed - Move Tutor
  (70, 7000, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Victreebel - Stockpile - Level 1
  (71, 7100, 254, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Victreebel - Swallow - Level 1
  (71, 7100, 256, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Victreebel - Spit Up - Level 1
  (71, 7100, 255, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Victreebel - Vine Whip - Level 1
  (71, 7100, 22, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Victreebel - Sleep Powder - Level 1
  (71, 7100, 79, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Victreebel - Sweet Scent - Level 1
  (71, 7100, 230, 12, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Victreebel - Razor Leaf - Level 1
  (71, 7100, 75, 12, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Victreebel - Leaf Tornado - Level 27
  (71, 7100, 536, 12, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Victreebel - Leaf Storm - Level 47
  (71, 7100, 437, 12, NULL, 1, 47, NULL, NULL, NULL, 9),
  -- Victreebel - Leaf Blade - Level 47
  (71, 7100, 348, 12, NULL, 1, 47, NULL, NULL, NULL, 10),
  -- Victreebel - Toxic - TM06
  (71, 7100, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 11),
  -- Victreebel - Venoshock - TM09
  (71, 7100, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 12),
  -- Victreebel - Hidden Power - TM10
  (71, 7100, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 13),
  -- Victreebel - Sunny Day - TM11
  (71, 7100, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 14),
  -- Victreebel - Hyper Beam - TM15
  (71, 7100, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 15),
  -- Victreebel - Protect - TM17
  (71, 7100, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 16),
  -- Victreebel - Frustration - TM21
  (71, 7100, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 17),
  -- Victreebel - Solar Beam - TM22
  (71, 7100, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 18),
  -- Victreebel - Return - TM27
  (71, 7100, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 19),
  -- Victreebel - Double Team - TM32
  (71, 7100, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 20),
  -- Victreebel - Reflect - TM33
  (71, 7100, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 21),
  -- Victreebel - Sludge Bomb - TM36
  (71, 7100, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 22),
  -- Victreebel - Facade - TM42
  (71, 7100, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 23),
  -- Victreebel - Rest - TM44
  (71, 7100, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 24),
  -- Victreebel - Attract - TM45
  (71, 7100, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 25),
  -- Victreebel - Thief - TM46
  (71, 7100, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 26),
  -- Victreebel - Round - TM48
  (71, 7100, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 27),
  -- Victreebel - Energy Ball - TM53
  (71, 7100, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 28),
  -- Victreebel - Giga Impact - TM68
  (71, 7100, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 29),
  -- Victreebel - Flash - TM70
  (71, 7100, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 30),
  -- Victreebel - Swords Dance - TM75
  (71, 7100, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 31),
  -- Victreebel - Grass Knot - TM86
  (71, 7100, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 32),
  -- Victreebel - Swagger - TM87
  (71, 7100, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 33),
  -- Victreebel - Substitute - TM90
  (71, 7100, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 34),
  -- Victreebel - Cut - HM01
  (71, 7100, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 35),
  -- Victreebel - Bind - Move Tutor
  (71, 7100, 20, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 36),
  -- Victreebel - Bug Bite - Move Tutor
  (71, 7100, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 37),
  -- Victreebel - Gastro Acid - Move Tutor
  (71, 7100, 380, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 38),
  -- Victreebel - Giga Drain - Move Tutor
  (71, 7100, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 39),
  -- Victreebel - Knock Off - Move Tutor
  (71, 7100, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 40),
  -- Victreebel - Seed Bomb - Move Tutor
  (71, 7100, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 41),
  -- Victreebel - Sleep Talk - Move Tutor
  (71, 7100, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 42),
  -- Victreebel - Snore - Move Tutor
  (71, 7100, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Victreebel - Synthesis - Move Tutor
  (71, 7100, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Victreebel - Worry Seed - Move Tutor
  (71, 7100, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Tentacool - Poison Sting - Level 1
  (72, 7200, 40, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tentacool - Supersonic - Level 5
  (72, 7200, 48, 12, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Tentacool - Constrict - Level 8
  (72, 7200, 132, 12, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Tentacool - Acid - Level 12
  (72, 7200, 51, 12, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Tentacool - Toxic Spikes - Level 15
  (72, 7200, 390, 12, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Tentacool - Bubble Beam - Level 19
  (72, 7200, 61, 12, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Tentacool - Wrap - Level 22
  (72, 7200, 35, 12, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Tentacool - Acid Spray - Level 26
  (72, 7200, 491, 12, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Tentacool - Barrier - Level 29
  (72, 7200, 112, 12, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Tentacool - Water Pulse - Level 33
  (72, 7200, 352, 12, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Tentacool - Poison Jab - Level 36
  (72, 7200, 398, 12, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Tentacool - Screech - Level 40
  (72, 7200, 103, 12, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Tentacool - Hex - Level 43
  (72, 7200, 506, 12, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Tentacool - Hydro Pump - Level 47
  (72, 7200, 56, 12, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Tentacool - Sludge Wave - Level 50
  (72, 7200, 482, 12, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Tentacool - Wring Out - Level 54
  (72, 7200, 378, 12, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Tentacool - Toxic - TM06
  (72, 7200, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Tentacool - Hail - TM07
  (72, 7200, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 18),
  -- Tentacool - Venoshock - TM09
  (72, 7200, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 19),
  -- Tentacool - Hidden Power - TM10
  (72, 7200, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Tentacool - Ice Beam - TM13
  (72, 7200, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 21),
  -- Tentacool - Blizzard - TM14
  (72, 7200, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 22),
  -- Tentacool - Protect - TM17
  (72, 7200, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Tentacool - Rain Dance - TM18
  (72, 7200, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 24),
  -- Tentacool - Safeguard - TM20
  (72, 7200, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 25),
  -- Tentacool - Frustration - TM21
  (72, 7200, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Tentacool - Return - TM27
  (72, 7200, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 27),
  -- Tentacool - Double Team - TM32
  (72, 7200, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 28),
  -- Tentacool - Sludge Wave - TM34
  (72, 7200, 482, 12, NULL, 2, NULL, NULL, 12002034, NULL, 29),
  -- Tentacool - Sludge Bomb - TM36
  (72, 7200, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 30),
  -- Tentacool - Facade - TM42
  (72, 7200, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 31),
  -- Tentacool - Rest - TM44
  (72, 7200, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 32),
  -- Tentacool - Attract - TM45
  (72, 7200, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 33),
  -- Tentacool - Thief - TM46
  (72, 7200, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 34),
  -- Tentacool - Round - TM48
  (72, 7200, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 35),
  -- Tentacool - Scald - TM55
  (72, 7200, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 36),
  -- Tentacool - Payback - TM66
  (72, 7200, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 37),
  -- Tentacool - Swords Dance - TM75
  (72, 7200, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 38),
  -- Tentacool - Poison Jab - TM84
  (72, 7200, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 39),
  -- Tentacool - Swagger - TM87
  (72, 7200, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 40),
  -- Tentacool - Substitute - TM90
  (72, 7200, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 41),
  -- Tentacool - Cut - HM01
  (72, 7200, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 42),
  -- Tentacool - Surf - HM03
  (72, 7200, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 43),
  -- Tentacool - Waterfall - HM05
  (72, 7200, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 44),
  -- Tentacool - Dive - HM06
  (72, 7200, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 45),
  -- Tentacool - Acupressure - Egg Move
  (72, 7200, 367, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Tentacool - Aurora Beam - Egg Move
  (72, 7200, 62, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Tentacool - Aqua Ring - Egg Move
  (72, 7200, 392, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Tentacool - Bubble - Egg Move
  (72, 7200, 145, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Tentacool - Confuse Ray - Egg Move
  (72, 7200, 109, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Tentacool - Haze - Egg Move
  (72, 7200, 114, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Tentacool - Knock Off - Egg Move
  (72, 7200, 282, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Tentacool - Mirror Coat - Egg Move
  (72, 7200, 243, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Tentacool - Muddy Water - Egg Move
  (72, 7200, 330, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Tentacool - Rapid Spin - Egg Move
  (72, 7200, 229, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Tentacool - Tickle - Egg Move
  (72, 7200, 321, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Tentacool - Bind - Move Tutor
  (72, 7200, 20, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Tentacool - Giga Drain - Move Tutor
  (72, 7200, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Tentacool - Icy Wind - Move Tutor
  (72, 7200, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Tentacool - Knock Off - Move Tutor
  (72, 7200, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Tentacool - Magic Coat - Move Tutor
  (72, 7200, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Tentacool - Sleep Talk - Move Tutor
  (72, 7200, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Tentacool - Snore - Move Tutor
  (72, 7200, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Tentacruel - Poison Sting - Level 1
  (73, 7300, 40, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tentacruel - Supersonic - Level 1
  (73, 7300, 48, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tentacruel - Constrict - Level 1
  (73, 7300, 132, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tentacruel - Supersonic - Level 5
  (73, 7300, 48, 12, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Tentacruel - Constrict - Level 8
  (73, 7300, 132, 12, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Tentacruel - Acid - Level 12
  (73, 7300, 51, 12, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Tentacruel - Toxic Spikes - Level 15
  (73, 7300, 390, 12, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Tentacruel - Bubble Beam - Level 19
  (73, 7300, 61, 12, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Tentacruel - Wrap - Level 22
  (73, 7300, 35, 12, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Tentacruel - Acid Spray - Level 26
  (73, 7300, 491, 12, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Tentacruel - Barrier - Level 29
  (73, 7300, 112, 12, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Tentacruel - Water Pulse - Level 34
  (73, 7300, 352, 12, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Tentacruel - Poison Jab - Level 38
  (73, 7300, 398, 12, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Tentacruel - Screech - Level 43
  (73, 7300, 103, 12, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Tentacruel - Hex - Level 47
  (73, 7300, 506, 12, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Tentacruel - Hydro Pump - Level 52
  (73, 7300, 56, 12, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Tentacruel - Sludge Wave - Level 56
  (73, 7300, 482, 12, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Tentacruel - Wring Out - Level 61
  (73, 7300, 378, 12, NULL, 1, 61, NULL, NULL, NULL, 18),
  -- Tentacruel - Toxic - TM06
  (73, 7300, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Tentacruel - Hail - TM07
  (73, 7300, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 20),
  -- Tentacruel - Venoshock - TM09
  (73, 7300, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 21),
  -- Tentacruel - Hidden Power - TM10
  (73, 7300, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 22),
  -- Tentacruel - Ice Beam - TM13
  (73, 7300, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 23),
  -- Tentacruel - Blizzard - TM14
  (73, 7300, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 24),
  -- Tentacruel - Hyper Beam - TM15
  (73, 7300, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 25),
  -- Tentacruel - Protect - TM17
  (73, 7300, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 26),
  -- Tentacruel - Rain Dance - TM18
  (73, 7300, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 27),
  -- Tentacruel - Safeguard - TM20
  (73, 7300, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 28),
  -- Tentacruel - Frustration - TM21
  (73, 7300, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 29),
  -- Tentacruel - Return - TM27
  (73, 7300, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 30),
  -- Tentacruel - Double Team - TM32
  (73, 7300, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 31),
  -- Tentacruel - Sludge Wave - TM34
  (73, 7300, 482, 12, NULL, 2, NULL, NULL, 12002034, NULL, 32),
  -- Tentacruel - Sludge Bomb - TM36
  (73, 7300, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 33),
  -- Tentacruel - Facade - TM42
  (73, 7300, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 34),
  -- Tentacruel - Rest - TM44
  (73, 7300, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 35),
  -- Tentacruel - Attract - TM45
  (73, 7300, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 36),
  -- Tentacruel - Thief - TM46
  (73, 7300, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 37),
  -- Tentacruel - Round - TM48
  (73, 7300, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 38),
  -- Tentacruel - Scald - TM55
  (73, 7300, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 39),
  -- Tentacruel - Payback - TM66
  (73, 7300, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 40),
  -- Tentacruel - Giga Impact - TM68
  (73, 7300, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 41),
  -- Tentacruel - Swords Dance - TM75
  (73, 7300, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 42),
  -- Tentacruel - Poison Jab - TM84
  (73, 7300, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 43),
  -- Tentacruel - Swagger - TM87
  (73, 7300, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 44),
  -- Tentacruel - Substitute - TM90
  (73, 7300, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 45),
  -- Tentacruel - Cut - HM01
  (73, 7300, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 46),
  -- Tentacruel - Surf - HM03
  (73, 7300, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 47),
  -- Tentacruel - Waterfall - HM05
  (73, 7300, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 48),
  -- Tentacruel - Dive - HM06
  (73, 7300, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 49),
  -- Tentacruel - Bind - Move Tutor
  (73, 7300, 20, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Tentacruel - Giga Drain - Move Tutor
  (73, 7300, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Tentacruel - Icy Wind - Move Tutor
  (73, 7300, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Tentacruel - Knock Off - Move Tutor
  (73, 7300, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Tentacruel - Magic Coat - Move Tutor
  (73, 7300, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Tentacruel - Sleep Talk - Move Tutor
  (73, 7300, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Tentacruel - Snore - Move Tutor
  (73, 7300, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Geodude - Tackle - Level 1
  (74, 7400, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Geodude - Defense Curl - Level 1
  (74, 7400, 111, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Geodude - Mud Sport - Level 4
  (74, 7400, 300, 12, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Geodude - Rock Polish - Level 8
  (74, 7400, 397, 12, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Geodude - Rock Throw - Level 11
  (74, 7400, 88, 12, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Geodude - Magnitude - Level 15
  (74, 7400, 222, 12, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Geodude - Rollout - Level 18
  (74, 7400, 205, 12, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Geodude - Rock Blast - Level 22
  (74, 7400, 350, 12, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Geodude - Smack Down - Level 25
  (74, 7400, 479, 12, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Geodude - Self-Destruct - Level 29
  (74, 7400, 120, 12, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Geodude - Bulldoze - Level 32
  (74, 7400, 523, 12, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Geodude - Stealth Rock - Level 36
  (74, 7400, 446, 12, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Geodude - Earthquake - Level 39
  (74, 7400, 89, 12, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Geodude - Explosion - Level 43
  (74, 7400, 153, 12, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Geodude - Double-Edge - Level 46
  (74, 7400, 38, 12, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Geodude - Stone Edge - Level 50
  (74, 7400, 444, 12, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Geodude - Toxic - TM06
  (74, 7400, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Geodude - Hidden Power - TM10
  (74, 7400, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 18),
  -- Geodude - Sunny Day - TM11
  (74, 7400, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 19),
  -- Geodude - Protect - TM17
  (74, 7400, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 20),
  -- Geodude - Frustration - TM21
  (74, 7400, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 21),
  -- Geodude - Smack Down - TM23
  (74, 7400, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 22),
  -- Geodude - Earthquake - TM26
  (74, 7400, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 23),
  -- Geodude - Return - TM27
  (74, 7400, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 24),
  -- Geodude - Dig - TM28
  (74, 7400, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 25),
  -- Geodude - Brick Break - TM31
  (74, 7400, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 26),
  -- Geodude - Double Team - TM32
  (74, 7400, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 27),
  -- Geodude - Flamethrower - TM35
  (74, 7400, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 28),
  -- Geodude - Sandstorm - TM37
  (74, 7400, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 29),
  -- Geodude - Fire Blast - TM38
  (74, 7400, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 30),
  -- Geodude - Rock Tomb - TM39
  (74, 7400, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 31),
  -- Geodude - Facade - TM42
  (74, 7400, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 32),
  -- Geodude - Rest - TM44
  (74, 7400, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 33),
  -- Geodude - Attract - TM45
  (74, 7400, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 34),
  -- Geodude - Round - TM48
  (74, 7400, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 35),
  -- Geodude - Fling - TM56
  (74, 7400, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 36),
  -- Geodude - Incinerate - TM59
  (74, 7400, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 37),
  -- Geodude - Explosion - TM64
  (74, 7400, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 38),
  -- Geodude - Rock Polish - TM69
  (74, 7400, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 39),
  -- Geodude - Stone Edge - TM71
  (74, 7400, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 40),
  -- Geodude - Gyro Ball - TM74
  (74, 7400, 360, 12, NULL, 2, NULL, NULL, 12002074, NULL, 41),
  -- Geodude - Bulldoze - TM78
  (74, 7400, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 42),
  -- Geodude - Rock Slide - TM80
  (74, 7400, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 43),
  -- Geodude - Swagger - TM87
  (74, 7400, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 44),
  -- Geodude - Substitute - TM90
  (74, 7400, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 45),
  -- Geodude - Rock Smash - TM94
  (74, 7400, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 46),
  -- Geodude - Strength - HM04
  (74, 7400, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 47),
  -- Geodude - Autotomize - Egg Move
  (74, 7400, 475, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Geodude - Block - Egg Move
  (74, 7400, 335, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Geodude - Curse - Egg Move
  (74, 7400, 174, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Geodude - Endure - Egg Move
  (74, 7400, 203, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Geodude - Flail - Egg Move
  (74, 7400, 175, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Geodude - Focus Punch - Egg Move
  (74, 7400, 264, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Geodude - Hammer Arm - Egg Move
  (74, 7400, 359, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Geodude - Mega Punch - Egg Move
  (74, 7400, 5, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Geodude - Rock Climb - Egg Move
  (74, 7400, 431, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Geodude - Block - Move Tutor
  (74, 7400, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Geodude - Earth Power - Move Tutor
  (74, 7400, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Geodude - Fire Punch - Move Tutor
  (74, 7400, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Geodude - Iron Defense - Move Tutor
  (74, 7400, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Geodude - Sleep Talk - Move Tutor
  (74, 7400, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Geodude - Snore - Move Tutor
  (74, 7400, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Geodude - Stealth Rock - Move Tutor
  (74, 7400, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Geodude - Superpower - Move Tutor
  (74, 7400, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Geodude - Thunder Punch - Move Tutor
  (74, 7400, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Graveler - Tackle - Level 1
  (75, 7500, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Graveler - Defense Curl - Level 1
  (75, 7500, 111, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Graveler - Mud Sport - Level 1
  (75, 7500, 300, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Graveler - Rock Polish - Level 1
  (75, 7500, 397, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Graveler - Mud Sport - Level 4
  (75, 7500, 300, 12, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Graveler - Rock Polish - Level 8
  (75, 7500, 397, 12, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Graveler - Rock Throw - Level 11
  (75, 7500, 88, 12, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Graveler - Magnitude - Level 15
  (75, 7500, 222, 12, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Graveler - Rollout - Level 18
  (75, 7500, 205, 12, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Graveler - Rock Blast - Level 22
  (75, 7500, 350, 12, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Graveler - Smack Down - Level 27
  (75, 7500, 479, 12, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Graveler - Self-Destruct - Level 31
  (75, 7500, 120, 12, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Graveler - Bulldoze - Level 36
  (75, 7500, 523, 12, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Graveler - Stealth Rock - Level 42
  (75, 7500, 446, 12, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Graveler - Earthquake - Level 47
  (75, 7500, 89, 12, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Graveler - Explosion - Level 53
  (75, 7500, 153, 12, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Graveler - Double-Edge - Level 58
  (75, 7500, 38, 12, NULL, 1, 58, NULL, NULL, NULL, 17),
  -- Graveler - Stone Edge - Level 64
  (75, 7500, 444, 12, NULL, 1, 64, NULL, NULL, NULL, 18),
  -- Graveler - Toxic - TM06
  (75, 7500, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Graveler - Hidden Power - TM10
  (75, 7500, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Graveler - Sunny Day - TM11
  (75, 7500, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 21),
  -- Graveler - Protect - TM17
  (75, 7500, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 22),
  -- Graveler - Frustration - TM21
  (75, 7500, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 23),
  -- Graveler - Smack Down - TM23
  (75, 7500, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 24),
  -- Graveler - Earthquake - TM26
  (75, 7500, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 25),
  -- Graveler - Return - TM27
  (75, 7500, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 26),
  -- Graveler - Dig - TM28
  (75, 7500, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 27),
  -- Graveler - Brick Break - TM31
  (75, 7500, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 28),
  -- Graveler - Double Team - TM32
  (75, 7500, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 29),
  -- Graveler - Flamethrower - TM35
  (75, 7500, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 30),
  -- Graveler - Sandstorm - TM37
  (75, 7500, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 31),
  -- Graveler - Fire Blast - TM38
  (75, 7500, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 32),
  -- Graveler - Rock Tomb - TM39
  (75, 7500, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 33),
  -- Graveler - Facade - TM42
  (75, 7500, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 34),
  -- Graveler - Rest - TM44
  (75, 7500, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 35),
  -- Graveler - Attract - TM45
  (75, 7500, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 36),
  -- Graveler - Round - TM48
  (75, 7500, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 37),
  -- Graveler - Fling - TM56
  (75, 7500, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 38),
  -- Graveler - Incinerate - TM59
  (75, 7500, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 39),
  -- Graveler - Explosion - TM64
  (75, 7500, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 40),
  -- Graveler - Rock Polish - TM69
  (75, 7500, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 41),
  -- Graveler - Stone Edge - TM71
  (75, 7500, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 42),
  -- Graveler - Gyro Ball - TM74
  (75, 7500, 360, 12, NULL, 2, NULL, NULL, 12002074, NULL, 43),
  -- Graveler - Bulldoze - TM78
  (75, 7500, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 44),
  -- Graveler - Rock Slide - TM80
  (75, 7500, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 45),
  -- Graveler - Swagger - TM87
  (75, 7500, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 46),
  -- Graveler - Substitute - TM90
  (75, 7500, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 47),
  -- Graveler - Rock Smash - TM94
  (75, 7500, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 48),
  -- Graveler - Strength - HM04
  (75, 7500, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 49),
  -- Graveler - Block - Move Tutor
  (75, 7500, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Graveler - Earth Power - Move Tutor
  (75, 7500, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Graveler - Fire Punch - Move Tutor
  (75, 7500, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Graveler - Iron Defense - Move Tutor
  (75, 7500, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Graveler - Sleep Talk - Move Tutor
  (75, 7500, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Graveler - Snore - Move Tutor
  (75, 7500, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Graveler - Stealth Rock - Move Tutor
  (75, 7500, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Graveler - Superpower - Move Tutor
  (75, 7500, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Graveler - Thunder Punch - Move Tutor
  (75, 7500, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Golem - Tackle - Level 1
  (76, 7600, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golem - Defense Curl - Level 1
  (76, 7600, 111, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golem - Mud Sport - Level 1
  (76, 7600, 300, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Golem - Rock Polish - Level 1
  (76, 7600, 397, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Golem - Mud Sport - Level 4
  (76, 7600, 300, 12, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Golem - Rock Polish - Level 8
  (76, 7600, 397, 12, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Golem - Rock Throw - Level 11
  (76, 7600, 88, 12, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Golem - Magnitude - Level 15
  (76, 7600, 222, 12, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Golem - Steamroller - Level 18
  (76, 7600, 537, 12, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Golem - Rock Blast - Level 22
  (76, 7600, 350, 12, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Golem - Smack Down - Level 27
  (76, 7600, 479, 12, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Golem - Self-Destruct - Level 31
  (76, 7600, 120, 12, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Golem - Bulldoze - Level 36
  (76, 7600, 523, 12, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Golem - Stealth Rock - Level 42
  (76, 7600, 446, 12, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Golem - Earthquake - Level 47
  (76, 7600, 89, 12, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Golem - Explosion - Level 53
  (76, 7600, 153, 12, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Golem - Double-Edge - Level 58
  (76, 7600, 38, 12, NULL, 1, 58, NULL, NULL, NULL, 17),
  -- Golem - Stone Edge - Level 64
  (76, 7600, 444, 12, NULL, 1, 64, NULL, NULL, NULL, 18),
  -- Golem - Heavy Slam - Level 69
  (76, 7600, 484, 12, NULL, 1, 69, NULL, NULL, NULL, 19),
  -- Golem - Roar - TM05
  (76, 7600, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 20),
  -- Golem - Toxic - TM06
  (76, 7600, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 21),
  -- Golem - Hidden Power - TM10
  (76, 7600, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 22),
  -- Golem - Sunny Day - TM11
  (76, 7600, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 23),
  -- Golem - Hyper Beam - TM15
  (76, 7600, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 24),
  -- Golem - Protect - TM17
  (76, 7600, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 25),
  -- Golem - Frustration - TM21
  (76, 7600, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Golem - Smack Down - TM23
  (76, 7600, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 27),
  -- Golem - Earthquake - TM26
  (76, 7600, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 28),
  -- Golem - Return - TM27
  (76, 7600, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 29),
  -- Golem - Dig - TM28
  (76, 7600, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 30),
  -- Golem - Brick Break - TM31
  (76, 7600, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 31),
  -- Golem - Double Team - TM32
  (76, 7600, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 32),
  -- Golem - Flamethrower - TM35
  (76, 7600, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 33),
  -- Golem - Sandstorm - TM37
  (76, 7600, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 34),
  -- Golem - Fire Blast - TM38
  (76, 7600, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 35),
  -- Golem - Rock Tomb - TM39
  (76, 7600, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 36),
  -- Golem - Facade - TM42
  (76, 7600, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 37),
  -- Golem - Rest - TM44
  (76, 7600, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 38),
  -- Golem - Attract - TM45
  (76, 7600, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 39),
  -- Golem - Round - TM48
  (76, 7600, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 40),
  -- Golem - Focus Blast - TM52
  (76, 7600, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 41),
  -- Golem - Fling - TM56
  (76, 7600, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 42),
  -- Golem - Incinerate - TM59
  (76, 7600, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 43),
  -- Golem - Explosion - TM64
  (76, 7600, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 44),
  -- Golem - Giga Impact - TM68
  (76, 7600, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 45),
  -- Golem - Rock Polish - TM69
  (76, 7600, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 46),
  -- Golem - Stone Edge - TM71
  (76, 7600, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 47),
  -- Golem - Gyro Ball - TM74
  (76, 7600, 360, 12, NULL, 2, NULL, NULL, 12002074, NULL, 48),
  -- Golem - Bulldoze - TM78
  (76, 7600, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 49),
  -- Golem - Rock Slide - TM80
  (76, 7600, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 50),
  -- Golem - Swagger - TM87
  (76, 7600, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 51),
  -- Golem - Substitute - TM90
  (76, 7600, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 52),
  -- Golem - Rock Smash - TM94
  (76, 7600, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 53),
  -- Golem - Strength - HM04
  (76, 7600, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 54),
  -- Golem - Block - Move Tutor
  (76, 7600, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Golem - Earth Power - Move Tutor
  (76, 7600, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Golem - Fire Punch - Move Tutor
  (76, 7600, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Golem - Iron Defense - Move Tutor
  (76, 7600, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Golem - Iron Head - Move Tutor
  (76, 7600, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Golem - Sleep Talk - Move Tutor
  (76, 7600, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Golem - Snore - Move Tutor
  (76, 7600, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Golem - Stealth Rock - Move Tutor
  (76, 7600, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Golem - Superpower - Move Tutor
  (76, 7600, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Golem - Thunder Punch - Move Tutor
  (76, 7600, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Ponyta - Growl - Level 1
  (77, 7700, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ponyta - Tackle - Level 1
  (77, 7700, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ponyta - Tail Whip - Level 4
  (77, 7700, 39, 12, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Ponyta - Ember - Level 9
  (77, 7700, 52, 12, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Ponyta - Flame Wheel - Level 13
  (77, 7700, 172, 12, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Ponyta - Stomp - Level 17
  (77, 7700, 23, 12, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Ponyta - Flame Charge - Level 21
  (77, 7700, 488, 12, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Ponyta - Fire Spin - Level 25
  (77, 7700, 83, 12, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Ponyta - Take Down - Level 29
  (77, 7700, 36, 12, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Ponyta - Inferno - Level 33
  (77, 7700, 517, 12, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Ponyta - Agility - Level 37
  (77, 7700, 97, 12, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Ponyta - Fire Blast - Level 41
  (77, 7700, 126, 12, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Ponyta - Bounce - Level 45
  (77, 7700, 340, 12, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Ponyta - Flare Blitz - Level 49
  (77, 7700, 394, 12, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Ponyta - Toxic - TM06
  (77, 7700, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Ponyta - Hidden Power - TM10
  (77, 7700, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 16),
  -- Ponyta - Sunny Day - TM11
  (77, 7700, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 17),
  -- Ponyta - Protect - TM17
  (77, 7700, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 18),
  -- Ponyta - Frustration - TM21
  (77, 7700, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 19),
  -- Ponyta - Solar Beam - TM22
  (77, 7700, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 20),
  -- Ponyta - Return - TM27
  (77, 7700, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 21),
  -- Ponyta - Double Team - TM32
  (77, 7700, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 22),
  -- Ponyta - Flamethrower - TM35
  (77, 7700, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 23),
  -- Ponyta - Fire Blast - TM38
  (77, 7700, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 24),
  -- Ponyta - Facade - TM42
  (77, 7700, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 25),
  -- Ponyta - Flame Charge - TM43
  (77, 7700, 488, 12, NULL, 2, NULL, NULL, 12002043, NULL, 26),
  -- Ponyta - Rest - TM44
  (77, 7700, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 27),
  -- Ponyta - Attract - TM45
  (77, 7700, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 28),
  -- Ponyta - Round - TM48
  (77, 7700, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 29),
  -- Ponyta - Echoed Voice - TM49
  (77, 7700, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 30),
  -- Ponyta - Overheat - TM50
  (77, 7700, 315, 12, NULL, 2, NULL, NULL, 12002050, NULL, 31),
  -- Ponyta - Incinerate - TM59
  (77, 7700, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 32),
  -- Ponyta - Will-O-Wisp - TM61
  (77, 7700, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 33),
  -- Ponyta - Swagger - TM87
  (77, 7700, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 34),
  -- Ponyta - Substitute - TM90
  (77, 7700, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 35),
  -- Ponyta - Wild Charge - TM93
  (77, 7700, 528, 12, NULL, 2, NULL, NULL, 12002093, NULL, 36),
  -- Ponyta - Strength - HM04
  (77, 7700, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 37),
  -- Ponyta - Captivate - Egg Move
  (77, 7700, 445, 12, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Ponyta - Charm - Egg Move
  (77, 7700, 204, 12, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Ponyta - Double-Edge - Egg Move
  (77, 7700, 38, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Ponyta - Double Kick - Egg Move
  (77, 7700, 24, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Ponyta - Flame Wheel - Egg Move
  (77, 7700, 172, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Ponyta - Horn Drill - Egg Move
  (77, 7700, 32, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Ponyta - Hypnosis - Egg Move
  (77, 7700, 95, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Ponyta - Low Kick - Egg Move
  (77, 7700, 67, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Ponyta - Morning Sun - Egg Move
  (77, 7700, 234, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Ponyta - Thrash - Egg Move
  (77, 7700, 37, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Ponyta - Bounce - Move Tutor
  (77, 7700, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Ponyta - Heat Wave - Move Tutor
  (77, 7700, 257, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Ponyta - Iron Tail - Move Tutor
  (77, 7700, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Ponyta - Low Kick - Move Tutor
  (77, 7700, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Ponyta - Sleep Talk - Move Tutor
  (77, 7700, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Ponyta - Snore - Move Tutor
  (77, 7700, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Rapidash - Poison Jab - Level 1
  (78, 7800, 398, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rapidash - Megahorn - Level 1
  (78, 7800, 224, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rapidash - Growl - Level 1
  (78, 7800, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rapidash - Quick Attack - Level 1
  (78, 7800, 98, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rapidash - Tail Whip - Level 1
  (78, 7800, 39, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rapidash - Ember - Level 1
  (78, 7800, 52, 12, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Rapidash - Tail Whip - Level 4
  (78, 7800, 39, 12, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Rapidash - Ember - Level 9
  (78, 7800, 52, 12, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Rapidash - Flame Wheel - Level 13
  (78, 7800, 172, 12, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Rapidash - Stomp - Level 17
  (78, 7800, 23, 12, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Rapidash - Flame Charge - Level 21
  (78, 7800, 488, 12, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Rapidash - Fire Spin - Level 25
  (78, 7800, 83, 12, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Rapidash - Take Down - Level 29
  (78, 7800, 36, 12, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Rapidash - Inferno - Level 33
  (78, 7800, 517, 12, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Rapidash - Agility - Level 37
  (78, 7800, 97, 12, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Rapidash - Fury Attack - Level 40
  (78, 7800, 31, 12, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Rapidash - Fire Blast - Level 41
  (78, 7800, 126, 12, NULL, 1, 41, NULL, NULL, NULL, 17),
  -- Rapidash - Bounce - Level 45
  (78, 7800, 340, 12, NULL, 1, 45, NULL, NULL, NULL, 18),
  -- Rapidash - Flare Blitz - Level 49
  (78, 7800, 394, 12, NULL, 1, 49, NULL, NULL, NULL, 19),
  -- Rapidash - Toxic - TM06
  (78, 7800, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 20),
  -- Rapidash - Hidden Power - TM10
  (78, 7800, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 21),
  -- Rapidash - Sunny Day - TM11
  (78, 7800, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 22),
  -- Rapidash - Hyper Beam - TM15
  (78, 7800, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 23),
  -- Rapidash - Protect - TM17
  (78, 7800, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 24),
  -- Rapidash - Frustration - TM21
  (78, 7800, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 25),
  -- Rapidash - Solar Beam - TM22
  (78, 7800, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 26),
  -- Rapidash - Return - TM27
  (78, 7800, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 27),
  -- Rapidash - Double Team - TM32
  (78, 7800, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 28),
  -- Rapidash - Flamethrower - TM35
  (78, 7800, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 29),
  -- Rapidash - Fire Blast - TM38
  (78, 7800, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 30),
  -- Rapidash - Facade - TM42
  (78, 7800, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 31),
  -- Rapidash - Flame Charge - TM43
  (78, 7800, 488, 12, NULL, 2, NULL, NULL, 12002043, NULL, 32),
  -- Rapidash - Rest - TM44
  (78, 7800, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 33),
  -- Rapidash - Attract - TM45
  (78, 7800, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 34),
  -- Rapidash - Round - TM48
  (78, 7800, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 35),
  -- Rapidash - Echoed Voice - TM49
  (78, 7800, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 36),
  -- Rapidash - Overheat - TM50
  (78, 7800, 315, 12, NULL, 2, NULL, NULL, 12002050, NULL, 37),
  -- Rapidash - Incinerate - TM59
  (78, 7800, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 38),
  -- Rapidash - Will-O-Wisp - TM61
  (78, 7800, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 39),
  -- Rapidash - Giga Impact - TM68
  (78, 7800, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 40),
  -- Rapidash - Poison Jab - TM84
  (78, 7800, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 41),
  -- Rapidash - Swagger - TM87
  (78, 7800, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 42),
  -- Rapidash - Substitute - TM90
  (78, 7800, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 43),
  -- Rapidash - Wild Charge - TM93
  (78, 7800, 528, 12, NULL, 2, NULL, NULL, 12002093, NULL, 44),
  -- Rapidash - Strength - HM04
  (78, 7800, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 45),
  -- Rapidash - Bounce - Move Tutor
  (78, 7800, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Rapidash - Drill Run - Move Tutor
  (78, 7800, 529, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Rapidash - Heat Wave - Move Tutor
  (78, 7800, 257, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Rapidash - Iron Tail - Move Tutor
  (78, 7800, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Rapidash - Low Kick - Move Tutor
  (78, 7800, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Rapidash - Sleep Talk - Move Tutor
  (78, 7800, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Rapidash - Snore - Move Tutor
  (78, 7800, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Slowpoke - Curse - Level 1
  (79, 7900, 174, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowpoke - Yawn - Level 1
  (79, 7900, 281, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowpoke - Tackle - Level 1
  (79, 7900, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slowpoke - Growl - Level 5
  (79, 7900, 45, 12, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Slowpoke - Water Gun - Level 9
  (79, 7900, 55, 12, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Slowpoke - Confusion - Level 14
  (79, 7900, 93, 12, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Slowpoke - Disable - Level 19
  (79, 7900, 50, 12, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Slowpoke - Headbutt - Level 23
  (79, 7900, 29, 12, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Slowpoke - Water Pulse - Level 28
  (79, 7900, 352, 12, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Slowpoke - Zen Headbutt - Level 32
  (79, 7900, 428, 12, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Slowpoke - Slack Off - Level 36
  (79, 7900, 303, 12, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Slowpoke - Amnesia - Level 41
  (79, 7900, 133, 12, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Slowpoke - Psychic - Level 45
  (79, 7900, 94, 12, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Slowpoke - Rain Dance - Level 49
  (79, 7900, 240, 12, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Slowpoke - Psych Up - Level 54
  (79, 7900, 244, 12, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Slowpoke - Heal Pulse - Level 58
  (79, 7900, 505, 12, NULL, 1, 58, NULL, NULL, NULL, 16),
  -- Slowpoke - Psyshock - TM03
  (79, 7900, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 17),
  -- Slowpoke - Calm Mind - TM04
  (79, 7900, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 18),
  -- Slowpoke - Toxic - TM06
  (79, 7900, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Slowpoke - Hail - TM07
  (79, 7900, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 20),
  -- Slowpoke - Hidden Power - TM10
  (79, 7900, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 21),
  -- Slowpoke - Sunny Day - TM11
  (79, 7900, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 22),
  -- Slowpoke - Ice Beam - TM13
  (79, 7900, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 23),
  -- Slowpoke - Blizzard - TM14
  (79, 7900, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 24),
  -- Slowpoke - Light Screen - TM16
  (79, 7900, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 25),
  -- Slowpoke - Protect - TM17
  (79, 7900, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 26),
  -- Slowpoke - Rain Dance - TM18
  (79, 7900, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 27),
  -- Slowpoke - Telekinesis - TM19
  (79, 7900, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 28),
  -- Slowpoke - Safeguard - TM20
  (79, 7900, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 29),
  -- Slowpoke - Frustration - TM21
  (79, 7900, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 30),
  -- Slowpoke - Earthquake - TM26
  (79, 7900, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 31),
  -- Slowpoke - Return - TM27
  (79, 7900, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 32),
  -- Slowpoke - Dig - TM28
  (79, 7900, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 33),
  -- Slowpoke - Psychic - TM29
  (79, 7900, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 34),
  -- Slowpoke - Shadow Ball - TM30
  (79, 7900, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 35),
  -- Slowpoke - Double Team - TM32
  (79, 7900, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 36),
  -- Slowpoke - Flamethrower - TM35
  (79, 7900, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 37),
  -- Slowpoke - Fire Blast - TM38
  (79, 7900, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 38),
  -- Slowpoke - Facade - TM42
  (79, 7900, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 39),
  -- Slowpoke - Rest - TM44
  (79, 7900, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 40),
  -- Slowpoke - Attract - TM45
  (79, 7900, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 41),
  -- Slowpoke - Round - TM48
  (79, 7900, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 42),
  -- Slowpoke - Echoed Voice - TM49
  (79, 7900, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 43),
  -- Slowpoke - Scald - TM55
  (79, 7900, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 44),
  -- Slowpoke - Incinerate - TM59
  (79, 7900, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 45),
  -- Slowpoke - Flash - TM70
  (79, 7900, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 46),
  -- Slowpoke - Thunder Wave - TM73
  (79, 7900, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 47),
  -- Slowpoke - Psych Up - TM77
  (79, 7900, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 48),
  -- Slowpoke - Bulldoze - TM78
  (79, 7900, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 49),
  -- Slowpoke - Dream Eater - TM85
  (79, 7900, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 50),
  -- Slowpoke - Grass Knot - TM86
  (79, 7900, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 51),
  -- Slowpoke - Swagger - TM87
  (79, 7900, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 52),
  -- Slowpoke - Substitute - TM90
  (79, 7900, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 53),
  -- Slowpoke - Trick Room - TM92
  (79, 7900, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 54),
  -- Slowpoke - Surf - HM03
  (79, 7900, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 55),
  -- Slowpoke - Strength - HM04
  (79, 7900, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 56),
  -- Slowpoke - Dive - HM06
  (79, 7900, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 57),
  -- Slowpoke - Belly Drum - Egg Move
  (79, 7900, 187, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Slowpoke - Block - Egg Move
  (79, 7900, 335, 12, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Slowpoke - Future Sight - Egg Move
  (79, 7900, 248, 12, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Slowpoke - Me First - Egg Move
  (79, 7900, 382, 12, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Slowpoke - Mud Sport - Egg Move
  (79, 7900, 300, 12, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Slowpoke - Sleep Talk - Egg Move
  (79, 7900, 214, 12, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Slowpoke - Snore - Egg Move
  (79, 7900, 173, 12, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Slowpoke - Stomp - Egg Move
  (79, 7900, 23, 12, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Slowpoke - Wonder Room - Egg Move
  (79, 7900, 472, 12, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Slowpoke - Zen Headbutt - Egg Move
  (79, 7900, 428, 12, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Slowpoke - After You - Move Tutor
  (79, 7900, 495, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Slowpoke - Aqua Tail - Move Tutor
  (79, 7900, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Slowpoke - Block - Move Tutor
  (79, 7900, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Slowpoke - Icy Wind - Move Tutor
  (79, 7900, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Slowpoke - Iron Tail - Move Tutor
  (79, 7900, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Slowpoke - Magic Coat - Move Tutor
  (79, 7900, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Slowpoke - Recycle - Move Tutor
  (79, 7900, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Slowpoke - Signal Beam - Move Tutor
  (79, 7900, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Slowpoke - Skill Swap - Move Tutor
  (79, 7900, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Slowpoke - Sleep Talk - Move Tutor
  (79, 7900, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Slowpoke - Snore - Move Tutor
  (79, 7900, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 78),
  -- Slowpoke - Trick - Move Tutor
  (79, 7900, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 79),
  -- Slowpoke - Wonder Room - Move Tutor
  (79, 7900, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 80),
  -- Slowpoke - Zen Headbutt - Move Tutor
  (79, 7900, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 81),
  -- Slowbro - Curse - Level 1
  (80, 8000, 174, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slowbro - Yawn - Level 1
  (80, 8000, 281, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slowbro - Tackle - Level 1
  (80, 8000, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Slowbro - Growl - Level 1
  (80, 8000, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Slowbro - Growl - Level 5
  (80, 8000, 45, 12, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Slowbro - Water Gun - Level 9
  (80, 8000, 55, 12, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Slowbro - Confusion - Level 14
  (80, 8000, 93, 12, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Slowbro - Disable - Level 19
  (80, 8000, 50, 12, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Slowbro - Headbutt - Level 23
  (80, 8000, 29, 12, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Slowbro - Water Pulse - Level 28
  (80, 8000, 352, 12, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Slowbro - Zen Headbutt - Level 32
  (80, 8000, 428, 12, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Slowbro - Slack Off - Level 36
  (80, 8000, 303, 12, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Slowbro - Withdraw - Level 37
  (80, 8000, 110, 12, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Slowbro - Amnesia - Level 43
  (80, 8000, 133, 12, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Slowbro - Psychic - Level 49
  (80, 8000, 94, 12, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Slowbro - Rain Dance - Level 55
  (80, 8000, 240, 12, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Slowbro - Psych Up - Level 62
  (80, 8000, 244, 12, NULL, 1, 62, NULL, NULL, NULL, 17),
  -- Slowbro - Heal Pulse - Level 68
  (80, 8000, 505, 12, NULL, 1, 68, NULL, NULL, NULL, 18),
  -- Slowbro - Psyshock - TM03
  (80, 8000, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 19),
  -- Slowbro - Calm Mind - TM04
  (80, 8000, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 20),
  -- Slowbro - Toxic - TM06
  (80, 8000, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 21),
  -- Slowbro - Hail - TM07
  (80, 8000, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 22),
  -- Slowbro - Hidden Power - TM10
  (80, 8000, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 23),
  -- Slowbro - Sunny Day - TM11
  (80, 8000, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 24),
  -- Slowbro - Ice Beam - TM13
  (80, 8000, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 25),
  -- Slowbro - Blizzard - TM14
  (80, 8000, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 26),
  -- Slowbro - Hyper Beam - TM15
  (80, 8000, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 27),
  -- Slowbro - Light Screen - TM16
  (80, 8000, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 28),
  -- Slowbro - Protect - TM17
  (80, 8000, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 29),
  -- Slowbro - Rain Dance - TM18
  (80, 8000, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 30),
  -- Slowbro - Telekinesis - TM19
  (80, 8000, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 31),
  -- Slowbro - Safeguard - TM20
  (80, 8000, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 32),
  -- Slowbro - Frustration - TM21
  (80, 8000, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 33),
  -- Slowbro - Earthquake - TM26
  (80, 8000, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 34),
  -- Slowbro - Return - TM27
  (80, 8000, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 35),
  -- Slowbro - Dig - TM28
  (80, 8000, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 36),
  -- Slowbro - Psychic - TM29
  (80, 8000, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 37),
  -- Slowbro - Shadow Ball - TM30
  (80, 8000, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 38),
  -- Slowbro - Brick Break - TM31
  (80, 8000, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 39),
  -- Slowbro - Double Team - TM32
  (80, 8000, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 40),
  -- Slowbro - Flamethrower - TM35
  (80, 8000, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 41),
  -- Slowbro - Fire Blast - TM38
  (80, 8000, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 42),
  -- Slowbro - Aerial Ace - TM40
  (80, 8000, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 43),
  -- Slowbro - Facade - TM42
  (80, 8000, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 44),
  -- Slowbro - Rest - TM44
  (80, 8000, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 45),
  -- Slowbro - Attract - TM45
  (80, 8000, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 46),
  -- Slowbro - Round - TM48
  (80, 8000, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 47),
  -- Slowbro - Echoed Voice - TM49
  (80, 8000, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 48),
  -- Slowbro - Focus Blast - TM52
  (80, 8000, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 49),
  -- Slowbro - Scald - TM55
  (80, 8000, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 50),
  -- Slowbro - Fling - TM56
  (80, 8000, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 51),
  -- Slowbro - Incinerate - TM59
  (80, 8000, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 52),
  -- Slowbro - Giga Impact - TM68
  (80, 8000, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 53),
  -- Slowbro - Flash - TM70
  (80, 8000, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 54),
  -- Slowbro - Thunder Wave - TM73
  (80, 8000, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 55),
  -- Slowbro - Psych Up - TM77
  (80, 8000, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 56),
  -- Slowbro - Bulldoze - TM78
  (80, 8000, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 57),
  -- Slowbro - Dream Eater - TM85
  (80, 8000, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 58),
  -- Slowbro - Grass Knot - TM86
  (80, 8000, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 59),
  -- Slowbro - Swagger - TM87
  (80, 8000, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 60),
  -- Slowbro - Substitute - TM90
  (80, 8000, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 61),
  -- Slowbro - Trick Room - TM92
  (80, 8000, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 62),
  -- Slowbro - Rock Smash - TM94
  (80, 8000, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 63),
  -- Slowbro - Surf - HM03
  (80, 8000, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 64),
  -- Slowbro - Strength - HM04
  (80, 8000, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 65),
  -- Slowbro - Dive - HM06
  (80, 8000, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 66),
  -- Slowbro - After You - Move Tutor
  (80, 8000, 495, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Slowbro - Aqua Tail - Move Tutor
  (80, 8000, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Slowbro - Block - Move Tutor
  (80, 8000, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Slowbro - Drain Punch - Move Tutor
  (80, 8000, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Slowbro - Foul Play - Move Tutor
  (80, 8000, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Slowbro - Ice Punch - Move Tutor
  (80, 8000, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Slowbro - Icy Wind - Move Tutor
  (80, 8000, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Slowbro - Iron Defense - Move Tutor
  (80, 8000, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Slowbro - Iron Tail - Move Tutor
  (80, 8000, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Slowbro - Magic Coat - Move Tutor
  (80, 8000, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Slowbro - Recycle - Move Tutor
  (80, 8000, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Slowbro - Signal Beam - Move Tutor
  (80, 8000, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 78),
  -- Slowbro - Skill Swap - Move Tutor
  (80, 8000, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 79),
  -- Slowbro - Sleep Talk - Move Tutor
  (80, 8000, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 80),
  -- Slowbro - Snore - Move Tutor
  (80, 8000, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 81),
  -- Slowbro - Trick - Move Tutor
  (80, 8000, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 82),
  -- Slowbro - Wonder Room - Move Tutor
  (80, 8000, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 83),
  -- Slowbro - Zen Headbutt - Move Tutor
  (80, 8000, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 84),
  -- Magnemite - Tackle - Level 1
  (81, 8100, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magnemite - Supersonic - Level 4
  (81, 8100, 48, 12, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Magnemite - Thunder Shock - Level 7
  (81, 8100, 84, 12, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Magnemite - Sonic Boom - Level 11
  (81, 8100, 49, 12, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Magnemite - Thunder Wave - Level 15
  (81, 8100, 86, 12, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Magnemite - Magnet Bomb - Level 18
  (81, 8100, 443, 12, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Magnemite - Spark - Level 21
  (81, 8100, 209, 12, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Magnemite - Mirror Shot - Level 25
  (81, 8100, 429, 12, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Magnemite - Metal Sound - Level 29
  (81, 8100, 319, 12, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Magnemite - Electro Ball - Level 32
  (81, 8100, 486, 12, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Magnemite - Flash Cannon - Level 35
  (81, 8100, 430, 12, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Magnemite - Screech - Level 39
  (81, 8100, 103, 12, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Magnemite - Discharge - Level 43
  (81, 8100, 435, 12, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Magnemite - Lock-On - Level 46
  (81, 8100, 199, 12, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Magnemite - Magnet Rise - Level 49
  (81, 8100, 393, 12, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Magnemite - Gyro Ball - Level 53
  (81, 8100, 360, 12, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Magnemite - Zap Cannon - Level 57
  (81, 8100, 192, 12, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Magnemite - Toxic - TM06
  (81, 8100, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 18),
  -- Magnemite - Hidden Power - TM10
  (81, 8100, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 19),
  -- Magnemite - Sunny Day - TM11
  (81, 8100, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 20),
  -- Magnemite - Light Screen - TM16
  (81, 8100, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 21),
  -- Magnemite - Protect - TM17
  (81, 8100, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 22),
  -- Magnemite - Rain Dance - TM18
  (81, 8100, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 23),
  -- Magnemite - Frustration - TM21
  (81, 8100, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 24),
  -- Magnemite - Thunderbolt - TM24
  (81, 8100, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 25),
  -- Magnemite - Thunder - TM25
  (81, 8100, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 26),
  -- Magnemite - Return - TM27
  (81, 8100, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 27),
  -- Magnemite - Double Team - TM32
  (81, 8100, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 28),
  -- Magnemite - Reflect - TM33
  (81, 8100, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 29),
  -- Magnemite - Facade - TM42
  (81, 8100, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 30),
  -- Magnemite - Rest - TM44
  (81, 8100, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 31),
  -- Magnemite - Round - TM48
  (81, 8100, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 32),
  -- Magnemite - Charge Beam - TM57
  (81, 8100, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 33),
  -- Magnemite - Explosion - TM64
  (81, 8100, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 34),
  -- Magnemite - Flash - TM70
  (81, 8100, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 35),
  -- Magnemite - Volt Switch - TM72
  (81, 8100, 521, 12, NULL, 2, NULL, NULL, 12002072, NULL, 36),
  -- Magnemite - Thunder Wave - TM73
  (81, 8100, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 37),
  -- Magnemite - Gyro Ball - TM74
  (81, 8100, 360, 12, NULL, 2, NULL, NULL, 12002074, NULL, 38),
  -- Magnemite - Psych Up - TM77
  (81, 8100, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 39),
  -- Magnemite - Swagger - TM87
  (81, 8100, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 40),
  -- Magnemite - Substitute - TM90
  (81, 8100, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 41),
  -- Magnemite - Flash Cannon - TM91
  (81, 8100, 430, 12, NULL, 2, NULL, NULL, 12002091, NULL, 42),
  -- Magnemite - Wild Charge - TM93
  (81, 8100, 528, 12, NULL, 2, NULL, NULL, 12002093, NULL, 43),
  -- Magnemite - Electroweb - Move Tutor
  (81, 8100, 527, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Magnemite - Gravity - Move Tutor
  (81, 8100, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Magnemite - Iron Defense - Move Tutor
  (81, 8100, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Magnemite - Magic Coat - Move Tutor
  (81, 8100, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Magnemite - Magnet Rise - Move Tutor
  (81, 8100, 393, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Magnemite - Recycle - Move Tutor
  (81, 8100, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Magnemite - Signal Beam - Move Tutor
  (81, 8100, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Magnemite - Sleep Talk - Move Tutor
  (81, 8100, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Magnemite - Snore - Move Tutor
  (81, 8100, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Magneton - Tri Attack - Level 1
  (82, 8200, 161, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magneton - Tackle - Level 1
  (82, 8200, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magneton - Thunder Shock - Level 1
  (82, 8200, 84, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magneton - Supersonic - Level 1
  (82, 8200, 48, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magneton - Sonic Boom - Level 1
  (82, 8200, 49, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Magneton - Supersonic - Level 4
  (82, 8200, 48, 12, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Magneton - Thunder Shock - Level 7
  (82, 8200, 84, 12, NULL, 1, 7, NULL, NULL, NULL, 7),
  -- Magneton - Sonic Boom - Level 11
  (82, 8200, 49, 12, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Magneton - Thunder Wave - Level 15
  (82, 8200, 86, 12, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Magneton - Magnet Bomb - Level 18
  (82, 8200, 443, 12, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Magneton - Spark - Level 21
  (82, 8200, 209, 12, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Magneton - Mirror Shot - Level 25
  (82, 8200, 429, 12, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Magneton - Metal Sound - Level 29
  (82, 8200, 319, 12, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Magneton - Electro Ball - Level 34
  (82, 8200, 486, 12, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Magneton - Flash Cannon - Level 39
  (82, 8200, 430, 12, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Magneton - Screech - Level 45
  (82, 8200, 103, 12, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Magneton - Discharge - Level 51
  (82, 8200, 435, 12, NULL, 1, 51, NULL, NULL, NULL, 17),
  -- Magneton - Lock-On - Level 56
  (82, 8200, 199, 12, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Magneton - Magnet Rise - Level 62
  (82, 8200, 393, 12, NULL, 1, 62, NULL, NULL, NULL, 19),
  -- Magneton - Gyro Ball - Level 67
  (82, 8200, 360, 12, NULL, 1, 67, NULL, NULL, NULL, 20),
  -- Magneton - Zap Cannon - Level 73
  (82, 8200, 192, 12, NULL, 1, 73, NULL, NULL, NULL, 21),
  -- Magneton - Toxic - TM06
  (82, 8200, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 22),
  -- Magneton - Hidden Power - TM10
  (82, 8200, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 23),
  -- Magneton - Sunny Day - TM11
  (82, 8200, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 24),
  -- Magneton - Hyper Beam - TM15
  (82, 8200, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 25),
  -- Magneton - Light Screen - TM16
  (82, 8200, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 26),
  -- Magneton - Protect - TM17
  (82, 8200, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 27),
  -- Magneton - Rain Dance - TM18
  (82, 8200, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 28),
  -- Magneton - Frustration - TM21
  (82, 8200, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 29),
  -- Magneton - Thunderbolt - TM24
  (82, 8200, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 30),
  -- Magneton - Thunder - TM25
  (82, 8200, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 31),
  -- Magneton - Return - TM27
  (82, 8200, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 32),
  -- Magneton - Double Team - TM32
  (82, 8200, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 33),
  -- Magneton - Reflect - TM33
  (82, 8200, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 34),
  -- Magneton - Facade - TM42
  (82, 8200, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 35),
  -- Magneton - Rest - TM44
  (82, 8200, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 36),
  -- Magneton - Round - TM48
  (82, 8200, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 37),
  -- Magneton - Charge Beam - TM57
  (82, 8200, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 38),
  -- Magneton - Explosion - TM64
  (82, 8200, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 39),
  -- Magneton - Giga Impact - TM68
  (82, 8200, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 40),
  -- Magneton - Flash - TM70
  (82, 8200, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 41),
  -- Magneton - Volt Switch - TM72
  (82, 8200, 521, 12, NULL, 2, NULL, NULL, 12002072, NULL, 42),
  -- Magneton - Thunder Wave - TM73
  (82, 8200, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 43),
  -- Magneton - Gyro Ball - TM74
  (82, 8200, 360, 12, NULL, 2, NULL, NULL, 12002074, NULL, 44),
  -- Magneton - Psych Up - TM77
  (82, 8200, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 45),
  -- Magneton - Swagger - TM87
  (82, 8200, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 46),
  -- Magneton - Substitute - TM90
  (82, 8200, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 47),
  -- Magneton - Flash Cannon - TM91
  (82, 8200, 430, 12, NULL, 2, NULL, NULL, 12002091, NULL, 48),
  -- Magneton - Wild Charge - TM93
  (82, 8200, 528, 12, NULL, 2, NULL, NULL, 12002093, NULL, 49),
  -- Magneton - Electroweb - Move Tutor
  (82, 8200, 527, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Magneton - Gravity - Move Tutor
  (82, 8200, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Magneton - Iron Defense - Move Tutor
  (82, 8200, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Magneton - Magic Coat - Move Tutor
  (82, 8200, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Magneton - Magnet Rise - Move Tutor
  (82, 8200, 393, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Magneton - Recycle - Move Tutor
  (82, 8200, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Magneton - Signal Beam - Move Tutor
  (82, 8200, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Magneton - Sleep Talk - Move Tutor
  (82, 8200, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Magneton - Snore - Move Tutor
  (82, 8200, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Farfetch'd - Poison Jab - Level 1
  (83, 8300, 398, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Farfetch'd - Peck - Level 1
  (83, 8300, 64, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Farfetch'd - Sand Attack - Level 1
  (83, 8300, 28, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Farfetch'd - Leer - Level 1
  (83, 8300, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Farfetch'd - Fury Cutter - Level 1
  (83, 8300, 210, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Farfetch'd - Fury Attack - Level 7
  (83, 8300, 31, 12, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Farfetch'd - Knock Off - Level 9
  (83, 8300, 282, 12, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Farfetch'd - Aerial Ace - Level 13
  (83, 8300, 332, 12, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Farfetch'd - Slash - Level 19
  (83, 8300, 163, 12, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Farfetch'd - Air Cutter - Level 21
  (83, 8300, 314, 12, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Farfetch'd - Swords Dance - Level 25
  (83, 8300, 14, 12, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Farfetch'd - Agility - Level 31
  (83, 8300, 97, 12, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Farfetch'd - Night Slash - Level 33
  (83, 8300, 400, 12, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Farfetch'd - Acrobatics - Level 37
  (83, 8300, 512, 12, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Farfetch'd - Feint - Level 43
  (83, 8300, 364, 12, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Farfetch'd - False Swipe - Level 45
  (83, 8300, 206, 12, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Farfetch'd - Air Slash - Level 49
  (83, 8300, 403, 12, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Farfetch'd - Brave Bird - Level 55
  (83, 8300, 413, 12, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Farfetch'd - Toxic - TM06
  (83, 8300, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Farfetch'd - Hidden Power - TM10
  (83, 8300, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Farfetch'd - Sunny Day - TM11
  (83, 8300, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 21),
  -- Farfetch'd - Protect - TM17
  (83, 8300, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 22),
  -- Farfetch'd - Frustration - TM21
  (83, 8300, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 23),
  -- Farfetch'd - Return - TM27
  (83, 8300, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 24),
  -- Farfetch'd - Double Team - TM32
  (83, 8300, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 25),
  -- Farfetch'd - Aerial Ace - TM40
  (83, 8300, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 26),
  -- Farfetch'd - Facade - TM42
  (83, 8300, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 27),
  -- Farfetch'd - Rest - TM44
  (83, 8300, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 28),
  -- Farfetch'd - Attract - TM45
  (83, 8300, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 29),
  -- Farfetch'd - Thief - TM46
  (83, 8300, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 30),
  -- Farfetch'd - Round - TM48
  (83, 8300, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 31),
  -- Farfetch'd - False Swipe - TM54
  (83, 8300, 206, 12, NULL, 2, NULL, NULL, 12002054, NULL, 32),
  -- Farfetch'd - Acrobatics - TM62
  (83, 8300, 512, 12, NULL, 2, NULL, NULL, 12002062, NULL, 33),
  -- Farfetch'd - Retaliate - TM67
  (83, 8300, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 34),
  -- Farfetch'd - Swords Dance - TM75
  (83, 8300, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 35),
  -- Farfetch'd - Psych Up - TM77
  (83, 8300, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 36),
  -- Farfetch'd - Work Up - TM83
  (83, 8300, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 37),
  -- Farfetch'd - Poison Jab - TM84
  (83, 8300, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 38),
  -- Farfetch'd - Swagger - TM87
  (83, 8300, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 39),
  -- Farfetch'd - Pluck - TM88
  (83, 8300, 365, 12, NULL, 2, NULL, NULL, 12002088, NULL, 40),
  -- Farfetch'd - U-turn - TM89
  (83, 8300, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 41),
  -- Farfetch'd - Substitute - TM90
  (83, 8300, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 42),
  -- Farfetch'd - Cut - HM01
  (83, 8300, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 43),
  -- Farfetch'd - Fly - HM02
  (83, 8300, 19, 12, NULL, 3, NULL, NULL, 12003002, NULL, 44),
  -- Farfetch'd - Covet - Egg Move
  (83, 8300, 343, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Farfetch'd - Curse - Egg Move
  (83, 8300, 174, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Farfetch'd - Feather Dance - Egg Move
  (83, 8300, 297, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Farfetch'd - Flail - Egg Move
  (83, 8300, 175, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Farfetch'd - Foresight - Egg Move
  (83, 8300, 193, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Farfetch'd - Gust - Egg Move
  (83, 8300, 16, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Farfetch'd - Leaf Blade - Egg Move
  (83, 8300, 348, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Farfetch'd - Mirror Move - Egg Move
  (83, 8300, 119, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Farfetch'd - Mud-Slap - Egg Move
  (83, 8300, 189, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Farfetch'd - Night Slash - Egg Move
  (83, 8300, 400, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Farfetch'd - Quick Attack - Egg Move
  (83, 8300, 98, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Farfetch'd - Revenge - Egg Move
  (83, 8300, 279, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Farfetch'd - Roost - Egg Move
  (83, 8300, 355, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Farfetch'd - Steel Wing - Egg Move
  (83, 8300, 211, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Farfetch'd - Trump Card - Egg Move
  (83, 8300, 376, 12, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Farfetch'd - Covet - Move Tutor
  (83, 8300, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Farfetch'd - Heat Wave - Move Tutor
  (83, 8300, 257, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Farfetch'd - Helping Hand - Move Tutor
  (83, 8300, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Farfetch'd - Iron Tail - Move Tutor
  (83, 8300, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Farfetch'd - Knock Off - Move Tutor
  (83, 8300, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Farfetch'd - Last Resort - Move Tutor
  (83, 8300, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Farfetch'd - Roost - Move Tutor
  (83, 8300, 355, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Farfetch'd - Sky Attack - Move Tutor
  (83, 8300, 143, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Farfetch'd - Sleep Talk - Move Tutor
  (83, 8300, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Farfetch'd - Snore - Move Tutor
  (83, 8300, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Farfetch'd - Tailwind - Move Tutor
  (83, 8300, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Farfetch'd - Uproar - Move Tutor
  (83, 8300, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Doduo - Peck - Level 1
  (84, 8400, 64, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Doduo - Growl - Level 1
  (84, 8400, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Doduo - Quick Attack - Level 5
  (84, 8400, 98, 12, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Doduo - Rage - Level 10
  (84, 8400, 99, 12, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Doduo - Fury Attack - Level 14
  (84, 8400, 31, 12, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Doduo - Pursuit - Level 19
  (84, 8400, 228, 12, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Doduo - Uproar - Level 23
  (84, 8400, 253, 12, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Doduo - Acupressure - Level 28
  (84, 8400, 367, 12, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Doduo - Double Hit - Level 32
  (84, 8400, 458, 12, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Doduo - Agility - Level 37
  (84, 8400, 97, 12, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Doduo - Drill Peck - Level 41
  (84, 8400, 65, 12, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Doduo - Endeavor - Level 46
  (84, 8400, 283, 12, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Doduo - Thrash - Level 50
  (84, 8400, 37, 12, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Doduo - Toxic - TM06
  (84, 8400, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 14),
  -- Doduo - Hidden Power - TM10
  (84, 8400, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 15),
  -- Doduo - Sunny Day - TM11
  (84, 8400, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 16),
  -- Doduo - Protect - TM17
  (84, 8400, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 17),
  -- Doduo - Frustration - TM21
  (84, 8400, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 18),
  -- Doduo - Return - TM27
  (84, 8400, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 19),
  -- Doduo - Double Team - TM32
  (84, 8400, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 20),
  -- Doduo - Aerial Ace - TM40
  (84, 8400, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 21),
  -- Doduo - Facade - TM42
  (84, 8400, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 22),
  -- Doduo - Rest - TM44
  (84, 8400, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 23),
  -- Doduo - Attract - TM45
  (84, 8400, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 24),
  -- Doduo - Thief - TM46
  (84, 8400, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 25),
  -- Doduo - Round - TM48
  (84, 8400, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 26),
  -- Doduo - Echoed Voice - TM49
  (84, 8400, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 27),
  -- Doduo - Work Up - TM83
  (84, 8400, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 28),
  -- Doduo - Swagger - TM87
  (84, 8400, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 29),
  -- Doduo - Pluck - TM88
  (84, 8400, 365, 12, NULL, 2, NULL, NULL, 12002088, NULL, 30),
  -- Doduo - Substitute - TM90
  (84, 8400, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 31),
  -- Doduo - Fly - HM02
  (84, 8400, 19, 12, NULL, 3, NULL, NULL, 12003002, NULL, 32),
  -- Doduo - Assurance - Egg Move
  (84, 8400, 372, 12, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Doduo - Brave Bird - Egg Move
  (84, 8400, 413, 12, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Doduo - Endeavor - Egg Move
  (84, 8400, 283, 12, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Doduo - Feint Attack - Egg Move
  (84, 8400, 185, 12, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Doduo - Flail - Egg Move
  (84, 8400, 175, 12, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Doduo - Haze - Egg Move
  (84, 8400, 114, 12, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Doduo - Mirror Move - Egg Move
  (84, 8400, 119, 12, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Doduo - Natural Gift - Egg Move
  (84, 8400, 363, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Doduo - Quick Attack - Egg Move
  (84, 8400, 98, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Doduo - Supersonic - Egg Move
  (84, 8400, 48, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Doduo - Endeavor - Move Tutor
  (84, 8400, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Doduo - Knock Off - Move Tutor
  (84, 8400, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Doduo - Roost - Move Tutor
  (84, 8400, 355, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Doduo - Sleep Talk - Move Tutor
  (84, 8400, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Doduo - Snore - Move Tutor
  (84, 8400, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Doduo - Uproar - Move Tutor
  (84, 8400, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Dodrio - Pluck - Level 1
  (85, 8500, 365, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dodrio - Peck - Level 1
  (85, 8500, 64, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dodrio - Growl - Level 1
  (85, 8500, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dodrio - Quick Attack - Level 1
  (85, 8500, 98, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dodrio - Rage - Level 1
  (85, 8500, 99, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dodrio - Quick Attack - Level 5
  (85, 8500, 98, 12, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Dodrio - Rage - Level 10
  (85, 8500, 99, 12, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Dodrio - Fury Attack - Level 14
  (85, 8500, 31, 12, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Dodrio - Pursuit - Level 19
  (85, 8500, 228, 12, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Dodrio - Uproar - Level 23
  (85, 8500, 253, 12, NULL, 1, 23, NULL, NULL, NULL, 10),
  -- Dodrio - Acupressure - Level 28
  (85, 8500, 367, 12, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Dodrio - Tri Attack - Level 34
  (85, 8500, 161, 12, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Dodrio - Agility - Level 41
  (85, 8500, 97, 12, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Dodrio - Drill Peck - Level 47
  (85, 8500, 65, 12, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Dodrio - Endeavor - Level 54
  (85, 8500, 283, 12, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Dodrio - Thrash - Level 60
  (85, 8500, 37, 12, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Dodrio - Toxic - TM06
  (85, 8500, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Dodrio - Hidden Power - TM10
  (85, 8500, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 18),
  -- Dodrio - Sunny Day - TM11
  (85, 8500, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 19),
  -- Dodrio - Taunt - TM12
  (85, 8500, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 20),
  -- Dodrio - Hyper Beam - TM15
  (85, 8500, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 21),
  -- Dodrio - Protect - TM17
  (85, 8500, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 22),
  -- Dodrio - Frustration - TM21
  (85, 8500, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 23),
  -- Dodrio - Return - TM27
  (85, 8500, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 24),
  -- Dodrio - Double Team - TM32
  (85, 8500, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 25),
  -- Dodrio - Aerial Ace - TM40
  (85, 8500, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 26),
  -- Dodrio - Torment - TM41
  (85, 8500, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 27),
  -- Dodrio - Facade - TM42
  (85, 8500, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 28),
  -- Dodrio - Rest - TM44
  (85, 8500, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 29),
  -- Dodrio - Attract - TM45
  (85, 8500, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 30),
  -- Dodrio - Thief - TM46
  (85, 8500, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 31),
  -- Dodrio - Round - TM48
  (85, 8500, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 32),
  -- Dodrio - Echoed Voice - TM49
  (85, 8500, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 33),
  -- Dodrio - Payback - TM66
  (85, 8500, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 34),
  -- Dodrio - Giga Impact - TM68
  (85, 8500, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 35),
  -- Dodrio - Work Up - TM83
  (85, 8500, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 36),
  -- Dodrio - Swagger - TM87
  (85, 8500, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 37),
  -- Dodrio - Pluck - TM88
  (85, 8500, 365, 12, NULL, 2, NULL, NULL, 12002088, NULL, 38),
  -- Dodrio - Substitute - TM90
  (85, 8500, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 39),
  -- Dodrio - Fly - HM02
  (85, 8500, 19, 12, NULL, 3, NULL, NULL, 12003002, NULL, 40),
  -- Dodrio - Endeavor - Move Tutor
  (85, 8500, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 41),
  -- Dodrio - Knock Off - Move Tutor
  (85, 8500, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 42),
  -- Dodrio - Roost - Move Tutor
  (85, 8500, 355, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Dodrio - Sky Attack - Move Tutor
  (85, 8500, 143, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Dodrio - Sleep Talk - Move Tutor
  (85, 8500, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Dodrio - Snore - Move Tutor
  (85, 8500, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Dodrio - Uproar - Move Tutor
  (85, 8500, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Seel - Headbutt - Level 1
  (86, 8600, 29, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seel - Growl - Level 3
  (86, 8600, 45, 12, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Seel - Water Sport - Level 7
  (86, 8600, 346, 12, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Seel - Icy Wind - Level 11
  (86, 8600, 196, 12, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Seel - Encore - Level 13
  (86, 8600, 227, 12, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Seel - Ice Shard - Level 17
  (86, 8600, 420, 12, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Seel - Rest - Level 21
  (86, 8600, 156, 12, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Seel - Aqua Ring - Level 23
  (86, 8600, 392, 12, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Seel - Aurora Beam - Level 27
  (86, 8600, 62, 12, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Seel - Aqua Jet - Level 31
  (86, 8600, 453, 12, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Seel - Brine - Level 33
  (86, 8600, 362, 12, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Seel - Take Down - Level 37
  (86, 8600, 36, 12, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Seel - Dive - Level 41
  (86, 8600, 291, 12, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Seel - Aqua Tail - Level 43
  (86, 8600, 401, 12, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Seel - Ice Beam - Level 47
  (86, 8600, 58, 12, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Seel - Safeguard - Level 51
  (86, 8600, 219, 12, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Seel - Hail - Level 53
  (86, 8600, 258, 12, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Seel - Toxic - TM06
  (86, 8600, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 18),
  -- Seel - Hail - TM07
  (86, 8600, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 19),
  -- Seel - Hidden Power - TM10
  (86, 8600, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Seel - Ice Beam - TM13
  (86, 8600, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 21),
  -- Seel - Blizzard - TM14
  (86, 8600, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 22),
  -- Seel - Protect - TM17
  (86, 8600, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Seel - Rain Dance - TM18
  (86, 8600, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 24),
  -- Seel - Safeguard - TM20
  (86, 8600, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 25),
  -- Seel - Frustration - TM21
  (86, 8600, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Seel - Return - TM27
  (86, 8600, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 27),
  -- Seel - Double Team - TM32
  (86, 8600, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 28),
  -- Seel - Facade - TM42
  (86, 8600, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 29),
  -- Seel - Rest - TM44
  (86, 8600, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 30),
  -- Seel - Attract - TM45
  (86, 8600, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 31),
  -- Seel - Thief - TM46
  (86, 8600, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 32),
  -- Seel - Round - TM48
  (86, 8600, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 33),
  -- Seel - Echoed Voice - TM49
  (86, 8600, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 34),
  -- Seel - Fling - TM56
  (86, 8600, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 35),
  -- Seel - Swagger - TM87
  (86, 8600, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 36),
  -- Seel - Substitute - TM90
  (86, 8600, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 37),
  -- Seel - Surf - HM03
  (86, 8600, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 38),
  -- Seel - Waterfall - HM05
  (86, 8600, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 39),
  -- Seel - Dive - HM06
  (86, 8600, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 40),
  -- Seel - Disable - Egg Move
  (86, 8600, 50, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Seel - Encore - Egg Move
  (86, 8600, 227, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Seel - Fake Out - Egg Move
  (86, 8600, 252, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Seel - Horn Drill - Egg Move
  (86, 8600, 32, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Seel - Icicle Spear - Egg Move
  (86, 8600, 333, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Seel - Iron Tail - Egg Move
  (86, 8600, 231, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Seel - Lick - Egg Move
  (86, 8600, 122, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Seel - Perish Song - Egg Move
  (86, 8600, 195, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Seel - Signal Beam - Egg Move
  (86, 8600, 324, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Seel - Slam - Egg Move
  (86, 8600, 21, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Seel - Sleep Talk - Egg Move
  (86, 8600, 214, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Seel - Spit Up - Egg Move
  (86, 8600, 255, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Seel - Stockpile - Egg Move
  (86, 8600, 254, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Seel - Swallow - Egg Move
  (86, 8600, 256, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Seel - Water Pulse - Egg Move
  (86, 8600, 352, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Seel - Aqua Tail - Move Tutor
  (86, 8600, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Seel - Drill Run - Move Tutor
  (86, 8600, 529, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Seel - Icy Wind - Move Tutor
  (86, 8600, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Seel - Iron Tail - Move Tutor
  (86, 8600, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Seel - Signal Beam - Move Tutor
  (86, 8600, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Seel - Sleep Talk - Move Tutor
  (86, 8600, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Seel - Snore - Move Tutor
  (86, 8600, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Dewgong - Headbutt - Level 1
  (87, 8700, 29, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dewgong - Growl - Level 1
  (87, 8700, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dewgong - Signal Beam - Level 1
  (87, 8700, 324, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dewgong - Icy Wind - Level 1
  (87, 8700, 196, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dewgong - Growl - Level 3
  (87, 8700, 45, 12, NULL, 1, 3, NULL, NULL, NULL, 5),
  -- Dewgong - Signal Beam - Level 7
  (87, 8700, 324, 12, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Dewgong - Icy Wind - Level 11
  (87, 8700, 196, 12, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Dewgong - Encore - Level 13
  (87, 8700, 227, 12, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Dewgong - Ice Shard - Level 17
  (87, 8700, 420, 12, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Dewgong - Rest - Level 21
  (87, 8700, 156, 12, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Dewgong - Aqua Ring - Level 23
  (87, 8700, 392, 12, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Dewgong - Aurora Beam - Level 27
  (87, 8700, 62, 12, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Dewgong - Aqua Jet - Level 31
  (87, 8700, 453, 12, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Dewgong - Brine - Level 33
  (87, 8700, 362, 12, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Dewgong - Sheer Cold - Level 34
  (87, 8700, 329, 12, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Dewgong - Take Down - Level 39
  (87, 8700, 36, 12, NULL, 1, 39, NULL, NULL, NULL, 16),
  -- Dewgong - Dive - Level 45
  (87, 8700, 291, 12, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Dewgong - Aqua Tail - Level 49
  (87, 8700, 401, 12, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Dewgong - Ice Beam - Level 55
  (87, 8700, 58, 12, NULL, 1, 55, NULL, NULL, NULL, 19),
  -- Dewgong - Safeguard - Level 61
  (87, 8700, 219, 12, NULL, 1, 61, NULL, NULL, NULL, 20),
  -- Dewgong - Hail - Level 65
  (87, 8700, 258, 12, NULL, 1, 65, NULL, NULL, NULL, 21),
  -- Dewgong - Toxic - TM06
  (87, 8700, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 22),
  -- Dewgong - Hail - TM07
  (87, 8700, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 23),
  -- Dewgong - Hidden Power - TM10
  (87, 8700, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 24),
  -- Dewgong - Ice Beam - TM13
  (87, 8700, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 25),
  -- Dewgong - Blizzard - TM14
  (87, 8700, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 26),
  -- Dewgong - Hyper Beam - TM15
  (87, 8700, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 27),
  -- Dewgong - Protect - TM17
  (87, 8700, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 28),
  -- Dewgong - Rain Dance - TM18
  (87, 8700, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 29),
  -- Dewgong - Safeguard - TM20
  (87, 8700, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 30),
  -- Dewgong - Frustration - TM21
  (87, 8700, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 31),
  -- Dewgong - Return - TM27
  (87, 8700, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 32),
  -- Dewgong - Double Team - TM32
  (87, 8700, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 33),
  -- Dewgong - Facade - TM42
  (87, 8700, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 34),
  -- Dewgong - Rest - TM44
  (87, 8700, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 35),
  -- Dewgong - Attract - TM45
  (87, 8700, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 36),
  -- Dewgong - Thief - TM46
  (87, 8700, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 37),
  -- Dewgong - Round - TM48
  (87, 8700, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 38),
  -- Dewgong - Echoed Voice - TM49
  (87, 8700, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 39),
  -- Dewgong - Fling - TM56
  (87, 8700, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 40),
  -- Dewgong - Giga Impact - TM68
  (87, 8700, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 41),
  -- Dewgong - Frost Breath - TM79
  (87, 8700, 524, 12, NULL, 2, NULL, NULL, 12002079, NULL, 42),
  -- Dewgong - Swagger - TM87
  (87, 8700, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 43),
  -- Dewgong - Substitute - TM90
  (87, 8700, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 44),
  -- Dewgong - Surf - HM03
  (87, 8700, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 45),
  -- Dewgong - Waterfall - HM05
  (87, 8700, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 46),
  -- Dewgong - Dive - HM06
  (87, 8700, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 47),
  -- Dewgong - Aqua Tail - Move Tutor
  (87, 8700, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Dewgong - Drill Run - Move Tutor
  (87, 8700, 529, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Dewgong - Icy Wind - Move Tutor
  (87, 8700, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Dewgong - Iron Tail - Move Tutor
  (87, 8700, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Dewgong - Signal Beam - Move Tutor
  (87, 8700, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Dewgong - Sleep Talk - Move Tutor
  (87, 8700, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Dewgong - Snore - Move Tutor
  (87, 8700, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Grimer - Poison Gas - Level 1
  (88, 8800, 139, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grimer - Pound - Level 1
  (88, 8800, 1, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grimer - Harden - Level 4
  (88, 8800, 106, 12, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Grimer - Mud-Slap - Level 7
  (88, 8800, 189, 12, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Grimer - Disable - Level 12
  (88, 8800, 50, 12, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Grimer - Sludge - Level 15
  (88, 8800, 124, 12, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Grimer - Minimize - Level 18
  (88, 8800, 107, 12, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Grimer - Mud Bomb - Level 21
  (88, 8800, 426, 12, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Grimer - Sludge Bomb - Level 26
  (88, 8800, 188, 12, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Grimer - Fling - Level 29
  (88, 8800, 374, 12, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Grimer - Screech - Level 32
  (88, 8800, 103, 12, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Grimer - Sludge Wave - Level 37
  (88, 8800, 482, 12, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Grimer - Acid Armor - Level 40
  (88, 8800, 151, 12, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Grimer - Gunk Shot - Level 43
  (88, 8800, 441, 12, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Grimer - Memento - Level 48
  (88, 8800, 262, 12, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Grimer - Toxic - TM06
  (88, 8800, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Grimer - Venoshock - TM09
  (88, 8800, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 17),
  -- Grimer - Hidden Power - TM10
  (88, 8800, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 18),
  -- Grimer - Sunny Day - TM11
  (88, 8800, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 19),
  -- Grimer - Taunt - TM12
  (88, 8800, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 20),
  -- Grimer - Protect - TM17
  (88, 8800, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 21),
  -- Grimer - Rain Dance - TM18
  (88, 8800, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 22),
  -- Grimer - Frustration - TM21
  (88, 8800, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 23),
  -- Grimer - Thunderbolt - TM24
  (88, 8800, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 24),
  -- Grimer - Thunder - TM25
  (88, 8800, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 25),
  -- Grimer - Return - TM27
  (88, 8800, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 26),
  -- Grimer - Dig - TM28
  (88, 8800, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 27),
  -- Grimer - Shadow Ball - TM30
  (88, 8800, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 28),
  -- Grimer - Double Team - TM32
  (88, 8800, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 29),
  -- Grimer - Sludge Wave - TM34
  (88, 8800, 482, 12, NULL, 2, NULL, NULL, 12002034, NULL, 30),
  -- Grimer - Flamethrower - TM35
  (88, 8800, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 31),
  -- Grimer - Sludge Bomb - TM36
  (88, 8800, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 32),
  -- Grimer - Fire Blast - TM38
  (88, 8800, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 33),
  -- Grimer - Rock Tomb - TM39
  (88, 8800, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 34),
  -- Grimer - Torment - TM41
  (88, 8800, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 35),
  -- Grimer - Facade - TM42
  (88, 8800, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 36),
  -- Grimer - Rest - TM44
  (88, 8800, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 37),
  -- Grimer - Attract - TM45
  (88, 8800, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 38),
  -- Grimer - Thief - TM46
  (88, 8800, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 39),
  -- Grimer - Round - TM48
  (88, 8800, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 40),
  -- Grimer - Fling - TM56
  (88, 8800, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 41),
  -- Grimer - Incinerate - TM59
  (88, 8800, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 42),
  -- Grimer - Explosion - TM64
  (88, 8800, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 43),
  -- Grimer - Payback - TM66
  (88, 8800, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 44),
  -- Grimer - Rock Slide - TM80
  (88, 8800, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 45),
  -- Grimer - Poison Jab - TM84
  (88, 8800, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 46),
  -- Grimer - Swagger - TM87
  (88, 8800, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 47),
  -- Grimer - Substitute - TM90
  (88, 8800, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 48),
  -- Grimer - Strength - HM04
  (88, 8800, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 49),
  -- Grimer - Acid Spray - Egg Move
  (88, 8800, 491, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Grimer - Curse - Egg Move
  (88, 8800, 174, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Grimer - Haze - Egg Move
  (88, 8800, 114, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Grimer - Imprison - Egg Move
  (88, 8800, 286, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Grimer - Lick - Egg Move
  (88, 8800, 122, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Grimer - Mean Look - Egg Move
  (88, 8800, 212, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Grimer - Scary Face - Egg Move
  (88, 8800, 184, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Grimer - Shadow Punch - Egg Move
  (88, 8800, 325, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Grimer - Shadow Sneak - Egg Move
  (88, 8800, 425, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Grimer - Spit Up - Egg Move
  (88, 8800, 255, 12, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Grimer - Stockpile - Egg Move
  (88, 8800, 254, 12, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Grimer - Swallow - Egg Move
  (88, 8800, 256, 12, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Grimer - Fire Punch - Move Tutor
  (88, 8800, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Grimer - Giga Drain - Move Tutor
  (88, 8800, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Grimer - Gunk Shot - Move Tutor
  (88, 8800, 441, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Grimer - Ice Punch - Move Tutor
  (88, 8800, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Grimer - Pain Split - Move Tutor
  (88, 8800, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Grimer - Sleep Talk - Move Tutor
  (88, 8800, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Grimer - Snore - Move Tutor
  (88, 8800, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Grimer - Thunder Punch - Move Tutor
  (88, 8800, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Muk - Poison Gas - Level 1
  (89, 8900, 139, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Muk - Pound - Level 1
  (89, 8900, 1, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Muk - Harden - Level 1
  (89, 8900, 106, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Muk - Mud-Slap - Level 1
  (89, 8900, 189, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Muk - Harden - Level 4
  (89, 8900, 106, 12, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Muk - Mud-Slap - Level 7
  (89, 8900, 189, 12, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Muk - Disable - Level 12
  (89, 8900, 50, 12, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Muk - Sludge - Level 15
  (89, 8900, 124, 12, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Muk - Minimize - Level 18
  (89, 8900, 107, 12, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Muk - Mud Bomb - Level 21
  (89, 8900, 426, 12, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Muk - Sludge Bomb - Level 26
  (89, 8900, 188, 12, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Muk - Fling - Level 29
  (89, 8900, 374, 12, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Muk - Screech - Level 32
  (89, 8900, 103, 12, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Muk - Sludge Wave - Level 37
  (89, 8900, 482, 12, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Muk - Acid Armor - Level 43
  (89, 8900, 151, 12, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Muk - Gunk Shot - Level 49
  (89, 8900, 441, 12, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Muk - Memento - Level 57
  (89, 8900, 262, 12, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Muk - Toxic - TM06
  (89, 8900, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 18),
  -- Muk - Venoshock - TM09
  (89, 8900, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 19),
  -- Muk - Hidden Power - TM10
  (89, 8900, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Muk - Sunny Day - TM11
  (89, 8900, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 21),
  -- Muk - Taunt - TM12
  (89, 8900, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 22),
  -- Muk - Hyper Beam - TM15
  (89, 8900, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 23),
  -- Muk - Protect - TM17
  (89, 8900, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 24),
  -- Muk - Rain Dance - TM18
  (89, 8900, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 25),
  -- Muk - Frustration - TM21
  (89, 8900, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Muk - Thunderbolt - TM24
  (89, 8900, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 27),
  -- Muk - Thunder - TM25
  (89, 8900, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 28),
  -- Muk - Return - TM27
  (89, 8900, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 29),
  -- Muk - Dig - TM28
  (89, 8900, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 30),
  -- Muk - Shadow Ball - TM30
  (89, 8900, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 31),
  -- Muk - Brick Break - TM31
  (89, 8900, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 32),
  -- Muk - Double Team - TM32
  (89, 8900, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 33),
  -- Muk - Sludge Wave - TM34
  (89, 8900, 482, 12, NULL, 2, NULL, NULL, 12002034, NULL, 34),
  -- Muk - Flamethrower - TM35
  (89, 8900, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 35),
  -- Muk - Sludge Bomb - TM36
  (89, 8900, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 36),
  -- Muk - Fire Blast - TM38
  (89, 8900, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 37),
  -- Muk - Rock Tomb - TM39
  (89, 8900, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 38),
  -- Muk - Torment - TM41
  (89, 8900, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 39),
  -- Muk - Facade - TM42
  (89, 8900, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 40),
  -- Muk - Rest - TM44
  (89, 8900, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 41),
  -- Muk - Attract - TM45
  (89, 8900, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 42),
  -- Muk - Thief - TM46
  (89, 8900, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 43),
  -- Muk - Round - TM48
  (89, 8900, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 44),
  -- Muk - Focus Blast - TM52
  (89, 8900, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 45),
  -- Muk - Fling - TM56
  (89, 8900, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 46),
  -- Muk - Incinerate - TM59
  (89, 8900, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 47),
  -- Muk - Explosion - TM64
  (89, 8900, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 48),
  -- Muk - Payback - TM66
  (89, 8900, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 49),
  -- Muk - Giga Impact - TM68
  (89, 8900, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 50),
  -- Muk - Rock Slide - TM80
  (89, 8900, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 51),
  -- Muk - Poison Jab - TM84
  (89, 8900, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 52),
  -- Muk - Swagger - TM87
  (89, 8900, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 53),
  -- Muk - Substitute - TM90
  (89, 8900, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 54),
  -- Muk - Rock Smash - TM94
  (89, 8900, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 55),
  -- Muk - Strength - HM04
  (89, 8900, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 56),
  -- Muk - Block - Move Tutor
  (89, 8900, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Muk - Dark Pulse - Move Tutor
  (89, 8900, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Muk - Fire Punch - Move Tutor
  (89, 8900, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Muk - Giga Drain - Move Tutor
  (89, 8900, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Muk - Gunk Shot - Move Tutor
  (89, 8900, 441, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Muk - Ice Punch - Move Tutor
  (89, 8900, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Muk - Pain Split - Move Tutor
  (89, 8900, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Muk - Sleep Talk - Move Tutor
  (89, 8900, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Muk - Snore - Move Tutor
  (89, 8900, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Muk - Thunder Punch - Move Tutor
  (89, 8900, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Shellder - Tackle - Level 1
  (90, 9000, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shellder - Withdraw - Level 4
  (90, 9000, 110, 12, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Shellder - Supersonic - Level 8
  (90, 9000, 48, 12, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Shellder - Icicle Spear - Level 13
  (90, 9000, 333, 12, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Shellder - Protect - Level 16
  (90, 9000, 182, 12, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Shellder - Leer - Level 20
  (90, 9000, 43, 12, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Shellder - Clamp - Level 25
  (90, 9000, 128, 12, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Shellder - Ice Shard - Level 28
  (90, 9000, 420, 12, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Shellder - Razor Shell - Level 32
  (90, 9000, 534, 12, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Shellder - Aurora Beam - Level 37
  (90, 9000, 62, 12, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Shellder - Whirlpool - Level 40
  (90, 9000, 250, 12, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Shellder - Brine - Level 44
  (90, 9000, 362, 12, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Shellder - Iron Defense - Level 49
  (90, 9000, 334, 12, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Shellder - Ice Beam - Level 52
  (90, 9000, 58, 12, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Shellder - Shell Smash - Level 56
  (90, 9000, 504, 12, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Shellder - Hydro Pump - Level 61
  (90, 9000, 56, 12, NULL, 1, 61, NULL, NULL, NULL, 16),
  -- Shellder - Toxic - TM06
  (90, 9000, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Shellder - Hail - TM07
  (90, 9000, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 18),
  -- Shellder - Hidden Power - TM10
  (90, 9000, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 19),
  -- Shellder - Ice Beam - TM13
  (90, 9000, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 20),
  -- Shellder - Blizzard - TM14
  (90, 9000, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 21),
  -- Shellder - Protect - TM17
  (90, 9000, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 22),
  -- Shellder - Rain Dance - TM18
  (90, 9000, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 23),
  -- Shellder - Frustration - TM21
  (90, 9000, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 24),
  -- Shellder - Return - TM27
  (90, 9000, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 25),
  -- Shellder - Double Team - TM32
  (90, 9000, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 26),
  -- Shellder - Facade - TM42
  (90, 9000, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 27),
  -- Shellder - Rest - TM44
  (90, 9000, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 28),
  -- Shellder - Attract - TM45
  (90, 9000, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 29),
  -- Shellder - Round - TM48
  (90, 9000, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 30),
  -- Shellder - Explosion - TM64
  (90, 9000, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 31),
  -- Shellder - Payback - TM66
  (90, 9000, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 32),
  -- Shellder - Swagger - TM87
  (90, 9000, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 33),
  -- Shellder - Substitute - TM90
  (90, 9000, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 34),
  -- Shellder - Surf - HM03
  (90, 9000, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 35),
  -- Shellder - Dive - HM06
  (90, 9000, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 36),
  -- Shellder - Aqua Ring - Egg Move
  (90, 9000, 392, 12, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Shellder - Avalanche - Egg Move
  (90, 9000, 419, 12, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Shellder - Barrier - Egg Move
  (90, 9000, 112, 12, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Shellder - Bubble Beam - Egg Move
  (90, 9000, 61, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Shellder - Icicle Spear - Egg Move
  (90, 9000, 333, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Shellder - Mud Shot - Egg Move
  (90, 9000, 341, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Shellder - Rapid Spin - Egg Move
  (90, 9000, 229, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Shellder - Rock Blast - Egg Move
  (90, 9000, 350, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Shellder - Screech - Egg Move
  (90, 9000, 103, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Shellder - Take Down - Egg Move
  (90, 9000, 36, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Shellder - Twineedle - Egg Move
  (90, 9000, 41, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Shellder - Water Pulse - Egg Move
  (90, 9000, 352, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Shellder - Icy Wind - Move Tutor
  (90, 9000, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Shellder - Iron Defense - Move Tutor
  (90, 9000, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Shellder - Sleep Talk - Move Tutor
  (90, 9000, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Shellder - Snore - Move Tutor
  (90, 9000, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Cloyster - Toxic Spikes - Level 1
  (91, 9100, 390, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cloyster - Withdraw - Level 1
  (91, 9100, 110, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cloyster - Supersonic - Level 1
  (91, 9100, 48, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cloyster - Protect - Level 1
  (91, 9100, 182, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cloyster - Aurora Beam - Level 1
  (91, 9100, 62, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Cloyster - Spike Cannon - Level 13
  (91, 9100, 131, 12, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Cloyster - Spikes - Level 28
  (91, 9100, 191, 12, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Cloyster - Icicle Crash - Level 52
  (91, 9100, 556, 12, NULL, 1, 52, NULL, NULL, NULL, 8),
  -- Cloyster - Toxic - TM06
  (91, 9100, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 9),
  -- Cloyster - Hail - TM07
  (91, 9100, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 10),
  -- Cloyster - Hidden Power - TM10
  (91, 9100, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 11),
  -- Cloyster - Ice Beam - TM13
  (91, 9100, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 12),
  -- Cloyster - Blizzard - TM14
  (91, 9100, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 13),
  -- Cloyster - Hyper Beam - TM15
  (91, 9100, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 14),
  -- Cloyster - Protect - TM17
  (91, 9100, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 15),
  -- Cloyster - Rain Dance - TM18
  (91, 9100, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 16),
  -- Cloyster - Frustration - TM21
  (91, 9100, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 17),
  -- Cloyster - Return - TM27
  (91, 9100, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 18),
  -- Cloyster - Double Team - TM32
  (91, 9100, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 19),
  -- Cloyster - Torment - TM41
  (91, 9100, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 20),
  -- Cloyster - Facade - TM42
  (91, 9100, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 21),
  -- Cloyster - Rest - TM44
  (91, 9100, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 22),
  -- Cloyster - Attract - TM45
  (91, 9100, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 23),
  -- Cloyster - Round - TM48
  (91, 9100, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 24),
  -- Cloyster - Explosion - TM64
  (91, 9100, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 25),
  -- Cloyster - Payback - TM66
  (91, 9100, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 26),
  -- Cloyster - Giga Impact - TM68
  (91, 9100, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 27),
  -- Cloyster - Frost Breath - TM79
  (91, 9100, 524, 12, NULL, 2, NULL, NULL, 12002079, NULL, 28),
  -- Cloyster - Poison Jab - TM84
  (91, 9100, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 29),
  -- Cloyster - Swagger - TM87
  (91, 9100, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 30),
  -- Cloyster - Substitute - TM90
  (91, 9100, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 31),
  -- Cloyster - Surf - HM03
  (91, 9100, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 32),
  -- Cloyster - Dive - HM06
  (91, 9100, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 33),
  -- Cloyster - Icy Wind - Move Tutor
  (91, 9100, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 34),
  -- Cloyster - Iron Defense - Move Tutor
  (91, 9100, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 35),
  -- Cloyster - Signal Beam - Move Tutor
  (91, 9100, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 36),
  -- Cloyster - Sleep Talk - Move Tutor
  (91, 9100, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 37),
  -- Cloyster - Snore - Move Tutor
  (91, 9100, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 38),
  -- Gastly - Hypnosis - Level 1
  (92, 9200, 95, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gastly - Lick - Level 1
  (92, 9200, 122, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gastly - Spite - Level 5
  (92, 9200, 180, 12, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Gastly - Mean Look - Level 8
  (92, 9200, 212, 12, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Gastly - Curse - Level 12
  (92, 9200, 174, 12, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Gastly - Night Shade - Level 15
  (92, 9200, 101, 12, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Gastly - Confuse Ray - Level 19
  (92, 9200, 109, 12, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Gastly - Sucker Punch - Level 22
  (92, 9200, 389, 12, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Gastly - Payback - Level 26
  (92, 9200, 371, 12, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Gastly - Shadow Ball - Level 29
  (92, 9200, 247, 12, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Gastly - Dream Eater - Level 33
  (92, 9200, 138, 12, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Gastly - Dark Pulse - Level 36
  (92, 9200, 399, 12, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Gastly - Destiny Bond - Level 40
  (92, 9200, 194, 12, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Gastly - Hex - Level 43
  (92, 9200, 506, 12, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Gastly - Nightmare - Level 47
  (92, 9200, 171, 12, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Gastly - Toxic - TM06
  (92, 9200, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Gastly - Venoshock - TM09
  (92, 9200, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 17),
  -- Gastly - Hidden Power - TM10
  (92, 9200, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 18),
  -- Gastly - Sunny Day - TM11
  (92, 9200, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 19),
  -- Gastly - Taunt - TM12
  (92, 9200, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 20),
  -- Gastly - Protect - TM17
  (92, 9200, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 21),
  -- Gastly - Rain Dance - TM18
  (92, 9200, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 22),
  -- Gastly - Telekinesis - TM19
  (92, 9200, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 23),
  -- Gastly - Frustration - TM21
  (92, 9200, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 24),
  -- Gastly - Thunderbolt - TM24
  (92, 9200, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 25),
  -- Gastly - Return - TM27
  (92, 9200, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 26),
  -- Gastly - Psychic - TM29
  (92, 9200, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 27),
  -- Gastly - Shadow Ball - TM30
  (92, 9200, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 28),
  -- Gastly - Double Team - TM32
  (92, 9200, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 29),
  -- Gastly - Sludge Bomb - TM36
  (92, 9200, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 30),
  -- Gastly - Torment - TM41
  (92, 9200, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 31),
  -- Gastly - Facade - TM42
  (92, 9200, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 32),
  -- Gastly - Rest - TM44
  (92, 9200, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 33),
  -- Gastly - Attract - TM45
  (92, 9200, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 34),
  -- Gastly - Thief - TM46
  (92, 9200, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 35),
  -- Gastly - Round - TM48
  (92, 9200, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 36),
  -- Gastly - Energy Ball - TM53
  (92, 9200, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 37),
  -- Gastly - Will-O-Wisp - TM61
  (92, 9200, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 38),
  -- Gastly - Embargo - TM63
  (92, 9200, 373, 12, NULL, 2, NULL, NULL, 12002063, NULL, 39),
  -- Gastly - Explosion - TM64
  (92, 9200, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 40),
  -- Gastly - Payback - TM66
  (92, 9200, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 41),
  -- Gastly - Psych Up - TM77
  (92, 9200, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 42),
  -- Gastly - Dream Eater - TM85
  (92, 9200, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 43),
  -- Gastly - Swagger - TM87
  (92, 9200, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 44),
  -- Gastly - Substitute - TM90
  (92, 9200, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 45),
  -- Gastly - Trick Room - TM92
  (92, 9200, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 46),
  -- Gastly - Astonish - Egg Move
  (92, 9200, 310, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Gastly - Clear Smog - Egg Move
  (92, 9200, 499, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Gastly - Disable - Egg Move
  (92, 9200, 50, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Gastly - Fire Punch - Egg Move
  (92, 9200, 7, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Gastly - Grudge - Egg Move
  (92, 9200, 288, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Gastly - Haze - Egg Move
  (92, 9200, 114, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Gastly - Ice Punch - Egg Move
  (92, 9200, 8, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Gastly - Perish Song - Egg Move
  (92, 9200, 195, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Gastly - Psywave - Egg Move
  (92, 9200, 149, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Gastly - Scary Face - Egg Move
  (92, 9200, 184, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Gastly - Smog - Egg Move
  (92, 9200, 123, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Gastly - Thunder Punch - Egg Move
  (92, 9200, 9, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Gastly - Dark Pulse - Move Tutor
  (92, 9200, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Gastly - Fire Punch - Move Tutor
  (92, 9200, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Gastly - Foul Play - Move Tutor
  (92, 9200, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Gastly - Giga Drain - Move Tutor
  (92, 9200, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Gastly - Ice Punch - Move Tutor
  (92, 9200, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Gastly - Icy Wind - Move Tutor
  (92, 9200, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Gastly - Knock Off - Move Tutor
  (92, 9200, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Gastly - Pain Split - Move Tutor
  (92, 9200, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Gastly - Skill Swap - Move Tutor
  (92, 9200, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Gastly - Sleep Talk - Move Tutor
  (92, 9200, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Gastly - Snatch - Move Tutor
  (92, 9200, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Gastly - Snore - Move Tutor
  (92, 9200, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Gastly - Spite - Move Tutor
  (92, 9200, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Gastly - Thunder Punch - Move Tutor
  (92, 9200, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Gastly - Trick - Move Tutor
  (92, 9200, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Gastly - Uproar - Move Tutor
  (92, 9200, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Gastly - Wonder Room - Move Tutor
  (92, 9200, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Haunter - Hypnosis - Level 1
  (93, 9300, 95, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Haunter - Lick - Level 1
  (93, 9300, 122, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Haunter - Spite - Level 1
  (93, 9300, 180, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Haunter - Spite - Level 5
  (93, 9300, 180, 12, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Haunter - Mean Look - Level 8
  (93, 9300, 212, 12, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Haunter - Curse - Level 12
  (93, 9300, 174, 12, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Haunter - Night Shade - Level 15
  (93, 9300, 101, 12, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Haunter - Confuse Ray - Level 19
  (93, 9300, 109, 12, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Haunter - Sucker Punch - Level 22
  (93, 9300, 389, 12, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Haunter - Shadow Punch - Level 25
  (93, 9300, 325, 12, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Haunter - Payback - Level 28
  (93, 9300, 371, 12, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Haunter - Shadow Ball - Level 33
  (93, 9300, 247, 12, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Haunter - Dream Eater - Level 39
  (93, 9300, 138, 12, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Haunter - Dark Pulse - Level 44
  (93, 9300, 399, 12, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Haunter - Destiny Bond - Level 50
  (93, 9300, 194, 12, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Haunter - Hex - Level 55
  (93, 9300, 506, 12, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Haunter - Nightmare - Level 61
  (93, 9300, 171, 12, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Haunter - Toxic - TM06
  (93, 9300, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 18),
  -- Haunter - Venoshock - TM09
  (93, 9300, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 19),
  -- Haunter - Hidden Power - TM10
  (93, 9300, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Haunter - Sunny Day - TM11
  (93, 9300, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 21),
  -- Haunter - Taunt - TM12
  (93, 9300, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 22),
  -- Haunter - Protect - TM17
  (93, 9300, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Haunter - Rain Dance - TM18
  (93, 9300, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 24),
  -- Haunter - Telekinesis - TM19
  (93, 9300, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 25),
  -- Haunter - Frustration - TM21
  (93, 9300, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Haunter - Thunderbolt - TM24
  (93, 9300, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 27),
  -- Haunter - Return - TM27
  (93, 9300, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 28),
  -- Haunter - Psychic - TM29
  (93, 9300, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 29),
  -- Haunter - Shadow Ball - TM30
  (93, 9300, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 30),
  -- Haunter - Double Team - TM32
  (93, 9300, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 31),
  -- Haunter - Sludge Bomb - TM36
  (93, 9300, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 32),
  -- Haunter - Torment - TM41
  (93, 9300, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 33),
  -- Haunter - Facade - TM42
  (93, 9300, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 34),
  -- Haunter - Rest - TM44
  (93, 9300, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 35),
  -- Haunter - Attract - TM45
  (93, 9300, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 36),
  -- Haunter - Thief - TM46
  (93, 9300, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 37),
  -- Haunter - Round - TM48
  (93, 9300, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 38),
  -- Haunter - Energy Ball - TM53
  (93, 9300, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 39),
  -- Haunter - Fling - TM56
  (93, 9300, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 40),
  -- Haunter - Will-O-Wisp - TM61
  (93, 9300, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 41),
  -- Haunter - Embargo - TM63
  (93, 9300, 373, 12, NULL, 2, NULL, NULL, 12002063, NULL, 42),
  -- Haunter - Explosion - TM64
  (93, 9300, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 43),
  -- Haunter - Shadow Claw - TM65
  (93, 9300, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 44),
  -- Haunter - Payback - TM66
  (93, 9300, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 45),
  -- Haunter - Psych Up - TM77
  (93, 9300, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 46),
  -- Haunter - Poison Jab - TM84
  (93, 9300, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 47),
  -- Haunter - Dream Eater - TM85
  (93, 9300, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 48),
  -- Haunter - Swagger - TM87
  (93, 9300, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 49),
  -- Haunter - Substitute - TM90
  (93, 9300, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 50),
  -- Haunter - Trick Room - TM92
  (93, 9300, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 51),
  -- Haunter - Dark Pulse - Move Tutor
  (93, 9300, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Haunter - Fire Punch - Move Tutor
  (93, 9300, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Haunter - Foul Play - Move Tutor
  (93, 9300, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Haunter - Giga Drain - Move Tutor
  (93, 9300, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Haunter - Ice Punch - Move Tutor
  (93, 9300, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Haunter - Icy Wind - Move Tutor
  (93, 9300, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Haunter - Knock Off - Move Tutor
  (93, 9300, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Haunter - Pain Split - Move Tutor
  (93, 9300, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Haunter - Skill Swap - Move Tutor
  (93, 9300, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Haunter - Sleep Talk - Move Tutor
  (93, 9300, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Haunter - Snatch - Move Tutor
  (93, 9300, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Haunter - Snore - Move Tutor
  (93, 9300, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Haunter - Spite - Move Tutor
  (93, 9300, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Haunter - Thunder Punch - Move Tutor
  (93, 9300, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Haunter - Trick - Move Tutor
  (93, 9300, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Haunter - Uproar - Move Tutor
  (93, 9300, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Haunter - Wonder Room - Move Tutor
  (93, 9300, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Gengar - Hypnosis - Level 1
  (94, 9400, 95, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gengar - Lick - Level 1
  (94, 9400, 122, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gengar - Spite - Level 1
  (94, 9400, 180, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gengar - Spite - Level 5
  (94, 9400, 180, 12, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Gengar - Mean Look - Level 8
  (94, 9400, 212, 12, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Gengar - Curse - Level 12
  (94, 9400, 174, 12, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Gengar - Night Shade - Level 15
  (94, 9400, 101, 12, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Gengar - Confuse Ray - Level 19
  (94, 9400, 109, 12, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Gengar - Sucker Punch - Level 22
  (94, 9400, 389, 12, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Gengar - Shadow Punch - Level 25
  (94, 9400, 325, 12, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Gengar - Payback - Level 28
  (94, 9400, 371, 12, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Gengar - Shadow Ball - Level 33
  (94, 9400, 247, 12, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Gengar - Dream Eater - Level 39
  (94, 9400, 138, 12, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Gengar - Dark Pulse - Level 44
  (94, 9400, 399, 12, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Gengar - Destiny Bond - Level 50
  (94, 9400, 194, 12, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Gengar - Hex - Level 55
  (94, 9400, 506, 12, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Gengar - Nightmare - Level 61
  (94, 9400, 171, 12, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Gengar - Toxic - TM06
  (94, 9400, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 18),
  -- Gengar - Venoshock - TM09
  (94, 9400, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 19),
  -- Gengar - Hidden Power - TM10
  (94, 9400, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Gengar - Sunny Day - TM11
  (94, 9400, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 21),
  -- Gengar - Taunt - TM12
  (94, 9400, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 22),
  -- Gengar - Hyper Beam - TM15
  (94, 9400, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 23),
  -- Gengar - Protect - TM17
  (94, 9400, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 24),
  -- Gengar - Rain Dance - TM18
  (94, 9400, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 25),
  -- Gengar - Telekinesis - TM19
  (94, 9400, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 26),
  -- Gengar - Frustration - TM21
  (94, 9400, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 27),
  -- Gengar - Thunderbolt - TM24
  (94, 9400, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 28),
  -- Gengar - Thunder - TM25
  (94, 9400, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 29),
  -- Gengar - Return - TM27
  (94, 9400, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 30),
  -- Gengar - Psychic - TM29
  (94, 9400, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 31),
  -- Gengar - Shadow Ball - TM30
  (94, 9400, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 32),
  -- Gengar - Brick Break - TM31
  (94, 9400, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 33),
  -- Gengar - Double Team - TM32
  (94, 9400, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 34),
  -- Gengar - Sludge Bomb - TM36
  (94, 9400, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 35),
  -- Gengar - Torment - TM41
  (94, 9400, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 36),
  -- Gengar - Facade - TM42
  (94, 9400, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 37),
  -- Gengar - Rest - TM44
  (94, 9400, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 38),
  -- Gengar - Attract - TM45
  (94, 9400, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 39),
  -- Gengar - Thief - TM46
  (94, 9400, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 40),
  -- Gengar - Round - TM48
  (94, 9400, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 41),
  -- Gengar - Focus Blast - TM52
  (94, 9400, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 42),
  -- Gengar - Energy Ball - TM53
  (94, 9400, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 43),
  -- Gengar - Fling - TM56
  (94, 9400, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 44),
  -- Gengar - Will-O-Wisp - TM61
  (94, 9400, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 45),
  -- Gengar - Embargo - TM63
  (94, 9400, 373, 12, NULL, 2, NULL, NULL, 12002063, NULL, 46),
  -- Gengar - Explosion - TM64
  (94, 9400, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 47),
  -- Gengar - Shadow Claw - TM65
  (94, 9400, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 48),
  -- Gengar - Payback - TM66
  (94, 9400, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 49),
  -- Gengar - Giga Impact - TM68
  (94, 9400, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 50),
  -- Gengar - Psych Up - TM77
  (94, 9400, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 51),
  -- Gengar - Poison Jab - TM84
  (94, 9400, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 52),
  -- Gengar - Dream Eater - TM85
  (94, 9400, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 53),
  -- Gengar - Swagger - TM87
  (94, 9400, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 54),
  -- Gengar - Substitute - TM90
  (94, 9400, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 55),
  -- Gengar - Trick Room - TM92
  (94, 9400, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 56),
  -- Gengar - Rock Smash - TM94
  (94, 9400, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 57),
  -- Gengar - Strength - HM04
  (94, 9400, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 58),
  -- Gengar - Dark Pulse - Move Tutor
  (94, 9400, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Gengar - Drain Punch - Move Tutor
  (94, 9400, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Gengar - Fire Punch - Move Tutor
  (94, 9400, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Gengar - Foul Play - Move Tutor
  (94, 9400, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Gengar - Giga Drain - Move Tutor
  (94, 9400, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Gengar - Ice Punch - Move Tutor
  (94, 9400, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Gengar - Icy Wind - Move Tutor
  (94, 9400, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Gengar - Knock Off - Move Tutor
  (94, 9400, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Gengar - Pain Split - Move Tutor
  (94, 9400, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Gengar - Role Play - Move Tutor
  (94, 9400, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Gengar - Skill Swap - Move Tutor
  (94, 9400, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Gengar - Sleep Talk - Move Tutor
  (94, 9400, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Gengar - Snatch - Move Tutor
  (94, 9400, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Gengar - Snore - Move Tutor
  (94, 9400, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Gengar - Spite - Move Tutor
  (94, 9400, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Gengar - Thunder Punch - Move Tutor
  (94, 9400, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Gengar - Trick - Move Tutor
  (94, 9400, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Gengar - Uproar - Move Tutor
  (94, 9400, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Gengar - Wonder Room - Move Tutor
  (94, 9400, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Onix - Mud Sport - Level 1
  (95, 9500, 300, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Onix - Tackle - Level 1
  (95, 9500, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Onix - Harden - Level 1
  (95, 9500, 106, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Onix - Bind - Level 1
  (95, 9500, 20, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Onix - Curse - Level 4
  (95, 9500, 174, 12, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Onix - Rock Throw - Level 7
  (95, 9500, 88, 12, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Onix - Rage - Level 10
  (95, 9500, 99, 12, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Onix - Rock Tomb - Level 13
  (95, 9500, 317, 12, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Onix - Stealth Rock - Level 16
  (95, 9500, 446, 12, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Onix - Rock Polish - Level 19
  (95, 9500, 397, 12, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Onix - Smack Down - Level 22
  (95, 9500, 479, 12, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Onix - Dragon Breath - Level 25
  (95, 9500, 225, 12, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Onix - Slam - Level 28
  (95, 9500, 21, 12, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Onix - Screech - Level 31
  (95, 9500, 103, 12, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Onix - Rock Slide - Level 34
  (95, 9500, 157, 12, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Onix - Sand Tomb - Level 37
  (95, 9500, 328, 12, NULL, 1, 37, NULL, NULL, NULL, 16),
  -- Onix - Iron Tail - Level 40
  (95, 9500, 231, 12, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Onix - Dig - Level 43
  (95, 9500, 91, 12, NULL, 1, 43, NULL, NULL, NULL, 18),
  -- Onix - Stone Edge - Level 46
  (95, 9500, 444, 12, NULL, 1, 46, NULL, NULL, NULL, 19),
  -- Onix - Double-Edge - Level 49
  (95, 9500, 38, 12, NULL, 1, 49, NULL, NULL, NULL, 20),
  -- Onix - Sandstorm - Level 52
  (95, 9500, 201, 12, NULL, 1, 52, NULL, NULL, NULL, 21),
  -- Onix - Roar - TM05
  (95, 9500, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 22),
  -- Onix - Toxic - TM06
  (95, 9500, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 23),
  -- Onix - Hidden Power - TM10
  (95, 9500, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 24),
  -- Onix - Sunny Day - TM11
  (95, 9500, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 25),
  -- Onix - Taunt - TM12
  (95, 9500, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 26),
  -- Onix - Protect - TM17
  (95, 9500, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 27),
  -- Onix - Frustration - TM21
  (95, 9500, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 28),
  -- Onix - Smack Down - TM23
  (95, 9500, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 29),
  -- Onix - Earthquake - TM26
  (95, 9500, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 30),
  -- Onix - Return - TM27
  (95, 9500, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 31),
  -- Onix - Dig - TM28
  (95, 9500, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 32),
  -- Onix - Double Team - TM32
  (95, 9500, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 33),
  -- Onix - Sandstorm - TM37
  (95, 9500, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 34),
  -- Onix - Rock Tomb - TM39
  (95, 9500, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 35),
  -- Onix - Torment - TM41
  (95, 9500, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 36),
  -- Onix - Facade - TM42
  (95, 9500, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 37),
  -- Onix - Rest - TM44
  (95, 9500, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 38),
  -- Onix - Attract - TM45
  (95, 9500, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 39),
  -- Onix - Round - TM48
  (95, 9500, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 40),
  -- Onix - Explosion - TM64
  (95, 9500, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 41),
  -- Onix - Payback - TM66
  (95, 9500, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 42),
  -- Onix - Rock Polish - TM69
  (95, 9500, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 43),
  -- Onix - Stone Edge - TM71
  (95, 9500, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 44),
  -- Onix - Gyro Ball - TM74
  (95, 9500, 360, 12, NULL, 2, NULL, NULL, 12002074, NULL, 45),
  -- Onix - Psych Up - TM77
  (95, 9500, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 46),
  -- Onix - Bulldoze - TM78
  (95, 9500, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 47),
  -- Onix - Rock Slide - TM80
  (95, 9500, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 48),
  -- Onix - Dragon Tail - TM82
  (95, 9500, 525, 12, NULL, 2, NULL, NULL, 12002082, NULL, 49),
  -- Onix - Swagger - TM87
  (95, 9500, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 50),
  -- Onix - Substitute - TM90
  (95, 9500, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 51),
  -- Onix - Flash Cannon - TM91
  (95, 9500, 430, 12, NULL, 2, NULL, NULL, 12002091, NULL, 52),
  -- Onix - Rock Smash - TM94
  (95, 9500, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 53),
  -- Onix - Strength - HM04
  (95, 9500, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 54),
  -- Onix - Block - Egg Move
  (95, 9500, 335, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Onix - Defense Curl - Egg Move
  (95, 9500, 111, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Onix - Flail - Egg Move
  (95, 9500, 175, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Onix - Heavy Slam - Egg Move
  (95, 9500, 484, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Onix - Rock Blast - Egg Move
  (95, 9500, 350, 12, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Onix - Rock Climb - Egg Move
  (95, 9500, 431, 12, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Onix - Rollout - Egg Move
  (95, 9500, 205, 12, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Onix - Stealth Rock - Egg Move
  (95, 9500, 446, 12, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Onix - Bind - Move Tutor
  (95, 9500, 20, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Onix - Block - Move Tutor
  (95, 9500, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Onix - Dragon Pulse - Move Tutor
  (95, 9500, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Onix - Earth Power - Move Tutor
  (95, 9500, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Onix - Iron Head - Move Tutor
  (95, 9500, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Onix - Iron Tail - Move Tutor
  (95, 9500, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Onix - Sleep Talk - Move Tutor
  (95, 9500, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Onix - Snore - Move Tutor
  (95, 9500, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Onix - Stealth Rock - Move Tutor
  (95, 9500, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Drowzee - Pound - Level 1
  (96, 9600, 1, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drowzee - Hypnosis - Level 1
  (96, 9600, 95, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drowzee - Disable - Level 5
  (96, 9600, 50, 12, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Drowzee - Confusion - Level 9
  (96, 9600, 93, 12, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Drowzee - Headbutt - Level 13
  (96, 9600, 29, 12, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Drowzee - Poison Gas - Level 17
  (96, 9600, 139, 12, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Drowzee - Meditate - Level 21
  (96, 9600, 96, 12, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Drowzee - Psybeam - Level 25
  (96, 9600, 60, 12, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Drowzee - Headbutt - Level 29
  (96, 9600, 29, 12, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Drowzee - Psych Up - Level 33
  (96, 9600, 244, 12, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Drowzee - Synchronoise - Level 37
  (96, 9600, 485, 12, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Drowzee - Zen Headbutt - Level 41
  (96, 9600, 428, 12, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Drowzee - Swagger - Level 45
  (96, 9600, 207, 12, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Drowzee - Psychic - Level 49
  (96, 9600, 94, 12, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Drowzee - Nasty Plot - Level 53
  (96, 9600, 417, 12, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Drowzee - Psyshock - Level 57
  (96, 9600, 473, 12, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Drowzee - Future Sight - Level 61
  (96, 9600, 248, 12, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Drowzee - Psyshock - TM03
  (96, 9600, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 18),
  -- Drowzee - Calm Mind - TM04
  (96, 9600, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 19),
  -- Drowzee - Toxic - TM06
  (96, 9600, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 20),
  -- Drowzee - Hidden Power - TM10
  (96, 9600, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 21),
  -- Drowzee - Sunny Day - TM11
  (96, 9600, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 22),
  -- Drowzee - Taunt - TM12
  (96, 9600, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 23),
  -- Drowzee - Light Screen - TM16
  (96, 9600, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 24),
  -- Drowzee - Protect - TM17
  (96, 9600, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 25),
  -- Drowzee - Rain Dance - TM18
  (96, 9600, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 26),
  -- Drowzee - Telekinesis - TM19
  (96, 9600, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 27),
  -- Drowzee - Safeguard - TM20
  (96, 9600, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 28),
  -- Drowzee - Frustration - TM21
  (96, 9600, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 29),
  -- Drowzee - Return - TM27
  (96, 9600, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 30),
  -- Drowzee - Psychic - TM29
  (96, 9600, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 31),
  -- Drowzee - Shadow Ball - TM30
  (96, 9600, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 32),
  -- Drowzee - Brick Break - TM31
  (96, 9600, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 33),
  -- Drowzee - Double Team - TM32
  (96, 9600, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 34),
  -- Drowzee - Reflect - TM33
  (96, 9600, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 35),
  -- Drowzee - Torment - TM41
  (96, 9600, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 36),
  -- Drowzee - Facade - TM42
  (96, 9600, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 37),
  -- Drowzee - Rest - TM44
  (96, 9600, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 38),
  -- Drowzee - Attract - TM45
  (96, 9600, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 39),
  -- Drowzee - Thief - TM46
  (96, 9600, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 40),
  -- Drowzee - Low Sweep - TM47
  (96, 9600, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 41),
  -- Drowzee - Round - TM48
  (96, 9600, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 42),
  -- Drowzee - Fling - TM56
  (96, 9600, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 43),
  -- Drowzee - Flash - TM70
  (96, 9600, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 44),
  -- Drowzee - Thunder Wave - TM73
  (96, 9600, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 45),
  -- Drowzee - Psych Up - TM77
  (96, 9600, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 46),
  -- Drowzee - Dream Eater - TM85
  (96, 9600, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 47),
  -- Drowzee - Grass Knot - TM86
  (96, 9600, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 48),
  -- Drowzee - Swagger - TM87
  (96, 9600, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 49),
  -- Drowzee - Substitute - TM90
  (96, 9600, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 50),
  -- Drowzee - Trick Room - TM92
  (96, 9600, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 51),
  -- Drowzee - Assist - Egg Move
  (96, 9600, 274, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Drowzee - Barrier - Egg Move
  (96, 9600, 112, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Drowzee - Fire Punch - Egg Move
  (96, 9600, 7, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Drowzee - Flatter - Egg Move
  (96, 9600, 260, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Drowzee - Guard Swap - Egg Move
  (96, 9600, 385, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Drowzee - Ice Punch - Egg Move
  (96, 9600, 8, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Drowzee - Nasty Plot - Egg Move
  (96, 9600, 417, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Drowzee - Psycho Cut - Egg Move
  (96, 9600, 427, 12, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Drowzee - Role Play - Egg Move
  (96, 9600, 272, 12, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Drowzee - Secret Power - Egg Move
  (96, 9600, 290, 12, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Drowzee - Skill Swap - Egg Move
  (96, 9600, 285, 12, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Drowzee - Thunder Punch - Egg Move
  (96, 9600, 9, 12, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Drowzee - Drain Punch - Move Tutor
  (96, 9600, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Drowzee - Fire Punch - Move Tutor
  (96, 9600, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Drowzee - Foul Play - Move Tutor
  (96, 9600, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Drowzee - Ice Punch - Move Tutor
  (96, 9600, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Drowzee - Low Kick - Move Tutor
  (96, 9600, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Drowzee - Magic Coat - Move Tutor
  (96, 9600, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Drowzee - Magic Room - Move Tutor
  (96, 9600, 478, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Drowzee - Recycle - Move Tutor
  (96, 9600, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Drowzee - Role Play - Move Tutor
  (96, 9600, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Drowzee - Signal Beam - Move Tutor
  (96, 9600, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Drowzee - Skill Swap - Move Tutor
  (96, 9600, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Drowzee - Sleep Talk - Move Tutor
  (96, 9600, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Drowzee - Snatch - Move Tutor
  (96, 9600, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Drowzee - Thunder Punch - Move Tutor
  (96, 9600, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Drowzee - Trick - Move Tutor
  (96, 9600, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 78),
  -- Drowzee - Zen Headbutt - Move Tutor
  (96, 9600, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 79),
  -- Hypno - Nightmare - Level 1
  (97, 9700, 171, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hypno - Switcheroo - Level 1
  (97, 9700, 415, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hypno - Pound - Level 1
  (97, 9700, 1, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Hypno - Hypnosis - Level 1
  (97, 9700, 95, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Hypno - Disable - Level 1
  (97, 9700, 50, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Hypno - Confusion - Level 1
  (97, 9700, 93, 12, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Hypno - Disable - Level 5
  (97, 9700, 50, 12, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Hypno - Confusion - Level 9
  (97, 9700, 93, 12, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Hypno - Headbutt - Level 13
  (97, 9700, 29, 12, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Hypno - Poison Gas - Level 17
  (97, 9700, 139, 12, NULL, 1, 17, NULL, NULL, NULL, 10),
  -- Hypno - Meditate - Level 21
  (97, 9700, 96, 12, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Hypno - Psybeam - Level 25
  (97, 9700, 60, 12, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Hypno - Headbutt - Level 29
  (97, 9700, 29, 12, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Hypno - Psych Up - Level 33
  (97, 9700, 244, 12, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Hypno - Synchronoise - Level 37
  (97, 9700, 485, 12, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Hypno - Zen Headbutt - Level 41
  (97, 9700, 428, 12, NULL, 1, 41, NULL, NULL, NULL, 16),
  -- Hypno - Swagger - Level 45
  (97, 9700, 207, 12, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Hypno - Psychic - Level 49
  (97, 9700, 94, 12, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Hypno - Nasty Plot - Level 53
  (97, 9700, 417, 12, NULL, 1, 53, NULL, NULL, NULL, 19),
  -- Hypno - Psyshock - Level 57
  (97, 9700, 473, 12, NULL, 1, 57, NULL, NULL, NULL, 20),
  -- Hypno - Future Sight - Level 61
  (97, 9700, 248, 12, NULL, 1, 61, NULL, NULL, NULL, 21),
  -- Hypno - Psyshock - TM03
  (97, 9700, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 22),
  -- Hypno - Calm Mind - TM04
  (97, 9700, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 23),
  -- Hypno - Toxic - TM06
  (97, 9700, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 24),
  -- Hypno - Hidden Power - TM10
  (97, 9700, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 25),
  -- Hypno - Sunny Day - TM11
  (97, 9700, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 26),
  -- Hypno - Taunt - TM12
  (97, 9700, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 27),
  -- Hypno - Hyper Beam - TM15
  (97, 9700, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 28),
  -- Hypno - Light Screen - TM16
  (97, 9700, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 29),
  -- Hypno - Protect - TM17
  (97, 9700, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 30),
  -- Hypno - Rain Dance - TM18
  (97, 9700, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 31),
  -- Hypno - Telekinesis - TM19
  (97, 9700, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 32),
  -- Hypno - Safeguard - TM20
  (97, 9700, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 33),
  -- Hypno - Frustration - TM21
  (97, 9700, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 34),
  -- Hypno - Return - TM27
  (97, 9700, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 35),
  -- Hypno - Psychic - TM29
  (97, 9700, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 36),
  -- Hypno - Shadow Ball - TM30
  (97, 9700, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 37),
  -- Hypno - Brick Break - TM31
  (97, 9700, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 38),
  -- Hypno - Double Team - TM32
  (97, 9700, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 39),
  -- Hypno - Reflect - TM33
  (97, 9700, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 40),
  -- Hypno - Torment - TM41
  (97, 9700, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 41),
  -- Hypno - Facade - TM42
  (97, 9700, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 42),
  -- Hypno - Rest - TM44
  (97, 9700, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 43),
  -- Hypno - Attract - TM45
  (97, 9700, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 44),
  -- Hypno - Thief - TM46
  (97, 9700, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 45),
  -- Hypno - Low Sweep - TM47
  (97, 9700, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 46),
  -- Hypno - Round - TM48
  (97, 9700, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 47),
  -- Hypno - Focus Blast - TM52
  (97, 9700, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 48),
  -- Hypno - Fling - TM56
  (97, 9700, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 49),
  -- Hypno - Giga Impact - TM68
  (97, 9700, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 50),
  -- Hypno - Flash - TM70
  (97, 9700, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 51),
  -- Hypno - Thunder Wave - TM73
  (97, 9700, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 52),
  -- Hypno - Psych Up - TM77
  (97, 9700, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 53),
  -- Hypno - Dream Eater - TM85
  (97, 9700, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 54),
  -- Hypno - Grass Knot - TM86
  (97, 9700, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 55),
  -- Hypno - Swagger - TM87
  (97, 9700, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 56),
  -- Hypno - Substitute - TM90
  (97, 9700, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 57),
  -- Hypno - Trick Room - TM92
  (97, 9700, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 58),
  -- Hypno - Drain Punch - Move Tutor
  (97, 9700, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Hypno - Fire Punch - Move Tutor
  (97, 9700, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Hypno - Foul Play - Move Tutor
  (97, 9700, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Hypno - Ice Punch - Move Tutor
  (97, 9700, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Hypno - Low Kick - Move Tutor
  (97, 9700, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Hypno - Magic Coat - Move Tutor
  (97, 9700, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Hypno - Magic Room - Move Tutor
  (97, 9700, 478, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Hypno - Recycle - Move Tutor
  (97, 9700, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Hypno - Role Play - Move Tutor
  (97, 9700, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Hypno - Signal Beam - Move Tutor
  (97, 9700, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Hypno - Skill Swap - Move Tutor
  (97, 9700, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Hypno - Sleep Talk - Move Tutor
  (97, 9700, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Hypno - Snatch - Move Tutor
  (97, 9700, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Hypno - Thunder Punch - Move Tutor
  (97, 9700, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Hypno - Trick - Move Tutor
  (97, 9700, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Hypno - Zen Headbutt - Move Tutor
  (97, 9700, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Krabby - Mud Sport - Level 1
  (98, 9800, 300, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Krabby - Bubble - Level 1
  (98, 9800, 145, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Krabby - Vise Grip - Level 5
  (98, 9800, 11, 12, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Krabby - Leer - Level 9
  (98, 9800, 43, 12, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Krabby - Harden - Level 11
  (98, 9800, 106, 12, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Krabby - Bubble Beam - Level 15
  (98, 9800, 61, 12, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Krabby - Mud Shot - Level 19
  (98, 9800, 341, 12, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Krabby - Metal Claw - Level 21
  (98, 9800, 232, 12, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Krabby - Stomp - Level 25
  (98, 9800, 23, 12, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Krabby - Protect - Level 29
  (98, 9800, 182, 12, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Krabby - Guillotine - Level 31
  (98, 9800, 12, 12, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Krabby - Slam - Level 35
  (98, 9800, 21, 12, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Krabby - Brine - Level 39
  (98, 9800, 362, 12, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Krabby - Crabhammer - Level 41
  (98, 9800, 152, 12, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Krabby - Flail - Level 45
  (98, 9800, 175, 12, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Krabby - Hone Claws - TM01
  (98, 9800, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 16),
  -- Krabby - Toxic - TM06
  (98, 9800, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Krabby - Hail - TM07
  (98, 9800, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 18),
  -- Krabby - Hidden Power - TM10
  (98, 9800, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 19),
  -- Krabby - Ice Beam - TM13
  (98, 9800, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 20),
  -- Krabby - Blizzard - TM14
  (98, 9800, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 21),
  -- Krabby - Protect - TM17
  (98, 9800, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 22),
  -- Krabby - Rain Dance - TM18
  (98, 9800, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 23),
  -- Krabby - Frustration - TM21
  (98, 9800, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 24),
  -- Krabby - Return - TM27
  (98, 9800, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 25),
  -- Krabby - Dig - TM28
  (98, 9800, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 26),
  -- Krabby - Brick Break - TM31
  (98, 9800, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 27),
  -- Krabby - Double Team - TM32
  (98, 9800, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 28),
  -- Krabby - Rock Tomb - TM39
  (98, 9800, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 29),
  -- Krabby - Facade - TM42
  (98, 9800, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 30),
  -- Krabby - Rest - TM44
  (98, 9800, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 31),
  -- Krabby - Attract - TM45
  (98, 9800, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 32),
  -- Krabby - Thief - TM46
  (98, 9800, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 33),
  -- Krabby - Round - TM48
  (98, 9800, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 34),
  -- Krabby - False Swipe - TM54
  (98, 9800, 206, 12, NULL, 2, NULL, NULL, 12002054, NULL, 35),
  -- Krabby - Scald - TM55
  (98, 9800, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 36),
  -- Krabby - Fling - TM56
  (98, 9800, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 37),
  -- Krabby - Swords Dance - TM75
  (98, 9800, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 38),
  -- Krabby - Rock Slide - TM80
  (98, 9800, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 39),
  -- Krabby - X-Scissor - TM81
  (98, 9800, 404, 12, NULL, 2, NULL, NULL, 12002081, NULL, 40),
  -- Krabby - Swagger - TM87
  (98, 9800, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 41),
  -- Krabby - Substitute - TM90
  (98, 9800, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 42),
  -- Krabby - Rock Smash - TM94
  (98, 9800, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 43),
  -- Krabby - Cut - HM01
  (98, 9800, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 44),
  -- Krabby - Surf - HM03
  (98, 9800, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 45),
  -- Krabby - Strength - HM04
  (98, 9800, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 46),
  -- Krabby - Dive - HM06
  (98, 9800, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 47),
  -- Krabby - Agility - Egg Move
  (98, 9800, 97, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Krabby - Amnesia - Egg Move
  (98, 9800, 133, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Krabby - Ancient Power - Egg Move
  (98, 9800, 246, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Krabby - Bide - Egg Move
  (98, 9800, 117, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Krabby - Chip Away - Egg Move
  (98, 9800, 498, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Krabby - Endure - Egg Move
  (98, 9800, 203, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Krabby - Flail - Egg Move
  (98, 9800, 175, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Krabby - Haze - Egg Move
  (98, 9800, 114, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Krabby - Knock Off - Egg Move
  (98, 9800, 282, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Krabby - Slam - Egg Move
  (98, 9800, 21, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Krabby - Tickle - Egg Move
  (98, 9800, 321, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Krabby - Icy Wind - Move Tutor
  (98, 9800, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Krabby - Iron Defense - Move Tutor
  (98, 9800, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Krabby - Knock Off - Move Tutor
  (98, 9800, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Krabby - Sleep Talk - Move Tutor
  (98, 9800, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Krabby - Snore - Move Tutor
  (98, 9800, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Krabby - Superpower - Move Tutor
  (98, 9800, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Kingler - Wide Guard - Level 1
  (99, 9900, 469, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kingler - Mud Sport - Level 1
  (99, 9900, 300, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kingler - Bubble - Level 1
  (99, 9900, 145, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kingler - Vise Grip - Level 1
  (99, 9900, 11, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kingler - Leer - Level 1
  (99, 9900, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Kingler - Vise Grip - Level 5
  (99, 9900, 11, 12, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Kingler - Leer - Level 9
  (99, 9900, 43, 12, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Kingler - Harden - Level 11
  (99, 9900, 106, 12, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Kingler - Bubble Beam - Level 15
  (99, 9900, 61, 12, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Kingler - Mud Shot - Level 19
  (99, 9900, 341, 12, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Kingler - Metal Claw - Level 21
  (99, 9900, 232, 12, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Kingler - Stomp - Level 25
  (99, 9900, 23, 12, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Kingler - Protect - Level 32
  (99, 9900, 182, 12, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Kingler - Guillotine - Level 37
  (99, 9900, 12, 12, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Kingler - Slam - Level 44
  (99, 9900, 21, 12, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Kingler - Brine - Level 51
  (99, 9900, 362, 12, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Kingler - Crabhammer - Level 56
  (99, 9900, 152, 12, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Kingler - Flail - Level 63
  (99, 9900, 175, 12, NULL, 1, 63, NULL, NULL, NULL, 18),
  -- Kingler - Hone Claws - TM01
  (99, 9900, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 19),
  -- Kingler - Toxic - TM06
  (99, 9900, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 20),
  -- Kingler - Hail - TM07
  (99, 9900, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 21),
  -- Kingler - Hidden Power - TM10
  (99, 9900, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 22),
  -- Kingler - Ice Beam - TM13
  (99, 9900, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 23),
  -- Kingler - Blizzard - TM14
  (99, 9900, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 24),
  -- Kingler - Hyper Beam - TM15
  (99, 9900, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 25),
  -- Kingler - Protect - TM17
  (99, 9900, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 26),
  -- Kingler - Rain Dance - TM18
  (99, 9900, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 27),
  -- Kingler - Frustration - TM21
  (99, 9900, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 28),
  -- Kingler - Return - TM27
  (99, 9900, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 29),
  -- Kingler - Dig - TM28
  (99, 9900, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 30),
  -- Kingler - Brick Break - TM31
  (99, 9900, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 31),
  -- Kingler - Double Team - TM32
  (99, 9900, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 32),
  -- Kingler - Rock Tomb - TM39
  (99, 9900, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 33),
  -- Kingler - Facade - TM42
  (99, 9900, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 34),
  -- Kingler - Rest - TM44
  (99, 9900, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 35),
  -- Kingler - Attract - TM45
  (99, 9900, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 36),
  -- Kingler - Thief - TM46
  (99, 9900, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 37),
  -- Kingler - Round - TM48
  (99, 9900, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 38),
  -- Kingler - False Swipe - TM54
  (99, 9900, 206, 12, NULL, 2, NULL, NULL, 12002054, NULL, 39),
  -- Kingler - Scald - TM55
  (99, 9900, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 40),
  -- Kingler - Fling - TM56
  (99, 9900, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 41),
  -- Kingler - Quash - TM60
  (99, 9900, 511, 12, NULL, 2, NULL, NULL, 12002060, NULL, 42),
  -- Kingler - Giga Impact - TM68
  (99, 9900, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 43),
  -- Kingler - Swords Dance - TM75
  (99, 9900, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 44),
  -- Kingler - Rock Slide - TM80
  (99, 9900, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 45),
  -- Kingler - X-Scissor - TM81
  (99, 9900, 404, 12, NULL, 2, NULL, NULL, 12002081, NULL, 46),
  -- Kingler - Swagger - TM87
  (99, 9900, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 47),
  -- Kingler - Substitute - TM90
  (99, 9900, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 48),
  -- Kingler - Rock Smash - TM94
  (99, 9900, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 49),
  -- Kingler - Cut - HM01
  (99, 9900, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 50),
  -- Kingler - Surf - HM03
  (99, 9900, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 51),
  -- Kingler - Strength - HM04
  (99, 9900, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 52),
  -- Kingler - Dive - HM06
  (99, 9900, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 53),
  -- Kingler - Icy Wind - Move Tutor
  (99, 9900, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Kingler - Iron Defense - Move Tutor
  (99, 9900, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Kingler - Knock Off - Move Tutor
  (99, 9900, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Kingler - Sleep Talk - Move Tutor
  (99, 9900, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Kingler - Snore - Move Tutor
  (99, 9900, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Kingler - Superpower - Move Tutor
  (99, 9900, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Voltorb - Charge - Level 1
  (100, 10000, 268, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Voltorb - Tackle - Level 5
  (100, 10000, 33, 12, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Voltorb - Sonic Boom - Level 8
  (100, 10000, 49, 12, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Voltorb - Spark - Level 12
  (100, 10000, 209, 12, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Voltorb - Rollout - Level 15
  (100, 10000, 205, 12, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Voltorb - Screech - Level 19
  (100, 10000, 103, 12, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Voltorb - Charge Beam - Level 22
  (100, 10000, 451, 12, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Voltorb - Light Screen - Level 26
  (100, 10000, 113, 12, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Voltorb - Electro Ball - Level 29
  (100, 10000, 486, 12, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Voltorb - Self-Destruct - Level 33
  (100, 10000, 120, 12, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Voltorb - Swift - Level 36
  (100, 10000, 129, 12, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Voltorb - Magnet Rise - Level 40
  (100, 10000, 393, 12, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Voltorb - Gyro Ball - Level 43
  (100, 10000, 360, 12, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Voltorb - Explosion - Level 47
  (100, 10000, 153, 12, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Voltorb - Mirror Coat - Level 50
  (100, 10000, 243, 12, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Voltorb - Toxic - TM06
  (100, 10000, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Voltorb - Hidden Power - TM10
  (100, 10000, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Voltorb - Taunt - TM12
  (100, 10000, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 18),
  -- Voltorb - Light Screen - TM16
  (100, 10000, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 19),
  -- Voltorb - Protect - TM17
  (100, 10000, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 20),
  -- Voltorb - Rain Dance - TM18
  (100, 10000, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 21),
  -- Voltorb - Frustration - TM21
  (100, 10000, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Voltorb - Thunderbolt - TM24
  (100, 10000, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 23),
  -- Voltorb - Thunder - TM25
  (100, 10000, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 24),
  -- Voltorb - Return - TM27
  (100, 10000, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 25),
  -- Voltorb - Double Team - TM32
  (100, 10000, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 26),
  -- Voltorb - Torment - TM41
  (100, 10000, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 27),
  -- Voltorb - Facade - TM42
  (100, 10000, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 28),
  -- Voltorb - Rest - TM44
  (100, 10000, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 29),
  -- Voltorb - Thief - TM46
  (100, 10000, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 30),
  -- Voltorb - Round - TM48
  (100, 10000, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 31),
  -- Voltorb - Charge Beam - TM57
  (100, 10000, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 32),
  -- Voltorb - Explosion - TM64
  (100, 10000, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 33),
  -- Voltorb - Flash - TM70
  (100, 10000, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 34),
  -- Voltorb - Volt Switch - TM72
  (100, 10000, 521, 12, NULL, 2, NULL, NULL, 12002072, NULL, 35),
  -- Voltorb - Thunder Wave - TM73
  (100, 10000, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 36),
  -- Voltorb - Gyro Ball - TM74
  (100, 10000, 360, 12, NULL, 2, NULL, NULL, 12002074, NULL, 37),
  -- Voltorb - Swagger - TM87
  (100, 10000, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 38),
  -- Voltorb - Substitute - TM90
  (100, 10000, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 39),
  -- Voltorb - Wild Charge - TM93
  (100, 10000, 528, 12, NULL, 2, NULL, NULL, 12002093, NULL, 40),
  -- Voltorb - Foul Play - Move Tutor
  (100, 10000, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 41),
  -- Voltorb - Magic Coat - Move Tutor
  (100, 10000, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 42),
  -- Voltorb - Magnet Rise - Move Tutor
  (100, 10000, 393, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Voltorb - Signal Beam - Move Tutor
  (100, 10000, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Voltorb - Sleep Talk - Move Tutor
  (100, 10000, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Voltorb - Snore - Move Tutor
  (100, 10000, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46);
