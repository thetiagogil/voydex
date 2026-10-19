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
-- Mega Dimension learnset delta rows for species 051-100.
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
  -- Meowth - Pay Day - Level 1
  (52, 5200, 6, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Meowth - Tail Whip - Level 1
  (52, 5200, 39, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Meowth - Growl - Level 1
  (52, 5200, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Meowth - Bite - Level 10
  (52, 5200, 44, 27, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Meowth - Taunt - Level 13
  (52, 5200, 269, 27, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Meowth - Screech - Level 17
  (52, 5200, 103, 27, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Meowth - Slash - Level 22
  (52, 5200, 163, 27, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Meowth - Nasty Plot - Level 27
  (52, 5200, 417, 27, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Meowth - Hypnosis - Level 30
  (52, 5200, 95, 27, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Meowth - Take Down - Level 34
  (52, 5200, 36, 27, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Meowth - Charm - Level 37
  (52, 5200, 204, 27, NULL, 1, 37, NULL, NULL, NULL, 11),
  -- Meowth - Fake Tears - Level 40
  (52, 5200, 313, 27, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Meowth - Play Rough - Level 48
  (52, 5200, 583, 27, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Meowth - Headbutt - TM001
  (52, 5200, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 14),
  -- Meowth - Thunder Wave - TM008
  (52, 5200, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 15),
  -- Meowth - Protect - TM017
  (52, 5200, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Meowth - Power Gem - TM019
  (52, 5200, 408, 27, NULL, 2, NULL, NULL, 26002019, NULL, 17),
  -- Meowth - Play Rough - TM020
  (52, 5200, 583, 27, NULL, 2, NULL, NULL, 26002020, NULL, 18),
  -- Meowth - Aerial Ace - TM022
  (52, 5200, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 19),
  -- Meowth - Swift - TM027
  (52, 5200, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 20),
  -- Meowth - Dig - TM028
  (52, 5200, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 21),
  -- Meowth - Double Team - TM032
  (52, 5200, 104, 27, NULL, 2, NULL, NULL, 26002032, NULL, 22),
  -- Meowth - Body Slam - TM033
  (52, 5200, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 23),
  -- Meowth - Endure - TM035
  (52, 5200, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 24),
  -- Meowth - Water Pulse - TM041
  (52, 5200, 352, 27, NULL, 2, NULL, NULL, 26002041, NULL, 25),
  -- Meowth - Knock Off - TM045
  (52, 5200, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 26),
  -- Meowth - Agility - TM047
  (52, 5200, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 27),
  -- Meowth - Icy Wind - TM049
  (52, 5200, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 28),
  -- Meowth - Double-Edge - TM056
  (52, 5200, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 29),
  -- Meowth - Shadow Claw - TM061
  (52, 5200, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 30),
  -- Meowth - Thunderbolt - TM067
  (52, 5200, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 31),
  -- Meowth - Hyper Voice - TM071
  (52, 5200, 304, 27, NULL, 2, NULL, NULL, 26002071, NULL, 32),
  -- Meowth - Shadow Ball - TM074
  (52, 5200, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 33),
  -- Meowth - U-turn - TM082
  (52, 5200, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 34),
  -- Meowth - Nasty Plot - TM083
  (52, 5200, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 35),
  -- Meowth - Substitute - TM085
  (52, 5200, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 36),
  -- Meowth - Spikes - TM088
  (52, 5200, 191, 27, NULL, 2, NULL, NULL, 26002088, NULL, 37),
  -- Meowth - Dark Pulse - TM090
  (52, 5200, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 38),
  -- Meowth - Curse - TM091
  (52, 5200, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 39),
  -- Meowth - Taunt - TM095
  (52, 5200, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 40),
  -- Meowth - Heal Block - TM097
  (52, 5200, 377, 27, NULL, 2, NULL, NULL, 26002097, NULL, 41),
  -- Meowth - Metronome - TM099
  (52, 5200, 118, 27, NULL, 2, NULL, NULL, 26002099, NULL, 42),
  -- Meowth - Gunk Shot - TM100
  (52, 5200, 441, 27, NULL, 2, NULL, NULL, 26002100, NULL, 43),
  -- Meowth - Work Up - TM103
  (52, 5200, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 44),
  -- Meowth - Thunder - TM106
  (52, 5200, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 45),
  -- Meowth - Facade - TM109
  (52, 5200, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 46),
  -- Meowth - Chilling Water - TM110
  (52, 5200, 886, 27, NULL, 2, NULL, NULL, 26002110, NULL, 47),
  -- Meowth - Trailblaze - TM115
  (52, 5200, 885, 27, NULL, 2, NULL, NULL, 26002115, NULL, 48),
  -- Meowth - Pay Day - TM116
  (52, 5200, 6, 27, NULL, 2, NULL, NULL, 26002116, NULL, 49),
  -- Meowth - False Swipe - TM122
  (52, 5200, 206, 27, NULL, 2, NULL, NULL, 26002122, NULL, 50),
  -- Meowth - Mimic - TM125
  (52, 5200, 102, 27, NULL, 2, NULL, NULL, 26002125, NULL, 51),
  -- Meowth - Seed Bomb - TM128
  (52, 5200, 402, 27, NULL, 2, NULL, NULL, 26002128, NULL, 52),
  -- Meowth - Fake Out - TM141
  (52, 5200, 252, 27, NULL, 2, NULL, NULL, 26002141, NULL, 53),
  -- Alolan Meowth - Pay Day - Level 1
  (52, 5201, 6, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alolan Meowth - Tail Whip - Level 1
  (52, 5201, 39, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alolan Meowth - Growl - Level 1
  (52, 5201, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Alolan Meowth - Snarl - Level 1
  (52, 5201, 555, 27, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Alolan Meowth - Parting Shot - Level 6
  (52, 5201, 575, 27, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Alolan Meowth - Bite - Level 10
  (52, 5201, 44, 27, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Alolan Meowth - Taunt - Level 13
  (52, 5201, 269, 27, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Alolan Meowth - Metal Claw - Level 15
  (52, 5201, 232, 27, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Alolan Meowth - Screech - Level 17
  (52, 5201, 103, 27, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Alolan Meowth - Night Slash - Level 22
  (52, 5201, 400, 27, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Alolan Meowth - Nasty Plot - Level 27
  (52, 5201, 417, 27, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Alolan Meowth - Hypnosis - Level 30
  (52, 5201, 95, 27, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Alolan Meowth - Take Down - Level 34
  (52, 5201, 36, 27, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Alolan Meowth - Charm - Level 37
  (52, 5201, 204, 27, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Alolan Meowth - Fake Tears - Level 40
  (52, 5201, 313, 27, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Alolan Meowth - Play Rough - Level 48
  (52, 5201, 583, 27, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Alolan Meowth - Headbutt - TM001
  (52, 5201, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 17),
  -- Alolan Meowth - Thunder Wave - TM008
  (52, 5201, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 18),
  -- Alolan Meowth - Protect - TM017
  (52, 5201, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Alolan Meowth - Power Gem - TM019
  (52, 5201, 408, 27, NULL, 2, NULL, NULL, 26002019, NULL, 20),
  -- Alolan Meowth - Play Rough - TM020
  (52, 5201, 583, 27, NULL, 2, NULL, NULL, 26002020, NULL, 21),
  -- Alolan Meowth - Aerial Ace - TM022
  (52, 5201, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 22),
  -- Alolan Meowth - Swift - TM027
  (52, 5201, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 23),
  -- Alolan Meowth - Dig - TM028
  (52, 5201, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 24),
  -- Alolan Meowth - Double Team - TM032
  (52, 5201, 104, 27, NULL, 2, NULL, NULL, 26002032, NULL, 25),
  -- Alolan Meowth - Body Slam - TM033
  (52, 5201, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 26),
  -- Alolan Meowth - Night Slash - TM034
  (52, 5201, 400, 27, NULL, 2, NULL, NULL, 26002034, NULL, 27),
  -- Alolan Meowth - Endure - TM035
  (52, 5201, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 28),
  -- Alolan Meowth - Water Pulse - TM041
  (52, 5201, 352, 27, NULL, 2, NULL, NULL, 26002041, NULL, 29),
  -- Alolan Meowth - Knock Off - TM045
  (52, 5201, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 30),
  -- Alolan Meowth - Agility - TM047
  (52, 5201, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 31),
  -- Alolan Meowth - Icy Wind - TM049
  (52, 5201, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 32),
  -- Alolan Meowth - Double-Edge - TM056
  (52, 5201, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 33),
  -- Alolan Meowth - Shadow Claw - TM061
  (52, 5201, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 34),
  -- Alolan Meowth - Thunderbolt - TM067
  (52, 5201, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 35),
  -- Alolan Meowth - Hyper Voice - TM071
  (52, 5201, 304, 27, NULL, 2, NULL, NULL, 26002071, NULL, 36),
  -- Alolan Meowth - Shadow Ball - TM074
  (52, 5201, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 37),
  -- Alolan Meowth - U-turn - TM082
  (52, 5201, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 38),
  -- Alolan Meowth - Nasty Plot - TM083
  (52, 5201, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 39),
  -- Alolan Meowth - Substitute - TM085
  (52, 5201, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 40),
  -- Alolan Meowth - Spikes - TM088
  (52, 5201, 191, 27, NULL, 2, NULL, NULL, 26002088, NULL, 41),
  -- Alolan Meowth - Dark Pulse - TM090
  (52, 5201, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 42),
  -- Alolan Meowth - Curse - TM091
  (52, 5201, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 43),
  -- Alolan Meowth - Taunt - TM095
  (52, 5201, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 44),
  -- Alolan Meowth - Heal Block - TM097
  (52, 5201, 377, 27, NULL, 2, NULL, NULL, 26002097, NULL, 45),
  -- Alolan Meowth - Metronome - TM099
  (52, 5201, 118, 27, NULL, 2, NULL, NULL, 26002099, NULL, 46),
  -- Alolan Meowth - Gunk Shot - TM100
  (52, 5201, 441, 27, NULL, 2, NULL, NULL, 26002100, NULL, 47),
  -- Alolan Meowth - Work Up - TM103
  (52, 5201, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 48),
  -- Alolan Meowth - Thunder - TM106
  (52, 5201, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 49),
  -- Alolan Meowth - Facade - TM109
  (52, 5201, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 50),
  -- Alolan Meowth - Chilling Water - TM110
  (52, 5201, 886, 27, NULL, 2, NULL, NULL, 26002110, NULL, 51),
  -- Alolan Meowth - Trailblaze - TM115
  (52, 5201, 885, 27, NULL, 2, NULL, NULL, 26002115, NULL, 52),
  -- Alolan Meowth - Pay Day - TM116
  (52, 5201, 6, 27, NULL, 2, NULL, NULL, 26002116, NULL, 53),
  -- Alolan Meowth - False Swipe - TM122
  (52, 5201, 206, 27, NULL, 2, NULL, NULL, 26002122, NULL, 54),
  -- Alolan Meowth - Mimic - TM125
  (52, 5201, 102, 27, NULL, 2, NULL, NULL, 26002125, NULL, 55),
  -- Alolan Meowth - Seed Bomb - TM128
  (52, 5201, 402, 27, NULL, 2, NULL, NULL, 26002128, NULL, 56),
  -- Alolan Meowth - Fake Out - TM141
  (52, 5201, 252, 27, NULL, 2, NULL, NULL, 26002141, NULL, 57),
  -- Galarian Meowth - Pay Day - Level 1
  (52, 5202, 6, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Galarian Meowth - Growl - Level 1
  (52, 5202, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Galarian Meowth - Tail Whip - Level 6
  (52, 5202, 39, 27, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Galarian Meowth - Bite - Level 10
  (52, 5202, 44, 27, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Galarian Meowth - Taunt - Level 13
  (52, 5202, 269, 27, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Galarian Meowth - Metal Claw - Level 15
  (52, 5202, 232, 27, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Galarian Meowth - Screech - Level 17
  (52, 5202, 103, 27, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Galarian Meowth - Slash - Level 22
  (52, 5202, 163, 27, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Galarian Meowth - Nasty Plot - Level 27
  (52, 5202, 417, 27, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Galarian Meowth - Hypnosis - Level 30
  (52, 5202, 95, 27, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Galarian Meowth - Take Down - Level 34
  (52, 5202, 36, 27, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Galarian Meowth - Charm - Level 37
  (52, 5202, 204, 27, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Galarian Meowth - Metal Sound - Level 40
  (52, 5202, 319, 27, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Galarian Meowth - Mimic - Level 44
  (52, 5202, 102, 27, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Galarian Meowth - Outrage - Level 48
  (52, 5202, 200, 27, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Galarian Meowth - Headbutt - TM001
  (52, 5202, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 16),
  -- Galarian Meowth - Thunder Wave - TM008
  (52, 5202, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 17),
  -- Galarian Meowth - Brick Break - TM010
  (52, 5202, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 18),
  -- Galarian Meowth - Bulk Up - TM011
  (52, 5202, 339, 27, NULL, 2, NULL, NULL, 26002011, NULL, 19),
  -- Galarian Meowth - Protect - TM017
  (52, 5202, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Galarian Meowth - Play Rough - TM020
  (52, 5202, 583, 27, NULL, 2, NULL, NULL, 26002020, NULL, 21),
  -- Galarian Meowth - Aerial Ace - TM022
  (52, 5202, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 22),
  -- Galarian Meowth - Crunch - TM025
  (52, 5202, 242, 27, NULL, 2, NULL, NULL, 26002025, NULL, 23),
  -- Galarian Meowth - Swift - TM027
  (52, 5202, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 24),
  -- Galarian Meowth - Dig - TM028
  (52, 5202, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 25),
  -- Galarian Meowth - Swords Dance - TM030
  (52, 5202, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 26),
  -- Galarian Meowth - Body Slam - TM033
  (52, 5202, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 27),
  -- Galarian Meowth - Night Slash - TM034
  (52, 5202, 400, 27, NULL, 2, NULL, NULL, 26002034, NULL, 28),
  -- Galarian Meowth - Endure - TM035
  (52, 5202, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 29),
  -- Galarian Meowth - Stealth Rock - TM037
  (52, 5202, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 30),
  -- Galarian Meowth - Water Pulse - TM041
  (52, 5202, 352, 27, NULL, 2, NULL, NULL, 26002041, NULL, 31),
  -- Galarian Meowth - Knock Off - TM045
  (52, 5202, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 32),
  -- Galarian Meowth - Icy Wind - TM049
  (52, 5202, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 33),
  -- Galarian Meowth - Double-Edge - TM056
  (52, 5202, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 34),
  -- Galarian Meowth - Iron Head - TM058
  (52, 5202, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 35),
  -- Galarian Meowth - Shadow Claw - TM061
  (52, 5202, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 36),
  -- Galarian Meowth - Thunderbolt - TM067
  (52, 5202, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 37),
  -- Galarian Meowth - Hyper Voice - TM071
  (52, 5202, 304, 27, NULL, 2, NULL, NULL, 26002071, NULL, 38),
  -- Galarian Meowth - Shadow Ball - TM074
  (52, 5202, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 39),
  -- Galarian Meowth - Iron Defense - TM080
  (52, 5202, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 40),
  -- Galarian Meowth - X-Scissor - TM081
  (52, 5202, 404, 27, NULL, 2, NULL, NULL, 26002081, NULL, 41),
  -- Galarian Meowth - U-turn - TM082
  (52, 5202, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 42),
  -- Galarian Meowth - Nasty Plot - TM083
  (52, 5202, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 43),
  -- Galarian Meowth - Flash Cannon - TM084
  (52, 5202, 430, 27, NULL, 2, NULL, NULL, 26002084, NULL, 44),
  -- Galarian Meowth - Substitute - TM085
  (52, 5202, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 45),
  -- Galarian Meowth - Iron Tail - TM087
  (52, 5202, 231, 27, NULL, 2, NULL, NULL, 26002087, NULL, 46),
  -- Galarian Meowth - Spikes - TM088
  (52, 5202, 191, 27, NULL, 2, NULL, NULL, 26002088, NULL, 47),
  -- Galarian Meowth - Dark Pulse - TM090
  (52, 5202, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 48),
  -- Galarian Meowth - Curse - TM091
  (52, 5202, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 49),
  -- Galarian Meowth - Outrage - TM093
  (52, 5202, 200, 27, NULL, 2, NULL, NULL, 26002093, NULL, 50),
  -- Galarian Meowth - Taunt - TM095
  (52, 5202, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 51),
  -- Galarian Meowth - Heal Block - TM097
  (52, 5202, 377, 27, NULL, 2, NULL, NULL, 26002097, NULL, 52),
  -- Galarian Meowth - Metronome - TM099
  (52, 5202, 118, 27, NULL, 2, NULL, NULL, 26002099, NULL, 53),
  -- Galarian Meowth - Gunk Shot - TM100
  (52, 5202, 441, 27, NULL, 2, NULL, NULL, 26002100, NULL, 54),
  -- Galarian Meowth - Work Up - TM103
  (52, 5202, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 55),
  -- Galarian Meowth - Thunder - TM106
  (52, 5202, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 56),
  -- Galarian Meowth - Close Combat - TM107
  (52, 5202, 370, 27, NULL, 2, NULL, NULL, 26002107, NULL, 57),
  -- Galarian Meowth - Facade - TM109
  (52, 5202, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 58),
  -- Galarian Meowth - Trailblaze - TM115
  (52, 5202, 885, 27, NULL, 2, NULL, NULL, 26002115, NULL, 59),
  -- Galarian Meowth - Pay Day - TM116
  (52, 5202, 6, 27, NULL, 2, NULL, NULL, 26002116, NULL, 60),
  -- Galarian Meowth - False Swipe - TM122
  (52, 5202, 206, 27, NULL, 2, NULL, NULL, 26002122, NULL, 61),
  -- Galarian Meowth - Mimic - TM125
  (52, 5202, 102, 27, NULL, 2, NULL, NULL, 26002125, NULL, 62),
  -- Galarian Meowth - Seed Bomb - TM128
  (52, 5202, 402, 27, NULL, 2, NULL, NULL, 26002128, NULL, 63),
  -- Galarian Meowth - Swagger - TM139
  (52, 5202, 207, 27, NULL, 2, NULL, NULL, 26002139, NULL, 64),
  -- Galarian Meowth - Fake Out - TM141
  (52, 5202, 252, 27, NULL, 2, NULL, NULL, 26002141, NULL, 65),
  -- Galarian Meowth - Steel Beam - TM157
  (52, 5202, 796, 27, NULL, 2, NULL, NULL, 26002157, NULL, 66),
  -- Persian - Pay Day - Level 1
  (53, 5300, 6, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Persian - Tail Whip - Level 1
  (53, 5300, 39, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Persian - Growl - Level 1
  (53, 5300, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Persian - Bite - Level 10
  (53, 5300, 44, 27, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Persian - Taunt - Level 13
  (53, 5300, 269, 27, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Persian - Metal Claw - Level 15
  (53, 5300, 232, 27, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Persian - Screech - Level 17
  (53, 5300, 103, 27, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Persian - Slash - Level 22
  (53, 5300, 163, 27, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Persian - Nasty Plot - Level 27
  (53, 5300, 417, 27, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Persian - Hypnosis - Level 30
  (53, 5300, 95, 27, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Persian - Take Down - Level 34
  (53, 5300, 36, 27, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Persian - Charm - Level 37
  (53, 5300, 204, 27, NULL, 1, 37, NULL, NULL, NULL, 12),
  -- Persian - Fake Tears - Level 40
  (53, 5300, 313, 27, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Persian - Mimic - Level 44
  (53, 5300, 102, 27, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Persian - Play Rough - Level 48
  (53, 5300, 583, 27, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Persian - Headbutt - TM001
  (53, 5300, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 16),
  -- Persian - Roar - TM005
  (53, 5300, 46, 27, NULL, 2, NULL, NULL, 26002005, NULL, 17),
  -- Persian - Thunder Wave - TM008
  (53, 5300, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 18),
  -- Persian - Protect - TM017
  (53, 5300, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Persian - Power Gem - TM019
  (53, 5300, 408, 27, NULL, 2, NULL, NULL, 26002019, NULL, 20),
  -- Persian - Play Rough - TM020
  (53, 5300, 583, 27, NULL, 2, NULL, NULL, 26002020, NULL, 21),
  -- Persian - Aerial Ace - TM022
  (53, 5300, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 22),
  -- Persian - Swift - TM027
  (53, 5300, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 23),
  -- Persian - Dig - TM028
  (53, 5300, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 24),
  -- Persian - Double Team - TM032
  (53, 5300, 104, 27, NULL, 2, NULL, NULL, 26002032, NULL, 25),
  -- Persian - Body Slam - TM033
  (53, 5300, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 26),
  -- Persian - Endure - TM035
  (53, 5300, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 27),
  -- Persian - Water Pulse - TM041
  (53, 5300, 352, 27, NULL, 2, NULL, NULL, 26002041, NULL, 28),
  -- Persian - Hyper Beam - TM044
  (53, 5300, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 29),
  -- Persian - Knock Off - TM045
  (53, 5300, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 30),
  -- Persian - Agility - TM047
  (53, 5300, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 31),
  -- Persian - Icy Wind - TM049
  (53, 5300, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 32),
  -- Persian - Giga Impact - TM055
  (53, 5300, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 33),
  -- Persian - Double-Edge - TM056
  (53, 5300, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 34),
  -- Persian - Shadow Claw - TM061
  (53, 5300, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 35),
  -- Persian - Thunderbolt - TM067
  (53, 5300, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 36),
  -- Persian - Hyper Voice - TM071
  (53, 5300, 304, 27, NULL, 2, NULL, NULL, 26002071, NULL, 37),
  -- Persian - Shadow Ball - TM074
  (53, 5300, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 38),
  -- Persian - U-turn - TM082
  (53, 5300, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 39),
  -- Persian - Nasty Plot - TM083
  (53, 5300, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 40),
  -- Persian - Substitute - TM085
  (53, 5300, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 41),
  -- Persian - Iron Tail - TM087
  (53, 5300, 231, 27, NULL, 2, NULL, NULL, 26002087, NULL, 42),
  -- Persian - Spikes - TM088
  (53, 5300, 191, 27, NULL, 2, NULL, NULL, 26002088, NULL, 43),
  -- Persian - Dark Pulse - TM090
  (53, 5300, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 44),
  -- Persian - Curse - TM091
  (53, 5300, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 45),
  -- Persian - Taunt - TM095
  (53, 5300, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 46),
  -- Persian - Heal Block - TM097
  (53, 5300, 377, 27, NULL, 2, NULL, NULL, 26002097, NULL, 47),
  -- Persian - Metronome - TM099
  (53, 5300, 118, 27, NULL, 2, NULL, NULL, 26002099, NULL, 48),
  -- Persian - Gunk Shot - TM100
  (53, 5300, 441, 27, NULL, 2, NULL, NULL, 26002100, NULL, 49),
  -- Persian - Work Up - TM103
  (53, 5300, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 50),
  -- Persian - Thunder - TM106
  (53, 5300, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 51),
  -- Persian - Facade - TM109
  (53, 5300, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 52),
  -- Persian - Chilling Water - TM110
  (53, 5300, 886, 27, NULL, 2, NULL, NULL, 26002110, NULL, 53),
  -- Persian - Trailblaze - TM115
  (53, 5300, 885, 27, NULL, 2, NULL, NULL, 26002115, NULL, 54),
  -- Persian - Pay Day - TM116
  (53, 5300, 6, 27, NULL, 2, NULL, NULL, 26002116, NULL, 55),
  -- Persian - False Swipe - TM122
  (53, 5300, 206, 27, NULL, 2, NULL, NULL, 26002122, NULL, 56),
  -- Persian - Mimic - TM125
  (53, 5300, 102, 27, NULL, 2, NULL, NULL, 26002125, NULL, 57),
  -- Persian - Seed Bomb - TM128
  (53, 5300, 402, 27, NULL, 2, NULL, NULL, 26002128, NULL, 58),
  -- Persian - Fake Out - TM141
  (53, 5300, 252, 27, NULL, 2, NULL, NULL, 26002141, NULL, 59),
  -- Persian - Skull Bash - TM146
  (53, 5300, 130, 27, NULL, 2, NULL, NULL, 26002146, NULL, 60),
  -- Alolan Persian - Pay Day - Level 1
  (53, 5301, 6, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Alolan Persian - Tail Whip - Level 1
  (53, 5301, 39, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Alolan Persian - Growl - Level 1
  (53, 5301, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Alolan Persian - Snarl - Level 1
  (53, 5301, 555, 27, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Alolan Persian - Parting Shot - Level 6
  (53, 5301, 575, 27, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Alolan Persian - Bite - Level 10
  (53, 5301, 44, 27, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Alolan Persian - Taunt - Level 13
  (53, 5301, 269, 27, NULL, 1, 13, NULL, NULL, NULL, 7),
  -- Alolan Persian - Metal Claw - Level 15
  (53, 5301, 232, 27, NULL, 1, 15, NULL, NULL, NULL, 8),
  -- Alolan Persian - Screech - Level 17
  (53, 5301, 103, 27, NULL, 1, 17, NULL, NULL, NULL, 9),
  -- Alolan Persian - Night Slash - Level 22
  (53, 5301, 400, 27, NULL, 1, 22, NULL, NULL, NULL, 10),
  -- Alolan Persian - Nasty Plot - Level 27
  (53, 5301, 417, 27, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Alolan Persian - Hypnosis - Level 30
  (53, 5301, 95, 27, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Alolan Persian - Take Down - Level 34
  (53, 5301, 36, 27, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Alolan Persian - Charm - Level 37
  (53, 5301, 204, 27, NULL, 1, 37, NULL, NULL, NULL, 14),
  -- Alolan Persian - Fake Tears - Level 40
  (53, 5301, 313, 27, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Alolan Persian - Mimic - Level 44
  (53, 5301, 102, 27, NULL, 1, 44, NULL, NULL, NULL, 16),
  -- Alolan Persian - Play Rough - Level 48
  (53, 5301, 583, 27, NULL, 1, 48, NULL, NULL, NULL, 17),
  -- Alolan Persian - Power Gem - Evolution
  (53, 5301, 408, 27, NULL, 7, NULL, NULL, NULL, NULL, 18),
  -- Alolan Persian - Headbutt - TM001
  (53, 5301, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 19),
  -- Alolan Persian - Roar - TM005
  (53, 5301, 46, 27, NULL, 2, NULL, NULL, 26002005, NULL, 20),
  -- Alolan Persian - Thunder Wave - TM008
  (53, 5301, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 21),
  -- Alolan Persian - Protect - TM017
  (53, 5301, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 22),
  -- Alolan Persian - Power Gem - TM019
  (53, 5301, 408, 27, NULL, 2, NULL, NULL, 26002019, NULL, 23),
  -- Alolan Persian - Play Rough - TM020
  (53, 5301, 583, 27, NULL, 2, NULL, NULL, 26002020, NULL, 24),
  -- Alolan Persian - Aerial Ace - TM022
  (53, 5301, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 25),
  -- Alolan Persian - Swift - TM027
  (53, 5301, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 26),
  -- Alolan Persian - Dig - TM028
  (53, 5301, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 27),
  -- Alolan Persian - Double Team - TM032
  (53, 5301, 104, 27, NULL, 2, NULL, NULL, 26002032, NULL, 28),
  -- Alolan Persian - Body Slam - TM033
  (53, 5301, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 29),
  -- Alolan Persian - Night Slash - TM034
  (53, 5301, 400, 27, NULL, 2, NULL, NULL, 26002034, NULL, 30),
  -- Alolan Persian - Endure - TM035
  (53, 5301, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 31),
  -- Alolan Persian - Water Pulse - TM041
  (53, 5301, 352, 27, NULL, 2, NULL, NULL, 26002041, NULL, 32),
  -- Alolan Persian - Hyper Beam - TM044
  (53, 5301, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 33),
  -- Alolan Persian - Knock Off - TM045
  (53, 5301, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 34),
  -- Alolan Persian - Agility - TM047
  (53, 5301, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 35),
  -- Alolan Persian - Icy Wind - TM049
  (53, 5301, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 36),
  -- Alolan Persian - Giga Impact - TM055
  (53, 5301, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 37),
  -- Alolan Persian - Double-Edge - TM056
  (53, 5301, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 38),
  -- Alolan Persian - Shadow Claw - TM061
  (53, 5301, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 39),
  -- Alolan Persian - Thunderbolt - TM067
  (53, 5301, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 40),
  -- Alolan Persian - Hyper Voice - TM071
  (53, 5301, 304, 27, NULL, 2, NULL, NULL, 26002071, NULL, 41),
  -- Alolan Persian - Shadow Ball - TM074
  (53, 5301, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 42),
  -- Alolan Persian - U-turn - TM082
  (53, 5301, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 43),
  -- Alolan Persian - Nasty Plot - TM083
  (53, 5301, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 44),
  -- Alolan Persian - Substitute - TM085
  (53, 5301, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 45),
  -- Alolan Persian - Iron Tail - TM087
  (53, 5301, 231, 27, NULL, 2, NULL, NULL, 26002087, NULL, 46),
  -- Alolan Persian - Spikes - TM088
  (53, 5301, 191, 27, NULL, 2, NULL, NULL, 26002088, NULL, 47),
  -- Alolan Persian - Toxic Spikes - TM089
  (53, 5301, 390, 27, NULL, 2, NULL, NULL, 26002089, NULL, 48),
  -- Alolan Persian - Dark Pulse - TM090
  (53, 5301, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 49),
  -- Alolan Persian - Curse - TM091
  (53, 5301, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 50),
  -- Alolan Persian - Taunt - TM095
  (53, 5301, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 51),
  -- Alolan Persian - Heal Block - TM097
  (53, 5301, 377, 27, NULL, 2, NULL, NULL, 26002097, NULL, 52),
  -- Alolan Persian - Metronome - TM099
  (53, 5301, 118, 27, NULL, 2, NULL, NULL, 26002099, NULL, 53),
  -- Alolan Persian - Gunk Shot - TM100
  (53, 5301, 441, 27, NULL, 2, NULL, NULL, 26002100, NULL, 54),
  -- Alolan Persian - Work Up - TM103
  (53, 5301, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 55),
  -- Alolan Persian - Thunder - TM106
  (53, 5301, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 56),
  -- Alolan Persian - Facade - TM109
  (53, 5301, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 57),
  -- Alolan Persian - Chilling Water - TM110
  (53, 5301, 886, 27, NULL, 2, NULL, NULL, 26002110, NULL, 58),
  -- Alolan Persian - Trailblaze - TM115
  (53, 5301, 885, 27, NULL, 2, NULL, NULL, 26002115, NULL, 59),
  -- Alolan Persian - Pay Day - TM116
  (53, 5301, 6, 27, NULL, 2, NULL, NULL, 26002116, NULL, 60),
  -- Alolan Persian - False Swipe - TM122
  (53, 5301, 206, 27, NULL, 2, NULL, NULL, 26002122, NULL, 61),
  -- Alolan Persian - Mimic - TM125
  (53, 5301, 102, 27, NULL, 2, NULL, NULL, 26002125, NULL, 62),
  -- Alolan Persian - Seed Bomb - TM128
  (53, 5301, 402, 27, NULL, 2, NULL, NULL, 26002128, NULL, 63),
  -- Alolan Persian - Fake Out - TM141
  (53, 5301, 252, 27, NULL, 2, NULL, NULL, 26002141, NULL, 64),
  -- Mankey - Tackle - Level 1
  (56, 5600, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mankey - Leer - Level 1
  (56, 5600, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mankey - Focus Energy - Level 1
  (56, 5600, 116, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mankey - Rock Throw - Level 8
  (56, 5600, 88, 27, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Mankey - Rock Smash - Level 10
  (56, 5600, 249, 27, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Mankey - Take Down - Level 13
  (56, 5600, 36, 27, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Mankey - Low Sweep - Level 16
  (56, 5600, 490, 27, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Mankey - Knock Off - Level 18
  (56, 5600, 282, 27, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Mankey - Bulldoze - Level 22
  (56, 5600, 523, 27, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Mankey - Brick Break - Level 25
  (56, 5600, 280, 27, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Mankey - Facade - Level 28
  (56, 5600, 263, 27, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Mankey - Screech - Level 40
  (56, 5600, 103, 27, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Mankey - Close Combat - Level 44
  (56, 5600, 370, 27, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Mankey - Outrage - Level 50
  (56, 5600, 200, 27, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Mankey - Dynamic Punch - Level 54
  (56, 5600, 223, 27, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Mankey - Headbutt - TM001
  (56, 5600, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 16),
  -- Mankey - Rock Smash - TM004
  (56, 5600, 249, 27, NULL, 2, NULL, NULL, 26002004, NULL, 17),
  -- Mankey - Roar - TM005
  (56, 5600, 46, 27, NULL, 2, NULL, NULL, 26002005, NULL, 18),
  -- Mankey - Brick Break - TM010
  (56, 5600, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 19),
  -- Mankey - Bulk Up - TM011
  (56, 5600, 339, 27, NULL, 2, NULL, NULL, 26002011, NULL, 20),
  -- Mankey - Rock Slide - TM012
  (56, 5600, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 21),
  -- Mankey - Protect - TM017
  (56, 5600, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 22),
  -- Mankey - Power-Up Punch - TM018
  (56, 5600, 612, 27, NULL, 2, NULL, NULL, 26002018, NULL, 23),
  -- Mankey - Thunder Punch - TM023
  (56, 5600, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 24),
  -- Mankey - Ice Punch - TM024
  (56, 5600, 8, 27, NULL, 2, NULL, NULL, 26002024, NULL, 25),
  -- Mankey - Swift - TM027
  (56, 5600, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 26),
  -- Mankey - Dig - TM028
  (56, 5600, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 27),
  -- Mankey - Fire Punch - TM029
  (56, 5600, 7, 27, NULL, 2, NULL, NULL, 26002029, NULL, 28),
  -- Mankey - Body Slam - TM033
  (56, 5600, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 29),
  -- Mankey - Night Slash - TM034
  (56, 5600, 400, 27, NULL, 2, NULL, NULL, 26002034, NULL, 30),
  -- Mankey - Endure - TM035
  (56, 5600, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 31),
  -- Mankey - Rock Tomb - TM036
  (56, 5600, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 32),
  -- Mankey - Knock Off - TM045
  (56, 5600, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 33),
  -- Mankey - Overheat - TM050
  (56, 5600, 315, 27, NULL, 2, NULL, NULL, 26002050, NULL, 34),
  -- Mankey - Double-Edge - TM056
  (56, 5600, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 35),
  -- Mankey - Shadow Claw - TM061
  (56, 5600, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 36),
  -- Mankey - Stone Edge - TM065
  (56, 5600, 444, 27, NULL, 2, NULL, NULL, 26002065, NULL, 37),
  -- Mankey - Thunderbolt - TM067
  (56, 5600, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 38),
  -- Mankey - Earthquake - TM069
  (56, 5600, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 39),
  -- Mankey - Poison Jab - TM077
  (56, 5600, 398, 27, NULL, 2, NULL, NULL, 26002077, NULL, 40),
  -- Mankey - Bulldoze - TM078
  (56, 5600, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 41),
  -- Mankey - U-turn - TM082
  (56, 5600, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 42),
  -- Mankey - Substitute - TM085
  (56, 5600, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 43),
  -- Mankey - Curse - TM091
  (56, 5600, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 44),
  -- Mankey - Outrage - TM093
  (56, 5600, 200, 27, NULL, 2, NULL, NULL, 26002093, NULL, 45),
  -- Mankey - Taunt - TM095
  (56, 5600, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 46),
  -- Mankey - Metronome - TM099
  (56, 5600, 118, 27, NULL, 2, NULL, NULL, 26002099, NULL, 47),
  -- Mankey - Gunk Shot - TM100
  (56, 5600, 441, 27, NULL, 2, NULL, NULL, 26002100, NULL, 48),
  -- Mankey - Focus Blast - TM102
  (56, 5600, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 49),
  -- Mankey - Work Up - TM103
  (56, 5600, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 50),
  -- Mankey - Close Combat - TM107
  (56, 5600, 370, 27, NULL, 2, NULL, NULL, 26002107, NULL, 51),
  -- Mankey - Comet Punch - TM108
  (56, 5600, 4, 27, NULL, 2, NULL, NULL, 26002108, NULL, 52),
  -- Mankey - Facade - TM109
  (56, 5600, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 53),
  -- Mankey - Low Sweep - TM113
  (56, 5600, 490, 27, NULL, 2, NULL, NULL, 26002113, NULL, 54),
  -- Mankey - Pay Day - TM116
  (56, 5600, 6, 27, NULL, 2, NULL, NULL, 26002116, NULL, 55),
  -- Mankey - Torment - TM121
  (56, 5600, 259, 27, NULL, 2, NULL, NULL, 26002121, NULL, 56),
  -- Mankey - Seed Bomb - TM128
  (56, 5600, 402, 27, NULL, 2, NULL, NULL, 26002128, NULL, 57),
  -- Mankey - Circle Throw - TM129
  (56, 5600, 509, 27, NULL, 2, NULL, NULL, 26002129, NULL, 58),
  -- Mankey - Drain Punch - TM131
  (56, 5600, 409, 27, NULL, 2, NULL, NULL, 26002131, NULL, 59),
  -- Mankey - Dual Chop - TM135
  (56, 5600, 530, 27, NULL, 2, NULL, NULL, 26002135, NULL, 60),
  -- Mankey - Storm Throw - TM137
  (56, 5600, 480, 27, NULL, 2, NULL, NULL, 26002137, NULL, 61),
  -- Mankey - Swagger - TM139
  (56, 5600, 207, 27, NULL, 2, NULL, NULL, 26002139, NULL, 62),
  -- Primeape - Tackle - Level 1
  (57, 5700, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Primeape - Leer - Level 1
  (57, 5700, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Primeape - Focus Energy - Level 1
  (57, 5700, 116, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Primeape - Rock Throw - Level 8
  (57, 5700, 88, 27, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Primeape - Rock Smash - Level 10
  (57, 5700, 249, 27, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Primeape - Take Down - Level 13
  (57, 5700, 36, 27, NULL, 1, 13, NULL, NULL, NULL, 6),
  -- Primeape - Low Sweep - Level 16
  (57, 5700, 490, 27, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Primeape - Knock Off - Level 18
  (57, 5700, 282, 27, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Primeape - Bulldoze - Level 22
  (57, 5700, 523, 27, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Primeape - Brick Break - Level 25
  (57, 5700, 280, 27, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Primeape - Facade - Level 28
  (57, 5700, 263, 27, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Primeape - Rage Fist - Level 35
  (57, 5700, 889, 27, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Primeape - Screech - Level 40
  (57, 5700, 103, 27, NULL, 1, 40, NULL, NULL, NULL, 13),
  -- Primeape - Close Combat - Level 44
  (57, 5700, 370, 27, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Primeape - Outrage - Level 50
  (57, 5700, 200, 27, NULL, 1, 50, NULL, NULL, NULL, 15),
  -- Primeape - Dynamic Punch - Level 54
  (57, 5700, 223, 27, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Primeape - Headbutt - TM001
  (57, 5700, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 17),
  -- Primeape - Rock Smash - TM004
  (57, 5700, 249, 27, NULL, 2, NULL, NULL, 26002004, NULL, 18),
  -- Primeape - Roar - TM005
  (57, 5700, 46, 27, NULL, 2, NULL, NULL, 26002005, NULL, 19),
  -- Primeape - Brick Break - TM010
  (57, 5700, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 20),
  -- Primeape - Bulk Up - TM011
  (57, 5700, 339, 27, NULL, 2, NULL, NULL, 26002011, NULL, 21),
  -- Primeape - Rock Slide - TM012
  (57, 5700, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 22),
  -- Primeape - Protect - TM017
  (57, 5700, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 23),
  -- Primeape - Power-Up Punch - TM018
  (57, 5700, 612, 27, NULL, 2, NULL, NULL, 26002018, NULL, 24),
  -- Primeape - Thunder Punch - TM023
  (57, 5700, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 25),
  -- Primeape - Ice Punch - TM024
  (57, 5700, 8, 27, NULL, 2, NULL, NULL, 26002024, NULL, 26),
  -- Primeape - Swift - TM027
  (57, 5700, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 27),
  -- Primeape - Dig - TM028
  (57, 5700, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 28),
  -- Primeape - Fire Punch - TM029
  (57, 5700, 7, 27, NULL, 2, NULL, NULL, 26002029, NULL, 29),
  -- Primeape - Body Slam - TM033
  (57, 5700, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 30),
  -- Primeape - Night Slash - TM034
  (57, 5700, 400, 27, NULL, 2, NULL, NULL, 26002034, NULL, 31),
  -- Primeape - Endure - TM035
  (57, 5700, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 32),
  -- Primeape - Rock Tomb - TM036
  (57, 5700, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 33),
  -- Primeape - Stealth Rock - TM037
  (57, 5700, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 34),
  -- Primeape - Hyper Beam - TM044
  (57, 5700, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 35),
  -- Primeape - Knock Off - TM045
  (57, 5700, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 36),
  -- Primeape - Overheat - TM050
  (57, 5700, 315, 27, NULL, 2, NULL, NULL, 26002050, NULL, 37),
  -- Primeape - Giga Impact - TM055
  (57, 5700, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 38),
  -- Primeape - Double-Edge - TM056
  (57, 5700, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 39),
  -- Primeape - Shadow Claw - TM061
  (57, 5700, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 40),
  -- Primeape - Stone Edge - TM065
  (57, 5700, 444, 27, NULL, 2, NULL, NULL, 26002065, NULL, 41),
  -- Primeape - Thunderbolt - TM067
  (57, 5700, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 42),
  -- Primeape - Earthquake - TM069
  (57, 5700, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 43),
  -- Primeape - Poison Jab - TM077
  (57, 5700, 398, 27, NULL, 2, NULL, NULL, 26002077, NULL, 44),
  -- Primeape - Bulldoze - TM078
  (57, 5700, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 45),
  -- Primeape - U-turn - TM082
  (57, 5700, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 46),
  -- Primeape - Substitute - TM085
  (57, 5700, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 47),
  -- Primeape - Curse - TM091
  (57, 5700, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 48),
  -- Primeape - Outrage - TM093
  (57, 5700, 200, 27, NULL, 2, NULL, NULL, 26002093, NULL, 49),
  -- Primeape - Taunt - TM095
  (57, 5700, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 50),
  -- Primeape - Metronome - TM099
  (57, 5700, 118, 27, NULL, 2, NULL, NULL, 26002099, NULL, 51),
  -- Primeape - Gunk Shot - TM100
  (57, 5700, 441, 27, NULL, 2, NULL, NULL, 26002100, NULL, 52),
  -- Primeape - Focus Blast - TM102
  (57, 5700, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 53),
  -- Primeape - Work Up - TM103
  (57, 5700, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 54),
  -- Primeape - Thunder - TM106
  (57, 5700, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 55),
  -- Primeape - Close Combat - TM107
  (57, 5700, 370, 27, NULL, 2, NULL, NULL, 26002107, NULL, 56),
  -- Primeape - Comet Punch - TM108
  (57, 5700, 4, 27, NULL, 2, NULL, NULL, 26002108, NULL, 57),
  -- Primeape - Facade - TM109
  (57, 5700, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 58),
  -- Primeape - Low Sweep - TM113
  (57, 5700, 490, 27, NULL, 2, NULL, NULL, 26002113, NULL, 59),
  -- Primeape - Pay Day - TM116
  (57, 5700, 6, 27, NULL, 2, NULL, NULL, 26002116, NULL, 60),
  -- Primeape - Torment - TM121
  (57, 5700, 259, 27, NULL, 2, NULL, NULL, 26002121, NULL, 61),
  -- Primeape - Seed Bomb - TM128
  (57, 5700, 402, 27, NULL, 2, NULL, NULL, 26002128, NULL, 62),
  -- Primeape - Circle Throw - TM129
  (57, 5700, 509, 27, NULL, 2, NULL, NULL, 26002129, NULL, 63),
  -- Primeape - Drain Punch - TM131
  (57, 5700, 409, 27, NULL, 2, NULL, NULL, 26002131, NULL, 64),
  -- Primeape - Dual Chop - TM135
  (57, 5700, 530, 27, NULL, 2, NULL, NULL, 26002135, NULL, 65),
  -- Primeape - Storm Throw - TM137
  (57, 5700, 480, 27, NULL, 2, NULL, NULL, 26002137, NULL, 66),
  -- Primeape - Swagger - TM139
  (57, 5700, 207, 27, NULL, 2, NULL, NULL, 26002139, NULL, 67),
  -- Primeape - Vacuum Wave - TM150
  (57, 5700, 410, 27, NULL, 2, NULL, NULL, 26002150, NULL, 68),
  -- Farfetch'd - Leer - Level 1
  (83, 8300, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Farfetch'd - Peck - Level 1
  (83, 8300, 64, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Farfetch'd - Gust - Level 10
  (83, 8300, 16, 27, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Farfetch'd - Steel Wing - Level 12
  (83, 8300, 211, 27, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Farfetch'd - Aerial Ace - Level 16
  (83, 8300, 332, 27, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Farfetch'd - Knock Off - Level 20
  (83, 8300, 282, 27, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Farfetch'd - Quick Attack - Level 22
  (83, 8300, 98, 27, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Farfetch'd - Brutal Swing - Level 24
  (83, 8300, 693, 27, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Farfetch'd - False Swipe - Level 25
  (83, 8300, 206, 27, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Farfetch'd - Focus Energy - Level 27
  (83, 8300, 116, 27, NULL, 1, 27, NULL, NULL, NULL, 10),
  -- Farfetch'd - Slash - Level 30
  (83, 8300, 163, 27, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Farfetch'd - Swords Dance - Level 34
  (83, 8300, 14, 27, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Farfetch'd - Feather Dance - Level 36
  (83, 8300, 297, 27, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Farfetch'd - Air Slash - Level 40
  (83, 8300, 403, 27, NULL, 1, 40, NULL, NULL, NULL, 14),
  -- Farfetch'd - Leaf Blade - Level 42
  (83, 8300, 348, 27, NULL, 1, 42, NULL, NULL, NULL, 15),
  -- Farfetch'd - Agility - Level 47
  (83, 8300, 97, 27, NULL, 1, 47, NULL, NULL, NULL, 16),
  -- Farfetch'd - Brave Bird - Level 55
  (83, 8300, 413, 27, NULL, 1, 55, NULL, NULL, NULL, 17),
  -- Farfetch'd - Protect - TM017
  (83, 8300, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Farfetch'd - Aerial Ace - TM022
  (83, 8300, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 19),
  -- Farfetch'd - Swift - TM027
  (83, 8300, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 20),
  -- Farfetch'd - Swords Dance - TM030
  (83, 8300, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 21),
  -- Farfetch'd - Body Slam - TM033
  (83, 8300, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 22),
  -- Farfetch'd - Night Slash - TM034
  (83, 8300, 400, 27, NULL, 2, NULL, NULL, 26002034, NULL, 23),
  -- Farfetch'd - Endure - TM035
  (83, 8300, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 24),
  -- Farfetch'd - Fly - TM043
  (83, 8300, 19, 27, NULL, 2, NULL, NULL, 26002043, NULL, 25),
  -- Farfetch'd - Knock Off - TM045
  (83, 8300, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 26),
  -- Farfetch'd - Agility - TM047
  (83, 8300, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 27),
  -- Farfetch'd - Heat Wave - TM068
  (83, 8300, 257, 27, NULL, 2, NULL, NULL, 26002068, NULL, 28),
  -- Farfetch'd - Poison Jab - TM077
  (83, 8300, 398, 27, NULL, 2, NULL, NULL, 26002077, NULL, 29),
  -- Farfetch'd - U-turn - TM082
  (83, 8300, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 30),
  -- Farfetch'd - Substitute - TM085
  (83, 8300, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 31),
  -- Farfetch'd - Iron Tail - TM087
  (83, 8300, 231, 27, NULL, 2, NULL, NULL, 26002087, NULL, 32),
  -- Farfetch'd - Curse - TM091
  (83, 8300, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 33),
  -- Farfetch'd - Work Up - TM103
  (83, 8300, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 34),
  -- Farfetch'd - Close Combat - TM107
  (83, 8300, 370, 27, NULL, 2, NULL, NULL, 26002107, NULL, 35),
  -- Farfetch'd - Facade - TM109
  (83, 8300, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 36),
  -- Farfetch'd - Trailblaze - TM115
  (83, 8300, 885, 27, NULL, 2, NULL, NULL, 26002115, NULL, 37),
  -- Farfetch'd - False Swipe - TM122
  (83, 8300, 206, 27, NULL, 2, NULL, NULL, 26002122, NULL, 38),
  -- Farfetch'd - Dual Wingbeat - TM134
  (83, 8300, 814, 27, NULL, 2, NULL, NULL, 26002134, NULL, 39),
  -- Farfetch'd - First Impression - TM142
  (83, 8300, 660, 27, NULL, 2, NULL, NULL, 26002142, NULL, 40),
  -- Farfetch'd - Razor Wind - TM145
  (83, 8300, 13, 27, NULL, 2, NULL, NULL, 26002145, NULL, 41),
  -- Farfetch'd - Solar Blade - TM152
  (83, 8300, 669, 27, NULL, 2, NULL, NULL, 26002152, NULL, 42),
  -- Farfetch'd - Sky Attack - TM153
  (83, 8300, 143, 27, NULL, 2, NULL, NULL, 26002153, NULL, 43),
  -- Galarian Farfetch'd - Leer - Level 1
  (83, 8301, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Galarian Farfetch'd - Peck - Level 1
  (83, 8301, 64, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Galarian Farfetch'd - Detect - Level 1
  (83, 8301, 197, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Galarian Farfetch'd - Rock Smash - Level 10
  (83, 8301, 249, 27, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Galarian Farfetch'd - Steel Wing - Level 12
  (83, 8301, 211, 27, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Galarian Farfetch'd - Aerial Ace - Level 16
  (83, 8301, 332, 27, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Galarian Farfetch'd - Knock Off - Level 20
  (83, 8301, 282, 27, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Galarian Farfetch'd - Quick Attack - Level 22
  (83, 8301, 98, 27, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Galarian Farfetch'd - Brutal Swing - Level 24
  (83, 8301, 693, 27, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Galarian Farfetch'd - False Swipe - Level 25
  (83, 8301, 206, 27, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Galarian Farfetch'd - Focus Energy - Level 27
  (83, 8301, 116, 27, NULL, 1, 27, NULL, NULL, NULL, 11),
  -- Galarian Farfetch'd - Slash - Level 30
  (83, 8301, 163, 27, NULL, 1, 30, NULL, NULL, NULL, 12),
  -- Galarian Farfetch'd - Swords Dance - Level 34
  (83, 8301, 14, 27, NULL, 1, 34, NULL, NULL, NULL, 13),
  -- Galarian Farfetch'd - Feather Dance - Level 36
  (83, 8301, 297, 27, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Galarian Farfetch'd - Brick Break - Level 40
  (83, 8301, 280, 27, NULL, 1, 40, NULL, NULL, NULL, 15),
  -- Galarian Farfetch'd - Leaf Blade - Level 42
  (83, 8301, 348, 27, NULL, 1, 42, NULL, NULL, NULL, 16),
  -- Galarian Farfetch'd - Agility - Level 47
  (83, 8301, 97, 27, NULL, 1, 47, NULL, NULL, NULL, 17),
  -- Galarian Farfetch'd - Brave Bird - Level 55
  (83, 8301, 413, 27, NULL, 1, 55, NULL, NULL, NULL, 18),
  -- Galarian Farfetch'd - Rock Smash - TM004
  (83, 8301, 249, 27, NULL, 2, NULL, NULL, 26002004, NULL, 19),
  -- Galarian Farfetch'd - Brick Break - TM010
  (83, 8301, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 20),
  -- Galarian Farfetch'd - Protect - TM017
  (83, 8301, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 21),
  -- Galarian Farfetch'd - Aerial Ace - TM022
  (83, 8301, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 22),
  -- Galarian Farfetch'd - Swift - TM027
  (83, 8301, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 23),
  -- Galarian Farfetch'd - Swords Dance - TM030
  (83, 8301, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 24),
  -- Galarian Farfetch'd - Body Slam - TM033
  (83, 8301, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 25),
  -- Galarian Farfetch'd - Night Slash - TM034
  (83, 8301, 400, 27, NULL, 2, NULL, NULL, 26002034, NULL, 26),
  -- Galarian Farfetch'd - Endure - TM035
  (83, 8301, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 27),
  -- Galarian Farfetch'd - Fly - TM043
  (83, 8301, 19, 27, NULL, 2, NULL, NULL, 26002043, NULL, 28),
  -- Galarian Farfetch'd - Knock Off - TM045
  (83, 8301, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 29),
  -- Galarian Farfetch'd - Agility - TM047
  (83, 8301, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 30),
  -- Galarian Farfetch'd - Double-Edge - TM056
  (83, 8301, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 31),
  -- Galarian Farfetch'd - Poison Jab - TM077
  (83, 8301, 398, 27, NULL, 2, NULL, NULL, 26002077, NULL, 32),
  -- Galarian Farfetch'd - U-turn - TM082
  (83, 8301, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 33),
  -- Galarian Farfetch'd - Substitute - TM085
  (83, 8301, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 34),
  -- Galarian Farfetch'd - Iron Tail - TM087
  (83, 8301, 231, 27, NULL, 2, NULL, NULL, 26002087, NULL, 35),
  -- Galarian Farfetch'd - Curse - TM091
  (83, 8301, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 36),
  -- Galarian Farfetch'd - Work Up - TM103
  (83, 8301, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 37),
  -- Galarian Farfetch'd - Close Combat - TM107
  (83, 8301, 370, 27, NULL, 2, NULL, NULL, 26002107, NULL, 38),
  -- Galarian Farfetch'd - Facade - TM109
  (83, 8301, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 39),
  -- Galarian Farfetch'd - False Swipe - TM122
  (83, 8301, 206, 27, NULL, 2, NULL, NULL, 26002122, NULL, 40),
  -- Galarian Farfetch'd - Dual Wingbeat - TM134
  (83, 8301, 814, 27, NULL, 2, NULL, NULL, 26002134, NULL, 41),
  -- Galarian Farfetch'd - First Impression - TM142
  (83, 8301, 660, 27, NULL, 2, NULL, NULL, 26002142, NULL, 42),
  -- Galarian Farfetch'd - Razor Wind - TM145
  (83, 8301, 13, 27, NULL, 2, NULL, NULL, 26002145, NULL, 43),
  -- Galarian Farfetch'd - Vacuum Wave - TM150
  (83, 8301, 410, 27, NULL, 2, NULL, NULL, 26002150, NULL, 44),
  -- Galarian Farfetch'd - Solar Blade - TM152
  (83, 8301, 669, 27, NULL, 2, NULL, NULL, 26002152, NULL, 45),
  -- Galarian Farfetch'd - Sky Attack - TM153
  (83, 8301, 143, 27, NULL, 2, NULL, NULL, 26002153, NULL, 46);
