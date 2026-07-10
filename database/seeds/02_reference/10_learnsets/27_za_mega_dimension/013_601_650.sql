-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Z-A Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Pokémon Legends: Z-A learnset pages during full row-level audit.
-- Scope note: Mega Dimension rows include numeric level-up, evolution-learned, and inherited ZA TM001-TM160 rows for Pokémon/forms first available in the optional Mega Dimension scope.
-- Delta note: Rows exclude Pokémon/forms already seeded in base ZA; base ZA TM machine rows are inherited through the parent content scope.
-- Reminder note: source Move Reminder rows are intentionally excluded until reminder/relearn behavior is modeled for this game.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Mega Dimension learnset delta rows for species 601-650.
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
  -- Cryogonal - Ice Shard - Level 1
  (615, 61500, 420, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cryogonal - Confuse Ray - Level 4
  (615, 61500, 109, 27, NULL, 1, 4, NULL, NULL, NULL, 2),
  -- Cryogonal - Icy Wind - Level 12
  (615, 61500, 196, 27, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Cryogonal - Mist - Level 16
  (615, 61500, 54, 27, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Cryogonal - Haze - Level 16
  (615, 61500, 114, 27, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Cryogonal - Slash - Level 28
  (615, 61500, 163, 27, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Cryogonal - Night Slash - Level 32
  (615, 61500, 400, 27, NULL, 1, 32, NULL, NULL, NULL, 7),
  -- Cryogonal - Freeze-Dry - Level 36
  (615, 61500, 573, 27, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Cryogonal - Light Screen - Level 40
  (615, 61500, 113, 27, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Cryogonal - Reflect - Level 40
  (615, 61500, 115, 27, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Cryogonal - Recover - Level 44
  (615, 61500, 105, 27, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Cryogonal - Ice Beam - Level 48
  (615, 61500, 58, 27, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Cryogonal - Acid Armor - Level 52
  (615, 61500, 151, 27, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Cryogonal - Solar Beam - Level 56
  (615, 61500, 76, 27, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Cryogonal - Explosion - Level 60
  (615, 61500, 153, 27, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Cryogonal - Sheer Cold - Level 65
  (615, 61500, 329, 27, NULL, 1, 65, NULL, NULL, NULL, 16),
  -- Cryogonal - Ice Beam - TM013
  (615, 61500, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 17),
  -- Cryogonal - Light Screen - TM016
  (615, 61500, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 18),
  -- Cryogonal - Protect - TM017
  (615, 61500, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Cryogonal - Reflect - TM031
  (615, 61500, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 20),
  -- Cryogonal - Body Slam - TM033
  (615, 61500, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 21),
  -- Cryogonal - Night Slash - TM034
  (615, 61500, 400, 27, NULL, 2, NULL, NULL, 26002034, NULL, 22),
  -- Cryogonal - Endure - TM035
  (615, 61500, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Cryogonal - Water Pulse - TM041
  (615, 61500, 352, 27, NULL, 2, NULL, NULL, 26002041, NULL, 24),
  -- Cryogonal - Hyper Beam - TM044
  (615, 61500, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 25),
  -- Cryogonal - Self-Destruct - TM048
  (615, 61500, 120, 27, NULL, 2, NULL, NULL, 26002048, NULL, 26),
  -- Cryogonal - Icy Wind - TM049
  (615, 61500, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 27),
  -- Cryogonal - Giga Impact - TM055
  (615, 61500, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 28),
  -- Cryogonal - Solar Beam - TM064
  (615, 61500, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 29),
  -- Cryogonal - Poison Jab - TM077
  (615, 61500, 398, 27, NULL, 2, NULL, NULL, 26002077, NULL, 30),
  -- Cryogonal - Iron Defense - TM080
  (615, 61500, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 31),
  -- Cryogonal - Flash Cannon - TM084
  (615, 61500, 430, 27, NULL, 2, NULL, NULL, 26002084, NULL, 32),
  -- Cryogonal - Substitute - TM085
  (615, 61500, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 33),
  -- Cryogonal - Blizzard - TM105
  (615, 61500, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 34),
  -- Cryogonal - Facade - TM109
  (615, 61500, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 35),
  -- Cryogonal - Chilling Water - TM110
  (615, 61500, 886, 27, NULL, 2, NULL, NULL, 26002110, NULL, 36),
  -- Cryogonal - Ancient Power - TM120
  (615, 61500, 246, 27, NULL, 2, NULL, NULL, 26002120, NULL, 37),
  -- Cryogonal - Frost Breath - TM138
  (615, 61500, 524, 27, NULL, 2, NULL, NULL, 26002138, NULL, 38),
  -- Cryogonal - Triple Axel - TM144
  (615, 61500, 813, 27, NULL, 2, NULL, NULL, 26002144, NULL, 39),
  -- Cryogonal - Icicle Spear - TM149
  (615, 61500, 333, 27, NULL, 2, NULL, NULL, 26002149, NULL, 40),
  -- Cryogonal - Sheer Cold - TM155
  (615, 61500, 329, 27, NULL, 2, NULL, NULL, 26002155, NULL, 41),
  -- Golett - Tackle - Level 1
  (622, 62200, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golett - Harden - Level 1
  (622, 62200, 106, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golett - Shadow Punch - Level 12
  (622, 62200, 325, 27, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Golett - Curse - Level 16
  (622, 62200, 174, 27, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Golett - Rollout - Level 18
  (622, 62200, 205, 27, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Golett - Bulldoze - Level 22
  (622, 62200, 523, 27, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Golett - Iron Defense - Level 28
  (622, 62200, 334, 27, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Golett - Shadow Ball - Level 36
  (622, 62200, 247, 27, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Golett - Heavy Slam - Level 42
  (622, 62200, 484, 27, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Golett - Phantom Force - Level 48
  (622, 62200, 566, 27, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Golett - Earthquake - Level 55
  (622, 62200, 89, 27, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Golett - Dynamic Punch - Level 65
  (622, 62200, 223, 27, NULL, 1, 65, NULL, NULL, NULL, 12),
  -- Golett - Brick Break - TM010
  (622, 62200, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 13),
  -- Golett - Rock Slide - TM012
  (622, 62200, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 14),
  -- Golett - Ice Beam - TM013
  (622, 62200, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 15),
  -- Golett - Protect - TM017
  (622, 62200, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Golett - Thunder Punch - TM023
  (622, 62200, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 17),
  -- Golett - Ice Punch - TM024
  (622, 62200, 8, 27, NULL, 2, NULL, NULL, 26002024, NULL, 18),
  -- Golett - Dig - TM028
  (622, 62200, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 19),
  -- Golett - Fire Punch - TM029
  (622, 62200, 7, 27, NULL, 2, NULL, NULL, 26002029, NULL, 20),
  -- Golett - Reflect - TM031
  (622, 62200, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 21),
  -- Golett - Body Slam - TM033
  (622, 62200, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 22),
  -- Golett - Endure - TM035
  (622, 62200, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Golett - Rock Tomb - TM036
  (622, 62200, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 24),
  -- Golett - Stealth Rock - TM037
  (622, 62200, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 25),
  -- Golett - Knock Off - TM045
  (622, 62200, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 26),
  -- Golett - Mud Shot - TM046
  (622, 62200, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 27),
  -- Golett - Self-Destruct - TM048
  (622, 62200, 120, 27, NULL, 2, NULL, NULL, 26002048, NULL, 28),
  -- Golett - Icy Wind - TM049
  (622, 62200, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 29),
  -- Golett - Safeguard - TM051
  (622, 62200, 219, 27, NULL, 2, NULL, NULL, 26002051, NULL, 30),
  -- Golett - Earth Power - TM052
  (622, 62200, 414, 27, NULL, 2, NULL, NULL, 26002052, NULL, 31),
  -- Golett - Double-Edge - TM056
  (622, 62200, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 32),
  -- Golett - Iron Head - TM058
  (622, 62200, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 33),
  -- Golett - Psychic - TM063
  (622, 62200, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 34),
  -- Golett - Earthquake - TM069
  (622, 62200, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 35),
  -- Golett - Shadow Ball - TM074
  (622, 62200, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 36),
  -- Golett - Bulldoze - TM078
  (622, 62200, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 37),
  -- Golett - Iron Defense - TM080
  (622, 62200, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 38),
  -- Golett - Substitute - TM085
  (622, 62200, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 39),
  -- Golett - Curse - TM091
  (622, 62200, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 40),
  -- Golett - Focus Blast - TM102
  (622, 62200, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 41),
  -- Golett - Comet Punch - TM108
  (622, 62200, 4, 27, NULL, 2, NULL, NULL, 26002108, NULL, 42),
  -- Golett - Facade - TM109
  (622, 62200, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 43),
  -- Golett - Low Sweep - TM113
  (622, 62200, 490, 27, NULL, 2, NULL, NULL, 26002113, NULL, 44),
  -- Golett - Shadow Punch - TM118
  (622, 62200, 325, 27, NULL, 2, NULL, NULL, 26002118, NULL, 45),
  -- Golett - Magnet Bomb - TM126
  (622, 62200, 443, 27, NULL, 2, NULL, NULL, 26002126, NULL, 46),
  -- Golett - Drain Punch - TM131
  (622, 62200, 409, 27, NULL, 2, NULL, NULL, 26002131, NULL, 47),
  -- Golett - Scorching Sands - TM136
  (622, 62200, 815, 27, NULL, 2, NULL, NULL, 26002136, NULL, 48),
  -- Golurk - Tackle - Level 1
  (623, 62300, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Golurk - Harden - Level 1
  (623, 62300, 106, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Golurk - Shadow Punch - Level 12
  (623, 62300, 325, 27, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Golurk - Curse - Level 16
  (623, 62300, 174, 27, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Golurk - Rollout - Level 18
  (623, 62300, 205, 27, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Golurk - Bulldoze - Level 22
  (623, 62300, 523, 27, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Golurk - Iron Defense - Level 28
  (623, 62300, 334, 27, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Golurk - Shadow Ball - Level 36
  (623, 62300, 247, 27, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Golurk - Heavy Slam - Level 42
  (623, 62300, 484, 27, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Golurk - Phantom Force - Level 48
  (623, 62300, 566, 27, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Golurk - Earthquake - Level 55
  (623, 62300, 89, 27, NULL, 1, 55, NULL, NULL, NULL, 11),
  -- Golurk - Dynamic Punch - Level 65
  (623, 62300, 223, 27, NULL, 1, 65, NULL, NULL, NULL, 12),
  -- Golurk - Brick Break - TM010
  (623, 62300, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 13),
  -- Golurk - Rock Slide - TM012
  (623, 62300, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 14),
  -- Golurk - Ice Beam - TM013
  (623, 62300, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 15),
  -- Golurk - Protect - TM017
  (623, 62300, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Golurk - Thunder Punch - TM023
  (623, 62300, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 17),
  -- Golurk - Ice Punch - TM024
  (623, 62300, 8, 27, NULL, 2, NULL, NULL, 26002024, NULL, 18),
  -- Golurk - Dig - TM028
  (623, 62300, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 19),
  -- Golurk - Fire Punch - TM029
  (623, 62300, 7, 27, NULL, 2, NULL, NULL, 26002029, NULL, 20),
  -- Golurk - Reflect - TM031
  (623, 62300, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 21),
  -- Golurk - Body Slam - TM033
  (623, 62300, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 22),
  -- Golurk - Endure - TM035
  (623, 62300, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Golurk - Rock Tomb - TM036
  (623, 62300, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 24),
  -- Golurk - Stealth Rock - TM037
  (623, 62300, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 25),
  -- Golurk - Fly - TM043
  (623, 62300, 19, 27, NULL, 2, NULL, NULL, 26002043, NULL, 26),
  -- Golurk - Hyper Beam - TM044
  (623, 62300, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 27),
  -- Golurk - Knock Off - TM045
  (623, 62300, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 28),
  -- Golurk - Mud Shot - TM046
  (623, 62300, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 29),
  -- Golurk - Self-Destruct - TM048
  (623, 62300, 120, 27, NULL, 2, NULL, NULL, 26002048, NULL, 30),
  -- Golurk - Icy Wind - TM049
  (623, 62300, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 31),
  -- Golurk - Safeguard - TM051
  (623, 62300, 219, 27, NULL, 2, NULL, NULL, 26002051, NULL, 32),
  -- Golurk - Earth Power - TM052
  (623, 62300, 414, 27, NULL, 2, NULL, NULL, 26002052, NULL, 33),
  -- Golurk - Giga Impact - TM055
  (623, 62300, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 34),
  -- Golurk - Double-Edge - TM056
  (623, 62300, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 35),
  -- Golurk - Iron Head - TM058
  (623, 62300, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 36),
  -- Golurk - Zen Headbutt - TM059
  (623, 62300, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 37),
  -- Golurk - Psychic - TM063
  (623, 62300, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 38),
  -- Golurk - Solar Beam - TM064
  (623, 62300, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 39),
  -- Golurk - Stone Edge - TM065
  (623, 62300, 444, 27, NULL, 2, NULL, NULL, 26002065, NULL, 40),
  -- Golurk - Thunderbolt - TM067
  (623, 62300, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 41),
  -- Golurk - Earthquake - TM069
  (623, 62300, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 42),
  -- Golurk - Shadow Ball - TM074
  (623, 62300, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 43),
  -- Golurk - Bulldoze - TM078
  (623, 62300, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 44),
  -- Golurk - Iron Defense - TM080
  (623, 62300, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 45),
  -- Golurk - Flash Cannon - TM084
  (623, 62300, 430, 27, NULL, 2, NULL, NULL, 26002084, NULL, 46),
  -- Golurk - Substitute - TM085
  (623, 62300, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 47),
  -- Golurk - Curse - TM091
  (623, 62300, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 48),
  -- Golurk - Focus Blast - TM102
  (623, 62300, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 49),
  -- Golurk - Close Combat - TM107
  (623, 62300, 370, 27, NULL, 2, NULL, NULL, 26002107, NULL, 50),
  -- Golurk - Comet Punch - TM108
  (623, 62300, 4, 27, NULL, 2, NULL, NULL, 26002108, NULL, 51),
  -- Golurk - Facade - TM109
  (623, 62300, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 52),
  -- Golurk - Low Sweep - TM113
  (623, 62300, 490, 27, NULL, 2, NULL, NULL, 26002113, NULL, 53),
  -- Golurk - Shadow Punch - TM118
  (623, 62300, 325, 27, NULL, 2, NULL, NULL, 26002118, NULL, 54),
  -- Golurk - Magnet Bomb - TM126
  (623, 62300, 443, 27, NULL, 2, NULL, NULL, 26002126, NULL, 55),
  -- Golurk - Charge Beam - TM130
  (623, 62300, 451, 27, NULL, 2, NULL, NULL, 26002130, NULL, 56),
  -- Golurk - Drain Punch - TM131
  (623, 62300, 409, 27, NULL, 2, NULL, NULL, 26002131, NULL, 57),
  -- Golurk - Scorching Sands - TM136
  (623, 62300, 815, 27, NULL, 2, NULL, NULL, 26002136, NULL, 58),
  -- Golurk - Skull Bash - TM146
  (623, 62300, 130, 27, NULL, 2, NULL, NULL, 26002146, NULL, 59),
  -- Golurk - Fissure - TM154
  (623, 62300, 90, 27, NULL, 2, NULL, NULL, 26002154, NULL, 60),
  -- Cobalion - Leer - Level 1
  (638, 63800, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cobalion - Quick Attack - Level 1
  (638, 63800, 98, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cobalion - Work Up - Level 1
  (638, 63800, 526, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Cobalion - Metal Claw - Level 7
  (638, 63800, 232, 27, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Cobalion - Body Slam - Level 14
  (638, 63800, 34, 27, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Cobalion - Take Down - Level 20
  (638, 63800, 36, 27, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Cobalion - Bounce - Level 26
  (638, 63800, 340, 27, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Cobalion - Aura Sphere - Level 30
  (638, 63800, 396, 27, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Cobalion - Heavy Slam - Level 34
  (638, 63800, 484, 27, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Cobalion - Air Slash - Level 38
  (638, 63800, 403, 27, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Cobalion - Megahorn - Level 42
  (638, 63800, 224, 27, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Cobalion - Sacred Sword - Level 49
  (638, 63800, 533, 27, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Cobalion - Swords Dance - Level 56
  (638, 63800, 14, 27, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Cobalion - Iron Head - Level 63
  (638, 63800, 442, 27, NULL, 1, 63, NULL, NULL, NULL, 14),
  -- Cobalion - Close Combat - Level 70
  (638, 63800, 370, 27, NULL, 1, 70, NULL, NULL, NULL, 15),
  -- Cobalion - Headbutt - TM001
  (638, 63800, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 16),
  -- Cobalion - Roar - TM005
  (638, 63800, 46, 27, NULL, 2, NULL, NULL, 26002005, NULL, 17),
  -- Cobalion - Calm Mind - TM006
  (638, 63800, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 18),
  -- Cobalion - Thunder Wave - TM008
  (638, 63800, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 19),
  -- Cobalion - Brick Break - TM010
  (638, 63800, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 20),
  -- Cobalion - Protect - TM017
  (638, 63800, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 21),
  -- Cobalion - Aerial Ace - TM022
  (638, 63800, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 22),
  -- Cobalion - Swift - TM027
  (638, 63800, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 23),
  -- Cobalion - Swords Dance - TM030
  (638, 63800, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 24),
  -- Cobalion - Reflect - TM031
  (638, 63800, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 25),
  -- Cobalion - Body Slam - TM033
  (638, 63800, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 26),
  -- Cobalion - Endure - TM035
  (638, 63800, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 27),
  -- Cobalion - Stealth Rock - TM037
  (638, 63800, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 28),
  -- Cobalion - Hyper Beam - TM044
  (638, 63800, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 29),
  -- Cobalion - Safeguard - TM051
  (638, 63800, 219, 27, NULL, 2, NULL, NULL, 26002051, NULL, 30),
  -- Cobalion - Giga Impact - TM055
  (638, 63800, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 31),
  -- Cobalion - Double-Edge - TM056
  (638, 63800, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 32),
  -- Cobalion - Iron Head - TM058
  (638, 63800, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 33),
  -- Cobalion - Zen Headbutt - TM059
  (638, 63800, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 34),
  -- Cobalion - Stone Edge - TM065
  (638, 63800, 444, 27, NULL, 2, NULL, NULL, 26002065, NULL, 35),
  -- Cobalion - Volt Switch - TM066
  (638, 63800, 521, 27, NULL, 2, NULL, NULL, 26002066, NULL, 36),
  -- Cobalion - Poison Jab - TM077
  (638, 63800, 398, 27, NULL, 2, NULL, NULL, 26002077, NULL, 37),
  -- Cobalion - Iron Defense - TM080
  (638, 63800, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 38),
  -- Cobalion - X-Scissor - TM081
  (638, 63800, 404, 27, NULL, 2, NULL, NULL, 26002081, NULL, 39),
  -- Cobalion - Flash Cannon - TM084
  (638, 63800, 430, 27, NULL, 2, NULL, NULL, 26002084, NULL, 40),
  -- Cobalion - Substitute - TM085
  (638, 63800, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 41),
  -- Cobalion - Taunt - TM095
  (638, 63800, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 42),
  -- Cobalion - Focus Blast - TM102
  (638, 63800, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 43),
  -- Cobalion - Work Up - TM103
  (638, 63800, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 44),
  -- Cobalion - Close Combat - TM107
  (638, 63800, 370, 27, NULL, 2, NULL, NULL, 26002107, NULL, 45),
  -- Cobalion - Facade - TM109
  (638, 63800, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 46),
  -- Cobalion - False Swipe - TM122
  (638, 63800, 206, 27, NULL, 2, NULL, NULL, 26002122, NULL, 47),
  -- Cobalion - Skull Bash - TM146
  (638, 63800, 130, 27, NULL, 2, NULL, NULL, 26002146, NULL, 48),
  -- Cobalion - Vacuum Wave - TM150
  (638, 63800, 410, 27, NULL, 2, NULL, NULL, 26002150, NULL, 49),
  -- Cobalion - Steel Beam - TM157
  (638, 63800, 796, 27, NULL, 2, NULL, NULL, 26002157, NULL, 50),
  -- Terrakion - Leer - Level 1
  (639, 63900, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Terrakion - Quick Attack - Level 1
  (639, 63900, 98, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Terrakion - Work Up - Level 1
  (639, 63900, 526, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Terrakion - Rock Throw - Level 7
  (639, 63900, 88, 27, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Terrakion - Body Slam - Level 14
  (639, 63900, 34, 27, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Terrakion - Take Down - Level 20
  (639, 63900, 36, 27, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Terrakion - Heavy Slam - Level 26
  (639, 63900, 484, 27, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Terrakion - Aura Sphere - Level 30
  (639, 63900, 396, 27, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Terrakion - Rock Blast - Level 34
  (639, 63900, 350, 27, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Terrakion - Rock Slide - Level 38
  (639, 63900, 157, 27, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Terrakion - Megahorn - Level 42
  (639, 63900, 224, 27, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Terrakion - Sacred Sword - Level 49
  (639, 63900, 533, 27, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Terrakion - Swords Dance - Level 56
  (639, 63900, 14, 27, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Terrakion - Stone Edge - Level 63
  (639, 63900, 444, 27, NULL, 1, 63, NULL, NULL, NULL, 14),
  -- Terrakion - Close Combat - Level 70
  (639, 63900, 370, 27, NULL, 1, 70, NULL, NULL, NULL, 15),
  -- Terrakion - Head Smash - Level 78
  (639, 63900, 457, 27, NULL, 1, 78, NULL, NULL, NULL, 16),
  -- Terrakion - Headbutt - TM001
  (639, 63900, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 17),
  -- Terrakion - Roar - TM005
  (639, 63900, 46, 27, NULL, 2, NULL, NULL, 26002005, NULL, 18),
  -- Terrakion - Calm Mind - TM006
  (639, 63900, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 19),
  -- Terrakion - Brick Break - TM010
  (639, 63900, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 20),
  -- Terrakion - Rock Slide - TM012
  (639, 63900, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 21),
  -- Terrakion - Protect - TM017
  (639, 63900, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 22),
  -- Terrakion - Aerial Ace - TM022
  (639, 63900, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 23),
  -- Terrakion - Swift - TM027
  (639, 63900, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 24),
  -- Terrakion - Swords Dance - TM030
  (639, 63900, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 25),
  -- Terrakion - Reflect - TM031
  (639, 63900, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 26),
  -- Terrakion - Body Slam - TM033
  (639, 63900, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 27),
  -- Terrakion - Endure - TM035
  (639, 63900, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 28),
  -- Terrakion - Rock Tomb - TM036
  (639, 63900, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 29),
  -- Terrakion - Stealth Rock - TM037
  (639, 63900, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 30),
  -- Terrakion - Hyper Beam - TM044
  (639, 63900, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 31),
  -- Terrakion - Safeguard - TM051
  (639, 63900, 219, 27, NULL, 2, NULL, NULL, 26002051, NULL, 32),
  -- Terrakion - Earth Power - TM052
  (639, 63900, 414, 27, NULL, 2, NULL, NULL, 26002052, NULL, 33),
  -- Terrakion - Giga Impact - TM055
  (639, 63900, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 34),
  -- Terrakion - Double-Edge - TM056
  (639, 63900, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 35),
  -- Terrakion - Iron Head - TM058
  (639, 63900, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 36),
  -- Terrakion - Zen Headbutt - TM059
  (639, 63900, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 37),
  -- Terrakion - Stone Edge - TM065
  (639, 63900, 444, 27, NULL, 2, NULL, NULL, 26002065, NULL, 38),
  -- Terrakion - Earthquake - TM069
  (639, 63900, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 39),
  -- Terrakion - Poison Jab - TM077
  (639, 63900, 398, 27, NULL, 2, NULL, NULL, 26002077, NULL, 40),
  -- Terrakion - Bulldoze - TM078
  (639, 63900, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 41),
  -- Terrakion - X-Scissor - TM081
  (639, 63900, 404, 27, NULL, 2, NULL, NULL, 26002081, NULL, 42),
  -- Terrakion - Substitute - TM085
  (639, 63900, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 43),
  -- Terrakion - Taunt - TM095
  (639, 63900, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 44),
  -- Terrakion - Focus Blast - TM102
  (639, 63900, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 45),
  -- Terrakion - Work Up - TM103
  (639, 63900, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 46),
  -- Terrakion - Close Combat - TM107
  (639, 63900, 370, 27, NULL, 2, NULL, NULL, 26002107, NULL, 47),
  -- Terrakion - Facade - TM109
  (639, 63900, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 48),
  -- Terrakion - False Swipe - TM122
  (639, 63900, 206, 27, NULL, 2, NULL, NULL, 26002122, NULL, 49),
  -- Terrakion - Skull Bash - TM146
  (639, 63900, 130, 27, NULL, 2, NULL, NULL, 26002146, NULL, 50),
  -- Virizion - Leer - Level 1
  (640, 64000, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Virizion - Quick Attack - Level 1
  (640, 64000, 98, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Virizion - Synthesis - Level 1
  (640, 64000, 235, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Virizion - Work Up - Level 1
  (640, 64000, 526, 27, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Virizion - Magical Leaf - Level 7
  (640, 64000, 345, 27, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Virizion - Body Slam - Level 14
  (640, 64000, 34, 27, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Virizion - Take Down - Level 20
  (640, 64000, 36, 27, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Virizion - Bounce - Level 26
  (640, 64000, 340, 27, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Virizion - Aura Sphere - Level 30
  (640, 64000, 396, 27, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Virizion - Horn Leech - Level 34
  (640, 64000, 532, 27, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Virizion - Air Slash - Level 38
  (640, 64000, 403, 27, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Virizion - Megahorn - Level 42
  (640, 64000, 224, 27, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Virizion - Sacred Sword - Level 49
  (640, 64000, 533, 27, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Virizion - Swords Dance - Level 56
  (640, 64000, 14, 27, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Virizion - Leaf Blade - Level 63
  (640, 64000, 348, 27, NULL, 1, 63, NULL, NULL, NULL, 15),
  -- Virizion - Close Combat - Level 70
  (640, 64000, 370, 27, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Virizion - Headbutt - TM001
  (640, 64000, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 17),
  -- Virizion - Roar - TM005
  (640, 64000, 46, 27, NULL, 2, NULL, NULL, 26002005, NULL, 18),
  -- Virizion - Calm Mind - TM006
  (640, 64000, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 19),
  -- Virizion - Brick Break - TM010
  (640, 64000, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 20),
  -- Virizion - Light Screen - TM016
  (640, 64000, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 21),
  -- Virizion - Protect - TM017
  (640, 64000, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 22),
  -- Virizion - Aerial Ace - TM022
  (640, 64000, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 23),
  -- Virizion - Energy Ball - TM026
  (640, 64000, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 24),
  -- Virizion - Swift - TM027
  (640, 64000, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 25),
  -- Virizion - Swords Dance - TM030
  (640, 64000, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 26),
  -- Virizion - Reflect - TM031
  (640, 64000, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 27),
  -- Virizion - Body Slam - TM033
  (640, 64000, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 28),
  -- Virizion - Endure - TM035
  (640, 64000, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 29),
  -- Virizion - Stealth Rock - TM037
  (640, 64000, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 30),
  -- Virizion - Bullet Seed - TM040
  (640, 64000, 331, 27, NULL, 2, NULL, NULL, 26002040, NULL, 31),
  -- Virizion - Giga Drain - TM042
  (640, 64000, 202, 27, NULL, 2, NULL, NULL, 26002042, NULL, 32),
  -- Virizion - Hyper Beam - TM044
  (640, 64000, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 33),
  -- Virizion - Safeguard - TM051
  (640, 64000, 219, 27, NULL, 2, NULL, NULL, 26002051, NULL, 34),
  -- Virizion - Giga Impact - TM055
  (640, 64000, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 35),
  -- Virizion - Double-Edge - TM056
  (640, 64000, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 36),
  -- Virizion - Zen Headbutt - TM059
  (640, 64000, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 37),
  -- Virizion - Solar Beam - TM064
  (640, 64000, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 38),
  -- Virizion - Stone Edge - TM065
  (640, 64000, 444, 27, NULL, 2, NULL, NULL, 26002065, NULL, 39),
  -- Virizion - Poison Jab - TM077
  (640, 64000, 398, 27, NULL, 2, NULL, NULL, 26002077, NULL, 40),
  -- Virizion - Iron Defense - TM080
  (640, 64000, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 41),
  -- Virizion - X-Scissor - TM081
  (640, 64000, 404, 27, NULL, 2, NULL, NULL, 26002081, NULL, 42),
  -- Virizion - Substitute - TM085
  (640, 64000, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 43),
  -- Virizion - Taunt - TM095
  (640, 64000, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 44),
  -- Virizion - Focus Blast - TM102
  (640, 64000, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 45),
  -- Virizion - Work Up - TM103
  (640, 64000, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 46),
  -- Virizion - Close Combat - TM107
  (640, 64000, 370, 27, NULL, 2, NULL, NULL, 26002107, NULL, 47),
  -- Virizion - Facade - TM109
  (640, 64000, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 48),
  -- Virizion - Trailblaze - TM115
  (640, 64000, 885, 27, NULL, 2, NULL, NULL, 26002115, NULL, 49),
  -- Virizion - False Swipe - TM122
  (640, 64000, 206, 27, NULL, 2, NULL, NULL, 26002122, NULL, 50),
  -- Virizion - Seed Bomb - TM128
  (640, 64000, 402, 27, NULL, 2, NULL, NULL, 26002128, NULL, 51),
  -- Virizion - Skull Bash - TM146
  (640, 64000, 130, 27, NULL, 2, NULL, NULL, 26002146, NULL, 52),
  -- Virizion - Vacuum Wave - TM150
  (640, 64000, 410, 27, NULL, 2, NULL, NULL, 26002150, NULL, 53),
  -- Virizion - Solar Blade - TM152
  (640, 64000, 669, 27, NULL, 2, NULL, NULL, 26002152, NULL, 54),
  -- Keldeo - Leer - Level 1
  (647, 64700, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Keldeo - Aqua Jet - Level 1
  (647, 64700, 453, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Keldeo - Work Up - Level 1
  (647, 64700, 526, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Keldeo - Secret Sword - Level 1
  (647, 64700, 548, 27, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Keldeo - Bubble Beam - Level 7
  (647, 64700, 61, 27, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Keldeo - Body Slam - Level 14
  (647, 64700, 34, 27, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Keldeo - Take Down - Level 20
  (647, 64700, 36, 27, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Keldeo - Bounce - Level 26
  (647, 64700, 340, 27, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Keldeo - Aura Sphere - Level 30
  (647, 64700, 396, 27, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Keldeo - Earth Power - Level 34
  (647, 64700, 414, 27, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Keldeo - Air Slash - Level 38
  (647, 64700, 403, 27, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Keldeo - Megahorn - Level 42
  (647, 64700, 224, 27, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Keldeo - Sacred Sword - Level 49
  (647, 64700, 533, 27, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Keldeo - Swords Dance - Level 56
  (647, 64700, 14, 27, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Keldeo - Hydro Pump - Level 63
  (647, 64700, 56, 27, NULL, 1, 63, NULL, NULL, NULL, 15),
  -- Keldeo - Close Combat - Level 70
  (647, 64700, 370, 27, NULL, 1, 70, NULL, NULL, NULL, 16),
  -- Keldeo - Headbutt - TM001
  (647, 64700, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 17),
  -- Keldeo - Roar - TM005
  (647, 64700, 46, 27, NULL, 2, NULL, NULL, 26002005, NULL, 18),
  -- Keldeo - Calm Mind - TM006
  (647, 64700, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 19),
  -- Keldeo - Flip Turn - TM009
  (647, 64700, 812, 27, NULL, 2, NULL, NULL, 26002009, NULL, 20),
  -- Keldeo - Brick Break - TM010
  (647, 64700, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 21),
  -- Keldeo - Ice Beam - TM013
  (647, 64700, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 22),
  -- Keldeo - Light Screen - TM016
  (647, 64700, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 23),
  -- Keldeo - Protect - TM017
  (647, 64700, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 24),
  -- Keldeo - Aerial Ace - TM022
  (647, 64700, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 25),
  -- Keldeo - Swift - TM027
  (647, 64700, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 26),
  -- Keldeo - Swords Dance - TM030
  (647, 64700, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 27),
  -- Keldeo - Reflect - TM031
  (647, 64700, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 28),
  -- Keldeo - Body Slam - TM033
  (647, 64700, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 29),
  -- Keldeo - Endure - TM035
  (647, 64700, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 30),
  -- Keldeo - Stealth Rock - TM037
  (647, 64700, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 31),
  -- Keldeo - Water Pulse - TM041
  (647, 64700, 352, 27, NULL, 2, NULL, NULL, 26002041, NULL, 32),
  -- Keldeo - Hyper Beam - TM044
  (647, 64700, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 33),
  -- Keldeo - Icy Wind - TM049
  (647, 64700, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 34),
  -- Keldeo - Safeguard - TM051
  (647, 64700, 219, 27, NULL, 2, NULL, NULL, 26002051, NULL, 35),
  -- Keldeo - Earth Power - TM052
  (647, 64700, 414, 27, NULL, 2, NULL, NULL, 26002052, NULL, 36),
  -- Keldeo - Giga Impact - TM055
  (647, 64700, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 37),
  -- Keldeo - Double-Edge - TM056
  (647, 64700, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 38),
  -- Keldeo - Zen Headbutt - TM059
  (647, 64700, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 39),
  -- Keldeo - Stone Edge - TM065
  (647, 64700, 444, 27, NULL, 2, NULL, NULL, 26002065, NULL, 40),
  -- Keldeo - Whirlpool - TM070
  (647, 64700, 250, 27, NULL, 2, NULL, NULL, 26002070, NULL, 41),
  -- Keldeo - Surf - TM073
  (647, 64700, 57, 27, NULL, 2, NULL, NULL, 26002073, NULL, 42),
  -- Keldeo - Liquidation - TM076
  (647, 64700, 710, 27, NULL, 2, NULL, NULL, 26002076, NULL, 43),
  -- Keldeo - Poison Jab - TM077
  (647, 64700, 398, 27, NULL, 2, NULL, NULL, 26002077, NULL, 44),
  -- Keldeo - X-Scissor - TM081
  (647, 64700, 404, 27, NULL, 2, NULL, NULL, 26002081, NULL, 45),
  -- Keldeo - Substitute - TM085
  (647, 64700, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 46),
  -- Keldeo - Taunt - TM095
  (647, 64700, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 47),
  -- Keldeo - Hydro Pump - TM096
  (647, 64700, 56, 27, NULL, 2, NULL, NULL, 26002096, NULL, 48),
  -- Keldeo - Waterfall - TM098
  (647, 64700, 127, 27, NULL, 2, NULL, NULL, 26002098, NULL, 49),
  -- Keldeo - Focus Blast - TM102
  (647, 64700, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 50),
  -- Keldeo - Work Up - TM103
  (647, 64700, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 51),
  -- Keldeo - Close Combat - TM107
  (647, 64700, 370, 27, NULL, 2, NULL, NULL, 26002107, NULL, 52),
  -- Keldeo - Facade - TM109
  (647, 64700, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 53),
  -- Keldeo - Chilling Water - TM110
  (647, 64700, 886, 27, NULL, 2, NULL, NULL, 26002110, NULL, 54),
  -- Keldeo - Trailblaze - TM115
  (647, 64700, 885, 27, NULL, 2, NULL, NULL, 26002115, NULL, 55),
  -- Keldeo - False Swipe - TM122
  (647, 64700, 206, 27, NULL, 2, NULL, NULL, 26002122, NULL, 56),
  -- Keldeo - Muddy Water - TM140
  (647, 64700, 330, 27, NULL, 2, NULL, NULL, 26002140, NULL, 57),
  -- Keldeo - Skull Bash - TM146
  (647, 64700, 130, 27, NULL, 2, NULL, NULL, 26002146, NULL, 58),
  -- Keldeo - Scald - TM148
  (647, 64700, 503, 27, NULL, 2, NULL, NULL, 26002148, NULL, 59),
  -- Keldeo - Vacuum Wave - TM150
  (647, 64700, 410, 27, NULL, 2, NULL, NULL, 26002150, NULL, 60),
  -- Meloetta - Sing - Level 1
  (648, 64800, 47, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meloetta - Confusion - Level 1
  (648, 64800, 93, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meloetta - Quick Attack - Level 1
  (648, 64800, 98, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Meloetta - Disarming Voice - Level 11
  (648, 64800, 574, 27, NULL, 1, 11, NULL, NULL, NULL, 4),
  -- Meloetta - Fake Tears - Level 14
  (648, 64800, 313, 27, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Meloetta - Swords Dance - Level 22
  (648, 64800, 14, 27, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Meloetta - Psybeam - Level 31
  (648, 64800, 60, 27, NULL, 1, 31, NULL, NULL, NULL, 7),
  -- Meloetta - U-turn - Level 43
  (648, 64800, 369, 27, NULL, 1, 43, NULL, NULL, NULL, 8),
  -- Meloetta - Relic Song - Level 50
  (648, 64800, 547, 27, NULL, 1, 50, NULL, NULL, NULL, 9),
  -- Meloetta - Psychic - Level 57
  (648, 64800, 94, 27, NULL, 1, 57, NULL, NULL, NULL, 10),
  -- Meloetta - Hyper Voice - Level 64
  (648, 64800, 304, 27, NULL, 1, 64, NULL, NULL, NULL, 11),
  -- Meloetta - Close Combat - Level 78
  (648, 64800, 370, 27, NULL, 1, 78, NULL, NULL, NULL, 12),
  -- Meloetta - Perish Song - Level 85
  (648, 64800, 195, 27, NULL, 1, 85, NULL, NULL, NULL, 13),
  -- Meloetta - Psyshock - TM003
  (648, 64800, 473, 27, NULL, 2, NULL, NULL, 26002003, NULL, 14),
  -- Meloetta - Calm Mind - TM006
  (648, 64800, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 15),
  -- Meloetta - Thunder Wave - TM008
  (648, 64800, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 16),
  -- Meloetta - Flip Turn - TM009
  (648, 64800, 812, 27, NULL, 2, NULL, NULL, 26002009, NULL, 17),
  -- Meloetta - Brick Break - TM010
  (648, 64800, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 18),
  -- Meloetta - Light Screen - TM016
  (648, 64800, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 19),
  -- Meloetta - Protect - TM017
  (648, 64800, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Meloetta - Power-Up Punch - TM018
  (648, 64800, 612, 27, NULL, 2, NULL, NULL, 26002018, NULL, 21),
  -- Meloetta - Power Gem - TM019
  (648, 64800, 408, 27, NULL, 2, NULL, NULL, 26002019, NULL, 22),
  -- Meloetta - Play Rough - TM020
  (648, 64800, 583, 27, NULL, 2, NULL, NULL, 26002020, NULL, 23),
  -- Meloetta - Thunder Punch - TM023
  (648, 64800, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 24),
  -- Meloetta - Ice Punch - TM024
  (648, 64800, 8, 27, NULL, 2, NULL, NULL, 26002024, NULL, 25),
  -- Meloetta - Energy Ball - TM026
  (648, 64800, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 26),
  -- Meloetta - Swift - TM027
  (648, 64800, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 27),
  -- Meloetta - Fire Punch - TM029
  (648, 64800, 7, 27, NULL, 2, NULL, NULL, 26002029, NULL, 28),
  -- Meloetta - Swords Dance - TM030
  (648, 64800, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 29),
  -- Meloetta - Double Team - TM032
  (648, 64800, 104, 27, NULL, 2, NULL, NULL, 26002032, NULL, 30),
  -- Meloetta - Endure - TM035
  (648, 64800, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 31),
  -- Meloetta - Hyper Beam - TM044
  (648, 64800, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 32),
  -- Meloetta - Knock Off - TM045
  (648, 64800, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 33),
  -- Meloetta - Agility - TM047
  (648, 64800, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 34),
  -- Meloetta - Giga Impact - TM055
  (648, 64800, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 35),
  -- Meloetta - Zen Headbutt - TM059
  (648, 64800, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 36),
  -- Meloetta - Shadow Claw - TM061
  (648, 64800, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 37),
  -- Meloetta - Psychic - TM063
  (648, 64800, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 38),
  -- Meloetta - Stone Edge - TM065
  (648, 64800, 444, 27, NULL, 2, NULL, NULL, 26002065, NULL, 39),
  -- Meloetta - Thunderbolt - TM067
  (648, 64800, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 40),
  -- Meloetta - Hyper Voice - TM071
  (648, 64800, 304, 27, NULL, 2, NULL, NULL, 26002071, NULL, 41),
  -- Meloetta - Shadow Ball - TM074
  (648, 64800, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 42),
  -- Meloetta - U-turn - TM082
  (648, 64800, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 43),
  -- Meloetta - Substitute - TM085
  (648, 64800, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 44),
  -- Meloetta - Dazzling Gleam - TM092
  (648, 64800, 605, 27, NULL, 2, NULL, NULL, 26002092, NULL, 45),
  -- Meloetta - Metronome - TM099
  (648, 64800, 118, 27, NULL, 2, NULL, NULL, 26002099, NULL, 46),
  -- Meloetta - Focus Blast - TM102
  (648, 64800, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 47),
  -- Meloetta - Work Up - TM103
  (648, 64800, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 48),
  -- Meloetta - Thunder - TM106
  (648, 64800, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 49),
  -- Meloetta - Close Combat - TM107
  (648, 64800, 370, 27, NULL, 2, NULL, NULL, 26002107, NULL, 50),
  -- Meloetta - Comet Punch - TM108
  (648, 64800, 4, 27, NULL, 2, NULL, NULL, 26002108, NULL, 51),
  -- Meloetta - Facade - TM109
  (648, 64800, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 52),
  -- Meloetta - Sing - TM111
  (648, 64800, 47, 27, NULL, 2, NULL, NULL, 26002111, NULL, 53),
  -- Meloetta - Low Sweep - TM113
  (648, 64800, 490, 27, NULL, 2, NULL, NULL, 26002113, NULL, 54),
  -- Meloetta - Mimic - TM125
  (648, 64800, 102, 27, NULL, 2, NULL, NULL, 26002125, NULL, 55),
  -- Meloetta - Dream Eater - TM127
  (648, 64800, 138, 27, NULL, 2, NULL, NULL, 26002127, NULL, 56),
  -- Meloetta - Charge Beam - TM130
  (648, 64800, 451, 27, NULL, 2, NULL, NULL, 26002130, NULL, 57),
  -- Meloetta - Drain Punch - TM131
  (648, 64800, 409, 27, NULL, 2, NULL, NULL, 26002131, NULL, 58),
  -- Meloetta - Triple Axel - TM144
  (648, 64800, 813, 27, NULL, 2, NULL, NULL, 26002144, NULL, 59),
  -- Meloetta - Petal Dance - TM151
  (648, 64800, 80, 27, NULL, 2, NULL, NULL, 26002151, NULL, 60),
  -- Genesect - Quick Attack - Level 1
  (649, 64900, 98, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Genesect - Techno Blast - Level 1
  (649, 64900, 546, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Genesect - Screech - Level 7
  (649, 64900, 103, 27, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Genesect - Metal Claw - Level 14
  (649, 64900, 232, 27, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Genesect - X-Scissor - Level 21
  (649, 64900, 404, 27, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Genesect - Flame Charge - Level 28
  (649, 64900, 488, 27, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Genesect - Metal Sound - Level 35
  (649, 64900, 319, 27, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Genesect - Lunge - Level 42
  (649, 64900, 679, 27, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Genesect - Flash Cannon - Level 45
  (649, 64900, 430, 27, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Genesect - Leech Life - Level 49
  (649, 64900, 141, 27, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Genesect - Bug Buzz - Level 56
  (649, 64900, 405, 27, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Genesect - Iron Head - Level 62
  (649, 64900, 442, 27, NULL, 1, 62, NULL, NULL, NULL, 12),
  -- Genesect - Zap Cannon - Level 70
  (649, 64900, 192, 27, NULL, 1, 70, NULL, NULL, NULL, 13),
  -- Genesect - Self-Destruct - Level 91
  (649, 64900, 120, 27, NULL, 1, 91, NULL, NULL, NULL, 14),
  -- Genesect - Thunder Wave - TM008
  (649, 64900, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 15),
  -- Genesect - Ice Beam - TM013
  (649, 64900, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 16),
  -- Genesect - Light Screen - TM016
  (649, 64900, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 17),
  -- Genesect - Protect - TM017
  (649, 64900, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Genesect - Energy Ball - TM026
  (649, 64900, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 19),
  -- Genesect - Swift - TM027
  (649, 64900, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 20),
  -- Genesect - Reflect - TM031
  (649, 64900, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 21),
  -- Genesect - Endure - TM035
  (649, 64900, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Genesect - Giga Drain - TM042
  (649, 64900, 202, 27, NULL, 2, NULL, NULL, 26002042, NULL, 23),
  -- Genesect - Fly - TM043
  (649, 64900, 19, 27, NULL, 2, NULL, NULL, 26002043, NULL, 24),
  -- Genesect - Hyper Beam - TM044
  (649, 64900, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 25),
  -- Genesect - Self-Destruct - TM048
  (649, 64900, 120, 27, NULL, 2, NULL, NULL, 26002048, NULL, 26),
  -- Genesect - Giga Impact - TM055
  (649, 64900, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 27),
  -- Genesect - Iron Head - TM058
  (649, 64900, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 28),
  -- Genesect - Zen Headbutt - TM059
  (649, 64900, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 29),
  -- Genesect - Shadow Claw - TM061
  (649, 64900, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 30),
  -- Genesect - Flamethrower - TM062
  (649, 64900, 53, 27, NULL, 2, NULL, NULL, 26002062, NULL, 31),
  -- Genesect - Psychic - TM063
  (649, 64900, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 32),
  -- Genesect - Solar Beam - TM064
  (649, 64900, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 33),
  -- Genesect - Thunderbolt - TM067
  (649, 64900, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 34),
  -- Genesect - Shadow Ball - TM074
  (649, 64900, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 35),
  -- Genesect - Iron Defense - TM080
  (649, 64900, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 36),
  -- Genesect - X-Scissor - TM081
  (649, 64900, 404, 27, NULL, 2, NULL, NULL, 26002081, NULL, 37),
  -- Genesect - U-turn - TM082
  (649, 64900, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 38),
  -- Genesect - Flash Cannon - TM084
  (649, 64900, 430, 27, NULL, 2, NULL, NULL, 26002084, NULL, 39),
  -- Genesect - Substitute - TM085
  (649, 64900, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 40),
  -- Genesect - Dark Pulse - TM090
  (649, 64900, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 41),
  -- Genesect - Gunk Shot - TM100
  (649, 64900, 441, 27, NULL, 2, NULL, NULL, 26002100, NULL, 42),
  -- Genesect - Electroweb - TM101
  (649, 64900, 527, 27, NULL, 2, NULL, NULL, 26002101, NULL, 43),
  -- Genesect - Blizzard - TM105
  (649, 64900, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 44),
  -- Genesect - Thunder - TM106
  (649, 64900, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 45),
  -- Genesect - Facade - TM109
  (649, 64900, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 46),
  -- Genesect - Flame Charge - TM114
  (649, 64900, 488, 27, NULL, 2, NULL, NULL, 26002114, NULL, 47),
  -- Genesect - Ancient Power - TM120
  (649, 64900, 246, 27, NULL, 2, NULL, NULL, 26002120, NULL, 48),
  -- Genesect - Magnet Bomb - TM126
  (649, 64900, 443, 27, NULL, 2, NULL, NULL, 26002126, NULL, 49),
  -- Genesect - Charge Beam - TM130
  (649, 64900, 451, 27, NULL, 2, NULL, NULL, 26002130, NULL, 50),
  -- Genesect - Blaze Kick - TM133
  (649, 64900, 299, 27, NULL, 2, NULL, NULL, 26002133, NULL, 51),
  -- Genesect - Skull Bash - TM146
  (649, 64900, 130, 27, NULL, 2, NULL, NULL, 26002146, NULL, 52),
  -- Genesect - Tri Attack - TM147
  (649, 64900, 161, 27, NULL, 2, NULL, NULL, 26002147, NULL, 53),
  -- Genesect - Steel Beam - TM157
  (649, 64900, 796, 27, NULL, 2, NULL, NULL, 26002157, NULL, 54),
  -- Genesect (Douse Drive) - Quick Attack - Level 1
  (649, 64901, 98, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Genesect (Douse Drive) - Techno Blast - Level 1
  (649, 64901, 546, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Genesect (Douse Drive) - Screech - Level 7
  (649, 64901, 103, 27, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Genesect (Douse Drive) - Metal Claw - Level 14
  (649, 64901, 232, 27, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Genesect (Douse Drive) - X-Scissor - Level 21
  (649, 64901, 404, 27, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Genesect (Douse Drive) - Flame Charge - Level 28
  (649, 64901, 488, 27, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Genesect (Douse Drive) - Metal Sound - Level 35
  (649, 64901, 319, 27, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Genesect (Douse Drive) - Lunge - Level 42
  (649, 64901, 679, 27, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Genesect (Douse Drive) - Flash Cannon - Level 45
  (649, 64901, 430, 27, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Genesect (Douse Drive) - Leech Life - Level 49
  (649, 64901, 141, 27, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Genesect (Douse Drive) - Bug Buzz - Level 56
  (649, 64901, 405, 27, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Genesect (Douse Drive) - Iron Head - Level 62
  (649, 64901, 442, 27, NULL, 1, 62, NULL, NULL, NULL, 12),
  -- Genesect (Douse Drive) - Zap Cannon - Level 70
  (649, 64901, 192, 27, NULL, 1, 70, NULL, NULL, NULL, 13),
  -- Genesect (Douse Drive) - Self-Destruct - Level 91
  (649, 64901, 120, 27, NULL, 1, 91, NULL, NULL, NULL, 14),
  -- Genesect (Douse Drive) - Thunder Wave - TM008
  (649, 64901, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 15),
  -- Genesect (Douse Drive) - Ice Beam - TM013
  (649, 64901, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 16),
  -- Genesect (Douse Drive) - Light Screen - TM016
  (649, 64901, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 17),
  -- Genesect (Douse Drive) - Protect - TM017
  (649, 64901, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Genesect (Douse Drive) - Energy Ball - TM026
  (649, 64901, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 19),
  -- Genesect (Douse Drive) - Swift - TM027
  (649, 64901, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 20),
  -- Genesect (Douse Drive) - Reflect - TM031
  (649, 64901, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 21),
  -- Genesect (Douse Drive) - Endure - TM035
  (649, 64901, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Genesect (Douse Drive) - Giga Drain - TM042
  (649, 64901, 202, 27, NULL, 2, NULL, NULL, 26002042, NULL, 23),
  -- Genesect (Douse Drive) - Fly - TM043
  (649, 64901, 19, 27, NULL, 2, NULL, NULL, 26002043, NULL, 24),
  -- Genesect (Douse Drive) - Hyper Beam - TM044
  (649, 64901, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 25),
  -- Genesect (Douse Drive) - Self-Destruct - TM048
  (649, 64901, 120, 27, NULL, 2, NULL, NULL, 26002048, NULL, 26),
  -- Genesect (Douse Drive) - Giga Impact - TM055
  (649, 64901, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 27),
  -- Genesect (Douse Drive) - Iron Head - TM058
  (649, 64901, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 28),
  -- Genesect (Douse Drive) - Zen Headbutt - TM059
  (649, 64901, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 29),
  -- Genesect (Douse Drive) - Shadow Claw - TM061
  (649, 64901, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 30),
  -- Genesect (Douse Drive) - Flamethrower - TM062
  (649, 64901, 53, 27, NULL, 2, NULL, NULL, 26002062, NULL, 31),
  -- Genesect (Douse Drive) - Psychic - TM063
  (649, 64901, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 32),
  -- Genesect (Douse Drive) - Solar Beam - TM064
  (649, 64901, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 33),
  -- Genesect (Douse Drive) - Thunderbolt - TM067
  (649, 64901, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 34),
  -- Genesect (Douse Drive) - Shadow Ball - TM074
  (649, 64901, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 35),
  -- Genesect (Douse Drive) - Iron Defense - TM080
  (649, 64901, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 36),
  -- Genesect (Douse Drive) - X-Scissor - TM081
  (649, 64901, 404, 27, NULL, 2, NULL, NULL, 26002081, NULL, 37),
  -- Genesect (Douse Drive) - U-turn - TM082
  (649, 64901, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 38),
  -- Genesect (Douse Drive) - Flash Cannon - TM084
  (649, 64901, 430, 27, NULL, 2, NULL, NULL, 26002084, NULL, 39),
  -- Genesect (Douse Drive) - Substitute - TM085
  (649, 64901, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 40),
  -- Genesect (Douse Drive) - Dark Pulse - TM090
  (649, 64901, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 41),
  -- Genesect (Douse Drive) - Gunk Shot - TM100
  (649, 64901, 441, 27, NULL, 2, NULL, NULL, 26002100, NULL, 42),
  -- Genesect (Douse Drive) - Electroweb - TM101
  (649, 64901, 527, 27, NULL, 2, NULL, NULL, 26002101, NULL, 43),
  -- Genesect (Douse Drive) - Blizzard - TM105
  (649, 64901, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 44),
  -- Genesect (Douse Drive) - Thunder - TM106
  (649, 64901, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 45),
  -- Genesect (Douse Drive) - Facade - TM109
  (649, 64901, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 46),
  -- Genesect (Douse Drive) - Flame Charge - TM114
  (649, 64901, 488, 27, NULL, 2, NULL, NULL, 26002114, NULL, 47),
  -- Genesect (Douse Drive) - Ancient Power - TM120
  (649, 64901, 246, 27, NULL, 2, NULL, NULL, 26002120, NULL, 48),
  -- Genesect (Douse Drive) - Magnet Bomb - TM126
  (649, 64901, 443, 27, NULL, 2, NULL, NULL, 26002126, NULL, 49),
  -- Genesect (Douse Drive) - Charge Beam - TM130
  (649, 64901, 451, 27, NULL, 2, NULL, NULL, 26002130, NULL, 50),
  -- Genesect (Douse Drive) - Blaze Kick - TM133
  (649, 64901, 299, 27, NULL, 2, NULL, NULL, 26002133, NULL, 51),
  -- Genesect (Douse Drive) - Skull Bash - TM146
  (649, 64901, 130, 27, NULL, 2, NULL, NULL, 26002146, NULL, 52),
  -- Genesect (Douse Drive) - Tri Attack - TM147
  (649, 64901, 161, 27, NULL, 2, NULL, NULL, 26002147, NULL, 53),
  -- Genesect (Douse Drive) - Steel Beam - TM157
  (649, 64901, 796, 27, NULL, 2, NULL, NULL, 26002157, NULL, 54),
  -- Genesect (Shock Drive) - Quick Attack - Level 1
  (649, 64902, 98, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Genesect (Shock Drive) - Techno Blast - Level 1
  (649, 64902, 546, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Genesect (Shock Drive) - Screech - Level 7
  (649, 64902, 103, 27, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Genesect (Shock Drive) - Metal Claw - Level 14
  (649, 64902, 232, 27, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Genesect (Shock Drive) - X-Scissor - Level 21
  (649, 64902, 404, 27, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Genesect (Shock Drive) - Flame Charge - Level 28
  (649, 64902, 488, 27, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Genesect (Shock Drive) - Metal Sound - Level 35
  (649, 64902, 319, 27, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Genesect (Shock Drive) - Lunge - Level 42
  (649, 64902, 679, 27, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Genesect (Shock Drive) - Flash Cannon - Level 45
  (649, 64902, 430, 27, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Genesect (Shock Drive) - Leech Life - Level 49
  (649, 64902, 141, 27, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Genesect (Shock Drive) - Bug Buzz - Level 56
  (649, 64902, 405, 27, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Genesect (Shock Drive) - Iron Head - Level 62
  (649, 64902, 442, 27, NULL, 1, 62, NULL, NULL, NULL, 12),
  -- Genesect (Shock Drive) - Zap Cannon - Level 70
  (649, 64902, 192, 27, NULL, 1, 70, NULL, NULL, NULL, 13),
  -- Genesect (Shock Drive) - Self-Destruct - Level 91
  (649, 64902, 120, 27, NULL, 1, 91, NULL, NULL, NULL, 14),
  -- Genesect (Shock Drive) - Thunder Wave - TM008
  (649, 64902, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 15),
  -- Genesect (Shock Drive) - Ice Beam - TM013
  (649, 64902, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 16),
  -- Genesect (Shock Drive) - Light Screen - TM016
  (649, 64902, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 17),
  -- Genesect (Shock Drive) - Protect - TM017
  (649, 64902, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Genesect (Shock Drive) - Energy Ball - TM026
  (649, 64902, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 19),
  -- Genesect (Shock Drive) - Swift - TM027
  (649, 64902, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 20),
  -- Genesect (Shock Drive) - Reflect - TM031
  (649, 64902, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 21),
  -- Genesect (Shock Drive) - Endure - TM035
  (649, 64902, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Genesect (Shock Drive) - Giga Drain - TM042
  (649, 64902, 202, 27, NULL, 2, NULL, NULL, 26002042, NULL, 23),
  -- Genesect (Shock Drive) - Fly - TM043
  (649, 64902, 19, 27, NULL, 2, NULL, NULL, 26002043, NULL, 24),
  -- Genesect (Shock Drive) - Hyper Beam - TM044
  (649, 64902, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 25),
  -- Genesect (Shock Drive) - Self-Destruct - TM048
  (649, 64902, 120, 27, NULL, 2, NULL, NULL, 26002048, NULL, 26),
  -- Genesect (Shock Drive) - Giga Impact - TM055
  (649, 64902, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 27),
  -- Genesect (Shock Drive) - Iron Head - TM058
  (649, 64902, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 28),
  -- Genesect (Shock Drive) - Zen Headbutt - TM059
  (649, 64902, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 29),
  -- Genesect (Shock Drive) - Shadow Claw - TM061
  (649, 64902, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 30),
  -- Genesect (Shock Drive) - Flamethrower - TM062
  (649, 64902, 53, 27, NULL, 2, NULL, NULL, 26002062, NULL, 31),
  -- Genesect (Shock Drive) - Psychic - TM063
  (649, 64902, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 32),
  -- Genesect (Shock Drive) - Solar Beam - TM064
  (649, 64902, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 33),
  -- Genesect (Shock Drive) - Thunderbolt - TM067
  (649, 64902, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 34),
  -- Genesect (Shock Drive) - Shadow Ball - TM074
  (649, 64902, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 35),
  -- Genesect (Shock Drive) - Iron Defense - TM080
  (649, 64902, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 36),
  -- Genesect (Shock Drive) - X-Scissor - TM081
  (649, 64902, 404, 27, NULL, 2, NULL, NULL, 26002081, NULL, 37),
  -- Genesect (Shock Drive) - U-turn - TM082
  (649, 64902, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 38),
  -- Genesect (Shock Drive) - Flash Cannon - TM084
  (649, 64902, 430, 27, NULL, 2, NULL, NULL, 26002084, NULL, 39),
  -- Genesect (Shock Drive) - Substitute - TM085
  (649, 64902, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 40),
  -- Genesect (Shock Drive) - Dark Pulse - TM090
  (649, 64902, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 41),
  -- Genesect (Shock Drive) - Gunk Shot - TM100
  (649, 64902, 441, 27, NULL, 2, NULL, NULL, 26002100, NULL, 42),
  -- Genesect (Shock Drive) - Electroweb - TM101
  (649, 64902, 527, 27, NULL, 2, NULL, NULL, 26002101, NULL, 43),
  -- Genesect (Shock Drive) - Blizzard - TM105
  (649, 64902, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 44),
  -- Genesect (Shock Drive) - Thunder - TM106
  (649, 64902, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 45),
  -- Genesect (Shock Drive) - Facade - TM109
  (649, 64902, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 46),
  -- Genesect (Shock Drive) - Flame Charge - TM114
  (649, 64902, 488, 27, NULL, 2, NULL, NULL, 26002114, NULL, 47),
  -- Genesect (Shock Drive) - Ancient Power - TM120
  (649, 64902, 246, 27, NULL, 2, NULL, NULL, 26002120, NULL, 48),
  -- Genesect (Shock Drive) - Magnet Bomb - TM126
  (649, 64902, 443, 27, NULL, 2, NULL, NULL, 26002126, NULL, 49),
  -- Genesect (Shock Drive) - Charge Beam - TM130
  (649, 64902, 451, 27, NULL, 2, NULL, NULL, 26002130, NULL, 50),
  -- Genesect (Shock Drive) - Blaze Kick - TM133
  (649, 64902, 299, 27, NULL, 2, NULL, NULL, 26002133, NULL, 51),
  -- Genesect (Shock Drive) - Skull Bash - TM146
  (649, 64902, 130, 27, NULL, 2, NULL, NULL, 26002146, NULL, 52),
  -- Genesect (Shock Drive) - Tri Attack - TM147
  (649, 64902, 161, 27, NULL, 2, NULL, NULL, 26002147, NULL, 53),
  -- Genesect (Shock Drive) - Steel Beam - TM157
  (649, 64902, 796, 27, NULL, 2, NULL, NULL, 26002157, NULL, 54),
  -- Genesect (Burn Drive) - Quick Attack - Level 1
  (649, 64903, 98, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Genesect (Burn Drive) - Techno Blast - Level 1
  (649, 64903, 546, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Genesect (Burn Drive) - Screech - Level 7
  (649, 64903, 103, 27, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Genesect (Burn Drive) - Metal Claw - Level 14
  (649, 64903, 232, 27, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Genesect (Burn Drive) - X-Scissor - Level 21
  (649, 64903, 404, 27, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Genesect (Burn Drive) - Flame Charge - Level 28
  (649, 64903, 488, 27, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Genesect (Burn Drive) - Metal Sound - Level 35
  (649, 64903, 319, 27, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Genesect (Burn Drive) - Lunge - Level 42
  (649, 64903, 679, 27, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Genesect (Burn Drive) - Flash Cannon - Level 45
  (649, 64903, 430, 27, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Genesect (Burn Drive) - Leech Life - Level 49
  (649, 64903, 141, 27, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Genesect (Burn Drive) - Bug Buzz - Level 56
  (649, 64903, 405, 27, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Genesect (Burn Drive) - Iron Head - Level 62
  (649, 64903, 442, 27, NULL, 1, 62, NULL, NULL, NULL, 12),
  -- Genesect (Burn Drive) - Zap Cannon - Level 70
  (649, 64903, 192, 27, NULL, 1, 70, NULL, NULL, NULL, 13),
  -- Genesect (Burn Drive) - Self-Destruct - Level 91
  (649, 64903, 120, 27, NULL, 1, 91, NULL, NULL, NULL, 14),
  -- Genesect (Burn Drive) - Thunder Wave - TM008
  (649, 64903, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 15),
  -- Genesect (Burn Drive) - Ice Beam - TM013
  (649, 64903, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 16),
  -- Genesect (Burn Drive) - Light Screen - TM016
  (649, 64903, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 17),
  -- Genesect (Burn Drive) - Protect - TM017
  (649, 64903, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Genesect (Burn Drive) - Energy Ball - TM026
  (649, 64903, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 19),
  -- Genesect (Burn Drive) - Swift - TM027
  (649, 64903, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 20),
  -- Genesect (Burn Drive) - Reflect - TM031
  (649, 64903, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 21),
  -- Genesect (Burn Drive) - Endure - TM035
  (649, 64903, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Genesect (Burn Drive) - Giga Drain - TM042
  (649, 64903, 202, 27, NULL, 2, NULL, NULL, 26002042, NULL, 23),
  -- Genesect (Burn Drive) - Fly - TM043
  (649, 64903, 19, 27, NULL, 2, NULL, NULL, 26002043, NULL, 24),
  -- Genesect (Burn Drive) - Hyper Beam - TM044
  (649, 64903, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 25),
  -- Genesect (Burn Drive) - Self-Destruct - TM048
  (649, 64903, 120, 27, NULL, 2, NULL, NULL, 26002048, NULL, 26),
  -- Genesect (Burn Drive) - Giga Impact - TM055
  (649, 64903, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 27),
  -- Genesect (Burn Drive) - Iron Head - TM058
  (649, 64903, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 28),
  -- Genesect (Burn Drive) - Zen Headbutt - TM059
  (649, 64903, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 29),
  -- Genesect (Burn Drive) - Shadow Claw - TM061
  (649, 64903, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 30),
  -- Genesect (Burn Drive) - Flamethrower - TM062
  (649, 64903, 53, 27, NULL, 2, NULL, NULL, 26002062, NULL, 31),
  -- Genesect (Burn Drive) - Psychic - TM063
  (649, 64903, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 32),
  -- Genesect (Burn Drive) - Solar Beam - TM064
  (649, 64903, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 33),
  -- Genesect (Burn Drive) - Thunderbolt - TM067
  (649, 64903, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 34),
  -- Genesect (Burn Drive) - Shadow Ball - TM074
  (649, 64903, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 35),
  -- Genesect (Burn Drive) - Iron Defense - TM080
  (649, 64903, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 36),
  -- Genesect (Burn Drive) - X-Scissor - TM081
  (649, 64903, 404, 27, NULL, 2, NULL, NULL, 26002081, NULL, 37),
  -- Genesect (Burn Drive) - U-turn - TM082
  (649, 64903, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 38),
  -- Genesect (Burn Drive) - Flash Cannon - TM084
  (649, 64903, 430, 27, NULL, 2, NULL, NULL, 26002084, NULL, 39),
  -- Genesect (Burn Drive) - Substitute - TM085
  (649, 64903, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 40),
  -- Genesect (Burn Drive) - Dark Pulse - TM090
  (649, 64903, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 41),
  -- Genesect (Burn Drive) - Gunk Shot - TM100
  (649, 64903, 441, 27, NULL, 2, NULL, NULL, 26002100, NULL, 42),
  -- Genesect (Burn Drive) - Electroweb - TM101
  (649, 64903, 527, 27, NULL, 2, NULL, NULL, 26002101, NULL, 43),
  -- Genesect (Burn Drive) - Blizzard - TM105
  (649, 64903, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 44),
  -- Genesect (Burn Drive) - Thunder - TM106
  (649, 64903, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 45),
  -- Genesect (Burn Drive) - Facade - TM109
  (649, 64903, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 46),
  -- Genesect (Burn Drive) - Flame Charge - TM114
  (649, 64903, 488, 27, NULL, 2, NULL, NULL, 26002114, NULL, 47),
  -- Genesect (Burn Drive) - Ancient Power - TM120
  (649, 64903, 246, 27, NULL, 2, NULL, NULL, 26002120, NULL, 48),
  -- Genesect (Burn Drive) - Magnet Bomb - TM126
  (649, 64903, 443, 27, NULL, 2, NULL, NULL, 26002126, NULL, 49),
  -- Genesect (Burn Drive) - Charge Beam - TM130
  (649, 64903, 451, 27, NULL, 2, NULL, NULL, 26002130, NULL, 50),
  -- Genesect (Burn Drive) - Blaze Kick - TM133
  (649, 64903, 299, 27, NULL, 2, NULL, NULL, 26002133, NULL, 51),
  -- Genesect (Burn Drive) - Skull Bash - TM146
  (649, 64903, 130, 27, NULL, 2, NULL, NULL, 26002146, NULL, 52),
  -- Genesect (Burn Drive) - Tri Attack - TM147
  (649, 64903, 161, 27, NULL, 2, NULL, NULL, 26002147, NULL, 53),
  -- Genesect (Burn Drive) - Steel Beam - TM157
  (649, 64903, 796, 27, NULL, 2, NULL, NULL, 26002157, NULL, 54),
  -- Genesect (Chill Drive) - Quick Attack - Level 1
  (649, 64904, 98, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Genesect (Chill Drive) - Techno Blast - Level 1
  (649, 64904, 546, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Genesect (Chill Drive) - Screech - Level 7
  (649, 64904, 103, 27, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Genesect (Chill Drive) - Metal Claw - Level 14
  (649, 64904, 232, 27, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Genesect (Chill Drive) - X-Scissor - Level 21
  (649, 64904, 404, 27, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Genesect (Chill Drive) - Flame Charge - Level 28
  (649, 64904, 488, 27, NULL, 1, 28, NULL, NULL, NULL, 6),
  -- Genesect (Chill Drive) - Metal Sound - Level 35
  (649, 64904, 319, 27, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Genesect (Chill Drive) - Lunge - Level 42
  (649, 64904, 679, 27, NULL, 1, 42, NULL, NULL, NULL, 8),
  -- Genesect (Chill Drive) - Flash Cannon - Level 45
  (649, 64904, 430, 27, NULL, 1, 45, NULL, NULL, NULL, 9),
  -- Genesect (Chill Drive) - Leech Life - Level 49
  (649, 64904, 141, 27, NULL, 1, 49, NULL, NULL, NULL, 10),
  -- Genesect (Chill Drive) - Bug Buzz - Level 56
  (649, 64904, 405, 27, NULL, 1, 56, NULL, NULL, NULL, 11),
  -- Genesect (Chill Drive) - Iron Head - Level 62
  (649, 64904, 442, 27, NULL, 1, 62, NULL, NULL, NULL, 12),
  -- Genesect (Chill Drive) - Zap Cannon - Level 70
  (649, 64904, 192, 27, NULL, 1, 70, NULL, NULL, NULL, 13),
  -- Genesect (Chill Drive) - Self-Destruct - Level 91
  (649, 64904, 120, 27, NULL, 1, 91, NULL, NULL, NULL, 14),
  -- Genesect (Chill Drive) - Thunder Wave - TM008
  (649, 64904, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 15),
  -- Genesect (Chill Drive) - Ice Beam - TM013
  (649, 64904, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 16),
  -- Genesect (Chill Drive) - Light Screen - TM016
  (649, 64904, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 17),
  -- Genesect (Chill Drive) - Protect - TM017
  (649, 64904, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Genesect (Chill Drive) - Energy Ball - TM026
  (649, 64904, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 19),
  -- Genesect (Chill Drive) - Swift - TM027
  (649, 64904, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 20),
  -- Genesect (Chill Drive) - Reflect - TM031
  (649, 64904, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 21),
  -- Genesect (Chill Drive) - Endure - TM035
  (649, 64904, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Genesect (Chill Drive) - Giga Drain - TM042
  (649, 64904, 202, 27, NULL, 2, NULL, NULL, 26002042, NULL, 23),
  -- Genesect (Chill Drive) - Fly - TM043
  (649, 64904, 19, 27, NULL, 2, NULL, NULL, 26002043, NULL, 24),
  -- Genesect (Chill Drive) - Hyper Beam - TM044
  (649, 64904, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 25),
  -- Genesect (Chill Drive) - Self-Destruct - TM048
  (649, 64904, 120, 27, NULL, 2, NULL, NULL, 26002048, NULL, 26),
  -- Genesect (Chill Drive) - Giga Impact - TM055
  (649, 64904, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 27),
  -- Genesect (Chill Drive) - Iron Head - TM058
  (649, 64904, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 28),
  -- Genesect (Chill Drive) - Zen Headbutt - TM059
  (649, 64904, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 29),
  -- Genesect (Chill Drive) - Shadow Claw - TM061
  (649, 64904, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 30),
  -- Genesect (Chill Drive) - Flamethrower - TM062
  (649, 64904, 53, 27, NULL, 2, NULL, NULL, 26002062, NULL, 31),
  -- Genesect (Chill Drive) - Psychic - TM063
  (649, 64904, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 32),
  -- Genesect (Chill Drive) - Solar Beam - TM064
  (649, 64904, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 33),
  -- Genesect (Chill Drive) - Thunderbolt - TM067
  (649, 64904, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 34),
  -- Genesect (Chill Drive) - Shadow Ball - TM074
  (649, 64904, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 35),
  -- Genesect (Chill Drive) - Iron Defense - TM080
  (649, 64904, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 36),
  -- Genesect (Chill Drive) - X-Scissor - TM081
  (649, 64904, 404, 27, NULL, 2, NULL, NULL, 26002081, NULL, 37),
  -- Genesect (Chill Drive) - U-turn - TM082
  (649, 64904, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 38),
  -- Genesect (Chill Drive) - Flash Cannon - TM084
  (649, 64904, 430, 27, NULL, 2, NULL, NULL, 26002084, NULL, 39),
  -- Genesect (Chill Drive) - Substitute - TM085
  (649, 64904, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 40),
  -- Genesect (Chill Drive) - Dark Pulse - TM090
  (649, 64904, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 41),
  -- Genesect (Chill Drive) - Gunk Shot - TM100
  (649, 64904, 441, 27, NULL, 2, NULL, NULL, 26002100, NULL, 42),
  -- Genesect (Chill Drive) - Electroweb - TM101
  (649, 64904, 527, 27, NULL, 2, NULL, NULL, 26002101, NULL, 43),
  -- Genesect (Chill Drive) - Blizzard - TM105
  (649, 64904, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 44),
  -- Genesect (Chill Drive) - Thunder - TM106
  (649, 64904, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 45),
  -- Genesect (Chill Drive) - Facade - TM109
  (649, 64904, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 46),
  -- Genesect (Chill Drive) - Flame Charge - TM114
  (649, 64904, 488, 27, NULL, 2, NULL, NULL, 26002114, NULL, 47),
  -- Genesect (Chill Drive) - Ancient Power - TM120
  (649, 64904, 246, 27, NULL, 2, NULL, NULL, 26002120, NULL, 48),
  -- Genesect (Chill Drive) - Magnet Bomb - TM126
  (649, 64904, 443, 27, NULL, 2, NULL, NULL, 26002126, NULL, 49),
  -- Genesect (Chill Drive) - Charge Beam - TM130
  (649, 64904, 451, 27, NULL, 2, NULL, NULL, 26002130, NULL, 50),
  -- Genesect (Chill Drive) - Blaze Kick - TM133
  (649, 64904, 299, 27, NULL, 2, NULL, NULL, 26002133, NULL, 51),
  -- Genesect (Chill Drive) - Skull Bash - TM146
  (649, 64904, 130, 27, NULL, 2, NULL, NULL, 26002146, NULL, 52),
  -- Genesect (Chill Drive) - Tri Attack - TM147
  (649, 64904, 161, 27, NULL, 2, NULL, NULL, 26002147, NULL, 53),
  -- Genesect (Chill Drive) - Steel Beam - TM157
  (649, 64904, 796, 27, NULL, 2, NULL, NULL, 26002157, NULL, 54);
