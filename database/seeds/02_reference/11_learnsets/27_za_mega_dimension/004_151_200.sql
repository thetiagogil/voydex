-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Z-A Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Pokémon Legends: Z-A learnset pages during full row-level audit.
-- Scope note: Mega Dimension rows include numeric level-up, evolution-learned, and TM001-TM160 rows for Pokémon/forms first available in the optional Mega Dimension scope, plus TM108-TM160 rows for base ZA Pokémon/forms.
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
  -- Chikorita - Facade - TM109
  (152, 15200, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Chikorita - Trailblaze - TM115
  (152, 15200, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 2),
  -- Chikorita - Ancient Power - TM120
  (152, 15200, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 3),
  -- Chikorita - Seed Bomb - TM128
  (152, 15200, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 4),
  -- Chikorita - Solar Blade - TM152
  (152, 15200, 669, 27, NULL, 2, NULL, NULL, 27002152, NULL, 5),
  -- Bayleef - Facade - TM109
  (153, 15300, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Bayleef - Trailblaze - TM115
  (153, 15300, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 2),
  -- Bayleef - Ancient Power - TM120
  (153, 15300, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 3),
  -- Bayleef - Seed Bomb - TM128
  (153, 15300, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 4),
  -- Bayleef - Solar Blade - TM152
  (153, 15300, 669, 27, NULL, 2, NULL, NULL, 27002152, NULL, 5),
  -- Meganium - Facade - TM109
  (154, 15400, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Meganium - Trailblaze - TM115
  (154, 15400, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 2),
  -- Meganium - Ancient Power - TM120
  (154, 15400, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 3),
  -- Meganium - Seed Bomb - TM128
  (154, 15400, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 4),
  -- Meganium - Petal Dance - TM151
  (154, 15400, 80, 27, NULL, 2, NULL, NULL, 27002151, NULL, 5),
  -- Meganium - Solar Blade - TM152
  (154, 15400, 669, 27, NULL, 2, NULL, NULL, 27002152, NULL, 6),
  -- Meganium - Frenzy Plant - TM160
  (154, 15400, 338, 27, NULL, 2, NULL, NULL, 27002160, NULL, 7),
  -- Totodile - Facade - TM109
  (158, 15800, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Totodile - Chilling Water - TM110
  (158, 15800, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Totodile - Trailblaze - TM115
  (158, 15800, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Totodile - Ancient Power - TM120
  (158, 15800, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 4),
  -- Totodile - Psychic Fangs - TM124
  (158, 15800, 706, 27, NULL, 2, NULL, NULL, 27002124, NULL, 5),
  -- Totodile - Muddy Water - TM140
  (158, 15800, 330, 27, NULL, 2, NULL, NULL, 27002140, NULL, 6),
  -- Croconaw - Facade - TM109
  (159, 15900, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Croconaw - Chilling Water - TM110
  (159, 15900, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Croconaw - Trailblaze - TM115
  (159, 15900, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Croconaw - Ancient Power - TM120
  (159, 15900, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 4),
  -- Croconaw - Psychic Fangs - TM124
  (159, 15900, 706, 27, NULL, 2, NULL, NULL, 27002124, NULL, 5),
  -- Croconaw - Muddy Water - TM140
  (159, 15900, 330, 27, NULL, 2, NULL, NULL, 27002140, NULL, 6),
  -- Feraligatr - Facade - TM109
  (160, 16000, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Feraligatr - Chilling Water - TM110
  (160, 16000, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Feraligatr - Trailblaze - TM115
  (160, 16000, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Feraligatr - Ancient Power - TM120
  (160, 16000, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 4),
  -- Feraligatr - Psychic Fangs - TM124
  (160, 16000, 706, 27, NULL, 2, NULL, NULL, 27002124, NULL, 5),
  -- Feraligatr - Muddy Water - TM140
  (160, 16000, 330, 27, NULL, 2, NULL, NULL, 27002140, NULL, 6),
  -- Feraligatr - Scale Shot - TM143
  (160, 16000, 799, 27, NULL, 2, NULL, NULL, 27002143, NULL, 7),
  -- Feraligatr - Razor Wind - TM145
  (160, 16000, 13, 27, NULL, 2, NULL, NULL, 27002145, NULL, 8),
  -- Feraligatr - Scald - TM148
  (160, 16000, 503, 27, NULL, 2, NULL, NULL, 27002148, NULL, 9),
  -- Feraligatr - Icicle Spear - TM149
  (160, 16000, 333, 27, NULL, 2, NULL, NULL, 27002149, NULL, 10),
  -- Feraligatr - Hydro Cannon - TM159
  (160, 16000, 308, 27, NULL, 2, NULL, NULL, 27002159, NULL, 11),
  -- Spinarak - Facade - TM109
  (167, 16700, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Spinarak - Acid Spray - TM112
  (167, 16700, 491, 27, NULL, 2, NULL, NULL, 27002112, NULL, 2),
  -- Spinarak - Trailblaze - TM115
  (167, 16700, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Ariados - Facade - TM109
  (168, 16800, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Ariados - Acid Spray - TM112
  (168, 16800, 491, 27, NULL, 2, NULL, NULL, 27002112, NULL, 2),
  -- Ariados - Trailblaze - TM115
  (168, 16800, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Ariados - False Swipe - TM122
  (168, 16800, 206, 27, NULL, 2, NULL, NULL, 27002122, NULL, 4),
  -- Ariados - First Impression - TM142
  (168, 16800, 660, 27, NULL, 2, NULL, NULL, 27002142, NULL, 5),
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
  (169, 16900, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 43),
  -- Crobat - Acid Spray - TM112
  (169, 16900, 491, 27, NULL, 2, NULL, NULL, 27002112, NULL, 44),
  -- Crobat - Ominous Wind - TM119
  (169, 16900, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 45),
  -- Crobat - Poison Fang - TM123
  (169, 16900, 305, 27, NULL, 2, NULL, NULL, 27002123, NULL, 46),
  -- Crobat - Psychic Fangs - TM124
  (169, 16900, 706, 27, NULL, 2, NULL, NULL, 27002124, NULL, 47),
  -- Crobat - Double Hit - TM132
  (169, 16900, 458, 27, NULL, 2, NULL, NULL, 27002132, NULL, 48),
  -- Crobat - Dual Wingbeat - TM134
  (169, 16900, 814, 27, NULL, 2, NULL, NULL, 27002134, NULL, 49),
  -- Crobat - Swagger - TM139
  (169, 16900, 207, 27, NULL, 2, NULL, NULL, 27002139, NULL, 50),
  -- Crobat - Razor Wind - TM145
  (169, 16900, 13, 27, NULL, 2, NULL, NULL, 27002145, NULL, 51),
  -- Crobat - Sky Attack - TM153
  (169, 16900, 143, 27, NULL, 2, NULL, NULL, 27002153, NULL, 52),
  -- Pichu - Facade - TM109
  (172, 17200, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Pichu - Trailblaze - TM115
  (172, 17200, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 2),
  -- Pichu - Fake Out - TM141
  (172, 17200, 252, 27, NULL, 2, NULL, NULL, 27002141, NULL, 3),
  -- Cleffa - Facade - TM109
  (173, 17300, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Cleffa - Chilling Water - TM110
  (173, 17300, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Cleffa - Sing - TM111
  (173, 17300, 47, 27, NULL, 2, NULL, NULL, 27002111, NULL, 3),
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
  (174, 17400, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 42),
  -- Igglybuff - Sing - TM111
  (174, 17400, 47, 27, NULL, 2, NULL, NULL, 27002111, NULL, 43),
  -- Igglybuff - Trailblaze - TM115
  (174, 17400, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 44),
  -- Igglybuff - Mimic - TM125
  (174, 17400, 102, 27, NULL, 2, NULL, NULL, 27002125, NULL, 45),
  -- Mareep - Facade - TM109
  (179, 17900, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Mareep - Trailblaze - TM115
  (179, 17900, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 2),
  -- Mareep - Charge Beam - TM130
  (179, 17900, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 3),
  -- Flaaffy - Facade - TM109
  (180, 18000, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Flaaffy - Trailblaze - TM115
  (180, 18000, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 2),
  -- Flaaffy - Charge Beam - TM130
  (180, 18000, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 3),
  -- Ampharos - Comet Punch - TM108
  (181, 18100, 4, 27, NULL, 2, NULL, NULL, 27002108, NULL, 1),
  -- Ampharos - Facade - TM109
  (181, 18100, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 2),
  -- Ampharos - Trailblaze - TM115
  (181, 18100, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Ampharos - Charge Beam - TM130
  (181, 18100, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 4),
  -- Ampharos - Dual Chop - TM135
  (181, 18100, 530, 27, NULL, 2, NULL, NULL, 27002135, NULL, 5),
  -- Ampharos - Meteor Beam - TM156
  (181, 18100, 800, 27, NULL, 2, NULL, NULL, 27002156, NULL, 6),
  -- Espeon - Facade - TM109
  (196, 19600, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Espeon - Trailblaze - TM115
  (196, 19600, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 2),
  -- Espeon - Psychic Fangs - TM124
  (196, 19600, 706, 27, NULL, 2, NULL, NULL, 27002124, NULL, 3),
  -- Espeon - Mimic - TM125
  (196, 19600, 102, 27, NULL, 2, NULL, NULL, 27002125, NULL, 4),
  -- Espeon - Dream Eater - TM127
  (196, 19600, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 5),
  -- Espeon - Skull Bash - TM146
  (196, 19600, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 6),
  -- Umbreon - Facade - TM109
  (197, 19700, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Umbreon - Trailblaze - TM115
  (197, 19700, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 2),
  -- Umbreon - Ominous Wind - TM119
  (197, 19700, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 3),
  -- Umbreon - Torment - TM121
  (197, 19700, 259, 27, NULL, 2, NULL, NULL, 27002121, NULL, 4),
  -- Umbreon - Mimic - TM125
  (197, 19700, 102, 27, NULL, 2, NULL, NULL, 27002125, NULL, 5),
  -- Umbreon - Dream Eater - TM127
  (197, 19700, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 6),
  -- Umbreon - Swagger - TM139
  (197, 19700, 207, 27, NULL, 2, NULL, NULL, 27002139, NULL, 7),
  -- Umbreon - Razor Wind - TM145
  (197, 19700, 13, 27, NULL, 2, NULL, NULL, 27002145, NULL, 8),
  -- Umbreon - Skull Bash - TM146
  (197, 19700, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 9),
  -- Slowking - Facade - TM109
  (199, 19900, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Slowking - Chilling Water - TM110
  (199, 19900, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Slowking - Ancient Power - TM120
  (199, 19900, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 3),
  -- Slowking - Dream Eater - TM127
  (199, 19900, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 4),
  -- Slowking - Drain Punch - TM131
  (199, 19900, 409, 27, NULL, 2, NULL, NULL, 27002131, NULL, 5),
  -- Slowking - Swagger - TM139
  (199, 19900, 207, 27, NULL, 2, NULL, NULL, 27002139, NULL, 6),
  -- Slowking - Muddy Water - TM140
  (199, 19900, 330, 27, NULL, 2, NULL, NULL, 27002140, NULL, 7),
  -- Slowking - Skull Bash - TM146
  (199, 19900, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 8),
  -- Slowking - Tri Attack - TM147
  (199, 19900, 161, 27, NULL, 2, NULL, NULL, 27002147, NULL, 9),
  -- Slowking - Scald - TM148
  (199, 19900, 503, 27, NULL, 2, NULL, NULL, 27002148, NULL, 10),
  -- Galarian Slowking - Facade - TM109
  (199, 19901, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Galarian Slowking - Chilling Water - TM110
  (199, 19901, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Galarian Slowking - Acid Spray - TM112
  (199, 19901, 491, 27, NULL, 2, NULL, NULL, 27002112, NULL, 3),
  -- Galarian Slowking - Low Sweep - TM113
  (199, 19901, 490, 27, NULL, 2, NULL, NULL, 27002113, NULL, 4),
  -- Galarian Slowking - Ominous Wind - TM119
  (199, 19901, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 5),
  -- Galarian Slowking - Ancient Power - TM120
  (199, 19901, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 6),
  -- Galarian Slowking - Dream Eater - TM127
  (199, 19901, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 7),
  -- Galarian Slowking - Drain Punch - TM131
  (199, 19901, 409, 27, NULL, 2, NULL, NULL, 27002131, NULL, 8),
  -- Galarian Slowking - Swagger - TM139
  (199, 19901, 207, 27, NULL, 2, NULL, NULL, 27002139, NULL, 9),
  -- Galarian Slowking - Muddy Water - TM140
  (199, 19901, 330, 27, NULL, 2, NULL, NULL, 27002140, NULL, 10),
  -- Galarian Slowking - Skull Bash - TM146
  (199, 19901, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 11),
  -- Galarian Slowking - Tri Attack - TM147
  (199, 19901, 161, 27, NULL, 2, NULL, NULL, 27002147, NULL, 12);
