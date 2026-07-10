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
-- Mega Dimension learnset delta rows for species 851-900.
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
  -- Clobbopus - Leer - Level 1
  (852, 85200, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Clobbopus - Rock Smash - Level 1
  (852, 85200, 249, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Clobbopus - Power-Up Punch - Level 10
  (852, 85200, 612, 27, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Clobbopus - Bullet Punch - Level 12
  (852, 85200, 418, 27, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Clobbopus - Detect - Level 15
  (852, 85200, 197, 27, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Clobbopus - Mach Punch - Level 18
  (852, 85200, 183, 27, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Clobbopus - Circle Throw - Level 20
  (852, 85200, 509, 27, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Clobbopus - Brick Break - Level 24
  (852, 85200, 280, 27, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Clobbopus - Bulk Up - Level 28
  (852, 85200, 339, 27, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Clobbopus - Knock Off - Level 30
  (852, 85200, 282, 27, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Clobbopus - Double Hit - Level 32
  (852, 85200, 458, 27, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Clobbopus - Taunt - Level 35
  (852, 85200, 269, 27, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Clobbopus - Close Combat - Level 46
  (852, 85200, 370, 27, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Clobbopus - Rock Smash - TM004
  (852, 85200, 249, 27, NULL, 2, NULL, NULL, 26002004, NULL, 14),
  -- Clobbopus - Brick Break - TM010
  (852, 85200, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 15),
  -- Clobbopus - Bulk Up - TM011
  (852, 85200, 339, 27, NULL, 2, NULL, NULL, 26002011, NULL, 16),
  -- Clobbopus - Protect - TM017
  (852, 85200, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Clobbopus - Power-Up Punch - TM018
  (852, 85200, 612, 27, NULL, 2, NULL, NULL, 26002018, NULL, 18),
  -- Clobbopus - Ice Punch - TM024
  (852, 85200, 8, 27, NULL, 2, NULL, NULL, 26002024, NULL, 19),
  -- Clobbopus - Body Slam - TM033
  (852, 85200, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 20),
  -- Clobbopus - Endure - TM035
  (852, 85200, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 21),
  -- Clobbopus - Knock Off - TM045
  (852, 85200, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 22),
  -- Clobbopus - Mud Shot - TM046
  (852, 85200, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 23),
  -- Clobbopus - Whirlpool - TM070
  (852, 85200, 250, 27, NULL, 2, NULL, NULL, 26002070, NULL, 24),
  -- Clobbopus - Liquidation - TM076
  (852, 85200, 710, 27, NULL, 2, NULL, NULL, 26002076, NULL, 25),
  -- Clobbopus - Substitute - TM085
  (852, 85200, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 26),
  -- Clobbopus - Taunt - TM095
  (852, 85200, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 27),
  -- Clobbopus - Waterfall - TM098
  (852, 85200, 127, 27, NULL, 2, NULL, NULL, 26002098, NULL, 28),
  -- Clobbopus - Focus Blast - TM102
  (852, 85200, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 29),
  -- Clobbopus - Work Up - TM103
  (852, 85200, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 30),
  -- Clobbopus - Close Combat - TM107
  (852, 85200, 370, 27, NULL, 2, NULL, NULL, 26002107, NULL, 31),
  -- Clobbopus - Comet Punch - TM108
  (852, 85200, 4, 27, NULL, 2, NULL, NULL, 26002108, NULL, 32),
  -- Clobbopus - Facade - TM109
  (852, 85200, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 33),
  -- Clobbopus - Chilling Water - TM110
  (852, 85200, 886, 27, NULL, 2, NULL, NULL, 26002110, NULL, 34),
  -- Clobbopus - Circle Throw - TM129
  (852, 85200, 509, 27, NULL, 2, NULL, NULL, 26002129, NULL, 35),
  -- Clobbopus - Drain Punch - TM131
  (852, 85200, 409, 27, NULL, 2, NULL, NULL, 26002131, NULL, 36),
  -- Clobbopus - Double Hit - TM132
  (852, 85200, 458, 27, NULL, 2, NULL, NULL, 26002132, NULL, 37),
  -- Clobbopus - Dual Chop - TM135
  (852, 85200, 530, 27, NULL, 2, NULL, NULL, 26002135, NULL, 38),
  -- Clobbopus - Storm Throw - TM137
  (852, 85200, 480, 27, NULL, 2, NULL, NULL, 26002137, NULL, 39),
  -- Clobbopus - Muddy Water - TM140
  (852, 85200, 330, 27, NULL, 2, NULL, NULL, 26002140, NULL, 40),
  -- Clobbopus - Vacuum Wave - TM150
  (852, 85200, 410, 27, NULL, 2, NULL, NULL, 26002150, NULL, 41),
  -- Grapploct - Leer - Level 1
  (853, 85300, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grapploct - Rock Smash - Level 1
  (853, 85300, 249, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grapploct - Power-Up Punch - Level 10
  (853, 85300, 612, 27, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Grapploct - Bullet Punch - Level 12
  (853, 85300, 418, 27, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Grapploct - Detect - Level 15
  (853, 85300, 197, 27, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Grapploct - Mach Punch - Level 18
  (853, 85300, 183, 27, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Grapploct - Circle Throw - Level 20
  (853, 85300, 509, 27, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Grapploct - Brick Break - Level 24
  (853, 85300, 280, 27, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Grapploct - Bulk Up - Level 28
  (853, 85300, 339, 27, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Grapploct - Knock Off - Level 30
  (853, 85300, 282, 27, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Grapploct - Double Hit - Level 32
  (853, 85300, 458, 27, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Grapploct - Taunt - Level 35
  (853, 85300, 269, 27, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Grapploct - Close Combat - Level 46
  (853, 85300, 370, 27, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Grapploct - Topsy-Turvy - Level 53
  (853, 85300, 576, 27, NULL, 1, 53, NULL, NULL, NULL, 14),
  -- Grapploct - Octolock - Evolution
  (853, 85300, 753, 27, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Grapploct - Rock Smash - TM004
  (853, 85300, 249, 27, NULL, 2, NULL, NULL, 26002004, NULL, 16),
  -- Grapploct - Brick Break - TM010
  (853, 85300, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 17),
  -- Grapploct - Bulk Up - TM011
  (853, 85300, 339, 27, NULL, 2, NULL, NULL, 26002011, NULL, 18),
  -- Grapploct - Protect - TM017
  (853, 85300, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Grapploct - Power-Up Punch - TM018
  (853, 85300, 612, 27, NULL, 2, NULL, NULL, 26002018, NULL, 20),
  -- Grapploct - Ice Punch - TM024
  (853, 85300, 8, 27, NULL, 2, NULL, NULL, 26002024, NULL, 21),
  -- Grapploct - Dig - TM028
  (853, 85300, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 22),
  -- Grapploct - Body Slam - TM033
  (853, 85300, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 23),
  -- Grapploct - Endure - TM035
  (853, 85300, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 24),
  -- Grapploct - Hyper Beam - TM044
  (853, 85300, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 25),
  -- Grapploct - Knock Off - TM045
  (853, 85300, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 26),
  -- Grapploct - Mud Shot - TM046
  (853, 85300, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 27),
  -- Grapploct - Giga Impact - TM055
  (853, 85300, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 28),
  -- Grapploct - Whirlpool - TM070
  (853, 85300, 250, 27, NULL, 2, NULL, NULL, 26002070, NULL, 29),
  -- Grapploct - Surf - TM073
  (853, 85300, 57, 27, NULL, 2, NULL, NULL, 26002073, NULL, 30),
  -- Grapploct - Liquidation - TM076
  (853, 85300, 710, 27, NULL, 2, NULL, NULL, 26002076, NULL, 31),
  -- Grapploct - Substitute - TM085
  (853, 85300, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 32),
  -- Grapploct - Taunt - TM095
  (853, 85300, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 33),
  -- Grapploct - Hydro Pump - TM096
  (853, 85300, 56, 27, NULL, 2, NULL, NULL, 26002096, NULL, 34),
  -- Grapploct - Waterfall - TM098
  (853, 85300, 127, 27, NULL, 2, NULL, NULL, 26002098, NULL, 35),
  -- Grapploct - Focus Blast - TM102
  (853, 85300, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 36),
  -- Grapploct - Work Up - TM103
  (853, 85300, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 37),
  -- Grapploct - Close Combat - TM107
  (853, 85300, 370, 27, NULL, 2, NULL, NULL, 26002107, NULL, 38),
  -- Grapploct - Comet Punch - TM108
  (853, 85300, 4, 27, NULL, 2, NULL, NULL, 26002108, NULL, 39),
  -- Grapploct - Facade - TM109
  (853, 85300, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 40),
  -- Grapploct - Chilling Water - TM110
  (853, 85300, 886, 27, NULL, 2, NULL, NULL, 26002110, NULL, 41),
  -- Grapploct - Circle Throw - TM129
  (853, 85300, 509, 27, NULL, 2, NULL, NULL, 26002129, NULL, 42),
  -- Grapploct - Drain Punch - TM131
  (853, 85300, 409, 27, NULL, 2, NULL, NULL, 26002131, NULL, 43),
  -- Grapploct - Double Hit - TM132
  (853, 85300, 458, 27, NULL, 2, NULL, NULL, 26002132, NULL, 44),
  -- Grapploct - Dual Chop - TM135
  (853, 85300, 530, 27, NULL, 2, NULL, NULL, 26002135, NULL, 45),
  -- Grapploct - Storm Throw - TM137
  (853, 85300, 480, 27, NULL, 2, NULL, NULL, 26002137, NULL, 46),
  -- Grapploct - Muddy Water - TM140
  (853, 85300, 330, 27, NULL, 2, NULL, NULL, 26002140, NULL, 47),
  -- Grapploct - Vacuum Wave - TM150
  (853, 85300, 410, 27, NULL, 2, NULL, NULL, 26002150, NULL, 48),
  -- Perrserker - Pay Day - Level 1
  (863, 86300, 6, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Perrserker - Growl - Level 1
  (863, 86300, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Perrserker - Tail Whip - Level 6
  (863, 86300, 39, 27, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Perrserker - Bite - Level 10
  (863, 86300, 44, 27, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Perrserker - Taunt - Level 13
  (863, 86300, 269, 27, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Perrserker - Metal Claw - Level 15
  (863, 86300, 232, 27, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Perrserker - Screech - Level 17
  (863, 86300, 103, 27, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Perrserker - Slash - Level 22
  (863, 86300, 163, 27, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Perrserker - Nasty Plot - Level 27
  (863, 86300, 417, 27, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Perrserker - Hypnosis - Level 30
  (863, 86300, 95, 27, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Perrserker - Take Down - Level 34
  (863, 86300, 36, 27, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Perrserker - Charm - Level 37
  (863, 86300, 204, 27, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Perrserker - Metal Sound - Level 40
  (863, 86300, 319, 27, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Perrserker - Mimic - Level 44
  (863, 86300, 102, 27, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Perrserker - Outrage - Level 48
  (863, 86300, 200, 27, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Perrserker - Iron Head - Evolution
  (863, 86300, 442, 27, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Perrserker - Headbutt - TM001
  (863, 86300, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 17),
  -- Perrserker - Thunder Wave - TM008
  (863, 86300, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 18),
  -- Perrserker - Brick Break - TM010
  (863, 86300, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 19),
  -- Perrserker - Bulk Up - TM011
  (863, 86300, 339, 27, NULL, 2, NULL, NULL, 26002011, NULL, 20),
  -- Perrserker - Protect - TM017
  (863, 86300, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 21),
  -- Perrserker - Play Rough - TM020
  (863, 86300, 583, 27, NULL, 2, NULL, NULL, 26002020, NULL, 22),
  -- Perrserker - Aerial Ace - TM022
  (863, 86300, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 23),
  -- Perrserker - Crunch - TM025
  (863, 86300, 242, 27, NULL, 2, NULL, NULL, 26002025, NULL, 24),
  -- Perrserker - Swift - TM027
  (863, 86300, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 25),
  -- Perrserker - Dig - TM028
  (863, 86300, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 26),
  -- Perrserker - Swords Dance - TM030
  (863, 86300, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 27),
  -- Perrserker - Body Slam - TM033
  (863, 86300, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 28),
  -- Perrserker - Night Slash - TM034
  (863, 86300, 400, 27, NULL, 2, NULL, NULL, 26002034, NULL, 29),
  -- Perrserker - Endure - TM035
  (863, 86300, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 30),
  -- Perrserker - Stealth Rock - TM037
  (863, 86300, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 31),
  -- Perrserker - Water Pulse - TM041
  (863, 86300, 352, 27, NULL, 2, NULL, NULL, 26002041, NULL, 32),
  -- Perrserker - Hyper Beam - TM044
  (863, 86300, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 33),
  -- Perrserker - Knock Off - TM045
  (863, 86300, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 34),
  -- Perrserker - Icy Wind - TM049
  (863, 86300, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 35),
  -- Perrserker - Giga Impact - TM055
  (863, 86300, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 36),
  -- Perrserker - Double-Edge - TM056
  (863, 86300, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 37),
  -- Perrserker - Iron Head - TM058
  (863, 86300, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 38),
  -- Perrserker - Shadow Claw - TM061
  (863, 86300, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 39),
  -- Perrserker - Thunderbolt - TM067
  (863, 86300, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 40),
  -- Perrserker - Hyper Voice - TM071
  (863, 86300, 304, 27, NULL, 2, NULL, NULL, 26002071, NULL, 41),
  -- Perrserker - Shadow Ball - TM074
  (863, 86300, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 42),
  -- Perrserker - Liquidation - TM076
  (863, 86300, 710, 27, NULL, 2, NULL, NULL, 26002076, NULL, 43),
  -- Perrserker - Iron Defense - TM080
  (863, 86300, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 44),
  -- Perrserker - X-Scissor - TM081
  (863, 86300, 404, 27, NULL, 2, NULL, NULL, 26002081, NULL, 45),
  -- Perrserker - U-turn - TM082
  (863, 86300, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 46),
  -- Perrserker - Nasty Plot - TM083
  (863, 86300, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 47),
  -- Perrserker - Flash Cannon - TM084
  (863, 86300, 430, 27, NULL, 2, NULL, NULL, 26002084, NULL, 48),
  -- Perrserker - Substitute - TM085
  (863, 86300, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 49),
  -- Perrserker - Iron Tail - TM087
  (863, 86300, 231, 27, NULL, 2, NULL, NULL, 26002087, NULL, 50),
  -- Perrserker - Spikes - TM088
  (863, 86300, 191, 27, NULL, 2, NULL, NULL, 26002088, NULL, 51),
  -- Perrserker - Dark Pulse - TM090
  (863, 86300, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 52),
  -- Perrserker - Curse - TM091
  (863, 86300, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 53),
  -- Perrserker - Outrage - TM093
  (863, 86300, 200, 27, NULL, 2, NULL, NULL, 26002093, NULL, 54),
  -- Perrserker - Taunt - TM095
  (863, 86300, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 55),
  -- Perrserker - Heal Block - TM097
  (863, 86300, 377, 27, NULL, 2, NULL, NULL, 26002097, NULL, 56),
  -- Perrserker - Metronome - TM099
  (863, 86300, 118, 27, NULL, 2, NULL, NULL, 26002099, NULL, 57),
  -- Perrserker - Gunk Shot - TM100
  (863, 86300, 441, 27, NULL, 2, NULL, NULL, 26002100, NULL, 58),
  -- Perrserker - Work Up - TM103
  (863, 86300, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 59),
  -- Perrserker - Thunder - TM106
  (863, 86300, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 60),
  -- Perrserker - Close Combat - TM107
  (863, 86300, 370, 27, NULL, 2, NULL, NULL, 26002107, NULL, 61),
  -- Perrserker - Facade - TM109
  (863, 86300, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 62),
  -- Perrserker - Chilling Water - TM110
  (863, 86300, 886, 27, NULL, 2, NULL, NULL, 26002110, NULL, 63),
  -- Perrserker - Trailblaze - TM115
  (863, 86300, 885, 27, NULL, 2, NULL, NULL, 26002115, NULL, 64),
  -- Perrserker - Pay Day - TM116
  (863, 86300, 6, 27, NULL, 2, NULL, NULL, 26002116, NULL, 65),
  -- Perrserker - False Swipe - TM122
  (863, 86300, 206, 27, NULL, 2, NULL, NULL, 26002122, NULL, 66),
  -- Perrserker - Mimic - TM125
  (863, 86300, 102, 27, NULL, 2, NULL, NULL, 26002125, NULL, 67),
  -- Perrserker - Seed Bomb - TM128
  (863, 86300, 402, 27, NULL, 2, NULL, NULL, 26002128, NULL, 68),
  -- Perrserker - Dual Chop - TM135
  (863, 86300, 530, 27, NULL, 2, NULL, NULL, 26002135, NULL, 69),
  -- Perrserker - Swagger - TM139
  (863, 86300, 207, 27, NULL, 2, NULL, NULL, 26002139, NULL, 70),
  -- Perrserker - Fake Out - TM141
  (863, 86300, 252, 27, NULL, 2, NULL, NULL, 26002141, NULL, 71),
  -- Perrserker - Skull Bash - TM146
  (863, 86300, 130, 27, NULL, 2, NULL, NULL, 26002146, NULL, 72),
  -- Perrserker - Steel Beam - TM157
  (863, 86300, 796, 27, NULL, 2, NULL, NULL, 26002157, NULL, 73),
  -- Sirfetch'd - Leer - Level 1
  (865, 86500, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sirfetch'd - Peck - Level 1
  (865, 86500, 64, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sirfetch'd - Detect - Level 1
  (865, 86500, 197, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Sirfetch'd - Rock Smash - Level 10
  (865, 86500, 249, 27, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Sirfetch'd - Steel Wing - Level 12
  (865, 86500, 211, 27, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Sirfetch'd - Aerial Ace - Level 16
  (865, 86500, 332, 27, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Sirfetch'd - Knock Off - Level 20
  (865, 86500, 282, 27, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Sirfetch'd - Quick Attack - Level 22
  (865, 86500, 98, 27, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Sirfetch'd - Brutal Swing - Level 24
  (865, 86500, 693, 27, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Sirfetch'd - False Swipe - Level 25
  (865, 86500, 206, 27, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Sirfetch'd - Focus Energy - Level 27
  (865, 86500, 116, 27, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Sirfetch'd - Slash - Level 30
  (865, 86500, 163, 27, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Sirfetch'd - Swords Dance - Level 34
  (865, 86500, 14, 27, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Sirfetch'd - Feather Dance - Level 36
  (865, 86500, 297, 27, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Sirfetch'd - Brick Break - Level 40
  (865, 86500, 280, 27, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Sirfetch'd - Leaf Blade - Level 42
  (865, 86500, 348, 27, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Sirfetch'd - Agility - Level 47
  (865, 86500, 97, 27, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Sirfetch'd - Brave Bird - Level 55
  (865, 86500, 413, 27, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Sirfetch'd - Meteor Assault - Level 60
  (865, 86500, 794, 27, NULL, 1, 60, NULL, NULL, NULL, 19),
  -- Sirfetch'd - Iron Defense - Evolution
  (865, 86500, 334, 27, NULL, 7, NULL, NULL, NULL, NULL, 20),
  -- Sirfetch'd - Rock Smash - TM004
  (865, 86500, 249, 27, NULL, 2, NULL, NULL, 26002004, NULL, 21),
  -- Sirfetch'd - Brick Break - TM010
  (865, 86500, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 22),
  -- Sirfetch'd - Protect - TM017
  (865, 86500, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 23),
  -- Sirfetch'd - Aerial Ace - TM022
  (865, 86500, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 24),
  -- Sirfetch'd - Swift - TM027
  (865, 86500, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 25),
  -- Sirfetch'd - Swords Dance - TM030
  (865, 86500, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 26),
  -- Sirfetch'd - Body Slam - TM033
  (865, 86500, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 27),
  -- Sirfetch'd - Night Slash - TM034
  (865, 86500, 400, 27, NULL, 2, NULL, NULL, 26002034, NULL, 28),
  -- Sirfetch'd - Endure - TM035
  (865, 86500, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 29),
  -- Sirfetch'd - Fly - TM043
  (865, 86500, 19, 27, NULL, 2, NULL, NULL, 26002043, NULL, 30),
  -- Sirfetch'd - Knock Off - TM045
  (865, 86500, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 31),
  -- Sirfetch'd - Agility - TM047
  (865, 86500, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 32),
  -- Sirfetch'd - Double-Edge - TM056
  (865, 86500, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 33),
  -- Sirfetch'd - Poison Jab - TM077
  (865, 86500, 398, 27, NULL, 2, NULL, NULL, 26002077, NULL, 34),
  -- Sirfetch'd - Iron Defense - TM080
  (865, 86500, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 35),
  -- Sirfetch'd - U-turn - TM082
  (865, 86500, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 36),
  -- Sirfetch'd - Substitute - TM085
  (865, 86500, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 37),
  -- Sirfetch'd - Iron Tail - TM087
  (865, 86500, 231, 27, NULL, 2, NULL, NULL, 26002087, NULL, 38),
  -- Sirfetch'd - Curse - TM091
  (865, 86500, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 39),
  -- Sirfetch'd - Work Up - TM103
  (865, 86500, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 40),
  -- Sirfetch'd - Close Combat - TM107
  (865, 86500, 370, 27, NULL, 2, NULL, NULL, 26002107, NULL, 41),
  -- Sirfetch'd - Facade - TM109
  (865, 86500, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 42),
  -- Sirfetch'd - False Swipe - TM122
  (865, 86500, 206, 27, NULL, 2, NULL, NULL, 26002122, NULL, 43),
  -- Sirfetch'd - Dual Wingbeat - TM134
  (865, 86500, 814, 27, NULL, 2, NULL, NULL, 26002134, NULL, 44),
  -- Sirfetch'd - First Impression - TM142
  (865, 86500, 660, 27, NULL, 2, NULL, NULL, 26002142, NULL, 45),
  -- Sirfetch'd - Razor Wind - TM145
  (865, 86500, 13, 27, NULL, 2, NULL, NULL, 26002145, NULL, 46),
  -- Sirfetch'd - Skull Bash - TM146
  (865, 86500, 130, 27, NULL, 2, NULL, NULL, 26002146, NULL, 47),
  -- Sirfetch'd - Vacuum Wave - TM150
  (865, 86500, 410, 27, NULL, 2, NULL, NULL, 26002150, NULL, 48),
  -- Sirfetch'd - Solar Blade - TM152
  (865, 86500, 669, 27, NULL, 2, NULL, NULL, 26002152, NULL, 49),
  -- Sirfetch'd - Sky Attack - TM153
  (865, 86500, 143, 27, NULL, 2, NULL, NULL, 26002153, NULL, 50),
  -- Mr. Rime - Tackle - Level 1
  (866, 86600, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mr. Rime - Hypnosis - Level 1
  (866, 86600, 95, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mr. Rime - Confuse Ray - Level 1
  (866, 86600, 109, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mr. Rime - Ice Shard - Level 1
  (866, 86600, 420, 27, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Mr. Rime - Charm - Level 8
  (866, 86600, 204, 27, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Mr. Rime - Confusion - Level 12
  (866, 86600, 93, 27, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Mr. Rime - Dream Eater - Level 15
  (866, 86600, 138, 27, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Mr. Rime - Infestation - Level 17
  (866, 86600, 611, 27, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Mr. Rime - Protect - Level 20
  (866, 86600, 182, 27, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Mr. Rime - Stealth Rock - Level 24
  (866, 86600, 446, 27, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Mr. Rime - Psybeam - Level 28
  (866, 86600, 60, 27, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Mr. Rime - Mimic - Level 32
  (866, 86600, 102, 27, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Mr. Rime - Light Screen - Level 36
  (866, 86600, 113, 27, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Mr. Rime - Reflect - Level 36
  (866, 86600, 115, 27, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Mr. Rime - Safeguard - Level 36
  (866, 86600, 219, 27, NULL, 1, 36, NULL, NULL, NULL, 15),
  -- Mr. Rime - Freeze-Dry - Level 40
  (866, 86600, 573, 27, NULL, 1, 40, NULL, NULL, NULL, 16),
  -- Mr. Rime - Dazzling Gleam - Level 44
  (866, 86600, 605, 27, NULL, 1, 44, NULL, NULL, NULL, 17),
  -- Mr. Rime - Psychic - Level 48
  (866, 86600, 94, 27, NULL, 1, 48, NULL, NULL, NULL, 18),
  -- Mr. Rime - Headbutt - TM001
  (866, 86600, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 19),
  -- Mr. Rime - Psyshock - TM003
  (866, 86600, 473, 27, NULL, 2, NULL, NULL, 26002003, NULL, 20),
  -- Mr. Rime - Calm Mind - TM006
  (866, 86600, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 21),
  -- Mr. Rime - Thunder Wave - TM008
  (866, 86600, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 22),
  -- Mr. Rime - Brick Break - TM010
  (866, 86600, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 23),
  -- Mr. Rime - Ice Beam - TM013
  (866, 86600, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 24),
  -- Mr. Rime - Light Screen - TM016
  (866, 86600, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 25),
  -- Mr. Rime - Protect - TM017
  (866, 86600, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 26),
  -- Mr. Rime - Thunder Punch - TM023
  (866, 86600, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 27),
  -- Mr. Rime - Ice Punch - TM024
  (866, 86600, 8, 27, NULL, 2, NULL, NULL, 26002024, NULL, 28),
  -- Mr. Rime - Energy Ball - TM026
  (866, 86600, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 29),
  -- Mr. Rime - Reflect - TM031
  (866, 86600, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 30),
  -- Mr. Rime - Body Slam - TM033
  (866, 86600, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 31),
  -- Mr. Rime - Endure - TM035
  (866, 86600, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 32),
  -- Mr. Rime - Stealth Rock - TM037
  (866, 86600, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 33),
  -- Mr. Rime - Hyper Beam - TM044
  (866, 86600, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 34),
  -- Mr. Rime - Icy Wind - TM049
  (866, 86600, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 35),
  -- Mr. Rime - Safeguard - TM051
  (866, 86600, 219, 27, NULL, 2, NULL, NULL, 26002051, NULL, 36),
  -- Mr. Rime - Giga Impact - TM055
  (866, 86600, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 37),
  -- Mr. Rime - Zen Headbutt - TM059
  (866, 86600, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 38),
  -- Mr. Rime - Future Sight - TM060
  (866, 86600, 248, 27, NULL, 2, NULL, NULL, 26002060, NULL, 39),
  -- Mr. Rime - Psychic - TM063
  (866, 86600, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 40),
  -- Mr. Rime - Solar Beam - TM064
  (866, 86600, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 41),
  -- Mr. Rime - Thunderbolt - TM067
  (866, 86600, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 42),
  -- Mr. Rime - Shadow Ball - TM074
  (866, 86600, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 43),
  -- Mr. Rime - Iron Defense - TM080
  (866, 86600, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 44),
  -- Mr. Rime - Nasty Plot - TM083
  (866, 86600, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 45),
  -- Mr. Rime - Substitute - TM085
  (866, 86600, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 46),
  -- Mr. Rime - Dazzling Gleam - TM092
  (866, 86600, 605, 27, NULL, 2, NULL, NULL, 26002092, NULL, 47),
  -- Mr. Rime - Taunt - TM095
  (866, 86600, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 48),
  -- Mr. Rime - Heal Block - TM097
  (866, 86600, 377, 27, NULL, 2, NULL, NULL, 26002097, NULL, 49),
  -- Mr. Rime - Metronome - TM099
  (866, 86600, 118, 27, NULL, 2, NULL, NULL, 26002099, NULL, 50),
  -- Mr. Rime - Focus Blast - TM102
  (866, 86600, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 51),
  -- Mr. Rime - Blizzard - TM105
  (866, 86600, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 52),
  -- Mr. Rime - Thunder - TM106
  (866, 86600, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 53),
  -- Mr. Rime - Comet Punch - TM108
  (866, 86600, 4, 27, NULL, 2, NULL, NULL, 26002108, NULL, 54),
  -- Mr. Rime - Facade - TM109
  (866, 86600, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 55),
  -- Mr. Rime - Chilling Water - TM110
  (866, 86600, 886, 27, NULL, 2, NULL, NULL, 26002110, NULL, 56),
  -- Mr. Rime - Torment - TM121
  (866, 86600, 259, 27, NULL, 2, NULL, NULL, 26002121, NULL, 57),
  -- Mr. Rime - Mimic - TM125
  (866, 86600, 102, 27, NULL, 2, NULL, NULL, 26002125, NULL, 58),
  -- Mr. Rime - Magnet Bomb - TM126
  (866, 86600, 443, 27, NULL, 2, NULL, NULL, 26002126, NULL, 59),
  -- Mr. Rime - Dream Eater - TM127
  (866, 86600, 138, 27, NULL, 2, NULL, NULL, 26002127, NULL, 60),
  -- Mr. Rime - Charge Beam - TM130
  (866, 86600, 451, 27, NULL, 2, NULL, NULL, 26002130, NULL, 61),
  -- Mr. Rime - Drain Punch - TM131
  (866, 86600, 409, 27, NULL, 2, NULL, NULL, 26002131, NULL, 62),
  -- Mr. Rime - Frost Breath - TM138
  (866, 86600, 524, 27, NULL, 2, NULL, NULL, 26002138, NULL, 63),
  -- Mr. Rime - Swagger - TM139
  (866, 86600, 207, 27, NULL, 2, NULL, NULL, 26002139, NULL, 64),
  -- Mr. Rime - Fake Out - TM141
  (866, 86600, 252, 27, NULL, 2, NULL, NULL, 26002141, NULL, 65),
  -- Mr. Rime - First Impression - TM142
  (866, 86600, 660, 27, NULL, 2, NULL, NULL, 26002142, NULL, 66),
  -- Mr. Rime - Triple Axel - TM144
  (866, 86600, 813, 27, NULL, 2, NULL, NULL, 26002144, NULL, 67),
  -- Mr. Rime - Icicle Spear - TM149
  (866, 86600, 333, 27, NULL, 2, NULL, NULL, 26002149, NULL, 68),
  -- Mr. Rime - Sheer Cold - TM155
  (866, 86600, 329, 27, NULL, 2, NULL, NULL, 26002155, NULL, 69),
  -- Runerigus - Confusion - Level 1
  (867, 86700, 93, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Runerigus - Protect - Level 1
  (867, 86700, 182, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Runerigus - Sand Tomb - Level 1
  (867, 86700, 328, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Runerigus - Haze - Level 4
  (867, 86700, 114, 27, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Runerigus - Confuse Ray - Level 8
  (867, 86700, 109, 27, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Runerigus - Rock Tomb - Level 10
  (867, 86700, 317, 27, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Runerigus - Fake Tears - Level 12
  (867, 86700, 313, 27, NULL, 1, 12, NULL, NULL, NULL, 7),
  -- Runerigus - Brutal Swing - Level 16
  (867, 86700, 693, 27, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Runerigus - Rock Blast - Level 20
  (867, 86700, 350, 27, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Runerigus - Infestation - Level 22
  (867, 86700, 611, 27, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Runerigus - Psyshock - Level 30
  (867, 86700, 473, 27, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Runerigus - Curse - Level 36
  (867, 86700, 174, 27, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Runerigus - Shadow Ball - Level 40
  (867, 86700, 247, 27, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Runerigus - Earthquake - Level 44
  (867, 86700, 89, 27, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Runerigus - Phantom Force - Level 46
  (867, 86700, 566, 27, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Runerigus - Parting Shot - Level 48
  (867, 86700, 575, 27, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Runerigus - Shadow Claw - Evolution
  (867, 86700, 421, 27, NULL, 7, NULL, NULL, NULL, NULL, 17),
  -- Runerigus - Psyshock - TM003
  (867, 86700, 473, 27, NULL, 2, NULL, NULL, 26002003, NULL, 18),
  -- Runerigus - Calm Mind - TM006
  (867, 86700, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 19),
  -- Runerigus - Thunder Wave - TM008
  (867, 86700, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 20),
  -- Runerigus - Rock Slide - TM012
  (867, 86700, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 21),
  -- Runerigus - Protect - TM017
  (867, 86700, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 22),
  -- Runerigus - Energy Ball - TM026
  (867, 86700, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 23),
  -- Runerigus - Endure - TM035
  (867, 86700, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 24),
  -- Runerigus - Rock Tomb - TM036
  (867, 86700, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 25),
  -- Runerigus - Stealth Rock - TM037
  (867, 86700, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 26),
  -- Runerigus - Giga Drain - TM042
  (867, 86700, 202, 27, NULL, 2, NULL, NULL, 26002042, NULL, 27),
  -- Runerigus - Hyper Beam - TM044
  (867, 86700, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 28),
  -- Runerigus - Knock Off - TM045
  (867, 86700, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 29),
  -- Runerigus - Mud Shot - TM046
  (867, 86700, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 30),
  -- Runerigus - Self-Destruct - TM048
  (867, 86700, 120, 27, NULL, 2, NULL, NULL, 26002048, NULL, 31),
  -- Runerigus - Icy Wind - TM049
  (867, 86700, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 32),
  -- Runerigus - Safeguard - TM051
  (867, 86700, 219, 27, NULL, 2, NULL, NULL, 26002051, NULL, 33),
  -- Runerigus - Earth Power - TM052
  (867, 86700, 414, 27, NULL, 2, NULL, NULL, 26002052, NULL, 34),
  -- Runerigus - Giga Impact - TM055
  (867, 86700, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 35),
  -- Runerigus - Will-O-Wisp - TM057
  (867, 86700, 261, 27, NULL, 2, NULL, NULL, 26002057, NULL, 36),
  -- Runerigus - Zen Headbutt - TM059
  (867, 86700, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 37),
  -- Runerigus - Shadow Claw - TM061
  (867, 86700, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 38),
  -- Runerigus - Psychic - TM063
  (867, 86700, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 39),
  -- Runerigus - Stone Edge - TM065
  (867, 86700, 444, 27, NULL, 2, NULL, NULL, 26002065, NULL, 40),
  -- Runerigus - Earthquake - TM069
  (867, 86700, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 41),
  -- Runerigus - Shadow Ball - TM074
  (867, 86700, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 42),
  -- Runerigus - Dragon Pulse - TM075
  (867, 86700, 406, 27, NULL, 2, NULL, NULL, 26002075, NULL, 43),
  -- Runerigus - Bulldoze - TM078
  (867, 86700, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 44),
  -- Runerigus - Iron Defense - TM080
  (867, 86700, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 45),
  -- Runerigus - Nasty Plot - TM083
  (867, 86700, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 46),
  -- Runerigus - Substitute - TM085
  (867, 86700, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 47),
  -- Runerigus - Toxic Spikes - TM089
  (867, 86700, 390, 27, NULL, 2, NULL, NULL, 26002089, NULL, 48),
  -- Runerigus - Dark Pulse - TM090
  (867, 86700, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 49),
  -- Runerigus - Curse - TM091
  (867, 86700, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 50),
  -- Runerigus - Taunt - TM095
  (867, 86700, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 51),
  -- Runerigus - Heal Block - TM097
  (867, 86700, 377, 27, NULL, 2, NULL, NULL, 26002097, NULL, 52),
  -- Runerigus - Facade - TM109
  (867, 86700, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 53),
  -- Runerigus - Shadow Punch - TM118
  (867, 86700, 325, 27, NULL, 2, NULL, NULL, 26002118, NULL, 54),
  -- Runerigus - Ominous Wind - TM119
  (867, 86700, 466, 27, NULL, 2, NULL, NULL, 26002119, NULL, 55),
  -- Runerigus - Dream Eater - TM127
  (867, 86700, 138, 27, NULL, 2, NULL, NULL, 26002127, NULL, 56),
  -- Runerigus - Fissure - TM154
  (867, 86700, 90, 27, NULL, 2, NULL, NULL, 26002154, NULL, 57),
  -- Indeedee - Growl - Level 1
  (876, 87600, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Indeedee - Draining Kiss - Level 1
  (876, 87600, 577, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Indeedee - Disarming Voice - Level 10
  (876, 87600, 574, 27, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Indeedee - Magical Leaf - Level 12
  (876, 87600, 345, 27, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Indeedee - Psybeam - Level 15
  (876, 87600, 60, 27, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Indeedee - Moonlight - Level 22
  (876, 87600, 236, 27, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Indeedee - Tri Attack - Level 28
  (876, 87600, 161, 27, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Indeedee - Psychic - Level 35
  (876, 87600, 94, 27, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Indeedee - Wish - Level 38
  (876, 87600, 273, 27, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Indeedee - Calm Mind - Level 42
  (876, 87600, 347, 27, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Indeedee - Moonblast - Level 52
  (876, 87600, 585, 27, NULL, 1, 52, NULL, NULL, NULL, 11),
  -- Indeedee (Female) - Growl - Level 1
  (876, 87601, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Indeedee (Female) - Draining Kiss - Level 1
  (876, 87601, 577, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Indeedee (Female) - Disarming Voice - Level 10
  (876, 87601, 574, 27, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Indeedee (Female) - Magical Leaf - Level 12
  (876, 87601, 345, 27, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Indeedee (Female) - Psybeam - Level 15
  (876, 87601, 60, 27, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Indeedee (Female) - Moonlight - Level 22
  (876, 87601, 236, 27, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Indeedee (Female) - Tri Attack - Level 28
  (876, 87601, 161, 27, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Indeedee (Female) - Psychic - Level 35
  (876, 87601, 94, 27, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Indeedee (Female) - Wish - Level 38
  (876, 87601, 273, 27, NULL, 1, 38, NULL, NULL, NULL, 9),
  -- Indeedee (Female) - Calm Mind - Level 42
  (876, 87601, 347, 27, NULL, 1, 42, NULL, NULL, NULL, 10),
  -- Indeedee (Female) - Moonblast - Level 52
  (876, 87601, 585, 27, NULL, 1, 52, NULL, NULL, NULL, 11),
  -- Morpeko - Tail Whip - Level 1
  (877, 87700, 39, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Morpeko - Thunder Shock - Level 1
  (877, 87700, 84, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Morpeko - Leer - Level 5
  (877, 87700, 43, 27, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Morpeko - Swagger - Level 7
  (877, 87700, 207, 27, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Morpeko - Quick Attack - Level 12
  (877, 87700, 98, 27, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Morpeko - Bite - Level 18
  (877, 87700, 44, 27, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Morpeko - Charge - Level 25
  (877, 87700, 268, 27, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Morpeko - Spark - Level 30
  (877, 87700, 209, 27, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Morpeko - Parting Shot - Level 33
  (877, 87700, 575, 27, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Morpeko - Super Fang - Level 38
  (877, 87700, 162, 27, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Morpeko - Torment - Level 40
  (877, 87700, 259, 27, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Morpeko - Agility - Level 44
  (877, 87700, 97, 27, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Morpeko - Bullet Seed - Level 48
  (877, 87700, 331, 27, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Morpeko - Crunch - Level 52
  (877, 87700, 242, 27, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Morpeko - Aura Wheel - Level 57
  (877, 87700, 783, 27, NULL, 1, 57, NULL, NULL, NULL, 15),
  -- Morpeko - Thunder Wave - TM008
  (877, 87700, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 16),
  -- Morpeko - Brick Break - TM010
  (877, 87700, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 17),
  -- Morpeko - Fire Fang - TM014
  (877, 87700, 424, 27, NULL, 2, NULL, NULL, 26002014, NULL, 18),
  -- Morpeko - Ice Fang - TM015
  (877, 87700, 423, 27, NULL, 2, NULL, NULL, 26002015, NULL, 19),
  -- Morpeko - Protect - TM017
  (877, 87700, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Morpeko - Thunder Fang - TM021
  (877, 87700, 422, 27, NULL, 2, NULL, NULL, 26002021, NULL, 21),
  -- Morpeko - Thunder Punch - TM023
  (877, 87700, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 22),
  -- Morpeko - Crunch - TM025
  (877, 87700, 242, 27, NULL, 2, NULL, NULL, 26002025, NULL, 23),
  -- Morpeko - Swift - TM027
  (877, 87700, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 24),
  -- Morpeko - Endure - TM035
  (877, 87700, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Morpeko - Bullet Seed - TM040
  (877, 87700, 331, 27, NULL, 2, NULL, NULL, 26002040, NULL, 26),
  -- Morpeko - Knock Off - TM045
  (877, 87700, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 27),
  -- Morpeko - Agility - TM047
  (877, 87700, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 28),
  -- Morpeko - Double-Edge - TM056
  (877, 87700, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 29),
  -- Morpeko - Volt Switch - TM066
  (877, 87700, 521, 27, NULL, 2, NULL, NULL, 26002066, NULL, 30),
  -- Morpeko - Thunderbolt - TM067
  (877, 87700, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 31),
  -- Morpeko - Nasty Plot - TM083
  (877, 87700, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 32),
  -- Morpeko - Substitute - TM085
  (877, 87700, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 33),
  -- Morpeko - Wild Charge - TM086
  (877, 87700, 528, 27, NULL, 2, NULL, NULL, 26002086, NULL, 34),
  -- Morpeko - Dark Pulse - TM090
  (877, 87700, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 35),
  -- Morpeko - Outrage - TM093
  (877, 87700, 200, 27, NULL, 2, NULL, NULL, 26002093, NULL, 36),
  -- Morpeko - Taunt - TM095
  (877, 87700, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 37),
  -- Morpeko - Electroweb - TM101
  (877, 87700, 527, 27, NULL, 2, NULL, NULL, 26002101, NULL, 38),
  -- Morpeko - Thunder - TM106
  (877, 87700, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 39),
  -- Morpeko - Facade - TM109
  (877, 87700, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 40),
  -- Morpeko - Torment - TM121
  (877, 87700, 259, 27, NULL, 2, NULL, NULL, 26002121, NULL, 41),
  -- Morpeko - Psychic Fangs - TM124
  (877, 87700, 706, 27, NULL, 2, NULL, NULL, 26002124, NULL, 42),
  -- Morpeko - Seed Bomb - TM128
  (877, 87700, 402, 27, NULL, 2, NULL, NULL, 26002128, NULL, 43),
  -- Morpeko - Charge Beam - TM130
  (877, 87700, 451, 27, NULL, 2, NULL, NULL, 26002130, NULL, 44),
  -- Morpeko - Swagger - TM139
  (877, 87700, 207, 27, NULL, 2, NULL, NULL, 26002139, NULL, 45),
  -- Morpeko - Fake Out - TM141
  (877, 87700, 252, 27, NULL, 2, NULL, NULL, 26002141, NULL, 46),
  -- Morpeko - Skull Bash - TM146
  (877, 87700, 130, 27, NULL, 2, NULL, NULL, 26002146, NULL, 47),
  -- Kleavor - Leer - Level 1
  (900, 90000, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kleavor - Quick Attack - Level 1
  (900, 90000, 98, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kleavor - Wing Attack - Level 12
  (900, 90000, 17, 27, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Kleavor - Double Team - Level 16
  (900, 90000, 104, 27, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Kleavor - Brutal Swing - Level 20
  (900, 90000, 693, 27, NULL, 1, 20, NULL, NULL, NULL, 5),
  -- Kleavor - Slash - Level 24
  (900, 90000, 163, 27, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Kleavor - Focus Energy - Level 28
  (900, 90000, 116, 27, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Kleavor - X-Scissor - Level 32
  (900, 90000, 404, 27, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Kleavor - Bug Buzz - Level 34
  (900, 90000, 405, 27, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Kleavor - Air Slash - Level 36
  (900, 90000, 403, 27, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Kleavor - Swords Dance - Level 42
  (900, 90000, 14, 27, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Kleavor - Lunge - Level 46
  (900, 90000, 679, 27, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Kleavor - Rock Blast - Level 50
  (900, 90000, 350, 27, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Kleavor - Stone Axe - Evolution
  (900, 90000, 830, 27, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Kleavor - Rock Smash - TM004
  (900, 90000, 249, 27, NULL, 2, NULL, NULL, 26002004, NULL, 15),
  -- Kleavor - Brick Break - TM010
  (900, 90000, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 16),
  -- Kleavor - Rock Slide - TM012
  (900, 90000, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 17),
  -- Kleavor - Light Screen - TM016
  (900, 90000, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 18),
  -- Kleavor - Protect - TM017
  (900, 90000, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Kleavor - Aerial Ace - TM022
  (900, 90000, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 20),
  -- Kleavor - Swift - TM027
  (900, 90000, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 21),
  -- Kleavor - Swords Dance - TM030
  (900, 90000, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 22),
  -- Kleavor - Double Team - TM032
  (900, 90000, 104, 27, NULL, 2, NULL, NULL, 26002032, NULL, 23),
  -- Kleavor - Night Slash - TM034
  (900, 90000, 400, 27, NULL, 2, NULL, NULL, 26002034, NULL, 24),
  -- Kleavor - Endure - TM035
  (900, 90000, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Kleavor - Rock Tomb - TM036
  (900, 90000, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 26),
  -- Kleavor - Stealth Rock - TM037
  (900, 90000, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 27),
  -- Kleavor - Hyper Beam - TM044
  (900, 90000, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 28),
  -- Kleavor - Knock Off - TM045
  (900, 90000, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 29),
  -- Kleavor - Agility - TM047
  (900, 90000, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 30),
  -- Kleavor - Giga Impact - TM055
  (900, 90000, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 31),
  -- Kleavor - Double-Edge - TM056
  (900, 90000, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 32),
  -- Kleavor - Stone Edge - TM065
  (900, 90000, 444, 27, NULL, 2, NULL, NULL, 26002065, NULL, 33),
  -- Kleavor - X-Scissor - TM081
  (900, 90000, 404, 27, NULL, 2, NULL, NULL, 26002081, NULL, 34),
  -- Kleavor - U-turn - TM082
  (900, 90000, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 35),
  -- Kleavor - Substitute - TM085
  (900, 90000, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 36),
  -- Kleavor - Close Combat - TM107
  (900, 90000, 370, 27, NULL, 2, NULL, NULL, 26002107, NULL, 37),
  -- Kleavor - Facade - TM109
  (900, 90000, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 38),
  -- Kleavor - Trailblaze - TM115
  (900, 90000, 885, 27, NULL, 2, NULL, NULL, 26002115, NULL, 39),
  -- Kleavor - Silver Wind - TM117
  (900, 90000, 318, 27, NULL, 2, NULL, NULL, 26002117, NULL, 40),
  -- Kleavor - Ominous Wind - TM119
  (900, 90000, 466, 27, NULL, 2, NULL, NULL, 26002119, NULL, 41),
  -- Kleavor - Ancient Power - TM120
  (900, 90000, 246, 27, NULL, 2, NULL, NULL, 26002120, NULL, 42),
  -- Kleavor - False Swipe - TM122
  (900, 90000, 206, 27, NULL, 2, NULL, NULL, 26002122, NULL, 43),
  -- Kleavor - Double Hit - TM132
  (900, 90000, 458, 27, NULL, 2, NULL, NULL, 26002132, NULL, 44),
  -- Kleavor - Dual Wingbeat - TM134
  (900, 90000, 814, 27, NULL, 2, NULL, NULL, 26002134, NULL, 45),
  -- Kleavor - Dual Chop - TM135
  (900, 90000, 530, 27, NULL, 2, NULL, NULL, 26002135, NULL, 46),
  -- Kleavor - Razor Wind - TM145
  (900, 90000, 13, 27, NULL, 2, NULL, NULL, 26002145, NULL, 47),
  -- Kleavor - Vacuum Wave - TM150
  (900, 90000, 410, 27, NULL, 2, NULL, NULL, 26002150, NULL, 48);
