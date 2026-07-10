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
-- Mega Dimension learnset delta rows for species 151-200.
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
  -- Crobat - Supersonic - Level 1
  (169, 16900, 48, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Crobat - Absorb - Level 1
  (169, 16900, 71, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Crobat - Screech - Level 1
  (169, 16900, 103, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Crobat - Gust - Level 5
  (169, 16900, 16, 27, NULL, 1, 5, NULL, NULL, NULL, 4),
  -- Crobat - Bite - Level 8
  (169, 16900, 44, 27, NULL, 1, 8, NULL, NULL, NULL, 5),
  -- Crobat - Wing Attack - Level 12
  (169, 16900, 17, 27, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Crobat - Quick Attack - Level 15
  (169, 16900, 98, 27, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Crobat - Whirlwind - Level 18
  (169, 16900, 18, 27, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Crobat - Hypnosis - Level 22
  (169, 16900, 95, 27, NULL, 1, 22, NULL, NULL, NULL, 9),
  -- Crobat - Haze - Level 26
  (169, 16900, 114, 27, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Crobat - Confuse Ray - Level 30
  (169, 16900, 109, 27, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Crobat - Poison Fang - Level 34
  (169, 16900, 305, 27, NULL, 1, 34, NULL, NULL, NULL, 12),
  -- Crobat - Air Slash - Level 42
  (169, 16900, 403, 27, NULL, 1, 42, NULL, NULL, NULL, 13),
  -- Crobat - Leech Life - Level 50
  (169, 16900, 141, 27, NULL, 1, 50, NULL, NULL, NULL, 14),
  -- Crobat - Brave Bird - Level 53
  (169, 16900, 413, 27, NULL, 1, 53, NULL, NULL, NULL, 15),
  -- Crobat - Toxic - TM007
  (169, 16900, 92, 27, NULL, 2, NULL, NULL, 26002007, NULL, 16),
  -- Crobat - Protect - TM017
  (169, 16900, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Crobat - Aerial Ace - TM022
  (169, 16900, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 18),
  -- Crobat - Crunch - TM025
  (169, 16900, 242, 27, NULL, 2, NULL, NULL, 26002025, NULL, 19),
  -- Crobat - Swift - TM027
  (169, 16900, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 20),
  -- Crobat - Double Team - TM032
  (169, 16900, 104, 27, NULL, 2, NULL, NULL, 26002032, NULL, 21),
  -- Crobat - Night Slash - TM034
  (169, 16900, 400, 27, NULL, 2, NULL, NULL, 26002034, NULL, 22),
  -- Crobat - Endure - TM035
  (169, 16900, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Crobat - Giga Drain - TM042
  (169, 16900, 202, 27, NULL, 2, NULL, NULL, 26002042, NULL, 24),
  -- Crobat - Fly - TM043
  (169, 16900, 19, 27, NULL, 2, NULL, NULL, 26002043, NULL, 25),
  -- Crobat - Hyper Beam - TM044
  (169, 16900, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 26),
  -- Crobat - Knock Off - TM045
  (169, 16900, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 27),
  -- Crobat - Agility - TM047
  (169, 16900, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 28),
  -- Crobat - Sludge Bomb - TM053
  (169, 16900, 188, 27, NULL, 2, NULL, NULL, 26002053, NULL, 29),
  -- Crobat - Giga Impact - TM055
  (169, 16900, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 30),
  -- Crobat - Zen Headbutt - TM059
  (169, 16900, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 31),
  -- Crobat - Heat Wave - TM068
  (169, 16900, 257, 27, NULL, 2, NULL, NULL, 26002068, NULL, 32),
  -- Crobat - Shadow Ball - TM074
  (169, 16900, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 33),
  -- Crobat - Hurricane - TM079
  (169, 16900, 542, 27, NULL, 2, NULL, NULL, 26002079, NULL, 34),
  -- Crobat - X-Scissor - TM081
  (169, 16900, 404, 27, NULL, 2, NULL, NULL, 26002081, NULL, 35),
  -- Crobat - U-turn - TM082
  (169, 16900, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 36),
  -- Crobat - Nasty Plot - TM083
  (169, 16900, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 37),
  -- Crobat - Substitute - TM085
  (169, 16900, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 38),
  -- Crobat - Dark Pulse - TM090
  (169, 16900, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 39),
  -- Crobat - Curse - TM091
  (169, 16900, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 40),
  -- Crobat - Whirlwind - TM094
  (169, 16900, 18, 27, NULL, 2, NULL, NULL, 26002094, NULL, 41),
  -- Crobat - Taunt - TM095
  (169, 16900, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 42),
  -- Crobat - Facade - TM109
  (169, 16900, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 43),
  -- Crobat - Acid Spray - TM112
  (169, 16900, 491, 27, NULL, 2, NULL, NULL, 26002112, NULL, 44),
  -- Crobat - Ominous Wind - TM119
  (169, 16900, 466, 27, NULL, 2, NULL, NULL, 26002119, NULL, 45),
  -- Crobat - Poison Fang - TM123
  (169, 16900, 305, 27, NULL, 2, NULL, NULL, 26002123, NULL, 46),
  -- Crobat - Psychic Fangs - TM124
  (169, 16900, 706, 27, NULL, 2, NULL, NULL, 26002124, NULL, 47),
  -- Crobat - Double Hit - TM132
  (169, 16900, 458, 27, NULL, 2, NULL, NULL, 26002132, NULL, 48),
  -- Crobat - Dual Wingbeat - TM134
  (169, 16900, 814, 27, NULL, 2, NULL, NULL, 26002134, NULL, 49),
  -- Crobat - Swagger - TM139
  (169, 16900, 207, 27, NULL, 2, NULL, NULL, 26002139, NULL, 50),
  -- Crobat - Razor Wind - TM145
  (169, 16900, 13, 27, NULL, 2, NULL, NULL, 26002145, NULL, 51),
  -- Crobat - Sky Attack - TM153
  (169, 16900, 143, 27, NULL, 2, NULL, NULL, 26002153, NULL, 52),
  -- Igglybuff - Tackle - Level 1
  (174, 17400, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Igglybuff - Sing - Level 1
  (174, 17400, 47, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Igglybuff - Charm - Level 1
  (174, 17400, 204, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Igglybuff - Disarming Voice - Level 1
  (174, 17400, 574, 27, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Igglybuff - Rollout - Level 10
  (174, 17400, 205, 27, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Igglybuff - Draining Kiss - Level 12
  (174, 17400, 577, 27, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Igglybuff - Fake Tears - Level 14
  (174, 17400, 313, 27, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Igglybuff - Confusion - Level 16
  (174, 17400, 93, 27, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Igglybuff - Facade - Level 18
  (174, 17400, 263, 27, NULL, 1, 18, NULL, NULL, NULL, 9),
  -- Igglybuff - Take Down - Level 20
  (174, 17400, 36, 27, NULL, 1, 20, NULL, NULL, NULL, 10),
  -- Igglybuff - Mimic - Level 28
  (174, 17400, 102, 27, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Igglybuff - Wish - Level 40
  (174, 17400, 273, 27, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Igglybuff - Psyshock - TM003
  (174, 17400, 473, 27, NULL, 2, NULL, NULL, 26002003, NULL, 13),
  -- Igglybuff - Calm Mind - TM006
  (174, 17400, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 14),
  -- Igglybuff - Thunder Wave - TM008
  (174, 17400, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 15),
  -- Igglybuff - Brick Break - TM010
  (174, 17400, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 16),
  -- Igglybuff - Light Screen - TM016
  (174, 17400, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 17),
  -- Igglybuff - Protect - TM017
  (174, 17400, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Igglybuff - Play Rough - TM020
  (174, 17400, 583, 27, NULL, 2, NULL, NULL, 26002020, NULL, 19),
  -- Igglybuff - Energy Ball - TM026
  (174, 17400, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 20),
  -- Igglybuff - Swift - TM027
  (174, 17400, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 21),
  -- Igglybuff - Dig - TM028
  (174, 17400, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 22),
  -- Igglybuff - Reflect - TM031
  (174, 17400, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 23),
  -- Igglybuff - Body Slam - TM033
  (174, 17400, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 24),
  -- Igglybuff - Endure - TM035
  (174, 17400, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Igglybuff - Stealth Rock - TM037
  (174, 17400, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 26),
  -- Igglybuff - Fire Blast - TM038
  (174, 17400, 126, 27, NULL, 2, NULL, NULL, 26002038, NULL, 27),
  -- Igglybuff - Water Pulse - TM041
  (174, 17400, 352, 27, NULL, 2, NULL, NULL, 26002041, NULL, 28),
  -- Igglybuff - Icy Wind - TM049
  (174, 17400, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 29),
  -- Igglybuff - Double-Edge - TM056
  (174, 17400, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 30),
  -- Igglybuff - Zen Headbutt - TM059
  (174, 17400, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 31),
  -- Igglybuff - Flamethrower - TM062
  (174, 17400, 53, 27, NULL, 2, NULL, NULL, 26002062, NULL, 32),
  -- Igglybuff - Psychic - TM063
  (174, 17400, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 33),
  -- Igglybuff - Solar Beam - TM064
  (174, 17400, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 34),
  -- Igglybuff - Hyper Voice - TM071
  (174, 17400, 304, 27, NULL, 2, NULL, NULL, 26002071, NULL, 35),
  -- Igglybuff - Shadow Ball - TM074
  (174, 17400, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 36),
  -- Igglybuff - Nasty Plot - TM083
  (174, 17400, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 37),
  -- Igglybuff - Substitute - TM085
  (174, 17400, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 38),
  -- Igglybuff - Wild Charge - TM086
  (174, 17400, 528, 27, NULL, 2, NULL, NULL, 26002086, NULL, 39),
  -- Igglybuff - Dazzling Gleam - TM092
  (174, 17400, 605, 27, NULL, 2, NULL, NULL, 26002092, NULL, 40),
  -- Igglybuff - Taunt - TM095
  (174, 17400, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 41),
  -- Igglybuff - Facade - TM109
  (174, 17400, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 42),
  -- Igglybuff - Sing - TM111
  (174, 17400, 47, 27, NULL, 2, NULL, NULL, 26002111, NULL, 43),
  -- Igglybuff - Trailblaze - TM115
  (174, 17400, 885, 27, NULL, 2, NULL, NULL, 26002115, NULL, 44),
  -- Igglybuff - Mimic - TM125
  (174, 17400, 102, 27, NULL, 2, NULL, NULL, 26002125, NULL, 45);
