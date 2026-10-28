-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation IV Pokémon learnset raw pages, using Platinum
-- level columns, TM/HM compatibility rows, egg move rows, and tutor rows.
-- Cross-check: Serebii Platinum Pokedex learnset pages, Serebii Platinum
-- Move Tutor pages, and PokemonDB Generation 4 Platinum learnset pages.
-- Source names and source caveats remain in SQL comments/docs only.
-- Correction: legendary and mythical rows are checked against each game's own
-- data (PKHeX learnset and personal tables); see docs/database/reference-data.md.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.pokemon_learnsets
-- Version Group: Platinum
-- Pokémon: #202-#251
-- Rows: 3174
-- Scope: level-up, TM, HM, egg move, and Move Tutor acquisition rows.
-- Event, transfer, and prior-evolution sections are intentionally excluded from
-- this Platinum seed.
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
  -- Wobbuffet - Counter - Level 1
  (202, 20200, 68, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Wobbuffet - Destiny Bond - Level 1
  (202, 20200, 194, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Wobbuffet - Safeguard - Level 1
  (202, 20200, 219, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Wobbuffet - Mirror Coat - Level 1
  (202, 20200, 243, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Girafarig - Tackle - Level 1
  (203, 20300, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Girafarig - Growl - Level 1
  (203, 20300, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Girafarig - Confusion - Level 1
  (203, 20300, 93, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Girafarig - Astonish - Level 1
  (203, 20300, 310, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Girafarig - Power Swap - Level 1
  (203, 20300, 384, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Girafarig - Guard Swap - Level 1
  (203, 20300, 385, 9, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Girafarig - Odor Sleuth - Level 5
  (203, 20300, 316, 9, NULL, 1, 5, NULL, NULL, NULL, 7),
  -- Girafarig - Stomp - Level 10
  (203, 20300, 23, 9, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Girafarig - Agility - Level 14
  (203, 20300, 97, 9, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Girafarig - Psybeam - Level 19
  (203, 20300, 60, 9, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Girafarig - Baton Pass - Level 23
  (203, 20300, 226, 9, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Girafarig - Assurance - Level 28
  (203, 20300, 372, 9, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Girafarig - Double Hit - Level 32
  (203, 20300, 458, 9, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Girafarig - Psychic - Level 37
  (203, 20300, 94, 9, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Girafarig - Zen Headbutt - Level 41
  (203, 20300, 428, 9, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Girafarig - Crunch - Level 46
  (203, 20300, 242, 9, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Girafarig - Calm Mind - TM04
  (203, 20300, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 17),
  -- Girafarig - Toxic - TM06
  (203, 20300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Girafarig - Hidden Power - TM10
  (203, 20300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Girafarig - Sunny Day - TM11
  (203, 20300, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 20),
  -- Girafarig - Light Screen - TM16
  (203, 20300, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 21),
  -- Girafarig - Protect - TM17
  (203, 20300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 22),
  -- Girafarig - Rain Dance - TM18
  (203, 20300, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 23),
  -- Girafarig - Frustration - TM21
  (203, 20300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Girafarig - Iron Tail - TM23
  (203, 20300, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 25),
  -- Girafarig - Thunderbolt - TM24
  (203, 20300, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 26),
  -- Girafarig - Thunder - TM25
  (203, 20300, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 27),
  -- Girafarig - Earthquake - TM26
  (203, 20300, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 28),
  -- Girafarig - Return - TM27
  (203, 20300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 29),
  -- Girafarig - Psychic - TM29
  (203, 20300, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 30),
  -- Girafarig - Shadow Ball - TM30
  (203, 20300, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 31),
  -- Girafarig - Double Team - TM32
  (203, 20300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 32),
  -- Girafarig - Reflect - TM33
  (203, 20300, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 33),
  -- Girafarig - Shock Wave - TM34
  (203, 20300, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 34),
  -- Girafarig - Facade - TM42
  (203, 20300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 35),
  -- Girafarig - Secret Power - TM43
  (203, 20300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 36),
  -- Girafarig - Rest - TM44
  (203, 20300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 37),
  -- Girafarig - Attract - TM45
  (203, 20300, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 38),
  -- Girafarig - Thief - TM46
  (203, 20300, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 39),
  -- Girafarig - Skill Swap - TM48
  (203, 20300, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 40),
  -- Girafarig - Energy Ball - TM53
  (203, 20300, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 41),
  -- Girafarig - Charge Beam - TM57
  (203, 20300, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 42),
  -- Girafarig - Endure - TM58
  (203, 20300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 43),
  -- Girafarig - Recycle - TM67
  (203, 20300, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 44),
  -- Girafarig - Flash - TM70
  (203, 20300, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 45),
  -- Girafarig - Thunder Wave - TM73
  (203, 20300, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 46),
  -- Girafarig - Psych Up - TM77
  (203, 20300, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 47),
  -- Girafarig - Captivate - TM78
  (203, 20300, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 48),
  -- Girafarig - Sleep Talk - TM82
  (203, 20300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 49),
  -- Girafarig - Natural Gift - TM83
  (203, 20300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 50),
  -- Girafarig - Dream Eater - TM85
  (203, 20300, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 51),
  -- Girafarig - Grass Knot - TM86
  (203, 20300, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 52),
  -- Girafarig - Swagger - TM87
  (203, 20300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 53),
  -- Girafarig - Substitute - TM90
  (203, 20300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 54),
  -- Girafarig - Trick Room - TM92
  (203, 20300, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 55),
  -- Girafarig - Strength - HM04
  (203, 20300, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 56),
  -- Girafarig - Rock Smash - HM06
  (203, 20300, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 57),
  -- Girafarig - Double Kick - Egg
  (203, 20300, 24, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Girafarig - Take Down - Egg
  (203, 20300, 36, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Girafarig - Amnesia - Egg
  (203, 20300, 133, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Girafarig - Foresight - Egg
  (203, 20300, 193, 9, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Girafarig - Mirror Coat - Egg
  (203, 20300, 243, 9, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Girafarig - Psych Up - Egg
  (203, 20300, 244, 9, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Girafarig - Future Sight - Egg
  (203, 20300, 248, 9, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Girafarig - Beat Up - Egg
  (203, 20300, 251, 9, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Girafarig - Wish - Egg
  (203, 20300, 273, 9, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Girafarig - Magic Coat - Egg
  (203, 20300, 277, 9, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Girafarig - Swift - Tutor
  (203, 20300, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Girafarig - Snore - Tutor
  (203, 20300, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Girafarig - Mud-Slap - Tutor
  (203, 20300, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Girafarig - Uproar - Tutor
  (203, 20300, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Girafarig - Trick - Tutor
  (203, 20300, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Girafarig - Signal Beam - Tutor
  (203, 20300, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Girafarig - Sucker Punch - Tutor
  (203, 20300, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Girafarig - Zen Headbutt - Tutor
  (203, 20300, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Pineco - Tackle - Level 1
  (204, 20400, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pineco - Protect - Level 1
  (204, 20400, 182, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pineco - Self-Destruct - Level 6
  (204, 20400, 120, 9, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Pineco - Bug Bite - Level 9
  (204, 20400, 450, 9, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Pineco - Take Down - Level 12
  (204, 20400, 36, 9, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Pineco - Rapid Spin - Level 17
  (204, 20400, 229, 9, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Pineco - Bide - Level 20
  (204, 20400, 117, 9, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Pineco - Natural Gift - Level 23
  (204, 20400, 363, 9, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Pineco - Spikes - Level 28
  (204, 20400, 191, 9, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Pineco - Payback - Level 31
  (204, 20400, 371, 9, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Pineco - Explosion - Level 34
  (204, 20400, 153, 9, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Pineco - Iron Defense - Level 39
  (204, 20400, 334, 9, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Pineco - Gyro Ball - Level 42
  (204, 20400, 360, 9, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Pineco - Double-Edge - Level 45
  (204, 20400, 38, 9, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Pineco - Toxic - TM06
  (204, 20400, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Pineco - Hidden Power - TM10
  (204, 20400, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Pineco - Sunny Day - TM11
  (204, 20400, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Pineco - Light Screen - TM16
  (204, 20400, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 18),
  -- Pineco - Protect - TM17
  (204, 20400, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 19),
  -- Pineco - Giga Drain - TM19
  (204, 20400, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 20),
  -- Pineco - Frustration - TM21
  (204, 20400, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 21),
  -- Pineco - Solar Beam - TM22
  (204, 20400, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 22),
  -- Pineco - Earthquake - TM26
  (204, 20400, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 23),
  -- Pineco - Return - TM27
  (204, 20400, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 24),
  -- Pineco - Dig - TM28
  (204, 20400, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 25),
  -- Pineco - Double Team - TM32
  (204, 20400, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 26),
  -- Pineco - Reflect - TM33
  (204, 20400, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 27),
  -- Pineco - Sandstorm - TM37
  (204, 20400, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 28),
  -- Pineco - Rock Tomb - TM39
  (204, 20400, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 29),
  -- Pineco - Facade - TM42
  (204, 20400, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 30),
  -- Pineco - Secret Power - TM43
  (204, 20400, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 31),
  -- Pineco - Rest - TM44
  (204, 20400, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 32),
  -- Pineco - Attract - TM45
  (204, 20400, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 33),
  -- Pineco - Endure - TM58
  (204, 20400, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 34),
  -- Pineco - Explosion - TM64
  (204, 20400, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 35),
  -- Pineco - Payback - TM66
  (204, 20400, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 36),
  -- Pineco - Gyro Ball - TM74
  (204, 20400, 360, 9, NULL, 2, NULL, NULL, 9002074, NULL, 37),
  -- Pineco - Stealth Rock - TM76
  (204, 20400, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 38),
  -- Pineco - Captivate - TM78
  (204, 20400, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 39),
  -- Pineco - Rock Slide - TM80
  (204, 20400, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 40),
  -- Pineco - Sleep Talk - TM82
  (204, 20400, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 41),
  -- Pineco - Natural Gift - TM83
  (204, 20400, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 42),
  -- Pineco - Swagger - TM87
  (204, 20400, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 43),
  -- Pineco - Substitute - TM90
  (204, 20400, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 44),
  -- Pineco - Strength - HM04
  (204, 20400, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 45),
  -- Pineco - Rock Smash - HM06
  (204, 20400, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 46),
  -- Pineco - Double-Edge - Egg
  (204, 20400, 38, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Pineco - Pin Missile - Egg
  (204, 20400, 42, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Pineco - Counter - Egg
  (204, 20400, 68, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Pineco - Reflect - Egg
  (204, 20400, 115, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Pineco - Swift - Egg
  (204, 20400, 129, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Pineco - Flail - Egg
  (204, 20400, 175, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Pineco - Revenge - Egg
  (204, 20400, 279, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Pineco - Sand Tomb - Egg
  (204, 20400, 328, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Pineco - Toxic Spikes - Egg
  (204, 20400, 390, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Pineco - Snore - Tutor
  (204, 20400, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Pineco - Rollout - Tutor
  (204, 20400, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Pineco - Iron Defense - Tutor
  (204, 20400, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Forretress - Tackle - Level 1
  (205, 20500, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Forretress - Self-Destruct - Level 1
  (205, 20500, 120, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Forretress - Protect - Level 1
  (205, 20500, 182, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Forretress - Toxic Spikes - Level 1
  (205, 20500, 390, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Forretress - Bug Bite - Level 1
  (205, 20500, 450, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Forretress - Self-Destruct - Level 6
  (205, 20500, 120, 9, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Forretress - Bug Bite - Level 9
  (205, 20500, 450, 9, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Forretress - Take Down - Level 12
  (205, 20500, 36, 9, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Forretress - Rapid Spin - Level 17
  (205, 20500, 229, 9, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Forretress - Bide - Level 20
  (205, 20500, 117, 9, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Forretress - Natural Gift - Level 23
  (205, 20500, 363, 9, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Forretress - Spikes - Level 28
  (205, 20500, 191, 9, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Forretress - Mirror Shot - Level 31
  (205, 20500, 429, 9, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Forretress - Payback - Level 33
  (205, 20500, 371, 9, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Forretress - Explosion - Level 38
  (205, 20500, 153, 9, NULL, 1, 38, NULL, NULL, NULL, 15),
  -- Forretress - Iron Defense - Level 45
  (205, 20500, 334, 9, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Forretress - Gyro Ball - Level 50
  (205, 20500, 360, 9, NULL, 1, 50, NULL, NULL, NULL, 17),
  -- Forretress - Double-Edge - Level 55
  (205, 20500, 38, 9, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Forretress - Magnet Rise - Level 62
  (205, 20500, 393, 9, NULL, 1, 62, NULL, NULL, NULL, 19),
  -- Forretress - Zap Cannon - Level 67
  (205, 20500, 192, 9, NULL, 1, 67, NULL, NULL, NULL, 20),
  -- Forretress - Toxic - TM06
  (205, 20500, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 21),
  -- Forretress - Hidden Power - TM10
  (205, 20500, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 22),
  -- Forretress - Sunny Day - TM11
  (205, 20500, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 23),
  -- Forretress - Hyper Beam - TM15
  (205, 20500, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 24),
  -- Forretress - Light Screen - TM16
  (205, 20500, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 25),
  -- Forretress - Protect - TM17
  (205, 20500, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 26),
  -- Forretress - Giga Drain - TM19
  (205, 20500, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 27),
  -- Forretress - Frustration - TM21
  (205, 20500, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 28),
  -- Forretress - Solar Beam - TM22
  (205, 20500, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 29),
  -- Forretress - Earthquake - TM26
  (205, 20500, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 30),
  -- Forretress - Return - TM27
  (205, 20500, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 31),
  -- Forretress - Dig - TM28
  (205, 20500, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 32),
  -- Forretress - Double Team - TM32
  (205, 20500, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 33),
  -- Forretress - Reflect - TM33
  (205, 20500, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 34),
  -- Forretress - Sandstorm - TM37
  (205, 20500, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 35),
  -- Forretress - Rock Tomb - TM39
  (205, 20500, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 36),
  -- Forretress - Facade - TM42
  (205, 20500, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 37),
  -- Forretress - Secret Power - TM43
  (205, 20500, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 38),
  -- Forretress - Rest - TM44
  (205, 20500, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 39),
  -- Forretress - Attract - TM45
  (205, 20500, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 40),
  -- Forretress - Endure - TM58
  (205, 20500, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 41),
  -- Forretress - Explosion - TM64
  (205, 20500, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 42),
  -- Forretress - Payback - TM66
  (205, 20500, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 43),
  -- Forretress - Giga Impact - TM68
  (205, 20500, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 44),
  -- Forretress - Rock Polish - TM69
  (205, 20500, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 45),
  -- Forretress - Gyro Ball - TM74
  (205, 20500, 360, 9, NULL, 2, NULL, NULL, 9002074, NULL, 46),
  -- Forretress - Stealth Rock - TM76
  (205, 20500, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 47),
  -- Forretress - Captivate - TM78
  (205, 20500, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 48),
  -- Forretress - Rock Slide - TM80
  (205, 20500, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 49),
  -- Forretress - Sleep Talk - TM82
  (205, 20500, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 50),
  -- Forretress - Natural Gift - TM83
  (205, 20500, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 51),
  -- Forretress - Swagger - TM87
  (205, 20500, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 52),
  -- Forretress - Substitute - TM90
  (205, 20500, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 53),
  -- Forretress - Flash Cannon - TM91
  (205, 20500, 430, 9, NULL, 2, NULL, NULL, 9002091, NULL, 54),
  -- Forretress - Strength - HM04
  (205, 20500, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 55),
  -- Forretress - Rock Smash - HM06
  (205, 20500, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 56),
  -- Forretress - Snore - Tutor
  (205, 20500, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Forretress - Rollout - Tutor
  (205, 20500, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Forretress - Signal Beam - Tutor
  (205, 20500, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Forretress - Iron Defense - Tutor
  (205, 20500, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Forretress - Magnet Rise - Tutor
  (205, 20500, 393, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Dunsparce - Rage - Level 1
  (206, 20600, 99, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dunsparce - Defense Curl - Level 5
  (206, 20600, 111, 9, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Dunsparce - Yawn - Level 9
  (206, 20600, 281, 9, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Dunsparce - Glare - Level 13
  (206, 20600, 137, 9, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Dunsparce - Rollout - Level 17
  (206, 20600, 205, 9, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Dunsparce - Spite - Level 21
  (206, 20600, 180, 9, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Dunsparce - Pursuit - Level 25
  (206, 20600, 228, 9, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Dunsparce - Screech - Level 29
  (206, 20600, 103, 9, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Dunsparce - Roost - Level 33
  (206, 20600, 355, 9, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Dunsparce - Take Down - Level 37
  (206, 20600, 36, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Dunsparce - Ancient Power - Level 41
  (206, 20600, 246, 9, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Dunsparce - Dig - Level 45
  (206, 20600, 91, 9, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Dunsparce - Endeavor - Level 49
  (206, 20600, 283, 9, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Dunsparce - Flail - Level 53
  (206, 20600, 175, 9, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Dunsparce - Water Pulse - TM03
  (206, 20600, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 15),
  -- Dunsparce - Calm Mind - TM04
  (206, 20600, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 16),
  -- Dunsparce - Toxic - TM06
  (206, 20600, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Dunsparce - Hidden Power - TM10
  (206, 20600, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Dunsparce - Sunny Day - TM11
  (206, 20600, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 19),
  -- Dunsparce - Ice Beam - TM13
  (206, 20600, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 20),
  -- Dunsparce - Blizzard - TM14
  (206, 20600, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 21),
  -- Dunsparce - Protect - TM17
  (206, 20600, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 22),
  -- Dunsparce - Rain Dance - TM18
  (206, 20600, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 23),
  -- Dunsparce - Frustration - TM21
  (206, 20600, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Dunsparce - Solar Beam - TM22
  (206, 20600, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 25),
  -- Dunsparce - Iron Tail - TM23
  (206, 20600, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 26),
  -- Dunsparce - Thunderbolt - TM24
  (206, 20600, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 27),
  -- Dunsparce - Thunder - TM25
  (206, 20600, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 28),
  -- Dunsparce - Earthquake - TM26
  (206, 20600, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 29),
  -- Dunsparce - Return - TM27
  (206, 20600, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 30),
  -- Dunsparce - Dig - TM28
  (206, 20600, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 31),
  -- Dunsparce - Shadow Ball - TM30
  (206, 20600, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 32),
  -- Dunsparce - Double Team - TM32
  (206, 20600, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 33),
  -- Dunsparce - Shock Wave - TM34
  (206, 20600, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 34),
  -- Dunsparce - Flamethrower - TM35
  (206, 20600, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 35),
  -- Dunsparce - Fire Blast - TM38
  (206, 20600, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 36),
  -- Dunsparce - Rock Tomb - TM39
  (206, 20600, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 37),
  -- Dunsparce - Facade - TM42
  (206, 20600, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 38),
  -- Dunsparce - Secret Power - TM43
  (206, 20600, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 39),
  -- Dunsparce - Rest - TM44
  (206, 20600, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 40),
  -- Dunsparce - Attract - TM45
  (206, 20600, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 41),
  -- Dunsparce - Thief - TM46
  (206, 20600, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 42),
  -- Dunsparce - Roost - TM51
  (206, 20600, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 43),
  -- Dunsparce - Charge Beam - TM57
  (206, 20600, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 44),
  -- Dunsparce - Endure - TM58
  (206, 20600, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 45),
  -- Dunsparce - Thunder Wave - TM73
  (206, 20600, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 46),
  -- Dunsparce - Gyro Ball - TM74
  (206, 20600, 360, 9, NULL, 2, NULL, NULL, 9002074, NULL, 47),
  -- Dunsparce - Stealth Rock - TM76
  (206, 20600, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 48),
  -- Dunsparce - Psych Up - TM77
  (206, 20600, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 49),
  -- Dunsparce - Captivate - TM78
  (206, 20600, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 50),
  -- Dunsparce - Rock Slide - TM80
  (206, 20600, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 51),
  -- Dunsparce - Sleep Talk - TM82
  (206, 20600, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 52),
  -- Dunsparce - Natural Gift - TM83
  (206, 20600, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 53),
  -- Dunsparce - Poison Jab - TM84
  (206, 20600, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 54),
  -- Dunsparce - Dream Eater - TM85
  (206, 20600, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 55),
  -- Dunsparce - Swagger - TM87
  (206, 20600, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 56),
  -- Dunsparce - Substitute - TM90
  (206, 20600, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 57),
  -- Dunsparce - Strength - HM04
  (206, 20600, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 58),
  -- Dunsparce - Rock Smash - HM06
  (206, 20600, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 59),
  -- Dunsparce - Headbutt - Egg
  (206, 20600, 29, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Dunsparce - Bite - Egg
  (206, 20600, 44, 9, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Dunsparce - Bide - Egg
  (206, 20600, 117, 9, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Dunsparce - Rock Slide - Egg
  (206, 20600, 157, 9, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Dunsparce - Snore - Egg
  (206, 20600, 173, 9, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Dunsparce - Curse - Egg
  (206, 20600, 174, 9, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Dunsparce - Ancient Power - Egg
  (206, 20600, 246, 9, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Dunsparce - Magic Coat - Egg
  (206, 20600, 277, 9, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Dunsparce - Astonish - Egg
  (206, 20600, 310, 9, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Dunsparce - Trump Card - Egg
  (206, 20600, 376, 9, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Dunsparce - Snore - Tutor
  (206, 20600, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Dunsparce - Spite - Tutor
  (206, 20600, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Dunsparce - Mud-Slap - Tutor
  (206, 20600, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Dunsparce - Rollout - Tutor
  (206, 20600, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Dunsparce - Ancient Power - Tutor
  (206, 20600, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Dunsparce - Endeavor - Tutor
  (206, 20600, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Dunsparce - Last Resort - Tutor
  (206, 20600, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Dunsparce - Aqua Tail - Tutor
  (206, 20600, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Dunsparce - Zen Headbutt - Tutor
  (206, 20600, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 78),
  -- Gligar - Poison Sting - Level 1
  (207, 20700, 40, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gligar - Sand Attack - Level 5
  (207, 20700, 28, 9, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Gligar - Harden - Level 9
  (207, 20700, 106, 9, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Gligar - Knock Off - Level 12
  (207, 20700, 282, 9, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Gligar - Quick Attack - Level 16
  (207, 20700, 98, 9, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Gligar - Fury Cutter - Level 20
  (207, 20700, 210, 9, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Gligar - Feint Attack - Level 23
  (207, 20700, 185, 9, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Gligar - Screech - Level 27
  (207, 20700, 103, 9, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Gligar - Slash - Level 31
  (207, 20700, 163, 9, NULL, 1, 31, NULL, NULL, NULL, 9),
  -- Gligar - Swords Dance - Level 34
  (207, 20700, 14, 9, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Gligar - U-turn - Level 38
  (207, 20700, 369, 9, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Gligar - X-Scissor - Level 42
  (207, 20700, 404, 9, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Gligar - Guillotine - Level 45
  (207, 20700, 12, 9, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Gligar - Toxic - TM06
  (207, 20700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Gligar - Hidden Power - TM10
  (207, 20700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 15),
  -- Gligar - Sunny Day - TM11
  (207, 20700, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 16),
  -- Gligar - Taunt - TM12
  (207, 20700, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 17),
  -- Gligar - Protect - TM17
  (207, 20700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 18),
  -- Gligar - Rain Dance - TM18
  (207, 20700, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 19),
  -- Gligar - Frustration - TM21
  (207, 20700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 20),
  -- Gligar - Iron Tail - TM23
  (207, 20700, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 21),
  -- Gligar - Earthquake - TM26
  (207, 20700, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 22),
  -- Gligar - Return - TM27
  (207, 20700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 23),
  -- Gligar - Dig - TM28
  (207, 20700, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 24),
  -- Gligar - Brick Break - TM31
  (207, 20700, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 25),
  -- Gligar - Double Team - TM32
  (207, 20700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 26),
  -- Gligar - Sludge Bomb - TM36
  (207, 20700, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 27),
  -- Gligar - Sandstorm - TM37
  (207, 20700, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 28),
  -- Gligar - Rock Tomb - TM39
  (207, 20700, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 29),
  -- Gligar - Aerial Ace - TM40
  (207, 20700, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 30),
  -- Gligar - Torment - TM41
  (207, 20700, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 31),
  -- Gligar - Facade - TM42
  (207, 20700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 32),
  -- Gligar - Secret Power - TM43
  (207, 20700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 33),
  -- Gligar - Rest - TM44
  (207, 20700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 34),
  -- Gligar - Attract - TM45
  (207, 20700, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 35),
  -- Gligar - Thief - TM46
  (207, 20700, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 36),
  -- Gligar - Steel Wing - TM47
  (207, 20700, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 37),
  -- Gligar - Roost - TM51
  (207, 20700, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 38),
  -- Gligar - False Swipe - TM54
  (207, 20700, 206, 9, NULL, 2, NULL, NULL, 9002054, NULL, 39),
  -- Gligar - Fling - TM56
  (207, 20700, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 40),
  -- Gligar - Endure - TM58
  (207, 20700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 41),
  -- Gligar - Payback - TM66
  (207, 20700, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 42),
  -- Gligar - Rock Polish - TM69
  (207, 20700, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 43),
  -- Gligar - Stone Edge - TM71
  (207, 20700, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 44),
  -- Gligar - Swords Dance - TM75
  (207, 20700, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 45),
  -- Gligar - Stealth Rock - TM76
  (207, 20700, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 46),
  -- Gligar - Captivate - TM78
  (207, 20700, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 47),
  -- Gligar - Dark Pulse - TM79
  (207, 20700, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 48),
  -- Gligar - Rock Slide - TM80
  (207, 20700, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 49),
  -- Gligar - X-Scissor - TM81
  (207, 20700, 404, 9, NULL, 2, NULL, NULL, 9002081, NULL, 50),
  -- Gligar - Sleep Talk - TM82
  (207, 20700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 51),
  -- Gligar - Natural Gift - TM83
  (207, 20700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 52),
  -- Gligar - Poison Jab - TM84
  (207, 20700, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 53),
  -- Gligar - Swagger - TM87
  (207, 20700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 54),
  -- Gligar - U-turn - TM89
  (207, 20700, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 55),
  -- Gligar - Substitute - TM90
  (207, 20700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 56),
  -- Gligar - Cut - HM01
  (207, 20700, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 57),
  -- Gligar - Strength - HM04
  (207, 20700, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 58),
  -- Gligar - Defog - HM05
  (207, 20700, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 59),
  -- Gligar - Rock Smash - HM06
  (207, 20700, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 60),
  -- Gligar - Razor Wind - Egg
  (207, 20700, 13, 9, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Gligar - Wing Attack - Egg
  (207, 20700, 17, 9, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Gligar - Double-Edge - Egg
  (207, 20700, 38, 9, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Gligar - Counter - Egg
  (207, 20700, 68, 9, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Gligar - Agility - Egg
  (207, 20700, 97, 9, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Gligar - Baton Pass - Egg
  (207, 20700, 226, 9, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Gligar - Metal Claw - Egg
  (207, 20700, 232, 9, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Gligar - Sand Tomb - Egg
  (207, 20700, 328, 9, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Gligar - Feint - Egg
  (207, 20700, 364, 9, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Gligar - Night Slash - Egg
  (207, 20700, 400, 9, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Gligar - Cross Poison - Egg
  (207, 20700, 440, 9, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Gligar - Swift - Tutor
  (207, 20700, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Gligar - Snore - Tutor
  (207, 20700, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Gligar - Fury Cutter - Tutor
  (207, 20700, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Gligar - Knock Off - Tutor
  (207, 20700, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Gligar - Aqua Tail - Tutor
  (207, 20700, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Gligar - Earth Power - Tutor
  (207, 20700, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Steelix - Bind - Level 1
  (208, 20800, 20, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Steelix - Tackle - Level 1
  (208, 20800, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Steelix - Harden - Level 1
  (208, 20800, 106, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Steelix - Mud Sport - Level 1
  (208, 20800, 300, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Steelix - Thunder Fang - Level 1
  (208, 20800, 422, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Steelix - Ice Fang - Level 1
  (208, 20800, 423, 9, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Steelix - Fire Fang - Level 1
  (208, 20800, 424, 9, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Steelix - Screech - Level 6
  (208, 20800, 103, 9, NULL, 1, 6, NULL, NULL, NULL, 8),
  -- Steelix - Rock Throw - Level 9
  (208, 20800, 88, 9, NULL, 1, 9, NULL, NULL, NULL, 9),
  -- Steelix - Rage - Level 14
  (208, 20800, 99, 9, NULL, 1, 14, NULL, NULL, NULL, 10),
  -- Steelix - Rock Tomb - Level 17
  (208, 20800, 317, 9, NULL, 1, 17, NULL, NULL, NULL, 11),
  -- Steelix - Sandstorm - Level 22
  (208, 20800, 201, 9, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Steelix - Slam - Level 25
  (208, 20800, 21, 9, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Steelix - Rock Polish - Level 30
  (208, 20800, 397, 9, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Steelix - Dragon Breath - Level 33
  (208, 20800, 225, 9, NULL, 1, 33, NULL, NULL, NULL, 15),
  -- Steelix - Curse - Level 38
  (208, 20800, 174, 9, NULL, 1, 38, NULL, NULL, NULL, 16),
  -- Steelix - Iron Tail - Level 41
  (208, 20800, 231, 9, NULL, 1, 41, NULL, NULL, NULL, 17),
  -- Steelix - Crunch - Level 46
  (208, 20800, 242, 9, NULL, 1, 46, NULL, NULL, NULL, 18),
  -- Steelix - Double-Edge - Level 49
  (208, 20800, 38, 9, NULL, 1, 49, NULL, NULL, NULL, 19),
  -- Steelix - Stone Edge - Level 54
  (208, 20800, 444, 9, NULL, 1, 54, NULL, NULL, NULL, 20),
  -- Steelix - Roar - TM05
  (208, 20800, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 21),
  -- Steelix - Toxic - TM06
  (208, 20800, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 22),
  -- Steelix - Hidden Power - TM10
  (208, 20800, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 23),
  -- Steelix - Sunny Day - TM11
  (208, 20800, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 24),
  -- Steelix - Taunt - TM12
  (208, 20800, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 25),
  -- Steelix - Hyper Beam - TM15
  (208, 20800, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 26),
  -- Steelix - Protect - TM17
  (208, 20800, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 27),
  -- Steelix - Frustration - TM21
  (208, 20800, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 28),
  -- Steelix - Iron Tail - TM23
  (208, 20800, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 29),
  -- Steelix - Earthquake - TM26
  (208, 20800, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 30),
  -- Steelix - Return - TM27
  (208, 20800, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 31),
  -- Steelix - Dig - TM28
  (208, 20800, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 32),
  -- Steelix - Double Team - TM32
  (208, 20800, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 33),
  -- Steelix - Sandstorm - TM37
  (208, 20800, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 34),
  -- Steelix - Rock Tomb - TM39
  (208, 20800, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 35),
  -- Steelix - Torment - TM41
  (208, 20800, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 36),
  -- Steelix - Facade - TM42
  (208, 20800, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 37),
  -- Steelix - Secret Power - TM43
  (208, 20800, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 38),
  -- Steelix - Rest - TM44
  (208, 20800, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 39),
  -- Steelix - Attract - TM45
  (208, 20800, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 40),
  -- Steelix - Endure - TM58
  (208, 20800, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 41),
  -- Steelix - Dragon Pulse - TM59
  (208, 20800, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 42),
  -- Steelix - Explosion - TM64
  (208, 20800, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 43),
  -- Steelix - Payback - TM66
  (208, 20800, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 44),
  -- Steelix - Giga Impact - TM68
  (208, 20800, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 45),
  -- Steelix - Rock Polish - TM69
  (208, 20800, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 46),
  -- Steelix - Stone Edge - TM71
  (208, 20800, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 47),
  -- Steelix - Gyro Ball - TM74
  (208, 20800, 360, 9, NULL, 2, NULL, NULL, 9002074, NULL, 48),
  -- Steelix - Stealth Rock - TM76
  (208, 20800, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 49),
  -- Steelix - Psych Up - TM77
  (208, 20800, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 50),
  -- Steelix - Captivate - TM78
  (208, 20800, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 51),
  -- Steelix - Dark Pulse - TM79
  (208, 20800, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 52),
  -- Steelix - Rock Slide - TM80
  (208, 20800, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 53),
  -- Steelix - Sleep Talk - TM82
  (208, 20800, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 54),
  -- Steelix - Natural Gift - TM83
  (208, 20800, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 55),
  -- Steelix - Swagger - TM87
  (208, 20800, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 56),
  -- Steelix - Substitute - TM90
  (208, 20800, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 57),
  -- Steelix - Flash Cannon - TM91
  (208, 20800, 430, 9, NULL, 2, NULL, NULL, 9002091, NULL, 58),
  -- Steelix - Cut - HM01
  (208, 20800, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 59),
  -- Steelix - Strength - HM04
  (208, 20800, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 60),
  -- Steelix - Rock Smash - HM06
  (208, 20800, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 61),
  -- Steelix - Rock Climb - HM08
  (208, 20800, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 62),
  -- Steelix - Snore - Tutor
  (208, 20800, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Steelix - Mud-Slap - Tutor
  (208, 20800, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Steelix - Rollout - Tutor
  (208, 20800, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Steelix - Twister - Tutor
  (208, 20800, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Steelix - Ancient Power - Tutor
  (208, 20800, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Steelix - Magnet Rise - Tutor
  (208, 20800, 393, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Steelix - Aqua Tail - Tutor
  (208, 20800, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Steelix - Earth Power - Tutor
  (208, 20800, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Steelix - Iron Head - Tutor
  (208, 20800, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Snubbull - Tackle - Level 1
  (209, 20900, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snubbull - Tail Whip - Level 1
  (209, 20900, 39, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Snubbull - Scary Face - Level 1
  (209, 20900, 184, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Snubbull - Charm - Level 1
  (209, 20900, 204, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Snubbull - Thunder Fang - Level 1
  (209, 20900, 422, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Snubbull - Ice Fang - Level 1
  (209, 20900, 423, 9, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Snubbull - Fire Fang - Level 1
  (209, 20900, 424, 9, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Snubbull - Bite - Level 7
  (209, 20900, 44, 9, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Snubbull - Lick - Level 13
  (209, 20900, 122, 9, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Snubbull - Headbutt - Level 19
  (209, 20900, 29, 9, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Snubbull - Roar - Level 25
  (209, 20900, 46, 9, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Snubbull - Rage - Level 31
  (209, 20900, 99, 9, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Snubbull - Take Down - Level 37
  (209, 20900, 36, 9, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Snubbull - Payback - Level 43
  (209, 20900, 371, 9, NULL, 1, 43, NULL, NULL, NULL, 14),
  -- Snubbull - Crunch - Level 49
  (209, 20900, 242, 9, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Snubbull - Focus Punch - TM01
  (209, 20900, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 16),
  -- Snubbull - Water Pulse - TM03
  (209, 20900, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 17),
  -- Snubbull - Roar - TM05
  (209, 20900, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 18),
  -- Snubbull - Toxic - TM06
  (209, 20900, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 19),
  -- Snubbull - Bulk Up - TM08
  (209, 20900, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 20),
  -- Snubbull - Hidden Power - TM10
  (209, 20900, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 21),
  -- Snubbull - Sunny Day - TM11
  (209, 20900, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 22),
  -- Snubbull - Taunt - TM12
  (209, 20900, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 23),
  -- Snubbull - Protect - TM17
  (209, 20900, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 24),
  -- Snubbull - Rain Dance - TM18
  (209, 20900, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 25),
  -- Snubbull - Frustration - TM21
  (209, 20900, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 26),
  -- Snubbull - Solar Beam - TM22
  (209, 20900, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 27),
  -- Snubbull - Thunderbolt - TM24
  (209, 20900, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 28),
  -- Snubbull - Thunder - TM25
  (209, 20900, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 29),
  -- Snubbull - Earthquake - TM26
  (209, 20900, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 30),
  -- Snubbull - Return - TM27
  (209, 20900, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 31),
  -- Snubbull - Dig - TM28
  (209, 20900, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 32),
  -- Snubbull - Shadow Ball - TM30
  (209, 20900, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 33),
  -- Snubbull - Brick Break - TM31
  (209, 20900, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 34),
  -- Snubbull - Double Team - TM32
  (209, 20900, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 35),
  -- Snubbull - Shock Wave - TM34
  (209, 20900, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 36),
  -- Snubbull - Flamethrower - TM35
  (209, 20900, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 37),
  -- Snubbull - Sludge Bomb - TM36
  (209, 20900, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 38),
  -- Snubbull - Fire Blast - TM38
  (209, 20900, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 39),
  -- Snubbull - Torment - TM41
  (209, 20900, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 40),
  -- Snubbull - Facade - TM42
  (209, 20900, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 41),
  -- Snubbull - Secret Power - TM43
  (209, 20900, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 42),
  -- Snubbull - Rest - TM44
  (209, 20900, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 43),
  -- Snubbull - Attract - TM45
  (209, 20900, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 44),
  -- Snubbull - Thief - TM46
  (209, 20900, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 45),
  -- Snubbull - Overheat - TM50
  (209, 20900, 315, 9, NULL, 2, NULL, NULL, 9002050, NULL, 46),
  -- Snubbull - Fling - TM56
  (209, 20900, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 47),
  -- Snubbull - Endure - TM58
  (209, 20900, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 48),
  -- Snubbull - Payback - TM66
  (209, 20900, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 49),
  -- Snubbull - Thunder Wave - TM73
  (209, 20900, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 50),
  -- Snubbull - Captivate - TM78
  (209, 20900, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 51),
  -- Snubbull - Sleep Talk - TM82
  (209, 20900, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 52),
  -- Snubbull - Natural Gift - TM83
  (209, 20900, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 53),
  -- Snubbull - Swagger - TM87
  (209, 20900, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 54),
  -- Snubbull - Substitute - TM90
  (209, 20900, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 55),
  -- Snubbull - Strength - HM04
  (209, 20900, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 56),
  -- Snubbull - Rock Smash - HM06
  (209, 20900, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 57),
  -- Snubbull - Reflect - Egg
  (209, 20900, 115, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Snubbull - Metronome - Egg
  (209, 20900, 118, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Snubbull - Snore - Egg
  (209, 20900, 173, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Snubbull - Feint Attack - Egg
  (209, 20900, 185, 9, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Snubbull - Heal Bell - Egg
  (209, 20900, 215, 9, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Snubbull - Present - Egg
  (209, 20900, 217, 9, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Snubbull - Crunch - Egg
  (209, 20900, 242, 9, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Snubbull - Smelling Salts - Egg
  (209, 20900, 265, 9, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Snubbull - Close Combat - Egg
  (209, 20900, 370, 9, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Snubbull - Thunder Fang - Egg
  (209, 20900, 422, 9, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Snubbull - Ice Fang - Egg
  (209, 20900, 423, 9, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Snubbull - Fire Fang - Egg
  (209, 20900, 424, 9, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Snubbull - Fire Punch - Tutor
  (209, 20900, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Snubbull - Ice Punch - Tutor
  (209, 20900, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Snubbull - Thunder Punch - Tutor
  (209, 20900, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Snubbull - Snore - Tutor
  (209, 20900, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Snubbull - Mud-Slap - Tutor
  (209, 20900, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Snubbull - Superpower - Tutor
  (209, 20900, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Snubbull - Last Resort - Tutor
  (209, 20900, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Granbull - Tackle - Level 1
  (210, 21000, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Granbull - Tail Whip - Level 1
  (210, 21000, 39, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Granbull - Scary Face - Level 1
  (210, 21000, 184, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Granbull - Charm - Level 1
  (210, 21000, 204, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Granbull - Thunder Fang - Level 1
  (210, 21000, 422, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Granbull - Ice Fang - Level 1
  (210, 21000, 423, 9, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Granbull - Fire Fang - Level 1
  (210, 21000, 424, 9, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Granbull - Bite - Level 7
  (210, 21000, 44, 9, NULL, 1, 7, NULL, NULL, NULL, 8),
  -- Granbull - Lick - Level 13
  (210, 21000, 122, 9, NULL, 1, 13, NULL, NULL, NULL, 9),
  -- Granbull - Headbutt - Level 19
  (210, 21000, 29, 9, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Granbull - Roar - Level 27
  (210, 21000, 46, 9, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Granbull - Rage - Level 35
  (210, 21000, 99, 9, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Granbull - Take Down - Level 43
  (210, 21000, 36, 9, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Granbull - Payback - Level 51
  (210, 21000, 371, 9, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Granbull - Crunch - Level 59
  (210, 21000, 242, 9, NULL, 1, 59, NULL, NULL, NULL, 15),
  -- Granbull - Focus Punch - TM01
  (210, 21000, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 16),
  -- Granbull - Water Pulse - TM03
  (210, 21000, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 17),
  -- Granbull - Roar - TM05
  (210, 21000, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 18),
  -- Granbull - Toxic - TM06
  (210, 21000, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 19),
  -- Granbull - Bulk Up - TM08
  (210, 21000, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 20),
  -- Granbull - Hidden Power - TM10
  (210, 21000, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 21),
  -- Granbull - Sunny Day - TM11
  (210, 21000, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 22),
  -- Granbull - Taunt - TM12
  (210, 21000, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 23),
  -- Granbull - Hyper Beam - TM15
  (210, 21000, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 24),
  -- Granbull - Protect - TM17
  (210, 21000, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 25),
  -- Granbull - Rain Dance - TM18
  (210, 21000, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 26),
  -- Granbull - Frustration - TM21
  (210, 21000, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 27),
  -- Granbull - Solar Beam - TM22
  (210, 21000, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 28),
  -- Granbull - Iron Tail - TM23
  (210, 21000, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 29),
  -- Granbull - Thunderbolt - TM24
  (210, 21000, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 30),
  -- Granbull - Thunder - TM25
  (210, 21000, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 31),
  -- Granbull - Earthquake - TM26
  (210, 21000, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 32),
  -- Granbull - Return - TM27
  (210, 21000, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 33),
  -- Granbull - Dig - TM28
  (210, 21000, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 34),
  -- Granbull - Shadow Ball - TM30
  (210, 21000, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 35),
  -- Granbull - Brick Break - TM31
  (210, 21000, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 36),
  -- Granbull - Double Team - TM32
  (210, 21000, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 37),
  -- Granbull - Shock Wave - TM34
  (210, 21000, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 38),
  -- Granbull - Flamethrower - TM35
  (210, 21000, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 39),
  -- Granbull - Sludge Bomb - TM36
  (210, 21000, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 40),
  -- Granbull - Fire Blast - TM38
  (210, 21000, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 41),
  -- Granbull - Rock Tomb - TM39
  (210, 21000, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 42),
  -- Granbull - Torment - TM41
  (210, 21000, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 43),
  -- Granbull - Facade - TM42
  (210, 21000, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 44),
  -- Granbull - Secret Power - TM43
  (210, 21000, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 45),
  -- Granbull - Rest - TM44
  (210, 21000, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 46),
  -- Granbull - Attract - TM45
  (210, 21000, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 47),
  -- Granbull - Thief - TM46
  (210, 21000, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 48),
  -- Granbull - Overheat - TM50
  (210, 21000, 315, 9, NULL, 2, NULL, NULL, 9002050, NULL, 49),
  -- Granbull - Focus Blast - TM52
  (210, 21000, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 50),
  -- Granbull - Fling - TM56
  (210, 21000, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 51),
  -- Granbull - Endure - TM58
  (210, 21000, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 52),
  -- Granbull - Payback - TM66
  (210, 21000, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 53),
  -- Granbull - Giga Impact - TM68
  (210, 21000, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 54),
  -- Granbull - Stone Edge - TM71
  (210, 21000, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 55),
  -- Granbull - Thunder Wave - TM73
  (210, 21000, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 56),
  -- Granbull - Captivate - TM78
  (210, 21000, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 57),
  -- Granbull - Rock Slide - TM80
  (210, 21000, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 58),
  -- Granbull - Sleep Talk - TM82
  (210, 21000, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 59),
  -- Granbull - Natural Gift - TM83
  (210, 21000, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 60),
  -- Granbull - Swagger - TM87
  (210, 21000, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 61),
  -- Granbull - Substitute - TM90
  (210, 21000, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 62),
  -- Granbull - Strength - HM04
  (210, 21000, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 63),
  -- Granbull - Rock Smash - HM06
  (210, 21000, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 64),
  -- Granbull - Rock Climb - HM08
  (210, 21000, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 65),
  -- Granbull - Fire Punch - Tutor
  (210, 21000, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Granbull - Ice Punch - Tutor
  (210, 21000, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Granbull - Thunder Punch - Tutor
  (210, 21000, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Granbull - Snore - Tutor
  (210, 21000, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Granbull - Mud-Slap - Tutor
  (210, 21000, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Granbull - Superpower - Tutor
  (210, 21000, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Granbull - Last Resort - Tutor
  (210, 21000, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Qwilfish - Tackle - Level 1
  (211, 21100, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Qwilfish - Poison Sting - Level 1
  (211, 21100, 40, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Qwilfish - Spikes - Level 1
  (211, 21100, 191, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Qwilfish - Harden - Level 9
  (211, 21100, 106, 9, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Qwilfish - Minimize - Level 9
  (211, 21100, 107, 9, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Qwilfish - Water Gun - Level 13
  (211, 21100, 55, 9, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Qwilfish - Rollout - Level 17
  (211, 21100, 205, 9, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Qwilfish - Toxic Spikes - Level 21
  (211, 21100, 390, 9, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Qwilfish - Stockpile - Level 25
  (211, 21100, 254, 9, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Qwilfish - Spit Up - Level 25
  (211, 21100, 255, 9, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Qwilfish - Revenge - Level 29
  (211, 21100, 279, 9, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Qwilfish - Brine - Level 33
  (211, 21100, 362, 9, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Qwilfish - Pin Missile - Level 37
  (211, 21100, 42, 9, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Qwilfish - Take Down - Level 41
  (211, 21100, 36, 9, NULL, 1, 41, NULL, NULL, NULL, 14),
  -- Qwilfish - Aqua Tail - Level 45
  (211, 21100, 401, 9, NULL, 1, 45, NULL, NULL, NULL, 15),
  -- Qwilfish - Poison Jab - Level 49
  (211, 21100, 398, 9, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Qwilfish - Destiny Bond - Level 53
  (211, 21100, 194, 9, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Qwilfish - Hydro Pump - Level 57
  (211, 21100, 56, 9, NULL, 1, 57, NULL, NULL, NULL, 18),
  -- Qwilfish - Water Pulse - TM03
  (211, 21100, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 19),
  -- Qwilfish - Toxic - TM06
  (211, 21100, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 20),
  -- Qwilfish - Hail - TM07
  (211, 21100, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 21),
  -- Qwilfish - Hidden Power - TM10
  (211, 21100, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 22),
  -- Qwilfish - Taunt - TM12
  (211, 21100, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 23),
  -- Qwilfish - Ice Beam - TM13
  (211, 21100, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 24),
  -- Qwilfish - Blizzard - TM14
  (211, 21100, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 25),
  -- Qwilfish - Protect - TM17
  (211, 21100, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 26),
  -- Qwilfish - Rain Dance - TM18
  (211, 21100, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 27),
  -- Qwilfish - Frustration - TM21
  (211, 21100, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 28),
  -- Qwilfish - Return - TM27
  (211, 21100, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 29),
  -- Qwilfish - Shadow Ball - TM30
  (211, 21100, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 30),
  -- Qwilfish - Double Team - TM32
  (211, 21100, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 31),
  -- Qwilfish - Shock Wave - TM34
  (211, 21100, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 32),
  -- Qwilfish - Sludge Bomb - TM36
  (211, 21100, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 33),
  -- Qwilfish - Facade - TM42
  (211, 21100, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 34),
  -- Qwilfish - Secret Power - TM43
  (211, 21100, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 35),
  -- Qwilfish - Rest - TM44
  (211, 21100, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 36),
  -- Qwilfish - Attract - TM45
  (211, 21100, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 37),
  -- Qwilfish - Brine - TM55
  (211, 21100, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 38),
  -- Qwilfish - Endure - TM58
  (211, 21100, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 39),
  -- Qwilfish - Explosion - TM64
  (211, 21100, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 40),
  -- Qwilfish - Payback - TM66
  (211, 21100, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 41),
  -- Qwilfish - Thunder Wave - TM73
  (211, 21100, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 42),
  -- Qwilfish - Gyro Ball - TM74
  (211, 21100, 360, 9, NULL, 2, NULL, NULL, 9002074, NULL, 43),
  -- Qwilfish - Captivate - TM78
  (211, 21100, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 44),
  -- Qwilfish - Sleep Talk - TM82
  (211, 21100, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 45),
  -- Qwilfish - Natural Gift - TM83
  (211, 21100, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 46),
  -- Qwilfish - Poison Jab - TM84
  (211, 21100, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 47),
  -- Qwilfish - Swagger - TM87
  (211, 21100, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 48),
  -- Qwilfish - Substitute - TM90
  (211, 21100, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 49),
  -- Qwilfish - Surf - HM03
  (211, 21100, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 50),
  -- Qwilfish - Defog - HM05
  (211, 21100, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 51),
  -- Qwilfish - Waterfall - HM07
  (211, 21100, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 52),
  -- Qwilfish - Supersonic - Egg
  (211, 21100, 48, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Qwilfish - Bubble Beam - Egg
  (211, 21100, 61, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Qwilfish - Haze - Egg
  (211, 21100, 114, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Qwilfish - Flail - Egg
  (211, 21100, 175, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Qwilfish - Astonish - Egg
  (211, 21100, 310, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Qwilfish - Signal Beam - Egg
  (211, 21100, 324, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Qwilfish - Poison Jab - Egg
  (211, 21100, 398, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Qwilfish - Swift - Tutor
  (211, 21100, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Qwilfish - Snore - Tutor
  (211, 21100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Qwilfish - Icy Wind - Tutor
  (211, 21100, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Qwilfish - Rollout - Tutor
  (211, 21100, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Qwilfish - Dive - Tutor
  (211, 21100, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Qwilfish - Signal Beam - Tutor
  (211, 21100, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Qwilfish - Bounce - Tutor
  (211, 21100, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Qwilfish - Aqua Tail - Tutor
  (211, 21100, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Scizor - Leer - Level 1
  (212, 21200, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scizor - Quick Attack - Level 1
  (212, 21200, 98, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scizor - Bullet Punch - Level 1
  (212, 21200, 418, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Scizor - Focus Energy - Level 5
  (212, 21200, 116, 9, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Scizor - Pursuit - Level 9
  (212, 21200, 228, 9, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Scizor - False Swipe - Level 13
  (212, 21200, 206, 9, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Scizor - Agility - Level 17
  (212, 21200, 97, 9, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Scizor - Metal Claw - Level 21
  (212, 21200, 232, 9, NULL, 1, 21, NULL, NULL, NULL, 8),
  -- Scizor - Fury Cutter - Level 25
  (212, 21200, 210, 9, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Scizor - Slash - Level 29
  (212, 21200, 163, 9, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Scizor - Razor Wind - Level 33
  (212, 21200, 13, 9, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Scizor - Iron Defense - Level 37
  (212, 21200, 334, 9, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Scizor - X-Scissor - Level 41
  (212, 21200, 404, 9, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Scizor - Night Slash - Level 45
  (212, 21200, 400, 9, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Scizor - Double Hit - Level 49
  (212, 21200, 458, 9, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Scizor - Iron Head - Level 53
  (212, 21200, 442, 9, NULL, 1, 53, NULL, NULL, NULL, 16),
  -- Scizor - Swords Dance - Level 57
  (212, 21200, 14, 9, NULL, 1, 57, NULL, NULL, NULL, 17),
  -- Scizor - Feint - Level 61
  (212, 21200, 364, 9, NULL, 1, 61, NULL, NULL, NULL, 18),
  -- Scizor - Toxic - TM06
  (212, 21200, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 19),
  -- Scizor - Hidden Power - TM10
  (212, 21200, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 20),
  -- Scizor - Sunny Day - TM11
  (212, 21200, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 21),
  -- Scizor - Hyper Beam - TM15
  (212, 21200, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 22),
  -- Scizor - Protect - TM17
  (212, 21200, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 23),
  -- Scizor - Rain Dance - TM18
  (212, 21200, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 24),
  -- Scizor - Frustration - TM21
  (212, 21200, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 25),
  -- Scizor - Return - TM27
  (212, 21200, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 26),
  -- Scizor - Brick Break - TM31
  (212, 21200, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 27),
  -- Scizor - Double Team - TM32
  (212, 21200, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 28),
  -- Scizor - Sandstorm - TM37
  (212, 21200, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 29),
  -- Scizor - Aerial Ace - TM40
  (212, 21200, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 30),
  -- Scizor - Facade - TM42
  (212, 21200, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 31),
  -- Scizor - Secret Power - TM43
  (212, 21200, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 32),
  -- Scizor - Rest - TM44
  (212, 21200, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 33),
  -- Scizor - Attract - TM45
  (212, 21200, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 34),
  -- Scizor - Thief - TM46
  (212, 21200, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 35),
  -- Scizor - Steel Wing - TM47
  (212, 21200, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 36),
  -- Scizor - Roost - TM51
  (212, 21200, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 37),
  -- Scizor - False Swipe - TM54
  (212, 21200, 206, 9, NULL, 2, NULL, NULL, 9002054, NULL, 38),
  -- Scizor - Fling - TM56
  (212, 21200, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 39),
  -- Scizor - Endure - TM58
  (212, 21200, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 40),
  -- Scizor - Silver Wind - TM62
  (212, 21200, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 41),
  -- Scizor - Giga Impact - TM68
  (212, 21200, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 42),
  -- Scizor - Swords Dance - TM75
  (212, 21200, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 43),
  -- Scizor - Captivate - TM78
  (212, 21200, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 44),
  -- Scizor - X-Scissor - TM81
  (212, 21200, 404, 9, NULL, 2, NULL, NULL, 9002081, NULL, 45),
  -- Scizor - Sleep Talk - TM82
  (212, 21200, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 46),
  -- Scizor - Natural Gift - TM83
  (212, 21200, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 47),
  -- Scizor - Swagger - TM87
  (212, 21200, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 48),
  -- Scizor - U-turn - TM89
  (212, 21200, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 49),
  -- Scizor - Substitute - TM90
  (212, 21200, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 50),
  -- Scizor - Flash Cannon - TM91
  (212, 21200, 430, 9, NULL, 2, NULL, NULL, 9002091, NULL, 51),
  -- Scizor - Cut - HM01
  (212, 21200, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 52),
  -- Scizor - Strength - HM04
  (212, 21200, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 53),
  -- Scizor - Defog - HM05
  (212, 21200, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 54),
  -- Scizor - Rock Smash - HM06
  (212, 21200, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 55),
  -- Scizor - Swift - Tutor
  (212, 21200, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Scizor - Snore - Tutor
  (212, 21200, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Scizor - Fury Cutter - Tutor
  (212, 21200, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Scizor - Superpower - Tutor
  (212, 21200, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Scizor - Knock Off - Tutor
  (212, 21200, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Scizor - Iron Defense - Tutor
  (212, 21200, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Scizor - Iron Head - Tutor
  (212, 21200, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Scizor - Ominous Wind - Tutor
  (212, 21200, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Shuckle - Withdraw - Level 1
  (213, 21300, 110, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shuckle - Bide - Level 1
  (213, 21300, 117, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shuckle - Constrict - Level 1
  (213, 21300, 132, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Shuckle - Encore - Level 9
  (213, 21300, 227, 9, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Shuckle - Safeguard - Level 14
  (213, 21300, 219, 9, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Shuckle - Wrap - Level 22
  (213, 21300, 35, 9, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Shuckle - Rest - Level 27
  (213, 21300, 156, 9, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Shuckle - Gastro Acid - Level 35
  (213, 21300, 380, 9, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Shuckle - Bug Bite - Level 40
  (213, 21300, 450, 9, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Shuckle - Power Trick - Level 48
  (213, 21300, 379, 9, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Shuckle - Toxic - TM06
  (213, 21300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 11),
  -- Shuckle - Hidden Power - TM10
  (213, 21300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 12),
  -- Shuckle - Sunny Day - TM11
  (213, 21300, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 13),
  -- Shuckle - Protect - TM17
  (213, 21300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 14),
  -- Shuckle - Safeguard - TM20
  (213, 21300, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 15),
  -- Shuckle - Frustration - TM21
  (213, 21300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 16),
  -- Shuckle - Earthquake - TM26
  (213, 21300, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 17),
  -- Shuckle - Return - TM27
  (213, 21300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 18),
  -- Shuckle - Dig - TM28
  (213, 21300, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 19),
  -- Shuckle - Double Team - TM32
  (213, 21300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 20),
  -- Shuckle - Sludge Bomb - TM36
  (213, 21300, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 21),
  -- Shuckle - Sandstorm - TM37
  (213, 21300, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 22),
  -- Shuckle - Rock Tomb - TM39
  (213, 21300, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 23),
  -- Shuckle - Facade - TM42
  (213, 21300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 24),
  -- Shuckle - Secret Power - TM43
  (213, 21300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 25),
  -- Shuckle - Rest - TM44
  (213, 21300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 26),
  -- Shuckle - Attract - TM45
  (213, 21300, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 27),
  -- Shuckle - Endure - TM58
  (213, 21300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 28),
  -- Shuckle - Rock Polish - TM69
  (213, 21300, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 29),
  -- Shuckle - Flash - TM70
  (213, 21300, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 30),
  -- Shuckle - Stone Edge - TM71
  (213, 21300, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 31),
  -- Shuckle - Gyro Ball - TM74
  (213, 21300, 360, 9, NULL, 2, NULL, NULL, 9002074, NULL, 32),
  -- Shuckle - Stealth Rock - TM76
  (213, 21300, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 33),
  -- Shuckle - Captivate - TM78
  (213, 21300, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 34),
  -- Shuckle - Rock Slide - TM80
  (213, 21300, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 35),
  -- Shuckle - Sleep Talk - TM82
  (213, 21300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 36),
  -- Shuckle - Natural Gift - TM83
  (213, 21300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 37),
  -- Shuckle - Swagger - TM87
  (213, 21300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 38),
  -- Shuckle - Substitute - TM90
  (213, 21300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 39),
  -- Shuckle - Strength - HM04
  (213, 21300, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 40),
  -- Shuckle - Rock Smash - HM06
  (213, 21300, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 41),
  -- Shuckle - Mud-Slap - Egg
  (213, 21300, 189, 9, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Shuckle - Sweet Scent - Egg
  (213, 21300, 230, 9, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Shuckle - Helping Hand - Egg
  (213, 21300, 270, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Shuckle - Knock Off - Egg
  (213, 21300, 282, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Shuckle - Sand Tomb - Egg
  (213, 21300, 328, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Shuckle - Acupressure - Egg
  (213, 21300, 367, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Shuckle - Snore - Tutor
  (213, 21300, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Shuckle - Mud-Slap - Tutor
  (213, 21300, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Shuckle - Rollout - Tutor
  (213, 21300, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Shuckle - Ancient Power - Tutor
  (213, 21300, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Shuckle - Helping Hand - Tutor
  (213, 21300, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Shuckle - Gastro Acid - Tutor
  (213, 21300, 380, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Shuckle - Earth Power - Tutor
  (213, 21300, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Heracross - Horn Attack - Level 1
  (214, 21400, 30, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Heracross - Tackle - Level 1
  (214, 21400, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Heracross - Leer - Level 1
  (214, 21400, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Heracross - Endure - Level 1
  (214, 21400, 203, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Heracross - Night Slash - Level 1
  (214, 21400, 400, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Heracross - Fury Attack - Level 7
  (214, 21400, 31, 9, NULL, 1, 7, NULL, NULL, NULL, 6),
  -- Heracross - Aerial Ace - Level 13
  (214, 21400, 332, 9, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Heracross - Brick Break - Level 19
  (214, 21400, 280, 9, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Heracross - Counter - Level 25
  (214, 21400, 68, 9, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Heracross - Take Down - Level 31
  (214, 21400, 36, 9, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Heracross - Close Combat - Level 37
  (214, 21400, 370, 9, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Heracross - Reversal - Level 43
  (214, 21400, 179, 9, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Heracross - Feint - Level 49
  (214, 21400, 364, 9, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Heracross - Megahorn - Level 55
  (214, 21400, 224, 9, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Heracross - Focus Punch - TM01
  (214, 21400, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 15),
  -- Heracross - Toxic - TM06
  (214, 21400, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Heracross - Bulk Up - TM08
  (214, 21400, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 17),
  -- Heracross - Hidden Power - TM10
  (214, 21400, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Heracross - Sunny Day - TM11
  (214, 21400, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 19),
  -- Heracross - Hyper Beam - TM15
  (214, 21400, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 20),
  -- Heracross - Protect - TM17
  (214, 21400, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Heracross - Rain Dance - TM18
  (214, 21400, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 22),
  -- Heracross - Frustration - TM21
  (214, 21400, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Heracross - Earthquake - TM26
  (214, 21400, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 24),
  -- Heracross - Return - TM27
  (214, 21400, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 25),
  -- Heracross - Dig - TM28
  (214, 21400, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 26),
  -- Heracross - Brick Break - TM31
  (214, 21400, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 27),
  -- Heracross - Double Team - TM32
  (214, 21400, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 28),
  -- Heracross - Rock Tomb - TM39
  (214, 21400, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 29),
  -- Heracross - Aerial Ace - TM40
  (214, 21400, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 30),
  -- Heracross - Facade - TM42
  (214, 21400, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 31),
  -- Heracross - Secret Power - TM43
  (214, 21400, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 32),
  -- Heracross - Rest - TM44
  (214, 21400, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 33),
  -- Heracross - Attract - TM45
  (214, 21400, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 34),
  -- Heracross - Thief - TM46
  (214, 21400, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 35),
  -- Heracross - Focus Blast - TM52
  (214, 21400, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 36),
  -- Heracross - Fling - TM56
  (214, 21400, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 37),
  -- Heracross - Endure - TM58
  (214, 21400, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 38),
  -- Heracross - Shadow Claw - TM65
  (214, 21400, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 39),
  -- Heracross - Giga Impact - TM68
  (214, 21400, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 40),
  -- Heracross - Stone Edge - TM71
  (214, 21400, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 41),
  -- Heracross - Swords Dance - TM75
  (214, 21400, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 42),
  -- Heracross - Captivate - TM78
  (214, 21400, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 43),
  -- Heracross - Rock Slide - TM80
  (214, 21400, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 44),
  -- Heracross - Sleep Talk - TM82
  (214, 21400, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 45),
  -- Heracross - Natural Gift - TM83
  (214, 21400, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 46),
  -- Heracross - Swagger - TM87
  (214, 21400, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 47),
  -- Heracross - Substitute - TM90
  (214, 21400, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 48),
  -- Heracross - Cut - HM01
  (214, 21400, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 49),
  -- Heracross - Strength - HM04
  (214, 21400, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 50),
  -- Heracross - Rock Smash - HM06
  (214, 21400, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 51),
  -- Heracross - Double-Edge - Egg
  (214, 21400, 38, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Heracross - Harden - Egg
  (214, 21400, 106, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Heracross - Bide - Egg
  (214, 21400, 117, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Heracross - Flail - Egg
  (214, 21400, 175, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Heracross - False Swipe - Egg
  (214, 21400, 206, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Heracross - Pursuit - Egg
  (214, 21400, 228, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Heracross - Revenge - Egg
  (214, 21400, 279, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Heracross - Snore - Tutor
  (214, 21400, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Heracross - Fury Cutter - Tutor
  (214, 21400, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Heracross - Helping Hand - Tutor
  (214, 21400, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Heracross - Knock Off - Tutor
  (214, 21400, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Heracross - Iron Defense - Tutor
  (214, 21400, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Heracross - Vacuum Wave - Tutor
  (214, 21400, 410, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Sneasel - Scratch - Level 1
  (215, 21500, 10, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sneasel - Leer - Level 1
  (215, 21500, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sneasel - Taunt - Level 1
  (215, 21500, 269, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sneasel - Quick Attack - Level 8
  (215, 21500, 98, 9, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Sneasel - Screech - Level 10
  (215, 21500, 103, 9, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Sneasel - Feint Attack - Level 14
  (215, 21500, 185, 9, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Sneasel - Fury Swipes - Level 21
  (215, 21500, 154, 9, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Sneasel - Agility - Level 24
  (215, 21500, 97, 9, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Sneasel - Icy Wind - Level 28
  (215, 21500, 196, 9, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Sneasel - Slash - Level 35
  (215, 21500, 163, 9, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Sneasel - Beat Up - Level 38
  (215, 21500, 251, 9, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Sneasel - Metal Claw - Level 42
  (215, 21500, 232, 9, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Sneasel - Ice Shard - Level 49
  (215, 21500, 420, 9, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Sneasel - Focus Punch - TM01
  (215, 21500, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 14),
  -- Sneasel - Calm Mind - TM04
  (215, 21500, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 15),
  -- Sneasel - Toxic - TM06
  (215, 21500, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Sneasel - Hail - TM07
  (215, 21500, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 17),
  -- Sneasel - Hidden Power - TM10
  (215, 21500, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Sneasel - Sunny Day - TM11
  (215, 21500, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 19),
  -- Sneasel - Taunt - TM12
  (215, 21500, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 20),
  -- Sneasel - Ice Beam - TM13
  (215, 21500, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 21),
  -- Sneasel - Blizzard - TM14
  (215, 21500, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 22),
  -- Sneasel - Protect - TM17
  (215, 21500, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 23),
  -- Sneasel - Rain Dance - TM18
  (215, 21500, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 24),
  -- Sneasel - Frustration - TM21
  (215, 21500, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 25),
  -- Sneasel - Iron Tail - TM23
  (215, 21500, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 26),
  -- Sneasel - Return - TM27
  (215, 21500, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 27),
  -- Sneasel - Dig - TM28
  (215, 21500, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 28),
  -- Sneasel - Shadow Ball - TM30
  (215, 21500, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 29),
  -- Sneasel - Brick Break - TM31
  (215, 21500, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 30),
  -- Sneasel - Double Team - TM32
  (215, 21500, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 31),
  -- Sneasel - Aerial Ace - TM40
  (215, 21500, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 32),
  -- Sneasel - Torment - TM41
  (215, 21500, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 33),
  -- Sneasel - Facade - TM42
  (215, 21500, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 34),
  -- Sneasel - Secret Power - TM43
  (215, 21500, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 35),
  -- Sneasel - Rest - TM44
  (215, 21500, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 36),
  -- Sneasel - Attract - TM45
  (215, 21500, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 37),
  -- Sneasel - Thief - TM46
  (215, 21500, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 38),
  -- Sneasel - Snatch - TM49
  (215, 21500, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 39),
  -- Sneasel - False Swipe - TM54
  (215, 21500, 206, 9, NULL, 2, NULL, NULL, 9002054, NULL, 40),
  -- Sneasel - Fling - TM56
  (215, 21500, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 41),
  -- Sneasel - Endure - TM58
  (215, 21500, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 42),
  -- Sneasel - Embargo - TM63
  (215, 21500, 373, 9, NULL, 2, NULL, NULL, 9002063, NULL, 43),
  -- Sneasel - Shadow Claw - TM65
  (215, 21500, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 44),
  -- Sneasel - Payback - TM66
  (215, 21500, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 45),
  -- Sneasel - Avalanche - TM72
  (215, 21500, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 46),
  -- Sneasel - Swords Dance - TM75
  (215, 21500, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 47),
  -- Sneasel - Psych Up - TM77
  (215, 21500, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 48),
  -- Sneasel - Captivate - TM78
  (215, 21500, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 49),
  -- Sneasel - Dark Pulse - TM79
  (215, 21500, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 50),
  -- Sneasel - X-Scissor - TM81
  (215, 21500, 404, 9, NULL, 2, NULL, NULL, 9002081, NULL, 51),
  -- Sneasel - Sleep Talk - TM82
  (215, 21500, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 52),
  -- Sneasel - Natural Gift - TM83
  (215, 21500, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 53),
  -- Sneasel - Poison Jab - TM84
  (215, 21500, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 54),
  -- Sneasel - Dream Eater - TM85
  (215, 21500, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 55),
  -- Sneasel - Swagger - TM87
  (215, 21500, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 56),
  -- Sneasel - Substitute - TM90
  (215, 21500, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 57),
  -- Sneasel - Cut - HM01
  (215, 21500, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 58),
  -- Sneasel - Surf - HM03
  (215, 21500, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 59),
  -- Sneasel - Strength - HM04
  (215, 21500, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 60),
  -- Sneasel - Defog - HM05
  (215, 21500, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 61),
  -- Sneasel - Rock Smash - HM06
  (215, 21500, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 62),
  -- Sneasel - Ice Punch - Egg
  (215, 21500, 8, 9, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Sneasel - Bite - Egg
  (215, 21500, 44, 9, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Sneasel - Counter - Egg
  (215, 21500, 68, 9, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Sneasel - Reflect - Egg
  (215, 21500, 115, 9, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Sneasel - Spite - Egg
  (215, 21500, 180, 9, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Sneasel - Foresight - Egg
  (215, 21500, 193, 9, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Sneasel - Pursuit - Egg
  (215, 21500, 228, 9, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Sneasel - Fake Out - Egg
  (215, 21500, 252, 9, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Sneasel - Crush Claw - Egg
  (215, 21500, 306, 9, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Sneasel - Punishment - Egg
  (215, 21500, 386, 9, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Sneasel - Ice Shard - Egg
  (215, 21500, 420, 9, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Sneasel - Double Hit - Egg
  (215, 21500, 458, 9, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Sneasel - Ice Punch - Tutor
  (215, 21500, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Sneasel - Swift - Tutor
  (215, 21500, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Sneasel - Snore - Tutor
  (215, 21500, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Sneasel - Spite - Tutor
  (215, 21500, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 78),
  -- Sneasel - Mud-Slap - Tutor
  (215, 21500, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 79),
  -- Sneasel - Icy Wind - Tutor
  (215, 21500, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 80),
  -- Sneasel - Fury Cutter - Tutor
  (215, 21500, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 81),
  -- Sneasel - Knock Off - Tutor
  (215, 21500, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 82),
  -- Teddiursa - Scratch - Level 1
  (216, 21600, 10, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Teddiursa - Leer - Level 1
  (216, 21600, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Teddiursa - Lick - Level 1
  (216, 21600, 122, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Teddiursa - Fake Tears - Level 1
  (216, 21600, 313, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Teddiursa - Covet - Level 1
  (216, 21600, 343, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Teddiursa - Fury Swipes - Level 8
  (216, 21600, 154, 9, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Teddiursa - Feint Attack - Level 15
  (216, 21600, 185, 9, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Teddiursa - Sweet Scent - Level 22
  (216, 21600, 230, 9, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Teddiursa - Slash - Level 29
  (216, 21600, 163, 9, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Teddiursa - Charm - Level 36
  (216, 21600, 204, 9, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Teddiursa - Rest - Level 43
  (216, 21600, 156, 9, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Teddiursa - Snore - Level 43
  (216, 21600, 173, 9, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Teddiursa - Thrash - Level 50
  (216, 21600, 37, 9, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Teddiursa - Fling - Level 57
  (216, 21600, 374, 9, NULL, 1, 57, NULL, NULL, NULL, 14),
  -- Teddiursa - Focus Punch - TM01
  (216, 21600, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 15),
  -- Teddiursa - Roar - TM05
  (216, 21600, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 16),
  -- Teddiursa - Toxic - TM06
  (216, 21600, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Teddiursa - Bulk Up - TM08
  (216, 21600, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 18),
  -- Teddiursa - Hidden Power - TM10
  (216, 21600, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Teddiursa - Sunny Day - TM11
  (216, 21600, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 20),
  -- Teddiursa - Taunt - TM12
  (216, 21600, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 21),
  -- Teddiursa - Protect - TM17
  (216, 21600, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 22),
  -- Teddiursa - Rain Dance - TM18
  (216, 21600, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 23),
  -- Teddiursa - Frustration - TM21
  (216, 21600, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Teddiursa - Earthquake - TM26
  (216, 21600, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 25),
  -- Teddiursa - Return - TM27
  (216, 21600, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 26),
  -- Teddiursa - Dig - TM28
  (216, 21600, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 27),
  -- Teddiursa - Brick Break - TM31
  (216, 21600, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 28),
  -- Teddiursa - Double Team - TM32
  (216, 21600, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 29),
  -- Teddiursa - Rock Tomb - TM39
  (216, 21600, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 30),
  -- Teddiursa - Aerial Ace - TM40
  (216, 21600, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 31),
  -- Teddiursa - Torment - TM41
  (216, 21600, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 32),
  -- Teddiursa - Facade - TM42
  (216, 21600, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 33),
  -- Teddiursa - Secret Power - TM43
  (216, 21600, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 34),
  -- Teddiursa - Rest - TM44
  (216, 21600, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 35),
  -- Teddiursa - Attract - TM45
  (216, 21600, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 36),
  -- Teddiursa - Thief - TM46
  (216, 21600, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 37),
  -- Teddiursa - Fling - TM56
  (216, 21600, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 38),
  -- Teddiursa - Endure - TM58
  (216, 21600, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 39),
  -- Teddiursa - Shadow Claw - TM65
  (216, 21600, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 40),
  -- Teddiursa - Payback - TM66
  (216, 21600, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 41),
  -- Teddiursa - Swords Dance - TM75
  (216, 21600, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 42),
  -- Teddiursa - Captivate - TM78
  (216, 21600, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 43),
  -- Teddiursa - Rock Slide - TM80
  (216, 21600, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 44),
  -- Teddiursa - Sleep Talk - TM82
  (216, 21600, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 45),
  -- Teddiursa - Natural Gift - TM83
  (216, 21600, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 46),
  -- Teddiursa - Swagger - TM87
  (216, 21600, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 47),
  -- Teddiursa - Substitute - TM90
  (216, 21600, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 48),
  -- Teddiursa - Cut - HM01
  (216, 21600, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 49),
  -- Teddiursa - Strength - HM04
  (216, 21600, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 50),
  -- Teddiursa - Rock Smash - HM06
  (216, 21600, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 51),
  -- Teddiursa - Take Down - Egg
  (216, 21600, 36, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Teddiursa - Double-Edge - Egg
  (216, 21600, 38, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Teddiursa - Counter - Egg
  (216, 21600, 68, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Teddiursa - Seismic Toss - Egg
  (216, 21600, 69, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Teddiursa - Sleep Talk - Egg
  (216, 21600, 214, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Teddiursa - Metal Claw - Egg
  (216, 21600, 232, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Teddiursa - Cross Chop - Egg
  (216, 21600, 238, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Teddiursa - Crunch - Egg
  (216, 21600, 242, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Teddiursa - Yawn - Egg
  (216, 21600, 281, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Teddiursa - Fake Tears - Egg
  (216, 21600, 313, 9, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Teddiursa - Close Combat - Egg
  (216, 21600, 370, 9, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Teddiursa - Night Slash - Egg
  (216, 21600, 400, 9, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Teddiursa - Fire Punch - Tutor
  (216, 21600, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Teddiursa - Ice Punch - Tutor
  (216, 21600, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Teddiursa - Thunder Punch - Tutor
  (216, 21600, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Teddiursa - Swift - Tutor
  (216, 21600, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Teddiursa - Snore - Tutor
  (216, 21600, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Teddiursa - Mud-Slap - Tutor
  (216, 21600, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Teddiursa - Rollout - Tutor
  (216, 21600, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Teddiursa - Fury Cutter - Tutor
  (216, 21600, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Teddiursa - Superpower - Tutor
  (216, 21600, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Teddiursa - Last Resort - Tutor
  (216, 21600, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Teddiursa - Seed Bomb - Tutor
  (216, 21600, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Teddiursa - Gunk Shot - Tutor
  (216, 21600, 441, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Ursaring - Scratch - Level 1
  (217, 21700, 10, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ursaring - Leer - Level 1
  (217, 21700, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ursaring - Lick - Level 1
  (217, 21700, 122, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Ursaring - Fake Tears - Level 1
  (217, 21700, 313, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Ursaring - Covet - Level 1
  (217, 21700, 343, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Ursaring - Fury Swipes - Level 8
  (217, 21700, 154, 9, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Ursaring - Feint Attack - Level 15
  (217, 21700, 185, 9, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Ursaring - Sweet Scent - Level 22
  (217, 21700, 230, 9, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Ursaring - Slash - Level 29
  (217, 21700, 163, 9, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Ursaring - Scary Face - Level 38
  (217, 21700, 184, 9, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Ursaring - Rest - Level 47
  (217, 21700, 156, 9, NULL, 1, 47, NULL, NULL, NULL, 11),
  -- Ursaring - Snore - Level 49
  (217, 21700, 173, 9, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Ursaring - Thrash - Level 58
  (217, 21700, 37, 9, NULL, 1, 58, NULL, NULL, NULL, 13),
  -- Ursaring - Hammer Arm - Level 67
  (217, 21700, 359, 9, NULL, 1, 67, NULL, NULL, NULL, 14),
  -- Ursaring - Focus Punch - TM01
  (217, 21700, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 15),
  -- Ursaring - Roar - TM05
  (217, 21700, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 16),
  -- Ursaring - Toxic - TM06
  (217, 21700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Ursaring - Bulk Up - TM08
  (217, 21700, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 18),
  -- Ursaring - Hidden Power - TM10
  (217, 21700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Ursaring - Sunny Day - TM11
  (217, 21700, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 20),
  -- Ursaring - Taunt - TM12
  (217, 21700, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 21),
  -- Ursaring - Hyper Beam - TM15
  (217, 21700, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 22),
  -- Ursaring - Protect - TM17
  (217, 21700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 23),
  -- Ursaring - Rain Dance - TM18
  (217, 21700, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 24),
  -- Ursaring - Frustration - TM21
  (217, 21700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 25),
  -- Ursaring - Earthquake - TM26
  (217, 21700, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 26),
  -- Ursaring - Return - TM27
  (217, 21700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 27),
  -- Ursaring - Dig - TM28
  (217, 21700, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 28),
  -- Ursaring - Brick Break - TM31
  (217, 21700, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 29),
  -- Ursaring - Double Team - TM32
  (217, 21700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 30),
  -- Ursaring - Rock Tomb - TM39
  (217, 21700, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 31),
  -- Ursaring - Aerial Ace - TM40
  (217, 21700, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 32),
  -- Ursaring - Torment - TM41
  (217, 21700, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 33),
  -- Ursaring - Facade - TM42
  (217, 21700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 34),
  -- Ursaring - Secret Power - TM43
  (217, 21700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 35),
  -- Ursaring - Rest - TM44
  (217, 21700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 36),
  -- Ursaring - Attract - TM45
  (217, 21700, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 37),
  -- Ursaring - Thief - TM46
  (217, 21700, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 38),
  -- Ursaring - Focus Blast - TM52
  (217, 21700, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 39),
  -- Ursaring - Fling - TM56
  (217, 21700, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 40),
  -- Ursaring - Endure - TM58
  (217, 21700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 41),
  -- Ursaring - Shadow Claw - TM65
  (217, 21700, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 42),
  -- Ursaring - Payback - TM66
  (217, 21700, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 43),
  -- Ursaring - Giga Impact - TM68
  (217, 21700, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 44),
  -- Ursaring - Stone Edge - TM71
  (217, 21700, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 45),
  -- Ursaring - Avalanche - TM72
  (217, 21700, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 46),
  -- Ursaring - Swords Dance - TM75
  (217, 21700, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 47),
  -- Ursaring - Captivate - TM78
  (217, 21700, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 48),
  -- Ursaring - Rock Slide - TM80
  (217, 21700, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 49),
  -- Ursaring - Sleep Talk - TM82
  (217, 21700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 50),
  -- Ursaring - Natural Gift - TM83
  (217, 21700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 51),
  -- Ursaring - Swagger - TM87
  (217, 21700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 52),
  -- Ursaring - Substitute - TM90
  (217, 21700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 53),
  -- Ursaring - Cut - HM01
  (217, 21700, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 54),
  -- Ursaring - Strength - HM04
  (217, 21700, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 55),
  -- Ursaring - Rock Smash - HM06
  (217, 21700, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 56),
  -- Ursaring - Rock Climb - HM08
  (217, 21700, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 57),
  -- Ursaring - Fire Punch - Tutor
  (217, 21700, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Ursaring - Ice Punch - Tutor
  (217, 21700, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Ursaring - Thunder Punch - Tutor
  (217, 21700, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Ursaring - Swift - Tutor
  (217, 21700, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Ursaring - Snore - Tutor
  (217, 21700, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Ursaring - Mud-Slap - Tutor
  (217, 21700, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Ursaring - Rollout - Tutor
  (217, 21700, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Ursaring - Fury Cutter - Tutor
  (217, 21700, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Ursaring - Uproar - Tutor
  (217, 21700, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Ursaring - Superpower - Tutor
  (217, 21700, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Ursaring - Last Resort - Tutor
  (217, 21700, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Ursaring - Seed Bomb - Tutor
  (217, 21700, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Ursaring - Gunk Shot - Tutor
  (217, 21700, 441, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Slugma - Smog - Level 1
  (218, 21800, 123, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Slugma - Yawn - Level 1
  (218, 21800, 281, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Slugma - Ember - Level 8
  (218, 21800, 52, 9, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Slugma - Rock Throw - Level 11
  (218, 21800, 88, 9, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Slugma - Harden - Level 16
  (218, 21800, 106, 9, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Slugma - Recover - Level 23
  (218, 21800, 105, 9, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Slugma - Ancient Power - Level 26
  (218, 21800, 246, 9, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Slugma - Amnesia - Level 31
  (218, 21800, 133, 9, NULL, 1, 31, NULL, NULL, NULL, 8),
  -- Slugma - Lava Plume - Level 38
  (218, 21800, 436, 9, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Slugma - Rock Slide - Level 41
  (218, 21800, 157, 9, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Slugma - Body Slam - Level 46
  (218, 21800, 34, 9, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Slugma - Flamethrower - Level 53
  (218, 21800, 53, 9, NULL, 1, 53, NULL, NULL, NULL, 12),
  -- Slugma - Earth Power - Level 56
  (218, 21800, 414, 9, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Slugma - Toxic - TM06
  (218, 21800, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Slugma - Hidden Power - TM10
  (218, 21800, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 15),
  -- Slugma - Sunny Day - TM11
  (218, 21800, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 16),
  -- Slugma - Light Screen - TM16
  (218, 21800, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 17),
  -- Slugma - Protect - TM17
  (218, 21800, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 18),
  -- Slugma - Frustration - TM21
  (218, 21800, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 19),
  -- Slugma - Return - TM27
  (218, 21800, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 20),
  -- Slugma - Double Team - TM32
  (218, 21800, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 21),
  -- Slugma - Reflect - TM33
  (218, 21800, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 22),
  -- Slugma - Flamethrower - TM35
  (218, 21800, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 23),
  -- Slugma - Fire Blast - TM38
  (218, 21800, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 24),
  -- Slugma - Rock Tomb - TM39
  (218, 21800, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 25),
  -- Slugma - Facade - TM42
  (218, 21800, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 26),
  -- Slugma - Secret Power - TM43
  (218, 21800, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 27),
  -- Slugma - Rest - TM44
  (218, 21800, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 28),
  -- Slugma - Attract - TM45
  (218, 21800, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 29),
  -- Slugma - Overheat - TM50
  (218, 21800, 315, 9, NULL, 2, NULL, NULL, 9002050, NULL, 30),
  -- Slugma - Endure - TM58
  (218, 21800, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 31),
  -- Slugma - Will-O-Wisp - TM61
  (218, 21800, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 32),
  -- Slugma - Captivate - TM78
  (218, 21800, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 33),
  -- Slugma - Rock Slide - TM80
  (218, 21800, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 34),
  -- Slugma - Sleep Talk - TM82
  (218, 21800, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 35),
  -- Slugma - Natural Gift - TM83
  (218, 21800, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 36),
  -- Slugma - Swagger - TM87
  (218, 21800, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 37),
  -- Slugma - Substitute - TM90
  (218, 21800, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 38),
  -- Slugma - Rock Smash - HM06
  (218, 21800, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 39),
  -- Slugma - Smokescreen - Egg
  (218, 21800, 108, 9, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Slugma - Acid Armor - Egg
  (218, 21800, 151, 9, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Slugma - Curse - Egg
  (218, 21800, 174, 9, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Slugma - Stockpile - Egg
  (218, 21800, 254, 9, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Slugma - Spit Up - Egg
  (218, 21800, 255, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Slugma - Swallow - Egg
  (218, 21800, 256, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Slugma - Heat Wave - Egg
  (218, 21800, 257, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Slugma - Memento - Egg
  (218, 21800, 262, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Slugma - Snore - Tutor
  (218, 21800, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Slugma - Mud-Slap - Tutor
  (218, 21800, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Slugma - Rollout - Tutor
  (218, 21800, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Slugma - Ancient Power - Tutor
  (218, 21800, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Slugma - Heat Wave - Tutor
  (218, 21800, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Slugma - Iron Defense - Tutor
  (218, 21800, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Slugma - Earth Power - Tutor
  (218, 21800, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Magcargo - Ember - Level 1
  (219, 21900, 52, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magcargo - Rock Throw - Level 1
  (219, 21900, 88, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magcargo - Smog - Level 1
  (219, 21900, 123, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magcargo - Yawn - Level 1
  (219, 21900, 281, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magcargo - Ember - Level 8
  (219, 21900, 52, 9, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Magcargo - Rock Throw - Level 11
  (219, 21900, 88, 9, NULL, 1, 11, NULL, NULL, NULL, 6),
  -- Magcargo - Harden - Level 16
  (219, 21900, 106, 9, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Magcargo - Recover - Level 23
  (219, 21900, 105, 9, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Magcargo - Ancient Power - Level 26
  (219, 21900, 246, 9, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Magcargo - Amnesia - Level 31
  (219, 21900, 133, 9, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Magcargo - Lava Plume - Level 40
  (219, 21900, 436, 9, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Magcargo - Rock Slide - Level 45
  (219, 21900, 157, 9, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Magcargo - Body Slam - Level 52
  (219, 21900, 34, 9, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Magcargo - Flamethrower - Level 61
  (219, 21900, 53, 9, NULL, 1, 61, NULL, NULL, NULL, 14),
  -- Magcargo - Earth Power - Level 66
  (219, 21900, 414, 9, NULL, 1, 66, NULL, NULL, NULL, 15),
  -- Magcargo - Toxic - TM06
  (219, 21900, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Magcargo - Hidden Power - TM10
  (219, 21900, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Magcargo - Sunny Day - TM11
  (219, 21900, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 18),
  -- Magcargo - Hyper Beam - TM15
  (219, 21900, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 19),
  -- Magcargo - Light Screen - TM16
  (219, 21900, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 20),
  -- Magcargo - Protect - TM17
  (219, 21900, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Magcargo - Frustration - TM21
  (219, 21900, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 22),
  -- Magcargo - Solar Beam - TM22
  (219, 21900, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 23),
  -- Magcargo - Earthquake - TM26
  (219, 21900, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 24),
  -- Magcargo - Return - TM27
  (219, 21900, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 25),
  -- Magcargo - Double Team - TM32
  (219, 21900, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 26),
  -- Magcargo - Reflect - TM33
  (219, 21900, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 27),
  -- Magcargo - Flamethrower - TM35
  (219, 21900, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 28),
  -- Magcargo - Sandstorm - TM37
  (219, 21900, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 29),
  -- Magcargo - Fire Blast - TM38
  (219, 21900, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 30),
  -- Magcargo - Rock Tomb - TM39
  (219, 21900, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 31),
  -- Magcargo - Facade - TM42
  (219, 21900, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 32),
  -- Magcargo - Secret Power - TM43
  (219, 21900, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 33),
  -- Magcargo - Rest - TM44
  (219, 21900, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 34),
  -- Magcargo - Attract - TM45
  (219, 21900, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 35),
  -- Magcargo - Overheat - TM50
  (219, 21900, 315, 9, NULL, 2, NULL, NULL, 9002050, NULL, 36),
  -- Magcargo - Endure - TM58
  (219, 21900, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 37),
  -- Magcargo - Will-O-Wisp - TM61
  (219, 21900, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 38),
  -- Magcargo - Explosion - TM64
  (219, 21900, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 39),
  -- Magcargo - Giga Impact - TM68
  (219, 21900, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 40),
  -- Magcargo - Rock Polish - TM69
  (219, 21900, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 41),
  -- Magcargo - Stone Edge - TM71
  (219, 21900, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 42),
  -- Magcargo - Gyro Ball - TM74
  (219, 21900, 360, 9, NULL, 2, NULL, NULL, 9002074, NULL, 43),
  -- Magcargo - Stealth Rock - TM76
  (219, 21900, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 44),
  -- Magcargo - Captivate - TM78
  (219, 21900, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 45),
  -- Magcargo - Rock Slide - TM80
  (219, 21900, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 46),
  -- Magcargo - Sleep Talk - TM82
  (219, 21900, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 47),
  -- Magcargo - Natural Gift - TM83
  (219, 21900, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 48),
  -- Magcargo - Swagger - TM87
  (219, 21900, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 49),
  -- Magcargo - Substitute - TM90
  (219, 21900, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 50),
  -- Magcargo - Strength - HM04
  (219, 21900, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 51),
  -- Magcargo - Rock Smash - HM06
  (219, 21900, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 52),
  -- Magcargo - Snore - Tutor
  (219, 21900, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Magcargo - Mud-Slap - Tutor
  (219, 21900, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Magcargo - Rollout - Tutor
  (219, 21900, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Magcargo - Ancient Power - Tutor
  (219, 21900, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Magcargo - Heat Wave - Tutor
  (219, 21900, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Magcargo - Iron Defense - Tutor
  (219, 21900, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Magcargo - Earth Power - Tutor
  (219, 21900, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Swinub - Tackle - Level 1
  (220, 22000, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swinub - Odor Sleuth - Level 1
  (220, 22000, 316, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swinub - Mud Sport - Level 4
  (220, 22000, 300, 9, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Swinub - Powder Snow - Level 8
  (220, 22000, 181, 9, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Swinub - Mud-Slap - Level 13
  (220, 22000, 189, 9, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Swinub - Endure - Level 16
  (220, 22000, 203, 9, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Swinub - Mud Bomb - Level 20
  (220, 22000, 426, 9, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Swinub - Icy Wind - Level 25
  (220, 22000, 196, 9, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Swinub - Ice Shard - Level 28
  (220, 22000, 420, 9, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Swinub - Take Down - Level 32
  (220, 22000, 36, 9, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Swinub - Earthquake - Level 37
  (220, 22000, 89, 9, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Swinub - Mist - Level 40
  (220, 22000, 54, 9, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Swinub - Blizzard - Level 44
  (220, 22000, 59, 9, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Swinub - Amnesia - Level 49
  (220, 22000, 133, 9, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Swinub - Roar - TM05
  (220, 22000, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 15),
  -- Swinub - Toxic - TM06
  (220, 22000, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Swinub - Hail - TM07
  (220, 22000, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 17),
  -- Swinub - Hidden Power - TM10
  (220, 22000, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Swinub - Ice Beam - TM13
  (220, 22000, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 19),
  -- Swinub - Blizzard - TM14
  (220, 22000, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 20),
  -- Swinub - Light Screen - TM16
  (220, 22000, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 21),
  -- Swinub - Protect - TM17
  (220, 22000, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 22),
  -- Swinub - Rain Dance - TM18
  (220, 22000, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 23),
  -- Swinub - Frustration - TM21
  (220, 22000, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Swinub - Earthquake - TM26
  (220, 22000, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 25),
  -- Swinub - Return - TM27
  (220, 22000, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 26),
  -- Swinub - Dig - TM28
  (220, 22000, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 27),
  -- Swinub - Double Team - TM32
  (220, 22000, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 28),
  -- Swinub - Reflect - TM33
  (220, 22000, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 29),
  -- Swinub - Sandstorm - TM37
  (220, 22000, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 30),
  -- Swinub - Rock Tomb - TM39
  (220, 22000, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 31),
  -- Swinub - Facade - TM42
  (220, 22000, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 32),
  -- Swinub - Secret Power - TM43
  (220, 22000, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 33),
  -- Swinub - Rest - TM44
  (220, 22000, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 34),
  -- Swinub - Attract - TM45
  (220, 22000, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 35),
  -- Swinub - Endure - TM58
  (220, 22000, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 36),
  -- Swinub - Stealth Rock - TM76
  (220, 22000, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 37),
  -- Swinub - Captivate - TM78
  (220, 22000, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 38),
  -- Swinub - Rock Slide - TM80
  (220, 22000, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 39),
  -- Swinub - Sleep Talk - TM82
  (220, 22000, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 40),
  -- Swinub - Natural Gift - TM83
  (220, 22000, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 41),
  -- Swinub - Swagger - TM87
  (220, 22000, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 42),
  -- Swinub - Substitute - TM90
  (220, 22000, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 43),
  -- Swinub - Strength - HM04
  (220, 22000, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 44),
  -- Swinub - Rock Smash - HM06
  (220, 22000, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 45),
  -- Swinub - Body Slam - Egg
  (220, 22000, 34, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Swinub - Take Down - Egg
  (220, 22000, 36, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Swinub - Double-Edge - Egg
  (220, 22000, 38, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Swinub - Bite - Egg
  (220, 22000, 44, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Swinub - Fissure - Egg
  (220, 22000, 90, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Swinub - Rock Slide - Egg
  (220, 22000, 157, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Swinub - Curse - Egg
  (220, 22000, 174, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Swinub - Ancient Power - Egg
  (220, 22000, 246, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Swinub - Icicle Spear - Egg
  (220, 22000, 333, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Swinub - Mud Shot - Egg
  (220, 22000, 341, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Swinub - Snore - Tutor
  (220, 22000, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Swinub - Mud-Slap - Tutor
  (220, 22000, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Swinub - Icy Wind - Tutor
  (220, 22000, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Swinub - Ancient Power - Tutor
  (220, 22000, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Swinub - Superpower - Tutor
  (220, 22000, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Swinub - Endeavor - Tutor
  (220, 22000, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Swinub - Earth Power - Tutor
  (220, 22000, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Piloswine - Peck - Level 1
  (221, 22100, 64, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Piloswine - Powder Snow - Level 1
  (221, 22100, 181, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Piloswine - Ancient Power - Level 1
  (221, 22100, 246, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Piloswine - Mud Sport - Level 1
  (221, 22100, 300, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Piloswine - Odor Sleuth - Level 1
  (221, 22100, 316, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Piloswine - Mud Sport - Level 4
  (221, 22100, 300, 9, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Piloswine - Powder Snow - Level 8
  (221, 22100, 181, 9, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Piloswine - Mud-Slap - Level 13
  (221, 22100, 189, 9, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Piloswine - Endure - Level 16
  (221, 22100, 203, 9, NULL, 1, 16, NULL, NULL, NULL, 9),
  -- Piloswine - Mud Bomb - Level 20
  (221, 22100, 426, 9, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Piloswine - Icy Wind - Level 25
  (221, 22100, 196, 9, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Piloswine - Ice Fang - Level 28
  (221, 22100, 423, 9, NULL, 1, 28, NULL, NULL, NULL, 12),
  -- Piloswine - Take Down - Level 32
  (221, 22100, 36, 9, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Piloswine - Fury Attack - Level 33
  (221, 22100, 31, 9, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Piloswine - Earthquake - Level 40
  (221, 22100, 89, 9, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Piloswine - Mist - Level 48
  (221, 22100, 54, 9, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Piloswine - Blizzard - Level 56
  (221, 22100, 59, 9, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Piloswine - Amnesia - Level 65
  (221, 22100, 133, 9, NULL, 1, 65, NULL, NULL, NULL, 18),
  -- Piloswine - Roar - TM05
  (221, 22100, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 19),
  -- Piloswine - Toxic - TM06
  (221, 22100, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 20),
  -- Piloswine - Hail - TM07
  (221, 22100, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 21),
  -- Piloswine - Hidden Power - TM10
  (221, 22100, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 22),
  -- Piloswine - Ice Beam - TM13
  (221, 22100, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 23),
  -- Piloswine - Blizzard - TM14
  (221, 22100, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 24),
  -- Piloswine - Hyper Beam - TM15
  (221, 22100, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 25),
  -- Piloswine - Light Screen - TM16
  (221, 22100, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 26),
  -- Piloswine - Protect - TM17
  (221, 22100, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 27),
  -- Piloswine - Rain Dance - TM18
  (221, 22100, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 28),
  -- Piloswine - Frustration - TM21
  (221, 22100, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 29),
  -- Piloswine - Earthquake - TM26
  (221, 22100, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 30),
  -- Piloswine - Return - TM27
  (221, 22100, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 31),
  -- Piloswine - Dig - TM28
  (221, 22100, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 32),
  -- Piloswine - Double Team - TM32
  (221, 22100, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 33),
  -- Piloswine - Reflect - TM33
  (221, 22100, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 34),
  -- Piloswine - Sandstorm - TM37
  (221, 22100, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 35),
  -- Piloswine - Rock Tomb - TM39
  (221, 22100, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 36),
  -- Piloswine - Facade - TM42
  (221, 22100, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 37),
  -- Piloswine - Secret Power - TM43
  (221, 22100, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 38),
  -- Piloswine - Rest - TM44
  (221, 22100, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 39),
  -- Piloswine - Attract - TM45
  (221, 22100, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 40),
  -- Piloswine - Endure - TM58
  (221, 22100, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 41),
  -- Piloswine - Giga Impact - TM68
  (221, 22100, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 42),
  -- Piloswine - Stone Edge - TM71
  (221, 22100, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 43),
  -- Piloswine - Avalanche - TM72
  (221, 22100, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 44),
  -- Piloswine - Stealth Rock - TM76
  (221, 22100, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 45),
  -- Piloswine - Captivate - TM78
  (221, 22100, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 46),
  -- Piloswine - Rock Slide - TM80
  (221, 22100, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 47),
  -- Piloswine - Sleep Talk - TM82
  (221, 22100, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 48),
  -- Piloswine - Natural Gift - TM83
  (221, 22100, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 49),
  -- Piloswine - Swagger - TM87
  (221, 22100, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 50),
  -- Piloswine - Substitute - TM90
  (221, 22100, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 51),
  -- Piloswine - Strength - HM04
  (221, 22100, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 52),
  -- Piloswine - Rock Smash - HM06
  (221, 22100, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 53),
  -- Piloswine - Snore - Tutor
  (221, 22100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Piloswine - Mud-Slap - Tutor
  (221, 22100, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Piloswine - Icy Wind - Tutor
  (221, 22100, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Piloswine - Ancient Power - Tutor
  (221, 22100, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Piloswine - Superpower - Tutor
  (221, 22100, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Piloswine - Endeavor - Tutor
  (221, 22100, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Piloswine - Earth Power - Tutor
  (221, 22100, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Corsola - Tackle - Level 1
  (222, 22200, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Corsola - Harden - Level 4
  (222, 22200, 106, 9, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Corsola - Bubble - Level 8
  (222, 22200, 145, 9, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Corsola - Recover - Level 13
  (222, 22200, 105, 9, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Corsola - Refresh - Level 16
  (222, 22200, 287, 9, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Corsola - Rock Blast - Level 20
  (222, 22200, 350, 9, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Corsola - Bubble Beam - Level 25
  (222, 22200, 61, 9, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Corsola - Lucky Chant - Level 28
  (222, 22200, 381, 9, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Corsola - Ancient Power - Level 32
  (222, 22200, 246, 9, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Corsola - Aqua Ring - Level 37
  (222, 22200, 392, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Corsola - Spike Cannon - Level 40
  (222, 22200, 131, 9, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Corsola - Power Gem - Level 44
  (222, 22200, 408, 9, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Corsola - Mirror Coat - Level 48
  (222, 22200, 243, 9, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Corsola - Earth Power - Level 53
  (222, 22200, 414, 9, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Corsola - Water Pulse - TM03
  (222, 22200, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 15),
  -- Corsola - Calm Mind - TM04
  (222, 22200, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 16),
  -- Corsola - Toxic - TM06
  (222, 22200, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Corsola - Hail - TM07
  (222, 22200, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 18),
  -- Corsola - Hidden Power - TM10
  (222, 22200, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Corsola - Sunny Day - TM11
  (222, 22200, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 20),
  -- Corsola - Ice Beam - TM13
  (222, 22200, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 21),
  -- Corsola - Blizzard - TM14
  (222, 22200, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 22),
  -- Corsola - Light Screen - TM16
  (222, 22200, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 23),
  -- Corsola - Protect - TM17
  (222, 22200, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 24),
  -- Corsola - Rain Dance - TM18
  (222, 22200, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 25),
  -- Corsola - Safeguard - TM20
  (222, 22200, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 26),
  -- Corsola - Frustration - TM21
  (222, 22200, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 27),
  -- Corsola - Earthquake - TM26
  (222, 22200, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 28),
  -- Corsola - Return - TM27
  (222, 22200, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 29),
  -- Corsola - Dig - TM28
  (222, 22200, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 30),
  -- Corsola - Psychic - TM29
  (222, 22200, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 31),
  -- Corsola - Shadow Ball - TM30
  (222, 22200, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 32),
  -- Corsola - Double Team - TM32
  (222, 22200, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 33),
  -- Corsola - Reflect - TM33
  (222, 22200, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 34),
  -- Corsola - Sandstorm - TM37
  (222, 22200, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 35),
  -- Corsola - Rock Tomb - TM39
  (222, 22200, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 36),
  -- Corsola - Facade - TM42
  (222, 22200, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 37),
  -- Corsola - Secret Power - TM43
  (222, 22200, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 38),
  -- Corsola - Rest - TM44
  (222, 22200, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 39),
  -- Corsola - Attract - TM45
  (222, 22200, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 40),
  -- Corsola - Brine - TM55
  (222, 22200, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 41),
  -- Corsola - Endure - TM58
  (222, 22200, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 42),
  -- Corsola - Explosion - TM64
  (222, 22200, 153, 9, NULL, 2, NULL, NULL, 9002064, NULL, 43),
  -- Corsola - Rock Polish - TM69
  (222, 22200, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 44),
  -- Corsola - Stone Edge - TM71
  (222, 22200, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 45),
  -- Corsola - Stealth Rock - TM76
  (222, 22200, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 46),
  -- Corsola - Captivate - TM78
  (222, 22200, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 47),
  -- Corsola - Rock Slide - TM80
  (222, 22200, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 48),
  -- Corsola - Sleep Talk - TM82
  (222, 22200, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 49),
  -- Corsola - Natural Gift - TM83
  (222, 22200, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 50),
  -- Corsola - Swagger - TM87
  (222, 22200, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 51),
  -- Corsola - Substitute - TM90
  (222, 22200, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 52),
  -- Corsola - Surf - HM03
  (222, 22200, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 53),
  -- Corsola - Strength - HM04
  (222, 22200, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 54),
  -- Corsola - Defog - HM05
  (222, 22200, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 55),
  -- Corsola - Rock Smash - HM06
  (222, 22200, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 56),
  -- Corsola - Mist - Egg
  (222, 22200, 54, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Corsola - Screech - Egg
  (222, 22200, 103, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Corsola - Confuse Ray - Egg
  (222, 22200, 109, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Corsola - Barrier - Egg
  (222, 22200, 112, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Corsola - Amnesia - Egg
  (222, 22200, 133, 9, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Corsola - Rock Slide - Egg
  (222, 22200, 157, 9, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Corsola - Nature Power - Egg
  (222, 22200, 267, 9, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Corsola - Ingrain - Egg
  (222, 22200, 275, 9, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Corsola - Icicle Spear - Egg
  (222, 22200, 333, 9, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Corsola - Aqua Ring - Egg
  (222, 22200, 392, 9, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Corsola - Snore - Tutor
  (222, 22200, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Corsola - Mud-Slap - Tutor
  (222, 22200, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Corsola - Icy Wind - Tutor
  (222, 22200, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Corsola - Rollout - Tutor
  (222, 22200, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Corsola - Ancient Power - Tutor
  (222, 22200, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Corsola - Endeavor - Tutor
  (222, 22200, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Corsola - Sucker Punch - Tutor
  (222, 22200, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Corsola - Earth Power - Tutor
  (222, 22200, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Remoraid - Water Gun - Level 1
  (223, 22300, 55, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Remoraid - Lock-On - Level 6
  (223, 22300, 199, 9, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Remoraid - Psybeam - Level 10
  (223, 22300, 60, 9, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Remoraid - Aurora Beam - Level 14
  (223, 22300, 62, 9, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Remoraid - Bubble Beam - Level 19
  (223, 22300, 61, 9, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Remoraid - Focus Energy - Level 23
  (223, 22300, 116, 9, NULL, 1, 23, NULL, NULL, NULL, 6),
  -- Remoraid - Bullet Seed - Level 27
  (223, 22300, 331, 9, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Remoraid - Water Pulse - Level 32
  (223, 22300, 352, 9, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Remoraid - Signal Beam - Level 36
  (223, 22300, 324, 9, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Remoraid - Ice Beam - Level 40
  (223, 22300, 58, 9, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Remoraid - Hyper Beam - Level 45
  (223, 22300, 63, 9, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Remoraid - Water Pulse - TM03
  (223, 22300, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 12),
  -- Remoraid - Toxic - TM06
  (223, 22300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 13),
  -- Remoraid - Bullet Seed - TM09
  (223, 22300, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 14),
  -- Remoraid - Hidden Power - TM10
  (223, 22300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 15),
  -- Remoraid - Sunny Day - TM11
  (223, 22300, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 16),
  -- Remoraid - Ice Beam - TM13
  (223, 22300, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 17),
  -- Remoraid - Blizzard - TM14
  (223, 22300, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 18),
  -- Remoraid - Hyper Beam - TM15
  (223, 22300, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 19),
  -- Remoraid - Protect - TM17
  (223, 22300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 20),
  -- Remoraid - Rain Dance - TM18
  (223, 22300, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 21),
  -- Remoraid - Frustration - TM21
  (223, 22300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 22),
  -- Remoraid - Return - TM27
  (223, 22300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 23),
  -- Remoraid - Psychic - TM29
  (223, 22300, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 24),
  -- Remoraid - Double Team - TM32
  (223, 22300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 25),
  -- Remoraid - Flamethrower - TM35
  (223, 22300, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 26),
  -- Remoraid - Fire Blast - TM38
  (223, 22300, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 27),
  -- Remoraid - Facade - TM42
  (223, 22300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 28),
  -- Remoraid - Secret Power - TM43
  (223, 22300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 29),
  -- Remoraid - Rest - TM44
  (223, 22300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 30),
  -- Remoraid - Attract - TM45
  (223, 22300, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 31),
  -- Remoraid - Thief - TM46
  (223, 22300, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 32),
  -- Remoraid - Brine - TM55
  (223, 22300, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 33),
  -- Remoraid - Charge Beam - TM57
  (223, 22300, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 34),
  -- Remoraid - Endure - TM58
  (223, 22300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 35),
  -- Remoraid - Thunder Wave - TM73
  (223, 22300, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 36),
  -- Remoraid - Captivate - TM78
  (223, 22300, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 37),
  -- Remoraid - Sleep Talk - TM82
  (223, 22300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 38),
  -- Remoraid - Natural Gift - TM83
  (223, 22300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 39),
  -- Remoraid - Swagger - TM87
  (223, 22300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 40),
  -- Remoraid - Substitute - TM90
  (223, 22300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 41),
  -- Remoraid - Surf - HM03
  (223, 22300, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 42),
  -- Remoraid - Defog - HM05
  (223, 22300, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 43),
  -- Remoraid - Waterfall - HM07
  (223, 22300, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 44),
  -- Remoraid - Supersonic - Egg
  (223, 22300, 48, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Remoraid - Aurora Beam - Egg
  (223, 22300, 62, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Remoraid - Thunder Wave - Egg
  (223, 22300, 86, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Remoraid - Screech - Egg
  (223, 22300, 103, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Remoraid - Haze - Egg
  (223, 22300, 114, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Remoraid - Snore - Egg
  (223, 22300, 173, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Remoraid - Flail - Egg
  (223, 22300, 175, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Remoraid - Octazooka - Egg
  (223, 22300, 190, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Remoraid - Rock Blast - Egg
  (223, 22300, 350, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Remoraid - Swift - Tutor
  (223, 22300, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Remoraid - Snore - Tutor
  (223, 22300, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Remoraid - Mud-Slap - Tutor
  (223, 22300, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Remoraid - Icy Wind - Tutor
  (223, 22300, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Remoraid - Dive - Tutor
  (223, 22300, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Remoraid - Signal Beam - Tutor
  (223, 22300, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Remoraid - Bounce - Tutor
  (223, 22300, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Remoraid - Seed Bomb - Tutor
  (223, 22300, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Remoraid - Gunk Shot - Tutor
  (223, 22300, 441, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Octillery - Water Gun - Level 1
  (224, 22400, 55, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Octillery - Psybeam - Level 1
  (224, 22400, 60, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Octillery - Aurora Beam - Level 1
  (224, 22400, 62, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Octillery - Constrict - Level 1
  (224, 22400, 132, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Octillery - Rock Blast - Level 1
  (224, 22400, 350, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Octillery - Gunk Shot - Level 1
  (224, 22400, 441, 9, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Octillery - Constrict - Level 6
  (224, 22400, 132, 9, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Octillery - Psybeam - Level 10
  (224, 22400, 60, 9, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Octillery - Aurora Beam - Level 14
  (224, 22400, 62, 9, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Octillery - Bubble Beam - Level 19
  (224, 22400, 61, 9, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Octillery - Focus Energy - Level 23
  (224, 22400, 116, 9, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Octillery - Octazooka - Level 25
  (224, 22400, 190, 9, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Octillery - Bullet Seed - Level 29
  (224, 22400, 331, 9, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Octillery - Wring Out - Level 36
  (224, 22400, 378, 9, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Octillery - Signal Beam - Level 42
  (224, 22400, 324, 9, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Octillery - Ice Beam - Level 48
  (224, 22400, 58, 9, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Octillery - Hyper Beam - Level 55
  (224, 22400, 63, 9, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Octillery - Water Pulse - TM03
  (224, 22400, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 18),
  -- Octillery - Toxic - TM06
  (224, 22400, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 19),
  -- Octillery - Bullet Seed - TM09
  (224, 22400, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 20),
  -- Octillery - Hidden Power - TM10
  (224, 22400, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 21),
  -- Octillery - Sunny Day - TM11
  (224, 22400, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 22),
  -- Octillery - Ice Beam - TM13
  (224, 22400, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 23),
  -- Octillery - Blizzard - TM14
  (224, 22400, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 24),
  -- Octillery - Hyper Beam - TM15
  (224, 22400, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 25),
  -- Octillery - Protect - TM17
  (224, 22400, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 26),
  -- Octillery - Rain Dance - TM18
  (224, 22400, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 27),
  -- Octillery - Frustration - TM21
  (224, 22400, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 28),
  -- Octillery - Return - TM27
  (224, 22400, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 29),
  -- Octillery - Psychic - TM29
  (224, 22400, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 30),
  -- Octillery - Double Team - TM32
  (224, 22400, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 31),
  -- Octillery - Flamethrower - TM35
  (224, 22400, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 32),
  -- Octillery - Sludge Bomb - TM36
  (224, 22400, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 33),
  -- Octillery - Fire Blast - TM38
  (224, 22400, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 34),
  -- Octillery - Facade - TM42
  (224, 22400, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 35),
  -- Octillery - Secret Power - TM43
  (224, 22400, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 36),
  -- Octillery - Rest - TM44
  (224, 22400, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 37),
  -- Octillery - Attract - TM45
  (224, 22400, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 38),
  -- Octillery - Thief - TM46
  (224, 22400, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 39),
  -- Octillery - Energy Ball - TM53
  (224, 22400, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 40),
  -- Octillery - Brine - TM55
  (224, 22400, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 41),
  -- Octillery - Charge Beam - TM57
  (224, 22400, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 42),
  -- Octillery - Endure - TM58
  (224, 22400, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 43),
  -- Octillery - Payback - TM66
  (224, 22400, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 44),
  -- Octillery - Giga Impact - TM68
  (224, 22400, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 45),
  -- Octillery - Thunder Wave - TM73
  (224, 22400, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 46),
  -- Octillery - Captivate - TM78
  (224, 22400, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 47),
  -- Octillery - Sleep Talk - TM82
  (224, 22400, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 48),
  -- Octillery - Natural Gift - TM83
  (224, 22400, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 49),
  -- Octillery - Swagger - TM87
  (224, 22400, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 50),
  -- Octillery - Substitute - TM90
  (224, 22400, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 51),
  -- Octillery - Flash Cannon - TM91
  (224, 22400, 430, 9, NULL, 2, NULL, NULL, 9002091, NULL, 52),
  -- Octillery - Surf - HM03
  (224, 22400, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 53),
  -- Octillery - Defog - HM05
  (224, 22400, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 54),
  -- Octillery - Waterfall - HM07
  (224, 22400, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 55),
  -- Octillery - Swift - Tutor
  (224, 22400, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Octillery - Snore - Tutor
  (224, 22400, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Octillery - Mud-Slap - Tutor
  (224, 22400, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Octillery - Icy Wind - Tutor
  (224, 22400, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Octillery - Dive - Tutor
  (224, 22400, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Octillery - Signal Beam - Tutor
  (224, 22400, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Octillery - Bounce - Tutor
  (224, 22400, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Octillery - Seed Bomb - Tutor
  (224, 22400, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Octillery - Gunk Shot - Tutor
  (224, 22400, 441, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Delibird - Present - Level 1
  (225, 22500, 217, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Delibird - Focus Punch - TM01
  (225, 22500, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 2),
  -- Delibird - Water Pulse - TM03
  (225, 22500, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 3),
  -- Delibird - Toxic - TM06
  (225, 22500, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 4),
  -- Delibird - Hail - TM07
  (225, 22500, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 5),
  -- Delibird - Hidden Power - TM10
  (225, 22500, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 6),
  -- Delibird - Ice Beam - TM13
  (225, 22500, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 7),
  -- Delibird - Blizzard - TM14
  (225, 22500, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 8),
  -- Delibird - Protect - TM17
  (225, 22500, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 9),
  -- Delibird - Rain Dance - TM18
  (225, 22500, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 10),
  -- Delibird - Frustration - TM21
  (225, 22500, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 11),
  -- Delibird - Return - TM27
  (225, 22500, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 12),
  -- Delibird - Brick Break - TM31
  (225, 22500, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 13),
  -- Delibird - Double Team - TM32
  (225, 22500, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 14),
  -- Delibird - Aerial Ace - TM40
  (225, 22500, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 15),
  -- Delibird - Facade - TM42
  (225, 22500, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 16),
  -- Delibird - Secret Power - TM43
  (225, 22500, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 17),
  -- Delibird - Rest - TM44
  (225, 22500, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 18),
  -- Delibird - Attract - TM45
  (225, 22500, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 19),
  -- Delibird - Thief - TM46
  (225, 22500, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 20),
  -- Delibird - Fling - TM56
  (225, 22500, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 21),
  -- Delibird - Endure - TM58
  (225, 22500, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 22),
  -- Delibird - Recycle - TM67
  (225, 22500, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 23),
  -- Delibird - Avalanche - TM72
  (225, 22500, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 24),
  -- Delibird - Captivate - TM78
  (225, 22500, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 25),
  -- Delibird - Sleep Talk - TM82
  (225, 22500, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 26),
  -- Delibird - Natural Gift - TM83
  (225, 22500, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 27),
  -- Delibird - Swagger - TM87
  (225, 22500, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 28),
  -- Delibird - Pluck - TM88
  (225, 22500, 365, 9, NULL, 2, NULL, NULL, 9002088, NULL, 29),
  -- Delibird - Substitute - TM90
  (225, 22500, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 30),
  -- Delibird - Fly - HM02
  (225, 22500, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 31),
  -- Delibird - Defog - HM05
  (225, 22500, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 32),
  -- Delibird - Ice Punch - Egg
  (225, 22500, 8, 9, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Delibird - Aurora Beam - Egg
  (225, 22500, 62, 9, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Delibird - Quick Attack - Egg
  (225, 22500, 98, 9, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Delibird - Splash - Egg
  (225, 22500, 150, 9, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Delibird - Rapid Spin - Egg
  (225, 22500, 229, 9, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Delibird - Future Sight - Egg
  (225, 22500, 248, 9, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Delibird - Ice Ball - Egg
  (225, 22500, 301, 9, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Delibird - Ice Shard - Egg
  (225, 22500, 420, 9, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Delibird - Swift - Tutor
  (225, 22500, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 41),
  -- Delibird - Mud-Slap - Tutor
  (225, 22500, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 42),
  -- Delibird - Icy Wind - Tutor
  (225, 22500, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 43),
  -- Delibird - Rollout - Tutor
  (225, 22500, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 44),
  -- Delibird - Signal Beam - Tutor
  (225, 22500, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Delibird - Bounce - Tutor
  (225, 22500, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Delibird - Seed Bomb - Tutor
  (225, 22500, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Delibird - Gunk Shot - Tutor
  (225, 22500, 441, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Mantine - Tackle - Level 1
  (226, 22600, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mantine - Supersonic - Level 1
  (226, 22600, 48, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mantine - Psybeam - Level 1
  (226, 22600, 60, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mantine - Bubble Beam - Level 1
  (226, 22600, 61, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mantine - Bubble - Level 1
  (226, 22600, 145, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mantine - Signal Beam - Level 1
  (226, 22600, 324, 9, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Mantine - Bullet Seed - Level 1
  (226, 22600, 331, 9, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Mantine - Supersonic - Level 4
  (226, 22600, 48, 9, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Mantine - Bubble Beam - Level 10
  (226, 22600, 61, 9, NULL, 1, 10, NULL, NULL, NULL, 9),
  -- Mantine - Headbutt - Level 13
  (226, 22600, 29, 9, NULL, 1, 13, NULL, NULL, NULL, 10),
  -- Mantine - Agility - Level 19
  (226, 22600, 97, 9, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Mantine - Wing Attack - Level 22
  (226, 22600, 17, 9, NULL, 1, 22, NULL, NULL, NULL, 12),
  -- Mantine - Water Pulse - Level 28
  (226, 22600, 352, 9, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Mantine - Take Down - Level 31
  (226, 22600, 36, 9, NULL, 1, 31, NULL, NULL, NULL, 14),
  -- Mantine - Confuse Ray - Level 37
  (226, 22600, 109, 9, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Mantine - Bounce - Level 40
  (226, 22600, 340, 9, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Mantine - Aqua Ring - Level 46
  (226, 22600, 392, 9, NULL, 1, 46, NULL, NULL, NULL, 17),
  -- Mantine - Hydro Pump - Level 49
  (226, 22600, 56, 9, NULL, 1, 49, NULL, NULL, NULL, 18),
  -- Mantine - Water Pulse - TM03
  (226, 22600, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 19),
  -- Mantine - Toxic - TM06
  (226, 22600, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 20),
  -- Mantine - Hail - TM07
  (226, 22600, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 21),
  -- Mantine - Bullet Seed - TM09
  (226, 22600, 331, 9, NULL, 2, NULL, NULL, 9002009, NULL, 22),
  -- Mantine - Hidden Power - TM10
  (226, 22600, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 23),
  -- Mantine - Ice Beam - TM13
  (226, 22600, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 24),
  -- Mantine - Blizzard - TM14
  (226, 22600, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 25),
  -- Mantine - Hyper Beam - TM15
  (226, 22600, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 26),
  -- Mantine - Protect - TM17
  (226, 22600, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 27),
  -- Mantine - Rain Dance - TM18
  (226, 22600, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 28),
  -- Mantine - Frustration - TM21
  (226, 22600, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 29),
  -- Mantine - Earthquake - TM26
  (226, 22600, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 30),
  -- Mantine - Return - TM27
  (226, 22600, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 31),
  -- Mantine - Double Team - TM32
  (226, 22600, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 32),
  -- Mantine - Rock Tomb - TM39
  (226, 22600, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 33),
  -- Mantine - Aerial Ace - TM40
  (226, 22600, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 34),
  -- Mantine - Facade - TM42
  (226, 22600, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 35),
  -- Mantine - Secret Power - TM43
  (226, 22600, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 36),
  -- Mantine - Rest - TM44
  (226, 22600, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 37),
  -- Mantine - Attract - TM45
  (226, 22600, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 38),
  -- Mantine - Brine - TM55
  (226, 22600, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 39),
  -- Mantine - Endure - TM58
  (226, 22600, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 40),
  -- Mantine - Giga Impact - TM68
  (226, 22600, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 41),
  -- Mantine - Captivate - TM78
  (226, 22600, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 42),
  -- Mantine - Rock Slide - TM80
  (226, 22600, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 43),
  -- Mantine - Sleep Talk - TM82
  (226, 22600, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 44),
  -- Mantine - Natural Gift - TM83
  (226, 22600, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 45),
  -- Mantine - Swagger - TM87
  (226, 22600, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 46),
  -- Mantine - Substitute - TM90
  (226, 22600, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 47),
  -- Mantine - Surf - HM03
  (226, 22600, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 48),
  -- Mantine - Defog - HM05
  (226, 22600, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 49),
  -- Mantine - Waterfall - HM07
  (226, 22600, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 50),
  -- Mantine - Slam - Egg
  (226, 22600, 21, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Mantine - Hydro Pump - Egg
  (226, 22600, 56, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Mantine - Haze - Egg
  (226, 22600, 114, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Mantine - Splash - Egg
  (226, 22600, 150, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Mantine - Rock Slide - Egg
  (226, 22600, 157, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Mantine - Twister - Egg
  (226, 22600, 239, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Mantine - Mirror Coat - Egg
  (226, 22600, 243, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Mantine - Mud Sport - Egg
  (226, 22600, 300, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Mantine - Signal Beam - Egg
  (226, 22600, 324, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Mantine - Water Sport - Egg
  (226, 22600, 346, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Mantine - Swift - Tutor
  (226, 22600, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Mantine - Snore - Tutor
  (226, 22600, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Mantine - Mud-Slap - Tutor
  (226, 22600, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Mantine - Icy Wind - Tutor
  (226, 22600, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Mantine - Helping Hand - Tutor
  (226, 22600, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Mantine - Dive - Tutor
  (226, 22600, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Mantine - Air Cutter - Tutor
  (226, 22600, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Mantine - Signal Beam - Tutor
  (226, 22600, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Mantine - Bounce - Tutor
  (226, 22600, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Mantine - Aqua Tail - Tutor
  (226, 22600, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Mantine - Seed Bomb - Tutor
  (226, 22600, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Mantine - Gunk Shot - Tutor
  (226, 22600, 441, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Mantine - Iron Head - Tutor
  (226, 22600, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Skarmory - Leer - Level 1
  (227, 22700, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skarmory - Peck - Level 1
  (227, 22700, 64, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skarmory - Sand Attack - Level 6
  (227, 22700, 28, 9, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Skarmory - Swift - Level 9
  (227, 22700, 129, 9, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Skarmory - Agility - Level 12
  (227, 22700, 97, 9, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Skarmory - Fury Attack - Level 17
  (227, 22700, 31, 9, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Skarmory - Feint - Level 20
  (227, 22700, 364, 9, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Skarmory - Air Cutter - Level 23
  (227, 22700, 314, 9, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Skarmory - Spikes - Level 28
  (227, 22700, 191, 9, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Skarmory - Metal Sound - Level 31
  (227, 22700, 319, 9, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Skarmory - Steel Wing - Level 34
  (227, 22700, 211, 9, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Skarmory - Air Slash - Level 39
  (227, 22700, 403, 9, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Skarmory - Slash - Level 42
  (227, 22700, 163, 9, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Skarmory - Night Slash - Level 45
  (227, 22700, 400, 9, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Skarmory - Roar - TM05
  (227, 22700, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 15),
  -- Skarmory - Toxic - TM06
  (227, 22700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Skarmory - Hidden Power - TM10
  (227, 22700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Skarmory - Sunny Day - TM11
  (227, 22700, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 18),
  -- Skarmory - Taunt - TM12
  (227, 22700, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 19),
  -- Skarmory - Protect - TM17
  (227, 22700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 20),
  -- Skarmory - Frustration - TM21
  (227, 22700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 21),
  -- Skarmory - Return - TM27
  (227, 22700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 22),
  -- Skarmory - Double Team - TM32
  (227, 22700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 23),
  -- Skarmory - Sandstorm - TM37
  (227, 22700, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 24),
  -- Skarmory - Rock Tomb - TM39
  (227, 22700, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 25),
  -- Skarmory - Aerial Ace - TM40
  (227, 22700, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 26),
  -- Skarmory - Torment - TM41
  (227, 22700, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 27),
  -- Skarmory - Facade - TM42
  (227, 22700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 28),
  -- Skarmory - Secret Power - TM43
  (227, 22700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 29),
  -- Skarmory - Rest - TM44
  (227, 22700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 30),
  -- Skarmory - Attract - TM45
  (227, 22700, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 31),
  -- Skarmory - Thief - TM46
  (227, 22700, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 32),
  -- Skarmory - Steel Wing - TM47
  (227, 22700, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 33),
  -- Skarmory - Roost - TM51
  (227, 22700, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 34),
  -- Skarmory - Endure - TM58
  (227, 22700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 35),
  -- Skarmory - Payback - TM66
  (227, 22700, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 36),
  -- Skarmory - Flash - TM70
  (227, 22700, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 37),
  -- Skarmory - Swords Dance - TM75
  (227, 22700, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 38),
  -- Skarmory - Stealth Rock - TM76
  (227, 22700, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 39),
  -- Skarmory - Captivate - TM78
  (227, 22700, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 40),
  -- Skarmory - Dark Pulse - TM79
  (227, 22700, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 41),
  -- Skarmory - Rock Slide - TM80
  (227, 22700, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 42),
  -- Skarmory - X-Scissor - TM81
  (227, 22700, 404, 9, NULL, 2, NULL, NULL, 9002081, NULL, 43),
  -- Skarmory - Sleep Talk - TM82
  (227, 22700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 44),
  -- Skarmory - Natural Gift - TM83
  (227, 22700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 45),
  -- Skarmory - Swagger - TM87
  (227, 22700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 46),
  -- Skarmory - Pluck - TM88
  (227, 22700, 365, 9, NULL, 2, NULL, NULL, 9002088, NULL, 47),
  -- Skarmory - Substitute - TM90
  (227, 22700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 48),
  -- Skarmory - Flash Cannon - TM91
  (227, 22700, 430, 9, NULL, 2, NULL, NULL, 9002091, NULL, 49),
  -- Skarmory - Cut - HM01
  (227, 22700, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 50),
  -- Skarmory - Fly - HM02
  (227, 22700, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 51),
  -- Skarmory - Defog - HM05
  (227, 22700, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 52),
  -- Skarmory - Rock Smash - HM06
  (227, 22700, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 53),
  -- Skarmory - Whirlwind - Egg
  (227, 22700, 18, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Skarmory - Drill Peck - Egg
  (227, 22700, 65, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Skarmory - Sky Attack - Egg
  (227, 22700, 143, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Skarmory - Curse - Egg
  (227, 22700, 174, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Skarmory - Pursuit - Egg
  (227, 22700, 228, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Skarmory - Assurance - Egg
  (227, 22700, 372, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Skarmory - Brave Bird - Egg
  (227, 22700, 413, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Skarmory - Swift - Tutor
  (227, 22700, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Skarmory - Snore - Tutor
  (227, 22700, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Skarmory - Mud-Slap - Tutor
  (227, 22700, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Skarmory - Icy Wind - Tutor
  (227, 22700, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Skarmory - Fury Cutter - Tutor
  (227, 22700, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Skarmory - Twister - Tutor
  (227, 22700, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Skarmory - Air Cutter - Tutor
  (227, 22700, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Skarmory - Iron Defense - Tutor
  (227, 22700, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Skarmory - Ominous Wind - Tutor
  (227, 22700, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Houndour - Leer - Level 1
  (228, 22800, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Houndour - Ember - Level 1
  (228, 22800, 52, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Houndour - Howl - Level 4
  (228, 22800, 336, 9, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Houndour - Smog - Level 9
  (228, 22800, 123, 9, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Houndour - Roar - Level 14
  (228, 22800, 46, 9, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Houndour - Bite - Level 17
  (228, 22800, 44, 9, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Houndour - Odor Sleuth - Level 22
  (228, 22800, 316, 9, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Houndour - Beat Up - Level 27
  (228, 22800, 251, 9, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Houndour - Fire Fang - Level 30
  (228, 22800, 424, 9, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Houndour - Feint Attack - Level 35
  (228, 22800, 185, 9, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Houndour - Embargo - Level 40
  (228, 22800, 373, 9, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Houndour - Flamethrower - Level 43
  (228, 22800, 53, 9, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Houndour - Crunch - Level 48
  (228, 22800, 242, 9, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Houndour - Nasty Plot - Level 53
  (228, 22800, 417, 9, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Houndour - Roar - TM05
  (228, 22800, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 15),
  -- Houndour - Toxic - TM06
  (228, 22800, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Houndour - Hidden Power - TM10
  (228, 22800, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Houndour - Sunny Day - TM11
  (228, 22800, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 18),
  -- Houndour - Taunt - TM12
  (228, 22800, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 19),
  -- Houndour - Protect - TM17
  (228, 22800, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 20),
  -- Houndour - Frustration - TM21
  (228, 22800, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 21),
  -- Houndour - Solar Beam - TM22
  (228, 22800, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 22),
  -- Houndour - Iron Tail - TM23
  (228, 22800, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 23),
  -- Houndour - Return - TM27
  (228, 22800, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 24),
  -- Houndour - Shadow Ball - TM30
  (228, 22800, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 25),
  -- Houndour - Double Team - TM32
  (228, 22800, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 26),
  -- Houndour - Flamethrower - TM35
  (228, 22800, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 27),
  -- Houndour - Sludge Bomb - TM36
  (228, 22800, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 28),
  -- Houndour - Fire Blast - TM38
  (228, 22800, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 29),
  -- Houndour - Torment - TM41
  (228, 22800, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 30),
  -- Houndour - Facade - TM42
  (228, 22800, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 31),
  -- Houndour - Secret Power - TM43
  (228, 22800, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 32),
  -- Houndour - Rest - TM44
  (228, 22800, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 33),
  -- Houndour - Attract - TM45
  (228, 22800, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 34),
  -- Houndour - Thief - TM46
  (228, 22800, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 35),
  -- Houndour - Snatch - TM49
  (228, 22800, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 36),
  -- Houndour - Overheat - TM50
  (228, 22800, 315, 9, NULL, 2, NULL, NULL, 9002050, NULL, 37),
  -- Houndour - Endure - TM58
  (228, 22800, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 38),
  -- Houndour - Will-O-Wisp - TM61
  (228, 22800, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 39),
  -- Houndour - Embargo - TM63
  (228, 22800, 373, 9, NULL, 2, NULL, NULL, 9002063, NULL, 40),
  -- Houndour - Payback - TM66
  (228, 22800, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 41),
  -- Houndour - Captivate - TM78
  (228, 22800, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 42),
  -- Houndour - Dark Pulse - TM79
  (228, 22800, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 43),
  -- Houndour - Sleep Talk - TM82
  (228, 22800, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 44),
  -- Houndour - Natural Gift - TM83
  (228, 22800, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 45),
  -- Houndour - Dream Eater - TM85
  (228, 22800, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 46),
  -- Houndour - Swagger - TM87
  (228, 22800, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 47),
  -- Houndour - Substitute - TM90
  (228, 22800, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 48),
  -- Houndour - Rock Smash - HM06
  (228, 22800, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 49),
  -- Houndour - Counter - Egg
  (228, 22800, 68, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Houndour - Fire Spin - Egg
  (228, 22800, 83, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Houndour - Rage - Egg
  (228, 22800, 99, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Houndour - Reversal - Egg
  (228, 22800, 179, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Houndour - Spite - Egg
  (228, 22800, 180, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Houndour - Pursuit - Egg
  (228, 22800, 228, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Houndour - Beat Up - Egg
  (228, 22800, 251, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Houndour - Will-O-Wisp - Egg
  (228, 22800, 261, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Houndour - Punishment - Egg
  (228, 22800, 386, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Houndour - Nasty Plot - Egg
  (228, 22800, 417, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Houndour - Thunder Fang - Egg
  (228, 22800, 422, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Houndour - Fire Fang - Egg
  (228, 22800, 424, 9, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Houndour - Swift - Tutor
  (228, 22800, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Houndour - Snore - Tutor
  (228, 22800, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Houndour - Spite - Tutor
  (228, 22800, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Houndour - Mud-Slap - Tutor
  (228, 22800, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Houndour - Uproar - Tutor
  (228, 22800, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Houndour - Heat Wave - Tutor
  (228, 22800, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Houndour - Sucker Punch - Tutor
  (228, 22800, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Houndoom - Leer - Level 1
  (229, 22900, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Houndoom - Ember - Level 1
  (229, 22900, 52, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Houndoom - Smog - Level 1
  (229, 22900, 123, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Houndoom - Howl - Level 1
  (229, 22900, 336, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Houndoom - Thunder Fang - Level 1
  (229, 22900, 422, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Houndoom - Howl - Level 4
  (229, 22900, 336, 9, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Houndoom - Smog - Level 9
  (229, 22900, 123, 9, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Houndoom - Roar - Level 14
  (229, 22900, 46, 9, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Houndoom - Bite - Level 17
  (229, 22900, 44, 9, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Houndoom - Odor Sleuth - Level 22
  (229, 22900, 316, 9, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Houndoom - Beat Up - Level 28
  (229, 22900, 251, 9, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Houndoom - Fire Fang - Level 32
  (229, 22900, 424, 9, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Houndoom - Feint Attack - Level 38
  (229, 22900, 185, 9, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Houndoom - Embargo - Level 44
  (229, 22900, 373, 9, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Houndoom - Flamethrower - Level 48
  (229, 22900, 53, 9, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Houndoom - Crunch - Level 54
  (229, 22900, 242, 9, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Houndoom - Nasty Plot - Level 60
  (229, 22900, 417, 9, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Houndoom - Roar - TM05
  (229, 22900, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 18),
  -- Houndoom - Toxic - TM06
  (229, 22900, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 19),
  -- Houndoom - Hidden Power - TM10
  (229, 22900, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 20),
  -- Houndoom - Sunny Day - TM11
  (229, 22900, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 21),
  -- Houndoom - Taunt - TM12
  (229, 22900, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 22),
  -- Houndoom - Hyper Beam - TM15
  (229, 22900, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 23),
  -- Houndoom - Protect - TM17
  (229, 22900, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 24),
  -- Houndoom - Frustration - TM21
  (229, 22900, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 25),
  -- Houndoom - Solar Beam - TM22
  (229, 22900, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 26),
  -- Houndoom - Iron Tail - TM23
  (229, 22900, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 27),
  -- Houndoom - Return - TM27
  (229, 22900, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 28),
  -- Houndoom - Shadow Ball - TM30
  (229, 22900, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 29),
  -- Houndoom - Double Team - TM32
  (229, 22900, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 30),
  -- Houndoom - Flamethrower - TM35
  (229, 22900, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 31),
  -- Houndoom - Sludge Bomb - TM36
  (229, 22900, 188, 9, NULL, 2, NULL, NULL, 9002036, NULL, 32),
  -- Houndoom - Fire Blast - TM38
  (229, 22900, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 33),
  -- Houndoom - Torment - TM41
  (229, 22900, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 34),
  -- Houndoom - Facade - TM42
  (229, 22900, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 35),
  -- Houndoom - Secret Power - TM43
  (229, 22900, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 36),
  -- Houndoom - Rest - TM44
  (229, 22900, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 37),
  -- Houndoom - Attract - TM45
  (229, 22900, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 38),
  -- Houndoom - Thief - TM46
  (229, 22900, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 39),
  -- Houndoom - Snatch - TM49
  (229, 22900, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 40),
  -- Houndoom - Overheat - TM50
  (229, 22900, 315, 9, NULL, 2, NULL, NULL, 9002050, NULL, 41),
  -- Houndoom - Endure - TM58
  (229, 22900, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 42),
  -- Houndoom - Will-O-Wisp - TM61
  (229, 22900, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 43),
  -- Houndoom - Embargo - TM63
  (229, 22900, 373, 9, NULL, 2, NULL, NULL, 9002063, NULL, 44),
  -- Houndoom - Payback - TM66
  (229, 22900, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 45),
  -- Houndoom - Giga Impact - TM68
  (229, 22900, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 46),
  -- Houndoom - Captivate - TM78
  (229, 22900, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 47),
  -- Houndoom - Dark Pulse - TM79
  (229, 22900, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 48),
  -- Houndoom - Sleep Talk - TM82
  (229, 22900, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 49),
  -- Houndoom - Natural Gift - TM83
  (229, 22900, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 50),
  -- Houndoom - Dream Eater - TM85
  (229, 22900, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 51),
  -- Houndoom - Swagger - TM87
  (229, 22900, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 52),
  -- Houndoom - Substitute - TM90
  (229, 22900, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 53),
  -- Houndoom - Strength - HM04
  (229, 22900, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 54),
  -- Houndoom - Rock Smash - HM06
  (229, 22900, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 55),
  -- Houndoom - Swift - Tutor
  (229, 22900, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Houndoom - Snore - Tutor
  (229, 22900, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Houndoom - Spite - Tutor
  (229, 22900, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Houndoom - Mud-Slap - Tutor
  (229, 22900, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Houndoom - Uproar - Tutor
  (229, 22900, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Houndoom - Heat Wave - Tutor
  (229, 22900, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Houndoom - Sucker Punch - Tutor
  (229, 22900, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Kingdra - Leer - Level 1
  (230, 23000, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kingdra - Water Gun - Level 1
  (230, 23000, 55, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kingdra - Smokescreen - Level 1
  (230, 23000, 108, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kingdra - Bubble - Level 1
  (230, 23000, 145, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kingdra - Yawn - Level 1
  (230, 23000, 281, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Kingdra - Smokescreen - Level 4
  (230, 23000, 108, 9, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Kingdra - Leer - Level 8
  (230, 23000, 43, 9, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Kingdra - Water Gun - Level 11
  (230, 23000, 55, 9, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Kingdra - Focus Energy - Level 14
  (230, 23000, 116, 9, NULL, 1, 14, NULL, NULL, NULL, 9),
  -- Kingdra - Bubble Beam - Level 18
  (230, 23000, 61, 9, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Kingdra - Agility - Level 23
  (230, 23000, 97, 9, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Kingdra - Twister - Level 26
  (230, 23000, 239, 9, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Kingdra - Brine - Level 30
  (230, 23000, 362, 9, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Kingdra - Hydro Pump - Level 40
  (230, 23000, 56, 9, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Kingdra - Dragon Dance - Level 48
  (230, 23000, 349, 9, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Kingdra - Dragon Pulse - Level 57
  (230, 23000, 406, 9, NULL, 1, 57, NULL, NULL, NULL, 16),
  -- Kingdra - Water Pulse - TM03
  (230, 23000, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 17),
  -- Kingdra - Toxic - TM06
  (230, 23000, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Kingdra - Hail - TM07
  (230, 23000, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 19),
  -- Kingdra - Hidden Power - TM10
  (230, 23000, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 20),
  -- Kingdra - Ice Beam - TM13
  (230, 23000, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 21),
  -- Kingdra - Blizzard - TM14
  (230, 23000, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 22),
  -- Kingdra - Hyper Beam - TM15
  (230, 23000, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 23),
  -- Kingdra - Protect - TM17
  (230, 23000, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 24),
  -- Kingdra - Rain Dance - TM18
  (230, 23000, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 25),
  -- Kingdra - Frustration - TM21
  (230, 23000, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 26),
  -- Kingdra - Return - TM27
  (230, 23000, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 27),
  -- Kingdra - Double Team - TM32
  (230, 23000, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 28),
  -- Kingdra - Facade - TM42
  (230, 23000, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 29),
  -- Kingdra - Secret Power - TM43
  (230, 23000, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 30),
  -- Kingdra - Rest - TM44
  (230, 23000, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 31),
  -- Kingdra - Attract - TM45
  (230, 23000, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 32),
  -- Kingdra - Brine - TM55
  (230, 23000, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 33),
  -- Kingdra - Endure - TM58
  (230, 23000, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 34),
  -- Kingdra - Dragon Pulse - TM59
  (230, 23000, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 35),
  -- Kingdra - Giga Impact - TM68
  (230, 23000, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 36),
  -- Kingdra - Captivate - TM78
  (230, 23000, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 37),
  -- Kingdra - Sleep Talk - TM82
  (230, 23000, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 38),
  -- Kingdra - Natural Gift - TM83
  (230, 23000, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 39),
  -- Kingdra - Swagger - TM87
  (230, 23000, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 40),
  -- Kingdra - Substitute - TM90
  (230, 23000, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 41),
  -- Kingdra - Flash Cannon - TM91
  (230, 23000, 430, 9, NULL, 2, NULL, NULL, 9002091, NULL, 42),
  -- Kingdra - Surf - HM03
  (230, 23000, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 43),
  -- Kingdra - Defog - HM05
  (230, 23000, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 44),
  -- Kingdra - Waterfall - HM07
  (230, 23000, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 45),
  -- Kingdra - Swift - Tutor
  (230, 23000, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Kingdra - Snore - Tutor
  (230, 23000, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Kingdra - Icy Wind - Tutor
  (230, 23000, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Kingdra - Outrage - Tutor
  (230, 23000, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Kingdra - Twister - Tutor
  (230, 23000, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Kingdra - Dive - Tutor
  (230, 23000, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Kingdra - Signal Beam - Tutor
  (230, 23000, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Kingdra - Bounce - Tutor
  (230, 23000, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Kingdra - Draco Meteor - Tutor
  (230, 23000, 434, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Kingdra - Iron Head - Tutor
  (230, 23000, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Phanpy - Tackle - Level 1
  (231, 23100, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Phanpy - Growl - Level 1
  (231, 23100, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Phanpy - Defense Curl - Level 1
  (231, 23100, 111, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Phanpy - Odor Sleuth - Level 1
  (231, 23100, 316, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Phanpy - Flail - Level 6
  (231, 23100, 175, 9, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Phanpy - Take Down - Level 10
  (231, 23100, 36, 9, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Phanpy - Rollout - Level 15
  (231, 23100, 205, 9, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Phanpy - Natural Gift - Level 19
  (231, 23100, 363, 9, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Phanpy - Slam - Level 24
  (231, 23100, 21, 9, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Phanpy - Endure - Level 28
  (231, 23100, 203, 9, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Phanpy - Charm - Level 33
  (231, 23100, 204, 9, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Phanpy - Last Resort - Level 37
  (231, 23100, 387, 9, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Phanpy - Double-Edge - Level 42
  (231, 23100, 38, 9, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Phanpy - Roar - TM05
  (231, 23100, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 14),
  -- Phanpy - Toxic - TM06
  (231, 23100, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Phanpy - Hidden Power - TM10
  (231, 23100, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 16),
  -- Phanpy - Sunny Day - TM11
  (231, 23100, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 17),
  -- Phanpy - Protect - TM17
  (231, 23100, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 18),
  -- Phanpy - Frustration - TM21
  (231, 23100, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 19),
  -- Phanpy - Iron Tail - TM23
  (231, 23100, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 20),
  -- Phanpy - Earthquake - TM26
  (231, 23100, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 21),
  -- Phanpy - Return - TM27
  (231, 23100, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 22),
  -- Phanpy - Double Team - TM32
  (231, 23100, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 23),
  -- Phanpy - Sandstorm - TM37
  (231, 23100, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 24),
  -- Phanpy - Rock Tomb - TM39
  (231, 23100, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 25),
  -- Phanpy - Facade - TM42
  (231, 23100, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 26),
  -- Phanpy - Secret Power - TM43
  (231, 23100, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 27),
  -- Phanpy - Rest - TM44
  (231, 23100, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 28),
  -- Phanpy - Attract - TM45
  (231, 23100, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 29),
  -- Phanpy - Endure - TM58
  (231, 23100, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 30),
  -- Phanpy - Stealth Rock - TM76
  (231, 23100, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 31),
  -- Phanpy - Captivate - TM78
  (231, 23100, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 32),
  -- Phanpy - Rock Slide - TM80
  (231, 23100, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 33),
  -- Phanpy - Sleep Talk - TM82
  (231, 23100, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 34),
  -- Phanpy - Natural Gift - TM83
  (231, 23100, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 35),
  -- Phanpy - Swagger - TM87
  (231, 23100, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 36),
  -- Phanpy - Substitute - TM90
  (231, 23100, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 37),
  -- Phanpy - Strength - HM04
  (231, 23100, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 38),
  -- Phanpy - Rock Smash - HM06
  (231, 23100, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 39),
  -- Phanpy - Body Slam - Egg
  (231, 23100, 34, 9, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Phanpy - Counter - Egg
  (231, 23100, 68, 9, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Phanpy - Fissure - Egg
  (231, 23100, 90, 9, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Phanpy - Focus Energy - Egg
  (231, 23100, 116, 9, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Phanpy - Snore - Egg
  (231, 23100, 173, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Phanpy - Ancient Power - Egg
  (231, 23100, 246, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Phanpy - Endeavor - Egg
  (231, 23100, 283, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Phanpy - Ice Shard - Egg
  (231, 23100, 420, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Phanpy - Snore - Tutor
  (231, 23100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Phanpy - Mud-Slap - Tutor
  (231, 23100, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Phanpy - Rollout - Tutor
  (231, 23100, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Phanpy - Ancient Power - Tutor
  (231, 23100, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Phanpy - Superpower - Tutor
  (231, 23100, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Phanpy - Knock Off - Tutor
  (231, 23100, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Phanpy - Endeavor - Tutor
  (231, 23100, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Phanpy - Seed Bomb - Tutor
  (231, 23100, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Phanpy - Earth Power - Tutor
  (231, 23100, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Phanpy - Gunk Shot - Tutor
  (231, 23100, 441, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Donphan - Horn Attack - Level 1
  (232, 23200, 30, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Donphan - Growl - Level 1
  (232, 23200, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Donphan - Defense Curl - Level 1
  (232, 23200, 111, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Donphan - Flail - Level 1
  (232, 23200, 175, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Donphan - Thunder Fang - Level 1
  (232, 23200, 422, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Donphan - Fire Fang - Level 1
  (232, 23200, 424, 9, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Donphan - Rapid Spin - Level 6
  (232, 23200, 229, 9, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Donphan - Knock Off - Level 10
  (232, 23200, 282, 9, NULL, 1, 10, NULL, NULL, NULL, 8),
  -- Donphan - Rollout - Level 15
  (232, 23200, 205, 9, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Donphan - Magnitude - Level 19
  (232, 23200, 222, 9, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Donphan - Slam - Level 24
  (232, 23200, 21, 9, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Donphan - Fury Attack - Level 25
  (232, 23200, 31, 9, NULL, 1, 25, NULL, NULL, NULL, 12),
  -- Donphan - Assurance - Level 31
  (232, 23200, 372, 9, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Donphan - Scary Face - Level 39
  (232, 23200, 184, 9, NULL, 1, 39, NULL, NULL, NULL, 14),
  -- Donphan - Earthquake - Level 46
  (232, 23200, 89, 9, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Donphan - Giga Impact - Level 54
  (232, 23200, 416, 9, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Donphan - Roar - TM05
  (232, 23200, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 17),
  -- Donphan - Toxic - TM06
  (232, 23200, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Donphan - Hidden Power - TM10
  (232, 23200, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Donphan - Sunny Day - TM11
  (232, 23200, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 20),
  -- Donphan - Hyper Beam - TM15
  (232, 23200, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 21),
  -- Donphan - Protect - TM17
  (232, 23200, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 22),
  -- Donphan - Frustration - TM21
  (232, 23200, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Donphan - Iron Tail - TM23
  (232, 23200, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 24),
  -- Donphan - Earthquake - TM26
  (232, 23200, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 25),
  -- Donphan - Return - TM27
  (232, 23200, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 26),
  -- Donphan - Double Team - TM32
  (232, 23200, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 27),
  -- Donphan - Sandstorm - TM37
  (232, 23200, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 28),
  -- Donphan - Rock Tomb - TM39
  (232, 23200, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 29),
  -- Donphan - Facade - TM42
  (232, 23200, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 30),
  -- Donphan - Secret Power - TM43
  (232, 23200, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 31),
  -- Donphan - Rest - TM44
  (232, 23200, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 32),
  -- Donphan - Attract - TM45
  (232, 23200, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 33),
  -- Donphan - Endure - TM58
  (232, 23200, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 34),
  -- Donphan - Giga Impact - TM68
  (232, 23200, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 35),
  -- Donphan - Rock Polish - TM69
  (232, 23200, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 36),
  -- Donphan - Stone Edge - TM71
  (232, 23200, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 37),
  -- Donphan - Gyro Ball - TM74
  (232, 23200, 360, 9, NULL, 2, NULL, NULL, 9002074, NULL, 38),
  -- Donphan - Stealth Rock - TM76
  (232, 23200, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 39),
  -- Donphan - Captivate - TM78
  (232, 23200, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 40),
  -- Donphan - Rock Slide - TM80
  (232, 23200, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 41),
  -- Donphan - Sleep Talk - TM82
  (232, 23200, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 42),
  -- Donphan - Natural Gift - TM83
  (232, 23200, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 43),
  -- Donphan - Poison Jab - TM84
  (232, 23200, 398, 9, NULL, 2, NULL, NULL, 9002084, NULL, 44),
  -- Donphan - Swagger - TM87
  (232, 23200, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 45),
  -- Donphan - Substitute - TM90
  (232, 23200, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 46),
  -- Donphan - Strength - HM04
  (232, 23200, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 47),
  -- Donphan - Rock Smash - HM06
  (232, 23200, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 48),
  -- Donphan - Snore - Tutor
  (232, 23200, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Donphan - Mud-Slap - Tutor
  (232, 23200, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Donphan - Rollout - Tutor
  (232, 23200, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Donphan - Ancient Power - Tutor
  (232, 23200, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Donphan - Superpower - Tutor
  (232, 23200, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Donphan - Knock Off - Tutor
  (232, 23200, 282, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Donphan - Endeavor - Tutor
  (232, 23200, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Donphan - Iron Defense - Tutor
  (232, 23200, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Donphan - Bounce - Tutor
  (232, 23200, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Donphan - Seed Bomb - Tutor
  (232, 23200, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Donphan - Earth Power - Tutor
  (232, 23200, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Donphan - Gunk Shot - Tutor
  (232, 23200, 441, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Porygon2 - Tackle - Level 1
  (233, 23300, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Porygon2 - Defense Curl - Level 1
  (233, 23300, 111, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Porygon2 - Conversion - Level 1
  (233, 23300, 160, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Porygon2 - Conversion 2 - Level 1
  (233, 23300, 176, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Porygon2 - Psybeam - Level 7
  (233, 23300, 60, 9, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Porygon2 - Agility - Level 12
  (233, 23300, 97, 9, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Porygon2 - Recover - Level 18
  (233, 23300, 105, 9, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Porygon2 - Magnet Rise - Level 23
  (233, 23300, 393, 9, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Porygon2 - Signal Beam - Level 29
  (233, 23300, 324, 9, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Porygon2 - Recycle - Level 34
  (233, 23300, 278, 9, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Porygon2 - Discharge - Level 40
  (233, 23300, 435, 9, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Porygon2 - Lock-On - Level 45
  (233, 23300, 199, 9, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Porygon2 - Tri Attack - Level 51
  (233, 23300, 161, 9, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Porygon2 - Magic Coat - Level 56
  (233, 23300, 277, 9, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Porygon2 - Zap Cannon - Level 62
  (233, 23300, 192, 9, NULL, 1, 62, NULL, NULL, NULL, 15),
  -- Porygon2 - Hyper Beam - Level 67
  (233, 23300, 63, 9, NULL, 1, 67, NULL, NULL, NULL, 16),
  -- Porygon2 - Toxic - TM06
  (233, 23300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Porygon2 - Hidden Power - TM10
  (233, 23300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Porygon2 - Sunny Day - TM11
  (233, 23300, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 19),
  -- Porygon2 - Ice Beam - TM13
  (233, 23300, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 20),
  -- Porygon2 - Blizzard - TM14
  (233, 23300, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 21),
  -- Porygon2 - Hyper Beam - TM15
  (233, 23300, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 22),
  -- Porygon2 - Protect - TM17
  (233, 23300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 23),
  -- Porygon2 - Rain Dance - TM18
  (233, 23300, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 24),
  -- Porygon2 - Frustration - TM21
  (233, 23300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 25),
  -- Porygon2 - Solar Beam - TM22
  (233, 23300, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 26),
  -- Porygon2 - Iron Tail - TM23
  (233, 23300, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 27),
  -- Porygon2 - Thunderbolt - TM24
  (233, 23300, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 28),
  -- Porygon2 - Thunder - TM25
  (233, 23300, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 29),
  -- Porygon2 - Return - TM27
  (233, 23300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 30),
  -- Porygon2 - Psychic - TM29
  (233, 23300, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 31),
  -- Porygon2 - Shadow Ball - TM30
  (233, 23300, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 32),
  -- Porygon2 - Double Team - TM32
  (233, 23300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 33),
  -- Porygon2 - Shock Wave - TM34
  (233, 23300, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 34),
  -- Porygon2 - Aerial Ace - TM40
  (233, 23300, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 35),
  -- Porygon2 - Facade - TM42
  (233, 23300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 36),
  -- Porygon2 - Secret Power - TM43
  (233, 23300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 37),
  -- Porygon2 - Rest - TM44
  (233, 23300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 38),
  -- Porygon2 - Thief - TM46
  (233, 23300, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 39),
  -- Porygon2 - Charge Beam - TM57
  (233, 23300, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 40),
  -- Porygon2 - Endure - TM58
  (233, 23300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 41),
  -- Porygon2 - Recycle - TM67
  (233, 23300, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 42),
  -- Porygon2 - Giga Impact - TM68
  (233, 23300, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 43),
  -- Porygon2 - Flash - TM70
  (233, 23300, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 44),
  -- Porygon2 - Thunder Wave - TM73
  (233, 23300, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 45),
  -- Porygon2 - Psych Up - TM77
  (233, 23300, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 46),
  -- Porygon2 - Sleep Talk - TM82
  (233, 23300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 47),
  -- Porygon2 - Natural Gift - TM83
  (233, 23300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 48),
  -- Porygon2 - Dream Eater - TM85
  (233, 23300, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 49),
  -- Porygon2 - Swagger - TM87
  (233, 23300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 50),
  -- Porygon2 - Substitute - TM90
  (233, 23300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 51),
  -- Porygon2 - Trick Room - TM92
  (233, 23300, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 52),
  -- Porygon2 - Swift - Tutor
  (233, 23300, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Porygon2 - Snore - Tutor
  (233, 23300, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Porygon2 - Icy Wind - Tutor
  (233, 23300, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Porygon2 - Trick - Tutor
  (233, 23300, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Porygon2 - Signal Beam - Tutor
  (233, 23300, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Porygon2 - Last Resort - Tutor
  (233, 23300, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Porygon2 - Zen Headbutt - Tutor
  (233, 23300, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Stantler - Tackle - Level 1
  (234, 23400, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Stantler - Leer - Level 3
  (234, 23400, 43, 9, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Stantler - Astonish - Level 7
  (234, 23400, 310, 9, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Stantler - Hypnosis - Level 10
  (234, 23400, 95, 9, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Stantler - Stomp - Level 13
  (234, 23400, 23, 9, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Stantler - Sand Attack - Level 16
  (234, 23400, 28, 9, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Stantler - Take Down - Level 21
  (234, 23400, 36, 9, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Stantler - Confuse Ray - Level 23
  (234, 23400, 109, 9, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Stantler - Calm Mind - Level 27
  (234, 23400, 347, 9, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Stantler - Role Play - Level 33
  (234, 23400, 272, 9, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Stantler - Zen Headbutt - Level 38
  (234, 23400, 428, 9, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Stantler - Imprison - Level 43
  (234, 23400, 286, 9, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Stantler - Captivate - Level 49
  (234, 23400, 445, 9, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Stantler - Me First - Level 53
  (234, 23400, 382, 9, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Stantler - Calm Mind - TM04
  (234, 23400, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 15),
  -- Stantler - Roar - TM05
  (234, 23400, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 16),
  -- Stantler - Toxic - TM06
  (234, 23400, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Stantler - Hidden Power - TM10
  (234, 23400, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Stantler - Sunny Day - TM11
  (234, 23400, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 19),
  -- Stantler - Light Screen - TM16
  (234, 23400, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 20),
  -- Stantler - Protect - TM17
  (234, 23400, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Stantler - Rain Dance - TM18
  (234, 23400, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 22),
  -- Stantler - Frustration - TM21
  (234, 23400, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Stantler - Solar Beam - TM22
  (234, 23400, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 24),
  -- Stantler - Iron Tail - TM23
  (234, 23400, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 25),
  -- Stantler - Thunderbolt - TM24
  (234, 23400, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 26),
  -- Stantler - Thunder - TM25
  (234, 23400, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 27),
  -- Stantler - Earthquake - TM26
  (234, 23400, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 28),
  -- Stantler - Return - TM27
  (234, 23400, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 29),
  -- Stantler - Psychic - TM29
  (234, 23400, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 30),
  -- Stantler - Shadow Ball - TM30
  (234, 23400, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 31),
  -- Stantler - Double Team - TM32
  (234, 23400, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 32),
  -- Stantler - Reflect - TM33
  (234, 23400, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 33),
  -- Stantler - Shock Wave - TM34
  (234, 23400, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 34),
  -- Stantler - Facade - TM42
  (234, 23400, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 35),
  -- Stantler - Secret Power - TM43
  (234, 23400, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 36),
  -- Stantler - Rest - TM44
  (234, 23400, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 37),
  -- Stantler - Attract - TM45
  (234, 23400, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 38),
  -- Stantler - Thief - TM46
  (234, 23400, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 39),
  -- Stantler - Skill Swap - TM48
  (234, 23400, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 40),
  -- Stantler - Energy Ball - TM53
  (234, 23400, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 41),
  -- Stantler - Charge Beam - TM57
  (234, 23400, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 42),
  -- Stantler - Endure - TM58
  (234, 23400, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 43),
  -- Stantler - Giga Impact - TM68
  (234, 23400, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 44),
  -- Stantler - Flash - TM70
  (234, 23400, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 45),
  -- Stantler - Thunder Wave - TM73
  (234, 23400, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 46),
  -- Stantler - Psych Up - TM77
  (234, 23400, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 47),
  -- Stantler - Captivate - TM78
  (234, 23400, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 48),
  -- Stantler - Sleep Talk - TM82
  (234, 23400, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 49),
  -- Stantler - Natural Gift - TM83
  (234, 23400, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 50),
  -- Stantler - Dream Eater - TM85
  (234, 23400, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 51),
  -- Stantler - Swagger - TM87
  (234, 23400, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 52),
  -- Stantler - Substitute - TM90
  (234, 23400, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 53),
  -- Stantler - Trick Room - TM92
  (234, 23400, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 54),
  -- Stantler - Double Kick - Egg
  (234, 23400, 24, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Stantler - Thrash - Egg
  (234, 23400, 37, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Stantler - Bite - Egg
  (234, 23400, 44, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Stantler - Disable - Egg
  (234, 23400, 50, 9, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Stantler - Spite - Egg
  (234, 23400, 180, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Stantler - Swagger - Egg
  (234, 23400, 207, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Stantler - Psych Up - Egg
  (234, 23400, 244, 9, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Stantler - Extrasensory - Egg
  (234, 23400, 326, 9, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Stantler - Zen Headbutt - Egg
  (234, 23400, 428, 9, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Stantler - Swift - Tutor
  (234, 23400, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Stantler - Snore - Tutor
  (234, 23400, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Stantler - Spite - Tutor
  (234, 23400, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Stantler - Mud-Slap - Tutor
  (234, 23400, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Stantler - Uproar - Tutor
  (234, 23400, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Stantler - Signal Beam - Tutor
  (234, 23400, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Stantler - Bounce - Tutor
  (234, 23400, 340, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Stantler - Last Resort - Tutor
  (234, 23400, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Stantler - Sucker Punch - Tutor
  (234, 23400, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Stantler - Zen Headbutt - Tutor
  (234, 23400, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Smeargle - Sketch - Level 1
  (235, 23500, 166, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Smeargle - Sketch - Level 11
  (235, 23500, 166, 9, NULL, 1, 11, NULL, NULL, NULL, 2),
  -- Smeargle - Sketch - Level 21
  (235, 23500, 166, 9, NULL, 1, 21, NULL, NULL, NULL, 3),
  -- Smeargle - Sketch - Level 31
  (235, 23500, 166, 9, NULL, 1, 31, NULL, NULL, NULL, 4),
  -- Smeargle - Sketch - Level 41
  (235, 23500, 166, 9, NULL, 1, 41, NULL, NULL, NULL, 5),
  -- Smeargle - Sketch - Level 51
  (235, 23500, 166, 9, NULL, 1, 51, NULL, NULL, NULL, 6),
  -- Smeargle - Sketch - Level 61
  (235, 23500, 166, 9, NULL, 1, 61, NULL, NULL, NULL, 7),
  -- Smeargle - Sketch - Level 71
  (235, 23500, 166, 9, NULL, 1, 71, NULL, NULL, NULL, 8),
  -- Smeargle - Sketch - Level 81
  (235, 23500, 166, 9, NULL, 1, 81, NULL, NULL, NULL, 9),
  -- Smeargle - Sketch - Level 91
  (235, 23500, 166, 9, NULL, 1, 91, NULL, NULL, NULL, 10),
  -- Tyrogue - Tackle - Level 1
  (236, 23600, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tyrogue - Foresight - Level 1
  (236, 23600, 193, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tyrogue - Fake Out - Level 1
  (236, 23600, 252, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tyrogue - Helping Hand - Level 1
  (236, 23600, 270, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tyrogue - Toxic - TM06
  (236, 23600, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 5),
  -- Tyrogue - Bulk Up - TM08
  (236, 23600, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 6),
  -- Tyrogue - Hidden Power - TM10
  (236, 23600, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 7),
  -- Tyrogue - Sunny Day - TM11
  (236, 23600, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 8),
  -- Tyrogue - Protect - TM17
  (236, 23600, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 9),
  -- Tyrogue - Rain Dance - TM18
  (236, 23600, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 10),
  -- Tyrogue - Frustration - TM21
  (236, 23600, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 11),
  -- Tyrogue - Earthquake - TM26
  (236, 23600, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 12),
  -- Tyrogue - Return - TM27
  (236, 23600, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 13),
  -- Tyrogue - Brick Break - TM31
  (236, 23600, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 14),
  -- Tyrogue - Double Team - TM32
  (236, 23600, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 15),
  -- Tyrogue - Facade - TM42
  (236, 23600, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 16),
  -- Tyrogue - Secret Power - TM43
  (236, 23600, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 17),
  -- Tyrogue - Rest - TM44
  (236, 23600, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 18),
  -- Tyrogue - Attract - TM45
  (236, 23600, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 19),
  -- Tyrogue - Thief - TM46
  (236, 23600, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 20),
  -- Tyrogue - Endure - TM58
  (236, 23600, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 21),
  -- Tyrogue - Captivate - TM78
  (236, 23600, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 22),
  -- Tyrogue - Rock Slide - TM80
  (236, 23600, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 23),
  -- Tyrogue - Sleep Talk - TM82
  (236, 23600, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 24),
  -- Tyrogue - Natural Gift - TM83
  (236, 23600, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 25),
  -- Tyrogue - Swagger - TM87
  (236, 23600, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 26),
  -- Tyrogue - Substitute - TM90
  (236, 23600, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 27),
  -- Tyrogue - Strength - HM04
  (236, 23600, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 28),
  -- Tyrogue - Rock Smash - HM06
  (236, 23600, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 29),
  -- Tyrogue - Counter - Egg
  (236, 23600, 68, 9, NULL, 5, NULL, NULL, NULL, NULL, 30),
  -- Tyrogue - High Jump Kick - Egg
  (236, 23600, 136, 9, NULL, 5, NULL, NULL, NULL, NULL, 31),
  -- Tyrogue - Mind Reader - Egg
  (236, 23600, 170, 9, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Tyrogue - Mach Punch - Egg
  (236, 23600, 183, 9, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Tyrogue - Rapid Spin - Egg
  (236, 23600, 229, 9, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Tyrogue - Helping Hand - Egg
  (236, 23600, 270, 9, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Tyrogue - Vacuum Wave - Egg
  (236, 23600, 410, 9, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Tyrogue - Bullet Punch - Egg
  (236, 23600, 418, 9, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Tyrogue - Swift - Tutor
  (236, 23600, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 38),
  -- Tyrogue - Snore - Tutor
  (236, 23600, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 39),
  -- Tyrogue - Mud-Slap - Tutor
  (236, 23600, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 40),
  -- Tyrogue - Uproar - Tutor
  (236, 23600, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 41),
  -- Tyrogue - Helping Hand - Tutor
  (236, 23600, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 42),
  -- Tyrogue - Vacuum Wave - Tutor
  (236, 23600, 410, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 43),
  -- Hitmontop - Rolling Kick - Level 1
  (237, 23700, 27, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Hitmontop - Revenge - Level 1
  (237, 23700, 279, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Hitmontop - Focus Energy - Level 6
  (237, 23700, 116, 9, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Hitmontop - Pursuit - Level 10
  (237, 23700, 228, 9, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Hitmontop - Quick Attack - Level 15
  (237, 23700, 98, 9, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Hitmontop - Triple Kick - Level 19
  (237, 23700, 167, 9, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Hitmontop - Rapid Spin - Level 24
  (237, 23700, 229, 9, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Hitmontop - Counter - Level 28
  (237, 23700, 68, 9, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Hitmontop - Feint - Level 33
  (237, 23700, 364, 9, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Hitmontop - Agility - Level 37
  (237, 23700, 97, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Hitmontop - Gyro Ball - Level 42
  (237, 23700, 360, 9, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Hitmontop - Detect - Level 46
  (237, 23700, 197, 9, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Hitmontop - Close Combat - Level 51
  (237, 23700, 370, 9, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Hitmontop - Endeavor - Level 55
  (237, 23700, 283, 9, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Hitmontop - Toxic - TM06
  (237, 23700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 15),
  -- Hitmontop - Bulk Up - TM08
  (237, 23700, 339, 9, NULL, 2, NULL, NULL, 9002008, NULL, 16),
  -- Hitmontop - Hidden Power - TM10
  (237, 23700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Hitmontop - Sunny Day - TM11
  (237, 23700, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 18),
  -- Hitmontop - Protect - TM17
  (237, 23700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 19),
  -- Hitmontop - Rain Dance - TM18
  (237, 23700, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 20),
  -- Hitmontop - Frustration - TM21
  (237, 23700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 21),
  -- Hitmontop - Earthquake - TM26
  (237, 23700, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 22),
  -- Hitmontop - Return - TM27
  (237, 23700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 23),
  -- Hitmontop - Dig - TM28
  (237, 23700, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 24),
  -- Hitmontop - Brick Break - TM31
  (237, 23700, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 25),
  -- Hitmontop - Double Team - TM32
  (237, 23700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 26),
  -- Hitmontop - Sandstorm - TM37
  (237, 23700, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 27),
  -- Hitmontop - Aerial Ace - TM40
  (237, 23700, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 28),
  -- Hitmontop - Facade - TM42
  (237, 23700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 29),
  -- Hitmontop - Secret Power - TM43
  (237, 23700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 30),
  -- Hitmontop - Rest - TM44
  (237, 23700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 31),
  -- Hitmontop - Attract - TM45
  (237, 23700, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 32),
  -- Hitmontop - Thief - TM46
  (237, 23700, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 33),
  -- Hitmontop - Endure - TM58
  (237, 23700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 34),
  -- Hitmontop - Stone Edge - TM71
  (237, 23700, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 35),
  -- Hitmontop - Gyro Ball - TM74
  (237, 23700, 360, 9, NULL, 2, NULL, NULL, 9002074, NULL, 36),
  -- Hitmontop - Captivate - TM78
  (237, 23700, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 37),
  -- Hitmontop - Rock Slide - TM80
  (237, 23700, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 38),
  -- Hitmontop - Sleep Talk - TM82
  (237, 23700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 39),
  -- Hitmontop - Natural Gift - TM83
  (237, 23700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 40),
  -- Hitmontop - Swagger - TM87
  (237, 23700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 41),
  -- Hitmontop - Substitute - TM90
  (237, 23700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 42),
  -- Hitmontop - Strength - HM04
  (237, 23700, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 43),
  -- Hitmontop - Rock Smash - HM06
  (237, 23700, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 44),
  -- Hitmontop - Swift - Tutor
  (237, 23700, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 45),
  -- Hitmontop - Snore - Tutor
  (237, 23700, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 46),
  -- Hitmontop - Mud-Slap - Tutor
  (237, 23700, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 47),
  -- Hitmontop - Rollout - Tutor
  (237, 23700, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 48),
  -- Hitmontop - Twister - Tutor
  (237, 23700, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Hitmontop - Helping Hand - Tutor
  (237, 23700, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Hitmontop - Endeavor - Tutor
  (237, 23700, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Hitmontop - Sucker Punch - Tutor
  (237, 23700, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Hitmontop - Vacuum Wave - Tutor
  (237, 23700, 410, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Smoochum - Pound - Level 1
  (238, 23800, 1, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Smoochum - Lick - Level 5
  (238, 23800, 122, 9, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Smoochum - Sweet Kiss - Level 8
  (238, 23800, 186, 9, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Smoochum - Powder Snow - Level 11
  (238, 23800, 181, 9, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Smoochum - Confusion - Level 15
  (238, 23800, 93, 9, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Smoochum - Sing - Level 18
  (238, 23800, 47, 9, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Smoochum - Mean Look - Level 21
  (238, 23800, 212, 9, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Smoochum - Fake Tears - Level 25
  (238, 23800, 313, 9, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Smoochum - Lucky Chant - Level 28
  (238, 23800, 381, 9, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Smoochum - Avalanche - Level 31
  (238, 23800, 419, 9, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Smoochum - Psychic - Level 35
  (238, 23800, 94, 9, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Smoochum - Copycat - Level 38
  (238, 23800, 383, 9, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Smoochum - Perish Song - Level 41
  (238, 23800, 195, 9, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Smoochum - Blizzard - Level 45
  (238, 23800, 59, 9, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Smoochum - Water Pulse - TM03
  (238, 23800, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 15),
  -- Smoochum - Calm Mind - TM04
  (238, 23800, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 16),
  -- Smoochum - Toxic - TM06
  (238, 23800, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Smoochum - Hail - TM07
  (238, 23800, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 18),
  -- Smoochum - Hidden Power - TM10
  (238, 23800, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Smoochum - Ice Beam - TM13
  (238, 23800, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 20),
  -- Smoochum - Blizzard - TM14
  (238, 23800, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 21),
  -- Smoochum - Light Screen - TM16
  (238, 23800, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 22),
  -- Smoochum - Protect - TM17
  (238, 23800, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 23),
  -- Smoochum - Rain Dance - TM18
  (238, 23800, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 24),
  -- Smoochum - Frustration - TM21
  (238, 23800, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 25),
  -- Smoochum - Return - TM27
  (238, 23800, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 26),
  -- Smoochum - Psychic - TM29
  (238, 23800, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 27),
  -- Smoochum - Shadow Ball - TM30
  (238, 23800, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 28),
  -- Smoochum - Double Team - TM32
  (238, 23800, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 29),
  -- Smoochum - Reflect - TM33
  (238, 23800, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 30),
  -- Smoochum - Facade - TM42
  (238, 23800, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 31),
  -- Smoochum - Secret Power - TM43
  (238, 23800, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 32),
  -- Smoochum - Rest - TM44
  (238, 23800, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 33),
  -- Smoochum - Attract - TM45
  (238, 23800, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 34),
  -- Smoochum - Thief - TM46
  (238, 23800, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 35),
  -- Smoochum - Skill Swap - TM48
  (238, 23800, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 36),
  -- Smoochum - Fling - TM56
  (238, 23800, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 37),
  -- Smoochum - Endure - TM58
  (238, 23800, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 38),
  -- Smoochum - Payback - TM66
  (238, 23800, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 39),
  -- Smoochum - Recycle - TM67
  (238, 23800, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 40),
  -- Smoochum - Flash - TM70
  (238, 23800, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 41),
  -- Smoochum - Avalanche - TM72
  (238, 23800, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 42),
  -- Smoochum - Psych Up - TM77
  (238, 23800, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 43),
  -- Smoochum - Captivate - TM78
  (238, 23800, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 44),
  -- Smoochum - Sleep Talk - TM82
  (238, 23800, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 45),
  -- Smoochum - Natural Gift - TM83
  (238, 23800, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 46),
  -- Smoochum - Dream Eater - TM85
  (238, 23800, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 47),
  -- Smoochum - Grass Knot - TM86
  (238, 23800, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 48),
  -- Smoochum - Swagger - TM87
  (238, 23800, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 49),
  -- Smoochum - Substitute - TM90
  (238, 23800, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 50),
  -- Smoochum - Trick Room - TM92
  (238, 23800, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 51),
  -- Smoochum - Ice Punch - Egg
  (238, 23800, 8, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Smoochum - Meditate - Egg
  (238, 23800, 96, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Smoochum - Psych Up - Egg
  (238, 23800, 244, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Smoochum - Fake Out - Egg
  (238, 23800, 252, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Smoochum - Wish - Egg
  (238, 23800, 273, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Smoochum - Miracle Eye - Egg
  (238, 23800, 357, 9, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Smoochum - Ice Punch - Tutor
  (238, 23800, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Smoochum - Snore - Tutor
  (238, 23800, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Smoochum - Mud-Slap - Tutor
  (238, 23800, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Smoochum - Icy Wind - Tutor
  (238, 23800, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Smoochum - Uproar - Tutor
  (238, 23800, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Smoochum - Helping Hand - Tutor
  (238, 23800, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Smoochum - Trick - Tutor
  (238, 23800, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Smoochum - Signal Beam - Tutor
  (238, 23800, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Smoochum - Zen Headbutt - Tutor
  (238, 23800, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Elekid - Leer - Level 1
  (239, 23900, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Elekid - Quick Attack - Level 1
  (239, 23900, 98, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Elekid - Thunder Shock - Level 7
  (239, 23900, 84, 9, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Elekid - Low Kick - Level 10
  (239, 23900, 67, 9, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Elekid - Swift - Level 16
  (239, 23900, 129, 9, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Elekid - Shock Wave - Level 19
  (239, 23900, 351, 9, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Elekid - Light Screen - Level 25
  (239, 23900, 113, 9, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Elekid - Thunder Punch - Level 28
  (239, 23900, 9, 9, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Elekid - Discharge - Level 34
  (239, 23900, 435, 9, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Elekid - Thunderbolt - Level 37
  (239, 23900, 85, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Elekid - Screech - Level 43
  (239, 23900, 103, 9, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Elekid - Thunder - Level 46
  (239, 23900, 87, 9, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Elekid - Focus Punch - TM01
  (239, 23900, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 13),
  -- Elekid - Toxic - TM06
  (239, 23900, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Elekid - Hidden Power - TM10
  (239, 23900, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 15),
  -- Elekid - Light Screen - TM16
  (239, 23900, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 16),
  -- Elekid - Protect - TM17
  (239, 23900, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 17),
  -- Elekid - Rain Dance - TM18
  (239, 23900, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 18),
  -- Elekid - Frustration - TM21
  (239, 23900, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 19),
  -- Elekid - Thunderbolt - TM24
  (239, 23900, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 20),
  -- Elekid - Thunder - TM25
  (239, 23900, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 21),
  -- Elekid - Return - TM27
  (239, 23900, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 22),
  -- Elekid - Psychic - TM29
  (239, 23900, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 23),
  -- Elekid - Brick Break - TM31
  (239, 23900, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 24),
  -- Elekid - Double Team - TM32
  (239, 23900, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 25),
  -- Elekid - Shock Wave - TM34
  (239, 23900, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 26),
  -- Elekid - Facade - TM42
  (239, 23900, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 27),
  -- Elekid - Secret Power - TM43
  (239, 23900, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 28),
  -- Elekid - Rest - TM44
  (239, 23900, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 29),
  -- Elekid - Attract - TM45
  (239, 23900, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 30),
  -- Elekid - Thief - TM46
  (239, 23900, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 31),
  -- Elekid - Fling - TM56
  (239, 23900, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 32),
  -- Elekid - Charge Beam - TM57
  (239, 23900, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 33),
  -- Elekid - Endure - TM58
  (239, 23900, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 34),
  -- Elekid - Flash - TM70
  (239, 23900, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 35),
  -- Elekid - Thunder Wave - TM73
  (239, 23900, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 36),
  -- Elekid - Captivate - TM78
  (239, 23900, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 37),
  -- Elekid - Sleep Talk - TM82
  (239, 23900, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 38),
  -- Elekid - Natural Gift - TM83
  (239, 23900, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 39),
  -- Elekid - Swagger - TM87
  (239, 23900, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 40),
  -- Elekid - Substitute - TM90
  (239, 23900, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 41),
  -- Elekid - Rock Smash - HM06
  (239, 23900, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 42),
  -- Elekid - Karate Chop - Egg
  (239, 23900, 2, 9, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Elekid - Fire Punch - Egg
  (239, 23900, 7, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Elekid - Ice Punch - Egg
  (239, 23900, 8, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Elekid - Rolling Kick - Egg
  (239, 23900, 27, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Elekid - Meditate - Egg
  (239, 23900, 96, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Elekid - Barrier - Egg
  (239, 23900, 112, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Elekid - Dynamic Punch - Egg
  (239, 23900, 223, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Elekid - Cross Chop - Egg
  (239, 23900, 238, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Elekid - Fire Punch - Tutor
  (239, 23900, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Elekid - Ice Punch - Tutor
  (239, 23900, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Elekid - Thunder Punch - Tutor
  (239, 23900, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Elekid - Swift - Tutor
  (239, 23900, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Elekid - Snore - Tutor
  (239, 23900, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Elekid - Mud-Slap - Tutor
  (239, 23900, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Elekid - Uproar - Tutor
  (239, 23900, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Elekid - Helping Hand - Tutor
  (239, 23900, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Elekid - Signal Beam - Tutor
  (239, 23900, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Elekid - Magnet Rise - Tutor
  (239, 23900, 393, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Magby - Leer - Level 1
  (240, 24000, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magby - Smog - Level 1
  (240, 24000, 123, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magby - Ember - Level 7
  (240, 24000, 52, 9, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Magby - Smokescreen - Level 10
  (240, 24000, 108, 9, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Magby - Feint Attack - Level 16
  (240, 24000, 185, 9, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Magby - Fire Spin - Level 19
  (240, 24000, 83, 9, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Magby - Confuse Ray - Level 25
  (240, 24000, 109, 9, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Magby - Fire Punch - Level 28
  (240, 24000, 7, 9, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Magby - Lava Plume - Level 34
  (240, 24000, 436, 9, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Magby - Flamethrower - Level 37
  (240, 24000, 53, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Magby - Sunny Day - Level 43
  (240, 24000, 241, 9, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Magby - Fire Blast - Level 46
  (240, 24000, 126, 9, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Magby - Focus Punch - TM01
  (240, 24000, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 13),
  -- Magby - Toxic - TM06
  (240, 24000, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Magby - Hidden Power - TM10
  (240, 24000, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 15),
  -- Magby - Sunny Day - TM11
  (240, 24000, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 16),
  -- Magby - Protect - TM17
  (240, 24000, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 17),
  -- Magby - Frustration - TM21
  (240, 24000, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 18),
  -- Magby - Iron Tail - TM23
  (240, 24000, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 19),
  -- Magby - Return - TM27
  (240, 24000, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 20),
  -- Magby - Psychic - TM29
  (240, 24000, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 21),
  -- Magby - Brick Break - TM31
  (240, 24000, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 22),
  -- Magby - Double Team - TM32
  (240, 24000, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 23),
  -- Magby - Flamethrower - TM35
  (240, 24000, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 24),
  -- Magby - Fire Blast - TM38
  (240, 24000, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 25),
  -- Magby - Facade - TM42
  (240, 24000, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 26),
  -- Magby - Secret Power - TM43
  (240, 24000, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 27),
  -- Magby - Rest - TM44
  (240, 24000, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 28),
  -- Magby - Attract - TM45
  (240, 24000, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 29),
  -- Magby - Thief - TM46
  (240, 24000, 168, 9, NULL, 2, NULL, NULL, 9002046, NULL, 30),
  -- Magby - Overheat - TM50
  (240, 24000, 315, 9, NULL, 2, NULL, NULL, 9002050, NULL, 31),
  -- Magby - Fling - TM56
  (240, 24000, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 32),
  -- Magby - Endure - TM58
  (240, 24000, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 33),
  -- Magby - Will-O-Wisp - TM61
  (240, 24000, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 34),
  -- Magby - Captivate - TM78
  (240, 24000, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 35),
  -- Magby - Sleep Talk - TM82
  (240, 24000, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 36),
  -- Magby - Natural Gift - TM83
  (240, 24000, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 37),
  -- Magby - Swagger - TM87
  (240, 24000, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 38),
  -- Magby - Substitute - TM90
  (240, 24000, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 39),
  -- Magby - Rock Smash - HM06
  (240, 24000, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 40),
  -- Magby - Karate Chop - Egg
  (240, 24000, 2, 9, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Magby - Mega Punch - Egg
  (240, 24000, 5, 9, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Magby - Thunder Punch - Egg
  (240, 24000, 9, 9, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Magby - Screech - Egg
  (240, 24000, 103, 9, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Magby - Barrier - Egg
  (240, 24000, 112, 9, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Magby - Mach Punch - Egg
  (240, 24000, 183, 9, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Magby - Dynamic Punch - Egg
  (240, 24000, 223, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Magby - Cross Chop - Egg
  (240, 24000, 238, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Magby - Flare Blitz - Egg
  (240, 24000, 394, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Magby - Fire Punch - Tutor
  (240, 24000, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Magby - Thunder Punch - Tutor
  (240, 24000, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Magby - Snore - Tutor
  (240, 24000, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Magby - Mud-Slap - Tutor
  (240, 24000, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Magby - Uproar - Tutor
  (240, 24000, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Magby - Heat Wave - Tutor
  (240, 24000, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Magby - Helping Hand - Tutor
  (240, 24000, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Miltank - Tackle - Level 1
  (241, 24100, 33, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Miltank - Growl - Level 3
  (241, 24100, 45, 9, NULL, 1, 3, NULL, NULL, NULL, 2),
  -- Miltank - Defense Curl - Level 5
  (241, 24100, 111, 9, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Miltank - Stomp - Level 8
  (241, 24100, 23, 9, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Miltank - Milk Drink - Level 11
  (241, 24100, 208, 9, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Miltank - Bide - Level 15
  (241, 24100, 117, 9, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Miltank - Rollout - Level 19
  (241, 24100, 205, 9, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Miltank - Body Slam - Level 24
  (241, 24100, 34, 9, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Miltank - Zen Headbutt - Level 29
  (241, 24100, 428, 9, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Miltank - Captivate - Level 35
  (241, 24100, 445, 9, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Miltank - Gyro Ball - Level 41
  (241, 24100, 360, 9, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Miltank - Heal Bell - Level 48
  (241, 24100, 215, 9, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Miltank - Wake-Up Slap - Level 55
  (241, 24100, 358, 9, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Miltank - Focus Punch - TM01
  (241, 24100, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 14),
  -- Miltank - Water Pulse - TM03
  (241, 24100, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 15),
  -- Miltank - Toxic - TM06
  (241, 24100, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Miltank - Hidden Power - TM10
  (241, 24100, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Miltank - Sunny Day - TM11
  (241, 24100, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 18),
  -- Miltank - Ice Beam - TM13
  (241, 24100, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 19),
  -- Miltank - Blizzard - TM14
  (241, 24100, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 20),
  -- Miltank - Hyper Beam - TM15
  (241, 24100, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 21),
  -- Miltank - Protect - TM17
  (241, 24100, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 22),
  -- Miltank - Rain Dance - TM18
  (241, 24100, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 23),
  -- Miltank - Frustration - TM21
  (241, 24100, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Miltank - Solar Beam - TM22
  (241, 24100, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 25),
  -- Miltank - Iron Tail - TM23
  (241, 24100, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 26),
  -- Miltank - Thunderbolt - TM24
  (241, 24100, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 27),
  -- Miltank - Thunder - TM25
  (241, 24100, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 28),
  -- Miltank - Earthquake - TM26
  (241, 24100, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 29),
  -- Miltank - Return - TM27
  (241, 24100, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 30),
  -- Miltank - Shadow Ball - TM30
  (241, 24100, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 31),
  -- Miltank - Brick Break - TM31
  (241, 24100, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 32),
  -- Miltank - Double Team - TM32
  (241, 24100, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 33),
  -- Miltank - Shock Wave - TM34
  (241, 24100, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 34),
  -- Miltank - Sandstorm - TM37
  (241, 24100, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 35),
  -- Miltank - Rock Tomb - TM39
  (241, 24100, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 36),
  -- Miltank - Facade - TM42
  (241, 24100, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 37),
  -- Miltank - Secret Power - TM43
  (241, 24100, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 38),
  -- Miltank - Rest - TM44
  (241, 24100, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 39),
  -- Miltank - Attract - TM45
  (241, 24100, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 40),
  -- Miltank - Focus Blast - TM52
  (241, 24100, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 41),
  -- Miltank - Fling - TM56
  (241, 24100, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 42),
  -- Miltank - Endure - TM58
  (241, 24100, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 43),
  -- Miltank - Giga Impact - TM68
  (241, 24100, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 44),
  -- Miltank - Thunder Wave - TM73
  (241, 24100, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 45),
  -- Miltank - Gyro Ball - TM74
  (241, 24100, 360, 9, NULL, 2, NULL, NULL, 9002074, NULL, 46),
  -- Miltank - Stealth Rock - TM76
  (241, 24100, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 47),
  -- Miltank - Psych Up - TM77
  (241, 24100, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 48),
  -- Miltank - Captivate - TM78
  (241, 24100, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 49),
  -- Miltank - Rock Slide - TM80
  (241, 24100, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 50),
  -- Miltank - Sleep Talk - TM82
  (241, 24100, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 51),
  -- Miltank - Natural Gift - TM83
  (241, 24100, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 52),
  -- Miltank - Swagger - TM87
  (241, 24100, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 53),
  -- Miltank - Substitute - TM90
  (241, 24100, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 54),
  -- Miltank - Surf - HM03
  (241, 24100, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 55),
  -- Miltank - Strength - HM04
  (241, 24100, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 56),
  -- Miltank - Defog - HM05
  (241, 24100, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 57),
  -- Miltank - Rock Smash - HM06
  (241, 24100, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 58),
  -- Miltank - Double-Edge - Egg
  (241, 24100, 38, 9, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Miltank - Seismic Toss - Egg
  (241, 24100, 69, 9, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Miltank - Dizzy Punch - Egg
  (241, 24100, 146, 9, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Miltank - Curse - Egg
  (241, 24100, 174, 9, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Miltank - Reversal - Egg
  (241, 24100, 179, 9, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Miltank - Endure - Egg
  (241, 24100, 203, 9, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Miltank - Sleep Talk - Egg
  (241, 24100, 214, 9, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Miltank - Present - Egg
  (241, 24100, 217, 9, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Miltank - Psych Up - Egg
  (241, 24100, 244, 9, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Miltank - Helping Hand - Egg
  (241, 24100, 270, 9, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Miltank - Hammer Arm - Egg
  (241, 24100, 359, 9, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Miltank - Punishment - Egg
  (241, 24100, 386, 9, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Miltank - Fire Punch - Tutor
  (241, 24100, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Miltank - Ice Punch - Tutor
  (241, 24100, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Miltank - Thunder Punch - Tutor
  (241, 24100, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Miltank - Snore - Tutor
  (241, 24100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Miltank - Mud-Slap - Tutor
  (241, 24100, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Miltank - Icy Wind - Tutor
  (241, 24100, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Miltank - Rollout - Tutor
  (241, 24100, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Miltank - Helping Hand - Tutor
  (241, 24100, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 78),
  -- Miltank - Zen Headbutt - Tutor
  (241, 24100, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 79),
  -- Miltank - Iron Head - Tutor
  (241, 24100, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 80),
  -- Blissey - Pound - Level 1
  (242, 24200, 1, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Blissey - Growl - Level 1
  (242, 24200, 45, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Blissey - Tail Whip - Level 5
  (242, 24200, 39, 9, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Blissey - Refresh - Level 9
  (242, 24200, 287, 9, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Blissey - Soft-Boiled - Level 12
  (242, 24200, 135, 9, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Blissey - Double Slap - Level 16
  (242, 24200, 3, 9, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Blissey - Minimize - Level 20
  (242, 24200, 107, 9, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Blissey - Sing - Level 23
  (242, 24200, 47, 9, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Blissey - Fling - Level 27
  (242, 24200, 374, 9, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Blissey - Defense Curl - Level 31
  (242, 24200, 111, 9, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Blissey - Light Screen - Level 34
  (242, 24200, 113, 9, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Blissey - Egg Bomb - Level 38
  (242, 24200, 121, 9, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Blissey - Healing Wish - Level 42
  (242, 24200, 361, 9, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Blissey - Double-Edge - Level 46
  (242, 24200, 38, 9, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Blissey - Focus Punch - TM01
  (242, 24200, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 15),
  -- Blissey - Water Pulse - TM03
  (242, 24200, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 16),
  -- Blissey - Calm Mind - TM04
  (242, 24200, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 17),
  -- Blissey - Toxic - TM06
  (242, 24200, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Blissey - Hail - TM07
  (242, 24200, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 19),
  -- Blissey - Hidden Power - TM10
  (242, 24200, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 20),
  -- Blissey - Sunny Day - TM11
  (242, 24200, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 21),
  -- Blissey - Ice Beam - TM13
  (242, 24200, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 22),
  -- Blissey - Blizzard - TM14
  (242, 24200, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 23),
  -- Blissey - Hyper Beam - TM15
  (242, 24200, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 24),
  -- Blissey - Light Screen - TM16
  (242, 24200, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 25),
  -- Blissey - Protect - TM17
  (242, 24200, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 26),
  -- Blissey - Rain Dance - TM18
  (242, 24200, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 27),
  -- Blissey - Safeguard - TM20
  (242, 24200, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 28),
  -- Blissey - Frustration - TM21
  (242, 24200, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 29),
  -- Blissey - Solar Beam - TM22
  (242, 24200, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 30),
  -- Blissey - Iron Tail - TM23
  (242, 24200, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 31),
  -- Blissey - Thunderbolt - TM24
  (242, 24200, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 32),
  -- Blissey - Thunder - TM25
  (242, 24200, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 33),
  -- Blissey - Earthquake - TM26
  (242, 24200, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 34),
  -- Blissey - Return - TM27
  (242, 24200, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 35),
  -- Blissey - Psychic - TM29
  (242, 24200, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 36),
  -- Blissey - Shadow Ball - TM30
  (242, 24200, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 37),
  -- Blissey - Brick Break - TM31
  (242, 24200, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 38),
  -- Blissey - Double Team - TM32
  (242, 24200, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 39),
  -- Blissey - Shock Wave - TM34
  (242, 24200, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 40),
  -- Blissey - Flamethrower - TM35
  (242, 24200, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 41),
  -- Blissey - Sandstorm - TM37
  (242, 24200, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 42),
  -- Blissey - Fire Blast - TM38
  (242, 24200, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 43),
  -- Blissey - Rock Tomb - TM39
  (242, 24200, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 44),
  -- Blissey - Facade - TM42
  (242, 24200, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 45),
  -- Blissey - Secret Power - TM43
  (242, 24200, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 46),
  -- Blissey - Rest - TM44
  (242, 24200, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 47),
  -- Blissey - Attract - TM45
  (242, 24200, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 48),
  -- Blissey - Skill Swap - TM48
  (242, 24200, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 49),
  -- Blissey - Snatch - TM49
  (242, 24200, 289, 9, NULL, 2, NULL, NULL, 9002049, NULL, 50),
  -- Blissey - Focus Blast - TM52
  (242, 24200, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 51),
  -- Blissey - Fling - TM56
  (242, 24200, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 52),
  -- Blissey - Charge Beam - TM57
  (242, 24200, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 53),
  -- Blissey - Endure - TM58
  (242, 24200, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 54),
  -- Blissey - Drain Punch - TM60
  (242, 24200, 409, 9, NULL, 2, NULL, NULL, 9002060, NULL, 55),
  -- Blissey - Recycle - TM67
  (242, 24200, 278, 9, NULL, 2, NULL, NULL, 9002067, NULL, 56),
  -- Blissey - Giga Impact - TM68
  (242, 24200, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 57),
  -- Blissey - Flash - TM70
  (242, 24200, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 58),
  -- Blissey - Avalanche - TM72
  (242, 24200, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 59),
  -- Blissey - Thunder Wave - TM73
  (242, 24200, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 60),
  -- Blissey - Stealth Rock - TM76
  (242, 24200, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 61),
  -- Blissey - Psych Up - TM77
  (242, 24200, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 62),
  -- Blissey - Captivate - TM78
  (242, 24200, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 63),
  -- Blissey - Rock Slide - TM80
  (242, 24200, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 64),
  -- Blissey - Sleep Talk - TM82
  (242, 24200, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 65),
  -- Blissey - Natural Gift - TM83
  (242, 24200, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 66),
  -- Blissey - Dream Eater - TM85
  (242, 24200, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 67),
  -- Blissey - Grass Knot - TM86
  (242, 24200, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 68),
  -- Blissey - Swagger - TM87
  (242, 24200, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 69),
  -- Blissey - Substitute - TM90
  (242, 24200, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 70),
  -- Blissey - Strength - HM04
  (242, 24200, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 71),
  -- Blissey - Rock Smash - HM06
  (242, 24200, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 72),
  -- Blissey - Rock Climb - HM08
  (242, 24200, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 73),
  -- Blissey - Fire Punch - Tutor
  (242, 24200, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Blissey - Ice Punch - Tutor
  (242, 24200, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Blissey - Thunder Punch - Tutor
  (242, 24200, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Blissey - Snore - Tutor
  (242, 24200, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Blissey - Mud-Slap - Tutor
  (242, 24200, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 78),
  -- Blissey - Icy Wind - Tutor
  (242, 24200, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 79),
  -- Blissey - Rollout - Tutor
  (242, 24200, 205, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 80),
  -- Blissey - Helping Hand - Tutor
  (242, 24200, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 81),
  -- Blissey - Endeavor - Tutor
  (242, 24200, 283, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 82),
  -- Blissey - Last Resort - Tutor
  (242, 24200, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 83),
  -- Blissey - Zen Headbutt - Tutor
  (242, 24200, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 84),
  -- Raikou - Leer - Level 1
  (243, 24300, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Raikou - Bite - Level 1
  (243, 24300, 44, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Raikou - Thunder Shock - Level 8
  (243, 24300, 84, 9, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Raikou - Roar - Level 15
  (243, 24300, 46, 9, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Raikou - Quick Attack - Level 22
  (243, 24300, 98, 9, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Raikou - Spark - Level 29
  (243, 24300, 209, 9, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Raikou - Reflect - Level 36
  (243, 24300, 115, 9, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Raikou - Crunch - Level 43
  (243, 24300, 242, 9, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Raikou - Thunder Fang - Level 50
  (243, 24300, 422, 9, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Raikou - Discharge - Level 57
  (243, 24300, 435, 9, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Raikou - Extrasensory - Level 64
  (243, 24300, 326, 9, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Raikou - Rain Dance - Level 71
  (243, 24300, 240, 9, NULL, 1, 71, NULL, NULL, NULL, 12),
  -- Raikou - Calm Mind - Level 78
  (243, 24300, 347, 9, NULL, 1, 78, NULL, NULL, NULL, 13),
  -- Raikou - Thunder - Level 85
  (243, 24300, 87, 9, NULL, 1, 85, NULL, NULL, NULL, 14),
  -- Raikou - Calm Mind - TM04
  (243, 24300, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 15),
  -- Raikou - Roar - TM05
  (243, 24300, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 16),
  -- Raikou - Toxic - TM06
  (243, 24300, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Raikou - Hidden Power - TM10
  (243, 24300, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Raikou - Sunny Day - TM11
  (243, 24300, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 19),
  -- Raikou - Hyper Beam - TM15
  (243, 24300, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 20),
  -- Raikou - Light Screen - TM16
  (243, 24300, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 21),
  -- Raikou - Protect - TM17
  (243, 24300, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 22),
  -- Raikou - Rain Dance - TM18
  (243, 24300, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 23),
  -- Raikou - Frustration - TM21
  (243, 24300, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 24),
  -- Raikou - Iron Tail - TM23
  (243, 24300, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 25),
  -- Raikou - Thunderbolt - TM24
  (243, 24300, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 26),
  -- Raikou - Thunder - TM25
  (243, 24300, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 27),
  -- Raikou - Return - TM27
  (243, 24300, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 28),
  -- Raikou - Dig - TM28
  (243, 24300, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 29),
  -- Raikou - Shadow Ball - TM30
  (243, 24300, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 30),
  -- Raikou - Double Team - TM32
  (243, 24300, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 31),
  -- Raikou - Reflect - TM33
  (243, 24300, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 32),
  -- Raikou - Shock Wave - TM34
  (243, 24300, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 33),
  -- Raikou - Sandstorm - TM37
  (243, 24300, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 34),
  -- Raikou - Facade - TM42
  (243, 24300, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 35),
  -- Raikou - Secret Power - TM43
  (243, 24300, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 36),
  -- Raikou - Rest - TM44
  (243, 24300, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 37),
  -- Raikou - Charge Beam - TM57
  (243, 24300, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 38),
  -- Raikou - Endure - TM58
  (243, 24300, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 39),
  -- Raikou - Giga Impact - TM68
  (243, 24300, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 40),
  -- Raikou - Flash - TM70
  (243, 24300, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 41),
  -- Raikou - Thunder Wave - TM73
  (243, 24300, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 42),
  -- Raikou - Psych Up - TM77
  (243, 24300, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 43),
  -- Raikou - Sleep Talk - TM82
  (243, 24300, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 44),
  -- Raikou - Natural Gift - TM83
  (243, 24300, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 45),
  -- Raikou - Swagger - TM87
  (243, 24300, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 46),
  -- Raikou - Substitute - TM90
  (243, 24300, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 47),
  -- Raikou - Cut - HM01
  (243, 24300, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 48),
  -- Raikou - Strength - HM04
  (243, 24300, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 49),
  -- Raikou - Rock Smash - HM06
  (243, 24300, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 50),
  -- Raikou - Rock Climb - HM08
  (243, 24300, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 51),
  -- Raikou - Swift - Tutor
  (243, 24300, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Raikou - Snore - Tutor
  (243, 24300, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Raikou - Mud-Slap - Tutor
  (243, 24300, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Raikou - Signal Beam - Tutor
  (243, 24300, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Raikou - Magnet Rise - Tutor
  (243, 24300, 393, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Raikou - Iron Head - Tutor
  (243, 24300, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Entei - Leer - Level 1
  (244, 24400, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Entei - Bite - Level 1
  (244, 24400, 44, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Entei - Ember - Level 8
  (244, 24400, 52, 9, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Entei - Roar - Level 15
  (244, 24400, 46, 9, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Entei - Fire Spin - Level 22
  (244, 24400, 83, 9, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Entei - Stomp - Level 29
  (244, 24400, 23, 9, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Entei - Flamethrower - Level 36
  (244, 24400, 53, 9, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Entei - Swagger - Level 43
  (244, 24400, 207, 9, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Entei - Fire Fang - Level 50
  (244, 24400, 424, 9, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Entei - Lava Plume - Level 57
  (244, 24400, 436, 9, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Entei - Extrasensory - Level 64
  (244, 24400, 326, 9, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Entei - Fire Blast - Level 71
  (244, 24400, 126, 9, NULL, 1, 71, NULL, NULL, NULL, 12),
  -- Entei - Calm Mind - Level 78
  (244, 24400, 347, 9, NULL, 1, 78, NULL, NULL, NULL, 13),
  -- Entei - Eruption - Level 85
  (244, 24400, 284, 9, NULL, 1, 85, NULL, NULL, NULL, 14),
  -- Entei - Calm Mind - TM04
  (244, 24400, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 15),
  -- Entei - Roar - TM05
  (244, 24400, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 16),
  -- Entei - Toxic - TM06
  (244, 24400, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Entei - Hidden Power - TM10
  (244, 24400, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Entei - Sunny Day - TM11
  (244, 24400, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 19),
  -- Entei - Hyper Beam - TM15
  (244, 24400, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 20),
  -- Entei - Protect - TM17
  (244, 24400, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Entei - Rain Dance - TM18
  (244, 24400, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 22),
  -- Entei - Frustration - TM21
  (244, 24400, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Entei - Solar Beam - TM22
  (244, 24400, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 24),
  -- Entei - Iron Tail - TM23
  (244, 24400, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 25),
  -- Entei - Return - TM27
  (244, 24400, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 26),
  -- Entei - Dig - TM28
  (244, 24400, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 27),
  -- Entei - Shadow Ball - TM30
  (244, 24400, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 28),
  -- Entei - Double Team - TM32
  (244, 24400, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 29),
  -- Entei - Reflect - TM33
  (244, 24400, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 30),
  -- Entei - Flamethrower - TM35
  (244, 24400, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 31),
  -- Entei - Sandstorm - TM37
  (244, 24400, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 32),
  -- Entei - Fire Blast - TM38
  (244, 24400, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 33),
  -- Entei - Facade - TM42
  (244, 24400, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 34),
  -- Entei - Secret Power - TM43
  (244, 24400, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 35),
  -- Entei - Rest - TM44
  (244, 24400, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 36),
  -- Entei - Overheat - TM50
  (244, 24400, 315, 9, NULL, 2, NULL, NULL, 9002050, NULL, 37),
  -- Entei - Endure - TM58
  (244, 24400, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 38),
  -- Entei - Will-O-Wisp - TM61
  (244, 24400, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 39),
  -- Entei - Giga Impact - TM68
  (244, 24400, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 40),
  -- Entei - Flash - TM70
  (244, 24400, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 41),
  -- Entei - Stone Edge - TM71
  (244, 24400, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 42),
  -- Entei - Psych Up - TM77
  (244, 24400, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 43),
  -- Entei - Sleep Talk - TM82
  (244, 24400, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 44),
  -- Entei - Natural Gift - TM83
  (244, 24400, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 45),
  -- Entei - Swagger - TM87
  (244, 24400, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 46),
  -- Entei - Substitute - TM90
  (244, 24400, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 47),
  -- Entei - Cut - HM01
  (244, 24400, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 48),
  -- Entei - Strength - HM04
  (244, 24400, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 49),
  -- Entei - Rock Smash - HM06
  (244, 24400, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 50),
  -- Entei - Rock Climb - HM08
  (244, 24400, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 51),
  -- Entei - Swift - Tutor
  (244, 24400, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Entei - Snore - Tutor
  (244, 24400, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Entei - Mud-Slap - Tutor
  (244, 24400, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Entei - Heat Wave - Tutor
  (244, 24400, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Entei - Iron Head - Tutor
  (244, 24400, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Suicune - Leer - Level 1
  (245, 24500, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Suicune - Bite - Level 1
  (245, 24500, 44, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Suicune - Bubble Beam - Level 8
  (245, 24500, 61, 9, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Suicune - Rain Dance - Level 15
  (245, 24500, 240, 9, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Suicune - Gust - Level 22
  (245, 24500, 16, 9, NULL, 1, 22, NULL, NULL, NULL, 5),
  -- Suicune - Aurora Beam - Level 29
  (245, 24500, 62, 9, NULL, 1, 29, NULL, NULL, NULL, 6),
  -- Suicune - Mist - Level 36
  (245, 24500, 54, 9, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Suicune - Mirror Coat - Level 43
  (245, 24500, 243, 9, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Suicune - Ice Fang - Level 50
  (245, 24500, 423, 9, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Suicune - Tailwind - Level 57
  (245, 24500, 366, 9, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Suicune - Extrasensory - Level 64
  (245, 24500, 326, 9, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Suicune - Hydro Pump - Level 71
  (245, 24500, 56, 9, NULL, 1, 71, NULL, NULL, NULL, 12),
  -- Suicune - Calm Mind - Level 78
  (245, 24500, 347, 9, NULL, 1, 78, NULL, NULL, NULL, 13),
  -- Suicune - Blizzard - Level 85
  (245, 24500, 59, 9, NULL, 1, 85, NULL, NULL, NULL, 14),
  -- Suicune - Water Pulse - TM03
  (245, 24500, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 15),
  -- Suicune - Calm Mind - TM04
  (245, 24500, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 16),
  -- Suicune - Roar - TM05
  (245, 24500, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 17),
  -- Suicune - Toxic - TM06
  (245, 24500, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Suicune - Hail - TM07
  (245, 24500, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 19),
  -- Suicune - Hidden Power - TM10
  (245, 24500, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 20),
  -- Suicune - Sunny Day - TM11
  (245, 24500, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 21),
  -- Suicune - Ice Beam - TM13
  (245, 24500, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 22),
  -- Suicune - Blizzard - TM14
  (245, 24500, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 23),
  -- Suicune - Hyper Beam - TM15
  (245, 24500, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 24),
  -- Suicune - Protect - TM17
  (245, 24500, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 25),
  -- Suicune - Rain Dance - TM18
  (245, 24500, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 26),
  -- Suicune - Frustration - TM21
  (245, 24500, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 27),
  -- Suicune - Iron Tail - TM23
  (245, 24500, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 28),
  -- Suicune - Return - TM27
  (245, 24500, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 29),
  -- Suicune - Dig - TM28
  (245, 24500, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 30),
  -- Suicune - Shadow Ball - TM30
  (245, 24500, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 31),
  -- Suicune - Double Team - TM32
  (245, 24500, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 32),
  -- Suicune - Reflect - TM33
  (245, 24500, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 33),
  -- Suicune - Sandstorm - TM37
  (245, 24500, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 34),
  -- Suicune - Facade - TM42
  (245, 24500, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 35),
  -- Suicune - Secret Power - TM43
  (245, 24500, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 36),
  -- Suicune - Rest - TM44
  (245, 24500, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 37),
  -- Suicune - Brine - TM55
  (245, 24500, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 38),
  -- Suicune - Endure - TM58
  (245, 24500, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 39),
  -- Suicune - Giga Impact - TM68
  (245, 24500, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 40),
  -- Suicune - Avalanche - TM72
  (245, 24500, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 41),
  -- Suicune - Psych Up - TM77
  (245, 24500, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 42),
  -- Suicune - Sleep Talk - TM82
  (245, 24500, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 43),
  -- Suicune - Natural Gift - TM83
  (245, 24500, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 44),
  -- Suicune - Swagger - TM87
  (245, 24500, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 45),
  -- Suicune - Substitute - TM90
  (245, 24500, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 46),
  -- Suicune - Cut - HM01
  (245, 24500, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 47),
  -- Suicune - Surf - HM03
  (245, 24500, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 48),
  -- Suicune - Rock Smash - HM06
  (245, 24500, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 49),
  -- Suicune - Waterfall - HM07
  (245, 24500, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 50),
  -- Suicune - Rock Climb - HM08
  (245, 24500, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 51),
  -- Suicune - Swift - Tutor
  (245, 24500, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Suicune - Snore - Tutor
  (245, 24500, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Suicune - Mud-Slap - Tutor
  (245, 24500, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Suicune - Icy Wind - Tutor
  (245, 24500, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Suicune - Dive - Tutor
  (245, 24500, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Suicune - Signal Beam - Tutor
  (245, 24500, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Suicune - Iron Head - Tutor
  (245, 24500, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Suicune - Ominous Wind - Tutor
  (245, 24500, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Larvitar - Leer - Level 1
  (246, 24600, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Larvitar - Bite - Level 1
  (246, 24600, 44, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Larvitar - Sandstorm - Level 5
  (246, 24600, 201, 9, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Larvitar - Screech - Level 10
  (246, 24600, 103, 9, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Larvitar - Rock Slide - Level 14
  (246, 24600, 157, 9, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Larvitar - Scary Face - Level 19
  (246, 24600, 184, 9, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Larvitar - Thrash - Level 23
  (246, 24600, 37, 9, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Larvitar - Dark Pulse - Level 28
  (246, 24600, 399, 9, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Larvitar - Payback - Level 32
  (246, 24600, 371, 9, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Larvitar - Crunch - Level 37
  (246, 24600, 242, 9, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Larvitar - Earthquake - Level 41
  (246, 24600, 89, 9, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Larvitar - Stone Edge - Level 46
  (246, 24600, 444, 9, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Larvitar - Hyper Beam - Level 50
  (246, 24600, 63, 9, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Larvitar - Toxic - TM06
  (246, 24600, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 14),
  -- Larvitar - Hidden Power - TM10
  (246, 24600, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 15),
  -- Larvitar - Sunny Day - TM11
  (246, 24600, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 16),
  -- Larvitar - Taunt - TM12
  (246, 24600, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 17),
  -- Larvitar - Hyper Beam - TM15
  (246, 24600, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 18),
  -- Larvitar - Protect - TM17
  (246, 24600, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 19),
  -- Larvitar - Rain Dance - TM18
  (246, 24600, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 20),
  -- Larvitar - Frustration - TM21
  (246, 24600, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 21),
  -- Larvitar - Earthquake - TM26
  (246, 24600, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 22),
  -- Larvitar - Return - TM27
  (246, 24600, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 23),
  -- Larvitar - Dig - TM28
  (246, 24600, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 24),
  -- Larvitar - Brick Break - TM31
  (246, 24600, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 25),
  -- Larvitar - Double Team - TM32
  (246, 24600, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 26),
  -- Larvitar - Sandstorm - TM37
  (246, 24600, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 27),
  -- Larvitar - Rock Tomb - TM39
  (246, 24600, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 28),
  -- Larvitar - Torment - TM41
  (246, 24600, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 29),
  -- Larvitar - Facade - TM42
  (246, 24600, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 30),
  -- Larvitar - Secret Power - TM43
  (246, 24600, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 31),
  -- Larvitar - Rest - TM44
  (246, 24600, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 32),
  -- Larvitar - Attract - TM45
  (246, 24600, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 33),
  -- Larvitar - Endure - TM58
  (246, 24600, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 34),
  -- Larvitar - Payback - TM66
  (246, 24600, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 35),
  -- Larvitar - Rock Polish - TM69
  (246, 24600, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 36),
  -- Larvitar - Stone Edge - TM71
  (246, 24600, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 37),
  -- Larvitar - Stealth Rock - TM76
  (246, 24600, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 38),
  -- Larvitar - Captivate - TM78
  (246, 24600, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 39),
  -- Larvitar - Dark Pulse - TM79
  (246, 24600, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 40),
  -- Larvitar - Rock Slide - TM80
  (246, 24600, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 41),
  -- Larvitar - Sleep Talk - TM82
  (246, 24600, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 42),
  -- Larvitar - Natural Gift - TM83
  (246, 24600, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 43),
  -- Larvitar - Swagger - TM87
  (246, 24600, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 44),
  -- Larvitar - Substitute - TM90
  (246, 24600, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 45),
  -- Larvitar - Rock Smash - HM06
  (246, 24600, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 46),
  -- Larvitar - Stomp - Egg
  (246, 24600, 23, 9, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Larvitar - Focus Energy - Egg
  (246, 24600, 116, 9, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Larvitar - Curse - Egg
  (246, 24600, 174, 9, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Larvitar - Outrage - Egg
  (246, 24600, 200, 9, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Larvitar - Pursuit - Egg
  (246, 24600, 228, 9, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Larvitar - Ancient Power - Egg
  (246, 24600, 246, 9, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Larvitar - Iron Defense - Egg
  (246, 24600, 334, 9, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Larvitar - Dragon Dance - Egg
  (246, 24600, 349, 9, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Larvitar - Assurance - Egg
  (246, 24600, 372, 9, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Larvitar - Iron Head - Egg
  (246, 24600, 442, 9, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Larvitar - Snore - Tutor
  (246, 24600, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Larvitar - Spite - Tutor
  (246, 24600, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 58),
  -- Larvitar - Mud-Slap - Tutor
  (246, 24600, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 59),
  -- Larvitar - Ancient Power - Tutor
  (246, 24600, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Larvitar - Uproar - Tutor
  (246, 24600, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Larvitar - Superpower - Tutor
  (246, 24600, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Larvitar - Earth Power - Tutor
  (246, 24600, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Larvitar - Iron Head - Tutor
  (246, 24600, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Pupitar - Leer - Level 1
  (247, 24700, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pupitar - Bite - Level 1
  (247, 24700, 44, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pupitar - Screech - Level 1
  (247, 24700, 103, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Pupitar - Sandstorm - Level 1
  (247, 24700, 201, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Pupitar - Sandstorm - Level 5
  (247, 24700, 201, 9, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Pupitar - Screech - Level 10
  (247, 24700, 103, 9, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Pupitar - Rock Slide - Level 14
  (247, 24700, 157, 9, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Pupitar - Scary Face - Level 19
  (247, 24700, 184, 9, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Pupitar - Thrash - Level 23
  (247, 24700, 37, 9, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Pupitar - Dark Pulse - Level 28
  (247, 24700, 399, 9, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Pupitar - Payback - Level 34
  (247, 24700, 371, 9, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Pupitar - Crunch - Level 41
  (247, 24700, 242, 9, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Pupitar - Earthquake - Level 47
  (247, 24700, 89, 9, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Pupitar - Stone Edge - Level 54
  (247, 24700, 444, 9, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Pupitar - Hyper Beam - Level 60
  (247, 24700, 63, 9, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Pupitar - Toxic - TM06
  (247, 24700, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 16),
  -- Pupitar - Hidden Power - TM10
  (247, 24700, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 17),
  -- Pupitar - Sunny Day - TM11
  (247, 24700, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 18),
  -- Pupitar - Taunt - TM12
  (247, 24700, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 19),
  -- Pupitar - Hyper Beam - TM15
  (247, 24700, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 20),
  -- Pupitar - Protect - TM17
  (247, 24700, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 21),
  -- Pupitar - Rain Dance - TM18
  (247, 24700, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 22),
  -- Pupitar - Frustration - TM21
  (247, 24700, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 23),
  -- Pupitar - Earthquake - TM26
  (247, 24700, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 24),
  -- Pupitar - Return - TM27
  (247, 24700, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 25),
  -- Pupitar - Dig - TM28
  (247, 24700, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 26),
  -- Pupitar - Brick Break - TM31
  (247, 24700, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 27),
  -- Pupitar - Double Team - TM32
  (247, 24700, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 28),
  -- Pupitar - Sandstorm - TM37
  (247, 24700, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 29),
  -- Pupitar - Rock Tomb - TM39
  (247, 24700, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 30),
  -- Pupitar - Torment - TM41
  (247, 24700, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 31),
  -- Pupitar - Facade - TM42
  (247, 24700, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 32),
  -- Pupitar - Secret Power - TM43
  (247, 24700, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 33),
  -- Pupitar - Rest - TM44
  (247, 24700, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 34),
  -- Pupitar - Attract - TM45
  (247, 24700, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 35),
  -- Pupitar - Endure - TM58
  (247, 24700, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 36),
  -- Pupitar - Payback - TM66
  (247, 24700, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 37),
  -- Pupitar - Rock Polish - TM69
  (247, 24700, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 38),
  -- Pupitar - Stone Edge - TM71
  (247, 24700, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 39),
  -- Pupitar - Stealth Rock - TM76
  (247, 24700, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 40),
  -- Pupitar - Captivate - TM78
  (247, 24700, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 41),
  -- Pupitar - Dark Pulse - TM79
  (247, 24700, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 42),
  -- Pupitar - Rock Slide - TM80
  (247, 24700, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 43),
  -- Pupitar - Sleep Talk - TM82
  (247, 24700, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 44),
  -- Pupitar - Natural Gift - TM83
  (247, 24700, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 45),
  -- Pupitar - Swagger - TM87
  (247, 24700, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 46),
  -- Pupitar - Substitute - TM90
  (247, 24700, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 47),
  -- Pupitar - Rock Smash - HM06
  (247, 24700, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 48),
  -- Pupitar - Snore - Tutor
  (247, 24700, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 49),
  -- Pupitar - Spite - Tutor
  (247, 24700, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 50),
  -- Pupitar - Mud-Slap - Tutor
  (247, 24700, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 51),
  -- Pupitar - Ancient Power - Tutor
  (247, 24700, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 52),
  -- Pupitar - Uproar - Tutor
  (247, 24700, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 53),
  -- Pupitar - Superpower - Tutor
  (247, 24700, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 54),
  -- Pupitar - Iron Defense - Tutor
  (247, 24700, 334, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 55),
  -- Pupitar - Earth Power - Tutor
  (247, 24700, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 56),
  -- Pupitar - Iron Head - Tutor
  (247, 24700, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 57),
  -- Tyranitar - Leer - Level 1
  (248, 24800, 43, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tyranitar - Bite - Level 1
  (248, 24800, 44, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tyranitar - Screech - Level 1
  (248, 24800, 103, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tyranitar - Sandstorm - Level 1
  (248, 24800, 201, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tyranitar - Thunder Fang - Level 1
  (248, 24800, 422, 9, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Tyranitar - Ice Fang - Level 1
  (248, 24800, 423, 9, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Tyranitar - Fire Fang - Level 1
  (248, 24800, 424, 9, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Tyranitar - Sandstorm - Level 5
  (248, 24800, 201, 9, NULL, 1, 5, NULL, NULL, NULL, 8),
  -- Tyranitar - Screech - Level 10
  (248, 24800, 103, 9, NULL, 1, 10, NULL, NULL, NULL, 9),
  -- Tyranitar - Rock Slide - Level 14
  (248, 24800, 157, 9, NULL, 1, 14, NULL, NULL, NULL, 10),
  -- Tyranitar - Scary Face - Level 19
  (248, 24800, 184, 9, NULL, 1, 19, NULL, NULL, NULL, 11),
  -- Tyranitar - Thrash - Level 23
  (248, 24800, 37, 9, NULL, 1, 23, NULL, NULL, NULL, 12),
  -- Tyranitar - Dark Pulse - Level 28
  (248, 24800, 399, 9, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Tyranitar - Payback - Level 34
  (248, 24800, 371, 9, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Tyranitar - Crunch - Level 41
  (248, 24800, 242, 9, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Tyranitar - Earthquake - Level 47
  (248, 24800, 89, 9, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Tyranitar - Stone Edge - Level 54
  (248, 24800, 444, 9, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Tyranitar - Hyper Beam - Level 70
  (248, 24800, 63, 9, NULL, 1, 70, NULL, NULL, NULL, 18),
  -- Tyranitar - Focus Punch - TM01
  (248, 24800, 264, 9, NULL, 2, NULL, NULL, 9002001, NULL, 19),
  -- Tyranitar - Dragon Claw - TM02
  (248, 24800, 337, 9, NULL, 2, NULL, NULL, 9002002, NULL, 20),
  -- Tyranitar - Water Pulse - TM03
  (248, 24800, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 21),
  -- Tyranitar - Roar - TM05
  (248, 24800, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 22),
  -- Tyranitar - Toxic - TM06
  (248, 24800, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 23),
  -- Tyranitar - Hidden Power - TM10
  (248, 24800, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 24),
  -- Tyranitar - Sunny Day - TM11
  (248, 24800, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 25),
  -- Tyranitar - Taunt - TM12
  (248, 24800, 269, 9, NULL, 2, NULL, NULL, 9002012, NULL, 26),
  -- Tyranitar - Ice Beam - TM13
  (248, 24800, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 27),
  -- Tyranitar - Blizzard - TM14
  (248, 24800, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 28),
  -- Tyranitar - Hyper Beam - TM15
  (248, 24800, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 29),
  -- Tyranitar - Protect - TM17
  (248, 24800, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 30),
  -- Tyranitar - Rain Dance - TM18
  (248, 24800, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 31),
  -- Tyranitar - Frustration - TM21
  (248, 24800, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 32),
  -- Tyranitar - Iron Tail - TM23
  (248, 24800, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 33),
  -- Tyranitar - Thunderbolt - TM24
  (248, 24800, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 34),
  -- Tyranitar - Thunder - TM25
  (248, 24800, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 35),
  -- Tyranitar - Earthquake - TM26
  (248, 24800, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 36),
  -- Tyranitar - Return - TM27
  (248, 24800, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 37),
  -- Tyranitar - Dig - TM28
  (248, 24800, 91, 9, NULL, 2, NULL, NULL, 9002028, NULL, 38),
  -- Tyranitar - Brick Break - TM31
  (248, 24800, 280, 9, NULL, 2, NULL, NULL, 9002031, NULL, 39),
  -- Tyranitar - Double Team - TM32
  (248, 24800, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 40),
  -- Tyranitar - Shock Wave - TM34
  (248, 24800, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 41),
  -- Tyranitar - Flamethrower - TM35
  (248, 24800, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 42),
  -- Tyranitar - Sandstorm - TM37
  (248, 24800, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 43),
  -- Tyranitar - Fire Blast - TM38
  (248, 24800, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 44),
  -- Tyranitar - Rock Tomb - TM39
  (248, 24800, 317, 9, NULL, 2, NULL, NULL, 9002039, NULL, 45),
  -- Tyranitar - Aerial Ace - TM40
  (248, 24800, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 46),
  -- Tyranitar - Torment - TM41
  (248, 24800, 259, 9, NULL, 2, NULL, NULL, 9002041, NULL, 47),
  -- Tyranitar - Facade - TM42
  (248, 24800, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 48),
  -- Tyranitar - Secret Power - TM43
  (248, 24800, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 49),
  -- Tyranitar - Rest - TM44
  (248, 24800, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 50),
  -- Tyranitar - Attract - TM45
  (248, 24800, 213, 9, NULL, 2, NULL, NULL, 9002045, NULL, 51),
  -- Tyranitar - Focus Blast - TM52
  (248, 24800, 411, 9, NULL, 2, NULL, NULL, 9002052, NULL, 52),
  -- Tyranitar - Fling - TM56
  (248, 24800, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 53),
  -- Tyranitar - Endure - TM58
  (248, 24800, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 54),
  -- Tyranitar - Dragon Pulse - TM59
  (248, 24800, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 55),
  -- Tyranitar - Shadow Claw - TM65
  (248, 24800, 421, 9, NULL, 2, NULL, NULL, 9002065, NULL, 56),
  -- Tyranitar - Payback - TM66
  (248, 24800, 371, 9, NULL, 2, NULL, NULL, 9002066, NULL, 57),
  -- Tyranitar - Giga Impact - TM68
  (248, 24800, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 58),
  -- Tyranitar - Rock Polish - TM69
  (248, 24800, 397, 9, NULL, 2, NULL, NULL, 9002069, NULL, 59),
  -- Tyranitar - Stone Edge - TM71
  (248, 24800, 444, 9, NULL, 2, NULL, NULL, 9002071, NULL, 60),
  -- Tyranitar - Avalanche - TM72
  (248, 24800, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 61),
  -- Tyranitar - Thunder Wave - TM73
  (248, 24800, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 62),
  -- Tyranitar - Stealth Rock - TM76
  (248, 24800, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 63),
  -- Tyranitar - Captivate - TM78
  (248, 24800, 445, 9, NULL, 2, NULL, NULL, 9002078, NULL, 64),
  -- Tyranitar - Dark Pulse - TM79
  (248, 24800, 399, 9, NULL, 2, NULL, NULL, 9002079, NULL, 65),
  -- Tyranitar - Rock Slide - TM80
  (248, 24800, 157, 9, NULL, 2, NULL, NULL, 9002080, NULL, 66),
  -- Tyranitar - Sleep Talk - TM82
  (248, 24800, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 67),
  -- Tyranitar - Natural Gift - TM83
  (248, 24800, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 68),
  -- Tyranitar - Swagger - TM87
  (248, 24800, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 69),
  -- Tyranitar - Substitute - TM90
  (248, 24800, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 70),
  -- Tyranitar - Cut - HM01
  (248, 24800, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 71),
  -- Tyranitar - Surf - HM03
  (248, 24800, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 72),
  -- Tyranitar - Strength - HM04
  (248, 24800, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 73),
  -- Tyranitar - Defog - HM05
  (248, 24800, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 74),
  -- Tyranitar - Rock Smash - HM06
  (248, 24800, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 75),
  -- Tyranitar - Rock Climb - HM08
  (248, 24800, 431, 9, NULL, 3, NULL, NULL, 9003008, NULL, 76),
  -- Tyranitar - Fire Punch - Tutor
  (248, 24800, 7, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Tyranitar - Ice Punch - Tutor
  (248, 24800, 8, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 78),
  -- Tyranitar - Thunder Punch - Tutor
  (248, 24800, 9, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 79),
  -- Tyranitar - Snore - Tutor
  (248, 24800, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 80),
  -- Tyranitar - Spite - Tutor
  (248, 24800, 180, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 81),
  -- Tyranitar - Mud-Slap - Tutor
  (248, 24800, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 82),
  -- Tyranitar - Outrage - Tutor
  (248, 24800, 200, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 83),
  -- Tyranitar - Fury Cutter - Tutor
  (248, 24800, 210, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 84),
  -- Tyranitar - Ancient Power - Tutor
  (248, 24800, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 85),
  -- Tyranitar - Uproar - Tutor
  (248, 24800, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 86),
  -- Tyranitar - Superpower - Tutor
  (248, 24800, 276, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 87),
  -- Tyranitar - Aqua Tail - Tutor
  (248, 24800, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 88),
  -- Tyranitar - Earth Power - Tutor
  (248, 24800, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 89),
  -- Tyranitar - Iron Head - Tutor
  (248, 24800, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 90),
  -- Lugia - Whirlwind - Level 1
  (249, 24900, 18, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lugia - Safeguard - Level 9
  (249, 24900, 219, 9, NULL, 1, 9, NULL, NULL, NULL, 2),
  -- Lugia - Gust - Level 15
  (249, 24900, 16, 9, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Lugia - Recover - Level 23
  (249, 24900, 105, 9, NULL, 1, 23, NULL, NULL, NULL, 4),
  -- Lugia - Hydro Pump - Level 29
  (249, 24900, 56, 9, NULL, 1, 29, NULL, NULL, NULL, 5),
  -- Lugia - Rain Dance - Level 37
  (249, 24900, 240, 9, NULL, 1, 37, NULL, NULL, NULL, 6),
  -- Lugia - Swift - Level 43
  (249, 24900, 129, 9, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Lugia - Natural Gift - Level 51
  (249, 24900, 363, 9, NULL, 1, 51, NULL, NULL, NULL, 8),
  -- Lugia - Ancient Power - Level 57
  (249, 24900, 246, 9, NULL, 1, 57, NULL, NULL, NULL, 9),
  -- Lugia - Extrasensory - Level 65
  (249, 24900, 326, 9, NULL, 1, 65, NULL, NULL, NULL, 10),
  -- Lugia - Punishment - Level 71
  (249, 24900, 386, 9, NULL, 1, 71, NULL, NULL, NULL, 11),
  -- Lugia - Future Sight - Level 79
  (249, 24900, 248, 9, NULL, 1, 79, NULL, NULL, NULL, 12),
  -- Lugia - Aeroblast - Level 85
  (249, 24900, 177, 9, NULL, 1, 85, NULL, NULL, NULL, 13),
  -- Lugia - Calm Mind - Level 93
  (249, 24900, 347, 9, NULL, 1, 93, NULL, NULL, NULL, 14),
  -- Lugia - Sky Attack - Level 99
  (249, 24900, 143, 9, NULL, 1, 99, NULL, NULL, NULL, 15),
  -- Lugia - Water Pulse - TM03
  (249, 24900, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 16),
  -- Lugia - Calm Mind - TM04
  (249, 24900, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 17),
  -- Lugia - Roar - TM05
  (249, 24900, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 18),
  -- Lugia - Toxic - TM06
  (249, 24900, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 19),
  -- Lugia - Hail - TM07
  (249, 24900, 258, 9, NULL, 2, NULL, NULL, 9002007, NULL, 20),
  -- Lugia - Hidden Power - TM10
  (249, 24900, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 21),
  -- Lugia - Sunny Day - TM11
  (249, 24900, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 22),
  -- Lugia - Ice Beam - TM13
  (249, 24900, 58, 9, NULL, 2, NULL, NULL, 9002013, NULL, 23),
  -- Lugia - Blizzard - TM14
  (249, 24900, 59, 9, NULL, 2, NULL, NULL, 9002014, NULL, 24),
  -- Lugia - Hyper Beam - TM15
  (249, 24900, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 25),
  -- Lugia - Light Screen - TM16
  (249, 24900, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 26),
  -- Lugia - Protect - TM17
  (249, 24900, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 27),
  -- Lugia - Rain Dance - TM18
  (249, 24900, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 28),
  -- Lugia - Giga Drain - TM19
  (249, 24900, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 29),
  -- Lugia - Safeguard - TM20
  (249, 24900, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 30),
  -- Lugia - Frustration - TM21
  (249, 24900, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 31),
  -- Lugia - Iron Tail - TM23
  (249, 24900, 231, 9, NULL, 2, NULL, NULL, 9002023, NULL, 32),
  -- Lugia - Thunderbolt - TM24
  (249, 24900, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 33),
  -- Lugia - Thunder - TM25
  (249, 24900, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 34),
  -- Lugia - Earthquake - TM26
  (249, 24900, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 35),
  -- Lugia - Return - TM27
  (249, 24900, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 36),
  -- Lugia - Psychic - TM29
  (249, 24900, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 37),
  -- Lugia - Shadow Ball - TM30
  (249, 24900, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 38),
  -- Lugia - Double Team - TM32
  (249, 24900, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 39),
  -- Lugia - Reflect - TM33
  (249, 24900, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 40),
  -- Lugia - Shock Wave - TM34
  (249, 24900, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 41),
  -- Lugia - Sandstorm - TM37
  (249, 24900, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 42),
  -- Lugia - Aerial Ace - TM40
  (249, 24900, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 43),
  -- Lugia - Facade - TM42
  (249, 24900, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 44),
  -- Lugia - Secret Power - TM43
  (249, 24900, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 45),
  -- Lugia - Rest - TM44
  (249, 24900, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 46),
  -- Lugia - Steel Wing - TM47
  (249, 24900, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 47),
  -- Lugia - Skill Swap - TM48
  (249, 24900, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 48),
  -- Lugia - Roost - TM51
  (249, 24900, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 49),
  -- Lugia - Brine - TM55
  (249, 24900, 362, 9, NULL, 2, NULL, NULL, 9002055, NULL, 50),
  -- Lugia - Charge Beam - TM57
  (249, 24900, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 51),
  -- Lugia - Endure - TM58
  (249, 24900, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 52),
  -- Lugia - Dragon Pulse - TM59
  (249, 24900, 406, 9, NULL, 2, NULL, NULL, 9002059, NULL, 53),
  -- Lugia - Giga Impact - TM68
  (249, 24900, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 54),
  -- Lugia - Flash - TM70
  (249, 24900, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 55),
  -- Lugia - Avalanche - TM72
  (249, 24900, 419, 9, NULL, 2, NULL, NULL, 9002072, NULL, 56),
  -- Lugia - Thunder Wave - TM73
  (249, 24900, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 57),
  -- Lugia - Psych Up - TM77
  (249, 24900, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 58),
  -- Lugia - Sleep Talk - TM82
  (249, 24900, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 59),
  -- Lugia - Natural Gift - TM83
  (249, 24900, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 60),
  -- Lugia - Dream Eater - TM85
  (249, 24900, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 61),
  -- Lugia - Swagger - TM87
  (249, 24900, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 62),
  -- Lugia - Substitute - TM90
  (249, 24900, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 63),
  -- Lugia - Fly - HM02
  (249, 24900, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 64),
  -- Lugia - Surf - HM03
  (249, 24900, 57, 9, NULL, 3, NULL, NULL, 9003003, NULL, 65),
  -- Lugia - Strength - HM04
  (249, 24900, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 66),
  -- Lugia - Defog - HM05
  (249, 24900, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 67),
  -- Lugia - Rock Smash - HM06
  (249, 24900, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 68),
  -- Lugia - Waterfall - HM07
  (249, 24900, 127, 9, NULL, 3, NULL, NULL, 9003007, NULL, 69),
  -- Lugia - Swift - Tutor
  (249, 24900, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Lugia - Snore - Tutor
  (249, 24900, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Lugia - Mud-Slap - Tutor
  (249, 24900, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Lugia - Icy Wind - Tutor
  (249, 24900, 196, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Lugia - Twister - Tutor
  (249, 24900, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Lugia - Ancient Power - Tutor
  (249, 24900, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Lugia - Trick - Tutor
  (249, 24900, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Lugia - Dive - Tutor
  (249, 24900, 291, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 77),
  -- Lugia - Air Cutter - Tutor
  (249, 24900, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 78),
  -- Lugia - Signal Beam - Tutor
  (249, 24900, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 79),
  -- Lugia - Aqua Tail - Tutor
  (249, 24900, 401, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 80),
  -- Lugia - Earth Power - Tutor
  (249, 24900, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 81),
  -- Lugia - Zen Headbutt - Tutor
  (249, 24900, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 82),
  -- Lugia - Iron Head - Tutor
  (249, 24900, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 83),
  -- Lugia - Ominous Wind - Tutor
  (249, 24900, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 84),
  -- Ho-Oh - Whirlwind - Level 1
  (250, 25000, 18, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ho-Oh - Safeguard - Level 9
  (250, 25000, 219, 9, NULL, 1, 9, NULL, NULL, NULL, 2),
  -- Ho-Oh - Gust - Level 15
  (250, 25000, 16, 9, NULL, 1, 15, NULL, NULL, NULL, 3),
  -- Ho-Oh - Recover - Level 23
  (250, 25000, 105, 9, NULL, 1, 23, NULL, NULL, NULL, 4),
  -- Ho-Oh - Fire Blast - Level 29
  (250, 25000, 126, 9, NULL, 1, 29, NULL, NULL, NULL, 5),
  -- Ho-Oh - Sunny Day - Level 37
  (250, 25000, 241, 9, NULL, 1, 37, NULL, NULL, NULL, 6),
  -- Ho-Oh - Swift - Level 43
  (250, 25000, 129, 9, NULL, 1, 43, NULL, NULL, NULL, 7),
  -- Ho-Oh - Natural Gift - Level 51
  (250, 25000, 363, 9, NULL, 1, 51, NULL, NULL, NULL, 8),
  -- Ho-Oh - Ancient Power - Level 57
  (250, 25000, 246, 9, NULL, 1, 57, NULL, NULL, NULL, 9),
  -- Ho-Oh - Extrasensory - Level 65
  (250, 25000, 326, 9, NULL, 1, 65, NULL, NULL, NULL, 10),
  -- Ho-Oh - Punishment - Level 71
  (250, 25000, 386, 9, NULL, 1, 71, NULL, NULL, NULL, 11),
  -- Ho-Oh - Future Sight - Level 79
  (250, 25000, 248, 9, NULL, 1, 79, NULL, NULL, NULL, 12),
  -- Ho-Oh - Sacred Fire - Level 85
  (250, 25000, 221, 9, NULL, 1, 85, NULL, NULL, NULL, 13),
  -- Ho-Oh - Calm Mind - Level 93
  (250, 25000, 347, 9, NULL, 1, 93, NULL, NULL, NULL, 14),
  -- Ho-Oh - Sky Attack - Level 99
  (250, 25000, 143, 9, NULL, 1, 99, NULL, NULL, NULL, 15),
  -- Ho-Oh - Calm Mind - TM04
  (250, 25000, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 16),
  -- Ho-Oh - Roar - TM05
  (250, 25000, 46, 9, NULL, 2, NULL, NULL, 9002005, NULL, 17),
  -- Ho-Oh - Toxic - TM06
  (250, 25000, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 18),
  -- Ho-Oh - Hidden Power - TM10
  (250, 25000, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 19),
  -- Ho-Oh - Sunny Day - TM11
  (250, 25000, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 20),
  -- Ho-Oh - Hyper Beam - TM15
  (250, 25000, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 21),
  -- Ho-Oh - Light Screen - TM16
  (250, 25000, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 22),
  -- Ho-Oh - Protect - TM17
  (250, 25000, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 23),
  -- Ho-Oh - Rain Dance - TM18
  (250, 25000, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 24),
  -- Ho-Oh - Giga Drain - TM19
  (250, 25000, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 25),
  -- Ho-Oh - Safeguard - TM20
  (250, 25000, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 26),
  -- Ho-Oh - Frustration - TM21
  (250, 25000, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 27),
  -- Ho-Oh - Solar Beam - TM22
  (250, 25000, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 28),
  -- Ho-Oh - Thunderbolt - TM24
  (250, 25000, 85, 9, NULL, 2, NULL, NULL, 9002024, NULL, 29),
  -- Ho-Oh - Thunder - TM25
  (250, 25000, 87, 9, NULL, 2, NULL, NULL, 9002025, NULL, 30),
  -- Ho-Oh - Earthquake - TM26
  (250, 25000, 89, 9, NULL, 2, NULL, NULL, 9002026, NULL, 31),
  -- Ho-Oh - Return - TM27
  (250, 25000, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 32),
  -- Ho-Oh - Psychic - TM29
  (250, 25000, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 33),
  -- Ho-Oh - Shadow Ball - TM30
  (250, 25000, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 34),
  -- Ho-Oh - Double Team - TM32
  (250, 25000, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 35),
  -- Ho-Oh - Reflect - TM33
  (250, 25000, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 36),
  -- Ho-Oh - Shock Wave - TM34
  (250, 25000, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 37),
  -- Ho-Oh - Flamethrower - TM35
  (250, 25000, 53, 9, NULL, 2, NULL, NULL, 9002035, NULL, 38),
  -- Ho-Oh - Sandstorm - TM37
  (250, 25000, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 39),
  -- Ho-Oh - Fire Blast - TM38
  (250, 25000, 126, 9, NULL, 2, NULL, NULL, 9002038, NULL, 40),
  -- Ho-Oh - Aerial Ace - TM40
  (250, 25000, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 41),
  -- Ho-Oh - Facade - TM42
  (250, 25000, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 42),
  -- Ho-Oh - Secret Power - TM43
  (250, 25000, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 43),
  -- Ho-Oh - Rest - TM44
  (250, 25000, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 44),
  -- Ho-Oh - Steel Wing - TM47
  (250, 25000, 211, 9, NULL, 2, NULL, NULL, 9002047, NULL, 45),
  -- Ho-Oh - Overheat - TM50
  (250, 25000, 315, 9, NULL, 2, NULL, NULL, 9002050, NULL, 46),
  -- Ho-Oh - Roost - TM51
  (250, 25000, 355, 9, NULL, 2, NULL, NULL, 9002051, NULL, 47),
  -- Ho-Oh - Charge Beam - TM57
  (250, 25000, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 48),
  -- Ho-Oh - Endure - TM58
  (250, 25000, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 49),
  -- Ho-Oh - Will-O-Wisp - TM61
  (250, 25000, 261, 9, NULL, 2, NULL, NULL, 9002061, NULL, 50),
  -- Ho-Oh - Giga Impact - TM68
  (250, 25000, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 51),
  -- Ho-Oh - Flash - TM70
  (250, 25000, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 52),
  -- Ho-Oh - Thunder Wave - TM73
  (250, 25000, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 53),
  -- Ho-Oh - Psych Up - TM77
  (250, 25000, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 54),
  -- Ho-Oh - Sleep Talk - TM82
  (250, 25000, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 55),
  -- Ho-Oh - Natural Gift - TM83
  (250, 25000, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 56),
  -- Ho-Oh - Dream Eater - TM85
  (250, 25000, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 57),
  -- Ho-Oh - Swagger - TM87
  (250, 25000, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 58),
  -- Ho-Oh - Pluck - TM88
  (250, 25000, 365, 9, NULL, 2, NULL, NULL, 9002088, NULL, 59),
  -- Ho-Oh - Substitute - TM90
  (250, 25000, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 60),
  -- Ho-Oh - Fly - HM02
  (250, 25000, 19, 9, NULL, 3, NULL, NULL, 9003002, NULL, 61),
  -- Ho-Oh - Strength - HM04
  (250, 25000, 70, 9, NULL, 3, NULL, NULL, 9003004, NULL, 62),
  -- Ho-Oh - Defog - HM05
  (250, 25000, 432, 9, NULL, 3, NULL, NULL, 9003005, NULL, 63),
  -- Ho-Oh - Rock Smash - HM06
  (250, 25000, 249, 9, NULL, 3, NULL, NULL, 9003006, NULL, 64),
  -- Ho-Oh - Swift - Tutor
  (250, 25000, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Ho-Oh - Snore - Tutor
  (250, 25000, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Ho-Oh - Mud-Slap - Tutor
  (250, 25000, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Ho-Oh - Twister - Tutor
  (250, 25000, 239, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Ho-Oh - Ancient Power - Tutor
  (250, 25000, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Ho-Oh - Heat Wave - Tutor
  (250, 25000, 257, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Ho-Oh - Air Cutter - Tutor
  (250, 25000, 314, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Ho-Oh - Signal Beam - Tutor
  (250, 25000, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Ho-Oh - Earth Power - Tutor
  (250, 25000, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73),
  -- Ho-Oh - Zen Headbutt - Tutor
  (250, 25000, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 74),
  -- Ho-Oh - Iron Head - Tutor
  (250, 25000, 442, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 75),
  -- Ho-Oh - Ominous Wind - Tutor
  (250, 25000, 466, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 76),
  -- Celebi - Leech Seed - Level 1
  (251, 25100, 73, 9, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Celebi - Confusion - Level 1
  (251, 25100, 93, 9, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Celebi - Recover - Level 1
  (251, 25100, 105, 9, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Celebi - Heal Bell - Level 1
  (251, 25100, 215, 9, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Celebi - Safeguard - Level 10
  (251, 25100, 219, 9, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Celebi - Magical Leaf - Level 19
  (251, 25100, 345, 9, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Celebi - Ancient Power - Level 28
  (251, 25100, 246, 9, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Celebi - Baton Pass - Level 37
  (251, 25100, 226, 9, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Celebi - Natural Gift - Level 46
  (251, 25100, 363, 9, NULL, 1, 46, NULL, NULL, NULL, 9),
  -- Celebi - Heal Block - Level 55
  (251, 25100, 377, 9, NULL, 1, 55, NULL, NULL, NULL, 10),
  -- Celebi - Future Sight - Level 64
  (251, 25100, 248, 9, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Celebi - Healing Wish - Level 73
  (251, 25100, 361, 9, NULL, 1, 73, NULL, NULL, NULL, 12),
  -- Celebi - Leaf Storm - Level 82
  (251, 25100, 437, 9, NULL, 1, 82, NULL, NULL, NULL, 13),
  -- Celebi - Perish Song - Level 91
  (251, 25100, 195, 9, NULL, 1, 91, NULL, NULL, NULL, 14),
  -- Celebi - Water Pulse - TM03
  (251, 25100, 352, 9, NULL, 2, NULL, NULL, 9002003, NULL, 15),
  -- Celebi - Calm Mind - TM04
  (251, 25100, 347, 9, NULL, 2, NULL, NULL, 9002004, NULL, 16),
  -- Celebi - Toxic - TM06
  (251, 25100, 92, 9, NULL, 2, NULL, NULL, 9002006, NULL, 17),
  -- Celebi - Hidden Power - TM10
  (251, 25100, 237, 9, NULL, 2, NULL, NULL, 9002010, NULL, 18),
  -- Celebi - Sunny Day - TM11
  (251, 25100, 241, 9, NULL, 2, NULL, NULL, 9002011, NULL, 19),
  -- Celebi - Hyper Beam - TM15
  (251, 25100, 63, 9, NULL, 2, NULL, NULL, 9002015, NULL, 20),
  -- Celebi - Light Screen - TM16
  (251, 25100, 113, 9, NULL, 2, NULL, NULL, 9002016, NULL, 21),
  -- Celebi - Protect - TM17
  (251, 25100, 182, 9, NULL, 2, NULL, NULL, 9002017, NULL, 22),
  -- Celebi - Rain Dance - TM18
  (251, 25100, 240, 9, NULL, 2, NULL, NULL, 9002018, NULL, 23),
  -- Celebi - Giga Drain - TM19
  (251, 25100, 202, 9, NULL, 2, NULL, NULL, 9002019, NULL, 24),
  -- Celebi - Safeguard - TM20
  (251, 25100, 219, 9, NULL, 2, NULL, NULL, 9002020, NULL, 25),
  -- Celebi - Frustration - TM21
  (251, 25100, 218, 9, NULL, 2, NULL, NULL, 9002021, NULL, 26),
  -- Celebi - Solar Beam - TM22
  (251, 25100, 76, 9, NULL, 2, NULL, NULL, 9002022, NULL, 27),
  -- Celebi - Return - TM27
  (251, 25100, 216, 9, NULL, 2, NULL, NULL, 9002027, NULL, 28),
  -- Celebi - Psychic - TM29
  (251, 25100, 94, 9, NULL, 2, NULL, NULL, 9002029, NULL, 29),
  -- Celebi - Shadow Ball - TM30
  (251, 25100, 247, 9, NULL, 2, NULL, NULL, 9002030, NULL, 30),
  -- Celebi - Double Team - TM32
  (251, 25100, 104, 9, NULL, 2, NULL, NULL, 9002032, NULL, 31),
  -- Celebi - Reflect - TM33
  (251, 25100, 115, 9, NULL, 2, NULL, NULL, 9002033, NULL, 32),
  -- Celebi - Shock Wave - TM34
  (251, 25100, 351, 9, NULL, 2, NULL, NULL, 9002034, NULL, 33),
  -- Celebi - Sandstorm - TM37
  (251, 25100, 201, 9, NULL, 2, NULL, NULL, 9002037, NULL, 34),
  -- Celebi - Aerial Ace - TM40
  (251, 25100, 332, 9, NULL, 2, NULL, NULL, 9002040, NULL, 35),
  -- Celebi - Facade - TM42
  (251, 25100, 263, 9, NULL, 2, NULL, NULL, 9002042, NULL, 36),
  -- Celebi - Secret Power - TM43
  (251, 25100, 290, 9, NULL, 2, NULL, NULL, 9002043, NULL, 37),
  -- Celebi - Rest - TM44
  (251, 25100, 156, 9, NULL, 2, NULL, NULL, 9002044, NULL, 38),
  -- Celebi - Skill Swap - TM48
  (251, 25100, 285, 9, NULL, 2, NULL, NULL, 9002048, NULL, 39),
  -- Celebi - Energy Ball - TM53
  (251, 25100, 412, 9, NULL, 2, NULL, NULL, 9002053, NULL, 40),
  -- Celebi - Fling - TM56
  (251, 25100, 374, 9, NULL, 2, NULL, NULL, 9002056, NULL, 41),
  -- Celebi - Charge Beam - TM57
  (251, 25100, 451, 9, NULL, 2, NULL, NULL, 9002057, NULL, 42),
  -- Celebi - Endure - TM58
  (251, 25100, 203, 9, NULL, 2, NULL, NULL, 9002058, NULL, 43),
  -- Celebi - Silver Wind - TM62
  (251, 25100, 318, 9, NULL, 2, NULL, NULL, 9002062, NULL, 44),
  -- Celebi - Giga Impact - TM68
  (251, 25100, 416, 9, NULL, 2, NULL, NULL, 9002068, NULL, 45),
  -- Celebi - Flash - TM70
  (251, 25100, 148, 9, NULL, 2, NULL, NULL, 9002070, NULL, 46),
  -- Celebi - Thunder Wave - TM73
  (251, 25100, 86, 9, NULL, 2, NULL, NULL, 9002073, NULL, 47),
  -- Celebi - Swords Dance - TM75
  (251, 25100, 14, 9, NULL, 2, NULL, NULL, 9002075, NULL, 48),
  -- Celebi - Stealth Rock - TM76
  (251, 25100, 446, 9, NULL, 2, NULL, NULL, 9002076, NULL, 49),
  -- Celebi - Psych Up - TM77
  (251, 25100, 244, 9, NULL, 2, NULL, NULL, 9002077, NULL, 50),
  -- Celebi - Sleep Talk - TM82
  (251, 25100, 214, 9, NULL, 2, NULL, NULL, 9002082, NULL, 51),
  -- Celebi - Natural Gift - TM83
  (251, 25100, 363, 9, NULL, 2, NULL, NULL, 9002083, NULL, 52),
  -- Celebi - Dream Eater - TM85
  (251, 25100, 138, 9, NULL, 2, NULL, NULL, 9002085, NULL, 53),
  -- Celebi - Grass Knot - TM86
  (251, 25100, 447, 9, NULL, 2, NULL, NULL, 9002086, NULL, 54),
  -- Celebi - Swagger - TM87
  (251, 25100, 207, 9, NULL, 2, NULL, NULL, 9002087, NULL, 55),
  -- Celebi - U-turn - TM89
  (251, 25100, 369, 9, NULL, 2, NULL, NULL, 9002089, NULL, 56),
  -- Celebi - Substitute - TM90
  (251, 25100, 164, 9, NULL, 2, NULL, NULL, 9002090, NULL, 57),
  -- Celebi - Trick Room - TM92
  (251, 25100, 433, 9, NULL, 2, NULL, NULL, 9002092, NULL, 58),
  -- Celebi - Cut - HM01
  (251, 25100, 15, 9, NULL, 3, NULL, NULL, 9003001, NULL, 59),
  -- Celebi - Swift - Tutor
  (251, 25100, 129, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 60),
  -- Celebi - Snore - Tutor
  (251, 25100, 173, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 61),
  -- Celebi - Mud-Slap - Tutor
  (251, 25100, 189, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 62),
  -- Celebi - Synthesis - Tutor
  (251, 25100, 235, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 63),
  -- Celebi - Ancient Power - Tutor
  (251, 25100, 246, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 64),
  -- Celebi - Uproar - Tutor
  (251, 25100, 253, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 65),
  -- Celebi - Helping Hand - Tutor
  (251, 25100, 270, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 66),
  -- Celebi - Trick - Tutor
  (251, 25100, 271, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 67),
  -- Celebi - Signal Beam - Tutor
  (251, 25100, 324, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 68),
  -- Celebi - Last Resort - Tutor
  (251, 25100, 387, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 69),
  -- Celebi - Sucker Punch - Tutor
  (251, 25100, 389, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 70),
  -- Celebi - Seed Bomb - Tutor
  (251, 25100, 402, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 71),
  -- Celebi - Earth Power - Tutor
  (251, 25100, 414, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 72),
  -- Celebi - Zen Headbutt - Tutor
  (251, 25100, 428, 9, NULL, 6, NULL, NULL, NULL, 'Platinum Move Tutor.', 73);
