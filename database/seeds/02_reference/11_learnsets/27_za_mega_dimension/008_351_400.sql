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
-- Mega Dimension learnset delta rows for species 351-400.
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
  -- Kecleon - Tail Whip - Level 1
  (352, 35200, 39, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kecleon - Lick - Level 1
  (352, 35200, 122, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kecleon - Conversion - Level 1
  (352, 35200, 160, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kecleon - Substitute - Level 1
  (352, 35200, 164, 27, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Kecleon - Shadow Sneak - Level 7
  (352, 35200, 425, 27, NULL, 1, 7, NULL, NULL, NULL, 5),
  -- Kecleon - Shed Tail - Level 10
  (352, 35200, 880, 27, NULL, 1, 10, NULL, NULL, NULL, 6),
  -- Kecleon - Knock Off - Level 14
  (352, 35200, 282, 27, NULL, 1, 14, NULL, NULL, NULL, 7),
  -- Kecleon - Psybeam - Level 18
  (352, 35200, 60, 27, NULL, 1, 18, NULL, NULL, NULL, 8),
  -- Kecleon - Rock Slide - Level 21
  (352, 35200, 157, 27, NULL, 1, 21, NULL, NULL, NULL, 9),
  -- Kecleon - Slash - Level 25
  (352, 35200, 163, 27, NULL, 1, 25, NULL, NULL, NULL, 10),
  -- Kecleon - Stealth Rock - Level 28
  (352, 35200, 446, 27, NULL, 1, 28, NULL, NULL, NULL, 11),
  -- Kecleon - Shadow Claw - Level 33
  (352, 35200, 421, 27, NULL, 1, 33, NULL, NULL, NULL, 12),
  -- Kecleon - Screech - Level 38
  (352, 35200, 103, 27, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Kecleon - Conversion 2 - Level 42
  (352, 35200, 176, 27, NULL, 1, 42, NULL, NULL, NULL, 14),
  -- Kecleon - Power Whip - Level 54
  (352, 35200, 438, 27, NULL, 1, 54, NULL, NULL, NULL, 15),
  -- Kecleon - Thunder Wave - TM008
  (352, 35200, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 16),
  -- Kecleon - Brick Break - TM010
  (352, 35200, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 17),
  -- Kecleon - Rock Slide - TM012
  (352, 35200, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 18),
  -- Kecleon - Ice Beam - TM013
  (352, 35200, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 19),
  -- Kecleon - Protect - TM017
  (352, 35200, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Kecleon - Power-Up Punch - TM018
  (352, 35200, 612, 27, NULL, 2, NULL, NULL, 26002018, NULL, 21),
  -- Kecleon - Aerial Ace - TM022
  (352, 35200, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 22),
  -- Kecleon - Thunder Punch - TM023
  (352, 35200, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 23),
  -- Kecleon - Ice Punch - TM024
  (352, 35200, 8, 27, NULL, 2, NULL, NULL, 26002024, NULL, 24),
  -- Kecleon - Swift - TM027
  (352, 35200, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 25),
  -- Kecleon - Dig - TM028
  (352, 35200, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 26),
  -- Kecleon - Fire Punch - TM029
  (352, 35200, 7, 27, NULL, 2, NULL, NULL, 26002029, NULL, 27),
  -- Kecleon - Body Slam - TM033
  (352, 35200, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 28),
  -- Kecleon - Endure - TM035
  (352, 35200, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 29),
  -- Kecleon - Rock Tomb - TM036
  (352, 35200, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 30),
  -- Kecleon - Stealth Rock - TM037
  (352, 35200, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 31),
  -- Kecleon - Fire Blast - TM038
  (352, 35200, 126, 27, NULL, 2, NULL, NULL, 26002038, NULL, 32),
  -- Kecleon - Knock Off - TM045
  (352, 35200, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 33),
  -- Kecleon - Icy Wind - TM049
  (352, 35200, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 34),
  -- Kecleon - Giga Impact - TM055
  (352, 35200, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 35),
  -- Kecleon - Shadow Claw - TM061
  (352, 35200, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 36),
  -- Kecleon - Flamethrower - TM062
  (352, 35200, 53, 27, NULL, 2, NULL, NULL, 26002062, NULL, 37),
  -- Kecleon - Solar Beam - TM064
  (352, 35200, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 38),
  -- Kecleon - Thunderbolt - TM067
  (352, 35200, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 39),
  -- Kecleon - Shadow Ball - TM074
  (352, 35200, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 40),
  -- Kecleon - Nasty Plot - TM083
  (352, 35200, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 41),
  -- Kecleon - Substitute - TM085
  (352, 35200, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 42),
  -- Kecleon - Iron Tail - TM087
  (352, 35200, 231, 27, NULL, 2, NULL, NULL, 26002087, NULL, 43),
  -- Kecleon - Metronome - TM099
  (352, 35200, 118, 27, NULL, 2, NULL, NULL, 26002099, NULL, 44),
  -- Kecleon - Work Up - TM103
  (352, 35200, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 45),
  -- Kecleon - Blizzard - TM105
  (352, 35200, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 46),
  -- Kecleon - Thunder - TM106
  (352, 35200, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 47),
  -- Kecleon - Facade - TM109
  (352, 35200, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 48),
  -- Kecleon - Ancient Power - TM120
  (352, 35200, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 49),
  -- Kecleon - Charge Beam - TM130
  (352, 35200, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 50),
  -- Kecleon - Drain Punch - TM131
  (352, 35200, 409, 27, NULL, 2, NULL, NULL, 27002131, NULL, 51),
  -- Kecleon - Fake Out - TM141
  (352, 35200, 252, 27, NULL, 2, NULL, NULL, 27002141, NULL, 52),
  -- Kecleon - First Impression - TM142
  (352, 35200, 660, 27, NULL, 2, NULL, NULL, 27002142, NULL, 53),
  -- Kecleon - Scale Shot - TM143
  (352, 35200, 799, 27, NULL, 2, NULL, NULL, 27002143, NULL, 54),
  -- Shuppet - Facade - TM109
  (353, 35300, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Shuppet - Dream Eater - TM127
  (353, 35300, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 2),
  -- Shuppet - Charge Beam - TM130
  (353, 35300, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 3),
  -- Banette - Facade - TM109
  (354, 35400, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Banette - Trailblaze - TM115
  (354, 35400, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 2),
  -- Banette - Shadow Punch - TM118
  (354, 35400, 325, 27, NULL, 2, NULL, NULL, 27002118, NULL, 3),
  -- Banette - Ominous Wind - TM119
  (354, 35400, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 4),
  -- Banette - Torment - TM121
  (354, 35400, 259, 27, NULL, 2, NULL, NULL, 27002121, NULL, 5),
  -- Banette - Dream Eater - TM127
  (354, 35400, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 6),
  -- Banette - Charge Beam - TM130
  (354, 35400, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 7),
  -- Banette - Swagger - TM139
  (354, 35400, 207, 27, NULL, 2, NULL, NULL, 27002139, NULL, 8),
  -- Banette - Razor Wind - TM145
  (354, 35400, 13, 27, NULL, 2, NULL, NULL, 27002145, NULL, 9),
  -- Banette - Icicle Spear - TM149
  (354, 35400, 333, 27, NULL, 2, NULL, NULL, 27002149, NULL, 10),
  -- Banette - Vacuum Wave - TM150
  (354, 35400, 410, 27, NULL, 2, NULL, NULL, 27002150, NULL, 11),
  -- Chimecho - Tackle - Level 1
  (358, 35800, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chimecho - Growl - Level 1
  (358, 35800, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chimecho - Confusion - Level 7
  (358, 35800, 93, 27, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Chimecho - Disarming Voice - Level 10
  (358, 35800, 574, 27, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Chimecho - Supersonic - Level 12
  (358, 35800, 48, 27, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Chimecho - Take Down - Level 15
  (358, 35800, 36, 27, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Chimecho - Screech - Level 18
  (358, 35800, 103, 27, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Chimecho - Amnesia - Level 23
  (358, 35800, 133, 27, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Chimecho - Wish - Level 25
  (358, 35800, 273, 27, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Chimecho - Metal Sound - Level 29
  (358, 35800, 319, 27, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Chimecho - Psychic - Level 34
  (358, 35800, 94, 27, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Chimecho - Double-Edge - Level 38
  (358, 35800, 38, 27, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Chimecho - Boomburst - Level 48
  (358, 35800, 586, 27, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Chimecho - Psybeam - Evolution
  (358, 35800, 60, 27, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Chimecho - Psyshock - TM003
  (358, 35800, 473, 27, NULL, 2, NULL, NULL, 26002003, NULL, 15),
  -- Chimecho - Calm Mind - TM006
  (358, 35800, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 16),
  -- Chimecho - Thunder Wave - TM008
  (358, 35800, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 17),
  -- Chimecho - Light Screen - TM016
  (358, 35800, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 18),
  -- Chimecho - Protect - TM017
  (358, 35800, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Chimecho - Energy Ball - TM026
  (358, 35800, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 20),
  -- Chimecho - Swift - TM027
  (358, 35800, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 21),
  -- Chimecho - Reflect - TM031
  (358, 35800, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 22),
  -- Chimecho - Endure - TM035
  (358, 35800, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Chimecho - Water Pulse - TM041
  (358, 35800, 352, 27, NULL, 2, NULL, NULL, 26002041, NULL, 24),
  -- Chimecho - Knock Off - TM045
  (358, 35800, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 25),
  -- Chimecho - Self-Destruct - TM048
  (358, 35800, 120, 27, NULL, 2, NULL, NULL, 26002048, NULL, 26),
  -- Chimecho - Icy Wind - TM049
  (358, 35800, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 27),
  -- Chimecho - Safeguard - TM051
  (358, 35800, 219, 27, NULL, 2, NULL, NULL, 26002051, NULL, 28),
  -- Chimecho - Double-Edge - TM056
  (358, 35800, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 29),
  -- Chimecho - Zen Headbutt - TM059
  (358, 35800, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 30),
  -- Chimecho - Future Sight - TM060
  (358, 35800, 248, 27, NULL, 2, NULL, NULL, 26002060, NULL, 31),
  -- Chimecho - Psychic - TM063
  (358, 35800, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 32),
  -- Chimecho - Hyper Voice - TM071
  (358, 35800, 304, 27, NULL, 2, NULL, NULL, 26002071, NULL, 33),
  -- Chimecho - Shadow Ball - TM074
  (358, 35800, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 34),
  -- Chimecho - Flash Cannon - TM084
  (358, 35800, 430, 27, NULL, 2, NULL, NULL, 26002084, NULL, 35),
  -- Chimecho - Substitute - TM085
  (358, 35800, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 36),
  -- Chimecho - Curse - TM091
  (358, 35800, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 37),
  -- Chimecho - Dazzling Gleam - TM092
  (358, 35800, 605, 27, NULL, 2, NULL, NULL, 26002092, NULL, 38),
  -- Chimecho - Taunt - TM095
  (358, 35800, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 39),
  -- Chimecho - Heal Block - TM097
  (358, 35800, 377, 27, NULL, 2, NULL, NULL, 26002097, NULL, 40),
  -- Chimecho - Facade - TM109
  (358, 35800, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 41),
  -- Chimecho - Ominous Wind - TM119
  (358, 35800, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 42),
  -- Chimecho - Magnet Bomb - TM126
  (358, 35800, 443, 27, NULL, 2, NULL, NULL, 27002126, NULL, 43),
  -- Chimecho - Charge Beam - TM130
  (358, 35800, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 44),
  -- Chimecho - Meteor Beam - TM156
  (358, 35800, 800, 27, NULL, 2, NULL, NULL, 27002156, NULL, 45),
  -- Absol - Facade - TM109
  (359, 35900, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Absol - Ominous Wind - TM119
  (359, 35900, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 2),
  -- Absol - False Swipe - TM122
  (359, 35900, 206, 27, NULL, 2, NULL, NULL, 27002122, NULL, 3),
  -- Absol - Razor Wind - TM145
  (359, 35900, 13, 27, NULL, 2, NULL, NULL, 27002145, NULL, 4),
  -- Snorunt - Facade - TM109
  (361, 36100, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Snorunt - Chilling Water - TM110
  (361, 36100, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Snorunt - Trailblaze - TM115
  (361, 36100, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Snorunt - Frost Breath - TM138
  (361, 36100, 524, 27, NULL, 2, NULL, NULL, 27002138, NULL, 4),
  -- Snorunt - Icicle Spear - TM149
  (361, 36100, 333, 27, NULL, 2, NULL, NULL, 27002149, NULL, 5),
  -- Glalie - Facade - TM109
  (362, 36200, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Glalie - Chilling Water - TM110
  (362, 36200, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Glalie - Trailblaze - TM115
  (362, 36200, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Glalie - Ominous Wind - TM119
  (362, 36200, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 4),
  -- Glalie - Frost Breath - TM138
  (362, 36200, 524, 27, NULL, 2, NULL, NULL, 27002138, NULL, 5),
  -- Glalie - Skull Bash - TM146
  (362, 36200, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 6),
  -- Glalie - Icicle Spear - TM149
  (362, 36200, 333, 27, NULL, 2, NULL, NULL, 27002149, NULL, 7),
  -- Glalie - Sheer Cold - TM155
  (362, 36200, 329, 27, NULL, 2, NULL, NULL, 27002155, NULL, 8),
  -- Bagon - Facade - TM109
  (371, 37100, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Shelgon - Facade - TM109
  (372, 37200, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Salamence - Facade - TM109
  (373, 37300, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Salamence - Flame Charge - TM114
  (373, 37300, 488, 27, NULL, 2, NULL, NULL, 27002114, NULL, 2),
  -- Salamence - Psychic Fangs - TM124
  (373, 37300, 706, 27, NULL, 2, NULL, NULL, 27002124, NULL, 3),
  -- Salamence - Dual Wingbeat - TM134
  (373, 37300, 814, 27, NULL, 2, NULL, NULL, 27002134, NULL, 4),
  -- Salamence - Scale Shot - TM143
  (373, 37300, 799, 27, NULL, 2, NULL, NULL, 27002143, NULL, 5),
  -- Salamence - Skull Bash - TM146
  (373, 37300, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 6),
  -- Beldum - Facade - TM109
  (374, 37400, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Beldum - Steel Beam - TM157
  (374, 37400, 796, 27, NULL, 2, NULL, NULL, 27002157, NULL, 2),
  -- Metang - Facade - TM109
  (375, 37500, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Metang - Trailblaze - TM115
  (375, 37500, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 2),
  -- Metang - Magnet Bomb - TM126
  (375, 37500, 443, 27, NULL, 2, NULL, NULL, 27002126, NULL, 3),
  -- Metang - Meteor Beam - TM156
  (375, 37500, 800, 27, NULL, 2, NULL, NULL, 27002156, NULL, 4),
  -- Metang - Steel Beam - TM157
  (375, 37500, 796, 27, NULL, 2, NULL, NULL, 27002157, NULL, 5),
  -- Metagross - Comet Punch - TM108
  (376, 37600, 4, 27, NULL, 2, NULL, NULL, 27002108, NULL, 1),
  -- Metagross - Facade - TM109
  (376, 37600, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 2),
  -- Metagross - Trailblaze - TM115
  (376, 37600, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Metagross - Shadow Punch - TM118
  (376, 37600, 325, 27, NULL, 2, NULL, NULL, 27002118, NULL, 4),
  -- Metagross - Psychic Fangs - TM124
  (376, 37600, 706, 27, NULL, 2, NULL, NULL, 27002124, NULL, 5),
  -- Metagross - Magnet Bomb - TM126
  (376, 37600, 443, 27, NULL, 2, NULL, NULL, 27002126, NULL, 6),
  -- Metagross - Swagger - TM139
  (376, 37600, 207, 27, NULL, 2, NULL, NULL, 27002139, NULL, 7),
  -- Metagross - Skull Bash - TM146
  (376, 37600, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 8),
  -- Metagross - Meteor Beam - TM156
  (376, 37600, 800, 27, NULL, 2, NULL, NULL, 27002156, NULL, 9),
  -- Metagross - Steel Beam - TM157
  (376, 37600, 796, 27, NULL, 2, NULL, NULL, 27002157, NULL, 10),
  -- Latias - Charm - Level 1
  (380, 38000, 204, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Latias - Mist Ball - Level 1
  (380, 38000, 296, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Latias - Draining Kiss - Level 5
  (380, 38000, 577, 27, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Latias - Recover - Level 10
  (380, 38000, 105, 27, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Latias - Confusion - Level 15
  (380, 38000, 93, 27, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Latias - Psybeam - Level 20
  (380, 38000, 60, 27, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Latias - Dragon Breath - Level 25
  (380, 38000, 225, 27, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Latias - Wish - Level 30
  (380, 38000, 273, 27, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Latias - Water Pulse - Level 35
  (380, 38000, 352, 27, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Latias - Zen Headbutt - Level 40
  (380, 38000, 428, 27, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Latias - Dragon Pulse - Level 45
  (380, 38000, 406, 27, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Latias - Aura Sphere - Level 50
  (380, 38000, 396, 27, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Latias - Mystical Fire - Level 55
  (380, 38000, 595, 27, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Latias - Air Slash - Level 60
  (380, 38000, 403, 27, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Latias - Psychic - Level 65
  (380, 38000, 94, 27, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Latias - Dragon Claw - TM002
  (380, 38000, 337, 27, NULL, 2, NULL, NULL, 26002002, NULL, 16),
  -- Latias - Psyshock - TM003
  (380, 38000, 473, 27, NULL, 2, NULL, NULL, 26002003, NULL, 17),
  -- Latias - Roar - TM005
  (380, 38000, 46, 27, NULL, 2, NULL, NULL, 26002005, NULL, 18),
  -- Latias - Calm Mind - TM006
  (380, 38000, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 19),
  -- Latias - Thunder Wave - TM008
  (380, 38000, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 20),
  -- Latias - Ice Beam - TM013
  (380, 38000, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 21),
  -- Latias - Light Screen - TM016
  (380, 38000, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 22),
  -- Latias - Protect - TM017
  (380, 38000, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 23),
  -- Latias - Aerial Ace - TM022
  (380, 38000, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 24),
  -- Latias - Energy Ball - TM026
  (380, 38000, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 25),
  -- Latias - Swift - TM027
  (380, 38000, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 26),
  -- Latias - Reflect - TM031
  (380, 38000, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 27),
  -- Latias - Body Slam - TM033
  (380, 38000, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 28),
  -- Latias - Endure - TM035
  (380, 38000, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 29),
  -- Latias - Water Pulse - TM041
  (380, 38000, 352, 27, NULL, 2, NULL, NULL, 26002041, NULL, 30),
  -- Latias - Fly - TM043
  (380, 38000, 19, 27, NULL, 2, NULL, NULL, 26002043, NULL, 31),
  -- Latias - Hyper Beam - TM044
  (380, 38000, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 32),
  -- Latias - Agility - TM047
  (380, 38000, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 33),
  -- Latias - Icy Wind - TM049
  (380, 38000, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 34),
  -- Latias - Safeguard - TM051
  (380, 38000, 219, 27, NULL, 2, NULL, NULL, 26002051, NULL, 35),
  -- Latias - Draco Meteor - TM054
  (380, 38000, 434, 27, NULL, 2, NULL, NULL, 26002054, NULL, 36),
  -- Latias - Giga Impact - TM055
  (380, 38000, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 37),
  -- Latias - Double-Edge - TM056
  (380, 38000, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 38),
  -- Latias - Zen Headbutt - TM059
  (380, 38000, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 39),
  -- Latias - Future Sight - TM060
  (380, 38000, 248, 27, NULL, 2, NULL, NULL, 26002060, NULL, 40),
  -- Latias - Shadow Claw - TM061
  (380, 38000, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 41),
  -- Latias - Psychic - TM063
  (380, 38000, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 42),
  -- Latias - Solar Beam - TM064
  (380, 38000, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 43),
  -- Latias - Thunderbolt - TM067
  (380, 38000, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 44),
  -- Latias - Earthquake - TM069
  (380, 38000, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 45),
  -- Latias - Whirlpool - TM070
  (380, 38000, 250, 27, NULL, 2, NULL, NULL, 26002070, NULL, 46),
  -- Latias - Surf - TM073
  (380, 38000, 57, 27, NULL, 2, NULL, NULL, 26002073, NULL, 47),
  -- Latias - Shadow Ball - TM074
  (380, 38000, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 48),
  -- Latias - Dragon Pulse - TM075
  (380, 38000, 406, 27, NULL, 2, NULL, NULL, 26002075, NULL, 49),
  -- Latias - Liquidation - TM076
  (380, 38000, 710, 27, NULL, 2, NULL, NULL, 26002076, NULL, 50),
  -- Latias - Bulldoze - TM078
  (380, 38000, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 51),
  -- Latias - Substitute - TM085
  (380, 38000, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 52),
  -- Latias - Outrage - TM093
  (380, 38000, 200, 27, NULL, 2, NULL, NULL, 26002093, NULL, 53),
  -- Latias - Waterfall - TM098
  (380, 38000, 127, 27, NULL, 2, NULL, NULL, 26002098, NULL, 54),
  -- Latias - Thunder - TM106
  (380, 38000, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 55),
  -- Latias - Facade - TM109
  (380, 38000, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 56),
  -- Latias - Chilling Water - TM110
  (380, 38000, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 57),
  -- Latias - Dream Eater - TM127
  (380, 38000, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 58),
  -- Latias - Charge Beam - TM130
  (380, 38000, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 59),
  -- Latias - Dual Wingbeat - TM134
  (380, 38000, 814, 27, NULL, 2, NULL, NULL, 27002134, NULL, 60),
  -- Latias - Scale Shot - TM143
  (380, 38000, 799, 27, NULL, 2, NULL, NULL, 27002143, NULL, 61),
  -- Latias - Razor Wind - TM145
  (380, 38000, 13, 27, NULL, 2, NULL, NULL, 27002145, NULL, 62),
  -- Latias - Tri Attack - TM147
  (380, 38000, 161, 27, NULL, 2, NULL, NULL, 27002147, NULL, 63),
  -- Latios - Luster Purge - Level 1
  (381, 38100, 295, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Latios - Work Up - Level 1
  (381, 38100, 526, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Latios - Twister - Level 5
  (381, 38100, 239, 27, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Latios - Recover - Level 10
  (381, 38100, 105, 27, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Latios - Confusion - Level 15
  (381, 38100, 93, 27, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Latios - Psybeam - Level 20
  (381, 38100, 60, 27, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Latios - Dragon Breath - Level 25
  (381, 38100, 225, 27, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Latios - Wish - Level 30
  (381, 38100, 273, 27, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Latios - Water Pulse - Level 35
  (381, 38100, 352, 27, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Latios - Zen Headbutt - Level 40
  (381, 38100, 428, 27, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Latios - Dragon Pulse - Level 45
  (381, 38100, 406, 27, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Latios - Aura Sphere - Level 50
  (381, 38100, 396, 27, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Latios - Mystical Fire - Level 55
  (381, 38100, 595, 27, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Latios - Psychic - Level 60
  (381, 38100, 94, 27, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Latios - Air Slash - Level 65
  (381, 38100, 403, 27, NULL, 1, 65, NULL, NULL, NULL, 15),
  -- Latios - Dragon Claw - TM002
  (381, 38100, 337, 27, NULL, 2, NULL, NULL, 26002002, NULL, 16),
  -- Latios - Psyshock - TM003
  (381, 38100, 473, 27, NULL, 2, NULL, NULL, 26002003, NULL, 17),
  -- Latios - Roar - TM005
  (381, 38100, 46, 27, NULL, 2, NULL, NULL, 26002005, NULL, 18),
  -- Latios - Calm Mind - TM006
  (381, 38100, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 19),
  -- Latios - Thunder Wave - TM008
  (381, 38100, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 20),
  -- Latios - Flip Turn - TM009
  (381, 38100, 812, 27, NULL, 2, NULL, NULL, 26002009, NULL, 21),
  -- Latios - Ice Beam - TM013
  (381, 38100, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 22),
  -- Latios - Light Screen - TM016
  (381, 38100, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 23),
  -- Latios - Protect - TM017
  (381, 38100, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 24),
  -- Latios - Aerial Ace - TM022
  (381, 38100, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 25),
  -- Latios - Energy Ball - TM026
  (381, 38100, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 26),
  -- Latios - Swift - TM027
  (381, 38100, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 27),
  -- Latios - Reflect - TM031
  (381, 38100, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 28),
  -- Latios - Body Slam - TM033
  (381, 38100, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 29),
  -- Latios - Endure - TM035
  (381, 38100, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 30),
  -- Latios - Water Pulse - TM041
  (381, 38100, 352, 27, NULL, 2, NULL, NULL, 26002041, NULL, 31),
  -- Latios - Fly - TM043
  (381, 38100, 19, 27, NULL, 2, NULL, NULL, 26002043, NULL, 32),
  -- Latios - Hyper Beam - TM044
  (381, 38100, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 33),
  -- Latios - Agility - TM047
  (381, 38100, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 34),
  -- Latios - Icy Wind - TM049
  (381, 38100, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 35),
  -- Latios - Safeguard - TM051
  (381, 38100, 219, 27, NULL, 2, NULL, NULL, 26002051, NULL, 36),
  -- Latios - Draco Meteor - TM054
  (381, 38100, 434, 27, NULL, 2, NULL, NULL, 26002054, NULL, 37),
  -- Latios - Giga Impact - TM055
  (381, 38100, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 38),
  -- Latios - Double-Edge - TM056
  (381, 38100, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 39),
  -- Latios - Zen Headbutt - TM059
  (381, 38100, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 40),
  -- Latios - Future Sight - TM060
  (381, 38100, 248, 27, NULL, 2, NULL, NULL, 26002060, NULL, 41),
  -- Latios - Shadow Claw - TM061
  (381, 38100, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 42),
  -- Latios - Psychic - TM063
  (381, 38100, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 43),
  -- Latios - Solar Beam - TM064
  (381, 38100, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 44),
  -- Latios - Thunderbolt - TM067
  (381, 38100, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 45),
  -- Latios - Earthquake - TM069
  (381, 38100, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 46),
  -- Latios - Whirlpool - TM070
  (381, 38100, 250, 27, NULL, 2, NULL, NULL, 26002070, NULL, 47),
  -- Latios - Surf - TM073
  (381, 38100, 57, 27, NULL, 2, NULL, NULL, 26002073, NULL, 48),
  -- Latios - Shadow Ball - TM074
  (381, 38100, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 49),
  -- Latios - Dragon Pulse - TM075
  (381, 38100, 406, 27, NULL, 2, NULL, NULL, 26002075, NULL, 50),
  -- Latios - Liquidation - TM076
  (381, 38100, 710, 27, NULL, 2, NULL, NULL, 26002076, NULL, 51),
  -- Latios - Bulldoze - TM078
  (381, 38100, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 52),
  -- Latios - Substitute - TM085
  (381, 38100, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 53),
  -- Latios - Outrage - TM093
  (381, 38100, 200, 27, NULL, 2, NULL, NULL, 26002093, NULL, 54),
  -- Latios - Heal Block - TM097
  (381, 38100, 377, 27, NULL, 2, NULL, NULL, 26002097, NULL, 55),
  -- Latios - Waterfall - TM098
  (381, 38100, 127, 27, NULL, 2, NULL, NULL, 26002098, NULL, 56),
  -- Latios - Work Up - TM103
  (381, 38100, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 57),
  -- Latios - Thunder - TM106
  (381, 38100, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 58),
  -- Latios - Facade - TM109
  (381, 38100, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 59),
  -- Latios - Chilling Water - TM110
  (381, 38100, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 60),
  -- Latios - Dream Eater - TM127
  (381, 38100, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 61),
  -- Latios - Charge Beam - TM130
  (381, 38100, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 62),
  -- Latios - Dual Wingbeat - TM134
  (381, 38100, 814, 27, NULL, 2, NULL, NULL, 27002134, NULL, 63),
  -- Latios - Scale Shot - TM143
  (381, 38100, 799, 27, NULL, 2, NULL, NULL, 27002143, NULL, 64),
  -- Latios - Razor Wind - TM145
  (381, 38100, 13, 27, NULL, 2, NULL, NULL, 27002145, NULL, 65),
  -- Latios - Tri Attack - TM147
  (381, 38100, 161, 27, NULL, 2, NULL, NULL, 27002147, NULL, 66),
  -- Kyogre - Body Slam - Level 1
  (382, 38200, 34, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kyogre - Ancient Power - Level 1
  (382, 38200, 246, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kyogre - Water Pulse - Level 1
  (382, 38200, 352, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Kyogre - Whirlpool - Level 12
  (382, 38200, 250, 27, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Kyogre - Take Down - Level 15
  (382, 38200, 36, 27, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Kyogre - Calm Mind - Level 18
  (382, 38200, 347, 27, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Kyogre - Heavy Slam - Level 34
  (382, 38200, 484, 27, NULL, 1, 34, NULL, NULL, NULL, 7),
  -- Kyogre - Ice Beam - Level 36
  (382, 38200, 58, 27, NULL, 1, 36, NULL, NULL, NULL, 8),
  -- Kyogre - Surf - Level 42
  (382, 38200, 57, 27, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Kyogre - Sheer Cold - Level 45
  (382, 38200, 329, 27, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Kyogre - Origin Pulse - Level 50
  (382, 38200, 618, 27, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Kyogre - Aqua Ring - Level 54
  (382, 38200, 392, 27, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Kyogre - Blizzard - Level 58
  (382, 38200, 59, 27, NULL, 1, 58, NULL, NULL, NULL, 13),
  -- Kyogre - Double-Edge - Level 64
  (382, 38200, 38, 27, NULL, 1, 64, NULL, NULL, NULL, 14),
  -- Kyogre - Hydro Pump - Level 72
  (382, 38200, 56, 27, NULL, 1, 72, NULL, NULL, NULL, 15),
  -- Kyogre - Headbutt - TM001
  (382, 38200, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 16),
  -- Kyogre - Rock Smash - TM004
  (382, 38200, 249, 27, NULL, 2, NULL, NULL, 26002004, NULL, 17),
  -- Kyogre - Roar - TM005
  (382, 38200, 46, 27, NULL, 2, NULL, NULL, 26002005, NULL, 18),
  -- Kyogre - Calm Mind - TM006
  (382, 38200, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 19),
  -- Kyogre - Thunder Wave - TM008
  (382, 38200, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 20),
  -- Kyogre - Brick Break - TM010
  (382, 38200, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 21),
  -- Kyogre - Rock Slide - TM012
  (382, 38200, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 22),
  -- Kyogre - Ice Beam - TM013
  (382, 38200, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 23),
  -- Kyogre - Protect - TM017
  (382, 38200, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 24),
  -- Kyogre - Swift - TM027
  (382, 38200, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 25),
  -- Kyogre - Body Slam - TM033
  (382, 38200, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 26),
  -- Kyogre - Endure - TM035
  (382, 38200, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 27),
  -- Kyogre - Rock Tomb - TM036
  (382, 38200, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 28),
  -- Kyogre - Water Pulse - TM041
  (382, 38200, 352, 27, NULL, 2, NULL, NULL, 26002041, NULL, 29),
  -- Kyogre - Hyper Beam - TM044
  (382, 38200, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 30),
  -- Kyogre - Icy Wind - TM049
  (382, 38200, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 31),
  -- Kyogre - Safeguard - TM051
  (382, 38200, 219, 27, NULL, 2, NULL, NULL, 26002051, NULL, 32),
  -- Kyogre - Giga Impact - TM055
  (382, 38200, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 33),
  -- Kyogre - Double-Edge - TM056
  (382, 38200, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 34),
  -- Kyogre - Iron Head - TM058
  (382, 38200, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 35),
  -- Kyogre - Thunderbolt - TM067
  (382, 38200, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 36),
  -- Kyogre - Earthquake - TM069
  (382, 38200, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 37),
  -- Kyogre - Whirlpool - TM070
  (382, 38200, 250, 27, NULL, 2, NULL, NULL, 26002070, NULL, 38),
  -- Kyogre - Surf - TM073
  (382, 38200, 57, 27, NULL, 2, NULL, NULL, 26002073, NULL, 39),
  -- Kyogre - Liquidation - TM076
  (382, 38200, 710, 27, NULL, 2, NULL, NULL, 26002076, NULL, 40),
  -- Kyogre - Bulldoze - TM078
  (382, 38200, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 41),
  -- Kyogre - Substitute - TM085
  (382, 38200, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 42),
  -- Kyogre - Hydro Pump - TM096
  (382, 38200, 56, 27, NULL, 2, NULL, NULL, 26002096, NULL, 43),
  -- Kyogre - Waterfall - TM098
  (382, 38200, 127, 27, NULL, 2, NULL, NULL, 26002098, NULL, 44),
  -- Kyogre - Blizzard - TM105
  (382, 38200, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 45),
  -- Kyogre - Thunder - TM106
  (382, 38200, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 46),
  -- Kyogre - Facade - TM109
  (382, 38200, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 47),
  -- Kyogre - Chilling Water - TM110
  (382, 38200, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 48),
  -- Kyogre - Ancient Power - TM120
  (382, 38200, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 49),
  -- Kyogre - Swagger - TM139
  (382, 38200, 207, 27, NULL, 2, NULL, NULL, 27002139, NULL, 50),
  -- Kyogre - Muddy Water - TM140
  (382, 38200, 330, 27, NULL, 2, NULL, NULL, 27002140, NULL, 51),
  -- Kyogre - Scald - TM148
  (382, 38200, 503, 27, NULL, 2, NULL, NULL, 27002148, NULL, 52),
  -- Kyogre - Icicle Spear - TM149
  (382, 38200, 333, 27, NULL, 2, NULL, NULL, 27002149, NULL, 53),
  -- Kyogre - Sheer Cold - TM155
  (382, 38200, 329, 27, NULL, 2, NULL, NULL, 27002155, NULL, 54),
  -- Groudon - Ancient Power - Level 1
  (383, 38300, 246, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Groudon - Sand Tomb - Level 1
  (383, 38300, 328, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Groudon - Mud Shot - Level 1
  (383, 38300, 341, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Groudon - Lava Plume - Level 1
  (383, 38300, 436, 27, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Groudon - Earth Power - Level 9
  (383, 38300, 414, 27, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Groudon - Bulk Up - Level 18
  (383, 38300, 339, 27, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Groudon - Rock Blast - Level 28
  (383, 38300, 350, 27, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Groudon - Fire Spin - Level 30
  (383, 38300, 83, 27, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Groudon - Earthquake - Level 34
  (383, 38300, 89, 27, NULL, 1, 34, NULL, NULL, NULL, 9),
  -- Groudon - Heavy Slam - Level 40
  (383, 38300, 484, 27, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Groudon - Stone Edge - Level 43
  (383, 38300, 444, 27, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Groudon - Fissure - Level 45
  (383, 38300, 90, 27, NULL, 1, 45, NULL, NULL, NULL, 12),
  -- Groudon - Precipice Blades - Level 50
  (383, 38300, 619, 27, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Groudon - Dynamic Punch - Level 62
  (383, 38300, 223, 27, NULL, 1, 62, NULL, NULL, NULL, 14),
  -- Groudon - Fire Blast - Level 68
  (383, 38300, 126, 27, NULL, 1, 68, NULL, NULL, NULL, 15),
  -- Groudon - Heat Crash - Level 75
  (383, 38300, 535, 27, NULL, 1, 75, NULL, NULL, NULL, 16),
  -- Groudon - Solar Beam - Level 81
  (383, 38300, 76, 27, NULL, 1, 81, NULL, NULL, NULL, 17),
  -- Groudon - Dragon Claw - TM002
  (383, 38300, 337, 27, NULL, 2, NULL, NULL, 26002002, NULL, 18),
  -- Groudon - Roar - TM005
  (383, 38300, 46, 27, NULL, 2, NULL, NULL, 26002005, NULL, 19),
  -- Groudon - Thunder Wave - TM008
  (383, 38300, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 20),
  -- Groudon - Brick Break - TM010
  (383, 38300, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 21),
  -- Groudon - Bulk Up - TM011
  (383, 38300, 339, 27, NULL, 2, NULL, NULL, 26002011, NULL, 22),
  -- Groudon - Rock Slide - TM012
  (383, 38300, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 23),
  -- Groudon - Fire Fang - TM014
  (383, 38300, 424, 27, NULL, 2, NULL, NULL, 26002014, NULL, 24),
  -- Groudon - Protect - TM017
  (383, 38300, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 25),
  -- Groudon - Power-Up Punch - TM018
  (383, 38300, 612, 27, NULL, 2, NULL, NULL, 26002018, NULL, 26),
  -- Groudon - Power Gem - TM019
  (383, 38300, 408, 27, NULL, 2, NULL, NULL, 26002019, NULL, 27),
  -- Groudon - Aerial Ace - TM022
  (383, 38300, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 28),
  -- Groudon - Thunder Punch - TM023
  (383, 38300, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 29),
  -- Groudon - Crunch - TM025
  (383, 38300, 242, 27, NULL, 2, NULL, NULL, 26002025, NULL, 30),
  -- Groudon - Dig - TM028
  (383, 38300, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 31),
  -- Groudon - Fire Punch - TM029
  (383, 38300, 7, 27, NULL, 2, NULL, NULL, 26002029, NULL, 32),
  -- Groudon - Swords Dance - TM030
  (383, 38300, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 33),
  -- Groudon - Body Slam - TM033
  (383, 38300, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 34),
  -- Groudon - Endure - TM035
  (383, 38300, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 35),
  -- Groudon - Rock Tomb - TM036
  (383, 38300, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 36),
  -- Groudon - Stealth Rock - TM037
  (383, 38300, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 37),
  -- Groudon - Fire Blast - TM038
  (383, 38300, 126, 27, NULL, 2, NULL, NULL, 26002038, NULL, 38),
  -- Groudon - Hyper Beam - TM044
  (383, 38300, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 39),
  -- Groudon - Mud Shot - TM046
  (383, 38300, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 40),
  -- Groudon - Overheat - TM050
  (383, 38300, 315, 27, NULL, 2, NULL, NULL, 26002050, NULL, 41),
  -- Groudon - Safeguard - TM051
  (383, 38300, 219, 27, NULL, 2, NULL, NULL, 26002051, NULL, 42),
  -- Groudon - Earth Power - TM052
  (383, 38300, 414, 27, NULL, 2, NULL, NULL, 26002052, NULL, 43),
  -- Groudon - Giga Impact - TM055
  (383, 38300, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 44),
  -- Groudon - Double-Edge - TM056
  (383, 38300, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 45),
  -- Groudon - Will-O-Wisp - TM057
  (383, 38300, 261, 27, NULL, 2, NULL, NULL, 26002057, NULL, 46),
  -- Groudon - Iron Head - TM058
  (383, 38300, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 47),
  -- Groudon - Zen Headbutt - TM059
  (383, 38300, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 48),
  -- Groudon - Shadow Claw - TM061
  (383, 38300, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 49),
  -- Groudon - Flamethrower - TM062
  (383, 38300, 53, 27, NULL, 2, NULL, NULL, 26002062, NULL, 50),
  -- Groudon - Solar Beam - TM064
  (383, 38300, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 51),
  -- Groudon - Stone Edge - TM065
  (383, 38300, 444, 27, NULL, 2, NULL, NULL, 26002065, NULL, 52),
  -- Groudon - Thunderbolt - TM067
  (383, 38300, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 53),
  -- Groudon - Heat Wave - TM068
  (383, 38300, 257, 27, NULL, 2, NULL, NULL, 26002068, NULL, 54),
  -- Groudon - Earthquake - TM069
  (383, 38300, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 55),
  -- Groudon - Fire Spin - TM072
  (383, 38300, 83, 27, NULL, 2, NULL, NULL, 26002072, NULL, 56),
  -- Groudon - Dragon Pulse - TM075
  (383, 38300, 406, 27, NULL, 2, NULL, NULL, 26002075, NULL, 57),
  -- Groudon - Bulldoze - TM078
  (383, 38300, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 58),
  -- Groudon - Substitute - TM085
  (383, 38300, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 59),
  -- Groudon - Iron Tail - TM087
  (383, 38300, 231, 27, NULL, 2, NULL, NULL, 26002087, NULL, 60),
  -- Groudon - Spikes - TM088
  (383, 38300, 191, 27, NULL, 2, NULL, NULL, 26002088, NULL, 61),
  -- Groudon - Focus Blast - TM102
  (383, 38300, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 62),
  -- Groudon - Thunder - TM106
  (383, 38300, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 63),
  -- Groudon - Facade - TM109
  (383, 38300, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 64),
  -- Groudon - Ancient Power - TM120
  (383, 38300, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 65),
  -- Groudon - Scorching Sands - TM136
  (383, 38300, 815, 27, NULL, 2, NULL, NULL, 27002136, NULL, 66),
  -- Groudon - Fissure - TM154
  (383, 38300, 90, 27, NULL, 2, NULL, NULL, 27002154, NULL, 67),
  -- Rayquaza - Twister - Level 1
  (384, 38400, 239, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Rayquaza - Air Slash - Level 1
  (384, 38400, 403, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Rayquaza - Dragon Ascent - Level 1
  (384, 38400, 620, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Rayquaza - Crunch - Level 9
  (384, 38400, 242, 27, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Rayquaza - Brutal Swing - Level 15
  (384, 38400, 693, 27, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Rayquaza - Extreme Speed - Level 27
  (384, 38400, 245, 27, NULL, 1, 27, NULL, NULL, NULL, 6),
  -- Rayquaza - Dragon Pulse - Level 36
  (384, 38400, 406, 27, NULL, 1, 36, NULL, NULL, NULL, 7),
  -- Rayquaza - Hyper Voice - Level 45
  (384, 38400, 304, 27, NULL, 1, 45, NULL, NULL, NULL, 8),
  -- Rayquaza - Dragon Rush - Level 58
  (384, 38400, 407, 27, NULL, 1, 58, NULL, NULL, NULL, 9),
  -- Rayquaza - Fly - Level 63
  (384, 38400, 19, 27, NULL, 1, 63, NULL, NULL, NULL, 10),
  -- Rayquaza - Hurricane - Level 72
  (384, 38400, 542, 27, NULL, 1, 72, NULL, NULL, NULL, 11),
  -- Rayquaza - Outrage - Level 81
  (384, 38400, 200, 27, NULL, 1, 81, NULL, NULL, NULL, 12),
  -- Rayquaza - Hyper Beam - Level 90
  (384, 38400, 63, 27, NULL, 1, 90, NULL, NULL, NULL, 13),
  -- Rayquaza - Dragon Claw - TM002
  (384, 38400, 337, 27, NULL, 2, NULL, NULL, 26002002, NULL, 14),
  -- Rayquaza - Roar - TM005
  (384, 38400, 46, 27, NULL, 2, NULL, NULL, 26002005, NULL, 15),
  -- Rayquaza - Thunder Wave - TM008
  (384, 38400, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 16),
  -- Rayquaza - Brick Break - TM010
  (384, 38400, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 17),
  -- Rayquaza - Bulk Up - TM011
  (384, 38400, 339, 27, NULL, 2, NULL, NULL, 26002011, NULL, 18),
  -- Rayquaza - Rock Slide - TM012
  (384, 38400, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 19),
  -- Rayquaza - Ice Beam - TM013
  (384, 38400, 58, 27, NULL, 2, NULL, NULL, 26002013, NULL, 20),
  -- Rayquaza - Protect - TM017
  (384, 38400, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 21),
  -- Rayquaza - Aerial Ace - TM022
  (384, 38400, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 22),
  -- Rayquaza - Crunch - TM025
  (384, 38400, 242, 27, NULL, 2, NULL, NULL, 26002025, NULL, 23),
  -- Rayquaza - Energy Ball - TM026
  (384, 38400, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 24),
  -- Rayquaza - Swift - TM027
  (384, 38400, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 25),
  -- Rayquaza - Swords Dance - TM030
  (384, 38400, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 26),
  -- Rayquaza - Body Slam - TM033
  (384, 38400, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 27),
  -- Rayquaza - Endure - TM035
  (384, 38400, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 28),
  -- Rayquaza - Rock Tomb - TM036
  (384, 38400, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 29),
  -- Rayquaza - Stealth Rock - TM037
  (384, 38400, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 30),
  -- Rayquaza - Fire Blast - TM038
  (384, 38400, 126, 27, NULL, 2, NULL, NULL, 26002038, NULL, 31),
  -- Rayquaza - Fly - TM043
  (384, 38400, 19, 27, NULL, 2, NULL, NULL, 26002043, NULL, 32),
  -- Rayquaza - Hyper Beam - TM044
  (384, 38400, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 33),
  -- Rayquaza - Icy Wind - TM049
  (384, 38400, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 34),
  -- Rayquaza - Overheat - TM050
  (384, 38400, 315, 27, NULL, 2, NULL, NULL, 26002050, NULL, 35),
  -- Rayquaza - Earth Power - TM052
  (384, 38400, 414, 27, NULL, 2, NULL, NULL, 26002052, NULL, 36),
  -- Rayquaza - Draco Meteor - TM054
  (384, 38400, 434, 27, NULL, 2, NULL, NULL, 26002054, NULL, 37),
  -- Rayquaza - Giga Impact - TM055
  (384, 38400, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 38),
  -- Rayquaza - Double-Edge - TM056
  (384, 38400, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 39),
  -- Rayquaza - Iron Head - TM058
  (384, 38400, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 40),
  -- Rayquaza - Shadow Claw - TM061
  (384, 38400, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 41),
  -- Rayquaza - Flamethrower - TM062
  (384, 38400, 53, 27, NULL, 2, NULL, NULL, 26002062, NULL, 42),
  -- Rayquaza - Solar Beam - TM064
  (384, 38400, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 43),
  -- Rayquaza - Stone Edge - TM065
  (384, 38400, 444, 27, NULL, 2, NULL, NULL, 26002065, NULL, 44),
  -- Rayquaza - Thunderbolt - TM067
  (384, 38400, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 45),
  -- Rayquaza - Earthquake - TM069
  (384, 38400, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 46),
  -- Rayquaza - Whirlpool - TM070
  (384, 38400, 250, 27, NULL, 2, NULL, NULL, 26002070, NULL, 47),
  -- Rayquaza - Hyper Voice - TM071
  (384, 38400, 304, 27, NULL, 2, NULL, NULL, 26002071, NULL, 48),
  -- Rayquaza - Surf - TM073
  (384, 38400, 57, 27, NULL, 2, NULL, NULL, 26002073, NULL, 49),
  -- Rayquaza - Dragon Pulse - TM075
  (384, 38400, 406, 27, NULL, 2, NULL, NULL, 26002075, NULL, 50),
  -- Rayquaza - Bulldoze - TM078
  (384, 38400, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 51),
  -- Rayquaza - Hurricane - TM079
  (384, 38400, 542, 27, NULL, 2, NULL, NULL, 26002079, NULL, 52),
  -- Rayquaza - U-turn - TM082
  (384, 38400, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 53),
  -- Rayquaza - Substitute - TM085
  (384, 38400, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 54),
  -- Rayquaza - Wild Charge - TM086
  (384, 38400, 528, 27, NULL, 2, NULL, NULL, 26002086, NULL, 55),
  -- Rayquaza - Iron Tail - TM087
  (384, 38400, 231, 27, NULL, 2, NULL, NULL, 26002087, NULL, 56),
  -- Rayquaza - Outrage - TM093
  (384, 38400, 200, 27, NULL, 2, NULL, NULL, 26002093, NULL, 57),
  -- Rayquaza - Whirlwind - TM094
  (384, 38400, 18, 27, NULL, 2, NULL, NULL, 26002094, NULL, 58),
  -- Rayquaza - Hydro Pump - TM096
  (384, 38400, 56, 27, NULL, 2, NULL, NULL, 26002096, NULL, 59),
  -- Rayquaza - Waterfall - TM098
  (384, 38400, 127, 27, NULL, 2, NULL, NULL, 26002098, NULL, 60),
  -- Rayquaza - Focus Blast - TM102
  (384, 38400, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 61),
  -- Rayquaza - Blizzard - TM105
  (384, 38400, 59, 27, NULL, 2, NULL, NULL, 26002105, NULL, 62),
  -- Rayquaza - Thunder - TM106
  (384, 38400, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 63),
  -- Rayquaza - Facade - TM109
  (384, 38400, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 64),
  -- Rayquaza - Ancient Power - TM120
  (384, 38400, 246, 27, NULL, 2, NULL, NULL, 27002120, NULL, 65),
  -- Rayquaza - Scale Shot - TM143
  (384, 38400, 799, 27, NULL, 2, NULL, NULL, 27002143, NULL, 66),
  -- Rayquaza - Meteor Beam - TM156
  (384, 38400, 800, 27, NULL, 2, NULL, NULL, 27002156, NULL, 67),
  -- Starly - Tackle - Level 1
  (396, 39600, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Starly - Growl - Level 1
  (396, 39600, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Starly - Peck - Level 1
  (396, 39600, 64, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Starly - Quick Attack - Level 8
  (396, 39600, 98, 27, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Starly - Gust - Level 10
  (396, 39600, 16, 27, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Starly - Wing Attack - Level 12
  (396, 39600, 17, 27, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Starly - Double Team - Level 16
  (396, 39600, 104, 27, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Starly - Feather Dance - Level 19
  (396, 39600, 297, 27, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Starly - Whirlwind - Level 23
  (396, 39600, 18, 27, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Starly - Aerial Ace - Level 28
  (396, 39600, 332, 27, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Starly - Take Down - Level 33
  (396, 39600, 36, 27, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Starly - Agility - Level 41
  (396, 39600, 97, 27, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Starly - Brave Bird - Level 49
  (396, 39600, 413, 27, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Starly - Protect - TM017
  (396, 39600, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 14),
  -- Starly - Aerial Ace - TM022
  (396, 39600, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 15),
  -- Starly - Swift - TM027
  (396, 39600, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 16),
  -- Starly - Double Team - TM032
  (396, 39600, 104, 27, NULL, 2, NULL, NULL, 26002032, NULL, 17),
  -- Starly - Endure - TM035
  (396, 39600, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 18),
  -- Starly - Fly - TM043
  (396, 39600, 19, 27, NULL, 2, NULL, NULL, 26002043, NULL, 19),
  -- Starly - Knock Off - TM045
  (396, 39600, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 20),
  -- Starly - Agility - TM047
  (396, 39600, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 21),
  -- Starly - Double-Edge - TM056
  (396, 39600, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 22),
  -- Starly - Heat Wave - TM068
  (396, 39600, 257, 27, NULL, 2, NULL, NULL, 26002068, NULL, 23),
  -- Starly - Hurricane - TM079
  (396, 39600, 542, 27, NULL, 2, NULL, NULL, 26002079, NULL, 24),
  -- Starly - U-turn - TM082
  (396, 39600, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 25),
  -- Starly - Substitute - TM085
  (396, 39600, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 26),
  -- Starly - Whirlwind - TM094
  (396, 39600, 18, 27, NULL, 2, NULL, NULL, 26002094, NULL, 27),
  -- Starly - Work Up - TM103
  (396, 39600, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 28),
  -- Starly - Facade - TM109
  (396, 39600, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 29),
  -- Starly - Dual Wingbeat - TM134
  (396, 39600, 814, 27, NULL, 2, NULL, NULL, 27002134, NULL, 30),
  -- Staravia - Tackle - Level 1
  (397, 39700, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Staravia - Growl - Level 1
  (397, 39700, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Staravia - Peck - Level 1
  (397, 39700, 64, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Staravia - Quick Attack - Level 8
  (397, 39700, 98, 27, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Staravia - Gust - Level 10
  (397, 39700, 16, 27, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Staravia - Wing Attack - Level 12
  (397, 39700, 17, 27, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Staravia - Double Team - Level 16
  (397, 39700, 104, 27, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Staravia - Feather Dance - Level 19
  (397, 39700, 297, 27, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Staravia - Whirlwind - Level 23
  (397, 39700, 18, 27, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Staravia - Aerial Ace - Level 28
  (397, 39700, 332, 27, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Staravia - Take Down - Level 33
  (397, 39700, 36, 27, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Staravia - Agility - Level 41
  (397, 39700, 97, 27, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Staravia - Brave Bird - Level 49
  (397, 39700, 413, 27, NULL, 1, 49, NULL, NULL, NULL, 13),
  -- Staravia - Protect - TM017
  (397, 39700, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 14),
  -- Staravia - Aerial Ace - TM022
  (397, 39700, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 15),
  -- Staravia - Swift - TM027
  (397, 39700, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 16),
  -- Staravia - Double Team - TM032
  (397, 39700, 104, 27, NULL, 2, NULL, NULL, 26002032, NULL, 17),
  -- Staravia - Endure - TM035
  (397, 39700, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 18),
  -- Staravia - Fly - TM043
  (397, 39700, 19, 27, NULL, 2, NULL, NULL, 26002043, NULL, 19),
  -- Staravia - Knock Off - TM045
  (397, 39700, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 20),
  -- Staravia - Agility - TM047
  (397, 39700, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 21),
  -- Staravia - Double-Edge - TM056
  (397, 39700, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 22),
  -- Staravia - Heat Wave - TM068
  (397, 39700, 257, 27, NULL, 2, NULL, NULL, 26002068, NULL, 23),
  -- Staravia - Hurricane - TM079
  (397, 39700, 542, 27, NULL, 2, NULL, NULL, 26002079, NULL, 24),
  -- Staravia - U-turn - TM082
  (397, 39700, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 25),
  -- Staravia - Substitute - TM085
  (397, 39700, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 26),
  -- Staravia - Whirlwind - TM094
  (397, 39700, 18, 27, NULL, 2, NULL, NULL, 26002094, NULL, 27),
  -- Staravia - Work Up - TM103
  (397, 39700, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 28),
  -- Staravia - Facade - TM109
  (397, 39700, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 29),
  -- Staravia - Ominous Wind - TM119
  (397, 39700, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 30),
  -- Staravia - Dual Wingbeat - TM134
  (397, 39700, 814, 27, NULL, 2, NULL, NULL, 27002134, NULL, 31),
  -- Staravia - Skull Bash - TM146
  (397, 39700, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 32),
  -- Staravia - Vacuum Wave - TM150
  (397, 39700, 410, 27, NULL, 2, NULL, NULL, 27002150, NULL, 33),
  -- Staravia - Sky Attack - TM153
  (397, 39700, 143, 27, NULL, 2, NULL, NULL, 27002153, NULL, 34),
  -- Staraptor - Tackle - Level 1
  (398, 39800, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Staraptor - Growl - Level 1
  (398, 39800, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Staraptor - Peck - Level 1
  (398, 39800, 64, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Staraptor - Quick Attack - Level 8
  (398, 39800, 98, 27, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Staraptor - Gust - Level 10
  (398, 39800, 16, 27, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Staraptor - Wing Attack - Level 12
  (398, 39800, 17, 27, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Staraptor - Double Team - Level 16
  (398, 39800, 104, 27, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Staraptor - Feather Dance - Level 19
  (398, 39800, 297, 27, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Staraptor - Whirlwind - Level 23
  (398, 39800, 18, 27, NULL, 1, 23, NULL, NULL, NULL, 9),
  -- Staraptor - Aerial Ace - Level 28
  (398, 39800, 332, 27, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Staraptor - Take Down - Level 33
  (398, 39800, 36, 27, NULL, 1, 33, NULL, NULL, NULL, 11),
  -- Staraptor - Agility - Level 41
  (398, 39800, 97, 27, NULL, 1, 41, NULL, NULL, NULL, 12),
  -- Staraptor - Air Slash - Level 44
  (398, 39800, 403, 27, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Staraptor - Brave Bird - Level 49
  (398, 39800, 413, 27, NULL, 1, 49, NULL, NULL, NULL, 14),
  -- Staraptor - Close Combat - Evolution
  (398, 39800, 370, 27, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Staraptor - Brick Break - TM010
  (398, 39800, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 16),
  -- Staraptor - Bulk Up - TM011
  (398, 39800, 339, 27, NULL, 2, NULL, NULL, 26002011, NULL, 17),
  -- Staraptor - Protect - TM017
  (398, 39800, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Staraptor - Aerial Ace - TM022
  (398, 39800, 332, 27, NULL, 2, NULL, NULL, 26002022, NULL, 19),
  -- Staraptor - Swift - TM027
  (398, 39800, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 20),
  -- Staraptor - Double Team - TM032
  (398, 39800, 104, 27, NULL, 2, NULL, NULL, 26002032, NULL, 21),
  -- Staraptor - Endure - TM035
  (398, 39800, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Staraptor - Fly - TM043
  (398, 39800, 19, 27, NULL, 2, NULL, NULL, 26002043, NULL, 23),
  -- Staraptor - Hyper Beam - TM044
  (398, 39800, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 24),
  -- Staraptor - Knock Off - TM045
  (398, 39800, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 25),
  -- Staraptor - Agility - TM047
  (398, 39800, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 26),
  -- Staraptor - Giga Impact - TM055
  (398, 39800, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 27),
  -- Staraptor - Double-Edge - TM056
  (398, 39800, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 28),
  -- Staraptor - Heat Wave - TM068
  (398, 39800, 257, 27, NULL, 2, NULL, NULL, 26002068, NULL, 29),
  -- Staraptor - Hurricane - TM079
  (398, 39800, 542, 27, NULL, 2, NULL, NULL, 26002079, NULL, 30),
  -- Staraptor - U-turn - TM082
  (398, 39800, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 31),
  -- Staraptor - Substitute - TM085
  (398, 39800, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 32),
  -- Staraptor - Outrage - TM093
  (398, 39800, 200, 27, NULL, 2, NULL, NULL, 26002093, NULL, 33),
  -- Staraptor - Whirlwind - TM094
  (398, 39800, 18, 27, NULL, 2, NULL, NULL, 26002094, NULL, 34),
  -- Staraptor - Focus Blast - TM102
  (398, 39800, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 35),
  -- Staraptor - Work Up - TM103
  (398, 39800, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 36),
  -- Staraptor - Close Combat - TM107
  (398, 39800, 370, 27, NULL, 2, NULL, NULL, 26002107, NULL, 37),
  -- Staraptor - Facade - TM109
  (398, 39800, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 38),
  -- Staraptor - Low Sweep - TM113
  (398, 39800, 490, 27, NULL, 2, NULL, NULL, 27002113, NULL, 39),
  -- Staraptor - Ominous Wind - TM119
  (398, 39800, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 40),
  -- Staraptor - Torment - TM121
  (398, 39800, 259, 27, NULL, 2, NULL, NULL, 27002121, NULL, 41),
  -- Staraptor - Blaze Kick - TM133
  (398, 39800, 299, 27, NULL, 2, NULL, NULL, 27002133, NULL, 42),
  -- Staraptor - Dual Wingbeat - TM134
  (398, 39800, 814, 27, NULL, 2, NULL, NULL, 27002134, NULL, 43),
  -- Staraptor - Swagger - TM139
  (398, 39800, 207, 27, NULL, 2, NULL, NULL, 27002139, NULL, 44),
  -- Staraptor - Razor Wind - TM145
  (398, 39800, 13, 27, NULL, 2, NULL, NULL, 27002145, NULL, 45),
  -- Staraptor - Skull Bash - TM146
  (398, 39800, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 46),
  -- Staraptor - Vacuum Wave - TM150
  (398, 39800, 410, 27, NULL, 2, NULL, NULL, 27002150, NULL, 47),
  -- Staraptor - Sky Attack - TM153
  (398, 39800, 143, 27, NULL, 2, NULL, NULL, 27002153, NULL, 48);
