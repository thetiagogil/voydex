-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Z-A Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Pokémon Legends: Z-A learnset pages during full row-level audit.
-- Scope note: Base ZA rows include numeric level-up, evolution-learned, and TM001-TM160 rows for Pokémon/forms available in the base ZA scope.
-- Reminder note: source Move Reminder rows are intentionally excluded until reminder/relearn behavior is modeled for this game.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Pokémon Legends: Z-A learnsets for species 201-250.
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
  -- Steelix - Tackle - Level 1
  (208, 20800, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Steelix - Rock Throw - Level 1
  (208, 20800, 88, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Steelix - Harden - Level 1
  (208, 20800, 106, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Steelix - Crunch - Level 1
  (208, 20800, 242, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Steelix - Dragon Breath - Level 12
  (208, 20800, 225, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Steelix - Curse - Level 16
  (208, 20800, 174, 26, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Steelix - Rock Slide - Level 20
  (208, 20800, 157, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Steelix - Breaking Swipe - Level 22
  (208, 20800, 784, 26, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Steelix - Screech - Level 24
  (208, 20800, 103, 26, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Steelix - Sand Tomb - Level 28
  (208, 20800, 328, 26, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Steelix - Stealth Rock - Level 32
  (208, 20800, 446, 26, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Steelix - Heavy Slam - Level 36
  (208, 20800, 484, 26, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Steelix - Dig - Level 44
  (208, 20800, 91, 26, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Steelix - Stone Edge - Level 52
  (208, 20800, 444, 26, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Steelix - Double-Edge - Level 56
  (208, 20800, 38, 26, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Steelix - Head Smash - Level 62
  (208, 20800, 457, 26, NULL, 1, 62, NULL, NULL, NULL, 16),
  -- Steelix - Iron Tail - Evolution
  (208, 20800, 231, 26, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Steelix - Rock Slide - TM012
  (208, 20800, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 18),
  -- Steelix - Fire Fang - TM014
  (208, 20800, 424, 26, NULL, 2, NULL, NULL, 26002014, NULL, 19),
  -- Steelix - Ice Fang - TM015
  (208, 20800, 423, 26, NULL, 2, NULL, NULL, 26002015, NULL, 20),
  -- Steelix - Protect - TM017
  (208, 20800, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 21),
  -- Steelix - Thunder Fang - TM021
  (208, 20800, 422, 26, NULL, 2, NULL, NULL, 26002021, NULL, 22),
  -- Steelix - Crunch - TM025
  (208, 20800, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 23),
  -- Steelix - Dig - TM028
  (208, 20800, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 24),
  -- Steelix - Body Slam - TM033
  (208, 20800, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 25),
  -- Steelix - Endure - TM035
  (208, 20800, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 26),
  -- Steelix - Rock Tomb - TM036
  (208, 20800, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 27),
  -- Steelix - Stealth Rock - TM037
  (208, 20800, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 28),
  -- Steelix - Hyper Beam - TM044
  (208, 20800, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 29),
  -- Steelix - Self-Destruct - TM048
  (208, 20800, 120, 26, NULL, 2, NULL, NULL, 26002048, NULL, 30),
  -- Steelix - Earth Power - TM052
  (208, 20800, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 31),
  -- Steelix - Giga Impact - TM055
  (208, 20800, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 32),
  -- Steelix - Double-Edge - TM056
  (208, 20800, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 33),
  -- Steelix - Iron Head - TM058
  (208, 20800, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 34),
  -- Steelix - Stone Edge - TM065
  (208, 20800, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 35),
  -- Steelix - Earthquake - TM069
  (208, 20800, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 36),
  -- Steelix - Dragon Pulse - TM075
  (208, 20800, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 37),
  -- Steelix - Iron Defense - TM080
  (208, 20800, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 38),
  -- Steelix - Flash Cannon - TM084
  (208, 20800, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 39),
  -- Steelix - Substitute - TM085
  (208, 20800, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 40),
  -- Steelix - Iron Tail - TM087
  (208, 20800, 231, 26, NULL, 2, NULL, NULL, 26002087, NULL, 41),
  -- Steelix - Dark Pulse - TM090
  (208, 20800, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 42),
  -- Steelix - Curse - TM091
  (208, 20800, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 43),
  -- Steelix - Taunt - TM095
  (208, 20800, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 44),
  -- Steelix - Facade - TM109
  (208, 20800, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 45),
  -- Steelix - Ancient Power - TM120
  (208, 20800, 246, 26, NULL, 2, NULL, NULL, 26002120, NULL, 46),
  -- Steelix - Psychic Fangs - TM124
  (208, 20800, 706, 26, NULL, 2, NULL, NULL, 26002124, NULL, 47),
  -- Steelix - Scorching Sands - TM136
  (208, 20800, 815, 26, NULL, 2, NULL, NULL, 26002136, NULL, 48),
  -- Steelix - Fissure - TM154
  (208, 20800, 90, 26, NULL, 2, NULL, NULL, 26002154, NULL, 49),
  -- Steelix - Meteor Beam - TM156
  (208, 20800, 800, 26, NULL, 2, NULL, NULL, 26002156, NULL, 50),
  -- Steelix - Steel Beam - TM157
  (208, 20800, 796, 26, NULL, 2, NULL, NULL, 26002157, NULL, 51),
  -- Scizor - Leer - Level 1
  (212, 21200, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Scizor - Quick Attack - Level 1
  (212, 21200, 98, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Scizor - Wing Attack - Level 12
  (212, 21200, 17, 26, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Scizor - Double Team - Level 16
  (212, 21200, 104, 26, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Scizor - Steel Wing - Level 18
  (212, 21200, 211, 26, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Scizor - Brutal Swing - Level 20
  (212, 21200, 693, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Scizor - Slash - Level 24
  (212, 21200, 163, 26, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Scizor - Focus Energy - Level 28
  (212, 21200, 116, 26, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Scizor - X-Scissor - Level 32
  (212, 21200, 404, 26, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Scizor - Bug Buzz - Level 34
  (212, 21200, 405, 26, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Scizor - Air Slash - Level 36
  (212, 21200, 403, 26, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Scizor - Iron Defense - Level 40
  (212, 21200, 334, 26, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Scizor - Swords Dance - Level 42
  (212, 21200, 14, 26, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Scizor - Lunge - Level 46
  (212, 21200, 679, 26, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Scizor - Iron Head - Level 48
  (212, 21200, 442, 26, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Scizor - Bullet Punch - Evolution
  (212, 21200, 418, 26, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Scizor - Brick Break - TM010
  (212, 21200, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 17),
  -- Scizor - Light Screen - TM016
  (212, 21200, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 18),
  -- Scizor - Protect - TM017
  (212, 21200, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Scizor - Aerial Ace - TM022
  (212, 21200, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 20),
  -- Scizor - Swift - TM027
  (212, 21200, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 21),
  -- Scizor - Swords Dance - TM030
  (212, 21200, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 22),
  -- Scizor - Double Team - TM032
  (212, 21200, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 23),
  -- Scizor - Night Slash - TM034
  (212, 21200, 400, 26, NULL, 2, NULL, NULL, 26002034, NULL, 24),
  -- Scizor - Endure - TM035
  (212, 21200, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Scizor - Hyper Beam - TM044
  (212, 21200, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 26),
  -- Scizor - Knock Off - TM045
  (212, 21200, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 27),
  -- Scizor - Agility - TM047
  (212, 21200, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 28),
  -- Scizor - Safeguard - TM051
  (212, 21200, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 29),
  -- Scizor - Giga Impact - TM055
  (212, 21200, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 30),
  -- Scizor - Double-Edge - TM056
  (212, 21200, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 31),
  -- Scizor - Iron Head - TM058
  (212, 21200, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 32),
  -- Scizor - Iron Defense - TM080
  (212, 21200, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 33),
  -- Scizor - X-Scissor - TM081
  (212, 21200, 404, 26, NULL, 2, NULL, NULL, 26002081, NULL, 34),
  -- Scizor - U-turn - TM082
  (212, 21200, 369, 26, NULL, 2, NULL, NULL, 26002082, NULL, 35),
  -- Scizor - Flash Cannon - TM084
  (212, 21200, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 36),
  -- Scizor - Substitute - TM085
  (212, 21200, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 37),
  -- Scizor - Curse - TM091
  (212, 21200, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 38),
  -- Scizor - Close Combat - TM107
  (212, 21200, 370, 26, NULL, 2, NULL, NULL, 26002107, NULL, 39),
  -- Scizor - Facade - TM109
  (212, 21200, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 40),
  -- Scizor - Trailblaze - TM115
  (212, 21200, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 41),
  -- Scizor - Silver Wind - TM117
  (212, 21200, 318, 26, NULL, 2, NULL, NULL, 26002117, NULL, 42),
  -- Scizor - False Swipe - TM122
  (212, 21200, 206, 26, NULL, 2, NULL, NULL, 26002122, NULL, 43),
  -- Scizor - Magnet Bomb - TM126
  (212, 21200, 443, 26, NULL, 2, NULL, NULL, 26002126, NULL, 44),
  -- Scizor - Double Hit - TM132
  (212, 21200, 458, 26, NULL, 2, NULL, NULL, 26002132, NULL, 45),
  -- Scizor - Dual Wingbeat - TM134
  (212, 21200, 814, 26, NULL, 2, NULL, NULL, 26002134, NULL, 46),
  -- Scizor - Dual Chop - TM135
  (212, 21200, 530, 26, NULL, 2, NULL, NULL, 26002135, NULL, 47),
  -- Scizor - Razor Wind - TM145
  (212, 21200, 13, 26, NULL, 2, NULL, NULL, 26002145, NULL, 48),
  -- Scizor - Vacuum Wave - TM150
  (212, 21200, 410, 26, NULL, 2, NULL, NULL, 26002150, NULL, 49),
  -- Scizor - Steel Beam - TM157
  (212, 21200, 796, 26, NULL, 2, NULL, NULL, 26002157, NULL, 50),
  -- Heracross - Tackle - Level 1
  (214, 21400, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Heracross - Leer - Level 1
  (214, 21400, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Heracross - Endure - Level 5
  (214, 21400, 203, 26, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Heracross - Pin Missile - Level 10
  (214, 21400, 42, 26, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Heracross - Detect - Level 13
  (214, 21400, 197, 26, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Heracross - Aerial Ace - Level 15
  (214, 21400, 332, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Heracross - Take Down - Level 20
  (214, 21400, 36, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Heracross - Brick Break - Level 24
  (214, 21400, 280, 26, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Heracross - Rock Blast - Level 28
  (214, 21400, 350, 26, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Heracross - Bug Buzz - Level 30
  (214, 21400, 405, 26, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Heracross - Lunge - Level 32
  (214, 21400, 679, 26, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Heracross - Swords Dance - Level 38
  (214, 21400, 14, 26, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Heracross - Megahorn - Level 45
  (214, 21400, 224, 26, NULL, 1, 45, NULL, NULL, NULL, 13),
  -- Heracross - Close Combat - Level 50
  (214, 21400, 370, 26, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Heracross - Headbutt - TM001
  (214, 21400, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 15),
  -- Heracross - Rock Smash - TM004
  (214, 21400, 249, 26, NULL, 2, NULL, NULL, 26002004, NULL, 16),
  -- Heracross - Brick Break - TM010
  (214, 21400, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 17),
  -- Heracross - Bulk Up - TM011
  (214, 21400, 339, 26, NULL, 2, NULL, NULL, 26002011, NULL, 18),
  -- Heracross - Rock Slide - TM012
  (214, 21400, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 19),
  -- Heracross - Protect - TM017
  (214, 21400, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Heracross - Aerial Ace - TM022
  (214, 21400, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 21),
  -- Heracross - Dig - TM028
  (214, 21400, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 22),
  -- Heracross - Swords Dance - TM030
  (214, 21400, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 23),
  -- Heracross - Body Slam - TM033
  (214, 21400, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 24),
  -- Heracross - Night Slash - TM034
  (214, 21400, 400, 26, NULL, 2, NULL, NULL, 26002034, NULL, 25),
  -- Heracross - Endure - TM035
  (214, 21400, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 26),
  -- Heracross - Rock Tomb - TM036
  (214, 21400, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 27),
  -- Heracross - Bullet Seed - TM040
  (214, 21400, 331, 26, NULL, 2, NULL, NULL, 26002040, NULL, 28),
  -- Heracross - Hyper Beam - TM044
  (214, 21400, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 29),
  -- Heracross - Knock Off - TM045
  (214, 21400, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 30),
  -- Heracross - Mud Shot - TM046
  (214, 21400, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 31),
  -- Heracross - Giga Impact - TM055
  (214, 21400, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 32),
  -- Heracross - Shadow Claw - TM061
  (214, 21400, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 33),
  -- Heracross - Stone Edge - TM065
  (214, 21400, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 34),
  -- Heracross - Earthquake - TM069
  (214, 21400, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 35),
  -- Heracross - Bulldoze - TM078
  (214, 21400, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 36),
  -- Heracross - Iron Defense - TM080
  (214, 21400, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 37),
  -- Heracross - Substitute - TM085
  (214, 21400, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 38),
  -- Heracross - Spikes - TM088
  (214, 21400, 191, 26, NULL, 2, NULL, NULL, 26002088, NULL, 39),
  -- Heracross - Curse - TM091
  (214, 21400, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 40),
  -- Heracross - Outrage - TM093
  (214, 21400, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 41),
  -- Heracross - Focus Blast - TM102
  (214, 21400, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 42),
  -- Heracross - Work Up - TM103
  (214, 21400, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 43),
  -- Heracross - Close Combat - TM107
  (214, 21400, 370, 26, NULL, 2, NULL, NULL, 26002107, NULL, 44),
  -- Heracross - Facade - TM109
  (214, 21400, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 45),
  -- Heracross - Trailblaze - TM115
  (214, 21400, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 46),
  -- Heracross - Silver Wind - TM117
  (214, 21400, 318, 26, NULL, 2, NULL, NULL, 26002117, NULL, 47),
  -- Heracross - False Swipe - TM122
  (214, 21400, 206, 26, NULL, 2, NULL, NULL, 26002122, NULL, 48),
  -- Heracross - Circle Throw - TM129
  (214, 21400, 509, 26, NULL, 2, NULL, NULL, 26002129, NULL, 49),
  -- Heracross - Skull Bash - TM146
  (214, 21400, 130, 26, NULL, 2, NULL, NULL, 26002146, NULL, 50),
  -- Heracross - Vacuum Wave - TM150
  (214, 21400, 410, 26, NULL, 2, NULL, NULL, 26002150, NULL, 51),
  -- Delibird - Peck - Level 1
  (225, 22500, 64, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Delibird - Icy Wind - Level 15
  (225, 22500, 196, 26, NULL, 1, 15, NULL, NULL, NULL, 2),
  -- Delibird - Aerial Ace - Level 18
  (225, 22500, 332, 26, NULL, 1, 18, NULL, NULL, NULL, 3),
  -- Delibird - Ice Shard - Level 25
  (225, 22500, 420, 26, NULL, 1, 25, NULL, NULL, NULL, 4),
  -- Delibird - Air Slash - Level 28
  (225, 22500, 403, 26, NULL, 1, 28, NULL, NULL, NULL, 5),
  -- Delibird - Feather Dance - Level 32
  (225, 22500, 297, 26, NULL, 1, 32, NULL, NULL, NULL, 6),
  -- Delibird - Ice Punch - Level 35
  (225, 22500, 8, 26, NULL, 1, 35, NULL, NULL, NULL, 7),
  -- Delibird - Freeze-Dry - Level 37
  (225, 22500, 573, 26, NULL, 1, 37, NULL, NULL, NULL, 8),
  -- Delibird - Blizzard - Level 40
  (225, 22500, 59, 26, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Delibird - Brick Break - TM010
  (225, 22500, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 10),
  -- Delibird - Ice Beam - TM013
  (225, 22500, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 11),
  -- Delibird - Protect - TM017
  (225, 22500, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 12),
  -- Delibird - Aerial Ace - TM022
  (225, 22500, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 13),
  -- Delibird - Ice Punch - TM024
  (225, 22500, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 14),
  -- Delibird - Swift - TM027
  (225, 22500, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 15),
  -- Delibird - Body Slam - TM033
  (225, 22500, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 16),
  -- Delibird - Endure - TM035
  (225, 22500, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 17),
  -- Delibird - Water Pulse - TM041
  (225, 22500, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 18),
  -- Delibird - Fly - TM043
  (225, 22500, 19, 26, NULL, 2, NULL, NULL, 26002043, NULL, 19),
  -- Delibird - Hyper Beam - TM044
  (225, 22500, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 20),
  -- Delibird - Agility - TM047
  (225, 22500, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 21),
  -- Delibird - Icy Wind - TM049
  (225, 22500, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 22),
  -- Delibird - Giga Impact - TM055
  (225, 22500, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 23),
  -- Delibird - Substitute - TM085
  (225, 22500, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 24),
  -- Delibird - Spikes - TM088
  (225, 22500, 191, 26, NULL, 2, NULL, NULL, 26002088, NULL, 25),
  -- Delibird - Gunk Shot - TM100
  (225, 22500, 441, 26, NULL, 2, NULL, NULL, 26002100, NULL, 26),
  -- Delibird - Blizzard - TM105
  (225, 22500, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 27),
  -- Delibird - Facade - TM109
  (225, 22500, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 28),
  -- Delibird - Chilling Water - TM110
  (225, 22500, 886, 26, NULL, 2, NULL, NULL, 26002110, NULL, 29),
  -- Delibird - Trailblaze - TM115
  (225, 22500, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 30),
  -- Delibird - Seed Bomb - TM128
  (225, 22500, 402, 26, NULL, 2, NULL, NULL, 26002128, NULL, 31),
  -- Delibird - Dual Wingbeat - TM134
  (225, 22500, 814, 26, NULL, 2, NULL, NULL, 26002134, NULL, 32),
  -- Delibird - Frost Breath - TM138
  (225, 22500, 524, 26, NULL, 2, NULL, NULL, 26002138, NULL, 33),
  -- Delibird - Fake Out - TM141
  (225, 22500, 252, 26, NULL, 2, NULL, NULL, 26002141, NULL, 34),
  -- Delibird - Triple Axel - TM144
  (225, 22500, 813, 26, NULL, 2, NULL, NULL, 26002144, NULL, 35),
  -- Delibird - Razor Wind - TM145
  (225, 22500, 13, 26, NULL, 2, NULL, NULL, 26002145, NULL, 36),
  -- Delibird - Icicle Spear - TM149
  (225, 22500, 333, 26, NULL, 2, NULL, NULL, 26002149, NULL, 37),
  -- Delibird - Sheer Cold - TM155
  (225, 22500, 329, 26, NULL, 2, NULL, NULL, 26002155, NULL, 38),
  -- Skarmory - Leer - Level 1
  (227, 22700, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Skarmory - Peck - Level 1
  (227, 22700, 64, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Skarmory - Metal Claw - Level 12
  (227, 22700, 232, 26, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Skarmory - Sand Tomb - Level 16
  (227, 22700, 328, 26, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Skarmory - Wing Attack - Level 20
  (227, 22700, 17, 26, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Skarmory - Slash - Level 24
  (227, 22700, 163, 26, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Skarmory - Steel Wing - Level 28
  (227, 22700, 211, 26, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Skarmory - Night Slash - Level 34
  (227, 22700, 400, 26, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Skarmory - Drill Run - Level 38
  (227, 22700, 529, 26, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Skarmory - Metal Sound - Level 42
  (227, 22700, 319, 26, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Skarmory - Spikes - Level 46
  (227, 22700, 191, 26, NULL, 1, 46, NULL, NULL, NULL, 11),
  -- Skarmory - Iron Defense - Level 50
  (227, 22700, 334, 26, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Skarmory - Brave Bird - Level 56
  (227, 22700, 413, 26, NULL, 1, 56, NULL, NULL, NULL, 13),
  -- Skarmory - Roar - TM005
  (227, 22700, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 14),
  -- Skarmory - Rock Slide - TM012
  (227, 22700, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 15),
  -- Skarmory - Protect - TM017
  (227, 22700, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Skarmory - Aerial Ace - TM022
  (227, 22700, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 17),
  -- Skarmory - Swift - TM027
  (227, 22700, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 18),
  -- Skarmory - Swords Dance - TM030
  (227, 22700, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 19),
  -- Skarmory - Double Team - TM032
  (227, 22700, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 20),
  -- Skarmory - Night Slash - TM034
  (227, 22700, 400, 26, NULL, 2, NULL, NULL, 26002034, NULL, 21),
  -- Skarmory - Endure - TM035
  (227, 22700, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Skarmory - Rock Tomb - TM036
  (227, 22700, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 23),
  -- Skarmory - Stealth Rock - TM037
  (227, 22700, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 24),
  -- Skarmory - Fly - TM043
  (227, 22700, 19, 26, NULL, 2, NULL, NULL, 26002043, NULL, 25),
  -- Skarmory - Hyper Beam - TM044
  (227, 22700, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 26),
  -- Skarmory - Agility - TM047
  (227, 22700, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 27),
  -- Skarmory - Giga Impact - TM055
  (227, 22700, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 28),
  -- Skarmory - Iron Head - TM058
  (227, 22700, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 29),
  -- Skarmory - Hurricane - TM079
  (227, 22700, 542, 26, NULL, 2, NULL, NULL, 26002079, NULL, 30),
  -- Skarmory - Iron Defense - TM080
  (227, 22700, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 31),
  -- Skarmory - X-Scissor - TM081
  (227, 22700, 404, 26, NULL, 2, NULL, NULL, 26002081, NULL, 32),
  -- Skarmory - Flash Cannon - TM084
  (227, 22700, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 33),
  -- Skarmory - Substitute - TM085
  (227, 22700, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 34),
  -- Skarmory - Spikes - TM088
  (227, 22700, 191, 26, NULL, 2, NULL, NULL, 26002088, NULL, 35),
  -- Skarmory - Dark Pulse - TM090
  (227, 22700, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 36),
  -- Skarmory - Curse - TM091
  (227, 22700, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 37),
  -- Skarmory - Whirlwind - TM094
  (227, 22700, 18, 26, NULL, 2, NULL, NULL, 26002094, NULL, 38),
  -- Skarmory - Taunt - TM095
  (227, 22700, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 39),
  -- Skarmory - Facade - TM109
  (227, 22700, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 40),
  -- Skarmory - Magnet Bomb - TM126
  (227, 22700, 443, 26, NULL, 2, NULL, NULL, 26002126, NULL, 41),
  -- Skarmory - Dual Wingbeat - TM134
  (227, 22700, 814, 26, NULL, 2, NULL, NULL, 26002134, NULL, 42),
  -- Skarmory - Scale Shot - TM143
  (227, 22700, 799, 26, NULL, 2, NULL, NULL, 26002143, NULL, 43),
  -- Skarmory - Razor Wind - TM145
  (227, 22700, 13, 26, NULL, 2, NULL, NULL, 26002145, NULL, 44),
  -- Skarmory - Skull Bash - TM146
  (227, 22700, 130, 26, NULL, 2, NULL, NULL, 26002146, NULL, 45),
  -- Skarmory - Sky Attack - TM153
  (227, 22700, 143, 26, NULL, 2, NULL, NULL, 26002153, NULL, 46),
  -- Skarmory - Steel Beam - TM157
  (227, 22700, 796, 26, NULL, 2, NULL, NULL, 26002157, NULL, 47),
  -- Houndour - Leer - Level 1
  (228, 22800, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Houndour - Ember - Level 1
  (228, 22800, 52, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Houndour - Tackle - Level 6
  (228, 22800, 33, 26, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Houndour - Roar - Level 13
  (228, 22800, 46, 26, NULL, 1, 13, NULL, NULL, NULL, 4),
  -- Houndour - Bite - Level 16
  (228, 22800, 44, 26, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Houndour - Take Down - Level 24
  (228, 22800, 36, 26, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Houndour - Fire Fang - Level 28
  (228, 22800, 424, 26, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Houndour - Flamethrower - Level 44
  (228, 22800, 53, 26, NULL, 1, 44, NULL, NULL, NULL, 8),
  -- Houndour - Crunch - Level 49
  (228, 22800, 242, 26, NULL, 1, 49, NULL, NULL, NULL, 9),
  -- Houndour - Nasty Plot - Level 52
  (228, 22800, 417, 26, NULL, 1, 52, NULL, NULL, NULL, 10),
  -- Houndour - Headbutt - TM001
  (228, 22800, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 11),
  -- Houndour - Roar - TM005
  (228, 22800, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 12),
  -- Houndour - Fire Fang - TM014
  (228, 22800, 424, 26, NULL, 2, NULL, NULL, 26002014, NULL, 13),
  -- Houndour - Protect - TM017
  (228, 22800, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 14),
  -- Houndour - Crunch - TM025
  (228, 22800, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 15),
  -- Houndour - Body Slam - TM033
  (228, 22800, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 16),
  -- Houndour - Endure - TM035
  (228, 22800, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 17),
  -- Houndour - Fire Blast - TM038
  (228, 22800, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 18),
  -- Houndour - Mud Shot - TM046
  (228, 22800, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 19),
  -- Houndour - Overheat - TM050
  (228, 22800, 315, 26, NULL, 2, NULL, NULL, 26002050, NULL, 20),
  -- Houndour - Sludge Bomb - TM053
  (228, 22800, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 21),
  -- Houndour - Double-Edge - TM056
  (228, 22800, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 22),
  -- Houndour - Will-O-Wisp - TM057
  (228, 22800, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 23),
  -- Houndour - Flamethrower - TM062
  (228, 22800, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 24),
  -- Houndour - Solar Beam - TM064
  (228, 22800, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 25),
  -- Houndour - Heat Wave - TM068
  (228, 22800, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 26),
  -- Houndour - Hyper Voice - TM071
  (228, 22800, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 27),
  -- Houndour - Fire Spin - TM072
  (228, 22800, 83, 26, NULL, 2, NULL, NULL, 26002072, NULL, 28),
  -- Houndour - Shadow Ball - TM074
  (228, 22800, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 29),
  -- Houndour - Nasty Plot - TM083
  (228, 22800, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 30),
  -- Houndour - Substitute - TM085
  (228, 22800, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 31),
  -- Houndour - Dark Pulse - TM090
  (228, 22800, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 32),
  -- Houndour - Taunt - TM095
  (228, 22800, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 33),
  -- Houndour - Flare Blitz - TM104
  (228, 22800, 394, 26, NULL, 2, NULL, NULL, 26002104, NULL, 34),
  -- Houndour - Facade - TM109
  (228, 22800, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 35),
  -- Houndour - Flame Charge - TM114
  (228, 22800, 488, 26, NULL, 2, NULL, NULL, 26002114, NULL, 36),
  -- Houndour - Trailblaze - TM115
  (228, 22800, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 37),
  -- Houndour - Torment - TM121
  (228, 22800, 259, 26, NULL, 2, NULL, NULL, 26002121, NULL, 38),
  -- Houndour - Psychic Fangs - TM124
  (228, 22800, 706, 26, NULL, 2, NULL, NULL, 26002124, NULL, 39),
  -- Houndoom - Leer - Level 1
  (229, 22900, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Houndoom - Ember - Level 1
  (229, 22900, 52, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Houndoom - Nasty Plot - Level 1
  (229, 22900, 417, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Houndoom - Tackle - Level 6
  (229, 22900, 33, 26, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Houndoom - Roar - Level 13
  (229, 22900, 46, 26, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Houndoom - Bite - Level 16
  (229, 22900, 44, 26, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Houndoom - Snarl - Level 21
  (229, 22900, 555, 26, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Houndoom - Take Down - Level 24
  (229, 22900, 36, 26, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Houndoom - Fire Fang - Level 28
  (229, 22900, 424, 26, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Houndoom - Dark Pulse - Level 34
  (229, 22900, 399, 26, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Houndoom - Flamethrower - Level 44
  (229, 22900, 53, 26, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Houndoom - Crunch - Level 49
  (229, 22900, 242, 26, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Houndoom - Overheat - Level 55
  (229, 22900, 315, 26, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Houndoom - Headbutt - TM001
  (229, 22900, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 14),
  -- Houndoom - Roar - TM005
  (229, 22900, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 15),
  -- Houndoom - Toxic - TM007
  (229, 22900, 92, 26, NULL, 2, NULL, NULL, 26002007, NULL, 16),
  -- Houndoom - Fire Fang - TM014
  (229, 22900, 424, 26, NULL, 2, NULL, NULL, 26002014, NULL, 17),
  -- Houndoom - Protect - TM017
  (229, 22900, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Houndoom - Thunder Fang - TM021
  (229, 22900, 422, 26, NULL, 2, NULL, NULL, 26002021, NULL, 19),
  -- Houndoom - Crunch - TM025
  (229, 22900, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 20),
  -- Houndoom - Body Slam - TM033
  (229, 22900, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 21),
  -- Houndoom - Endure - TM035
  (229, 22900, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Houndoom - Fire Blast - TM038
  (229, 22900, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 23),
  -- Houndoom - Hyper Beam - TM044
  (229, 22900, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 24),
  -- Houndoom - Mud Shot - TM046
  (229, 22900, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 25),
  -- Houndoom - Overheat - TM050
  (229, 22900, 315, 26, NULL, 2, NULL, NULL, 26002050, NULL, 26),
  -- Houndoom - Sludge Bomb - TM053
  (229, 22900, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 27),
  -- Houndoom - Giga Impact - TM055
  (229, 22900, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 28),
  -- Houndoom - Double-Edge - TM056
  (229, 22900, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 29),
  -- Houndoom - Will-O-Wisp - TM057
  (229, 22900, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 30),
  -- Houndoom - Flamethrower - TM062
  (229, 22900, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 31),
  -- Houndoom - Solar Beam - TM064
  (229, 22900, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 32),
  -- Houndoom - Heat Wave - TM068
  (229, 22900, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 33),
  -- Houndoom - Hyper Voice - TM071
  (229, 22900, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 34),
  -- Houndoom - Fire Spin - TM072
  (229, 22900, 83, 26, NULL, 2, NULL, NULL, 26002072, NULL, 35),
  -- Houndoom - Shadow Ball - TM074
  (229, 22900, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 36),
  -- Houndoom - Nasty Plot - TM083
  (229, 22900, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 37),
  -- Houndoom - Substitute - TM085
  (229, 22900, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 38),
  -- Houndoom - Dark Pulse - TM090
  (229, 22900, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 39),
  -- Houndoom - Taunt - TM095
  (229, 22900, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 40),
  -- Houndoom - Flare Blitz - TM104
  (229, 22900, 394, 26, NULL, 2, NULL, NULL, 26002104, NULL, 41),
  -- Houndoom - Facade - TM109
  (229, 22900, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 42),
  -- Houndoom - Flame Charge - TM114
  (229, 22900, 488, 26, NULL, 2, NULL, NULL, 26002114, NULL, 43),
  -- Houndoom - Trailblaze - TM115
  (229, 22900, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 44),
  -- Houndoom - Torment - TM121
  (229, 22900, 259, 26, NULL, 2, NULL, NULL, 26002121, NULL, 45),
  -- Houndoom - Psychic Fangs - TM124
  (229, 22900, 706, 26, NULL, 2, NULL, NULL, 26002124, NULL, 46),
  -- Houndoom - Dream Eater - TM127
  (229, 22900, 138, 26, NULL, 2, NULL, NULL, 26002127, NULL, 47),
  -- Houndoom - Swagger - TM139
  (229, 22900, 207, 26, NULL, 2, NULL, NULL, 26002139, NULL, 48),
  -- Larvitar - Tackle - Level 1
  (246, 24600, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Larvitar - Leer - Level 1
  (246, 24600, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Larvitar - Rock Throw - Level 3
  (246, 24600, 88, 26, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Larvitar - Bite - Level 9
  (246, 24600, 44, 26, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Larvitar - Sand Tomb - Level 12
  (246, 24600, 328, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Larvitar - Rock Slide - Level 15
  (246, 24600, 157, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Larvitar - Screech - Level 21
  (246, 24600, 103, 26, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Larvitar - Crunch - Level 27
  (246, 24600, 242, 26, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Larvitar - Earthquake - Level 33
  (246, 24600, 89, 26, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Larvitar - Stone Edge - Level 37
  (246, 24600, 444, 26, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Larvitar - Rock Blast - Level 40
  (246, 24600, 350, 26, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Larvitar - Hyper Beam - Level 48
  (246, 24600, 63, 26, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Larvitar - Headbutt - TM001
  (246, 24600, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 13),
  -- Larvitar - Brick Break - TM010
  (246, 24600, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 14),
  -- Larvitar - Rock Slide - TM012
  (246, 24600, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 15),
  -- Larvitar - Protect - TM017
  (246, 24600, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Larvitar - Crunch - TM025
  (246, 24600, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 17),
  -- Larvitar - Dig - TM028
  (246, 24600, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 18),
  -- Larvitar - Body Slam - TM033
  (246, 24600, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 19),
  -- Larvitar - Endure - TM035
  (246, 24600, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 20),
  -- Larvitar - Rock Tomb - TM036
  (246, 24600, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 21),
  -- Larvitar - Stealth Rock - TM037
  (246, 24600, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 22),
  -- Larvitar - Hyper Beam - TM044
  (246, 24600, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 23),
  -- Larvitar - Mud Shot - TM046
  (246, 24600, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 24),
  -- Larvitar - Earth Power - TM052
  (246, 24600, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 25),
  -- Larvitar - Giga Impact - TM055
  (246, 24600, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 26),
  -- Larvitar - Double-Edge - TM056
  (246, 24600, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 27),
  -- Larvitar - Iron Head - TM058
  (246, 24600, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 28),
  -- Larvitar - Stone Edge - TM065
  (246, 24600, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 29),
  -- Larvitar - Earthquake - TM069
  (246, 24600, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 30),
  -- Larvitar - Bulldoze - TM078
  (246, 24600, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 31),
  -- Larvitar - Iron Defense - TM080
  (246, 24600, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 32),
  -- Larvitar - Substitute - TM085
  (246, 24600, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 33),
  -- Larvitar - Dark Pulse - TM090
  (246, 24600, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 34),
  -- Larvitar - Curse - TM091
  (246, 24600, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 35),
  -- Larvitar - Outrage - TM093
  (246, 24600, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 36),
  -- Larvitar - Taunt - TM095
  (246, 24600, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 37),
  -- Larvitar - Facade - TM109
  (246, 24600, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 38),
  -- Larvitar - Ancient Power - TM120
  (246, 24600, 246, 26, NULL, 2, NULL, NULL, 26002120, NULL, 39),
  -- Pupitar - Tackle - Level 1
  (247, 24700, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Pupitar - Leer - Level 1
  (247, 24700, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Pupitar - Rock Throw - Level 3
  (247, 24700, 88, 26, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Pupitar - Bite - Level 9
  (247, 24700, 44, 26, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Pupitar - Sand Tomb - Level 12
  (247, 24700, 328, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Pupitar - Rock Slide - Level 15
  (247, 24700, 157, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Pupitar - Screech - Level 21
  (247, 24700, 103, 26, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Pupitar - Crunch - Level 27
  (247, 24700, 242, 26, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Pupitar - Earthquake - Level 33
  (247, 24700, 89, 26, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Pupitar - Stone Edge - Level 37
  (247, 24700, 444, 26, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Pupitar - Rock Blast - Level 40
  (247, 24700, 350, 26, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Pupitar - Hyper Beam - Level 48
  (247, 24700, 63, 26, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Pupitar - Iron Defense - Evolution
  (247, 24700, 334, 26, NULL, 7, NULL, NULL, NULL, NULL, 13),
  -- Pupitar - Headbutt - TM001
  (247, 24700, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 14),
  -- Pupitar - Brick Break - TM010
  (247, 24700, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 15),
  -- Pupitar - Rock Slide - TM012
  (247, 24700, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 16),
  -- Pupitar - Protect - TM017
  (247, 24700, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Pupitar - Aerial Ace - TM022
  (247, 24700, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 18),
  -- Pupitar - Crunch - TM025
  (247, 24700, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 19),
  -- Pupitar - Dig - TM028
  (247, 24700, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 20),
  -- Pupitar - Body Slam - TM033
  (247, 24700, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 21),
  -- Pupitar - Endure - TM035
  (247, 24700, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Pupitar - Rock Tomb - TM036
  (247, 24700, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 23),
  -- Pupitar - Stealth Rock - TM037
  (247, 24700, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 24),
  -- Pupitar - Hyper Beam - TM044
  (247, 24700, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 25),
  -- Pupitar - Mud Shot - TM046
  (247, 24700, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 26),
  -- Pupitar - Earth Power - TM052
  (247, 24700, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 27),
  -- Pupitar - Giga Impact - TM055
  (247, 24700, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 28),
  -- Pupitar - Double-Edge - TM056
  (247, 24700, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 29),
  -- Pupitar - Iron Head - TM058
  (247, 24700, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 30),
  -- Pupitar - Stone Edge - TM065
  (247, 24700, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 31),
  -- Pupitar - Earthquake - TM069
  (247, 24700, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 32),
  -- Pupitar - Bulldoze - TM078
  (247, 24700, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 33),
  -- Pupitar - Iron Defense - TM080
  (247, 24700, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 34),
  -- Pupitar - Substitute - TM085
  (247, 24700, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 35),
  -- Pupitar - Dark Pulse - TM090
  (247, 24700, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 36),
  -- Pupitar - Curse - TM091
  (247, 24700, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 37),
  -- Pupitar - Outrage - TM093
  (247, 24700, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 38),
  -- Pupitar - Taunt - TM095
  (247, 24700, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 39),
  -- Pupitar - Facade - TM109
  (247, 24700, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 40),
  -- Pupitar - Ancient Power - TM120
  (247, 24700, 246, 26, NULL, 2, NULL, NULL, 26002120, NULL, 41),
  -- Tyranitar - Tackle - Level 1
  (248, 24800, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Tyranitar - Leer - Level 1
  (248, 24800, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Tyranitar - Rock Throw - Level 3
  (248, 24800, 88, 26, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Tyranitar - Bite - Level 9
  (248, 24800, 44, 26, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Tyranitar - Sand Tomb - Level 12
  (248, 24800, 328, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Tyranitar - Rock Slide - Level 15
  (248, 24800, 157, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Tyranitar - Screech - Level 21
  (248, 24800, 103, 26, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Tyranitar - Crunch - Level 27
  (248, 24800, 242, 26, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Tyranitar - Earthquake - Level 33
  (248, 24800, 89, 26, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Tyranitar - Stone Edge - Level 37
  (248, 24800, 444, 26, NULL, 1, 37, NULL, NULL, NULL, 10),
  -- Tyranitar - Rock Blast - Level 40
  (248, 24800, 350, 26, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Tyranitar - Hyper Beam - Level 48
  (248, 24800, 63, 26, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Tyranitar - Heavy Slam - Level 53
  (248, 24800, 484, 26, NULL, 1, 53, NULL, NULL, NULL, 13),
  -- Tyranitar - Giga Impact - Level 56
  (248, 24800, 416, 26, NULL, 1, 56, NULL, NULL, NULL, 14),
  -- Tyranitar - Headbutt - TM001
  (248, 24800, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 15),
  -- Tyranitar - Dragon Claw - TM002
  (248, 24800, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 16),
  -- Tyranitar - Roar - TM005
  (248, 24800, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 17),
  -- Tyranitar - Thunder Wave - TM008
  (248, 24800, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 18),
  -- Tyranitar - Brick Break - TM010
  (248, 24800, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 19),
  -- Tyranitar - Rock Slide - TM012
  (248, 24800, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 20),
  -- Tyranitar - Ice Beam - TM013
  (248, 24800, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 21),
  -- Tyranitar - Fire Fang - TM014
  (248, 24800, 424, 26, NULL, 2, NULL, NULL, 26002014, NULL, 22),
  -- Tyranitar - Ice Fang - TM015
  (248, 24800, 423, 26, NULL, 2, NULL, NULL, 26002015, NULL, 23),
  -- Tyranitar - Protect - TM017
  (248, 24800, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 24),
  -- Tyranitar - Power Gem - TM019
  (248, 24800, 408, 26, NULL, 2, NULL, NULL, 26002019, NULL, 25),
  -- Tyranitar - Thunder Fang - TM021
  (248, 24800, 422, 26, NULL, 2, NULL, NULL, 26002021, NULL, 26),
  -- Tyranitar - Aerial Ace - TM022
  (248, 24800, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 27),
  -- Tyranitar - Thunder Punch - TM023
  (248, 24800, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 28),
  -- Tyranitar - Ice Punch - TM024
  (248, 24800, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 29),
  -- Tyranitar - Crunch - TM025
  (248, 24800, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 30),
  -- Tyranitar - Dig - TM028
  (248, 24800, 91, 26, NULL, 2, NULL, NULL, 26002028, NULL, 31),
  -- Tyranitar - Fire Punch - TM029
  (248, 24800, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 32),
  -- Tyranitar - Body Slam - TM033
  (248, 24800, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 33),
  -- Tyranitar - Endure - TM035
  (248, 24800, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 34),
  -- Tyranitar - Rock Tomb - TM036
  (248, 24800, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 35),
  -- Tyranitar - Stealth Rock - TM037
  (248, 24800, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 36),
  -- Tyranitar - Fire Blast - TM038
  (248, 24800, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 37),
  -- Tyranitar - Hyper Beam - TM044
  (248, 24800, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 38),
  -- Tyranitar - Knock Off - TM045
  (248, 24800, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 39),
  -- Tyranitar - Mud Shot - TM046
  (248, 24800, 341, 26, NULL, 2, NULL, NULL, 26002046, NULL, 40),
  -- Tyranitar - Earth Power - TM052
  (248, 24800, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 41),
  -- Tyranitar - Giga Impact - TM055
  (248, 24800, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 42),
  -- Tyranitar - Double-Edge - TM056
  (248, 24800, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 43),
  -- Tyranitar - Iron Head - TM058
  (248, 24800, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 44),
  -- Tyranitar - Shadow Claw - TM061
  (248, 24800, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 45),
  -- Tyranitar - Flamethrower - TM062
  (248, 24800, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 46),
  -- Tyranitar - Stone Edge - TM065
  (248, 24800, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 47),
  -- Tyranitar - Thunderbolt - TM067
  (248, 24800, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 48),
  -- Tyranitar - Earthquake - TM069
  (248, 24800, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 49),
  -- Tyranitar - Dragon Pulse - TM075
  (248, 24800, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 50),
  -- Tyranitar - Bulldoze - TM078
  (248, 24800, 523, 26, NULL, 2, NULL, NULL, 26002078, NULL, 51),
  -- Tyranitar - Iron Defense - TM080
  (248, 24800, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 52),
  -- Tyranitar - Substitute - TM085
  (248, 24800, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 53),
  -- Tyranitar - Dark Pulse - TM090
  (248, 24800, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 54),
  -- Tyranitar - Curse - TM091
  (248, 24800, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 55),
  -- Tyranitar - Outrage - TM093
  (248, 24800, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 56),
  -- Tyranitar - Taunt - TM095
  (248, 24800, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 57),
  -- Tyranitar - Hydro Pump - TM096
  (248, 24800, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 58),
  -- Tyranitar - Blizzard - TM105
  (248, 24800, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 59),
  -- Tyranitar - Thunder - TM106
  (248, 24800, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 60),
  -- Tyranitar - Facade - TM109
  (248, 24800, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 61),
  -- Tyranitar - Ancient Power - TM120
  (248, 24800, 246, 26, NULL, 2, NULL, NULL, 26002120, NULL, 62),
  -- Tyranitar - Scorching Sands - TM136
  (248, 24800, 815, 26, NULL, 2, NULL, NULL, 26002136, NULL, 63),
  -- Tyranitar - Swagger - TM139
  (248, 24800, 207, 26, NULL, 2, NULL, NULL, 26002139, NULL, 64),
  -- Tyranitar - Muddy Water - TM140
  (248, 24800, 330, 26, NULL, 2, NULL, NULL, 26002140, NULL, 65),
  -- Tyranitar - Scale Shot - TM143
  (248, 24800, 799, 26, NULL, 2, NULL, NULL, 26002143, NULL, 66);
