-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Curated Generation VIII learnset baseline, cross-checked structurally against Bulbapedia, Serebii, and PokemonDB game learnset pages.
-- Machine normalization: Bulbapedia Generation VIII TM/TR catalog data.
-- Migration source: legacy Voydex Gen VIII learnset seeds, normalized to clean machine ids and current form identifiers.
-- Product scope: battle-only Zacian/Zamazenta Crowned legacy rows are excluded until battle-only forms are supported.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Sword / Shield learnsets for default forms, species 451-493.
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
  -- Skorupi - Poison Sting - Level 1
  (451, 45100, 40, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skorupi - Leer - Level 1
  (451, 45100, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skorupi - Hone Claws - Level 3
  (451, 45100, 468, 18, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Skorupi - Fell Stinger - Level 6
  (451, 45100, 565, 18, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Skorupi - Poison Fang - Level 9
  (451, 45100, 305, 18, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Skorupi - Bite - Level 12
  (451, 45100, 44, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Skorupi - Toxic Spikes - Level 15
  (451, 45100, 390, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Skorupi - Bug Bite - Level 18
  (451, 45100, 450, 18, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Skorupi - Venoshock - Level 21
  (451, 45100, 474, 18, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Skorupi - Knock Off - Level 24
  (451, 45100, 282, 18, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Skorupi - Scary Face - Level 27
  (451, 45100, 184, 18, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Skorupi - Pin Missile - Level 30
  (451, 45100, 42, 18, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Skorupi - Toxic - Level 33
  (451, 45100, 92, 18, NULL, 1, 33, NULL, NULL, NULL, 13),
  -- Skorupi - Night Slash - Level 36
  (451, 45100, 400, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Skorupi - Cross Poison - Level 39
  (451, 45100, 440, 18, NULL, 1, 39, NULL, NULL, NULL, 15),
  -- Skorupi - X-Scissor - Level 42
  (451, 45100, 404, 18, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Skorupi - Acupressure - Level 45
  (451, 45100, 367, 18, NULL, 1, 45, NULL, NULL, NULL, 17),
  -- Skorupi - Crunch - Level 48
  (451, 45100, 242, 18, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Skorupi - Pin Missile - TM07
  (451, 45100, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 19),
  -- Skorupi - Dig - TM15
  (451, 45100, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 20),
  -- Skorupi - Screech - TM16
  (451, 45100, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 21),
  -- Skorupi - Rest - TM21
  (451, 45100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Skorupi - Thief - TM23
  (451, 45100, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 23),
  -- Skorupi - Snore - TM24
  (451, 45100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Skorupi - Protect - TM25
  (451, 45100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Skorupi - Scary Face - TM26
  (451, 45100, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 26),
  -- Skorupi - Attract - TM31
  (451, 45100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Skorupi - Rain Dance - TM33
  (451, 45100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Skorupi - Sunny Day - TM34
  (451, 45100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Skorupi - Facade - TM39
  (451, 45100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Skorupi - Brick Break - TM43
  (451, 45100, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 31),
  -- Skorupi - Rock Tomb - TM48
  (451, 45100, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 32),
  -- Skorupi - Payback - TM57
  (451, 45100, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 33),
  -- Skorupi - Assurance - TM58
  (451, 45100, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 34),
  -- Skorupi - Fling - TM59
  (451, 45100, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 35),
  -- Skorupi - Cross Poison - TM73
  (451, 45100, 440, 18, NULL, 2, NULL, NULL, 18002073, NULL, 36),
  -- Skorupi - Venoshock - TM74
  (451, 45100, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 37),
  -- Skorupi - Round - TM76
  (451, 45100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Skorupi - False Swipe - TM94
  (451, 45100, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 39),
  -- Skorupi - Swords Dance - TR00
  (451, 45100, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 40),
  -- Skorupi - Agility - TR12
  (451, 45100, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 41),
  -- Skorupi - Substitute - TR20
  (451, 45100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 42),
  -- Skorupi - Sludge Bomb - TR22
  (451, 45100, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 43),
  -- Skorupi - Endure - TR26
  (451, 45100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 44),
  -- Skorupi - Sleep Talk - TR27
  (451, 45100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 45),
  -- Skorupi - Iron Tail - TR31
  (451, 45100, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 46),
  -- Skorupi - Crunch - TR32
  (451, 45100, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 47),
  -- Skorupi - Shadow Ball - TR33
  (451, 45100, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 48),
  -- Skorupi - Taunt - TR37
  (451, 45100, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 49),
  -- Skorupi - Toxic Spikes - TR54
  (451, 45100, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 50),
  -- Skorupi - Poison Jab - TR57
  (451, 45100, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 51),
  -- Skorupi - Dark Pulse - TR58
  (451, 45100, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 52),
  -- Skorupi - X-Scissor - TR60
  (451, 45100, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 53),
  -- Skorupi - Bug Buzz - TR61
  (451, 45100, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 54),
  -- Skorupi - Whirlwind - Egg
  (451, 45100, 18, 18, NULL, 5, NULL, NULL, NULL, NULL, 55),
  -- Skorupi - Sand Attack - Egg
  (451, 45100, 28, 18, NULL, 5, NULL, NULL, NULL, NULL, 56),
  -- Skorupi - Confuse Ray - Egg
  (451, 45100, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 57),
  -- Skorupi - Slash - Egg
  (451, 45100, 163, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Drapion - Poison Sting - Level 1
  (452, 45200, 40, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drapion - Leer - Level 1
  (452, 45200, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drapion - Thunder Fang - Level 1
  (452, 45200, 422, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Drapion - Ice Fang - Level 1
  (452, 45200, 423, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Drapion - Fire Fang - Level 1
  (452, 45200, 424, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Drapion - Hone Claws - Level 1
  (452, 45200, 468, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Drapion - Fell Stinger - Level 1
  (452, 45200, 565, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Drapion - Poison Fang - Level 9
  (452, 45200, 305, 18, NULL, 1, 9, NULL, NULL, NULL, 8),
  -- Drapion - Bite - Level 12
  (452, 45200, 44, 18, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Drapion - Toxic Spikes - Level 15
  (452, 45200, 390, 18, NULL, 1, 15, NULL, NULL, NULL, 10),
  -- Drapion - Bug Bite - Level 18
  (452, 45200, 450, 18, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Drapion - Venoshock - Level 21
  (452, 45200, 474, 18, NULL, 1, 21, NULL, NULL, NULL, 12),
  -- Drapion - Knock Off - Level 24
  (452, 45200, 282, 18, NULL, 1, 24, NULL, NULL, NULL, 13),
  -- Drapion - Scary Face - Level 27
  (452, 45200, 184, 18, NULL, 1, 27, NULL, NULL, NULL, 14),
  -- Drapion - Pin Missile - Level 30
  (452, 45200, 42, 18, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Drapion - Toxic - Level 33
  (452, 45200, 92, 18, NULL, 1, 33, NULL, NULL, NULL, 16),
  -- Drapion - Night Slash - Level 36
  (452, 45200, 400, 18, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Drapion - Cross Poison - Level 39
  (452, 45200, 440, 18, NULL, 1, 39, NULL, NULL, NULL, 18),
  -- Drapion - X-Scissor - Level 44
  (452, 45200, 404, 18, NULL, 1, 44, NULL, NULL, NULL, 19),
  -- Drapion - Acupressure - Level 49
  (452, 45200, 367, 18, NULL, 1, 49, NULL, NULL, NULL, 20),
  -- Drapion - Crunch - Level 54
  (452, 45200, 242, 18, NULL, 1, 54, NULL, NULL, NULL, 21),
  -- Drapion - Pin Missile - TM07
  (452, 45200, 42, 18, NULL, 2, NULL, NULL, 18002007, NULL, 22),
  -- Drapion - Hyper Beam - TM08
  (452, 45200, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 23),
  -- Drapion - Giga Impact - TM09
  (452, 45200, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 24),
  -- Drapion - Dig - TM15
  (452, 45200, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 25),
  -- Drapion - Screech - TM16
  (452, 45200, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 26),
  -- Drapion - Rest - TM21
  (452, 45200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Drapion - Rock Slide - TM22
  (452, 45200, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 28),
  -- Drapion - Thief - TM23
  (452, 45200, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 29),
  -- Drapion - Snore - TM24
  (452, 45200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 30),
  -- Drapion - Protect - TM25
  (452, 45200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 31),
  -- Drapion - Scary Face - TM26
  (452, 45200, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 32),
  -- Drapion - Attract - TM31
  (452, 45200, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 33),
  -- Drapion - Rain Dance - TM33
  (452, 45200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 34),
  -- Drapion - Sunny Day - TM34
  (452, 45200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 35),
  -- Drapion - Facade - TM39
  (452, 45200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 36),
  -- Drapion - Brick Break - TM43
  (452, 45200, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 37),
  -- Drapion - Rock Tomb - TM48
  (452, 45200, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 38),
  -- Drapion - Sand Tomb - TM49
  (452, 45200, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 39),
  -- Drapion - Payback - TM57
  (452, 45200, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 40),
  -- Drapion - Assurance - TM58
  (452, 45200, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 41),
  -- Drapion - Fling - TM59
  (452, 45200, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 42),
  -- Drapion - Thunder Fang - TM66
  (452, 45200, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 43),
  -- Drapion - Ice Fang - TM67
  (452, 45200, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 44),
  -- Drapion - Fire Fang - TM68
  (452, 45200, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 45),
  -- Drapion - Cross Poison - TM73
  (452, 45200, 440, 18, NULL, 2, NULL, NULL, 18002073, NULL, 46),
  -- Drapion - Venoshock - TM74
  (452, 45200, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 47),
  -- Drapion - Round - TM76
  (452, 45200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 48),
  -- Drapion - Retaliate - TM79
  (452, 45200, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 49),
  -- Drapion - Bulldoze - TM81
  (452, 45200, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 50),
  -- Drapion - Snarl - TM85
  (452, 45200, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 51),
  -- Drapion - False Swipe - TM94
  (452, 45200, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 52),
  -- Drapion - Brutal Swing - TM97
  (452, 45200, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 53),
  -- Drapion - Stomping Tantrum - TM98
  (452, 45200, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 54),
  -- Drapion - Swords Dance - TR00
  (452, 45200, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 55),
  -- Drapion - Earthquake - TR10
  (452, 45200, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 56),
  -- Drapion - Agility - TR12
  (452, 45200, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 57),
  -- Drapion - Leech Life - TR18
  (452, 45200, 141, 18, NULL, 4, NULL, NULL, 18004018, NULL, 58),
  -- Drapion - Substitute - TR20
  (452, 45200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 59),
  -- Drapion - Sludge Bomb - TR22
  (452, 45200, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 60),
  -- Drapion - Endure - TR26
  (452, 45200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 61),
  -- Drapion - Sleep Talk - TR27
  (452, 45200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 62),
  -- Drapion - Iron Tail - TR31
  (452, 45200, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 63),
  -- Drapion - Crunch - TR32
  (452, 45200, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 64),
  -- Drapion - Shadow Ball - TR33
  (452, 45200, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 65),
  -- Drapion - Taunt - TR37
  (452, 45200, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 66),
  -- Drapion - Iron Defense - TR46
  (452, 45200, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 67),
  -- Drapion - Toxic Spikes - TR54
  (452, 45200, 390, 18, NULL, 4, NULL, NULL, 18004054, NULL, 68),
  -- Drapion - Poison Jab - TR57
  (452, 45200, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 69),
  -- Drapion - Dark Pulse - TR58
  (452, 45200, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 70),
  -- Drapion - X-Scissor - TR60
  (452, 45200, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 71),
  -- Drapion - Bug Buzz - TR61
  (452, 45200, 405, 18, NULL, 4, NULL, NULL, 18004061, NULL, 72),
  -- Drapion - Venom Drench - TR91
  (452, 45200, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 73),
  -- Drapion - Throat Chop - TR95
  (452, 45200, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 74),
  -- Croagunk - Poison Sting - Level 1
  (453, 45300, 40, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Croagunk - Mud-Slap - Level 1
  (453, 45300, 189, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Croagunk - Astonish - Level 4
  (453, 45300, 310, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Croagunk - Taunt - Level 8
  (453, 45300, 269, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Croagunk - Flatter - Level 12
  (453, 45300, 260, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Croagunk - Revenge - Level 16
  (453, 45300, 279, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Croagunk - Venoshock - Level 20
  (453, 45300, 474, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Croagunk - Sucker Punch - Level 24
  (453, 45300, 389, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Croagunk - Swagger - Level 28
  (453, 45300, 207, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Croagunk - Poison Jab - Level 32
  (453, 45300, 398, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Croagunk - Toxic - Level 36
  (453, 45300, 92, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Croagunk - Nasty Plot - Level 40
  (453, 45300, 417, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Croagunk - Sludge Bomb - Level 44
  (453, 45300, 188, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Croagunk - Belch - Level 48
  (453, 45300, 562, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Croagunk - Mega Punch - TM00
  (453, 45300, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 15),
  -- Croagunk - Mega Kick - TM01
  (453, 45300, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 16),
  -- Croagunk - Ice Punch - TM04
  (453, 45300, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 17),
  -- Croagunk - Thunder Punch - TM05
  (453, 45300, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 18),
  -- Croagunk - Dig - TM15
  (453, 45300, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 19),
  -- Croagunk - Screech - TM16
  (453, 45300, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 20),
  -- Croagunk - Rest - TM21
  (453, 45300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Croagunk - Rock Slide - TM22
  (453, 45300, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 22),
  -- Croagunk - Thief - TM23
  (453, 45300, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 23),
  -- Croagunk - Snore - TM24
  (453, 45300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Croagunk - Protect - TM25
  (453, 45300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Croagunk - Icy Wind - TM27
  (453, 45300, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 26),
  -- Croagunk - Attract - TM31
  (453, 45300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 27),
  -- Croagunk - Rain Dance - TM33
  (453, 45300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Croagunk - Sunny Day - TM34
  (453, 45300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Croagunk - Facade - TM39
  (453, 45300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Croagunk - Helping Hand - TM41
  (453, 45300, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 31),
  -- Croagunk - Revenge - TM42
  (453, 45300, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 32),
  -- Croagunk - Brick Break - TM43
  (453, 45300, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 33),
  -- Croagunk - Rock Tomb - TM48
  (453, 45300, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 34),
  -- Croagunk - Bounce - TM52
  (453, 45300, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 35),
  -- Croagunk - Payback - TM57
  (453, 45300, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 36),
  -- Croagunk - Assurance - TM58
  (453, 45300, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 37),
  -- Croagunk - Fling - TM59
  (453, 45300, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 38),
  -- Croagunk - Drain Punch - TM63
  (453, 45300, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 39),
  -- Croagunk - Venoshock - TM74
  (453, 45300, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 40),
  -- Croagunk - Low Sweep - TM75
  (453, 45300, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 41),
  -- Croagunk - Round - TM76
  (453, 45300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 42),
  -- Croagunk - Retaliate - TM79
  (453, 45300, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 43),
  -- Croagunk - Bulldoze - TM81
  (453, 45300, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 44),
  -- Croagunk - Low Kick - TR07
  (453, 45300, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 45),
  -- Croagunk - Earthquake - TR10
  (453, 45300, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 46),
  -- Croagunk - Substitute - TR20
  (453, 45300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 47),
  -- Croagunk - Sludge Bomb - TR22
  (453, 45300, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 48),
  -- Croagunk - Endure - TR26
  (453, 45300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 49),
  -- Croagunk - Sleep Talk - TR27
  (453, 45300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 50),
  -- Croagunk - Baton Pass - TR29
  (453, 45300, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 51),
  -- Croagunk - Encore - TR30
  (453, 45300, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 52),
  -- Croagunk - Shadow Ball - TR33
  (453, 45300, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 53),
  -- Croagunk - Taunt - TR37
  (453, 45300, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 54),
  -- Croagunk - Bulk Up - TR48
  (453, 45300, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 55),
  -- Croagunk - Poison Jab - TR57
  (453, 45300, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 56),
  -- Croagunk - Dark Pulse - TR58
  (453, 45300, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 57),
  -- Croagunk - X-Scissor - TR60
  (453, 45300, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 58),
  -- Croagunk - Focus Blast - TR64
  (453, 45300, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 59),
  -- Croagunk - Nasty Plot - TR68
  (453, 45300, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 60),
  -- Croagunk - Gunk Shot - TR73
  (453, 45300, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 61),
  -- Croagunk - Sludge Wave - TR78
  (453, 45300, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 62),
  -- Croagunk - Foul Play - TR81
  (453, 45300, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 63),
  -- Croagunk - Work Up - TR85
  (453, 45300, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 64),
  -- Croagunk - Venom Drench - TR91
  (453, 45300, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 65),
  -- Croagunk - Headbutt - Egg
  (453, 45300, 29, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Croagunk - Counter - Egg
  (453, 45300, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Croagunk - Dynamic Punch - Egg
  (453, 45300, 223, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Croagunk - Cross Chop - Egg
  (453, 45300, 238, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Croagunk - Fake Out - Egg
  (453, 45300, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Croagunk - Feint - Egg
  (453, 45300, 364, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Croagunk - Vacuum Wave - Egg
  (453, 45300, 410, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Croagunk - Bullet Punch - Egg
  (453, 45300, 418, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Croagunk - Quick Guard - Egg
  (453, 45300, 501, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Toxicroak - Poison Sting - Level 1
  (454, 45400, 40, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Toxicroak - Mud-Slap - Level 1
  (454, 45400, 189, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Toxicroak - Taunt - Level 1
  (454, 45400, 269, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Toxicroak - Astonish - Level 1
  (454, 45400, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Toxicroak - Flatter - Level 12
  (454, 45400, 260, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Toxicroak - Revenge - Level 16
  (454, 45400, 279, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Toxicroak - Venoshock - Level 20
  (454, 45400, 474, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Toxicroak - Sucker Punch - Level 24
  (454, 45400, 389, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Toxicroak - Swagger - Level 28
  (454, 45400, 207, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Toxicroak - Poison Jab - Level 32
  (454, 45400, 398, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Toxicroak - Toxic - Level 36
  (454, 45400, 92, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Toxicroak - Nasty Plot - Level 42
  (454, 45400, 417, 18, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Toxicroak - Sludge Bomb - Level 48
  (454, 45400, 188, 18, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Toxicroak - Belch - Level 54
  (454, 45400, 562, 18, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Toxicroak - Mega Punch - TM00
  (454, 45400, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 15),
  -- Toxicroak - Mega Kick - TM01
  (454, 45400, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 16),
  -- Toxicroak - Ice Punch - TM04
  (454, 45400, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 17),
  -- Toxicroak - Thunder Punch - TM05
  (454, 45400, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 18),
  -- Toxicroak - Hyper Beam - TM08
  (454, 45400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Toxicroak - Giga Impact - TM09
  (454, 45400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Toxicroak - Dig - TM15
  (454, 45400, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 21),
  -- Toxicroak - Screech - TM16
  (454, 45400, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 22),
  -- Toxicroak - Rest - TM21
  (454, 45400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Toxicroak - Rock Slide - TM22
  (454, 45400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 24),
  -- Toxicroak - Thief - TM23
  (454, 45400, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 25),
  -- Toxicroak - Snore - TM24
  (454, 45400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Toxicroak - Protect - TM25
  (454, 45400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Toxicroak - Icy Wind - TM27
  (454, 45400, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 28),
  -- Toxicroak - Attract - TM31
  (454, 45400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Toxicroak - Rain Dance - TM33
  (454, 45400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 30),
  -- Toxicroak - Sunny Day - TM34
  (454, 45400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 31),
  -- Toxicroak - Facade - TM39
  (454, 45400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Toxicroak - Helping Hand - TM41
  (454, 45400, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 33),
  -- Toxicroak - Revenge - TM42
  (454, 45400, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 34),
  -- Toxicroak - Brick Break - TM43
  (454, 45400, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 35),
  -- Toxicroak - Rock Tomb - TM48
  (454, 45400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 36),
  -- Toxicroak - Bounce - TM52
  (454, 45400, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 37),
  -- Toxicroak - Payback - TM57
  (454, 45400, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 38),
  -- Toxicroak - Assurance - TM58
  (454, 45400, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 39),
  -- Toxicroak - Fling - TM59
  (454, 45400, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 40),
  -- Toxicroak - Drain Punch - TM63
  (454, 45400, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 41),
  -- Toxicroak - Cross Poison - TM73
  (454, 45400, 440, 18, NULL, 2, NULL, NULL, 18002073, NULL, 42),
  -- Toxicroak - Venoshock - TM74
  (454, 45400, 474, 18, NULL, 2, NULL, NULL, 18002074, NULL, 43),
  -- Toxicroak - Low Sweep - TM75
  (454, 45400, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 44),
  -- Toxicroak - Round - TM76
  (454, 45400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 45),
  -- Toxicroak - Retaliate - TM79
  (454, 45400, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 46),
  -- Toxicroak - Bulldoze - TM81
  (454, 45400, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 47),
  -- Toxicroak - Swords Dance - TR00
  (454, 45400, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 48),
  -- Toxicroak - Low Kick - TR07
  (454, 45400, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 49),
  -- Toxicroak - Earthquake - TR10
  (454, 45400, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 50),
  -- Toxicroak - Substitute - TR20
  (454, 45400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 51),
  -- Toxicroak - Sludge Bomb - TR22
  (454, 45400, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 52),
  -- Toxicroak - Endure - TR26
  (454, 45400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 53),
  -- Toxicroak - Sleep Talk - TR27
  (454, 45400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 54),
  -- Toxicroak - Baton Pass - TR29
  (454, 45400, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 55),
  -- Toxicroak - Encore - TR30
  (454, 45400, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 56),
  -- Toxicroak - Shadow Ball - TR33
  (454, 45400, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 57),
  -- Toxicroak - Taunt - TR37
  (454, 45400, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 58),
  -- Toxicroak - Bulk Up - TR48
  (454, 45400, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 59),
  -- Toxicroak - Poison Jab - TR57
  (454, 45400, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 60),
  -- Toxicroak - Dark Pulse - TR58
  (454, 45400, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 61),
  -- Toxicroak - X-Scissor - TR60
  (454, 45400, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 62),
  -- Toxicroak - Focus Blast - TR64
  (454, 45400, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 63),
  -- Toxicroak - Nasty Plot - TR68
  (454, 45400, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 64),
  -- Toxicroak - Gunk Shot - TR73
  (454, 45400, 441, 18, NULL, 4, NULL, NULL, 18004073, NULL, 65),
  -- Toxicroak - Stone Edge - TR75
  (454, 45400, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 66),
  -- Toxicroak - Sludge Wave - TR78
  (454, 45400, 482, 18, NULL, 4, NULL, NULL, 18004078, NULL, 67),
  -- Toxicroak - Foul Play - TR81
  (454, 45400, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 68),
  -- Toxicroak - Work Up - TR85
  (454, 45400, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 69),
  -- Toxicroak - Venom Drench - TR91
  (454, 45400, 599, 18, NULL, 4, NULL, NULL, 18004091, NULL, 70),
  -- Toxicroak - Throat Chop - TR95
  (454, 45400, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 71),
  -- Mantyke - Tackle - Level 1
  (458, 45800, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mantyke - Water Gun - Level 1
  (458, 45800, 55, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mantyke - Supersonic - Level 4
  (458, 45800, 48, 18, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Mantyke - Wing Attack - Level 8
  (458, 45800, 17, 18, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Mantyke - Water Pulse - Level 12
  (458, 45800, 352, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Mantyke - Wide Guard - Level 16
  (458, 45800, 469, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Mantyke - Agility - Level 20
  (458, 45800, 97, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Mantyke - Bubble Beam - Level 24
  (458, 45800, 61, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Mantyke - Headbutt - Level 28
  (458, 45800, 29, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Mantyke - Air Slash - Level 32
  (458, 45800, 403, 18, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Mantyke - Aqua Ring - Level 36
  (458, 45800, 392, 18, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Mantyke - Bounce - Level 40
  (458, 45800, 340, 18, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Mantyke - Take Down - Level 44
  (458, 45800, 36, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Mantyke - Hydro Pump - Level 48
  (458, 45800, 56, 18, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Mantyke - Rest - TM21
  (458, 45800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 15),
  -- Mantyke - Rock Slide - TM22
  (458, 45800, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 16),
  -- Mantyke - Snore - TM24
  (458, 45800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 17),
  -- Mantyke - Protect - TM25
  (458, 45800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 18),
  -- Mantyke - Icy Wind - TM27
  (458, 45800, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 19),
  -- Mantyke - Attract - TM31
  (458, 45800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 20),
  -- Mantyke - Rain Dance - TM33
  (458, 45800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 21),
  -- Mantyke - Hail - TM35
  (458, 45800, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 22),
  -- Mantyke - Whirlpool - TM36
  (458, 45800, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 23),
  -- Mantyke - Facade - TM39
  (458, 45800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Mantyke - Swift - TM40
  (458, 45800, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 25),
  -- Mantyke - Helping Hand - TM41
  (458, 45800, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 26),
  -- Mantyke - Dive - TM45
  (458, 45800, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 27),
  -- Mantyke - Bounce - TM52
  (458, 45800, 340, 18, NULL, 2, NULL, NULL, 18002052, NULL, 28),
  -- Mantyke - Round - TM76
  (458, 45800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 29),
  -- Mantyke - Acrobatics - TM78
  (458, 45800, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 30),
  -- Mantyke - Bulldoze - TM81
  (458, 45800, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 31),
  -- Mantyke - Air Slash - TM95
  (458, 45800, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 32),
  -- Mantyke - Hydro Pump - TR03
  (458, 45800, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 33),
  -- Mantyke - Surf - TR04
  (458, 45800, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 34),
  -- Mantyke - Ice Beam - TR05
  (458, 45800, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 35),
  -- Mantyke - Blizzard - TR06
  (458, 45800, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 36),
  -- Mantyke - Earthquake - TR10
  (458, 45800, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 37),
  -- Mantyke - Agility - TR12
  (458, 45800, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 38),
  -- Mantyke - Waterfall - TR16
  (458, 45800, 127, 18, NULL, 4, NULL, NULL, 18004016, NULL, 39),
  -- Mantyke - Amnesia - TR17
  (458, 45800, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 40),
  -- Mantyke - Substitute - TR20
  (458, 45800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 41),
  -- Mantyke - Endure - TR26
  (458, 45800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 42),
  -- Mantyke - Sleep Talk - TR27
  (458, 45800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 43),
  -- Mantyke - Scald - TR84
  (458, 45800, 503, 18, NULL, 4, NULL, NULL, 18004084, NULL, 44),
  -- Mantyke - Slam - Egg
  (458, 45800, 21, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Mantyke - Confuse Ray - Egg
  (458, 45800, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Mantyke - Haze - Egg
  (458, 45800, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Mantyke - Splash - Egg
  (458, 45800, 150, 18, NULL, 5, NULL, NULL, NULL, NULL, 48),
  -- Mantyke - Twister - Egg
  (458, 45800, 239, 18, NULL, 5, NULL, NULL, NULL, NULL, 49),
  -- Mantyke - Mirror Coat - Egg
  (458, 45800, 243, 18, NULL, 5, NULL, NULL, NULL, NULL, 50),
  -- Mantyke - Tailwind - Egg
  (458, 45800, 366, 18, NULL, 5, NULL, NULL, NULL, NULL, 51),
  -- Snover - Leer - Level 1
  (459, 45900, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snover - Powder Snow - Level 1
  (459, 45900, 181, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Snover - Leafage - Level 5
  (459, 45900, 670, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Snover - Mist - Level 10
  (459, 45900, 54, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Snover - Ice Shard - Level 15
  (459, 45900, 420, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Snover - Razor Leaf - Level 20
  (459, 45900, 75, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Snover - Icy Wind - Level 25
  (459, 45900, 196, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Snover - Swagger - Level 30
  (459, 45900, 207, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Snover - Ingrain - Level 35
  (459, 45900, 275, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Snover - Wood Hammer - Level 41
  (459, 45900, 452, 18, NULL, 1, 41, NULL, NULL, NULL, 10),
  -- Snover - Blizzard - Level 45
  (459, 45900, 59, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Snover - Sheer Cold - Level 50
  (459, 45900, 329, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Snover - Mega Punch - TM00
  (459, 45900, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 13),
  -- Snover - Ice Punch - TM04
  (459, 45900, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 14),
  -- Snover - Magical Leaf - TM10
  (459, 45900, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 15),
  -- Snover - Solar Beam - TM11
  (459, 45900, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 16),
  -- Snover - Light Screen - TM17
  (459, 45900, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 17),
  -- Snover - Safeguard - TM19
  (459, 45900, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 18),
  -- Snover - Rest - TM21
  (459, 45900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 19),
  -- Snover - Snore - TM24
  (459, 45900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Snover - Protect - TM25
  (459, 45900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Snover - Icy Wind - TM27
  (459, 45900, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 22),
  -- Snover - Giga Drain - TM28
  (459, 45900, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 23),
  -- Snover - Attract - TM31
  (459, 45900, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 24),
  -- Snover - Rain Dance - TM33
  (459, 45900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 25),
  -- Snover - Hail - TM35
  (459, 45900, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 26),
  -- Snover - Facade - TM39
  (459, 45900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 27),
  -- Snover - Weather Ball - TM46
  (459, 45900, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 28),
  -- Snover - Bullet Seed - TM50
  (459, 45900, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 29),
  -- Snover - Avalanche - TM64
  (459, 45900, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 30),
  -- Snover - Round - TM76
  (459, 45900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 31),
  -- Snover - Swords Dance - TR00
  (459, 45900, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 32),
  -- Snover - Ice Beam - TR05
  (459, 45900, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 33),
  -- Snover - Blizzard - TR06
  (459, 45900, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 34),
  -- Snover - Substitute - TR20
  (459, 45900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 35),
  -- Snover - Endure - TR26
  (459, 45900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 36),
  -- Snover - Sleep Talk - TR27
  (459, 45900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 37),
  -- Snover - Iron Tail - TR31
  (459, 45900, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 38),
  -- Snover - Shadow Ball - TR33
  (459, 45900, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 39),
  -- Snover - Seed Bomb - TR59
  (459, 45900, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 40),
  -- Snover - Energy Ball - TR65
  (459, 45900, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 41),
  -- Snover - Grass Knot - TR77
  (459, 45900, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 42),
  -- Snover - Stomp - Egg
  (459, 45900, 23, 18, NULL, 5, NULL, NULL, NULL, NULL, 43),
  -- Snover - Double-Edge - Egg
  (459, 45900, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 44),
  -- Snover - Leech Seed - Egg
  (459, 45900, 73, 18, NULL, 5, NULL, NULL, NULL, NULL, 45),
  -- Snover - Growth - Egg
  (459, 45900, 74, 18, NULL, 5, NULL, NULL, NULL, NULL, 46),
  -- Snover - Skull Bash - Egg
  (459, 45900, 130, 18, NULL, 5, NULL, NULL, NULL, NULL, 47),
  -- Abomasnow - Ice Punch - Level 1
  (460, 46000, 8, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Abomasnow - Leer - Level 1
  (460, 46000, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Abomasnow - Mist - Level 1
  (460, 46000, 54, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Abomasnow - Powder Snow - Level 1
  (460, 46000, 181, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Abomasnow - Leafage - Level 1
  (460, 46000, 670, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Abomasnow - Aurora Veil - Level 1
  (460, 46000, 694, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Abomasnow - Ice Shard - Level 15
  (460, 46000, 420, 18, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Abomasnow - Razor Leaf - Level 20
  (460, 46000, 75, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Abomasnow - Icy Wind - Level 25
  (460, 46000, 196, 18, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Abomasnow - Swagger - Level 30
  (460, 46000, 207, 18, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Abomasnow - Ingrain - Level 35
  (460, 46000, 275, 18, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Abomasnow - Wood Hammer - Level 43
  (460, 46000, 452, 18, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Abomasnow - Blizzard - Level 49
  (460, 46000, 59, 18, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Abomasnow - Sheer Cold - Level 56
  (460, 46000, 329, 18, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Abomasnow - Ice Punch - Evolution
  (460, 46000, 8, 18, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Abomasnow - Mega Punch - TM00
  (460, 46000, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 16),
  -- Abomasnow - Mega Kick - TM01
  (460, 46000, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 17),
  -- Abomasnow - Ice Punch - TM04
  (460, 46000, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 18),
  -- Abomasnow - Hyper Beam - TM08
  (460, 46000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Abomasnow - Giga Impact - TM09
  (460, 46000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Abomasnow - Magical Leaf - TM10
  (460, 46000, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 21),
  -- Abomasnow - Solar Beam - TM11
  (460, 46000, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 22),
  -- Abomasnow - Light Screen - TM17
  (460, 46000, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 23),
  -- Abomasnow - Safeguard - TM19
  (460, 46000, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 24),
  -- Abomasnow - Rest - TM21
  (460, 46000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Abomasnow - Rock Slide - TM22
  (460, 46000, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 26),
  -- Abomasnow - Snore - TM24
  (460, 46000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Abomasnow - Protect - TM25
  (460, 46000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Abomasnow - Icy Wind - TM27
  (460, 46000, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 29),
  -- Abomasnow - Giga Drain - TM28
  (460, 46000, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 30),
  -- Abomasnow - Attract - TM31
  (460, 46000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 31),
  -- Abomasnow - Rain Dance - TM33
  (460, 46000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 32),
  -- Abomasnow - Hail - TM35
  (460, 46000, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 33),
  -- Abomasnow - Facade - TM39
  (460, 46000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 34),
  -- Abomasnow - Brick Break - TM43
  (460, 46000, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 35),
  -- Abomasnow - Weather Ball - TM46
  (460, 46000, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 36),
  -- Abomasnow - Rock Tomb - TM48
  (460, 46000, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 37),
  -- Abomasnow - Bullet Seed - TM50
  (460, 46000, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 38),
  -- Abomasnow - Icicle Spear - TM51
  (460, 46000, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 39),
  -- Abomasnow - Fling - TM59
  (460, 46000, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 40),
  -- Abomasnow - Avalanche - TM64
  (460, 46000, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 41),
  -- Abomasnow - Round - TM76
  (460, 46000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 42),
  -- Abomasnow - Bulldoze - TM81
  (460, 46000, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 43),
  -- Abomasnow - Stomping Tantrum - TM98
  (460, 46000, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 44),
  -- Abomasnow - Swords Dance - TR00
  (460, 46000, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 45),
  -- Abomasnow - Ice Beam - TR05
  (460, 46000, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 46),
  -- Abomasnow - Blizzard - TR06
  (460, 46000, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 47),
  -- Abomasnow - Earthquake - TR10
  (460, 46000, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 48),
  -- Abomasnow - Substitute - TR20
  (460, 46000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 49),
  -- Abomasnow - Outrage - TR24
  (460, 46000, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 50),
  -- Abomasnow - Endure - TR26
  (460, 46000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 51),
  -- Abomasnow - Sleep Talk - TR27
  (460, 46000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 52),
  -- Abomasnow - Iron Tail - TR31
  (460, 46000, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 53),
  -- Abomasnow - Shadow Ball - TR33
  (460, 46000, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 54),
  -- Abomasnow - Seed Bomb - TR59
  (460, 46000, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 55),
  -- Abomasnow - Focus Blast - TR64
  (460, 46000, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 56),
  -- Abomasnow - Energy Ball - TR65
  (460, 46000, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 57),
  -- Abomasnow - Earth Power - TR67
  (460, 46000, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 58),
  -- Abomasnow - Leaf Storm - TR71
  (460, 46000, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 59),
  -- Abomasnow - Grass Knot - TR77
  (460, 46000, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 60),
  -- Weavile - Scratch - Level 1
  (461, 46100, 10, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Weavile - Leer - Level 1
  (461, 46100, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Weavile - Agility - Level 1
  (461, 46100, 97, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Weavile - Quick Attack - Level 1
  (461, 46100, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Weavile - Slash - Level 1
  (461, 46100, 163, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Weavile - Beat Up - Level 1
  (461, 46100, 251, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Weavile - Taunt - Level 1
  (461, 46100, 269, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Weavile - Revenge - Level 1
  (461, 46100, 279, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Weavile - Assurance - Level 1
  (461, 46100, 372, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Weavile - Ice Shard - Level 1
  (461, 46100, 420, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Weavile - Metal Claw - Level 18
  (461, 46100, 232, 18, NULL, 1, 18, NULL, NULL, NULL, 11),
  -- Weavile - Icy Wind - Level 24
  (461, 46100, 196, 18, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Weavile - Fury Swipes - Level 30
  (461, 46100, 154, 18, NULL, 1, 30, NULL, NULL, NULL, 13),
  -- Weavile - Hone Claws - Level 36
  (461, 46100, 468, 18, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Weavile - Fling - Level 42
  (461, 46100, 374, 18, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Weavile - Nasty Plot - Level 48
  (461, 46100, 417, 18, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Weavile - Screech - Level 54
  (461, 46100, 103, 18, NULL, 1, 54, NULL, NULL, NULL, 17),
  -- Weavile - Night Slash - Level 60
  (461, 46100, 400, 18, NULL, 1, 60, NULL, NULL, NULL, 18),
  -- Weavile - Dark Pulse - Level 66
  (461, 46100, 399, 18, NULL, 1, 66, NULL, NULL, NULL, 19),
  -- Weavile - Mega Punch - TM00
  (461, 46100, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 20),
  -- Weavile - Mega Kick - TM01
  (461, 46100, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 21),
  -- Weavile - Ice Punch - TM04
  (461, 46100, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 22),
  -- Weavile - Hyper Beam - TM08
  (461, 46100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 23),
  -- Weavile - Giga Impact - TM09
  (461, 46100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 24),
  -- Weavile - Dig - TM15
  (461, 46100, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 25),
  -- Weavile - Screech - TM16
  (461, 46100, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 26),
  -- Weavile - Reflect - TM18
  (461, 46100, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 27),
  -- Weavile - Rest - TM21
  (461, 46100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 28),
  -- Weavile - Thief - TM23
  (461, 46100, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 29),
  -- Weavile - Snore - TM24
  (461, 46100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 30),
  -- Weavile - Protect - TM25
  (461, 46100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 31),
  -- Weavile - Icy Wind - TM27
  (461, 46100, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 32),
  -- Weavile - Attract - TM31
  (461, 46100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 33),
  -- Weavile - Rain Dance - TM33
  (461, 46100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 34),
  -- Weavile - Sunny Day - TM34
  (461, 46100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 35),
  -- Weavile - Hail - TM35
  (461, 46100, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 36),
  -- Weavile - Whirlpool - TM36
  (461, 46100, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 37),
  -- Weavile - Beat Up - TM37
  (461, 46100, 251, 18, NULL, 2, NULL, NULL, 18002037, NULL, 38),
  -- Weavile - Facade - TM39
  (461, 46100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 39),
  -- Weavile - Swift - TM40
  (461, 46100, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 40),
  -- Weavile - Revenge - TM42
  (461, 46100, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 41),
  -- Weavile - Brick Break - TM43
  (461, 46100, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 42),
  -- Weavile - Fake Tears - TM47
  (461, 46100, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 43),
  -- Weavile - Icicle Spear - TM51
  (461, 46100, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 44),
  -- Weavile - Payback - TM57
  (461, 46100, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 45),
  -- Weavile - Assurance - TM58
  (461, 46100, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 46),
  -- Weavile - Fling - TM59
  (461, 46100, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 47),
  -- Weavile - Avalanche - TM64
  (461, 46100, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 48),
  -- Weavile - Shadow Claw - TM65
  (461, 46100, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 49),
  -- Weavile - Psycho Cut - TM69
  (461, 46100, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 50),
  -- Weavile - Low Sweep - TM75
  (461, 46100, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 51),
  -- Weavile - Round - TM76
  (461, 46100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 52),
  -- Weavile - Retaliate - TM79
  (461, 46100, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 53),
  -- Weavile - Snarl - TM85
  (461, 46100, 555, 18, NULL, 2, NULL, NULL, 18002085, NULL, 54),
  -- Weavile - False Swipe - TM94
  (461, 46100, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 55),
  -- Weavile - Swords Dance - TR00
  (461, 46100, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 56),
  -- Weavile - Surf - TR04
  (461, 46100, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 57),
  -- Weavile - Ice Beam - TR05
  (461, 46100, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 58),
  -- Weavile - Blizzard - TR06
  (461, 46100, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 59),
  -- Weavile - Low Kick - TR07
  (461, 46100, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 60),
  -- Weavile - Agility - TR12
  (461, 46100, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 61),
  -- Weavile - Substitute - TR20
  (461, 46100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 62),
  -- Weavile - Endure - TR26
  (461, 46100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 63),
  -- Weavile - Sleep Talk - TR27
  (461, 46100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 64),
  -- Weavile - Iron Tail - TR31
  (461, 46100, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 65),
  -- Weavile - Shadow Ball - TR33
  (461, 46100, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 66),
  -- Weavile - Taunt - TR37
  (461, 46100, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 67),
  -- Weavile - Calm Mind - TR49
  (461, 46100, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 68),
  -- Weavile - Poison Jab - TR57
  (461, 46100, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 69),
  -- Weavile - Dark Pulse - TR58
  (461, 46100, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 70),
  -- Weavile - X-Scissor - TR60
  (461, 46100, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 71),
  -- Weavile - Focus Blast - TR64
  (461, 46100, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 72),
  -- Weavile - Nasty Plot - TR68
  (461, 46100, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 73),
  -- Weavile - Foul Play - TR81
  (461, 46100, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 74),
  -- Weavile - Throat Chop - TR95
  (461, 46100, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 75),
  -- Magnezone - Tackle - Level 1
  (462, 46200, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magnezone - Supersonic - Level 1
  (462, 46200, 48, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magnezone - Thunder Shock - Level 1
  (462, 46200, 84, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magnezone - Thunder Wave - Level 1
  (462, 46200, 86, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magnezone - Tri Attack - Level 1
  (462, 46200, 161, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Magnezone - Mirror Coat - Level 1
  (462, 46200, 243, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Magnezone - Magnetic Flux - Level 1
  (462, 46200, 602, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Magnezone - Electric Terrain - Level 1
  (462, 46200, 604, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Magnezone - Electro Ball - Level 12
  (462, 46200, 486, 18, NULL, 1, 12, NULL, NULL, NULL, 9),
  -- Magnezone - Gyro Ball - Level 16
  (462, 46200, 360, 18, NULL, 1, 16, NULL, NULL, NULL, 10),
  -- Magnezone - Spark - Level 20
  (462, 46200, 209, 18, NULL, 1, 20, NULL, NULL, NULL, 11),
  -- Magnezone - Screech - Level 24
  (462, 46200, 103, 18, NULL, 1, 24, NULL, NULL, NULL, 12),
  -- Magnezone - Magnet Rise - Level 28
  (462, 46200, 393, 18, NULL, 1, 28, NULL, NULL, NULL, 13),
  -- Magnezone - Flash Cannon - Level 34
  (462, 46200, 430, 18, NULL, 1, 34, NULL, NULL, NULL, 14),
  -- Magnezone - Discharge - Level 40
  (462, 46200, 435, 18, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Magnezone - Metal Sound - Level 46
  (462, 46200, 319, 18, NULL, 1, 46, NULL, NULL, NULL, 16),
  -- Magnezone - Light Screen - Level 52
  (462, 46200, 113, 18, NULL, 1, 52, NULL, NULL, NULL, 17),
  -- Magnezone - Lock-On - Level 58
  (462, 46200, 199, 18, NULL, 1, 58, NULL, NULL, NULL, 18),
  -- Magnezone - Zap Cannon - Level 64
  (462, 46200, 192, 18, NULL, 1, 64, NULL, NULL, NULL, 19),
  -- Magnezone - Hyper Beam - TM08
  (462, 46200, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Magnezone - Giga Impact - TM09
  (462, 46200, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Magnezone - Thunder Wave - TM14
  (462, 46200, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 22),
  -- Magnezone - Screech - TM16
  (462, 46200, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 23),
  -- Magnezone - Light Screen - TM17
  (462, 46200, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 24),
  -- Magnezone - Reflect - TM18
  (462, 46200, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 25),
  -- Magnezone - Self-Destruct - TM20
  (462, 46200, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 26),
  -- Magnezone - Rest - TM21
  (462, 46200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Magnezone - Snore - TM24
  (462, 46200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 28),
  -- Magnezone - Protect - TM25
  (462, 46200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 29),
  -- Magnezone - Rain Dance - TM33
  (462, 46200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 30),
  -- Magnezone - Sunny Day - TM34
  (462, 46200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 31),
  -- Magnezone - Facade - TM39
  (462, 46200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Magnezone - Swift - TM40
  (462, 46200, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 33),
  -- Magnezone - Round - TM76
  (462, 46200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 34),
  -- Magnezone - Volt Switch - TM80
  (462, 46200, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 35),
  -- Magnezone - Electroweb - TM82
  (462, 46200, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 36),
  -- Magnezone - Electric Terrain - TM90
  (462, 46200, 604, 18, NULL, 2, NULL, NULL, 18002090, NULL, 37),
  -- Magnezone - Thunderbolt - TR08
  (462, 46200, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 38),
  -- Magnezone - Thunder - TR09
  (462, 46200, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 39),
  -- Magnezone - Tri Attack - TR19
  (462, 46200, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 40),
  -- Magnezone - Substitute - TR20
  (462, 46200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 41),
  -- Magnezone - Endure - TR26
  (462, 46200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 42),
  -- Magnezone - Sleep Talk - TR27
  (462, 46200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 43),
  -- Magnezone - Iron Defense - TR46
  (462, 46200, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 44),
  -- Magnezone - Gyro Ball - TR52
  (462, 46200, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 45),
  -- Magnezone - Flash Cannon - TR70
  (462, 46200, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 46),
  -- Magnezone - Iron Head - TR74
  (462, 46200, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 47),
  -- Magnezone - Heavy Slam - TR79
  (462, 46200, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 48),
  -- Magnezone - Electro Ball - TR80
  (462, 46200, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 49),
  -- Magnezone - Ally Switch - TR83
  (462, 46200, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 50),
  -- Magnezone - Wild Charge - TR86
  (462, 46200, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 51),
  -- Magnezone - Body Press - TR99
  (462, 46200, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 52),
  -- Magnezone - Steel Beam - Tutor
  (462, 46200, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 53),
  -- Lickilicky - Supersonic - Level 1
  (463, 46300, 48, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lickilicky - Defense Curl - Level 1
  (463, 46300, 111, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lickilicky - Lick - Level 1
  (463, 46300, 122, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lickilicky - Rollout - Level 1
  (463, 46300, 205, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Lickilicky - Wrap - Level 18
  (463, 46300, 35, 18, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Lickilicky - Disable - Level 24
  (463, 46300, 50, 18, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Lickilicky - Stomp - Level 30
  (463, 46300, 23, 18, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Lickilicky - Knock Off - Level 36
  (463, 46300, 282, 18, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Lickilicky - Screech - Level 42
  (463, 46300, 103, 18, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Lickilicky - Slam - Level 48
  (463, 46300, 21, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Lickilicky - Power Whip - Level 54
  (463, 46300, 438, 18, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Lickilicky - Belly Drum - Level 60
  (463, 46300, 187, 18, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Lickilicky - Mega Punch - TM00
  (463, 46300, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 13),
  -- Lickilicky - Mega Kick - TM01
  (463, 46300, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 14),
  -- Lickilicky - Fire Punch - TM03
  (463, 46300, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 15),
  -- Lickilicky - Ice Punch - TM04
  (463, 46300, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 16),
  -- Lickilicky - Thunder Punch - TM05
  (463, 46300, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 17),
  -- Lickilicky - Hyper Beam - TM08
  (463, 46300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Lickilicky - Giga Impact - TM09
  (463, 46300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Lickilicky - Solar Beam - TM11
  (463, 46300, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 20),
  -- Lickilicky - Dig - TM15
  (463, 46300, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 21),
  -- Lickilicky - Screech - TM16
  (463, 46300, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 22),
  -- Lickilicky - Self-Destruct - TM20
  (463, 46300, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 23),
  -- Lickilicky - Rest - TM21
  (463, 46300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Lickilicky - Rock Slide - TM22
  (463, 46300, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 25),
  -- Lickilicky - Thief - TM23
  (463, 46300, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 26),
  -- Lickilicky - Snore - TM24
  (463, 46300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Lickilicky - Protect - TM25
  (463, 46300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Lickilicky - Icy Wind - TM27
  (463, 46300, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 29),
  -- Lickilicky - Attract - TM31
  (463, 46300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 30),
  -- Lickilicky - Sandstorm - TM32
  (463, 46300, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 31),
  -- Lickilicky - Rain Dance - TM33
  (463, 46300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 32),
  -- Lickilicky - Sunny Day - TM34
  (463, 46300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 33),
  -- Lickilicky - Whirlpool - TM36
  (463, 46300, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 34),
  -- Lickilicky - Facade - TM39
  (463, 46300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 35),
  -- Lickilicky - Helping Hand - TM41
  (463, 46300, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 36),
  -- Lickilicky - Brick Break - TM43
  (463, 46300, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 37),
  -- Lickilicky - Rock Tomb - TM48
  (463, 46300, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 38),
  -- Lickilicky - Fling - TM59
  (463, 46300, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 39),
  -- Lickilicky - Round - TM76
  (463, 46300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 40),
  -- Lickilicky - Retaliate - TM79
  (463, 46300, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 41),
  -- Lickilicky - Bulldoze - TM81
  (463, 46300, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 42),
  -- Lickilicky - Brutal Swing - TM97
  (463, 46300, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 43),
  -- Lickilicky - Stomping Tantrum - TM98
  (463, 46300, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 44),
  -- Lickilicky - Swords Dance - TR00
  (463, 46300, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 45),
  -- Lickilicky - Body Slam - TR01
  (463, 46300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 46),
  -- Lickilicky - Flamethrower - TR02
  (463, 46300, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 47),
  -- Lickilicky - Hydro Pump - TR03
  (463, 46300, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 48),
  -- Lickilicky - Surf - TR04
  (463, 46300, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 49),
  -- Lickilicky - Ice Beam - TR05
  (463, 46300, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 50),
  -- Lickilicky - Blizzard - TR06
  (463, 46300, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 51),
  -- Lickilicky - Thunderbolt - TR08
  (463, 46300, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 52),
  -- Lickilicky - Thunder - TR09
  (463, 46300, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 53),
  -- Lickilicky - Earthquake - TR10
  (463, 46300, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 54),
  -- Lickilicky - Fire Blast - TR15
  (463, 46300, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 55),
  -- Lickilicky - Amnesia - TR17
  (463, 46300, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 56),
  -- Lickilicky - Substitute - TR20
  (463, 46300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 57),
  -- Lickilicky - Endure - TR26
  (463, 46300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 58),
  -- Lickilicky - Sleep Talk - TR27
  (463, 46300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 59),
  -- Lickilicky - Iron Tail - TR31
  (463, 46300, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 60),
  -- Lickilicky - Shadow Ball - TR33
  (463, 46300, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 61),
  -- Lickilicky - Muddy Water - TR45
  (463, 46300, 330, 18, NULL, 4, NULL, NULL, 18004045, NULL, 62),
  -- Lickilicky - Gyro Ball - TR52
  (463, 46300, 360, 18, NULL, 4, NULL, NULL, 18004052, NULL, 63),
  -- Lickilicky - Focus Blast - TR64
  (463, 46300, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 64),
  -- Lickilicky - Zen Headbutt - TR69
  (463, 46300, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 65),
  -- Lickilicky - Power Whip - TR72
  (463, 46300, 438, 18, NULL, 4, NULL, NULL, 18004072, NULL, 66),
  -- Lickilicky - Work Up - TR85
  (463, 46300, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 67),
  -- Lickilicky - Body Press - TR99
  (463, 46300, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 68),
  -- Rhyperior - Tackle - Level 1
  (464, 46400, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rhyperior - Tail Whip - Level 1
  (464, 46400, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rhyperior - Hammer Arm - Level 1
  (464, 46400, 359, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rhyperior - Smack Down - Level 1
  (464, 46400, 479, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Rhyperior - Bulldoze - Level 1
  (464, 46400, 523, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Rhyperior - Horn Attack - Level 15
  (464, 46400, 30, 18, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Rhyperior - Scary Face - Level 20
  (464, 46400, 184, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Rhyperior - Stomp - Level 25
  (464, 46400, 23, 18, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Rhyperior - Rock Blast - Level 30
  (464, 46400, 350, 18, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Rhyperior - Drill Run - Level 35
  (464, 46400, 529, 18, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Rhyperior - Take Down - Level 40
  (464, 46400, 36, 18, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Rhyperior - Earthquake - Level 47
  (464, 46400, 89, 18, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Rhyperior - Stone Edge - Level 54
  (464, 46400, 444, 18, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Rhyperior - Megahorn - Level 61
  (464, 46400, 224, 18, NULL, 1, 61, NULL, NULL, NULL, 14),
  -- Rhyperior - Horn Drill - Level 68
  (464, 46400, 32, 18, NULL, 1, 68, NULL, NULL, NULL, 15),
  -- Rhyperior - Rock Wrecker - Level 75
  (464, 46400, 439, 18, NULL, 1, 75, NULL, NULL, NULL, 16),
  -- Rhyperior - Mega Punch - TM00
  (464, 46400, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 17),
  -- Rhyperior - Mega Kick - TM01
  (464, 46400, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 18),
  -- Rhyperior - Pay Day - TM02
  (464, 46400, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 19),
  -- Rhyperior - Fire Punch - TM03
  (464, 46400, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 20),
  -- Rhyperior - Ice Punch - TM04
  (464, 46400, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 21),
  -- Rhyperior - Thunder Punch - TM05
  (464, 46400, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 22),
  -- Rhyperior - Hyper Beam - TM08
  (464, 46400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 23),
  -- Rhyperior - Giga Impact - TM09
  (464, 46400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 24),
  -- Rhyperior - Dig - TM15
  (464, 46400, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 25),
  -- Rhyperior - Rest - TM21
  (464, 46400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 26),
  -- Rhyperior - Rock Slide - TM22
  (464, 46400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 27),
  -- Rhyperior - Thief - TM23
  (464, 46400, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 28),
  -- Rhyperior - Snore - TM24
  (464, 46400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 29),
  -- Rhyperior - Protect - TM25
  (464, 46400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 30),
  -- Rhyperior - Scary Face - TM26
  (464, 46400, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 31),
  -- Rhyperior - Icy Wind - TM27
  (464, 46400, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 32),
  -- Rhyperior - Attract - TM31
  (464, 46400, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 33),
  -- Rhyperior - Sandstorm - TM32
  (464, 46400, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 34),
  -- Rhyperior - Rain Dance - TM33
  (464, 46400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 35),
  -- Rhyperior - Sunny Day - TM34
  (464, 46400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 36),
  -- Rhyperior - Whirlpool - TM36
  (464, 46400, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 37),
  -- Rhyperior - Facade - TM39
  (464, 46400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 38),
  -- Rhyperior - Helping Hand - TM41
  (464, 46400, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 39),
  -- Rhyperior - Brick Break - TM43
  (464, 46400, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 40),
  -- Rhyperior - Rock Tomb - TM48
  (464, 46400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 41),
  -- Rhyperior - Mud Shot - TM53
  (464, 46400, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 42),
  -- Rhyperior - Rock Blast - TM54
  (464, 46400, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 43),
  -- Rhyperior - Payback - TM57
  (464, 46400, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 44),
  -- Rhyperior - Fling - TM59
  (464, 46400, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 45),
  -- Rhyperior - Avalanche - TM64
  (464, 46400, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 46),
  -- Rhyperior - Shadow Claw - TM65
  (464, 46400, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 47),
  -- Rhyperior - Thunder Fang - TM66
  (464, 46400, 422, 18, NULL, 2, NULL, NULL, 18002066, NULL, 48),
  -- Rhyperior - Ice Fang - TM67
  (464, 46400, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 49),
  -- Rhyperior - Fire Fang - TM68
  (464, 46400, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 50),
  -- Rhyperior - Round - TM76
  (464, 46400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 51),
  -- Rhyperior - Bulldoze - TM81
  (464, 46400, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 52),
  -- Rhyperior - Smart Strike - TM96
  (464, 46400, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 53),
  -- Rhyperior - Brutal Swing - TM97
  (464, 46400, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 54),
  -- Rhyperior - Stomping Tantrum - TM98
  (464, 46400, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 55),
  -- Rhyperior - Breaking Swipe - TM99
  (464, 46400, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 56),
  -- Rhyperior - Swords Dance - TR00
  (464, 46400, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 57),
  -- Rhyperior - Body Slam - TR01
  (464, 46400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 58),
  -- Rhyperior - Flamethrower - TR02
  (464, 46400, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 59),
  -- Rhyperior - Hydro Pump - TR03
  (464, 46400, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 60),
  -- Rhyperior - Surf - TR04
  (464, 46400, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 61),
  -- Rhyperior - Ice Beam - TR05
  (464, 46400, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 62),
  -- Rhyperior - Blizzard - TR06
  (464, 46400, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 63),
  -- Rhyperior - Thunderbolt - TR08
  (464, 46400, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 64),
  -- Rhyperior - Thunder - TR09
  (464, 46400, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 65),
  -- Rhyperior - Earthquake - TR10
  (464, 46400, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 66),
  -- Rhyperior - Fire Blast - TR15
  (464, 46400, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 67),
  -- Rhyperior - Substitute - TR20
  (464, 46400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 68),
  -- Rhyperior - Reversal - TR21
  (464, 46400, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 69),
  -- Rhyperior - Outrage - TR24
  (464, 46400, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 70),
  -- Rhyperior - Endure - TR26
  (464, 46400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 71),
  -- Rhyperior - Sleep Talk - TR27
  (464, 46400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 72),
  -- Rhyperior - Megahorn - TR28
  (464, 46400, 224, 18, NULL, 4, NULL, NULL, 18004028, NULL, 73),
  -- Rhyperior - Iron Tail - TR31
  (464, 46400, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 74),
  -- Rhyperior - Crunch - TR32
  (464, 46400, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 75),
  -- Rhyperior - Uproar - TR35
  (464, 46400, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 76),
  -- Rhyperior - Superpower - TR39
  (464, 46400, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 77),
  -- Rhyperior - Iron Defense - TR46
  (464, 46400, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 78),
  -- Rhyperior - Poison Jab - TR57
  (464, 46400, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 79),
  -- Rhyperior - Dragon Pulse - TR62
  (464, 46400, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 80),
  -- Rhyperior - Focus Blast - TR64
  (464, 46400, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 81),
  -- Rhyperior - Earth Power - TR67
  (464, 46400, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 82),
  -- Rhyperior - Flash Cannon - TR70
  (464, 46400, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 83),
  -- Rhyperior - Iron Head - TR74
  (464, 46400, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 84),
  -- Rhyperior - Stone Edge - TR75
  (464, 46400, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 85),
  -- Rhyperior - Stealth Rock - TR76
  (464, 46400, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 86),
  -- Rhyperior - Heavy Slam - TR79
  (464, 46400, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 87),
  -- Rhyperior - Drill Run - TR87
  (464, 46400, 529, 18, NULL, 4, NULL, NULL, 18004087, NULL, 88),
  -- Rhyperior - Heat Crash - TR88
  (464, 46400, 535, 18, NULL, 4, NULL, NULL, 18004088, NULL, 89),
  -- Rhyperior - High Horsepower - TR94
  (464, 46400, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 90),
  -- Rhyperior - Body Press - TR99
  (464, 46400, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 91),
  -- Tangrowth - Bind - Level 1
  (465, 46500, 20, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tangrowth - Absorb - Level 1
  (465, 46500, 71, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tangrowth - Growth - Level 1
  (465, 46500, 74, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Tangrowth - Stun Spore - Level 1
  (465, 46500, 78, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Tangrowth - Block - Level 1
  (465, 46500, 335, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Tangrowth - Mega Drain - Level 12
  (465, 46500, 72, 18, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Tangrowth - Vine Whip - Level 16
  (465, 46500, 22, 18, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Tangrowth - Poison Powder - Level 20
  (465, 46500, 77, 18, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Tangrowth - Ancient Power - Level 24
  (465, 46500, 246, 18, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Tangrowth - Knock Off - Level 28
  (465, 46500, 282, 18, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Tangrowth - Giga Drain - Level 32
  (465, 46500, 202, 18, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Tangrowth - Sleep Powder - Level 36
  (465, 46500, 79, 18, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Tangrowth - Slam - Level 40
  (465, 46500, 21, 18, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Tangrowth - Tickle - Level 44
  (465, 46500, 321, 18, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Tangrowth - Power Whip - Level 48
  (465, 46500, 438, 18, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Tangrowth - Ingrain - Level 52
  (465, 46500, 275, 18, NULL, 1, 52, NULL, NULL, NULL, 16),
  -- Tangrowth - Grassy Terrain - Level 56
  (465, 46500, 580, 18, NULL, 1, 56, NULL, NULL, NULL, 17),
  -- Tangrowth - Hyper Beam - TM08
  (465, 46500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Tangrowth - Giga Impact - TM09
  (465, 46500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Tangrowth - Solar Beam - TM11
  (465, 46500, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 20),
  -- Tangrowth - Solar Blade - TM12
  (465, 46500, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 21),
  -- Tangrowth - Reflect - TM18
  (465, 46500, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 22),
  -- Tangrowth - Rest - TM21
  (465, 46500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Tangrowth - Rock Slide - TM22
  (465, 46500, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 24),
  -- Tangrowth - Thief - TM23
  (465, 46500, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 25),
  -- Tangrowth - Snore - TM24
  (465, 46500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 26),
  -- Tangrowth - Protect - TM25
  (465, 46500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 27),
  -- Tangrowth - Giga Drain - TM28
  (465, 46500, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 28),
  -- Tangrowth - Attract - TM31
  (465, 46500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Tangrowth - Sunny Day - TM34
  (465, 46500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 30),
  -- Tangrowth - Facade - TM39
  (465, 46500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Tangrowth - Brick Break - TM43
  (465, 46500, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 32),
  -- Tangrowth - Rock Tomb - TM48
  (465, 46500, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 33),
  -- Tangrowth - Bullet Seed - TM50
  (465, 46500, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 34),
  -- Tangrowth - Payback - TM57
  (465, 46500, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 35),
  -- Tangrowth - Fling - TM59
  (465, 46500, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 36),
  -- Tangrowth - Power Swap - TM60
  (465, 46500, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 37),
  -- Tangrowth - Round - TM76
  (465, 46500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Tangrowth - Bulldoze - TM81
  (465, 46500, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 39),
  -- Tangrowth - Grassy Terrain - TM88
  (465, 46500, 580, 18, NULL, 2, NULL, NULL, 18002088, NULL, 40),
  -- Tangrowth - Brutal Swing - TM97
  (465, 46500, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 41),
  -- Tangrowth - Stomping Tantrum - TM98
  (465, 46500, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 42),
  -- Tangrowth - Swords Dance - TR00
  (465, 46500, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 43),
  -- Tangrowth - Body Slam - TR01
  (465, 46500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 44),
  -- Tangrowth - Earthquake - TR10
  (465, 46500, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 45),
  -- Tangrowth - Amnesia - TR17
  (465, 46500, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 46),
  -- Tangrowth - Substitute - TR20
  (465, 46500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 47),
  -- Tangrowth - Sludge Bomb - TR22
  (465, 46500, 188, 18, NULL, 4, NULL, NULL, 18004022, NULL, 48),
  -- Tangrowth - Endure - TR26
  (465, 46500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 49),
  -- Tangrowth - Sleep Talk - TR27
  (465, 46500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 50),
  -- Tangrowth - Poison Jab - TR57
  (465, 46500, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 51),
  -- Tangrowth - Seed Bomb - TR59
  (465, 46500, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 52),
  -- Tangrowth - Focus Blast - TR64
  (465, 46500, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 53),
  -- Tangrowth - Energy Ball - TR65
  (465, 46500, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 54),
  -- Tangrowth - Leaf Storm - TR71
  (465, 46500, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 55),
  -- Tangrowth - Power Whip - TR72
  (465, 46500, 438, 18, NULL, 4, NULL, NULL, 18004072, NULL, 56),
  -- Tangrowth - Grass Knot - TR77
  (465, 46500, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 57),
  -- Electivire - Leer - Level 1
  (466, 46600, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electivire - Thunder Shock - Level 1
  (466, 46600, 84, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Electivire - Quick Attack - Level 1
  (466, 46600, 98, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Electivire - Charge - Level 1
  (466, 46600, 268, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Electivire - Swift - Level 12
  (466, 46600, 129, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Electivire - Shock Wave - Level 16
  (466, 46600, 351, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Electivire - Thunder Wave - Level 20
  (466, 46600, 86, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Electivire - Screech - Level 24
  (466, 46600, 103, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Electivire - Thunder Punch - Level 28
  (466, 46600, 9, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Electivire - Discharge - Level 34
  (466, 46600, 435, 18, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Electivire - Low Kick - Level 40
  (466, 46600, 67, 18, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Electivire - Thunderbolt - Level 46
  (466, 46600, 85, 18, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Electivire - Light Screen - Level 52
  (466, 46600, 113, 18, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Electivire - Thunder - Level 58
  (466, 46600, 87, 18, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Electivire - Giga Impact - Level 64
  (466, 46600, 416, 18, NULL, 1, 64, NULL, NULL, NULL, 15),
  -- Electivire - Mega Punch - TM00
  (466, 46600, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 16),
  -- Electivire - Mega Kick - TM01
  (466, 46600, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 17),
  -- Electivire - Fire Punch - TM03
  (466, 46600, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 18),
  -- Electivire - Ice Punch - TM04
  (466, 46600, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 19),
  -- Electivire - Thunder Punch - TM05
  (466, 46600, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 20),
  -- Electivire - Hyper Beam - TM08
  (466, 46600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 21),
  -- Electivire - Giga Impact - TM09
  (466, 46600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 22),
  -- Electivire - Thunder Wave - TM14
  (466, 46600, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 23),
  -- Electivire - Dig - TM15
  (466, 46600, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 24),
  -- Electivire - Screech - TM16
  (466, 46600, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 25),
  -- Electivire - Light Screen - TM17
  (466, 46600, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 26),
  -- Electivire - Rest - TM21
  (466, 46600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 27),
  -- Electivire - Rock Slide - TM22
  (466, 46600, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 28),
  -- Electivire - Thief - TM23
  (466, 46600, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 29),
  -- Electivire - Snore - TM24
  (466, 46600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 30),
  -- Electivire - Protect - TM25
  (466, 46600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 31),
  -- Electivire - Attract - TM31
  (466, 46600, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 32),
  -- Electivire - Rain Dance - TM33
  (466, 46600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 33),
  -- Electivire - Facade - TM39
  (466, 46600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 34),
  -- Electivire - Swift - TM40
  (466, 46600, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 35),
  -- Electivire - Helping Hand - TM41
  (466, 46600, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 36),
  -- Electivire - Brick Break - TM43
  (466, 46600, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 37),
  -- Electivire - Weather Ball - TM46
  (466, 46600, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 38),
  -- Electivire - Rock Tomb - TM48
  (466, 46600, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 39),
  -- Electivire - Fling - TM59
  (466, 46600, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 40),
  -- Electivire - Low Sweep - TM75
  (466, 46600, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 41),
  -- Electivire - Round - TM76
  (466, 46600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 42),
  -- Electivire - Volt Switch - TM80
  (466, 46600, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 43),
  -- Electivire - Bulldoze - TM81
  (466, 46600, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 44),
  -- Electivire - Electroweb - TM82
  (466, 46600, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 45),
  -- Electivire - Electric Terrain - TM90
  (466, 46600, 604, 18, NULL, 2, NULL, NULL, 18002090, NULL, 46),
  -- Electivire - Stomping Tantrum - TM98
  (466, 46600, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 47),
  -- Electivire - Body Slam - TR01
  (466, 46600, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 48),
  -- Electivire - Flamethrower - TR02
  (466, 46600, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 49),
  -- Electivire - Low Kick - TR07
  (466, 46600, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 50),
  -- Electivire - Thunderbolt - TR08
  (466, 46600, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 51),
  -- Electivire - Thunder - TR09
  (466, 46600, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 52),
  -- Electivire - Earthquake - TR10
  (466, 46600, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 53),
  -- Electivire - Psychic - TR11
  (466, 46600, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 54),
  -- Electivire - Substitute - TR20
  (466, 46600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 55),
  -- Electivire - Endure - TR26
  (466, 46600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 56),
  -- Electivire - Sleep Talk - TR27
  (466, 46600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 57),
  -- Electivire - Iron Tail - TR31
  (466, 46600, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 58),
  -- Electivire - Uproar - TR35
  (466, 46600, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 59),
  -- Electivire - Taunt - TR37
  (466, 46600, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 60),
  -- Electivire - Focus Blast - TR64
  (466, 46600, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 61),
  -- Electivire - Electro Ball - TR80
  (466, 46600, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 62),
  -- Electivire - Wild Charge - TR86
  (466, 46600, 528, 18, NULL, 4, NULL, NULL, 18004086, NULL, 63),
  -- Electivire - Darkest Lariat - TR93
  (466, 46600, 663, 18, NULL, 4, NULL, NULL, 18004093, NULL, 64),
  -- Magmortar - Leer - Level 1
  (467, 46700, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Magmortar - Ember - Level 1
  (467, 46700, 52, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Magmortar - Smokescreen - Level 1
  (467, 46700, 108, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Magmortar - Smog - Level 1
  (467, 46700, 123, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Magmortar - Clear Smog - Level 12
  (467, 46700, 499, 18, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Magmortar - Flame Wheel - Level 16
  (467, 46700, 172, 18, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Magmortar - Confuse Ray - Level 20
  (467, 46700, 109, 18, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Magmortar - Scary Face - Level 24
  (467, 46700, 184, 18, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Magmortar - Fire Punch - Level 28
  (467, 46700, 7, 18, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Magmortar - Lava Plume - Level 34
  (467, 46700, 436, 18, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Magmortar - Low Kick - Level 40
  (467, 46700, 67, 18, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Magmortar - Flamethrower - Level 46
  (467, 46700, 53, 18, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Magmortar - Sunny Day - Level 52
  (467, 46700, 241, 18, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Magmortar - Fire Blast - Level 58
  (467, 46700, 126, 18, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Magmortar - Hyper Beam - Level 64
  (467, 46700, 63, 18, NULL, 1, 64, NULL, NULL, NULL, 15),
  -- Magmortar - Mega Punch - TM00
  (467, 46700, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 16),
  -- Magmortar - Mega Kick - TM01
  (467, 46700, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 17),
  -- Magmortar - Fire Punch - TM03
  (467, 46700, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 18),
  -- Magmortar - Thunder Punch - TM05
  (467, 46700, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 19),
  -- Magmortar - Hyper Beam - TM08
  (467, 46700, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 20),
  -- Magmortar - Giga Impact - TM09
  (467, 46700, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 21),
  -- Magmortar - Solar Beam - TM11
  (467, 46700, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 22),
  -- Magmortar - Fire Spin - TM13
  (467, 46700, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 23),
  -- Magmortar - Screech - TM16
  (467, 46700, 103, 18, NULL, 2, NULL, NULL, 18002016, NULL, 24),
  -- Magmortar - Rest - TM21
  (467, 46700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Magmortar - Rock Slide - TM22
  (467, 46700, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 26),
  -- Magmortar - Thief - TM23
  (467, 46700, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 27),
  -- Magmortar - Snore - TM24
  (467, 46700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 28),
  -- Magmortar - Protect - TM25
  (467, 46700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 29),
  -- Magmortar - Scary Face - TM26
  (467, 46700, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 30),
  -- Magmortar - Attract - TM31
  (467, 46700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 31),
  -- Magmortar - Sunny Day - TM34
  (467, 46700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 32),
  -- Magmortar - Will-O-Wisp - TM38
  (467, 46700, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 33),
  -- Magmortar - Facade - TM39
  (467, 46700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 34),
  -- Magmortar - Helping Hand - TM41
  (467, 46700, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 35),
  -- Magmortar - Brick Break - TM43
  (467, 46700, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 36),
  -- Magmortar - Weather Ball - TM46
  (467, 46700, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 37),
  -- Magmortar - Rock Tomb - TM48
  (467, 46700, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 38),
  -- Magmortar - Fling - TM59
  (467, 46700, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 39),
  -- Magmortar - Power Swap - TM60
  (467, 46700, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 40),
  -- Magmortar - Low Sweep - TM75
  (467, 46700, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 41),
  -- Magmortar - Round - TM76
  (467, 46700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 42),
  -- Magmortar - Bulldoze - TM81
  (467, 46700, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 43),
  -- Magmortar - Mystical Fire - TM92
  (467, 46700, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 44),
  -- Magmortar - Stomping Tantrum - TM98
  (467, 46700, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 45),
  -- Magmortar - Body Slam - TR01
  (467, 46700, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 46),
  -- Magmortar - Flamethrower - TR02
  (467, 46700, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 47),
  -- Magmortar - Low Kick - TR07
  (467, 46700, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 48),
  -- Magmortar - Thunderbolt - TR08
  (467, 46700, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 49),
  -- Magmortar - Earthquake - TR10
  (467, 46700, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 50),
  -- Magmortar - Psychic - TR11
  (467, 46700, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 51),
  -- Magmortar - Focus Energy - TR13
  (467, 46700, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 52),
  -- Magmortar - Fire Blast - TR15
  (467, 46700, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 53),
  -- Magmortar - Substitute - TR20
  (467, 46700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 54),
  -- Magmortar - Endure - TR26
  (467, 46700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 55),
  -- Magmortar - Sleep Talk - TR27
  (467, 46700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 56),
  -- Magmortar - Iron Tail - TR31
  (467, 46700, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 57),
  -- Magmortar - Uproar - TR35
  (467, 46700, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 58),
  -- Magmortar - Heat Wave - TR36
  (467, 46700, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 59),
  -- Magmortar - Taunt - TR37
  (467, 46700, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 60),
  -- Magmortar - Overheat - TR43
  (467, 46700, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 61),
  -- Magmortar - Flare Blitz - TR55
  (467, 46700, 394, 18, NULL, 4, NULL, NULL, 18004055, NULL, 62),
  -- Magmortar - Focus Blast - TR64
  (467, 46700, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 63),
  -- Togekiss - Pound - Level 1
  (468, 46800, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Togekiss - Double-Edge - Level 1
  (468, 46800, 38, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Togekiss - Growl - Level 1
  (468, 46800, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Togekiss - Metronome - Level 1
  (468, 46800, 118, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Togekiss - Sky Attack - Level 1
  (468, 46800, 143, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Togekiss - Tri Attack - Level 1
  (468, 46800, 161, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Togekiss - Sweet Kiss - Level 1
  (468, 46800, 186, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Togekiss - Charm - Level 1
  (468, 46800, 204, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Togekiss - Safeguard - Level 1
  (468, 46800, 219, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Togekiss - Baton Pass - Level 1
  (468, 46800, 226, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Togekiss - Extreme Speed - Level 1
  (468, 46800, 245, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Togekiss - Ancient Power - Level 1
  (468, 46800, 246, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Togekiss - Follow Me - Level 1
  (468, 46800, 266, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Togekiss - Wish - Level 1
  (468, 46800, 273, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Togekiss - Yawn - Level 1
  (468, 46800, 281, 18, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Togekiss - Last Resort - Level 1
  (468, 46800, 387, 18, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Togekiss - Aura Sphere - Level 1
  (468, 46800, 396, 18, NULL, 1, 1, NULL, NULL, NULL, 17),
  -- Togekiss - Air Slash - Level 1
  (468, 46800, 403, 18, NULL, 1, 1, NULL, NULL, NULL, 18),
  -- Togekiss - After You - Level 1
  (468, 46800, 495, 18, NULL, 1, 1, NULL, NULL, NULL, 19),
  -- Togekiss - Fairy Wind - Level 1
  (468, 46800, 584, 18, NULL, 1, 1, NULL, NULL, NULL, 20),
  -- Togekiss - Life Dew - Level 1
  (468, 46800, 791, 18, NULL, 1, 1, NULL, NULL, NULL, 21),
  -- Togekiss - Air Slash - Evolution
  (468, 46800, 403, 18, NULL, 7, NULL, NULL, NULL, NULL, 22),
  -- Togekiss - Mega Punch - TM00
  (468, 46800, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 23),
  -- Togekiss - Mega Kick - TM01
  (468, 46800, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 24),
  -- Togekiss - Fly - TM06
  (468, 46800, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 25),
  -- Togekiss - Hyper Beam - TM08
  (468, 46800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 26),
  -- Togekiss - Giga Impact - TM09
  (468, 46800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 27),
  -- Togekiss - Magical Leaf - TM10
  (468, 46800, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 28),
  -- Togekiss - Solar Beam - TM11
  (468, 46800, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 29),
  -- Togekiss - Thunder Wave - TM14
  (468, 46800, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 30),
  -- Togekiss - Light Screen - TM17
  (468, 46800, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 31),
  -- Togekiss - Reflect - TM18
  (468, 46800, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 32),
  -- Togekiss - Safeguard - TM19
  (468, 46800, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 33),
  -- Togekiss - Rest - TM21
  (468, 46800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 34),
  -- Togekiss - Snore - TM24
  (468, 46800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 35),
  -- Togekiss - Protect - TM25
  (468, 46800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 36),
  -- Togekiss - Charm - TM29
  (468, 46800, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 37),
  -- Togekiss - Steel Wing - TM30
  (468, 46800, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 38),
  -- Togekiss - Attract - TM31
  (468, 46800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 39),
  -- Togekiss - Rain Dance - TM33
  (468, 46800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 40),
  -- Togekiss - Sunny Day - TM34
  (468, 46800, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 41),
  -- Togekiss - Facade - TM39
  (468, 46800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 42),
  -- Togekiss - Swift - TM40
  (468, 46800, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 43),
  -- Togekiss - Helping Hand - TM41
  (468, 46800, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 44),
  -- Togekiss - Brick Break - TM43
  (468, 46800, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 45),
  -- Togekiss - Imprison - TM44
  (468, 46800, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 46),
  -- Togekiss - Fling - TM59
  (468, 46800, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 47),
  -- Togekiss - Drain Punch - TM63
  (468, 46800, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 48),
  -- Togekiss - Round - TM76
  (468, 46800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 49),
  -- Togekiss - Retaliate - TM79
  (468, 46800, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 50),
  -- Togekiss - Draining Kiss - TM87
  (468, 46800, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 51),
  -- Togekiss - Mystical Fire - TM92
  (468, 46800, 595, 18, NULL, 2, NULL, NULL, 18002092, NULL, 52),
  -- Togekiss - Air Slash - TM95
  (468, 46800, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 53),
  -- Togekiss - Smart Strike - TM96
  (468, 46800, 684, 18, NULL, 2, NULL, NULL, 18002096, NULL, 54),
  -- Togekiss - Body Slam - TR01
  (468, 46800, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 55),
  -- Togekiss - Flamethrower - TR02
  (468, 46800, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 56),
  -- Togekiss - Psychic - TR11
  (468, 46800, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 57),
  -- Togekiss - Metronome - TR14
  (468, 46800, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 58),
  -- Togekiss - Fire Blast - TR15
  (468, 46800, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 59),
  -- Togekiss - Amnesia - TR17
  (468, 46800, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 60),
  -- Togekiss - Tri Attack - TR19
  (468, 46800, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 61),
  -- Togekiss - Substitute - TR20
  (468, 46800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 62),
  -- Togekiss - Psyshock - TR25
  (468, 46800, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 63),
  -- Togekiss - Endure - TR26
  (468, 46800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 64),
  -- Togekiss - Sleep Talk - TR27
  (468, 46800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 65),
  -- Togekiss - Baton Pass - TR29
  (468, 46800, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 66),
  -- Togekiss - Encore - TR30
  (468, 46800, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 67),
  -- Togekiss - Shadow Ball - TR33
  (468, 46800, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 68),
  -- Togekiss - Future Sight - TR34
  (468, 46800, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 69),
  -- Togekiss - Uproar - TR35
  (468, 46800, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 70),
  -- Togekiss - Heat Wave - TR36
  (468, 46800, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 71),
  -- Togekiss - Trick - TR38
  (468, 46800, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 72),
  -- Togekiss - Hyper Voice - TR42
  (468, 46800, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 73),
  -- Togekiss - Aura Sphere - TR56
  (468, 46800, 396, 18, NULL, 4, NULL, NULL, 18004056, NULL, 74),
  -- Togekiss - Nasty Plot - TR68
  (468, 46800, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 75),
  -- Togekiss - Zen Headbutt - TR69
  (468, 46800, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 76),
  -- Togekiss - Grass Knot - TR77
  (468, 46800, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 77),
  -- Togekiss - Stored Power - TR82
  (468, 46800, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 78),
  -- Togekiss - Ally Switch - TR83
  (468, 46800, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 79),
  -- Togekiss - Work Up - TR85
  (468, 46800, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 80),
  -- Togekiss - Play Rough - TR90
  (468, 46800, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 81),
  -- Togekiss - Dazzling Gleam - TR92
  (468, 46800, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 82),
  -- Leafeon - Tackle - Level 1
  (470, 47000, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Leafeon - Take Down - Level 1
  (470, 47000, 36, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Leafeon - Double-Edge - Level 1
  (470, 47000, 38, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Leafeon - Tail Whip - Level 1
  (470, 47000, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Leafeon - Bite - Level 1
  (470, 47000, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Leafeon - Growl - Level 1
  (470, 47000, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Leafeon - Razor Leaf - Level 1
  (470, 47000, 75, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Leafeon - Swift - Level 1
  (470, 47000, 129, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Leafeon - Charm - Level 1
  (470, 47000, 204, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Leafeon - Baton Pass - Level 1
  (470, 47000, 226, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Leafeon - Helping Hand - Level 1
  (470, 47000, 270, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Leafeon - Covet - Level 1
  (470, 47000, 343, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Leafeon - Copycat - Level 1
  (470, 47000, 383, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Leafeon - Sand Attack - Level 5
  (470, 47000, 28, 18, NULL, 1, 5, NULL, NULL, NULL, 14),
  -- Leafeon - Quick Attack - Level 10
  (470, 47000, 98, 18, NULL, 1, 10, NULL, NULL, NULL, 15),
  -- Leafeon - Baby-Doll Eyes - Level 15
  (470, 47000, 608, 18, NULL, 1, 15, NULL, NULL, NULL, 16),
  -- Leafeon - Leech Seed - Level 20
  (470, 47000, 73, 18, NULL, 1, 20, NULL, NULL, NULL, 17),
  -- Leafeon - Magical Leaf - Level 25
  (470, 47000, 345, 18, NULL, 1, 25, NULL, NULL, NULL, 18),
  -- Leafeon - Synthesis - Level 30
  (470, 47000, 235, 18, NULL, 1, 30, NULL, NULL, NULL, 19),
  -- Leafeon - Sunny Day - Level 35
  (470, 47000, 241, 18, NULL, 1, 35, NULL, NULL, NULL, 20),
  -- Leafeon - Giga Drain - Level 40
  (470, 47000, 202, 18, NULL, 1, 40, NULL, NULL, NULL, 21),
  -- Leafeon - Swords Dance - Level 45
  (470, 47000, 14, 18, NULL, 1, 45, NULL, NULL, NULL, 22),
  -- Leafeon - Leaf Blade - Level 50
  (470, 47000, 348, 18, NULL, 1, 50, NULL, NULL, NULL, 23),
  -- Leafeon - Last Resort - Level 55
  (470, 47000, 387, 18, NULL, 1, 55, NULL, NULL, NULL, 24),
  -- Leafeon - Razor Leaf - Evolution
  (470, 47000, 75, 18, NULL, 7, NULL, NULL, NULL, NULL, 25),
  -- Leafeon - Pay Day - TM02
  (470, 47000, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 26),
  -- Leafeon - Hyper Beam - TM08
  (470, 47000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 27),
  -- Leafeon - Giga Impact - TM09
  (470, 47000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 28),
  -- Leafeon - Magical Leaf - TM10
  (470, 47000, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 29),
  -- Leafeon - Solar Beam - TM11
  (470, 47000, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 30),
  -- Leafeon - Solar Blade - TM12
  (470, 47000, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 31),
  -- Leafeon - Dig - TM15
  (470, 47000, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 32),
  -- Leafeon - Rest - TM21
  (470, 47000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 33),
  -- Leafeon - Snore - TM24
  (470, 47000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 34),
  -- Leafeon - Protect - TM25
  (470, 47000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 35),
  -- Leafeon - Giga Drain - TM28
  (470, 47000, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 36),
  -- Leafeon - Charm - TM29
  (470, 47000, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 37),
  -- Leafeon - Attract - TM31
  (470, 47000, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 38),
  -- Leafeon - Rain Dance - TM33
  (470, 47000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 39),
  -- Leafeon - Sunny Day - TM34
  (470, 47000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 40),
  -- Leafeon - Facade - TM39
  (470, 47000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 41),
  -- Leafeon - Swift - TM40
  (470, 47000, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 42),
  -- Leafeon - Helping Hand - TM41
  (470, 47000, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 43),
  -- Leafeon - Weather Ball - TM46
  (470, 47000, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 44),
  -- Leafeon - Fake Tears - TM47
  (470, 47000, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 45),
  -- Leafeon - Bullet Seed - TM50
  (470, 47000, 331, 18, NULL, 2, NULL, NULL, 18002050, NULL, 46),
  -- Leafeon - Round - TM76
  (470, 47000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 47),
  -- Leafeon - Retaliate - TM79
  (470, 47000, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 48),
  -- Leafeon - Swords Dance - TR00
  (470, 47000, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 49),
  -- Leafeon - Body Slam - TR01
  (470, 47000, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 50),
  -- Leafeon - Focus Energy - TR13
  (470, 47000, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 51),
  -- Leafeon - Substitute - TR20
  (470, 47000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 52),
  -- Leafeon - Endure - TR26
  (470, 47000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 53),
  -- Leafeon - Sleep Talk - TR27
  (470, 47000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 54),
  -- Leafeon - Baton Pass - TR29
  (470, 47000, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 55),
  -- Leafeon - Iron Tail - TR31
  (470, 47000, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 56),
  -- Leafeon - Shadow Ball - TR33
  (470, 47000, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 57),
  -- Leafeon - Hyper Voice - TR42
  (470, 47000, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 58),
  -- Leafeon - Leaf Blade - TR50
  (470, 47000, 348, 18, NULL, 4, NULL, NULL, 18004050, NULL, 59),
  -- Leafeon - Seed Bomb - TR59
  (470, 47000, 402, 18, NULL, 4, NULL, NULL, 18004059, NULL, 60),
  -- Leafeon - X-Scissor - TR60
  (470, 47000, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 61),
  -- Leafeon - Energy Ball - TR65
  (470, 47000, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 62),
  -- Leafeon - Leaf Storm - TR71
  (470, 47000, 437, 18, NULL, 4, NULL, NULL, 18004071, NULL, 63),
  -- Leafeon - Grass Knot - TR77
  (470, 47000, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 64),
  -- Leafeon - Stored Power - TR82
  (470, 47000, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 65),
  -- Leafeon - Work Up - TR85
  (470, 47000, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 66),
  -- Glaceon - Tackle - Level 1
  (471, 47100, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Glaceon - Take Down - Level 1
  (471, 47100, 36, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Glaceon - Double-Edge - Level 1
  (471, 47100, 38, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Glaceon - Tail Whip - Level 1
  (471, 47100, 39, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Glaceon - Growl - Level 1
  (471, 47100, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Glaceon - Swift - Level 1
  (471, 47100, 129, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Glaceon - Icy Wind - Level 1
  (471, 47100, 196, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Glaceon - Charm - Level 1
  (471, 47100, 204, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Glaceon - Baton Pass - Level 1
  (471, 47100, 226, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Glaceon - Helping Hand - Level 1
  (471, 47100, 270, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Glaceon - Covet - Level 1
  (471, 47100, 343, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Glaceon - Copycat - Level 1
  (471, 47100, 383, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Glaceon - Sand Attack - Level 5
  (471, 47100, 28, 18, NULL, 1, 5, NULL, NULL, NULL, 13),
  -- Glaceon - Quick Attack - Level 10
  (471, 47100, 98, 18, NULL, 1, 10, NULL, NULL, NULL, 14),
  -- Glaceon - Baby-Doll Eyes - Level 15
  (471, 47100, 608, 18, NULL, 1, 15, NULL, NULL, NULL, 15),
  -- Glaceon - Ice Shard - Level 20
  (471, 47100, 420, 18, NULL, 1, 20, NULL, NULL, NULL, 16),
  -- Glaceon - Bite - Level 25
  (471, 47100, 44, 18, NULL, 1, 25, NULL, NULL, NULL, 17),
  -- Glaceon - Ice Fang - Level 30
  (471, 47100, 423, 18, NULL, 1, 30, NULL, NULL, NULL, 18),
  -- Glaceon - Hail - Level 35
  (471, 47100, 258, 18, NULL, 1, 35, NULL, NULL, NULL, 19),
  -- Glaceon - Freeze-Dry - Level 40
  (471, 47100, 573, 18, NULL, 1, 40, NULL, NULL, NULL, 20),
  -- Glaceon - Mirror Coat - Level 45
  (471, 47100, 243, 18, NULL, 1, 45, NULL, NULL, NULL, 21),
  -- Glaceon - Blizzard - Level 50
  (471, 47100, 59, 18, NULL, 1, 50, NULL, NULL, NULL, 22),
  -- Glaceon - Last Resort - Level 55
  (471, 47100, 387, 18, NULL, 1, 55, NULL, NULL, NULL, 23),
  -- Glaceon - Icy Wind - Evolution
  (471, 47100, 196, 18, NULL, 7, NULL, NULL, NULL, NULL, 24),
  -- Glaceon - Pay Day - TM02
  (471, 47100, 6, 18, NULL, 2, NULL, NULL, 18002002, NULL, 25),
  -- Glaceon - Hyper Beam - TM08
  (471, 47100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 26),
  -- Glaceon - Giga Impact - TM09
  (471, 47100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 27),
  -- Glaceon - Dig - TM15
  (471, 47100, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 28),
  -- Glaceon - Rest - TM21
  (471, 47100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 29),
  -- Glaceon - Snore - TM24
  (471, 47100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 30),
  -- Glaceon - Protect - TM25
  (471, 47100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 31),
  -- Glaceon - Icy Wind - TM27
  (471, 47100, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 32),
  -- Glaceon - Charm - TM29
  (471, 47100, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 33),
  -- Glaceon - Attract - TM31
  (471, 47100, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 34),
  -- Glaceon - Rain Dance - TM33
  (471, 47100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 35),
  -- Glaceon - Sunny Day - TM34
  (471, 47100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 36),
  -- Glaceon - Hail - TM35
  (471, 47100, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 37),
  -- Glaceon - Facade - TM39
  (471, 47100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 38),
  -- Glaceon - Swift - TM40
  (471, 47100, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 39),
  -- Glaceon - Helping Hand - TM41
  (471, 47100, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 40),
  -- Glaceon - Weather Ball - TM46
  (471, 47100, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 41),
  -- Glaceon - Fake Tears - TM47
  (471, 47100, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 42),
  -- Glaceon - Icicle Spear - TM51
  (471, 47100, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 43),
  -- Glaceon - Avalanche - TM64
  (471, 47100, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 44),
  -- Glaceon - Ice Fang - TM67
  (471, 47100, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 45),
  -- Glaceon - Round - TM76
  (471, 47100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 46),
  -- Glaceon - Retaliate - TM79
  (471, 47100, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 47),
  -- Glaceon - Body Slam - TR01
  (471, 47100, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 48),
  -- Glaceon - Ice Beam - TR05
  (471, 47100, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 49),
  -- Glaceon - Blizzard - TR06
  (471, 47100, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 50),
  -- Glaceon - Focus Energy - TR13
  (471, 47100, 116, 18, NULL, 4, NULL, NULL, 18004013, NULL, 51),
  -- Glaceon - Substitute - TR20
  (471, 47100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 52),
  -- Glaceon - Endure - TR26
  (471, 47100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 53),
  -- Glaceon - Sleep Talk - TR27
  (471, 47100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 54),
  -- Glaceon - Baton Pass - TR29
  (471, 47100, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 55),
  -- Glaceon - Iron Tail - TR31
  (471, 47100, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 56),
  -- Glaceon - Shadow Ball - TR33
  (471, 47100, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 57),
  -- Glaceon - Hyper Voice - TR42
  (471, 47100, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 58),
  -- Glaceon - Stored Power - TR82
  (471, 47100, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 59),
  -- Glaceon - Work Up - TR85
  (471, 47100, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 60),
  -- Mamoswine - Tackle - Level 1
  (473, 47300, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mamoswine - Flail - Level 1
  (473, 47300, 175, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mamoswine - Powder Snow - Level 1
  (473, 47300, 181, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mamoswine - Mud-Slap - Level 1
  (473, 47300, 189, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mamoswine - Ancient Power - Level 1
  (473, 47300, 246, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Mamoswine - Ice Fang - Level 1
  (473, 47300, 423, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Mamoswine - Double Hit - Level 1
  (473, 47300, 458, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Mamoswine - Ice Shard - Level 15
  (473, 47300, 420, 18, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Mamoswine - Mist - Level 20
  (473, 47300, 54, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Mamoswine - Endure - Level 25
  (473, 47300, 203, 18, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Mamoswine - Icy Wind - Level 30
  (473, 47300, 196, 18, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Mamoswine - Amnesia - Level 37
  (473, 47300, 133, 18, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Mamoswine - Take Down - Level 44
  (473, 47300, 36, 18, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Mamoswine - Earthquake - Level 51
  (473, 47300, 89, 18, NULL, 1, 51, NULL, NULL, NULL, 14),
  -- Mamoswine - Blizzard - Level 58
  (473, 47300, 59, 18, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Mamoswine - Thrash - Level 65
  (473, 47300, 37, 18, NULL, 1, 65, NULL, NULL, NULL, 16),
  -- Mamoswine - Double Hit - Evolution
  (473, 47300, 458, 18, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Mamoswine - Hyper Beam - TM08
  (473, 47300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 18),
  -- Mamoswine - Giga Impact - TM09
  (473, 47300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 19),
  -- Mamoswine - Dig - TM15
  (473, 47300, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 20),
  -- Mamoswine - Light Screen - TM17
  (473, 47300, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 21),
  -- Mamoswine - Reflect - TM18
  (473, 47300, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 22),
  -- Mamoswine - Rest - TM21
  (473, 47300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Mamoswine - Rock Slide - TM22
  (473, 47300, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 24),
  -- Mamoswine - Snore - TM24
  (473, 47300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Mamoswine - Protect - TM25
  (473, 47300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Mamoswine - Scary Face - TM26
  (473, 47300, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 27),
  -- Mamoswine - Icy Wind - TM27
  (473, 47300, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 28),
  -- Mamoswine - Attract - TM31
  (473, 47300, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 29),
  -- Mamoswine - Sandstorm - TM32
  (473, 47300, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 30),
  -- Mamoswine - Rain Dance - TM33
  (473, 47300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 31),
  -- Mamoswine - Hail - TM35
  (473, 47300, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 32),
  -- Mamoswine - Facade - TM39
  (473, 47300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 33),
  -- Mamoswine - Rock Tomb - TM48
  (473, 47300, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 34),
  -- Mamoswine - Sand Tomb - TM49
  (473, 47300, 328, 18, NULL, 2, NULL, NULL, 18002049, NULL, 35),
  -- Mamoswine - Icicle Spear - TM51
  (473, 47300, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 36),
  -- Mamoswine - Mud Shot - TM53
  (473, 47300, 341, 18, NULL, 2, NULL, NULL, 18002053, NULL, 37),
  -- Mamoswine - Rock Blast - TM54
  (473, 47300, 350, 18, NULL, 2, NULL, NULL, 18002054, NULL, 38),
  -- Mamoswine - Avalanche - TM64
  (473, 47300, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 39),
  -- Mamoswine - Ice Fang - TM67
  (473, 47300, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 40),
  -- Mamoswine - Round - TM76
  (473, 47300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 41),
  -- Mamoswine - Bulldoze - TM81
  (473, 47300, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 42),
  -- Mamoswine - Stomping Tantrum - TM98
  (473, 47300, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 43),
  -- Mamoswine - Body Slam - TR01
  (473, 47300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 44),
  -- Mamoswine - Ice Beam - TR05
  (473, 47300, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 45),
  -- Mamoswine - Blizzard - TR06
  (473, 47300, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 46),
  -- Mamoswine - Earthquake - TR10
  (473, 47300, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 47),
  -- Mamoswine - Amnesia - TR17
  (473, 47300, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 48),
  -- Mamoswine - Substitute - TR20
  (473, 47300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 49),
  -- Mamoswine - Endure - TR26
  (473, 47300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 50),
  -- Mamoswine - Sleep Talk - TR27
  (473, 47300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 51),
  -- Mamoswine - Superpower - TR39
  (473, 47300, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 52),
  -- Mamoswine - Earth Power - TR67
  (473, 47300, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 53),
  -- Mamoswine - Iron Head - TR74
  (473, 47300, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 54),
  -- Mamoswine - Stone Edge - TR75
  (473, 47300, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 55),
  -- Mamoswine - Stealth Rock - TR76
  (473, 47300, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 56),
  -- Mamoswine - Heavy Slam - TR79
  (473, 47300, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 57),
  -- Mamoswine - High Horsepower - TR94
  (473, 47300, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 58),
  -- Mamoswine - Body Press - TR99
  (473, 47300, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 59),
  -- Porygon-Z - Tackle - Level 1
  (474, 47400, 33, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Porygon-Z - Defense Curl - Level 1
  (474, 47400, 111, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Porygon-Z - Conversion - Level 1
  (474, 47400, 160, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Porygon-Z - Recycle - Level 1
  (474, 47400, 278, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Porygon-Z - Magnet Rise - Level 1
  (474, 47400, 393, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Porygon-Z - Nasty Plot - Level 1
  (474, 47400, 417, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Porygon-Z - Trick Room - Level 1
  (474, 47400, 433, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Porygon-Z - Thunder Shock - Level 15
  (474, 47400, 84, 18, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Porygon-Z - Psybeam - Level 20
  (474, 47400, 60, 18, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Porygon-Z - Conversion 2 - Level 25
  (474, 47400, 176, 18, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Porygon-Z - Agility - Level 30
  (474, 47400, 97, 18, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Porygon-Z - Recover - Level 35
  (474, 47400, 105, 18, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Porygon-Z - Discharge - Level 40
  (474, 47400, 435, 18, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Porygon-Z - Tri Attack - Level 45
  (474, 47400, 161, 18, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Porygon-Z - Magic Coat - Level 50
  (474, 47400, 277, 18, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Porygon-Z - Lock-On - Level 55
  (474, 47400, 199, 18, NULL, 1, 55, NULL, NULL, NULL, 16),
  -- Porygon-Z - Zap Cannon - Level 60
  (474, 47400, 192, 18, NULL, 1, 60, NULL, NULL, NULL, 17),
  -- Porygon-Z - Hyper Beam - Level 65
  (474, 47400, 63, 18, NULL, 1, 65, NULL, NULL, NULL, 18),
  -- Porygon-Z - Hyper Beam - TM08
  (474, 47400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 19),
  -- Porygon-Z - Giga Impact - TM09
  (474, 47400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 20),
  -- Porygon-Z - Solar Beam - TM11
  (474, 47400, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 21),
  -- Porygon-Z - Thunder Wave - TM14
  (474, 47400, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 22),
  -- Porygon-Z - Rest - TM21
  (474, 47400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Porygon-Z - Thief - TM23
  (474, 47400, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 24),
  -- Porygon-Z - Snore - TM24
  (474, 47400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Porygon-Z - Protect - TM25
  (474, 47400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Porygon-Z - Icy Wind - TM27
  (474, 47400, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 27),
  -- Porygon-Z - Rain Dance - TM33
  (474, 47400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Porygon-Z - Sunny Day - TM34
  (474, 47400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Porygon-Z - Facade - TM39
  (474, 47400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Porygon-Z - Swift - TM40
  (474, 47400, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 31),
  -- Porygon-Z - Power Swap - TM60
  (474, 47400, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 32),
  -- Porygon-Z - Guard Swap - TM61
  (474, 47400, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 33),
  -- Porygon-Z - Speed Swap - TM62
  (474, 47400, 683, 18, NULL, 2, NULL, NULL, 18002062, NULL, 34),
  -- Porygon-Z - Trick Room - TM70
  (474, 47400, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 35),
  -- Porygon-Z - Wonder Room - TM71
  (474, 47400, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 36),
  -- Porygon-Z - Round - TM76
  (474, 47400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Porygon-Z - Electroweb - TM82
  (474, 47400, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 38),
  -- Porygon-Z - Eerie Impulse - TM93
  (474, 47400, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 39),
  -- Porygon-Z - Ice Beam - TR05
  (474, 47400, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 40),
  -- Porygon-Z - Blizzard - TR06
  (474, 47400, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 41),
  -- Porygon-Z - Thunderbolt - TR08
  (474, 47400, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 42),
  -- Porygon-Z - Thunder - TR09
  (474, 47400, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 43),
  -- Porygon-Z - Psychic - TR11
  (474, 47400, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 44),
  -- Porygon-Z - Agility - TR12
  (474, 47400, 97, 18, NULL, 4, NULL, NULL, 18004012, NULL, 45),
  -- Porygon-Z - Tri Attack - TR19
  (474, 47400, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 46),
  -- Porygon-Z - Substitute - TR20
  (474, 47400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 47),
  -- Porygon-Z - Psyshock - TR25
  (474, 47400, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 48),
  -- Porygon-Z - Endure - TR26
  (474, 47400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 49),
  -- Porygon-Z - Sleep Talk - TR27
  (474, 47400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 50),
  -- Porygon-Z - Iron Tail - TR31
  (474, 47400, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 51),
  -- Porygon-Z - Shadow Ball - TR33
  (474, 47400, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 52),
  -- Porygon-Z - Uproar - TR35
  (474, 47400, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 53),
  -- Porygon-Z - Trick - TR38
  (474, 47400, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 54),
  -- Porygon-Z - Dark Pulse - TR58
  (474, 47400, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 55),
  -- Porygon-Z - Nasty Plot - TR68
  (474, 47400, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 56),
  -- Porygon-Z - Zen Headbutt - TR69
  (474, 47400, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 57),
  -- Porygon-Z - Foul Play - TR81
  (474, 47400, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 58),
  -- Porygon-Z - Ally Switch - TR83
  (474, 47400, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 59),
  -- Gallade - Leer - Level 1
  (475, 47500, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gallade - Growl - Level 1
  (475, 47500, 45, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gallade - Psybeam - Level 1
  (475, 47500, 60, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Gallade - Confusion - Level 1
  (475, 47500, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Gallade - Psychic - Level 1
  (475, 47500, 94, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Gallade - Hypnosis - Level 1
  (475, 47500, 95, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Gallade - Double Team - Level 1
  (475, 47500, 104, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Gallade - Dream Eater - Level 1
  (475, 47500, 138, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Gallade - Slash - Level 1
  (475, 47500, 163, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Gallade - Charm - Level 1
  (475, 47500, 204, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Gallade - Fury Cutter - Level 1
  (475, 47500, 210, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Gallade - Future Sight - Level 1
  (475, 47500, 248, 18, NULL, 1, 1, NULL, NULL, NULL, 12),
  -- Gallade - Imprison - Level 1
  (475, 47500, 286, 18, NULL, 1, 1, NULL, NULL, NULL, 13),
  -- Gallade - Calm Mind - Level 1
  (475, 47500, 347, 18, NULL, 1, 1, NULL, NULL, NULL, 14),
  -- Gallade - Night Slash - Level 1
  (475, 47500, 400, 18, NULL, 1, 1, NULL, NULL, NULL, 15),
  -- Gallade - Disarming Voice - Level 1
  (475, 47500, 574, 18, NULL, 1, 1, NULL, NULL, NULL, 16),
  -- Gallade - Draining Kiss - Level 1
  (475, 47500, 577, 18, NULL, 1, 1, NULL, NULL, NULL, 17),
  -- Gallade - Life Dew - Level 1
  (475, 47500, 791, 18, NULL, 1, 1, NULL, NULL, NULL, 18),
  -- Gallade - Helping Hand - Level 9
  (475, 47500, 270, 18, NULL, 1, 9, NULL, NULL, NULL, 19),
  -- Gallade - Feint - Level 12
  (475, 47500, 364, 18, NULL, 1, 12, NULL, NULL, NULL, 20),
  -- Gallade - Teleport - Level 15
  (475, 47500, 100, 18, NULL, 1, 15, NULL, NULL, NULL, 21),
  -- Gallade - Aerial Ace - Level 18
  (475, 47500, 332, 18, NULL, 1, 18, NULL, NULL, NULL, 22),
  -- Gallade - False Swipe - Level 23
  (475, 47500, 206, 18, NULL, 1, 23, NULL, NULL, NULL, 23),
  -- Gallade - Protect - Level 28
  (475, 47500, 182, 18, NULL, 1, 28, NULL, NULL, NULL, 24),
  -- Gallade - Swords Dance - Level 35
  (475, 47500, 14, 18, NULL, 1, 35, NULL, NULL, NULL, 25),
  -- Gallade - Psycho Cut - Level 42
  (475, 47500, 427, 18, NULL, 1, 42, NULL, NULL, NULL, 26),
  -- Gallade - Heal Pulse - Level 49
  (475, 47500, 505, 18, NULL, 1, 49, NULL, NULL, NULL, 27),
  -- Gallade - Wide Guard - Level 56
  (475, 47500, 469, 18, NULL, 1, 56, NULL, NULL, NULL, 28),
  -- Gallade - Quick Guard - Level 56
  (475, 47500, 501, 18, NULL, 1, 56, NULL, NULL, NULL, 29),
  -- Gallade - Close Combat - Level 63
  (475, 47500, 370, 18, NULL, 1, 63, NULL, NULL, NULL, 30),
  -- Gallade - Slash - Evolution
  (475, 47500, 163, 18, NULL, 7, NULL, NULL, NULL, NULL, 31),
  -- Gallade - Mega Punch - TM00
  (475, 47500, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 32),
  -- Gallade - Mega Kick - TM01
  (475, 47500, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 33),
  -- Gallade - Fire Punch - TM03
  (475, 47500, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 34),
  -- Gallade - Ice Punch - TM04
  (475, 47500, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 35),
  -- Gallade - Thunder Punch - TM05
  (475, 47500, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 36),
  -- Gallade - Hyper Beam - TM08
  (475, 47500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 37),
  -- Gallade - Giga Impact - TM09
  (475, 47500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 38),
  -- Gallade - Magical Leaf - TM10
  (475, 47500, 345, 18, NULL, 2, NULL, NULL, 18002010, NULL, 39),
  -- Gallade - Solar Blade - TM12
  (475, 47500, 669, 18, NULL, 2, NULL, NULL, 18002012, NULL, 40),
  -- Gallade - Thunder Wave - TM14
  (475, 47500, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 41),
  -- Gallade - Light Screen - TM17
  (475, 47500, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 42),
  -- Gallade - Reflect - TM18
  (475, 47500, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 43),
  -- Gallade - Safeguard - TM19
  (475, 47500, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 44),
  -- Gallade - Rest - TM21
  (475, 47500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 45),
  -- Gallade - Rock Slide - TM22
  (475, 47500, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 46),
  -- Gallade - Thief - TM23
  (475, 47500, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 47),
  -- Gallade - Snore - TM24
  (475, 47500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 48),
  -- Gallade - Protect - TM25
  (475, 47500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 49),
  -- Gallade - Icy Wind - TM27
  (475, 47500, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 50),
  -- Gallade - Charm - TM29
  (475, 47500, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 51),
  -- Gallade - Attract - TM31
  (475, 47500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 52),
  -- Gallade - Rain Dance - TM33
  (475, 47500, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 53),
  -- Gallade - Sunny Day - TM34
  (475, 47500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 54),
  -- Gallade - Will-O-Wisp - TM38
  (475, 47500, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 55),
  -- Gallade - Facade - TM39
  (475, 47500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 56),
  -- Gallade - Swift - TM40
  (475, 47500, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 57),
  -- Gallade - Helping Hand - TM41
  (475, 47500, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 58),
  -- Gallade - Revenge - TM42
  (475, 47500, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 59),
  -- Gallade - Brick Break - TM43
  (475, 47500, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 60),
  -- Gallade - Imprison - TM44
  (475, 47500, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 61),
  -- Gallade - Rock Tomb - TM48
  (475, 47500, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 62),
  -- Gallade - Fling - TM59
  (475, 47500, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 63),
  -- Gallade - Drain Punch - TM63
  (475, 47500, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 64),
  -- Gallade - Psycho Cut - TM69
  (475, 47500, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 65),
  -- Gallade - Trick Room - TM70
  (475, 47500, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 66),
  -- Gallade - Wonder Room - TM71
  (475, 47500, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 67),
  -- Gallade - Magic Room - TM72
  (475, 47500, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 68),
  -- Gallade - Low Sweep - TM75
  (475, 47500, 490, 18, NULL, 2, NULL, NULL, 18002075, NULL, 69),
  -- Gallade - Round - TM76
  (475, 47500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 70),
  -- Gallade - Retaliate - TM79
  (475, 47500, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 71),
  -- Gallade - Bulldoze - TM81
  (475, 47500, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 72),
  -- Gallade - Draining Kiss - TM87
  (475, 47500, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 73),
  -- Gallade - Misty Terrain - TM89
  (475, 47500, 581, 18, NULL, 2, NULL, NULL, 18002089, NULL, 74),
  -- Gallade - False Swipe - TM94
  (475, 47500, 206, 18, NULL, 2, NULL, NULL, 18002094, NULL, 75),
  -- Gallade - Air Slash - TM95
  (475, 47500, 403, 18, NULL, 2, NULL, NULL, 18002095, NULL, 76),
  -- Gallade - Swords Dance - TR00
  (475, 47500, 14, 18, NULL, 4, NULL, NULL, 18004000, NULL, 77),
  -- Gallade - Body Slam - TR01
  (475, 47500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 78),
  -- Gallade - Low Kick - TR07
  (475, 47500, 67, 18, NULL, 4, NULL, NULL, 18004007, NULL, 79),
  -- Gallade - Thunderbolt - TR08
  (475, 47500, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 80),
  -- Gallade - Earthquake - TR10
  (475, 47500, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 81),
  -- Gallade - Psychic - TR11
  (475, 47500, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 82),
  -- Gallade - Substitute - TR20
  (475, 47500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 83),
  -- Gallade - Reversal - TR21
  (475, 47500, 179, 18, NULL, 4, NULL, NULL, 18004021, NULL, 84),
  -- Gallade - Psyshock - TR25
  (475, 47500, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 85),
  -- Gallade - Endure - TR26
  (475, 47500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 86),
  -- Gallade - Sleep Talk - TR27
  (475, 47500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 87),
  -- Gallade - Encore - TR30
  (475, 47500, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 88),
  -- Gallade - Shadow Ball - TR33
  (475, 47500, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 89),
  -- Gallade - Future Sight - TR34
  (475, 47500, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 90),
  -- Gallade - Taunt - TR37
  (475, 47500, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 91),
  -- Gallade - Trick - TR38
  (475, 47500, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 92),
  -- Gallade - Skill Swap - TR40
  (475, 47500, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 93),
  -- Gallade - Hyper Voice - TR42
  (475, 47500, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 94),
  -- Gallade - Bulk Up - TR48
  (475, 47500, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 95),
  -- Gallade - Calm Mind - TR49
  (475, 47500, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 96),
  -- Gallade - Leaf Blade - TR50
  (475, 47500, 348, 18, NULL, 4, NULL, NULL, 18004050, NULL, 97),
  -- Gallade - Close Combat - TR53
  (475, 47500, 370, 18, NULL, 4, NULL, NULL, 18004053, NULL, 98),
  -- Gallade - Aura Sphere - TR56
  (475, 47500, 396, 18, NULL, 4, NULL, NULL, 18004056, NULL, 99),
  -- Gallade - Poison Jab - TR57
  (475, 47500, 398, 18, NULL, 4, NULL, NULL, 18004057, NULL, 100),
  -- Gallade - X-Scissor - TR60
  (475, 47500, 404, 18, NULL, 4, NULL, NULL, 18004060, NULL, 101),
  -- Gallade - Focus Blast - TR64
  (475, 47500, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 102),
  -- Gallade - Energy Ball - TR65
  (475, 47500, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 103),
  -- Gallade - Zen Headbutt - TR69
  (475, 47500, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 104),
  -- Gallade - Stone Edge - TR75
  (475, 47500, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 105),
  -- Gallade - Grass Knot - TR77
  (475, 47500, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 106),
  -- Gallade - Stored Power - TR82
  (475, 47500, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 107),
  -- Gallade - Ally Switch - TR83
  (475, 47500, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 108),
  -- Gallade - Work Up - TR85
  (475, 47500, 526, 18, NULL, 4, NULL, NULL, 18004085, NULL, 109),
  -- Gallade - Dazzling Gleam - TR92
  (475, 47500, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 110),
  -- Gallade - Throat Chop - TR95
  (475, 47500, 675, 18, NULL, 4, NULL, NULL, 18004095, NULL, 111),
  -- Dusknoir - Fire Punch - Level 1
  (477, 47700, 7, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dusknoir - Ice Punch - Level 1
  (477, 47700, 8, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dusknoir - Thunder Punch - Level 1
  (477, 47700, 9, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Dusknoir - Bind - Level 1
  (477, 47700, 20, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Dusknoir - Leer - Level 1
  (477, 47700, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Dusknoir - Disable - Level 1
  (477, 47700, 50, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Dusknoir - Astonish - Level 1
  (477, 47700, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Dusknoir - Shadow Punch - Level 1
  (477, 47700, 325, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Dusknoir - Gravity - Level 1
  (477, 47700, 356, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Dusknoir - Shadow Sneak - Level 1
  (477, 47700, 425, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Dusknoir - Confuse Ray - Level 12
  (477, 47700, 109, 18, NULL, 1, 12, NULL, NULL, NULL, 11),
  -- Dusknoir - Night Shade - Level 16
  (477, 47700, 101, 18, NULL, 1, 16, NULL, NULL, NULL, 12),
  -- Dusknoir - Payback - Level 20
  (477, 47700, 371, 18, NULL, 1, 20, NULL, NULL, NULL, 13),
  -- Dusknoir - Will-O-Wisp - Level 24
  (477, 47700, 261, 18, NULL, 1, 24, NULL, NULL, NULL, 14),
  -- Dusknoir - Mean Look - Level 28
  (477, 47700, 212, 18, NULL, 1, 28, NULL, NULL, NULL, 15),
  -- Dusknoir - Hex - Level 32
  (477, 47700, 506, 18, NULL, 1, 32, NULL, NULL, NULL, 16),
  -- Dusknoir - Curse - Level 36
  (477, 47700, 174, 18, NULL, 1, 36, NULL, NULL, NULL, 17),
  -- Dusknoir - Shadow Ball - Level 42
  (477, 47700, 247, 18, NULL, 1, 42, NULL, NULL, NULL, 18),
  -- Dusknoir - Future Sight - Level 48
  (477, 47700, 248, 18, NULL, 1, 48, NULL, NULL, NULL, 19),
  -- Dusknoir - Destiny Bond - Level 54
  (477, 47700, 194, 18, NULL, 1, 54, NULL, NULL, NULL, 20),
  -- Dusknoir - Mega Punch - TM00
  (477, 47700, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 21),
  -- Dusknoir - Mega Kick - TM01
  (477, 47700, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 22),
  -- Dusknoir - Fire Punch - TM03
  (477, 47700, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 23),
  -- Dusknoir - Ice Punch - TM04
  (477, 47700, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 24),
  -- Dusknoir - Thunder Punch - TM05
  (477, 47700, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 25),
  -- Dusknoir - Hyper Beam - TM08
  (477, 47700, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 26),
  -- Dusknoir - Giga Impact - TM09
  (477, 47700, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 27),
  -- Dusknoir - Rest - TM21
  (477, 47700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 28),
  -- Dusknoir - Rock Slide - TM22
  (477, 47700, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 29),
  -- Dusknoir - Thief - TM23
  (477, 47700, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 30),
  -- Dusknoir - Snore - TM24
  (477, 47700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 31),
  -- Dusknoir - Protect - TM25
  (477, 47700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 32),
  -- Dusknoir - Icy Wind - TM27
  (477, 47700, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 33),
  -- Dusknoir - Attract - TM31
  (477, 47700, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 34),
  -- Dusknoir - Rain Dance - TM33
  (477, 47700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 35),
  -- Dusknoir - Sunny Day - TM34
  (477, 47700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 36),
  -- Dusknoir - Will-O-Wisp - TM38
  (477, 47700, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 37),
  -- Dusknoir - Facade - TM39
  (477, 47700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 38),
  -- Dusknoir - Helping Hand - TM41
  (477, 47700, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 39),
  -- Dusknoir - Revenge - TM42
  (477, 47700, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 40),
  -- Dusknoir - Brick Break - TM43
  (477, 47700, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 41),
  -- Dusknoir - Imprison - TM44
  (477, 47700, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 42),
  -- Dusknoir - Rock Tomb - TM48
  (477, 47700, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 43),
  -- Dusknoir - Payback - TM57
  (477, 47700, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 44),
  -- Dusknoir - Fling - TM59
  (477, 47700, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 45),
  -- Dusknoir - Trick Room - TM70
  (477, 47700, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 46),
  -- Dusknoir - Wonder Room - TM71
  (477, 47700, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 47),
  -- Dusknoir - Round - TM76
  (477, 47700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 48),
  -- Dusknoir - Hex - TM77
  (477, 47700, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 49),
  -- Dusknoir - Bulldoze - TM81
  (477, 47700, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 50),
  -- Dusknoir - Body Slam - TR01
  (477, 47700, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 51),
  -- Dusknoir - Ice Beam - TR05
  (477, 47700, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 52),
  -- Dusknoir - Blizzard - TR06
  (477, 47700, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 53),
  -- Dusknoir - Earthquake - TR10
  (477, 47700, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 54),
  -- Dusknoir - Psychic - TR11
  (477, 47700, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 55),
  -- Dusknoir - Metronome - TR14
  (477, 47700, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 56),
  -- Dusknoir - Substitute - TR20
  (477, 47700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 57),
  -- Dusknoir - Endure - TR26
  (477, 47700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 58),
  -- Dusknoir - Sleep Talk - TR27
  (477, 47700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 59),
  -- Dusknoir - Shadow Ball - TR33
  (477, 47700, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 60),
  -- Dusknoir - Future Sight - TR34
  (477, 47700, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 61),
  -- Dusknoir - Taunt - TR37
  (477, 47700, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 62),
  -- Dusknoir - Trick - TR38
  (477, 47700, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 63),
  -- Dusknoir - Skill Swap - TR40
  (477, 47700, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 64),
  -- Dusknoir - Calm Mind - TR49
  (477, 47700, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 65),
  -- Dusknoir - Dark Pulse - TR58
  (477, 47700, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 66),
  -- Dusknoir - Focus Blast - TR64
  (477, 47700, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 67),
  -- Dusknoir - Ally Switch - TR83
  (477, 47700, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 68),
  -- Dusknoir - Darkest Lariat - TR93
  (477, 47700, 663, 18, NULL, 4, NULL, NULL, 18004093, NULL, 69),
  -- Froslass - Headbutt - Level 1
  (478, 47800, 29, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Froslass - Leer - Level 1
  (478, 47800, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Froslass - Bite - Level 1
  (478, 47800, 44, 18, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Froslass - Double Team - Level 1
  (478, 47800, 104, 18, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Froslass - Powder Snow - Level 1
  (478, 47800, 181, 18, NULL, 1, 1, NULL, NULL, NULL, 5),
  -- Froslass - Protect - Level 1
  (478, 47800, 182, 18, NULL, 1, 1, NULL, NULL, NULL, 6),
  -- Froslass - Destiny Bond - Level 1
  (478, 47800, 194, 18, NULL, 1, 1, NULL, NULL, NULL, 7),
  -- Froslass - Crunch - Level 1
  (478, 47800, 242, 18, NULL, 1, 1, NULL, NULL, NULL, 8),
  -- Froslass - Astonish - Level 1
  (478, 47800, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 9),
  -- Froslass - Ice Fang - Level 1
  (478, 47800, 423, 18, NULL, 1, 1, NULL, NULL, NULL, 10),
  -- Froslass - Hex - Level 1
  (478, 47800, 506, 18, NULL, 1, 1, NULL, NULL, NULL, 11),
  -- Froslass - Ice Shard - Level 15
  (478, 47800, 420, 18, NULL, 1, 15, NULL, NULL, NULL, 12),
  -- Froslass - Draining Kiss - Level 20
  (478, 47800, 577, 18, NULL, 1, 20, NULL, NULL, NULL, 13),
  -- Froslass - Icy Wind - Level 25
  (478, 47800, 196, 18, NULL, 1, 25, NULL, NULL, NULL, 14),
  -- Froslass - Frost Breath - Level 30
  (478, 47800, 524, 18, NULL, 1, 30, NULL, NULL, NULL, 15),
  -- Froslass - Confuse Ray - Level 35
  (478, 47800, 109, 18, NULL, 1, 35, NULL, NULL, NULL, 16),
  -- Froslass - Hail - Level 40
  (478, 47800, 258, 18, NULL, 1, 40, NULL, NULL, NULL, 17),
  -- Froslass - Will-O-Wisp - Level 47
  (478, 47800, 261, 18, NULL, 1, 47, NULL, NULL, NULL, 18),
  -- Froslass - Aurora Veil - Level 54
  (478, 47800, 694, 18, NULL, 1, 54, NULL, NULL, NULL, 19),
  -- Froslass - Shadow Ball - Level 61
  (478, 47800, 247, 18, NULL, 1, 61, NULL, NULL, NULL, 20),
  -- Froslass - Blizzard - Level 68
  (478, 47800, 59, 18, NULL, 1, 68, NULL, NULL, NULL, 21),
  -- Froslass - Hex - Evolution
  (478, 47800, 506, 18, NULL, 7, NULL, NULL, NULL, NULL, 22),
  -- Froslass - Ice Punch - TM04
  (478, 47800, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 23),
  -- Froslass - Hyper Beam - TM08
  (478, 47800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 24),
  -- Froslass - Giga Impact - TM09
  (478, 47800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 25),
  -- Froslass - Thunder Wave - TM14
  (478, 47800, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 26),
  -- Froslass - Light Screen - TM17
  (478, 47800, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 27),
  -- Froslass - Reflect - TM18
  (478, 47800, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 28),
  -- Froslass - Safeguard - TM19
  (478, 47800, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 29),
  -- Froslass - Rest - TM21
  (478, 47800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 30),
  -- Froslass - Snore - TM24
  (478, 47800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 31),
  -- Froslass - Protect - TM25
  (478, 47800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 32),
  -- Froslass - Icy Wind - TM27
  (478, 47800, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 33),
  -- Froslass - Charm - TM29
  (478, 47800, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 34),
  -- Froslass - Attract - TM31
  (478, 47800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 35),
  -- Froslass - Rain Dance - TM33
  (478, 47800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 36),
  -- Froslass - Hail - TM35
  (478, 47800, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 37),
  -- Froslass - Will-O-Wisp - TM38
  (478, 47800, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 38),
  -- Froslass - Facade - TM39
  (478, 47800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 39),
  -- Froslass - Imprison - TM44
  (478, 47800, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 40),
  -- Froslass - Weather Ball - TM46
  (478, 47800, 311, 18, NULL, 2, NULL, NULL, 18002046, NULL, 41),
  -- Froslass - Fake Tears - TM47
  (478, 47800, 313, 18, NULL, 2, NULL, NULL, 18002047, NULL, 42),
  -- Froslass - Icicle Spear - TM51
  (478, 47800, 333, 18, NULL, 2, NULL, NULL, 18002051, NULL, 43),
  -- Froslass - Payback - TM57
  (478, 47800, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 44),
  -- Froslass - Fling - TM59
  (478, 47800, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 45),
  -- Froslass - Avalanche - TM64
  (478, 47800, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 46),
  -- Froslass - Ice Fang - TM67
  (478, 47800, 423, 18, NULL, 2, NULL, NULL, 18002067, NULL, 47),
  -- Froslass - Round - TM76
  (478, 47800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 48),
  -- Froslass - Hex - TM77
  (478, 47800, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 49),
  -- Froslass - Draining Kiss - TM87
  (478, 47800, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 50),
  -- Froslass - Body Slam - TR01
  (478, 47800, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 51),
  -- Froslass - Ice Beam - TR05
  (478, 47800, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 52),
  -- Froslass - Blizzard - TR06
  (478, 47800, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 53),
  -- Froslass - Thunderbolt - TR08
  (478, 47800, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 54),
  -- Froslass - Thunder - TR09
  (478, 47800, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 55),
  -- Froslass - Psychic - TR11
  (478, 47800, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 56),
  -- Froslass - Substitute - TR20
  (478, 47800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 57),
  -- Froslass - Spikes - TR23
  (478, 47800, 191, 18, NULL, 4, NULL, NULL, 18004023, NULL, 58),
  -- Froslass - Endure - TR26
  (478, 47800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 59),
  -- Froslass - Sleep Talk - TR27
  (478, 47800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 60),
  -- Froslass - Crunch - TR32
  (478, 47800, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 61),
  -- Froslass - Shadow Ball - TR33
  (478, 47800, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 62),
  -- Froslass - Taunt - TR37
  (478, 47800, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 63),
  -- Froslass - Trick - TR38
  (478, 47800, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 64),
  -- Froslass - Ally Switch - TR83
  (478, 47800, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 65),
  -- Rotom - Double Team - Level 1
  (479, 47900, 104, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rotom - Astonish - Level 1
  (479, 47900, 310, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rotom - Thunder Shock - Level 5
  (479, 47900, 84, 18, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Rotom - Confuse Ray - Level 10
  (479, 47900, 109, 18, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Rotom - Charge - Level 15
  (479, 47900, 268, 18, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Rotom - Electro Ball - Level 20
  (479, 47900, 486, 18, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Rotom - Thunder Wave - Level 25
  (479, 47900, 86, 18, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Rotom - Shock Wave - Level 30
  (479, 47900, 351, 18, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Rotom - Hex - Level 35
  (479, 47900, 506, 18, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Rotom - Substitute - Level 40
  (479, 47900, 164, 18, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Rotom - Trick - Level 45
  (479, 47900, 271, 18, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Rotom - Discharge - Level 50
  (479, 47900, 435, 18, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Rotom - Uproar - Level 55
  (479, 47900, 253, 18, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Rotom - Thunder Wave - TM14
  (479, 47900, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 14),
  -- Rotom - Light Screen - TM17
  (479, 47900, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 15),
  -- Rotom - Reflect - TM18
  (479, 47900, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 16),
  -- Rotom - Rest - TM21
  (479, 47900, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 17),
  -- Rotom - Thief - TM23
  (479, 47900, 168, 18, NULL, 2, NULL, NULL, 18002023, NULL, 18),
  -- Rotom - Snore - TM24
  (479, 47900, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 19),
  -- Rotom - Protect - TM25
  (479, 47900, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 20),
  -- Rotom - Rain Dance - TM33
  (479, 47900, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 21),
  -- Rotom - Sunny Day - TM34
  (479, 47900, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 22),
  -- Rotom - Will-O-Wisp - TM38
  (479, 47900, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 23),
  -- Rotom - Facade - TM39
  (479, 47900, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 24),
  -- Rotom - Swift - TM40
  (479, 47900, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 25),
  -- Rotom - Helping Hand - TM41
  (479, 47900, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 26),
  -- Rotom - Round - TM76
  (479, 47900, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 27),
  -- Rotom - Hex - TM77
  (479, 47900, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 28),
  -- Rotom - Volt Switch - TM80
  (479, 47900, 521, 18, NULL, 2, NULL, NULL, 18002080, NULL, 29),
  -- Rotom - Electroweb - TM82
  (479, 47900, 527, 18, NULL, 2, NULL, NULL, 18002082, NULL, 30),
  -- Rotom - Electric Terrain - TM90
  (479, 47900, 604, 18, NULL, 2, NULL, NULL, 18002090, NULL, 31),
  -- Rotom - Eerie Impulse - TM93
  (479, 47900, 598, 18, NULL, 2, NULL, NULL, 18002093, NULL, 32),
  -- Rotom - Thunderbolt - TR08
  (479, 47900, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 33),
  -- Rotom - Thunder - TR09
  (479, 47900, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 34),
  -- Rotom - Substitute - TR20
  (479, 47900, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 35),
  -- Rotom - Endure - TR26
  (479, 47900, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 36),
  -- Rotom - Sleep Talk - TR27
  (479, 47900, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 37),
  -- Rotom - Shadow Ball - TR33
  (479, 47900, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 38),
  -- Rotom - Uproar - TR35
  (479, 47900, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 39),
  -- Rotom - Trick - TR38
  (479, 47900, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 40),
  -- Rotom - Hyper Voice - TR42
  (479, 47900, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 41),
  -- Rotom - Dark Pulse - TR58
  (479, 47900, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 42),
  -- Rotom - Nasty Plot - TR68
  (479, 47900, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 43),
  -- Rotom - Electro Ball - TR80
  (479, 47900, 486, 18, NULL, 4, NULL, NULL, 18004080, NULL, 44),
  -- Rotom - Foul Play - TR81
  (479, 47900, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 45),
  -- Rotom - Stored Power - TR82
  (479, 47900, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 46),
  -- Rotom - Ally Switch - TR83
  (479, 47900, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 47),
  -- Uxie - Confusion - Level 1
  (480, 48000, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Uxie - Rest - Level 1
  (480, 48000, 156, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Uxie - Swift - Level 7
  (480, 48000, 129, 18, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Uxie - Endure - Level 14
  (480, 48000, 203, 18, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Uxie - Psybeam - Level 21
  (480, 48000, 60, 18, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Uxie - Imprison - Level 28
  (480, 48000, 286, 18, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Uxie - Extrasensory - Level 35
  (480, 48000, 326, 18, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Uxie - Amnesia - Level 42
  (480, 48000, 133, 18, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Uxie - Psychic - Level 49
  (480, 48000, 94, 18, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Uxie - Yawn - Level 56
  (480, 48000, 281, 18, NULL, 1, 56, NULL, NULL, NULL, 10),
  -- Uxie - Future Sight - Level 63
  (480, 48000, 248, 18, NULL, 1, 63, NULL, NULL, NULL, 11),
  -- Uxie - Flail - Level 70
  (480, 48000, 175, 18, NULL, 1, 70, NULL, NULL, NULL, 12),
  -- Uxie - Memento - Level 77
  (480, 48000, 262, 18, NULL, 1, 77, NULL, NULL, NULL, 13),
  -- Uxie - Fire Punch - TM03
  (480, 48000, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 14),
  -- Uxie - Ice Punch - TM04
  (480, 48000, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 15),
  -- Uxie - Thunder Punch - TM05
  (480, 48000, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 16),
  -- Uxie - Hyper Beam - TM08
  (480, 48000, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Uxie - Giga Impact - TM09
  (480, 48000, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Uxie - Solar Beam - TM11
  (480, 48000, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 19),
  -- Uxie - Thunder Wave - TM14
  (480, 48000, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 20),
  -- Uxie - Light Screen - TM17
  (480, 48000, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 21),
  -- Uxie - Reflect - TM18
  (480, 48000, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 22),
  -- Uxie - Safeguard - TM19
  (480, 48000, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 23),
  -- Uxie - Rest - TM21
  (480, 48000, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Uxie - Snore - TM24
  (480, 48000, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Uxie - Protect - TM25
  (480, 48000, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Uxie - Giga Drain - TM28
  (480, 48000, 202, 18, NULL, 2, NULL, NULL, 18002028, NULL, 27),
  -- Uxie - Sandstorm - TM32
  (480, 48000, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 28),
  -- Uxie - Rain Dance - TM33
  (480, 48000, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 29),
  -- Uxie - Sunny Day - TM34
  (480, 48000, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 30),
  -- Uxie - Facade - TM39
  (480, 48000, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 31),
  -- Uxie - Swift - TM40
  (480, 48000, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 32),
  -- Uxie - Helping Hand - TM41
  (480, 48000, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 33),
  -- Uxie - Imprison - TM44
  (480, 48000, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 34),
  -- Uxie - U-turn - TM56
  (480, 48000, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 35),
  -- Uxie - Fling - TM59
  (480, 48000, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 36),
  -- Uxie - Drain Punch - TM63
  (480, 48000, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 37),
  -- Uxie - Psycho Cut - TM69
  (480, 48000, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 38),
  -- Uxie - Trick Room - TM70
  (480, 48000, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 39),
  -- Uxie - Wonder Room - TM71
  (480, 48000, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 40),
  -- Uxie - Magic Room - TM72
  (480, 48000, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 41),
  -- Uxie - Round - TM76
  (480, 48000, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 42),
  -- Uxie - Acrobatics - TM78
  (480, 48000, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 43),
  -- Uxie - Draining Kiss - TM87
  (480, 48000, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 44),
  -- Uxie - Thunderbolt - TR08
  (480, 48000, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 45),
  -- Uxie - Thunder - TR09
  (480, 48000, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 46),
  -- Uxie - Psychic - TR11
  (480, 48000, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 47),
  -- Uxie - Metronome - TR14
  (480, 48000, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 48),
  -- Uxie - Amnesia - TR17
  (480, 48000, 133, 18, NULL, 4, NULL, NULL, 18004017, NULL, 49),
  -- Uxie - Tri Attack - TR19
  (480, 48000, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 50),
  -- Uxie - Substitute - TR20
  (480, 48000, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 51),
  -- Uxie - Psyshock - TR25
  (480, 48000, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 52),
  -- Uxie - Endure - TR26
  (480, 48000, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 53),
  -- Uxie - Sleep Talk - TR27
  (480, 48000, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 54),
  -- Uxie - Baton Pass - TR29
  (480, 48000, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 55),
  -- Uxie - Encore - TR30
  (480, 48000, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 56),
  -- Uxie - Iron Tail - TR31
  (480, 48000, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 57),
  -- Uxie - Shadow Ball - TR33
  (480, 48000, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 58),
  -- Uxie - Future Sight - TR34
  (480, 48000, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 59),
  -- Uxie - Trick - TR38
  (480, 48000, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 60),
  -- Uxie - Skill Swap - TR40
  (480, 48000, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 61),
  -- Uxie - Calm Mind - TR49
  (480, 48000, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 62),
  -- Uxie - Energy Ball - TR65
  (480, 48000, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 63),
  -- Uxie - Nasty Plot - TR68
  (480, 48000, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 64),
  -- Uxie - Zen Headbutt - TR69
  (480, 48000, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 65),
  -- Uxie - Stealth Rock - TR76
  (480, 48000, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 66),
  -- Uxie - Grass Knot - TR77
  (480, 48000, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 67),
  -- Uxie - Foul Play - TR81
  (480, 48000, 492, 18, NULL, 4, NULL, NULL, 18004081, NULL, 68),
  -- Uxie - Stored Power - TR82
  (480, 48000, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 69),
  -- Uxie - Ally Switch - TR83
  (480, 48000, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 70),
  -- Uxie - Play Rough - TR90
  (480, 48000, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 71),
  -- Uxie - Dazzling Gleam - TR92
  (480, 48000, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 72),
  -- Mesprit - Confusion - Level 1
  (481, 48100, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mesprit - Rest - Level 1
  (481, 48100, 156, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mesprit - Swift - Level 7
  (481, 48100, 129, 18, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Mesprit - Protect - Level 14
  (481, 48100, 182, 18, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Mesprit - Psybeam - Level 21
  (481, 48100, 60, 18, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Mesprit - Imprison - Level 28
  (481, 48100, 286, 18, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Mesprit - Extrasensory - Level 35
  (481, 48100, 326, 18, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Mesprit - Charm - Level 42
  (481, 48100, 204, 18, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Mesprit - Psychic - Level 49
  (481, 48100, 94, 18, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Mesprit - Flatter - Level 56
  (481, 48100, 260, 18, NULL, 1, 56, NULL, NULL, NULL, 10),
  -- Mesprit - Future Sight - Level 63
  (481, 48100, 248, 18, NULL, 1, 63, NULL, NULL, NULL, 11),
  -- Mesprit - Copycat - Level 70
  (481, 48100, 383, 18, NULL, 1, 70, NULL, NULL, NULL, 12),
  -- Mesprit - Healing Wish - Level 77
  (481, 48100, 361, 18, NULL, 1, 77, NULL, NULL, NULL, 13),
  -- Mesprit - Fire Punch - TM03
  (481, 48100, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 14),
  -- Mesprit - Ice Punch - TM04
  (481, 48100, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 15),
  -- Mesprit - Thunder Punch - TM05
  (481, 48100, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 16),
  -- Mesprit - Hyper Beam - TM08
  (481, 48100, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Mesprit - Giga Impact - TM09
  (481, 48100, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Mesprit - Thunder Wave - TM14
  (481, 48100, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 19),
  -- Mesprit - Light Screen - TM17
  (481, 48100, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 20),
  -- Mesprit - Reflect - TM18
  (481, 48100, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 21),
  -- Mesprit - Safeguard - TM19
  (481, 48100, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 22),
  -- Mesprit - Rest - TM21
  (481, 48100, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 23),
  -- Mesprit - Snore - TM24
  (481, 48100, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 24),
  -- Mesprit - Protect - TM25
  (481, 48100, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 25),
  -- Mesprit - Charm - TM29
  (481, 48100, 204, 18, NULL, 2, NULL, NULL, 18002029, NULL, 26),
  -- Mesprit - Sandstorm - TM32
  (481, 48100, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 27),
  -- Mesprit - Rain Dance - TM33
  (481, 48100, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Mesprit - Sunny Day - TM34
  (481, 48100, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Mesprit - Facade - TM39
  (481, 48100, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Mesprit - Swift - TM40
  (481, 48100, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 31),
  -- Mesprit - Helping Hand - TM41
  (481, 48100, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 32),
  -- Mesprit - Imprison - TM44
  (481, 48100, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 33),
  -- Mesprit - U-turn - TM56
  (481, 48100, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 34),
  -- Mesprit - Fling - TM59
  (481, 48100, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 35),
  -- Mesprit - Drain Punch - TM63
  (481, 48100, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 36),
  -- Mesprit - Psycho Cut - TM69
  (481, 48100, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 37),
  -- Mesprit - Trick Room - TM70
  (481, 48100, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 38),
  -- Mesprit - Wonder Room - TM71
  (481, 48100, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 39),
  -- Mesprit - Magic Room - TM72
  (481, 48100, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 40),
  -- Mesprit - Round - TM76
  (481, 48100, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 41),
  -- Mesprit - Acrobatics - TM78
  (481, 48100, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 42),
  -- Mesprit - Draining Kiss - TM87
  (481, 48100, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 43),
  -- Mesprit - Ice Beam - TR05
  (481, 48100, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 44),
  -- Mesprit - Blizzard - TR06
  (481, 48100, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 45),
  -- Mesprit - Thunderbolt - TR08
  (481, 48100, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 46),
  -- Mesprit - Thunder - TR09
  (481, 48100, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 47),
  -- Mesprit - Psychic - TR11
  (481, 48100, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 48),
  -- Mesprit - Metronome - TR14
  (481, 48100, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 49),
  -- Mesprit - Tri Attack - TR19
  (481, 48100, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 50),
  -- Mesprit - Substitute - TR20
  (481, 48100, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 51),
  -- Mesprit - Psyshock - TR25
  (481, 48100, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 52),
  -- Mesprit - Endure - TR26
  (481, 48100, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 53),
  -- Mesprit - Sleep Talk - TR27
  (481, 48100, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 54),
  -- Mesprit - Baton Pass - TR29
  (481, 48100, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 55),
  -- Mesprit - Encore - TR30
  (481, 48100, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 56),
  -- Mesprit - Iron Tail - TR31
  (481, 48100, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 57),
  -- Mesprit - Shadow Ball - TR33
  (481, 48100, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 58),
  -- Mesprit - Future Sight - TR34
  (481, 48100, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 59),
  -- Mesprit - Trick - TR38
  (481, 48100, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 60),
  -- Mesprit - Skill Swap - TR40
  (481, 48100, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 61),
  -- Mesprit - Calm Mind - TR49
  (481, 48100, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 62),
  -- Mesprit - Energy Ball - TR65
  (481, 48100, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 63),
  -- Mesprit - Nasty Plot - TR68
  (481, 48100, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 64),
  -- Mesprit - Zen Headbutt - TR69
  (481, 48100, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 65),
  -- Mesprit - Stealth Rock - TR76
  (481, 48100, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 66),
  -- Mesprit - Grass Knot - TR77
  (481, 48100, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 67),
  -- Mesprit - Stored Power - TR82
  (481, 48100, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 68),
  -- Mesprit - Ally Switch - TR83
  (481, 48100, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 69),
  -- Mesprit - Play Rough - TR90
  (481, 48100, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 70),
  -- Mesprit - Dazzling Gleam - TR92
  (481, 48100, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 71),
  -- Azelf - Confusion - Level 1
  (482, 48200, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Azelf - Rest - Level 1
  (482, 48200, 156, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Azelf - Swift - Level 7
  (482, 48200, 129, 18, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Azelf - Detect - Level 14
  (482, 48200, 197, 18, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Azelf - Psybeam - Level 21
  (482, 48200, 60, 18, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Azelf - Imprison - Level 28
  (482, 48200, 286, 18, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Azelf - Extrasensory - Level 35
  (482, 48200, 326, 18, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Azelf - Nasty Plot - Level 42
  (482, 48200, 417, 18, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Azelf - Psychic - Level 49
  (482, 48200, 94, 18, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Azelf - Uproar - Level 56
  (482, 48200, 253, 18, NULL, 1, 56, NULL, NULL, NULL, 10),
  -- Azelf - Future Sight - Level 63
  (482, 48200, 248, 18, NULL, 1, 63, NULL, NULL, NULL, 11),
  -- Azelf - Last Resort - Level 70
  (482, 48200, 387, 18, NULL, 1, 70, NULL, NULL, NULL, 12),
  -- Azelf - Explosion - Level 77
  (482, 48200, 153, 18, NULL, 1, 77, NULL, NULL, NULL, 13),
  -- Azelf - Fire Punch - TM03
  (482, 48200, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 14),
  -- Azelf - Ice Punch - TM04
  (482, 48200, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 15),
  -- Azelf - Thunder Punch - TM05
  (482, 48200, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 16),
  -- Azelf - Hyper Beam - TM08
  (482, 48200, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 17),
  -- Azelf - Giga Impact - TM09
  (482, 48200, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 18),
  -- Azelf - Thunder Wave - TM14
  (482, 48200, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 19),
  -- Azelf - Light Screen - TM17
  (482, 48200, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 20),
  -- Azelf - Reflect - TM18
  (482, 48200, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 21),
  -- Azelf - Safeguard - TM19
  (482, 48200, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 22),
  -- Azelf - Self-Destruct - TM20
  (482, 48200, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 23),
  -- Azelf - Rest - TM21
  (482, 48200, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 24),
  -- Azelf - Snore - TM24
  (482, 48200, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 25),
  -- Azelf - Protect - TM25
  (482, 48200, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 26),
  -- Azelf - Sandstorm - TM32
  (482, 48200, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 27),
  -- Azelf - Rain Dance - TM33
  (482, 48200, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 28),
  -- Azelf - Sunny Day - TM34
  (482, 48200, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 29),
  -- Azelf - Facade - TM39
  (482, 48200, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 30),
  -- Azelf - Swift - TM40
  (482, 48200, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 31),
  -- Azelf - Helping Hand - TM41
  (482, 48200, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 32),
  -- Azelf - Imprison - TM44
  (482, 48200, 286, 18, NULL, 2, NULL, NULL, 18002044, NULL, 33),
  -- Azelf - U-turn - TM56
  (482, 48200, 369, 18, NULL, 2, NULL, NULL, 18002056, NULL, 34),
  -- Azelf - Payback - TM57
  (482, 48200, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 35),
  -- Azelf - Assurance - TM58
  (482, 48200, 372, 18, NULL, 2, NULL, NULL, 18002058, NULL, 36),
  -- Azelf - Fling - TM59
  (482, 48200, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 37),
  -- Azelf - Drain Punch - TM63
  (482, 48200, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 38),
  -- Azelf - Psycho Cut - TM69
  (482, 48200, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 39),
  -- Azelf - Trick Room - TM70
  (482, 48200, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 40),
  -- Azelf - Wonder Room - TM71
  (482, 48200, 472, 18, NULL, 2, NULL, NULL, 18002071, NULL, 41),
  -- Azelf - Magic Room - TM72
  (482, 48200, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 42),
  -- Azelf - Round - TM76
  (482, 48200, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 43),
  -- Azelf - Acrobatics - TM78
  (482, 48200, 512, 18, NULL, 2, NULL, NULL, 18002078, NULL, 44),
  -- Azelf - Draining Kiss - TM87
  (482, 48200, 577, 18, NULL, 2, NULL, NULL, 18002087, NULL, 45),
  -- Azelf - Flamethrower - TR02
  (482, 48200, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 46),
  -- Azelf - Thunderbolt - TR08
  (482, 48200, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 47),
  -- Azelf - Thunder - TR09
  (482, 48200, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 48),
  -- Azelf - Psychic - TR11
  (482, 48200, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 49),
  -- Azelf - Metronome - TR14
  (482, 48200, 118, 18, NULL, 4, NULL, NULL, 18004014, NULL, 50),
  -- Azelf - Fire Blast - TR15
  (482, 48200, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 51),
  -- Azelf - Tri Attack - TR19
  (482, 48200, 161, 18, NULL, 4, NULL, NULL, 18004019, NULL, 52),
  -- Azelf - Substitute - TR20
  (482, 48200, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 53),
  -- Azelf - Psyshock - TR25
  (482, 48200, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 54),
  -- Azelf - Endure - TR26
  (482, 48200, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 55),
  -- Azelf - Sleep Talk - TR27
  (482, 48200, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 56),
  -- Azelf - Baton Pass - TR29
  (482, 48200, 226, 18, NULL, 4, NULL, NULL, 18004029, NULL, 57),
  -- Azelf - Encore - TR30
  (482, 48200, 227, 18, NULL, 4, NULL, NULL, 18004030, NULL, 58),
  -- Azelf - Iron Tail - TR31
  (482, 48200, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 59),
  -- Azelf - Shadow Ball - TR33
  (482, 48200, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 60),
  -- Azelf - Future Sight - TR34
  (482, 48200, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 61),
  -- Azelf - Uproar - TR35
  (482, 48200, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 62),
  -- Azelf - Taunt - TR37
  (482, 48200, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 63),
  -- Azelf - Trick - TR38
  (482, 48200, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 64),
  -- Azelf - Skill Swap - TR40
  (482, 48200, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 65),
  -- Azelf - Calm Mind - TR49
  (482, 48200, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 66),
  -- Azelf - Energy Ball - TR65
  (482, 48200, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 67),
  -- Azelf - Nasty Plot - TR68
  (482, 48200, 417, 18, NULL, 4, NULL, NULL, 18004068, NULL, 68),
  -- Azelf - Zen Headbutt - TR69
  (482, 48200, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 69),
  -- Azelf - Stealth Rock - TR76
  (482, 48200, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 70),
  -- Azelf - Grass Knot - TR77
  (482, 48200, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 71),
  -- Azelf - Stored Power - TR82
  (482, 48200, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 72),
  -- Azelf - Ally Switch - TR83
  (482, 48200, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 73),
  -- Azelf - Play Rough - TR90
  (482, 48200, 583, 18, NULL, 4, NULL, NULL, 18004090, NULL, 74),
  -- Azelf - Dazzling Gleam - TR92
  (482, 48200, 605, 18, NULL, 4, NULL, NULL, 18004092, NULL, 75),
  -- Dialga - Scary Face - Level 1
  (483, 48300, 184, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dialga - Metal Claw - Level 1
  (483, 48300, 232, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dialga - Dragon Breath - Level 8
  (483, 48300, 225, 18, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Dialga - Ancient Power - Level 16
  (483, 48300, 246, 18, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Dialga - Slash - Level 24
  (483, 48300, 163, 18, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Dialga - Flash Cannon - Level 32
  (483, 48300, 430, 18, NULL, 1, 32, NULL, NULL, NULL, 6),
  -- Dialga - Dragon Claw - Level 40
  (483, 48300, 337, 18, NULL, 1, 40, NULL, NULL, NULL, 7),
  -- Dialga - Aura Sphere - Level 48
  (483, 48300, 396, 18, NULL, 1, 48, NULL, NULL, NULL, 8),
  -- Dialga - Power Gem - Level 56
  (483, 48300, 408, 18, NULL, 1, 56, NULL, NULL, NULL, 9),
  -- Dialga - Metal Burst - Level 64
  (483, 48300, 368, 18, NULL, 1, 64, NULL, NULL, NULL, 10),
  -- Dialga - Earth Power - Level 72
  (483, 48300, 414, 18, NULL, 1, 72, NULL, NULL, NULL, 11),
  -- Dialga - Iron Tail - Level 80
  (483, 48300, 231, 18, NULL, 1, 80, NULL, NULL, NULL, 12),
  -- Dialga - Roar of Time - Level 88
  (483, 48300, 459, 18, NULL, 1, 88, NULL, NULL, NULL, 13),
  -- Dialga - Hyper Beam - TM08
  (483, 48300, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 14),
  -- Dialga - Giga Impact - TM09
  (483, 48300, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 15),
  -- Dialga - Thunder Wave - TM14
  (483, 48300, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 16),
  -- Dialga - Safeguard - TM19
  (483, 48300, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 17),
  -- Dialga - Rest - TM21
  (483, 48300, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Dialga - Rock Slide - TM22
  (483, 48300, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 19),
  -- Dialga - Snore - TM24
  (483, 48300, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Dialga - Protect - TM25
  (483, 48300, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Dialga - Scary Face - TM26
  (483, 48300, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 22),
  -- Dialga - Sandstorm - TM32
  (483, 48300, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 23),
  -- Dialga - Rain Dance - TM33
  (483, 48300, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 24),
  -- Dialga - Sunny Day - TM34
  (483, 48300, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 25),
  -- Dialga - Facade - TM39
  (483, 48300, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 26),
  -- Dialga - Swift - TM40
  (483, 48300, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 27),
  -- Dialga - Brick Break - TM43
  (483, 48300, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 28),
  -- Dialga - Rock Tomb - TM48
  (483, 48300, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 29),
  -- Dialga - Shadow Claw - TM65
  (483, 48300, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 30),
  -- Dialga - Trick Room - TM70
  (483, 48300, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 31),
  -- Dialga - Round - TM76
  (483, 48300, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 32),
  -- Dialga - Bulldoze - TM81
  (483, 48300, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 33),
  -- Dialga - Stomping Tantrum - TM98
  (483, 48300, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 34),
  -- Dialga - Breaking Swipe - TM99
  (483, 48300, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 35),
  -- Dialga - Body Slam - TR01
  (483, 48300, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 36),
  -- Dialga - Flamethrower - TR02
  (483, 48300, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 37),
  -- Dialga - Ice Beam - TR05
  (483, 48300, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 38),
  -- Dialga - Blizzard - TR06
  (483, 48300, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 39),
  -- Dialga - Thunderbolt - TR08
  (483, 48300, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 40),
  -- Dialga - Thunder - TR09
  (483, 48300, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 41),
  -- Dialga - Earthquake - TR10
  (483, 48300, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 42),
  -- Dialga - Fire Blast - TR15
  (483, 48300, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 43),
  -- Dialga - Substitute - TR20
  (483, 48300, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 44),
  -- Dialga - Outrage - TR24
  (483, 48300, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 45),
  -- Dialga - Endure - TR26
  (483, 48300, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Dialga - Sleep Talk - TR27
  (483, 48300, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Dialga - Iron Tail - TR31
  (483, 48300, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 48),
  -- Dialga - Hyper Voice - TR42
  (483, 48300, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 49),
  -- Dialga - Overheat - TR43
  (483, 48300, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 50),
  -- Dialga - Iron Defense - TR46
  (483, 48300, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 51),
  -- Dialga - Dragon Claw - TR47
  (483, 48300, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 52),
  -- Dialga - Bulk Up - TR48
  (483, 48300, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 53),
  -- Dialga - Aura Sphere - TR56
  (483, 48300, 396, 18, NULL, 4, NULL, NULL, 18004056, NULL, 54),
  -- Dialga - Dragon Pulse - TR62
  (483, 48300, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 55),
  -- Dialga - Power Gem - TR63
  (483, 48300, 408, 18, NULL, 4, NULL, NULL, 18004063, NULL, 56),
  -- Dialga - Earth Power - TR67
  (483, 48300, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 57),
  -- Dialga - Flash Cannon - TR70
  (483, 48300, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 58),
  -- Dialga - Iron Head - TR74
  (483, 48300, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 59),
  -- Dialga - Stone Edge - TR75
  (483, 48300, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 60),
  -- Dialga - Stealth Rock - TR76
  (483, 48300, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 61),
  -- Dialga - Heavy Slam - TR79
  (483, 48300, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 62),
  -- Dialga - Body Press - TR99
  (483, 48300, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 63),
  -- Dialga - Draco Meteor - Tutor
  (483, 48300, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 64),
  -- Dialga - Steel Beam - Tutor
  (483, 48300, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 65),
  -- Palkia - Scary Face - Level 1
  (484, 48400, 184, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Palkia - Water Pulse - Level 1
  (484, 48400, 352, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Palkia - Dragon Breath - Level 8
  (484, 48400, 225, 18, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Palkia - Ancient Power - Level 16
  (484, 48400, 246, 18, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Palkia - Slash - Level 24
  (484, 48400, 163, 18, NULL, 1, 24, NULL, NULL, NULL, 5),
  -- Palkia - Aqua Ring - Level 32
  (484, 48400, 392, 18, NULL, 1, 32, NULL, NULL, NULL, 6),
  -- Palkia - Dragon Claw - Level 40
  (484, 48400, 337, 18, NULL, 1, 40, NULL, NULL, NULL, 7),
  -- Palkia - Aura Sphere - Level 48
  (484, 48400, 396, 18, NULL, 1, 48, NULL, NULL, NULL, 8),
  -- Palkia - Power Gem - Level 56
  (484, 48400, 408, 18, NULL, 1, 56, NULL, NULL, NULL, 9),
  -- Palkia - Aqua Tail - Level 64
  (484, 48400, 401, 18, NULL, 1, 64, NULL, NULL, NULL, 10),
  -- Palkia - Earth Power - Level 72
  (484, 48400, 414, 18, NULL, 1, 72, NULL, NULL, NULL, 11),
  -- Palkia - Spacial Rend - Level 80
  (484, 48400, 460, 18, NULL, 1, 80, NULL, NULL, NULL, 12),
  -- Palkia - Hydro Pump - Level 88
  (484, 48400, 56, 18, NULL, 1, 88, NULL, NULL, NULL, 13),
  -- Palkia - Hyper Beam - TM08
  (484, 48400, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 14),
  -- Palkia - Giga Impact - TM09
  (484, 48400, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 15),
  -- Palkia - Thunder Wave - TM14
  (484, 48400, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 16),
  -- Palkia - Safeguard - TM19
  (484, 48400, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 17),
  -- Palkia - Rest - TM21
  (484, 48400, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 18),
  -- Palkia - Rock Slide - TM22
  (484, 48400, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 19),
  -- Palkia - Snore - TM24
  (484, 48400, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 20),
  -- Palkia - Protect - TM25
  (484, 48400, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 21),
  -- Palkia - Scary Face - TM26
  (484, 48400, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 22),
  -- Palkia - Sandstorm - TM32
  (484, 48400, 201, 18, NULL, 2, NULL, NULL, 18002032, NULL, 23),
  -- Palkia - Rain Dance - TM33
  (484, 48400, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 24),
  -- Palkia - Sunny Day - TM34
  (484, 48400, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 25),
  -- Palkia - Hail - TM35
  (484, 48400, 258, 18, NULL, 2, NULL, NULL, 18002035, NULL, 26),
  -- Palkia - Whirlpool - TM36
  (484, 48400, 250, 18, NULL, 2, NULL, NULL, 18002036, NULL, 27),
  -- Palkia - Facade - TM39
  (484, 48400, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 28),
  -- Palkia - Swift - TM40
  (484, 48400, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 29),
  -- Palkia - Brick Break - TM43
  (484, 48400, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 30),
  -- Palkia - Dive - TM45
  (484, 48400, 291, 18, NULL, 2, NULL, NULL, 18002045, NULL, 31),
  -- Palkia - Rock Tomb - TM48
  (484, 48400, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 32),
  -- Palkia - Brine - TM55
  (484, 48400, 362, 18, NULL, 2, NULL, NULL, 18002055, NULL, 33),
  -- Palkia - Fling - TM59
  (484, 48400, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 34),
  -- Palkia - Avalanche - TM64
  (484, 48400, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 35),
  -- Palkia - Shadow Claw - TM65
  (484, 48400, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 36),
  -- Palkia - Trick Room - TM70
  (484, 48400, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 37),
  -- Palkia - Round - TM76
  (484, 48400, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 38),
  -- Palkia - Bulldoze - TM81
  (484, 48400, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 39),
  -- Palkia - Stomping Tantrum - TM98
  (484, 48400, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 40),
  -- Palkia - Breaking Swipe - TM99
  (484, 48400, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 41),
  -- Palkia - Body Slam - TR01
  (484, 48400, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 42),
  -- Palkia - Flamethrower - TR02
  (484, 48400, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 43),
  -- Palkia - Hydro Pump - TR03
  (484, 48400, 56, 18, NULL, 4, NULL, NULL, 18004003, NULL, 44),
  -- Palkia - Surf - TR04
  (484, 48400, 57, 18, NULL, 4, NULL, NULL, 18004004, NULL, 45),
  -- Palkia - Ice Beam - TR05
  (484, 48400, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 46),
  -- Palkia - Blizzard - TR06
  (484, 48400, 59, 18, NULL, 4, NULL, NULL, 18004006, NULL, 47),
  -- Palkia - Thunderbolt - TR08
  (484, 48400, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 48),
  -- Palkia - Thunder - TR09
  (484, 48400, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 49),
  -- Palkia - Earthquake - TR10
  (484, 48400, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 50),
  -- Palkia - Fire Blast - TR15
  (484, 48400, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 51),
  -- Palkia - Substitute - TR20
  (484, 48400, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 52),
  -- Palkia - Outrage - TR24
  (484, 48400, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 53),
  -- Palkia - Endure - TR26
  (484, 48400, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 54),
  -- Palkia - Sleep Talk - TR27
  (484, 48400, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 55),
  -- Palkia - Hyper Voice - TR42
  (484, 48400, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 56),
  -- Palkia - Dragon Claw - TR47
  (484, 48400, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 57),
  -- Palkia - Bulk Up - TR48
  (484, 48400, 339, 18, NULL, 4, NULL, NULL, 18004048, NULL, 58),
  -- Palkia - Aura Sphere - TR56
  (484, 48400, 396, 18, NULL, 4, NULL, NULL, 18004056, NULL, 59),
  -- Palkia - Dragon Pulse - TR62
  (484, 48400, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 60),
  -- Palkia - Power Gem - TR63
  (484, 48400, 408, 18, NULL, 4, NULL, NULL, 18004063, NULL, 61),
  -- Palkia - Focus Blast - TR64
  (484, 48400, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 62),
  -- Palkia - Earth Power - TR67
  (484, 48400, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 63),
  -- Palkia - Stone Edge - TR75
  (484, 48400, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 64),
  -- Palkia - Heavy Slam - TR79
  (484, 48400, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 65),
  -- Palkia - Liquidation - TR98
  (484, 48400, 710, 18, NULL, 4, NULL, NULL, 18004098, NULL, 66),
  -- Palkia - Body Press - TR99
  (484, 48400, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 67),
  -- Palkia - Draco Meteor - Tutor
  (484, 48400, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 68),
  -- Heatran - Leer - Level 1
  (485, 48500, 43, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Heatran - Fire Spin - Level 1
  (485, 48500, 83, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Heatran - Metal Claw - Level 6
  (485, 48500, 232, 18, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Heatran - Ancient Power - Level 12
  (485, 48500, 246, 18, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Heatran - Fire Fang - Level 18
  (485, 48500, 424, 18, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Heatran - Scary Face - Level 24
  (485, 48500, 184, 18, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Heatran - Iron Head - Level 30
  (485, 48500, 442, 18, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Heatran - Crunch - Level 36
  (485, 48500, 242, 18, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Heatran - Lava Plume - Level 42
  (485, 48500, 436, 18, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Heatran - Metal Sound - Level 48
  (485, 48500, 319, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Heatran - Earth Power - Level 54
  (485, 48500, 414, 18, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Heatran - Heat Wave - Level 60
  (485, 48500, 257, 18, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Heatran - Stone Edge - Level 66
  (485, 48500, 444, 18, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Heatran - Magma Storm - Level 72
  (485, 48500, 463, 18, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Heatran - Hyper Beam - TM08
  (485, 48500, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Heatran - Giga Impact - TM09
  (485, 48500, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Heatran - Solar Beam - TM11
  (485, 48500, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 17),
  -- Heatran - Fire Spin - TM13
  (485, 48500, 83, 18, NULL, 2, NULL, NULL, 18002013, NULL, 18),
  -- Heatran - Dig - TM15
  (485, 48500, 91, 18, NULL, 2, NULL, NULL, 18002015, NULL, 19),
  -- Heatran - Self-Destruct - TM20
  (485, 48500, 120, 18, NULL, 2, NULL, NULL, 18002020, NULL, 20),
  -- Heatran - Rest - TM21
  (485, 48500, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 21),
  -- Heatran - Rock Slide - TM22
  (485, 48500, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 22),
  -- Heatran - Snore - TM24
  (485, 48500, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Heatran - Protect - TM25
  (485, 48500, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Heatran - Scary Face - TM26
  (485, 48500, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 25),
  -- Heatran - Attract - TM31
  (485, 48500, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Heatran - Sunny Day - TM34
  (485, 48500, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 27),
  -- Heatran - Will-O-Wisp - TM38
  (485, 48500, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 28),
  -- Heatran - Facade - TM39
  (485, 48500, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Heatran - Rock Tomb - TM48
  (485, 48500, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 30),
  -- Heatran - Payback - TM57
  (485, 48500, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 31),
  -- Heatran - Fire Fang - TM68
  (485, 48500, 424, 18, NULL, 2, NULL, NULL, 18002068, NULL, 32),
  -- Heatran - Round - TM76
  (485, 48500, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Heatran - Bulldoze - TM81
  (485, 48500, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 34),
  -- Heatran - Stomping Tantrum - TM98
  (485, 48500, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 35),
  -- Heatran - Body Slam - TR01
  (485, 48500, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 36),
  -- Heatran - Flamethrower - TR02
  (485, 48500, 53, 18, NULL, 4, NULL, NULL, 18004002, NULL, 37),
  -- Heatran - Earthquake - TR10
  (485, 48500, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 38),
  -- Heatran - Fire Blast - TR15
  (485, 48500, 126, 18, NULL, 4, NULL, NULL, 18004015, NULL, 39),
  -- Heatran - Substitute - TR20
  (485, 48500, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 40),
  -- Heatran - Endure - TR26
  (485, 48500, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 41),
  -- Heatran - Sleep Talk - TR27
  (485, 48500, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 42),
  -- Heatran - Crunch - TR32
  (485, 48500, 242, 18, NULL, 4, NULL, NULL, 18004032, NULL, 43),
  -- Heatran - Uproar - TR35
  (485, 48500, 253, 18, NULL, 4, NULL, NULL, 18004035, NULL, 44),
  -- Heatran - Heat Wave - TR36
  (485, 48500, 257, 18, NULL, 4, NULL, NULL, 18004036, NULL, 45),
  -- Heatran - Taunt - TR37
  (485, 48500, 269, 18, NULL, 4, NULL, NULL, 18004037, NULL, 46),
  -- Heatran - Overheat - TR43
  (485, 48500, 315, 18, NULL, 4, NULL, NULL, 18004043, NULL, 47),
  -- Heatran - Iron Defense - TR46
  (485, 48500, 334, 18, NULL, 4, NULL, NULL, 18004046, NULL, 48),
  -- Heatran - Dark Pulse - TR58
  (485, 48500, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 49),
  -- Heatran - Dragon Pulse - TR62
  (485, 48500, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 50),
  -- Heatran - Earth Power - TR67
  (485, 48500, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 51),
  -- Heatran - Flash Cannon - TR70
  (485, 48500, 430, 18, NULL, 4, NULL, NULL, 18004070, NULL, 52),
  -- Heatran - Iron Head - TR74
  (485, 48500, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 53),
  -- Heatran - Stone Edge - TR75
  (485, 48500, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 54),
  -- Heatran - Stealth Rock - TR76
  (485, 48500, 446, 18, NULL, 4, NULL, NULL, 18004076, NULL, 55),
  -- Heatran - Heavy Slam - TR79
  (485, 48500, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 56),
  -- Heatran - Heat Crash - TR88
  (485, 48500, 535, 18, NULL, 4, NULL, NULL, 18004088, NULL, 57),
  -- Heatran - Body Press - TR99
  (485, 48500, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 58),
  -- Heatran - Steel Beam - Tutor
  (485, 48500, 796, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 59),
  -- Regigigas - Pound - Level 1
  (486, 48600, 1, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Regigigas - Confuse Ray - Level 1
  (486, 48600, 109, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Regigigas - Payback - Level 6
  (486, 48600, 371, 18, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Regigigas - Revenge - Level 12
  (486, 48600, 279, 18, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Regigigas - Stomp - Level 18
  (486, 48600, 23, 18, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Regigigas - Protect - Level 24
  (486, 48600, 182, 18, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Regigigas - Knock Off - Level 30
  (486, 48600, 282, 18, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Regigigas - Mega Punch - Level 36
  (486, 48600, 5, 18, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Regigigas - Body Press - Level 42
  (486, 48600, 776, 18, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Regigigas - Wide Guard - Level 48
  (486, 48600, 469, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Regigigas - Zen Headbutt - Level 54
  (486, 48600, 428, 18, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Regigigas - Heavy Slam - Level 60
  (486, 48600, 484, 18, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Regigigas - Hammer Arm - Level 66
  (486, 48600, 359, 18, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Regigigas - Giga Impact - Level 72
  (486, 48600, 416, 18, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Regigigas - Crush Grip - Level 78
  (486, 48600, 462, 18, NULL, 1, 78, NULL, NULL, NULL, 15),
  -- Regigigas - Mega Punch - TM00
  (486, 48600, 5, 18, NULL, 2, NULL, NULL, 18002000, NULL, 16),
  -- Regigigas - Mega Kick - TM01
  (486, 48600, 25, 18, NULL, 2, NULL, NULL, 18002001, NULL, 17),
  -- Regigigas - Fire Punch - TM03
  (486, 48600, 7, 18, NULL, 2, NULL, NULL, 18002003, NULL, 18),
  -- Regigigas - Ice Punch - TM04
  (486, 48600, 8, 18, NULL, 2, NULL, NULL, 18002004, NULL, 19),
  -- Regigigas - Thunder Punch - TM05
  (486, 48600, 9, 18, NULL, 2, NULL, NULL, 18002005, NULL, 20),
  -- Regigigas - Hyper Beam - TM08
  (486, 48600, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 21),
  -- Regigigas - Giga Impact - TM09
  (486, 48600, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 22),
  -- Regigigas - Thunder Wave - TM14
  (486, 48600, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 23),
  -- Regigigas - Safeguard - TM19
  (486, 48600, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 24),
  -- Regigigas - Rest - TM21
  (486, 48600, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 25),
  -- Regigigas - Rock Slide - TM22
  (486, 48600, 157, 18, NULL, 2, NULL, NULL, 18002022, NULL, 26),
  -- Regigigas - Snore - TM24
  (486, 48600, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 27),
  -- Regigigas - Protect - TM25
  (486, 48600, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 28),
  -- Regigigas - Icy Wind - TM27
  (486, 48600, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 29),
  -- Regigigas - Rain Dance - TM33
  (486, 48600, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 30),
  -- Regigigas - Sunny Day - TM34
  (486, 48600, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 31),
  -- Regigigas - Facade - TM39
  (486, 48600, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 32),
  -- Regigigas - Revenge - TM42
  (486, 48600, 279, 18, NULL, 2, NULL, NULL, 18002042, NULL, 33),
  -- Regigigas - Brick Break - TM43
  (486, 48600, 280, 18, NULL, 2, NULL, NULL, 18002043, NULL, 34),
  -- Regigigas - Rock Tomb - TM48
  (486, 48600, 317, 18, NULL, 2, NULL, NULL, 18002048, NULL, 35),
  -- Regigigas - Payback - TM57
  (486, 48600, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 36),
  -- Regigigas - Fling - TM59
  (486, 48600, 374, 18, NULL, 2, NULL, NULL, 18002059, NULL, 37),
  -- Regigigas - Drain Punch - TM63
  (486, 48600, 409, 18, NULL, 2, NULL, NULL, 18002063, NULL, 38),
  -- Regigigas - Avalanche - TM64
  (486, 48600, 419, 18, NULL, 2, NULL, NULL, 18002064, NULL, 39),
  -- Regigigas - Round - TM76
  (486, 48600, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 40),
  -- Regigigas - Retaliate - TM79
  (486, 48600, 514, 18, NULL, 2, NULL, NULL, 18002079, NULL, 41),
  -- Regigigas - Bulldoze - TM81
  (486, 48600, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 42),
  -- Regigigas - Stomping Tantrum - TM98
  (486, 48600, 707, 18, NULL, 2, NULL, NULL, 18002098, NULL, 43),
  -- Regigigas - Body Slam - TR01
  (486, 48600, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 44),
  -- Regigigas - Thunderbolt - TR08
  (486, 48600, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 45),
  -- Regigigas - Thunder - TR09
  (486, 48600, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 46),
  -- Regigigas - Earthquake - TR10
  (486, 48600, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 47),
  -- Regigigas - Substitute - TR20
  (486, 48600, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 48),
  -- Regigigas - Endure - TR26
  (486, 48600, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 49),
  -- Regigigas - Sleep Talk - TR27
  (486, 48600, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 50),
  -- Regigigas - Superpower - TR39
  (486, 48600, 276, 18, NULL, 4, NULL, NULL, 18004039, NULL, 51),
  -- Regigigas - Focus Blast - TR64
  (486, 48600, 411, 18, NULL, 4, NULL, NULL, 18004064, NULL, 52),
  -- Regigigas - Earth Power - TR67
  (486, 48600, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 53),
  -- Regigigas - Zen Headbutt - TR69
  (486, 48600, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 54),
  -- Regigigas - Iron Head - TR74
  (486, 48600, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 55),
  -- Regigigas - Stone Edge - TR75
  (486, 48600, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 56),
  -- Regigigas - Heavy Slam - TR79
  (486, 48600, 484, 18, NULL, 4, NULL, NULL, 18004079, NULL, 57),
  -- Regigigas - Heat Crash - TR88
  (486, 48600, 535, 18, NULL, 4, NULL, NULL, 18004088, NULL, 58),
  -- Regigigas - Darkest Lariat - TR93
  (486, 48600, 663, 18, NULL, 4, NULL, NULL, 18004093, NULL, 59),
  -- Regigigas - High Horsepower - TR94
  (486, 48600, 667, 18, NULL, 4, NULL, NULL, 18004094, NULL, 60),
  -- Regigigas - Body Press - TR99
  (486, 48600, 776, 18, NULL, 4, NULL, NULL, 18004099, NULL, 61),
  -- Giratina - Shadow Sneak - Level 1
  (487, 48700, 425, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Giratina - Defog - Level 1
  (487, 48700, 432, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Giratina - Dragon Breath - Level 7
  (487, 48700, 225, 18, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Giratina - Ancient Power - Level 14
  (487, 48700, 246, 18, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Giratina - Hex - Level 21
  (487, 48700, 506, 18, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Giratina - Slash - Level 28
  (487, 48700, 163, 18, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Giratina - Scary Face - Level 35
  (487, 48700, 184, 18, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Giratina - Shadow Claw - Level 42
  (487, 48700, 421, 18, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Giratina - Pain Split - Level 49
  (487, 48700, 220, 18, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Giratina - Aura Sphere - Level 56
  (487, 48700, 396, 18, NULL, 1, 56, NULL, NULL, NULL, 10),
  -- Giratina - Dragon Claw - Level 63
  (487, 48700, 337, 18, NULL, 1, 63, NULL, NULL, NULL, 11),
  -- Giratina - Earth Power - Level 70
  (487, 48700, 414, 18, NULL, 1, 70, NULL, NULL, NULL, 12),
  -- Giratina - Shadow Force - Level 77
  (487, 48700, 467, 18, NULL, 1, 77, NULL, NULL, NULL, 13),
  -- Giratina - Destiny Bond - Level 84
  (487, 48700, 194, 18, NULL, 1, 84, NULL, NULL, NULL, 14),
  -- Giratina - Fly - TM06
  (487, 48700, 19, 18, NULL, 2, NULL, NULL, 18002006, NULL, 15),
  -- Giratina - Hyper Beam - TM08
  (487, 48700, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 16),
  -- Giratina - Giga Impact - TM09
  (487, 48700, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 17),
  -- Giratina - Thunder Wave - TM14
  (487, 48700, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 18),
  -- Giratina - Safeguard - TM19
  (487, 48700, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 19),
  -- Giratina - Rest - TM21
  (487, 48700, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 20),
  -- Giratina - Snore - TM24
  (487, 48700, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 21),
  -- Giratina - Protect - TM25
  (487, 48700, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 22),
  -- Giratina - Scary Face - TM26
  (487, 48700, 184, 18, NULL, 2, NULL, NULL, 18002026, NULL, 23),
  -- Giratina - Icy Wind - TM27
  (487, 48700, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 24),
  -- Giratina - Steel Wing - TM30
  (487, 48700, 211, 18, NULL, 2, NULL, NULL, 18002030, NULL, 25),
  -- Giratina - Rain Dance - TM33
  (487, 48700, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 26),
  -- Giratina - Sunny Day - TM34
  (487, 48700, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 27),
  -- Giratina - Will-O-Wisp - TM38
  (487, 48700, 261, 18, NULL, 2, NULL, NULL, 18002038, NULL, 28),
  -- Giratina - Facade - TM39
  (487, 48700, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Giratina - Swift - TM40
  (487, 48700, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 30),
  -- Giratina - Payback - TM57
  (487, 48700, 371, 18, NULL, 2, NULL, NULL, 18002057, NULL, 31),
  -- Giratina - Shadow Claw - TM65
  (487, 48700, 421, 18, NULL, 2, NULL, NULL, 18002065, NULL, 32),
  -- Giratina - Round - TM76
  (487, 48700, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 33),
  -- Giratina - Hex - TM77
  (487, 48700, 506, 18, NULL, 2, NULL, NULL, 18002077, NULL, 34),
  -- Giratina - Bulldoze - TM81
  (487, 48700, 523, 18, NULL, 2, NULL, NULL, 18002081, NULL, 35),
  -- Giratina - Phantom Force - TM86
  (487, 48700, 566, 18, NULL, 2, NULL, NULL, 18002086, NULL, 36),
  -- Giratina - Brutal Swing - TM97
  (487, 48700, 693, 18, NULL, 2, NULL, NULL, 18002097, NULL, 37),
  -- Giratina - Breaking Swipe - TM99
  (487, 48700, 784, 18, NULL, 2, NULL, NULL, 18002099, NULL, 38),
  -- Giratina - Body Slam - TR01
  (487, 48700, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 39),
  -- Giratina - Thunderbolt - TR08
  (487, 48700, 85, 18, NULL, 4, NULL, NULL, 18004008, NULL, 40),
  -- Giratina - Thunder - TR09
  (487, 48700, 87, 18, NULL, 4, NULL, NULL, 18004009, NULL, 41),
  -- Giratina - Earthquake - TR10
  (487, 48700, 89, 18, NULL, 4, NULL, NULL, 18004010, NULL, 42),
  -- Giratina - Psychic - TR11
  (487, 48700, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 43),
  -- Giratina - Substitute - TR20
  (487, 48700, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 44),
  -- Giratina - Outrage - TR24
  (487, 48700, 200, 18, NULL, 4, NULL, NULL, 18004024, NULL, 45),
  -- Giratina - Endure - TR26
  (487, 48700, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 46),
  -- Giratina - Sleep Talk - TR27
  (487, 48700, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 47),
  -- Giratina - Iron Tail - TR31
  (487, 48700, 231, 18, NULL, 4, NULL, NULL, 18004031, NULL, 48),
  -- Giratina - Shadow Ball - TR33
  (487, 48700, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 49),
  -- Giratina - Hyper Voice - TR42
  (487, 48700, 304, 18, NULL, 4, NULL, NULL, 18004042, NULL, 50),
  -- Giratina - Dragon Claw - TR47
  (487, 48700, 337, 18, NULL, 4, NULL, NULL, 18004047, NULL, 51),
  -- Giratina - Calm Mind - TR49
  (487, 48700, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 52),
  -- Giratina - Aura Sphere - TR56
  (487, 48700, 396, 18, NULL, 4, NULL, NULL, 18004056, NULL, 53),
  -- Giratina - Dark Pulse - TR58
  (487, 48700, 399, 18, NULL, 4, NULL, NULL, 18004058, NULL, 54),
  -- Giratina - Dragon Pulse - TR62
  (487, 48700, 406, 18, NULL, 4, NULL, NULL, 18004062, NULL, 55),
  -- Giratina - Energy Ball - TR65
  (487, 48700, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 56),
  -- Giratina - Earth Power - TR67
  (487, 48700, 414, 18, NULL, 4, NULL, NULL, 18004067, NULL, 57),
  -- Giratina - Iron Head - TR74
  (487, 48700, 442, 18, NULL, 4, NULL, NULL, 18004074, NULL, 58),
  -- Giratina - Stone Edge - TR75
  (487, 48700, 444, 18, NULL, 4, NULL, NULL, 18004075, NULL, 59),
  -- Giratina - Draco Meteor - Tutor
  (487, 48700, 434, 18, NULL, 6, NULL, NULL, NULL, 'Sword / Shield Move Tutor.', 60),
  -- Cresselia - Confusion - Level 1
  (488, 48800, 93, 18, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cresselia - Double Team - Level 1
  (488, 48800, 104, 18, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cresselia - Mist - Level 6
  (488, 48800, 54, 18, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Cresselia - Aurora Beam - Level 12
  (488, 48800, 62, 18, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Cresselia - Psybeam - Level 18
  (488, 48800, 60, 18, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Cresselia - Psycho Shift - Level 24
  (488, 48800, 375, 18, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Cresselia - Slash - Level 30
  (488, 48800, 163, 18, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Cresselia - Psycho Cut - Level 36
  (488, 48800, 427, 18, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Cresselia - Moonlight - Level 42
  (488, 48800, 236, 18, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Cresselia - Safeguard - Level 48
  (488, 48800, 219, 18, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Cresselia - Psychic - Level 54
  (488, 48800, 94, 18, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Cresselia - Moonblast - Level 60
  (488, 48800, 585, 18, NULL, 1, 60, NULL, NULL, NULL, 12),
  -- Cresselia - Future Sight - Level 66
  (488, 48800, 248, 18, NULL, 1, 66, NULL, NULL, NULL, 13),
  -- Cresselia - Lunar Dance - Level 72
  (488, 48800, 461, 18, NULL, 1, 72, NULL, NULL, NULL, 14),
  -- Cresselia - Hyper Beam - TM08
  (488, 48800, 63, 18, NULL, 2, NULL, NULL, 18002008, NULL, 15),
  -- Cresselia - Giga Impact - TM09
  (488, 48800, 416, 18, NULL, 2, NULL, NULL, 18002009, NULL, 16),
  -- Cresselia - Solar Beam - TM11
  (488, 48800, 76, 18, NULL, 2, NULL, NULL, 18002011, NULL, 17),
  -- Cresselia - Thunder Wave - TM14
  (488, 48800, 86, 18, NULL, 2, NULL, NULL, 18002014, NULL, 18),
  -- Cresselia - Light Screen - TM17
  (488, 48800, 113, 18, NULL, 2, NULL, NULL, 18002017, NULL, 19),
  -- Cresselia - Reflect - TM18
  (488, 48800, 115, 18, NULL, 2, NULL, NULL, 18002018, NULL, 20),
  -- Cresselia - Safeguard - TM19
  (488, 48800, 219, 18, NULL, 2, NULL, NULL, 18002019, NULL, 21),
  -- Cresselia - Rest - TM21
  (488, 48800, 156, 18, NULL, 2, NULL, NULL, 18002021, NULL, 22),
  -- Cresselia - Snore - TM24
  (488, 48800, 173, 18, NULL, 2, NULL, NULL, 18002024, NULL, 23),
  -- Cresselia - Protect - TM25
  (488, 48800, 182, 18, NULL, 2, NULL, NULL, 18002025, NULL, 24),
  -- Cresselia - Icy Wind - TM27
  (488, 48800, 196, 18, NULL, 2, NULL, NULL, 18002027, NULL, 25),
  -- Cresselia - Attract - TM31
  (488, 48800, 213, 18, NULL, 2, NULL, NULL, 18002031, NULL, 26),
  -- Cresselia - Rain Dance - TM33
  (488, 48800, 240, 18, NULL, 2, NULL, NULL, 18002033, NULL, 27),
  -- Cresselia - Sunny Day - TM34
  (488, 48800, 241, 18, NULL, 2, NULL, NULL, 18002034, NULL, 28),
  -- Cresselia - Facade - TM39
  (488, 48800, 263, 18, NULL, 2, NULL, NULL, 18002039, NULL, 29),
  -- Cresselia - Swift - TM40
  (488, 48800, 129, 18, NULL, 2, NULL, NULL, 18002040, NULL, 30),
  -- Cresselia - Helping Hand - TM41
  (488, 48800, 270, 18, NULL, 2, NULL, NULL, 18002041, NULL, 31),
  -- Cresselia - Power Swap - TM60
  (488, 48800, 384, 18, NULL, 2, NULL, NULL, 18002060, NULL, 32),
  -- Cresselia - Guard Swap - TM61
  (488, 48800, 385, 18, NULL, 2, NULL, NULL, 18002061, NULL, 33),
  -- Cresselia - Psycho Cut - TM69
  (488, 48800, 427, 18, NULL, 2, NULL, NULL, 18002069, NULL, 34),
  -- Cresselia - Trick Room - TM70
  (488, 48800, 433, 18, NULL, 2, NULL, NULL, 18002070, NULL, 35),
  -- Cresselia - Magic Room - TM72
  (488, 48800, 478, 18, NULL, 2, NULL, NULL, 18002072, NULL, 36),
  -- Cresselia - Round - TM76
  (488, 48800, 496, 18, NULL, 2, NULL, NULL, 18002076, NULL, 37),
  -- Cresselia - Body Slam - TR01
  (488, 48800, 34, 18, NULL, 4, NULL, NULL, 18004001, NULL, 38),
  -- Cresselia - Ice Beam - TR05
  (488, 48800, 58, 18, NULL, 4, NULL, NULL, 18004005, NULL, 39),
  -- Cresselia - Psychic - TR11
  (488, 48800, 94, 18, NULL, 4, NULL, NULL, 18004011, NULL, 40),
  -- Cresselia - Substitute - TR20
  (488, 48800, 164, 18, NULL, 4, NULL, NULL, 18004020, NULL, 41),
  -- Cresselia - Psyshock - TR25
  (488, 48800, 473, 18, NULL, 4, NULL, NULL, 18004025, NULL, 42),
  -- Cresselia - Endure - TR26
  (488, 48800, 203, 18, NULL, 4, NULL, NULL, 18004026, NULL, 43),
  -- Cresselia - Sleep Talk - TR27
  (488, 48800, 214, 18, NULL, 4, NULL, NULL, 18004027, NULL, 44),
  -- Cresselia - Shadow Ball - TR33
  (488, 48800, 247, 18, NULL, 4, NULL, NULL, 18004033, NULL, 45),
  -- Cresselia - Future Sight - TR34
  (488, 48800, 248, 18, NULL, 4, NULL, NULL, 18004034, NULL, 46),
  -- Cresselia - Trick - TR38
  (488, 48800, 271, 18, NULL, 4, NULL, NULL, 18004038, NULL, 47),
  -- Cresselia - Skill Swap - TR40
  (488, 48800, 285, 18, NULL, 4, NULL, NULL, 18004040, NULL, 48),
  -- Cresselia - Calm Mind - TR49
  (488, 48800, 347, 18, NULL, 4, NULL, NULL, 18004049, NULL, 49),
  -- Cresselia - Energy Ball - TR65
  (488, 48800, 412, 18, NULL, 4, NULL, NULL, 18004065, NULL, 50),
  -- Cresselia - Zen Headbutt - TR69
  (488, 48800, 428, 18, NULL, 4, NULL, NULL, 18004069, NULL, 51),
  -- Cresselia - Grass Knot - TR77
  (488, 48800, 447, 18, NULL, 4, NULL, NULL, 18004077, NULL, 52),
  -- Cresselia - Stored Power - TR82
  (488, 48800, 500, 18, NULL, 4, NULL, NULL, 18004082, NULL, 53),
  -- Cresselia - Ally Switch - TR83
  (488, 48800, 502, 18, NULL, 4, NULL, NULL, 18004083, NULL, 54);

-- ============================================================================
-- Source Audit Corrections
-- ============================================================================
-- Rows below are source-verified Sword / Shield learnset rows omitted from the legacy migration.
-- They preserve current-species Generation VIII source tables, including evolved/form learn paths.
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
  -- Drapion - Whirlwind - Egg
  (452, 45200, 18, 18, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Drapion - Sand Attack - Egg
  (452, 45200, 28, 18, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Drapion - Confuse Ray - Egg
  (452, 45200, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Drapion - Slash - Egg
  (452, 45200, 163, 18, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Toxicroak - Headbutt - Egg
  (454, 45400, 29, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Toxicroak - Counter - Egg
  (454, 45400, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Toxicroak - Dynamic Punch - Egg
  (454, 45400, 223, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Toxicroak - Cross Chop - Egg
  (454, 45400, 238, 18, NULL, 5, NULL, NULL, NULL, NULL, 75),
  -- Toxicroak - Fake Out - Egg
  (454, 45400, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Toxicroak - Feint - Egg
  (454, 45400, 364, 18, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Toxicroak - Vacuum Wave - Egg
  (454, 45400, 410, 18, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Toxicroak - Bullet Punch - Egg
  (454, 45400, 418, 18, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Toxicroak - Quick Guard - Egg
  (454, 45400, 501, 18, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Abomasnow - Stomp - Egg
  (460, 46000, 23, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Abomasnow - Double-Edge - Egg
  (460, 46000, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Abomasnow - Leech Seed - Egg
  (460, 46000, 73, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Abomasnow - Growth - Egg
  (460, 46000, 74, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Abomasnow - Skull Bash - Egg
  (460, 46000, 130, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Weavile - Bite - Egg
  (461, 46100, 44, 18, NULL, 5, NULL, NULL, NULL, NULL, 76),
  -- Weavile - Counter - Egg
  (461, 46100, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 77),
  -- Weavile - Spite - Egg
  (461, 46100, 180, 18, NULL, 5, NULL, NULL, NULL, NULL, 78),
  -- Weavile - Fake Out - Egg
  (461, 46100, 252, 18, NULL, 5, NULL, NULL, NULL, NULL, 79),
  -- Weavile - Feint - Egg
  (461, 46100, 364, 18, NULL, 5, NULL, NULL, NULL, NULL, 80),
  -- Weavile - Ice Shard - Egg
  (461, 46100, 420, 18, NULL, 5, NULL, NULL, NULL, NULL, 81),
  -- Weavile - Double Hit - Egg
  (461, 46100, 458, 18, NULL, 5, NULL, NULL, NULL, NULL, 82),
  -- Weavile - Icicle Crash - Egg
  (461, 46100, 556, 18, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Lickilicky - Thrash - Egg
  (463, 46300, 37, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Lickilicky - Curse - Egg
  (463, 46300, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Lickilicky - Hammer Arm - Egg
  (463, 46300, 359, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Lickilicky - Belch - Egg
  (463, 46300, 562, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Rhyperior - Counter - Egg
  (464, 46400, 68, 18, NULL, 5, NULL, NULL, NULL, NULL, 92),
  -- Rhyperior - Skull Bash - Egg
  (464, 46400, 130, 18, NULL, 5, NULL, NULL, NULL, NULL, 93),
  -- Rhyperior - Curse - Egg
  (464, 46400, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 94),
  -- Rhyperior - Metal Burst - Egg
  (464, 46400, 368, 18, NULL, 5, NULL, NULL, NULL, NULL, 95),
  -- Rhyperior - Rock Polish - Egg
  (464, 46400, 397, 18, NULL, 5, NULL, NULL, NULL, NULL, 96),
  -- Rhyperior - Dragon Rush - Egg
  (464, 46400, 407, 18, NULL, 5, NULL, NULL, NULL, NULL, 97),
  -- Rhyperior - Guard Split - Egg
  (464, 46400, 470, 18, NULL, 5, NULL, NULL, NULL, NULL, 98),
  -- Tangrowth - Leech Seed - Egg
  (465, 46500, 73, 18, NULL, 5, NULL, NULL, NULL, NULL, 58),
  -- Tangrowth - Confusion - Egg
  (465, 46500, 93, 18, NULL, 5, NULL, NULL, NULL, NULL, 59),
  -- Tangrowth - Flail - Egg
  (465, 46500, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Tangrowth - Nature Power - Egg
  (465, 46500, 267, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Tangrowth - Endeavor - Egg
  (465, 46500, 283, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Tangrowth - Rage Powder - Egg
  (465, 46500, 476, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Electivire - Wild Charge - Level 1
  (466, 46600, 528, 18, NULL, 1, 1, NULL, NULL, NULL, 65),
  -- Electivire - Dynamic Punch - Egg
  (466, 46600, 223, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Electivire - Cross Chop - Egg
  (466, 46600, 238, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Electivire - Focus Punch - Egg
  (466, 46600, 264, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Electivire - Hammer Arm - Egg
  (466, 46600, 359, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Electivire - Feint - Egg
  (466, 46600, 364, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Magmortar - Mach Punch - Egg
  (467, 46700, 183, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Magmortar - Dynamic Punch - Egg
  (467, 46700, 223, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Magmortar - Cross Chop - Egg
  (467, 46700, 238, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Magmortar - Focus Punch - Egg
  (467, 46700, 264, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Magmortar - Belch - Egg
  (467, 46700, 562, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Togekiss - Peck - Egg
  (468, 46800, 64, 18, NULL, 5, NULL, NULL, NULL, NULL, 83),
  -- Togekiss - Present - Egg
  (468, 46800, 217, 18, NULL, 5, NULL, NULL, NULL, NULL, 84),
  -- Togekiss - Morning Sun - Egg
  (468, 46800, 234, 18, NULL, 5, NULL, NULL, NULL, NULL, 85),
  -- Togekiss - Extrasensory - Egg
  (468, 46800, 326, 18, NULL, 5, NULL, NULL, NULL, NULL, 86),
  -- Togekiss - Aerial Ace - Egg
  (468, 46800, 332, 18, NULL, 5, NULL, NULL, NULL, NULL, 87),
  -- Togekiss - Psycho Shift - Egg
  (468, 46800, 375, 18, NULL, 5, NULL, NULL, NULL, NULL, 88),
  -- Leafeon - Double Kick - Egg
  (470, 47000, 24, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Leafeon - Curse - Egg
  (470, 47000, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Leafeon - Flail - Egg
  (470, 47000, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Leafeon - Mud-Slap - Egg
  (470, 47000, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Leafeon - Detect - Egg
  (470, 47000, 197, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Leafeon - Wish - Egg
  (470, 47000, 273, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Leafeon - Yawn - Egg
  (470, 47000, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Leafeon - Tickle - Egg
  (470, 47000, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 74),
  -- Glaceon - Double Kick - Egg
  (471, 47100, 24, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Glaceon - Curse - Egg
  (471, 47100, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Glaceon - Flail - Egg
  (471, 47100, 175, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Glaceon - Mud-Slap - Egg
  (471, 47100, 189, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Glaceon - Detect - Egg
  (471, 47100, 197, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Glaceon - Wish - Egg
  (471, 47100, 273, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Glaceon - Yawn - Egg
  (471, 47100, 281, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Glaceon - Tickle - Egg
  (471, 47100, 321, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Mamoswine - Double-Edge - Egg
  (473, 47300, 38, 18, NULL, 5, NULL, NULL, NULL, NULL, 60),
  -- Mamoswine - Bite - Egg
  (473, 47300, 44, 18, NULL, 5, NULL, NULL, NULL, NULL, 61),
  -- Mamoswine - Fissure - Egg
  (473, 47300, 90, 18, NULL, 5, NULL, NULL, NULL, NULL, 62),
  -- Mamoswine - Curse - Egg
  (473, 47300, 174, 18, NULL, 5, NULL, NULL, NULL, NULL, 63),
  -- Mamoswine - Ancient Power - Egg
  (473, 47300, 246, 18, NULL, 5, NULL, NULL, NULL, NULL, 64),
  -- Mamoswine - Icicle Crash - Egg
  (473, 47300, 556, 18, NULL, 5, NULL, NULL, NULL, NULL, 65),
  -- Mamoswine - Freeze-Dry - Egg
  (473, 47300, 573, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Gallade - Disable - Egg
  (475, 47500, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 112),
  -- Gallade - Confuse Ray - Egg
  (475, 47500, 109, 18, NULL, 5, NULL, NULL, NULL, NULL, 113),
  -- Gallade - Destiny Bond - Egg
  (475, 47500, 194, 18, NULL, 5, NULL, NULL, NULL, NULL, 114),
  -- Gallade - Mean Look - Egg
  (475, 47500, 212, 18, NULL, 5, NULL, NULL, NULL, NULL, 115),
  -- Gallade - Memento - Egg
  (475, 47500, 262, 18, NULL, 5, NULL, NULL, NULL, NULL, 116),
  -- Gallade - Knock Off - Egg
  (475, 47500, 282, 18, NULL, 5, NULL, NULL, NULL, NULL, 117),
  -- Gallade - Grudge - Egg
  (475, 47500, 288, 18, NULL, 5, NULL, NULL, NULL, NULL, 118),
  -- Gallade - Shadow Sneak - Egg
  (475, 47500, 425, 18, NULL, 5, NULL, NULL, NULL, NULL, 119),
  -- Dusknoir - Haze - Egg
  (477, 47700, 114, 18, NULL, 5, NULL, NULL, NULL, NULL, 70),
  -- Dusknoir - Pain Split - Egg
  (477, 47700, 220, 18, NULL, 5, NULL, NULL, NULL, NULL, 71),
  -- Dusknoir - Memento - Egg
  (477, 47700, 262, 18, NULL, 5, NULL, NULL, NULL, NULL, 72),
  -- Dusknoir - Grudge - Egg
  (477, 47700, 288, 18, NULL, 5, NULL, NULL, NULL, NULL, 73),
  -- Froslass - Disable - Egg
  (478, 47800, 50, 18, NULL, 5, NULL, NULL, NULL, NULL, 66),
  -- Froslass - Rollout - Egg
  (478, 47800, 205, 18, NULL, 5, NULL, NULL, NULL, NULL, 67),
  -- Froslass - Block - Egg
  (478, 47800, 335, 18, NULL, 5, NULL, NULL, NULL, NULL, 68),
  -- Froslass - Switcheroo - Egg
  (478, 47800, 415, 18, NULL, 5, NULL, NULL, NULL, NULL, 69),
  -- Froslass - Icicle Crash - Egg
  (478, 47800, 556, 18, NULL, 5, NULL, NULL, NULL, NULL, 70);
