-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Generation VIII raw Pokémon learnset pages for Brilliant Diamond / Shining Pearl.
-- Cross-check: Serebii BDSP game learnset pages and PokemonDB generation learnset pages where useful.
-- Machine normalization: Bulbapedia BDSP TM catalog data.
-- Product scope: default-form BDSP direct acquisition rows only; alternate/regional form sections are excluded until separately seeded.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Brilliant Diamond / Shining Pearl learnsets for default forms, species 001-050.
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
  -- Bulbasaur - Tackle - Starting Move
  (1, 100, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Bulbasaur - Growl - Starting Move
  (1, 100, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Bulbasaur - Vine Whip - Level 3
  (1, 100, 22, 21, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Bulbasaur - Growth - Level 6
  (1, 100, 74, 21, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Bulbasaur - Leech Seed - Level 9
  (1, 100, 73, 21, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Bulbasaur - Razor Leaf - Level 12
  (1, 100, 75, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Bulbasaur - Poison Powder - Level 15
  (1, 100, 77, 21, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Bulbasaur - Sleep Powder - Level 15
  (1, 100, 79, 21, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Bulbasaur - Seed Bomb - Level 18
  (1, 100, 402, 21, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Bulbasaur - Take Down - Level 21
  (1, 100, 36, 21, NULL, 1, 21, NULL, NULL, NULL, 10),
  -- Bulbasaur - Sweet Scent - Level 24
  (1, 100, 230, 21, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Bulbasaur - Synthesis - Level 27
  (1, 100, 235, 21, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Bulbasaur - Worry Seed - Level 30
  (1, 100, 388, 21, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Bulbasaur - Double-Edge - Level 33
  (1, 100, 38, 21, NULL, 1, 33, NULL, NULL, NULL, 14),
  -- Bulbasaur - Solar Beam - Level 36
  (1, 100, 76, 21, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Bulbasaur - Toxic - TM06
  (1, 100, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 16),
  -- Bulbasaur - Bullet Seed - TM09
  (1, 100, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 17),
  -- Bulbasaur - Work Up - TM10
  (1, 100, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 18),
  -- Bulbasaur - Sunny Day - TM11
  (1, 100, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Bulbasaur - Light Screen - TM16
  (1, 100, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 20),
  -- Bulbasaur - Protect - TM17
  (1, 100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Bulbasaur - Giga Drain - TM19
  (1, 100, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 22),
  -- Bulbasaur - Safeguard - TM20
  (1, 100, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 23),
  -- Bulbasaur - Solar Beam - TM22
  (1, 100, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 24),
  -- Bulbasaur - Double Team - TM32
  (1, 100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 25),
  -- Bulbasaur - Sludge Bomb - TM36
  (1, 100, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 26),
  -- Bulbasaur - Facade - TM42
  (1, 100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 27),
  -- Bulbasaur - Rest - TM44
  (1, 100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 28),
  -- Bulbasaur - Attract - TM45
  (1, 100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 29),
  -- Bulbasaur - Energy Ball - TM53
  (1, 100, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 30),
  -- Bulbasaur - False Swipe - TM54
  (1, 100, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 31),
  -- Bulbasaur - Endure - TM58
  (1, 100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 32),
  -- Bulbasaur - Flash - TM70
  (1, 100, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 33),
  -- Bulbasaur - Swords Dance - TM75
  (1, 100, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 34),
  -- Bulbasaur - Sleep Talk - TM82
  (1, 100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 35),
  -- Bulbasaur - Grass Knot - TM86
  (1, 100, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 36),
  -- Bulbasaur - Swagger - TM87
  (1, 100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 37),
  -- Bulbasaur - Substitute - TM90
  (1, 100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 38),
  -- Bulbasaur - Cut - TM93
  (1, 100, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 39),
  -- Bulbasaur - Strength - TM96
  (1, 100, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 40),
  -- Bulbasaur - Rock Smash - TM98
  (1, 100, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 41),
  -- Bulbasaur - Amnesia - Egg
  (1, 100, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Bulbasaur - Charm - Egg
  (1, 100, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Bulbasaur - Curse - Egg
  (1, 100, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Bulbasaur - Grassy Terrain - Egg
  (1, 100, 580, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Bulbasaur - Ingrain - Egg
  (1, 100, 275, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Bulbasaur - Leaf Storm - Egg
  (1, 100, 437, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Bulbasaur - Magical Leaf - Egg
  (1, 100, 345, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Bulbasaur - Nature Power - Egg
  (1, 100, 267, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Bulbasaur - Petal Dance - Egg
  (1, 100, 80, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Bulbasaur - Power Whip - Egg
  (1, 100, 438, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Bulbasaur - Skull Bash - Egg
  (1, 100, 130, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Bulbasaur - Sludge - Egg
  (1, 100, 124, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Caterpie - Tackle - Starting Move
  (10, 1000, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Caterpie - String Shot - Starting Move
  (10, 1000, 81, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Caterpie - Bug Bite - Level 9
  (10, 1000, 450, 21, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Metapod - Harden - Starting Move
  (11, 1100, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Metapod - Harden - Evolution
  (11, 1100, 106, 21, NULL, 7, NULL, NULL, NULL, NULL, 2),
  -- Butterfree - Gust - Starting Move
  (12, 1200, 16, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Butterfree - Harden - Starting Move
  (12, 1200, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Butterfree - Tackle - Starting Move
  (12, 1200, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Butterfree - String Shot - Starting Move
  (12, 1200, 81, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Butterfree - Bug Bite - Starting Move
  (12, 1200, 450, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Butterfree - Gust - Evolution
  (12, 1200, 16, 21, NULL, 7, NULL, NULL, NULL, NULL, 6),
  -- Butterfree - Supersonic - Level 4
  (12, 1200, 48, 21, NULL, 1, 4, NULL, NULL, NULL, 7),
  -- Butterfree - Confusion - Level 8
  (12, 1200, 93, 21, NULL, 1, 8, NULL, NULL, NULL, 8),
  -- Butterfree - Poison Powder - Level 12
  (12, 1200, 77, 21, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Butterfree - Stun Spore - Level 12
  (12, 1200, 78, 21, NULL, 1, 12, NULL, NULL, NULL, 10),
  -- Butterfree - Sleep Powder - Level 12
  (12, 1200, 79, 21, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Butterfree - Psybeam - Level 16
  (12, 1200, 60, 21, NULL, 1, 16, NULL, NULL, NULL, 12),
  -- Butterfree - Whirlwind - Level 20
  (12, 1200, 18, 21, NULL, 1, 20, NULL, NULL, NULL, 13),
  -- Butterfree - Air Slash - Level 24
  (12, 1200, 403, 21, NULL, 1, 24, NULL, NULL, NULL, 14),
  -- Butterfree - Safeguard - Level 28
  (12, 1200, 219, 21, NULL, 1, 28, NULL, NULL, NULL, 15),
  -- Butterfree - Bug Buzz - Level 32
  (12, 1200, 405, 21, NULL, 1, 32, NULL, NULL, NULL, 16),
  -- Butterfree - Tailwind - Level 36
  (12, 1200, 366, 21, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Butterfree - Rage Powder - Level 40
  (12, 1200, 476, 21, NULL, 1, 40, NULL, NULL, NULL, 18),
  -- Butterfree - Quiver Dance - Level 44
  (12, 1200, 483, 21, NULL, 1, 44, NULL, NULL, NULL, 19),
  -- Butterfree - Sunny Day - TM11
  (12, 1200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Butterfree - Hyper Beam - TM15
  (12, 1200, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 21),
  -- Butterfree - Protect - TM17
  (12, 1200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Butterfree - Rain Dance - TM18
  (12, 1200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Butterfree - Giga Drain - TM19
  (12, 1200, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 24),
  -- Butterfree - Safeguard - TM20
  (12, 1200, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 25),
  -- Butterfree - Solar Beam - TM22
  (12, 1200, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 26),
  -- Butterfree - Psychic - TM29
  (12, 1200, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 27),
  -- Butterfree - Shadow Ball - TM30
  (12, 1200, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 28),
  -- Butterfree - Double Team - TM32
  (12, 1200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 29),
  -- Butterfree - Aerial Ace - TM40
  (12, 1200, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 30),
  -- Butterfree - Facade - TM42
  (12, 1200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 31),
  -- Butterfree - Rest - TM44
  (12, 1200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 32),
  -- Butterfree - Attract - TM45
  (12, 1200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 33),
  -- Butterfree - Thief - TM46
  (12, 1200, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 34),
  -- Butterfree - Skill Swap - TM48
  (12, 1200, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 35),
  -- Butterfree - Roost - TM51
  (12, 1200, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 36),
  -- Butterfree - Energy Ball - TM53
  (12, 1200, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 37),
  -- Butterfree - Endure - TM58
  (12, 1200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 38),
  -- Butterfree - Bug Buzz - TM62
  (12, 1200, 405, 21, NULL, 2, NULL, NULL, 21002062, NULL, 39),
  -- Butterfree - Giga Impact - TM68
  (12, 1200, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 40),
  -- Butterfree - Flash - TM70
  (12, 1200, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 41),
  -- Butterfree - Psych Up - TM77
  (12, 1200, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 42),
  -- Butterfree - Sleep Talk - TM82
  (12, 1200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 43),
  -- Butterfree - Dream Eater - TM85
  (12, 1200, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 44),
  -- Butterfree - Swagger - TM87
  (12, 1200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 45),
  -- Butterfree - U-turn - TM89
  (12, 1200, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 46),
  -- Butterfree - Substitute - TM90
  (12, 1200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 47),
  -- Butterfree - Defog - TM97
  (12, 1200, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 48),
  -- Weedle - Poison Sting - Starting Move
  (13, 1300, 40, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Weedle - String Shot - Starting Move
  (13, 1300, 81, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Weedle - Bug Bite - Level 9
  (13, 1300, 450, 21, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Kakuna - Harden - Starting Move
  (14, 1400, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Kakuna - Harden - Evolution
  (14, 1400, 106, 21, NULL, 7, NULL, NULL, NULL, NULL, 2),
  -- Beedrill - Fury Attack - Starting Move
  (15, 1500, 31, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Beedrill - Harden - Starting Move
  (15, 1500, 106, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Beedrill - Poison Sting - Starting Move
  (15, 1500, 40, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Beedrill - String Shot - Starting Move
  (15, 1500, 81, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Beedrill - Bug Bite - Starting Move
  (15, 1500, 450, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Beedrill - Fury Attack - Evolution
  (15, 1500, 31, 21, NULL, 7, NULL, NULL, NULL, NULL, 6),
  -- Beedrill - Fury Cutter - Level 11
  (15, 1500, 210, 21, NULL, 1, 11, NULL, NULL, NULL, 7),
  -- Beedrill - Laser Focus - Level 14
  (15, 1500, 673, 21, NULL, 1, 14, NULL, NULL, NULL, 8),
  -- Beedrill - Poison Sting - Level 17
  (15, 1500, 40, 21, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Beedrill - Focus Energy - Level 20
  (15, 1500, 116, 21, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Beedrill - Venoshock - Level 23
  (15, 1500, 474, 21, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Beedrill - Assurance - Level 26
  (15, 1500, 372, 21, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Beedrill - Toxic Spikes - Level 29
  (15, 1500, 390, 21, NULL, 1, 29, NULL, NULL, NULL, 13),
  -- Beedrill - Pin Missile - Level 32
  (15, 1500, 42, 21, NULL, 1, 32, NULL, NULL, NULL, 14),
  -- Beedrill - Poison Jab - Level 35
  (15, 1500, 398, 21, NULL, 1, 35, NULL, NULL, NULL, 15),
  -- Beedrill - Agility - Level 38
  (15, 1500, 97, 21, NULL, 1, 38, NULL, NULL, NULL, 16),
  -- Beedrill - Endeavor - Level 41
  (15, 1500, 283, 21, NULL, 1, 41, NULL, NULL, NULL, 17),
  -- Beedrill - Fell Stinger - Level 44
  (15, 1500, 565, 21, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Beedrill - Sunny Day - TM11
  (15, 1500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Beedrill - Hyper Beam - TM15
  (15, 1500, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 20),
  -- Beedrill - Protect - TM17
  (15, 1500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Beedrill - Giga Drain - TM19
  (15, 1500, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 22),
  -- Beedrill - Solar Beam - TM22
  (15, 1500, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 23),
  -- Beedrill - Brick Break - TM31
  (15, 1500, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 24),
  -- Beedrill - Double Team - TM32
  (15, 1500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 25),
  -- Beedrill - Sludge Bomb - TM36
  (15, 1500, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 26),
  -- Beedrill - Aerial Ace - TM40
  (15, 1500, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 27),
  -- Beedrill - Facade - TM42
  (15, 1500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 28),
  -- Beedrill - Rest - TM44
  (15, 1500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 29),
  -- Beedrill - Attract - TM45
  (15, 1500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 30),
  -- Beedrill - Thief - TM46
  (15, 1500, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 31),
  -- Beedrill - Roost - TM51
  (15, 1500, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 32),
  -- Beedrill - False Swipe - TM54
  (15, 1500, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 33),
  -- Beedrill - Endure - TM58
  (15, 1500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 34),
  -- Beedrill - Payback - TM66
  (15, 1500, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 35),
  -- Beedrill - Giga Impact - TM68
  (15, 1500, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 36),
  -- Beedrill - Flash - TM70
  (15, 1500, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 37),
  -- Beedrill - Swords Dance - TM75
  (15, 1500, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 38),
  -- Beedrill - X-Scissor - TM81
  (15, 1500, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 39),
  -- Beedrill - Sleep Talk - TM82
  (15, 1500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 40),
  -- Beedrill - Poison Jab - TM84
  (15, 1500, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 41),
  -- Beedrill - Swagger - TM87
  (15, 1500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 42),
  -- Beedrill - U-turn - TM89
  (15, 1500, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 43),
  -- Beedrill - Substitute - TM90
  (15, 1500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 44),
  -- Beedrill - Cut - TM93
  (15, 1500, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 45),
  -- Beedrill - Defog - TM97
  (15, 1500, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 46),
  -- Beedrill - Rock Smash - TM98
  (15, 1500, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 47),
  -- Pidgey - Tackle - Starting Move
  (16, 1600, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Pidgey - Sand Attack - Level 5
  (16, 1600, 28, 21, NULL, 1, 5, NULL, NULL, NULL, 2),
  -- Pidgey - Gust - Level 9
  (16, 1600, 16, 21, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Pidgey - Quick Attack - Level 13
  (16, 1600, 98, 21, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Pidgey - Whirlwind - Level 17
  (16, 1600, 18, 21, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Pidgey - Twister - Level 21
  (16, 1600, 239, 21, NULL, 1, 21, NULL, NULL, NULL, 6),
  -- Pidgey - Feather Dance - Level 25
  (16, 1600, 297, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Pidgey - Agility - Level 29
  (16, 1600, 97, 21, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Pidgey - Wing Attack - Level 33
  (16, 1600, 17, 21, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Pidgey - Roost - Level 37
  (16, 1600, 355, 21, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Pidgey - Tailwind - Level 41
  (16, 1600, 366, 21, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Pidgey - Aerial Ace - Level 45
  (16, 1600, 332, 21, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Pidgey - Air Slash - Level 49
  (16, 1600, 403, 21, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Pidgey - Hurricane - Level 53
  (16, 1600, 542, 21, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Pidgey - Work Up - TM10
  (16, 1600, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 15),
  -- Pidgey - Sunny Day - TM11
  (16, 1600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Pidgey - Protect - TM17
  (16, 1600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 17),
  -- Pidgey - Rain Dance - TM18
  (16, 1600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 18),
  -- Pidgey - Double Team - TM32
  (16, 1600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 19),
  -- Pidgey - Aerial Ace - TM40
  (16, 1600, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 20),
  -- Pidgey - Facade - TM42
  (16, 1600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 21),
  -- Pidgey - Rest - TM44
  (16, 1600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 22),
  -- Pidgey - Attract - TM45
  (16, 1600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 23),
  -- Pidgey - Thief - TM46
  (16, 1600, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 24),
  -- Pidgey - Steel Wing - TM47
  (16, 1600, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 25),
  -- Pidgey - Roost - TM51
  (16, 1600, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 26),
  -- Pidgey - Endure - TM58
  (16, 1600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 27),
  -- Pidgey - Sleep Talk - TM82
  (16, 1600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 28),
  -- Pidgey - Swagger - TM87
  (16, 1600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 29),
  -- Pidgey - Pluck - TM88
  (16, 1600, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 30),
  -- Pidgey - U-turn - TM89
  (16, 1600, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 31),
  -- Pidgey - Substitute - TM90
  (16, 1600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 32),
  -- Pidgey - Fly - TM94
  (16, 1600, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 33),
  -- Pidgey - Defog - TM97
  (16, 1600, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 34),
  -- Pidgey - Air Cutter - Egg
  (16, 1600, 314, 21, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Pidgey - Air Slash - Egg
  (16, 1600, 403, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Pidgey - Brave Bird - Egg
  (16, 1600, 413, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Pidgey - Uproar - Egg
  (16, 1600, 253, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Pidgeotto - Tackle - Starting Move
  (17, 1700, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Pidgeotto - Sand Attack - Starting Move
  (17, 1700, 28, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Pidgeotto - Gust - Starting Move
  (17, 1700, 16, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Pidgeotto - Sand Attack - Level 5
  (17, 1700, 28, 21, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Pidgeotto - Gust - Level 9
  (17, 1700, 16, 21, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Pidgeotto - Quick Attack - Level 13
  (17, 1700, 98, 21, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Pidgeotto - Whirlwind - Level 17
  (17, 1700, 18, 21, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Pidgeotto - Twister - Level 22
  (17, 1700, 239, 21, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Pidgeotto - Feather Dance - Level 27
  (17, 1700, 297, 21, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Pidgeotto - Agility - Level 32
  (17, 1700, 97, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Pidgeotto - Wing Attack - Level 37
  (17, 1700, 17, 21, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Pidgeotto - Roost - Level 42
  (17, 1700, 355, 21, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Pidgeotto - Tailwind - Level 47
  (17, 1700, 366, 21, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Pidgeotto - Aerial Ace - Level 52
  (17, 1700, 332, 21, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Pidgeotto - Air Slash - Level 57
  (17, 1700, 403, 21, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Pidgeotto - Hurricane - Level 62
  (17, 1700, 542, 21, NULL, 1, 62, NULL, NULL, NULL, 16),
  -- Pidgeotto - Work Up - TM10
  (17, 1700, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 17),
  -- Pidgeotto - Sunny Day - TM11
  (17, 1700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Pidgeotto - Protect - TM17
  (17, 1700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Pidgeotto - Rain Dance - TM18
  (17, 1700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Pidgeotto - Double Team - TM32
  (17, 1700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 21),
  -- Pidgeotto - Aerial Ace - TM40
  (17, 1700, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 22),
  -- Pidgeotto - Facade - TM42
  (17, 1700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 23),
  -- Pidgeotto - Rest - TM44
  (17, 1700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 24),
  -- Pidgeotto - Attract - TM45
  (17, 1700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 25),
  -- Pidgeotto - Thief - TM46
  (17, 1700, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 26),
  -- Pidgeotto - Steel Wing - TM47
  (17, 1700, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 27),
  -- Pidgeotto - Roost - TM51
  (17, 1700, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 28),
  -- Pidgeotto - Endure - TM58
  (17, 1700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 29),
  -- Pidgeotto - Sleep Talk - TM82
  (17, 1700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 30),
  -- Pidgeotto - Swagger - TM87
  (17, 1700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 31),
  -- Pidgeotto - Pluck - TM88
  (17, 1700, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 32),
  -- Pidgeotto - U-turn - TM89
  (17, 1700, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 33),
  -- Pidgeotto - Substitute - TM90
  (17, 1700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 34),
  -- Pidgeotto - Fly - TM94
  (17, 1700, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 35),
  -- Pidgeotto - Defog - TM97
  (17, 1700, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 36),
  -- Pidgeotto - Air Cutter - Egg
  (17, 1700, 314, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Pidgeotto - Air Slash - Egg
  (17, 1700, 403, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Pidgeotto - Brave Bird - Egg
  (17, 1700, 413, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Pidgeotto - Uproar - Egg
  (17, 1700, 253, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Pidgeot - Hurricane - Starting Move
  (18, 1800, 542, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Pidgeot - Tackle - Starting Move
  (18, 1800, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Pidgeot - Sand Attack - Starting Move
  (18, 1800, 28, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Pidgeot - Gust - Starting Move
  (18, 1800, 16, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Pidgeot - Quick Attack - Starting Move
  (18, 1800, 98, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Pidgeot - Sand Attack - Level 5
  (18, 1800, 28, 21, NULL, 1, 5, NULL, NULL, NULL, 6),
  -- Pidgeot - Gust - Level 9
  (18, 1800, 16, 21, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Pidgeot - Quick Attack - Level 13
  (18, 1800, 98, 21, NULL, 1, 13, NULL, NULL, NULL, 8),
  -- Pidgeot - Whirlwind - Level 17
  (18, 1800, 18, 21, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Pidgeot - Twister - Level 22
  (18, 1800, 239, 21, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Pidgeot - Feather Dance - Level 27
  (18, 1800, 297, 21, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Pidgeot - Agility - Level 32
  (18, 1800, 97, 21, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Pidgeot - Wing Attack - Level 38
  (18, 1800, 17, 21, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Pidgeot - Roost - Level 44
  (18, 1800, 355, 21, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Pidgeot - Tailwind - Level 50
  (18, 1800, 366, 21, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Pidgeot - Aerial Ace - Level 56
  (18, 1800, 332, 21, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Pidgeot - Air Slash - Level 62
  (18, 1800, 403, 21, NULL, 1, 62, NULL, NULL, NULL, 17),
  -- Pidgeot - Hurricane - Level 68
  (18, 1800, 542, 21, NULL, 1, 68, NULL, NULL, NULL, 18),
  -- Pidgeot - Work Up - TM10
  (18, 1800, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 19),
  -- Pidgeot - Sunny Day - TM11
  (18, 1800, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Pidgeot - Hyper Beam - TM15
  (18, 1800, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 21),
  -- Pidgeot - Protect - TM17
  (18, 1800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Pidgeot - Rain Dance - TM18
  (18, 1800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 23),
  -- Pidgeot - Double Team - TM32
  (18, 1800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 24),
  -- Pidgeot - Aerial Ace - TM40
  (18, 1800, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 25),
  -- Pidgeot - Facade - TM42
  (18, 1800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 26),
  -- Pidgeot - Rest - TM44
  (18, 1800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 27),
  -- Pidgeot - Attract - TM45
  (18, 1800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 28),
  -- Pidgeot - Thief - TM46
  (18, 1800, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 29),
  -- Pidgeot - Steel Wing - TM47
  (18, 1800, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 30),
  -- Pidgeot - Roost - TM51
  (18, 1800, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 31),
  -- Pidgeot - Endure - TM58
  (18, 1800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 32),
  -- Pidgeot - Giga Impact - TM68
  (18, 1800, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 33),
  -- Pidgeot - Sleep Talk - TM82
  (18, 1800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 34),
  -- Pidgeot - Swagger - TM87
  (18, 1800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 35),
  -- Pidgeot - Pluck - TM88
  (18, 1800, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 36),
  -- Pidgeot - U-turn - TM89
  (18, 1800, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 37),
  -- Pidgeot - Substitute - TM90
  (18, 1800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 38),
  -- Pidgeot - Fly - TM94
  (18, 1800, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 39),
  -- Pidgeot - Defog - TM97
  (18, 1800, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 40),
  -- Pidgeot - Air Cutter - Egg
  (18, 1800, 314, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Pidgeot - Air Slash - Egg
  (18, 1800, 403, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Pidgeot - Brave Bird - Egg
  (18, 1800, 413, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Pidgeot - Uproar - Egg
  (18, 1800, 253, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Rattata - Tackle - Starting Move
  (19, 1900, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Rattata - Tail Whip - Starting Move
  (19, 1900, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Rattata - Quick Attack - Level 4
  (19, 1900, 98, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Rattata - Focus Energy - Level 7
  (19, 1900, 116, 21, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Rattata - Bite - Level 10
  (19, 1900, 44, 21, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Rattata - Laser Focus - Level 13
  (19, 1900, 673, 21, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Rattata - Take Down - Level 16
  (19, 1900, 36, 21, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Rattata - Assurance - Level 19
  (19, 1900, 372, 21, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Rattata - Crunch - Level 22
  (19, 1900, 242, 21, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Rattata - Sucker Punch - Level 25
  (19, 1900, 389, 21, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Rattata - Super Fang - Level 28
  (19, 1900, 162, 21, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Rattata - Double-Edge - Level 31
  (19, 1900, 38, 21, NULL, 1, 31, NULL, NULL, NULL, 12),
  -- Rattata - Endeavor - Level 34
  (19, 1900, 283, 21, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Rattata - Work Up - TM10
  (19, 1900, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 14),
  -- Rattata - Sunny Day - TM11
  (19, 1900, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 15),
  -- Rattata - Taunt - TM12
  (19, 1900, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 16),
  -- Rattata - Ice Beam - TM13
  (19, 1900, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 17),
  -- Rattata - Blizzard - TM14
  (19, 1900, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 18),
  -- Rattata - Protect - TM17
  (19, 1900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Rattata - Rain Dance - TM18
  (19, 1900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Rattata - Iron Tail - TM23
  (19, 1900, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 21),
  -- Rattata - Thunderbolt - TM24
  (19, 1900, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 22),
  -- Rattata - Thunder - TM25
  (19, 1900, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 23),
  -- Rattata - Dig - TM28
  (19, 1900, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 24),
  -- Rattata - Shadow Ball - TM30
  (19, 1900, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 25),
  -- Rattata - Double Team - TM32
  (19, 1900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Rattata - Shock Wave - TM34
  (19, 1900, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 27),
  -- Rattata - Sludge Bomb - TM36
  (19, 1900, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 28),
  -- Rattata - Facade - TM42
  (19, 1900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 29),
  -- Rattata - Rest - TM44
  (19, 1900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 30),
  -- Rattata - Attract - TM45
  (19, 1900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 31),
  -- Rattata - Thief - TM46
  (19, 1900, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 32),
  -- Rattata - Charge Beam - TM57
  (19, 1900, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 33),
  -- Rattata - Endure - TM58
  (19, 1900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 34),
  -- Rattata - Thunder Wave - TM73
  (19, 1900, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 35),
  -- Rattata - Sleep Talk - TM82
  (19, 1900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 36),
  -- Rattata - Grass Knot - TM86
  (19, 1900, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 37),
  -- Rattata - Swagger - TM87
  (19, 1900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 38),
  -- Rattata - Pluck - TM88
  (19, 1900, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 39),
  -- Rattata - Substitute - TM90
  (19, 1900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 40),
  -- Rattata - Cut - TM93
  (19, 1900, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 41),
  -- Rattata - Rock Smash - TM98
  (19, 1900, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 42),
  -- Rattata - Bite - Egg
  (19, 1900, 44, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Rattata - Counter - Egg
  (19, 1900, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Rattata - Final Gambit - Egg
  (19, 1900, 515, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Rattata - Flame Wheel - Egg
  (19, 1900, 172, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Rattata - Fury Swipes - Egg
  (19, 1900, 154, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Rattata - Last Resort - Egg
  (19, 1900, 387, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Rattata - Revenge - Egg
  (19, 1900, 279, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Rattata - Reversal - Egg
  (19, 1900, 179, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Rattata - Screech - Egg
  (19, 1900, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Rattata - Uproar - Egg
  (19, 1900, 253, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Ivysaur - Tackle - Starting Move
  (2, 200, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Ivysaur - Growl - Starting Move
  (2, 200, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Ivysaur - Vine Whip - Starting Move
  (2, 200, 22, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Ivysaur - Growth - Starting Move
  (2, 200, 74, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Ivysaur - Leech Seed - Level 9
  (2, 200, 73, 21, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Ivysaur - Razor Leaf - Level 12
  (2, 200, 75, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Ivysaur - Poison Powder - Level 15
  (2, 200, 77, 21, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Ivysaur - Sleep Powder - Level 15
  (2, 200, 79, 21, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Ivysaur - Seed Bomb - Level 20
  (2, 200, 402, 21, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Ivysaur - Take Down - Level 25
  (2, 200, 36, 21, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Ivysaur - Sweet Scent - Level 30
  (2, 200, 230, 21, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Ivysaur - Synthesis - Level 35
  (2, 200, 235, 21, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Ivysaur - Worry Seed - Level 40
  (2, 200, 388, 21, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Ivysaur - Double-Edge - Level 45
  (2, 200, 38, 21, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Ivysaur - Solar Beam - Level 50
  (2, 200, 76, 21, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Ivysaur - Toxic - TM06
  (2, 200, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 16),
  -- Ivysaur - Bullet Seed - TM09
  (2, 200, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 17),
  -- Ivysaur - Work Up - TM10
  (2, 200, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 18),
  -- Ivysaur - Sunny Day - TM11
  (2, 200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 19),
  -- Ivysaur - Light Screen - TM16
  (2, 200, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 20),
  -- Ivysaur - Protect - TM17
  (2, 200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Ivysaur - Giga Drain - TM19
  (2, 200, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 22),
  -- Ivysaur - Safeguard - TM20
  (2, 200, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 23),
  -- Ivysaur - Solar Beam - TM22
  (2, 200, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 24),
  -- Ivysaur - Double Team - TM32
  (2, 200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 25),
  -- Ivysaur - Sludge Bomb - TM36
  (2, 200, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 26),
  -- Ivysaur - Facade - TM42
  (2, 200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 27),
  -- Ivysaur - Rest - TM44
  (2, 200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 28),
  -- Ivysaur - Attract - TM45
  (2, 200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 29),
  -- Ivysaur - Energy Ball - TM53
  (2, 200, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 30),
  -- Ivysaur - False Swipe - TM54
  (2, 200, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 31),
  -- Ivysaur - Endure - TM58
  (2, 200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 32),
  -- Ivysaur - Flash - TM70
  (2, 200, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 33),
  -- Ivysaur - Swords Dance - TM75
  (2, 200, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 34),
  -- Ivysaur - Sleep Talk - TM82
  (2, 200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 35),
  -- Ivysaur - Grass Knot - TM86
  (2, 200, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 36),
  -- Ivysaur - Swagger - TM87
  (2, 200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 37),
  -- Ivysaur - Substitute - TM90
  (2, 200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 38),
  -- Ivysaur - Cut - TM93
  (2, 200, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 39),
  -- Ivysaur - Strength - TM96
  (2, 200, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 40),
  -- Ivysaur - Rock Smash - TM98
  (2, 200, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 41),
  -- Ivysaur - Amnesia - Egg
  (2, 200, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Ivysaur - Charm - Egg
  (2, 200, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Ivysaur - Curse - Egg
  (2, 200, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Ivysaur - Grassy Terrain - Egg
  (2, 200, 580, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Ivysaur - Ingrain - Egg
  (2, 200, 275, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Ivysaur - Leaf Storm - Egg
  (2, 200, 437, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Ivysaur - Magical Leaf - Egg
  (2, 200, 345, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Ivysaur - Nature Power - Egg
  (2, 200, 267, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Ivysaur - Petal Dance - Egg
  (2, 200, 80, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Ivysaur - Power Whip - Egg
  (2, 200, 438, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Ivysaur - Skull Bash - Egg
  (2, 200, 130, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Ivysaur - Sludge - Egg
  (2, 200, 124, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Raticate - Scary Face - Starting Move
  (20, 2000, 184, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Raticate - Swords Dance - Starting Move
  (20, 2000, 14, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Raticate - Tackle - Starting Move
  (20, 2000, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Raticate - Tail Whip - Starting Move
  (20, 2000, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Raticate - Quick Attack - Starting Move
  (20, 2000, 98, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Raticate - Focus Energy - Starting Move
  (20, 2000, 116, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Raticate - Scary Face - Evolution
  (20, 2000, 184, 21, NULL, 7, NULL, NULL, NULL, NULL, 7),
  -- Raticate - Quick Attack - Level 4
  (20, 2000, 98, 21, NULL, 1, 4, NULL, NULL, NULL, 8),
  -- Raticate - Focus Energy - Level 7
  (20, 2000, 116, 21, NULL, 1, 7, NULL, NULL, NULL, 9),
  -- Raticate - Bite - Level 10
  (20, 2000, 44, 21, NULL, 1, 10, NULL, NULL, NULL, 10),
  -- Raticate - Laser Focus - Level 13
  (20, 2000, 673, 21, NULL, 1, 13, NULL, NULL, NULL, 11),
  -- Raticate - Take Down - Level 16
  (20, 2000, 36, 21, NULL, 1, 16, NULL, NULL, NULL, 12),
  -- Raticate - Assurance - Level 19
  (20, 2000, 372, 21, NULL, 1, 19, NULL, NULL, NULL, 13),
  -- Raticate - Crunch - Level 24
  (20, 2000, 242, 21, NULL, 1, 24, NULL, NULL, NULL, 14),
  -- Raticate - Sucker Punch - Level 29
  (20, 2000, 389, 21, NULL, 1, 29, NULL, NULL, NULL, 15),
  -- Raticate - Super Fang - Level 34
  (20, 2000, 162, 21, NULL, 1, 34, NULL, NULL, NULL, 16),
  -- Raticate - Double-Edge - Level 39
  (20, 2000, 38, 21, NULL, 1, 39, NULL, NULL, NULL, 17),
  -- Raticate - Endeavor - Level 44
  (20, 2000, 283, 21, NULL, 1, 44, NULL, NULL, NULL, 18),
  -- Raticate - Roar - TM05
  (20, 2000, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 19),
  -- Raticate - Work Up - TM10
  (20, 2000, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 20),
  -- Raticate - Sunny Day - TM11
  (20, 2000, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 21),
  -- Raticate - Taunt - TM12
  (20, 2000, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 22),
  -- Raticate - Ice Beam - TM13
  (20, 2000, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 23),
  -- Raticate - Blizzard - TM14
  (20, 2000, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 24),
  -- Raticate - Hyper Beam - TM15
  (20, 2000, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 25),
  -- Raticate - Protect - TM17
  (20, 2000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 26),
  -- Raticate - Rain Dance - TM18
  (20, 2000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 27),
  -- Raticate - Iron Tail - TM23
  (20, 2000, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 28),
  -- Raticate - Thunderbolt - TM24
  (20, 2000, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 29),
  -- Raticate - Thunder - TM25
  (20, 2000, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 30),
  -- Raticate - Dig - TM28
  (20, 2000, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 31),
  -- Raticate - Shadow Ball - TM30
  (20, 2000, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 32),
  -- Raticate - Double Team - TM32
  (20, 2000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 33),
  -- Raticate - Shock Wave - TM34
  (20, 2000, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 34),
  -- Raticate - Sludge Bomb - TM36
  (20, 2000, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 35),
  -- Raticate - Facade - TM42
  (20, 2000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 36),
  -- Raticate - Rest - TM44
  (20, 2000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 37),
  -- Raticate - Attract - TM45
  (20, 2000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 38),
  -- Raticate - Thief - TM46
  (20, 2000, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 39),
  -- Raticate - Charge Beam - TM57
  (20, 2000, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 40),
  -- Raticate - Endure - TM58
  (20, 2000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 41),
  -- Raticate - Giga Impact - TM68
  (20, 2000, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 42),
  -- Raticate - Thunder Wave - TM73
  (20, 2000, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 43),
  -- Raticate - Swords Dance - TM75
  (20, 2000, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 44),
  -- Raticate - Sleep Talk - TM82
  (20, 2000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 45),
  -- Raticate - Grass Knot - TM86
  (20, 2000, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 46),
  -- Raticate - Swagger - TM87
  (20, 2000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 47),
  -- Raticate - Pluck - TM88
  (20, 2000, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 48),
  -- Raticate - Substitute - TM90
  (20, 2000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 49),
  -- Raticate - Cut - TM93
  (20, 2000, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 50),
  -- Raticate - Strength - TM96
  (20, 2000, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 51),
  -- Raticate - Rock Smash - TM98
  (20, 2000, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 52),
  -- Raticate - Bite - Egg
  (20, 2000, 44, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Raticate - Counter - Egg
  (20, 2000, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Raticate - Final Gambit - Egg
  (20, 2000, 515, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Raticate - Flame Wheel - Egg
  (20, 2000, 172, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Raticate - Fury Swipes - Egg
  (20, 2000, 154, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Raticate - Last Resort - Egg
  (20, 2000, 387, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Raticate - Revenge - Egg
  (20, 2000, 279, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Raticate - Reversal - Egg
  (20, 2000, 179, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Raticate - Screech - Egg
  (20, 2000, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Raticate - Uproar - Egg
  (20, 2000, 253, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Spearow - Peck - Starting Move
  (21, 2100, 64, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Spearow - Growl - Starting Move
  (21, 2100, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Spearow - Leer - Level 4
  (21, 2100, 43, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Spearow - Assurance - Level 8
  (21, 2100, 372, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Spearow - Fury Attack - Level 11
  (21, 2100, 31, 21, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Spearow - Aerial Ace - Level 15
  (21, 2100, 332, 21, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Spearow - Wing Attack - Level 18
  (21, 2100, 17, 21, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Spearow - Take Down - Level 22
  (21, 2100, 36, 21, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Spearow - Agility - Level 25
  (21, 2100, 97, 21, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Spearow - Focus Energy - Level 29
  (21, 2100, 116, 21, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Spearow - Roost - Level 32
  (21, 2100, 355, 21, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Spearow - Drill Peck - Level 36
  (21, 2100, 65, 21, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Spearow - Work Up - TM10
  (21, 2100, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 13),
  -- Spearow - Sunny Day - TM11
  (21, 2100, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 14),
  -- Spearow - Protect - TM17
  (21, 2100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 15),
  -- Spearow - Rain Dance - TM18
  (21, 2100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 16),
  -- Spearow - Double Team - TM32
  (21, 2100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 17),
  -- Spearow - Aerial Ace - TM40
  (21, 2100, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 18),
  -- Spearow - Facade - TM42
  (21, 2100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 19),
  -- Spearow - Rest - TM44
  (21, 2100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 20),
  -- Spearow - Attract - TM45
  (21, 2100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 21),
  -- Spearow - Thief - TM46
  (21, 2100, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 22),
  -- Spearow - Steel Wing - TM47
  (21, 2100, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 23),
  -- Spearow - Roost - TM51
  (21, 2100, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 24),
  -- Spearow - False Swipe - TM54
  (21, 2100, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 25),
  -- Spearow - Endure - TM58
  (21, 2100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 26),
  -- Spearow - Sleep Talk - TM82
  (21, 2100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 27),
  -- Spearow - Swagger - TM87
  (21, 2100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 28),
  -- Spearow - Pluck - TM88
  (21, 2100, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 29),
  -- Spearow - U-turn - TM89
  (21, 2100, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 30),
  -- Spearow - Substitute - TM90
  (21, 2100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 31),
  -- Spearow - Fly - TM94
  (21, 2100, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 32),
  -- Spearow - Defog - TM97
  (21, 2100, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 33),
  -- Spearow - Astonish - Egg
  (21, 2100, 310, 21, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Spearow - Feather Dance - Egg
  (21, 2100, 297, 21, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Spearow - Quick Attack - Egg
  (21, 2100, 98, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Spearow - Scary Face - Egg
  (21, 2100, 184, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Spearow - Sky Attack - Egg
  (21, 2100, 143, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Spearow - Tri Attack - Egg
  (21, 2100, 161, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Spearow - Uproar - Egg
  (21, 2100, 253, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Spearow - Whirlwind - Egg
  (21, 2100, 18, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Fearow - Drill Run - Starting Move
  (22, 2200, 529, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Fearow - Pluck - Starting Move
  (22, 2200, 365, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Fearow - Peck - Starting Move
  (22, 2200, 64, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Fearow - Growl - Starting Move
  (22, 2200, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Fearow - Leer - Starting Move
  (22, 2200, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Fearow - Leer - Level 4
  (22, 2200, 43, 21, NULL, 1, 4, NULL, NULL, NULL, 6),
  -- Fearow - Assurance - Level 8
  (22, 2200, 372, 21, NULL, 1, 8, NULL, NULL, NULL, 7),
  -- Fearow - Fury Attack - Level 11
  (22, 2200, 31, 21, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Fearow - Aerial Ace - Level 15
  (22, 2200, 332, 21, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Fearow - Wing Attack - Level 18
  (22, 2200, 17, 21, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Fearow - Take Down - Level 23
  (22, 2200, 36, 21, NULL, 1, 23, NULL, NULL, NULL, 11),
  -- Fearow - Agility - Level 27
  (22, 2200, 97, 21, NULL, 1, 27, NULL, NULL, NULL, 12),
  -- Fearow - Focus Energy - Level 32
  (22, 2200, 116, 21, NULL, 1, 32, NULL, NULL, NULL, 13),
  -- Fearow - Roost - Level 36
  (22, 2200, 355, 21, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Fearow - Drill Peck - Level 41
  (22, 2200, 65, 21, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Fearow - Drill Run - Level 45
  (22, 2200, 529, 21, NULL, 1, 45, NULL, NULL, NULL, 16),
  -- Fearow - Work Up - TM10
  (22, 2200, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 17),
  -- Fearow - Sunny Day - TM11
  (22, 2200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Fearow - Hyper Beam - TM15
  (22, 2200, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 19),
  -- Fearow - Protect - TM17
  (22, 2200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 20),
  -- Fearow - Rain Dance - TM18
  (22, 2200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 21),
  -- Fearow - Double Team - TM32
  (22, 2200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 22),
  -- Fearow - Aerial Ace - TM40
  (22, 2200, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 23),
  -- Fearow - Facade - TM42
  (22, 2200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 24),
  -- Fearow - Rest - TM44
  (22, 2200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 25),
  -- Fearow - Attract - TM45
  (22, 2200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 26),
  -- Fearow - Thief - TM46
  (22, 2200, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 27),
  -- Fearow - Steel Wing - TM47
  (22, 2200, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 28),
  -- Fearow - Roost - TM51
  (22, 2200, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 29),
  -- Fearow - False Swipe - TM54
  (22, 2200, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 30),
  -- Fearow - Endure - TM58
  (22, 2200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 31),
  -- Fearow - Giga Impact - TM68
  (22, 2200, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 32),
  -- Fearow - Sleep Talk - TM82
  (22, 2200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 33),
  -- Fearow - Swagger - TM87
  (22, 2200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 34),
  -- Fearow - Pluck - TM88
  (22, 2200, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 35),
  -- Fearow - U-turn - TM89
  (22, 2200, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 36),
  -- Fearow - Substitute - TM90
  (22, 2200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 37),
  -- Fearow - Fly - TM94
  (22, 2200, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 38),
  -- Fearow - Defog - TM97
  (22, 2200, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 39),
  -- Fearow - Astonish - Egg
  (22, 2200, 310, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Fearow - Feather Dance - Egg
  (22, 2200, 297, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Fearow - Quick Attack - Egg
  (22, 2200, 98, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Fearow - Scary Face - Egg
  (22, 2200, 184, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Fearow - Sky Attack - Egg
  (22, 2200, 143, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Fearow - Tri Attack - Egg
  (22, 2200, 161, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Fearow - Uproar - Egg
  (22, 2200, 253, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Fearow - Whirlwind - Egg
  (22, 2200, 18, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Ekans - Wrap - Starting Move
  (23, 2300, 35, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Ekans - Leer - Starting Move
  (23, 2300, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Ekans - Poison Sting - Level 4
  (23, 2300, 40, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Ekans - Bite - Level 9
  (23, 2300, 44, 21, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Ekans - Glare - Level 12
  (23, 2300, 137, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Ekans - Screech - Level 17
  (23, 2300, 103, 21, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Ekans - Acid - Level 20
  (23, 2300, 51, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Ekans - Stockpile - Level 25
  (23, 2300, 254, 21, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Ekans - Swallow - Level 25
  (23, 2300, 256, 21, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Ekans - Spit Up - Level 25
  (23, 2300, 255, 21, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Ekans - Acid Spray - Level 28
  (23, 2300, 491, 21, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Ekans - Sludge Bomb - Level 33
  (23, 2300, 188, 21, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Ekans - Gastro Acid - Level 36
  (23, 2300, 380, 21, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Ekans - Belch - Level 38
  (23, 2300, 562, 21, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Ekans - Haze - Level 41
  (23, 2300, 114, 21, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Ekans - Coil - Level 44
  (23, 2300, 489, 21, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Ekans - Gunk Shot - Level 49
  (23, 2300, 441, 21, NULL, 1, 49, NULL, NULL, NULL, 17),
  -- Ekans - Sunny Day - TM11
  (23, 2300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Ekans - Protect - TM17
  (23, 2300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Ekans - Rain Dance - TM18
  (23, 2300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Ekans - Giga Drain - TM19
  (23, 2300, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 21),
  -- Ekans - Iron Tail - TM23
  (23, 2300, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 22),
  -- Ekans - Earthquake - TM26
  (23, 2300, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 23),
  -- Ekans - Dig - TM28
  (23, 2300, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 24),
  -- Ekans - Double Team - TM32
  (23, 2300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 25),
  -- Ekans - Sludge Bomb - TM36
  (23, 2300, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 26),
  -- Ekans - Rock Tomb - TM39
  (23, 2300, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 27),
  -- Ekans - Torment - TM41
  (23, 2300, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 28),
  -- Ekans - Facade - TM42
  (23, 2300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 29),
  -- Ekans - Rest - TM44
  (23, 2300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 30),
  -- Ekans - Attract - TM45
  (23, 2300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 31),
  -- Ekans - Thief - TM46
  (23, 2300, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 32),
  -- Ekans - Endure - TM58
  (23, 2300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 33),
  -- Ekans - Payback - TM66
  (23, 2300, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 34),
  -- Ekans - Dark Pulse - TM79
  (23, 2300, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 35),
  -- Ekans - Rock Slide - TM80
  (23, 2300, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 36),
  -- Ekans - Sleep Talk - TM82
  (23, 2300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 37),
  -- Ekans - Bulldoze - TM83
  (23, 2300, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 38),
  -- Ekans - Poison Jab - TM84
  (23, 2300, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 39),
  -- Ekans - Swagger - TM87
  (23, 2300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 40),
  -- Ekans - Substitute - TM90
  (23, 2300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 41),
  -- Ekans - Strength - TM96
  (23, 2300, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 42),
  -- Ekans - Beat Up - Egg
  (23, 2300, 251, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Ekans - Disable - Egg
  (23, 2300, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Ekans - Poison Fang - Egg
  (23, 2300, 305, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Ekans - Poison Tail - Egg
  (23, 2300, 342, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Ekans - Scary Face - Egg
  (23, 2300, 184, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Ekans - Slam - Egg
  (23, 2300, 21, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Ekans - Spite - Egg
  (23, 2300, 180, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Ekans - Sucker Punch - Egg
  (23, 2300, 389, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Ekans - Switcheroo - Egg
  (23, 2300, 415, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Arbok - Crunch - Starting Move
  (24, 2400, 242, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Arbok - Ice Fang - Starting Move
  (24, 2400, 423, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Arbok - Thunder Fang - Starting Move
  (24, 2400, 422, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Arbok - Fire Fang - Starting Move
  (24, 2400, 424, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Arbok - Wrap - Starting Move
  (24, 2400, 35, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Arbok - Leer - Starting Move
  (24, 2400, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Arbok - Poison Sting - Starting Move
  (24, 2400, 40, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Arbok - Bite - Starting Move
  (24, 2400, 44, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Arbok - Crunch - Evolution
  (24, 2400, 242, 21, NULL, 7, NULL, NULL, NULL, NULL, 9),
  -- Arbok - Poison Sting - Level 4
  (24, 2400, 40, 21, NULL, 1, 4, NULL, NULL, NULL, 10),
  -- Arbok - Bite - Level 9
  (24, 2400, 44, 21, NULL, 1, 9, NULL, NULL, NULL, 11),
  -- Arbok - Glare - Level 12
  (24, 2400, 137, 21, NULL, 1, 12, NULL, NULL, NULL, 12),
  -- Arbok - Screech - Level 17
  (24, 2400, 103, 21, NULL, 1, 17, NULL, NULL, NULL, 13),
  -- Arbok - Acid - Level 20
  (24, 2400, 51, 21, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Arbok - Stockpile - Level 27
  (24, 2400, 254, 21, NULL, 1, 27, NULL, NULL, NULL, 15),
  -- Arbok - Swallow - Level 27
  (24, 2400, 256, 21, NULL, 1, 27, NULL, NULL, NULL, 16),
  -- Arbok - Spit Up - Level 27
  (24, 2400, 255, 21, NULL, 1, 27, NULL, NULL, NULL, 17),
  -- Arbok - Acid Spray - Level 32
  (24, 2400, 491, 21, NULL, 1, 32, NULL, NULL, NULL, 18),
  -- Arbok - Sludge Bomb - Level 39
  (24, 2400, 188, 21, NULL, 1, 39, NULL, NULL, NULL, 19),
  -- Arbok - Gastro Acid - Level 44
  (24, 2400, 380, 21, NULL, 1, 44, NULL, NULL, NULL, 20),
  -- Arbok - Belch - Level 48
  (24, 2400, 562, 21, NULL, 1, 48, NULL, NULL, NULL, 21),
  -- Arbok - Haze - Level 51
  (24, 2400, 114, 21, NULL, 1, 51, NULL, NULL, NULL, 22),
  -- Arbok - Coil - Level 56
  (24, 2400, 489, 21, NULL, 1, 56, NULL, NULL, NULL, 23),
  -- Arbok - Gunk Shot - Level 63
  (24, 2400, 441, 21, NULL, 1, 63, NULL, NULL, NULL, 24),
  -- Arbok - Sunny Day - TM11
  (24, 2400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 25),
  -- Arbok - Hyper Beam - TM15
  (24, 2400, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 26),
  -- Arbok - Protect - TM17
  (24, 2400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 27),
  -- Arbok - Rain Dance - TM18
  (24, 2400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 28),
  -- Arbok - Giga Drain - TM19
  (24, 2400, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 29),
  -- Arbok - Iron Tail - TM23
  (24, 2400, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 30),
  -- Arbok - Earthquake - TM26
  (24, 2400, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 31),
  -- Arbok - Dig - TM28
  (24, 2400, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 32),
  -- Arbok - Double Team - TM32
  (24, 2400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 33),
  -- Arbok - Sludge Bomb - TM36
  (24, 2400, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 34),
  -- Arbok - Rock Tomb - TM39
  (24, 2400, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 35),
  -- Arbok - Torment - TM41
  (24, 2400, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 36),
  -- Arbok - Facade - TM42
  (24, 2400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 37),
  -- Arbok - Rest - TM44
  (24, 2400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 38),
  -- Arbok - Attract - TM45
  (24, 2400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 39),
  -- Arbok - Thief - TM46
  (24, 2400, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 40),
  -- Arbok - Endure - TM58
  (24, 2400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 41),
  -- Arbok - Payback - TM66
  (24, 2400, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 42),
  -- Arbok - Giga Impact - TM68
  (24, 2400, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 43),
  -- Arbok - Dark Pulse - TM79
  (24, 2400, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 44),
  -- Arbok - Rock Slide - TM80
  (24, 2400, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 45),
  -- Arbok - Sleep Talk - TM82
  (24, 2400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 46),
  -- Arbok - Bulldoze - TM83
  (24, 2400, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 47),
  -- Arbok - Poison Jab - TM84
  (24, 2400, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 48),
  -- Arbok - Swagger - TM87
  (24, 2400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 49),
  -- Arbok - Substitute - TM90
  (24, 2400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 50),
  -- Arbok - Strength - TM96
  (24, 2400, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 51),
  -- Arbok - Beat Up - Egg
  (24, 2400, 251, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Arbok - Disable - Egg
  (24, 2400, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Arbok - Poison Fang - Egg
  (24, 2400, 305, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Arbok - Poison Tail - Egg
  (24, 2400, 342, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Arbok - Scary Face - Egg
  (24, 2400, 184, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Arbok - Slam - Egg
  (24, 2400, 21, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Arbok - Spite - Egg
  (24, 2400, 180, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Arbok - Sucker Punch - Egg
  (24, 2400, 389, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Arbok - Switcheroo - Egg
  (24, 2400, 415, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Pikachu - Play Nice - Starting Move
  (25, 2500, 589, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Pikachu - Sweet Kiss - Starting Move
  (25, 2500, 186, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Pikachu - Nuzzle - Starting Move
  (25, 2500, 609, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Pikachu - Nasty Plot - Starting Move
  (25, 2500, 417, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Pikachu - Charm - Starting Move
  (25, 2500, 204, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Pikachu - Thunder Shock - Starting Move
  (25, 2500, 84, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Pikachu - Tail Whip - Starting Move
  (25, 2500, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Pikachu - Growl - Starting Move
  (25, 2500, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Pikachu - Quick Attack - Starting Move
  (25, 2500, 98, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Pikachu - Thunder Wave - Level 4
  (25, 2500, 86, 21, NULL, 1, 4, NULL, NULL, NULL, 10),
  -- Pikachu - Double Team - Level 8
  (25, 2500, 104, 21, NULL, 1, 8, NULL, NULL, NULL, 11),
  -- Pikachu - Electro Ball - Level 12
  (25, 2500, 486, 21, NULL, 1, 12, NULL, NULL, NULL, 12),
  -- Pikachu - Feint - Level 16
  (25, 2500, 364, 21, NULL, 1, 16, NULL, NULL, NULL, 13),
  -- Pikachu - Spark - Level 20
  (25, 2500, 209, 21, NULL, 1, 20, NULL, NULL, NULL, 14),
  -- Pikachu - Agility - Level 24
  (25, 2500, 97, 21, NULL, 1, 24, NULL, NULL, NULL, 15),
  -- Pikachu - Slam - Level 28
  (25, 2500, 21, 21, NULL, 1, 28, NULL, NULL, NULL, 16),
  -- Pikachu - Discharge - Level 32
  (25, 2500, 435, 21, NULL, 1, 32, NULL, NULL, NULL, 17),
  -- Pikachu - Thunderbolt - Level 36
  (25, 2500, 85, 21, NULL, 1, 36, NULL, NULL, NULL, 18),
  -- Pikachu - Light Screen - Level 40
  (25, 2500, 113, 21, NULL, 1, 40, NULL, NULL, NULL, 19),
  -- Pikachu - Thunder - Level 44
  (25, 2500, 87, 21, NULL, 1, 44, NULL, NULL, NULL, 20),
  -- Pikachu - Focus Punch - TM01
  (25, 2500, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 21),
  -- Pikachu - Light Screen - TM16
  (25, 2500, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 22),
  -- Pikachu - Protect - TM17
  (25, 2500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Pikachu - Rain Dance - TM18
  (25, 2500, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 24),
  -- Pikachu - Iron Tail - TM23
  (25, 2500, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 25),
  -- Pikachu - Thunderbolt - TM24
  (25, 2500, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 26),
  -- Pikachu - Thunder - TM25
  (25, 2500, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 27),
  -- Pikachu - Dig - TM28
  (25, 2500, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 28),
  -- Pikachu - Brick Break - TM31
  (25, 2500, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 29),
  -- Pikachu - Double Team - TM32
  (25, 2500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 30),
  -- Pikachu - Reflect - TM33
  (25, 2500, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 31),
  -- Pikachu - Shock Wave - TM34
  (25, 2500, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 32),
  -- Pikachu - Facade - TM42
  (25, 2500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 33),
  -- Pikachu - Volt Switch - TM43
  (25, 2500, 521, 21, NULL, 2, NULL, NULL, 21002043, NULL, 34),
  -- Pikachu - Rest - TM44
  (25, 2500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 35),
  -- Pikachu - Attract - TM45
  (25, 2500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 36),
  -- Pikachu - Thief - TM46
  (25, 2500, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 37),
  -- Pikachu - Fling - TM56
  (25, 2500, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 38),
  -- Pikachu - Charge Beam - TM57
  (25, 2500, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 39),
  -- Pikachu - Endure - TM58
  (25, 2500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 40),
  -- Pikachu - Nasty Plot - TM63
  (25, 2500, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 41),
  -- Pikachu - Flash - TM70
  (25, 2500, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 42),
  -- Pikachu - Thunder Wave - TM73
  (25, 2500, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 43),
  -- Pikachu - Sleep Talk - TM82
  (25, 2500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 44),
  -- Pikachu - Grass Knot - TM86
  (25, 2500, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 45),
  -- Pikachu - Swagger - TM87
  (25, 2500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 46),
  -- Pikachu - Substitute - TM90
  (25, 2500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 47),
  -- Pikachu - Surf - TM95
  (25, 2500, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 48),
  -- Pikachu - Strength - TM96
  (25, 2500, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 49),
  -- Pikachu - Rock Smash - TM98
  (25, 2500, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 50),
  -- Pikachu - Charge - Egg
  (25, 2500, 268, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Pikachu - Disarming Voice - Egg
  (25, 2500, 574, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Pikachu - Electric Terrain - Egg
  (25, 2500, 604, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Pikachu - Encore - Egg
  (25, 2500, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Pikachu - Fake Out - Egg
  (25, 2500, 252, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Pikachu - Flail - Egg
  (25, 2500, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Pikachu - Present - Egg
  (25, 2500, 217, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Pikachu - Reversal - Egg
  (25, 2500, 179, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Pikachu - Thunder Punch - Egg
  (25, 2500, 9, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Pikachu - Tickle - Egg
  (25, 2500, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Pikachu - Volt Tackle - Egg (Light Ball)
  (25, 2500, 344, 21, NULL, 5, NULL, 364, NULL, 'Requires either parent to hold Light Ball.', 61),
  -- Pikachu - Wish - Egg
  (25, 2500, 273, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Raichu - Thunder Punch - Starting Move
  (26, 2600, 9, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Raichu - Play Nice - Starting Move
  (26, 2600, 589, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Raichu - Sweet Kiss - Starting Move
  (26, 2600, 186, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Raichu - Nuzzle - Starting Move
  (26, 2600, 609, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Raichu - Nasty Plot - Starting Move
  (26, 2600, 417, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Raichu - Charm - Starting Move
  (26, 2600, 204, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Raichu - Thunder Wave - Starting Move
  (26, 2600, 86, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Raichu - Double Team - Starting Move
  (26, 2600, 104, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Raichu - Electro Ball - Starting Move
  (26, 2600, 486, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Raichu - Feint - Starting Move
  (26, 2600, 364, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Raichu - Spark - Starting Move
  (26, 2600, 209, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Raichu - Agility - Starting Move
  (26, 2600, 97, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Raichu - Slam - Starting Move
  (26, 2600, 21, 21, NULL, 8, NULL, NULL, NULL, NULL, 13),
  -- Raichu - Discharge - Starting Move
  (26, 2600, 435, 21, NULL, 8, NULL, NULL, NULL, NULL, 14),
  -- Raichu - Thunderbolt - Starting Move
  (26, 2600, 85, 21, NULL, 8, NULL, NULL, NULL, NULL, 15),
  -- Raichu - Light Screen - Starting Move
  (26, 2600, 113, 21, NULL, 8, NULL, NULL, NULL, NULL, 16),
  -- Raichu - Thunder - Starting Move
  (26, 2600, 87, 21, NULL, 8, NULL, NULL, NULL, NULL, 17),
  -- Raichu - Thunder Shock - Starting Move
  (26, 2600, 84, 21, NULL, 8, NULL, NULL, NULL, NULL, 18),
  -- Raichu - Tail Whip - Starting Move
  (26, 2600, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 19),
  -- Raichu - Growl - Starting Move
  (26, 2600, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 20),
  -- Raichu - Quick Attack - Starting Move
  (26, 2600, 98, 21, NULL, 8, NULL, NULL, NULL, NULL, 21),
  -- Raichu - Thunder Punch - Evolution
  (26, 2600, 9, 21, NULL, 7, NULL, NULL, NULL, NULL, 22),
  -- Raichu - Focus Punch - TM01
  (26, 2600, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 23),
  -- Raichu - Hyper Beam - TM15
  (26, 2600, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 24),
  -- Raichu - Light Screen - TM16
  (26, 2600, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 25),
  -- Raichu - Protect - TM17
  (26, 2600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 26),
  -- Raichu - Rain Dance - TM18
  (26, 2600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 27),
  -- Raichu - Safeguard - TM20
  (26, 2600, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 28),
  -- Raichu - Iron Tail - TM23
  (26, 2600, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 29),
  -- Raichu - Thunderbolt - TM24
  (26, 2600, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 30),
  -- Raichu - Thunder - TM25
  (26, 2600, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 31),
  -- Raichu - Dig - TM28
  (26, 2600, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 32),
  -- Raichu - Brick Break - TM31
  (26, 2600, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 33),
  -- Raichu - Double Team - TM32
  (26, 2600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 34),
  -- Raichu - Reflect - TM33
  (26, 2600, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 35),
  -- Raichu - Shock Wave - TM34
  (26, 2600, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 36),
  -- Raichu - Facade - TM42
  (26, 2600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 37),
  -- Raichu - Volt Switch - TM43
  (26, 2600, 521, 21, NULL, 2, NULL, NULL, 21002043, NULL, 38),
  -- Raichu - Rest - TM44
  (26, 2600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 39),
  -- Raichu - Attract - TM45
  (26, 2600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 40),
  -- Raichu - Thief - TM46
  (26, 2600, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 41),
  -- Raichu - Focus Blast - TM52
  (26, 2600, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 42),
  -- Raichu - Fling - TM56
  (26, 2600, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 43),
  -- Raichu - Charge Beam - TM57
  (26, 2600, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 44),
  -- Raichu - Endure - TM58
  (26, 2600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 45),
  -- Raichu - Nasty Plot - TM63
  (26, 2600, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 46),
  -- Raichu - Giga Impact - TM68
  (26, 2600, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 47),
  -- Raichu - Flash - TM70
  (26, 2600, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 48),
  -- Raichu - Thunder Wave - TM73
  (26, 2600, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 49),
  -- Raichu - Sleep Talk - TM82
  (26, 2600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 50),
  -- Raichu - Grass Knot - TM86
  (26, 2600, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 51),
  -- Raichu - Swagger - TM87
  (26, 2600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 52),
  -- Raichu - Substitute - TM90
  (26, 2600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 53),
  -- Raichu - Surf - TM95
  (26, 2600, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 54),
  -- Raichu - Strength - TM96
  (26, 2600, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 55),
  -- Raichu - Rock Smash - TM98
  (26, 2600, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 56),
  -- Raichu - Charge - Egg
  (26, 2600, 268, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Raichu - Disarming Voice - Egg
  (26, 2600, 574, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Raichu - Electric Terrain - Egg
  (26, 2600, 604, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Raichu - Encore - Egg
  (26, 2600, 227, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Raichu - Fake Out - Egg
  (26, 2600, 252, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Raichu - Flail - Egg
  (26, 2600, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Raichu - Present - Egg
  (26, 2600, 217, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Raichu - Reversal - Egg
  (26, 2600, 179, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Raichu - Thunder Punch - Egg
  (26, 2600, 9, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Raichu - Tickle - Egg
  (26, 2600, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Raichu - Volt Tackle - Egg (Light Ball)
  (26, 2600, 344, 21, NULL, 5, NULL, 364, NULL, 'Requires either parent to hold Light Ball.', 67),
  -- Raichu - Wish - Egg
  (26, 2600, 273, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Sandshrew - Scratch - Starting Move
  (27, 2700, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Sandshrew - Defense Curl - Starting Move
  (27, 2700, 111, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Sandshrew - Poison Sting - Level 3
  (27, 2700, 40, 21, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Sandshrew - Sand Attack - Level 6
  (27, 2700, 28, 21, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Sandshrew - Rollout - Level 9
  (27, 2700, 205, 21, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Sandshrew - Fury Cutter - Level 12
  (27, 2700, 210, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Sandshrew - Rapid Spin - Level 15
  (27, 2700, 229, 21, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Sandshrew - Bulldoze - Level 18
  (27, 2700, 523, 21, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Sandshrew - Swift - Level 21
  (27, 2700, 129, 21, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Sandshrew - Fury Swipes - Level 24
  (27, 2700, 154, 21, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Sandshrew - Agility - Level 27
  (27, 2700, 97, 21, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Sandshrew - Slash - Level 30
  (27, 2700, 163, 21, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Sandshrew - Dig - Level 33
  (27, 2700, 91, 21, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Sandshrew - Gyro Ball - Level 36
  (27, 2700, 360, 21, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Sandshrew - Swords Dance - Level 39
  (27, 2700, 14, 21, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Sandshrew - Sandstorm - Level 42
  (27, 2700, 201, 21, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Sandshrew - Earthquake - Level 45
  (27, 2700, 89, 21, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Sandshrew - Focus Punch - TM01
  (27, 2700, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 18),
  -- Sandshrew - Work Up - TM10
  (27, 2700, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 19),
  -- Sandshrew - Sunny Day - TM11
  (27, 2700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Sandshrew - Protect - TM17
  (27, 2700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Sandshrew - Safeguard - TM20
  (27, 2700, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 22),
  -- Sandshrew - Iron Tail - TM23
  (27, 2700, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 23),
  -- Sandshrew - Earthquake - TM26
  (27, 2700, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 24),
  -- Sandshrew - Dig - TM28
  (27, 2700, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 25),
  -- Sandshrew - Brick Break - TM31
  (27, 2700, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 26),
  -- Sandshrew - Double Team - TM32
  (27, 2700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Sandshrew - Sandstorm - TM37
  (27, 2700, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 28),
  -- Sandshrew - Rock Tomb - TM39
  (27, 2700, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 29),
  -- Sandshrew - Aerial Ace - TM40
  (27, 2700, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 30),
  -- Sandshrew - Facade - TM42
  (27, 2700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 31),
  -- Sandshrew - Rest - TM44
  (27, 2700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 32),
  -- Sandshrew - Attract - TM45
  (27, 2700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 33),
  -- Sandshrew - Thief - TM46
  (27, 2700, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 34),
  -- Sandshrew - Fling - TM56
  (27, 2700, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 35),
  -- Sandshrew - Endure - TM58
  (27, 2700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 36),
  -- Sandshrew - Shadow Claw - TM65
  (27, 2700, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 37),
  -- Sandshrew - Gyro Ball - TM74
  (27, 2700, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 38),
  -- Sandshrew - Swords Dance - TM75
  (27, 2700, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 39),
  -- Sandshrew - Stealth Rock - TM76
  (27, 2700, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 40),
  -- Sandshrew - Rock Slide - TM80
  (27, 2700, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 41),
  -- Sandshrew - X-Scissor - TM81
  (27, 2700, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 42),
  -- Sandshrew - Sleep Talk - TM82
  (27, 2700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 43),
  -- Sandshrew - Bulldoze - TM83
  (27, 2700, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 44),
  -- Sandshrew - Poison Jab - TM84
  (27, 2700, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 45),
  -- Sandshrew - Swagger - TM87
  (27, 2700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 46),
  -- Sandshrew - Substitute - TM90
  (27, 2700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 47),
  -- Sandshrew - Cut - TM93
  (27, 2700, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 48),
  -- Sandshrew - Strength - TM96
  (27, 2700, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 49),
  -- Sandshrew - Rock Smash - TM98
  (27, 2700, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 50),
  -- Sandshrew - Rock Climb - TM100
  (27, 2700, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 51),
  -- Sandshrew - Counter - Egg
  (27, 2700, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Sandshrew - Crush Claw - Egg
  (27, 2700, 306, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Sandshrew - Flail - Egg
  (27, 2700, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Sandshrew - Hone Claws - Egg
  (27, 2700, 468, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Sandshrew - Metal Claw - Egg
  (27, 2700, 232, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Sandshrew - Mud Shot - Egg
  (27, 2700, 341, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Sandshrew - Mud-Slap - Egg
  (27, 2700, 189, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Sandshrew - Night Slash - Egg
  (27, 2700, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Sandshrew - Rapid Spin - Egg
  (27, 2700, 229, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Sandslash - Crush Claw - Starting Move
  (28, 2800, 306, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Sandslash - Agility - Starting Move
  (28, 2800, 97, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Sandslash - Scratch - Starting Move
  (28, 2800, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Sandslash - Defense Curl - Starting Move
  (28, 2800, 111, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Sandslash - Poison Sting - Starting Move
  (28, 2800, 40, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Sandslash - Sand Attack - Starting Move
  (28, 2800, 28, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Sandslash - Rollout - Level 9
  (28, 2800, 205, 21, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Sandslash - Fury Cutter - Level 12
  (28, 2800, 210, 21, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Sandslash - Rapid Spin - Level 15
  (28, 2800, 229, 21, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Sandslash - Bulldoze - Level 18
  (28, 2800, 523, 21, NULL, 1, 18, NULL, NULL, NULL, 10),
  -- Sandslash - Swift - Level 21
  (28, 2800, 129, 21, NULL, 1, 21, NULL, NULL, NULL, 11),
  -- Sandslash - Fury Swipes - Level 26
  (28, 2800, 154, 21, NULL, 1, 26, NULL, NULL, NULL, 12),
  -- Sandslash - Sand Tomb - Level 31
  (28, 2800, 328, 21, NULL, 1, 31, NULL, NULL, NULL, 13),
  -- Sandslash - Slash - Level 36
  (28, 2800, 163, 21, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Sandslash - Dig - Level 41
  (28, 2800, 91, 21, NULL, 1, 41, NULL, NULL, NULL, 15),
  -- Sandslash - Gyro Ball - Level 46
  (28, 2800, 360, 21, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Sandslash - Swords Dance - Level 51
  (28, 2800, 14, 21, NULL, 1, 51, NULL, NULL, NULL, 17),
  -- Sandslash - Sandstorm - Level 56
  (28, 2800, 201, 21, NULL, 1, 56, NULL, NULL, NULL, 18),
  -- Sandslash - Earthquake - Level 61
  (28, 2800, 89, 21, NULL, 1, 61, NULL, NULL, NULL, 19),
  -- Sandslash - Focus Punch - TM01
  (28, 2800, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 20),
  -- Sandslash - Work Up - TM10
  (28, 2800, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 21),
  -- Sandslash - Sunny Day - TM11
  (28, 2800, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 22),
  -- Sandslash - Hyper Beam - TM15
  (28, 2800, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 23),
  -- Sandslash - Protect - TM17
  (28, 2800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 24),
  -- Sandslash - Safeguard - TM20
  (28, 2800, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 25),
  -- Sandslash - Iron Tail - TM23
  (28, 2800, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 26),
  -- Sandslash - Earthquake - TM26
  (28, 2800, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 27),
  -- Sandslash - Dig - TM28
  (28, 2800, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 28),
  -- Sandslash - Brick Break - TM31
  (28, 2800, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 29),
  -- Sandslash - Double Team - TM32
  (28, 2800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 30),
  -- Sandslash - Sandstorm - TM37
  (28, 2800, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 31),
  -- Sandslash - Rock Tomb - TM39
  (28, 2800, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 32),
  -- Sandslash - Aerial Ace - TM40
  (28, 2800, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 33),
  -- Sandslash - Facade - TM42
  (28, 2800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 34),
  -- Sandslash - Rest - TM44
  (28, 2800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 35),
  -- Sandslash - Attract - TM45
  (28, 2800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 36),
  -- Sandslash - Thief - TM46
  (28, 2800, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 37),
  -- Sandslash - Focus Blast - TM52
  (28, 2800, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 38),
  -- Sandslash - Fling - TM56
  (28, 2800, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 39),
  -- Sandslash - Endure - TM58
  (28, 2800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 40),
  -- Sandslash - Shadow Claw - TM65
  (28, 2800, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 41),
  -- Sandslash - Giga Impact - TM68
  (28, 2800, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 42),
  -- Sandslash - Stone Edge - TM71
  (28, 2800, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 43),
  -- Sandslash - Gyro Ball - TM74
  (28, 2800, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 44),
  -- Sandslash - Swords Dance - TM75
  (28, 2800, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 45),
  -- Sandslash - Stealth Rock - TM76
  (28, 2800, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 46),
  -- Sandslash - Rock Slide - TM80
  (28, 2800, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 47),
  -- Sandslash - X-Scissor - TM81
  (28, 2800, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 48),
  -- Sandslash - Sleep Talk - TM82
  (28, 2800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 49),
  -- Sandslash - Bulldoze - TM83
  (28, 2800, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 50),
  -- Sandslash - Poison Jab - TM84
  (28, 2800, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 51),
  -- Sandslash - Swagger - TM87
  (28, 2800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 52),
  -- Sandslash - Substitute - TM90
  (28, 2800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 53),
  -- Sandslash - Cut - TM93
  (28, 2800, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 54),
  -- Sandslash - Strength - TM96
  (28, 2800, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 55),
  -- Sandslash - Rock Smash - TM98
  (28, 2800, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 56),
  -- Sandslash - Rock Climb - TM100
  (28, 2800, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 57),
  -- Sandslash - Counter - Egg
  (28, 2800, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Sandslash - Crush Claw - Egg
  (28, 2800, 306, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Sandslash - Flail - Egg
  (28, 2800, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Sandslash - Hone Claws - Egg
  (28, 2800, 468, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Sandslash - Metal Claw - Egg
  (28, 2800, 232, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Sandslash - Mud Shot - Egg
  (28, 2800, 341, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Sandslash - Mud-Slap - Egg
  (28, 2800, 189, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Sandslash - Night Slash - Egg
  (28, 2800, 400, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Sandslash - Rapid Spin - Egg
  (28, 2800, 229, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Nidoran F - Growl - Starting Move
  (29, 2900, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Nidoran F - Poison Sting - Starting Move
  (29, 2900, 40, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Nidoran F - Scratch - Level 5
  (29, 2900, 10, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Nidoran F - Tail Whip - Level 10
  (29, 2900, 39, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Nidoran F - Fury Swipes - Level 15
  (29, 2900, 154, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Nidoran F - Toxic Spikes - Level 20
  (29, 2900, 390, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Nidoran F - Double Kick - Level 25
  (29, 2900, 24, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Nidoran F - Bite - Level 30
  (29, 2900, 44, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Nidoran F - Helping Hand - Level 35
  (29, 2900, 270, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Nidoran F - Toxic - Level 40
  (29, 2900, 92, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Nidoran F - Flatter - Level 45
  (29, 2900, 260, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Nidoran F - Crunch - Level 50
  (29, 2900, 242, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Nidoran F - Earth Power - Level 55
  (29, 2900, 414, 21, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Nidoran F - Water Pulse - TM03
  (29, 2900, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 14),
  -- Nidoran F - Toxic - TM06
  (29, 2900, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 15),
  -- Nidoran F - Sunny Day - TM11
  (29, 2900, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Nidoran F - Ice Beam - TM13
  (29, 2900, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 17),
  -- Nidoran F - Blizzard - TM14
  (29, 2900, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 18),
  -- Nidoran F - Protect - TM17
  (29, 2900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Nidoran F - Rain Dance - TM18
  (29, 2900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Nidoran F - Iron Tail - TM23
  (29, 2900, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 21),
  -- Nidoran F - Thunderbolt - TM24
  (29, 2900, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 22),
  -- Nidoran F - Thunder - TM25
  (29, 2900, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 23),
  -- Nidoran F - Dig - TM28
  (29, 2900, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 24),
  -- Nidoran F - Double Team - TM32
  (29, 2900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 25),
  -- Nidoran F - Shock Wave - TM34
  (29, 2900, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 26),
  -- Nidoran F - Sludge Bomb - TM36
  (29, 2900, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 27),
  -- Nidoran F - Aerial Ace - TM40
  (29, 2900, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 28),
  -- Nidoran F - Facade - TM42
  (29, 2900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 29),
  -- Nidoran F - Rest - TM44
  (29, 2900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 30),
  -- Nidoran F - Attract - TM45
  (29, 2900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 31),
  -- Nidoran F - Thief - TM46
  (29, 2900, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 32),
  -- Nidoran F - Endure - TM58
  (29, 2900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 33),
  -- Nidoran F - Shadow Claw - TM65
  (29, 2900, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 34),
  -- Nidoran F - Sleep Talk - TM82
  (29, 2900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 35),
  -- Nidoran F - Poison Jab - TM84
  (29, 2900, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 36),
  -- Nidoran F - Swagger - TM87
  (29, 2900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 37),
  -- Nidoran F - Substitute - TM90
  (29, 2900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 38),
  -- Nidoran F - Cut - TM93
  (29, 2900, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 39),
  -- Nidoran F - Strength - TM96
  (29, 2900, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 40),
  -- Nidoran F - Rock Smash - TM98
  (29, 2900, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 41),
  -- Nidoran F - Beat Up - Egg
  (29, 2900, 251, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Nidoran F - Charm - Egg
  (29, 2900, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Nidoran F - Counter - Egg
  (29, 2900, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Nidoran F - Disable - Egg
  (29, 2900, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Nidoran F - Focus Energy - Egg
  (29, 2900, 116, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Nidoran F - Poison Fang - Egg
  (29, 2900, 305, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Nidoran F - Poison Tail - Egg
  (29, 2900, 342, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Nidoran F - Skull Bash - Egg
  (29, 2900, 130, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Nidoran F - Supersonic - Egg
  (29, 2900, 48, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Nidoran F - Take Down - Egg
  (29, 2900, 36, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Nidoran F - Venom Drench - Egg
  (29, 2900, 599, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Venusaur - Petal Blizzard - Starting Move
  (3, 300, 572, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Venusaur - Petal Dance - Starting Move
  (3, 300, 80, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Venusaur - Tackle - Starting Move
  (3, 300, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Venusaur - Growl - Starting Move
  (3, 300, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Venusaur - Vine Whip - Starting Move
  (3, 300, 22, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Venusaur - Growth - Starting Move
  (3, 300, 74, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Venusaur - Petal Blizzard - Evolution
  (3, 300, 572, 21, NULL, 7, NULL, NULL, NULL, NULL, 7),
  -- Venusaur - Leech Seed - Level 9
  (3, 300, 73, 21, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Venusaur - Razor Leaf - Level 12
  (3, 300, 75, 21, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Venusaur - Poison Powder - Level 15
  (3, 300, 77, 21, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Venusaur - Sleep Powder - Level 15
  (3, 300, 79, 21, NULL, 1, 15, NULL, NULL, NULL, 11),
  -- Venusaur - Seed Bomb - Level 20
  (3, 300, 402, 21, NULL, 1, 20, NULL, NULL, NULL, 12),
  -- Venusaur - Take Down - Level 25
  (3, 300, 36, 21, NULL, 1, 25, NULL, NULL, NULL, 13),
  -- Venusaur - Sweet Scent - Level 30
  (3, 300, 230, 21, NULL, 1, 30, NULL, NULL, NULL, 14),
  -- Venusaur - Synthesis - Level 37
  (3, 300, 235, 21, NULL, 1, 37, NULL, NULL, NULL, 15),
  -- Venusaur - Worry Seed - Level 44
  (3, 300, 388, 21, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Venusaur - Double-Edge - Level 51
  (3, 300, 38, 21, NULL, 1, 51, NULL, NULL, NULL, 17),
  -- Venusaur - Solar Beam - Level 58
  (3, 300, 76, 21, NULL, 1, 58, NULL, NULL, NULL, 18),
  -- Venusaur - Roar - TM05
  (3, 300, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 19),
  -- Venusaur - Toxic - TM06
  (3, 300, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 20),
  -- Venusaur - Bullet Seed - TM09
  (3, 300, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 21),
  -- Venusaur - Work Up - TM10
  (3, 300, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 22),
  -- Venusaur - Sunny Day - TM11
  (3, 300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 23),
  -- Venusaur - Hyper Beam - TM15
  (3, 300, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 24),
  -- Venusaur - Light Screen - TM16
  (3, 300, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 25),
  -- Venusaur - Protect - TM17
  (3, 300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 26),
  -- Venusaur - Giga Drain - TM19
  (3, 300, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 27),
  -- Venusaur - Safeguard - TM20
  (3, 300, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 28),
  -- Venusaur - Solar Beam - TM22
  (3, 300, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 29),
  -- Venusaur - Earthquake - TM26
  (3, 300, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 30),
  -- Venusaur - Double Team - TM32
  (3, 300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 31),
  -- Venusaur - Sludge Bomb - TM36
  (3, 300, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 32),
  -- Venusaur - Facade - TM42
  (3, 300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 33),
  -- Venusaur - Rest - TM44
  (3, 300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 34),
  -- Venusaur - Attract - TM45
  (3, 300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 35),
  -- Venusaur - Energy Ball - TM53
  (3, 300, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 36),
  -- Venusaur - False Swipe - TM54
  (3, 300, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 37),
  -- Venusaur - Endure - TM58
  (3, 300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 38),
  -- Venusaur - Giga Impact - TM68
  (3, 300, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 39),
  -- Venusaur - Flash - TM70
  (3, 300, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 40),
  -- Venusaur - Swords Dance - TM75
  (3, 300, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 41),
  -- Venusaur - Sleep Talk - TM82
  (3, 300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 42),
  -- Venusaur - Bulldoze - TM83
  (3, 300, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 43),
  -- Venusaur - Grass Knot - TM86
  (3, 300, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 44),
  -- Venusaur - Swagger - TM87
  (3, 300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 45),
  -- Venusaur - Substitute - TM90
  (3, 300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 46),
  -- Venusaur - Cut - TM93
  (3, 300, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 47),
  -- Venusaur - Strength - TM96
  (3, 300, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 48),
  -- Venusaur - Rock Smash - TM98
  (3, 300, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 49),
  -- Venusaur - Rock Climb - TM100
  (3, 300, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 50),
  -- Venusaur - Amnesia - Egg
  (3, 300, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Venusaur - Charm - Egg
  (3, 300, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Venusaur - Curse - Egg
  (3, 300, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Venusaur - Grassy Terrain - Egg
  (3, 300, 580, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Venusaur - Ingrain - Egg
  (3, 300, 275, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Venusaur - Leaf Storm - Egg
  (3, 300, 437, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Venusaur - Magical Leaf - Egg
  (3, 300, 345, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Venusaur - Nature Power - Egg
  (3, 300, 267, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Venusaur - Petal Dance - Egg
  (3, 300, 80, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Venusaur - Power Whip - Egg
  (3, 300, 438, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Venusaur - Skull Bash - Egg
  (3, 300, 130, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Venusaur - Sludge - Egg
  (3, 300, 124, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Nidorina - Growl - Starting Move
  (30, 3000, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Nidorina - Poison Sting - Starting Move
  (30, 3000, 40, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Nidorina - Scratch - Starting Move
  (30, 3000, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Nidorina - Tail Whip - Starting Move
  (30, 3000, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Nidorina - Fury Swipes - Level 15
  (30, 3000, 154, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Nidorina - Toxic Spikes - Level 22
  (30, 3000, 390, 21, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Nidorina - Double Kick - Level 29
  (30, 3000, 24, 21, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Nidorina - Bite - Level 36
  (30, 3000, 44, 21, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Nidorina - Helping Hand - Level 43
  (30, 3000, 270, 21, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Nidorina - Toxic - Level 50
  (30, 3000, 92, 21, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Nidorina - Flatter - Level 57
  (30, 3000, 260, 21, NULL, 1, 57, NULL, NULL, NULL, 11),
  -- Nidorina - Crunch - Level 64
  (30, 3000, 242, 21, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Nidorina - Earth Power - Level 71
  (30, 3000, 414, 21, NULL, 1, 71, NULL, NULL, NULL, 13),
  -- Nidorina - Water Pulse - TM03
  (30, 3000, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 14),
  -- Nidorina - Toxic - TM06
  (30, 3000, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 15),
  -- Nidorina - Sunny Day - TM11
  (30, 3000, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Nidorina - Ice Beam - TM13
  (30, 3000, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 17),
  -- Nidorina - Blizzard - TM14
  (30, 3000, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 18),
  -- Nidorina - Protect - TM17
  (30, 3000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Nidorina - Rain Dance - TM18
  (30, 3000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Nidorina - Iron Tail - TM23
  (30, 3000, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 21),
  -- Nidorina - Thunderbolt - TM24
  (30, 3000, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 22),
  -- Nidorina - Thunder - TM25
  (30, 3000, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 23),
  -- Nidorina - Dig - TM28
  (30, 3000, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 24),
  -- Nidorina - Double Team - TM32
  (30, 3000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 25),
  -- Nidorina - Shock Wave - TM34
  (30, 3000, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 26),
  -- Nidorina - Sludge Bomb - TM36
  (30, 3000, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 27),
  -- Nidorina - Aerial Ace - TM40
  (30, 3000, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 28),
  -- Nidorina - Facade - TM42
  (30, 3000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 29),
  -- Nidorina - Rest - TM44
  (30, 3000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 30),
  -- Nidorina - Attract - TM45
  (30, 3000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 31),
  -- Nidorina - Thief - TM46
  (30, 3000, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 32),
  -- Nidorina - Endure - TM58
  (30, 3000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 33),
  -- Nidorina - Shadow Claw - TM65
  (30, 3000, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 34),
  -- Nidorina - Sleep Talk - TM82
  (30, 3000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 35),
  -- Nidorina - Poison Jab - TM84
  (30, 3000, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 36),
  -- Nidorina - Swagger - TM87
  (30, 3000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 37),
  -- Nidorina - Substitute - TM90
  (30, 3000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 38),
  -- Nidorina - Cut - TM93
  (30, 3000, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 39),
  -- Nidorina - Strength - TM96
  (30, 3000, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 40),
  -- Nidorina - Rock Smash - TM98
  (30, 3000, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 41),
  -- Nidorina - Beat Up - Egg
  (30, 3000, 251, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Nidorina - Charm - Egg
  (30, 3000, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Nidorina - Counter - Egg
  (30, 3000, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Nidorina - Disable - Egg
  (30, 3000, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Nidorina - Focus Energy - Egg
  (30, 3000, 116, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Nidorina - Poison Fang - Egg
  (30, 3000, 305, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Nidorina - Poison Tail - Egg
  (30, 3000, 342, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Nidorina - Skull Bash - Egg
  (30, 3000, 130, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Nidorina - Supersonic - Egg
  (30, 3000, 48, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Nidorina - Take Down - Egg
  (30, 3000, 36, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Nidorina - Venom Drench - Egg
  (30, 3000, 599, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Nidoqueen - Superpower - Starting Move
  (31, 3100, 276, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Nidoqueen - Sludge Wave - Starting Move
  (31, 3100, 482, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Nidoqueen - Fury Swipes - Starting Move
  (31, 3100, 154, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Nidoqueen - Toxic Spikes - Starting Move
  (31, 3100, 390, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Nidoqueen - Double Kick - Starting Move
  (31, 3100, 24, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Nidoqueen - Bite - Starting Move
  (31, 3100, 44, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Nidoqueen - Helping Hand - Starting Move
  (31, 3100, 270, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Nidoqueen - Toxic - Starting Move
  (31, 3100, 92, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Nidoqueen - Flatter - Starting Move
  (31, 3100, 260, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Nidoqueen - Crunch - Starting Move
  (31, 3100, 242, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Nidoqueen - Earth Power - Starting Move
  (31, 3100, 414, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Nidoqueen - Growl - Starting Move
  (31, 3100, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Nidoqueen - Poison Sting - Starting Move
  (31, 3100, 40, 21, NULL, 8, NULL, NULL, NULL, NULL, 13),
  -- Nidoqueen - Scratch - Starting Move
  (31, 3100, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 14),
  -- Nidoqueen - Tail Whip - Starting Move
  (31, 3100, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 15),
  -- Nidoqueen - Superpower - Evolution
  (31, 3100, 276, 21, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Nidoqueen - Focus Punch - TM01
  (31, 3100, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 17),
  -- Nidoqueen - Water Pulse - TM03
  (31, 3100, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 18),
  -- Nidoqueen - Roar - TM05
  (31, 3100, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 19),
  -- Nidoqueen - Toxic - TM06
  (31, 3100, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 20),
  -- Nidoqueen - Sunny Day - TM11
  (31, 3100, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 21),
  -- Nidoqueen - Taunt - TM12
  (31, 3100, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 22),
  -- Nidoqueen - Ice Beam - TM13
  (31, 3100, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 23),
  -- Nidoqueen - Blizzard - TM14
  (31, 3100, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 24),
  -- Nidoqueen - Hyper Beam - TM15
  (31, 3100, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 25),
  -- Nidoqueen - Protect - TM17
  (31, 3100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 26),
  -- Nidoqueen - Rain Dance - TM18
  (31, 3100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 27),
  -- Nidoqueen - Iron Tail - TM23
  (31, 3100, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 28),
  -- Nidoqueen - Thunderbolt - TM24
  (31, 3100, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 29),
  -- Nidoqueen - Thunder - TM25
  (31, 3100, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 30),
  -- Nidoqueen - Earthquake - TM26
  (31, 3100, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 31),
  -- Nidoqueen - Dig - TM28
  (31, 3100, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 32),
  -- Nidoqueen - Shadow Ball - TM30
  (31, 3100, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 33),
  -- Nidoqueen - Brick Break - TM31
  (31, 3100, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 34),
  -- Nidoqueen - Double Team - TM32
  (31, 3100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 35),
  -- Nidoqueen - Shock Wave - TM34
  (31, 3100, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 36),
  -- Nidoqueen - Flamethrower - TM35
  (31, 3100, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 37),
  -- Nidoqueen - Sludge Bomb - TM36
  (31, 3100, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 38),
  -- Nidoqueen - Sandstorm - TM37
  (31, 3100, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 39),
  -- Nidoqueen - Fire Blast - TM38
  (31, 3100, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 40),
  -- Nidoqueen - Rock Tomb - TM39
  (31, 3100, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 41),
  -- Nidoqueen - Aerial Ace - TM40
  (31, 3100, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 42),
  -- Nidoqueen - Torment - TM41
  (31, 3100, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 43),
  -- Nidoqueen - Facade - TM42
  (31, 3100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 44),
  -- Nidoqueen - Rest - TM44
  (31, 3100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 45),
  -- Nidoqueen - Attract - TM45
  (31, 3100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 46),
  -- Nidoqueen - Thief - TM46
  (31, 3100, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 47),
  -- Nidoqueen - Focus Blast - TM52
  (31, 3100, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 48),
  -- Nidoqueen - Fling - TM56
  (31, 3100, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 49),
  -- Nidoqueen - Endure - TM58
  (31, 3100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 50),
  -- Nidoqueen - Dragon Pulse - TM59
  (31, 3100, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 51),
  -- Nidoqueen - Shadow Claw - TM65
  (31, 3100, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 52),
  -- Nidoqueen - Giga Impact - TM68
  (31, 3100, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 53),
  -- Nidoqueen - Stone Edge - TM71
  (31, 3100, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 54),
  -- Nidoqueen - Avalanche - TM72
  (31, 3100, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 55),
  -- Nidoqueen - Stealth Rock - TM76
  (31, 3100, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 56),
  -- Nidoqueen - Rock Slide - TM80
  (31, 3100, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 57),
  -- Nidoqueen - Sleep Talk - TM82
  (31, 3100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 58),
  -- Nidoqueen - Bulldoze - TM83
  (31, 3100, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 59),
  -- Nidoqueen - Poison Jab - TM84
  (31, 3100, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 60),
  -- Nidoqueen - Swagger - TM87
  (31, 3100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 61),
  -- Nidoqueen - Substitute - TM90
  (31, 3100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 62),
  -- Nidoqueen - Cut - TM93
  (31, 3100, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 63),
  -- Nidoqueen - Surf - TM95
  (31, 3100, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 64),
  -- Nidoqueen - Strength - TM96
  (31, 3100, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 65),
  -- Nidoqueen - Rock Smash - TM98
  (31, 3100, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 66),
  -- Nidoqueen - Rock Climb - TM100
  (31, 3100, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 67),
  -- Nidoqueen - Beat Up - Egg
  (31, 3100, 251, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Nidoqueen - Charm - Egg
  (31, 3100, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Nidoqueen - Counter - Egg
  (31, 3100, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Nidoqueen - Disable - Egg
  (31, 3100, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Nidoqueen - Focus Energy - Egg
  (31, 3100, 116, 21, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Nidoqueen - Poison Fang - Egg
  (31, 3100, 305, 21, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Nidoqueen - Poison Tail - Egg
  (31, 3100, 342, 21, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Nidoqueen - Skull Bash - Egg
  (31, 3100, 130, 21, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Nidoqueen - Supersonic - Egg
  (31, 3100, 48, 21, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Nidoqueen - Take Down - Egg
  (31, 3100, 36, 21, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Nidoqueen - Venom Drench - Egg
  (31, 3100, 599, 21, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Nidoran M - Leer - Starting Move
  (32, 3200, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Nidoran M - Poison Sting - Starting Move
  (32, 3200, 40, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Nidoran M - Peck - Level 5
  (32, 3200, 64, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Nidoran M - Focus Energy - Level 10
  (32, 3200, 116, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Nidoran M - Fury Attack - Level 15
  (32, 3200, 31, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Nidoran M - Toxic Spikes - Level 20
  (32, 3200, 390, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Nidoran M - Double Kick - Level 25
  (32, 3200, 24, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Nidoran M - Horn Attack - Level 30
  (32, 3200, 30, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Nidoran M - Helping Hand - Level 35
  (32, 3200, 270, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Nidoran M - Toxic - Level 40
  (32, 3200, 92, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Nidoran M - Flatter - Level 45
  (32, 3200, 260, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Nidoran M - Poison Jab - Level 50
  (32, 3200, 398, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Nidoran M - Earth Power - Level 55
  (32, 3200, 414, 21, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Nidoran M - Water Pulse - TM03
  (32, 3200, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 14),
  -- Nidoran M - Toxic - TM06
  (32, 3200, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 15),
  -- Nidoran M - Sunny Day - TM11
  (32, 3200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Nidoran M - Ice Beam - TM13
  (32, 3200, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 17),
  -- Nidoran M - Blizzard - TM14
  (32, 3200, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 18),
  -- Nidoran M - Protect - TM17
  (32, 3200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Nidoran M - Rain Dance - TM18
  (32, 3200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Nidoran M - Iron Tail - TM23
  (32, 3200, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 21),
  -- Nidoran M - Thunderbolt - TM24
  (32, 3200, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 22),
  -- Nidoran M - Thunder - TM25
  (32, 3200, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 23),
  -- Nidoran M - Dig - TM28
  (32, 3200, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 24),
  -- Nidoran M - Double Team - TM32
  (32, 3200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 25),
  -- Nidoran M - Shock Wave - TM34
  (32, 3200, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 26),
  -- Nidoran M - Sludge Bomb - TM36
  (32, 3200, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 27),
  -- Nidoran M - Facade - TM42
  (32, 3200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 28),
  -- Nidoran M - Rest - TM44
  (32, 3200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 29),
  -- Nidoran M - Attract - TM45
  (32, 3200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 30),
  -- Nidoran M - Thief - TM46
  (32, 3200, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 31),
  -- Nidoran M - Endure - TM58
  (32, 3200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 32),
  -- Nidoran M - Shadow Claw - TM65
  (32, 3200, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 33),
  -- Nidoran M - Sleep Talk - TM82
  (32, 3200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 34),
  -- Nidoran M - Poison Jab - TM84
  (32, 3200, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 35),
  -- Nidoran M - Swagger - TM87
  (32, 3200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 36),
  -- Nidoran M - Substitute - TM90
  (32, 3200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 37),
  -- Nidoran M - Cut - TM93
  (32, 3200, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 38),
  -- Nidoran M - Strength - TM96
  (32, 3200, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 39),
  -- Nidoran M - Rock Smash - TM98
  (32, 3200, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 40),
  -- Nidoran M - Amnesia - Egg
  (32, 3200, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Nidoran M - Beat Up - Egg
  (32, 3200, 251, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Nidoran M - Confusion - Egg
  (32, 3200, 93, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Nidoran M - Counter - Egg
  (32, 3200, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Nidoran M - Disable - Egg
  (32, 3200, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Nidoran M - Head Smash - Egg
  (32, 3200, 457, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Nidoran M - Horn Drill - Egg
  (32, 3200, 32, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Nidoran M - Poison Tail - Egg
  (32, 3200, 342, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Nidoran M - Sucker Punch - Egg
  (32, 3200, 389, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Nidoran M - Supersonic - Egg
  (32, 3200, 48, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Nidoran M - Take Down - Egg
  (32, 3200, 36, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Nidoran M - Thrash - Egg
  (32, 3200, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Nidoran M - Venom Drench - Egg
  (32, 3200, 599, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Nidorino - Leer - Starting Move
  (33, 3300, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Nidorino - Poison Sting - Starting Move
  (33, 3300, 40, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Nidorino - Peck - Starting Move
  (33, 3300, 64, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Nidorino - Focus Energy - Starting Move
  (33, 3300, 116, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Nidorino - Fury Attack - Level 15
  (33, 3300, 31, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Nidorino - Toxic Spikes - Level 22
  (33, 3300, 390, 21, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Nidorino - Double Kick - Level 29
  (33, 3300, 24, 21, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Nidorino - Horn Attack - Level 36
  (33, 3300, 30, 21, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Nidorino - Helping Hand - Level 43
  (33, 3300, 270, 21, NULL, 1, 43, NULL, NULL, NULL, 9),
  -- Nidorino - Toxic - Level 50
  (33, 3300, 92, 21, NULL, 1, 50, NULL, NULL, NULL, 10),
  -- Nidorino - Flatter - Level 57
  (33, 3300, 260, 21, NULL, 1, 57, NULL, NULL, NULL, 11),
  -- Nidorino - Poison Jab - Level 64
  (33, 3300, 398, 21, NULL, 1, 64, NULL, NULL, NULL, 12),
  -- Nidorino - Earth Power - Level 71
  (33, 3300, 414, 21, NULL, 1, 71, NULL, NULL, NULL, 13),
  -- Nidorino - Water Pulse - TM03
  (33, 3300, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 14),
  -- Nidorino - Toxic - TM06
  (33, 3300, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 15),
  -- Nidorino - Sunny Day - TM11
  (33, 3300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Nidorino - Ice Beam - TM13
  (33, 3300, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 17),
  -- Nidorino - Blizzard - TM14
  (33, 3300, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 18),
  -- Nidorino - Protect - TM17
  (33, 3300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Nidorino - Rain Dance - TM18
  (33, 3300, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 20),
  -- Nidorino - Iron Tail - TM23
  (33, 3300, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 21),
  -- Nidorino - Thunderbolt - TM24
  (33, 3300, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 22),
  -- Nidorino - Thunder - TM25
  (33, 3300, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 23),
  -- Nidorino - Dig - TM28
  (33, 3300, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 24),
  -- Nidorino - Double Team - TM32
  (33, 3300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 25),
  -- Nidorino - Shock Wave - TM34
  (33, 3300, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 26),
  -- Nidorino - Sludge Bomb - TM36
  (33, 3300, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 27),
  -- Nidorino - Facade - TM42
  (33, 3300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 28),
  -- Nidorino - Rest - TM44
  (33, 3300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 29),
  -- Nidorino - Attract - TM45
  (33, 3300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 30),
  -- Nidorino - Thief - TM46
  (33, 3300, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 31),
  -- Nidorino - Endure - TM58
  (33, 3300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 32),
  -- Nidorino - Shadow Claw - TM65
  (33, 3300, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 33),
  -- Nidorino - Sleep Talk - TM82
  (33, 3300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 34),
  -- Nidorino - Poison Jab - TM84
  (33, 3300, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 35),
  -- Nidorino - Swagger - TM87
  (33, 3300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 36),
  -- Nidorino - Substitute - TM90
  (33, 3300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 37),
  -- Nidorino - Cut - TM93
  (33, 3300, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 38),
  -- Nidorino - Strength - TM96
  (33, 3300, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 39),
  -- Nidorino - Rock Smash - TM98
  (33, 3300, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 40),
  -- Nidorino - Amnesia - Egg
  (33, 3300, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Nidorino - Beat Up - Egg
  (33, 3300, 251, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Nidorino - Confusion - Egg
  (33, 3300, 93, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Nidorino - Counter - Egg
  (33, 3300, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Nidorino - Disable - Egg
  (33, 3300, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Nidorino - Head Smash - Egg
  (33, 3300, 457, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Nidorino - Horn Drill - Egg
  (33, 3300, 32, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Nidorino - Poison Tail - Egg
  (33, 3300, 342, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Nidorino - Sucker Punch - Egg
  (33, 3300, 389, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Nidorino - Supersonic - Egg
  (33, 3300, 48, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Nidorino - Take Down - Egg
  (33, 3300, 36, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Nidorino - Thrash - Egg
  (33, 3300, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Nidorino - Venom Drench - Egg
  (33, 3300, 599, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Nidoking - Megahorn - Starting Move
  (34, 3400, 224, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Nidoking - Sludge Wave - Starting Move
  (34, 3400, 482, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Nidoking - Fury Attack - Starting Move
  (34, 3400, 31, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Nidoking - Toxic Spikes - Starting Move
  (34, 3400, 390, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Nidoking - Double Kick - Starting Move
  (34, 3400, 24, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Nidoking - Horn Attack - Starting Move
  (34, 3400, 30, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Nidoking - Helping Hand - Starting Move
  (34, 3400, 270, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Nidoking - Toxic - Starting Move
  (34, 3400, 92, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Nidoking - Flatter - Starting Move
  (34, 3400, 260, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Nidoking - Poison Jab - Starting Move
  (34, 3400, 398, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Nidoking - Earth Power - Starting Move
  (34, 3400, 414, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Nidoking - Leer - Starting Move
  (34, 3400, 43, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Nidoking - Poison Sting - Starting Move
  (34, 3400, 40, 21, NULL, 8, NULL, NULL, NULL, NULL, 13),
  -- Nidoking - Peck - Starting Move
  (34, 3400, 64, 21, NULL, 8, NULL, NULL, NULL, NULL, 14),
  -- Nidoking - Focus Energy - Starting Move
  (34, 3400, 116, 21, NULL, 8, NULL, NULL, NULL, NULL, 15),
  -- Nidoking - Megahorn - Evolution
  (34, 3400, 224, 21, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Nidoking - Focus Punch - TM01
  (34, 3400, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 17),
  -- Nidoking - Water Pulse - TM03
  (34, 3400, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 18),
  -- Nidoking - Roar - TM05
  (34, 3400, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 19),
  -- Nidoking - Toxic - TM06
  (34, 3400, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 20),
  -- Nidoking - Sunny Day - TM11
  (34, 3400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 21),
  -- Nidoking - Taunt - TM12
  (34, 3400, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 22),
  -- Nidoking - Ice Beam - TM13
  (34, 3400, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 23),
  -- Nidoking - Blizzard - TM14
  (34, 3400, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 24),
  -- Nidoking - Hyper Beam - TM15
  (34, 3400, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 25),
  -- Nidoking - Protect - TM17
  (34, 3400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 26),
  -- Nidoking - Rain Dance - TM18
  (34, 3400, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 27),
  -- Nidoking - Iron Tail - TM23
  (34, 3400, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 28),
  -- Nidoking - Thunderbolt - TM24
  (34, 3400, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 29),
  -- Nidoking - Thunder - TM25
  (34, 3400, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 30),
  -- Nidoking - Earthquake - TM26
  (34, 3400, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 31),
  -- Nidoking - Dig - TM28
  (34, 3400, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 32),
  -- Nidoking - Shadow Ball - TM30
  (34, 3400, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 33),
  -- Nidoking - Brick Break - TM31
  (34, 3400, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 34),
  -- Nidoking - Double Team - TM32
  (34, 3400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 35),
  -- Nidoking - Shock Wave - TM34
  (34, 3400, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 36),
  -- Nidoking - Flamethrower - TM35
  (34, 3400, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 37),
  -- Nidoking - Sludge Bomb - TM36
  (34, 3400, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 38),
  -- Nidoking - Sandstorm - TM37
  (34, 3400, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 39),
  -- Nidoking - Fire Blast - TM38
  (34, 3400, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 40),
  -- Nidoking - Rock Tomb - TM39
  (34, 3400, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 41),
  -- Nidoking - Torment - TM41
  (34, 3400, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 42),
  -- Nidoking - Facade - TM42
  (34, 3400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 43),
  -- Nidoking - Rest - TM44
  (34, 3400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 44),
  -- Nidoking - Attract - TM45
  (34, 3400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 45),
  -- Nidoking - Thief - TM46
  (34, 3400, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 46),
  -- Nidoking - Focus Blast - TM52
  (34, 3400, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 47),
  -- Nidoking - Fling - TM56
  (34, 3400, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 48),
  -- Nidoking - Endure - TM58
  (34, 3400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 49),
  -- Nidoking - Dragon Pulse - TM59
  (34, 3400, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 50),
  -- Nidoking - Shadow Claw - TM65
  (34, 3400, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 51),
  -- Nidoking - Giga Impact - TM68
  (34, 3400, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 52),
  -- Nidoking - Stone Edge - TM71
  (34, 3400, 444, 21, NULL, 2, NULL, NULL, 21002071, NULL, 53),
  -- Nidoking - Avalanche - TM72
  (34, 3400, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 54),
  -- Nidoking - Stealth Rock - TM76
  (34, 3400, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 55),
  -- Nidoking - Rock Slide - TM80
  (34, 3400, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 56),
  -- Nidoking - Sleep Talk - TM82
  (34, 3400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 57),
  -- Nidoking - Bulldoze - TM83
  (34, 3400, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 58),
  -- Nidoking - Poison Jab - TM84
  (34, 3400, 398, 21, NULL, 2, NULL, NULL, 21002084, NULL, 59),
  -- Nidoking - Swagger - TM87
  (34, 3400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 60),
  -- Nidoking - Substitute - TM90
  (34, 3400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 61),
  -- Nidoking - Cut - TM93
  (34, 3400, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 62),
  -- Nidoking - Surf - TM95
  (34, 3400, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 63),
  -- Nidoking - Strength - TM96
  (34, 3400, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 64),
  -- Nidoking - Rock Smash - TM98
  (34, 3400, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 65),
  -- Nidoking - Rock Climb - TM100
  (34, 3400, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 66),
  -- Nidoking - Amnesia - Egg
  (34, 3400, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Nidoking - Beat Up - Egg
  (34, 3400, 251, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Nidoking - Confusion - Egg
  (34, 3400, 93, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Nidoking - Counter - Egg
  (34, 3400, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Nidoking - Disable - Egg
  (34, 3400, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Nidoking - Head Smash - Egg
  (34, 3400, 457, 21, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Nidoking - Horn Drill - Egg
  (34, 3400, 32, 21, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Nidoking - Poison Tail - Egg
  (34, 3400, 342, 21, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Nidoking - Sucker Punch - Egg
  (34, 3400, 389, 21, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Nidoking - Supersonic - Egg
  (34, 3400, 48, 21, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Nidoking - Take Down - Egg
  (34, 3400, 36, 21, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Nidoking - Thrash - Egg
  (34, 3400, 37, 21, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Nidoking - Venom Drench - Egg
  (34, 3400, 599, 21, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Clefairy - Sing - Starting Move
  (35, 3500, 47, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Clefairy - Sweet Kiss - Starting Move
  (35, 3500, 186, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Clefairy - Disarming Voice - Starting Move
  (35, 3500, 574, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Clefairy - Encore - Starting Move
  (35, 3500, 227, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Clefairy - Charm - Starting Move
  (35, 3500, 204, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Clefairy - Splash - Starting Move
  (35, 3500, 150, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Clefairy - Pound - Starting Move
  (35, 3500, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Clefairy - Copycat - Starting Move
  (35, 3500, 383, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Clefairy - Growl - Starting Move
  (35, 3500, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Clefairy - Defense Curl - Starting Move
  (35, 3500, 111, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Clefairy - Stored Power - Level 4
  (35, 3500, 500, 21, NULL, 1, 4, NULL, NULL, NULL, 11),
  -- Clefairy - Minimize - Level 8
  (35, 3500, 107, 21, NULL, 1, 8, NULL, NULL, NULL, 12),
  -- Clefairy - After You - Level 12
  (35, 3500, 495, 21, NULL, 1, 12, NULL, NULL, NULL, 13),
  -- Clefairy - Life Dew - Level 16
  (35, 3500, 791, 21, NULL, 1, 16, NULL, NULL, NULL, 14),
  -- Clefairy - Metronome - Level 20
  (35, 3500, 118, 21, NULL, 1, 20, NULL, NULL, NULL, 15),
  -- Clefairy - Moonlight - Level 24
  (35, 3500, 236, 21, NULL, 1, 24, NULL, NULL, NULL, 16),
  -- Clefairy - Gravity - Level 28
  (35, 3500, 356, 21, NULL, 1, 28, NULL, NULL, NULL, 17),
  -- Clefairy - Meteor Mash - Level 32
  (35, 3500, 309, 21, NULL, 1, 32, NULL, NULL, NULL, 18),
  -- Clefairy - Follow Me - Level 36
  (35, 3500, 266, 21, NULL, 1, 36, NULL, NULL, NULL, 19),
  -- Clefairy - Cosmic Power - Level 40
  (35, 3500, 322, 21, NULL, 1, 40, NULL, NULL, NULL, 20),
  -- Clefairy - Moonblast - Level 44
  (35, 3500, 585, 21, NULL, 1, 44, NULL, NULL, NULL, 21),
  -- Clefairy - Healing Wish - Level 48
  (35, 3500, 361, 21, NULL, 1, 48, NULL, NULL, NULL, 22),
  -- Clefairy - Focus Punch - TM01
  (35, 3500, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 23),
  -- Clefairy - Water Pulse - TM03
  (35, 3500, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 24),
  -- Clefairy - Calm Mind - TM04
  (35, 3500, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 25),
  -- Clefairy - Work Up - TM10
  (35, 3500, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 26),
  -- Clefairy - Sunny Day - TM11
  (35, 3500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 27),
  -- Clefairy - Ice Beam - TM13
  (35, 3500, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 28),
  -- Clefairy - Blizzard - TM14
  (35, 3500, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 29),
  -- Clefairy - Light Screen - TM16
  (35, 3500, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 30),
  -- Clefairy - Protect - TM17
  (35, 3500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 31),
  -- Clefairy - Rain Dance - TM18
  (35, 3500, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 32),
  -- Clefairy - Safeguard - TM20
  (35, 3500, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 33),
  -- Clefairy - Dazzling Gleam - TM21
  (35, 3500, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 34),
  -- Clefairy - Solar Beam - TM22
  (35, 3500, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 35),
  -- Clefairy - Iron Tail - TM23
  (35, 3500, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 36),
  -- Clefairy - Thunderbolt - TM24
  (35, 3500, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 37),
  -- Clefairy - Thunder - TM25
  (35, 3500, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 38),
  -- Clefairy - Dig - TM28
  (35, 3500, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 39),
  -- Clefairy - Psychic - TM29
  (35, 3500, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 40),
  -- Clefairy - Shadow Ball - TM30
  (35, 3500, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 41),
  -- Clefairy - Brick Break - TM31
  (35, 3500, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 42),
  -- Clefairy - Double Team - TM32
  (35, 3500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 43),
  -- Clefairy - Reflect - TM33
  (35, 3500, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 44),
  -- Clefairy - Shock Wave - TM34
  (35, 3500, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 45),
  -- Clefairy - Flamethrower - TM35
  (35, 3500, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 46),
  -- Clefairy - Fire Blast - TM38
  (35, 3500, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 47),
  -- Clefairy - Facade - TM42
  (35, 3500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 48),
  -- Clefairy - Rest - TM44
  (35, 3500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 49),
  -- Clefairy - Attract - TM45
  (35, 3500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 50),
  -- Clefairy - Fling - TM56
  (35, 3500, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 51),
  -- Clefairy - Charge Beam - TM57
  (35, 3500, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 52),
  -- Clefairy - Endure - TM58
  (35, 3500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 53),
  -- Clefairy - Drain Punch - TM60
  (35, 3500, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 54),
  -- Clefairy - Recycle - TM67
  (35, 3500, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 55),
  -- Clefairy - Flash - TM70
  (35, 3500, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 56),
  -- Clefairy - Thunder Wave - TM73
  (35, 3500, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 57),
  -- Clefairy - Stealth Rock - TM76
  (35, 3500, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 58),
  -- Clefairy - Psych Up - TM77
  (35, 3500, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 59),
  -- Clefairy - Sleep Talk - TM82
  (35, 3500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 60),
  -- Clefairy - Dream Eater - TM85
  (35, 3500, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 61),
  -- Clefairy - Grass Knot - TM86
  (35, 3500, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 62),
  -- Clefairy - Swagger - TM87
  (35, 3500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 63),
  -- Clefairy - Substitute - TM90
  (35, 3500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 64),
  -- Clefairy - Strength - TM96
  (35, 3500, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 65),
  -- Clefairy - Rock Smash - TM98
  (35, 3500, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 66),
  -- Clefairy - Amnesia - Egg
  (35, 3500, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Clefairy - Aromatherapy - Egg
  (35, 3500, 312, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Clefairy - Belly Drum - Egg
  (35, 3500, 187, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Clefairy - Covet - Egg
  (35, 3500, 343, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Clefairy - Fake Tears - Egg
  (35, 3500, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Clefairy - Heal Pulse - Egg
  (35, 3500, 505, 21, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Clefairy - Metronome - Egg
  (35, 3500, 118, 21, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Clefairy - Mimic - Egg
  (35, 3500, 102, 21, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Clefairy - Misty Terrain - Egg
  (35, 3500, 581, 21, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Clefairy - Present - Egg
  (35, 3500, 217, 21, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Clefairy - Splash - Egg
  (35, 3500, 150, 21, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Clefairy - Stored Power - Egg
  (35, 3500, 500, 21, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Clefairy - Tickle - Egg
  (35, 3500, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Clefairy - Wish - Egg
  (35, 3500, 273, 21, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Clefable - Sing - Starting Move
  (36, 3600, 47, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Clefable - Sweet Kiss - Starting Move
  (36, 3600, 186, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Clefable - Disarming Voice - Starting Move
  (36, 3600, 574, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Clefable - Encore - Starting Move
  (36, 3600, 227, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Clefable - Charm - Starting Move
  (36, 3600, 204, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Clefable - Stored Power - Starting Move
  (36, 3600, 500, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Clefable - Minimize - Starting Move
  (36, 3600, 107, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Clefable - After You - Starting Move
  (36, 3600, 495, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Clefable - Life Dew - Starting Move
  (36, 3600, 791, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Clefable - Metronome - Starting Move
  (36, 3600, 118, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Clefable - Moonlight - Starting Move
  (36, 3600, 236, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Clefable - Gravity - Starting Move
  (36, 3600, 356, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Clefable - Meteor Mash - Starting Move
  (36, 3600, 309, 21, NULL, 8, NULL, NULL, NULL, NULL, 13),
  -- Clefable - Follow Me - Starting Move
  (36, 3600, 266, 21, NULL, 8, NULL, NULL, NULL, NULL, 14),
  -- Clefable - Cosmic Power - Starting Move
  (36, 3600, 322, 21, NULL, 8, NULL, NULL, NULL, NULL, 15),
  -- Clefable - Moonblast - Starting Move
  (36, 3600, 585, 21, NULL, 8, NULL, NULL, NULL, NULL, 16),
  -- Clefable - Healing Wish - Starting Move
  (36, 3600, 361, 21, NULL, 8, NULL, NULL, NULL, NULL, 17),
  -- Clefable - Splash - Starting Move
  (36, 3600, 150, 21, NULL, 8, NULL, NULL, NULL, NULL, 18),
  -- Clefable - Pound - Starting Move
  (36, 3600, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 19),
  -- Clefable - Copycat - Starting Move
  (36, 3600, 383, 21, NULL, 8, NULL, NULL, NULL, NULL, 20),
  -- Clefable - Growl - Starting Move
  (36, 3600, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 21),
  -- Clefable - Defense Curl - Starting Move
  (36, 3600, 111, 21, NULL, 8, NULL, NULL, NULL, NULL, 22),
  -- Clefable - Focus Punch - TM01
  (36, 3600, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 23),
  -- Clefable - Water Pulse - TM03
  (36, 3600, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 24),
  -- Clefable - Calm Mind - TM04
  (36, 3600, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 25),
  -- Clefable - Work Up - TM10
  (36, 3600, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 26),
  -- Clefable - Sunny Day - TM11
  (36, 3600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 27),
  -- Clefable - Ice Beam - TM13
  (36, 3600, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 28),
  -- Clefable - Blizzard - TM14
  (36, 3600, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 29),
  -- Clefable - Hyper Beam - TM15
  (36, 3600, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 30),
  -- Clefable - Light Screen - TM16
  (36, 3600, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 31),
  -- Clefable - Protect - TM17
  (36, 3600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 32),
  -- Clefable - Rain Dance - TM18
  (36, 3600, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 33),
  -- Clefable - Safeguard - TM20
  (36, 3600, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 34),
  -- Clefable - Dazzling Gleam - TM21
  (36, 3600, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 35),
  -- Clefable - Solar Beam - TM22
  (36, 3600, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 36),
  -- Clefable - Iron Tail - TM23
  (36, 3600, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 37),
  -- Clefable - Thunderbolt - TM24
  (36, 3600, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 38),
  -- Clefable - Thunder - TM25
  (36, 3600, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 39),
  -- Clefable - Dig - TM28
  (36, 3600, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 40),
  -- Clefable - Psychic - TM29
  (36, 3600, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 41),
  -- Clefable - Shadow Ball - TM30
  (36, 3600, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 42),
  -- Clefable - Brick Break - TM31
  (36, 3600, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 43),
  -- Clefable - Double Team - TM32
  (36, 3600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 44),
  -- Clefable - Reflect - TM33
  (36, 3600, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 45),
  -- Clefable - Shock Wave - TM34
  (36, 3600, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 46),
  -- Clefable - Flamethrower - TM35
  (36, 3600, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 47),
  -- Clefable - Fire Blast - TM38
  (36, 3600, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 48),
  -- Clefable - Facade - TM42
  (36, 3600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 49),
  -- Clefable - Rest - TM44
  (36, 3600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 50),
  -- Clefable - Attract - TM45
  (36, 3600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 51),
  -- Clefable - Focus Blast - TM52
  (36, 3600, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 52),
  -- Clefable - Fling - TM56
  (36, 3600, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 53),
  -- Clefable - Charge Beam - TM57
  (36, 3600, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 54),
  -- Clefable - Endure - TM58
  (36, 3600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 55),
  -- Clefable - Drain Punch - TM60
  (36, 3600, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 56),
  -- Clefable - Recycle - TM67
  (36, 3600, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 57),
  -- Clefable - Giga Impact - TM68
  (36, 3600, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 58),
  -- Clefable - Flash - TM70
  (36, 3600, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 59),
  -- Clefable - Thunder Wave - TM73
  (36, 3600, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 60),
  -- Clefable - Stealth Rock - TM76
  (36, 3600, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 61),
  -- Clefable - Psych Up - TM77
  (36, 3600, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 62),
  -- Clefable - Sleep Talk - TM82
  (36, 3600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 63),
  -- Clefable - Dream Eater - TM85
  (36, 3600, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 64),
  -- Clefable - Grass Knot - TM86
  (36, 3600, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 65),
  -- Clefable - Swagger - TM87
  (36, 3600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 66),
  -- Clefable - Substitute - TM90
  (36, 3600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 67),
  -- Clefable - Strength - TM96
  (36, 3600, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 68),
  -- Clefable - Rock Smash - TM98
  (36, 3600, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 69),
  -- Clefable - Amnesia - Egg
  (36, 3600, 133, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Clefable - Aromatherapy - Egg
  (36, 3600, 312, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Clefable - Belly Drum - Egg
  (36, 3600, 187, 21, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Clefable - Covet - Egg
  (36, 3600, 343, 21, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Clefable - Fake Tears - Egg
  (36, 3600, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Clefable - Heal Pulse - Egg
  (36, 3600, 505, 21, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Clefable - Metronome - Egg
  (36, 3600, 118, 21, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Clefable - Mimic - Egg
  (36, 3600, 102, 21, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Clefable - Misty Terrain - Egg
  (36, 3600, 581, 21, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Clefable - Present - Egg
  (36, 3600, 217, 21, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Clefable - Splash - Egg
  (36, 3600, 150, 21, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Clefable - Stored Power - Egg
  (36, 3600, 500, 21, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Clefable - Tickle - Egg
  (36, 3600, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Clefable - Wish - Egg
  (36, 3600, 273, 21, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Vulpix - Ember - Starting Move
  (37, 3700, 52, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Vulpix - Tail Whip - Starting Move
  (37, 3700, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Vulpix - Disable - Level 4
  (37, 3700, 50, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Vulpix - Quick Attack - Level 8
  (37, 3700, 98, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Vulpix - Spite - Level 12
  (37, 3700, 180, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Vulpix - Incinerate - Level 16
  (37, 3700, 510, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Vulpix - Confuse Ray - Level 20
  (37, 3700, 109, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Vulpix - Will-O-Wisp - Level 24
  (37, 3700, 261, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Vulpix - Extrasensory - Level 28
  (37, 3700, 326, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Vulpix - Flamethrower - Level 32
  (37, 3700, 53, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Vulpix - Imprison - Level 36
  (37, 3700, 286, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Vulpix - Fire Spin - Level 40
  (37, 3700, 83, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Vulpix - Safeguard - Level 44
  (37, 3700, 219, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Vulpix - Inferno - Level 48
  (37, 3700, 517, 21, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Vulpix - Grudge - Level 52
  (37, 3700, 288, 21, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Vulpix - Fire Blast - Level 56
  (37, 3700, 126, 21, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Vulpix - Roar - TM05
  (37, 3700, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 17),
  -- Vulpix - Sunny Day - TM11
  (37, 3700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Vulpix - Protect - TM17
  (37, 3700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 19),
  -- Vulpix - Safeguard - TM20
  (37, 3700, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 20),
  -- Vulpix - Iron Tail - TM23
  (37, 3700, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 21),
  -- Vulpix - Dig - TM28
  (37, 3700, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 22),
  -- Vulpix - Double Team - TM32
  (37, 3700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 23),
  -- Vulpix - Flamethrower - TM35
  (37, 3700, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 24),
  -- Vulpix - Fire Blast - TM38
  (37, 3700, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 25),
  -- Vulpix - Facade - TM42
  (37, 3700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 26),
  -- Vulpix - Rest - TM44
  (37, 3700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 27),
  -- Vulpix - Attract - TM45
  (37, 3700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 28),
  -- Vulpix - Overheat - TM50
  (37, 3700, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 29),
  -- Vulpix - Energy Ball - TM53
  (37, 3700, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 30),
  -- Vulpix - Endure - TM58
  (37, 3700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 31),
  -- Vulpix - Will-O-Wisp - TM61
  (37, 3700, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 32),
  -- Vulpix - Payback - TM66
  (37, 3700, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 33),
  -- Vulpix - Psych Up - TM77
  (37, 3700, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 34),
  -- Vulpix - Dark Pulse - TM79
  (37, 3700, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 35),
  -- Vulpix - Sleep Talk - TM82
  (37, 3700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 36),
  -- Vulpix - Swagger - TM87
  (37, 3700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 37),
  -- Vulpix - Substitute - TM90
  (37, 3700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 38),
  -- Vulpix - Baby-Doll Eyes - Egg
  (37, 3700, 608, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Vulpix - Disable - Egg
  (37, 3700, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Vulpix - Extrasensory - Egg
  (37, 3700, 326, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Vulpix - Flail - Egg
  (37, 3700, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Vulpix - Flame Charge - Egg
  (37, 3700, 488, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Vulpix - Flare Blitz - Egg
  (37, 3700, 394, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Vulpix - Heat Wave - Egg
  (37, 3700, 257, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Vulpix - Hex - Egg
  (37, 3700, 506, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Vulpix - Howl - Egg
  (37, 3700, 336, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Vulpix - Hypnosis - Egg
  (37, 3700, 95, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Vulpix - Memento - Egg
  (37, 3700, 262, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Vulpix - Power Swap - Egg
  (37, 3700, 384, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Vulpix - Spite - Egg
  (37, 3700, 180, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Ninetales - Nasty Plot - Starting Move
  (38, 3800, 417, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Ninetales - Spite - Starting Move
  (38, 3800, 180, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Ninetales - Incinerate - Starting Move
  (38, 3800, 510, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Ninetales - Confuse Ray - Starting Move
  (38, 3800, 109, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Ninetales - Will-O-Wisp - Starting Move
  (38, 3800, 261, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Ninetales - Extrasensory - Starting Move
  (38, 3800, 326, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Ninetales - Flamethrower - Starting Move
  (38, 3800, 53, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Ninetales - Imprison - Starting Move
  (38, 3800, 286, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Ninetales - Fire Spin - Starting Move
  (38, 3800, 83, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Ninetales - Safeguard - Starting Move
  (38, 3800, 219, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Ninetales - Inferno - Starting Move
  (38, 3800, 517, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Ninetales - Grudge - Starting Move
  (38, 3800, 288, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Ninetales - Fire Blast - Starting Move
  (38, 3800, 126, 21, NULL, 8, NULL, NULL, NULL, NULL, 13),
  -- Ninetales - Ember - Starting Move
  (38, 3800, 52, 21, NULL, 8, NULL, NULL, NULL, NULL, 14),
  -- Ninetales - Tail Whip - Starting Move
  (38, 3800, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 15),
  -- Ninetales - Disable - Starting Move
  (38, 3800, 50, 21, NULL, 8, NULL, NULL, NULL, NULL, 16),
  -- Ninetales - Quick Attack - Starting Move
  (38, 3800, 98, 21, NULL, 8, NULL, NULL, NULL, NULL, 17),
  -- Ninetales - Calm Mind - TM04
  (38, 3800, 347, 21, NULL, 2, NULL, NULL, 21002004, NULL, 18),
  -- Ninetales - Roar - TM05
  (38, 3800, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 19),
  -- Ninetales - Sunny Day - TM11
  (38, 3800, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Ninetales - Hyper Beam - TM15
  (38, 3800, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 21),
  -- Ninetales - Protect - TM17
  (38, 3800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Ninetales - Safeguard - TM20
  (38, 3800, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 23),
  -- Ninetales - Solar Beam - TM22
  (38, 3800, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 24),
  -- Ninetales - Iron Tail - TM23
  (38, 3800, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 25),
  -- Ninetales - Dig - TM28
  (38, 3800, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 26),
  -- Ninetales - Shadow Ball - TM30
  (38, 3800, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 27),
  -- Ninetales - Double Team - TM32
  (38, 3800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 28),
  -- Ninetales - Flamethrower - TM35
  (38, 3800, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 29),
  -- Ninetales - Fire Blast - TM38
  (38, 3800, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 30),
  -- Ninetales - Facade - TM42
  (38, 3800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 31),
  -- Ninetales - Rest - TM44
  (38, 3800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 32),
  -- Ninetales - Attract - TM45
  (38, 3800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 33),
  -- Ninetales - Overheat - TM50
  (38, 3800, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 34),
  -- Ninetales - Energy Ball - TM53
  (38, 3800, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 35),
  -- Ninetales - Endure - TM58
  (38, 3800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 36),
  -- Ninetales - Will-O-Wisp - TM61
  (38, 3800, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 37),
  -- Ninetales - Nasty Plot - TM63
  (38, 3800, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 38),
  -- Ninetales - Payback - TM66
  (38, 3800, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 39),
  -- Ninetales - Giga Impact - TM68
  (38, 3800, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 40),
  -- Ninetales - Psych Up - TM77
  (38, 3800, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 41),
  -- Ninetales - Dark Pulse - TM79
  (38, 3800, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 42),
  -- Ninetales - Sleep Talk - TM82
  (38, 3800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 43),
  -- Ninetales - Dream Eater - TM85
  (38, 3800, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 44),
  -- Ninetales - Swagger - TM87
  (38, 3800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 45),
  -- Ninetales - Substitute - TM90
  (38, 3800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 46),
  -- Ninetales - Baby-Doll Eyes - Egg
  (38, 3800, 608, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Ninetales - Disable - Egg
  (38, 3800, 50, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Ninetales - Extrasensory - Egg
  (38, 3800, 326, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Ninetales - Flail - Egg
  (38, 3800, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Ninetales - Flame Charge - Egg
  (38, 3800, 488, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Ninetales - Flare Blitz - Egg
  (38, 3800, 394, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Ninetales - Heat Wave - Egg
  (38, 3800, 257, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Ninetales - Hex - Egg
  (38, 3800, 506, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Ninetales - Howl - Egg
  (38, 3800, 336, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Ninetales - Hypnosis - Egg
  (38, 3800, 95, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Ninetales - Memento - Egg
  (38, 3800, 262, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Ninetales - Power Swap - Egg
  (38, 3800, 384, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Ninetales - Spite - Egg
  (38, 3800, 180, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Jigglypuff - Sweet Kiss - Starting Move
  (39, 3900, 186, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Jigglypuff - Disarming Voice - Starting Move
  (39, 3900, 574, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Jigglypuff - Disable - Starting Move
  (39, 3900, 50, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Jigglypuff - Charm - Starting Move
  (39, 3900, 204, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Jigglypuff - Sing - Starting Move
  (39, 3900, 47, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Jigglypuff - Pound - Starting Move
  (39, 3900, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Jigglypuff - Copycat - Starting Move
  (39, 3900, 383, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Jigglypuff - Defense Curl - Starting Move
  (39, 3900, 111, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Jigglypuff - Echoed Voice - Level 4
  (39, 3900, 497, 21, NULL, 1, 4, NULL, NULL, NULL, 9),
  -- Jigglypuff - Covet - Level 8
  (39, 3900, 343, 21, NULL, 1, 8, NULL, NULL, NULL, 10),
  -- Jigglypuff - Stockpile - Level 12
  (39, 3900, 254, 21, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Jigglypuff - Swallow - Level 12
  (39, 3900, 256, 21, NULL, 1, 12, NULL, NULL, NULL, 12),
  -- Jigglypuff - Spit Up - Level 12
  (39, 3900, 255, 21, NULL, 1, 12, NULL, NULL, NULL, 13),
  -- Jigglypuff - Round - Level 16
  (39, 3900, 496, 21, NULL, 1, 16, NULL, NULL, NULL, 14),
  -- Jigglypuff - Rest - Level 20
  (39, 3900, 156, 21, NULL, 1, 20, NULL, NULL, NULL, 15),
  -- Jigglypuff - Body Slam - Level 24
  (39, 3900, 34, 21, NULL, 1, 24, NULL, NULL, NULL, 16),
  -- Jigglypuff - Mimic - Level 28
  (39, 3900, 102, 21, NULL, 1, 28, NULL, NULL, NULL, 17),
  -- Jigglypuff - Gyro Ball - Level 32
  (39, 3900, 360, 21, NULL, 1, 32, NULL, NULL, NULL, 18),
  -- Jigglypuff - Hyper Voice - Level 36
  (39, 3900, 304, 21, NULL, 1, 36, NULL, NULL, NULL, 19),
  -- Jigglypuff - Play Rough - Level 40
  (39, 3900, 583, 21, NULL, 1, 40, NULL, NULL, NULL, 20),
  -- Jigglypuff - Double-Edge - Level 44
  (39, 3900, 38, 21, NULL, 1, 44, NULL, NULL, NULL, 21),
  -- Jigglypuff - Focus Punch - TM01
  (39, 3900, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 22),
  -- Jigglypuff - Water Pulse - TM03
  (39, 3900, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 23),
  -- Jigglypuff - Work Up - TM10
  (39, 3900, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 24),
  -- Jigglypuff - Sunny Day - TM11
  (39, 3900, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 25),
  -- Jigglypuff - Ice Beam - TM13
  (39, 3900, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 26),
  -- Jigglypuff - Blizzard - TM14
  (39, 3900, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 27),
  -- Jigglypuff - Light Screen - TM16
  (39, 3900, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 28),
  -- Jigglypuff - Protect - TM17
  (39, 3900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 29),
  -- Jigglypuff - Rain Dance - TM18
  (39, 3900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 30),
  -- Jigglypuff - Safeguard - TM20
  (39, 3900, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 31),
  -- Jigglypuff - Dazzling Gleam - TM21
  (39, 3900, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 32),
  -- Jigglypuff - Solar Beam - TM22
  (39, 3900, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 33),
  -- Jigglypuff - Thunderbolt - TM24
  (39, 3900, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 34),
  -- Jigglypuff - Thunder - TM25
  (39, 3900, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 35),
  -- Jigglypuff - Dig - TM28
  (39, 3900, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 36),
  -- Jigglypuff - Psychic - TM29
  (39, 3900, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 37),
  -- Jigglypuff - Shadow Ball - TM30
  (39, 3900, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 38),
  -- Jigglypuff - Brick Break - TM31
  (39, 3900, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 39),
  -- Jigglypuff - Double Team - TM32
  (39, 3900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 40),
  -- Jigglypuff - Reflect - TM33
  (39, 3900, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 41),
  -- Jigglypuff - Shock Wave - TM34
  (39, 3900, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 42),
  -- Jigglypuff - Flamethrower - TM35
  (39, 3900, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 43),
  -- Jigglypuff - Fire Blast - TM38
  (39, 3900, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 44),
  -- Jigglypuff - Facade - TM42
  (39, 3900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 45),
  -- Jigglypuff - Rest - TM44
  (39, 3900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 46),
  -- Jigglypuff - Attract - TM45
  (39, 3900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 47),
  -- Jigglypuff - Fling - TM56
  (39, 3900, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 48),
  -- Jigglypuff - Charge Beam - TM57
  (39, 3900, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 49),
  -- Jigglypuff - Endure - TM58
  (39, 3900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 50),
  -- Jigglypuff - Drain Punch - TM60
  (39, 3900, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 51),
  -- Jigglypuff - Recycle - TM67
  (39, 3900, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 52),
  -- Jigglypuff - Flash - TM70
  (39, 3900, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 53),
  -- Jigglypuff - Thunder Wave - TM73
  (39, 3900, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 54),
  -- Jigglypuff - Gyro Ball - TM74
  (39, 3900, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 55),
  -- Jigglypuff - Stealth Rock - TM76
  (39, 3900, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 56),
  -- Jigglypuff - Psych Up - TM77
  (39, 3900, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 57),
  -- Jigglypuff - Sleep Talk - TM82
  (39, 3900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 58),
  -- Jigglypuff - Dream Eater - TM85
  (39, 3900, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 59),
  -- Jigglypuff - Grass Knot - TM86
  (39, 3900, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 60),
  -- Jigglypuff - Swagger - TM87
  (39, 3900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 61),
  -- Jigglypuff - Substitute - TM90
  (39, 3900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 62),
  -- Jigglypuff - Strength - TM96
  (39, 3900, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 63),
  -- Jigglypuff - Covet - Egg
  (39, 3900, 343, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Jigglypuff - Fake Tears - Egg
  (39, 3900, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Jigglypuff - Gravity - Egg
  (39, 3900, 356, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Jigglypuff - Heal Pulse - Egg
  (39, 3900, 505, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Jigglypuff - Last Resort - Egg
  (39, 3900, 387, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Jigglypuff - Misty Terrain - Egg
  (39, 3900, 581, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Jigglypuff - Perish Song - Egg
  (39, 3900, 195, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Jigglypuff - Present - Egg
  (39, 3900, 217, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Jigglypuff - Rollout - Egg
  (39, 3900, 205, 21, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Jigglypuff - Wish - Egg
  (39, 3900, 273, 21, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Charmander - Scratch - Starting Move
  (4, 400, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Charmander - Growl - Starting Move
  (4, 400, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Charmander - Ember - Level 4
  (4, 400, 52, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Charmander - Smokescreen - Level 8
  (4, 400, 108, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Charmander - Dragon Breath - Level 12
  (4, 400, 225, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Charmander - Fire Fang - Level 17
  (4, 400, 424, 21, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Charmander - Slash - Level 20
  (4, 400, 163, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Charmander - Flamethrower - Level 24
  (4, 400, 53, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Charmander - Scary Face - Level 28
  (4, 400, 184, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Charmander - Fire Spin - Level 32
  (4, 400, 83, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Charmander - Inferno - Level 36
  (4, 400, 517, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Charmander - Flare Blitz - Level 40
  (4, 400, 394, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Charmander - Focus Punch - TM01
  (4, 400, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 13),
  -- Charmander - Dragon Claw - TM02
  (4, 400, 337, 21, NULL, 2, NULL, NULL, 21002002, NULL, 14),
  -- Charmander - Work Up - TM10
  (4, 400, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 15),
  -- Charmander - Sunny Day - TM11
  (4, 400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Charmander - Protect - TM17
  (4, 400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 17),
  -- Charmander - Iron Tail - TM23
  (4, 400, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 18),
  -- Charmander - Dig - TM28
  (4, 400, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 19),
  -- Charmander - Brick Break - TM31
  (4, 400, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 20),
  -- Charmander - Double Team - TM32
  (4, 400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 21),
  -- Charmander - Flamethrower - TM35
  (4, 400, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 22),
  -- Charmander - Fire Blast - TM38
  (4, 400, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 23),
  -- Charmander - Rock Tomb - TM39
  (4, 400, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 24),
  -- Charmander - Aerial Ace - TM40
  (4, 400, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 25),
  -- Charmander - Facade - TM42
  (4, 400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 26),
  -- Charmander - Rest - TM44
  (4, 400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 27),
  -- Charmander - Attract - TM45
  (4, 400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 28),
  -- Charmander - Overheat - TM50
  (4, 400, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 29),
  -- Charmander - False Swipe - TM54
  (4, 400, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 30),
  -- Charmander - Fling - TM56
  (4, 400, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 31),
  -- Charmander - Endure - TM58
  (4, 400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 32),
  -- Charmander - Dragon Pulse - TM59
  (4, 400, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 33),
  -- Charmander - Will-O-Wisp - TM61
  (4, 400, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 34),
  -- Charmander - Shadow Claw - TM65
  (4, 400, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 35),
  -- Charmander - Swords Dance - TM75
  (4, 400, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 36),
  -- Charmander - Rock Slide - TM80
  (4, 400, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 37),
  -- Charmander - Sleep Talk - TM82
  (4, 400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 38),
  -- Charmander - Swagger - TM87
  (4, 400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 39),
  -- Charmander - Substitute - TM90
  (4, 400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 40),
  -- Charmander - Cut - TM93
  (4, 400, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 41),
  -- Charmander - Strength - TM96
  (4, 400, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 42),
  -- Charmander - Rock Smash - TM98
  (4, 400, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 43),
  -- Charmander - Air Cutter - Egg
  (4, 400, 314, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Charmander - Ancient Power - Egg
  (4, 400, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Charmander - Beat Up - Egg
  (4, 400, 251, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Charmander - Belly Drum - Egg
  (4, 400, 187, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Charmander - Bite - Egg
  (4, 400, 44, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Charmander - Counter - Egg
  (4, 400, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Charmander - Crunch - Egg
  (4, 400, 242, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Charmander - Dragon Dance - Egg
  (4, 400, 349, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Charmander - Dragon Rush - Egg
  (4, 400, 407, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Charmander - Dragon Tail - Egg
  (4, 400, 525, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Charmander - Flare Blitz - Egg
  (4, 400, 394, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Charmander - Metal Claw - Egg
  (4, 400, 232, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Charmander - Outrage - Egg
  (4, 400, 200, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Charmander - Wing Attack - Egg
  (4, 400, 17, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Wigglytuff - Sweet Kiss - Starting Move
  (40, 4000, 186, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Wigglytuff - Disarming Voice - Starting Move
  (40, 4000, 574, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Wigglytuff - Disable - Starting Move
  (40, 4000, 50, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Wigglytuff - Charm - Starting Move
  (40, 4000, 204, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Wigglytuff - Echoed Voice - Starting Move
  (40, 4000, 497, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Wigglytuff - Covet - Starting Move
  (40, 4000, 343, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Wigglytuff - Stockpile - Starting Move
  (40, 4000, 254, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Wigglytuff - Swallow - Starting Move
  (40, 4000, 256, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Wigglytuff - Spit Up - Starting Move
  (40, 4000, 255, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Wigglytuff - Round - Starting Move
  (40, 4000, 496, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Wigglytuff - Rest - Starting Move
  (40, 4000, 156, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Wigglytuff - Body Slam - Starting Move
  (40, 4000, 34, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Wigglytuff - Mimic - Starting Move
  (40, 4000, 102, 21, NULL, 8, NULL, NULL, NULL, NULL, 13),
  -- Wigglytuff - Gyro Ball - Starting Move
  (40, 4000, 360, 21, NULL, 8, NULL, NULL, NULL, NULL, 14),
  -- Wigglytuff - Play Rough - Starting Move
  (40, 4000, 583, 21, NULL, 8, NULL, NULL, NULL, NULL, 15),
  -- Wigglytuff - Hyper Voice - Starting Move
  (40, 4000, 304, 21, NULL, 8, NULL, NULL, NULL, NULL, 16),
  -- Wigglytuff - Double-Edge - Starting Move
  (40, 4000, 38, 21, NULL, 8, NULL, NULL, NULL, NULL, 17),
  -- Wigglytuff - Sing - Starting Move
  (40, 4000, 47, 21, NULL, 8, NULL, NULL, NULL, NULL, 18),
  -- Wigglytuff - Pound - Starting Move
  (40, 4000, 1, 21, NULL, 8, NULL, NULL, NULL, NULL, 19),
  -- Wigglytuff - Copycat - Starting Move
  (40, 4000, 383, 21, NULL, 8, NULL, NULL, NULL, NULL, 20),
  -- Wigglytuff - Defense Curl - Starting Move
  (40, 4000, 111, 21, NULL, 8, NULL, NULL, NULL, NULL, 21),
  -- Wigglytuff - Focus Punch - TM01
  (40, 4000, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 22),
  -- Wigglytuff - Water Pulse - TM03
  (40, 4000, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 23),
  -- Wigglytuff - Work Up - TM10
  (40, 4000, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 24),
  -- Wigglytuff - Sunny Day - TM11
  (40, 4000, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 25),
  -- Wigglytuff - Ice Beam - TM13
  (40, 4000, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 26),
  -- Wigglytuff - Blizzard - TM14
  (40, 4000, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 27),
  -- Wigglytuff - Hyper Beam - TM15
  (40, 4000, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 28),
  -- Wigglytuff - Light Screen - TM16
  (40, 4000, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 29),
  -- Wigglytuff - Protect - TM17
  (40, 4000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 30),
  -- Wigglytuff - Rain Dance - TM18
  (40, 4000, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 31),
  -- Wigglytuff - Safeguard - TM20
  (40, 4000, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 32),
  -- Wigglytuff - Dazzling Gleam - TM21
  (40, 4000, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 33),
  -- Wigglytuff - Solar Beam - TM22
  (40, 4000, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 34),
  -- Wigglytuff - Thunderbolt - TM24
  (40, 4000, 85, 21, NULL, 2, NULL, NULL, 21002024, NULL, 35),
  -- Wigglytuff - Thunder - TM25
  (40, 4000, 87, 21, NULL, 2, NULL, NULL, 21002025, NULL, 36),
  -- Wigglytuff - Dig - TM28
  (40, 4000, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 37),
  -- Wigglytuff - Psychic - TM29
  (40, 4000, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 38),
  -- Wigglytuff - Shadow Ball - TM30
  (40, 4000, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 39),
  -- Wigglytuff - Brick Break - TM31
  (40, 4000, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 40),
  -- Wigglytuff - Double Team - TM32
  (40, 4000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 41),
  -- Wigglytuff - Reflect - TM33
  (40, 4000, 115, 21, NULL, 2, NULL, NULL, 21002033, NULL, 42),
  -- Wigglytuff - Shock Wave - TM34
  (40, 4000, 351, 21, NULL, 2, NULL, NULL, 21002034, NULL, 43),
  -- Wigglytuff - Flamethrower - TM35
  (40, 4000, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 44),
  -- Wigglytuff - Fire Blast - TM38
  (40, 4000, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 45),
  -- Wigglytuff - Facade - TM42
  (40, 4000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 46),
  -- Wigglytuff - Rest - TM44
  (40, 4000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 47),
  -- Wigglytuff - Attract - TM45
  (40, 4000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 48),
  -- Wigglytuff - Focus Blast - TM52
  (40, 4000, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 49),
  -- Wigglytuff - Fling - TM56
  (40, 4000, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 50),
  -- Wigglytuff - Charge Beam - TM57
  (40, 4000, 451, 21, NULL, 2, NULL, NULL, 21002057, NULL, 51),
  -- Wigglytuff - Endure - TM58
  (40, 4000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 52),
  -- Wigglytuff - Drain Punch - TM60
  (40, 4000, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 53),
  -- Wigglytuff - Recycle - TM67
  (40, 4000, 278, 21, NULL, 2, NULL, NULL, 21002067, NULL, 54),
  -- Wigglytuff - Giga Impact - TM68
  (40, 4000, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 55),
  -- Wigglytuff - Flash - TM70
  (40, 4000, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 56),
  -- Wigglytuff - Thunder Wave - TM73
  (40, 4000, 86, 21, NULL, 2, NULL, NULL, 21002073, NULL, 57),
  -- Wigglytuff - Gyro Ball - TM74
  (40, 4000, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 58),
  -- Wigglytuff - Stealth Rock - TM76
  (40, 4000, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 59),
  -- Wigglytuff - Psych Up - TM77
  (40, 4000, 244, 21, NULL, 2, NULL, NULL, 21002077, NULL, 60),
  -- Wigglytuff - Sleep Talk - TM82
  (40, 4000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 61),
  -- Wigglytuff - Dream Eater - TM85
  (40, 4000, 138, 21, NULL, 2, NULL, NULL, 21002085, NULL, 62),
  -- Wigglytuff - Grass Knot - TM86
  (40, 4000, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 63),
  -- Wigglytuff - Swagger - TM87
  (40, 4000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 64),
  -- Wigglytuff - Substitute - TM90
  (40, 4000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 65),
  -- Wigglytuff - Strength - TM96
  (40, 4000, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 66),
  -- Wigglytuff - Covet - Egg
  (40, 4000, 343, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Wigglytuff - Fake Tears - Egg
  (40, 4000, 313, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Wigglytuff - Gravity - Egg
  (40, 4000, 356, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Wigglytuff - Heal Pulse - Egg
  (40, 4000, 505, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Wigglytuff - Last Resort - Egg
  (40, 4000, 387, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Wigglytuff - Misty Terrain - Egg
  (40, 4000, 581, 21, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Wigglytuff - Perish Song - Egg
  (40, 4000, 195, 21, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Wigglytuff - Present - Egg
  (40, 4000, 217, 21, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Wigglytuff - Rollout - Egg
  (40, 4000, 205, 21, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Wigglytuff - Wish - Egg
  (40, 4000, 273, 21, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Zubat - Absorb - Starting Move
  (41, 4100, 71, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Zubat - Supersonic - Starting Move
  (41, 4100, 48, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Zubat - Astonish - Level 5
  (41, 4100, 310, 21, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Zubat - Mean Look - Level 10
  (41, 4100, 212, 21, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Zubat - Poison Fang - Level 15
  (41, 4100, 305, 21, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Zubat - Quick Guard - Level 20
  (41, 4100, 501, 21, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Zubat - Air Cutter - Level 25
  (41, 4100, 314, 21, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Zubat - Bite - Level 30
  (41, 4100, 44, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Zubat - Haze - Level 35
  (41, 4100, 114, 21, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Zubat - Venoshock - Level 40
  (41, 4100, 474, 21, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Zubat - Confuse Ray - Level 45
  (41, 4100, 109, 21, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Zubat - Air Slash - Level 50
  (41, 4100, 403, 21, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Zubat - Leech Life - Level 55
  (41, 4100, 141, 21, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Zubat - Sunny Day - TM11
  (41, 4100, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 14),
  -- Zubat - Taunt - TM12
  (41, 4100, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 15),
  -- Zubat - Protect - TM17
  (41, 4100, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 16),
  -- Zubat - Rain Dance - TM18
  (41, 4100, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 17),
  -- Zubat - Giga Drain - TM19
  (41, 4100, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 18),
  -- Zubat - Shadow Ball - TM30
  (41, 4100, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 19),
  -- Zubat - Double Team - TM32
  (41, 4100, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 20),
  -- Zubat - Sludge Bomb - TM36
  (41, 4100, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 21),
  -- Zubat - Aerial Ace - TM40
  (41, 4100, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 22),
  -- Zubat - Torment - TM41
  (41, 4100, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 23),
  -- Zubat - Facade - TM42
  (41, 4100, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 24),
  -- Zubat - Rest - TM44
  (41, 4100, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 25),
  -- Zubat - Attract - TM45
  (41, 4100, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 26),
  -- Zubat - Thief - TM46
  (41, 4100, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 27),
  -- Zubat - Steel Wing - TM47
  (41, 4100, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 28),
  -- Zubat - Roost - TM51
  (41, 4100, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 29),
  -- Zubat - Endure - TM58
  (41, 4100, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 30),
  -- Zubat - Nasty Plot - TM63
  (41, 4100, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 31),
  -- Zubat - Payback - TM66
  (41, 4100, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 32),
  -- Zubat - Sleep Talk - TM82
  (41, 4100, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 33),
  -- Zubat - Swagger - TM87
  (41, 4100, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 34),
  -- Zubat - Pluck - TM88
  (41, 4100, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 35),
  -- Zubat - U-turn - TM89
  (41, 4100, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 36),
  -- Zubat - Substitute - TM90
  (41, 4100, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 37),
  -- Zubat - Fly - TM94
  (41, 4100, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 38),
  -- Zubat - Defog - TM97
  (41, 4100, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 39),
  -- Zubat - Brave Bird - Egg
  (41, 4100, 413, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Zubat - Curse - Egg
  (41, 4100, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Zubat - Gust - Egg
  (41, 4100, 16, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Zubat - Hypnosis - Egg
  (41, 4100, 95, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Zubat - Quick Attack - Egg
  (41, 4100, 98, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Zubat - Venom Drench - Egg
  (41, 4100, 599, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Zubat - Whirlwind - Egg
  (41, 4100, 18, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Zubat - Wing Attack - Egg
  (41, 4100, 17, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Zubat - Zen Headbutt - Egg
  (41, 4100, 428, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Golbat - Screech - Starting Move
  (42, 4200, 103, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Golbat - Absorb - Starting Move
  (42, 4200, 71, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Golbat - Supersonic - Starting Move
  (42, 4200, 48, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Golbat - Astonish - Starting Move
  (42, 4200, 310, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Golbat - Mean Look - Starting Move
  (42, 4200, 212, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Golbat - Poison Fang - Level 15
  (42, 4200, 305, 21, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Golbat - Quick Guard - Level 20
  (42, 4200, 501, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Golbat - Air Cutter - Level 27
  (42, 4200, 314, 21, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Golbat - Bite - Level 34
  (42, 4200, 44, 21, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Golbat - Haze - Level 41
  (42, 4200, 114, 21, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Golbat - Venoshock - Level 48
  (42, 4200, 474, 21, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Golbat - Confuse Ray - Level 55
  (42, 4200, 109, 21, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Golbat - Air Slash - Level 62
  (42, 4200, 403, 21, NULL, 1, 62, NULL, NULL, NULL, 13),
  -- Golbat - Leech Life - Level 69
  (42, 4200, 141, 21, NULL, 1, 69, NULL, NULL, NULL, 14),
  -- Golbat - Sunny Day - TM11
  (42, 4200, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 15),
  -- Golbat - Taunt - TM12
  (42, 4200, 269, 21, NULL, 2, NULL, NULL, 21002012, NULL, 16),
  -- Golbat - Hyper Beam - TM15
  (42, 4200, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 17),
  -- Golbat - Protect - TM17
  (42, 4200, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 18),
  -- Golbat - Rain Dance - TM18
  (42, 4200, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 19),
  -- Golbat - Giga Drain - TM19
  (42, 4200, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 20),
  -- Golbat - Shadow Ball - TM30
  (42, 4200, 247, 21, NULL, 2, NULL, NULL, 21002030, NULL, 21),
  -- Golbat - Double Team - TM32
  (42, 4200, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 22),
  -- Golbat - Sludge Bomb - TM36
  (42, 4200, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 23),
  -- Golbat - Aerial Ace - TM40
  (42, 4200, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 24),
  -- Golbat - Torment - TM41
  (42, 4200, 259, 21, NULL, 2, NULL, NULL, 21002041, NULL, 25),
  -- Golbat - Facade - TM42
  (42, 4200, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 26),
  -- Golbat - Rest - TM44
  (42, 4200, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 27),
  -- Golbat - Attract - TM45
  (42, 4200, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 28),
  -- Golbat - Thief - TM46
  (42, 4200, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 29),
  -- Golbat - Steel Wing - TM47
  (42, 4200, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 30),
  -- Golbat - Roost - TM51
  (42, 4200, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 31),
  -- Golbat - Endure - TM58
  (42, 4200, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 32),
  -- Golbat - Nasty Plot - TM63
  (42, 4200, 417, 21, NULL, 2, NULL, NULL, 21002063, NULL, 33),
  -- Golbat - Payback - TM66
  (42, 4200, 371, 21, NULL, 2, NULL, NULL, 21002066, NULL, 34),
  -- Golbat - Giga Impact - TM68
  (42, 4200, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 35),
  -- Golbat - Sleep Talk - TM82
  (42, 4200, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 36),
  -- Golbat - Swagger - TM87
  (42, 4200, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 37),
  -- Golbat - Pluck - TM88
  (42, 4200, 365, 21, NULL, 2, NULL, NULL, 21002088, NULL, 38),
  -- Golbat - U-turn - TM89
  (42, 4200, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 39),
  -- Golbat - Substitute - TM90
  (42, 4200, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 40),
  -- Golbat - Fly - TM94
  (42, 4200, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 41),
  -- Golbat - Defog - TM97
  (42, 4200, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 42),
  -- Golbat - Brave Bird - Egg
  (42, 4200, 413, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Golbat - Curse - Egg
  (42, 4200, 174, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Golbat - Gust - Egg
  (42, 4200, 16, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Golbat - Hypnosis - Egg
  (42, 4200, 95, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Golbat - Quick Attack - Egg
  (42, 4200, 98, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Golbat - Venom Drench - Egg
  (42, 4200, 599, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Golbat - Whirlwind - Egg
  (42, 4200, 18, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Golbat - Wing Attack - Egg
  (42, 4200, 17, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Golbat - Zen Headbutt - Egg
  (42, 4200, 428, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Oddish - Absorb - Starting Move
  (43, 4300, 71, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Oddish - Growth - Starting Move
  (43, 4300, 74, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Oddish - Acid - Level 4
  (43, 4300, 51, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Oddish - Sweet Scent - Level 8
  (43, 4300, 230, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Oddish - Mega Drain - Level 12
  (43, 4300, 72, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Oddish - Poison Powder - Level 14
  (43, 4300, 77, 21, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Oddish - Stun Spore - Level 16
  (43, 4300, 78, 21, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Oddish - Sleep Powder - Level 18
  (43, 4300, 79, 21, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Oddish - Giga Drain - Level 20
  (43, 4300, 202, 21, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Oddish - Toxic - Level 24
  (43, 4300, 92, 21, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Oddish - Moonblast - Level 28
  (43, 4300, 585, 21, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Oddish - Grassy Terrain - Level 32
  (43, 4300, 580, 21, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Oddish - Moonlight - Level 36
  (43, 4300, 236, 21, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Oddish - Petal Dance - Level 40
  (43, 4300, 80, 21, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Oddish - Toxic - TM06
  (43, 4300, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 15),
  -- Oddish - Bullet Seed - TM09
  (43, 4300, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 16),
  -- Oddish - Sunny Day - TM11
  (43, 4300, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Oddish - Protect - TM17
  (43, 4300, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 18),
  -- Oddish - Giga Drain - TM19
  (43, 4300, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 19),
  -- Oddish - Dazzling Gleam - TM21
  (43, 4300, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 20),
  -- Oddish - Solar Beam - TM22
  (43, 4300, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 21),
  -- Oddish - Double Team - TM32
  (43, 4300, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 22),
  -- Oddish - Sludge Bomb - TM36
  (43, 4300, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 23),
  -- Oddish - Facade - TM42
  (43, 4300, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 24),
  -- Oddish - Rest - TM44
  (43, 4300, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 25),
  -- Oddish - Attract - TM45
  (43, 4300, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 26),
  -- Oddish - Energy Ball - TM53
  (43, 4300, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 27),
  -- Oddish - Endure - TM58
  (43, 4300, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 28),
  -- Oddish - Flash - TM70
  (43, 4300, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 29),
  -- Oddish - Swords Dance - TM75
  (43, 4300, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 30),
  -- Oddish - Sleep Talk - TM82
  (43, 4300, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 31),
  -- Oddish - Grass Knot - TM86
  (43, 4300, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 32),
  -- Oddish - Swagger - TM87
  (43, 4300, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 33),
  -- Oddish - Substitute - TM90
  (43, 4300, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 34),
  -- Oddish - Cut - TM93
  (43, 4300, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 35),
  -- Oddish - After You - Egg
  (43, 4300, 495, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Oddish - Charm - Egg
  (43, 4300, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Oddish - Flail - Egg
  (43, 4300, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Oddish - Ingrain - Egg
  (43, 4300, 275, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Oddish - Leech Seed - Egg
  (43, 4300, 73, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Oddish - Nature Power - Egg
  (43, 4300, 267, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Oddish - Razor Leaf - Egg
  (43, 4300, 75, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Oddish - Strength Sap - Egg
  (43, 4300, 668, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Oddish - Synthesis - Egg
  (43, 4300, 235, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Oddish - Teeter Dance - Egg
  (43, 4300, 298, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Oddish - Tickle - Egg
  (43, 4300, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Gloom - Absorb - Starting Move
  (44, 4400, 71, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Gloom - Growth - Starting Move
  (44, 4400, 74, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Gloom - Acid - Starting Move
  (44, 4400, 51, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Gloom - Sweet Scent - Starting Move
  (44, 4400, 230, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Gloom - Mega Drain - Level 12
  (44, 4400, 72, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Gloom - Poison Powder - Level 14
  (44, 4400, 77, 21, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Gloom - Stun Spore - Level 16
  (44, 4400, 78, 21, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Gloom - Sleep Powder - Level 18
  (44, 4400, 79, 21, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Gloom - Giga Drain - Level 20
  (44, 4400, 202, 21, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Gloom - Toxic - Level 26
  (44, 4400, 92, 21, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Gloom - Moonblast - Level 32
  (44, 4400, 585, 21, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Gloom - Grassy Terrain - Level 38
  (44, 4400, 580, 21, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Gloom - Moonlight - Level 44
  (44, 4400, 236, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Gloom - Petal Dance - Level 50
  (44, 4400, 80, 21, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Gloom - Toxic - TM06
  (44, 4400, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 15),
  -- Gloom - Bullet Seed - TM09
  (44, 4400, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 16),
  -- Gloom - Sunny Day - TM11
  (44, 4400, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 17),
  -- Gloom - Protect - TM17
  (44, 4400, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 18),
  -- Gloom - Giga Drain - TM19
  (44, 4400, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 19),
  -- Gloom - Dazzling Gleam - TM21
  (44, 4400, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 20),
  -- Gloom - Solar Beam - TM22
  (44, 4400, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 21),
  -- Gloom - Double Team - TM32
  (44, 4400, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 22),
  -- Gloom - Sludge Bomb - TM36
  (44, 4400, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 23),
  -- Gloom - Facade - TM42
  (44, 4400, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 24),
  -- Gloom - Rest - TM44
  (44, 4400, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 25),
  -- Gloom - Attract - TM45
  (44, 4400, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 26),
  -- Gloom - Energy Ball - TM53
  (44, 4400, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 27),
  -- Gloom - Fling - TM56
  (44, 4400, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 28),
  -- Gloom - Endure - TM58
  (44, 4400, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 29),
  -- Gloom - Drain Punch - TM60
  (44, 4400, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 30),
  -- Gloom - Flash - TM70
  (44, 4400, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 31),
  -- Gloom - Swords Dance - TM75
  (44, 4400, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 32),
  -- Gloom - Sleep Talk - TM82
  (44, 4400, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 33),
  -- Gloom - Grass Knot - TM86
  (44, 4400, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 34),
  -- Gloom - Swagger - TM87
  (44, 4400, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 35),
  -- Gloom - Substitute - TM90
  (44, 4400, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 36),
  -- Gloom - Cut - TM93
  (44, 4400, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 37),
  -- Gloom - After You - Egg
  (44, 4400, 495, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Gloom - Charm - Egg
  (44, 4400, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Gloom - Flail - Egg
  (44, 4400, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Gloom - Ingrain - Egg
  (44, 4400, 275, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Gloom - Leech Seed - Egg
  (44, 4400, 73, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Gloom - Nature Power - Egg
  (44, 4400, 267, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Gloom - Razor Leaf - Egg
  (44, 4400, 75, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Gloom - Strength Sap - Egg
  (44, 4400, 668, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Gloom - Synthesis - Egg
  (44, 4400, 235, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Gloom - Teeter Dance - Egg
  (44, 4400, 298, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Gloom - Tickle - Egg
  (44, 4400, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Vileplume - Petal Blizzard - Starting Move
  (45, 4500, 572, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Vileplume - Aromatherapy - Starting Move
  (45, 4500, 312, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Vileplume - Mega Drain - Starting Move
  (45, 4500, 72, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Vileplume - Poison Powder - Starting Move
  (45, 4500, 77, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Vileplume - Stun Spore - Starting Move
  (45, 4500, 78, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Vileplume - Sleep Powder - Starting Move
  (45, 4500, 79, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Vileplume - Giga Drain - Starting Move
  (45, 4500, 202, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Vileplume - Toxic - Starting Move
  (45, 4500, 92, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Vileplume - Moonblast - Starting Move
  (45, 4500, 585, 21, NULL, 8, NULL, NULL, NULL, NULL, 9),
  -- Vileplume - Grassy Terrain - Starting Move
  (45, 4500, 580, 21, NULL, 8, NULL, NULL, NULL, NULL, 10),
  -- Vileplume - Moonlight - Starting Move
  (45, 4500, 236, 21, NULL, 8, NULL, NULL, NULL, NULL, 11),
  -- Vileplume - Petal Dance - Starting Move
  (45, 4500, 80, 21, NULL, 8, NULL, NULL, NULL, NULL, 12),
  -- Vileplume - Absorb - Starting Move
  (45, 4500, 71, 21, NULL, 8, NULL, NULL, NULL, NULL, 13),
  -- Vileplume - Growth - Starting Move
  (45, 4500, 74, 21, NULL, 8, NULL, NULL, NULL, NULL, 14),
  -- Vileplume - Acid - Starting Move
  (45, 4500, 51, 21, NULL, 8, NULL, NULL, NULL, NULL, 15),
  -- Vileplume - Sweet Scent - Starting Move
  (45, 4500, 230, 21, NULL, 8, NULL, NULL, NULL, NULL, 16),
  -- Vileplume - Petal Blizzard - Evolution
  (45, 4500, 572, 21, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Vileplume - Toxic - TM06
  (45, 4500, 92, 21, NULL, 2, NULL, NULL, 21002006, NULL, 18),
  -- Vileplume - Bullet Seed - TM09
  (45, 4500, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 19),
  -- Vileplume - Sunny Day - TM11
  (45, 4500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 20),
  -- Vileplume - Hyper Beam - TM15
  (45, 4500, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 21),
  -- Vileplume - Protect - TM17
  (45, 4500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 22),
  -- Vileplume - Giga Drain - TM19
  (45, 4500, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 23),
  -- Vileplume - Safeguard - TM20
  (45, 4500, 219, 21, NULL, 2, NULL, NULL, 21002020, NULL, 24),
  -- Vileplume - Dazzling Gleam - TM21
  (45, 4500, 605, 21, NULL, 2, NULL, NULL, 21002021, NULL, 25),
  -- Vileplume - Solar Beam - TM22
  (45, 4500, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 26),
  -- Vileplume - Double Team - TM32
  (45, 4500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 27),
  -- Vileplume - Sludge Bomb - TM36
  (45, 4500, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 28),
  -- Vileplume - Facade - TM42
  (45, 4500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 29),
  -- Vileplume - Rest - TM44
  (45, 4500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 30),
  -- Vileplume - Attract - TM45
  (45, 4500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 31),
  -- Vileplume - Energy Ball - TM53
  (45, 4500, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 32),
  -- Vileplume - Fling - TM56
  (45, 4500, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 33),
  -- Vileplume - Endure - TM58
  (45, 4500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 34),
  -- Vileplume - Drain Punch - TM60
  (45, 4500, 409, 21, NULL, 2, NULL, NULL, 21002060, NULL, 35),
  -- Vileplume - Giga Impact - TM68
  (45, 4500, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 36),
  -- Vileplume - Flash - TM70
  (45, 4500, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 37),
  -- Vileplume - Swords Dance - TM75
  (45, 4500, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 38),
  -- Vileplume - Sleep Talk - TM82
  (45, 4500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 39),
  -- Vileplume - Grass Knot - TM86
  (45, 4500, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 40),
  -- Vileplume - Swagger - TM87
  (45, 4500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 41),
  -- Vileplume - Substitute - TM90
  (45, 4500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 42),
  -- Vileplume - Cut - TM93
  (45, 4500, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 43),
  -- Vileplume - After You - Egg
  (45, 4500, 495, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Vileplume - Charm - Egg
  (45, 4500, 204, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Vileplume - Flail - Egg
  (45, 4500, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Vileplume - Ingrain - Egg
  (45, 4500, 275, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Vileplume - Leech Seed - Egg
  (45, 4500, 73, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Vileplume - Nature Power - Egg
  (45, 4500, 267, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Vileplume - Razor Leaf - Egg
  (45, 4500, 75, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Vileplume - Strength Sap - Egg
  (45, 4500, 668, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Vileplume - Synthesis - Egg
  (45, 4500, 235, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Vileplume - Teeter Dance - Egg
  (45, 4500, 298, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Vileplume - Tickle - Egg
  (45, 4500, 321, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Paras - Scratch - Starting Move
  (46, 4600, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Paras - Stun Spore - Level 6
  (46, 4600, 78, 21, NULL, 1, 6, NULL, NULL, NULL, 2),
  -- Paras - Poison Powder - Level 6
  (46, 4600, 77, 21, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Paras - Absorb - Level 11
  (46, 4600, 71, 21, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Paras - Fury Cutter - Level 17
  (46, 4600, 210, 21, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Paras - Spore - Level 22
  (46, 4600, 147, 21, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Paras - Slash - Level 27
  (46, 4600, 163, 21, NULL, 1, 27, NULL, NULL, NULL, 7),
  -- Paras - Growth - Level 33
  (46, 4600, 74, 21, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Paras - Giga Drain - Level 38
  (46, 4600, 202, 21, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Paras - Aromatherapy - Level 43
  (46, 4600, 312, 21, NULL, 1, 43, NULL, NULL, NULL, 10),
  -- Paras - Rage Powder - Level 49
  (46, 4600, 476, 21, NULL, 1, 49, NULL, NULL, NULL, 11),
  -- Paras - X-Scissor - Level 54
  (46, 4600, 404, 21, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Paras - Bullet Seed - TM09
  (46, 4600, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 13),
  -- Paras - Sunny Day - TM11
  (46, 4600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 14),
  -- Paras - Light Screen - TM16
  (46, 4600, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 15),
  -- Paras - Protect - TM17
  (46, 4600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 16),
  -- Paras - Giga Drain - TM19
  (46, 4600, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 17),
  -- Paras - Solar Beam - TM22
  (46, 4600, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 18),
  -- Paras - Dig - TM28
  (46, 4600, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 19),
  -- Paras - Brick Break - TM31
  (46, 4600, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 20),
  -- Paras - Double Team - TM32
  (46, 4600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 21),
  -- Paras - Sludge Bomb - TM36
  (46, 4600, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 22),
  -- Paras - Aerial Ace - TM40
  (46, 4600, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 23),
  -- Paras - Facade - TM42
  (46, 4600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 24),
  -- Paras - Rest - TM44
  (46, 4600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 25),
  -- Paras - Attract - TM45
  (46, 4600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 26),
  -- Paras - Thief - TM46
  (46, 4600, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 27),
  -- Paras - False Swipe - TM54
  (46, 4600, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 28),
  -- Paras - Endure - TM58
  (46, 4600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 29),
  -- Paras - Flash - TM70
  (46, 4600, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 30),
  -- Paras - Swords Dance - TM75
  (46, 4600, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 31),
  -- Paras - X-Scissor - TM81
  (46, 4600, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 32),
  -- Paras - Sleep Talk - TM82
  (46, 4600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 33),
  -- Paras - Grass Knot - TM86
  (46, 4600, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 34),
  -- Paras - Swagger - TM87
  (46, 4600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 35),
  -- Paras - Substitute - TM90
  (46, 4600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 36),
  -- Paras - Cut - TM93
  (46, 4600, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 37),
  -- Paras - Rock Smash - TM98
  (46, 4600, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 38),
  -- Paras - Agility - Egg
  (46, 4600, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Paras - Bug Bite - Egg
  (46, 4600, 450, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Paras - Counter - Egg
  (46, 4600, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Paras - Cross Poison - Egg
  (46, 4600, 440, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Paras - Fell Stinger - Egg
  (46, 4600, 565, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Paras - Flail - Egg
  (46, 4600, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Paras - Grassy Terrain - Egg
  (46, 4600, 580, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Paras - Leech Seed - Egg
  (46, 4600, 73, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Paras - Metal Claw - Egg
  (46, 4600, 232, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Paras - Psybeam - Egg
  (46, 4600, 60, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Paras - Screech - Egg
  (46, 4600, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Paras - Sweet Scent - Egg
  (46, 4600, 230, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Paras - Wide Guard - Egg
  (46, 4600, 469, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Parasect - Cross Poison - Starting Move
  (47, 4700, 440, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Parasect - Scratch - Starting Move
  (47, 4700, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Parasect - Stun Spore - Starting Move
  (47, 4700, 78, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Parasect - Poison Powder - Starting Move
  (47, 4700, 77, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Parasect - Absorb - Starting Move
  (47, 4700, 71, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Parasect - Stun Spore - Level 6
  (47, 4700, 78, 21, NULL, 1, 6, NULL, NULL, NULL, 6),
  -- Parasect - Poison Powder - Level 6
  (47, 4700, 77, 21, NULL, 1, 6, NULL, NULL, NULL, 7),
  -- Parasect - Absorb - Level 11
  (47, 4700, 71, 21, NULL, 1, 11, NULL, NULL, NULL, 8),
  -- Parasect - Fury Cutter - Level 17
  (47, 4700, 210, 21, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Parasect - Spore - Level 22
  (47, 4700, 147, 21, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Parasect - Slash - Level 29
  (47, 4700, 163, 21, NULL, 1, 29, NULL, NULL, NULL, 11),
  -- Parasect - Growth - Level 37
  (47, 4700, 74, 21, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Parasect - Giga Drain - Level 44
  (47, 4700, 202, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Parasect - Aromatherapy - Level 51
  (47, 4700, 312, 21, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Parasect - Rage Powder - Level 59
  (47, 4700, 476, 21, NULL, 1, 59, NULL, NULL, NULL, 15),
  -- Parasect - X-Scissor - Level 66
  (47, 4700, 404, 21, NULL, 1, 66, NULL, NULL, NULL, 16),
  -- Parasect - Bullet Seed - TM09
  (47, 4700, 331, 21, NULL, 2, NULL, NULL, 21002009, NULL, 17),
  -- Parasect - Sunny Day - TM11
  (47, 4700, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 18),
  -- Parasect - Hyper Beam - TM15
  (47, 4700, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 19),
  -- Parasect - Light Screen - TM16
  (47, 4700, 113, 21, NULL, 2, NULL, NULL, 21002016, NULL, 20),
  -- Parasect - Protect - TM17
  (47, 4700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Parasect - Giga Drain - TM19
  (47, 4700, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 22),
  -- Parasect - Solar Beam - TM22
  (47, 4700, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 23),
  -- Parasect - Dig - TM28
  (47, 4700, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 24),
  -- Parasect - Brick Break - TM31
  (47, 4700, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 25),
  -- Parasect - Double Team - TM32
  (47, 4700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Parasect - Sludge Bomb - TM36
  (47, 4700, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 27),
  -- Parasect - Aerial Ace - TM40
  (47, 4700, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 28),
  -- Parasect - Facade - TM42
  (47, 4700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 29),
  -- Parasect - Rest - TM44
  (47, 4700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 30),
  -- Parasect - Attract - TM45
  (47, 4700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 31),
  -- Parasect - Thief - TM46
  (47, 4700, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 32),
  -- Parasect - Energy Ball - TM53
  (47, 4700, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 33),
  -- Parasect - False Swipe - TM54
  (47, 4700, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 34),
  -- Parasect - Endure - TM58
  (47, 4700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 35),
  -- Parasect - Giga Impact - TM68
  (47, 4700, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 36),
  -- Parasect - Flash - TM70
  (47, 4700, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 37),
  -- Parasect - Swords Dance - TM75
  (47, 4700, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 38),
  -- Parasect - X-Scissor - TM81
  (47, 4700, 404, 21, NULL, 2, NULL, NULL, 21002081, NULL, 39),
  -- Parasect - Sleep Talk - TM82
  (47, 4700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 40),
  -- Parasect - Grass Knot - TM86
  (47, 4700, 447, 21, NULL, 2, NULL, NULL, 21002086, NULL, 41),
  -- Parasect - Swagger - TM87
  (47, 4700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 42),
  -- Parasect - Substitute - TM90
  (47, 4700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 43),
  -- Parasect - Cut - TM93
  (47, 4700, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 44),
  -- Parasect - Rock Smash - TM98
  (47, 4700, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 45),
  -- Parasect - Agility - Egg
  (47, 4700, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Parasect - Bug Bite - Egg
  (47, 4700, 450, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Parasect - Counter - Egg
  (47, 4700, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Parasect - Cross Poison - Egg
  (47, 4700, 440, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Parasect - Fell Stinger - Egg
  (47, 4700, 565, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Parasect - Flail - Egg
  (47, 4700, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Parasect - Grassy Terrain - Egg
  (47, 4700, 580, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Parasect - Leech Seed - Egg
  (47, 4700, 73, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Parasect - Metal Claw - Egg
  (47, 4700, 232, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Parasect - Psybeam - Egg
  (47, 4700, 60, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Parasect - Screech - Egg
  (47, 4700, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Parasect - Sweet Scent - Egg
  (47, 4700, 230, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Parasect - Wide Guard - Egg
  (47, 4700, 469, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Venonat - Tackle - Starting Move
  (48, 4800, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Venonat - Disable - Starting Move
  (48, 4800, 50, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Venonat - Struggle Bug - Starting Move
  (48, 4800, 522, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Venonat - Supersonic - Level 5
  (48, 4800, 48, 21, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Venonat - Confusion - Level 11
  (48, 4800, 93, 21, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Venonat - Poison Powder - Level 13
  (48, 4800, 77, 21, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Venonat - Psybeam - Level 17
  (48, 4800, 60, 21, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Venonat - Stun Spore - Level 23
  (48, 4800, 78, 21, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Venonat - Mega Drain - Level 25
  (48, 4800, 72, 21, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Venonat - Sleep Powder - Level 29
  (48, 4800, 79, 21, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Venonat - Leech Life - Level 35
  (48, 4800, 141, 21, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Venonat - Zen Headbutt - Level 37
  (48, 4800, 428, 21, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Venonat - Poison Fang - Level 41
  (48, 4800, 305, 21, NULL, 1, 41, NULL, NULL, NULL, 13),
  -- Venonat - Psychic - Level 47
  (48, 4800, 94, 21, NULL, 1, 47, NULL, NULL, NULL, 14),
  -- Venonat - Sunny Day - TM11
  (48, 4800, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 15),
  -- Venonat - Protect - TM17
  (48, 4800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 16),
  -- Venonat - Giga Drain - TM19
  (48, 4800, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 17),
  -- Venonat - Solar Beam - TM22
  (48, 4800, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 18),
  -- Venonat - Psychic - TM29
  (48, 4800, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 19),
  -- Venonat - Double Team - TM32
  (48, 4800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 20),
  -- Venonat - Sludge Bomb - TM36
  (48, 4800, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 21),
  -- Venonat - Facade - TM42
  (48, 4800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 22),
  -- Venonat - Rest - TM44
  (48, 4800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 23),
  -- Venonat - Attract - TM45
  (48, 4800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 24),
  -- Venonat - Thief - TM46
  (48, 4800, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 25),
  -- Venonat - Skill Swap - TM48
  (48, 4800, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 26),
  -- Venonat - Endure - TM58
  (48, 4800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 27),
  -- Venonat - Flash - TM70
  (48, 4800, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 28),
  -- Venonat - Sleep Talk - TM82
  (48, 4800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 29),
  -- Venonat - Swagger - TM87
  (48, 4800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 30),
  -- Venonat - Substitute - TM90
  (48, 4800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 31),
  -- Venonat - Agility - Egg
  (48, 4800, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 32),
  -- Venonat - Baton Pass - Egg
  (48, 4800, 226, 21, NULL, 5, NULL, NULL, NULL, NULL, 33),
  -- Venonat - Bug Bite - Egg
  (48, 4800, 450, 21, NULL, 5, NULL, NULL, NULL, NULL, 34),
  -- Venonat - Morning Sun - Egg
  (48, 4800, 234, 21, NULL, 5, NULL, NULL, NULL, NULL, 35),
  -- Venonat - Rage Powder - Egg
  (48, 4800, 476, 21, NULL, 5, NULL, NULL, NULL, NULL, 36),
  -- Venonat - Screech - Egg
  (48, 4800, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 37),
  -- Venonat - Toxic Spikes - Egg
  (48, 4800, 390, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Venomoth - Gust - Starting Move
  (49, 4900, 16, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Venomoth - Quiver Dance - Starting Move
  (49, 4900, 483, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Venomoth - Bug Buzz - Starting Move
  (49, 4900, 405, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Venomoth - Whirlwind - Starting Move
  (49, 4900, 18, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Venomoth - Tackle - Starting Move
  (49, 4900, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Venomoth - Disable - Starting Move
  (49, 4900, 50, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Venomoth - Struggle Bug - Starting Move
  (49, 4900, 522, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Venomoth - Supersonic - Starting Move
  (49, 4900, 48, 21, NULL, 8, NULL, NULL, NULL, NULL, 8),
  -- Venomoth - Gust - Evolution
  (49, 4900, 16, 21, NULL, 7, NULL, NULL, NULL, NULL, 9),
  -- Venomoth - Supersonic - Level 5
  (49, 4900, 48, 21, NULL, 1, 5, NULL, NULL, NULL, 10),
  -- Venomoth - Confusion - Level 11
  (49, 4900, 93, 21, NULL, 1, 11, NULL, NULL, NULL, 11),
  -- Venomoth - Poison Powder - Level 13
  (49, 4900, 77, 21, NULL, 1, 13, NULL, NULL, NULL, 12),
  -- Venomoth - Psybeam - Level 17
  (49, 4900, 60, 21, NULL, 1, 17, NULL, NULL, NULL, 13),
  -- Venomoth - Stun Spore - Level 23
  (49, 4900, 78, 21, NULL, 1, 23, NULL, NULL, NULL, 14),
  -- Venomoth - Mega Drain - Level 25
  (49, 4900, 72, 21, NULL, 1, 25, NULL, NULL, NULL, 15),
  -- Venomoth - Sleep Powder - Level 29
  (49, 4900, 79, 21, NULL, 1, 29, NULL, NULL, NULL, 16),
  -- Venomoth - Leech Life - Level 37
  (49, 4900, 141, 21, NULL, 1, 37, NULL, NULL, NULL, 17),
  -- Venomoth - Zen Headbutt - Level 41
  (49, 4900, 428, 21, NULL, 1, 41, NULL, NULL, NULL, 18),
  -- Venomoth - Poison Fang - Level 47
  (49, 4900, 305, 21, NULL, 1, 47, NULL, NULL, NULL, 19),
  -- Venomoth - Psychic - Level 55
  (49, 4900, 94, 21, NULL, 1, 55, NULL, NULL, NULL, 20),
  -- Venomoth - Bug Buzz - Level 59
  (49, 4900, 405, 21, NULL, 1, 59, NULL, NULL, NULL, 21),
  -- Venomoth - Quiver Dance - Level 63
  (49, 4900, 483, 21, NULL, 1, 63, NULL, NULL, NULL, 22),
  -- Venomoth - Sunny Day - TM11
  (49, 4900, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 23),
  -- Venomoth - Hyper Beam - TM15
  (49, 4900, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 24),
  -- Venomoth - Protect - TM17
  (49, 4900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 25),
  -- Venomoth - Giga Drain - TM19
  (49, 4900, 202, 21, NULL, 2, NULL, NULL, 21002019, NULL, 26),
  -- Venomoth - Solar Beam - TM22
  (49, 4900, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 27),
  -- Venomoth - Psychic - TM29
  (49, 4900, 94, 21, NULL, 2, NULL, NULL, 21002029, NULL, 28),
  -- Venomoth - Double Team - TM32
  (49, 4900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 29),
  -- Venomoth - Sludge Bomb - TM36
  (49, 4900, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 30),
  -- Venomoth - Aerial Ace - TM40
  (49, 4900, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 31),
  -- Venomoth - Facade - TM42
  (49, 4900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 32),
  -- Venomoth - Rest - TM44
  (49, 4900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 33),
  -- Venomoth - Attract - TM45
  (49, 4900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 34),
  -- Venomoth - Thief - TM46
  (49, 4900, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 35),
  -- Venomoth - Skill Swap - TM48
  (49, 4900, 285, 21, NULL, 2, NULL, NULL, 21002048, NULL, 36),
  -- Venomoth - Roost - TM51
  (49, 4900, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 37),
  -- Venomoth - Energy Ball - TM53
  (49, 4900, 412, 21, NULL, 2, NULL, NULL, 21002053, NULL, 38),
  -- Venomoth - Endure - TM58
  (49, 4900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 39),
  -- Venomoth - Bug Buzz - TM62
  (49, 4900, 405, 21, NULL, 2, NULL, NULL, 21002062, NULL, 40),
  -- Venomoth - Giga Impact - TM68
  (49, 4900, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 41),
  -- Venomoth - Flash - TM70
  (49, 4900, 148, 21, NULL, 2, NULL, NULL, 21002070, NULL, 42),
  -- Venomoth - Sleep Talk - TM82
  (49, 4900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 43),
  -- Venomoth - Swagger - TM87
  (49, 4900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 44),
  -- Venomoth - U-turn - TM89
  (49, 4900, 369, 21, NULL, 2, NULL, NULL, 21002089, NULL, 45),
  -- Venomoth - Substitute - TM90
  (49, 4900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 46),
  -- Venomoth - Defog - TM97
  (49, 4900, 432, 21, NULL, 2, NULL, NULL, 21002097, NULL, 47),
  -- Venomoth - Agility - Egg
  (49, 4900, 97, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Venomoth - Baton Pass - Egg
  (49, 4900, 226, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Venomoth - Bug Bite - Egg
  (49, 4900, 450, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Venomoth - Morning Sun - Egg
  (49, 4900, 234, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Venomoth - Rage Powder - Egg
  (49, 4900, 476, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Venomoth - Screech - Egg
  (49, 4900, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Venomoth - Toxic Spikes - Egg
  (49, 4900, 390, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Charmeleon - Scratch - Starting Move
  (5, 500, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Charmeleon - Growl - Starting Move
  (5, 500, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Charmeleon - Ember - Starting Move
  (5, 500, 52, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Charmeleon - Smokescreen - Starting Move
  (5, 500, 108, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Charmeleon - Dragon Breath - Level 12
  (5, 500, 225, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Charmeleon - Fire Fang - Level 19
  (5, 500, 424, 21, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Charmeleon - Slash - Level 24
  (5, 500, 163, 21, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Charmeleon - Flamethrower - Level 30
  (5, 500, 53, 21, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Charmeleon - Scary Face - Level 37
  (5, 500, 184, 21, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Charmeleon - Fire Spin - Level 42
  (5, 500, 83, 21, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Charmeleon - Inferno - Level 48
  (5, 500, 517, 21, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Charmeleon - Flare Blitz - Level 54
  (5, 500, 394, 21, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Charmeleon - Focus Punch - TM01
  (5, 500, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 13),
  -- Charmeleon - Dragon Claw - TM02
  (5, 500, 337, 21, NULL, 2, NULL, NULL, 21002002, NULL, 14),
  -- Charmeleon - Work Up - TM10
  (5, 500, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 15),
  -- Charmeleon - Sunny Day - TM11
  (5, 500, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 16),
  -- Charmeleon - Protect - TM17
  (5, 500, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 17),
  -- Charmeleon - Iron Tail - TM23
  (5, 500, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 18),
  -- Charmeleon - Dig - TM28
  (5, 500, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 19),
  -- Charmeleon - Brick Break - TM31
  (5, 500, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 20),
  -- Charmeleon - Double Team - TM32
  (5, 500, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 21),
  -- Charmeleon - Flamethrower - TM35
  (5, 500, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 22),
  -- Charmeleon - Fire Blast - TM38
  (5, 500, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 23),
  -- Charmeleon - Rock Tomb - TM39
  (5, 500, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 24),
  -- Charmeleon - Aerial Ace - TM40
  (5, 500, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 25),
  -- Charmeleon - Facade - TM42
  (5, 500, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 26),
  -- Charmeleon - Rest - TM44
  (5, 500, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 27),
  -- Charmeleon - Attract - TM45
  (5, 500, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 28),
  -- Charmeleon - Overheat - TM50
  (5, 500, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 29),
  -- Charmeleon - False Swipe - TM54
  (5, 500, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 30),
  -- Charmeleon - Fling - TM56
  (5, 500, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 31),
  -- Charmeleon - Endure - TM58
  (5, 500, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 32),
  -- Charmeleon - Dragon Pulse - TM59
  (5, 500, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 33),
  -- Charmeleon - Will-O-Wisp - TM61
  (5, 500, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 34),
  -- Charmeleon - Shadow Claw - TM65
  (5, 500, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 35),
  -- Charmeleon - Swords Dance - TM75
  (5, 500, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 36),
  -- Charmeleon - Rock Slide - TM80
  (5, 500, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 37),
  -- Charmeleon - Sleep Talk - TM82
  (5, 500, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 38),
  -- Charmeleon - Swagger - TM87
  (5, 500, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 39),
  -- Charmeleon - Substitute - TM90
  (5, 500, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 40),
  -- Charmeleon - Cut - TM93
  (5, 500, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 41),
  -- Charmeleon - Strength - TM96
  (5, 500, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 42),
  -- Charmeleon - Rock Smash - TM98
  (5, 500, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 43),
  -- Charmeleon - Air Cutter - Egg
  (5, 500, 314, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Charmeleon - Ancient Power - Egg
  (5, 500, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Charmeleon - Beat Up - Egg
  (5, 500, 251, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Charmeleon - Belly Drum - Egg
  (5, 500, 187, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Charmeleon - Bite - Egg
  (5, 500, 44, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Charmeleon - Counter - Egg
  (5, 500, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Charmeleon - Crunch - Egg
  (5, 500, 242, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Charmeleon - Dragon Dance - Egg
  (5, 500, 349, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Charmeleon - Dragon Rush - Egg
  (5, 500, 407, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Charmeleon - Dragon Tail - Egg
  (5, 500, 525, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Charmeleon - Flare Blitz - Egg
  (5, 500, 394, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Charmeleon - Metal Claw - Egg
  (5, 500, 232, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Charmeleon - Outrage - Egg
  (5, 500, 200, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Charmeleon - Wing Attack - Egg
  (5, 500, 17, 21, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Diglett - Sand Attack - Starting Move
  (50, 5000, 28, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Diglett - Scratch - Starting Move
  (50, 5000, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Diglett - Growl - Level 4
  (50, 5000, 45, 21, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Diglett - Astonish - Level 8
  (50, 5000, 310, 21, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Diglett - Mud-Slap - Level 12
  (50, 5000, 189, 21, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Diglett - Bulldoze - Level 16
  (50, 5000, 523, 21, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Diglett - Sucker Punch - Level 20
  (50, 5000, 389, 21, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Diglett - Slash - Level 24
  (50, 5000, 163, 21, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Diglett - Sandstorm - Level 28
  (50, 5000, 201, 21, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Diglett - Dig - Level 32
  (50, 5000, 91, 21, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Diglett - Earth Power - Level 36
  (50, 5000, 414, 21, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Diglett - Earthquake - Level 40
  (50, 5000, 89, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Diglett - Fissure - Level 44
  (50, 5000, 90, 21, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Diglett - Work Up - TM10
  (50, 5000, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 14),
  -- Diglett - Sunny Day - TM11
  (50, 5000, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 15),
  -- Diglett - Protect - TM17
  (50, 5000, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 16),
  -- Diglett - Earthquake - TM26
  (50, 5000, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 17),
  -- Diglett - Dig - TM28
  (50, 5000, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 18),
  -- Diglett - Double Team - TM32
  (50, 5000, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 19),
  -- Diglett - Sludge Bomb - TM36
  (50, 5000, 188, 21, NULL, 2, NULL, NULL, 21002036, NULL, 20),
  -- Diglett - Sandstorm - TM37
  (50, 5000, 201, 21, NULL, 2, NULL, NULL, 21002037, NULL, 21),
  -- Diglett - Rock Tomb - TM39
  (50, 5000, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 22),
  -- Diglett - Aerial Ace - TM40
  (50, 5000, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 23),
  -- Diglett - Facade - TM42
  (50, 5000, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 24),
  -- Diglett - Rest - TM44
  (50, 5000, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 25),
  -- Diglett - Attract - TM45
  (50, 5000, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 26),
  -- Diglett - Thief - TM46
  (50, 5000, 168, 21, NULL, 2, NULL, NULL, 21002046, NULL, 27),
  -- Diglett - Endure - TM58
  (50, 5000, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 28),
  -- Diglett - Shadow Claw - TM65
  (50, 5000, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 29),
  -- Diglett - Stealth Rock - TM76
  (50, 5000, 446, 21, NULL, 2, NULL, NULL, 21002076, NULL, 30),
  -- Diglett - Rock Slide - TM80
  (50, 5000, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 31),
  -- Diglett - Sleep Talk - TM82
  (50, 5000, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 32),
  -- Diglett - Bulldoze - TM83
  (50, 5000, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 33),
  -- Diglett - Swagger - TM87
  (50, 5000, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 34),
  -- Diglett - Substitute - TM90
  (50, 5000, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 35),
  -- Diglett - Cut - TM93
  (50, 5000, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 36),
  -- Diglett - Rock Smash - TM98
  (50, 5000, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 37),
  -- Diglett - Ancient Power - Egg
  (50, 5000, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 38),
  -- Diglett - Astonish - Egg
  (50, 5000, 310, 21, NULL, 5, NULL, NULL, NULL, NULL, 39),
  -- Diglett - Beat Up - Egg
  (50, 5000, 251, 21, NULL, 5, NULL, NULL, NULL, NULL, 40),
  -- Diglett - Final Gambit - Egg
  (50, 5000, 515, 21, NULL, 5, NULL, NULL, NULL, NULL, 41),
  -- Diglett - Headbutt - Egg
  (50, 5000, 29, 21, NULL, 5, NULL, NULL, NULL, NULL, 42),
  -- Diglett - Hone Claws - Egg
  (50, 5000, 468, 21, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Diglett - Memento - Egg
  (50, 5000, 262, 21, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Diglett - Reversal - Egg
  (50, 5000, 179, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Diglett - Screech - Egg
  (50, 5000, 103, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Diglett - Uproar - Egg
  (50, 5000, 253, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Charizard - Air Slash - Starting Move
  (6, 600, 403, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Charizard - Dragon Claw - Starting Move
  (6, 600, 337, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Charizard - Heat Wave - Starting Move
  (6, 600, 257, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Charizard - Scratch - Starting Move
  (6, 600, 10, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Charizard - Growl - Starting Move
  (6, 600, 45, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Charizard - Ember - Starting Move
  (6, 600, 52, 21, NULL, 8, NULL, NULL, NULL, NULL, 6),
  -- Charizard - Smokescreen - Starting Move
  (6, 600, 108, 21, NULL, 8, NULL, NULL, NULL, NULL, 7),
  -- Charizard - Air Slash - Evolution
  (6, 600, 403, 21, NULL, 7, NULL, NULL, NULL, NULL, 8),
  -- Charizard - Dragon Breath - Level 12
  (6, 600, 225, 21, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Charizard - Fire Fang - Level 19
  (6, 600, 424, 21, NULL, 1, 19, NULL, NULL, NULL, 10),
  -- Charizard - Slash - Level 24
  (6, 600, 163, 21, NULL, 1, 24, NULL, NULL, NULL, 11),
  -- Charizard - Flamethrower - Level 30
  (6, 600, 53, 21, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Charizard - Scary Face - Level 39
  (6, 600, 184, 21, NULL, 1, 39, NULL, NULL, NULL, 13),
  -- Charizard - Fire Spin - Level 46
  (6, 600, 83, 21, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Charizard - Inferno - Level 54
  (6, 600, 517, 21, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Charizard - Flare Blitz - Level 62
  (6, 600, 394, 21, NULL, 1, 62, NULL, NULL, NULL, 16),
  -- Charizard - Focus Punch - TM01
  (6, 600, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 17),
  -- Charizard - Dragon Claw - TM02
  (6, 600, 337, 21, NULL, 2, NULL, NULL, 21002002, NULL, 18),
  -- Charizard - Roar - TM05
  (6, 600, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 19),
  -- Charizard - Work Up - TM10
  (6, 600, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 20),
  -- Charizard - Sunny Day - TM11
  (6, 600, 241, 21, NULL, 2, NULL, NULL, 21002011, NULL, 21),
  -- Charizard - Hyper Beam - TM15
  (6, 600, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 22),
  -- Charizard - Protect - TM17
  (6, 600, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 23),
  -- Charizard - Solar Beam - TM22
  (6, 600, 76, 21, NULL, 2, NULL, NULL, 21002022, NULL, 24),
  -- Charizard - Iron Tail - TM23
  (6, 600, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 25),
  -- Charizard - Earthquake - TM26
  (6, 600, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 26),
  -- Charizard - Dig - TM28
  (6, 600, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 27),
  -- Charizard - Brick Break - TM31
  (6, 600, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 28),
  -- Charizard - Double Team - TM32
  (6, 600, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 29),
  -- Charizard - Flamethrower - TM35
  (6, 600, 53, 21, NULL, 2, NULL, NULL, 21002035, NULL, 30),
  -- Charizard - Fire Blast - TM38
  (6, 600, 126, 21, NULL, 2, NULL, NULL, 21002038, NULL, 31),
  -- Charizard - Rock Tomb - TM39
  (6, 600, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 32),
  -- Charizard - Aerial Ace - TM40
  (6, 600, 332, 21, NULL, 2, NULL, NULL, 21002040, NULL, 33),
  -- Charizard - Facade - TM42
  (6, 600, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 34),
  -- Charizard - Rest - TM44
  (6, 600, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 35),
  -- Charizard - Attract - TM45
  (6, 600, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 36),
  -- Charizard - Steel Wing - TM47
  (6, 600, 211, 21, NULL, 2, NULL, NULL, 21002047, NULL, 37),
  -- Charizard - Overheat - TM50
  (6, 600, 315, 21, NULL, 2, NULL, NULL, 21002050, NULL, 38),
  -- Charizard - Roost - TM51
  (6, 600, 355, 21, NULL, 2, NULL, NULL, 21002051, NULL, 39),
  -- Charizard - Focus Blast - TM52
  (6, 600, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 40),
  -- Charizard - False Swipe - TM54
  (6, 600, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 41),
  -- Charizard - Fling - TM56
  (6, 600, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 42),
  -- Charizard - Endure - TM58
  (6, 600, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 43),
  -- Charizard - Dragon Pulse - TM59
  (6, 600, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 44),
  -- Charizard - Will-O-Wisp - TM61
  (6, 600, 261, 21, NULL, 2, NULL, NULL, 21002061, NULL, 45),
  -- Charizard - Shadow Claw - TM65
  (6, 600, 421, 21, NULL, 2, NULL, NULL, 21002065, NULL, 46),
  -- Charizard - Giga Impact - TM68
  (6, 600, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 47),
  -- Charizard - Swords Dance - TM75
  (6, 600, 14, 21, NULL, 2, NULL, NULL, 21002075, NULL, 48),
  -- Charizard - Rock Slide - TM80
  (6, 600, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 49),
  -- Charizard - Sleep Talk - TM82
  (6, 600, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 50),
  -- Charizard - Bulldoze - TM83
  (6, 600, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 51),
  -- Charizard - Swagger - TM87
  (6, 600, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 52),
  -- Charizard - Substitute - TM90
  (6, 600, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 53),
  -- Charizard - Cut - TM93
  (6, 600, 15, 21, NULL, 2, NULL, NULL, 21002093, NULL, 54),
  -- Charizard - Fly - TM94
  (6, 600, 19, 21, NULL, 2, NULL, NULL, 21002094, NULL, 55),
  -- Charizard - Strength - TM96
  (6, 600, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 56),
  -- Charizard - Rock Smash - TM98
  (6, 600, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 57),
  -- Charizard - Air Cutter - Egg
  (6, 600, 314, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Charizard - Ancient Power - Egg
  (6, 600, 246, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Charizard - Beat Up - Egg
  (6, 600, 251, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Charizard - Belly Drum - Egg
  (6, 600, 187, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Charizard - Bite - Egg
  (6, 600, 44, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Charizard - Counter - Egg
  (6, 600, 68, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Charizard - Crunch - Egg
  (6, 600, 242, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Charizard - Dragon Dance - Egg
  (6, 600, 349, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Charizard - Dragon Rush - Egg
  (6, 600, 407, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Charizard - Dragon Tail - Egg
  (6, 600, 525, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Charizard - Flare Blitz - Egg
  (6, 600, 394, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Charizard - Metal Claw - Egg
  (6, 600, 232, 21, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Charizard - Outrage - Egg
  (6, 600, 200, 21, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Charizard - Wing Attack - Egg
  (6, 600, 17, 21, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Squirtle - Tackle - Starting Move
  (7, 700, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Squirtle - Tail Whip - Starting Move
  (7, 700, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Squirtle - Water Gun - Level 3
  (7, 700, 55, 21, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Squirtle - Withdraw - Level 6
  (7, 700, 110, 21, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Squirtle - Rapid Spin - Level 9
  (7, 700, 229, 21, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Squirtle - Bite - Level 12
  (7, 700, 44, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Squirtle - Water Pulse - Level 15
  (7, 700, 352, 21, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Squirtle - Protect - Level 18
  (7, 700, 182, 21, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Squirtle - Rain Dance - Level 21
  (7, 700, 240, 21, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Squirtle - Aqua Tail - Level 24
  (7, 700, 401, 21, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Squirtle - Shell Smash - Level 27
  (7, 700, 504, 21, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Squirtle - Iron Defense - Level 30
  (7, 700, 334, 21, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Squirtle - Hydro Pump - Level 33
  (7, 700, 56, 21, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Squirtle - Skull Bash - Level 36
  (7, 700, 130, 21, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Squirtle - Focus Punch - TM01
  (7, 700, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 15),
  -- Squirtle - Water Pulse - TM03
  (7, 700, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 16),
  -- Squirtle - Hail - TM07
  (7, 700, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 17),
  -- Squirtle - Work Up - TM10
  (7, 700, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 18),
  -- Squirtle - Ice Beam - TM13
  (7, 700, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 19),
  -- Squirtle - Blizzard - TM14
  (7, 700, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 20),
  -- Squirtle - Protect - TM17
  (7, 700, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Squirtle - Rain Dance - TM18
  (7, 700, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Squirtle - Iron Tail - TM23
  (7, 700, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 23),
  -- Squirtle - Dig - TM28
  (7, 700, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 24),
  -- Squirtle - Brick Break - TM31
  (7, 700, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 25),
  -- Squirtle - Double Team - TM32
  (7, 700, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Squirtle - Rock Tomb - TM39
  (7, 700, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 27),
  -- Squirtle - Facade - TM42
  (7, 700, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 28),
  -- Squirtle - Rest - TM44
  (7, 700, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 29),
  -- Squirtle - Attract - TM45
  (7, 700, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 30),
  -- Squirtle - Scald - TM49
  (7, 700, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 31),
  -- Squirtle - False Swipe - TM54
  (7, 700, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 32),
  -- Squirtle - Brine - TM55
  (7, 700, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 33),
  -- Squirtle - Fling - TM56
  (7, 700, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 34),
  -- Squirtle - Endure - TM58
  (7, 700, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 35),
  -- Squirtle - Dragon Pulse - TM59
  (7, 700, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 36),
  -- Squirtle - Gyro Ball - TM74
  (7, 700, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 37),
  -- Squirtle - Sleep Talk - TM82
  (7, 700, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 38),
  -- Squirtle - Swagger - TM87
  (7, 700, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 39),
  -- Squirtle - Substitute - TM90
  (7, 700, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 40),
  -- Squirtle - Surf - TM95
  (7, 700, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 41),
  -- Squirtle - Strength - TM96
  (7, 700, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 42),
  -- Squirtle - Rock Smash - TM98
  (7, 700, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 43),
  -- Squirtle - Waterfall - TM99
  (7, 700, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 44),
  -- Squirtle - Aqua Jet - Egg
  (7, 700, 453, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Squirtle - Aqua Ring - Egg
  (7, 700, 392, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Squirtle - Aura Sphere - Egg
  (7, 700, 396, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Squirtle - Fake Out - Egg
  (7, 700, 252, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Squirtle - Flail - Egg
  (7, 700, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Squirtle - Haze - Egg
  (7, 700, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Squirtle - Life Dew - Egg
  (7, 700, 791, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Squirtle - Mirror Coat - Egg
  (7, 700, 243, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Squirtle - Mist - Egg
  (7, 700, 54, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Squirtle - Muddy Water - Egg
  (7, 700, 330, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Squirtle - Water Spout - Egg
  (7, 700, 323, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Squirtle - Yawn - Egg
  (7, 700, 281, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Wartortle - Tackle - Starting Move
  (8, 800, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Wartortle - Tail Whip - Starting Move
  (8, 800, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Wartortle - Water Gun - Starting Move
  (8, 800, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Wartortle - Withdraw - Starting Move
  (8, 800, 110, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Wartortle - Rapid Spin - Level 9
  (8, 800, 229, 21, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Wartortle - Bite - Level 12
  (8, 800, 44, 21, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Wartortle - Water Pulse - Level 15
  (8, 800, 352, 21, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Wartortle - Protect - Level 20
  (8, 800, 182, 21, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Wartortle - Rain Dance - Level 25
  (8, 800, 240, 21, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Wartortle - Aqua Tail - Level 30
  (8, 800, 401, 21, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Wartortle - Shell Smash - Level 35
  (8, 800, 504, 21, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Wartortle - Iron Defense - Level 40
  (8, 800, 334, 21, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Wartortle - Hydro Pump - Level 45
  (8, 800, 56, 21, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Wartortle - Skull Bash - Level 50
  (8, 800, 130, 21, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Wartortle - Focus Punch - TM01
  (8, 800, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 15),
  -- Wartortle - Water Pulse - TM03
  (8, 800, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 16),
  -- Wartortle - Hail - TM07
  (8, 800, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 17),
  -- Wartortle - Work Up - TM10
  (8, 800, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 18),
  -- Wartortle - Ice Beam - TM13
  (8, 800, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 19),
  -- Wartortle - Blizzard - TM14
  (8, 800, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 20),
  -- Wartortle - Protect - TM17
  (8, 800, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 21),
  -- Wartortle - Rain Dance - TM18
  (8, 800, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 22),
  -- Wartortle - Iron Tail - TM23
  (8, 800, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 23),
  -- Wartortle - Dig - TM28
  (8, 800, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 24),
  -- Wartortle - Brick Break - TM31
  (8, 800, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 25),
  -- Wartortle - Double Team - TM32
  (8, 800, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 26),
  -- Wartortle - Rock Tomb - TM39
  (8, 800, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 27),
  -- Wartortle - Facade - TM42
  (8, 800, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 28),
  -- Wartortle - Rest - TM44
  (8, 800, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 29),
  -- Wartortle - Attract - TM45
  (8, 800, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 30),
  -- Wartortle - Scald - TM49
  (8, 800, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 31),
  -- Wartortle - False Swipe - TM54
  (8, 800, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 32),
  -- Wartortle - Brine - TM55
  (8, 800, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 33),
  -- Wartortle - Fling - TM56
  (8, 800, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 34),
  -- Wartortle - Endure - TM58
  (8, 800, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 35),
  -- Wartortle - Dragon Pulse - TM59
  (8, 800, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 36),
  -- Wartortle - Gyro Ball - TM74
  (8, 800, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 37),
  -- Wartortle - Sleep Talk - TM82
  (8, 800, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 38),
  -- Wartortle - Swagger - TM87
  (8, 800, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 39),
  -- Wartortle - Substitute - TM90
  (8, 800, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 40),
  -- Wartortle - Surf - TM95
  (8, 800, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 41),
  -- Wartortle - Strength - TM96
  (8, 800, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 42),
  -- Wartortle - Rock Smash - TM98
  (8, 800, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 43),
  -- Wartortle - Waterfall - TM99
  (8, 800, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 44),
  -- Wartortle - Aqua Jet - Egg
  (8, 800, 453, 21, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Wartortle - Aqua Ring - Egg
  (8, 800, 392, 21, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Wartortle - Aura Sphere - Egg
  (8, 800, 396, 21, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Wartortle - Fake Out - Egg
  (8, 800, 252, 21, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Wartortle - Flail - Egg
  (8, 800, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Wartortle - Haze - Egg
  (8, 800, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Wartortle - Life Dew - Egg
  (8, 800, 791, 21, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Wartortle - Mirror Coat - Egg
  (8, 800, 243, 21, NULL, 5, NULL, NULL, NULL, NULL, 52),
  -- Wartortle - Mist - Egg
  (8, 800, 54, 21, NULL, 5, NULL, NULL, NULL, NULL, 53),
  -- Wartortle - Muddy Water - Egg
  (8, 800, 330, 21, NULL, 5, NULL, NULL, NULL, NULL, 54),
  -- Wartortle - Water Spout - Egg
  (8, 800, 323, 21, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Wartortle - Yawn - Egg
  (8, 800, 281, 21, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Blastoise - Flash Cannon - Starting Move
  (9, 900, 430, 21, NULL, 8, NULL, NULL, NULL, NULL, 1),
  -- Blastoise - Tackle - Starting Move
  (9, 900, 33, 21, NULL, 8, NULL, NULL, NULL, NULL, 2),
  -- Blastoise - Tail Whip - Starting Move
  (9, 900, 39, 21, NULL, 8, NULL, NULL, NULL, NULL, 3),
  -- Blastoise - Water Gun - Starting Move
  (9, 900, 55, 21, NULL, 8, NULL, NULL, NULL, NULL, 4),
  -- Blastoise - Withdraw - Starting Move
  (9, 900, 110, 21, NULL, 8, NULL, NULL, NULL, NULL, 5),
  -- Blastoise - Flash Cannon - Evolution
  (9, 900, 430, 21, NULL, 7, NULL, NULL, NULL, NULL, 6),
  -- Blastoise - Rapid Spin - Level 9
  (9, 900, 229, 21, NULL, 1, 9, NULL, NULL, NULL, 7),
  -- Blastoise - Bite - Level 12
  (9, 900, 44, 21, NULL, 1, 12, NULL, NULL, NULL, 8),
  -- Blastoise - Water Pulse - Level 15
  (9, 900, 352, 21, NULL, 1, 15, NULL, NULL, NULL, 9),
  -- Blastoise - Protect - Level 20
  (9, 900, 182, 21, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Blastoise - Rain Dance - Level 25
  (9, 900, 240, 21, NULL, 1, 25, NULL, NULL, NULL, 11),
  -- Blastoise - Aqua Tail - Level 30
  (9, 900, 401, 21, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Blastoise - Shell Smash - Level 35
  (9, 900, 504, 21, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Blastoise - Iron Defense - Level 42
  (9, 900, 334, 21, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Blastoise - Hydro Pump - Level 49
  (9, 900, 56, 21, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Blastoise - Skull Bash - Level 56
  (9, 900, 130, 21, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Blastoise - Focus Punch - TM01
  (9, 900, 264, 21, NULL, 2, NULL, NULL, 21002001, NULL, 17),
  -- Blastoise - Water Pulse - TM03
  (9, 900, 352, 21, NULL, 2, NULL, NULL, 21002003, NULL, 18),
  -- Blastoise - Roar - TM05
  (9, 900, 46, 21, NULL, 2, NULL, NULL, 21002005, NULL, 19),
  -- Blastoise - Hail - TM07
  (9, 900, 258, 21, NULL, 2, NULL, NULL, 21002007, NULL, 20),
  -- Blastoise - Work Up - TM10
  (9, 900, 526, 21, NULL, 2, NULL, NULL, 21002010, NULL, 21),
  -- Blastoise - Ice Beam - TM13
  (9, 900, 58, 21, NULL, 2, NULL, NULL, 21002013, NULL, 22),
  -- Blastoise - Blizzard - TM14
  (9, 900, 59, 21, NULL, 2, NULL, NULL, 21002014, NULL, 23),
  -- Blastoise - Hyper Beam - TM15
  (9, 900, 63, 21, NULL, 2, NULL, NULL, 21002015, NULL, 24),
  -- Blastoise - Protect - TM17
  (9, 900, 182, 21, NULL, 2, NULL, NULL, 21002017, NULL, 25),
  -- Blastoise - Rain Dance - TM18
  (9, 900, 240, 21, NULL, 2, NULL, NULL, 21002018, NULL, 26),
  -- Blastoise - Iron Tail - TM23
  (9, 900, 231, 21, NULL, 2, NULL, NULL, 21002023, NULL, 27),
  -- Blastoise - Earthquake - TM26
  (9, 900, 89, 21, NULL, 2, NULL, NULL, 21002026, NULL, 28),
  -- Blastoise - Dig - TM28
  (9, 900, 91, 21, NULL, 2, NULL, NULL, 21002028, NULL, 29),
  -- Blastoise - Brick Break - TM31
  (9, 900, 280, 21, NULL, 2, NULL, NULL, 21002031, NULL, 30),
  -- Blastoise - Double Team - TM32
  (9, 900, 104, 21, NULL, 2, NULL, NULL, 21002032, NULL, 31),
  -- Blastoise - Rock Tomb - TM39
  (9, 900, 317, 21, NULL, 2, NULL, NULL, 21002039, NULL, 32),
  -- Blastoise - Facade - TM42
  (9, 900, 263, 21, NULL, 2, NULL, NULL, 21002042, NULL, 33),
  -- Blastoise - Rest - TM44
  (9, 900, 156, 21, NULL, 2, NULL, NULL, 21002044, NULL, 34),
  -- Blastoise - Attract - TM45
  (9, 900, 213, 21, NULL, 2, NULL, NULL, 21002045, NULL, 35),
  -- Blastoise - Scald - TM49
  (9, 900, 503, 21, NULL, 2, NULL, NULL, 21002049, NULL, 36),
  -- Blastoise - Focus Blast - TM52
  (9, 900, 411, 21, NULL, 2, NULL, NULL, 21002052, NULL, 37),
  -- Blastoise - False Swipe - TM54
  (9, 900, 206, 21, NULL, 2, NULL, NULL, 21002054, NULL, 38),
  -- Blastoise - Brine - TM55
  (9, 900, 362, 21, NULL, 2, NULL, NULL, 21002055, NULL, 39),
  -- Blastoise - Fling - TM56
  (9, 900, 374, 21, NULL, 2, NULL, NULL, 21002056, NULL, 40),
  -- Blastoise - Endure - TM58
  (9, 900, 203, 21, NULL, 2, NULL, NULL, 21002058, NULL, 41),
  -- Blastoise - Dragon Pulse - TM59
  (9, 900, 406, 21, NULL, 2, NULL, NULL, 21002059, NULL, 42),
  -- Blastoise - Giga Impact - TM68
  (9, 900, 416, 21, NULL, 2, NULL, NULL, 21002068, NULL, 43),
  -- Blastoise - Avalanche - TM72
  (9, 900, 419, 21, NULL, 2, NULL, NULL, 21002072, NULL, 44),
  -- Blastoise - Gyro Ball - TM74
  (9, 900, 360, 21, NULL, 2, NULL, NULL, 21002074, NULL, 45),
  -- Blastoise - Dark Pulse - TM79
  (9, 900, 399, 21, NULL, 2, NULL, NULL, 21002079, NULL, 46),
  -- Blastoise - Rock Slide - TM80
  (9, 900, 157, 21, NULL, 2, NULL, NULL, 21002080, NULL, 47),
  -- Blastoise - Sleep Talk - TM82
  (9, 900, 214, 21, NULL, 2, NULL, NULL, 21002082, NULL, 48),
  -- Blastoise - Bulldoze - TM83
  (9, 900, 523, 21, NULL, 2, NULL, NULL, 21002083, NULL, 49),
  -- Blastoise - Swagger - TM87
  (9, 900, 207, 21, NULL, 2, NULL, NULL, 21002087, NULL, 50),
  -- Blastoise - Substitute - TM90
  (9, 900, 164, 21, NULL, 2, NULL, NULL, 21002090, NULL, 51),
  -- Blastoise - Flash Cannon - TM91
  (9, 900, 430, 21, NULL, 2, NULL, NULL, 21002091, NULL, 52),
  -- Blastoise - Surf - TM95
  (9, 900, 57, 21, NULL, 2, NULL, NULL, 21002095, NULL, 53),
  -- Blastoise - Strength - TM96
  (9, 900, 70, 21, NULL, 2, NULL, NULL, 21002096, NULL, 54),
  -- Blastoise - Rock Smash - TM98
  (9, 900, 249, 21, NULL, 2, NULL, NULL, 21002098, NULL, 55),
  -- Blastoise - Waterfall - TM99
  (9, 900, 127, 21, NULL, 2, NULL, NULL, 21002099, NULL, 56),
  -- Blastoise - Rock Climb - TM100
  (9, 900, 431, 21, NULL, 2, NULL, NULL, 21002100, NULL, 57),
  -- Blastoise - Aqua Jet - Egg
  (9, 900, 453, 21, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Blastoise - Aqua Ring - Egg
  (9, 900, 392, 21, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Blastoise - Aura Sphere - Egg
  (9, 900, 396, 21, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Blastoise - Fake Out - Egg
  (9, 900, 252, 21, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Blastoise - Flail - Egg
  (9, 900, 175, 21, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Blastoise - Haze - Egg
  (9, 900, 114, 21, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Blastoise - Life Dew - Egg
  (9, 900, 791, 21, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Blastoise - Mirror Coat - Egg
  (9, 900, 243, 21, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Blastoise - Mist - Egg
  (9, 900, 54, 21, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Blastoise - Muddy Water - Egg
  (9, 900, 330, 21, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Blastoise - Water Spout - Egg
  (9, 900, 323, 21, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Blastoise - Yawn - Egg
  (9, 900, 281, 21, NULL, 5, NULL, NULL, NULL, NULL, 69);
