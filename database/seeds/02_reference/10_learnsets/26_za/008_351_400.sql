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
-- Pokémon Legends: Z-A learnsets for species 351-400.
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
  -- Shuppet - Screech - Level 1
  (353, 35300, 103, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shuppet - Lick - Level 1
  (353, 35300, 122, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shuppet - Confuse Ray - Level 8
  (353, 35300, 109, 26, NULL, 1, 8, NULL, NULL, NULL, 3),
  -- Shuppet - Knock Off - Level 12
  (353, 35300, 282, 26, NULL, 1, 12, NULL, NULL, NULL, 4),
  -- Shuppet - Will-O-Wisp - Level 16
  (353, 35300, 261, 26, NULL, 1, 16, NULL, NULL, NULL, 5),
  -- Shuppet - Shadow Sneak - Level 19
  (353, 35300, 425, 26, NULL, 1, 19, NULL, NULL, NULL, 6),
  -- Shuppet - Shadow Claw - Level 23
  (353, 35300, 421, 26, NULL, 1, 23, NULL, NULL, NULL, 7),
  -- Shuppet - Curse - Level 26
  (353, 35300, 174, 26, NULL, 1, 26, NULL, NULL, NULL, 8),
  -- Shuppet - Shadow Ball - Level 30
  (353, 35300, 247, 26, NULL, 1, 30, NULL, NULL, NULL, 9),
  -- Shuppet - Swords Dance - Level 34
  (353, 35300, 14, 26, NULL, 1, 34, NULL, NULL, NULL, 10),
  -- Shuppet - Phantom Force - Level 42
  (353, 35300, 566, 26, NULL, 1, 42, NULL, NULL, NULL, 11),
  -- Shuppet - Gunk Shot - Level 48
  (353, 35300, 441, 26, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Shuppet - Headbutt - TM001
  (353, 35300, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 13),
  -- Shuppet - Calm Mind - TM006
  (353, 35300, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 14),
  -- Shuppet - Thunder Wave - TM008
  (353, 35300, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 15),
  -- Shuppet - Protect - TM017
  (353, 35300, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Shuppet - Swords Dance - TM030
  (353, 35300, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 17),
  -- Shuppet - Body Slam - TM033
  (353, 35300, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 18),
  -- Shuppet - Endure - TM035
  (353, 35300, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 19),
  -- Shuppet - Knock Off - TM045
  (353, 35300, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 20),
  -- Shuppet - Will-O-Wisp - TM057
  (353, 35300, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 21),
  -- Shuppet - Zen Headbutt - TM059
  (353, 35300, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 22),
  -- Shuppet - Shadow Claw - TM061
  (353, 35300, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 23),
  -- Shuppet - Psychic - TM063
  (353, 35300, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 24),
  -- Shuppet - Thunderbolt - TM067
  (353, 35300, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 25),
  -- Shuppet - Shadow Ball - TM074
  (353, 35300, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 26),
  -- Shuppet - Nasty Plot - TM083
  (353, 35300, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 27),
  -- Shuppet - Substitute - TM085
  (353, 35300, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 28),
  -- Shuppet - Dark Pulse - TM090
  (353, 35300, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 29),
  -- Shuppet - Curse - TM091
  (353, 35300, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 30),
  -- Shuppet - Dazzling Gleam - TM092
  (353, 35300, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 31),
  -- Shuppet - Taunt - TM095
  (353, 35300, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 32),
  -- Shuppet - Metronome - TM099
  (353, 35300, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 33),
  -- Shuppet - Gunk Shot - TM100
  (353, 35300, 441, 26, NULL, 2, NULL, NULL, 26002100, NULL, 34),
  -- Shuppet - Thunder - TM106
  (353, 35300, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 35),
  -- Shuppet - Facade - TM109
  (353, 35300, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 36),
  -- Shuppet - Dream Eater - TM127
  (353, 35300, 138, 26, NULL, 2, NULL, NULL, 26002127, NULL, 37),
  -- Shuppet - Charge Beam - TM130
  (353, 35300, 451, 26, NULL, 2, NULL, NULL, 26002130, NULL, 38),
  -- Banette - Screech - Level 1
  (354, 35400, 103, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Banette - Lick - Level 1
  (354, 35400, 122, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Banette - Slash - Level 1
  (354, 35400, 163, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Banette - Confuse Ray - Level 8
  (354, 35400, 109, 26, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Banette - Knock Off - Level 12
  (354, 35400, 282, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Banette - Will-O-Wisp - Level 16
  (354, 35400, 261, 26, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Banette - Shadow Sneak - Level 19
  (354, 35400, 425, 26, NULL, 1, 19, NULL, NULL, NULL, 7),
  -- Banette - Shadow Claw - Level 23
  (354, 35400, 421, 26, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Banette - Curse - Level 26
  (354, 35400, 174, 26, NULL, 1, 26, NULL, NULL, NULL, 9),
  -- Banette - Shadow Ball - Level 30
  (354, 35400, 247, 26, NULL, 1, 30, NULL, NULL, NULL, 10),
  -- Banette - Swords Dance - Level 34
  (354, 35400, 14, 26, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Banette - Phantom Force - Level 42
  (354, 35400, 566, 26, NULL, 1, 42, NULL, NULL, NULL, 12),
  -- Banette - Gunk Shot - Level 48
  (354, 35400, 441, 26, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Banette - Headbutt - TM001
  (354, 35400, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 14),
  -- Banette - Calm Mind - TM006
  (354, 35400, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 15),
  -- Banette - Thunder Wave - TM008
  (354, 35400, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 16),
  -- Banette - Protect - TM017
  (354, 35400, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Banette - Swords Dance - TM030
  (354, 35400, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 18),
  -- Banette - Body Slam - TM033
  (354, 35400, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 19),
  -- Banette - Endure - TM035
  (354, 35400, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 20),
  -- Banette - Hyper Beam - TM044
  (354, 35400, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 21),
  -- Banette - Knock Off - TM045
  (354, 35400, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 22),
  -- Banette - Giga Impact - TM055
  (354, 35400, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 23),
  -- Banette - Will-O-Wisp - TM057
  (354, 35400, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 24),
  -- Banette - Zen Headbutt - TM059
  (354, 35400, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 25),
  -- Banette - Shadow Claw - TM061
  (354, 35400, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 26),
  -- Banette - Psychic - TM063
  (354, 35400, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 27),
  -- Banette - Thunderbolt - TM067
  (354, 35400, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 28),
  -- Banette - Shadow Ball - TM074
  (354, 35400, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 29),
  -- Banette - Nasty Plot - TM083
  (354, 35400, 417, 26, NULL, 2, NULL, NULL, 26002083, NULL, 30),
  -- Banette - Substitute - TM085
  (354, 35400, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 31),
  -- Banette - Dark Pulse - TM090
  (354, 35400, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 32),
  -- Banette - Curse - TM091
  (354, 35400, 174, 26, NULL, 2, NULL, NULL, 26002091, NULL, 33),
  -- Banette - Dazzling Gleam - TM092
  (354, 35400, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 34),
  -- Banette - Taunt - TM095
  (354, 35400, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 35),
  -- Banette - Heal Block - TM097
  (354, 35400, 377, 26, NULL, 2, NULL, NULL, 26002097, NULL, 36),
  -- Banette - Metronome - TM099
  (354, 35400, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 37),
  -- Banette - Gunk Shot - TM100
  (354, 35400, 441, 26, NULL, 2, NULL, NULL, 26002100, NULL, 38),
  -- Banette - Thunder - TM106
  (354, 35400, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 39),
  -- Banette - Facade - TM109
  (354, 35400, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 40),
  -- Banette - Trailblaze - TM115
  (354, 35400, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 41),
  -- Banette - Shadow Punch - TM118
  (354, 35400, 325, 26, NULL, 2, NULL, NULL, 26002118, NULL, 42),
  -- Banette - Ominous Wind - TM119
  (354, 35400, 466, 26, NULL, 2, NULL, NULL, 26002119, NULL, 43),
  -- Banette - Torment - TM121
  (354, 35400, 259, 26, NULL, 2, NULL, NULL, 26002121, NULL, 44),
  -- Banette - Dream Eater - TM127
  (354, 35400, 138, 26, NULL, 2, NULL, NULL, 26002127, NULL, 45),
  -- Banette - Charge Beam - TM130
  (354, 35400, 451, 26, NULL, 2, NULL, NULL, 26002130, NULL, 46),
  -- Banette - Swagger - TM139
  (354, 35400, 207, 26, NULL, 2, NULL, NULL, 26002139, NULL, 47),
  -- Banette - Razor Wind - TM145
  (354, 35400, 13, 26, NULL, 2, NULL, NULL, 26002145, NULL, 48),
  -- Banette - Icicle Spear - TM149
  (354, 35400, 333, 26, NULL, 2, NULL, NULL, 26002149, NULL, 49),
  -- Banette - Vacuum Wave - TM150
  (354, 35400, 410, 26, NULL, 2, NULL, NULL, 26002150, NULL, 50),
  -- Absol - Leer - Level 1
  (359, 35900, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Absol - Quick Attack - Level 1
  (359, 35900, 98, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Absol - Confuse Ray - Level 1
  (359, 35900, 109, 26, NULL, 1, 1, NULL, NULL, 'Version 2.0.0 onwards.', 3),
  -- Absol - Shadow Sneak - Level 1
  (359, 35900, 425, 26, NULL, 1, 1, NULL, NULL, 'Version 2.0.0 onwards.', 4),
  -- Absol - Knock Off - Level 10
  (359, 35900, 282, 26, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Absol - Detect - Level 15
  (359, 35900, 197, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Absol - Swords Dance - Level 20
  (359, 35900, 14, 26, NULL, 1, 20, NULL, NULL, NULL, 7),
  -- Absol - Slash - Level 23
  (359, 35900, 163, 26, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Absol - Night Slash - Level 27
  (359, 35900, 400, 26, NULL, 1, 27, NULL, NULL, NULL, 9),
  -- Absol - Double Team - Level 32
  (359, 35900, 104, 26, NULL, 1, 32, NULL, NULL, NULL, 10),
  -- Absol - Taunt - Level 36
  (359, 35900, 269, 26, NULL, 1, 36, NULL, NULL, NULL, 11),
  -- Absol - Shadow Claw - Level 40
  (359, 35900, 421, 26, NULL, 1, 40, NULL, NULL, NULL, 12),
  -- Absol - Focus Energy - Level 43
  (359, 35900, 116, 26, NULL, 1, 43, NULL, NULL, NULL, 13),
  -- Absol - Air Slash - Level 46
  (359, 35900, 403, 26, NULL, 1, 46, NULL, NULL, NULL, 14),
  -- Absol - Future Sight - Level 48
  (359, 35900, 248, 26, NULL, 1, 48, NULL, NULL, NULL, 15),
  -- Absol - Perish Song - Level 54
  (359, 35900, 195, 26, NULL, 1, 54, NULL, NULL, NULL, 16),
  -- Absol - Calm Mind - TM006
  (359, 35900, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 17),
  -- Absol - Thunder Wave - TM008
  (359, 35900, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 18),
  -- Absol - Rock Slide - TM012
  (359, 35900, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 19),
  -- Absol - Ice Beam - TM013
  (359, 35900, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 20),
  -- Absol - Protect - TM017
  (359, 35900, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 21),
  -- Absol - Play Rough - TM020
  (359, 35900, 583, 26, NULL, 2, NULL, NULL, 26002020, NULL, 22),
  -- Absol - Aerial Ace - TM022
  (359, 35900, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 23),
  -- Absol - Swift - TM027
  (359, 35900, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 24),
  -- Absol - Swords Dance - TM030
  (359, 35900, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 25),
  -- Absol - Double Team - TM032
  (359, 35900, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 26),
  -- Absol - Body Slam - TM033
  (359, 35900, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 27),
  -- Absol - Night Slash - TM034
  (359, 35900, 400, 26, NULL, 2, NULL, NULL, 26002034, NULL, 28),
  -- Absol - Endure - TM035
  (359, 35900, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 29),
  -- Absol - Rock Tomb - TM036
  (359, 35900, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 30),
  -- Absol - Fire Blast - TM038
  (359, 35900, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 31),
  -- Absol - Hyper Beam - TM044
  (359, 35900, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 32),
  -- Absol - Knock Off - TM045
  (359, 35900, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 33),
  -- Absol - Giga Impact - TM055
  (359, 35900, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 34),
  -- Absol - Double-Edge - TM056
  (359, 35900, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 35),
  -- Absol - Will-O-Wisp - TM057
  (359, 35900, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 36),
  -- Absol - Zen Headbutt - TM059
  (359, 35900, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 37),
  -- Absol - Future Sight - TM060
  (359, 35900, 248, 26, NULL, 2, NULL, NULL, 26002060, NULL, 38),
  -- Absol - Shadow Claw - TM061
  (359, 35900, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 39),
  -- Absol - Flamethrower - TM062
  (359, 35900, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 40),
  -- Absol - Stone Edge - TM065
  (359, 35900, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 41),
  -- Absol - Thunderbolt - TM067
  (359, 35900, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 42),
  -- Absol - Shadow Ball - TM074
  (359, 35900, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 43),
  -- Absol - X-Scissor - TM081
  (359, 35900, 404, 26, NULL, 2, NULL, NULL, 26002081, NULL, 44),
  -- Absol - Substitute - TM085
  (359, 35900, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 45),
  -- Absol - Dark Pulse - TM090
  (359, 35900, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 46),
  -- Absol - Taunt - TM095
  (359, 35900, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 47),
  -- Absol - Blizzard - TM105
  (359, 35900, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 48),
  -- Absol - Thunder - TM106
  (359, 35900, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 49),
  -- Absol - Close Combat - TM107
  (359, 35900, 370, 26, NULL, 2, NULL, NULL, 26002107, NULL, 50),
  -- Absol - Facade - TM109
  (359, 35900, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 51),
  -- Absol - Ominous Wind - TM119
  (359, 35900, 466, 26, NULL, 2, NULL, NULL, 26002119, NULL, 52),
  -- Absol - False Swipe - TM122
  (359, 35900, 206, 26, NULL, 2, NULL, NULL, 26002122, NULL, 53),
  -- Absol - Razor Wind - TM145
  (359, 35900, 13, 26, NULL, 2, NULL, NULL, 26002145, NULL, 54),
  -- Snorunt - Headbutt - Level 1
  (361, 36100, 29, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Snorunt - Leer - Level 1
  (361, 36100, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Snorunt - Bite - Level 1
  (361, 36100, 44, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Snorunt - Ice Shard - Level 10
  (361, 36100, 420, 26, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Snorunt - Protect - Level 15
  (361, 36100, 182, 26, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Snorunt - Icy Wind - Level 20
  (361, 36100, 196, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Snorunt - Fake Tears - Level 25
  (361, 36100, 313, 26, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Snorunt - Ice Fang - Level 30
  (361, 36100, 423, 26, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Snorunt - Double Team - Level 35
  (361, 36100, 104, 26, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Snorunt - Icicle Crash - Level 40
  (361, 36100, 556, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Snorunt - Crunch - Level 45
  (361, 36100, 242, 26, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Snorunt - Blizzard - Level 50
  (361, 36100, 59, 26, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Snorunt - Headbutt - TM001
  (361, 36100, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 13),
  -- Snorunt - Ice Beam - TM013
  (361, 36100, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 14),
  -- Snorunt - Ice Fang - TM015
  (361, 36100, 423, 26, NULL, 2, NULL, NULL, 26002015, NULL, 15),
  -- Snorunt - Light Screen - TM016
  (361, 36100, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 16),
  -- Snorunt - Protect - TM017
  (361, 36100, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Snorunt - Crunch - TM025
  (361, 36100, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 18),
  -- Snorunt - Double Team - TM032
  (361, 36100, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 19),
  -- Snorunt - Body Slam - TM033
  (361, 36100, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 20),
  -- Snorunt - Endure - TM035
  (361, 36100, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 21),
  -- Snorunt - Water Pulse - TM041
  (361, 36100, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 22),
  -- Snorunt - Icy Wind - TM049
  (361, 36100, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 23),
  -- Snorunt - Shadow Ball - TM074
  (361, 36100, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 24),
  -- Snorunt - Substitute - TM085
  (361, 36100, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 25),
  -- Snorunt - Spikes - TM088
  (361, 36100, 191, 26, NULL, 2, NULL, NULL, 26002088, NULL, 26),
  -- Snorunt - Blizzard - TM105
  (361, 36100, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 27),
  -- Snorunt - Facade - TM109
  (361, 36100, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 28),
  -- Snorunt - Chilling Water - TM110
  (361, 36100, 886, 26, NULL, 2, NULL, NULL, 26002110, NULL, 29),
  -- Snorunt - Trailblaze - TM115
  (361, 36100, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 30),
  -- Snorunt - Frost Breath - TM138
  (361, 36100, 524, 26, NULL, 2, NULL, NULL, 26002138, NULL, 31),
  -- Snorunt - Icicle Spear - TM149
  (361, 36100, 333, 26, NULL, 2, NULL, NULL, 26002149, NULL, 32),
  -- Glalie - Headbutt - Level 1
  (362, 36200, 29, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Glalie - Leer - Level 1
  (362, 36200, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Glalie - Bite - Level 1
  (362, 36200, 44, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Glalie - Ice Shard - Level 10
  (362, 36200, 420, 26, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Glalie - Protect - Level 15
  (362, 36200, 182, 26, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Glalie - Icy Wind - Level 20
  (362, 36200, 196, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Glalie - Fake Tears - Level 25
  (362, 36200, 313, 26, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Glalie - Ice Fang - Level 30
  (362, 36200, 423, 26, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Glalie - Double Team - Level 35
  (362, 36200, 104, 26, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Glalie - Icicle Crash - Level 40
  (362, 36200, 556, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Glalie - Crunch - Level 45
  (362, 36200, 242, 26, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Glalie - Blizzard - Level 50
  (362, 36200, 59, 26, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Glalie - Explosion - Level 55
  (362, 36200, 153, 26, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Glalie - Freeze-Dry - Evolution
  (362, 36200, 573, 26, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Glalie - Headbutt - TM001
  (362, 36200, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 15),
  -- Glalie - Ice Beam - TM013
  (362, 36200, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 16),
  -- Glalie - Ice Fang - TM015
  (362, 36200, 423, 26, NULL, 2, NULL, NULL, 26002015, NULL, 17),
  -- Glalie - Light Screen - TM016
  (362, 36200, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 18),
  -- Glalie - Protect - TM017
  (362, 36200, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Glalie - Crunch - TM025
  (362, 36200, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 20),
  -- Glalie - Double Team - TM032
  (362, 36200, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 21),
  -- Glalie - Body Slam - TM033
  (362, 36200, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 22),
  -- Glalie - Endure - TM035
  (362, 36200, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Glalie - Water Pulse - TM041
  (362, 36200, 352, 26, NULL, 2, NULL, NULL, 26002041, NULL, 24),
  -- Glalie - Hyper Beam - TM044
  (362, 36200, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 25),
  -- Glalie - Self-Destruct - TM048
  (362, 36200, 120, 26, NULL, 2, NULL, NULL, 26002048, NULL, 26),
  -- Glalie - Icy Wind - TM049
  (362, 36200, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 27),
  -- Glalie - Giga Impact - TM055
  (362, 36200, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 28),
  -- Glalie - Iron Head - TM058
  (362, 36200, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 29),
  -- Glalie - Earthquake - TM069
  (362, 36200, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 30),
  -- Glalie - Shadow Ball - TM074
  (362, 36200, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 31),
  -- Glalie - Substitute - TM085
  (362, 36200, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 32),
  -- Glalie - Spikes - TM088
  (362, 36200, 191, 26, NULL, 2, NULL, NULL, 26002088, NULL, 33),
  -- Glalie - Dark Pulse - TM090
  (362, 36200, 399, 26, NULL, 2, NULL, NULL, 26002090, NULL, 34),
  -- Glalie - Blizzard - TM105
  (362, 36200, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 35),
  -- Glalie - Facade - TM109
  (362, 36200, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 36),
  -- Glalie - Chilling Water - TM110
  (362, 36200, 886, 26, NULL, 2, NULL, NULL, 26002110, NULL, 37),
  -- Glalie - Trailblaze - TM115
  (362, 36200, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 38),
  -- Glalie - Ominous Wind - TM119
  (362, 36200, 466, 26, NULL, 2, NULL, NULL, 26002119, NULL, 39),
  -- Glalie - Frost Breath - TM138
  (362, 36200, 524, 26, NULL, 2, NULL, NULL, 26002138, NULL, 40),
  -- Glalie - Skull Bash - TM146
  (362, 36200, 130, 26, NULL, 2, NULL, NULL, 26002146, NULL, 41),
  -- Glalie - Icicle Spear - TM149
  (362, 36200, 333, 26, NULL, 2, NULL, NULL, 26002149, NULL, 42),
  -- Glalie - Sheer Cold - TM155
  (362, 36200, 329, 26, NULL, 2, NULL, NULL, 26002155, NULL, 43),
  -- Bagon - Leer - Level 1
  (371, 37100, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Bagon - Bite - Level 1
  (371, 37100, 44, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Bagon - Ember - Level 1
  (371, 37100, 52, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Bagon - Dragon Breath - Level 10
  (371, 37100, 225, 26, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Bagon - Headbutt - Level 15
  (371, 37100, 29, 26, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Bagon - Crunch - Level 25
  (371, 37100, 242, 26, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Bagon - Dragon Claw - Level 30
  (371, 37100, 337, 26, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Bagon - Zen Headbutt - Level 35
  (371, 37100, 428, 26, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Bagon - Focus Energy - Level 40
  (371, 37100, 116, 26, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Bagon - Flamethrower - Level 45
  (371, 37100, 53, 26, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Bagon - Outrage - Level 50
  (371, 37100, 200, 26, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Bagon - Double-Edge - Level 55
  (371, 37100, 38, 26, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Bagon - Headbutt - TM001
  (371, 37100, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 13),
  -- Bagon - Dragon Claw - TM002
  (371, 37100, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 14),
  -- Bagon - Roar - TM005
  (371, 37100, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 15),
  -- Bagon - Brick Break - TM010
  (371, 37100, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 16),
  -- Bagon - Rock Slide - TM012
  (371, 37100, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 17),
  -- Bagon - Fire Fang - TM014
  (371, 37100, 424, 26, NULL, 2, NULL, NULL, 26002014, NULL, 18),
  -- Bagon - Protect - TM017
  (371, 37100, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Bagon - Thunder Fang - TM021
  (371, 37100, 422, 26, NULL, 2, NULL, NULL, 26002021, NULL, 20),
  -- Bagon - Crunch - TM025
  (371, 37100, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 21),
  -- Bagon - Body Slam - TM033
  (371, 37100, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 22),
  -- Bagon - Endure - TM035
  (371, 37100, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 23),
  -- Bagon - Rock Tomb - TM036
  (371, 37100, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 24),
  -- Bagon - Fire Blast - TM038
  (371, 37100, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 25),
  -- Bagon - Draco Meteor - TM054
  (371, 37100, 434, 26, NULL, 2, NULL, NULL, 26002054, NULL, 26),
  -- Bagon - Double-Edge - TM056
  (371, 37100, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 27),
  -- Bagon - Iron Head - TM058
  (371, 37100, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 28),
  -- Bagon - Zen Headbutt - TM059
  (371, 37100, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 29),
  -- Bagon - Shadow Claw - TM061
  (371, 37100, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 30),
  -- Bagon - Flamethrower - TM062
  (371, 37100, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 31),
  -- Bagon - Hyper Voice - TM071
  (371, 37100, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 32),
  -- Bagon - Fire Spin - TM072
  (371, 37100, 83, 26, NULL, 2, NULL, NULL, 26002072, NULL, 33),
  -- Bagon - Dragon Pulse - TM075
  (371, 37100, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 34),
  -- Bagon - Iron Defense - TM080
  (371, 37100, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 35),
  -- Bagon - Substitute - TM085
  (371, 37100, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 36),
  -- Bagon - Outrage - TM093
  (371, 37100, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 37),
  -- Bagon - Hydro Pump - TM096
  (371, 37100, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 38),
  -- Bagon - Facade - TM109
  (371, 37100, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 39),
  -- Shelgon - Leer - Level 1
  (372, 37200, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Shelgon - Bite - Level 1
  (372, 37200, 44, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Shelgon - Ember - Level 1
  (372, 37200, 52, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Shelgon - Dragon Breath - Level 10
  (372, 37200, 225, 26, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Shelgon - Headbutt - Level 15
  (372, 37200, 29, 26, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Shelgon - Crunch - Level 25
  (372, 37200, 242, 26, NULL, 1, 25, NULL, NULL, NULL, 6),
  -- Shelgon - Dragon Claw - Level 30
  (372, 37200, 337, 26, NULL, 1, 30, NULL, NULL, NULL, 7),
  -- Shelgon - Zen Headbutt - Level 35
  (372, 37200, 428, 26, NULL, 1, 35, NULL, NULL, NULL, 8),
  -- Shelgon - Focus Energy - Level 40
  (372, 37200, 116, 26, NULL, 1, 40, NULL, NULL, NULL, 9),
  -- Shelgon - Flamethrower - Level 45
  (372, 37200, 53, 26, NULL, 1, 45, NULL, NULL, NULL, 10),
  -- Shelgon - Outrage - Level 50
  (372, 37200, 200, 26, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Shelgon - Double-Edge - Level 55
  (372, 37200, 38, 26, NULL, 1, 55, NULL, NULL, NULL, 12),
  -- Shelgon - Protect - Evolution
  (372, 37200, 182, 26, NULL, 7, NULL, NULL, NULL, NULL, 13),
  -- Shelgon - Headbutt - TM001
  (372, 37200, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 14),
  -- Shelgon - Dragon Claw - TM002
  (372, 37200, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 15),
  -- Shelgon - Roar - TM005
  (372, 37200, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 16),
  -- Shelgon - Brick Break - TM010
  (372, 37200, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 17),
  -- Shelgon - Rock Slide - TM012
  (372, 37200, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 18),
  -- Shelgon - Fire Fang - TM014
  (372, 37200, 424, 26, NULL, 2, NULL, NULL, 26002014, NULL, 19),
  -- Shelgon - Protect - TM017
  (372, 37200, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Shelgon - Thunder Fang - TM021
  (372, 37200, 422, 26, NULL, 2, NULL, NULL, 26002021, NULL, 21),
  -- Shelgon - Crunch - TM025
  (372, 37200, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 22),
  -- Shelgon - Body Slam - TM033
  (372, 37200, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 23),
  -- Shelgon - Endure - TM035
  (372, 37200, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 24),
  -- Shelgon - Rock Tomb - TM036
  (372, 37200, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 25),
  -- Shelgon - Fire Blast - TM038
  (372, 37200, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 26),
  -- Shelgon - Draco Meteor - TM054
  (372, 37200, 434, 26, NULL, 2, NULL, NULL, 26002054, NULL, 27),
  -- Shelgon - Double-Edge - TM056
  (372, 37200, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 28),
  -- Shelgon - Iron Head - TM058
  (372, 37200, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 29),
  -- Shelgon - Zen Headbutt - TM059
  (372, 37200, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 30),
  -- Shelgon - Shadow Claw - TM061
  (372, 37200, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 31),
  -- Shelgon - Flamethrower - TM062
  (372, 37200, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 32),
  -- Shelgon - Hyper Voice - TM071
  (372, 37200, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 33),
  -- Shelgon - Fire Spin - TM072
  (372, 37200, 83, 26, NULL, 2, NULL, NULL, 26002072, NULL, 34),
  -- Shelgon - Dragon Pulse - TM075
  (372, 37200, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 35),
  -- Shelgon - Iron Defense - TM080
  (372, 37200, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 36),
  -- Shelgon - Substitute - TM085
  (372, 37200, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 37),
  -- Shelgon - Outrage - TM093
  (372, 37200, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 38),
  -- Shelgon - Hydro Pump - TM096
  (372, 37200, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 39),
  -- Shelgon - Facade - TM109
  (372, 37200, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 40),
  -- Salamence - Leer - Level 1
  (373, 37300, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Salamence - Bite - Level 1
  (373, 37300, 44, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Salamence - Ember - Level 1
  (373, 37300, 52, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Salamence - Protect - Level 1
  (373, 37300, 182, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Salamence - Dragon Breath - Level 10
  (373, 37300, 225, 26, NULL, 1, 10, NULL, NULL, NULL, 5),
  -- Salamence - Headbutt - Level 15
  (373, 37300, 29, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Salamence - Crunch - Level 25
  (373, 37300, 242, 26, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Salamence - Dragon Claw - Level 30
  (373, 37300, 337, 26, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Salamence - Zen Headbutt - Level 35
  (373, 37300, 428, 26, NULL, 1, 35, NULL, NULL, NULL, 9),
  -- Salamence - Focus Energy - Level 40
  (373, 37300, 116, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Salamence - Flamethrower - Level 45
  (373, 37300, 53, 26, NULL, 1, 45, NULL, NULL, NULL, 11),
  -- Salamence - Outrage - Level 50
  (373, 37300, 200, 26, NULL, 1, 50, NULL, NULL, NULL, 12),
  -- Salamence - Double-Edge - Level 55
  (373, 37300, 38, 26, NULL, 1, 55, NULL, NULL, NULL, 13),
  -- Salamence - Air Slash - Level 60
  (373, 37300, 403, 26, NULL, 1, 60, NULL, NULL, NULL, 14),
  -- Salamence - Fly - Evolution
  (373, 37300, 19, 26, NULL, 7, NULL, NULL, NULL, NULL, 15),
  -- Salamence - Headbutt - TM001
  (373, 37300, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 16),
  -- Salamence - Dragon Claw - TM002
  (373, 37300, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 17),
  -- Salamence - Roar - TM005
  (373, 37300, 46, 26, NULL, 2, NULL, NULL, 26002005, NULL, 18),
  -- Salamence - Brick Break - TM010
  (373, 37300, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 19),
  -- Salamence - Rock Slide - TM012
  (373, 37300, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 20),
  -- Salamence - Fire Fang - TM014
  (373, 37300, 424, 26, NULL, 2, NULL, NULL, 26002014, NULL, 21),
  -- Salamence - Protect - TM017
  (373, 37300, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 22),
  -- Salamence - Thunder Fang - TM021
  (373, 37300, 422, 26, NULL, 2, NULL, NULL, 26002021, NULL, 23),
  -- Salamence - Aerial Ace - TM022
  (373, 37300, 332, 26, NULL, 2, NULL, NULL, 26002022, NULL, 24),
  -- Salamence - Crunch - TM025
  (373, 37300, 242, 26, NULL, 2, NULL, NULL, 26002025, NULL, 25),
  -- Salamence - Swift - TM027
  (373, 37300, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 26),
  -- Salamence - Body Slam - TM033
  (373, 37300, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 27),
  -- Salamence - Endure - TM035
  (373, 37300, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 28),
  -- Salamence - Rock Tomb - TM036
  (373, 37300, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 29),
  -- Salamence - Fire Blast - TM038
  (373, 37300, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 30),
  -- Salamence - Fly - TM043
  (373, 37300, 19, 26, NULL, 2, NULL, NULL, 26002043, NULL, 31),
  -- Salamence - Hyper Beam - TM044
  (373, 37300, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 32),
  -- Salamence - Draco Meteor - TM054
  (373, 37300, 434, 26, NULL, 2, NULL, NULL, 26002054, NULL, 33),
  -- Salamence - Giga Impact - TM055
  (373, 37300, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 34),
  -- Salamence - Double-Edge - TM056
  (373, 37300, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 35),
  -- Salamence - Iron Head - TM058
  (373, 37300, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 36),
  -- Salamence - Zen Headbutt - TM059
  (373, 37300, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 37),
  -- Salamence - Shadow Claw - TM061
  (373, 37300, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 38),
  -- Salamence - Flamethrower - TM062
  (373, 37300, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 39),
  -- Salamence - Stone Edge - TM065
  (373, 37300, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 40),
  -- Salamence - Earthquake - TM069
  (373, 37300, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 41),
  -- Salamence - Hyper Voice - TM071
  (373, 37300, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 42),
  -- Salamence - Fire Spin - TM072
  (373, 37300, 83, 26, NULL, 2, NULL, NULL, 26002072, NULL, 43),
  -- Salamence - Dragon Pulse - TM075
  (373, 37300, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 44),
  -- Salamence - Hurricane - TM079
  (373, 37300, 542, 26, NULL, 2, NULL, NULL, 26002079, NULL, 45),
  -- Salamence - Iron Defense - TM080
  (373, 37300, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 46),
  -- Salamence - Substitute - TM085
  (373, 37300, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 47),
  -- Salamence - Outrage - TM093
  (373, 37300, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 48),
  -- Salamence - Hydro Pump - TM096
  (373, 37300, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 49),
  -- Salamence - Facade - TM109
  (373, 37300, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 50),
  -- Salamence - Flame Charge - TM114
  (373, 37300, 488, 26, NULL, 2, NULL, NULL, 26002114, NULL, 51),
  -- Salamence - Psychic Fangs - TM124
  (373, 37300, 706, 26, NULL, 2, NULL, NULL, 26002124, NULL, 52),
  -- Salamence - Dual Wingbeat - TM134
  (373, 37300, 814, 26, NULL, 2, NULL, NULL, 26002134, NULL, 53),
  -- Salamence - Scale Shot - TM143
  (373, 37300, 799, 26, NULL, 2, NULL, NULL, 26002143, NULL, 54),
  -- Salamence - Skull Bash - TM146
  (373, 37300, 130, 26, NULL, 2, NULL, NULL, 26002146, NULL, 55),
  -- Beldum - Tackle - Level 1
  (374, 37400, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Beldum - Headbutt - TM001
  (374, 37400, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 2),
  -- Beldum - Agility - TM047
  (374, 37400, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 3),
  -- Beldum - Iron Head - TM058
  (374, 37400, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 4),
  -- Beldum - Zen Headbutt - TM059
  (374, 37400, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 5),
  -- Beldum - Iron Defense - TM080
  (374, 37400, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 6),
  -- Beldum - Facade - TM109
  (374, 37400, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 7),
  -- Beldum - Steel Beam - TM157
  (374, 37400, 796, 26, NULL, 2, NULL, NULL, 26002157, NULL, 8),
  -- Metang - Tackle - Level 1
  (375, 37500, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Metang - Bullet Punch - Level 1
  (375, 37500, 418, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Metang - Zen Headbutt - Level 6
  (375, 37500, 428, 26, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Metang - Flash Cannon - Level 18
  (375, 37500, 430, 26, NULL, 1, 18, NULL, NULL, NULL, 4),
  -- Metang - Take Down - Level 26
  (375, 37500, 36, 26, NULL, 1, 26, NULL, NULL, NULL, 5),
  -- Metang - Psycho Cut - Level 34
  (375, 37500, 427, 26, NULL, 1, 34, NULL, NULL, NULL, 6),
  -- Metang - Psychic - Level 42
  (375, 37500, 94, 26, NULL, 1, 42, NULL, NULL, NULL, 7),
  -- Metang - Iron Head - Level 50
  (375, 37500, 442, 26, NULL, 1, 50, NULL, NULL, NULL, 8),
  -- Metang - Iron Defense - Level 54
  (375, 37500, 334, 26, NULL, 1, 54, NULL, NULL, NULL, 9),
  -- Metang - Hyper Beam - Level 58
  (375, 37500, 63, 26, NULL, 1, 58, NULL, NULL, NULL, 10),
  -- Metang - Confusion - Evolution
  (375, 37500, 93, 26, NULL, 7, NULL, NULL, NULL, NULL, 11),
  -- Metang - Metal Claw - Evolution
  (375, 37500, 232, 26, NULL, 7, NULL, NULL, NULL, NULL, 12),
  -- Metang - Headbutt - TM001
  (375, 37500, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 13),
  -- Metang - Psyshock - TM003
  (375, 37500, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 14),
  -- Metang - Brick Break - TM010
  (375, 37500, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 15),
  -- Metang - Rock Slide - TM012
  (375, 37500, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 16),
  -- Metang - Light Screen - TM016
  (375, 37500, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 17),
  -- Metang - Protect - TM017
  (375, 37500, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Metang - Power-Up Punch - TM018
  (375, 37500, 612, 26, NULL, 2, NULL, NULL, 26002018, NULL, 19),
  -- Metang - Thunder Punch - TM023
  (375, 37500, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 20),
  -- Metang - Ice Punch - TM024
  (375, 37500, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 21),
  -- Metang - Swift - TM027
  (375, 37500, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 22),
  -- Metang - Reflect - TM031
  (375, 37500, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 23),
  -- Metang - Body Slam - TM033
  (375, 37500, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 24),
  -- Metang - Endure - TM035
  (375, 37500, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 25),
  -- Metang - Rock Tomb - TM036
  (375, 37500, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 26),
  -- Metang - Stealth Rock - TM037
  (375, 37500, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 27),
  -- Metang - Hyper Beam - TM044
  (375, 37500, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 28),
  -- Metang - Agility - TM047
  (375, 37500, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 29),
  -- Metang - Self-Destruct - TM048
  (375, 37500, 120, 26, NULL, 2, NULL, NULL, 26002048, NULL, 30),
  -- Metang - Sludge Bomb - TM053
  (375, 37500, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 31),
  -- Metang - Double-Edge - TM056
  (375, 37500, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 32),
  -- Metang - Iron Head - TM058
  (375, 37500, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 33),
  -- Metang - Zen Headbutt - TM059
  (375, 37500, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 34),
  -- Metang - Psychic - TM063
  (375, 37500, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 35),
  -- Metang - Earthquake - TM069
  (375, 37500, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 36),
  -- Metang - Shadow Ball - TM074
  (375, 37500, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 37),
  -- Metang - Iron Defense - TM080
  (375, 37500, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 38),
  -- Metang - Flash Cannon - TM084
  (375, 37500, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 39),
  -- Metang - Substitute - TM085
  (375, 37500, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 40),
  -- Metang - Facade - TM109
  (375, 37500, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 41),
  -- Metang - Trailblaze - TM115
  (375, 37500, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 42),
  -- Metang - Magnet Bomb - TM126
  (375, 37500, 443, 26, NULL, 2, NULL, NULL, 26002126, NULL, 43),
  -- Metang - Meteor Beam - TM156
  (375, 37500, 800, 26, NULL, 2, NULL, NULL, 26002156, NULL, 44),
  -- Metang - Steel Beam - TM157
  (375, 37500, 796, 26, NULL, 2, NULL, NULL, 26002157, NULL, 45),
  -- Metagross - Tackle - Level 1
  (376, 37600, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Metagross - Confusion - Level 1
  (376, 37600, 93, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Metagross - Metal Claw - Level 1
  (376, 37600, 232, 26, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Metagross - Bullet Punch - Level 1
  (376, 37600, 418, 26, NULL, 1, 1, NULL, NULL, NULL, 4),
  -- Metagross - Zen Headbutt - Level 6
  (376, 37600, 428, 26, NULL, 1, 6, NULL, NULL, NULL, 5),
  -- Metagross - Flash Cannon - Level 18
  (376, 37600, 430, 26, NULL, 1, 18, NULL, NULL, NULL, 6),
  -- Metagross - Take Down - Level 26
  (376, 37600, 36, 26, NULL, 1, 26, NULL, NULL, NULL, 7),
  -- Metagross - Psycho Cut - Level 34
  (376, 37600, 427, 26, NULL, 1, 34, NULL, NULL, NULL, 8),
  -- Metagross - Psychic - Level 42
  (376, 37600, 94, 26, NULL, 1, 42, NULL, NULL, NULL, 9),
  -- Metagross - Brutal Swing - Level 46
  (376, 37600, 693, 26, NULL, 1, 46, NULL, NULL, NULL, 10),
  -- Metagross - Iron Head - Level 50
  (376, 37600, 442, 26, NULL, 1, 50, NULL, NULL, NULL, 11),
  -- Metagross - Iron Defense - Level 54
  (376, 37600, 334, 26, NULL, 1, 54, NULL, NULL, NULL, 12),
  -- Metagross - Hyper Beam - Level 58
  (376, 37600, 63, 26, NULL, 1, 58, NULL, NULL, NULL, 13),
  -- Metagross - Headbutt - TM001
  (376, 37600, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 14),
  -- Metagross - Psyshock - TM003
  (376, 37600, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 15),
  -- Metagross - Brick Break - TM010
  (376, 37600, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 16),
  -- Metagross - Rock Slide - TM012
  (376, 37600, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 17),
  -- Metagross - Light Screen - TM016
  (376, 37600, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 18),
  -- Metagross - Protect - TM017
  (376, 37600, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Metagross - Power-Up Punch - TM018
  (376, 37600, 612, 26, NULL, 2, NULL, NULL, 26002018, NULL, 20),
  -- Metagross - Thunder Punch - TM023
  (376, 37600, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 21),
  -- Metagross - Ice Punch - TM024
  (376, 37600, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 22),
  -- Metagross - Swift - TM027
  (376, 37600, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 23),
  -- Metagross - Reflect - TM031
  (376, 37600, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 24),
  -- Metagross - Body Slam - TM033
  (376, 37600, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 25),
  -- Metagross - Endure - TM035
  (376, 37600, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 26),
  -- Metagross - Rock Tomb - TM036
  (376, 37600, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 27),
  -- Metagross - Stealth Rock - TM037
  (376, 37600, 446, 26, NULL, 2, NULL, NULL, 26002037, NULL, 28),
  -- Metagross - Hyper Beam - TM044
  (376, 37600, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 29),
  -- Metagross - Knock Off - TM045
  (376, 37600, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 30),
  -- Metagross - Agility - TM047
  (376, 37600, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 31),
  -- Metagross - Self-Destruct - TM048
  (376, 37600, 120, 26, NULL, 2, NULL, NULL, 26002048, NULL, 32),
  -- Metagross - Sludge Bomb - TM053
  (376, 37600, 188, 26, NULL, 2, NULL, NULL, 26002053, NULL, 33),
  -- Metagross - Giga Impact - TM055
  (376, 37600, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 34),
  -- Metagross - Double-Edge - TM056
  (376, 37600, 38, 26, NULL, 2, NULL, NULL, 26002056, NULL, 35),
  -- Metagross - Iron Head - TM058
  (376, 37600, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 36),
  -- Metagross - Zen Headbutt - TM059
  (376, 37600, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 37),
  -- Metagross - Psychic - TM063
  (376, 37600, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 38),
  -- Metagross - Stone Edge - TM065
  (376, 37600, 444, 26, NULL, 2, NULL, NULL, 26002065, NULL, 39),
  -- Metagross - Earthquake - TM069
  (376, 37600, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 40),
  -- Metagross - Shadow Ball - TM074
  (376, 37600, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 41),
  -- Metagross - Iron Defense - TM080
  (376, 37600, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 42),
  -- Metagross - Flash Cannon - TM084
  (376, 37600, 430, 26, NULL, 2, NULL, NULL, 26002084, NULL, 43),
  -- Metagross - Substitute - TM085
  (376, 37600, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 44),
  -- Metagross - Comet Punch - TM108
  (376, 37600, 4, 26, NULL, 2, NULL, NULL, 26002108, NULL, 45),
  -- Metagross - Facade - TM109
  (376, 37600, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 46),
  -- Metagross - Trailblaze - TM115
  (376, 37600, 885, 26, NULL, 2, NULL, NULL, 26002115, NULL, 47),
  -- Metagross - Shadow Punch - TM118
  (376, 37600, 325, 26, NULL, 2, NULL, NULL, 26002118, NULL, 48),
  -- Metagross - Psychic Fangs - TM124
  (376, 37600, 706, 26, NULL, 2, NULL, NULL, 26002124, NULL, 49),
  -- Metagross - Magnet Bomb - TM126
  (376, 37600, 443, 26, NULL, 2, NULL, NULL, 26002126, NULL, 50),
  -- Metagross - Swagger - TM139
  (376, 37600, 207, 26, NULL, 2, NULL, NULL, 26002139, NULL, 51),
  -- Metagross - Skull Bash - TM146
  (376, 37600, 130, 26, NULL, 2, NULL, NULL, 26002146, NULL, 52),
  -- Metagross - Meteor Beam - TM156
  (376, 37600, 800, 26, NULL, 2, NULL, NULL, 26002156, NULL, 53),
  -- Metagross - Steel Beam - TM157
  (376, 37600, 796, 26, NULL, 2, NULL, NULL, 26002157, NULL, 54);
