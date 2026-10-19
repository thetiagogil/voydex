-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Z-A Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Pokémon Legends: Z-A learnset pages during full row-level audit.
-- Scope note: Base ZA rows include numeric level-up, evolution-learned, and TM001-TM107 rows for Pokémon/forms available in the base ZA scope.
-- Reminder note: source Move Reminder rows are intentionally excluded until reminder/relearn behavior is modeled for this game.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Pokémon Legends: Z-A learnsets for species 301-350.
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
  -- Sableye - Tackle - Level 1
  (302, 30200, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sableye - Leer - Level 1
  (302, 30200, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sableye - Shadow Sneak - Level 9
  (302, 30200, 425, 26, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Sableye - Take Down - Level 15
  (302, 30200, 36, 26, NULL, 1, 15, NULL, NULL, NULL, 4),
  -- Sableye - Detect - Level 18
  (302, 30200, 197, 26, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Sableye - Shadow Claw - Level 20
  (302, 30200, 421, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Sableye - Confuse Ray - Level 22
  (302, 30200, 109, 26, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Sableye - Knock Off - Level 25
  (302, 30200, 282, 26, NULL, 1, 25, NULL, NULL, NULL, 8),
  -- Sableye - Psybeam - Level 28
  (302, 30200, 60, 26, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Sableye - Night Slash - Level 33
  (302, 30200, 400, 26, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Sableye - Power Gem - Level 39
  (302, 30200, 408, 26, NULL, 1, 39, NULL, NULL, NULL, 11),
  -- Sableye - Zen Headbutt - Level 42
  (302, 30200, 428, 26, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Sableye - Shadow Ball - Level 45
  (302, 30200, 247, 26, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Sableye - Recover - Level 50
  (302, 30200, 105, 26, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Sableye - Parting Shot - Level 53
  (302, 30200, 575, 26, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Sableye - Phantom Force - Level 56
  (302, 30200, 566, 26, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Sableye - Calm Mind - TM006
  (302, 30200, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 17),
  -- Sableye - Thunder Wave - TM008
  (302, 30200, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 18),
  -- Sableye - Brick Break - TM010
  (302, 30200, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 19),
  -- Sableye - Bulk Up - TM011
  (302, 30200, 339, 26, NULL, 2, NULL, NULL, 26002011, NULL, 20),
  -- Sableye - Light Screen - TM016
  (302, 30200, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 21),
  -- Sableye - Protect - TM017
  (302, 30200, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 22),
  -- Sableye - Power Gem - TM019
  (302, 30200, 408, 26, NULL, 2, NULL, NULL, 26002019, NULL, 23),
  -- Sableye - Aerial Ace - TM022
  (302, 30200, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 24),
  -- Sableye - Thunder Punch - TM023
  (302, 30200, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 25),
  -- Sableye - Ice Punch - TM024
  (302, 30200, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 26),
  -- Sableye - Energy Ball - TM026
  (302, 30200, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 27),
  -- Sableye - Dig - TM028
  (302, 30200, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 28),
  -- Sableye - Fire Punch - TM029
  (302, 30200, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 29),
  -- Sableye - Reflect - TM031
  (302, 30200, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 30),
  -- Sableye - Body Slam - TM033
  (302, 30200, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 31),
  -- Sableye - Night Slash - TM034
  (302, 30200, 400, 26, NULL, 2, NULL, NULL, 26002034, NULL, 32),
  -- Sableye - Endure - TM035
  (302, 30200, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 33),
  -- Sableye - Rock Tomb - TM036
  (302, 30200, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 34),
  -- Sableye - Giga Drain - TM042
  (302, 30200, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 35),
  -- Sableye - Hyper Beam - TM044
  (302, 30200, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 36),
  -- Sableye - Knock Off - TM045
  (302, 30200, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 37),
  -- Sableye - Mud Shot - TM046
  (302, 30200, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 38),
  -- Sableye - Safeguard - TM051
  (302, 30200, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 39),
  -- Sableye - Giga Impact - TM055
  (302, 30200, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 40),
  -- Sableye - Will-O-Wisp - TM057
  (302, 30200, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 41),
  -- Sableye - Zen Headbutt - TM059
  (302, 30200, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 42),
  -- Sableye - Shadow Claw - TM061
  (302, 30200, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 43),
  -- Sableye - Psychic - TM063
  (302, 30200, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 44),
  -- Sableye - Shadow Ball - TM074
  (302, 30200, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 45),
  -- Sableye - Poison Jab - TM077
  (302, 30200, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 46),
  -- Sableye - X-Scissor - TM081
  (302, 30200, 404, 26, NULL, 2, NULL, NULL, 26002081, NULL, 47),
  -- Sableye - Nasty Plot - TM083
  (302, 30200, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 48),
  -- Sableye - Substitute - TM085
  (302, 30200, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 49),
  -- Sableye - Dark Pulse - TM090
  (302, 30200, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 50),
  -- Sableye - Dazzling Gleam - TM092
  (302, 30200, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 51),
  -- Sableye - Taunt - TM095
  (302, 30200, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 52),
  -- Sableye - Heal Block - TM097
  (302, 30200, 377, 26, NULL, 2, NULL, NULL, 26002097, NULL, 53),
  -- Sableye - Metronome - TM099
  (302, 30200, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 54),
  -- Mawile - Bite - Level 1
  (303, 30300, 44, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mawile - Fairy Wind - Level 1
  (303, 30300, 584, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mawile - Fake Tears - Level 5
  (303, 30300, 313, 26, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Mawile - Knock Off - Level 16
  (303, 30300, 282, 26, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Mawile - Charm - Level 20
  (303, 30300, 204, 26, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Mawile - Draining Kiss - Level 22
  (303, 30300, 577, 26, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Mawile - Iron Defense - Level 24
  (303, 30300, 334, 26, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Mawile - Crunch - Level 28
  (303, 30300, 242, 26, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Mawile - Iron Head - Level 36
  (303, 30300, 442, 26, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Mawile - Taunt - Level 40
  (303, 30300, 269, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Mawile - Play Rough - Level 48
  (303, 30300, 583, 26, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Mawile - Dynamic Punch - Level 55
  (303, 30300, 223, 26, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Mawile - Headbutt - TM001
  (303, 30300, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 13),
  -- Mawile - Rock Smash - TM004
  (303, 30300, 249, 26, NULL, 2, NULL, NULL, 26002004, NULL, 14),
  -- Mawile - Brick Break - TM010
  (303, 30300, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 15),
  -- Mawile - Rock Slide - TM012
  (303, 30300, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 16),
  -- Mawile - Ice Beam - TM013
  (303, 30300, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 17),
  -- Mawile - Fire Fang - TM014
  (303, 30300, 424, 26, NULL, 2, NULL, NULL, 26002014, NULL, 18),
  -- Mawile - Ice Fang - TM015
  (303, 30300, 423, 26, NULL, 2, NULL, NULL, 26002015, NULL, 19),
  -- Mawile - Protect - TM017
  (303, 30300, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Mawile - Power-Up Punch - TM018
  (303, 30300, 612, 26, NULL, 2, NULL, NULL, 26002018, NULL, 21),
  -- Mawile - Play Rough - TM020
  (303, 30300, 583, 26, NULL, 2, NULL, NULL, 26002020, NULL, 22),
  -- Mawile - Thunder Fang - TM021
  (303, 30300, 422, 26, NULL, 2, NULL, NULL, 26002021, NULL, 23),
  -- Mawile - Thunder Punch - TM023
  (303, 30300, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 24),
  -- Mawile - Ice Punch - TM024
  (303, 30300, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 25),
  -- Mawile - Crunch - TM025
  (303, 30300, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 26),
  -- Mawile - Swords Dance - TM030
  (303, 30300, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 27),
  -- Mawile - Double Team - TM032
  (303, 30300, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 28),
  -- Mawile - Body Slam - TM033
  (303, 30300, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 29),
  -- Mawile - Endure - TM035
  (303, 30300, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 30),
  -- Mawile - Rock Tomb - TM036
  (303, 30300, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 31),
  -- Mawile - Stealth Rock - TM037
  (303, 30300, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 32),
  -- Mawile - Fire Blast - TM038
  (303, 30300, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 33),
  -- Mawile - Hyper Beam - TM044
  (303, 30300, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 34),
  -- Mawile - Knock Off - TM045
  (303, 30300, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 35),
  -- Mawile - Sludge Bomb - TM053
  (303, 30300, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 36),
  -- Mawile - Giga Impact - TM055
  (303, 30300, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 37),
  -- Mawile - Double-Edge - TM056
  (303, 30300, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 38),
  -- Mawile - Iron Head - TM058
  (303, 30300, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 39),
  -- Mawile - Flamethrower - TM062
  (303, 30300, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 40),
  -- Mawile - Solar Beam - TM064
  (303, 30300, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 41),
  -- Mawile - Stone Edge - TM065
  (303, 30300, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 42),
  -- Mawile - Shadow Ball - TM074
  (303, 30300, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 43),
  -- Mawile - Iron Defense - TM080
  (303, 30300, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 44),
  -- Mawile - Flash Cannon - TM084
  (303, 30300, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 45),
  -- Mawile - Substitute - TM085
  (303, 30300, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 46),
  -- Mawile - Dark Pulse - TM090
  (303, 30300, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 47),
  -- Mawile - Dazzling Gleam - TM092
  (303, 30300, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 48),
  -- Mawile - Taunt - TM095
  (303, 30300, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 49),
  -- Mawile - Focus Blast - TM102
  (303, 30300, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 50),
  -- Aron - Tackle - Level 1
  (304, 30400, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aron - Screech - Level 1
  (304, 30400, 103, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Aron - Harden - Level 1
  (304, 30400, 106, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Aron - Metal Claw - Level 7
  (304, 30400, 232, 26, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Aron - Rock Tomb - Level 8
  (304, 30400, 317, 26, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Aron - Roar - Level 12
  (304, 30400, 46, 26, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Aron - Headbutt - Level 16
  (304, 30400, 29, 26, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Aron - Protect - Level 20
  (304, 30400, 182, 26, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Aron - Rock Slide - Level 24
  (304, 30400, 157, 26, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Aron - Iron Head - Level 28
  (304, 30400, 442, 26, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Aron - Metal Sound - Level 33
  (304, 30400, 319, 26, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Aron - Take Down - Level 36
  (304, 30400, 36, 26, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Aron - Iron Tail - Level 44
  (304, 30400, 231, 26, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Aron - Iron Defense - Level 48
  (304, 30400, 334, 26, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Aron - Heavy Slam - Level 52
  (304, 30400, 484, 26, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Aron - Double-Edge - Level 56
  (304, 30400, 38, 26, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Aron - Head Smash - Level 66
  (304, 30400, 457, 26, NULL, 1, 66, NULL, NULL, NULL, 17),
  -- Aron - Headbutt - TM001
  (304, 30400, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 18),
  -- Aron - Roar - TM005
  (304, 30400, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 19),
  -- Aron - Rock Slide - TM012
  (304, 30400, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 20),
  -- Aron - Protect - TM017
  (304, 30400, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 21),
  -- Aron - Dig - TM028
  (304, 30400, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 22),
  -- Aron - Body Slam - TM033
  (304, 30400, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 23),
  -- Aron - Endure - TM035
  (304, 30400, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 24),
  -- Aron - Rock Tomb - TM036
  (304, 30400, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 25),
  -- Aron - Stealth Rock - TM037
  (304, 30400, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 26),
  -- Aron - Mud Shot - TM046
  (304, 30400, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 27),
  -- Aron - Earth Power - TM052
  (304, 30400, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 28),
  -- Aron - Double-Edge - TM056
  (304, 30400, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 29),
  -- Aron - Iron Head - TM058
  (304, 30400, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 30),
  -- Aron - Shadow Claw - TM061
  (304, 30400, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 31),
  -- Aron - Earthquake - TM069
  (304, 30400, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 32),
  -- Aron - Bulldoze - TM078
  (304, 30400, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 33),
  -- Aron - Iron Defense - TM080
  (304, 30400, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 34),
  -- Aron - Substitute - TM085
  (304, 30400, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 35),
  -- Aron - Iron Tail - TM087
  (304, 30400, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 36),
  -- Lairon - Tackle - Level 1
  (305, 30500, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Lairon - Screech - Level 1
  (305, 30500, 103, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Lairon - Harden - Level 1
  (305, 30500, 106, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Lairon - Metal Claw - Level 7
  (305, 30500, 232, 26, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Lairon - Rock Tomb - Level 8
  (305, 30500, 317, 26, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Lairon - Roar - Level 12
  (305, 30500, 46, 26, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Lairon - Headbutt - Level 16
  (305, 30500, 29, 26, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Lairon - Protect - Level 20
  (305, 30500, 182, 26, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Lairon - Rock Slide - Level 24
  (305, 30500, 157, 26, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Lairon - Iron Head - Level 28
  (305, 30500, 442, 26, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Lairon - Metal Sound - Level 33
  (305, 30500, 319, 26, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Lairon - Take Down - Level 36
  (305, 30500, 36, 26, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Lairon - Iron Tail - Level 44
  (305, 30500, 231, 26, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Lairon - Iron Defense - Level 48
  (305, 30500, 334, 26, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Lairon - Heavy Slam - Level 52
  (305, 30500, 484, 26, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Lairon - Double-Edge - Level 56
  (305, 30500, 38, 26, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Lairon - Head Smash - Level 66
  (305, 30500, 457, 26, NULL, 1, 66, NULL, NULL, NULL, 17),
  -- Lairon - Headbutt - TM001
  (305, 30500, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 18),
  -- Lairon - Roar - TM005
  (305, 30500, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 19),
  -- Lairon - Rock Slide - TM012
  (305, 30500, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 20),
  -- Lairon - Protect - TM017
  (305, 30500, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 21),
  -- Lairon - Dig - TM028
  (305, 30500, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 22),
  -- Lairon - Body Slam - TM033
  (305, 30500, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 23),
  -- Lairon - Endure - TM035
  (305, 30500, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 24),
  -- Lairon - Rock Tomb - TM036
  (305, 30500, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 25),
  -- Lairon - Stealth Rock - TM037
  (305, 30500, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 26),
  -- Lairon - Mud Shot - TM046
  (305, 30500, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 27),
  -- Lairon - Earth Power - TM052
  (305, 30500, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 28),
  -- Lairon - Double-Edge - TM056
  (305, 30500, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 29),
  -- Lairon - Iron Head - TM058
  (305, 30500, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 30),
  -- Lairon - Shadow Claw - TM061
  (305, 30500, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 31),
  -- Lairon - Stone Edge - TM065
  (305, 30500, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 32),
  -- Lairon - Earthquake - TM069
  (305, 30500, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 33),
  -- Lairon - Bulldoze - TM078
  (305, 30500, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 34),
  -- Lairon - Iron Defense - TM080
  (305, 30500, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 35),
  -- Lairon - Substitute - TM085
  (305, 30500, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 36),
  -- Lairon - Iron Tail - TM087
  (305, 30500, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 37),
  -- Aggron - Tackle - Level 1
  (306, 30600, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Aggron - Screech - Level 1
  (306, 30600, 103, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Aggron - Harden - Level 1
  (306, 30600, 106, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Aggron - Metal Claw - Level 7
  (306, 30600, 232, 26, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Aggron - Rock Tomb - Level 8
  (306, 30600, 317, 26, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Aggron - Roar - Level 12
  (306, 30600, 46, 26, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Aggron - Headbutt - Level 16
  (306, 30600, 29, 26, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Aggron - Protect - Level 20
  (306, 30600, 182, 26, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Aggron - Rock Slide - Level 24
  (306, 30600, 157, 26, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Aggron - Iron Head - Level 28
  (306, 30600, 442, 26, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Aggron - Metal Sound - Level 33
  (306, 30600, 319, 26, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Aggron - Take Down - Level 36
  (306, 30600, 36, 26, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Aggron - Iron Tail - Level 44
  (306, 30600, 231, 26, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Aggron - Iron Defense - Level 48
  (306, 30600, 334, 26, NULL, 1, 48, NULL, NULL, NULL, 14),
  -- Aggron - Heavy Slam - Level 52
  (306, 30600, 484, 26, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Aggron - Double-Edge - Level 56
  (306, 30600, 38, 26, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Aggron - Head Smash - Level 66
  (306, 30600, 457, 26, NULL, 1, 66, NULL, NULL, NULL, 17),
  -- Aggron - Headbutt - TM001
  (306, 30600, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 18),
  -- Aggron - Dragon Claw - TM002
  (306, 30600, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 19),
  -- Aggron - Roar - TM005
  (306, 30600, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 20),
  -- Aggron - Thunder Wave - TM008
  (306, 30600, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 21),
  -- Aggron - Brick Break - TM010
  (306, 30600, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 22),
  -- Aggron - Rock Slide - TM012
  (306, 30600, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 23),
  -- Aggron - Ice Beam - TM013
  (306, 30600, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 24),
  -- Aggron - Protect - TM017
  (306, 30600, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 25),
  -- Aggron - Power-Up Punch - TM018
  (306, 30600, 612, 26, NULL, 2, NULL, NULL, 26002018, 'Version 2.0.0 onwards.', 26),
  -- Aggron - Thunder Punch - TM023
  (306, 30600, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 27),
  -- Aggron - Ice Punch - TM024
  (306, 30600, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 28),
  -- Aggron - Crunch - TM025
  (306, 30600, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 29),
  -- Aggron - Dig - TM028
  (306, 30600, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 30),
  -- Aggron - Fire Punch - TM029
  (306, 30600, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 31),
  -- Aggron - Body Slam - TM033
  (306, 30600, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 32),
  -- Aggron - Endure - TM035
  (306, 30600, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 33),
  -- Aggron - Rock Tomb - TM036
  (306, 30600, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 34),
  -- Aggron - Stealth Rock - TM037
  (306, 30600, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 35),
  -- Aggron - Fire Blast - TM038
  (306, 30600, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 36),
  -- Aggron - Hyper Beam - TM044
  (306, 30600, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 37),
  -- Aggron - Mud Shot - TM046
  (306, 30600, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 38),
  -- Aggron - Earth Power - TM052
  (306, 30600, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 39),
  -- Aggron - Giga Impact - TM055
  (306, 30600, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 40),
  -- Aggron - Double-Edge - TM056
  (306, 30600, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 41),
  -- Aggron - Iron Head - TM058
  (306, 30600, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 42),
  -- Aggron - Shadow Claw - TM061
  (306, 30600, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 43),
  -- Aggron - Flamethrower - TM062
  (306, 30600, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 44),
  -- Aggron - Solar Beam - TM064
  (306, 30600, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 45),
  -- Aggron - Stone Edge - TM065
  (306, 30600, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 46),
  -- Aggron - Thunderbolt - TM067
  (306, 30600, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 47),
  -- Aggron - Earthquake - TM069
  (306, 30600, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 48),
  -- Aggron - Whirlpool - TM070
  (306, 30600, 250, 26, NULL, 2, NULL, NULL, 26002070, NULL, 49),
  -- Aggron - Surf - TM073
  (306, 30600, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 50),
  -- Aggron - Dragon Pulse - TM075
  (306, 30600, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 51),
  -- Aggron - Bulldoze - TM078
  (306, 30600, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 52),
  -- Aggron - Iron Defense - TM080
  (306, 30600, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 53),
  -- Aggron - Substitute - TM085
  (306, 30600, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 54),
  -- Aggron - Iron Tail - TM087
  (306, 30600, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 55),
  -- Aggron - Dark Pulse - TM090
  (306, 30600, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 56),
  -- Aggron - Outrage - TM093
  (306, 30600, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 57),
  -- Aggron - Hydro Pump - TM096
  (306, 30600, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 58),
  -- Aggron - Focus Blast - TM102
  (306, 30600, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 59),
  -- Aggron - Blizzard - TM105
  (306, 30600, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 60),
  -- Aggron - Thunder - TM106
  (306, 30600, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 61),
  -- Meditite - Confusion - Level 1
  (307, 30700, 93, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meditite - Work Up - Level 1
  (307, 30700, 526, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meditite - Detect - Level 9
  (307, 30700, 197, 26, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Meditite - Endure - Level 12
  (307, 30700, 203, 26, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Meditite - Rock Smash - Level 14
  (307, 30700, 249, 26, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Meditite - Bullet Punch - Level 16
  (307, 30700, 418, 26, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Meditite - Psybeam - Level 20
  (307, 30700, 60, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Meditite - Calm Mind - Level 23
  (307, 30700, 347, 26, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Meditite - Zen Headbutt - Level 25
  (307, 30700, 428, 26, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Meditite - Take Down - Level 30
  (307, 30700, 36, 26, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Meditite - Recover - Level 41
  (307, 30700, 105, 26, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Meditite - Dynamic Punch - Level 52
  (307, 30700, 223, 26, NULL, 1, 52, NULL, NULL, NULL, 12),
  -- Meditite - Psyshock - TM003
  (307, 30700, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 13),
  -- Meditite - Rock Smash - TM004
  (307, 30700, 249, 26, NULL, 2, NULL, NULL, 26002004, NULL, 14),
  -- Meditite - Calm Mind - TM006
  (307, 30700, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 15),
  -- Meditite - Brick Break - TM010
  (307, 30700, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 16),
  -- Meditite - Bulk Up - TM011
  (307, 30700, 339, 26, NULL, 2, NULL, NULL, 26002011, NULL, 17),
  -- Meditite - Rock Slide - TM012
  (307, 30700, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 18),
  -- Meditite - Light Screen - TM016
  (307, 30700, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 19),
  -- Meditite - Protect - TM017
  (307, 30700, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Meditite - Power-Up Punch - TM018
  (307, 30700, 612, 26, NULL, 2, NULL, NULL, 26002018, NULL, 21),
  -- Meditite - Aerial Ace - TM022
  (307, 30700, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 22),
  -- Meditite - Thunder Punch - TM023
  (307, 30700, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 23),
  -- Meditite - Ice Punch - TM024
  (307, 30700, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 24),
  -- Meditite - Swift - TM027
  (307, 30700, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 25),
  -- Meditite - Fire Punch - TM029
  (307, 30700, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 26),
  -- Meditite - Reflect - TM031
  (307, 30700, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 27),
  -- Meditite - Body Slam - TM033
  (307, 30700, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 28),
  -- Meditite - Endure - TM035
  (307, 30700, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 29),
  -- Meditite - Rock Tomb - TM036
  (307, 30700, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 30),
  -- Meditite - Zen Headbutt - TM059
  (307, 30700, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 31),
  -- Meditite - Psychic - TM063
  (307, 30700, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 32),
  -- Meditite - Shadow Ball - TM074
  (307, 30700, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 33),
  -- Meditite - Poison Jab - TM077
  (307, 30700, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 34),
  -- Meditite - Substitute - TM085
  (307, 30700, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 35),
  -- Meditite - Taunt - TM095
  (307, 30700, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 36),
  -- Meditite - Metronome - TM099
  (307, 30700, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 37),
  -- Meditite - Focus Blast - TM102
  (307, 30700, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 38),
  -- Meditite - Work Up - TM103
  (307, 30700, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 39),
  -- Meditite - Close Combat - TM107
  (307, 30700, 370, 26, NULL, 2, NULL, NULL, 26002107, NULL, 40),
  -- Medicham - Confusion - Level 1
  (308, 30800, 93, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Medicham - Work Up - Level 1
  (308, 30800, 526, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Medicham - Detect - Level 9
  (308, 30800, 197, 26, NULL, 1, 9, NULL, NULL, NULL, 3),
  -- Medicham - Endure - Level 12
  (308, 30800, 203, 26, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Medicham - Rock Smash - Level 14
  (308, 30800, 249, 26, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Medicham - Bullet Punch - Level 16
  (308, 30800, 418, 26, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Medicham - Psybeam - Level 20
  (308, 30800, 60, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Medicham - Calm Mind - Level 23
  (308, 30800, 347, 26, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Medicham - Zen Headbutt - Level 25
  (308, 30800, 428, 26, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Medicham - Take Down - Level 30
  (308, 30800, 36, 26, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Medicham - Agility - Level 34
  (308, 30800, 97, 26, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Medicham - Recover - Level 41
  (308, 30800, 105, 26, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Medicham - Dynamic Punch - Level 52
  (308, 30800, 223, 26, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Medicham - Psyshock - TM003
  (308, 30800, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 14),
  -- Medicham - Rock Smash - TM004
  (308, 30800, 249, 26, NULL, 2, NULL, NULL, 26002004, NULL, 15),
  -- Medicham - Calm Mind - TM006
  (308, 30800, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 16),
  -- Medicham - Brick Break - TM010
  (308, 30800, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 17),
  -- Medicham - Bulk Up - TM011
  (308, 30800, 339, 26, NULL, 2, NULL, NULL, 26002011, NULL, 18),
  -- Medicham - Rock Slide - TM012
  (308, 30800, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 19),
  -- Medicham - Light Screen - TM016
  (308, 30800, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 20),
  -- Medicham - Protect - TM017
  (308, 30800, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 21),
  -- Medicham - Power-Up Punch - TM018
  (308, 30800, 612, 26, NULL, 2, NULL, NULL, 26002018, NULL, 22),
  -- Medicham - Aerial Ace - TM022
  (308, 30800, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 23),
  -- Medicham - Thunder Punch - TM023
  (308, 30800, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 24),
  -- Medicham - Ice Punch - TM024
  (308, 30800, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 25),
  -- Medicham - Swift - TM027
  (308, 30800, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 26),
  -- Medicham - Fire Punch - TM029
  (308, 30800, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 27),
  -- Medicham - Reflect - TM031
  (308, 30800, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 28),
  -- Medicham - Body Slam - TM033
  (308, 30800, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 29),
  -- Medicham - Endure - TM035
  (308, 30800, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 30),
  -- Medicham - Rock Tomb - TM036
  (308, 30800, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 31),
  -- Medicham - Hyper Beam - TM044
  (308, 30800, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 32),
  -- Medicham - Agility - TM047
  (308, 30800, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 33),
  -- Medicham - Giga Impact - TM055
  (308, 30800, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 34),
  -- Medicham - Zen Headbutt - TM059
  (308, 30800, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 35),
  -- Medicham - Psychic - TM063
  (308, 30800, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 36),
  -- Medicham - Shadow Ball - TM074
  (308, 30800, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 37),
  -- Medicham - Poison Jab - TM077
  (308, 30800, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 38),
  -- Medicham - Substitute - TM085
  (308, 30800, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 39),
  -- Medicham - Taunt - TM095
  (308, 30800, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 40),
  -- Medicham - Metronome - TM099
  (308, 30800, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 41),
  -- Medicham - Focus Blast - TM102
  (308, 30800, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 42),
  -- Medicham - Work Up - TM103
  (308, 30800, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 43),
  -- Medicham - Close Combat - TM107
  (308, 30800, 370, 26, NULL, 2, NULL, NULL, 26002107, NULL, 44),
  -- Electrike - Tackle - Level 1
  (309, 30900, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Electrike - Leer - Level 1
  (309, 30900, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Electrike - Quick Attack - Level 1
  (309, 30900, 98, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Electrike - Thunder Shock - Level 8
  (309, 30900, 84, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Electrike - Thunder Wave - Level 12
  (309, 30900, 86, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Electrike - Spark - Level 16
  (309, 30900, 209, 26, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Electrike - Bite - Level 20
  (309, 30900, 44, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Electrike - Eerie Impulse - Level 22
  (309, 30900, 598, 26, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Electrike - Thunder Fang - Level 24
  (309, 30900, 422, 26, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Electrike - Roar - Level 28
  (309, 30900, 46, 26, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Electrike - Snarl - Level 30
  (309, 30900, 555, 26, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Electrike - Charge - Level 36
  (309, 30900, 268, 26, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Electrike - Thunderbolt - Level 40
  (309, 30900, 85, 26, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Electrike - Wild Charge - Level 44
  (309, 30900, 528, 26, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Electrike - Thunder - Level 50
  (309, 30900, 87, 26, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Electrike - Headbutt - TM001
  (309, 30900, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 16),
  -- Electrike - Roar - TM005
  (309, 30900, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 17),
  -- Electrike - Thunder Wave - TM008
  (309, 30900, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 18),
  -- Electrike - Fire Fang - TM014
  (309, 30900, 424, 26, NULL, 2, NULL, NULL, 26002014, NULL, 19),
  -- Electrike - Ice Fang - TM015
  (309, 30900, 423, 26, NULL, 2, NULL, NULL, 26002015, NULL, 20),
  -- Electrike - Light Screen - TM016
  (309, 30900, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 21),
  -- Electrike - Protect - TM017
  (309, 30900, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 22),
  -- Electrike - Thunder Fang - TM021
  (309, 30900, 422, 26, NULL, 2, NULL, NULL, 26002021, NULL, 23),
  -- Electrike - Crunch - TM025
  (309, 30900, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 24),
  -- Electrike - Swift - TM027
  (309, 30900, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 25),
  -- Electrike - Body Slam - TM033
  (309, 30900, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 26),
  -- Electrike - Endure - TM035
  (309, 30900, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 27),
  -- Electrike - Discharge - TM039
  (309, 30900, 435, 26, NULL, 2, NULL, NULL, 26002039, NULL, 28),
  -- Electrike - Agility - TM047
  (309, 30900, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 29),
  -- Electrike - Flamethrower - TM062
  (309, 30900, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 30),
  -- Electrike - Volt Switch - TM066
  (309, 30900, 521, 26, NULL, 2, NULL, NULL, 26002066, NULL, 31),
  -- Electrike - Thunderbolt - TM067
  (309, 30900, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 32),
  -- Electrike - Substitute - TM085
  (309, 30900, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 33),
  -- Electrike - Wild Charge - TM086
  (309, 30900, 528, 26, NULL, 2, NULL, NULL, 26002086, NULL, 34),
  -- Electrike - Curse - TM091
  (309, 30900, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 35),
  -- Electrike - Thunder - TM106
  (309, 30900, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 36),
  -- Manectric - Tackle - Level 1
  (310, 31000, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Manectric - Leer - Level 1
  (310, 31000, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Manectric - Quick Attack - Level 1
  (310, 31000, 98, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Manectric - Fire Fang - Level 1
  (310, 31000, 424, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Manectric - Thunder Shock - Level 8
  (310, 31000, 84, 26, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Manectric - Thunder Wave - Level 12
  (310, 31000, 86, 26, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Manectric - Spark - Level 16
  (310, 31000, 209, 26, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Manectric - Bite - Level 20
  (310, 31000, 44, 26, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Manectric - Eerie Impulse - Level 22
  (310, 31000, 598, 26, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Manectric - Thunder Fang - Level 24
  (310, 31000, 422, 26, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Manectric - Roar - Level 28
  (310, 31000, 46, 26, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Manectric - Snarl - Level 30
  (310, 31000, 555, 26, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Manectric - Charge - Level 36
  (310, 31000, 268, 26, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Manectric - Thunderbolt - Level 40
  (310, 31000, 85, 26, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Manectric - Wild Charge - Level 44
  (310, 31000, 528, 26, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Manectric - Thunder - Level 50
  (310, 31000, 87, 26, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Manectric - Headbutt - TM001
  (310, 31000, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 17),
  -- Manectric - Roar - TM005
  (310, 31000, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 18),
  -- Manectric - Thunder Wave - TM008
  (310, 31000, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 19),
  -- Manectric - Fire Fang - TM014
  (310, 31000, 424, 26, NULL, 2, NULL, NULL, 26002014, NULL, 20),
  -- Manectric - Ice Fang - TM015
  (310, 31000, 423, 26, NULL, 2, NULL, NULL, 26002015, NULL, 21),
  -- Manectric - Light Screen - TM016
  (310, 31000, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 22),
  -- Manectric - Protect - TM017
  (310, 31000, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 23),
  -- Manectric - Thunder Fang - TM021
  (310, 31000, 422, 26, NULL, 2, NULL, NULL, 26002021, NULL, 24),
  -- Manectric - Crunch - TM025
  (310, 31000, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 25),
  -- Manectric - Swift - TM027
  (310, 31000, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 26),
  -- Manectric - Body Slam - TM033
  (310, 31000, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 27),
  -- Manectric - Endure - TM035
  (310, 31000, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 28),
  -- Manectric - Discharge - TM039
  (310, 31000, 435, 26, NULL, 2, NULL, NULL, 26002039, NULL, 29),
  -- Manectric - Hyper Beam - TM044
  (310, 31000, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 30),
  -- Manectric - Agility - TM047
  (310, 31000, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 31),
  -- Manectric - Overheat - TM050
  (310, 31000, 315, 26, NULL, 2, NULL, NULL, 26002050, NULL, 32),
  -- Manectric - Giga Impact - TM055
  (310, 31000, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 33),
  -- Manectric - Flamethrower - TM062
  (310, 31000, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 34),
  -- Manectric - Volt Switch - TM066
  (310, 31000, 521, 26, NULL, 2, NULL, NULL, 26002066, NULL, 35),
  -- Manectric - Thunderbolt - TM067
  (310, 31000, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 36),
  -- Manectric - Hyper Voice - TM071
  (310, 31000, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 37),
  -- Manectric - Substitute - TM085
  (310, 31000, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 38),
  -- Manectric - Wild Charge - TM086
  (310, 31000, 528, 26, NULL, 2, NULL, NULL, 26002086, NULL, 39),
  -- Manectric - Curse - TM091
  (310, 31000, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 40),
  -- Manectric - Thunder - TM106
  (310, 31000, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 41),
  -- Roselia - Absorb - Level 1
  (315, 31500, 71, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Roselia - Growth - Level 1
  (315, 31500, 74, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Roselia - Stun Spore - Level 1
  (315, 31500, 78, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Roselia - Charm - Level 1
  (315, 31500, 204, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Roselia - Razor Leaf - Level 5
  (315, 31500, 75, 26, NULL, 1, 5, NULL, NULL, NULL, 5),
  -- Roselia - Pin Missile - Level 8
  (315, 31500, 42, 26, NULL, 1, 8, NULL, NULL, NULL, 6),
  -- Roselia - Leech Seed - Level 10
  (315, 31500, 73, 26, NULL, 1, 10, NULL, NULL, NULL, 7),
  -- Roselia - Magical Leaf - Level 15
  (315, 31500, 345, 26, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Roselia - Sleep Powder - Level 18
  (315, 31500, 79, 26, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Roselia - Toxic Spikes - Level 22
  (315, 31500, 390, 26, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Roselia - Giga Drain - Level 30
  (315, 31500, 202, 26, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Roselia - Poison Jab - Level 33
  (315, 31500, 398, 26, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Roselia - Synthesis - Level 37
  (315, 31500, 235, 26, NULL, 1, 37, NULL, NULL, NULL, 13),
  -- Roselia - Toxic - Level 44
  (315, 31500, 92, 26, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Roselia - Leaf Storm - Level 55
  (315, 31500, 437, 26, NULL, 1, 55, NULL, NULL, NULL, 15),
  -- Roselia - Poison Sting - Evolution
  (315, 31500, 40, 26, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Roselia - Toxic - TM007
  (315, 31500, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 17),
  -- Roselia - Protect - TM017
  (315, 31500, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Roselia - Energy Ball - TM026
  (315, 31500, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 19),
  -- Roselia - Swift - TM027
  (315, 31500, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 20),
  -- Roselia - Swords Dance - TM030
  (315, 31500, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 21),
  -- Roselia - Body Slam - TM033
  (315, 31500, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 22),
  -- Roselia - Endure - TM035
  (315, 31500, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Roselia - Bullet Seed - TM040
  (315, 31500, 331, 26, NULL, 2, NULL, NULL, 26002040, NULL, 24),
  -- Roselia - Giga Drain - TM042
  (315, 31500, 202, 26, NULL, 2, NULL, NULL, 26002042, NULL, 25),
  -- Roselia - Mud Shot - TM046
  (315, 31500, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 26),
  -- Roselia - Sludge Bomb - TM053
  (315, 31500, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 27),
  -- Roselia - Solar Beam - TM064
  (315, 31500, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 28),
  -- Roselia - Shadow Ball - TM074
  (315, 31500, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 29),
  -- Roselia - Poison Jab - TM077
  (315, 31500, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 30),
  -- Roselia - Substitute - TM085
  (315, 31500, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 31),
  -- Roselia - Spikes - TM088
  (315, 31500, 191, 26, NULL, 2, NULL, NULL, 26002088, NULL, 32),
  -- Roselia - Toxic Spikes - TM089
  (315, 31500, 390, 26, NULL, 2, NULL, NULL, 26002089, NULL, 33),
  -- Roselia - Dazzling Gleam - TM092
  (315, 31500, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 34),
  -- Carvanha - Leer - Level 1
  (318, 31800, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Carvanha - Aqua Jet - Level 1
  (318, 31800, 453, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Carvanha - Focus Energy - Level 8
  (318, 31800, 116, 26, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Carvanha - Bite - Level 16
  (318, 31800, 44, 26, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Carvanha - Flip Turn - Level 20
  (318, 31800, 812, 26, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Carvanha - Screech - Level 24
  (318, 31800, 103, 26, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Carvanha - Crunch - Level 32
  (318, 31800, 242, 26, NULL, 1, 32, NULL, NULL, NULL, 7),
  -- Carvanha - Take Down - Level 40
  (318, 31800, 36, 26, NULL, 1, 40, NULL, NULL, NULL, 8),
  -- Carvanha - Liquidation - Level 44
  (318, 31800, 710, 26, NULL, 1, 44, NULL, NULL, NULL, 9),
  -- Carvanha - Bounce - Level 51
  (318, 31800, 340, 26, NULL, 1, 51, NULL, NULL, NULL, 10),
  -- Carvanha - Double-Edge - Level 54
  (318, 31800, 38, 26, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Carvanha - Flip Turn - TM009
  (318, 31800, 812, 26, NULL, 2, NULL, NULL, 26002009, NULL, 12),
  -- Carvanha - Ice Beam - TM013
  (318, 31800, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 13),
  -- Carvanha - Ice Fang - TM015
  (318, 31800, 423, 26, NULL, 2, NULL, NULL, 26002015, NULL, 14),
  -- Carvanha - Protect - TM017
  (318, 31800, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 15),
  -- Carvanha - Crunch - TM025
  (318, 31800, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 16),
  -- Carvanha - Swift - TM027
  (318, 31800, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 17),
  -- Carvanha - Endure - TM035
  (318, 31800, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 18),
  -- Carvanha - Agility - TM047
  (318, 31800, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 19),
  -- Carvanha - Icy Wind - TM049
  (318, 31800, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 20),
  -- Carvanha - Double-Edge - TM056
  (318, 31800, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 21),
  -- Carvanha - Zen Headbutt - TM059
  (318, 31800, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 22),
  -- Carvanha - Whirlpool - TM070
  (318, 31800, 250, 26, NULL, 2, NULL, NULL, 26002070, NULL, 23),
  -- Carvanha - Surf - TM073
  (318, 31800, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 24),
  -- Carvanha - Liquidation - TM076
  (318, 31800, 710, 26, NULL, 2, NULL, NULL, 26002076, NULL, 25),
  -- Carvanha - Substitute - TM085
  (318, 31800, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 26),
  -- Carvanha - Dark Pulse - TM090
  (318, 31800, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 27),
  -- Carvanha - Taunt - TM095
  (318, 31800, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 28),
  -- Carvanha - Hydro Pump - TM096
  (318, 31800, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 29),
  -- Carvanha - Waterfall - TM098
  (318, 31800, 127, 26, NULL, 2, NULL, NULL, 26002098, NULL, 30),
  -- Carvanha - Blizzard - TM105
  (318, 31800, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 31),
  -- Sharpedo - Leer - Level 1
  (319, 31900, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sharpedo - Night Slash - Level 1
  (319, 31900, 400, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sharpedo - Aqua Jet - Level 1
  (319, 31900, 453, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sharpedo - Focus Energy - Level 8
  (319, 31900, 116, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Sharpedo - Bite - Level 16
  (319, 31900, 44, 26, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Sharpedo - Flip Turn - Level 20
  (319, 31900, 812, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Sharpedo - Screech - Level 24
  (319, 31900, 103, 26, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Sharpedo - Crunch - Level 32
  (319, 31900, 242, 26, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Sharpedo - Agility - Level 36
  (319, 31900, 97, 26, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Sharpedo - Take Down - Level 40
  (319, 31900, 36, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Sharpedo - Liquidation - Level 44
  (319, 31900, 710, 26, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Sharpedo - Bounce - Level 51
  (319, 31900, 340, 26, NULL, 1, 51, NULL, NULL, NULL, 12),
  -- Sharpedo - Double-Edge - Level 54
  (319, 31900, 38, 26, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Sharpedo - Slash - Evolution
  (319, 31900, 163, 26, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Sharpedo - Flip Turn - TM009
  (319, 31900, 812, 26, NULL, 2, NULL, NULL, 26002009, NULL, 15),
  -- Sharpedo - Ice Beam - TM013
  (319, 31900, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 16),
  -- Sharpedo - Ice Fang - TM015
  (319, 31900, 423, 26, NULL, 2, NULL, NULL, 26002015, NULL, 17),
  -- Sharpedo - Protect - TM017
  (319, 31900, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Sharpedo - Crunch - TM025
  (319, 31900, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 19),
  -- Sharpedo - Swift - TM027
  (319, 31900, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 20),
  -- Sharpedo - Night Slash - TM034
  (319, 31900, 400, 26, NULL, 2, NULL, NULL, 26002034, NULL, 21),
  -- Sharpedo - Endure - TM035
  (319, 31900, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Sharpedo - Rock Tomb - TM036
  (319, 31900, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 23),
  -- Sharpedo - Hyper Beam - TM044
  (319, 31900, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 24),
  -- Sharpedo - Agility - TM047
  (319, 31900, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 25),
  -- Sharpedo - Icy Wind - TM049
  (319, 31900, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 26),
  -- Sharpedo - Giga Impact - TM055
  (319, 31900, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 27),
  -- Sharpedo - Double-Edge - TM056
  (319, 31900, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 28),
  -- Sharpedo - Zen Headbutt - TM059
  (319, 31900, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 29),
  -- Sharpedo - Earthquake - TM069
  (319, 31900, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 30),
  -- Sharpedo - Whirlpool - TM070
  (319, 31900, 250, 26, NULL, 2, NULL, NULL, 26002070, NULL, 31),
  -- Sharpedo - Surf - TM073
  (319, 31900, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 32),
  -- Sharpedo - Liquidation - TM076
  (319, 31900, 710, 26, NULL, 2, NULL, NULL, 26002076, NULL, 33),
  -- Sharpedo - Poison Jab - TM077
  (319, 31900, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 34),
  -- Sharpedo - Substitute - TM085
  (319, 31900, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 35),
  -- Sharpedo - Dark Pulse - TM090
  (319, 31900, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 36),
  -- Sharpedo - Taunt - TM095
  (319, 31900, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 37),
  -- Sharpedo - Hydro Pump - TM096
  (319, 31900, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 38),
  -- Sharpedo - Waterfall - TM098
  (319, 31900, 127, 26, NULL, 2, NULL, NULL, 26002098, NULL, 39),
  -- Sharpedo - Blizzard - TM105
  (319, 31900, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 40),
  -- Sharpedo - Close Combat - TM107
  (319, 31900, 370, 26, NULL, 2, NULL, NULL, 26002107, NULL, 41),
  -- Numel - Tackle - Level 1
  (322, 32200, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Numel - Growl - Level 1
  (322, 32200, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Numel - Ember - Level 5
  (322, 32200, 52, 26, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Numel - Focus Energy - Level 8
  (322, 32200, 116, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Numel - Bulldoze - Level 12
  (322, 32200, 523, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Numel - Amnesia - Level 19
  (322, 32200, 133, 26, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Numel - Lava Plume - Level 22
  (322, 32200, 436, 26, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Numel - Earth Power - Level 26
  (322, 32200, 414, 26, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Numel - Curse - Level 29
  (322, 32200, 174, 26, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Numel - Take Down - Level 31
  (322, 32200, 36, 26, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Numel - Earthquake - Level 40
  (322, 32200, 89, 26, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Numel - Flamethrower - Level 46
  (322, 32200, 53, 26, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Numel - Double-Edge - Level 51
  (322, 32200, 38, 26, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Numel - Heat Crash - Level 55
  (322, 32200, 535, 26, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Numel - Headbutt - TM001
  (322, 32200, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 15),
  -- Numel - Roar - TM005
  (322, 32200, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 16),
  -- Numel - Rock Slide - TM012
  (322, 32200, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 17),
  -- Numel - Protect - TM017
  (322, 32200, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Numel - Dig - TM028
  (322, 32200, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 19),
  -- Numel - Body Slam - TM033
  (322, 32200, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 20),
  -- Numel - Endure - TM035
  (322, 32200, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 21),
  -- Numel - Rock Tomb - TM036
  (322, 32200, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 22),
  -- Numel - Stealth Rock - TM037
  (322, 32200, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 23),
  -- Numel - Fire Blast - TM038
  (322, 32200, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 24),
  -- Numel - Overheat - TM050
  (322, 32200, 315, 26, NULL, 2, NULL, NULL, 26002050, NULL, 25),
  -- Numel - Earth Power - TM052
  (322, 32200, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 26),
  -- Numel - Double-Edge - TM056
  (322, 32200, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 27),
  -- Numel - Will-O-Wisp - TM057
  (322, 32200, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 28),
  -- Numel - Iron Head - TM058
  (322, 32200, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 29),
  -- Numel - Zen Headbutt - TM059
  (322, 32200, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 30),
  -- Numel - Flamethrower - TM062
  (322, 32200, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 31),
  -- Numel - Stone Edge - TM065
  (322, 32200, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 32),
  -- Numel - Heat Wave - TM068
  (322, 32200, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 33),
  -- Numel - Earthquake - TM069
  (322, 32200, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 34),
  -- Numel - Fire Spin - TM072
  (322, 32200, 83, 26, NULL, 2, NULL, NULL, 26002072, NULL, 35),
  -- Numel - Bulldoze - TM078
  (322, 32200, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 36),
  -- Numel - Flash Cannon - TM084
  (322, 32200, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 37),
  -- Numel - Substitute - TM085
  (322, 32200, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 38),
  -- Numel - Curse - TM091
  (322, 32200, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 39),
  -- Numel - Flare Blitz - TM104
  (322, 32200, 394, 26, NULL, 2, NULL, NULL, 26002104, NULL, 40),
  -- Camerupt - Tackle - Level 1
  (323, 32300, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Camerupt - Growl - Level 1
  (323, 32300, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Camerupt - Ember - Level 5
  (323, 32300, 52, 26, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Camerupt - Focus Energy - Level 8
  (323, 32300, 116, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Camerupt - Bulldoze - Level 12
  (323, 32300, 523, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Camerupt - Amnesia - Level 19
  (323, 32300, 133, 26, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Camerupt - Lava Plume - Level 22
  (323, 32300, 436, 26, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Camerupt - Earth Power - Level 26
  (323, 32300, 414, 26, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Camerupt - Curse - Level 29
  (323, 32300, 174, 26, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Camerupt - Take Down - Level 31
  (323, 32300, 36, 26, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Camerupt - Earthquake - Level 40
  (323, 32300, 89, 26, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Camerupt - Flamethrower - Level 46
  (323, 32300, 53, 26, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Camerupt - Double-Edge - Level 51
  (323, 32300, 38, 26, NULL, 1, 51, NULL, NULL, NULL, 13),
  -- Camerupt - Heat Crash - Level 55
  (323, 32300, 535, 26, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Camerupt - Rock Slide - Evolution
  (323, 32300, 157, 26, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Camerupt - Headbutt - TM001
  (323, 32300, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 16),
  -- Camerupt - Roar - TM005
  (323, 32300, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 17),
  -- Camerupt - Rock Slide - TM012
  (323, 32300, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 18),
  -- Camerupt - Protect - TM017
  (323, 32300, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Camerupt - Dig - TM028
  (323, 32300, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 20),
  -- Camerupt - Body Slam - TM033
  (323, 32300, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 21),
  -- Camerupt - Endure - TM035
  (323, 32300, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Camerupt - Rock Tomb - TM036
  (323, 32300, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 23),
  -- Camerupt - Stealth Rock - TM037
  (323, 32300, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 24),
  -- Camerupt - Fire Blast - TM038
  (323, 32300, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 25),
  -- Camerupt - Hyper Beam - TM044
  (323, 32300, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 26),
  -- Camerupt - Self-Destruct - TM048
  (323, 32300, 120, 26, NULL, 2, NULL, NULL, 26002048, NULL, 27),
  -- Camerupt - Overheat - TM050
  (323, 32300, 315, 26, NULL, 2, NULL, NULL, 26002050, NULL, 28),
  -- Camerupt - Earth Power - TM052
  (323, 32300, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 29),
  -- Camerupt - Giga Impact - TM055
  (323, 32300, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 30),
  -- Camerupt - Double-Edge - TM056
  (323, 32300, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 31),
  -- Camerupt - Will-O-Wisp - TM057
  (323, 32300, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 32),
  -- Camerupt - Iron Head - TM058
  (323, 32300, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 33),
  -- Camerupt - Zen Headbutt - TM059
  (323, 32300, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 34),
  -- Camerupt - Flamethrower - TM062
  (323, 32300, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 35),
  -- Camerupt - Stone Edge - TM065
  (323, 32300, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 36),
  -- Camerupt - Heat Wave - TM068
  (323, 32300, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 37),
  -- Camerupt - Earthquake - TM069
  (323, 32300, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 38),
  -- Camerupt - Fire Spin - TM072
  (323, 32300, 83, 26, NULL, 2, NULL, NULL, 26002072, NULL, 39),
  -- Camerupt - Bulldoze - TM078
  (323, 32300, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 40),
  -- Camerupt - Flash Cannon - TM084
  (323, 32300, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 41),
  -- Camerupt - Substitute - TM085
  (323, 32300, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 42),
  -- Camerupt - Curse - TM091
  (323, 32300, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 43),
  -- Camerupt - Flare Blitz - TM104
  (323, 32300, 394, 26, NULL, 2, NULL, NULL, 26002104, NULL, 44),
  -- Swablu - Growl - Level 1
  (333, 33300, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swablu - Peck - Level 1
  (333, 33300, 64, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swablu - Disarming Voice - Level 7
  (333, 33300, 574, 26, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Swablu - Mist - Level 8
  (333, 33300, 54, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Swablu - Dragon Breath - Level 20
  (333, 33300, 225, 26, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Swablu - Safeguard - Level 24
  (333, 33300, 219, 26, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Swablu - Cotton Guard - Level 32
  (333, 33300, 538, 26, NULL, 1, 32, NULL, NULL, NULL, 7),
  -- Swablu - Twister - Level 35
  (333, 33300, 239, 26, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Swablu - Take Down - Level 37
  (333, 33300, 36, 26, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Swablu - Moonblast - Level 40
  (333, 33300, 585, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Swablu - Feather Dance - Level 44
  (333, 33300, 297, 26, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Swablu - Brave Bird - Level 50
  (333, 33300, 413, 26, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Swablu - Dragon Rush - Level 55
  (333, 33300, 407, 26, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Swablu - Perish Song - Level 60
  (333, 33300, 195, 26, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Swablu - Ice Beam - TM013
  (333, 33300, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 15),
  -- Swablu - Protect - TM017
  (333, 33300, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Swablu - Play Rough - TM020
  (333, 33300, 583, 26, NULL, 2, NULL, NULL, 26002020, NULL, 17),
  -- Swablu - Aerial Ace - TM022
  (333, 33300, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 18),
  -- Swablu - Swift - TM027
  (333, 33300, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 19),
  -- Swablu - Body Slam - TM033
  (333, 33300, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 20),
  -- Swablu - Endure - TM035
  (333, 33300, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 21),
  -- Swablu - Fly - TM043
  (333, 33300, 19, 26, NULL, 2, NULL, NULL, 26002043, NULL, 22),
  -- Swablu - Agility - TM047
  (333, 33300, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 23),
  -- Swablu - Safeguard - TM051
  (333, 33300, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 24),
  -- Swablu - Solar Beam - TM064
  (333, 33300, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 25),
  -- Swablu - Heat Wave - TM068
  (333, 33300, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 26),
  -- Swablu - Hyper Voice - TM071
  (333, 33300, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 27),
  -- Swablu - Dragon Pulse - TM075
  (333, 33300, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 28),
  -- Swablu - Hurricane - TM079
  (333, 33300, 542, 26, NULL, 2, NULL, NULL, 26002079, NULL, 29),
  -- Swablu - Substitute - TM085
  (333, 33300, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 30),
  -- Swablu - Dazzling Gleam - TM092
  (333, 33300, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 31),
  -- Swablu - Outrage - TM093
  (333, 33300, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 32),
  -- Altaria - Growl - Level 1
  (334, 33400, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Altaria - Peck - Level 1
  (334, 33400, 64, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Altaria - Disarming Voice - Level 7
  (334, 33400, 574, 26, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Altaria - Mist - Level 8
  (334, 33400, 54, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Altaria - Dragon Breath - Level 20
  (334, 33400, 225, 26, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Altaria - Safeguard - Level 24
  (334, 33400, 219, 26, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Altaria - Cotton Guard - Level 32
  (334, 33400, 538, 26, NULL, 1, 32, NULL, NULL, NULL, 7),
  -- Altaria - Twister - Level 35
  (334, 33400, 239, 26, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Altaria - Take Down - Level 37
  (334, 33400, 36, 26, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Altaria - Moonblast - Level 40
  (334, 33400, 585, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Altaria - Feather Dance - Level 44
  (334, 33400, 297, 26, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Altaria - Brave Bird - Level 50
  (334, 33400, 413, 26, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Altaria - Dragon Rush - Level 55
  (334, 33400, 407, 26, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Altaria - Perish Song - Level 60
  (334, 33400, 195, 26, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Altaria - Dragon Pulse - Evolution
  (334, 33400, 406, 26, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Altaria - Dragon Claw - TM002
  (334, 33400, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 16),
  -- Altaria - Roar - TM005
  (334, 33400, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 17),
  -- Altaria - Ice Beam - TM013
  (334, 33400, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 18),
  -- Altaria - Protect - TM017
  (334, 33400, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Altaria - Play Rough - TM020
  (334, 33400, 583, 26, NULL, 2, NULL, NULL, 26002020, NULL, 20),
  -- Altaria - Aerial Ace - TM022
  (334, 33400, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 21),
  -- Altaria - Swift - TM027
  (334, 33400, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 22),
  -- Altaria - Body Slam - TM033
  (334, 33400, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 23),
  -- Altaria - Endure - TM035
  (334, 33400, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 24),
  -- Altaria - Fly - TM043
  (334, 33400, 19, 26, NULL, 2, NULL, NULL, 26002043, NULL, 25),
  -- Altaria - Hyper Beam - TM044
  (334, 33400, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 26),
  -- Altaria - Agility - TM047
  (334, 33400, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 27),
  -- Altaria - Safeguard - TM051
  (334, 33400, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 28),
  -- Altaria - Draco Meteor - TM054
  (334, 33400, 434, 26, NULL, 2, NULL, NULL, 26002054, NULL, 29),
  -- Altaria - Giga Impact - TM055
  (334, 33400, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 30),
  -- Altaria - Will-O-Wisp - TM057
  (334, 33400, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 31),
  -- Altaria - Flamethrower - TM062
  (334, 33400, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 32),
  -- Altaria - Solar Beam - TM064
  (334, 33400, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 33),
  -- Altaria - Heat Wave - TM068
  (334, 33400, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 34),
  -- Altaria - Earthquake - TM069
  (334, 33400, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 35),
  -- Altaria - Hyper Voice - TM071
  (334, 33400, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 36),
  -- Altaria - Fire Spin - TM072
  (334, 33400, 83, 26, NULL, 2, NULL, NULL, 26002072, NULL, 37),
  -- Altaria - Dragon Pulse - TM075
  (334, 33400, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 38),
  -- Altaria - Bulldoze - TM078
  (334, 33400, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 39),
  -- Altaria - Hurricane - TM079
  (334, 33400, 542, 26, NULL, 2, NULL, NULL, 26002079, NULL, 40),
  -- Altaria - Substitute - TM085
  (334, 33400, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 41),
  -- Altaria - Dazzling Gleam - TM092
  (334, 33400, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 42),
  -- Altaria - Outrage - TM093
  (334, 33400, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 43);
