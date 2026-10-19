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
-- Mega Dimension learnset delta rows for species 501-550.
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
  -- Patrat - Facade - TM109
  (504, 50400, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Patrat - Seed Bomb - TM128
  (504, 50400, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 2),
  -- Watchog - Facade - TM109
  (505, 50500, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Watchog - Seed Bomb - TM128
  (505, 50500, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 2),
  -- Watchog - Skull Bash - TM146
  (505, 50500, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 3),
  -- Purrloin - Growl - Level 1
  (509, 50900, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Purrloin - Quick Attack - Level 1
  (509, 50900, 98, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Purrloin - Mimic - Level 1
  (509, 50900, 102, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Purrloin - Fake Out - Level 1
  (509, 50900, 252, 27, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Purrloin - Lick - Level 9
  (509, 50900, 122, 27, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Purrloin - Bite - Level 12
  (509, 50900, 44, 27, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Purrloin - Torment - Level 16
  (509, 50900, 259, 27, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Purrloin - Fake Tears - Level 19
  (509, 50900, 313, 27, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Purrloin - Slash - Level 24
  (509, 50900, 163, 27, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Purrloin - Screech - Level 26
  (509, 50900, 103, 27, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Purrloin - Nasty Plot - Level 32
  (509, 50900, 417, 27, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Purrloin - Night Slash - Level 38
  (509, 50900, 400, 27, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Purrloin - Parting Shot - Level 44
  (509, 50900, 575, 27, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Purrloin - Play Rough - Level 52
  (509, 50900, 583, 27, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Purrloin - Thunder Wave - TM008
  (509, 50900, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 15),
  -- Purrloin - Protect - TM017
  (509, 50900, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Purrloin - Play Rough - TM020
  (509, 50900, 583, 27, NULL, 2, NULL, NULL, 26002020, NULL, 17),
  -- Purrloin - Swift - TM027
  (509, 50900, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 18),
  -- Purrloin - Double Team - TM032
  (509, 50900, 104, 27, NULL, 2, NULL, NULL, 26002032, NULL, 19),
  -- Purrloin - Night Slash - TM034
  (509, 50900, 400, 27, NULL, 2, NULL, NULL, 26002034, NULL, 20),
  -- Purrloin - Endure - TM035
  (509, 50900, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 21),
  -- Purrloin - Knock Off - TM045
  (509, 50900, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 22),
  -- Purrloin - Agility - TM047
  (509, 50900, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 23),
  -- Purrloin - Shadow Claw - TM061
  (509, 50900, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 24),
  -- Purrloin - Hyper Voice - TM071
  (509, 50900, 304, 27, NULL, 2, NULL, NULL, 26002071, NULL, 25),
  -- Purrloin - Shadow Ball - TM074
  (509, 50900, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 26),
  -- Purrloin - U-turn - TM082
  (509, 50900, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 27),
  -- Purrloin - Nasty Plot - TM083
  (509, 50900, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 28),
  -- Purrloin - Substitute - TM085
  (509, 50900, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 29),
  -- Purrloin - Iron Tail - TM087
  (509, 50900, 231, 27, NULL, 2, NULL, NULL, 26002087, NULL, 30),
  -- Purrloin - Dark Pulse - TM090
  (509, 50900, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 31),
  -- Purrloin - Taunt - TM095
  (509, 50900, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 32),
  -- Purrloin - Gunk Shot - TM100
  (509, 50900, 441, 27, NULL, 2, NULL, NULL, 26002100, NULL, 33),
  -- Purrloin - Facade - TM109
  (509, 50900, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 34),
  -- Purrloin - Pay Day - TM116
  (509, 50900, 6, 27, NULL, 2, NULL, NULL, 27002116, NULL, 35),
  -- Purrloin - Torment - TM121
  (509, 50900, 259, 27, NULL, 2, NULL, NULL, 27002121, NULL, 36),
  -- Purrloin - Mimic - TM125
  (509, 50900, 102, 27, NULL, 2, NULL, NULL, 27002125, NULL, 37),
  -- Purrloin - Seed Bomb - TM128
  (509, 50900, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 38),
  -- Purrloin - Double Hit - TM132
  (509, 50900, 458, 27, NULL, 2, NULL, NULL, 27002132, NULL, 39),
  -- Purrloin - Swagger - TM139
  (509, 50900, 207, 27, NULL, 2, NULL, NULL, 27002139, NULL, 40),
  -- Purrloin - Fake Out - TM141
  (509, 50900, 252, 27, NULL, 2, NULL, NULL, 27002141, NULL, 41),
  -- Purrloin - First Impression - TM142
  (509, 50900, 660, 27, NULL, 2, NULL, NULL, 27002142, NULL, 42),
  -- Liepard - Growl - Level 1
  (510, 51000, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Liepard - Quick Attack - Level 1
  (510, 51000, 98, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Liepard - Mimic - Level 1
  (510, 51000, 102, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Liepard - Fake Out - Level 1
  (510, 51000, 252, 27, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Liepard - Lick - Level 9
  (510, 51000, 122, 27, NULL, 1, 9, NULL, NULL, NULL, 5),
  -- Liepard - Bite - Level 12
  (510, 51000, 44, 27, NULL, 1, 12, NULL, NULL, NULL, 6),
  -- Liepard - Torment - Level 16
  (510, 51000, 259, 27, NULL, 1, 16, NULL, NULL, NULL, 7),
  -- Liepard - Fake Tears - Level 19
  (510, 51000, 313, 27, NULL, 1, 19, NULL, NULL, NULL, 8),
  -- Liepard - Slash - Level 24
  (510, 51000, 163, 27, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Liepard - Screech - Level 26
  (510, 51000, 103, 27, NULL, 1, 26, NULL, NULL, NULL, 10),
  -- Liepard - Nasty Plot - Level 32
  (510, 51000, 417, 27, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Liepard - Night Slash - Level 38
  (510, 51000, 400, 27, NULL, 1, 38, NULL, NULL, NULL, 12),
  -- Liepard - Parting Shot - Level 44
  (510, 51000, 575, 27, NULL, 1, 44, NULL, NULL, NULL, 13),
  -- Liepard - Play Rough - Level 52
  (510, 51000, 583, 27, NULL, 1, 52, NULL, NULL, NULL, 14),
  -- Liepard - Thunder Wave - TM008
  (510, 51000, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 15),
  -- Liepard - Fire Fang - TM014
  (510, 51000, 424, 27, NULL, 2, NULL, NULL, 26002014, NULL, 16),
  -- Liepard - Ice Fang - TM015
  (510, 51000, 423, 27, NULL, 2, NULL, NULL, 26002015, NULL, 17),
  -- Liepard - Protect - TM017
  (510, 51000, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Liepard - Play Rough - TM020
  (510, 51000, 583, 27, NULL, 2, NULL, NULL, 26002020, NULL, 19),
  -- Liepard - Thunder Fang - TM021
  (510, 51000, 422, 27, NULL, 2, NULL, NULL, 26002021, NULL, 20),
  -- Liepard - Crunch - TM025
  (510, 51000, 242, 27, NULL, 2, NULL, NULL, 26002025, NULL, 21),
  -- Liepard - Swift - TM027
  (510, 51000, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 22),
  -- Liepard - Swords Dance - TM030
  (510, 51000, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 23),
  -- Liepard - Double Team - TM032
  (510, 51000, 104, 27, NULL, 2, NULL, NULL, 26002032, NULL, 24),
  -- Liepard - Night Slash - TM034
  (510, 51000, 400, 27, NULL, 2, NULL, NULL, 26002034, NULL, 25),
  -- Liepard - Endure - TM035
  (510, 51000, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 26),
  -- Liepard - Hyper Beam - TM044
  (510, 51000, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 27),
  -- Liepard - Knock Off - TM045
  (510, 51000, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 28),
  -- Liepard - Agility - TM047
  (510, 51000, 97, 27, NULL, 2, NULL, NULL, 26002047, NULL, 29),
  -- Liepard - Giga Impact - TM055
  (510, 51000, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 30),
  -- Liepard - Shadow Claw - TM061
  (510, 51000, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 31),
  -- Liepard - Hyper Voice - TM071
  (510, 51000, 304, 27, NULL, 2, NULL, NULL, 26002071, NULL, 32),
  -- Liepard - Shadow Ball - TM074
  (510, 51000, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 33),
  -- Liepard - X-Scissor - TM081
  (510, 51000, 404, 27, NULL, 2, NULL, NULL, 26002081, NULL, 34),
  -- Liepard - U-turn - TM082
  (510, 51000, 369, 27, NULL, 2, NULL, NULL, 26002082, NULL, 35),
  -- Liepard - Nasty Plot - TM083
  (510, 51000, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 36),
  -- Liepard - Substitute - TM085
  (510, 51000, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 37),
  -- Liepard - Iron Tail - TM087
  (510, 51000, 231, 27, NULL, 2, NULL, NULL, 26002087, NULL, 38),
  -- Liepard - Dark Pulse - TM090
  (510, 51000, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 39),
  -- Liepard - Taunt - TM095
  (510, 51000, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 40),
  -- Liepard - Gunk Shot - TM100
  (510, 51000, 441, 27, NULL, 2, NULL, NULL, 26002100, NULL, 41),
  -- Liepard - Facade - TM109
  (510, 51000, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 42),
  -- Liepard - Pay Day - TM116
  (510, 51000, 6, 27, NULL, 2, NULL, NULL, 27002116, NULL, 43),
  -- Liepard - Torment - TM121
  (510, 51000, 259, 27, NULL, 2, NULL, NULL, 27002121, NULL, 44),
  -- Liepard - Psychic Fangs - TM124
  (510, 51000, 706, 27, NULL, 2, NULL, NULL, 27002124, NULL, 45),
  -- Liepard - Mimic - TM125
  (510, 51000, 102, 27, NULL, 2, NULL, NULL, 27002125, NULL, 46),
  -- Liepard - Seed Bomb - TM128
  (510, 51000, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 47),
  -- Liepard - Double Hit - TM132
  (510, 51000, 458, 27, NULL, 2, NULL, NULL, 27002132, NULL, 48),
  -- Liepard - Swagger - TM139
  (510, 51000, 207, 27, NULL, 2, NULL, NULL, 27002139, NULL, 49),
  -- Liepard - Fake Out - TM141
  (510, 51000, 252, 27, NULL, 2, NULL, NULL, 27002141, NULL, 50),
  -- Liepard - First Impression - TM142
  (510, 51000, 660, 27, NULL, 2, NULL, NULL, 27002142, NULL, 51),
  -- Pansage - Facade - TM109
  (511, 51100, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Pansage - Low Sweep - TM113
  (511, 51100, 490, 27, NULL, 2, NULL, NULL, 27002113, NULL, 2),
  -- Pansage - Trailblaze - TM115
  (511, 51100, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Pansage - Torment - TM121
  (511, 51100, 259, 27, NULL, 2, NULL, NULL, 27002121, NULL, 4),
  -- Pansage - Seed Bomb - TM128
  (511, 51100, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 5),
  -- Simisage - Facade - TM109
  (512, 51200, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Simisage - Low Sweep - TM113
  (512, 51200, 490, 27, NULL, 2, NULL, NULL, 27002113, NULL, 2),
  -- Simisage - Trailblaze - TM115
  (512, 51200, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Simisage - Torment - TM121
  (512, 51200, 259, 27, NULL, 2, NULL, NULL, 27002121, NULL, 4),
  -- Simisage - Seed Bomb - TM128
  (512, 51200, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 5),
  -- Simisage - Drain Punch - TM131
  (512, 51200, 409, 27, NULL, 2, NULL, NULL, 27002131, NULL, 6),
  -- Simisage - Fake Out - TM141
  (512, 51200, 252, 27, NULL, 2, NULL, NULL, 27002141, NULL, 7),
  -- Simisage - Solar Blade - TM152
  (512, 51200, 669, 27, NULL, 2, NULL, NULL, 27002152, NULL, 8),
  -- Pansear - Facade - TM109
  (513, 51300, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Pansear - Low Sweep - TM113
  (513, 51300, 490, 27, NULL, 2, NULL, NULL, 27002113, NULL, 2),
  -- Simisear - Facade - TM109
  (514, 51400, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Simisear - Low Sweep - TM113
  (514, 51400, 490, 27, NULL, 2, NULL, NULL, 27002113, NULL, 2),
  -- Simisear - Flame Charge - TM114
  (514, 51400, 488, 27, NULL, 2, NULL, NULL, 27002114, NULL, 3),
  -- Simisear - Blaze Kick - TM133
  (514, 51400, 299, 27, NULL, 2, NULL, NULL, 27002133, NULL, 4),
  -- Simisear - Scorching Sands - TM136
  (514, 51400, 815, 27, NULL, 2, NULL, NULL, 27002136, NULL, 5),
  -- Simisear - Fake Out - TM141
  (514, 51400, 252, 27, NULL, 2, NULL, NULL, 27002141, NULL, 6),
  -- Panpour - Facade - TM109
  (515, 51500, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Panpour - Chilling Water - TM110
  (515, 51500, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Panpour - Low Sweep - TM113
  (515, 51500, 490, 27, NULL, 2, NULL, NULL, 27002113, NULL, 3),
  -- Panpour - Scald - TM148
  (515, 51500, 503, 27, NULL, 2, NULL, NULL, 27002148, NULL, 4),
  -- Simipour - Facade - TM109
  (516, 51600, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Simipour - Chilling Water - TM110
  (516, 51600, 886, 27, NULL, 2, NULL, NULL, 27002110, NULL, 2),
  -- Simipour - Low Sweep - TM113
  (516, 51600, 490, 27, NULL, 2, NULL, NULL, 27002113, NULL, 3),
  -- Simipour - Fake Out - TM141
  (516, 51600, 252, 27, NULL, 2, NULL, NULL, 27002141, NULL, 4),
  -- Simipour - Scald - TM148
  (516, 51600, 503, 27, NULL, 2, NULL, NULL, 27002148, NULL, 5),
  -- Munna - Hypnosis - Level 1
  (517, 51700, 95, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Munna - Psybeam - Level 8
  (517, 51700, 60, 27, NULL, 1, 8, NULL, NULL, NULL, 2),
  -- Munna - Amnesia - Level 12
  (517, 51700, 133, 27, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Munna - Moonlight - Level 16
  (517, 51700, 236, 27, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Munna - Charm - Level 21
  (517, 51700, 204, 27, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Munna - Zen Headbutt - Level 24
  (517, 51700, 428, 27, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Munna - Dream Eater - Level 28
  (517, 51700, 138, 27, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Munna - Calm Mind - Level 32
  (517, 51700, 347, 27, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Munna - Psychic - Level 36
  (517, 51700, 94, 27, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Munna - Moonblast - Level 40
  (517, 51700, 585, 27, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Munna - Future Sight - Level 48
  (517, 51700, 248, 27, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Munna - Psyshock - TM003
  (517, 51700, 473, 27, NULL, 2, NULL, NULL, 26002003, NULL, 12),
  -- Munna - Calm Mind - TM006
  (517, 51700, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 13),
  -- Munna - Thunder Wave - TM008
  (517, 51700, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 14),
  -- Munna - Rock Slide - TM012
  (517, 51700, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 15),
  -- Munna - Light Screen - TM016
  (517, 51700, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 16),
  -- Munna - Protect - TM017
  (517, 51700, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Munna - Energy Ball - TM026
  (517, 51700, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 18),
  -- Munna - Swift - TM027
  (517, 51700, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 19),
  -- Munna - Reflect - TM031
  (517, 51700, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 20),
  -- Munna - Double Team - TM032
  (517, 51700, 104, 27, NULL, 2, NULL, NULL, 26002032, NULL, 21),
  -- Munna - Endure - TM035
  (517, 51700, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Munna - Rock Tomb - TM036
  (517, 51700, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 23),
  -- Munna - Safeguard - TM051
  (517, 51700, 219, 27, NULL, 2, NULL, NULL, 26002051, NULL, 24),
  -- Munna - Zen Headbutt - TM059
  (517, 51700, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 25),
  -- Munna - Future Sight - TM060
  (517, 51700, 248, 27, NULL, 2, NULL, NULL, 26002060, NULL, 26),
  -- Munna - Psychic - TM063
  (517, 51700, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 27),
  -- Munna - Shadow Ball - TM074
  (517, 51700, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 28),
  -- Munna - Substitute - TM085
  (517, 51700, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 29),
  -- Munna - Curse - TM091
  (517, 51700, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 30),
  -- Munna - Dazzling Gleam - TM092
  (517, 51700, 605, 27, NULL, 2, NULL, NULL, 26002092, NULL, 31),
  -- Munna - Heal Block - TM097
  (517, 51700, 377, 27, NULL, 2, NULL, NULL, 26002097, NULL, 32),
  -- Munna - Facade - TM109
  (517, 51700, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 33),
  -- Munna - Silver Wind - TM117
  (517, 51700, 318, 27, NULL, 2, NULL, NULL, 27002117, NULL, 34),
  -- Munna - Ominous Wind - TM119
  (517, 51700, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 35),
  -- Munna - Dream Eater - TM127
  (517, 51700, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 36),
  -- Munna - Tri Attack - TM147
  (517, 51700, 161, 27, NULL, 2, NULL, NULL, 27002147, NULL, 37),
  -- Musharna - Hypnosis - Level 1
  (518, 51800, 95, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Musharna - Psybeam - Level 8
  (518, 51800, 60, 27, NULL, 1, 8, NULL, NULL, NULL, 2),
  -- Musharna - Amnesia - Level 12
  (518, 51800, 133, 27, NULL, 1, 12, NULL, NULL, NULL, 3),
  -- Musharna - Moonlight - Level 16
  (518, 51800, 236, 27, NULL, 1, 16, NULL, NULL, NULL, 4),
  -- Musharna - Charm - Level 21
  (518, 51800, 204, 27, NULL, 1, 21, NULL, NULL, NULL, 5),
  -- Musharna - Zen Headbutt - Level 24
  (518, 51800, 428, 27, NULL, 1, 24, NULL, NULL, NULL, 6),
  -- Musharna - Dream Eater - Level 28
  (518, 51800, 138, 27, NULL, 1, 28, NULL, NULL, NULL, 7),
  -- Musharna - Calm Mind - Level 32
  (518, 51800, 347, 27, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Musharna - Psychic - Level 36
  (518, 51800, 94, 27, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Musharna - Moonblast - Level 40
  (518, 51800, 585, 27, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Musharna - Future Sight - Level 48
  (518, 51800, 248, 27, NULL, 1, 48, NULL, NULL, NULL, 11),
  -- Musharna - Psyshock - TM003
  (518, 51800, 473, 27, NULL, 2, NULL, NULL, 26002003, NULL, 12),
  -- Musharna - Calm Mind - TM006
  (518, 51800, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 13),
  -- Musharna - Thunder Wave - TM008
  (518, 51800, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 14),
  -- Musharna - Rock Slide - TM012
  (518, 51800, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 15),
  -- Musharna - Light Screen - TM016
  (518, 51800, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 16),
  -- Musharna - Protect - TM017
  (518, 51800, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Musharna - Energy Ball - TM026
  (518, 51800, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 18),
  -- Musharna - Swift - TM027
  (518, 51800, 129, 27, NULL, 2, NULL, NULL, 26002027, NULL, 19),
  -- Musharna - Reflect - TM031
  (518, 51800, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 20),
  -- Musharna - Double Team - TM032
  (518, 51800, 104, 27, NULL, 2, NULL, NULL, 26002032, NULL, 21),
  -- Musharna - Endure - TM035
  (518, 51800, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Musharna - Rock Tomb - TM036
  (518, 51800, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 23),
  -- Musharna - Hyper Beam - TM044
  (518, 51800, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 24),
  -- Musharna - Safeguard - TM051
  (518, 51800, 219, 27, NULL, 2, NULL, NULL, 26002051, NULL, 25),
  -- Musharna - Giga Impact - TM055
  (518, 51800, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 26),
  -- Musharna - Zen Headbutt - TM059
  (518, 51800, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 27),
  -- Musharna - Future Sight - TM060
  (518, 51800, 248, 27, NULL, 2, NULL, NULL, 26002060, NULL, 28),
  -- Musharna - Psychic - TM063
  (518, 51800, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 29),
  -- Musharna - Shadow Ball - TM074
  (518, 51800, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 30),
  -- Musharna - Substitute - TM085
  (518, 51800, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 31),
  -- Musharna - Curse - TM091
  (518, 51800, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 32),
  -- Musharna - Dazzling Gleam - TM092
  (518, 51800, 605, 27, NULL, 2, NULL, NULL, 26002092, NULL, 33),
  -- Musharna - Heal Block - TM097
  (518, 51800, 377, 27, NULL, 2, NULL, NULL, 26002097, NULL, 34),
  -- Musharna - Facade - TM109
  (518, 51800, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 35),
  -- Musharna - Silver Wind - TM117
  (518, 51800, 318, 27, NULL, 2, NULL, NULL, 27002117, NULL, 36),
  -- Musharna - Ominous Wind - TM119
  (518, 51800, 466, 27, NULL, 2, NULL, NULL, 27002119, NULL, 37),
  -- Musharna - Dream Eater - TM127
  (518, 51800, 138, 27, NULL, 2, NULL, NULL, 27002127, NULL, 38),
  -- Musharna - Charge Beam - TM130
  (518, 51800, 451, 27, NULL, 2, NULL, NULL, 27002130, NULL, 39),
  -- Musharna - Tri Attack - TM147
  (518, 51800, 161, 27, NULL, 2, NULL, NULL, 27002147, NULL, 40),
  -- Drilbur - Facade - TM109
  (529, 52900, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Drilbur - Scorching Sands - TM136
  (529, 52900, 815, 27, NULL, 2, NULL, NULL, 27002136, NULL, 2),
  -- Drilbur - Fissure - TM154
  (529, 52900, 90, 27, NULL, 2, NULL, NULL, 27002154, NULL, 3),
  -- Excadrill - Facade - TM109
  (530, 53000, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Excadrill - Scorching Sands - TM136
  (530, 53000, 815, 27, NULL, 2, NULL, NULL, 27002136, NULL, 2),
  -- Excadrill - Skull Bash - TM146
  (530, 53000, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 3),
  -- Excadrill - Fissure - TM154
  (530, 53000, 90, 27, NULL, 2, NULL, NULL, 27002154, NULL, 4),
  -- Excadrill - Steel Beam - TM157
  (530, 53000, 796, 27, NULL, 2, NULL, NULL, 27002157, NULL, 5),
  -- Audino - Facade - TM109
  (531, 53100, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Audino - Drain Punch - TM131
  (531, 53100, 409, 27, NULL, 2, NULL, NULL, 27002131, NULL, 2),
  -- Audino - Tri Attack - TM147
  (531, 53100, 161, 27, NULL, 2, NULL, NULL, 27002147, NULL, 3),
  -- Throh - Leer - Level 1
  (538, 53800, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Throh - Circle Throw - Level 1
  (538, 53800, 509, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Throh - Focus Energy - Level 5
  (538, 53800, 116, 27, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Throh - Brutal Swing - Level 10
  (538, 53800, 693, 27, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Throh - Rollout - Level 13
  (538, 53800, 205, 27, NULL, 1, 13, NULL, NULL, NULL, 5),
  -- Throh - Rock Blast - Level 20
  (538, 53800, 350, 27, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Throh - Bulk Up - Level 25
  (538, 53800, 339, 27, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Throh - Low Sweep - Level 28
  (538, 53800, 490, 27, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Throh - Brick Break - Level 33
  (538, 53800, 280, 27, NULL, 1, 33, NULL, NULL, NULL, 9),
  -- Throh - Endure - Level 36
  (538, 53800, 203, 27, NULL, 1, 36, NULL, NULL, NULL, 10),
  -- Throh - Amnesia - Level 41
  (538, 53800, 133, 27, NULL, 1, 41, NULL, NULL, NULL, 11),
  -- Throh - Outrage - Level 43
  (538, 53800, 200, 27, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Throh - Storm Throw - Level 52
  (538, 53800, 480, 27, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Throh - Dynamic Punch - Level 58
  (538, 53800, 223, 27, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Throh - Rock Smash - TM004
  (538, 53800, 249, 27, NULL, 2, NULL, NULL, 26002004, NULL, 15),
  -- Throh - Brick Break - TM010
  (538, 53800, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 16),
  -- Throh - Bulk Up - TM011
  (538, 53800, 339, 27, NULL, 2, NULL, NULL, 26002011, NULL, 17),
  -- Throh - Rock Slide - TM012
  (538, 53800, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 18),
  -- Throh - Protect - TM017
  (538, 53800, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Throh - Power-Up Punch - TM018
  (538, 53800, 612, 27, NULL, 2, NULL, NULL, 26002018, NULL, 20),
  -- Throh - Thunder Punch - TM023
  (538, 53800, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 21),
  -- Throh - Ice Punch - TM024
  (538, 53800, 8, 27, NULL, 2, NULL, NULL, 26002024, NULL, 22),
  -- Throh - Dig - TM028
  (538, 53800, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 23),
  -- Throh - Fire Punch - TM029
  (538, 53800, 7, 27, NULL, 2, NULL, NULL, 26002029, NULL, 24),
  -- Throh - Body Slam - TM033
  (538, 53800, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 25),
  -- Throh - Endure - TM035
  (538, 53800, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 26),
  -- Throh - Rock Tomb - TM036
  (538, 53800, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 27),
  -- Throh - Giga Impact - TM055
  (538, 53800, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 28),
  -- Throh - Iron Head - TM058
  (538, 53800, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 29),
  -- Throh - Zen Headbutt - TM059
  (538, 53800, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 30),
  -- Throh - Stone Edge - TM065
  (538, 53800, 444, 27, NULL, 2, NULL, NULL, 26002065, NULL, 31),
  -- Throh - Earthquake - TM069
  (538, 53800, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 32),
  -- Throh - Poison Jab - TM077
  (538, 53800, 398, 27, NULL, 2, NULL, NULL, 26002077, NULL, 33),
  -- Throh - Bulldoze - TM078
  (538, 53800, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 34),
  -- Throh - Iron Defense - TM080
  (538, 53800, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 35),
  -- Throh - Substitute - TM085
  (538, 53800, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 36),
  -- Throh - Outrage - TM093
  (538, 53800, 200, 27, NULL, 2, NULL, NULL, 26002093, NULL, 37),
  -- Throh - Taunt - TM095
  (538, 53800, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 38),
  -- Throh - Gunk Shot - TM100
  (538, 53800, 441, 27, NULL, 2, NULL, NULL, 26002100, NULL, 39),
  -- Throh - Focus Blast - TM102
  (538, 53800, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 40),
  -- Throh - Work Up - TM103
  (538, 53800, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 41),
  -- Throh - Close Combat - TM107
  (538, 53800, 370, 27, NULL, 2, NULL, NULL, 26002107, NULL, 42),
  -- Throh - Facade - TM109
  (538, 53800, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 43),
  -- Throh - Low Sweep - TM113
  (538, 53800, 490, 27, NULL, 2, NULL, NULL, 27002113, NULL, 44),
  -- Throh - Seed Bomb - TM128
  (538, 53800, 402, 27, NULL, 2, NULL, NULL, 27002128, NULL, 45),
  -- Throh - Circle Throw - TM129
  (538, 53800, 509, 27, NULL, 2, NULL, NULL, 27002129, NULL, 46),
  -- Throh - Storm Throw - TM137
  (538, 53800, 480, 27, NULL, 2, NULL, NULL, 27002137, NULL, 47),
  -- Throh - Skull Bash - TM146
  (538, 53800, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 48),
  -- Sawk - Leer - Level 1
  (539, 53900, 43, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Sawk - Rock Smash - Level 1
  (539, 53900, 249, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Sawk - Focus Energy - Level 5
  (539, 53900, 116, 27, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Sawk - Detect - Level 10
  (539, 53900, 197, 27, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Sawk - Mach Punch - Level 12
  (539, 53900, 183, 27, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Sawk - Knock Off - Level 15
  (539, 53900, 282, 27, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Sawk - Power-Up Punch - Level 18
  (539, 53900, 612, 27, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Sawk - Low Sweep - Level 20
  (539, 53900, 490, 27, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Sawk - Bulk Up - Level 25
  (539, 53900, 339, 27, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Sawk - Brick Break - Level 33
  (539, 53900, 280, 27, NULL, 1, 33, NULL, NULL, NULL, 10),
  -- Sawk - Endure - Level 36
  (539, 53900, 203, 27, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Sawk - Outrage - Level 43
  (539, 53900, 200, 27, NULL, 1, 43, NULL, NULL, NULL, 12),
  -- Sawk - Close Combat - Level 52
  (539, 53900, 370, 27, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Sawk - Dynamic Punch - Level 58
  (539, 53900, 223, 27, NULL, 1, 58, NULL, NULL, NULL, 14),
  -- Sawk - Rock Smash - TM004
  (539, 53900, 249, 27, NULL, 2, NULL, NULL, 26002004, NULL, 15),
  -- Sawk - Brick Break - TM010
  (539, 53900, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 16),
  -- Sawk - Bulk Up - TM011
  (539, 53900, 339, 27, NULL, 2, NULL, NULL, 26002011, NULL, 17),
  -- Sawk - Rock Slide - TM012
  (539, 53900, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 18),
  -- Sawk - Protect - TM017
  (539, 53900, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Sawk - Power-Up Punch - TM018
  (539, 53900, 612, 27, NULL, 2, NULL, NULL, 26002018, NULL, 20),
  -- Sawk - Thunder Punch - TM023
  (539, 53900, 9, 27, NULL, 2, NULL, NULL, 26002023, NULL, 21),
  -- Sawk - Ice Punch - TM024
  (539, 53900, 8, 27, NULL, 2, NULL, NULL, 26002024, NULL, 22),
  -- Sawk - Dig - TM028
  (539, 53900, 91, 27, NULL, 2, NULL, NULL, 26002028, NULL, 23),
  -- Sawk - Fire Punch - TM029
  (539, 53900, 7, 27, NULL, 2, NULL, NULL, 26002029, NULL, 24),
  -- Sawk - Swords Dance - TM030
  (539, 53900, 14, 27, NULL, 2, NULL, NULL, 26002030, NULL, 25),
  -- Sawk - Body Slam - TM033
  (539, 53900, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 26),
  -- Sawk - Endure - TM035
  (539, 53900, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 27),
  -- Sawk - Rock Tomb - TM036
  (539, 53900, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 28),
  -- Sawk - Knock Off - TM045
  (539, 53900, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 29),
  -- Sawk - Giga Impact - TM055
  (539, 53900, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 30),
  -- Sawk - Iron Head - TM058
  (539, 53900, 442, 27, NULL, 2, NULL, NULL, 26002058, NULL, 31),
  -- Sawk - Zen Headbutt - TM059
  (539, 53900, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 32),
  -- Sawk - Stone Edge - TM065
  (539, 53900, 444, 27, NULL, 2, NULL, NULL, 26002065, NULL, 33),
  -- Sawk - Earthquake - TM069
  (539, 53900, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 34),
  -- Sawk - Poison Jab - TM077
  (539, 53900, 398, 27, NULL, 2, NULL, NULL, 26002077, NULL, 35),
  -- Sawk - Bulldoze - TM078
  (539, 53900, 523, 27, NULL, 2, NULL, NULL, 26002078, NULL, 36),
  -- Sawk - Substitute - TM085
  (539, 53900, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 37),
  -- Sawk - Outrage - TM093
  (539, 53900, 200, 27, NULL, 2, NULL, NULL, 26002093, NULL, 38),
  -- Sawk - Taunt - TM095
  (539, 53900, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 39),
  -- Sawk - Focus Blast - TM102
  (539, 53900, 411, 27, NULL, 2, NULL, NULL, 26002102, NULL, 40),
  -- Sawk - Work Up - TM103
  (539, 53900, 526, 27, NULL, 2, NULL, NULL, 26002103, NULL, 41),
  -- Sawk - Close Combat - TM107
  (539, 53900, 370, 27, NULL, 2, NULL, NULL, 26002107, NULL, 42),
  -- Sawk - Comet Punch - TM108
  (539, 53900, 4, 27, NULL, 2, NULL, NULL, 27002108, NULL, 43),
  -- Sawk - Facade - TM109
  (539, 53900, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 44),
  -- Sawk - Low Sweep - TM113
  (539, 53900, 490, 27, NULL, 2, NULL, NULL, 27002113, NULL, 45),
  -- Sawk - Drain Punch - TM131
  (539, 53900, 409, 27, NULL, 2, NULL, NULL, 27002131, NULL, 46),
  -- Sawk - Blaze Kick - TM133
  (539, 53900, 299, 27, NULL, 2, NULL, NULL, 27002133, NULL, 47),
  -- Sawk - Dual Chop - TM135
  (539, 53900, 530, 27, NULL, 2, NULL, NULL, 27002135, NULL, 48),
  -- Venipede - Facade - TM109
  (543, 54300, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Whirlipede - Facade - TM109
  (544, 54400, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Scolipede - Facade - TM109
  (545, 54500, 263, 27, NULL, 2, NULL, NULL, 27002109, NULL, 1),
  -- Scolipede - Acid Spray - TM112
  (545, 54500, 491, 27, NULL, 2, NULL, NULL, 27002112, NULL, 2),
  -- Scolipede - Trailblaze - TM115
  (545, 54500, 885, 27, NULL, 2, NULL, NULL, 27002115, NULL, 3),
  -- Scolipede - Double Hit - TM132
  (545, 54500, 458, 27, NULL, 2, NULL, NULL, 27002132, NULL, 4),
  -- Scolipede - First Impression - TM142
  (545, 54500, 660, 27, NULL, 2, NULL, NULL, 27002142, NULL, 5),
  -- Scolipede - Skull Bash - TM146
  (545, 54500, 130, 27, NULL, 2, NULL, NULL, 27002146, NULL, 6);
