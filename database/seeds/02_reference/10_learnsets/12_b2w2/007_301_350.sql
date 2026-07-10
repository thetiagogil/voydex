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
-- Pokémon: #301-#350
-- Rows: 3239
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
  -- Delcatty - Fake Out - Level 1
  (301, 30100, 252, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Delcatty - Attract - Level 1
  (301, 30100, 213, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Delcatty - Sing - Level 1
  (301, 30100, 47, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Delcatty - Double Slap - Level 1
  (301, 30100, 3, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Delcatty - Calm Mind - TM04
  (301, 30100, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 5),
  -- Delcatty - Toxic - TM06
  (301, 30100, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 6),
  -- Delcatty - Hidden Power - TM10
  (301, 30100, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 7),
  -- Delcatty - Sunny Day - TM11
  (301, 30100, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 8),
  -- Delcatty - Ice Beam - TM13
  (301, 30100, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 9),
  -- Delcatty - Blizzard - TM14
  (301, 30100, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 10),
  -- Delcatty - Hyper Beam - TM15
  (301, 30100, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 11),
  -- Delcatty - Protect - TM17
  (301, 30100, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 12),
  -- Delcatty - Rain Dance - TM18
  (301, 30100, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 13),
  -- Delcatty - Safeguard - TM20
  (301, 30100, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 14),
  -- Delcatty - Frustration - TM21
  (301, 30100, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 15),
  -- Delcatty - Solar Beam - TM22
  (301, 30100, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 16),
  -- Delcatty - Thunderbolt - TM24
  (301, 30100, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 17),
  -- Delcatty - Thunder - TM25
  (301, 30100, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 18),
  -- Delcatty - Return - TM27
  (301, 30100, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 19),
  -- Delcatty - Dig - TM28
  (301, 30100, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 20),
  -- Delcatty - Shadow Ball - TM30
  (301, 30100, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 21),
  -- Delcatty - Double Team - TM32
  (301, 30100, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 22),
  -- Delcatty - Facade - TM42
  (301, 30100, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 23),
  -- Delcatty - Rest - TM44
  (301, 30100, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 24),
  -- Delcatty - Attract - TM45
  (301, 30100, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 25),
  -- Delcatty - Round - TM48
  (301, 30100, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 26),
  -- Delcatty - Echoed Voice - TM49
  (301, 30100, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 27),
  -- Delcatty - Charge Beam - TM57
  (301, 30100, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 28),
  -- Delcatty - Payback - TM66
  (301, 30100, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 29),
  -- Delcatty - Retaliate - TM67
  (301, 30100, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 30),
  -- Delcatty - Giga Impact - TM68
  (301, 30100, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 31),
  -- Delcatty - Flash - TM70
  (301, 30100, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 32),
  -- Delcatty - Thunder Wave - TM73
  (301, 30100, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 33),
  -- Delcatty - Psych Up - TM77
  (301, 30100, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 34),
  -- Delcatty - Work Up - TM83
  (301, 30100, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 35),
  -- Delcatty - Dream Eater - TM85
  (301, 30100, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 36),
  -- Delcatty - Grass Knot - TM86
  (301, 30100, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 37),
  -- Delcatty - Swagger - TM87
  (301, 30100, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 38),
  -- Delcatty - Substitute - TM90
  (301, 30100, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 39),
  -- Delcatty - Wild Charge - TM93
  (301, 30100, 528, 12, NULL, 2, NULL, NULL, 12002093, NULL, 40),
  -- Delcatty - Rock Smash - TM94
  (301, 30100, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 41),
  -- Delcatty - Strength - HM04
  (301, 30100, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 42),
  -- Delcatty - Covet - Move Tutor
  (301, 30100, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Delcatty - Heal Bell - Move Tutor
  (301, 30100, 215, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Delcatty - Helping Hand - Move Tutor
  (301, 30100, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Delcatty - Hyper Voice - Move Tutor
  (301, 30100, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Delcatty - Icy Wind - Move Tutor
  (301, 30100, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Delcatty - Iron Tail - Move Tutor
  (301, 30100, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Delcatty - Last Resort - Move Tutor
  (301, 30100, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Delcatty - Sleep Talk - Move Tutor
  (301, 30100, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Delcatty - Snore - Move Tutor
  (301, 30100, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Delcatty - Uproar - Move Tutor
  (301, 30100, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Delcatty - Zen Headbutt - Move Tutor
  (301, 30100, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Sableye - Leer - Level 1
  (302, 30200, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sableye - Scratch - Level 1
  (302, 30200, 10, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sableye - Foresight - Level 4
  (302, 30200, 193, 12, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Sableye - Night Shade - Level 8
  (302, 30200, 101, 12, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Sableye - Astonish - Level 11
  (302, 30200, 310, 12, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Sableye - Fury Swipes - Level 15
  (302, 30200, 154, 12, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Sableye - Fake Out - Level 18
  (302, 30200, 252, 12, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Sableye - Detect - Level 22
  (302, 30200, 197, 12, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Sableye - Shadow Sneak - Level 25
  (302, 30200, 425, 12, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Sableye - Knock Off - Level 29
  (302, 30200, 282, 12, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Sableye - Feint Attack - Level 32
  (302, 30200, 185, 12, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Sableye - Punishment - Level 36
  (302, 30200, 386, 12, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Sableye - Shadow Claw - Level 39
  (302, 30200, 421, 12, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Sableye - Power Gem - Level 43
  (302, 30200, 408, 12, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Sableye - Confuse Ray - Level 46
  (302, 30200, 109, 12, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Sableye - Foul Play - Level 50
  (302, 30200, 492, 12, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Sableye - Zen Headbutt - Level 53
  (302, 30200, 428, 12, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Sableye - Shadow Ball - Level 57
  (302, 30200, 247, 12, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Sableye - Mean Look - Level 60
  (302, 30200, 212, 12, NULL, 1, 60, NULL, NULL, NULL, 19),
  -- Sableye - Hone Claws - TM01
  (302, 30200, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 20),
  -- Sableye - Calm Mind - TM04
  (302, 30200, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 21),
  -- Sableye - Toxic - TM06
  (302, 30200, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 22),
  -- Sableye - Hidden Power - TM10
  (302, 30200, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 23),
  -- Sableye - Sunny Day - TM11
  (302, 30200, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 24),
  -- Sableye - Taunt - TM12
  (302, 30200, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 25),
  -- Sableye - Protect - TM17
  (302, 30200, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 26),
  -- Sableye - Rain Dance - TM18
  (302, 30200, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 27),
  -- Sableye - Telekinesis - TM19
  (302, 30200, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 28),
  -- Sableye - Frustration - TM21
  (302, 30200, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 29),
  -- Sableye - Return - TM27
  (302, 30200, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 30),
  -- Sableye - Dig - TM28
  (302, 30200, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 31),
  -- Sableye - Psychic - TM29
  (302, 30200, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 32),
  -- Sableye - Shadow Ball - TM30
  (302, 30200, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 33),
  -- Sableye - Brick Break - TM31
  (302, 30200, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 34),
  -- Sableye - Double Team - TM32
  (302, 30200, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 35),
  -- Sableye - Rock Tomb - TM39
  (302, 30200, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 36),
  -- Sableye - Aerial Ace - TM40
  (302, 30200, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 37),
  -- Sableye - Torment - TM41
  (302, 30200, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 38),
  -- Sableye - Facade - TM42
  (302, 30200, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 39),
  -- Sableye - Rest - TM44
  (302, 30200, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 40),
  -- Sableye - Attract - TM45
  (302, 30200, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 41),
  -- Sableye - Thief - TM46
  (302, 30200, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 42),
  -- Sableye - Low Sweep - TM47
  (302, 30200, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 43),
  -- Sableye - Round - TM48
  (302, 30200, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 44),
  -- Sableye - Fling - TM56
  (302, 30200, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 45),
  -- Sableye - Incinerate - TM59
  (302, 30200, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 46),
  -- Sableye - Will-O-Wisp - TM61
  (302, 30200, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 47),
  -- Sableye - Embargo - TM63
  (302, 30200, 373, 12, NULL, 2, NULL, NULL, 12002063, NULL, 48),
  -- Sableye - Shadow Claw - TM65
  (302, 30200, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 49),
  -- Sableye - Payback - TM66
  (302, 30200, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 50),
  -- Sableye - Retaliate - TM67
  (302, 30200, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 51),
  -- Sableye - Flash - TM70
  (302, 30200, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 52),
  -- Sableye - Psych Up - TM77
  (302, 30200, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 53),
  -- Sableye - Poison Jab - TM84
  (302, 30200, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 54),
  -- Sableye - Dream Eater - TM85
  (302, 30200, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 55),
  -- Sableye - Swagger - TM87
  (302, 30200, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 56),
  -- Sableye - Substitute - TM90
  (302, 30200, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 57),
  -- Sableye - Rock Smash - TM94
  (302, 30200, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 58),
  -- Sableye - Snarl - TM95
  (302, 30200, 555, 12, NULL, 2, NULL, NULL, 12002095, NULL, 59),
  -- Sableye - Cut - HM01
  (302, 30200, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 60),
  -- Sableye - Captivate - Egg Move
  (302, 30200, 445, 12, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Sableye - Feint - Egg Move
  (302, 30200, 364, 12, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Sableye - Flatter - Egg Move
  (302, 30200, 260, 12, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Sableye - Mean Look - Egg Move
  (302, 30200, 212, 12, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Sableye - Metal Burst - Egg Move
  (302, 30200, 368, 12, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Sableye - Moonlight - Egg Move
  (302, 30200, 236, 12, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Sableye - Nasty Plot - Egg Move
  (302, 30200, 417, 12, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Sableye - Recover - Egg Move
  (302, 30200, 105, 12, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Sableye - Sucker Punch - Egg Move
  (302, 30200, 389, 12, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Sableye - Trick - Egg Move
  (302, 30200, 271, 12, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Sableye - Dark Pulse - Move Tutor
  (302, 30200, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Sableye - Fire Punch - Move Tutor
  (302, 30200, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Sableye - Foul Play - Move Tutor
  (302, 30200, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Sableye - Gravity - Move Tutor
  (302, 30200, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Sableye - Ice Punch - Move Tutor
  (302, 30200, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Sableye - Icy Wind - Move Tutor
  (302, 30200, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Sableye - Knock Off - Move Tutor
  (302, 30200, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Sableye - Low Kick - Move Tutor
  (302, 30200, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 78),
  -- Sableye - Magic Coat - Move Tutor
  (302, 30200, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 79),
  -- Sableye - Role Play - Move Tutor
  (302, 30200, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 80),
  -- Sableye - Signal Beam - Move Tutor
  (302, 30200, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 81),
  -- Sableye - Sleep Talk - Move Tutor
  (302, 30200, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 82),
  -- Sableye - Snatch - Move Tutor
  (302, 30200, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 83),
  -- Sableye - Snore - Move Tutor
  (302, 30200, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 84),
  -- Sableye - Spite - Move Tutor
  (302, 30200, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 85),
  -- Sableye - Thunder Punch - Move Tutor
  (302, 30200, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 86),
  -- Sableye - Trick - Move Tutor
  (302, 30200, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 87),
  -- Sableye - Wonder Room - Move Tutor
  (302, 30200, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 88),
  -- Sableye - Zen Headbutt - Move Tutor
  (302, 30200, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 89),
  -- Mawile - Astonish - Level 1
  (303, 30300, 310, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mawile - Fake Tears - Level 6
  (303, 30300, 313, 12, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Mawile - Bite - Level 11
  (303, 30300, 44, 12, NULL, 1, 11, NULL, NULL, NULL, 3),
  -- Mawile - Sweet Scent - Level 16
  (303, 30300, 230, 12, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Mawile - Vise Grip - Level 21
  (303, 30300, 11, 12, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Mawile - Feint Attack - Level 26
  (303, 30300, 185, 12, NULL, 1, 26, NULL, NULL, NULL, 6),
  -- Mawile - Baton Pass - Level 31
  (303, 30300, 226, 12, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Mawile - Crunch - Level 36
  (303, 30300, 242, 12, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Mawile - Iron Defense - Level 41
  (303, 30300, 334, 12, NULL, 1, 41, NULL, NULL, NULL, 9),
  -- Mawile - Sucker Punch - Level 46
  (303, 30300, 389, 12, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Mawile - Stockpile - Level 51
  (303, 30300, 254, 12, NULL, 1, 51, NULL, NULL, NULL, 11),
  -- Mawile - Swallow - Level 51
  (303, 30300, 256, 12, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Mawile - Spit Up - Level 51
  (303, 30300, 255, 12, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Mawile - Iron Head - Level 56
  (303, 30300, 442, 12, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Mawile - Toxic - TM06
  (303, 30300, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Mawile - Hidden Power - TM10
  (303, 30300, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 16),
  -- Mawile - Sunny Day - TM11
  (303, 30300, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 17),
  -- Mawile - Taunt - TM12
  (303, 30300, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 18),
  -- Mawile - Ice Beam - TM13
  (303, 30300, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 19),
  -- Mawile - Hyper Beam - TM15
  (303, 30300, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 20),
  -- Mawile - Protect - TM17
  (303, 30300, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 21),
  -- Mawile - Rain Dance - TM18
  (303, 30300, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 22),
  -- Mawile - Frustration - TM21
  (303, 30300, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 23),
  -- Mawile - Solar Beam - TM22
  (303, 30300, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 24),
  -- Mawile - Return - TM27
  (303, 30300, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 25),
  -- Mawile - Shadow Ball - TM30
  (303, 30300, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 26),
  -- Mawile - Brick Break - TM31
  (303, 30300, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 27),
  -- Mawile - Double Team - TM32
  (303, 30300, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 28),
  -- Mawile - Flamethrower - TM35
  (303, 30300, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 29),
  -- Mawile - Sludge Bomb - TM36
  (303, 30300, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 30),
  -- Mawile - Sandstorm - TM37
  (303, 30300, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 31),
  -- Mawile - Fire Blast - TM38
  (303, 30300, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 32),
  -- Mawile - Rock Tomb - TM39
  (303, 30300, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 33),
  -- Mawile - Torment - TM41
  (303, 30300, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 34),
  -- Mawile - Facade - TM42
  (303, 30300, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 35),
  -- Mawile - Rest - TM44
  (303, 30300, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 36),
  -- Mawile - Attract - TM45
  (303, 30300, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 37),
  -- Mawile - Round - TM48
  (303, 30300, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 38),
  -- Mawile - Focus Blast - TM52
  (303, 30300, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 39),
  -- Mawile - False Swipe - TM54
  (303, 30300, 206, 12, NULL, 2, NULL, NULL, 12002054, NULL, 40),
  -- Mawile - Fling - TM56
  (303, 30300, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 41),
  -- Mawile - Charge Beam - TM57
  (303, 30300, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 42),
  -- Mawile - Incinerate - TM59
  (303, 30300, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 43),
  -- Mawile - Embargo - TM63
  (303, 30300, 373, 12, NULL, 2, NULL, NULL, 12002063, NULL, 44),
  -- Mawile - Payback - TM66
  (303, 30300, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 45),
  -- Mawile - Giga Impact - TM68
  (303, 30300, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 46),
  -- Mawile - Stone Edge - TM71
  (303, 30300, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 47),
  -- Mawile - Swords Dance - TM75
  (303, 30300, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 48),
  -- Mawile - Psych Up - TM77
  (303, 30300, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 49),
  -- Mawile - Rock Slide - TM80
  (303, 30300, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 50),
  -- Mawile - Grass Knot - TM86
  (303, 30300, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 51),
  -- Mawile - Swagger - TM87
  (303, 30300, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 52),
  -- Mawile - Substitute - TM90
  (303, 30300, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 53),
  -- Mawile - Flash Cannon - TM91
  (303, 30300, 430, 12, NULL, 2, NULL, NULL, 12002091, NULL, 54),
  -- Mawile - Rock Smash - TM94
  (303, 30300, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 55),
  -- Mawile - Strength - HM04
  (303, 30300, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 56),
  -- Mawile - Ancient Power - Egg Move
  (303, 30300, 246, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Mawile - Captivate - Egg Move
  (303, 30300, 445, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Mawile - Fire Fang - Egg Move
  (303, 30300, 424, 12, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Mawile - Guard Swap - Egg Move
  (303, 30300, 385, 12, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Mawile - Ice Fang - Egg Move
  (303, 30300, 423, 12, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Mawile - Metal Burst - Egg Move
  (303, 30300, 368, 12, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Mawile - Poison Fang - Egg Move
  (303, 30300, 305, 12, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Mawile - Punishment - Egg Move
  (303, 30300, 386, 12, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Mawile - Slam - Egg Move
  (303, 30300, 21, 12, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Mawile - Sucker Punch - Egg Move
  (303, 30300, 389, 12, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Mawile - Thunder Fang - Egg Move
  (303, 30300, 422, 12, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Mawile - Tickle - Egg Move
  (303, 30300, 321, 12, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Mawile - Dark Pulse - Move Tutor
  (303, 30300, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Mawile - Foul Play - Move Tutor
  (303, 30300, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Mawile - Ice Punch - Move Tutor
  (303, 30300, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Mawile - Icy Wind - Move Tutor
  (303, 30300, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Mawile - Iron Defense - Move Tutor
  (303, 30300, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Mawile - Iron Head - Move Tutor
  (303, 30300, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Mawile - Knock Off - Move Tutor
  (303, 30300, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Mawile - Last Resort - Move Tutor
  (303, 30300, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Mawile - Magnet Rise - Move Tutor
  (303, 30300, 393, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Mawile - Pain Split - Move Tutor
  (303, 30300, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 78),
  -- Mawile - Sleep Talk - Move Tutor
  (303, 30300, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 79),
  -- Mawile - Snatch - Move Tutor
  (303, 30300, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 80),
  -- Mawile - Snore - Move Tutor
  (303, 30300, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 81),
  -- Mawile - Stealth Rock - Move Tutor
  (303, 30300, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 82),
  -- Mawile - Super Fang - Move Tutor
  (303, 30300, 162, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 83),
  -- Mawile - Thunder Punch - Move Tutor
  (303, 30300, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 84),
  -- Aron - Tackle - Level 1
  (304, 30400, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aron - Harden - Level 1
  (304, 30400, 106, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Aron - Mud-Slap - Level 4
  (304, 30400, 189, 12, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Aron - Headbutt - Level 8
  (304, 30400, 29, 12, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Aron - Metal Claw - Level 11
  (304, 30400, 232, 12, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Aron - Iron Defense - Level 15
  (304, 30400, 334, 12, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Aron - Roar - Level 18
  (304, 30400, 46, 12, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Aron - Take Down - Level 22
  (304, 30400, 36, 12, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Aron - Iron Head - Level 25
  (304, 30400, 442, 12, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Aron - Protect - Level 29
  (304, 30400, 182, 12, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Aron - Metal Sound - Level 32
  (304, 30400, 319, 12, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Aron - Iron Tail - Level 36
  (304, 30400, 231, 12, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Aron - Autotomize - Level 39
  (304, 30400, 475, 12, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Aron - Heavy Slam - Level 43
  (304, 30400, 484, 12, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Aron - Double-Edge - Level 46
  (304, 30400, 38, 12, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Aron - Metal Burst - Level 50
  (304, 30400, 368, 12, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Aron - Hone Claws - TM01
  (304, 30400, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 17),
  -- Aron - Roar - TM05
  (304, 30400, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 18),
  -- Aron - Toxic - TM06
  (304, 30400, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Aron - Hidden Power - TM10
  (304, 30400, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Aron - Sunny Day - TM11
  (304, 30400, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 21),
  -- Aron - Protect - TM17
  (304, 30400, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 22),
  -- Aron - Rain Dance - TM18
  (304, 30400, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 23),
  -- Aron - Frustration - TM21
  (304, 30400, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 24),
  -- Aron - Earthquake - TM26
  (304, 30400, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 25),
  -- Aron - Return - TM27
  (304, 30400, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 26),
  -- Aron - Dig - TM28
  (304, 30400, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 27),
  -- Aron - Double Team - TM32
  (304, 30400, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 28),
  -- Aron - Sandstorm - TM37
  (304, 30400, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 29),
  -- Aron - Rock Tomb - TM39
  (304, 30400, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 30),
  -- Aron - Aerial Ace - TM40
  (304, 30400, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 31),
  -- Aron - Facade - TM42
  (304, 30400, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 32),
  -- Aron - Rest - TM44
  (304, 30400, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 33),
  -- Aron - Attract - TM45
  (304, 30400, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 34),
  -- Aron - Round - TM48
  (304, 30400, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 35),
  -- Aron - Shadow Claw - TM65
  (304, 30400, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 36),
  -- Aron - Rock Polish - TM69
  (304, 30400, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 37),
  -- Aron - Bulldoze - TM78
  (304, 30400, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 38),
  -- Aron - Rock Slide - TM80
  (304, 30400, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 39),
  -- Aron - Swagger - TM87
  (304, 30400, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 40),
  -- Aron - Substitute - TM90
  (304, 30400, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 41),
  -- Aron - Rock Smash - TM94
  (304, 30400, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 42),
  -- Aron - Cut - HM01
  (304, 30400, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 43),
  -- Aron - Strength - HM04
  (304, 30400, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 44),
  -- Aron - Body Slam - Egg Move
  (304, 30400, 34, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Aron - Curse - Egg Move
  (304, 30400, 174, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Aron - Dragon Rush - Egg Move
  (304, 30400, 407, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Aron - Endeavor - Egg Move
  (304, 30400, 283, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Aron - Head Smash - Egg Move
  (304, 30400, 457, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Aron - Iron Head - Egg Move
  (304, 30400, 442, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Aron - Screech - Egg Move
  (304, 30400, 103, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Aron - Smelling Salts - Egg Move
  (304, 30400, 265, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Aron - Stealth Rock - Egg Move
  (304, 30400, 446, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Aron - Stomp - Egg Move
  (304, 30400, 23, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Aron - Superpower - Egg Move
  (304, 30400, 276, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Aron - Earth Power - Move Tutor
  (304, 30400, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Aron - Endeavor - Move Tutor
  (304, 30400, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Aron - Iron Defense - Move Tutor
  (304, 30400, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Aron - Iron Head - Move Tutor
  (304, 30400, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Aron - Iron Tail - Move Tutor
  (304, 30400, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Aron - Magnet Rise - Move Tutor
  (304, 30400, 393, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Aron - Sleep Talk - Move Tutor
  (304, 30400, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Aron - Snore - Move Tutor
  (304, 30400, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Aron - Spite - Move Tutor
  (304, 30400, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Aron - Stealth Rock - Move Tutor
  (304, 30400, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Aron - Superpower - Move Tutor
  (304, 30400, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Aron - Uproar - Move Tutor
  (304, 30400, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Lairon - Tackle - Level 1
  (305, 30500, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lairon - Harden - Level 1
  (305, 30500, 106, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lairon - Mud-Slap - Level 1
  (305, 30500, 189, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lairon - Headbutt - Level 1
  (305, 30500, 29, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lairon - Mud-Slap - Level 4
  (305, 30500, 189, 12, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Lairon - Headbutt - Level 8
  (305, 30500, 29, 12, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Lairon - Metal Claw - Level 11
  (305, 30500, 232, 12, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Lairon - Iron Defense - Level 15
  (305, 30500, 334, 12, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Lairon - Roar - Level 18
  (305, 30500, 46, 12, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Lairon - Take Down - Level 22
  (305, 30500, 36, 12, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Lairon - Iron Head - Level 25
  (305, 30500, 442, 12, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Lairon - Protect - Level 29
  (305, 30500, 182, 12, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Lairon - Metal Sound - Level 34
  (305, 30500, 319, 12, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Lairon - Iron Tail - Level 40
  (305, 30500, 231, 12, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Lairon - Autotomize - Level 45
  (305, 30500, 475, 12, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Lairon - Heavy Slam - Level 51
  (305, 30500, 484, 12, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Lairon - Double-Edge - Level 56
  (305, 30500, 38, 12, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Lairon - Metal Burst - Level 62
  (305, 30500, 368, 12, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Lairon - Hone Claws - TM01
  (305, 30500, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 19),
  -- Lairon - Roar - TM05
  (305, 30500, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 20),
  -- Lairon - Toxic - TM06
  (305, 30500, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 21),
  -- Lairon - Hidden Power - TM10
  (305, 30500, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 22),
  -- Lairon - Sunny Day - TM11
  (305, 30500, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 23),
  -- Lairon - Protect - TM17
  (305, 30500, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 24),
  -- Lairon - Rain Dance - TM18
  (305, 30500, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 25),
  -- Lairon - Frustration - TM21
  (305, 30500, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Lairon - Earthquake - TM26
  (305, 30500, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 27),
  -- Lairon - Return - TM27
  (305, 30500, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 28),
  -- Lairon - Dig - TM28
  (305, 30500, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 29),
  -- Lairon - Double Team - TM32
  (305, 30500, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 30),
  -- Lairon - Sandstorm - TM37
  (305, 30500, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 31),
  -- Lairon - Rock Tomb - TM39
  (305, 30500, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 32),
  -- Lairon - Aerial Ace - TM40
  (305, 30500, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 33),
  -- Lairon - Facade - TM42
  (305, 30500, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 34),
  -- Lairon - Rest - TM44
  (305, 30500, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 35),
  -- Lairon - Attract - TM45
  (305, 30500, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 36),
  -- Lairon - Round - TM48
  (305, 30500, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 37),
  -- Lairon - Shadow Claw - TM65
  (305, 30500, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 38),
  -- Lairon - Rock Polish - TM69
  (305, 30500, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 39),
  -- Lairon - Stone Edge - TM71
  (305, 30500, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 40),
  -- Lairon - Bulldoze - TM78
  (305, 30500, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 41),
  -- Lairon - Rock Slide - TM80
  (305, 30500, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 42),
  -- Lairon - Swagger - TM87
  (305, 30500, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 43),
  -- Lairon - Substitute - TM90
  (305, 30500, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 44),
  -- Lairon - Rock Smash - TM94
  (305, 30500, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 45),
  -- Lairon - Cut - HM01
  (305, 30500, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 46),
  -- Lairon - Strength - HM04
  (305, 30500, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 47),
  -- Lairon - Earth Power - Move Tutor
  (305, 30500, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Lairon - Endeavor - Move Tutor
  (305, 30500, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Lairon - Iron Defense - Move Tutor
  (305, 30500, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Lairon - Iron Head - Move Tutor
  (305, 30500, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Lairon - Iron Tail - Move Tutor
  (305, 30500, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Lairon - Magnet Rise - Move Tutor
  (305, 30500, 393, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Lairon - Sleep Talk - Move Tutor
  (305, 30500, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Lairon - Snore - Move Tutor
  (305, 30500, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Lairon - Spite - Move Tutor
  (305, 30500, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Lairon - Stealth Rock - Move Tutor
  (305, 30500, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Lairon - Superpower - Move Tutor
  (305, 30500, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Lairon - Uproar - Move Tutor
  (305, 30500, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Aggron - Tackle - Level 1
  (306, 30600, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aggron - Harden - Level 1
  (306, 30600, 106, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Aggron - Mud-Slap - Level 1
  (306, 30600, 189, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Aggron - Headbutt - Level 1
  (306, 30600, 29, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Aggron - Mud-Slap - Level 4
  (306, 30600, 189, 12, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Aggron - Headbutt - Level 8
  (306, 30600, 29, 12, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Aggron - Metal Claw - Level 11
  (306, 30600, 232, 12, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Aggron - Iron Defense - Level 15
  (306, 30600, 334, 12, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Aggron - Roar - Level 18
  (306, 30600, 46, 12, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Aggron - Take Down - Level 22
  (306, 30600, 36, 12, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Aggron - Iron Head - Level 25
  (306, 30600, 442, 12, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Aggron - Protect - Level 29
  (306, 30600, 182, 12, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Aggron - Metal Sound - Level 34
  (306, 30600, 319, 12, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Aggron - Iron Tail - Level 40
  (306, 30600, 231, 12, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Aggron - Autotomize - Level 48
  (306, 30600, 475, 12, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Aggron - Heavy Slam - Level 57
  (306, 30600, 484, 12, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Aggron - Double-Edge - Level 65
  (306, 30600, 38, 12, NULL, 1, 65, NULL, NULL, NULL, 17),
  -- Aggron - Metal Burst - Level 74
  (306, 30600, 368, 12, NULL, 1, 74, NULL, NULL, NULL, 18),
  -- Aggron - Hone Claws - TM01
  (306, 30600, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 19),
  -- Aggron - Dragon Claw - TM02
  (306, 30600, 337, 12, NULL, 2, NULL, NULL, 12002002, NULL, 20),
  -- Aggron - Roar - TM05
  (306, 30600, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 21),
  -- Aggron - Toxic - TM06
  (306, 30600, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 22),
  -- Aggron - Hidden Power - TM10
  (306, 30600, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 23),
  -- Aggron - Sunny Day - TM11
  (306, 30600, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 24),
  -- Aggron - Taunt - TM12
  (306, 30600, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 25),
  -- Aggron - Ice Beam - TM13
  (306, 30600, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 26),
  -- Aggron - Blizzard - TM14
  (306, 30600, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 27),
  -- Aggron - Hyper Beam - TM15
  (306, 30600, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 28),
  -- Aggron - Protect - TM17
  (306, 30600, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 29),
  -- Aggron - Rain Dance - TM18
  (306, 30600, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 30),
  -- Aggron - Frustration - TM21
  (306, 30600, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 31),
  -- Aggron - Solar Beam - TM22
  (306, 30600, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 32),
  -- Aggron - Smack Down - TM23
  (306, 30600, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 33),
  -- Aggron - Thunderbolt - TM24
  (306, 30600, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 34),
  -- Aggron - Thunder - TM25
  (306, 30600, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 35),
  -- Aggron - Earthquake - TM26
  (306, 30600, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 36),
  -- Aggron - Return - TM27
  (306, 30600, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 37),
  -- Aggron - Dig - TM28
  (306, 30600, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 38),
  -- Aggron - Brick Break - TM31
  (306, 30600, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 39),
  -- Aggron - Double Team - TM32
  (306, 30600, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 40),
  -- Aggron - Flamethrower - TM35
  (306, 30600, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 41),
  -- Aggron - Sandstorm - TM37
  (306, 30600, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 42),
  -- Aggron - Fire Blast - TM38
  (306, 30600, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 43),
  -- Aggron - Rock Tomb - TM39
  (306, 30600, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 44),
  -- Aggron - Aerial Ace - TM40
  (306, 30600, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 45),
  -- Aggron - Facade - TM42
  (306, 30600, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 46),
  -- Aggron - Rest - TM44
  (306, 30600, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 47),
  -- Aggron - Attract - TM45
  (306, 30600, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 48),
  -- Aggron - Round - TM48
  (306, 30600, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 49),
  -- Aggron - Focus Blast - TM52
  (306, 30600, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 50),
  -- Aggron - Fling - TM56
  (306, 30600, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 51),
  -- Aggron - Incinerate - TM59
  (306, 30600, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 52),
  -- Aggron - Shadow Claw - TM65
  (306, 30600, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 53),
  -- Aggron - Payback - TM66
  (306, 30600, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 54),
  -- Aggron - Giga Impact - TM68
  (306, 30600, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 55),
  -- Aggron - Rock Polish - TM69
  (306, 30600, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 56),
  -- Aggron - Stone Edge - TM71
  (306, 30600, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 57),
  -- Aggron - Thunder Wave - TM73
  (306, 30600, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 58),
  -- Aggron - Bulldoze - TM78
  (306, 30600, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 59),
  -- Aggron - Rock Slide - TM80
  (306, 30600, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 60),
  -- Aggron - Dragon Tail - TM82
  (306, 30600, 525, 12, NULL, 2, NULL, NULL, 12002082, NULL, 61),
  -- Aggron - Swagger - TM87
  (306, 30600, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 62),
  -- Aggron - Substitute - TM90
  (306, 30600, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 63),
  -- Aggron - Flash Cannon - TM91
  (306, 30600, 430, 12, NULL, 2, NULL, NULL, 12002091, NULL, 64),
  -- Aggron - Rock Smash - TM94
  (306, 30600, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 65),
  -- Aggron - Cut - HM01
  (306, 30600, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 66),
  -- Aggron - Surf - HM03
  (306, 30600, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 67),
  -- Aggron - Strength - HM04
  (306, 30600, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 68),
  -- Aggron - Aqua Tail - Move Tutor
  (306, 30600, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Aggron - Block - Move Tutor
  (306, 30600, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Aggron - Dark Pulse - Move Tutor
  (306, 30600, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Aggron - Dragon Pulse - Move Tutor
  (306, 30600, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Aggron - Earth Power - Move Tutor
  (306, 30600, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Aggron - Endeavor - Move Tutor
  (306, 30600, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Aggron - Fire Punch - Move Tutor
  (306, 30600, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Aggron - Ice Punch - Move Tutor
  (306, 30600, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Aggron - Icy Wind - Move Tutor
  (306, 30600, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Aggron - Iron Defense - Move Tutor
  (306, 30600, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 78),
  -- Aggron - Iron Head - Move Tutor
  (306, 30600, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 79),
  -- Aggron - Iron Tail - Move Tutor
  (306, 30600, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 80),
  -- Aggron - Low Kick - Move Tutor
  (306, 30600, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 81),
  -- Aggron - Magnet Rise - Move Tutor
  (306, 30600, 393, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 82),
  -- Aggron - Outrage - Move Tutor
  (306, 30600, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 83),
  -- Aggron - Sleep Talk - Move Tutor
  (306, 30600, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 84),
  -- Aggron - Snore - Move Tutor
  (306, 30600, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 85),
  -- Aggron - Spite - Move Tutor
  (306, 30600, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 86),
  -- Aggron - Stealth Rock - Move Tutor
  (306, 30600, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 87),
  -- Aggron - Superpower - Move Tutor
  (306, 30600, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 88),
  -- Aggron - Thunder Punch - Move Tutor
  (306, 30600, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 89),
  -- Aggron - Uproar - Move Tutor
  (306, 30600, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 90),
  -- Meditite - Bide - Level 1
  (307, 30700, 117, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meditite - Meditate - Level 4
  (307, 30700, 96, 12, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Meditite - Confusion - Level 8
  (307, 30700, 93, 12, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Meditite - Detect - Level 11
  (307, 30700, 197, 12, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Meditite - Hidden Power - Level 15
  (307, 30700, 237, 12, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Meditite - Mind Reader - Level 18
  (307, 30700, 170, 12, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Meditite - Feint - Level 22
  (307, 30700, 364, 12, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Meditite - Calm Mind - Level 25
  (307, 30700, 347, 12, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Meditite - Force Palm - Level 29
  (307, 30700, 395, 12, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Meditite - High Jump Kick - Level 32
  (307, 30700, 136, 12, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Meditite - Psych Up - Level 36
  (307, 30700, 244, 12, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Meditite - Acupressure - Level 39
  (307, 30700, 367, 12, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Meditite - Power Trick - Level 43
  (307, 30700, 379, 12, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Meditite - Reversal - Level 46
  (307, 30700, 179, 12, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Meditite - Recover - Level 50
  (307, 30700, 105, 12, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Meditite - Psyshock - TM03
  (307, 30700, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 16),
  -- Meditite - Calm Mind - TM04
  (307, 30700, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 17),
  -- Meditite - Toxic - TM06
  (307, 30700, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 18),
  -- Meditite - Bulk Up - TM08
  (307, 30700, 339, 12, NULL, 2, NULL, NULL, 12002008, NULL, 19),
  -- Meditite - Hidden Power - TM10
  (307, 30700, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Meditite - Sunny Day - TM11
  (307, 30700, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 21),
  -- Meditite - Light Screen - TM16
  (307, 30700, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 22),
  -- Meditite - Protect - TM17
  (307, 30700, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Meditite - Rain Dance - TM18
  (307, 30700, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 24),
  -- Meditite - Telekinesis - TM19
  (307, 30700, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 25),
  -- Meditite - Frustration - TM21
  (307, 30700, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Meditite - Return - TM27
  (307, 30700, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 27),
  -- Meditite - Psychic - TM29
  (307, 30700, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 28),
  -- Meditite - Shadow Ball - TM30
  (307, 30700, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 29),
  -- Meditite - Brick Break - TM31
  (307, 30700, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 30),
  -- Meditite - Double Team - TM32
  (307, 30700, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 31),
  -- Meditite - Reflect - TM33
  (307, 30700, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 32),
  -- Meditite - Rock Tomb - TM39
  (307, 30700, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 33),
  -- Meditite - Facade - TM42
  (307, 30700, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 34),
  -- Meditite - Rest - TM44
  (307, 30700, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 35),
  -- Meditite - Attract - TM45
  (307, 30700, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 36),
  -- Meditite - Low Sweep - TM47
  (307, 30700, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 37),
  -- Meditite - Round - TM48
  (307, 30700, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 38),
  -- Meditite - Focus Blast - TM52
  (307, 30700, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 39),
  -- Meditite - Fling - TM56
  (307, 30700, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 40),
  -- Meditite - Retaliate - TM67
  (307, 30700, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 41),
  -- Meditite - Flash - TM70
  (307, 30700, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 42),
  -- Meditite - Psych Up - TM77
  (307, 30700, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 43),
  -- Meditite - Rock Slide - TM80
  (307, 30700, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 44),
  -- Meditite - Work Up - TM83
  (307, 30700, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 45),
  -- Meditite - Poison Jab - TM84
  (307, 30700, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 46),
  -- Meditite - Dream Eater - TM85
  (307, 30700, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 47),
  -- Meditite - Grass Knot - TM86
  (307, 30700, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 48),
  -- Meditite - Swagger - TM87
  (307, 30700, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 49),
  -- Meditite - Substitute - TM90
  (307, 30700, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 50),
  -- Meditite - Rock Smash - TM94
  (307, 30700, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 51),
  -- Meditite - Strength - HM04
  (307, 30700, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 52),
  -- Meditite - Baton Pass - Egg Move
  (307, 30700, 226, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Meditite - Bullet Punch - Egg Move
  (307, 30700, 418, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Meditite - Drain Punch - Egg Move
  (307, 30700, 409, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Meditite - Dynamic Punch - Egg Move
  (307, 30700, 223, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Meditite - Fake Out - Egg Move
  (307, 30700, 252, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Meditite - Fire Punch - Egg Move
  (307, 30700, 7, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Meditite - Foresight - Egg Move
  (307, 30700, 193, 12, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Meditite - Guard Swap - Egg Move
  (307, 30700, 385, 12, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Meditite - Ice Punch - Egg Move
  (307, 30700, 8, 12, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Meditite - Power Swap - Egg Move
  (307, 30700, 384, 12, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Meditite - Psycho Cut - Egg Move
  (307, 30700, 427, 12, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Meditite - Secret Power - Egg Move
  (307, 30700, 290, 12, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Meditite - Thunder Punch - Egg Move
  (307, 30700, 9, 12, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Meditite - Drain Punch - Move Tutor
  (307, 30700, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Meditite - Fire Punch - Move Tutor
  (307, 30700, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Meditite - Gravity - Move Tutor
  (307, 30700, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Meditite - Helping Hand - Move Tutor
  (307, 30700, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Meditite - Ice Punch - Move Tutor
  (307, 30700, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Meditite - Low Kick - Move Tutor
  (307, 30700, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Meditite - Magic Coat - Move Tutor
  (307, 30700, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Meditite - Pain Split - Move Tutor
  (307, 30700, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Meditite - Recycle - Move Tutor
  (307, 30700, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Meditite - Role Play - Move Tutor
  (307, 30700, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Meditite - Signal Beam - Move Tutor
  (307, 30700, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Meditite - Sleep Talk - Move Tutor
  (307, 30700, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Meditite - Snore - Move Tutor
  (307, 30700, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 78),
  -- Meditite - Thunder Punch - Move Tutor
  (307, 30700, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 79),
  -- Meditite - Trick - Move Tutor
  (307, 30700, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 80),
  -- Meditite - Zen Headbutt - Move Tutor
  (307, 30700, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 81),
  -- Medicham - Fire Punch - Level 1
  (308, 30800, 7, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Medicham - Thunder Punch - Level 1
  (308, 30800, 9, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Medicham - Ice Punch - Level 1
  (308, 30800, 8, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Medicham - Bide - Level 1
  (308, 30800, 117, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Medicham - Meditate - Level 1
  (308, 30800, 96, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Medicham - Confusion - Level 1
  (308, 30800, 93, 12, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Medicham - Detect - Level 1
  (308, 30800, 197, 12, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Medicham - Meditate - Level 4
  (308, 30800, 96, 12, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Medicham - Confusion - Level 8
  (308, 30800, 93, 12, NULL, 1, 8, NULL, NULL, NULL, 9),
  -- Medicham - Detect - Level 11
  (308, 30800, 197, 12, NULL, 1, 11, NULL, NULL, NULL, 10),
  -- Medicham - Hidden Power - Level 15
  (308, 30800, 237, 12, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Medicham - Mind Reader - Level 18
  (308, 30800, 170, 12, NULL, 1, 18, NULL, NULL, NULL, 12),
  -- Medicham - Feint - Level 22
  (308, 30800, 364, 12, NULL, 1, 22, NULL, NULL, NULL, 13),
  -- Medicham - Calm Mind - Level 25
  (308, 30800, 347, 12, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Medicham - Force Palm - Level 29
  (308, 30800, 395, 12, NULL, 1, 29, NULL, NULL, NULL, 15),
  -- Medicham - High Jump Kick - Level 32
  (308, 30800, 136, 12, NULL, 1, 32, NULL, NULL, NULL, 16),
  -- Medicham - Psych Up - Level 36
  (308, 30800, 244, 12, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Medicham - Acupressure - Level 42
  (308, 30800, 367, 12, NULL, 1, 42, NULL, NULL, NULL, 18),
  -- Medicham - Power Trick - Level 49
  (308, 30800, 379, 12, NULL, 1, 49, NULL, NULL, NULL, 19),
  -- Medicham - Reversal - Level 55
  (308, 30800, 179, 12, NULL, 1, 55, NULL, NULL, NULL, 20),
  -- Medicham - Recover - Level 62
  (308, 30800, 105, 12, NULL, 1, 62, NULL, NULL, NULL, 21),
  -- Medicham - Psyshock - TM03
  (308, 30800, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 22),
  -- Medicham - Calm Mind - TM04
  (308, 30800, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 23),
  -- Medicham - Toxic - TM06
  (308, 30800, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 24),
  -- Medicham - Bulk Up - TM08
  (308, 30800, 339, 12, NULL, 2, NULL, NULL, 12002008, NULL, 25),
  -- Medicham - Hidden Power - TM10
  (308, 30800, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 26),
  -- Medicham - Sunny Day - TM11
  (308, 30800, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 27),
  -- Medicham - Hyper Beam - TM15
  (308, 30800, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 28),
  -- Medicham - Light Screen - TM16
  (308, 30800, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 29),
  -- Medicham - Protect - TM17
  (308, 30800, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 30),
  -- Medicham - Rain Dance - TM18
  (308, 30800, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 31),
  -- Medicham - Telekinesis - TM19
  (308, 30800, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 32),
  -- Medicham - Frustration - TM21
  (308, 30800, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 33),
  -- Medicham - Return - TM27
  (308, 30800, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 34),
  -- Medicham - Psychic - TM29
  (308, 30800, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 35),
  -- Medicham - Shadow Ball - TM30
  (308, 30800, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 36),
  -- Medicham - Brick Break - TM31
  (308, 30800, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 37),
  -- Medicham - Double Team - TM32
  (308, 30800, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 38),
  -- Medicham - Reflect - TM33
  (308, 30800, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 39),
  -- Medicham - Rock Tomb - TM39
  (308, 30800, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 40),
  -- Medicham - Facade - TM42
  (308, 30800, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 41),
  -- Medicham - Rest - TM44
  (308, 30800, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 42),
  -- Medicham - Attract - TM45
  (308, 30800, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 43),
  -- Medicham - Low Sweep - TM47
  (308, 30800, 490, 12, NULL, 2, NULL, NULL, 12002047, NULL, 44),
  -- Medicham - Round - TM48
  (308, 30800, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 45),
  -- Medicham - Focus Blast - TM52
  (308, 30800, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 46),
  -- Medicham - Energy Ball - TM53
  (308, 30800, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 47),
  -- Medicham - Fling - TM56
  (308, 30800, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 48),
  -- Medicham - Retaliate - TM67
  (308, 30800, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 49),
  -- Medicham - Giga Impact - TM68
  (308, 30800, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 50),
  -- Medicham - Flash - TM70
  (308, 30800, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 51),
  -- Medicham - Psych Up - TM77
  (308, 30800, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 52),
  -- Medicham - Rock Slide - TM80
  (308, 30800, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 53),
  -- Medicham - Work Up - TM83
  (308, 30800, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 54),
  -- Medicham - Poison Jab - TM84
  (308, 30800, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 55),
  -- Medicham - Dream Eater - TM85
  (308, 30800, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 56),
  -- Medicham - Grass Knot - TM86
  (308, 30800, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 57),
  -- Medicham - Swagger - TM87
  (308, 30800, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 58),
  -- Medicham - Substitute - TM90
  (308, 30800, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 59),
  -- Medicham - Rock Smash - TM94
  (308, 30800, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 60),
  -- Medicham - Strength - HM04
  (308, 30800, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 61),
  -- Medicham - Drain Punch - Move Tutor
  (308, 30800, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Medicham - Fire Punch - Move Tutor
  (308, 30800, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Medicham - Gravity - Move Tutor
  (308, 30800, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Medicham - Helping Hand - Move Tutor
  (308, 30800, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Medicham - Ice Punch - Move Tutor
  (308, 30800, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Medicham - Low Kick - Move Tutor
  (308, 30800, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Medicham - Magic Coat - Move Tutor
  (308, 30800, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Medicham - Pain Split - Move Tutor
  (308, 30800, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Medicham - Recycle - Move Tutor
  (308, 30800, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Medicham - Role Play - Move Tutor
  (308, 30800, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Medicham - Signal Beam - Move Tutor
  (308, 30800, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Medicham - Sleep Talk - Move Tutor
  (308, 30800, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Medicham - Snore - Move Tutor
  (308, 30800, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Medicham - Thunder Punch - Move Tutor
  (308, 30800, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Medicham - Trick - Move Tutor
  (308, 30800, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Medicham - Zen Headbutt - Move Tutor
  (308, 30800, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Electrike - Tackle - Level 1
  (309, 30900, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electrike - Thunder Wave - Level 4
  (309, 30900, 86, 12, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Electrike - Leer - Level 9
  (309, 30900, 43, 12, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Electrike - Howl - Level 12
  (309, 30900, 336, 12, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Electrike - Quick Attack - Level 17
  (309, 30900, 98, 12, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Electrike - Spark - Level 20
  (309, 30900, 209, 12, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Electrike - Odor Sleuth - Level 25
  (309, 30900, 316, 12, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Electrike - Bite - Level 28
  (309, 30900, 44, 12, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Electrike - Thunder Fang - Level 33
  (309, 30900, 422, 12, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Electrike - Roar - Level 36
  (309, 30900, 46, 12, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Electrike - Discharge - Level 41
  (309, 30900, 435, 12, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Electrike - Charge - Level 44
  (309, 30900, 268, 12, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Electrike - Wild Charge - Level 49
  (309, 30900, 528, 12, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Electrike - Thunder - Level 52
  (309, 30900, 87, 12, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Electrike - Roar - TM05
  (309, 30900, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 15),
  -- Electrike - Toxic - TM06
  (309, 30900, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Electrike - Hidden Power - TM10
  (309, 30900, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Electrike - Light Screen - TM16
  (309, 30900, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 18),
  -- Electrike - Protect - TM17
  (309, 30900, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 19),
  -- Electrike - Rain Dance - TM18
  (309, 30900, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 20),
  -- Electrike - Frustration - TM21
  (309, 30900, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 21),
  -- Electrike - Thunderbolt - TM24
  (309, 30900, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 22),
  -- Electrike - Thunder - TM25
  (309, 30900, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 23),
  -- Electrike - Return - TM27
  (309, 30900, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 24),
  -- Electrike - Double Team - TM32
  (309, 30900, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 25),
  -- Electrike - Flamethrower - TM35
  (309, 30900, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 26),
  -- Electrike - Facade - TM42
  (309, 30900, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 27),
  -- Electrike - Rest - TM44
  (309, 30900, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 28),
  -- Electrike - Attract - TM45
  (309, 30900, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 29),
  -- Electrike - Thief - TM46
  (309, 30900, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 30),
  -- Electrike - Round - TM48
  (309, 30900, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 31),
  -- Electrike - Charge Beam - TM57
  (309, 30900, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 32),
  -- Electrike - Flash - TM70
  (309, 30900, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 33),
  -- Electrike - Volt Switch - TM72
  (309, 30900, 521, 12, NULL, 2, NULL, NULL, 12002072, NULL, 34),
  -- Electrike - Thunder Wave - TM73
  (309, 30900, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 35),
  -- Electrike - Swagger - TM87
  (309, 30900, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 36),
  -- Electrike - Substitute - TM90
  (309, 30900, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 37),
  -- Electrike - Wild Charge - TM93
  (309, 30900, 528, 12, NULL, 2, NULL, NULL, 12002093, NULL, 38),
  -- Electrike - Snarl - TM95
  (309, 30900, 555, 12, NULL, 2, NULL, NULL, 12002095, NULL, 39),
  -- Electrike - Strength - HM04
  (309, 30900, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 40),
  -- Electrike - Crunch - Egg Move
  (309, 30900, 242, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Electrike - Curse - Egg Move
  (309, 30900, 174, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Electrike - Discharge - Egg Move
  (309, 30900, 435, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Electrike - Electro Ball - Egg Move
  (309, 30900, 486, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Electrike - Fire Fang - Egg Move
  (309, 30900, 424, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Electrike - Flame Burst - Egg Move
  (309, 30900, 481, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Electrike - Headbutt - Egg Move
  (309, 30900, 29, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Electrike - Ice Fang - Egg Move
  (309, 30900, 423, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Electrike - Shock Wave - Egg Move
  (309, 30900, 351, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Electrike - Swift - Egg Move
  (309, 30900, 129, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Electrike - Switcheroo - Egg Move
  (309, 30900, 415, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Electrike - Thunder Fang - Egg Move
  (309, 30900, 422, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Electrike - Uproar - Egg Move
  (309, 30900, 253, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Electrike - Iron Tail - Move Tutor
  (309, 30900, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Electrike - Magnet Rise - Move Tutor
  (309, 30900, 393, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Electrike - Signal Beam - Move Tutor
  (309, 30900, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Electrike - Sleep Talk - Move Tutor
  (309, 30900, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Electrike - Snore - Move Tutor
  (309, 30900, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Electrike - Uproar - Move Tutor
  (309, 30900, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Manectric - Fire Fang - Level 1
  (310, 31000, 424, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Manectric - Tackle - Level 1
  (310, 31000, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Manectric - Thunder Wave - Level 1
  (310, 31000, 86, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Manectric - Leer - Level 1
  (310, 31000, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Manectric - Howl - Level 1
  (310, 31000, 336, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Manectric - Thunder Wave - Level 4
  (310, 31000, 86, 12, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Manectric - Leer - Level 9
  (310, 31000, 43, 12, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Manectric - Howl - Level 12
  (310, 31000, 336, 12, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Manectric - Quick Attack - Level 17
  (310, 31000, 98, 12, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Manectric - Spark - Level 20
  (310, 31000, 209, 12, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Manectric - Odor Sleuth - Level 25
  (310, 31000, 316, 12, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Manectric - Bite - Level 30
  (310, 31000, 44, 12, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Manectric - Thunder Fang - Level 37
  (310, 31000, 422, 12, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Manectric - Roar - Level 42
  (310, 31000, 46, 12, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Manectric - Discharge - Level 49
  (310, 31000, 435, 12, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Manectric - Charge - Level 54
  (310, 31000, 268, 12, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Manectric - Wild Charge - Level 61
  (310, 31000, 528, 12, NULL, 1, 61, NULL, NULL, NULL, 17),
  -- Manectric - Thunder - Level 66
  (310, 31000, 87, 12, NULL, 1, 66, NULL, NULL, NULL, 18),
  -- Manectric - Roar - TM05
  (310, 31000, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 19),
  -- Manectric - Toxic - TM06
  (310, 31000, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 20),
  -- Manectric - Hidden Power - TM10
  (310, 31000, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 21),
  -- Manectric - Hyper Beam - TM15
  (310, 31000, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 22),
  -- Manectric - Light Screen - TM16
  (310, 31000, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 23),
  -- Manectric - Protect - TM17
  (310, 31000, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 24),
  -- Manectric - Rain Dance - TM18
  (310, 31000, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 25),
  -- Manectric - Frustration - TM21
  (310, 31000, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Manectric - Thunderbolt - TM24
  (310, 31000, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 27),
  -- Manectric - Thunder - TM25
  (310, 31000, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 28),
  -- Manectric - Return - TM27
  (310, 31000, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 29),
  -- Manectric - Double Team - TM32
  (310, 31000, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 30),
  -- Manectric - Flamethrower - TM35
  (310, 31000, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 31),
  -- Manectric - Facade - TM42
  (310, 31000, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 32),
  -- Manectric - Rest - TM44
  (310, 31000, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 33),
  -- Manectric - Attract - TM45
  (310, 31000, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 34),
  -- Manectric - Thief - TM46
  (310, 31000, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 35),
  -- Manectric - Round - TM48
  (310, 31000, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 36),
  -- Manectric - Overheat - TM50
  (310, 31000, 315, 12, NULL, 2, NULL, NULL, 12002050, NULL, 37),
  -- Manectric - Charge Beam - TM57
  (310, 31000, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 38),
  -- Manectric - Giga Impact - TM68
  (310, 31000, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 39),
  -- Manectric - Flash - TM70
  (310, 31000, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 40),
  -- Manectric - Volt Switch - TM72
  (310, 31000, 521, 12, NULL, 2, NULL, NULL, 12002072, NULL, 41),
  -- Manectric - Thunder Wave - TM73
  (310, 31000, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 42),
  -- Manectric - Swagger - TM87
  (310, 31000, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 43),
  -- Manectric - Substitute - TM90
  (310, 31000, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 44),
  -- Manectric - Wild Charge - TM93
  (310, 31000, 528, 12, NULL, 2, NULL, NULL, 12002093, NULL, 45),
  -- Manectric - Snarl - TM95
  (310, 31000, 555, 12, NULL, 2, NULL, NULL, 12002095, NULL, 46),
  -- Manectric - Strength - HM04
  (310, 31000, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 47),
  -- Manectric - Iron Tail - Move Tutor
  (310, 31000, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Manectric - Magnet Rise - Move Tutor
  (310, 31000, 393, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Manectric - Signal Beam - Move Tutor
  (310, 31000, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Manectric - Sleep Talk - Move Tutor
  (310, 31000, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Manectric - Snore - Move Tutor
  (310, 31000, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Manectric - Uproar - Move Tutor
  (310, 31000, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Plusle - Growl - Level 1
  (311, 31100, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Plusle - Thunder Wave - Level 3
  (311, 31100, 86, 12, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Plusle - Quick Attack - Level 7
  (311, 31100, 98, 12, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Plusle - Helping Hand - Level 10
  (311, 31100, 270, 12, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Plusle - Spark - Level 15
  (311, 31100, 209, 12, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Plusle - Encore - Level 17
  (311, 31100, 227, 12, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Plusle - Fake Tears - Level 21
  (311, 31100, 313, 12, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Plusle - Copycat - Level 24
  (311, 31100, 383, 12, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Plusle - Electro Ball - Level 29
  (311, 31100, 486, 12, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Plusle - Swift - Level 31
  (311, 31100, 129, 12, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Plusle - Fake Tears - Level 35
  (311, 31100, 313, 12, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Plusle - Charge - Level 38
  (311, 31100, 268, 12, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Plusle - Thunder - Level 42
  (311, 31100, 87, 12, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Plusle - Baton Pass - Level 44
  (311, 31100, 226, 12, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Plusle - Agility - Level 48
  (311, 31100, 97, 12, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Plusle - Last Resort - Level 51
  (311, 31100, 387, 12, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Plusle - Nasty Plot - Level 56
  (311, 31100, 417, 12, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Plusle - Entrainment - Level 63
  (311, 31100, 494, 12, NULL, 1, 63, NULL, NULL, NULL, 18),
  -- Plusle - Toxic - TM06
  (311, 31100, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Plusle - Hidden Power - TM10
  (311, 31100, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Plusle - Light Screen - TM16
  (311, 31100, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 21),
  -- Plusle - Protect - TM17
  (311, 31100, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 22),
  -- Plusle - Rain Dance - TM18
  (311, 31100, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 23),
  -- Plusle - Frustration - TM21
  (311, 31100, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 24),
  -- Plusle - Thunderbolt - TM24
  (311, 31100, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 25),
  -- Plusle - Thunder - TM25
  (311, 31100, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 26),
  -- Plusle - Return - TM27
  (311, 31100, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 27),
  -- Plusle - Double Team - TM32
  (311, 31100, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 28),
  -- Plusle - Facade - TM42
  (311, 31100, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 29),
  -- Plusle - Rest - TM44
  (311, 31100, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 30),
  -- Plusle - Attract - TM45
  (311, 31100, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 31),
  -- Plusle - Round - TM48
  (311, 31100, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 32),
  -- Plusle - Echoed Voice - TM49
  (311, 31100, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 33),
  -- Plusle - Fling - TM56
  (311, 31100, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 34),
  -- Plusle - Charge Beam - TM57
  (311, 31100, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 35),
  -- Plusle - Flash - TM70
  (311, 31100, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 36),
  -- Plusle - Volt Switch - TM72
  (311, 31100, 521, 12, NULL, 2, NULL, NULL, 12002072, NULL, 37),
  -- Plusle - Thunder Wave - TM73
  (311, 31100, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 38),
  -- Plusle - Grass Knot - TM86
  (311, 31100, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 39),
  -- Plusle - Swagger - TM87
  (311, 31100, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 40),
  -- Plusle - Substitute - TM90
  (311, 31100, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 41),
  -- Plusle - Wild Charge - TM93
  (311, 31100, 528, 12, NULL, 2, NULL, NULL, 12002093, NULL, 42),
  -- Plusle - Discharge - Egg Move
  (311, 31100, 435, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Plusle - Lucky Chant - Egg Move
  (311, 31100, 381, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Plusle - Sing - Egg Move
  (311, 31100, 47, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Plusle - Sweet Kiss - Egg Move
  (311, 31100, 186, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Plusle - Wish - Egg Move
  (311, 31100, 273, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Plusle - Helping Hand - Move Tutor
  (311, 31100, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Plusle - Iron Tail - Move Tutor
  (311, 31100, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Plusle - Last Resort - Move Tutor
  (311, 31100, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Plusle - Magnet Rise - Move Tutor
  (311, 31100, 393, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Plusle - Signal Beam - Move Tutor
  (311, 31100, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Plusle - Sleep Talk - Move Tutor
  (311, 31100, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Plusle - Snore - Move Tutor
  (311, 31100, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Plusle - Thunder Punch - Move Tutor
  (311, 31100, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Plusle - Uproar - Move Tutor
  (311, 31100, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Minun - Growl - Level 1
  (312, 31200, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Minun - Thunder Wave - Level 3
  (312, 31200, 86, 12, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Minun - Quick Attack - Level 7
  (312, 31200, 98, 12, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Minun - Helping Hand - Level 10
  (312, 31200, 270, 12, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Minun - Spark - Level 15
  (312, 31200, 209, 12, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Minun - Encore - Level 17
  (312, 31200, 227, 12, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Minun - Charm - Level 21
  (312, 31200, 204, 12, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Minun - Copycat - Level 24
  (312, 31200, 383, 12, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Minun - Electro Ball - Level 29
  (312, 31200, 486, 12, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Minun - Swift - Level 31
  (312, 31200, 129, 12, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Minun - Fake Tears - Level 35
  (312, 31200, 313, 12, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Minun - Charge - Level 38
  (312, 31200, 268, 12, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Minun - Thunder - Level 42
  (312, 31200, 87, 12, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Minun - Baton Pass - Level 44
  (312, 31200, 226, 12, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Minun - Agility - Level 48
  (312, 31200, 97, 12, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Minun - Trump Card - Level 51
  (312, 31200, 376, 12, NULL, 1, 51, NULL, NULL, NULL, 16),
  -- Minun - Nasty Plot - Level 56
  (312, 31200, 417, 12, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Minun - Entrainment - Level 63
  (312, 31200, 494, 12, NULL, 1, 63, NULL, NULL, NULL, 18),
  -- Minun - Toxic - TM06
  (312, 31200, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Minun - Hidden Power - TM10
  (312, 31200, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Minun - Light Screen - TM16
  (312, 31200, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 21),
  -- Minun - Protect - TM17
  (312, 31200, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 22),
  -- Minun - Rain Dance - TM18
  (312, 31200, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 23),
  -- Minun - Frustration - TM21
  (312, 31200, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 24),
  -- Minun - Thunderbolt - TM24
  (312, 31200, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 25),
  -- Minun - Thunder - TM25
  (312, 31200, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 26),
  -- Minun - Return - TM27
  (312, 31200, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 27),
  -- Minun - Double Team - TM32
  (312, 31200, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 28),
  -- Minun - Facade - TM42
  (312, 31200, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 29),
  -- Minun - Rest - TM44
  (312, 31200, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 30),
  -- Minun - Attract - TM45
  (312, 31200, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 31),
  -- Minun - Round - TM48
  (312, 31200, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 32),
  -- Minun - Echoed Voice - TM49
  (312, 31200, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 33),
  -- Minun - Fling - TM56
  (312, 31200, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 34),
  -- Minun - Charge Beam - TM57
  (312, 31200, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 35),
  -- Minun - Flash - TM70
  (312, 31200, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 36),
  -- Minun - Volt Switch - TM72
  (312, 31200, 521, 12, NULL, 2, NULL, NULL, 12002072, NULL, 37),
  -- Minun - Thunder Wave - TM73
  (312, 31200, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 38),
  -- Minun - Grass Knot - TM86
  (312, 31200, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 39),
  -- Minun - Swagger - TM87
  (312, 31200, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 40),
  -- Minun - Substitute - TM90
  (312, 31200, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 41),
  -- Minun - Wild Charge - TM93
  (312, 31200, 528, 12, NULL, 2, NULL, NULL, 12002093, NULL, 42),
  -- Minun - Discharge - Egg Move
  (312, 31200, 435, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Minun - Lucky Chant - Egg Move
  (312, 31200, 381, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Minun - Sing - Egg Move
  (312, 31200, 47, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Minun - Sweet Kiss - Egg Move
  (312, 31200, 186, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Minun - Wish - Egg Move
  (312, 31200, 273, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Minun - Helping Hand - Move Tutor
  (312, 31200, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Minun - Iron Tail - Move Tutor
  (312, 31200, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Minun - Last Resort - Move Tutor
  (312, 31200, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Minun - Magnet Rise - Move Tutor
  (312, 31200, 393, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Minun - Signal Beam - Move Tutor
  (312, 31200, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Minun - Sleep Talk - Move Tutor
  (312, 31200, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Minun - Snore - Move Tutor
  (312, 31200, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Minun - Thunder Punch - Move Tutor
  (312, 31200, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Minun - Uproar - Move Tutor
  (312, 31200, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Volbeat - Flash - Level 1
  (313, 31300, 148, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Volbeat - Tackle - Level 1
  (313, 31300, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Volbeat - Double Team - Level 5
  (313, 31300, 104, 12, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Volbeat - Confuse Ray - Level 9
  (313, 31300, 109, 12, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Volbeat - Moonlight - Level 13
  (313, 31300, 236, 12, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Volbeat - Quick Attack - Level 17
  (313, 31300, 98, 12, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Volbeat - Tail Glow - Level 21
  (313, 31300, 294, 12, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Volbeat - Signal Beam - Level 25
  (313, 31300, 324, 12, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Volbeat - Protect - Level 29
  (313, 31300, 182, 12, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Volbeat - Helping Hand - Level 33
  (313, 31300, 270, 12, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Volbeat - Zen Headbutt - Level 37
  (313, 31300, 428, 12, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Volbeat - Bug Buzz - Level 41
  (313, 31300, 405, 12, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Volbeat - Double-Edge - Level 45
  (313, 31300, 38, 12, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Volbeat - Toxic - TM06
  (313, 31300, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 14),
  -- Volbeat - Hidden Power - TM10
  (313, 31300, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 15),
  -- Volbeat - Sunny Day - TM11
  (313, 31300, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 16),
  -- Volbeat - Light Screen - TM16
  (313, 31300, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 17),
  -- Volbeat - Protect - TM17
  (313, 31300, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 18),
  -- Volbeat - Rain Dance - TM18
  (313, 31300, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 19),
  -- Volbeat - Frustration - TM21
  (313, 31300, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 20),
  -- Volbeat - Solar Beam - TM22
  (313, 31300, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 21),
  -- Volbeat - Thunderbolt - TM24
  (313, 31300, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 22),
  -- Volbeat - Thunder - TM25
  (313, 31300, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 23),
  -- Volbeat - Return - TM27
  (313, 31300, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 24),
  -- Volbeat - Shadow Ball - TM30
  (313, 31300, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 25),
  -- Volbeat - Brick Break - TM31
  (313, 31300, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 26),
  -- Volbeat - Double Team - TM32
  (313, 31300, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 27),
  -- Volbeat - Aerial Ace - TM40
  (313, 31300, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 28),
  -- Volbeat - Facade - TM42
  (313, 31300, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 29),
  -- Volbeat - Rest - TM44
  (313, 31300, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 30),
  -- Volbeat - Attract - TM45
  (313, 31300, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 31),
  -- Volbeat - Thief - TM46
  (313, 31300, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 32),
  -- Volbeat - Round - TM48
  (313, 31300, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 33),
  -- Volbeat - Fling - TM56
  (313, 31300, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 34),
  -- Volbeat - Charge Beam - TM57
  (313, 31300, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 35),
  -- Volbeat - Acrobatics - TM62
  (313, 31300, 512, 12, NULL, 2, NULL, NULL, 12002062, NULL, 36),
  -- Volbeat - Flash - TM70
  (313, 31300, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 37),
  -- Volbeat - Thunder Wave - TM73
  (313, 31300, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 38),
  -- Volbeat - Struggle Bug - TM76
  (313, 31300, 522, 12, NULL, 2, NULL, NULL, 12002076, NULL, 39),
  -- Volbeat - Psych Up - TM77
  (313, 31300, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 40),
  -- Volbeat - Swagger - TM87
  (313, 31300, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 41),
  -- Volbeat - U-turn - TM89
  (313, 31300, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 42),
  -- Volbeat - Substitute - TM90
  (313, 31300, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 43),
  -- Volbeat - Baton Pass - Egg Move
  (313, 31300, 226, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Volbeat - Bug Buzz - Egg Move
  (313, 31300, 405, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Volbeat - Dizzy Punch - Egg Move
  (313, 31300, 146, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Volbeat - Encore - Egg Move
  (313, 31300, 227, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Volbeat - Seismic Toss - Egg Move
  (313, 31300, 69, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Volbeat - Silver Wind - Egg Move
  (313, 31300, 318, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Volbeat - Trick - Egg Move
  (313, 31300, 271, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Volbeat - Bug Bite - Move Tutor
  (313, 31300, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Volbeat - Giga Drain - Move Tutor
  (313, 31300, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Volbeat - Helping Hand - Move Tutor
  (313, 31300, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Volbeat - Ice Punch - Move Tutor
  (313, 31300, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Volbeat - Roost - Move Tutor
  (313, 31300, 355, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Volbeat - Signal Beam - Move Tutor
  (313, 31300, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Volbeat - Sleep Talk - Move Tutor
  (313, 31300, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Volbeat - Snore - Move Tutor
  (313, 31300, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Volbeat - Tailwind - Move Tutor
  (313, 31300, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Volbeat - Thunder Punch - Move Tutor
  (313, 31300, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Volbeat - Trick - Move Tutor
  (313, 31300, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Volbeat - Zen Headbutt - Move Tutor
  (313, 31300, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Illumise - Tackle - Level 1
  (314, 31400, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Illumise - Sweet Scent - Level 5
  (314, 31400, 230, 12, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Illumise - Charm - Level 9
  (314, 31400, 204, 12, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Illumise - Moonlight - Level 13
  (314, 31400, 236, 12, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Illumise - Quick Attack - Level 17
  (314, 31400, 98, 12, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Illumise - Wish - Level 21
  (314, 31400, 273, 12, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Illumise - Encore - Level 25
  (314, 31400, 227, 12, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Illumise - Flatter - Level 29
  (314, 31400, 260, 12, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Illumise - Helping Hand - Level 33
  (314, 31400, 270, 12, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Illumise - Zen Headbutt - Level 37
  (314, 31400, 428, 12, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Illumise - Bug Buzz - Level 41
  (314, 31400, 405, 12, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Illumise - Covet - Level 45
  (314, 31400, 343, 12, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Illumise - Toxic - TM06
  (314, 31400, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 13),
  -- Illumise - Hidden Power - TM10
  (314, 31400, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 14),
  -- Illumise - Sunny Day - TM11
  (314, 31400, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 15),
  -- Illumise - Light Screen - TM16
  (314, 31400, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 16),
  -- Illumise - Protect - TM17
  (314, 31400, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 17),
  -- Illumise - Rain Dance - TM18
  (314, 31400, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 18),
  -- Illumise - Frustration - TM21
  (314, 31400, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 19),
  -- Illumise - Solar Beam - TM22
  (314, 31400, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 20),
  -- Illumise - Thunderbolt - TM24
  (314, 31400, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 21),
  -- Illumise - Thunder - TM25
  (314, 31400, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 22),
  -- Illumise - Return - TM27
  (314, 31400, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 23),
  -- Illumise - Shadow Ball - TM30
  (314, 31400, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 24),
  -- Illumise - Brick Break - TM31
  (314, 31400, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 25),
  -- Illumise - Double Team - TM32
  (314, 31400, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 26),
  -- Illumise - Aerial Ace - TM40
  (314, 31400, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 27),
  -- Illumise - Facade - TM42
  (314, 31400, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 28),
  -- Illumise - Rest - TM44
  (314, 31400, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 29),
  -- Illumise - Attract - TM45
  (314, 31400, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 30),
  -- Illumise - Thief - TM46
  (314, 31400, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 31),
  -- Illumise - Round - TM48
  (314, 31400, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 32),
  -- Illumise - Fling - TM56
  (314, 31400, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 33),
  -- Illumise - Charge Beam - TM57
  (314, 31400, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 34),
  -- Illumise - Acrobatics - TM62
  (314, 31400, 512, 12, NULL, 2, NULL, NULL, 12002062, NULL, 35),
  -- Illumise - Flash - TM70
  (314, 31400, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 36),
  -- Illumise - Thunder Wave - TM73
  (314, 31400, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 37),
  -- Illumise - Struggle Bug - TM76
  (314, 31400, 522, 12, NULL, 2, NULL, NULL, 12002076, NULL, 38),
  -- Illumise - Psych Up - TM77
  (314, 31400, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 39),
  -- Illumise - Swagger - TM87
  (314, 31400, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 40),
  -- Illumise - U-turn - TM89
  (314, 31400, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 41),
  -- Illumise - Substitute - TM90
  (314, 31400, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 42),
  -- Illumise - Baton Pass - Egg Move
  (314, 31400, 226, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Illumise - Bug Buzz - Egg Move
  (314, 31400, 405, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Illumise - Captivate - Egg Move
  (314, 31400, 445, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Illumise - Confuse Ray - Egg Move
  (314, 31400, 109, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Illumise - Encore - Egg Move
  (314, 31400, 227, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Illumise - Fake Tears - Egg Move
  (314, 31400, 313, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Illumise - Growth - Egg Move
  (314, 31400, 74, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Illumise - Silver Wind - Egg Move
  (314, 31400, 318, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Illumise - Bug Bite - Move Tutor
  (314, 31400, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Illumise - Covet - Move Tutor
  (314, 31400, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Illumise - Giga Drain - Move Tutor
  (314, 31400, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Illumise - Helping Hand - Move Tutor
  (314, 31400, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Illumise - Ice Punch - Move Tutor
  (314, 31400, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Illumise - Roost - Move Tutor
  (314, 31400, 355, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Illumise - Sleep Talk - Move Tutor
  (314, 31400, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Illumise - Snore - Move Tutor
  (314, 31400, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Illumise - Tailwind - Move Tutor
  (314, 31400, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Illumise - Thunder Punch - Move Tutor
  (314, 31400, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Illumise - Zen Headbutt - Move Tutor
  (314, 31400, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Roselia - Absorb - Level 1
  (315, 31500, 71, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Roselia - Growth - Level 4
  (315, 31500, 74, 12, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Roselia - Poison Sting - Level 7
  (315, 31500, 40, 12, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Roselia - Stun Spore - Level 10
  (315, 31500, 78, 12, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Roselia - Mega Drain - Level 13
  (315, 31500, 72, 12, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Roselia - Leech Seed - Level 16
  (315, 31500, 73, 12, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Roselia - Magical Leaf - Level 19
  (315, 31500, 345, 12, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Roselia - Grass Whistle - Level 22
  (315, 31500, 320, 12, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Roselia - Giga Drain - Level 25
  (315, 31500, 202, 12, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Roselia - Toxic Spikes - Level 28
  (315, 31500, 390, 12, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Roselia - Sweet Scent - Level 31
  (315, 31500, 230, 12, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Roselia - Ingrain - Level 34
  (315, 31500, 275, 12, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Roselia - Petal Dance - Level 37
  (315, 31500, 80, 12, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Roselia - Toxic - Level 40
  (315, 31500, 92, 12, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Roselia - Aromatherapy - Level 43
  (315, 31500, 312, 12, NULL, 1, 43, NULL, NULL, NULL, 15),
  -- Roselia - Synthesis - Level 46
  (315, 31500, 235, 12, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Roselia - Toxic - TM06
  (315, 31500, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Roselia - Venoshock - TM09
  (315, 31500, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 18),
  -- Roselia - Hidden Power - TM10
  (315, 31500, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 19),
  -- Roselia - Sunny Day - TM11
  (315, 31500, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 20),
  -- Roselia - Protect - TM17
  (315, 31500, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 21),
  -- Roselia - Rain Dance - TM18
  (315, 31500, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 22),
  -- Roselia - Frustration - TM21
  (315, 31500, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 23),
  -- Roselia - Solar Beam - TM22
  (315, 31500, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 24),
  -- Roselia - Return - TM27
  (315, 31500, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 25),
  -- Roselia - Shadow Ball - TM30
  (315, 31500, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 26),
  -- Roselia - Double Team - TM32
  (315, 31500, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 27),
  -- Roselia - Sludge Bomb - TM36
  (315, 31500, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 28),
  -- Roselia - Facade - TM42
  (315, 31500, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 29),
  -- Roselia - Rest - TM44
  (315, 31500, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 30),
  -- Roselia - Attract - TM45
  (315, 31500, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 31),
  -- Roselia - Round - TM48
  (315, 31500, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 32),
  -- Roselia - Energy Ball - TM53
  (315, 31500, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 33),
  -- Roselia - Flash - TM70
  (315, 31500, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 34),
  -- Roselia - Swords Dance - TM75
  (315, 31500, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 35),
  -- Roselia - Psych Up - TM77
  (315, 31500, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 36),
  -- Roselia - Poison Jab - TM84
  (315, 31500, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 37),
  -- Roselia - Grass Knot - TM86
  (315, 31500, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 38),
  -- Roselia - Swagger - TM87
  (315, 31500, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 39),
  -- Roselia - Substitute - TM90
  (315, 31500, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 40),
  -- Roselia - Cut - HM01
  (315, 31500, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 41),
  -- Roselia - Cotton Spore - Egg Move
  (315, 31500, 178, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Roselia - Extrasensory - Egg Move
  (315, 31500, 326, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Roselia - Giga Drain - Egg Move
  (315, 31500, 202, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Roselia - Grass Whistle - Egg Move
  (315, 31500, 320, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Roselia - Leaf Storm - Egg Move
  (315, 31500, 437, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Roselia - Mind Reader - Egg Move
  (315, 31500, 170, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Roselia - Natural Gift - Egg Move
  (315, 31500, 363, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Roselia - Pin Missile - Egg Move
  (315, 31500, 42, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Roselia - Razor Leaf - Egg Move
  (315, 31500, 75, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Roselia - Seed Bomb - Egg Move
  (315, 31500, 402, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Roselia - Sleep Powder - Egg Move
  (315, 31500, 79, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Roselia - Spikes - Egg Move
  (315, 31500, 191, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Roselia - Synthesis - Egg Move
  (315, 31500, 235, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Roselia - Covet - Move Tutor
  (315, 31500, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Roselia - Giga Drain - Move Tutor
  (315, 31500, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Roselia - Seed Bomb - Move Tutor
  (315, 31500, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Roselia - Sleep Talk - Move Tutor
  (315, 31500, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Roselia - Snore - Move Tutor
  (315, 31500, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Roselia - Synthesis - Move Tutor
  (315, 31500, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Roselia - Worry Seed - Move Tutor
  (315, 31500, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Gulpin - Pound - Level 1
  (316, 31600, 1, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gulpin - Yawn - Level 6
  (316, 31600, 281, 12, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Gulpin - Poison Gas - Level 9
  (316, 31600, 139, 12, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Gulpin - Sludge - Level 14
  (316, 31600, 124, 12, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Gulpin - Amnesia - Level 17
  (316, 31600, 133, 12, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Gulpin - Encore - Level 23
  (316, 31600, 227, 12, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Gulpin - Toxic - Level 28
  (316, 31600, 92, 12, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Gulpin - Acid Spray - Level 34
  (316, 31600, 491, 12, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Gulpin - Stockpile - Level 39
  (316, 31600, 254, 12, NULL, 1, 39, NULL, NULL, NULL, 9),
  -- Gulpin - Spit Up - Level 39
  (316, 31600, 255, 12, NULL, 1, 39, NULL, NULL, NULL, 10),
  -- Gulpin - Swallow - Level 39
  (316, 31600, 256, 12, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Gulpin - Sludge Bomb - Level 44
  (316, 31600, 188, 12, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Gulpin - Gastro Acid - Level 49
  (316, 31600, 380, 12, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Gulpin - Wring Out - Level 54
  (316, 31600, 378, 12, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Gulpin - Gunk Shot - Level 59
  (316, 31600, 441, 12, NULL, 1, 59, NULL, NULL, NULL, 15),
  -- Gulpin - Toxic - TM06
  (316, 31600, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Gulpin - Venoshock - TM09
  (316, 31600, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 17),
  -- Gulpin - Hidden Power - TM10
  (316, 31600, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 18),
  -- Gulpin - Sunny Day - TM11
  (316, 31600, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 19),
  -- Gulpin - Ice Beam - TM13
  (316, 31600, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 20),
  -- Gulpin - Protect - TM17
  (316, 31600, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 21),
  -- Gulpin - Rain Dance - TM18
  (316, 31600, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 22),
  -- Gulpin - Frustration - TM21
  (316, 31600, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 23),
  -- Gulpin - Solar Beam - TM22
  (316, 31600, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 24),
  -- Gulpin - Return - TM27
  (316, 31600, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 25),
  -- Gulpin - Shadow Ball - TM30
  (316, 31600, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 26),
  -- Gulpin - Double Team - TM32
  (316, 31600, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 27),
  -- Gulpin - Sludge Wave - TM34
  (316, 31600, 482, 12, NULL, 2, NULL, NULL, 12002034, NULL, 28),
  -- Gulpin - Sludge Bomb - TM36
  (316, 31600, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 29),
  -- Gulpin - Facade - TM42
  (316, 31600, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 30),
  -- Gulpin - Rest - TM44
  (316, 31600, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 31),
  -- Gulpin - Attract - TM45
  (316, 31600, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 32),
  -- Gulpin - Round - TM48
  (316, 31600, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 33),
  -- Gulpin - Explosion - TM64
  (316, 31600, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 34),
  -- Gulpin - Dream Eater - TM85
  (316, 31600, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 35),
  -- Gulpin - Swagger - TM87
  (316, 31600, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 36),
  -- Gulpin - Substitute - TM90
  (316, 31600, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 37),
  -- Gulpin - Rock Smash - TM94
  (316, 31600, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 38),
  -- Gulpin - Strength - HM04
  (316, 31600, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 39),
  -- Gulpin - Acid Armor - Egg Move
  (316, 31600, 151, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Gulpin - Curse - Egg Move
  (316, 31600, 174, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Gulpin - Destiny Bond - Egg Move
  (316, 31600, 194, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Gulpin - Gunk Shot - Egg Move
  (316, 31600, 441, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Gulpin - Mud-Slap - Egg Move
  (316, 31600, 189, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Gulpin - Pain Split - Egg Move
  (316, 31600, 220, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Gulpin - Smog - Egg Move
  (316, 31600, 123, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Gulpin - Fire Punch - Move Tutor
  (316, 31600, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Gulpin - Gastro Acid - Move Tutor
  (316, 31600, 380, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Gulpin - Giga Drain - Move Tutor
  (316, 31600, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Gulpin - Gunk Shot - Move Tutor
  (316, 31600, 441, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Gulpin - Ice Punch - Move Tutor
  (316, 31600, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Gulpin - Pain Split - Move Tutor
  (316, 31600, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Gulpin - Seed Bomb - Move Tutor
  (316, 31600, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Gulpin - Sleep Talk - Move Tutor
  (316, 31600, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Gulpin - Snatch - Move Tutor
  (316, 31600, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Gulpin - Snore - Move Tutor
  (316, 31600, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Gulpin - Thunder Punch - Move Tutor
  (316, 31600, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Swalot - Pound - Level 1
  (317, 31700, 1, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swalot - Yawn - Level 1
  (317, 31700, 281, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swalot - Poison Gas - Level 1
  (317, 31700, 139, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Swalot - Sludge - Level 1
  (317, 31700, 124, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Swalot - Yawn - Level 6
  (317, 31700, 281, 12, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Swalot - Poison Gas - Level 9
  (317, 31700, 139, 12, NULL, 1, 9, NULL, NULL, NULL, 6),
  -- Swalot - Sludge - Level 14
  (317, 31700, 124, 12, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Swalot - Amnesia - Level 17
  (317, 31700, 133, 12, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Swalot - Encore - Level 23
  (317, 31700, 227, 12, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Swalot - Body Slam - Level 26
  (317, 31700, 34, 12, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Swalot - Toxic - Level 30
  (317, 31700, 92, 12, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Swalot - Acid Spray - Level 38
  (317, 31700, 491, 12, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Swalot - Stockpile - Level 45
  (317, 31700, 254, 12, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Swalot - Spit Up - Level 45
  (317, 31700, 255, 12, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Swalot - Swallow - Level 45
  (317, 31700, 256, 12, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Swalot - Sludge Bomb - Level 52
  (317, 31700, 188, 12, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Swalot - Gastro Acid - Level 59
  (317, 31700, 380, 12, NULL, 1, 59, NULL, NULL, NULL, 17),
  -- Swalot - Wring Out - Level 66
  (317, 31700, 378, 12, NULL, 1, 66, NULL, NULL, NULL, 18),
  -- Swalot - Gunk Shot - Level 73
  (317, 31700, 441, 12, NULL, 1, 73, NULL, NULL, NULL, 19),
  -- Swalot - Toxic - TM06
  (317, 31700, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 20),
  -- Swalot - Venoshock - TM09
  (317, 31700, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 21),
  -- Swalot - Hidden Power - TM10
  (317, 31700, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 22),
  -- Swalot - Sunny Day - TM11
  (317, 31700, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 23),
  -- Swalot - Ice Beam - TM13
  (317, 31700, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 24),
  -- Swalot - Hyper Beam - TM15
  (317, 31700, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 25),
  -- Swalot - Protect - TM17
  (317, 31700, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 26),
  -- Swalot - Rain Dance - TM18
  (317, 31700, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 27),
  -- Swalot - Frustration - TM21
  (317, 31700, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 28),
  -- Swalot - Solar Beam - TM22
  (317, 31700, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 29),
  -- Swalot - Earthquake - TM26
  (317, 31700, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 30),
  -- Swalot - Return - TM27
  (317, 31700, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 31),
  -- Swalot - Shadow Ball - TM30
  (317, 31700, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 32),
  -- Swalot - Double Team - TM32
  (317, 31700, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 33),
  -- Swalot - Sludge Wave - TM34
  (317, 31700, 482, 12, NULL, 2, NULL, NULL, 12002034, NULL, 34),
  -- Swalot - Sludge Bomb - TM36
  (317, 31700, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 35),
  -- Swalot - Facade - TM42
  (317, 31700, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 36),
  -- Swalot - Rest - TM44
  (317, 31700, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 37),
  -- Swalot - Attract - TM45
  (317, 31700, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 38),
  -- Swalot - Round - TM48
  (317, 31700, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 39),
  -- Swalot - Explosion - TM64
  (317, 31700, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 40),
  -- Swalot - Giga Impact - TM68
  (317, 31700, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 41),
  -- Swalot - Bulldoze - TM78
  (317, 31700, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 42),
  -- Swalot - Dream Eater - TM85
  (317, 31700, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 43),
  -- Swalot - Swagger - TM87
  (317, 31700, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 44),
  -- Swalot - Substitute - TM90
  (317, 31700, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 45),
  -- Swalot - Rock Smash - TM94
  (317, 31700, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 46),
  -- Swalot - Strength - HM04
  (317, 31700, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 47),
  -- Swalot - Block - Move Tutor
  (317, 31700, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Swalot - Fire Punch - Move Tutor
  (317, 31700, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Swalot - Gastro Acid - Move Tutor
  (317, 31700, 380, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Swalot - Giga Drain - Move Tutor
  (317, 31700, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Swalot - Gunk Shot - Move Tutor
  (317, 31700, 441, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Swalot - Ice Punch - Move Tutor
  (317, 31700, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Swalot - Pain Split - Move Tutor
  (317, 31700, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Swalot - Seed Bomb - Move Tutor
  (317, 31700, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Swalot - Sleep Talk - Move Tutor
  (317, 31700, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Swalot - Snatch - Move Tutor
  (317, 31700, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Swalot - Snore - Move Tutor
  (317, 31700, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Swalot - Thunder Punch - Move Tutor
  (317, 31700, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Carvanha - Leer - Level 1
  (318, 31800, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Carvanha - Bite - Level 1
  (318, 31800, 44, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Carvanha - Rage - Level 6
  (318, 31800, 99, 12, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Carvanha - Focus Energy - Level 8
  (318, 31800, 116, 12, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Carvanha - Scary Face - Level 11
  (318, 31800, 184, 12, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Carvanha - Ice Fang - Level 16
  (318, 31800, 423, 12, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Carvanha - Screech - Level 18
  (318, 31800, 103, 12, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Carvanha - Swagger - Level 21
  (318, 31800, 207, 12, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Carvanha - Assurance - Level 26
  (318, 31800, 372, 12, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Carvanha - Crunch - Level 28
  (318, 31800, 242, 12, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Carvanha - Aqua Jet - Level 31
  (318, 31800, 453, 12, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Carvanha - Agility - Level 36
  (318, 31800, 97, 12, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Carvanha - Take Down - Level 38
  (318, 31800, 36, 12, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Carvanha - Toxic - TM06
  (318, 31800, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 14),
  -- Carvanha - Hail - TM07
  (318, 31800, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 15),
  -- Carvanha - Hidden Power - TM10
  (318, 31800, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 16),
  -- Carvanha - Taunt - TM12
  (318, 31800, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 17),
  -- Carvanha - Ice Beam - TM13
  (318, 31800, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 18),
  -- Carvanha - Blizzard - TM14
  (318, 31800, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 19),
  -- Carvanha - Protect - TM17
  (318, 31800, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 20),
  -- Carvanha - Rain Dance - TM18
  (318, 31800, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 21),
  -- Carvanha - Frustration - TM21
  (318, 31800, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Carvanha - Return - TM27
  (318, 31800, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 23),
  -- Carvanha - Double Team - TM32
  (318, 31800, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 24),
  -- Carvanha - Torment - TM41
  (318, 31800, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 25),
  -- Carvanha - Facade - TM42
  (318, 31800, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 26),
  -- Carvanha - Rest - TM44
  (318, 31800, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 27),
  -- Carvanha - Attract - TM45
  (318, 31800, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 28),
  -- Carvanha - Thief - TM46
  (318, 31800, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 29),
  -- Carvanha - Round - TM48
  (318, 31800, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 30),
  -- Carvanha - Scald - TM55
  (318, 31800, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 31),
  -- Carvanha - Payback - TM66
  (318, 31800, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 32),
  -- Carvanha - Retaliate - TM67
  (318, 31800, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 33),
  -- Carvanha - Swagger - TM87
  (318, 31800, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 34),
  -- Carvanha - Substitute - TM90
  (318, 31800, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 35),
  -- Carvanha - Snarl - TM95
  (318, 31800, 555, 12, NULL, 2, NULL, NULL, 12002095, NULL, 36),
  -- Carvanha - Surf - HM03
  (318, 31800, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 37),
  -- Carvanha - Waterfall - HM05
  (318, 31800, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 38),
  -- Carvanha - Dive - HM06
  (318, 31800, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 39),
  -- Carvanha - Ancient Power - Egg Move
  (318, 31800, 246, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Carvanha - Brine - Egg Move
  (318, 31800, 362, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Carvanha - Double-Edge - Egg Move
  (318, 31800, 38, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Carvanha - Hydro Pump - Egg Move
  (318, 31800, 56, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Carvanha - Swift - Egg Move
  (318, 31800, 129, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Carvanha - Thrash - Egg Move
  (318, 31800, 37, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Carvanha - Bounce - Move Tutor
  (318, 31800, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Carvanha - Dark Pulse - Move Tutor
  (318, 31800, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Carvanha - Icy Wind - Move Tutor
  (318, 31800, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Carvanha - Sleep Talk - Move Tutor
  (318, 31800, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Carvanha - Snore - Move Tutor
  (318, 31800, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Carvanha - Spite - Move Tutor
  (318, 31800, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Carvanha - Super Fang - Move Tutor
  (318, 31800, 162, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Carvanha - Uproar - Move Tutor
  (318, 31800, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Carvanha - Zen Headbutt - Move Tutor
  (318, 31800, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Sharpedo - Feint - Level 1
  (319, 31900, 364, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sharpedo - Leer - Level 1
  (319, 31900, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sharpedo - Bite - Level 1
  (319, 31900, 44, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sharpedo - Rage - Level 1
  (319, 31900, 99, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Sharpedo - Focus Energy - Level 1
  (319, 31900, 116, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Sharpedo - Rage - Level 6
  (319, 31900, 99, 12, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Sharpedo - Focus Energy - Level 8
  (319, 31900, 116, 12, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Sharpedo - Scary Face - Level 11
  (319, 31900, 184, 12, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Sharpedo - Ice Fang - Level 16
  (319, 31900, 423, 12, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Sharpedo - Screech - Level 18
  (319, 31900, 103, 12, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Sharpedo - Swagger - Level 21
  (319, 31900, 207, 12, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Sharpedo - Assurance - Level 26
  (319, 31900, 372, 12, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Sharpedo - Crunch - Level 28
  (319, 31900, 242, 12, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Sharpedo - Slash - Level 30
  (319, 31900, 163, 12, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Sharpedo - Aqua Jet - Level 34
  (319, 31900, 453, 12, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Sharpedo - Taunt - Level 40
  (319, 31900, 269, 12, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Sharpedo - Agility - Level 45
  (319, 31900, 97, 12, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Sharpedo - Skull Bash - Level 50
  (319, 31900, 130, 12, NULL, 1, 50, NULL, NULL, NULL, 18),
  -- Sharpedo - Night Slash - Level 56
  (319, 31900, 400, 12, NULL, 1, 56, NULL, NULL, NULL, 19),
  -- Sharpedo - Roar - TM05
  (319, 31900, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 20),
  -- Sharpedo - Toxic - TM06
  (319, 31900, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 21),
  -- Sharpedo - Hail - TM07
  (319, 31900, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 22),
  -- Sharpedo - Hidden Power - TM10
  (319, 31900, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 23),
  -- Sharpedo - Taunt - TM12
  (319, 31900, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 24),
  -- Sharpedo - Ice Beam - TM13
  (319, 31900, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 25),
  -- Sharpedo - Blizzard - TM14
  (319, 31900, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 26),
  -- Sharpedo - Hyper Beam - TM15
  (319, 31900, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 27),
  -- Sharpedo - Protect - TM17
  (319, 31900, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 28),
  -- Sharpedo - Rain Dance - TM18
  (319, 31900, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 29),
  -- Sharpedo - Frustration - TM21
  (319, 31900, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 30),
  -- Sharpedo - Earthquake - TM26
  (319, 31900, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 31),
  -- Sharpedo - Return - TM27
  (319, 31900, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 32),
  -- Sharpedo - Double Team - TM32
  (319, 31900, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 33),
  -- Sharpedo - Rock Tomb - TM39
  (319, 31900, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 34),
  -- Sharpedo - Torment - TM41
  (319, 31900, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 35),
  -- Sharpedo - Facade - TM42
  (319, 31900, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 36),
  -- Sharpedo - Rest - TM44
  (319, 31900, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 37),
  -- Sharpedo - Attract - TM45
  (319, 31900, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 38),
  -- Sharpedo - Thief - TM46
  (319, 31900, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 39),
  -- Sharpedo - Round - TM48
  (319, 31900, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 40),
  -- Sharpedo - Scald - TM55
  (319, 31900, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 41),
  -- Sharpedo - Payback - TM66
  (319, 31900, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 42),
  -- Sharpedo - Retaliate - TM67
  (319, 31900, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 43),
  -- Sharpedo - Giga Impact - TM68
  (319, 31900, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 44),
  -- Sharpedo - Bulldoze - TM78
  (319, 31900, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 45),
  -- Sharpedo - Poison Jab - TM84
  (319, 31900, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 46),
  -- Sharpedo - Swagger - TM87
  (319, 31900, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 47),
  -- Sharpedo - Substitute - TM90
  (319, 31900, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 48),
  -- Sharpedo - Rock Smash - TM94
  (319, 31900, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 49),
  -- Sharpedo - Snarl - TM95
  (319, 31900, 555, 12, NULL, 2, NULL, NULL, 12002095, NULL, 50),
  -- Sharpedo - Surf - HM03
  (319, 31900, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 51),
  -- Sharpedo - Strength - HM04
  (319, 31900, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 52),
  -- Sharpedo - Waterfall - HM05
  (319, 31900, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 53),
  -- Sharpedo - Dive - HM06
  (319, 31900, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 54),
  -- Sharpedo - Bounce - Move Tutor
  (319, 31900, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Sharpedo - Dark Pulse - Move Tutor
  (319, 31900, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Sharpedo - Icy Wind - Move Tutor
  (319, 31900, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Sharpedo - Sleep Talk - Move Tutor
  (319, 31900, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Sharpedo - Snore - Move Tutor
  (319, 31900, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Sharpedo - Spite - Move Tutor
  (319, 31900, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Sharpedo - Super Fang - Move Tutor
  (319, 31900, 162, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Sharpedo - Uproar - Move Tutor
  (319, 31900, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Sharpedo - Zen Headbutt - Move Tutor
  (319, 31900, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Wailmer - Splash - Level 1
  (320, 32000, 150, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wailmer - Growl - Level 4
  (320, 32000, 45, 12, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Wailmer - Water Gun - Level 7
  (320, 32000, 55, 12, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Wailmer - Rollout - Level 11
  (320, 32000, 205, 12, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Wailmer - Whirlpool - Level 14
  (320, 32000, 250, 12, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Wailmer - Astonish - Level 17
  (320, 32000, 310, 12, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Wailmer - Water Pulse - Level 21
  (320, 32000, 352, 12, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Wailmer - Mist - Level 24
  (320, 32000, 54, 12, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Wailmer - Rest - Level 27
  (320, 32000, 156, 12, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Wailmer - Brine - Level 31
  (320, 32000, 362, 12, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Wailmer - Water Spout - Level 34
  (320, 32000, 323, 12, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Wailmer - Amnesia - Level 37
  (320, 32000, 133, 12, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Wailmer - Dive - Level 41
  (320, 32000, 291, 12, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Wailmer - Bounce - Level 44
  (320, 32000, 340, 12, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Wailmer - Hydro Pump - Level 47
  (320, 32000, 56, 12, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Wailmer - Heavy Slam - Level 50
  (320, 32000, 484, 12, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Wailmer - Roar - TM05
  (320, 32000, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 17),
  -- Wailmer - Toxic - TM06
  (320, 32000, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 18),
  -- Wailmer - Hail - TM07
  (320, 32000, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 19),
  -- Wailmer - Hidden Power - TM10
  (320, 32000, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Wailmer - Ice Beam - TM13
  (320, 32000, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 21),
  -- Wailmer - Blizzard - TM14
  (320, 32000, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 22),
  -- Wailmer - Protect - TM17
  (320, 32000, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Wailmer - Rain Dance - TM18
  (320, 32000, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 24),
  -- Wailmer - Frustration - TM21
  (320, 32000, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 25),
  -- Wailmer - Earthquake - TM26
  (320, 32000, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 26),
  -- Wailmer - Return - TM27
  (320, 32000, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 27),
  -- Wailmer - Double Team - TM32
  (320, 32000, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 28),
  -- Wailmer - Rock Tomb - TM39
  (320, 32000, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 29),
  -- Wailmer - Facade - TM42
  (320, 32000, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 30),
  -- Wailmer - Rest - TM44
  (320, 32000, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 31),
  -- Wailmer - Attract - TM45
  (320, 32000, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 32),
  -- Wailmer - Round - TM48
  (320, 32000, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 33),
  -- Wailmer - Echoed Voice - TM49
  (320, 32000, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 34),
  -- Wailmer - Scald - TM55
  (320, 32000, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 35),
  -- Wailmer - Bulldoze - TM78
  (320, 32000, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 36),
  -- Wailmer - Swagger - TM87
  (320, 32000, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 37),
  -- Wailmer - Substitute - TM90
  (320, 32000, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 38),
  -- Wailmer - Rock Smash - TM94
  (320, 32000, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 39),
  -- Wailmer - Surf - HM03
  (320, 32000, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 40),
  -- Wailmer - Strength - HM04
  (320, 32000, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 41),
  -- Wailmer - Waterfall - HM05
  (320, 32000, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 42),
  -- Wailmer - Dive - HM06
  (320, 32000, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 43),
  -- Wailmer - Aqua Ring - Egg Move
  (320, 32000, 392, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Wailmer - Body Slam - Egg Move
  (320, 32000, 34, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Wailmer - Curse - Egg Move
  (320, 32000, 174, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Wailmer - Defense Curl - Egg Move
  (320, 32000, 111, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Wailmer - Double-Edge - Egg Move
  (320, 32000, 38, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Wailmer - Fissure - Egg Move
  (320, 32000, 90, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Wailmer - Sleep Talk - Egg Move
  (320, 32000, 214, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Wailmer - Snore - Egg Move
  (320, 32000, 173, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Wailmer - Soak - Egg Move
  (320, 32000, 487, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Wailmer - Thrash - Egg Move
  (320, 32000, 37, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Wailmer - Tickle - Egg Move
  (320, 32000, 321, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Wailmer - Zen Headbutt - Egg Move
  (320, 32000, 428, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Wailmer - Bounce - Move Tutor
  (320, 32000, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Wailmer - Hyper Voice - Move Tutor
  (320, 32000, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Wailmer - Icy Wind - Move Tutor
  (320, 32000, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Wailmer - Sleep Talk - Move Tutor
  (320, 32000, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Wailmer - Snore - Move Tutor
  (320, 32000, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Wailmer - Zen Headbutt - Move Tutor
  (320, 32000, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Wailord - Splash - Level 1
  (321, 32100, 150, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wailord - Growl - Level 1
  (321, 32100, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wailord - Water Gun - Level 1
  (321, 32100, 55, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wailord - Rollout - Level 1
  (321, 32100, 205, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Wailord - Growl - Level 4
  (321, 32100, 45, 12, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Wailord - Water Gun - Level 7
  (321, 32100, 55, 12, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Wailord - Rollout - Level 11
  (321, 32100, 205, 12, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Wailord - Whirlpool - Level 14
  (321, 32100, 250, 12, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Wailord - Astonish - Level 17
  (321, 32100, 310, 12, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Wailord - Water Pulse - Level 21
  (321, 32100, 352, 12, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Wailord - Mist - Level 24
  (321, 32100, 54, 12, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Wailord - Rest - Level 27
  (321, 32100, 156, 12, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Wailord - Brine - Level 31
  (321, 32100, 362, 12, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Wailord - Water Spout - Level 34
  (321, 32100, 323, 12, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Wailord - Amnesia - Level 37
  (321, 32100, 133, 12, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Wailord - Dive - Level 46
  (321, 32100, 291, 12, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Wailord - Bounce - Level 54
  (321, 32100, 340, 12, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Wailord - Hydro Pump - Level 62
  (321, 32100, 56, 12, NULL, 1, 62, NULL, NULL, NULL, 18),
  -- Wailord - Heavy Slam - Level 70
  (321, 32100, 484, 12, NULL, 1, 70, NULL, NULL, NULL, 19),
  -- Wailord - Roar - TM05
  (321, 32100, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 20),
  -- Wailord - Toxic - TM06
  (321, 32100, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 21),
  -- Wailord - Hail - TM07
  (321, 32100, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 22),
  -- Wailord - Hidden Power - TM10
  (321, 32100, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 23),
  -- Wailord - Ice Beam - TM13
  (321, 32100, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 24),
  -- Wailord - Blizzard - TM14
  (321, 32100, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 25),
  -- Wailord - Hyper Beam - TM15
  (321, 32100, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 26),
  -- Wailord - Protect - TM17
  (321, 32100, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 27),
  -- Wailord - Rain Dance - TM18
  (321, 32100, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 28),
  -- Wailord - Frustration - TM21
  (321, 32100, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 29),
  -- Wailord - Earthquake - TM26
  (321, 32100, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 30),
  -- Wailord - Return - TM27
  (321, 32100, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 31),
  -- Wailord - Double Team - TM32
  (321, 32100, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 32),
  -- Wailord - Rock Tomb - TM39
  (321, 32100, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 33),
  -- Wailord - Facade - TM42
  (321, 32100, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 34),
  -- Wailord - Rest - TM44
  (321, 32100, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 35),
  -- Wailord - Attract - TM45
  (321, 32100, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 36),
  -- Wailord - Round - TM48
  (321, 32100, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 37),
  -- Wailord - Echoed Voice - TM49
  (321, 32100, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 38),
  -- Wailord - Scald - TM55
  (321, 32100, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 39),
  -- Wailord - Giga Impact - TM68
  (321, 32100, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 40),
  -- Wailord - Bulldoze - TM78
  (321, 32100, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 41),
  -- Wailord - Swagger - TM87
  (321, 32100, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 42),
  -- Wailord - Substitute - TM90
  (321, 32100, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 43),
  -- Wailord - Rock Smash - TM94
  (321, 32100, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 44),
  -- Wailord - Surf - HM03
  (321, 32100, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 45),
  -- Wailord - Strength - HM04
  (321, 32100, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 46),
  -- Wailord - Waterfall - HM05
  (321, 32100, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 47),
  -- Wailord - Dive - HM06
  (321, 32100, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 48),
  -- Wailord - Block - Move Tutor
  (321, 32100, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Wailord - Bounce - Move Tutor
  (321, 32100, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Wailord - Hyper Voice - Move Tutor
  (321, 32100, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Wailord - Icy Wind - Move Tutor
  (321, 32100, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Wailord - Iron Head - Move Tutor
  (321, 32100, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Wailord - Sleep Talk - Move Tutor
  (321, 32100, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Wailord - Snore - Move Tutor
  (321, 32100, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Wailord - Zen Headbutt - Move Tutor
  (321, 32100, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Numel - Growl - Level 1
  (322, 32200, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Numel - Tackle - Level 1
  (322, 32200, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Numel - Ember - Level 5
  (322, 32200, 52, 12, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Numel - Magnitude - Level 8
  (322, 32200, 222, 12, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Numel - Focus Energy - Level 12
  (322, 32200, 116, 12, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Numel - Flame Burst - Level 15
  (322, 32200, 481, 12, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Numel - Amnesia - Level 19
  (322, 32200, 133, 12, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Numel - Lava Plume - Level 22
  (322, 32200, 436, 12, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Numel - Earth Power - Level 26
  (322, 32200, 414, 12, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Numel - Curse - Level 29
  (322, 32200, 174, 12, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Numel - Take Down - Level 31
  (322, 32200, 36, 12, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Numel - Yawn - Level 36
  (322, 32200, 281, 12, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Numel - Earthquake - Level 40
  (322, 32200, 89, 12, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Numel - Flamethrower - Level 43
  (322, 32200, 53, 12, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Numel - Double-Edge - Level 47
  (322, 32200, 38, 12, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Numel - Toxic - TM06
  (322, 32200, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Numel - Hidden Power - TM10
  (322, 32200, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Numel - Sunny Day - TM11
  (322, 32200, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 18),
  -- Numel - Protect - TM17
  (322, 32200, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 19),
  -- Numel - Frustration - TM21
  (322, 32200, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 20),
  -- Numel - Earthquake - TM26
  (322, 32200, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 21),
  -- Numel - Return - TM27
  (322, 32200, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 22),
  -- Numel - Dig - TM28
  (322, 32200, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 23),
  -- Numel - Double Team - TM32
  (322, 32200, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 24),
  -- Numel - Flamethrower - TM35
  (322, 32200, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 25),
  -- Numel - Sandstorm - TM37
  (322, 32200, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 26),
  -- Numel - Fire Blast - TM38
  (322, 32200, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 27),
  -- Numel - Rock Tomb - TM39
  (322, 32200, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 28),
  -- Numel - Facade - TM42
  (322, 32200, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 29),
  -- Numel - Flame Charge - TM43
  (322, 32200, 488, 12, NULL, 2, NULL, NULL, 12002043, NULL, 30),
  -- Numel - Rest - TM44
  (322, 32200, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 31),
  -- Numel - Attract - TM45
  (322, 32200, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 32),
  -- Numel - Round - TM48
  (322, 32200, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 33),
  -- Numel - Echoed Voice - TM49
  (322, 32200, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 34),
  -- Numel - Overheat - TM50
  (322, 32200, 315, 12, NULL, 2, NULL, NULL, 12002050, NULL, 35),
  -- Numel - Incinerate - TM59
  (322, 32200, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 36),
  -- Numel - Will-O-Wisp - TM61
  (322, 32200, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 37),
  -- Numel - Bulldoze - TM78
  (322, 32200, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 38),
  -- Numel - Rock Slide - TM80
  (322, 32200, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 39),
  -- Numel - Swagger - TM87
  (322, 32200, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 40),
  -- Numel - Substitute - TM90
  (322, 32200, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 41),
  -- Numel - Rock Smash - TM94
  (322, 32200, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 42),
  -- Numel - Strength - HM04
  (322, 32200, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 43),
  -- Numel - Ancient Power - Egg Move
  (322, 32200, 246, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Numel - Body Slam - Egg Move
  (322, 32200, 34, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Numel - Defense Curl - Egg Move
  (322, 32200, 111, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Numel - Endure - Egg Move
  (322, 32200, 203, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Numel - Heat Wave - Egg Move
  (322, 32200, 257, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Numel - Howl - Egg Move
  (322, 32200, 336, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Numel - Iron Head - Egg Move
  (322, 32200, 442, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Numel - Mud Bomb - Egg Move
  (322, 32200, 426, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Numel - Rollout - Egg Move
  (322, 32200, 205, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Numel - Scary Face - Egg Move
  (322, 32200, 184, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Numel - Spit Up - Egg Move
  (322, 32200, 255, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Numel - Stockpile - Egg Move
  (322, 32200, 254, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Numel - Stomp - Egg Move
  (322, 32200, 23, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Numel - Swallow - Egg Move
  (322, 32200, 256, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Numel - Yawn - Egg Move
  (322, 32200, 281, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Numel - After You - Move Tutor
  (322, 32200, 495, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Numel - Earth Power - Move Tutor
  (322, 32200, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Numel - Heat Wave - Move Tutor
  (322, 32200, 257, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Numel - Iron Head - Move Tutor
  (322, 32200, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Numel - Sleep Talk - Move Tutor
  (322, 32200, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Numel - Snore - Move Tutor
  (322, 32200, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Numel - Stealth Rock - Move Tutor
  (322, 32200, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Camerupt - Growl - Level 1
  (323, 32300, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Camerupt - Tackle - Level 1
  (323, 32300, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Camerupt - Ember - Level 1
  (323, 32300, 52, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Camerupt - Magnitude - Level 1
  (323, 32300, 222, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Camerupt - Ember - Level 5
  (323, 32300, 52, 12, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Camerupt - Magnitude - Level 8
  (323, 32300, 222, 12, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Camerupt - Focus Energy - Level 12
  (323, 32300, 116, 12, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Camerupt - Flame Burst - Level 15
  (323, 32300, 481, 12, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Camerupt - Amnesia - Level 19
  (323, 32300, 133, 12, NULL, 1, 19, NULL, NULL, NULL, 9),
  -- Camerupt - Lava Plume - Level 22
  (323, 32300, 436, 12, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Camerupt - Earth Power - Level 26
  (323, 32300, 414, 12, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Camerupt - Curse - Level 29
  (323, 32300, 174, 12, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Camerupt - Take Down - Level 31
  (323, 32300, 36, 12, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Camerupt - Rock Slide - Level 33
  (323, 32300, 157, 12, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Camerupt - Yawn - Level 39
  (323, 32300, 281, 12, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Camerupt - Earthquake - Level 46
  (323, 32300, 89, 12, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Camerupt - Eruption - Level 52
  (323, 32300, 284, 12, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Camerupt - Fissure - Level 59
  (323, 32300, 90, 12, NULL, 1, 59, NULL, NULL, NULL, 18),
  -- Camerupt - Roar - TM05
  (323, 32300, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 19),
  -- Camerupt - Toxic - TM06
  (323, 32300, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 20),
  -- Camerupt - Hidden Power - TM10
  (323, 32300, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 21),
  -- Camerupt - Sunny Day - TM11
  (323, 32300, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 22),
  -- Camerupt - Hyper Beam - TM15
  (323, 32300, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 23),
  -- Camerupt - Protect - TM17
  (323, 32300, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 24),
  -- Camerupt - Frustration - TM21
  (323, 32300, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 25),
  -- Camerupt - Solar Beam - TM22
  (323, 32300, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 26),
  -- Camerupt - Earthquake - TM26
  (323, 32300, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 27),
  -- Camerupt - Return - TM27
  (323, 32300, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 28),
  -- Camerupt - Dig - TM28
  (323, 32300, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 29),
  -- Camerupt - Double Team - TM32
  (323, 32300, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 30),
  -- Camerupt - Flamethrower - TM35
  (323, 32300, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 31),
  -- Camerupt - Sandstorm - TM37
  (323, 32300, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 32),
  -- Camerupt - Fire Blast - TM38
  (323, 32300, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 33),
  -- Camerupt - Rock Tomb - TM39
  (323, 32300, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 34),
  -- Camerupt - Facade - TM42
  (323, 32300, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 35),
  -- Camerupt - Flame Charge - TM43
  (323, 32300, 488, 12, NULL, 2, NULL, NULL, 12002043, NULL, 36),
  -- Camerupt - Rest - TM44
  (323, 32300, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 37),
  -- Camerupt - Attract - TM45
  (323, 32300, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 38),
  -- Camerupt - Round - TM48
  (323, 32300, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 39),
  -- Camerupt - Echoed Voice - TM49
  (323, 32300, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 40),
  -- Camerupt - Overheat - TM50
  (323, 32300, 315, 12, NULL, 2, NULL, NULL, 12002050, NULL, 41),
  -- Camerupt - Incinerate - TM59
  (323, 32300, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 42),
  -- Camerupt - Will-O-Wisp - TM61
  (323, 32300, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 43),
  -- Camerupt - Explosion - TM64
  (323, 32300, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 44),
  -- Camerupt - Giga Impact - TM68
  (323, 32300, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 45),
  -- Camerupt - Rock Polish - TM69
  (323, 32300, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 46),
  -- Camerupt - Stone Edge - TM71
  (323, 32300, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 47),
  -- Camerupt - Bulldoze - TM78
  (323, 32300, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 48),
  -- Camerupt - Rock Slide - TM80
  (323, 32300, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 49),
  -- Camerupt - Swagger - TM87
  (323, 32300, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 50),
  -- Camerupt - Substitute - TM90
  (323, 32300, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 51),
  -- Camerupt - Flash Cannon - TM91
  (323, 32300, 430, 12, NULL, 2, NULL, NULL, 12002091, NULL, 52),
  -- Camerupt - Rock Smash - TM94
  (323, 32300, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 53),
  -- Camerupt - Strength - HM04
  (323, 32300, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 54),
  -- Camerupt - After You - Move Tutor
  (323, 32300, 495, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Camerupt - Earth Power - Move Tutor
  (323, 32300, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Camerupt - Heat Wave - Move Tutor
  (323, 32300, 257, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Camerupt - Iron Head - Move Tutor
  (323, 32300, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Camerupt - Sleep Talk - Move Tutor
  (323, 32300, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Camerupt - Snore - Move Tutor
  (323, 32300, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Camerupt - Stealth Rock - Move Tutor
  (323, 32300, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Torkoal - Ember - Level 1
  (324, 32400, 52, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Torkoal - Smog - Level 4
  (324, 32400, 123, 12, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Torkoal - Withdraw - Level 7
  (324, 32400, 110, 12, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Torkoal - Curse - Level 12
  (324, 32400, 174, 12, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Torkoal - Fire Spin - Level 17
  (324, 32400, 83, 12, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Torkoal - Smokescreen - Level 20
  (324, 32400, 108, 12, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Torkoal - Rapid Spin - Level 23
  (324, 32400, 229, 12, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Torkoal - Flamethrower - Level 28
  (324, 32400, 53, 12, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Torkoal - Body Slam - Level 33
  (324, 32400, 34, 12, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Torkoal - Protect - Level 36
  (324, 32400, 182, 12, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Torkoal - Lava Plume - Level 39
  (324, 32400, 436, 12, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Torkoal - Iron Defense - Level 44
  (324, 32400, 334, 12, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Torkoal - Amnesia - Level 49
  (324, 32400, 133, 12, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Torkoal - Flail - Level 52
  (324, 32400, 175, 12, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Torkoal - Heat Wave - Level 55
  (324, 32400, 257, 12, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Torkoal - Inferno - Level 60
  (324, 32400, 517, 12, NULL, 1, 60, NULL, NULL, NULL, 16),
  -- Torkoal - Shell Smash - Level 65
  (324, 32400, 504, 12, NULL, 1, 65, NULL, NULL, NULL, 17),
  -- Torkoal - Toxic - TM06
  (324, 32400, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 18),
  -- Torkoal - Hidden Power - TM10
  (324, 32400, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 19),
  -- Torkoal - Sunny Day - TM11
  (324, 32400, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 20),
  -- Torkoal - Hyper Beam - TM15
  (324, 32400, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 21),
  -- Torkoal - Protect - TM17
  (324, 32400, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 22),
  -- Torkoal - Frustration - TM21
  (324, 32400, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 23),
  -- Torkoal - Solar Beam - TM22
  (324, 32400, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 24),
  -- Torkoal - Earthquake - TM26
  (324, 32400, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 25),
  -- Torkoal - Return - TM27
  (324, 32400, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 26),
  -- Torkoal - Double Team - TM32
  (324, 32400, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 27),
  -- Torkoal - Flamethrower - TM35
  (324, 32400, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 28),
  -- Torkoal - Sludge Bomb - TM36
  (324, 32400, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 29),
  -- Torkoal - Fire Blast - TM38
  (324, 32400, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 30),
  -- Torkoal - Rock Tomb - TM39
  (324, 32400, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 31),
  -- Torkoal - Facade - TM42
  (324, 32400, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 32),
  -- Torkoal - Flame Charge - TM43
  (324, 32400, 488, 12, NULL, 2, NULL, NULL, 12002043, NULL, 33),
  -- Torkoal - Rest - TM44
  (324, 32400, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 34),
  -- Torkoal - Attract - TM45
  (324, 32400, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 35),
  -- Torkoal - Round - TM48
  (324, 32400, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 36),
  -- Torkoal - Overheat - TM50
  (324, 32400, 315, 12, NULL, 2, NULL, NULL, 12002050, NULL, 37),
  -- Torkoal - Incinerate - TM59
  (324, 32400, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 38),
  -- Torkoal - Will-O-Wisp - TM61
  (324, 32400, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 39),
  -- Torkoal - Explosion - TM64
  (324, 32400, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 40),
  -- Torkoal - Giga Impact - TM68
  (324, 32400, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 41),
  -- Torkoal - Stone Edge - TM71
  (324, 32400, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 42),
  -- Torkoal - Gyro Ball - TM74
  (324, 32400, 360, 12, NULL, 2, NULL, NULL, 12002074, NULL, 43),
  -- Torkoal - Bulldoze - TM78
  (324, 32400, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 44),
  -- Torkoal - Rock Slide - TM80
  (324, 32400, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 45),
  -- Torkoal - Swagger - TM87
  (324, 32400, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 46),
  -- Torkoal - Substitute - TM90
  (324, 32400, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 47),
  -- Torkoal - Rock Smash - TM94
  (324, 32400, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 48),
  -- Torkoal - Strength - HM04
  (324, 32400, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 49),
  -- Torkoal - Clear Smog - Egg Move
  (324, 32400, 499, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Torkoal - Endure - Egg Move
  (324, 32400, 203, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Torkoal - Eruption - Egg Move
  (324, 32400, 284, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Torkoal - Fissure - Egg Move
  (324, 32400, 90, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Torkoal - Flame Burst - Egg Move
  (324, 32400, 481, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Torkoal - Skull Bash - Egg Move
  (324, 32400, 130, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Torkoal - Sleep Talk - Egg Move
  (324, 32400, 214, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Torkoal - Yawn - Egg Move
  (324, 32400, 281, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Torkoal - After You - Move Tutor
  (324, 32400, 495, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Torkoal - Earth Power - Move Tutor
  (324, 32400, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Torkoal - Heat Wave - Move Tutor
  (324, 32400, 257, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Torkoal - Iron Defense - Move Tutor
  (324, 32400, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Torkoal - Iron Tail - Move Tutor
  (324, 32400, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Torkoal - Sleep Talk - Move Tutor
  (324, 32400, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Torkoal - Snore - Move Tutor
  (324, 32400, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Torkoal - Stealth Rock - Move Tutor
  (324, 32400, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Spoink - Splash - Level 1
  (325, 32500, 150, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spoink - Psywave - Level 7
  (325, 32500, 149, 12, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Spoink - Odor Sleuth - Level 10
  (325, 32500, 316, 12, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Spoink - Psybeam - Level 14
  (325, 32500, 60, 12, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Spoink - Psych Up - Level 15
  (325, 32500, 244, 12, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Spoink - Confuse Ray - Level 18
  (325, 32500, 109, 12, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Spoink - Magic Coat - Level 21
  (325, 32500, 277, 12, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Spoink - Zen Headbutt - Level 26
  (325, 32500, 428, 12, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Spoink - Rest - Level 29
  (325, 32500, 156, 12, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Spoink - Snore - Level 29
  (325, 32500, 173, 12, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Spoink - Power Gem - Level 33
  (325, 32500, 408, 12, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Spoink - Psyshock - Level 38
  (325, 32500, 473, 12, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Spoink - Payback - Level 40
  (325, 32500, 371, 12, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Spoink - Psychic - Level 44
  (325, 32500, 94, 12, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Spoink - Bounce - Level 50
  (325, 32500, 340, 12, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Spoink - Psyshock - TM03
  (325, 32500, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 16),
  -- Spoink - Calm Mind - TM04
  (325, 32500, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 17),
  -- Spoink - Toxic - TM06
  (325, 32500, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 18),
  -- Spoink - Hidden Power - TM10
  (325, 32500, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 19),
  -- Spoink - Sunny Day - TM11
  (325, 32500, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 20),
  -- Spoink - Taunt - TM12
  (325, 32500, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 21),
  -- Spoink - Light Screen - TM16
  (325, 32500, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 22),
  -- Spoink - Protect - TM17
  (325, 32500, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 23),
  -- Spoink - Rain Dance - TM18
  (325, 32500, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 24),
  -- Spoink - Telekinesis - TM19
  (325, 32500, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 25),
  -- Spoink - Frustration - TM21
  (325, 32500, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Spoink - Return - TM27
  (325, 32500, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 27),
  -- Spoink - Psychic - TM29
  (325, 32500, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 28),
  -- Spoink - Shadow Ball - TM30
  (325, 32500, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 29),
  -- Spoink - Double Team - TM32
  (325, 32500, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 30),
  -- Spoink - Reflect - TM33
  (325, 32500, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 31),
  -- Spoink - Torment - TM41
  (325, 32500, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 32),
  -- Spoink - Facade - TM42
  (325, 32500, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 33),
  -- Spoink - Rest - TM44
  (325, 32500, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 34),
  -- Spoink - Attract - TM45
  (325, 32500, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 35),
  -- Spoink - Thief - TM46
  (325, 32500, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 36),
  -- Spoink - Round - TM48
  (325, 32500, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 37),
  -- Spoink - Charge Beam - TM57
  (325, 32500, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 38),
  -- Spoink - Payback - TM66
  (325, 32500, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 39),
  -- Spoink - Flash - TM70
  (325, 32500, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 40),
  -- Spoink - Thunder Wave - TM73
  (325, 32500, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 41),
  -- Spoink - Psych Up - TM77
  (325, 32500, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 42),
  -- Spoink - Dream Eater - TM85
  (325, 32500, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 43),
  -- Spoink - Grass Knot - TM86
  (325, 32500, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 44),
  -- Spoink - Swagger - TM87
  (325, 32500, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 45),
  -- Spoink - Substitute - TM90
  (325, 32500, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 46),
  -- Spoink - Trick Room - TM92
  (325, 32500, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 47),
  -- Spoink - Amnesia - Egg Move
  (325, 32500, 133, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Spoink - Endure - Egg Move
  (325, 32500, 203, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Spoink - Extrasensory - Egg Move
  (325, 32500, 326, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Spoink - Future Sight - Egg Move
  (325, 32500, 248, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Spoink - Lucky Chant - Egg Move
  (325, 32500, 381, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Spoink - Mirror Coat - Egg Move
  (325, 32500, 243, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Spoink - Skill Swap - Egg Move
  (325, 32500, 285, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Spoink - Trick - Egg Move
  (325, 32500, 271, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Spoink - Whirlwind - Egg Move
  (325, 32500, 18, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Spoink - Zen Headbutt - Egg Move
  (325, 32500, 428, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Spoink - Bounce - Move Tutor
  (325, 32500, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Spoink - Covet - Move Tutor
  (325, 32500, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Spoink - Heal Bell - Move Tutor
  (325, 32500, 215, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Spoink - Icy Wind - Move Tutor
  (325, 32500, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Spoink - Iron Tail - Move Tutor
  (325, 32500, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Spoink - Magic Coat - Move Tutor
  (325, 32500, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Spoink - Recycle - Move Tutor
  (325, 32500, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Spoink - Role Play - Move Tutor
  (325, 32500, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Spoink - Signal Beam - Move Tutor
  (325, 32500, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Spoink - Skill Swap - Move Tutor
  (325, 32500, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Spoink - Sleep Talk - Move Tutor
  (325, 32500, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Spoink - Snatch - Move Tutor
  (325, 32500, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Spoink - Snore - Move Tutor
  (325, 32500, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Spoink - Trick - Move Tutor
  (325, 32500, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Spoink - Zen Headbutt - Move Tutor
  (325, 32500, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Grumpig - Splash - Level 1
  (326, 32600, 150, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grumpig - Psywave - Level 1
  (326, 32600, 149, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grumpig - Odor Sleuth - Level 1
  (326, 32600, 316, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Grumpig - Psybeam - Level 1
  (326, 32600, 60, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Grumpig - Psywave - Level 7
  (326, 32600, 149, 12, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Grumpig - Odor Sleuth - Level 10
  (326, 32600, 316, 12, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Grumpig - Psybeam - Level 14
  (326, 32600, 60, 12, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Grumpig - Psych Up - Level 15
  (326, 32600, 244, 12, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Grumpig - Confuse Ray - Level 18
  (326, 32600, 109, 12, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Grumpig - Magic Coat - Level 21
  (326, 32600, 277, 12, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Grumpig - Zen Headbutt - Level 26
  (326, 32600, 428, 12, NULL, 1, 26, NULL, NULL, NULL, 11),
  -- Grumpig - Rest - Level 29
  (326, 32600, 156, 12, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Grumpig - Snore - Level 29
  (326, 32600, 173, 12, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Grumpig - Power Gem - Level 35
  (326, 32600, 408, 12, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Grumpig - Psyshock - Level 42
  (326, 32600, 473, 12, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Grumpig - Payback - Level 46
  (326, 32600, 371, 12, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Grumpig - Psychic - Level 52
  (326, 32600, 94, 12, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Grumpig - Bounce - Level 60
  (326, 32600, 340, 12, NULL, 1, 60, NULL, NULL, NULL, 18),
  -- Grumpig - Psyshock - TM03
  (326, 32600, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 19),
  -- Grumpig - Calm Mind - TM04
  (326, 32600, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 20),
  -- Grumpig - Toxic - TM06
  (326, 32600, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 21),
  -- Grumpig - Hidden Power - TM10
  (326, 32600, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 22),
  -- Grumpig - Sunny Day - TM11
  (326, 32600, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 23),
  -- Grumpig - Taunt - TM12
  (326, 32600, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 24),
  -- Grumpig - Hyper Beam - TM15
  (326, 32600, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 25),
  -- Grumpig - Light Screen - TM16
  (326, 32600, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 26),
  -- Grumpig - Protect - TM17
  (326, 32600, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 27),
  -- Grumpig - Rain Dance - TM18
  (326, 32600, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 28),
  -- Grumpig - Telekinesis - TM19
  (326, 32600, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 29),
  -- Grumpig - Frustration - TM21
  (326, 32600, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 30),
  -- Grumpig - Return - TM27
  (326, 32600, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 31),
  -- Grumpig - Psychic - TM29
  (326, 32600, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 32),
  -- Grumpig - Shadow Ball - TM30
  (326, 32600, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 33),
  -- Grumpig - Brick Break - TM31
  (326, 32600, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 34),
  -- Grumpig - Double Team - TM32
  (326, 32600, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 35),
  -- Grumpig - Reflect - TM33
  (326, 32600, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 36),
  -- Grumpig - Torment - TM41
  (326, 32600, 259, 12, NULL, 2, NULL, NULL, 12002041, NULL, 37),
  -- Grumpig - Facade - TM42
  (326, 32600, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 38),
  -- Grumpig - Rest - TM44
  (326, 32600, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 39),
  -- Grumpig - Attract - TM45
  (326, 32600, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 40),
  -- Grumpig - Thief - TM46
  (326, 32600, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 41),
  -- Grumpig - Round - TM48
  (326, 32600, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 42),
  -- Grumpig - Focus Blast - TM52
  (326, 32600, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 43),
  -- Grumpig - Energy Ball - TM53
  (326, 32600, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 44),
  -- Grumpig - Fling - TM56
  (326, 32600, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 45),
  -- Grumpig - Charge Beam - TM57
  (326, 32600, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 46),
  -- Grumpig - Payback - TM66
  (326, 32600, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 47),
  -- Grumpig - Giga Impact - TM68
  (326, 32600, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 48),
  -- Grumpig - Flash - TM70
  (326, 32600, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 49),
  -- Grumpig - Thunder Wave - TM73
  (326, 32600, 86, 12, NULL, 2, NULL, NULL, 12002073, NULL, 50),
  -- Grumpig - Psych Up - TM77
  (326, 32600, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 51),
  -- Grumpig - Bulldoze - TM78
  (326, 32600, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 52),
  -- Grumpig - Dream Eater - TM85
  (326, 32600, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 53),
  -- Grumpig - Grass Knot - TM86
  (326, 32600, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 54),
  -- Grumpig - Swagger - TM87
  (326, 32600, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 55),
  -- Grumpig - Substitute - TM90
  (326, 32600, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 56),
  -- Grumpig - Trick Room - TM92
  (326, 32600, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 57),
  -- Grumpig - Bounce - Move Tutor
  (326, 32600, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Grumpig - Covet - Move Tutor
  (326, 32600, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Grumpig - Drain Punch - Move Tutor
  (326, 32600, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Grumpig - Fire Punch - Move Tutor
  (326, 32600, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Grumpig - Heal Bell - Move Tutor
  (326, 32600, 215, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Grumpig - Ice Punch - Move Tutor
  (326, 32600, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Grumpig - Icy Wind - Move Tutor
  (326, 32600, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Grumpig - Iron Tail - Move Tutor
  (326, 32600, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Grumpig - Magic Coat - Move Tutor
  (326, 32600, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Grumpig - Recycle - Move Tutor
  (326, 32600, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Grumpig - Role Play - Move Tutor
  (326, 32600, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Grumpig - Signal Beam - Move Tutor
  (326, 32600, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Grumpig - Skill Swap - Move Tutor
  (326, 32600, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Grumpig - Sleep Talk - Move Tutor
  (326, 32600, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Grumpig - Snatch - Move Tutor
  (326, 32600, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Grumpig - Snore - Move Tutor
  (326, 32600, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Grumpig - Thunder Punch - Move Tutor
  (326, 32600, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Grumpig - Trick - Move Tutor
  (326, 32600, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Grumpig - Zen Headbutt - Move Tutor
  (326, 32600, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Spinda - Tackle - Level 1
  (327, 32700, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spinda - Uproar - Level 5
  (327, 32700, 253, 12, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Spinda - Copycat - Level 10
  (327, 32700, 383, 12, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Spinda - Feint Attack - Level 14
  (327, 32700, 185, 12, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Spinda - Psybeam - Level 19
  (327, 32700, 60, 12, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Spinda - Hypnosis - Level 23
  (327, 32700, 95, 12, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Spinda - Dizzy Punch - Level 28
  (327, 32700, 146, 12, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Spinda - Sucker Punch - Level 32
  (327, 32700, 389, 12, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Spinda - Teeter Dance - Level 37
  (327, 32700, 298, 12, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Spinda - Psych Up - Level 41
  (327, 32700, 244, 12, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Spinda - Double-Edge - Level 46
  (327, 32700, 38, 12, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Spinda - Flail - Level 50
  (327, 32700, 175, 12, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Spinda - Thrash - Level 55
  (327, 32700, 37, 12, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Spinda - Calm Mind - TM04
  (327, 32700, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 14),
  -- Spinda - Toxic - TM06
  (327, 32700, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Spinda - Hidden Power - TM10
  (327, 32700, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 16),
  -- Spinda - Sunny Day - TM11
  (327, 32700, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 17),
  -- Spinda - Protect - TM17
  (327, 32700, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 18),
  -- Spinda - Rain Dance - TM18
  (327, 32700, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 19),
  -- Spinda - Safeguard - TM20
  (327, 32700, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 20),
  -- Spinda - Frustration - TM21
  (327, 32700, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 21),
  -- Spinda - Return - TM27
  (327, 32700, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 22),
  -- Spinda - Dig - TM28
  (327, 32700, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 23),
  -- Spinda - Psychic - TM29
  (327, 32700, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 24),
  -- Spinda - Shadow Ball - TM30
  (327, 32700, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 25),
  -- Spinda - Brick Break - TM31
  (327, 32700, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 26),
  -- Spinda - Double Team - TM32
  (327, 32700, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 27),
  -- Spinda - Rock Tomb - TM39
  (327, 32700, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 28),
  -- Spinda - Facade - TM42
  (327, 32700, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 29),
  -- Spinda - Rest - TM44
  (327, 32700, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 30),
  -- Spinda - Attract - TM45
  (327, 32700, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 31),
  -- Spinda - Thief - TM46
  (327, 32700, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 32),
  -- Spinda - Round - TM48
  (327, 32700, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 33),
  -- Spinda - Fling - TM56
  (327, 32700, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 34),
  -- Spinda - Retaliate - TM67
  (327, 32700, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 35),
  -- Spinda - Flash - TM70
  (327, 32700, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 36),
  -- Spinda - Psych Up - TM77
  (327, 32700, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 37),
  -- Spinda - Rock Slide - TM80
  (327, 32700, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 38),
  -- Spinda - Work Up - TM83
  (327, 32700, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 39),
  -- Spinda - Dream Eater - TM85
  (327, 32700, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 40),
  -- Spinda - Swagger - TM87
  (327, 32700, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 41),
  -- Spinda - Substitute - TM90
  (327, 32700, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 42),
  -- Spinda - Trick Room - TM92
  (327, 32700, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 43),
  -- Spinda - Wild Charge - TM93
  (327, 32700, 528, 12, NULL, 2, NULL, NULL, 12002093, NULL, 44),
  -- Spinda - Rock Smash - TM94
  (327, 32700, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 45),
  -- Spinda - Strength - HM04
  (327, 32700, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 46),
  -- Spinda - Assist - Egg Move
  (327, 32700, 274, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Spinda - Baton Pass - Egg Move
  (327, 32700, 226, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Spinda - Disable - Egg Move
  (327, 32700, 50, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Spinda - Encore - Egg Move
  (327, 32700, 227, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Spinda - Fake Out - Egg Move
  (327, 32700, 252, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Spinda - Fake Tears - Egg Move
  (327, 32700, 313, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Spinda - Icy Wind - Egg Move
  (327, 32700, 196, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Spinda - Psycho Cut - Egg Move
  (327, 32700, 427, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Spinda - Rapid Spin - Egg Move
  (327, 32700, 229, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Spinda - Role Play - Egg Move
  (327, 32700, 272, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Spinda - Smelling Salts - Egg Move
  (327, 32700, 265, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Spinda - Trick - Egg Move
  (327, 32700, 271, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Spinda - Water Pulse - Egg Move
  (327, 32700, 352, 12, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Spinda - Wish - Egg Move
  (327, 32700, 273, 12, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Spinda - Covet - Move Tutor
  (327, 32700, 343, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Spinda - Drain Punch - Move Tutor
  (327, 32700, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Spinda - Fire Punch - Move Tutor
  (327, 32700, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Spinda - Helping Hand - Move Tutor
  (327, 32700, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Spinda - Hyper Voice - Move Tutor
  (327, 32700, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Spinda - Ice Punch - Move Tutor
  (327, 32700, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Spinda - Icy Wind - Move Tutor
  (327, 32700, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Spinda - Last Resort - Move Tutor
  (327, 32700, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Spinda - Low Kick - Move Tutor
  (327, 32700, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Spinda - Recycle - Move Tutor
  (327, 32700, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Spinda - Role Play - Move Tutor
  (327, 32700, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Spinda - Skill Swap - Move Tutor
  (327, 32700, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Spinda - Sleep Talk - Move Tutor
  (327, 32700, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Spinda - Snatch - Move Tutor
  (327, 32700, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Spinda - Snore - Move Tutor
  (327, 32700, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Spinda - Thunder Punch - Move Tutor
  (327, 32700, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Spinda - Trick - Move Tutor
  (327, 32700, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Spinda - Uproar - Move Tutor
  (327, 32700, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 78),
  -- Spinda - Zen Headbutt - Move Tutor
  (327, 32700, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 79),
  -- Trapinch - Bite - Level 1
  (328, 32800, 44, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Trapinch - Sand Attack - Level 4
  (328, 32800, 28, 12, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Trapinch - Feint Attack - Level 7
  (328, 32800, 185, 12, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Trapinch - Sand Tomb - Level 10
  (328, 32800, 328, 12, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Trapinch - Mud-Slap - Level 13
  (328, 32800, 189, 12, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Trapinch - Bide - Level 17
  (328, 32800, 117, 12, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Trapinch - Bulldoze - Level 21
  (328, 32800, 523, 12, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Trapinch - Rock Slide - Level 25
  (328, 32800, 157, 12, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Trapinch - Dig - Level 29
  (328, 32800, 91, 12, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Trapinch - Crunch - Level 34
  (328, 32800, 242, 12, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Trapinch - Earth Power - Level 39
  (328, 32800, 414, 12, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Trapinch - Sandstorm - Level 44
  (328, 32800, 201, 12, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Trapinch - Hyper Beam - Level 49
  (328, 32800, 63, 12, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Trapinch - Earthquake - Level 55
  (328, 32800, 89, 12, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Trapinch - Feint - Level 61
  (328, 32800, 364, 12, NULL, 1, 61, NULL, NULL, NULL, 15),
  -- Trapinch - Superpower - Level 67
  (328, 32800, 276, 12, NULL, 1, 67, NULL, NULL, NULL, 16),
  -- Trapinch - Fissure - Level 73
  (328, 32800, 90, 12, NULL, 1, 73, NULL, NULL, NULL, 17),
  -- Trapinch - Toxic - TM06
  (328, 32800, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 18),
  -- Trapinch - Hidden Power - TM10
  (328, 32800, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 19),
  -- Trapinch - Sunny Day - TM11
  (328, 32800, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 20),
  -- Trapinch - Hyper Beam - TM15
  (328, 32800, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 21),
  -- Trapinch - Protect - TM17
  (328, 32800, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 22),
  -- Trapinch - Frustration - TM21
  (328, 32800, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 23),
  -- Trapinch - Solar Beam - TM22
  (328, 32800, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 24),
  -- Trapinch - Earthquake - TM26
  (328, 32800, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 25),
  -- Trapinch - Return - TM27
  (328, 32800, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 26),
  -- Trapinch - Dig - TM28
  (328, 32800, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 27),
  -- Trapinch - Double Team - TM32
  (328, 32800, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 28),
  -- Trapinch - Sandstorm - TM37
  (328, 32800, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 29),
  -- Trapinch - Rock Tomb - TM39
  (328, 32800, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 30),
  -- Trapinch - Facade - TM42
  (328, 32800, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 31),
  -- Trapinch - Rest - TM44
  (328, 32800, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 32),
  -- Trapinch - Attract - TM45
  (328, 32800, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 33),
  -- Trapinch - Round - TM48
  (328, 32800, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 34),
  -- Trapinch - Struggle Bug - TM76
  (328, 32800, 522, 12, NULL, 2, NULL, NULL, 12002076, NULL, 35),
  -- Trapinch - Bulldoze - TM78
  (328, 32800, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 36),
  -- Trapinch - Rock Slide - TM80
  (328, 32800, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 37),
  -- Trapinch - Swagger - TM87
  (328, 32800, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 38),
  -- Trapinch - Substitute - TM90
  (328, 32800, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 39),
  -- Trapinch - Rock Smash - TM94
  (328, 32800, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 40),
  -- Trapinch - Strength - HM04
  (328, 32800, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 41),
  -- Trapinch - Bug Bite - Egg Move
  (328, 32800, 450, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Trapinch - Earth Power - Egg Move
  (328, 32800, 414, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Trapinch - Endure - Egg Move
  (328, 32800, 203, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Trapinch - Flail - Egg Move
  (328, 32800, 175, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Trapinch - Focus Energy - Egg Move
  (328, 32800, 116, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Trapinch - Fury Cutter - Egg Move
  (328, 32800, 210, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Trapinch - Gust - Egg Move
  (328, 32800, 16, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Trapinch - Mud Shot - Egg Move
  (328, 32800, 341, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Trapinch - Quick Attack - Egg Move
  (328, 32800, 98, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Trapinch - Signal Beam - Egg Move
  (328, 32800, 324, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Trapinch - Bug Bite - Move Tutor
  (328, 32800, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Trapinch - Earth Power - Move Tutor
  (328, 32800, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Trapinch - Giga Drain - Move Tutor
  (328, 32800, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Trapinch - Signal Beam - Move Tutor
  (328, 32800, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Trapinch - Sleep Talk - Move Tutor
  (328, 32800, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Trapinch - Snore - Move Tutor
  (328, 32800, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Trapinch - Superpower - Move Tutor
  (328, 32800, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Vibrava - Sonic Boom - Level 1
  (329, 32900, 49, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Vibrava - Sand Attack - Level 1
  (329, 32900, 28, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Vibrava - Feint Attack - Level 1
  (329, 32900, 185, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Vibrava - Sand Tomb - Level 1
  (329, 32900, 328, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Vibrava - Sand Attack - Level 4
  (329, 32900, 28, 12, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Vibrava - Feint Attack - Level 7
  (329, 32900, 185, 12, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Vibrava - Sand Tomb - Level 10
  (329, 32900, 328, 12, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Vibrava - Mud-Slap - Level 13
  (329, 32900, 189, 12, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Vibrava - Bide - Level 17
  (329, 32900, 117, 12, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Vibrava - Bulldoze - Level 21
  (329, 32900, 523, 12, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Vibrava - Rock Slide - Level 25
  (329, 32900, 157, 12, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Vibrava - Supersonic - Level 29
  (329, 32900, 48, 12, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Vibrava - Screech - Level 34
  (329, 32900, 103, 12, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Vibrava - Dragon Breath - Level 35
  (329, 32900, 225, 12, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Vibrava - Earth Power - Level 39
  (329, 32900, 414, 12, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Vibrava - Sandstorm - Level 44
  (329, 32900, 201, 12, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Vibrava - Hyper Beam - Level 49
  (329, 32900, 63, 12, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Vibrava - Toxic - TM06
  (329, 32900, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 18),
  -- Vibrava - Hidden Power - TM10
  (329, 32900, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 19),
  -- Vibrava - Sunny Day - TM11
  (329, 32900, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 20),
  -- Vibrava - Hyper Beam - TM15
  (329, 32900, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 21),
  -- Vibrava - Protect - TM17
  (329, 32900, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 22),
  -- Vibrava - Frustration - TM21
  (329, 32900, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 23),
  -- Vibrava - Solar Beam - TM22
  (329, 32900, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 24),
  -- Vibrava - Earthquake - TM26
  (329, 32900, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 25),
  -- Vibrava - Return - TM27
  (329, 32900, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 26),
  -- Vibrava - Dig - TM28
  (329, 32900, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 27),
  -- Vibrava - Double Team - TM32
  (329, 32900, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 28),
  -- Vibrava - Sandstorm - TM37
  (329, 32900, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 29),
  -- Vibrava - Rock Tomb - TM39
  (329, 32900, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 30),
  -- Vibrava - Facade - TM42
  (329, 32900, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 31),
  -- Vibrava - Rest - TM44
  (329, 32900, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 32),
  -- Vibrava - Attract - TM45
  (329, 32900, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 33),
  -- Vibrava - Round - TM48
  (329, 32900, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 34),
  -- Vibrava - Struggle Bug - TM76
  (329, 32900, 522, 12, NULL, 2, NULL, NULL, 12002076, NULL, 35),
  -- Vibrava - Bulldoze - TM78
  (329, 32900, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 36),
  -- Vibrava - Rock Slide - TM80
  (329, 32900, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 37),
  -- Vibrava - Swagger - TM87
  (329, 32900, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 38),
  -- Vibrava - U-turn - TM89
  (329, 32900, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 39),
  -- Vibrava - Substitute - TM90
  (329, 32900, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 40),
  -- Vibrava - Rock Smash - TM94
  (329, 32900, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 41),
  -- Vibrava - Fly - HM02
  (329, 32900, 19, 12, NULL, 3, NULL, NULL, 12003002, NULL, 42),
  -- Vibrava - Strength - HM04
  (329, 32900, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 43),
  -- Vibrava - Bug Bite - Move Tutor
  (329, 32900, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Vibrava - Dragon Pulse - Move Tutor
  (329, 32900, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Vibrava - Draco Meteor - Move Tutor
  (329, 32900, 434, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Vibrava - Earth Power - Move Tutor
  (329, 32900, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Vibrava - Giga Drain - Move Tutor
  (329, 32900, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Vibrava - Heat Wave - Move Tutor
  (329, 32900, 257, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Vibrava - Outrage - Move Tutor
  (329, 32900, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Vibrava - Roost - Move Tutor
  (329, 32900, 355, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Vibrava - Signal Beam - Move Tutor
  (329, 32900, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Vibrava - Sleep Talk - Move Tutor
  (329, 32900, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Vibrava - Snore - Move Tutor
  (329, 32900, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Vibrava - Superpower - Move Tutor
  (329, 32900, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Vibrava - Tailwind - Move Tutor
  (329, 32900, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Flygon - Sonic Boom - Level 1
  (330, 33000, 49, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Flygon - Sand Attack - Level 1
  (330, 33000, 28, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Flygon - Feint Attack - Level 1
  (330, 33000, 185, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Flygon - Sand Tomb - Level 1
  (330, 33000, 328, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Flygon - Sand Attack - Level 4
  (330, 33000, 28, 12, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Flygon - Feint Attack - Level 7
  (330, 33000, 185, 12, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Flygon - Sand Tomb - Level 10
  (330, 33000, 328, 12, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Flygon - Mud-Slap - Level 13
  (330, 33000, 189, 12, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Flygon - Bide - Level 17
  (330, 33000, 117, 12, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Flygon - Bulldoze - Level 21
  (330, 33000, 523, 12, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Flygon - Rock Slide - Level 25
  (330, 33000, 157, 12, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Flygon - Supersonic - Level 29
  (330, 33000, 48, 12, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Flygon - Screech - Level 34
  (330, 33000, 103, 12, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Flygon - Dragon Breath - Level 35
  (330, 33000, 225, 12, NULL, 1, 35, NULL, NULL, NULL, 14),
  -- Flygon - Earth Power - Level 39
  (330, 33000, 414, 12, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Flygon - Sandstorm - Level 44
  (330, 33000, 201, 12, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Flygon - Dragon Tail - Level 45
  (330, 33000, 525, 12, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Flygon - Hyper Beam - Level 49
  (330, 33000, 63, 12, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Flygon - Dragon Claw - Level 55
  (330, 33000, 337, 12, NULL, 1, 55, NULL, NULL, NULL, 19),
  -- Flygon - Hone Claws - TM01
  (330, 33000, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 20),
  -- Flygon - Dragon Claw - TM02
  (330, 33000, 337, 12, NULL, 2, NULL, NULL, 12002002, NULL, 21),
  -- Flygon - Toxic - TM06
  (330, 33000, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 22),
  -- Flygon - Hidden Power - TM10
  (330, 33000, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 23),
  -- Flygon - Sunny Day - TM11
  (330, 33000, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 24),
  -- Flygon - Hyper Beam - TM15
  (330, 33000, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 25),
  -- Flygon - Protect - TM17
  (330, 33000, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 26),
  -- Flygon - Frustration - TM21
  (330, 33000, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 27),
  -- Flygon - Solar Beam - TM22
  (330, 33000, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 28),
  -- Flygon - Earthquake - TM26
  (330, 33000, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 29),
  -- Flygon - Return - TM27
  (330, 33000, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 30),
  -- Flygon - Dig - TM28
  (330, 33000, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 31),
  -- Flygon - Double Team - TM32
  (330, 33000, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 32),
  -- Flygon - Flamethrower - TM35
  (330, 33000, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 33),
  -- Flygon - Sandstorm - TM37
  (330, 33000, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 34),
  -- Flygon - Fire Blast - TM38
  (330, 33000, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 35),
  -- Flygon - Rock Tomb - TM39
  (330, 33000, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 36),
  -- Flygon - Aerial Ace - TM40
  (330, 33000, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 37),
  -- Flygon - Facade - TM42
  (330, 33000, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 38),
  -- Flygon - Rest - TM44
  (330, 33000, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 39),
  -- Flygon - Attract - TM45
  (330, 33000, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 40),
  -- Flygon - Round - TM48
  (330, 33000, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 41),
  -- Flygon - Incinerate - TM59
  (330, 33000, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 42),
  -- Flygon - Giga Impact - TM68
  (330, 33000, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 43),
  -- Flygon - Stone Edge - TM71
  (330, 33000, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 44),
  -- Flygon - Struggle Bug - TM76
  (330, 33000, 522, 12, NULL, 2, NULL, NULL, 12002076, NULL, 45),
  -- Flygon - Bulldoze - TM78
  (330, 33000, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 46),
  -- Flygon - Rock Slide - TM80
  (330, 33000, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 47),
  -- Flygon - Dragon Tail - TM82
  (330, 33000, 525, 12, NULL, 2, NULL, NULL, 12002082, NULL, 48),
  -- Flygon - Swagger - TM87
  (330, 33000, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 49),
  -- Flygon - U-turn - TM89
  (330, 33000, 369, 12, NULL, 2, NULL, NULL, 12002089, NULL, 50),
  -- Flygon - Substitute - TM90
  (330, 33000, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 51),
  -- Flygon - Rock Smash - TM94
  (330, 33000, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 52),
  -- Flygon - Fly - HM02
  (330, 33000, 19, 12, NULL, 3, NULL, NULL, 12003002, NULL, 53),
  -- Flygon - Strength - HM04
  (330, 33000, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 54),
  -- Flygon - Bug Bite - Move Tutor
  (330, 33000, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Flygon - Dragon Pulse - Move Tutor
  (330, 33000, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Flygon - Draco Meteor - Move Tutor
  (330, 33000, 434, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Flygon - Earth Power - Move Tutor
  (330, 33000, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Flygon - Fire Punch - Move Tutor
  (330, 33000, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Flygon - Giga Drain - Move Tutor
  (330, 33000, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Flygon - Heat Wave - Move Tutor
  (330, 33000, 257, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Flygon - Iron Tail - Move Tutor
  (330, 33000, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Flygon - Outrage - Move Tutor
  (330, 33000, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Flygon - Roost - Move Tutor
  (330, 33000, 355, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Flygon - Signal Beam - Move Tutor
  (330, 33000, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Flygon - Sleep Talk - Move Tutor
  (330, 33000, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Flygon - Snore - Move Tutor
  (330, 33000, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Flygon - Superpower - Move Tutor
  (330, 33000, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Flygon - Tailwind - Move Tutor
  (330, 33000, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Flygon - Thunder Punch - Move Tutor
  (330, 33000, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Cacnea - Poison Sting - Level 1
  (331, 33100, 40, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cacnea - Leer - Level 1
  (331, 33100, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cacnea - Absorb - Level 5
  (331, 33100, 71, 12, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Cacnea - Growth - Level 9
  (331, 33100, 74, 12, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Cacnea - Leech Seed - Level 13
  (331, 33100, 73, 12, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Cacnea - Sand Attack - Level 17
  (331, 33100, 28, 12, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Cacnea - Pin Missile - Level 21
  (331, 33100, 42, 12, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Cacnea - Ingrain - Level 25
  (331, 33100, 275, 12, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Cacnea - Feint Attack - Level 29
  (331, 33100, 185, 12, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Cacnea - Spikes - Level 33
  (331, 33100, 191, 12, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Cacnea - Sucker Punch - Level 37
  (331, 33100, 389, 12, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Cacnea - Payback - Level 41
  (331, 33100, 371, 12, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Cacnea - Needle Arm - Level 45
  (331, 33100, 302, 12, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Cacnea - Cotton Spore - Level 49
  (331, 33100, 178, 12, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Cacnea - Sandstorm - Level 53
  (331, 33100, 201, 12, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Cacnea - Destiny Bond - Level 57
  (331, 33100, 194, 12, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Cacnea - Toxic - TM06
  (331, 33100, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Cacnea - Venoshock - TM09
  (331, 33100, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 18),
  -- Cacnea - Hidden Power - TM10
  (331, 33100, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 19),
  -- Cacnea - Sunny Day - TM11
  (331, 33100, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 20),
  -- Cacnea - Protect - TM17
  (331, 33100, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 21),
  -- Cacnea - Frustration - TM21
  (331, 33100, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Cacnea - Solar Beam - TM22
  (331, 33100, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 23),
  -- Cacnea - Return - TM27
  (331, 33100, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 24),
  -- Cacnea - Brick Break - TM31
  (331, 33100, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 25),
  -- Cacnea - Double Team - TM32
  (331, 33100, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 26),
  -- Cacnea - Sandstorm - TM37
  (331, 33100, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 27),
  -- Cacnea - Facade - TM42
  (331, 33100, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 28),
  -- Cacnea - Rest - TM44
  (331, 33100, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 29),
  -- Cacnea - Attract - TM45
  (331, 33100, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 30),
  -- Cacnea - Round - TM48
  (331, 33100, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 31),
  -- Cacnea - Energy Ball - TM53
  (331, 33100, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 32),
  -- Cacnea - Fling - TM56
  (331, 33100, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 33),
  -- Cacnea - Payback - TM66
  (331, 33100, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 34),
  -- Cacnea - Flash - TM70
  (331, 33100, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 35),
  -- Cacnea - Swords Dance - TM75
  (331, 33100, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 36),
  -- Cacnea - Poison Jab - TM84
  (331, 33100, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 37),
  -- Cacnea - Grass Knot - TM86
  (331, 33100, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 38),
  -- Cacnea - Swagger - TM87
  (331, 33100, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 39),
  -- Cacnea - Substitute - TM90
  (331, 33100, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 40),
  -- Cacnea - Cut - HM01
  (331, 33100, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 41),
  -- Cacnea - Acid - Egg Move
  (331, 33100, 51, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Cacnea - Block - Egg Move
  (331, 33100, 335, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Cacnea - Counter - Egg Move
  (331, 33100, 68, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Cacnea - Disable - Egg Move
  (331, 33100, 50, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Cacnea - Dynamic Punch - Egg Move
  (331, 33100, 223, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Cacnea - Grass Whistle - Egg Move
  (331, 33100, 320, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Cacnea - Low Kick - Egg Move
  (331, 33100, 67, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Cacnea - Magical Leaf - Egg Move
  (331, 33100, 345, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Cacnea - Nasty Plot - Egg Move
  (331, 33100, 417, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Cacnea - Seed Bomb - Egg Move
  (331, 33100, 402, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Cacnea - Smelling Salts - Egg Move
  (331, 33100, 265, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Cacnea - Switcheroo - Egg Move
  (331, 33100, 415, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Cacnea - Teeter Dance - Egg Move
  (331, 33100, 298, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Cacnea - Worry Seed - Egg Move
  (331, 33100, 388, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Cacnea - Block - Move Tutor
  (331, 33100, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Cacnea - Dark Pulse - Move Tutor
  (331, 33100, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Cacnea - Drain Punch - Move Tutor
  (331, 33100, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Cacnea - Giga Drain - Move Tutor
  (331, 33100, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Cacnea - Low Kick - Move Tutor
  (331, 33100, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Cacnea - Role Play - Move Tutor
  (331, 33100, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Cacnea - Seed Bomb - Move Tutor
  (331, 33100, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Cacnea - Sleep Talk - Move Tutor
  (331, 33100, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Cacnea - Snore - Move Tutor
  (331, 33100, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Cacnea - Spite - Move Tutor
  (331, 33100, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Cacnea - Synthesis - Move Tutor
  (331, 33100, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Cacnea - Thunder Punch - Move Tutor
  (331, 33100, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Cacnea - Worry Seed - Move Tutor
  (331, 33100, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Cacturne - Revenge - Level 1
  (332, 33200, 279, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cacturne - Poison Sting - Level 1
  (332, 33200, 40, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cacturne - Leer - Level 1
  (332, 33200, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cacturne - Absorb - Level 1
  (332, 33200, 71, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cacturne - Growth - Level 1
  (332, 33200, 74, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Cacturne - Absorb - Level 5
  (332, 33200, 71, 12, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Cacturne - Growth - Level 9
  (332, 33200, 74, 12, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Cacturne - Leech Seed - Level 13
  (332, 33200, 73, 12, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Cacturne - Sand Attack - Level 17
  (332, 33200, 28, 12, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Cacturne - Pin Missile - Level 21
  (332, 33200, 42, 12, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Cacturne - Ingrain - Level 25
  (332, 33200, 275, 12, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Cacturne - Feint Attack - Level 29
  (332, 33200, 185, 12, NULL, 1, 29, NULL, NULL, NULL, 12),
  -- Cacturne - Spikes - Level 35
  (332, 33200, 191, 12, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Cacturne - Sucker Punch - Level 41
  (332, 33200, 389, 12, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Cacturne - Payback - Level 47
  (332, 33200, 371, 12, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Cacturne - Needle Arm - Level 53
  (332, 33200, 302, 12, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Cacturne - Cotton Spore - Level 59
  (332, 33200, 178, 12, NULL, 1, 59, NULL, NULL, NULL, 17),
  -- Cacturne - Sandstorm - Level 65
  (332, 33200, 201, 12, NULL, 1, 65, NULL, NULL, NULL, 18),
  -- Cacturne - Destiny Bond - Level 71
  (332, 33200, 194, 12, NULL, 1, 71, NULL, NULL, NULL, 19),
  -- Cacturne - Toxic - TM06
  (332, 33200, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 20),
  -- Cacturne - Venoshock - TM09
  (332, 33200, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 21),
  -- Cacturne - Hidden Power - TM10
  (332, 33200, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 22),
  -- Cacturne - Sunny Day - TM11
  (332, 33200, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 23),
  -- Cacturne - Hyper Beam - TM15
  (332, 33200, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 24),
  -- Cacturne - Protect - TM17
  (332, 33200, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 25),
  -- Cacturne - Frustration - TM21
  (332, 33200, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Cacturne - Solar Beam - TM22
  (332, 33200, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 27),
  -- Cacturne - Return - TM27
  (332, 33200, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 28),
  -- Cacturne - Brick Break - TM31
  (332, 33200, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 29),
  -- Cacturne - Double Team - TM32
  (332, 33200, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 30),
  -- Cacturne - Sandstorm - TM37
  (332, 33200, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 31),
  -- Cacturne - Facade - TM42
  (332, 33200, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 32),
  -- Cacturne - Rest - TM44
  (332, 33200, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 33),
  -- Cacturne - Attract - TM45
  (332, 33200, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 34),
  -- Cacturne - Round - TM48
  (332, 33200, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 35),
  -- Cacturne - Focus Blast - TM52
  (332, 33200, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 36),
  -- Cacturne - Energy Ball - TM53
  (332, 33200, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 37),
  -- Cacturne - Fling - TM56
  (332, 33200, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 38),
  -- Cacturne - Embargo - TM63
  (332, 33200, 373, 12, NULL, 2, NULL, NULL, 12002063, NULL, 39),
  -- Cacturne - Payback - TM66
  (332, 33200, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 40),
  -- Cacturne - Retaliate - TM67
  (332, 33200, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 41),
  -- Cacturne - Giga Impact - TM68
  (332, 33200, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 42),
  -- Cacturne - Flash - TM70
  (332, 33200, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 43),
  -- Cacturne - Swords Dance - TM75
  (332, 33200, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 44),
  -- Cacturne - Poison Jab - TM84
  (332, 33200, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 45),
  -- Cacturne - Grass Knot - TM86
  (332, 33200, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 46),
  -- Cacturne - Swagger - TM87
  (332, 33200, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 47),
  -- Cacturne - Substitute - TM90
  (332, 33200, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 48),
  -- Cacturne - Cut - HM01
  (332, 33200, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 49),
  -- Cacturne - Strength - HM04
  (332, 33200, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 50),
  -- Cacturne - Block - Move Tutor
  (332, 33200, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Cacturne - Dark Pulse - Move Tutor
  (332, 33200, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Cacturne - Drain Punch - Move Tutor
  (332, 33200, 409, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Cacturne - Foul Play - Move Tutor
  (332, 33200, 492, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Cacturne - Giga Drain - Move Tutor
  (332, 33200, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Cacturne - Low Kick - Move Tutor
  (332, 33200, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Cacturne - Role Play - Move Tutor
  (332, 33200, 272, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Cacturne - Seed Bomb - Move Tutor
  (332, 33200, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Cacturne - Sleep Talk - Move Tutor
  (332, 33200, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Cacturne - Snore - Move Tutor
  (332, 33200, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Cacturne - Spite - Move Tutor
  (332, 33200, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Cacturne - Superpower - Move Tutor
  (332, 33200, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Cacturne - Synthesis - Move Tutor
  (332, 33200, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Cacturne - Thunder Punch - Move Tutor
  (332, 33200, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Cacturne - Worry Seed - Move Tutor
  (332, 33200, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Swablu - Peck - Level 1
  (333, 33300, 64, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swablu - Growl - Level 1
  (333, 33300, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swablu - Astonish - Level 4
  (333, 33300, 310, 12, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Swablu - Sing - Level 8
  (333, 33300, 47, 12, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Swablu - Fury Attack - Level 10
  (333, 33300, 31, 12, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Swablu - Safeguard - Level 13
  (333, 33300, 219, 12, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Swablu - Mist - Level 15
  (333, 33300, 54, 12, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Swablu - Round - Level 18
  (333, 33300, 496, 12, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Swablu - Natural Gift - Level 21
  (333, 33300, 363, 12, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Swablu - Take Down - Level 25
  (333, 33300, 36, 12, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Swablu - Refresh - Level 29
  (333, 33300, 287, 12, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Swablu - Mirror Move - Level 34
  (333, 33300, 119, 12, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Swablu - Cotton Guard - Level 39
  (333, 33300, 538, 12, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Swablu - Dragon Pulse - Level 42
  (333, 33300, 406, 12, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Swablu - Perish Song - Level 48
  (333, 33300, 195, 12, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Swablu - Toxic - TM06
  (333, 33300, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Swablu - Hidden Power - TM10
  (333, 33300, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Swablu - Sunny Day - TM11
  (333, 33300, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 18),
  -- Swablu - Ice Beam - TM13
  (333, 33300, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 19),
  -- Swablu - Protect - TM17
  (333, 33300, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 20),
  -- Swablu - Rain Dance - TM18
  (333, 33300, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 21),
  -- Swablu - Safeguard - TM20
  (333, 33300, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 22),
  -- Swablu - Frustration - TM21
  (333, 33300, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 23),
  -- Swablu - Solar Beam - TM22
  (333, 33300, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 24),
  -- Swablu - Return - TM27
  (333, 33300, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 25),
  -- Swablu - Double Team - TM32
  (333, 33300, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 26),
  -- Swablu - Aerial Ace - TM40
  (333, 33300, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 27),
  -- Swablu - Facade - TM42
  (333, 33300, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 28),
  -- Swablu - Rest - TM44
  (333, 33300, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 29),
  -- Swablu - Attract - TM45
  (333, 33300, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 30),
  -- Swablu - Thief - TM46
  (333, 33300, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 31),
  -- Swablu - Round - TM48
  (333, 33300, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 32),
  -- Swablu - Echoed Voice - TM49
  (333, 33300, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 33),
  -- Swablu - Psych Up - TM77
  (333, 33300, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 34),
  -- Swablu - Dream Eater - TM85
  (333, 33300, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 35),
  -- Swablu - Swagger - TM87
  (333, 33300, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 36),
  -- Swablu - Pluck - TM88
  (333, 33300, 365, 12, NULL, 2, NULL, NULL, 12002088, NULL, 37),
  -- Swablu - Substitute - TM90
  (333, 33300, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 38),
  -- Swablu - Fly - HM02
  (333, 33300, 19, 12, NULL, 3, NULL, NULL, 12003002, NULL, 39),
  -- Swablu - Agility - Egg Move
  (333, 33300, 97, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Swablu - Dragon Rush - Egg Move
  (333, 33300, 407, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Swablu - Feather Dance - Egg Move
  (333, 33300, 297, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Swablu - Haze - Egg Move
  (333, 33300, 114, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Swablu - Hyper Voice - Egg Move
  (333, 33300, 304, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Swablu - Power Swap - Egg Move
  (333, 33300, 384, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Swablu - Pursuit - Egg Move
  (333, 33300, 228, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Swablu - Rage - Egg Move
  (333, 33300, 99, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Swablu - Roost - Egg Move
  (333, 33300, 355, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Swablu - Steel Wing - Egg Move
  (333, 33300, 211, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Swablu - Dragon Pulse - Move Tutor
  (333, 33300, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Swablu - Heal Bell - Move Tutor
  (333, 33300, 215, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Swablu - Heat Wave - Move Tutor
  (333, 33300, 257, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Swablu - Hyper Voice - Move Tutor
  (333, 33300, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Swablu - Outrage - Move Tutor
  (333, 33300, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Swablu - Roost - Move Tutor
  (333, 33300, 355, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Swablu - Sleep Talk - Move Tutor
  (333, 33300, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Swablu - Snore - Move Tutor
  (333, 33300, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Swablu - Tailwind - Move Tutor
  (333, 33300, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Swablu - Uproar - Move Tutor
  (333, 33300, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Altaria - Pluck - Level 1
  (334, 33400, 365, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Altaria - Peck - Level 1
  (334, 33400, 64, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Altaria - Growl - Level 1
  (334, 33400, 45, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Altaria - Astonish - Level 1
  (334, 33400, 310, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Altaria - Sing - Level 1
  (334, 33400, 47, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Altaria - Astonish - Level 4
  (334, 33400, 310, 12, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Altaria - Sing - Level 8
  (334, 33400, 47, 12, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Altaria - Fury Attack - Level 10
  (334, 33400, 31, 12, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Altaria - Safeguard - Level 13
  (334, 33400, 219, 12, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Altaria - Mist - Level 15
  (334, 33400, 54, 12, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Altaria - Round - Level 18
  (334, 33400, 496, 12, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Altaria - Natural Gift - Level 21
  (334, 33400, 363, 12, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Altaria - Take Down - Level 25
  (334, 33400, 36, 12, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Altaria - Refresh - Level 29
  (334, 33400, 287, 12, NULL, 1, 29, NULL, NULL, NULL, 14),
  -- Altaria - Dragon Dance - Level 34
  (334, 33400, 349, 12, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Altaria - Dragon Breath - Level 35
  (334, 33400, 225, 12, NULL, 1, 35, NULL, NULL, NULL, 16),
  -- Altaria - Cotton Guard - Level 42
  (334, 33400, 538, 12, NULL, 1, 42, NULL, NULL, NULL, 17),
  -- Altaria - Dragon Pulse - Level 48
  (334, 33400, 406, 12, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Altaria - Perish Song - Level 57
  (334, 33400, 195, 12, NULL, 1, 57, NULL, NULL, NULL, 19),
  -- Altaria - Sky Attack - Level 64
  (334, 33400, 143, 12, NULL, 1, 64, NULL, NULL, NULL, 20),
  -- Altaria - Hone Claws - TM01
  (334, 33400, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 21),
  -- Altaria - Dragon Claw - TM02
  (334, 33400, 337, 12, NULL, 2, NULL, NULL, 12002002, NULL, 22),
  -- Altaria - Roar - TM05
  (334, 33400, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 23),
  -- Altaria - Toxic - TM06
  (334, 33400, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 24),
  -- Altaria - Hidden Power - TM10
  (334, 33400, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 25),
  -- Altaria - Sunny Day - TM11
  (334, 33400, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 26),
  -- Altaria - Ice Beam - TM13
  (334, 33400, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 27),
  -- Altaria - Hyper Beam - TM15
  (334, 33400, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 28),
  -- Altaria - Protect - TM17
  (334, 33400, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 29),
  -- Altaria - Rain Dance - TM18
  (334, 33400, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 30),
  -- Altaria - Safeguard - TM20
  (334, 33400, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 31),
  -- Altaria - Frustration - TM21
  (334, 33400, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 32),
  -- Altaria - Solar Beam - TM22
  (334, 33400, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 33),
  -- Altaria - Earthquake - TM26
  (334, 33400, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 34),
  -- Altaria - Return - TM27
  (334, 33400, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 35),
  -- Altaria - Double Team - TM32
  (334, 33400, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 36),
  -- Altaria - Flamethrower - TM35
  (334, 33400, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 37),
  -- Altaria - Fire Blast - TM38
  (334, 33400, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 38),
  -- Altaria - Aerial Ace - TM40
  (334, 33400, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 39),
  -- Altaria - Facade - TM42
  (334, 33400, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 40),
  -- Altaria - Rest - TM44
  (334, 33400, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 41),
  -- Altaria - Attract - TM45
  (334, 33400, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 42),
  -- Altaria - Thief - TM46
  (334, 33400, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 43),
  -- Altaria - Round - TM48
  (334, 33400, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 44),
  -- Altaria - Echoed Voice - TM49
  (334, 33400, 497, 12, NULL, 2, NULL, NULL, 12002049, NULL, 45),
  -- Altaria - Incinerate - TM59
  (334, 33400, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 46),
  -- Altaria - Giga Impact - TM68
  (334, 33400, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 47),
  -- Altaria - Psych Up - TM77
  (334, 33400, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 48),
  -- Altaria - Bulldoze - TM78
  (334, 33400, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 49),
  -- Altaria - Dream Eater - TM85
  (334, 33400, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 50),
  -- Altaria - Swagger - TM87
  (334, 33400, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 51),
  -- Altaria - Pluck - TM88
  (334, 33400, 365, 12, NULL, 2, NULL, NULL, 12002088, NULL, 52),
  -- Altaria - Substitute - TM90
  (334, 33400, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 53),
  -- Altaria - Rock Smash - TM94
  (334, 33400, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 54),
  -- Altaria - Fly - HM02
  (334, 33400, 19, 12, NULL, 3, NULL, NULL, 12003002, NULL, 55),
  -- Altaria - Draco Meteor - Move Tutor
  (334, 33400, 434, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Altaria - Dragon Pulse - Move Tutor
  (334, 33400, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Altaria - Heal Bell - Move Tutor
  (334, 33400, 215, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Altaria - Heat Wave - Move Tutor
  (334, 33400, 257, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Altaria - Hyper Voice - Move Tutor
  (334, 33400, 304, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Altaria - Iron Tail - Move Tutor
  (334, 33400, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Altaria - Outrage - Move Tutor
  (334, 33400, 200, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Altaria - Roost - Move Tutor
  (334, 33400, 355, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Altaria - Sky Attack - Move Tutor
  (334, 33400, 143, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Altaria - Sleep Talk - Move Tutor
  (334, 33400, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Altaria - Snore - Move Tutor
  (334, 33400, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Altaria - Tailwind - Move Tutor
  (334, 33400, 366, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Altaria - Uproar - Move Tutor
  (334, 33400, 253, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Altaria - Wonder Room - Move Tutor
  (334, 33400, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Zangoose - Scratch - Level 1
  (335, 33500, 10, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zangoose - Leer - Level 1
  (335, 33500, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zangoose - Quick Attack - Level 5
  (335, 33500, 98, 12, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Zangoose - Fury Cutter - Level 8
  (335, 33500, 210, 12, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Zangoose - Pursuit - Level 12
  (335, 33500, 228, 12, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Zangoose - Slash - Level 15
  (335, 33500, 163, 12, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Zangoose - Embargo - Level 19
  (335, 33500, 373, 12, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Zangoose - Crush Claw - Level 22
  (335, 33500, 306, 12, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Zangoose - Revenge - Level 26
  (335, 33500, 279, 12, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Zangoose - False Swipe - Level 29
  (335, 33500, 206, 12, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Zangoose - Detect - Level 33
  (335, 33500, 197, 12, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Zangoose - X-Scissor - Level 36
  (335, 33500, 404, 12, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Zangoose - Taunt - Level 40
  (335, 33500, 269, 12, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Zangoose - Swords Dance - Level 43
  (335, 33500, 14, 12, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Zangoose - Close Combat - Level 47
  (335, 33500, 370, 12, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Zangoose - Hone Claws - TM01
  (335, 33500, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 16),
  -- Zangoose - Roar - TM05
  (335, 33500, 46, 12, NULL, 2, NULL, NULL, 12002005, NULL, 17),
  -- Zangoose - Toxic - TM06
  (335, 33500, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 18),
  -- Zangoose - Hidden Power - TM10
  (335, 33500, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 19),
  -- Zangoose - Sunny Day - TM11
  (335, 33500, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 20),
  -- Zangoose - Taunt - TM12
  (335, 33500, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 21),
  -- Zangoose - Ice Beam - TM13
  (335, 33500, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 22),
  -- Zangoose - Blizzard - TM14
  (335, 33500, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 23),
  -- Zangoose - Protect - TM17
  (335, 33500, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 24),
  -- Zangoose - Rain Dance - TM18
  (335, 33500, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 25),
  -- Zangoose - Frustration - TM21
  (335, 33500, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 26),
  -- Zangoose - Solar Beam - TM22
  (335, 33500, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 27),
  -- Zangoose - Thunderbolt - TM24
  (335, 33500, 85, 12, NULL, 2, NULL, NULL, 12002024, NULL, 28),
  -- Zangoose - Thunder - TM25
  (335, 33500, 87, 12, NULL, 2, NULL, NULL, 12002025, NULL, 29),
  -- Zangoose - Return - TM27
  (335, 33500, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 30),
  -- Zangoose - Dig - TM28
  (335, 33500, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 31),
  -- Zangoose - Shadow Ball - TM30
  (335, 33500, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 32),
  -- Zangoose - Brick Break - TM31
  (335, 33500, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 33),
  -- Zangoose - Double Team - TM32
  (335, 33500, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 34),
  -- Zangoose - Flamethrower - TM35
  (335, 33500, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 35),
  -- Zangoose - Fire Blast - TM38
  (335, 33500, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 36),
  -- Zangoose - Rock Tomb - TM39
  (335, 33500, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 37),
  -- Zangoose - Aerial Ace - TM40
  (335, 33500, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 38),
  -- Zangoose - Facade - TM42
  (335, 33500, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 39),
  -- Zangoose - Rest - TM44
  (335, 33500, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 40),
  -- Zangoose - Attract - TM45
  (335, 33500, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 41),
  -- Zangoose - Thief - TM46
  (335, 33500, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 42),
  -- Zangoose - Round - TM48
  (335, 33500, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 43),
  -- Zangoose - Focus Blast - TM52
  (335, 33500, 411, 12, NULL, 2, NULL, NULL, 12002052, NULL, 44),
  -- Zangoose - False Swipe - TM54
  (335, 33500, 206, 12, NULL, 2, NULL, NULL, 12002054, NULL, 45),
  -- Zangoose - Fling - TM56
  (335, 33500, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 46),
  -- Zangoose - Incinerate - TM59
  (335, 33500, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 47),
  -- Zangoose - Embargo - TM63
  (335, 33500, 373, 12, NULL, 2, NULL, NULL, 12002063, NULL, 48),
  -- Zangoose - Shadow Claw - TM65
  (335, 33500, 421, 12, NULL, 2, NULL, NULL, 12002065, NULL, 49),
  -- Zangoose - Payback - TM66
  (335, 33500, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 50),
  -- Zangoose - Retaliate - TM67
  (335, 33500, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 51),
  -- Zangoose - Swords Dance - TM75
  (335, 33500, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 52),
  -- Zangoose - Rock Slide - TM80
  (335, 33500, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 53),
  -- Zangoose - X-Scissor - TM81
  (335, 33500, 404, 12, NULL, 2, NULL, NULL, 12002081, NULL, 54),
  -- Zangoose - Work Up - TM83
  (335, 33500, 526, 12, NULL, 2, NULL, NULL, 12002083, NULL, 55),
  -- Zangoose - Poison Jab - TM84
  (335, 33500, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 56),
  -- Zangoose - Swagger - TM87
  (335, 33500, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 57),
  -- Zangoose - Substitute - TM90
  (335, 33500, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 58),
  -- Zangoose - Rock Smash - TM94
  (335, 33500, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 59),
  -- Zangoose - Strength - HM04
  (335, 33500, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 60),
  -- Zangoose - Counter - Egg Move
  (335, 33500, 68, 12, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Zangoose - Curse - Egg Move
  (335, 33500, 174, 12, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Zangoose - Disable - Egg Move
  (335, 33500, 50, 12, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Zangoose - Double Hit - Egg Move
  (335, 33500, 458, 12, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Zangoose - Double Kick - Egg Move
  (335, 33500, 24, 12, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Zangoose - Feint - Egg Move
  (335, 33500, 364, 12, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Zangoose - Final Gambit - Egg Move
  (335, 33500, 515, 12, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Zangoose - Flail - Egg Move
  (335, 33500, 175, 12, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Zangoose - Fury Swipes - Egg Move
  (335, 33500, 154, 12, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Zangoose - Iron Tail - Egg Move
  (335, 33500, 231, 12, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Zangoose - Metal Claw - Egg Move
  (335, 33500, 232, 12, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Zangoose - Night Slash - Egg Move
  (335, 33500, 400, 12, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Zangoose - Razor Wind - Egg Move
  (335, 33500, 13, 12, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Zangoose - Endeavor - Move Tutor
  (335, 33500, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Zangoose - Fire Punch - Move Tutor
  (335, 33500, 7, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Zangoose - Giga Drain - Move Tutor
  (335, 33500, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Zangoose - Ice Punch - Move Tutor
  (335, 33500, 8, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Zangoose - Icy Wind - Move Tutor
  (335, 33500, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 78),
  -- Zangoose - Iron Tail - Move Tutor
  (335, 33500, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 79),
  -- Zangoose - Knock Off - Move Tutor
  (335, 33500, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 80),
  -- Zangoose - Last Resort - Move Tutor
  (335, 33500, 387, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 81),
  -- Zangoose - Low Kick - Move Tutor
  (335, 33500, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 82),
  -- Zangoose - Sleep Talk - Move Tutor
  (335, 33500, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 83),
  -- Zangoose - Snore - Move Tutor
  (335, 33500, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 84),
  -- Zangoose - Thunder Punch - Move Tutor
  (335, 33500, 9, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 85),
  -- Seviper - Wrap - Level 1
  (336, 33600, 35, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seviper - Lick - Level 1
  (336, 33600, 122, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Seviper - Bite - Level 5
  (336, 33600, 44, 12, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Seviper - Swagger - Level 9
  (336, 33600, 207, 12, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Seviper - Poison Tail - Level 12
  (336, 33600, 342, 12, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Seviper - Screech - Level 16
  (336, 33600, 103, 12, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Seviper - Venoshock - Level 20
  (336, 33600, 474, 12, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Seviper - Glare - Level 23
  (336, 33600, 137, 12, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Seviper - Poison Fang - Level 27
  (336, 33600, 305, 12, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Seviper - Night Slash - Level 31
  (336, 33600, 400, 12, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Seviper - Gastro Acid - Level 34
  (336, 33600, 380, 12, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Seviper - Haze - Level 38
  (336, 33600, 114, 12, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Seviper - Poison Jab - Level 42
  (336, 33600, 398, 12, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Seviper - Crunch - Level 45
  (336, 33600, 242, 12, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Seviper - Coil - Level 49
  (336, 33600, 489, 12, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Seviper - Wring Out - Level 53
  (336, 33600, 378, 12, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Seviper - Toxic - TM06
  (336, 33600, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 17),
  -- Seviper - Venoshock - TM09
  (336, 33600, 474, 12, NULL, 2, NULL, NULL, 12002009, NULL, 18),
  -- Seviper - Hidden Power - TM10
  (336, 33600, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 19),
  -- Seviper - Sunny Day - TM11
  (336, 33600, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 20),
  -- Seviper - Taunt - TM12
  (336, 33600, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 21),
  -- Seviper - Protect - TM17
  (336, 33600, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 22),
  -- Seviper - Rain Dance - TM18
  (336, 33600, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 23),
  -- Seviper - Frustration - TM21
  (336, 33600, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 24),
  -- Seviper - Earthquake - TM26
  (336, 33600, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 25),
  -- Seviper - Return - TM27
  (336, 33600, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 26),
  -- Seviper - Dig - TM28
  (336, 33600, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 27),
  -- Seviper - Double Team - TM32
  (336, 33600, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 28),
  -- Seviper - Sludge Wave - TM34
  (336, 33600, 482, 12, NULL, 2, NULL, NULL, 12002034, NULL, 29),
  -- Seviper - Flamethrower - TM35
  (336, 33600, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 30),
  -- Seviper - Sludge Bomb - TM36
  (336, 33600, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 31),
  -- Seviper - Facade - TM42
  (336, 33600, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 32),
  -- Seviper - Rest - TM44
  (336, 33600, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 33),
  -- Seviper - Attract - TM45
  (336, 33600, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 34),
  -- Seviper - Thief - TM46
  (336, 33600, 168, 12, NULL, 2, NULL, NULL, 12002046, NULL, 35),
  -- Seviper - Round - TM48
  (336, 33600, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 36),
  -- Seviper - Payback - TM66
  (336, 33600, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 37),
  -- Seviper - Retaliate - TM67
  (336, 33600, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 38),
  -- Seviper - Bulldoze - TM78
  (336, 33600, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 39),
  -- Seviper - X-Scissor - TM81
  (336, 33600, 404, 12, NULL, 2, NULL, NULL, 12002081, NULL, 40),
  -- Seviper - Dragon Tail - TM82
  (336, 33600, 525, 12, NULL, 2, NULL, NULL, 12002082, NULL, 41),
  -- Seviper - Poison Jab - TM84
  (336, 33600, 398, 12, NULL, 2, NULL, NULL, 12002084, NULL, 42),
  -- Seviper - Swagger - TM87
  (336, 33600, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 43),
  -- Seviper - Substitute - TM90
  (336, 33600, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 44),
  -- Seviper - Rock Smash - TM94
  (336, 33600, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 45),
  -- Seviper - Strength - HM04
  (336, 33600, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 46),
  -- Seviper - Assurance - Egg Move
  (336, 33600, 372, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Seviper - Body Slam - Egg Move
  (336, 33600, 34, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Seviper - Final Gambit - Egg Move
  (336, 33600, 515, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Seviper - Iron Tail - Egg Move
  (336, 33600, 231, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Seviper - Night Slash - Egg Move
  (336, 33600, 400, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Seviper - Punishment - Egg Move
  (336, 33600, 386, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Seviper - Scary Face - Egg Move
  (336, 33600, 184, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Seviper - Spit Up - Egg Move
  (336, 33600, 255, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Seviper - Stockpile - Egg Move
  (336, 33600, 254, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Seviper - Swallow - Egg Move
  (336, 33600, 256, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Seviper - Switcheroo - Egg Move
  (336, 33600, 415, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Seviper - Wring Out - Egg Move
  (336, 33600, 378, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Seviper - Aqua Tail - Move Tutor
  (336, 33600, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Seviper - Bind - Move Tutor
  (336, 33600, 20, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Seviper - Dark Pulse - Move Tutor
  (336, 33600, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Seviper - Gastro Acid - Move Tutor
  (336, 33600, 380, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Seviper - Giga Drain - Move Tutor
  (336, 33600, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Seviper - Iron Tail - Move Tutor
  (336, 33600, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Seviper - Knock Off - Move Tutor
  (336, 33600, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Seviper - Sleep Talk - Move Tutor
  (336, 33600, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Seviper - Snatch - Move Tutor
  (336, 33600, 289, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Seviper - Snore - Move Tutor
  (336, 33600, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Lunatone - Tackle - Level 1
  (337, 33700, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lunatone - Harden - Level 1
  (337, 33700, 106, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lunatone - Confusion - Level 1
  (337, 33700, 93, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lunatone - Rock Throw - Level 5
  (337, 33700, 88, 12, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Lunatone - Hypnosis - Level 9
  (337, 33700, 95, 12, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Lunatone - Rock Polish - Level 13
  (337, 33700, 397, 12, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Lunatone - Psywave - Level 17
  (337, 33700, 149, 12, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Lunatone - Embargo - Level 21
  (337, 33700, 373, 12, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Lunatone - Rock Slide - Level 25
  (337, 33700, 157, 12, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Lunatone - Cosmic Power - Level 29
  (337, 33700, 322, 12, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Lunatone - Psychic - Level 33
  (337, 33700, 94, 12, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Lunatone - Heal Block - Level 37
  (337, 33700, 377, 12, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Lunatone - Stone Edge - Level 41
  (337, 33700, 444, 12, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Lunatone - Future Sight - Level 45
  (337, 33700, 248, 12, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Lunatone - Explosion - Level 49
  (337, 33700, 153, 12, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Lunatone - Magic Room - Level 53
  (337, 33700, 478, 12, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Lunatone - Psyshock - TM03
  (337, 33700, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 17),
  -- Lunatone - Calm Mind - TM04
  (337, 33700, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 18),
  -- Lunatone - Toxic - TM06
  (337, 33700, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Lunatone - Hidden Power - TM10
  (337, 33700, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Lunatone - Ice Beam - TM13
  (337, 33700, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 21),
  -- Lunatone - Blizzard - TM14
  (337, 33700, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 22),
  -- Lunatone - Hyper Beam - TM15
  (337, 33700, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 23),
  -- Lunatone - Light Screen - TM16
  (337, 33700, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 24),
  -- Lunatone - Protect - TM17
  (337, 33700, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 25),
  -- Lunatone - Rain Dance - TM18
  (337, 33700, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 26),
  -- Lunatone - Telekinesis - TM19
  (337, 33700, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 27),
  -- Lunatone - Safeguard - TM20
  (337, 33700, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 28),
  -- Lunatone - Frustration - TM21
  (337, 33700, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 29),
  -- Lunatone - Smack Down - TM23
  (337, 33700, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 30),
  -- Lunatone - Earthquake - TM26
  (337, 33700, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 31),
  -- Lunatone - Return - TM27
  (337, 33700, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 32),
  -- Lunatone - Psychic - TM29
  (337, 33700, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 33),
  -- Lunatone - Shadow Ball - TM30
  (337, 33700, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 34),
  -- Lunatone - Double Team - TM32
  (337, 33700, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 35),
  -- Lunatone - Reflect - TM33
  (337, 33700, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 36),
  -- Lunatone - Sandstorm - TM37
  (337, 33700, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 37),
  -- Lunatone - Rock Tomb - TM39
  (337, 33700, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 38),
  -- Lunatone - Facade - TM42
  (337, 33700, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 39),
  -- Lunatone - Rest - TM44
  (337, 33700, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 40),
  -- Lunatone - Round - TM48
  (337, 33700, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 41),
  -- Lunatone - Charge Beam - TM57
  (337, 33700, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 42),
  -- Lunatone - Acrobatics - TM62
  (337, 33700, 512, 12, NULL, 2, NULL, NULL, 12002062, NULL, 43),
  -- Lunatone - Embargo - TM63
  (337, 33700, 373, 12, NULL, 2, NULL, NULL, 12002063, NULL, 44),
  -- Lunatone - Explosion - TM64
  (337, 33700, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 45),
  -- Lunatone - Giga Impact - TM68
  (337, 33700, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 46),
  -- Lunatone - Rock Polish - TM69
  (337, 33700, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 47),
  -- Lunatone - Flash - TM70
  (337, 33700, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 48),
  -- Lunatone - Stone Edge - TM71
  (337, 33700, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 49),
  -- Lunatone - Gyro Ball - TM74
  (337, 33700, 360, 12, NULL, 2, NULL, NULL, 12002074, NULL, 50),
  -- Lunatone - Psych Up - TM77
  (337, 33700, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 51),
  -- Lunatone - Bulldoze - TM78
  (337, 33700, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 52),
  -- Lunatone - Rock Slide - TM80
  (337, 33700, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 53),
  -- Lunatone - Dream Eater - TM85
  (337, 33700, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 54),
  -- Lunatone - Grass Knot - TM86
  (337, 33700, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 55),
  -- Lunatone - Swagger - TM87
  (337, 33700, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 56),
  -- Lunatone - Substitute - TM90
  (337, 33700, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 57),
  -- Lunatone - Trick Room - TM92
  (337, 33700, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 58),
  -- Lunatone - Earth Power - Move Tutor
  (337, 33700, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Lunatone - Gravity - Move Tutor
  (337, 33700, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Lunatone - Helping Hand - Move Tutor
  (337, 33700, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Lunatone - Icy Wind - Move Tutor
  (337, 33700, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Lunatone - Iron Head - Move Tutor
  (337, 33700, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Lunatone - Magic Coat - Move Tutor
  (337, 33700, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Lunatone - Magic Room - Move Tutor
  (337, 33700, 478, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Lunatone - Pain Split - Move Tutor
  (337, 33700, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Lunatone - Recycle - Move Tutor
  (337, 33700, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Lunatone - Signal Beam - Move Tutor
  (337, 33700, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Lunatone - Skill Swap - Move Tutor
  (337, 33700, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Lunatone - Sleep Talk - Move Tutor
  (337, 33700, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Lunatone - Snore - Move Tutor
  (337, 33700, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Lunatone - Stealth Rock - Move Tutor
  (337, 33700, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Lunatone - Zen Headbutt - Move Tutor
  (337, 33700, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Solrock - Tackle - Level 1
  (338, 33800, 33, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Solrock - Harden - Level 1
  (338, 33800, 106, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Solrock - Confusion - Level 1
  (338, 33800, 93, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Solrock - Rock Throw - Level 5
  (338, 33800, 88, 12, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Solrock - Fire Spin - Level 9
  (338, 33800, 83, 12, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Solrock - Rock Polish - Level 13
  (338, 33800, 397, 12, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Solrock - Psywave - Level 17
  (338, 33800, 149, 12, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Solrock - Embargo - Level 21
  (338, 33800, 373, 12, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Solrock - Rock Slide - Level 25
  (338, 33800, 157, 12, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Solrock - Cosmic Power - Level 29
  (338, 33800, 322, 12, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Solrock - Psychic - Level 33
  (338, 33800, 94, 12, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Solrock - Heal Block - Level 37
  (338, 33800, 377, 12, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Solrock - Stone Edge - Level 41
  (338, 33800, 444, 12, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Solrock - Solar Beam - Level 45
  (338, 33800, 76, 12, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Solrock - Explosion - Level 49
  (338, 33800, 153, 12, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Solrock - Wonder Room - Level 53
  (338, 33800, 472, 12, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Solrock - Psyshock - TM03
  (338, 33800, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 17),
  -- Solrock - Calm Mind - TM04
  (338, 33800, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 18),
  -- Solrock - Toxic - TM06
  (338, 33800, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Solrock - Hidden Power - TM10
  (338, 33800, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 20),
  -- Solrock - Sunny Day - TM11
  (338, 33800, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 21),
  -- Solrock - Hyper Beam - TM15
  (338, 33800, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 22),
  -- Solrock - Light Screen - TM16
  (338, 33800, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 23),
  -- Solrock - Protect - TM17
  (338, 33800, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 24),
  -- Solrock - Telekinesis - TM19
  (338, 33800, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 25),
  -- Solrock - Safeguard - TM20
  (338, 33800, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 26),
  -- Solrock - Frustration - TM21
  (338, 33800, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 27),
  -- Solrock - Solar Beam - TM22
  (338, 33800, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 28),
  -- Solrock - Smack Down - TM23
  (338, 33800, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 29),
  -- Solrock - Earthquake - TM26
  (338, 33800, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 30),
  -- Solrock - Return - TM27
  (338, 33800, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 31),
  -- Solrock - Psychic - TM29
  (338, 33800, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 32),
  -- Solrock - Shadow Ball - TM30
  (338, 33800, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 33),
  -- Solrock - Double Team - TM32
  (338, 33800, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 34),
  -- Solrock - Reflect - TM33
  (338, 33800, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 35),
  -- Solrock - Flamethrower - TM35
  (338, 33800, 53, 12, NULL, 2, NULL, NULL, 12002035, NULL, 36),
  -- Solrock - Sandstorm - TM37
  (338, 33800, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 37),
  -- Solrock - Fire Blast - TM38
  (338, 33800, 126, 12, NULL, 2, NULL, NULL, 12002038, NULL, 38),
  -- Solrock - Rock Tomb - TM39
  (338, 33800, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 39),
  -- Solrock - Facade - TM42
  (338, 33800, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 40),
  -- Solrock - Rest - TM44
  (338, 33800, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 41),
  -- Solrock - Round - TM48
  (338, 33800, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 42),
  -- Solrock - Overheat - TM50
  (338, 33800, 315, 12, NULL, 2, NULL, NULL, 12002050, NULL, 43),
  -- Solrock - Charge Beam - TM57
  (338, 33800, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 44),
  -- Solrock - Incinerate - TM59
  (338, 33800, 510, 12, NULL, 2, NULL, NULL, 12002059, NULL, 45),
  -- Solrock - Will-O-Wisp - TM61
  (338, 33800, 261, 12, NULL, 2, NULL, NULL, 12002061, NULL, 46),
  -- Solrock - Acrobatics - TM62
  (338, 33800, 512, 12, NULL, 2, NULL, NULL, 12002062, NULL, 47),
  -- Solrock - Embargo - TM63
  (338, 33800, 373, 12, NULL, 2, NULL, NULL, 12002063, NULL, 48),
  -- Solrock - Explosion - TM64
  (338, 33800, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 49),
  -- Solrock - Giga Impact - TM68
  (338, 33800, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 50),
  -- Solrock - Rock Polish - TM69
  (338, 33800, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 51),
  -- Solrock - Flash - TM70
  (338, 33800, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 52),
  -- Solrock - Stone Edge - TM71
  (338, 33800, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 53),
  -- Solrock - Gyro Ball - TM74
  (338, 33800, 360, 12, NULL, 2, NULL, NULL, 12002074, NULL, 54),
  -- Solrock - Psych Up - TM77
  (338, 33800, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 55),
  -- Solrock - Bulldoze - TM78
  (338, 33800, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 56),
  -- Solrock - Rock Slide - TM80
  (338, 33800, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 57),
  -- Solrock - Dream Eater - TM85
  (338, 33800, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 58),
  -- Solrock - Grass Knot - TM86
  (338, 33800, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 59),
  -- Solrock - Swagger - TM87
  (338, 33800, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 60),
  -- Solrock - Substitute - TM90
  (338, 33800, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 61),
  -- Solrock - Trick Room - TM92
  (338, 33800, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 62),
  -- Solrock - Earth Power - Move Tutor
  (338, 33800, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Solrock - Gravity - Move Tutor
  (338, 33800, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Solrock - Heat Wave - Move Tutor
  (338, 33800, 257, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Solrock - Helping Hand - Move Tutor
  (338, 33800, 270, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Solrock - Iron Defense - Move Tutor
  (338, 33800, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Solrock - Iron Head - Move Tutor
  (338, 33800, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Solrock - Magic Coat - Move Tutor
  (338, 33800, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Solrock - Pain Split - Move Tutor
  (338, 33800, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Solrock - Recycle - Move Tutor
  (338, 33800, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Solrock - Signal Beam - Move Tutor
  (338, 33800, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Solrock - Skill Swap - Move Tutor
  (338, 33800, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Solrock - Sleep Talk - Move Tutor
  (338, 33800, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Solrock - Snore - Move Tutor
  (338, 33800, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Solrock - Stealth Rock - Move Tutor
  (338, 33800, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Solrock - Wonder Room - Move Tutor
  (338, 33800, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Solrock - Zen Headbutt - Move Tutor
  (338, 33800, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 78),
  -- Barboach - Mud-Slap - Level 1
  (339, 33900, 189, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Barboach - Mud Sport - Level 6
  (339, 33900, 300, 12, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Barboach - Water Sport - Level 6
  (339, 33900, 346, 12, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Barboach - Water Gun - Level 10
  (339, 33900, 55, 12, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Barboach - Mud Bomb - Level 14
  (339, 33900, 426, 12, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Barboach - Amnesia - Level 18
  (339, 33900, 133, 12, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Barboach - Water Pulse - Level 22
  (339, 33900, 352, 12, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Barboach - Magnitude - Level 26
  (339, 33900, 222, 12, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Barboach - Rest - Level 31
  (339, 33900, 156, 12, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Barboach - Snore - Level 31
  (339, 33900, 173, 12, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Barboach - Aqua Tail - Level 35
  (339, 33900, 401, 12, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Barboach - Earthquake - Level 39
  (339, 33900, 89, 12, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Barboach - Future Sight - Level 43
  (339, 33900, 248, 12, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Barboach - Fissure - Level 47
  (339, 33900, 90, 12, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Barboach - Toxic - TM06
  (339, 33900, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Barboach - Hail - TM07
  (339, 33900, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 16),
  -- Barboach - Hidden Power - TM10
  (339, 33900, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Barboach - Ice Beam - TM13
  (339, 33900, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 18),
  -- Barboach - Blizzard - TM14
  (339, 33900, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 19),
  -- Barboach - Protect - TM17
  (339, 33900, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 20),
  -- Barboach - Rain Dance - TM18
  (339, 33900, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 21),
  -- Barboach - Frustration - TM21
  (339, 33900, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 22),
  -- Barboach - Earthquake - TM26
  (339, 33900, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 23),
  -- Barboach - Return - TM27
  (339, 33900, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 24),
  -- Barboach - Double Team - TM32
  (339, 33900, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 25),
  -- Barboach - Sandstorm - TM37
  (339, 33900, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 26),
  -- Barboach - Rock Tomb - TM39
  (339, 33900, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 27),
  -- Barboach - Facade - TM42
  (339, 33900, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 28),
  -- Barboach - Rest - TM44
  (339, 33900, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 29),
  -- Barboach - Attract - TM45
  (339, 33900, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 30),
  -- Barboach - Round - TM48
  (339, 33900, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 31),
  -- Barboach - Scald - TM55
  (339, 33900, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 32),
  -- Barboach - Bulldoze - TM78
  (339, 33900, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 33),
  -- Barboach - Swagger - TM87
  (339, 33900, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 34),
  -- Barboach - Substitute - TM90
  (339, 33900, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 35),
  -- Barboach - Surf - HM03
  (339, 33900, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 36),
  -- Barboach - Waterfall - HM05
  (339, 33900, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 37),
  -- Barboach - Dive - HM06
  (339, 33900, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 38),
  -- Barboach - Dragon Dance - Egg Move
  (339, 33900, 349, 12, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Barboach - Earth Power - Egg Move
  (339, 33900, 414, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Barboach - Flail - Egg Move
  (339, 33900, 175, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Barboach - Hydro Pump - Egg Move
  (339, 33900, 56, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Barboach - Mud Shot - Egg Move
  (339, 33900, 341, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Barboach - Muddy Water - Egg Move
  (339, 33900, 330, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Barboach - Spark - Egg Move
  (339, 33900, 209, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Barboach - Take Down - Egg Move
  (339, 33900, 36, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Barboach - Thrash - Egg Move
  (339, 33900, 37, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Barboach - Whirlpool - Egg Move
  (339, 33900, 250, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Barboach - Aqua Tail - Move Tutor
  (339, 33900, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Barboach - Bounce - Move Tutor
  (339, 33900, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Barboach - Earth Power - Move Tutor
  (339, 33900, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Barboach - Icy Wind - Move Tutor
  (339, 33900, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Barboach - Sleep Talk - Move Tutor
  (339, 33900, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Barboach - Snore - Move Tutor
  (339, 33900, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Whiscash - Zen Headbutt - Level 1
  (340, 34000, 428, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Whiscash - Tickle - Level 1
  (340, 34000, 321, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Whiscash - Mud-Slap - Level 1
  (340, 34000, 189, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Whiscash - Mud Sport - Level 1
  (340, 34000, 300, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Whiscash - Water Sport - Level 1
  (340, 34000, 346, 12, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Whiscash - Mud Sport - Level 6
  (340, 34000, 300, 12, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Whiscash - Water Sport - Level 6
  (340, 34000, 346, 12, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Whiscash - Water Gun - Level 10
  (340, 34000, 55, 12, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Whiscash - Mud Bomb - Level 14
  (340, 34000, 426, 12, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Whiscash - Amnesia - Level 18
  (340, 34000, 133, 12, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Whiscash - Water Pulse - Level 22
  (340, 34000, 352, 12, NULL, 1, 22, NULL, NULL, NULL, 11),
  -- Whiscash - Magnitude - Level 26
  (340, 34000, 222, 12, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Whiscash - Rest - Level 33
  (340, 34000, 156, 12, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Whiscash - Snore - Level 33
  (340, 34000, 173, 12, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Whiscash - Aqua Tail - Level 39
  (340, 34000, 401, 12, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Whiscash - Earthquake - Level 45
  (340, 34000, 89, 12, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Whiscash - Future Sight - Level 51
  (340, 34000, 248, 12, NULL, 1, 51, NULL, NULL, NULL, 17),
  -- Whiscash - Fissure - Level 57
  (340, 34000, 90, 12, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Whiscash - Toxic - TM06
  (340, 34000, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Whiscash - Hail - TM07
  (340, 34000, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 20),
  -- Whiscash - Hidden Power - TM10
  (340, 34000, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 21),
  -- Whiscash - Ice Beam - TM13
  (340, 34000, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 22),
  -- Whiscash - Blizzard - TM14
  (340, 34000, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 23),
  -- Whiscash - Hyper Beam - TM15
  (340, 34000, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 24),
  -- Whiscash - Protect - TM17
  (340, 34000, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 25),
  -- Whiscash - Rain Dance - TM18
  (340, 34000, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 26),
  -- Whiscash - Frustration - TM21
  (340, 34000, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 27),
  -- Whiscash - Earthquake - TM26
  (340, 34000, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 28),
  -- Whiscash - Return - TM27
  (340, 34000, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 29),
  -- Whiscash - Double Team - TM32
  (340, 34000, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 30),
  -- Whiscash - Sandstorm - TM37
  (340, 34000, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 31),
  -- Whiscash - Rock Tomb - TM39
  (340, 34000, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 32),
  -- Whiscash - Facade - TM42
  (340, 34000, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 33),
  -- Whiscash - Rest - TM44
  (340, 34000, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 34),
  -- Whiscash - Attract - TM45
  (340, 34000, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 35),
  -- Whiscash - Round - TM48
  (340, 34000, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 36),
  -- Whiscash - Scald - TM55
  (340, 34000, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 37),
  -- Whiscash - Giga Impact - TM68
  (340, 34000, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 38),
  -- Whiscash - Stone Edge - TM71
  (340, 34000, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 39),
  -- Whiscash - Bulldoze - TM78
  (340, 34000, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 40),
  -- Whiscash - Rock Slide - TM80
  (340, 34000, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 41),
  -- Whiscash - Swagger - TM87
  (340, 34000, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 42),
  -- Whiscash - Substitute - TM90
  (340, 34000, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 43),
  -- Whiscash - Rock Smash - TM94
  (340, 34000, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 44),
  -- Whiscash - Surf - HM03
  (340, 34000, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 45),
  -- Whiscash - Strength - HM04
  (340, 34000, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 46),
  -- Whiscash - Waterfall - HM05
  (340, 34000, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 47),
  -- Whiscash - Dive - HM06
  (340, 34000, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 48),
  -- Whiscash - Aqua Tail - Move Tutor
  (340, 34000, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Whiscash - Bounce - Move Tutor
  (340, 34000, 340, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Whiscash - Earth Power - Move Tutor
  (340, 34000, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Whiscash - Icy Wind - Move Tutor
  (340, 34000, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Whiscash - Sleep Talk - Move Tutor
  (340, 34000, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Whiscash - Snore - Move Tutor
  (340, 34000, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Whiscash - Zen Headbutt - Move Tutor
  (340, 34000, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Corphish - Bubble - Level 1
  (341, 34100, 145, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Corphish - Harden - Level 7
  (341, 34100, 106, 12, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Corphish - Vise Grip - Level 10
  (341, 34100, 11, 12, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Corphish - Leer - Level 13
  (341, 34100, 43, 12, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Corphish - Bubble Beam - Level 20
  (341, 34100, 61, 12, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Corphish - Protect - Level 23
  (341, 34100, 182, 12, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Corphish - Knock Off - Level 26
  (341, 34100, 282, 12, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Corphish - Taunt - Level 32
  (341, 34100, 269, 12, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Corphish - Night Slash - Level 35
  (341, 34100, 400, 12, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Corphish - Crabhammer - Level 38
  (341, 34100, 152, 12, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Corphish - Swords Dance - Level 44
  (341, 34100, 14, 12, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Corphish - Crunch - Level 47
  (341, 34100, 242, 12, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Corphish - Guillotine - Level 53
  (341, 34100, 12, 12, NULL, 1, 53, NULL, NULL, NULL, 13),
  -- Corphish - Hone Claws - TM01
  (341, 34100, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 14),
  -- Corphish - Toxic - TM06
  (341, 34100, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Corphish - Hail - TM07
  (341, 34100, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 16),
  -- Corphish - Hidden Power - TM10
  (341, 34100, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Corphish - Taunt - TM12
  (341, 34100, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 18),
  -- Corphish - Ice Beam - TM13
  (341, 34100, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 19),
  -- Corphish - Blizzard - TM14
  (341, 34100, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 20),
  -- Corphish - Protect - TM17
  (341, 34100, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 21),
  -- Corphish - Rain Dance - TM18
  (341, 34100, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 22),
  -- Corphish - Frustration - TM21
  (341, 34100, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 23),
  -- Corphish - Return - TM27
  (341, 34100, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 24),
  -- Corphish - Dig - TM28
  (341, 34100, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 25),
  -- Corphish - Brick Break - TM31
  (341, 34100, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 26),
  -- Corphish - Double Team - TM32
  (341, 34100, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 27),
  -- Corphish - Sludge Bomb - TM36
  (341, 34100, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 28),
  -- Corphish - Rock Tomb - TM39
  (341, 34100, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 29),
  -- Corphish - Aerial Ace - TM40
  (341, 34100, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 30),
  -- Corphish - Facade - TM42
  (341, 34100, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 31),
  -- Corphish - Rest - TM44
  (341, 34100, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 32),
  -- Corphish - Attract - TM45
  (341, 34100, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 33),
  -- Corphish - Round - TM48
  (341, 34100, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 34),
  -- Corphish - False Swipe - TM54
  (341, 34100, 206, 12, NULL, 2, NULL, NULL, 12002054, NULL, 35),
  -- Corphish - Scald - TM55
  (341, 34100, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 36),
  -- Corphish - Fling - TM56
  (341, 34100, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 37),
  -- Corphish - Payback - TM66
  (341, 34100, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 38),
  -- Corphish - Swords Dance - TM75
  (341, 34100, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 39),
  -- Corphish - Rock Slide - TM80
  (341, 34100, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 40),
  -- Corphish - X-Scissor - TM81
  (341, 34100, 404, 12, NULL, 2, NULL, NULL, 12002081, NULL, 41),
  -- Corphish - Swagger - TM87
  (341, 34100, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 42),
  -- Corphish - Substitute - TM90
  (341, 34100, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 43),
  -- Corphish - Rock Smash - TM94
  (341, 34100, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 44),
  -- Corphish - Cut - HM01
  (341, 34100, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 45),
  -- Corphish - Surf - HM03
  (341, 34100, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 46),
  -- Corphish - Strength - HM04
  (341, 34100, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 47),
  -- Corphish - Waterfall - HM05
  (341, 34100, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 48),
  -- Corphish - Ancient Power - Egg Move
  (341, 34100, 246, 12, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Corphish - Body Slam - Egg Move
  (341, 34100, 34, 12, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Corphish - Chip Away - Egg Move
  (341, 34100, 498, 12, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Corphish - Double-Edge - Egg Move
  (341, 34100, 38, 12, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Corphish - Dragon Dance - Egg Move
  (341, 34100, 349, 12, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Corphish - Endeavor - Egg Move
  (341, 34100, 283, 12, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Corphish - Knock Off - Egg Move
  (341, 34100, 282, 12, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Corphish - Metal Claw - Egg Move
  (341, 34100, 232, 12, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Corphish - Mud Sport - Egg Move
  (341, 34100, 300, 12, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Corphish - Superpower - Egg Move
  (341, 34100, 276, 12, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Corphish - Trump Card - Egg Move
  (341, 34100, 376, 12, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Corphish - Endeavor - Move Tutor
  (341, 34100, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Corphish - Icy Wind - Move Tutor
  (341, 34100, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Corphish - Iron Defense - Move Tutor
  (341, 34100, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Corphish - Knock Off - Move Tutor
  (341, 34100, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Corphish - Sleep Talk - Move Tutor
  (341, 34100, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Corphish - Snore - Move Tutor
  (341, 34100, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Corphish - Spite - Move Tutor
  (341, 34100, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Corphish - Superpower - Move Tutor
  (341, 34100, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Crawdaunt - Bubble - Level 1
  (342, 34200, 145, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Crawdaunt - Harden - Level 1
  (342, 34200, 106, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Crawdaunt - Vise Grip - Level 1
  (342, 34200, 11, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Crawdaunt - Leer - Level 1
  (342, 34200, 43, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Crawdaunt - Harden - Level 7
  (342, 34200, 106, 12, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Crawdaunt - Vise Grip - Level 10
  (342, 34200, 11, 12, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Crawdaunt - Leer - Level 13
  (342, 34200, 43, 12, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Crawdaunt - Bubble Beam - Level 20
  (342, 34200, 61, 12, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Crawdaunt - Protect - Level 23
  (342, 34200, 182, 12, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Crawdaunt - Knock Off - Level 26
  (342, 34200, 282, 12, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Crawdaunt - Swift - Level 30
  (342, 34200, 129, 12, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Crawdaunt - Taunt - Level 34
  (342, 34200, 269, 12, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Crawdaunt - Night Slash - Level 39
  (342, 34200, 400, 12, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Crawdaunt - Crabhammer - Level 44
  (342, 34200, 152, 12, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Crawdaunt - Swords Dance - Level 52
  (342, 34200, 14, 12, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Crawdaunt - Crunch - Level 57
  (342, 34200, 242, 12, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Crawdaunt - Guillotine - Level 65
  (342, 34200, 12, 12, NULL, 1, 65, NULL, NULL, NULL, 17),
  -- Crawdaunt - Hone Claws - TM01
  (342, 34200, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 18),
  -- Crawdaunt - Toxic - TM06
  (342, 34200, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 19),
  -- Crawdaunt - Hail - TM07
  (342, 34200, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 20),
  -- Crawdaunt - Hidden Power - TM10
  (342, 34200, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 21),
  -- Crawdaunt - Taunt - TM12
  (342, 34200, 269, 12, NULL, 2, NULL, NULL, 12002012, NULL, 22),
  -- Crawdaunt - Ice Beam - TM13
  (342, 34200, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 23),
  -- Crawdaunt - Blizzard - TM14
  (342, 34200, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 24),
  -- Crawdaunt - Hyper Beam - TM15
  (342, 34200, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 25),
  -- Crawdaunt - Protect - TM17
  (342, 34200, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 26),
  -- Crawdaunt - Rain Dance - TM18
  (342, 34200, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 27),
  -- Crawdaunt - Frustration - TM21
  (342, 34200, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 28),
  -- Crawdaunt - Return - TM27
  (342, 34200, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 29),
  -- Crawdaunt - Dig - TM28
  (342, 34200, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 30),
  -- Crawdaunt - Brick Break - TM31
  (342, 34200, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 31),
  -- Crawdaunt - Double Team - TM32
  (342, 34200, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 32),
  -- Crawdaunt - Sludge Wave - TM34
  (342, 34200, 482, 12, NULL, 2, NULL, NULL, 12002034, NULL, 33),
  -- Crawdaunt - Sludge Bomb - TM36
  (342, 34200, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 34),
  -- Crawdaunt - Rock Tomb - TM39
  (342, 34200, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 35),
  -- Crawdaunt - Aerial Ace - TM40
  (342, 34200, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 36),
  -- Crawdaunt - Facade - TM42
  (342, 34200, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 37),
  -- Crawdaunt - Rest - TM44
  (342, 34200, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 38),
  -- Crawdaunt - Attract - TM45
  (342, 34200, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 39),
  -- Crawdaunt - Round - TM48
  (342, 34200, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 40),
  -- Crawdaunt - False Swipe - TM54
  (342, 34200, 206, 12, NULL, 2, NULL, NULL, 12002054, NULL, 41),
  -- Crawdaunt - Scald - TM55
  (342, 34200, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 42),
  -- Crawdaunt - Fling - TM56
  (342, 34200, 374, 12, NULL, 2, NULL, NULL, 12002056, NULL, 43),
  -- Crawdaunt - Payback - TM66
  (342, 34200, 371, 12, NULL, 2, NULL, NULL, 12002066, NULL, 44),
  -- Crawdaunt - Retaliate - TM67
  (342, 34200, 514, 12, NULL, 2, NULL, NULL, 12002067, NULL, 45),
  -- Crawdaunt - Giga Impact - TM68
  (342, 34200, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 46),
  -- Crawdaunt - Swords Dance - TM75
  (342, 34200, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 47),
  -- Crawdaunt - Rock Slide - TM80
  (342, 34200, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 48),
  -- Crawdaunt - X-Scissor - TM81
  (342, 34200, 404, 12, NULL, 2, NULL, NULL, 12002081, NULL, 49),
  -- Crawdaunt - Swagger - TM87
  (342, 34200, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 50),
  -- Crawdaunt - Substitute - TM90
  (342, 34200, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 51),
  -- Crawdaunt - Rock Smash - TM94
  (342, 34200, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 52),
  -- Crawdaunt - Snarl - TM95
  (342, 34200, 555, 12, NULL, 2, NULL, NULL, 12002095, NULL, 53),
  -- Crawdaunt - Cut - HM01
  (342, 34200, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 54),
  -- Crawdaunt - Surf - HM03
  (342, 34200, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 55),
  -- Crawdaunt - Strength - HM04
  (342, 34200, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 56),
  -- Crawdaunt - Waterfall - HM05
  (342, 34200, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 57),
  -- Crawdaunt - Dive - HM06
  (342, 34200, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 58),
  -- Crawdaunt - Dark Pulse - Move Tutor
  (342, 34200, 399, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Crawdaunt - Endeavor - Move Tutor
  (342, 34200, 283, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Crawdaunt - Icy Wind - Move Tutor
  (342, 34200, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Crawdaunt - Iron Defense - Move Tutor
  (342, 34200, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Crawdaunt - Knock Off - Move Tutor
  (342, 34200, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Crawdaunt - Sleep Talk - Move Tutor
  (342, 34200, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Crawdaunt - Snore - Move Tutor
  (342, 34200, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Crawdaunt - Spite - Move Tutor
  (342, 34200, 180, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Crawdaunt - Superpower - Move Tutor
  (342, 34200, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Baltoy - Harden - Level 1
  (343, 34300, 106, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Baltoy - Confusion - Level 1
  (343, 34300, 93, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Baltoy - Rapid Spin - Level 4
  (343, 34300, 229, 12, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Baltoy - Mud-Slap - Level 7
  (343, 34300, 189, 12, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Baltoy - Rock Tomb - Level 10
  (343, 34300, 317, 12, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Baltoy - Psybeam - Level 13
  (343, 34300, 60, 12, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Baltoy - Power Trick - Level 17
  (343, 34300, 379, 12, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Baltoy - Ancient Power - Level 21
  (343, 34300, 246, 12, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Baltoy - Self-Destruct - Level 25
  (343, 34300, 120, 12, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Baltoy - Extrasensory - Level 28
  (343, 34300, 326, 12, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Baltoy - Cosmic Power - Level 31
  (343, 34300, 322, 12, NULL, 1, 31, NULL, NULL, NULL, 11),
  -- Baltoy - Guard Split - Level 34
  (343, 34300, 470, 12, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Baltoy - Power Split - Level 34
  (343, 34300, 471, 12, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Baltoy - Earth Power - Level 37
  (343, 34300, 414, 12, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Baltoy - Sandstorm - Level 41
  (343, 34300, 201, 12, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Baltoy - Heal Block - Level 45
  (343, 34300, 377, 12, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Baltoy - Explosion - Level 49
  (343, 34300, 153, 12, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Baltoy - Psyshock - TM03
  (343, 34300, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 18),
  -- Baltoy - Calm Mind - TM04
  (343, 34300, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 19),
  -- Baltoy - Toxic - TM06
  (343, 34300, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 20),
  -- Baltoy - Hidden Power - TM10
  (343, 34300, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 21),
  -- Baltoy - Sunny Day - TM11
  (343, 34300, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 22),
  -- Baltoy - Ice Beam - TM13
  (343, 34300, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 23),
  -- Baltoy - Light Screen - TM16
  (343, 34300, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 24),
  -- Baltoy - Protect - TM17
  (343, 34300, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 25),
  -- Baltoy - Rain Dance - TM18
  (343, 34300, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 26),
  -- Baltoy - Telekinesis - TM19
  (343, 34300, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 27),
  -- Baltoy - Safeguard - TM20
  (343, 34300, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 28),
  -- Baltoy - Frustration - TM21
  (343, 34300, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 29),
  -- Baltoy - Solar Beam - TM22
  (343, 34300, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 30),
  -- Baltoy - Smack Down - TM23
  (343, 34300, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 31),
  -- Baltoy - Earthquake - TM26
  (343, 34300, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 32),
  -- Baltoy - Return - TM27
  (343, 34300, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 33),
  -- Baltoy - Dig - TM28
  (343, 34300, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 34),
  -- Baltoy - Psychic - TM29
  (343, 34300, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 35),
  -- Baltoy - Shadow Ball - TM30
  (343, 34300, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 36),
  -- Baltoy - Double Team - TM32
  (343, 34300, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 37),
  -- Baltoy - Reflect - TM33
  (343, 34300, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 38),
  -- Baltoy - Sandstorm - TM37
  (343, 34300, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 39),
  -- Baltoy - Rock Tomb - TM39
  (343, 34300, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 40),
  -- Baltoy - Facade - TM42
  (343, 34300, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 41),
  -- Baltoy - Rest - TM44
  (343, 34300, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 42),
  -- Baltoy - Round - TM48
  (343, 34300, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 43),
  -- Baltoy - Ally Switch - TM51
  (343, 34300, 502, 12, NULL, 2, NULL, NULL, 12002051, NULL, 44),
  -- Baltoy - Charge Beam - TM57
  (343, 34300, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 45),
  -- Baltoy - Explosion - TM64
  (343, 34300, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 46),
  -- Baltoy - Rock Polish - TM69
  (343, 34300, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 47),
  -- Baltoy - Flash - TM70
  (343, 34300, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 48),
  -- Baltoy - Gyro Ball - TM74
  (343, 34300, 360, 12, NULL, 2, NULL, NULL, 12002074, NULL, 49),
  -- Baltoy - Psych Up - TM77
  (343, 34300, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 50),
  -- Baltoy - Bulldoze - TM78
  (343, 34300, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 51),
  -- Baltoy - Rock Slide - TM80
  (343, 34300, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 52),
  -- Baltoy - Dream Eater - TM85
  (343, 34300, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 53),
  -- Baltoy - Grass Knot - TM86
  (343, 34300, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 54),
  -- Baltoy - Swagger - TM87
  (343, 34300, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 55),
  -- Baltoy - Substitute - TM90
  (343, 34300, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 56),
  -- Baltoy - Trick Room - TM92
  (343, 34300, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 57),
  -- Baltoy - Drill Run - Move Tutor
  (343, 34300, 529, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Baltoy - Earth Power - Move Tutor
  (343, 34300, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Baltoy - Gravity - Move Tutor
  (343, 34300, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Baltoy - Magic Coat - Move Tutor
  (343, 34300, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Baltoy - Recycle - Move Tutor
  (343, 34300, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 62),
  -- Baltoy - Signal Beam - Move Tutor
  (343, 34300, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 63),
  -- Baltoy - Skill Swap - Move Tutor
  (343, 34300, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 64),
  -- Baltoy - Sleep Talk - Move Tutor
  (343, 34300, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 65),
  -- Baltoy - Snore - Move Tutor
  (343, 34300, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Baltoy - Stealth Rock - Move Tutor
  (343, 34300, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Baltoy - Trick - Move Tutor
  (343, 34300, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Baltoy - Wonder Room - Move Tutor
  (343, 34300, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Baltoy - Zen Headbutt - Move Tutor
  (343, 34300, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Claydol - Teleport - Level 1
  (344, 34400, 100, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Claydol - Harden - Level 1
  (344, 34400, 106, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Claydol - Confusion - Level 1
  (344, 34400, 93, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Claydol - Rapid Spin - Level 1
  (344, 34400, 229, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Claydol - Rapid Spin - Level 4
  (344, 34400, 229, 12, NULL, 1, 4, NULL, NULL, NULL, 5),
  -- Claydol - Mud-Slap - Level 7
  (344, 34400, 189, 12, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Claydol - Rock Tomb - Level 10
  (344, 34400, 317, 12, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Claydol - Psybeam - Level 13
  (344, 34400, 60, 12, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Claydol - Power Trick - Level 17
  (344, 34400, 379, 12, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Claydol - Ancient Power - Level 21
  (344, 34400, 246, 12, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Claydol - Self-Destruct - Level 25
  (344, 34400, 120, 12, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Claydol - Extrasensory - Level 28
  (344, 34400, 326, 12, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Claydol - Cosmic Power - Level 31
  (344, 34400, 322, 12, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Claydol - Guard Split - Level 34
  (344, 34400, 470, 12, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Claydol - Power Split - Level 34
  (344, 34400, 471, 12, NULL, 1, 34, NULL, NULL, NULL, 15),
  -- Claydol - Hyper Beam - Level 36
  (344, 34400, 63, 12, NULL, 1, 36, NULL, NULL, NULL, 16),
  -- Claydol - Earth Power - Level 40
  (344, 34400, 414, 12, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Claydol - Sandstorm - Level 47
  (344, 34400, 201, 12, NULL, 1, 47, NULL, NULL, NULL, 18),
  -- Claydol - Heal Block - Level 54
  (344, 34400, 377, 12, NULL, 1, 54, NULL, NULL, NULL, 19),
  -- Claydol - Explosion - Level 61
  (344, 34400, 153, 12, NULL, 1, 61, NULL, NULL, NULL, 20),
  -- Claydol - Psyshock - TM03
  (344, 34400, 473, 12, NULL, 2, NULL, NULL, 12002003, NULL, 21),
  -- Claydol - Calm Mind - TM04
  (344, 34400, 347, 12, NULL, 2, NULL, NULL, 12002004, NULL, 22),
  -- Claydol - Toxic - TM06
  (344, 34400, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 23),
  -- Claydol - Hidden Power - TM10
  (344, 34400, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 24),
  -- Claydol - Sunny Day - TM11
  (344, 34400, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 25),
  -- Claydol - Ice Beam - TM13
  (344, 34400, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 26),
  -- Claydol - Hyper Beam - TM15
  (344, 34400, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 27),
  -- Claydol - Light Screen - TM16
  (344, 34400, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 28),
  -- Claydol - Protect - TM17
  (344, 34400, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 29),
  -- Claydol - Rain Dance - TM18
  (344, 34400, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 30),
  -- Claydol - Telekinesis - TM19
  (344, 34400, 477, 12, NULL, 2, NULL, NULL, 12002019, NULL, 31),
  -- Claydol - Safeguard - TM20
  (344, 34400, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 32),
  -- Claydol - Frustration - TM21
  (344, 34400, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 33),
  -- Claydol - Solar Beam - TM22
  (344, 34400, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 34),
  -- Claydol - Smack Down - TM23
  (344, 34400, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 35),
  -- Claydol - Earthquake - TM26
  (344, 34400, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 36),
  -- Claydol - Return - TM27
  (344, 34400, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 37),
  -- Claydol - Dig - TM28
  (344, 34400, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 38),
  -- Claydol - Psychic - TM29
  (344, 34400, 94, 12, NULL, 2, NULL, NULL, 12002029, NULL, 39),
  -- Claydol - Shadow Ball - TM30
  (344, 34400, 247, 12, NULL, 2, NULL, NULL, 12002030, NULL, 40),
  -- Claydol - Double Team - TM32
  (344, 34400, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 41),
  -- Claydol - Reflect - TM33
  (344, 34400, 115, 12, NULL, 2, NULL, NULL, 12002033, NULL, 42),
  -- Claydol - Sandstorm - TM37
  (344, 34400, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 43),
  -- Claydol - Rock Tomb - TM39
  (344, 34400, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 44),
  -- Claydol - Facade - TM42
  (344, 34400, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 45),
  -- Claydol - Rest - TM44
  (344, 34400, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 46),
  -- Claydol - Round - TM48
  (344, 34400, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 47),
  -- Claydol - Ally Switch - TM51
  (344, 34400, 502, 12, NULL, 2, NULL, NULL, 12002051, NULL, 48),
  -- Claydol - Charge Beam - TM57
  (344, 34400, 451, 12, NULL, 2, NULL, NULL, 12002057, NULL, 49),
  -- Claydol - Explosion - TM64
  (344, 34400, 153, 12, NULL, 2, NULL, NULL, 12002064, NULL, 50),
  -- Claydol - Giga Impact - TM68
  (344, 34400, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 51),
  -- Claydol - Rock Polish - TM69
  (344, 34400, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 52),
  -- Claydol - Flash - TM70
  (344, 34400, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 53),
  -- Claydol - Stone Edge - TM71
  (344, 34400, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 54),
  -- Claydol - Gyro Ball - TM74
  (344, 34400, 360, 12, NULL, 2, NULL, NULL, 12002074, NULL, 55),
  -- Claydol - Psych Up - TM77
  (344, 34400, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 56),
  -- Claydol - Bulldoze - TM78
  (344, 34400, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 57),
  -- Claydol - Rock Slide - TM80
  (344, 34400, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 58),
  -- Claydol - Dream Eater - TM85
  (344, 34400, 138, 12, NULL, 2, NULL, NULL, 12002085, NULL, 59),
  -- Claydol - Grass Knot - TM86
  (344, 34400, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 60),
  -- Claydol - Swagger - TM87
  (344, 34400, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 61),
  -- Claydol - Substitute - TM90
  (344, 34400, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 62),
  -- Claydol - Trick Room - TM92
  (344, 34400, 433, 12, NULL, 2, NULL, NULL, 12002092, NULL, 63),
  -- Claydol - Rock Smash - TM94
  (344, 34400, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 64),
  -- Claydol - Strength - HM04
  (344, 34400, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 65),
  -- Claydol - Drill Run - Move Tutor
  (344, 34400, 529, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 66),
  -- Claydol - Earth Power - Move Tutor
  (344, 34400, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 67),
  -- Claydol - Gravity - Move Tutor
  (344, 34400, 356, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 68),
  -- Claydol - Magic Coat - Move Tutor
  (344, 34400, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 69),
  -- Claydol - Recycle - Move Tutor
  (344, 34400, 278, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 70),
  -- Claydol - Signal Beam - Move Tutor
  (344, 34400, 324, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 71),
  -- Claydol - Skill Swap - Move Tutor
  (344, 34400, 285, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 72),
  -- Claydol - Sleep Talk - Move Tutor
  (344, 34400, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 73),
  -- Claydol - Snore - Move Tutor
  (344, 34400, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 74),
  -- Claydol - Stealth Rock - Move Tutor
  (344, 34400, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 75),
  -- Claydol - Trick - Move Tutor
  (344, 34400, 271, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 76),
  -- Claydol - Wonder Room - Move Tutor
  (344, 34400, 472, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 77),
  -- Claydol - Zen Headbutt - Move Tutor
  (344, 34400, 428, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 78),
  -- Lileep - Astonish - Level 1
  (345, 34500, 310, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lileep - Constrict - Level 1
  (345, 34500, 132, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lileep - Acid - Level 8
  (345, 34500, 51, 12, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Lileep - Ingrain - Level 15
  (345, 34500, 275, 12, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Lileep - Confuse Ray - Level 22
  (345, 34500, 109, 12, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Lileep - Amnesia - Level 29
  (345, 34500, 133, 12, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Lileep - Gastro Acid - Level 36
  (345, 34500, 380, 12, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Lileep - Ancient Power - Level 43
  (345, 34500, 246, 12, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Lileep - Energy Ball - Level 50
  (345, 34500, 412, 12, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Lileep - Stockpile - Level 57
  (345, 34500, 254, 12, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Lileep - Spit Up - Level 57
  (345, 34500, 255, 12, NULL, 1, 57, NULL, NULL, NULL, 11),
  -- Lileep - Swallow - Level 57
  (345, 34500, 256, 12, NULL, 1, 57, NULL, NULL, NULL, 12),
  -- Lileep - Wring Out - Level 64
  (345, 34500, 378, 12, NULL, 1, 64, NULL, NULL, NULL, 13),
  -- Lileep - Toxic - TM06
  (345, 34500, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 14),
  -- Lileep - Hidden Power - TM10
  (345, 34500, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 15),
  -- Lileep - Sunny Day - TM11
  (345, 34500, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 16),
  -- Lileep - Protect - TM17
  (345, 34500, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 17),
  -- Lileep - Frustration - TM21
  (345, 34500, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 18),
  -- Lileep - Solar Beam - TM22
  (345, 34500, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 19),
  -- Lileep - Smack Down - TM23
  (345, 34500, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 20),
  -- Lileep - Return - TM27
  (345, 34500, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 21),
  -- Lileep - Double Team - TM32
  (345, 34500, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 22),
  -- Lileep - Sludge Bomb - TM36
  (345, 34500, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 23),
  -- Lileep - Sandstorm - TM37
  (345, 34500, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 24),
  -- Lileep - Rock Tomb - TM39
  (345, 34500, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 25),
  -- Lileep - Facade - TM42
  (345, 34500, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 26),
  -- Lileep - Rest - TM44
  (345, 34500, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 27),
  -- Lileep - Attract - TM45
  (345, 34500, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 28),
  -- Lileep - Round - TM48
  (345, 34500, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 29),
  -- Lileep - Energy Ball - TM53
  (345, 34500, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 30),
  -- Lileep - Rock Polish - TM69
  (345, 34500, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 31),
  -- Lileep - Flash - TM70
  (345, 34500, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 32),
  -- Lileep - Swords Dance - TM75
  (345, 34500, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 33),
  -- Lileep - Rock Slide - TM80
  (345, 34500, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 34),
  -- Lileep - Grass Knot - TM86
  (345, 34500, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 35),
  -- Lileep - Swagger - TM87
  (345, 34500, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 36),
  -- Lileep - Substitute - TM90
  (345, 34500, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 37),
  -- Lileep - Barrier - Egg Move
  (345, 34500, 112, 12, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Lileep - Curse - Egg Move
  (345, 34500, 174, 12, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Lileep - Endure - Egg Move
  (345, 34500, 203, 12, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Lileep - Mega Drain - Egg Move
  (345, 34500, 72, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Lileep - Mirror Coat - Egg Move
  (345, 34500, 243, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Lileep - Recover - Egg Move
  (345, 34500, 105, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Lileep - Stealth Rock - Egg Move
  (345, 34500, 446, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Lileep - Tickle - Egg Move
  (345, 34500, 321, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Lileep - Wring Out - Egg Move
  (345, 34500, 378, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Lileep - Bind - Move Tutor
  (345, 34500, 20, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Lileep - Earth Power - Move Tutor
  (345, 34500, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Lileep - Gastro Acid - Move Tutor
  (345, 34500, 380, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Lileep - Giga Drain - Move Tutor
  (345, 34500, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Lileep - Pain Split - Move Tutor
  (345, 34500, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Lileep - Seed Bomb - Move Tutor
  (345, 34500, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Lileep - Sleep Talk - Move Tutor
  (345, 34500, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Lileep - Snore - Move Tutor
  (345, 34500, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Lileep - Stealth Rock - Move Tutor
  (345, 34500, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Lileep - Synthesis - Move Tutor
  (345, 34500, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Lileep - Worry Seed - Move Tutor
  (345, 34500, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Cradily - Astonish - Level 1
  (346, 34600, 310, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cradily - Constrict - Level 1
  (346, 34600, 132, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cradily - Acid - Level 1
  (346, 34600, 51, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cradily - Ingrain - Level 1
  (346, 34600, 275, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Cradily - Acid - Level 8
  (346, 34600, 51, 12, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Cradily - Ingrain - Level 15
  (346, 34600, 275, 12, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Cradily - Confuse Ray - Level 22
  (346, 34600, 109, 12, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Cradily - Amnesia - Level 29
  (346, 34600, 133, 12, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Cradily - Ancient Power - Level 36
  (346, 34600, 246, 12, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Cradily - Gastro Acid - Level 46
  (346, 34600, 380, 12, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Cradily - Energy Ball - Level 56
  (346, 34600, 412, 12, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Cradily - Stockpile - Level 66
  (346, 34600, 254, 12, NULL, 1, 66, NULL, NULL, NULL, 12),
  -- Cradily - Spit Up - Level 66
  (346, 34600, 255, 12, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Cradily - Swallow - Level 66
  (346, 34600, 256, 12, NULL, 1, 66, NULL, NULL, NULL, 14),
  -- Cradily - Wring Out - Level 76
  (346, 34600, 378, 12, NULL, 1, 76, NULL, NULL, NULL, 15),
  -- Cradily - Toxic - TM06
  (346, 34600, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Cradily - Hidden Power - TM10
  (346, 34600, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Cradily - Sunny Day - TM11
  (346, 34600, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 18),
  -- Cradily - Hyper Beam - TM15
  (346, 34600, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 19),
  -- Cradily - Protect - TM17
  (346, 34600, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 20),
  -- Cradily - Frustration - TM21
  (346, 34600, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 21),
  -- Cradily - Solar Beam - TM22
  (346, 34600, 76, 12, NULL, 2, NULL, NULL, 12002022, NULL, 22),
  -- Cradily - Smack Down - TM23
  (346, 34600, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 23),
  -- Cradily - Earthquake - TM26
  (346, 34600, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 24),
  -- Cradily - Return - TM27
  (346, 34600, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 25),
  -- Cradily - Double Team - TM32
  (346, 34600, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 26),
  -- Cradily - Sludge Wave - TM34
  (346, 34600, 482, 12, NULL, 2, NULL, NULL, 12002034, NULL, 27),
  -- Cradily - Sludge Bomb - TM36
  (346, 34600, 188, 12, NULL, 2, NULL, NULL, 12002036, NULL, 28),
  -- Cradily - Sandstorm - TM37
  (346, 34600, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 29),
  -- Cradily - Rock Tomb - TM39
  (346, 34600, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 30),
  -- Cradily - Facade - TM42
  (346, 34600, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 31),
  -- Cradily - Rest - TM44
  (346, 34600, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 32),
  -- Cradily - Attract - TM45
  (346, 34600, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 33),
  -- Cradily - Round - TM48
  (346, 34600, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 34),
  -- Cradily - Energy Ball - TM53
  (346, 34600, 412, 12, NULL, 2, NULL, NULL, 12002053, NULL, 35),
  -- Cradily - Giga Impact - TM68
  (346, 34600, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 36),
  -- Cradily - Rock Polish - TM69
  (346, 34600, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 37),
  -- Cradily - Flash - TM70
  (346, 34600, 148, 12, NULL, 2, NULL, NULL, 12002070, NULL, 38),
  -- Cradily - Stone Edge - TM71
  (346, 34600, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 39),
  -- Cradily - Swords Dance - TM75
  (346, 34600, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 40),
  -- Cradily - Bulldoze - TM78
  (346, 34600, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 41),
  -- Cradily - Rock Slide - TM80
  (346, 34600, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 42),
  -- Cradily - Grass Knot - TM86
  (346, 34600, 447, 12, NULL, 2, NULL, NULL, 12002086, NULL, 43),
  -- Cradily - Swagger - TM87
  (346, 34600, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 44),
  -- Cradily - Substitute - TM90
  (346, 34600, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 45),
  -- Cradily - Rock Smash - TM94
  (346, 34600, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 46),
  -- Cradily - Strength - HM04
  (346, 34600, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 47),
  -- Cradily - Bind - Move Tutor
  (346, 34600, 20, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Cradily - Block - Move Tutor
  (346, 34600, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Cradily - Earth Power - Move Tutor
  (346, 34600, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Cradily - Gastro Acid - Move Tutor
  (346, 34600, 380, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Cradily - Giga Drain - Move Tutor
  (346, 34600, 202, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Cradily - Pain Split - Move Tutor
  (346, 34600, 220, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Cradily - Seed Bomb - Move Tutor
  (346, 34600, 402, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Cradily - Sleep Talk - Move Tutor
  (346, 34600, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Cradily - Snore - Move Tutor
  (346, 34600, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Cradily - Stealth Rock - Move Tutor
  (346, 34600, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Cradily - Synthesis - Move Tutor
  (346, 34600, 235, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Cradily - Worry Seed - Move Tutor
  (346, 34600, 388, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Anorith - Scratch - Level 1
  (347, 34700, 10, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Anorith - Harden - Level 1
  (347, 34700, 106, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Anorith - Mud Sport - Level 7
  (347, 34700, 300, 12, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Anorith - Water Gun - Level 13
  (347, 34700, 55, 12, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Anorith - Metal Claw - Level 19
  (347, 34700, 232, 12, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Anorith - Protect - Level 25
  (347, 34700, 182, 12, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Anorith - Ancient Power - Level 31
  (347, 34700, 246, 12, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Anorith - Fury Cutter - Level 37
  (347, 34700, 210, 12, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Anorith - Slash - Level 43
  (347, 34700, 163, 12, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Anorith - Rock Blast - Level 49
  (347, 34700, 350, 12, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Anorith - Crush Claw - Level 55
  (347, 34700, 306, 12, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Anorith - X-Scissor - Level 61
  (347, 34700, 404, 12, NULL, 1, 61, NULL, NULL, NULL, 12),
  -- Anorith - Hone Claws - TM01
  (347, 34700, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 13),
  -- Anorith - Toxic - TM06
  (347, 34700, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 14),
  -- Anorith - Hidden Power - TM10
  (347, 34700, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 15),
  -- Anorith - Sunny Day - TM11
  (347, 34700, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 16),
  -- Anorith - Protect - TM17
  (347, 34700, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 17),
  -- Anorith - Frustration - TM21
  (347, 34700, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 18),
  -- Anorith - Smack Down - TM23
  (347, 34700, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 19),
  -- Anorith - Return - TM27
  (347, 34700, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 20),
  -- Anorith - Dig - TM28
  (347, 34700, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 21),
  -- Anorith - Brick Break - TM31
  (347, 34700, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 22),
  -- Anorith - Double Team - TM32
  (347, 34700, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 23),
  -- Anorith - Sandstorm - TM37
  (347, 34700, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 24),
  -- Anorith - Rock Tomb - TM39
  (347, 34700, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 25),
  -- Anorith - Aerial Ace - TM40
  (347, 34700, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 26),
  -- Anorith - Facade - TM42
  (347, 34700, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 27),
  -- Anorith - Rest - TM44
  (347, 34700, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 28),
  -- Anorith - Attract - TM45
  (347, 34700, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 29),
  -- Anorith - Round - TM48
  (347, 34700, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 30),
  -- Anorith - False Swipe - TM54
  (347, 34700, 206, 12, NULL, 2, NULL, NULL, 12002054, NULL, 31),
  -- Anorith - Rock Polish - TM69
  (347, 34700, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 32),
  -- Anorith - Swords Dance - TM75
  (347, 34700, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 33),
  -- Anorith - Struggle Bug - TM76
  (347, 34700, 522, 12, NULL, 2, NULL, NULL, 12002076, NULL, 34),
  -- Anorith - Rock Slide - TM80
  (347, 34700, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 35),
  -- Anorith - X-Scissor - TM81
  (347, 34700, 404, 12, NULL, 2, NULL, NULL, 12002081, NULL, 36),
  -- Anorith - Swagger - TM87
  (347, 34700, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 37),
  -- Anorith - Substitute - TM90
  (347, 34700, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 38),
  -- Anorith - Rock Smash - TM94
  (347, 34700, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 39),
  -- Anorith - Cut - HM01
  (347, 34700, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 40),
  -- Anorith - Cross Poison - Egg Move
  (347, 34700, 440, 12, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Anorith - Curse - Egg Move
  (347, 34700, 174, 12, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Anorith - Iron Defense - Egg Move
  (347, 34700, 334, 12, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Anorith - Knock Off - Egg Move
  (347, 34700, 282, 12, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Anorith - Rapid Spin - Egg Move
  (347, 34700, 229, 12, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Anorith - Sand Attack - Egg Move
  (347, 34700, 28, 12, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Anorith - Screech - Egg Move
  (347, 34700, 103, 12, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Anorith - Water Pulse - Egg Move
  (347, 34700, 352, 12, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Anorith - Bug Bite - Move Tutor
  (347, 34700, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Anorith - Earth Power - Move Tutor
  (347, 34700, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Anorith - Iron Defense - Move Tutor
  (347, 34700, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Anorith - Knock Off - Move Tutor
  (347, 34700, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Anorith - Sleep Talk - Move Tutor
  (347, 34700, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Anorith - Snore - Move Tutor
  (347, 34700, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Anorith - Stealth Rock - Move Tutor
  (347, 34700, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Armaldo - Scratch - Level 1
  (348, 34800, 10, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Armaldo - Harden - Level 1
  (348, 34800, 106, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Armaldo - Mud Sport - Level 1
  (348, 34800, 300, 12, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Armaldo - Water Gun - Level 1
  (348, 34800, 55, 12, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Armaldo - Mud Sport - Level 7
  (348, 34800, 300, 12, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Armaldo - Water Gun - Level 13
  (348, 34800, 55, 12, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Armaldo - Metal Claw - Level 19
  (348, 34800, 232, 12, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Armaldo - Protect - Level 25
  (348, 34800, 182, 12, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Armaldo - Ancient Power - Level 31
  (348, 34800, 246, 12, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Armaldo - Fury Cutter - Level 37
  (348, 34800, 210, 12, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Armaldo - Slash - Level 46
  (348, 34800, 163, 12, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Armaldo - Rock Blast - Level 55
  (348, 34800, 350, 12, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Armaldo - Crush Claw - Level 67
  (348, 34800, 306, 12, NULL, 1, 67, NULL, NULL, NULL, 13),
  -- Armaldo - X-Scissor - Level 73
  (348, 34800, 404, 12, NULL, 1, 73, NULL, NULL, NULL, 14),
  -- Armaldo - Hone Claws - TM01
  (348, 34800, 468, 12, NULL, 2, NULL, NULL, 12002001, NULL, 15),
  -- Armaldo - Toxic - TM06
  (348, 34800, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 16),
  -- Armaldo - Hidden Power - TM10
  (348, 34800, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Armaldo - Sunny Day - TM11
  (348, 34800, 241, 12, NULL, 2, NULL, NULL, 12002011, NULL, 18),
  -- Armaldo - Hyper Beam - TM15
  (348, 34800, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 19),
  -- Armaldo - Protect - TM17
  (348, 34800, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 20),
  -- Armaldo - Frustration - TM21
  (348, 34800, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 21),
  -- Armaldo - Smack Down - TM23
  (348, 34800, 479, 12, NULL, 2, NULL, NULL, 12002023, NULL, 22),
  -- Armaldo - Earthquake - TM26
  (348, 34800, 89, 12, NULL, 2, NULL, NULL, 12002026, NULL, 23),
  -- Armaldo - Return - TM27
  (348, 34800, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 24),
  -- Armaldo - Dig - TM28
  (348, 34800, 91, 12, NULL, 2, NULL, NULL, 12002028, NULL, 25),
  -- Armaldo - Brick Break - TM31
  (348, 34800, 280, 12, NULL, 2, NULL, NULL, 12002031, NULL, 26),
  -- Armaldo - Double Team - TM32
  (348, 34800, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 27),
  -- Armaldo - Sandstorm - TM37
  (348, 34800, 201, 12, NULL, 2, NULL, NULL, 12002037, NULL, 28),
  -- Armaldo - Rock Tomb - TM39
  (348, 34800, 317, 12, NULL, 2, NULL, NULL, 12002039, NULL, 29),
  -- Armaldo - Aerial Ace - TM40
  (348, 34800, 332, 12, NULL, 2, NULL, NULL, 12002040, NULL, 30),
  -- Armaldo - Facade - TM42
  (348, 34800, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 31),
  -- Armaldo - Rest - TM44
  (348, 34800, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 32),
  -- Armaldo - Attract - TM45
  (348, 34800, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 33),
  -- Armaldo - Round - TM48
  (348, 34800, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 34),
  -- Armaldo - False Swipe - TM54
  (348, 34800, 206, 12, NULL, 2, NULL, NULL, 12002054, NULL, 35),
  -- Armaldo - Giga Impact - TM68
  (348, 34800, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 36),
  -- Armaldo - Rock Polish - TM69
  (348, 34800, 397, 12, NULL, 2, NULL, NULL, 12002069, NULL, 37),
  -- Armaldo - Stone Edge - TM71
  (348, 34800, 444, 12, NULL, 2, NULL, NULL, 12002071, NULL, 38),
  -- Armaldo - Swords Dance - TM75
  (348, 34800, 14, 12, NULL, 2, NULL, NULL, 12002075, NULL, 39),
  -- Armaldo - Struggle Bug - TM76
  (348, 34800, 522, 12, NULL, 2, NULL, NULL, 12002076, NULL, 40),
  -- Armaldo - Bulldoze - TM78
  (348, 34800, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 41),
  -- Armaldo - Rock Slide - TM80
  (348, 34800, 157, 12, NULL, 2, NULL, NULL, 12002080, NULL, 42),
  -- Armaldo - X-Scissor - TM81
  (348, 34800, 404, 12, NULL, 2, NULL, NULL, 12002081, NULL, 43),
  -- Armaldo - Swagger - TM87
  (348, 34800, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 44),
  -- Armaldo - Substitute - TM90
  (348, 34800, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 45),
  -- Armaldo - Flash Cannon - TM91
  (348, 34800, 430, 12, NULL, 2, NULL, NULL, 12002091, NULL, 46),
  -- Armaldo - Rock Smash - TM94
  (348, 34800, 249, 12, NULL, 2, NULL, NULL, 12002094, NULL, 47),
  -- Armaldo - Cut - HM01
  (348, 34800, 15, 12, NULL, 3, NULL, NULL, 12003001, NULL, 48),
  -- Armaldo - Strength - HM04
  (348, 34800, 70, 12, NULL, 3, NULL, NULL, 12003004, NULL, 49),
  -- Armaldo - Aqua Tail - Move Tutor
  (348, 34800, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50),
  -- Armaldo - Block - Move Tutor
  (348, 34800, 335, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 51),
  -- Armaldo - Bug Bite - Move Tutor
  (348, 34800, 450, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 52),
  -- Armaldo - Earth Power - Move Tutor
  (348, 34800, 414, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 53),
  -- Armaldo - Iron Defense - Move Tutor
  (348, 34800, 334, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 54),
  -- Armaldo - Iron Tail - Move Tutor
  (348, 34800, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 55),
  -- Armaldo - Knock Off - Move Tutor
  (348, 34800, 282, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 56),
  -- Armaldo - Low Kick - Move Tutor
  (348, 34800, 67, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 57),
  -- Armaldo - Sleep Talk - Move Tutor
  (348, 34800, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 58),
  -- Armaldo - Snore - Move Tutor
  (348, 34800, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 59),
  -- Armaldo - Stealth Rock - Move Tutor
  (348, 34800, 446, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 60),
  -- Armaldo - Superpower - Move Tutor
  (348, 34800, 276, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 61),
  -- Feebas - Splash - Level 1
  (349, 34900, 150, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Feebas - Tackle - Level 15
  (349, 34900, 33, 12, NULL, 1, 15, NULL, NULL, NULL, 2),
  -- Feebas - Flail - Level 30
  (349, 34900, 175, 12, NULL, 1, 30, NULL, NULL, NULL, 3),
  -- Feebas - Toxic - TM06
  (349, 34900, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 4),
  -- Feebas - Hail - TM07
  (349, 34900, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 5),
  -- Feebas - Hidden Power - TM10
  (349, 34900, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 6),
  -- Feebas - Ice Beam - TM13
  (349, 34900, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 7),
  -- Feebas - Blizzard - TM14
  (349, 34900, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 8),
  -- Feebas - Light Screen - TM16
  (349, 34900, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 9),
  -- Feebas - Protect - TM17
  (349, 34900, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 10),
  -- Feebas - Rain Dance - TM18
  (349, 34900, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 11),
  -- Feebas - Frustration - TM21
  (349, 34900, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 12),
  -- Feebas - Return - TM27
  (349, 34900, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 13),
  -- Feebas - Double Team - TM32
  (349, 34900, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 14),
  -- Feebas - Facade - TM42
  (349, 34900, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 15),
  -- Feebas - Rest - TM44
  (349, 34900, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 16),
  -- Feebas - Attract - TM45
  (349, 34900, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 17),
  -- Feebas - Round - TM48
  (349, 34900, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 18),
  -- Feebas - Scald - TM55
  (349, 34900, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 19),
  -- Feebas - Swagger - TM87
  (349, 34900, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 20),
  -- Feebas - Substitute - TM90
  (349, 34900, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 21),
  -- Feebas - Surf - HM03
  (349, 34900, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 22),
  -- Feebas - Waterfall - HM05
  (349, 34900, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 23),
  -- Feebas - Dive - HM06
  (349, 34900, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 24),
  -- Feebas - Brine - Egg Move
  (349, 34900, 362, 12, NULL, 5, NULL, NULL, NULL, NULL, 25),
  -- Feebas - Captivate - Egg Move
  (349, 34900, 445, 12, NULL, 5, NULL, NULL, NULL, NULL, 26),
  -- Feebas - Confuse Ray - Egg Move
  (349, 34900, 109, 12, NULL, 5, NULL, NULL, NULL, NULL, 27),
  -- Feebas - Dragon Pulse - Egg Move
  (349, 34900, 406, 12, NULL, 5, NULL, NULL, NULL, NULL, 28),
  -- Feebas - Dragon Breath - Egg Move
  (349, 34900, 225, 12, NULL, 5, NULL, NULL, NULL, NULL, 29),
  -- Feebas - Haze - Egg Move
  (349, 34900, 114, 12, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Feebas - Hypnosis - Egg Move
  (349, 34900, 95, 12, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Feebas - Iron Tail - Egg Move
  (349, 34900, 231, 12, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Feebas - Mirror Coat - Egg Move
  (349, 34900, 243, 12, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Feebas - Mist - Egg Move
  (349, 34900, 54, 12, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Feebas - Mud Sport - Egg Move
  (349, 34900, 300, 12, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Feebas - Tickle - Egg Move
  (349, 34900, 321, 12, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Feebas - Dragon Pulse - Move Tutor
  (349, 34900, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 37),
  -- Feebas - Icy Wind - Move Tutor
  (349, 34900, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 38),
  -- Feebas - Iron Tail - Move Tutor
  (349, 34900, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 39),
  -- Feebas - Sleep Talk - Move Tutor
  (349, 34900, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 40),
  -- Feebas - Snore - Move Tutor
  (349, 34900, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 41),
  -- Milotic - Water Gun - Level 1
  (350, 35000, 55, 12, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Milotic - Wrap - Level 1
  (350, 35000, 35, 12, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Milotic - Water Sport - Level 5
  (350, 35000, 346, 12, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Milotic - Refresh - Level 9
  (350, 35000, 287, 12, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Milotic - Water Pulse - Level 13
  (350, 35000, 352, 12, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Milotic - Twister - Level 17
  (350, 35000, 239, 12, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Milotic - Recover - Level 21
  (350, 35000, 105, 12, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Milotic - Captivate - Level 25
  (350, 35000, 445, 12, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Milotic - Aqua Tail - Level 29
  (350, 35000, 401, 12, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Milotic - Rain Dance - Level 33
  (350, 35000, 240, 12, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Milotic - Hydro Pump - Level 37
  (350, 35000, 56, 12, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Milotic - Attract - Level 41
  (350, 35000, 213, 12, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Milotic - Safeguard - Level 45
  (350, 35000, 219, 12, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Milotic - Aqua Ring - Level 49
  (350, 35000, 392, 12, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Milotic - Toxic - TM06
  (350, 35000, 92, 12, NULL, 2, NULL, NULL, 12002006, NULL, 15),
  -- Milotic - Hail - TM07
  (350, 35000, 258, 12, NULL, 2, NULL, NULL, 12002007, NULL, 16),
  -- Milotic - Hidden Power - TM10
  (350, 35000, 237, 12, NULL, 2, NULL, NULL, 12002010, NULL, 17),
  -- Milotic - Ice Beam - TM13
  (350, 35000, 58, 12, NULL, 2, NULL, NULL, 12002013, NULL, 18),
  -- Milotic - Blizzard - TM14
  (350, 35000, 59, 12, NULL, 2, NULL, NULL, 12002014, NULL, 19),
  -- Milotic - Hyper Beam - TM15
  (350, 35000, 63, 12, NULL, 2, NULL, NULL, 12002015, NULL, 20),
  -- Milotic - Light Screen - TM16
  (350, 35000, 113, 12, NULL, 2, NULL, NULL, 12002016, NULL, 21),
  -- Milotic - Protect - TM17
  (350, 35000, 182, 12, NULL, 2, NULL, NULL, 12002017, NULL, 22),
  -- Milotic - Rain Dance - TM18
  (350, 35000, 240, 12, NULL, 2, NULL, NULL, 12002018, NULL, 23),
  -- Milotic - Safeguard - TM20
  (350, 35000, 219, 12, NULL, 2, NULL, NULL, 12002020, NULL, 24),
  -- Milotic - Frustration - TM21
  (350, 35000, 218, 12, NULL, 2, NULL, NULL, 12002021, NULL, 25),
  -- Milotic - Return - TM27
  (350, 35000, 216, 12, NULL, 2, NULL, NULL, 12002027, NULL, 26),
  -- Milotic - Double Team - TM32
  (350, 35000, 104, 12, NULL, 2, NULL, NULL, 12002032, NULL, 27),
  -- Milotic - Facade - TM42
  (350, 35000, 263, 12, NULL, 2, NULL, NULL, 12002042, NULL, 28),
  -- Milotic - Rest - TM44
  (350, 35000, 156, 12, NULL, 2, NULL, NULL, 12002044, NULL, 29),
  -- Milotic - Attract - TM45
  (350, 35000, 213, 12, NULL, 2, NULL, NULL, 12002045, NULL, 30),
  -- Milotic - Round - TM48
  (350, 35000, 496, 12, NULL, 2, NULL, NULL, 12002048, NULL, 31),
  -- Milotic - Scald - TM55
  (350, 35000, 503, 12, NULL, 2, NULL, NULL, 12002055, NULL, 32),
  -- Milotic - Giga Impact - TM68
  (350, 35000, 416, 12, NULL, 2, NULL, NULL, 12002068, NULL, 33),
  -- Milotic - Psych Up - TM77
  (350, 35000, 244, 12, NULL, 2, NULL, NULL, 12002077, NULL, 34),
  -- Milotic - Bulldoze - TM78
  (350, 35000, 523, 12, NULL, 2, NULL, NULL, 12002078, NULL, 35),
  -- Milotic - Dragon Tail - TM82
  (350, 35000, 525, 12, NULL, 2, NULL, NULL, 12002082, NULL, 36),
  -- Milotic - Swagger - TM87
  (350, 35000, 207, 12, NULL, 2, NULL, NULL, 12002087, NULL, 37),
  -- Milotic - Substitute - TM90
  (350, 35000, 164, 12, NULL, 2, NULL, NULL, 12002090, NULL, 38),
  -- Milotic - Surf - HM03
  (350, 35000, 57, 12, NULL, 3, NULL, NULL, 12003003, NULL, 39),
  -- Milotic - Waterfall - HM05
  (350, 35000, 127, 12, NULL, 3, NULL, NULL, 12003005, NULL, 40),
  -- Milotic - Dive - HM06
  (350, 35000, 291, 12, NULL, 3, NULL, NULL, 12003006, NULL, 41),
  -- Milotic - Aqua Tail - Move Tutor
  (350, 35000, 401, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 42),
  -- Milotic - Bind - Move Tutor
  (350, 35000, 20, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 43),
  -- Milotic - Dragon Pulse - Move Tutor
  (350, 35000, 406, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 44),
  -- Milotic - Icy Wind - Move Tutor
  (350, 35000, 196, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 45),
  -- Milotic - Iron Head - Move Tutor
  (350, 35000, 442, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 46),
  -- Milotic - Iron Tail - Move Tutor
  (350, 35000, 231, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 47),
  -- Milotic - Magic Coat - Move Tutor
  (350, 35000, 277, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 48),
  -- Milotic - Sleep Talk - Move Tutor
  (350, 35000, 214, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 49),
  -- Milotic - Snore - Move Tutor
  (350, 35000, 173, 12, NULL, 6, NULL, NULL, NULL, 'Black 2 / White 2 Move Tutor.', 50);
