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
-- Mega Dimension learnset delta rows for species 301-350.
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
  -- Sableye - Facade - TM109
  (302, 30200, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Sableye - Low Sweep - TM113
  (302, 30200, 490, 27, NULL, 2, NULL, NULL, 27002113, NULL, 2),
  -- Sableye - Shadow Punch - TM118
  (302, 30200, 325, 27, NULL, 2, NULL, NULL, 27002118, NULL, 3),
  -- Sableye - Ominous Wind - TM119
  (302, 30200, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 4),
  -- Sableye - Torment - TM121
  (302, 30200, 259, 27, NULL, 2, NULL, NULL, 27002121, NULL, 5),
  -- Sableye - Drain Punch - TM131
  (302, 30200, 409, 27, NULL, 2, NULL, NULL, 27002131, NULL, 6),
  -- Sableye - Swagger - TM139
  (302, 30200, 207, 27, NULL, 2, NULL, NULL, 27002139, NULL, 7),
  -- Sableye - Fake Out - TM141
  (302, 30200, 252, 27, NULL, 2, NULL, NULL, 27002141, NULL, 8),
  -- Mawile - Facade - TM109
  (303, 30300, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Mawile - Ancient Power - TM120
  (303, 30300, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 2),
  -- Mawile - False Swipe - TM122
  (303, 30300, 206, 27, NULL, 2, NULL, NULL, 27002122, NULL, 3),
  -- Mawile - Poison Fang - TM123
  (303, 30300, 305, 27, NULL, 2, NULL, NULL, 27002123, NULL, 4),
  -- Mawile - Psychic Fangs - TM124
  (303, 30300, 706, 27, NULL, 2, NULL, NULL, 27002124, NULL, 5),
  -- Mawile - Charge Beam - TM130
  (303, 30300, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 6),
  -- Mawile - Swagger - TM139
  (303, 30300, 207, 27, NULL, 2, NULL, NULL, 27002139, NULL, 7),
  -- Mawile - Steel Beam - TM157
  (303, 30300, 796, 27, NULL, 2, NULL, NULL, 27002157, NULL, 8),
  -- Aron - Facade - TM109
  (304, 30400, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Aron - Steel Beam - TM157
  (304, 30400, 796, 27, NULL, 2, NULL, NULL, 27002157, NULL, 2),
  -- Lairon - Facade - TM109
  (305, 30500, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Lairon - Steel Beam - TM157
  (305, 30500, 796, 27, NULL, 2, NULL, NULL, 27002157, NULL, 2),
  -- Aggron - Facade - TM109
  (306, 30600, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Aggron - Ancient Power - TM120
  (306, 30600, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 2),
  -- Aggron - Magnet Bomb - TM126
  (306, 30600, 443, 27, NULL, 2, NULL, NULL, 27002126, NULL, 3),
  -- Aggron - Scorching Sands - TM136
  (306, 30600, 815, 27, NULL, 2, NULL, NULL, 27002136, NULL, 4),
  -- Aggron - Swagger - TM139
  (306, 30600, 207, 27, NULL, 2, NULL, NULL, 27002139, NULL, 5),
  -- Aggron - Meteor Beam - TM156
  (306, 30600, 800, 27, NULL, 2, NULL, NULL, 27002156, NULL, 6),
  -- Aggron - Steel Beam - TM157
  (306, 30600, 796, 27, NULL, 2, NULL, NULL, 27002157, NULL, 7),
  -- Meditite - Facade - TM109
  (307, 30700, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Meditite - Low Sweep - TM113
  (307, 30700, 490, 27, NULL, 2, NULL, NULL, 27002113, NULL, 2),
  -- Meditite - Trailblaze - TM115
  (307, 30700, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Meditite - Drain Punch - TM131
  (307, 30700, 409, 27, NULL, 2, NULL, NULL, 27002131, NULL, 4),
  -- Meditite - Fake Out - TM141
  (307, 30700, 252, 27, NULL, 2, NULL, NULL, 27002141, NULL, 5),
  -- Medicham - Comet Punch - TM108
  (308, 30800, 4, 27, NULL, 2, NULL, NULL, 27002108, NULL, 1),
  -- Medicham - Facade - TM109
  (308, 30800, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 2),
  -- Medicham - Low Sweep - TM113
  (308, 30800, 490, 27, NULL, 2, NULL, NULL, 27002113, NULL, 3),
  -- Medicham - Trailblaze - TM115
  (308, 30800, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 4),
  -- Medicham - Drain Punch - TM131
  (308, 30800, 409, 27, NULL, 2, NULL, NULL, 27002131, NULL, 5),
  -- Medicham - Blaze Kick - TM133
  (308, 30800, 299, 27, NULL, 2, NULL, NULL, 27002133, NULL, 6),
  -- Medicham - Fake Out - TM141
  (308, 30800, 252, 27, NULL, 2, NULL, NULL, 27002141, NULL, 7),
  -- Medicham - Vacuum Wave - TM150
  (308, 30800, 410, 27, NULL, 2, NULL, NULL, 27002150, NULL, 8),
  -- Electrike - Facade - TM109
  (309, 30900, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Electrike - Psychic Fangs - TM124
  (309, 30900, 706, 27, NULL, 2, NULL, NULL, 27002124, NULL, 2),
  -- Manectric - Facade - TM109
  (310, 31000, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Manectric - Flame Charge - TM114
  (310, 31000, 488, 27, NULL, 2, NULL, NULL, 27002114, NULL, 2),
  -- Manectric - Trailblaze - TM115
  (310, 31000, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Manectric - Psychic Fangs - TM124
  (310, 31000, 706, 27, NULL, 2, NULL, NULL, 27002124, NULL, 4),
  -- Manectric - Charge Beam - TM130
  (310, 31000, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 5),
  -- Manectric - Razor Wind - TM145
  (310, 31000, 13, 27, NULL, 2, NULL, NULL, 27002145, NULL, 6),
  -- Roselia - Facade - TM109
  (315, 31500, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Roselia - Seed Bomb - TM128
  (315, 31500, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 2),
  -- Roselia - Petal Dance - TM151
  (315, 31500, 80, 27, NULL, 2, NULL, NULL, 27002151, NULL, 3),
  -- Gulpin - Tackle - Level 1
  (316, 31600, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gulpin - Smokescreen - Level 1
  (316, 31600, 108, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gulpin - Amnesia - Level 12
  (316, 31600, 133, 27, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Gulpin - Take Down - Level 14
  (316, 31600, 36, 27, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Gulpin - Acid Armor - Level 15
  (316, 31600, 151, 27, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Gulpin - Poison Jab - Level 17
  (316, 31600, 398, 27, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Gulpin - Knock Off - Level 20
  (316, 31600, 282, 27, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Gulpin - Rollout - Level 22
  (316, 31600, 205, 27, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Gulpin - Body Slam - Level 28
  (316, 31600, 34, 27, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Gulpin - Toxic - Level 35
  (316, 31600, 92, 27, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Gulpin - Sludge Bomb - Level 40
  (316, 31600, 188, 27, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Gulpin - Gunk Shot - Level 49
  (316, 31600, 441, 27, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Gulpin - Sludge Wave - Level 55
  (316, 31600, 482, 27, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Gulpin - Explosion - Level 60
  (316, 31600, 153, 27, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Gulpin - Toxic - TM007
  (316, 31600, 92, 27, NULL, 2, NULL, NULL, 26002007, NULL, 15),
  -- Gulpin - Thunder Wave - TM008
  (316, 31600, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 16),
  -- Gulpin - Ice Beam - TM013
  (316, 31600, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 17),
  -- Gulpin - Protect - TM017
  (316, 31600, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Gulpin - Thunder Punch - TM023
  (316, 31600, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 19),
  -- Gulpin - Ice Punch - TM024
  (316, 31600, 8, 27, NULL, 2, NULL, NULL, 26002024, NULL, 20),
  -- Gulpin - Fire Punch - TM029
  (316, 31600, 7, 27, NULL, 2, NULL, NULL, 26002029, NULL, 21),
  -- Gulpin - Swords Dance - TM030
  (316, 31600, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 22),
  -- Gulpin - Body Slam - TM033
  (316, 31600, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 23),
  -- Gulpin - Endure - TM035
  (316, 31600, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 24),
  -- Gulpin - Bullet Seed - TM040
  (316, 31600, 331, 27, NULL, 2, NULL, NULL, 26002040, NULL, 25),
  -- Gulpin - Water Pulse - TM041
  (316, 31600, 352, 27, NULL, 2, NULL, NULL, 26002041, NULL, 26),
  -- Gulpin - Giga Drain - TM042
  (316, 31600, 202, 27, NULL, 2, NULL, NULL, 26002042, NULL, 27),
  -- Gulpin - Knock Off - TM045
  (316, 31600, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 28),
  -- Gulpin - Mud Shot - TM046
  (316, 31600, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 29),
  -- Gulpin - Self-Destruct - TM048
  (316, 31600, 120, 27, NULL, 2, NULL, NULL, 26002048, NULL, 30),
  -- Gulpin - Sludge Bomb - TM053
  (316, 31600, 188, 27, NULL, 2, NULL, NULL, 26002053, NULL, 31),
  -- Gulpin - Solar Beam - TM064
  (316, 31600, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 32),
  -- Gulpin - Shadow Ball - TM074
  (316, 31600, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 33),
  -- Gulpin - Poison Jab - TM077
  (316, 31600, 398, 27, NULL, 2, NULL, NULL, 26002077, NULL, 34),
  -- Gulpin - Substitute - TM085
  (316, 31600, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 35),
  -- Gulpin - Toxic Spikes - TM089
  (316, 31600, 390, 27, NULL, 2, NULL, NULL, 26002089, NULL, 36),
  -- Gulpin - Curse - TM091
  (316, 31600, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 37),
  -- Gulpin - Gunk Shot - TM100
  (316, 31600, 441, 27, NULL, 2, NULL, NULL, 26002100, NULL, 38),
  -- Gulpin - Facade - TM109
  (316, 31600, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 39),
  -- Gulpin - Sing - TM111
  (316, 31600, 47, 27, NULL, 2, NULL, NULL, 27002111, NULL, 40),
  -- Gulpin - Acid Spray - TM112
  (316, 31600, 491, 27, NULL, 2, NULL, NULL, 27002112, NULL, 41),
  -- Gulpin - Dream Eater - TM127
  (316, 31600, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 42),
  -- Gulpin - Seed Bomb - TM128
  (316, 31600, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 43),
  -- Swalot - Tackle - Level 1
  (317, 31700, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Swalot - Smokescreen - Level 1
  (317, 31700, 108, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Swalot - Amnesia - Level 12
  (317, 31700, 133, 27, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Swalot - Take Down - Level 14
  (317, 31700, 36, 27, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Swalot - Acid Armor - Level 15
  (317, 31700, 151, 27, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Swalot - Poison Jab - Level 17
  (317, 31700, 398, 27, NULL, 1, 17, NULL, NULL, NULL, 6),
  -- Swalot - Knock Off - Level 20
  (317, 31700, 282, 27, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Swalot - Rollout - Level 22
  (317, 31700, 205, 27, NULL, 1, 22, NULL, NULL, NULL, 8),
  -- Swalot - Body Slam - Level 28
  (317, 31700, 34, 27, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Swalot - Toxic - Level 35
  (317, 31700, 92, 27, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Swalot - Sludge Bomb - Level 40
  (317, 31700, 188, 27, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Swalot - Gunk Shot - Level 49
  (317, 31700, 441, 27, NULL, 1, 49, NULL, NULL, NULL, 12),
  -- Swalot - Sludge Wave - Level 55
  (317, 31700, 482, 27, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Swalot - Explosion - Level 60
  (317, 31700, 153, 27, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Swalot - Toxic - TM007
  (317, 31700, 92, 27, NULL, 2, NULL, NULL, 26002007, NULL, 15),
  -- Swalot - Thunder Wave - TM008
  (317, 31700, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 16),
  -- Swalot - Brick Break - TM010
  (317, 31700, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 17),
  -- Swalot - Ice Beam - TM013
  (317, 31700, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 18),
  -- Swalot - Protect - TM017
  (317, 31700, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Swalot - Thunder Punch - TM023
  (317, 31700, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 20),
  -- Swalot - Ice Punch - TM024
  (317, 31700, 8, 27, NULL, 2, NULL, NULL, 26002024, NULL, 21),
  -- Swalot - Fire Punch - TM029
  (317, 31700, 7, 27, NULL, 2, NULL, NULL, 26002029, NULL, 22),
  -- Swalot - Swords Dance - TM030
  (317, 31700, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 23),
  -- Swalot - Body Slam - TM033
  (317, 31700, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 24),
  -- Swalot - Endure - TM035
  (317, 31700, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Swalot - Bullet Seed - TM040
  (317, 31700, 331, 27, NULL, 2, NULL, NULL, 26002040, NULL, 26),
  -- Swalot - Water Pulse - TM041
  (317, 31700, 352, 27, NULL, 2, NULL, NULL, 26002041, NULL, 27),
  -- Swalot - Giga Drain - TM042
  (317, 31700, 202, 27, NULL, 2, NULL, NULL, 26002042, NULL, 28),
  -- Swalot - Hyper Beam - TM044
  (317, 31700, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 29),
  -- Swalot - Knock Off - TM045
  (317, 31700, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 30),
  -- Swalot - Mud Shot - TM046
  (317, 31700, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 31),
  -- Swalot - Self-Destruct - TM048
  (317, 31700, 120, 27, NULL, 2, NULL, NULL, 26002048, NULL, 32),
  -- Swalot - Sludge Bomb - TM053
  (317, 31700, 188, 27, NULL, 2, NULL, NULL, 26002053, NULL, 33),
  -- Swalot - Giga Impact - TM055
  (317, 31700, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 34),
  -- Swalot - Double-Edge - TM056
  (317, 31700, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 35),
  -- Swalot - Zen Headbutt - TM059
  (317, 31700, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 36),
  -- Swalot - Solar Beam - TM064
  (317, 31700, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 37),
  -- Swalot - Earthquake - TM069
  (317, 31700, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 38),
  -- Swalot - Shadow Ball - TM074
  (317, 31700, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 39),
  -- Swalot - Poison Jab - TM077
  (317, 31700, 398, 27, NULL, 2, NULL, NULL, 26002077, NULL, 40),
  -- Swalot - Bulldoze - TM078
  (317, 31700, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 41),
  -- Swalot - Substitute - TM085
  (317, 31700, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 42),
  -- Swalot - Toxic Spikes - TM089
  (317, 31700, 390, 27, NULL, 2, NULL, NULL, 26002089, NULL, 43),
  -- Swalot - Curse - TM091
  (317, 31700, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 44),
  -- Swalot - Metronome - TM099
  (317, 31700, 118, 27, NULL, 2, NULL, NULL, 26002099, NULL, 45),
  -- Swalot - Gunk Shot - TM100
  (317, 31700, 441, 27, NULL, 2, NULL, NULL, 26002100, NULL, 46),
  -- Swalot - Facade - TM109
  (317, 31700, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 47),
  -- Swalot - Sing - TM111
  (317, 31700, 47, 27, NULL, 2, NULL, NULL, 27002111, NULL, 48),
  -- Swalot - Acid Spray - TM112
  (317, 31700, 491, 27, NULL, 2, NULL, NULL, 27002112, NULL, 49),
  -- Swalot - Dream Eater - TM127
  (317, 31700, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 50),
  -- Swalot - Seed Bomb - TM128
  (317, 31700, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 51),
  -- Carvanha - Facade - TM109
  (318, 31800, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Carvanha - Ancient Power - TM120
  (318, 31800, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 2),
  -- Carvanha - Poison Fang - TM123
  (318, 31800, 305, 27, NULL, 2, NULL, NULL, 27002123, NULL, 3),
  -- Carvanha - Psychic Fangs - TM124
  (318, 31800, 706, 27, NULL, 2, NULL, NULL, 27002124, NULL, 4),
  -- Carvanha - Swagger - TM139
  (318, 31800, 207, 27, NULL, 2, NULL, NULL, 27002139, NULL, 5),
  -- Carvanha - Scale Shot - TM143
  (318, 31800, 799, 27, NULL, 2, NULL, NULL, 27002143, NULL, 6),
  -- Carvanha - Scald - TM148
  (318, 31800, 503, 27, NULL, 2, NULL, NULL, 27002148, NULL, 7),
  -- Sharpedo - Facade - TM109
  (319, 31900, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Sharpedo - Ancient Power - TM120
  (319, 31900, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 2),
  -- Sharpedo - Poison Fang - TM123
  (319, 31900, 305, 27, NULL, 2, NULL, NULL, 27002123, NULL, 3),
  -- Sharpedo - Psychic Fangs - TM124
  (319, 31900, 706, 27, NULL, 2, NULL, NULL, 27002124, NULL, 4),
  -- Sharpedo - Swagger - TM139
  (319, 31900, 207, 27, NULL, 2, NULL, NULL, 27002139, NULL, 5),
  -- Sharpedo - Scale Shot - TM143
  (319, 31900, 799, 27, NULL, 2, NULL, NULL, 27002143, NULL, 6),
  -- Sharpedo - Skull Bash - TM146
  (319, 31900, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 7),
  -- Sharpedo - Scald - TM148
  (319, 31900, 503, 27, NULL, 2, NULL, NULL, 27002148, NULL, 8),
  -- Numel - Facade - TM109
  (322, 32200, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Numel - Flame Charge - TM114
  (322, 32200, 488, 27, NULL, 2, NULL, NULL, 27002114, NULL, 2),
  -- Numel - Trailblaze - TM115
  (322, 32200, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Numel - Ancient Power - TM120
  (322, 32200, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 4),
  -- Numel - Scorching Sands - TM136
  (322, 32200, 815, 27, NULL, 2, NULL, NULL, 27002136, NULL, 5),
  -- Camerupt - Facade - TM109
  (323, 32300, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Camerupt - Flame Charge - TM114
  (323, 32300, 488, 27, NULL, 2, NULL, NULL, 27002114, NULL, 2),
  -- Camerupt - Trailblaze - TM115
  (323, 32300, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Camerupt - Ancient Power - TM120
  (323, 32300, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 4),
  -- Camerupt - Scorching Sands - TM136
  (323, 32300, 815, 27, NULL, 2, NULL, NULL, 27002136, NULL, 5),
  -- Camerupt - Fissure - TM154
  (323, 32300, 90, 27, NULL, 2, NULL, NULL, 27002154, NULL, 6),
  -- Spoink - Splash - Level 1
  (325, 32500, 150, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Spoink - Confusion - Level 7
  (325, 32500, 93, 27, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Spoink - Growl - Level 10
  (325, 32500, 45, 27, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Spoink - Psybeam - Level 14
  (325, 32500, 60, 27, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Spoink - Hypnosis - Level 18
  (325, 32500, 95, 27, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Spoink - Confuse Ray - Level 22
  (325, 32500, 109, 27, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Spoink - Whirlwind - Level 25
  (325, 32500, 18, 27, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Spoink - Power Gem - Level 29
  (325, 32500, 408, 27, NULL, 1, 29, NULL, NULL, NULL, 8),
  -- Spoink - Amnesia - Level 33
  (325, 32500, 133, 27, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Spoink - Psyshock - Level 38
  (325, 32500, 473, 27, NULL, 1, 38, NULL, NULL, NULL, 10),
  -- Spoink - Psychic - Level 44
  (325, 32500, 94, 27, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Spoink - Bounce - Level 50
  (325, 32500, 340, 27, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Spoink - Future Sight - Level 55
  (325, 32500, 248, 27, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Spoink - Psyshock - TM003
  (325, 32500, 473, 27, NULL, 2, NULL, NULL, 26002003, NULL, 14),
  -- Spoink - Calm Mind - TM006
  (325, 32500, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 15),
  -- Spoink - Thunder Wave - TM008
  (325, 32500, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 16),
  -- Spoink - Light Screen - TM016
  (325, 32500, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 17),
  -- Spoink - Protect - TM017
  (325, 32500, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Spoink - Power Gem - TM019
  (325, 32500, 408, 27, NULL, 2, NULL, NULL, 26002019, NULL, 19),
  -- Spoink - Swift - TM027
  (325, 32500, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 20),
  -- Spoink - Reflect - TM031
  (325, 32500, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 21),
  -- Spoink - Body Slam - TM033
  (325, 32500, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 22),
  -- Spoink - Endure - TM035
  (325, 32500, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Spoink - Mud Shot - TM046
  (325, 32500, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 24),
  -- Spoink - Icy Wind - TM049
  (325, 32500, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 25),
  -- Spoink - Zen Headbutt - TM059
  (325, 32500, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 26),
  -- Spoink - Future Sight - TM060
  (325, 32500, 248, 27, NULL, 2, NULL, NULL, 26002060, NULL, 27),
  -- Spoink - Psychic - TM063
  (325, 32500, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 28),
  -- Spoink - Shadow Ball - TM074
  (325, 32500, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 29),
  -- Spoink - Flash Cannon - TM084
  (325, 32500, 430, 27, NULL, 2, NULL, NULL, 26002084, NULL, 30),
  -- Spoink - Substitute - TM085
  (325, 32500, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 31),
  -- Spoink - Dazzling Gleam - TM092
  (325, 32500, 605, 27, NULL, 2, NULL, NULL, 26002092, NULL, 32),
  -- Spoink - Whirlwind - TM094
  (325, 32500, 18, 27, NULL, 2, NULL, NULL, 26002094, NULL, 33),
  -- Spoink - Taunt - TM095
  (325, 32500, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 34),
  -- Spoink - Facade - TM109
  (325, 32500, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 35),
  -- Spoink - Chilling Water - TM110
  (325, 32500, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 36),
  -- Spoink - Trailblaze - TM115
  (325, 32500, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 37),
  -- Spoink - Pay Day - TM116
  (325, 32500, 6, 27, NULL, 2, NULL, NULL, 27002116, NULL, 38),
  -- Spoink - Shadow Punch - TM118
  (325, 32500, 325, 27, NULL, 2, NULL, NULL, 27002118, NULL, 39),
  -- Spoink - Dream Eater - TM127
  (325, 32500, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 40),
  -- Spoink - Charge Beam - TM130
  (325, 32500, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 41),
  -- Grumpig - Splash - Level 1
  (326, 32600, 150, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Grumpig - Confusion - Level 7
  (326, 32600, 93, 27, NULL, 1, 7, NULL, NULL, NULL, 2),
  -- Grumpig - Growl - Level 10
  (326, 32600, 45, 27, NULL, 1, 10, NULL, NULL, NULL, 3),
  -- Grumpig - Psybeam - Level 14
  (326, 32600, 60, 27, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Grumpig - Hypnosis - Level 18
  (326, 32600, 95, 27, NULL, 1, 18, NULL, NULL, NULL, 5),
  -- Grumpig - Confuse Ray - Level 22
  (326, 32600, 109, 27, NULL, 1, 22, NULL, NULL, NULL, 6),
  -- Grumpig - Whirlwind - Level 25
  (326, 32600, 18, 27, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Grumpig - Snarl - Level 27
  (326, 32600, 555, 27, NULL, 1, 27, NULL, NULL, NULL, 8),
  -- Grumpig - Power Gem - Level 29
  (326, 32600, 408, 27, NULL, 1, 29, NULL, NULL, NULL, 9),
  -- Grumpig - Amnesia - Level 33
  (326, 32600, 133, 27, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Grumpig - Psyshock - Level 38
  (326, 32600, 473, 27, NULL, 1, 38, NULL, NULL, NULL, 11),
  -- Grumpig - Psychic - Level 44
  (326, 32600, 94, 27, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Grumpig - Bounce - Level 50
  (326, 32600, 340, 27, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Grumpig - Future Sight - Level 55
  (326, 32600, 248, 27, NULL, 1, 55, NULL, NULL, NULL, 14),
  -- Grumpig - Psyshock - TM003
  (326, 32600, 473, 27, NULL, 2, NULL, NULL, 26002003, NULL, 15),
  -- Grumpig - Calm Mind - TM006
  (326, 32600, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 16),
  -- Grumpig - Thunder Wave - TM008
  (326, 32600, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 17),
  -- Grumpig - Brick Break - TM010
  (326, 32600, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 18),
  -- Grumpig - Light Screen - TM016
  (326, 32600, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 19),
  -- Grumpig - Protect - TM017
  (326, 32600, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Grumpig - Power Gem - TM019
  (326, 32600, 408, 27, NULL, 2, NULL, NULL, 26002019, NULL, 21),
  -- Grumpig - Thunder Punch - TM023
  (326, 32600, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 22),
  -- Grumpig - Ice Punch - TM024
  (326, 32600, 8, 27, NULL, 2, NULL, NULL, 26002024, NULL, 23),
  -- Grumpig - Energy Ball - TM026
  (326, 32600, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 24),
  -- Grumpig - Swift - TM027
  (326, 32600, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 25),
  -- Grumpig - Dig - TM028
  (326, 32600, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 26),
  -- Grumpig - Fire Punch - TM029
  (326, 32600, 7, 27, NULL, 2, NULL, NULL, 26002029, NULL, 27),
  -- Grumpig - Reflect - TM031
  (326, 32600, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 28),
  -- Grumpig - Body Slam - TM033
  (326, 32600, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 29),
  -- Grumpig - Endure - TM035
  (326, 32600, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 30),
  -- Grumpig - Hyper Beam - TM044
  (326, 32600, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 31),
  -- Grumpig - Mud Shot - TM046
  (326, 32600, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 32),
  -- Grumpig - Icy Wind - TM049
  (326, 32600, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 33),
  -- Grumpig - Earth Power - TM052
  (326, 32600, 414, 27, NULL, 2, NULL, NULL, 26002052, NULL, 34),
  -- Grumpig - Giga Impact - TM055
  (326, 32600, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 35),
  -- Grumpig - Zen Headbutt - TM059
  (326, 32600, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 36),
  -- Grumpig - Future Sight - TM060
  (326, 32600, 248, 27, NULL, 2, NULL, NULL, 26002060, NULL, 37),
  -- Grumpig - Psychic - TM063
  (326, 32600, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 38),
  -- Grumpig - Hyper Voice - TM071
  (326, 32600, 304, 27, NULL, 2, NULL, NULL, 26002071, NULL, 39),
  -- Grumpig - Shadow Ball - TM074
  (326, 32600, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 40),
  -- Grumpig - Bulldoze - TM078
  (326, 32600, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 41),
  -- Grumpig - Nasty Plot - TM083
  (326, 32600, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 42),
  -- Grumpig - Flash Cannon - TM084
  (326, 32600, 430, 27, NULL, 2, NULL, NULL, 26002084, NULL, 43),
  -- Grumpig - Substitute - TM085
  (326, 32600, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 44),
  -- Grumpig - Dazzling Gleam - TM092
  (326, 32600, 605, 27, NULL, 2, NULL, NULL, 26002092, NULL, 45),
  -- Grumpig - Whirlwind - TM094
  (326, 32600, 18, 27, NULL, 2, NULL, NULL, 26002094, NULL, 46),
  -- Grumpig - Taunt - TM095
  (326, 32600, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 47),
  -- Grumpig - Heal Block - TM097
  (326, 32600, 377, 27, NULL, 2, NULL, NULL, 26002097, NULL, 48),
  -- Grumpig - Metronome - TM099
  (326, 32600, 118, 27, NULL, 2, NULL, NULL, 26002099, NULL, 49),
  -- Grumpig - Focus Blast - TM102
  (326, 32600, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 50),
  -- Grumpig - Facade - TM109
  (326, 32600, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 51),
  -- Grumpig - Chilling Water - TM110
  (326, 32600, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 52),
  -- Grumpig - Low Sweep - TM113
  (326, 32600, 490, 27, NULL, 2, NULL, NULL, 27002113, NULL, 53),
  -- Grumpig - Trailblaze - TM115
  (326, 32600, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 54),
  -- Grumpig - Pay Day - TM116
  (326, 32600, 6, 27, NULL, 2, NULL, NULL, 27002116, NULL, 55),
  -- Grumpig - Shadow Punch - TM118
  (326, 32600, 325, 27, NULL, 2, NULL, NULL, 27002118, NULL, 56),
  -- Grumpig - Ominous Wind - TM119
  (326, 32600, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 57),
  -- Grumpig - Dream Eater - TM127
  (326, 32600, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 58),
  -- Grumpig - Seed Bomb - TM128
  (326, 32600, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 59),
  -- Grumpig - Charge Beam - TM130
  (326, 32600, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 60),
  -- Grumpig - Drain Punch - TM131
  (326, 32600, 409, 27, NULL, 2, NULL, NULL, 27002131, NULL, 61),
  -- Swablu - Facade - TM109
  (333, 33300, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Swablu - Sing - TM111
  (333, 33300, 47, 27, NULL, 2, NULL, NULL, 27002111, NULL, 2),
  -- Swablu - Trailblaze - TM115
  (333, 33300, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Swablu - Dream Eater - TM127
  (333, 33300, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 4),
  -- Swablu - Dual Wingbeat - TM134
  (333, 33300, 814, 27, NULL, 2, NULL, NULL, 27002134, NULL, 5),
  -- Altaria - Facade - TM109
  (334, 33400, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Altaria - Sing - TM111
  (334, 33400, 47, 27, NULL, 2, NULL, NULL, 27002111, NULL, 2),
  -- Altaria - Trailblaze - TM115
  (334, 33400, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Altaria - Silver Wind - TM117
  (334, 33400, 318, 27, NULL, 2, NULL, NULL, 27002117, NULL, 4),
  -- Altaria - False Swipe - TM122
  (334, 33400, 206, 27, NULL, 2, NULL, NULL, 27002122, NULL, 5),
  -- Altaria - Dream Eater - TM127
  (334, 33400, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 6),
  -- Altaria - Dual Wingbeat - TM134
  (334, 33400, 814, 27, NULL, 2, NULL, NULL, 27002134, NULL, 7),
  -- Altaria - Petal Dance - TM151
  (334, 33400, 80, 27, NULL, 2, NULL, NULL, 27002151, NULL, 8),
  -- Altaria - Sky Attack - TM153
  (334, 33400, 143, 27, NULL, 2, NULL, NULL, 27002153, NULL, 9),
  -- Zangoose - Tackle - Level 1
  (335, 33500, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Zangoose - Leer - Level 1
  (335, 33500, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Zangoose - Quick Attack - Level 5
  (335, 33500, 98, 27, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Zangoose - Metal Claw - Level 12
  (335, 33500, 232, 27, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Zangoose - Slash - Level 19
  (335, 33500, 163, 27, NULL, 1, 19, NULL, NULL, NULL, 5),
  -- Zangoose - Night Slash - Level 24
  (335, 33500, 400, 27, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Zangoose - False Swipe - Level 29
  (335, 33500, 206, 27, NULL, 1, 29, NULL, NULL, NULL, 7),
  -- Zangoose - Dig - Level 33
  (335, 33500, 91, 27, NULL, 1, 33, NULL, NULL, NULL, 8),
  -- Zangoose - Detect - Level 36
  (335, 33500, 197, 27, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Zangoose - X-Scissor - Level 40
  (335, 33500, 404, 27, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Zangoose - Taunt - Level 43
  (335, 33500, 269, 27, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Zangoose - Swords Dance - Level 47
  (335, 33500, 14, 27, NULL, 1, 47, NULL, NULL, NULL, 12),
  -- Zangoose - Close Combat - Level 50
  (335, 33500, 370, 27, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Zangoose - Headbutt - TM001
  (335, 33500, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 14),
  -- Zangoose - Roar - TM005
  (335, 33500, 46, 27, NULL, 2, NULL, NULL, 26002005, NULL, 15),
  -- Zangoose - Thunder Wave - TM008
  (335, 33500, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 16),
  -- Zangoose - Brick Break - TM010
  (335, 33500, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 17),
  -- Zangoose - Rock Slide - TM012
  (335, 33500, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 18),
  -- Zangoose - Ice Beam - TM013
  (335, 33500, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 19),
  -- Zangoose - Protect - TM017
  (335, 33500, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Zangoose - Aerial Ace - TM022
  (335, 33500, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 21),
  -- Zangoose - Thunder Punch - TM023
  (335, 33500, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 22),
  -- Zangoose - Ice Punch - TM024
  (335, 33500, 8, 27, NULL, 2, NULL, NULL, 26002024, NULL, 23),
  -- Zangoose - Swift - TM027
  (335, 33500, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 24),
  -- Zangoose - Dig - TM028
  (335, 33500, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 25),
  -- Zangoose - Fire Punch - TM029
  (335, 33500, 7, 27, NULL, 2, NULL, NULL, 26002029, NULL, 26),
  -- Zangoose - Swords Dance - TM030
  (335, 33500, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 27),
  -- Zangoose - Body Slam - TM033
  (335, 33500, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 28),
  -- Zangoose - Night Slash - TM034
  (335, 33500, 400, 27, NULL, 2, NULL, NULL, 26002034, NULL, 29),
  -- Zangoose - Endure - TM035
  (335, 33500, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 30),
  -- Zangoose - Rock Tomb - TM036
  (335, 33500, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 31),
  -- Zangoose - Fire Blast - TM038
  (335, 33500, 126, 27, NULL, 2, NULL, NULL, 26002038, NULL, 32),
  -- Zangoose - Hyper Beam - TM044
  (335, 33500, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 33),
  -- Zangoose - Knock Off - TM045
  (335, 33500, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 34),
  -- Zangoose - Agility - TM047
  (335, 33500, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 35),
  -- Zangoose - Icy Wind - TM049
  (335, 33500, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 36),
  -- Zangoose - Giga Impact - TM055
  (335, 33500, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 37),
  -- Zangoose - Double-Edge - TM056
  (335, 33500, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 38),
  -- Zangoose - Zen Headbutt - TM059
  (335, 33500, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 39),
  -- Zangoose - Shadow Claw - TM061
  (335, 33500, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 40),
  -- Zangoose - Flamethrower - TM062
  (335, 33500, 53, 27, NULL, 2, NULL, NULL, 26002062, NULL, 41),
  -- Zangoose - Solar Beam - TM064
  (335, 33500, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 42),
  -- Zangoose - Thunderbolt - TM067
  (335, 33500, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 43),
  -- Zangoose - Surf - TM073
  (335, 33500, 57, 27, NULL, 2, NULL, NULL, 26002073, NULL, 44),
  -- Zangoose - Shadow Ball - TM074
  (335, 33500, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 45),
  -- Zangoose - Poison Jab - TM077
  (335, 33500, 398, 27, NULL, 2, NULL, NULL, 26002077, NULL, 46),
  -- Zangoose - X-Scissor - TM081
  (335, 33500, 404, 27, NULL, 2, NULL, NULL, 26002081, NULL, 47),
  -- Zangoose - Substitute - TM085
  (335, 33500, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 48),
  -- Zangoose - Iron Tail - TM087
  (335, 33500, 231, 27, NULL, 2, NULL, NULL, 26002087, NULL, 49),
  -- Zangoose - Curse - TM091
  (335, 33500, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 50),
  -- Zangoose - Taunt - TM095
  (335, 33500, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 51),
  -- Zangoose - Gunk Shot - TM100
  (335, 33500, 441, 27, NULL, 2, NULL, NULL, 26002100, NULL, 52),
  -- Zangoose - Focus Blast - TM102
  (335, 33500, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 53),
  -- Zangoose - Work Up - TM103
  (335, 33500, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 54),
  -- Zangoose - Blizzard - TM105
  (335, 33500, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 55),
  -- Zangoose - Thunder - TM106
  (335, 33500, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 56),
  -- Zangoose - Close Combat - TM107
  (335, 33500, 370, 27, NULL, 2, NULL, NULL, 26002107, NULL, 57),
  -- Zangoose - Comet Punch - TM108
  (335, 33500, 4, 27, NULL, 2, NULL, NULL, 27002108, NULL, 58),
  -- Zangoose - Facade - TM109
  (335, 33500, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 59),
  -- Zangoose - Low Sweep - TM113
  (335, 33500, 490, 27, NULL, 2, NULL, NULL, 27002113, NULL, 60),
  -- Zangoose - False Swipe - TM122
  (335, 33500, 206, 27, NULL, 2, NULL, NULL, 27002122, NULL, 61),
  -- Zangoose - Seed Bomb - TM128
  (335, 33500, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 62),
  -- Zangoose - Double Hit - TM132
  (335, 33500, 458, 27, NULL, 2, NULL, NULL, 27002132, NULL, 63),
  -- Zangoose - Fake Out - TM141
  (335, 33500, 252, 27, NULL, 2, NULL, NULL, 27002141, NULL, 64),
  -- Zangoose - Razor Wind - TM145
  (335, 33500, 13, 27, NULL, 2, NULL, NULL, 27002145, NULL, 65),
  -- Zangoose - Skull Bash - TM146
  (335, 33500, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 66),
  -- Seviper - Leer - Level 1
  (336, 33600, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Seviper - Bite - Level 1
  (336, 33600, 44, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Seviper - Lick - Level 6
  (336, 33600, 122, 27, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Seviper - Screech - Level 14
  (336, 33600, 103, 27, NULL, 1, 14, NULL, NULL, NULL, 4),
  -- Seviper - Snarl - Level 17
  (336, 33600, 555, 27, NULL, 1, 17, NULL, NULL, NULL, 5),
  -- Seviper - Glare - Level 19
  (336, 33600, 137, 27, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Seviper - Poison Fang - Level 21
  (336, 33600, 305, 27, NULL, 1, 21, NULL, NULL, NULL, 7),
  -- Seviper - Breaking Swipe - Level 24
  (336, 33600, 784, 27, NULL, 1, 24, NULL, NULL, NULL, 8),
  -- Seviper - Night Slash - Level 28
  (336, 33600, 400, 27, NULL, 1, 28, NULL, NULL, NULL, 9),
  -- Seviper - Poison Jab - Level 31
  (336, 33600, 398, 27, NULL, 1, 31, NULL, NULL, NULL, 10),
  -- Seviper - Haze - Level 34
  (336, 33600, 114, 27, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Seviper - Crunch - Level 39
  (336, 33600, 242, 27, NULL, 1, 39, NULL, NULL, NULL, 12),
  -- Seviper - Sludge Bomb - Level 46
  (336, 33600, 188, 27, NULL, 1, 46, NULL, NULL, NULL, 13),
  -- Seviper - Gunk Shot - Level 52
  (336, 33600, 441, 27, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Seviper - Toxic - TM007
  (336, 33600, 92, 27, NULL, 2, NULL, NULL, 26002007, NULL, 15),
  -- Seviper - Brick Break - TM010
  (336, 33600, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 16),
  -- Seviper - Fire Fang - TM014
  (336, 33600, 424, 27, NULL, 2, NULL, NULL, 26002014, NULL, 17),
  -- Seviper - Ice Fang - TM015
  (336, 33600, 423, 27, NULL, 2, NULL, NULL, 26002015, NULL, 18),
  -- Seviper - Protect - TM017
  (336, 33600, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Seviper - Thunder Fang - TM021
  (336, 33600, 422, 27, NULL, 2, NULL, NULL, 26002021, NULL, 20),
  -- Seviper - Crunch - TM025
  (336, 33600, 242, 27, NULL, 2, NULL, NULL, 26002025, NULL, 21),
  -- Seviper - Dig - TM028
  (336, 33600, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 22),
  -- Seviper - Swords Dance - TM030
  (336, 33600, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 23),
  -- Seviper - Body Slam - TM033
  (336, 33600, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 24),
  -- Seviper - Night Slash - TM034
  (336, 33600, 400, 27, NULL, 2, NULL, NULL, 26002034, NULL, 25),
  -- Seviper - Endure - TM035
  (336, 33600, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 26),
  -- Seviper - Giga Drain - TM042
  (336, 33600, 202, 27, NULL, 2, NULL, NULL, 26002042, NULL, 27),
  -- Seviper - Hyper Beam - TM044
  (336, 33600, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 28),
  -- Seviper - Knock Off - TM045
  (336, 33600, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 29),
  -- Seviper - Sludge Bomb - TM053
  (336, 33600, 188, 27, NULL, 2, NULL, NULL, 26002053, NULL, 30),
  -- Seviper - Giga Impact - TM055
  (336, 33600, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 31),
  -- Seviper - Double-Edge - TM056
  (336, 33600, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 32),
  -- Seviper - Iron Head - TM058
  (336, 33600, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 33),
  -- Seviper - Zen Headbutt - TM059
  (336, 33600, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 34),
  -- Seviper - Flamethrower - TM062
  (336, 33600, 53, 27, NULL, 2, NULL, NULL, 26002062, NULL, 35),
  -- Seviper - Earthquake - TM069
  (336, 33600, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 36),
  -- Seviper - Dragon Pulse - TM075
  (336, 33600, 406, 27, NULL, 2, NULL, NULL, 26002075, NULL, 37),
  -- Seviper - Poison Jab - TM077
  (336, 33600, 398, 27, NULL, 2, NULL, NULL, 26002077, NULL, 38),
  -- Seviper - Bulldoze - TM078
  (336, 33600, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 39),
  -- Seviper - X-Scissor - TM081
  (336, 33600, 404, 27, NULL, 2, NULL, NULL, 26002081, NULL, 40),
  -- Seviper - Substitute - TM085
  (336, 33600, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 41),
  -- Seviper - Iron Tail - TM087
  (336, 33600, 231, 27, NULL, 2, NULL, NULL, 26002087, NULL, 42),
  -- Seviper - Dark Pulse - TM090
  (336, 33600, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 43),
  -- Seviper - Curse - TM091
  (336, 33600, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 44),
  -- Seviper - Taunt - TM095
  (336, 33600, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 45),
  -- Seviper - Gunk Shot - TM100
  (336, 33600, 441, 27, NULL, 2, NULL, NULL, 26002100, NULL, 46),
  -- Seviper - Facade - TM109
  (336, 33600, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 47),
  -- Seviper - Acid Spray - TM112
  (336, 33600, 491, 27, NULL, 2, NULL, NULL, 27002112, NULL, 48),
  -- Seviper - Trailblaze - TM115
  (336, 33600, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 49),
  -- Seviper - Poison Fang - TM123
  (336, 33600, 305, 27, NULL, 2, NULL, NULL, 27002123, NULL, 50),
  -- Seviper - Psychic Fangs - TM124
  (336, 33600, 706, 27, NULL, 2, NULL, NULL, 27002124, NULL, 51),
  -- Seviper - Seed Bomb - TM128
  (336, 33600, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 52),
  -- Seviper - Swagger - TM139
  (336, 33600, 207, 27, NULL, 2, NULL, NULL, 27002139, NULL, 53),
  -- Seviper - Scale Shot - TM143
  (336, 33600, 799, 27, NULL, 2, NULL, NULL, 27002143, NULL, 54),
  -- Feebas - Splash - Level 1
  (349, 34900, 150, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Feebas - Tackle - Level 15
  (349, 34900, 33, 27, NULL, 1, 15, NULL, NULL, NULL, 2),
  -- Feebas - Ice Beam - TM013
  (349, 34900, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 3),
  -- Feebas - Light Screen - TM016
  (349, 34900, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 4),
  -- Feebas - Protect - TM017
  (349, 34900, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 5),
  -- Feebas - Swift - TM027
  (349, 34900, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 6),
  -- Feebas - Endure - TM035
  (349, 34900, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 7),
  -- Feebas - Water Pulse - TM041
  (349, 34900, 352, 27, NULL, 2, NULL, NULL, 26002041, NULL, 8),
  -- Feebas - Mud Shot - TM046
  (349, 34900, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 9),
  -- Feebas - Icy Wind - TM049
  (349, 34900, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 10),
  -- Feebas - Double-Edge - TM056
  (349, 34900, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 11),
  -- Feebas - Whirlpool - TM070
  (349, 34900, 250, 27, NULL, 2, NULL, NULL, 26002070, NULL, 12),
  -- Feebas - Surf - TM073
  (349, 34900, 57, 27, NULL, 2, NULL, NULL, 26002073, NULL, 13),
  -- Feebas - Dragon Pulse - TM075
  (349, 34900, 406, 27, NULL, 2, NULL, NULL, 26002075, NULL, 14),
  -- Feebas - Substitute - TM085
  (349, 34900, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 15),
  -- Feebas - Iron Tail - TM087
  (349, 34900, 231, 27, NULL, 2, NULL, NULL, 26002087, NULL, 16),
  -- Feebas - Waterfall - TM098
  (349, 34900, 127, 27, NULL, 2, NULL, NULL, 26002098, NULL, 17),
  -- Feebas - Blizzard - TM105
  (349, 34900, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 18),
  -- Feebas - Facade - TM109
  (349, 34900, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 19),
  -- Feebas - Chilling Water - TM110
  (349, 34900, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 20),
  -- Feebas - Muddy Water - TM140
  (349, 34900, 330, 27, NULL, 2, NULL, NULL, 27002140, NULL, 21),
  -- Feebas - Scale Shot - TM143
  (349, 34900, 799, 27, NULL, 2, NULL, NULL, 27002143, NULL, 22),
  -- Feebas - Scald - TM148
  (349, 34900, 503, 27, NULL, 2, NULL, NULL, 27002148, NULL, 23),
  -- Milotic - Water Gun - Level 1
  (350, 35000, 55, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Milotic - Splash - Level 1
  (350, 35000, 150, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Milotic - Disarming Voice - Level 4
  (350, 35000, 574, 27, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Milotic - Twister - Level 8
  (350, 35000, 239, 27, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Milotic - Aqua Ring - Level 12
  (350, 35000, 392, 27, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Milotic - Whirlpool - Level 14
  (350, 35000, 250, 27, NULL, 1, 14, NULL, NULL, NULL, 6),
  -- Milotic - Tackle - Level 15
  (350, 35000, 33, 27, NULL, 1, 15, NULL, NULL, NULL, 7),
  -- Milotic - Breaking Swipe - Level 16
  (350, 35000, 784, 27, NULL, 1, 16, NULL, NULL, NULL, 8),
  -- Milotic - Draining Kiss - Level 20
  (350, 35000, 577, 27, NULL, 1, 20, NULL, NULL, NULL, 9),
  -- Milotic - Hypnosis - Level 24
  (350, 35000, 95, 27, NULL, 1, 24, NULL, NULL, NULL, 10),
  -- Milotic - Recover - Level 28
  (350, 35000, 105, 27, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Milotic - Safeguard - Level 36
  (350, 35000, 219, 27, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Milotic - Surf - Level 44
  (350, 35000, 57, 27, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Milotic - Hydro Pump - Level 52
  (350, 35000, 56, 27, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Milotic - Water Pulse - Evolution
  (350, 35000, 352, 27, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Milotic - Calm Mind - TM006
  (350, 35000, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 16),
  -- Milotic - Flip Turn - TM009
  (350, 35000, 812, 27, NULL, 2, NULL, NULL, 26002009, NULL, 17),
  -- Milotic - Ice Beam - TM013
  (350, 35000, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 18),
  -- Milotic - Light Screen - TM016
  (350, 35000, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 19),
  -- Milotic - Protect - TM017
  (350, 35000, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Milotic - Swift - TM027
  (350, 35000, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 21),
  -- Milotic - Body Slam - TM033
  (350, 35000, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 22),
  -- Milotic - Endure - TM035
  (350, 35000, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Milotic - Water Pulse - TM041
  (350, 35000, 352, 27, NULL, 2, NULL, NULL, 26002041, NULL, 24),
  -- Milotic - Hyper Beam - TM044
  (350, 35000, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 25),
  -- Milotic - Mud Shot - TM046
  (350, 35000, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 26),
  -- Milotic - Icy Wind - TM049
  (350, 35000, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 27),
  -- Milotic - Safeguard - TM051
  (350, 35000, 219, 27, NULL, 2, NULL, NULL, 26002051, NULL, 28),
  -- Milotic - Giga Impact - TM055
  (350, 35000, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 29),
  -- Milotic - Double-Edge - TM056
  (350, 35000, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 30),
  -- Milotic - Iron Head - TM058
  (350, 35000, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 31),
  -- Milotic - Whirlpool - TM070
  (350, 35000, 250, 27, NULL, 2, NULL, NULL, 26002070, NULL, 32),
  -- Milotic - Surf - TM073
  (350, 35000, 57, 27, NULL, 2, NULL, NULL, 26002073, NULL, 33),
  -- Milotic - Dragon Pulse - TM075
  (350, 35000, 406, 27, NULL, 2, NULL, NULL, 26002075, NULL, 34),
  -- Milotic - Liquidation - TM076
  (350, 35000, 710, 27, NULL, 2, NULL, NULL, 26002076, NULL, 35),
  -- Milotic - Bulldoze - TM078
  (350, 35000, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 36),
  -- Milotic - Substitute - TM085
  (350, 35000, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 37),
  -- Milotic - Iron Tail - TM087
  (350, 35000, 231, 27, NULL, 2, NULL, NULL, 26002087, NULL, 38),
  -- Milotic - Dazzling Gleam - TM092
  (350, 35000, 605, 27, NULL, 2, NULL, NULL, 26002092, NULL, 39),
  -- Milotic - Hydro Pump - TM096
  (350, 35000, 56, 27, NULL, 2, NULL, NULL, 26002096, NULL, 40),
  -- Milotic - Waterfall - TM098
  (350, 35000, 127, 27, NULL, 2, NULL, NULL, 26002098, NULL, 41),
  -- Milotic - Blizzard - TM105
  (350, 35000, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 42),
  -- Milotic - Facade - TM109
  (350, 35000, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 43),
  -- Milotic - Chilling Water - TM110
  (350, 35000, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 44),
  -- Milotic - Mimic - TM125
  (350, 35000, 102, 27, NULL, 2, NULL, NULL, 27002125, NULL, 45),
  -- Milotic - Muddy Water - TM140
  (350, 35000, 330, 27, NULL, 2, NULL, NULL, 27002140, NULL, 46),
  -- Milotic - Scale Shot - TM143
  (350, 35000, 799, 27, NULL, 2, NULL, NULL, 27002143, NULL, 47),
  -- Milotic - Triple Axel - TM144
  (350, 35000, 813, 27, NULL, 2, NULL, NULL, 27002144, NULL, 48),
  -- Milotic - Scald - TM148
  (350, 35000, 503, 27, NULL, 2, NULL, NULL, 27002148, NULL, 49);
