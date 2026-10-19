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
-- Mega Dimension learnset delta rows for species 901-950.
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
  -- Overqwil - Tackle - Level 1
  (904, 90400, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Overqwil - Poison Sting - Level 1
  (904, 90400, 40, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Overqwil - Bite - Level 1
  (904, 90400, 44, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Overqwil - Harden - Level 4
  (904, 90400, 106, 27, NULL, 1, 4, NULL, NULL, NULL, 4),
  -- Overqwil - Water Gun - Level 8
  (904, 90400, 55, 27, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Overqwil - Bubble Beam - Level 12
  (904, 90400, 61, 27, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Overqwil - Haze - Level 15
  (904, 90400, 114, 27, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Overqwil - Aqua Jet - Level 17
  (904, 90400, 453, 27, NULL, 1, 17, NULL, NULL, NULL, 8),
  -- Overqwil - Spikes - Level 20
  (904, 90400, 191, 27, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Overqwil - Barb Barrage - Level 28
  (904, 90400, 839, 27, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Overqwil - Poison Jab - Level 30
  (904, 90400, 398, 27, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Overqwil - Pin Missile - Level 32
  (904, 90400, 42, 27, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Overqwil - Toxic Spikes - Level 36
  (904, 90400, 390, 27, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Overqwil - Toxic - Level 44
  (904, 90400, 92, 27, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Overqwil - Crunch - Level 46
  (904, 90400, 242, 27, NULL, 1, 46, NULL, NULL, NULL, 15),
  -- Overqwil - Gunk Shot - Level 50
  (904, 90400, 441, 27, NULL, 1, 50, NULL, NULL, NULL, 16),
  -- Overqwil - Mortal Spin - Level 53
  (904, 90400, 866, 27, NULL, 1, 53, NULL, NULL, NULL, 17),
  -- Overqwil - Toxic - TM007
  (904, 90400, 92, 27, NULL, 2, NULL, NULL, 26002007, NULL, 18),
  -- Overqwil - Thunder Wave - TM008
  (904, 90400, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 19),
  -- Overqwil - Ice Beam - TM013
  (904, 90400, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 20),
  -- Overqwil - Protect - TM017
  (904, 90400, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 21),
  -- Overqwil - Crunch - TM025
  (904, 90400, 242, 27, NULL, 2, NULL, NULL, 26002025, NULL, 22),
  -- Overqwil - Swift - TM027
  (904, 90400, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 23),
  -- Overqwil - Swords Dance - TM030
  (904, 90400, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 24),
  -- Overqwil - Endure - TM035
  (904, 90400, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Overqwil - Water Pulse - TM041
  (904, 90400, 352, 27, NULL, 2, NULL, NULL, 26002041, NULL, 26),
  -- Overqwil - Hyper Beam - TM044
  (904, 90400, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 27),
  -- Overqwil - Mud Shot - TM046
  (904, 90400, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 28),
  -- Overqwil - Agility - TM047
  (904, 90400, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 29),
  -- Overqwil - Self-Destruct - TM048
  (904, 90400, 120, 27, NULL, 2, NULL, NULL, 26002048, NULL, 30),
  -- Overqwil - Icy Wind - TM049
  (904, 90400, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 31),
  -- Overqwil - Sludge Bomb - TM053
  (904, 90400, 188, 27, NULL, 2, NULL, NULL, 26002053, NULL, 32),
  -- Overqwil - Giga Impact - TM055
  (904, 90400, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 33),
  -- Overqwil - Double-Edge - TM056
  (904, 90400, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 34),
  -- Overqwil - Surf - TM073
  (904, 90400, 57, 27, NULL, 2, NULL, NULL, 26002073, NULL, 35),
  -- Overqwil - Shadow Ball - TM074
  (904, 90400, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 36),
  -- Overqwil - Liquidation - TM076
  (904, 90400, 710, 27, NULL, 2, NULL, NULL, 26002076, NULL, 37),
  -- Overqwil - Poison Jab - TM077
  (904, 90400, 398, 27, NULL, 2, NULL, NULL, 26002077, NULL, 38),
  -- Overqwil - Substitute - TM085
  (904, 90400, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 39),
  -- Overqwil - Spikes - TM088
  (904, 90400, 191, 27, NULL, 2, NULL, NULL, 26002088, NULL, 40),
  -- Overqwil - Toxic Spikes - TM089
  (904, 90400, 390, 27, NULL, 2, NULL, NULL, 26002089, NULL, 41),
  -- Overqwil - Dark Pulse - TM090
  (904, 90400, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 42),
  -- Overqwil - Curse - TM091
  (904, 90400, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 43),
  -- Overqwil - Taunt - TM095
  (904, 90400, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 44),
  -- Overqwil - Hydro Pump - TM096
  (904, 90400, 56, 27, NULL, 2, NULL, NULL, 26002096, NULL, 45),
  -- Overqwil - Waterfall - TM098
  (904, 90400, 127, 27, NULL, 2, NULL, NULL, 26002098, NULL, 46),
  -- Overqwil - Gunk Shot - TM100
  (904, 90400, 441, 27, NULL, 2, NULL, NULL, 26002100, NULL, 47),
  -- Overqwil - Blizzard - TM105
  (904, 90400, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 48),
  -- Overqwil - Facade - TM109
  (904, 90400, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 49),
  -- Overqwil - Chilling Water - TM110
  (904, 90400, 886, 27, NULL, 2, NULL, NULL, 26002110, NULL, 50),
  -- Overqwil - Acid Spray - TM112
  (904, 90400, 491, 27, NULL, 2, NULL, NULL, 26002112, NULL, 51),
  -- Overqwil - Scale Shot - TM143
  (904, 90400, 799, 27, NULL, 2, NULL, NULL, 26002143, NULL, 52),
  -- Fidough - Tackle - Level 1
  (926, 92600, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Fidough - Growl - Level 1
  (926, 92600, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Fidough - Lick - Level 3
  (926, 92600, 122, 27, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Fidough - Tail Whip - Level 6
  (926, 92600, 39, 27, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Fidough - Bite - Level 11
  (926, 92600, 44, 27, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Fidough - Draining Kiss - Level 14
  (926, 92600, 577, 27, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Fidough - Play Rough - Level 18
  (926, 92600, 583, 27, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Fidough - Work Up - Level 22
  (926, 92600, 526, 27, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Fidough - Snarl - Level 26
  (926, 92600, 555, 27, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Fidough - Bounce - Level 30
  (926, 92600, 340, 27, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Fidough - Double-Edge - Level 33
  (926, 92600, 38, 27, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Fidough - Charm - Level 36
  (926, 92600, 204, 27, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Fidough - Roar - Level 40
  (926, 92600, 46, 27, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Fidough - Crunch - Level 44
  (926, 92600, 242, 27, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Fidough - Wish - Level 47
  (926, 92600, 273, 27, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Fidough - Roar - TM005
  (926, 92600, 46, 27, NULL, 2, NULL, NULL, 26002005, NULL, 16),
  -- Fidough - Fire Fang - TM014
  (926, 92600, 424, 27, NULL, 2, NULL, NULL, 26002014, NULL, 17),
  -- Fidough - Ice Fang - TM015
  (926, 92600, 423, 27, NULL, 2, NULL, NULL, 26002015, NULL, 18),
  -- Fidough - Protect - TM017
  (926, 92600, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Fidough - Play Rough - TM020
  (926, 92600, 583, 27, NULL, 2, NULL, NULL, 26002020, NULL, 20),
  -- Fidough - Thunder Fang - TM021
  (926, 92600, 422, 27, NULL, 2, NULL, NULL, 26002021, NULL, 21),
  -- Fidough - Crunch - TM025
  (926, 92600, 242, 27, NULL, 2, NULL, NULL, 26002025, NULL, 22),
  -- Fidough - Dig - TM028
  (926, 92600, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 23),
  -- Fidough - Body Slam - TM033
  (926, 92600, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 24),
  -- Fidough - Endure - TM035
  (926, 92600, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Fidough - Mud Shot - TM046
  (926, 92600, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 26),
  -- Fidough - Agility - TM047
  (926, 92600, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 27),
  -- Fidough - Double-Edge - TM056
  (926, 92600, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 28),
  -- Fidough - Substitute - TM085
  (926, 92600, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 29),
  -- Fidough - Dazzling Gleam - TM092
  (926, 92600, 605, 27, NULL, 2, NULL, NULL, 26002092, NULL, 30),
  -- Fidough - Work Up - TM103
  (926, 92600, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 31),
  -- Fidough - Facade - TM109
  (926, 92600, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 32),
  -- Fidough - Flame Charge - TM114
  (926, 92600, 488, 27, NULL, 2, NULL, NULL, 26002114, NULL, 33),
  -- Fidough - Trailblaze - TM115
  (926, 92600, 885, 27, NULL, 2, NULL, NULL, 26002115, NULL, 34),
  -- Fidough - Psychic Fangs - TM124
  (926, 92600, 706, 27, NULL, 2, NULL, NULL, 26002124, NULL, 35),
  -- Dachsbun - Tackle - Level 1
  (927, 92700, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Dachsbun - Growl - Level 1
  (927, 92700, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Dachsbun - Lick - Level 3
  (927, 92700, 122, 27, NULL, 1, 3, NULL, NULL, NULL, 3),
  -- Dachsbun - Tail Whip - Level 6
  (927, 92700, 39, 27, NULL, 1, 6, NULL, NULL, NULL, 4),
  -- Dachsbun - Bite - Level 11
  (927, 92700, 44, 27, NULL, 1, 11, NULL, NULL, NULL, 5),
  -- Dachsbun - Draining Kiss - Level 14
  (927, 92700, 577, 27, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Dachsbun - Play Rough - Level 18
  (927, 92700, 583, 27, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Dachsbun - Work Up - Level 22
  (927, 92700, 526, 27, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Dachsbun - Snarl - Level 26
  (927, 92700, 555, 27, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Dachsbun - Bounce - Level 30
  (927, 92700, 340, 27, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Dachsbun - Double-Edge - Level 33
  (927, 92700, 38, 27, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Dachsbun - Charm - Level 36
  (927, 92700, 204, 27, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Dachsbun - Roar - Level 40
  (927, 92700, 46, 27, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Dachsbun - Crunch - Level 44
  (927, 92700, 242, 27, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Dachsbun - Wish - Level 47
  (927, 92700, 273, 27, NULL, 1, 47, NULL, NULL, NULL, 15),
  -- Dachsbun - Roar - TM005
  (927, 92700, 46, 27, NULL, 2, NULL, NULL, 26002005, NULL, 16),
  -- Dachsbun - Fire Fang - TM014
  (927, 92700, 424, 27, NULL, 2, NULL, NULL, 26002014, NULL, 17),
  -- Dachsbun - Ice Fang - TM015
  (927, 92700, 423, 27, NULL, 2, NULL, NULL, 26002015, NULL, 18),
  -- Dachsbun - Protect - TM017
  (927, 92700, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Dachsbun - Play Rough - TM020
  (927, 92700, 583, 27, NULL, 2, NULL, NULL, 26002020, NULL, 20),
  -- Dachsbun - Thunder Fang - TM021
  (927, 92700, 422, 27, NULL, 2, NULL, NULL, 26002021, NULL, 21),
  -- Dachsbun - Crunch - TM025
  (927, 92700, 242, 27, NULL, 2, NULL, NULL, 26002025, NULL, 22),
  -- Dachsbun - Dig - TM028
  (927, 92700, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 23),
  -- Dachsbun - Body Slam - TM033
  (927, 92700, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 24),
  -- Dachsbun - Endure - TM035
  (927, 92700, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Dachsbun - Hyper Beam - TM044
  (927, 92700, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 26),
  -- Dachsbun - Mud Shot - TM046
  (927, 92700, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 27),
  -- Dachsbun - Agility - TM047
  (927, 92700, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 28),
  -- Dachsbun - Giga Impact - TM055
  (927, 92700, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 29),
  -- Dachsbun - Double-Edge - TM056
  (927, 92700, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 30),
  -- Dachsbun - Substitute - TM085
  (927, 92700, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 31),
  -- Dachsbun - Dazzling Gleam - TM092
  (927, 92700, 605, 27, NULL, 2, NULL, NULL, 26002092, NULL, 32),
  -- Dachsbun - Work Up - TM103
  (927, 92700, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 33),
  -- Dachsbun - Facade - TM109
  (927, 92700, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 34),
  -- Dachsbun - Flame Charge - TM114
  (927, 92700, 488, 27, NULL, 2, NULL, NULL, 26002114, NULL, 35),
  -- Dachsbun - Trailblaze - TM115
  (927, 92700, 885, 27, NULL, 2, NULL, NULL, 26002115, NULL, 36),
  -- Dachsbun - Psychic Fangs - TM124
  (927, 92700, 706, 27, NULL, 2, NULL, NULL, 26002124, NULL, 37),
  -- Dachsbun - Seed Bomb - TM128
  (927, 92700, 402, 27, NULL, 2, NULL, NULL, 26002128, NULL, 38),
  -- Squawkabilly - Growl - Level 1
  (931, 93100, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Squawkabilly - Peck - Level 1
  (931, 93100, 64, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Squawkabilly - Quick Attack - Level 6
  (931, 93100, 98, 27, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Squawkabilly - Torment - Level 10
  (931, 93100, 259, 27, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Squawkabilly - Aerial Ace - Level 13
  (931, 93100, 332, 27, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Squawkabilly - Taunt - Level 20
  (931, 93100, 269, 27, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Squawkabilly - Feather Dance - Level 24
  (931, 93100, 297, 27, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Squawkabilly - Mimic - Level 27
  (931, 93100, 102, 27, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Squawkabilly - Fly - Level 30
  (931, 93100, 19, 27, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Squawkabilly - Facade - Level 34
  (931, 93100, 263, 27, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Squawkabilly - Swagger - Level 38
  (931, 93100, 207, 27, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Squawkabilly - Lunge - Level 40
  (931, 93100, 679, 27, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Squawkabilly - Brave Bird - Level 42
  (931, 93100, 413, 27, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Squawkabilly - Air Slash - Level 46
  (931, 93100, 403, 27, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Squawkabilly - Parting Shot - Level 52
  (931, 93100, 575, 27, NULL, 1, 52, NULL, NULL, NULL, 15),
  -- Squawkabilly - Headbutt - TM001
  (931, 93100, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 16),
  -- Squawkabilly - Bulk Up - TM011
  (931, 93100, 339, 27, NULL, 2, NULL, NULL, 26002011, NULL, 17),
  -- Squawkabilly - Protect - TM017
  (931, 93100, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Squawkabilly - Aerial Ace - TM022
  (931, 93100, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 19),
  -- Squawkabilly - Endure - TM035
  (931, 93100, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 20),
  -- Squawkabilly - Fly - TM043
  (931, 93100, 19, 27, NULL, 2, NULL, NULL, 26002043, NULL, 21),
  -- Squawkabilly - Hyper Beam - TM044
  (931, 93100, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 22),
  -- Squawkabilly - Knock Off - TM045
  (931, 93100, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 23),
  -- Squawkabilly - Giga Impact - TM055
  (931, 93100, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 24),
  -- Squawkabilly - Double-Edge - TM056
  (931, 93100, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 25),
  -- Squawkabilly - Iron Head - TM058
  (931, 93100, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 26),
  -- Squawkabilly - Heat Wave - TM068
  (931, 93100, 257, 27, NULL, 2, NULL, NULL, 26002068, NULL, 27),
  -- Squawkabilly - Hyper Voice - TM071
  (931, 93100, 304, 27, NULL, 2, NULL, NULL, 26002071, NULL, 28),
  -- Squawkabilly - Hurricane - TM079
  (931, 93100, 542, 27, NULL, 2, NULL, NULL, 26002079, NULL, 29),
  -- Squawkabilly - U-turn - TM082
  (931, 93100, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 30),
  -- Squawkabilly - Substitute - TM085
  (931, 93100, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 31),
  -- Squawkabilly - Taunt - TM095
  (931, 93100, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 32),
  -- Squawkabilly - Work Up - TM103
  (931, 93100, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 33),
  -- Squawkabilly - Facade - TM109
  (931, 93100, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 34),
  -- Squawkabilly - Torment - TM121
  (931, 93100, 259, 27, NULL, 2, NULL, NULL, 26002121, NULL, 35),
  -- Squawkabilly - Mimic - TM125
  (931, 93100, 102, 27, NULL, 2, NULL, NULL, 26002125, NULL, 36),
  -- Squawkabilly - Seed Bomb - TM128
  (931, 93100, 402, 27, NULL, 2, NULL, NULL, 26002128, NULL, 37),
  -- Squawkabilly - Dual Wingbeat - TM134
  (931, 93100, 814, 27, NULL, 2, NULL, NULL, 26002134, NULL, 38),
  -- Squawkabilly - Swagger - TM139
  (931, 93100, 207, 27, NULL, 2, NULL, NULL, 26002139, NULL, 39),
  -- Squawkabilly - Skull Bash - TM146
  (931, 93100, 130, 27, NULL, 2, NULL, NULL, 26002146, NULL, 40),
  -- Squawkabilly - Sky Attack - TM153
  (931, 93100, 143, 27, NULL, 2, NULL, NULL, 26002153, NULL, 41),
  -- Nacli - Tackle - Level 1
  (932, 93200, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Nacli - Harden - Level 1
  (932, 93200, 106, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Nacli - Rock Throw - Level 5
  (932, 93200, 88, 27, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Nacli - Mud Shot - Level 7
  (932, 93200, 341, 27, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Nacli - Take Down - Level 12
  (932, 93200, 36, 27, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Nacli - Headbutt - Level 16
  (932, 93200, 29, 27, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Nacli - Ancient Power - Level 20
  (932, 93200, 246, 27, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Nacli - Iron Defense - Level 24
  (932, 93200, 334, 27, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Nacli - Recover - Level 28
  (932, 93200, 105, 27, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Nacli - Rock Slide - Level 35
  (932, 93200, 157, 27, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Nacli - Stealth Rock - Level 38
  (932, 93200, 446, 27, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Nacli - Heavy Slam - Level 40
  (932, 93200, 484, 27, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Nacli - Earthquake - Level 47
  (932, 93200, 89, 27, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Nacli - Stone Edge - Level 54
  (932, 93200, 444, 27, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Nacli - Headbutt - TM001
  (932, 93200, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 15),
  -- Nacli - Rock Slide - TM012
  (932, 93200, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 16),
  -- Nacli - Protect - TM017
  (932, 93200, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Nacli - Power Gem - TM019
  (932, 93200, 408, 27, NULL, 2, NULL, NULL, 26002019, NULL, 18),
  -- Nacli - Dig - TM028
  (932, 93200, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 19),
  -- Nacli - Body Slam - TM033
  (932, 93200, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 20),
  -- Nacli - Endure - TM035
  (932, 93200, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 21),
  -- Nacli - Rock Tomb - TM036
  (932, 93200, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 22),
  -- Nacli - Stealth Rock - TM037
  (932, 93200, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 23),
  -- Nacli - Mud Shot - TM046
  (932, 93200, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 24),
  -- Nacli - Earth Power - TM052
  (932, 93200, 414, 27, NULL, 2, NULL, NULL, 26002052, NULL, 25),
  -- Nacli - Iron Head - TM058
  (932, 93200, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 26),
  -- Nacli - Zen Headbutt - TM059
  (932, 93200, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 27),
  -- Nacli - Stone Edge - TM065
  (932, 93200, 444, 27, NULL, 2, NULL, NULL, 26002065, NULL, 28),
  -- Nacli - Earthquake - TM069
  (932, 93200, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 29),
  -- Nacli - Bulldoze - TM078
  (932, 93200, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 30),
  -- Nacli - Iron Defense - TM080
  (932, 93200, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 31),
  -- Nacli - Flash Cannon - TM084
  (932, 93200, 430, 27, NULL, 2, NULL, NULL, 26002084, NULL, 32),
  -- Nacli - Substitute - TM085
  (932, 93200, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 33),
  -- Nacli - Curse - TM091
  (932, 93200, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 34),
  -- Nacli - Facade - TM109
  (932, 93200, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 35),
  -- Nacli - Ancient Power - TM120
  (932, 93200, 246, 27, NULL, 2, NULL, NULL, 26002120, NULL, 36),
  -- Nacli - Skull Bash - TM146
  (932, 93200, 130, 27, NULL, 2, NULL, NULL, 26002146, NULL, 37),
  -- Nacli - Fissure - TM154
  (932, 93200, 90, 27, NULL, 2, NULL, NULL, 26002154, NULL, 38),
  -- Nacli - Meteor Beam - TM156
  (932, 93200, 800, 27, NULL, 2, NULL, NULL, 26002156, NULL, 39),
  -- Naclstack - Tackle - Level 1
  (933, 93300, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Naclstack - Harden - Level 1
  (933, 93300, 106, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Naclstack - Rock Throw - Level 5
  (933, 93300, 88, 27, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Naclstack - Mud Shot - Level 7
  (933, 93300, 341, 27, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Naclstack - Take Down - Level 12
  (933, 93300, 36, 27, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Naclstack - Headbutt - Level 16
  (933, 93300, 29, 27, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Naclstack - Ancient Power - Level 20
  (933, 93300, 246, 27, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Naclstack - Iron Defense - Level 24
  (933, 93300, 334, 27, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Naclstack - Recover - Level 28
  (933, 93300, 105, 27, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Naclstack - Rock Slide - Level 35
  (933, 93300, 157, 27, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Naclstack - Stealth Rock - Level 38
  (933, 93300, 446, 27, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Naclstack - Heavy Slam - Level 40
  (933, 93300, 484, 27, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Naclstack - Earthquake - Level 47
  (933, 93300, 89, 27, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Naclstack - Stone Edge - Level 54
  (933, 93300, 444, 27, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Naclstack - Salt Cure - Evolution
  (933, 93300, 864, 27, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Naclstack - Headbutt - TM001
  (933, 93300, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 16),
  -- Naclstack - Rock Slide - TM012
  (933, 93300, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 17),
  -- Naclstack - Protect - TM017
  (933, 93300, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Naclstack - Power Gem - TM019
  (933, 93300, 408, 27, NULL, 2, NULL, NULL, 26002019, NULL, 19),
  -- Naclstack - Dig - TM028
  (933, 93300, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 20),
  -- Naclstack - Body Slam - TM033
  (933, 93300, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 21),
  -- Naclstack - Endure - TM035
  (933, 93300, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Naclstack - Rock Tomb - TM036
  (933, 93300, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 23),
  -- Naclstack - Stealth Rock - TM037
  (933, 93300, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 24),
  -- Naclstack - Hyper Beam - TM044
  (933, 93300, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 25),
  -- Naclstack - Mud Shot - TM046
  (933, 93300, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 26),
  -- Naclstack - Earth Power - TM052
  (933, 93300, 414, 27, NULL, 2, NULL, NULL, 26002052, NULL, 27),
  -- Naclstack - Giga Impact - TM055
  (933, 93300, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 28),
  -- Naclstack - Double-Edge - TM056
  (933, 93300, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 29),
  -- Naclstack - Iron Head - TM058
  (933, 93300, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 30),
  -- Naclstack - Zen Headbutt - TM059
  (933, 93300, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 31),
  -- Naclstack - Stone Edge - TM065
  (933, 93300, 444, 27, NULL, 2, NULL, NULL, 26002065, NULL, 32),
  -- Naclstack - Earthquake - TM069
  (933, 93300, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 33),
  -- Naclstack - Bulldoze - TM078
  (933, 93300, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 34),
  -- Naclstack - Iron Defense - TM080
  (933, 93300, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 35),
  -- Naclstack - Flash Cannon - TM084
  (933, 93300, 430, 27, NULL, 2, NULL, NULL, 26002084, NULL, 36),
  -- Naclstack - Substitute - TM085
  (933, 93300, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 37),
  -- Naclstack - Curse - TM091
  (933, 93300, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 38),
  -- Naclstack - Facade - TM109
  (933, 93300, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 39),
  -- Naclstack - Ancient Power - TM120
  (933, 93300, 246, 27, NULL, 2, NULL, NULL, 26002120, NULL, 40),
  -- Naclstack - Skull Bash - TM146
  (933, 93300, 130, 27, NULL, 2, NULL, NULL, 26002146, NULL, 41),
  -- Naclstack - Fissure - TM154
  (933, 93300, 90, 27, NULL, 2, NULL, NULL, 26002154, NULL, 42),
  -- Naclstack - Meteor Beam - TM156
  (933, 93300, 800, 27, NULL, 2, NULL, NULL, 26002156, NULL, 43),
  -- Garganacl - Tackle - Level 1
  (934, 93400, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Garganacl - Harden - Level 1
  (934, 93400, 106, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Garganacl - Rock Throw - Level 5
  (934, 93400, 88, 27, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Garganacl - Mud Shot - Level 7
  (934, 93400, 341, 27, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Garganacl - Take Down - Level 12
  (934, 93400, 36, 27, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Garganacl - Headbutt - Level 16
  (934, 93400, 29, 27, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Garganacl - Ancient Power - Level 20
  (934, 93400, 246, 27, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Garganacl - Iron Defense - Level 24
  (934, 93400, 334, 27, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Garganacl - Recover - Level 28
  (934, 93400, 105, 27, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Garganacl - Rock Slide - Level 35
  (934, 93400, 157, 27, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Garganacl - Stealth Rock - Level 38
  (934, 93400, 446, 27, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Garganacl - Heavy Slam - Level 40
  (934, 93400, 484, 27, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Garganacl - Earthquake - Level 47
  (934, 93400, 89, 27, NULL, 1, 47, NULL, NULL, NULL, 13),
  -- Garganacl - Stone Edge - Level 54
  (934, 93400, 444, 27, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Garganacl - Explosion - Level 60
  (934, 93400, 153, 27, NULL, 1, 60, NULL, NULL, NULL, 15),
  -- Garganacl - Dynamic Punch - Evolution
  (934, 93400, 223, 27, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Garganacl - Headbutt - TM001
  (934, 93400, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 17),
  -- Garganacl - Brick Break - TM010
  (934, 93400, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 18),
  -- Garganacl - Rock Slide - TM012
  (934, 93400, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 19),
  -- Garganacl - Protect - TM017
  (934, 93400, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Garganacl - Power Gem - TM019
  (934, 93400, 408, 27, NULL, 2, NULL, NULL, 26002019, NULL, 21),
  -- Garganacl - Thunder Punch - TM023
  (934, 93400, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 22),
  -- Garganacl - Ice Punch - TM024
  (934, 93400, 8, 27, NULL, 2, NULL, NULL, 26002024, NULL, 23),
  -- Garganacl - Dig - TM028
  (934, 93400, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 24),
  -- Garganacl - Fire Punch - TM029
  (934, 93400, 7, 27, NULL, 2, NULL, NULL, 26002029, NULL, 25),
  -- Garganacl - Body Slam - TM033
  (934, 93400, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 26),
  -- Garganacl - Endure - TM035
  (934, 93400, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 27),
  -- Garganacl - Rock Tomb - TM036
  (934, 93400, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 28),
  -- Garganacl - Stealth Rock - TM037
  (934, 93400, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 29),
  -- Garganacl - Hyper Beam - TM044
  (934, 93400, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 30),
  -- Garganacl - Mud Shot - TM046
  (934, 93400, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 31),
  -- Garganacl - Earth Power - TM052
  (934, 93400, 414, 27, NULL, 2, NULL, NULL, 26002052, NULL, 32),
  -- Garganacl - Giga Impact - TM055
  (934, 93400, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 33),
  -- Garganacl - Double-Edge - TM056
  (934, 93400, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 34),
  -- Garganacl - Iron Head - TM058
  (934, 93400, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 35),
  -- Garganacl - Zen Headbutt - TM059
  (934, 93400, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 36),
  -- Garganacl - Stone Edge - TM065
  (934, 93400, 444, 27, NULL, 2, NULL, NULL, 26002065, NULL, 37),
  -- Garganacl - Earthquake - TM069
  (934, 93400, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 38),
  -- Garganacl - Bulldoze - TM078
  (934, 93400, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 39),
  -- Garganacl - Iron Defense - TM080
  (934, 93400, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 40),
  -- Garganacl - Flash Cannon - TM084
  (934, 93400, 430, 27, NULL, 2, NULL, NULL, 26002084, NULL, 41),
  -- Garganacl - Substitute - TM085
  (934, 93400, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 42),
  -- Garganacl - Curse - TM091
  (934, 93400, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 43),
  -- Garganacl - Facade - TM109
  (934, 93400, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 44),
  -- Garganacl - Ancient Power - TM120
  (934, 93400, 246, 27, NULL, 2, NULL, NULL, 26002120, NULL, 45),
  -- Garganacl - Skull Bash - TM146
  (934, 93400, 130, 27, NULL, 2, NULL, NULL, 26002146, NULL, 46),
  -- Garganacl - Fissure - TM154
  (934, 93400, 90, 27, NULL, 2, NULL, NULL, 26002154, NULL, 47),
  -- Garganacl - Meteor Beam - TM156
  (934, 93400, 800, 27, NULL, 2, NULL, NULL, 26002156, NULL, 48),
  -- Charcadet - Leer - Level 1
  (935, 93500, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Charcadet - Ember - Level 1
  (935, 93500, 52, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Charcadet - Smokescreen - Level 8
  (935, 93500, 108, 27, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Charcadet - Confuse Ray - Level 10
  (935, 93500, 109, 27, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Charcadet - Fire Spin - Level 12
  (935, 93500, 83, 27, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Charcadet - Will-O-Wisp - Level 16
  (935, 93500, 261, 27, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Charcadet - Flame Charge - Level 24
  (935, 93500, 488, 27, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Charcadet - Lava Plume - Level 32
  (935, 93500, 436, 27, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Charcadet - Protect - TM017
  (935, 93500, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 9),
  -- Charcadet - Endure - TM035
  (935, 93500, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 10),
  -- Charcadet - Fire Blast - TM038
  (935, 93500, 126, 27, NULL, 2, NULL, NULL, 26002038, NULL, 11),
  -- Charcadet - Overheat - TM050
  (935, 93500, 315, 27, NULL, 2, NULL, NULL, 26002050, NULL, 12),
  -- Charcadet - Will-O-Wisp - TM057
  (935, 93500, 261, 27, NULL, 2, NULL, NULL, 26002057, NULL, 13),
  -- Charcadet - Flamethrower - TM062
  (935, 93500, 53, 27, NULL, 2, NULL, NULL, 26002062, NULL, 14),
  -- Charcadet - Heat Wave - TM068
  (935, 93500, 257, 27, NULL, 2, NULL, NULL, 26002068, NULL, 15),
  -- Charcadet - Fire Spin - TM072
  (935, 93500, 83, 27, NULL, 2, NULL, NULL, 26002072, NULL, 16),
  -- Charcadet - Substitute - TM085
  (935, 93500, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 17),
  -- Charcadet - Flare Blitz - TM104
  (935, 93500, 394, 27, NULL, 2, NULL, NULL, 26002104, NULL, 18),
  -- Charcadet - Facade - TM109
  (935, 93500, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 19),
  -- Charcadet - Flame Charge - TM114
  (935, 93500, 488, 27, NULL, 2, NULL, NULL, 26002114, NULL, 20),
  -- Charcadet - Ominous Wind - TM119
  (935, 93500, 466, 27, NULL, 2, NULL, NULL, 26002119, NULL, 21),
  -- Armarouge - Leer - Level 1
  (936, 93600, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Armarouge - Ember - Level 1
  (936, 93600, 52, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Armarouge - Mystical Fire - Level 1
  (936, 93600, 595, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Armarouge - Smokescreen - Level 8
  (936, 93600, 108, 27, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Armarouge - Confuse Ray - Level 10
  (936, 93600, 109, 27, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Armarouge - Fire Spin - Level 12
  (936, 93600, 83, 27, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Armarouge - Will-O-Wisp - Level 16
  (936, 93600, 261, 27, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Armarouge - Psybeam - Level 20
  (936, 93600, 60, 27, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Armarouge - Flame Charge - Level 24
  (936, 93600, 488, 27, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Armarouge - Lava Plume - Level 32
  (936, 93600, 436, 27, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Armarouge - Calm Mind - Level 37
  (936, 93600, 347, 27, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Armarouge - Armor Cannon - Level 48
  (936, 93600, 890, 27, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Armarouge - Flamethrower - Level 54
  (936, 93600, 53, 27, NULL, 1, 54, NULL, NULL, NULL, 13),
  -- Armarouge - Aura Sphere - Level 62
  (936, 93600, 396, 27, NULL, 1, 62, NULL, NULL, NULL, 14),
  -- Armarouge - Psyshock - Evolution
  (936, 93600, 473, 27, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Armarouge - Psyshock - TM003
  (936, 93600, 473, 27, NULL, 2, NULL, NULL, 26002003, NULL, 16),
  -- Armarouge - Calm Mind - TM006
  (936, 93600, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 17),
  -- Armarouge - Light Screen - TM016
  (936, 93600, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 18),
  -- Armarouge - Protect - TM017
  (936, 93600, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Armarouge - Energy Ball - TM026
  (936, 93600, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 20),
  -- Armarouge - Reflect - TM031
  (936, 93600, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 21),
  -- Armarouge - Endure - TM035
  (936, 93600, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Armarouge - Fire Blast - TM038
  (936, 93600, 126, 27, NULL, 2, NULL, NULL, 26002038, NULL, 23),
  -- Armarouge - Hyper Beam - TM044
  (936, 93600, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 24),
  -- Armarouge - Overheat - TM050
  (936, 93600, 315, 27, NULL, 2, NULL, NULL, 26002050, NULL, 25),
  -- Armarouge - Will-O-Wisp - TM057
  (936, 93600, 261, 27, NULL, 2, NULL, NULL, 26002057, NULL, 26),
  -- Armarouge - Future Sight - TM060
  (936, 93600, 248, 27, NULL, 2, NULL, NULL, 26002060, NULL, 27),
  -- Armarouge - Flamethrower - TM062
  (936, 93600, 53, 27, NULL, 2, NULL, NULL, 26002062, NULL, 28),
  -- Armarouge - Psychic - TM063
  (936, 93600, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 29),
  -- Armarouge - Solar Beam - TM064
  (936, 93600, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 30),
  -- Armarouge - Heat Wave - TM068
  (936, 93600, 257, 27, NULL, 2, NULL, NULL, 26002068, NULL, 31),
  -- Armarouge - Fire Spin - TM072
  (936, 93600, 83, 27, NULL, 2, NULL, NULL, 26002072, NULL, 32),
  -- Armarouge - Shadow Ball - TM074
  (936, 93600, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 33),
  -- Armarouge - Dragon Pulse - TM075
  (936, 93600, 406, 27, NULL, 2, NULL, NULL, 26002075, NULL, 34),
  -- Armarouge - Iron Defense - TM080
  (936, 93600, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 35),
  -- Armarouge - Flash Cannon - TM084
  (936, 93600, 430, 27, NULL, 2, NULL, NULL, 26002084, NULL, 36),
  -- Armarouge - Substitute - TM085
  (936, 93600, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 37),
  -- Armarouge - Dark Pulse - TM090
  (936, 93600, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 38),
  -- Armarouge - Taunt - TM095
  (936, 93600, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 39),
  -- Armarouge - Focus Blast - TM102
  (936, 93600, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 40),
  -- Armarouge - Flare Blitz - TM104
  (936, 93600, 394, 27, NULL, 2, NULL, NULL, 26002104, NULL, 41),
  -- Armarouge - Facade - TM109
  (936, 93600, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 42),
  -- Armarouge - Acid Spray - TM112
  (936, 93600, 491, 27, NULL, 2, NULL, NULL, 26002112, NULL, 43),
  -- Armarouge - Flame Charge - TM114
  (936, 93600, 488, 27, NULL, 2, NULL, NULL, 26002114, NULL, 44),
  -- Armarouge - Ominous Wind - TM119
  (936, 93600, 466, 27, NULL, 2, NULL, NULL, 26002119, NULL, 45),
  -- Armarouge - Scorching Sands - TM136
  (936, 93600, 815, 27, NULL, 2, NULL, NULL, 26002136, NULL, 46),
  -- Armarouge - Meteor Beam - TM156
  (936, 93600, 800, 27, NULL, 2, NULL, NULL, 26002156, NULL, 47),
  -- Ceruledge - Leer - Level 1
  (937, 93700, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ceruledge - Ember - Level 1
  (937, 93700, 52, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ceruledge - Smokescreen - Level 8
  (937, 93700, 108, 27, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Ceruledge - Confuse Ray - Level 10
  (937, 93700, 109, 27, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Ceruledge - Fire Spin - Level 12
  (937, 93700, 83, 27, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Ceruledge - Will-O-Wisp - Level 16
  (937, 93700, 261, 27, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Ceruledge - Flame Charge - Level 24
  (937, 93700, 488, 27, NULL, 1, 24, NULL, NULL, NULL, 7),
  -- Ceruledge - Lava Plume - Level 32
  (937, 93700, 436, 27, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Ceruledge - Swords Dance - Level 37
  (937, 93700, 14, 27, NULL, 1, 37, NULL, NULL, NULL, 9),
  -- Ceruledge - Solar Blade - Level 44
  (937, 93700, 669, 27, NULL, 1, 44, NULL, NULL, NULL, 10),
  -- Ceruledge - Bitter Blade - Level 48
  (937, 93700, 891, 27, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Ceruledge - Psycho Cut - Level 54
  (937, 93700, 427, 27, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Ceruledge - Phantom Force - Level 58
  (937, 93700, 566, 27, NULL, 1, 58, NULL, NULL, NULL, 13),
  -- Ceruledge - Flare Blitz - Level 62
  (937, 93700, 394, 27, NULL, 1, 62, NULL, NULL, NULL, 14),
  -- Ceruledge - Shadow Claw - Evolution
  (937, 93700, 421, 27, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Ceruledge - Shadow Sneak - Evolution
  (937, 93700, 425, 27, NULL, 7, NULL, NULL, NULL, NULL, 16),
  -- Ceruledge - Dragon Claw - TM002
  (937, 93700, 337, 27, NULL, 2, NULL, NULL, 26002002, NULL, 17),
  -- Ceruledge - Brick Break - TM010
  (937, 93700, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 18),
  -- Ceruledge - Bulk Up - TM011
  (937, 93700, 339, 27, NULL, 2, NULL, NULL, 26002011, NULL, 19),
  -- Ceruledge - Light Screen - TM016
  (937, 93700, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 20),
  -- Ceruledge - Protect - TM017
  (937, 93700, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 21),
  -- Ceruledge - Swords Dance - TM030
  (937, 93700, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 22),
  -- Ceruledge - Reflect - TM031
  (937, 93700, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 23),
  -- Ceruledge - Night Slash - TM034
  (937, 93700, 400, 27, NULL, 2, NULL, NULL, 26002034, NULL, 24),
  -- Ceruledge - Endure - TM035
  (937, 93700, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Ceruledge - Fire Blast - TM038
  (937, 93700, 126, 27, NULL, 2, NULL, NULL, 26002038, NULL, 26),
  -- Ceruledge - Overheat - TM050
  (937, 93700, 315, 27, NULL, 2, NULL, NULL, 26002050, NULL, 27),
  -- Ceruledge - Giga Impact - TM055
  (937, 93700, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 28),
  -- Ceruledge - Will-O-Wisp - TM057
  (937, 93700, 261, 27, NULL, 2, NULL, NULL, 26002057, NULL, 29),
  -- Ceruledge - Iron Head - TM058
  (937, 93700, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 30),
  -- Ceruledge - Shadow Claw - TM061
  (937, 93700, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 31),
  -- Ceruledge - Flamethrower - TM062
  (937, 93700, 53, 27, NULL, 2, NULL, NULL, 26002062, NULL, 32),
  -- Ceruledge - Stone Edge - TM065
  (937, 93700, 444, 27, NULL, 2, NULL, NULL, 26002065, NULL, 33),
  -- Ceruledge - Heat Wave - TM068
  (937, 93700, 257, 27, NULL, 2, NULL, NULL, 26002068, NULL, 34),
  -- Ceruledge - Fire Spin - TM072
  (937, 93700, 83, 27, NULL, 2, NULL, NULL, 26002072, NULL, 35),
  -- Ceruledge - Shadow Ball - TM074
  (937, 93700, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 36),
  -- Ceruledge - Poison Jab - TM077
  (937, 93700, 398, 27, NULL, 2, NULL, NULL, 26002077, NULL, 37),
  -- Ceruledge - Iron Defense - TM080
  (937, 93700, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 38),
  -- Ceruledge - X-Scissor - TM081
  (937, 93700, 404, 27, NULL, 2, NULL, NULL, 26002081, NULL, 39),
  -- Ceruledge - Substitute - TM085
  (937, 93700, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 40),
  -- Ceruledge - Curse - TM091
  (937, 93700, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 41),
  -- Ceruledge - Taunt - TM095
  (937, 93700, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 42),
  -- Ceruledge - Flare Blitz - TM104
  (937, 93700, 394, 27, NULL, 2, NULL, NULL, 26002104, NULL, 43),
  -- Ceruledge - Close Combat - TM107
  (937, 93700, 370, 27, NULL, 2, NULL, NULL, 26002107, NULL, 44),
  -- Ceruledge - Facade - TM109
  (937, 93700, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 45),
  -- Ceruledge - Flame Charge - TM114
  (937, 93700, 488, 27, NULL, 2, NULL, NULL, 26002114, NULL, 46),
  -- Ceruledge - Ominous Wind - TM119
  (937, 93700, 466, 27, NULL, 2, NULL, NULL, 26002119, NULL, 47),
  -- Ceruledge - False Swipe - TM122
  (937, 93700, 206, 27, NULL, 2, NULL, NULL, 26002122, NULL, 48),
  -- Ceruledge - Razor Wind - TM145
  (937, 93700, 13, 27, NULL, 2, NULL, NULL, 26002145, NULL, 49),
  -- Ceruledge - Vacuum Wave - TM150
  (937, 93700, 410, 27, NULL, 2, NULL, NULL, 26002150, NULL, 50),
  -- Ceruledge - Solar Blade - TM152
  (937, 93700, 669, 27, NULL, 2, NULL, NULL, 26002152, NULL, 51),
  -- Maschiff - Tackle - Level 1
  (942, 94200, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Maschiff - Leer - Level 1
  (942, 94200, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Maschiff - Lick - Level 4
  (942, 94200, 122, 27, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Maschiff - Snarl - Level 7
  (942, 94200, 555, 27, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Maschiff - Charm - Level 12
  (942, 94200, 204, 27, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Maschiff - Bite - Level 14
  (942, 94200, 44, 27, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Maschiff - Roar - Level 18
  (942, 94200, 46, 27, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Maschiff - Headbutt - Level 22
  (942, 94200, 29, 27, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Maschiff - Focus Energy - Level 27
  (942, 94200, 116, 27, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Maschiff - Taunt - Level 30
  (942, 94200, 269, 27, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Maschiff - Swagger - Level 35
  (942, 94200, 207, 27, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Maschiff - Bounce - Level 38
  (942, 94200, 340, 27, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Maschiff - Crunch - Level 42
  (942, 94200, 242, 27, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Maschiff - Lunge - Level 45
  (942, 94200, 679, 27, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Maschiff - Double-Edge - Level 49
  (942, 94200, 38, 27, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Maschiff - Headbutt - TM001
  (942, 94200, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 16),
  -- Maschiff - Rock Smash - TM004
  (942, 94200, 249, 27, NULL, 2, NULL, NULL, 26002004, NULL, 17),
  -- Maschiff - Roar - TM005
  (942, 94200, 46, 27, NULL, 2, NULL, NULL, 26002005, NULL, 18),
  -- Maschiff - Fire Fang - TM014
  (942, 94200, 424, 27, NULL, 2, NULL, NULL, 26002014, NULL, 19),
  -- Maschiff - Ice Fang - TM015
  (942, 94200, 423, 27, NULL, 2, NULL, NULL, 26002015, NULL, 20),
  -- Maschiff - Protect - TM017
  (942, 94200, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 21),
  -- Maschiff - Play Rough - TM020
  (942, 94200, 583, 27, NULL, 2, NULL, NULL, 26002020, NULL, 22),
  -- Maschiff - Thunder Fang - TM021
  (942, 94200, 422, 27, NULL, 2, NULL, NULL, 26002021, NULL, 23),
  -- Maschiff - Crunch - TM025
  (942, 94200, 242, 27, NULL, 2, NULL, NULL, 26002025, NULL, 24),
  -- Maschiff - Dig - TM028
  (942, 94200, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 25),
  -- Maschiff - Body Slam - TM033
  (942, 94200, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 26),
  -- Maschiff - Endure - TM035
  (942, 94200, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 27),
  -- Maschiff - Knock Off - TM045
  (942, 94200, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 28),
  -- Maschiff - Double-Edge - TM056
  (942, 94200, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 29),
  -- Maschiff - Substitute - TM085
  (942, 94200, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 30),
  -- Maschiff - Dark Pulse - TM090
  (942, 94200, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 31),
  -- Maschiff - Taunt - TM095
  (942, 94200, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 32),
  -- Maschiff - Facade - TM109
  (942, 94200, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 33),
  -- Maschiff - Trailblaze - TM115
  (942, 94200, 885, 27, NULL, 2, NULL, NULL, 26002115, NULL, 34),
  -- Maschiff - Psychic Fangs - TM124
  (942, 94200, 706, 27, NULL, 2, NULL, NULL, 26002124, NULL, 35),
  -- Maschiff - Seed Bomb - TM128
  (942, 94200, 402, 27, NULL, 2, NULL, NULL, 26002128, NULL, 36),
  -- Maschiff - Swagger - TM139
  (942, 94200, 207, 27, NULL, 2, NULL, NULL, 26002139, NULL, 37),
  -- Mabosstiff - Tackle - Level 1
  (943, 94300, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mabosstiff - Leer - Level 1
  (943, 94300, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mabosstiff - Lick - Level 4
  (943, 94300, 122, 27, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Mabosstiff - Snarl - Level 7
  (943, 94300, 555, 27, NULL, 1, 7, NULL, NULL, NULL, 4),
  -- Mabosstiff - Charm - Level 12
  (943, 94300, 204, 27, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Mabosstiff - Bite - Level 14
  (943, 94300, 44, 27, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Mabosstiff - Roar - Level 18
  (943, 94300, 46, 27, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Mabosstiff - Headbutt - Level 22
  (943, 94300, 29, 27, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Mabosstiff - Focus Energy - Level 27
  (943, 94300, 116, 27, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Mabosstiff - Taunt - Level 30
  (943, 94300, 269, 27, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Mabosstiff - Swagger - Level 35
  (943, 94300, 207, 27, NULL, 1, 35, NULL, NULL, NULL, 11),
  -- Mabosstiff - Bounce - Level 38
  (943, 94300, 340, 27, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Mabosstiff - Crunch - Level 42
  (943, 94300, 242, 27, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Mabosstiff - Lunge - Level 45
  (943, 94300, 679, 27, NULL, 1, 45, NULL, NULL, NULL, 14),
  -- Mabosstiff - Double-Edge - Level 49
  (943, 94300, 38, 27, NULL, 1, 49, NULL, NULL, NULL, 15),
  -- Mabosstiff - Outrage - Level 56
  (943, 94300, 200, 27, NULL, 1, 56, NULL, NULL, NULL, 16),
  -- Mabosstiff - Headbutt - TM001
  (943, 94300, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 17),
  -- Mabosstiff - Rock Smash - TM004
  (943, 94300, 249, 27, NULL, 2, NULL, NULL, 26002004, NULL, 18),
  -- Mabosstiff - Roar - TM005
  (943, 94300, 46, 27, NULL, 2, NULL, NULL, 26002005, NULL, 19),
  -- Mabosstiff - Fire Fang - TM014
  (943, 94300, 424, 27, NULL, 2, NULL, NULL, 26002014, NULL, 20),
  -- Mabosstiff - Ice Fang - TM015
  (943, 94300, 423, 27, NULL, 2, NULL, NULL, 26002015, NULL, 21),
  -- Mabosstiff - Protect - TM017
  (943, 94300, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 22),
  -- Mabosstiff - Play Rough - TM020
  (943, 94300, 583, 27, NULL, 2, NULL, NULL, 26002020, NULL, 23),
  -- Mabosstiff - Thunder Fang - TM021
  (943, 94300, 422, 27, NULL, 2, NULL, NULL, 26002021, NULL, 24),
  -- Mabosstiff - Crunch - TM025
  (943, 94300, 242, 27, NULL, 2, NULL, NULL, 26002025, NULL, 25),
  -- Mabosstiff - Dig - TM028
  (943, 94300, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 26),
  -- Mabosstiff - Body Slam - TM033
  (943, 94300, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 27),
  -- Mabosstiff - Endure - TM035
  (943, 94300, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 28),
  -- Mabosstiff - Hyper Beam - TM044
  (943, 94300, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 29),
  -- Mabosstiff - Knock Off - TM045
  (943, 94300, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 30),
  -- Mabosstiff - Giga Impact - TM055
  (943, 94300, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 31),
  -- Mabosstiff - Double-Edge - TM056
  (943, 94300, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 32),
  -- Mabosstiff - Hyper Voice - TM071
  (943, 94300, 304, 27, NULL, 2, NULL, NULL, 26002071, NULL, 33),
  -- Mabosstiff - Substitute - TM085
  (943, 94300, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 34),
  -- Mabosstiff - Wild Charge - TM086
  (943, 94300, 528, 27, NULL, 2, NULL, NULL, 26002086, NULL, 35),
  -- Mabosstiff - Dark Pulse - TM090
  (943, 94300, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 36),
  -- Mabosstiff - Curse - TM091
  (943, 94300, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 37),
  -- Mabosstiff - Outrage - TM093
  (943, 94300, 200, 27, NULL, 2, NULL, NULL, 26002093, NULL, 38),
  -- Mabosstiff - Taunt - TM095
  (943, 94300, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 39),
  -- Mabosstiff - Facade - TM109
  (943, 94300, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 40),
  -- Mabosstiff - Trailblaze - TM115
  (943, 94300, 885, 27, NULL, 2, NULL, NULL, 26002115, NULL, 41),
  -- Mabosstiff - Psychic Fangs - TM124
  (943, 94300, 706, 27, NULL, 2, NULL, NULL, 26002124, NULL, 42),
  -- Mabosstiff - Seed Bomb - TM128
  (943, 94300, 402, 27, NULL, 2, NULL, NULL, 26002128, NULL, 43),
  -- Mabosstiff - Swagger - TM139
  (943, 94300, 207, 27, NULL, 2, NULL, NULL, 26002139, NULL, 44),
  -- Mabosstiff - Skull Bash - TM146
  (943, 94300, 130, 27, NULL, 2, NULL, NULL, 26002146, NULL, 45),
  -- Shroodle - Leer - Level 1
  (944, 94400, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shroodle - Bite - Level 1
  (944, 94400, 44, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shroodle - Acid Spray - Level 5
  (944, 94400, 491, 27, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Shroodle - Mimic - Level 10
  (944, 94400, 102, 27, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Shroodle - Poison Fang - Level 14
  (944, 94400, 305, 27, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Shroodle - Super Fang - Level 18
  (944, 94400, 162, 27, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Shroodle - Slash - Level 21
  (944, 94400, 163, 27, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Shroodle - Parting Shot - Level 23
  (944, 94400, 575, 27, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Shroodle - U-turn - Level 25
  (944, 94400, 369, 27, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Shroodle - Poison Jab - Level 29
  (944, 94400, 398, 27, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Shroodle - Taunt - Level 33
  (944, 94400, 269, 27, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Shroodle - Substitute - Level 36
  (944, 94400, 164, 27, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Shroodle - Knock Off - Level 40
  (944, 94400, 282, 27, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Shroodle - Gunk Shot - Level 54
  (944, 94400, 441, 27, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Shroodle - Toxic - TM007
  (944, 94400, 92, 27, NULL, 2, NULL, NULL, 26002007, NULL, 15),
  -- Shroodle - Light Screen - TM016
  (944, 94400, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 16),
  -- Shroodle - Protect - TM017
  (944, 94400, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Shroodle - Dig - TM028
  (944, 94400, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 18),
  -- Shroodle - Swords Dance - TM030
  (944, 94400, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 19),
  -- Shroodle - Reflect - TM031
  (944, 94400, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 20),
  -- Shroodle - Endure - TM035
  (944, 94400, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 21),
  -- Shroodle - Knock Off - TM045
  (944, 94400, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 22),
  -- Shroodle - Mud Shot - TM046
  (944, 94400, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 23),
  -- Shroodle - Sludge Bomb - TM053
  (944, 94400, 188, 27, NULL, 2, NULL, NULL, 26002053, NULL, 24),
  -- Shroodle - Double-Edge - TM056
  (944, 94400, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 25),
  -- Shroodle - Poison Jab - TM077
  (944, 94400, 398, 27, NULL, 2, NULL, NULL, 26002077, NULL, 26),
  -- Shroodle - U-turn - TM082
  (944, 94400, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 27),
  -- Shroodle - Nasty Plot - TM083
  (944, 94400, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 28),
  -- Shroodle - Substitute - TM085
  (944, 94400, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 29),
  -- Shroodle - Toxic Spikes - TM089
  (944, 94400, 390, 27, NULL, 2, NULL, NULL, 26002089, NULL, 30),
  -- Shroodle - Taunt - TM095
  (944, 94400, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 31),
  -- Shroodle - Heal Block - TM097
  (944, 94400, 377, 27, NULL, 2, NULL, NULL, 26002097, NULL, 32),
  -- Shroodle - Metronome - TM099
  (944, 94400, 118, 27, NULL, 2, NULL, NULL, 26002099, NULL, 33),
  -- Shroodle - Gunk Shot - TM100
  (944, 94400, 441, 27, NULL, 2, NULL, NULL, 26002100, NULL, 34),
  -- Shroodle - Facade - TM109
  (944, 94400, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 35),
  -- Shroodle - Acid Spray - TM112
  (944, 94400, 491, 27, NULL, 2, NULL, NULL, 26002112, NULL, 36),
  -- Shroodle - Trailblaze - TM115
  (944, 94400, 885, 27, NULL, 2, NULL, NULL, 26002115, NULL, 37),
  -- Shroodle - Poison Fang - TM123
  (944, 94400, 305, 27, NULL, 2, NULL, NULL, 26002123, NULL, 38),
  -- Shroodle - Mimic - TM125
  (944, 94400, 102, 27, NULL, 2, NULL, NULL, 26002125, NULL, 39),
  -- Shroodle - Swagger - TM139
  (944, 94400, 207, 27, NULL, 2, NULL, NULL, 26002139, NULL, 40),
  -- Grafaiai - Leer - Level 1
  (945, 94500, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grafaiai - Bite - Level 1
  (945, 94500, 44, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Grafaiai - Acid Spray - Level 5
  (945, 94500, 491, 27, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Grafaiai - Mimic - Level 10
  (945, 94500, 102, 27, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Grafaiai - Poison Fang - Level 14
  (945, 94500, 305, 27, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Grafaiai - Super Fang - Level 18
  (945, 94500, 162, 27, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Grafaiai - Slash - Level 21
  (945, 94500, 163, 27, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Grafaiai - Parting Shot - Level 23
  (945, 94500, 575, 27, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Grafaiai - U-turn - Level 25
  (945, 94500, 369, 27, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Grafaiai - Poison Jab - Level 29
  (945, 94500, 398, 27, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Grafaiai - Taunt - Level 33
  (945, 94500, 269, 27, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Grafaiai - Substitute - Level 36
  (945, 94500, 164, 27, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Grafaiai - Knock Off - Level 40
  (945, 94500, 282, 27, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Grafaiai - Gunk Shot - Level 54
  (945, 94500, 441, 27, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Grafaiai - Toxic - TM007
  (945, 94500, 92, 27, NULL, 2, NULL, NULL, 26002007, NULL, 15),
  -- Grafaiai - Light Screen - TM016
  (945, 94500, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 16),
  -- Grafaiai - Protect - TM017
  (945, 94500, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Grafaiai - Dig - TM028
  (945, 94500, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 18),
  -- Grafaiai - Swords Dance - TM030
  (945, 94500, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 19),
  -- Grafaiai - Reflect - TM031
  (945, 94500, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 20),
  -- Grafaiai - Endure - TM035
  (945, 94500, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 21),
  -- Grafaiai - Knock Off - TM045
  (945, 94500, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 22),
  -- Grafaiai - Mud Shot - TM046
  (945, 94500, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 23),
  -- Grafaiai - Sludge Bomb - TM053
  (945, 94500, 188, 27, NULL, 2, NULL, NULL, 26002053, NULL, 24),
  -- Grafaiai - Giga Impact - TM055
  (945, 94500, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 25),
  -- Grafaiai - Double-Edge - TM056
  (945, 94500, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 26),
  -- Grafaiai - Shadow Claw - TM061
  (945, 94500, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 27),
  -- Grafaiai - Poison Jab - TM077
  (945, 94500, 398, 27, NULL, 2, NULL, NULL, 26002077, NULL, 28),
  -- Grafaiai - X-Scissor - TM081
  (945, 94500, 404, 27, NULL, 2, NULL, NULL, 26002081, NULL, 29),
  -- Grafaiai - U-turn - TM082
  (945, 94500, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 30),
  -- Grafaiai - Nasty Plot - TM083
  (945, 94500, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 31),
  -- Grafaiai - Substitute - TM085
  (945, 94500, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 32),
  -- Grafaiai - Toxic Spikes - TM089
  (945, 94500, 390, 27, NULL, 2, NULL, NULL, 26002089, NULL, 33),
  -- Grafaiai - Taunt - TM095
  (945, 94500, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 34),
  -- Grafaiai - Heal Block - TM097
  (945, 94500, 377, 27, NULL, 2, NULL, NULL, 26002097, NULL, 35),
  -- Grafaiai - Metronome - TM099
  (945, 94500, 118, 27, NULL, 2, NULL, NULL, 26002099, NULL, 36),
  -- Grafaiai - Gunk Shot - TM100
  (945, 94500, 441, 27, NULL, 2, NULL, NULL, 26002100, NULL, 37),
  -- Grafaiai - Facade - TM109
  (945, 94500, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 38),
  -- Grafaiai - Acid Spray - TM112
  (945, 94500, 491, 27, NULL, 2, NULL, NULL, 26002112, NULL, 39),
  -- Grafaiai - Low Sweep - TM113
  (945, 94500, 490, 27, NULL, 2, NULL, NULL, 26002113, NULL, 40),
  -- Grafaiai - Trailblaze - TM115
  (945, 94500, 885, 27, NULL, 2, NULL, NULL, 26002115, NULL, 41),
  -- Grafaiai - Poison Fang - TM123
  (945, 94500, 305, 27, NULL, 2, NULL, NULL, 26002123, NULL, 42),
  -- Grafaiai - Mimic - TM125
  (945, 94500, 102, 27, NULL, 2, NULL, NULL, 26002125, NULL, 43),
  -- Grafaiai - Seed Bomb - TM128
  (945, 94500, 402, 27, NULL, 2, NULL, NULL, 26002128, NULL, 44),
  -- Grafaiai - Swagger - TM139
  (945, 94500, 207, 27, NULL, 2, NULL, NULL, 26002139, NULL, 45),
  -- Grafaiai - First Impression - TM142
  (945, 94500, 660, 27, NULL, 2, NULL, NULL, 26002142, NULL, 46),
  -- Grafaiai - Razor Wind - TM145
  (945, 94500, 13, 27, NULL, 2, NULL, NULL, 26002145, NULL, 47),
  -- Grafaiai - Tri Attack - TM147
  (945, 94500, 161, 27, NULL, 2, NULL, NULL, 26002147, NULL, 48);
