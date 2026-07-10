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
-- Pokémon Legends: Z-A learnsets for species 251-300.
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
  -- Ralts - Growl - Level 1
  (280, 28000, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Ralts - Disarming Voice - Level 1
  (280, 28000, 574, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Ralts - Confusion - Level 6
  (280, 28000, 93, 26, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Ralts - Hypnosis - Level 9
  (280, 28000, 95, 26, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Ralts - Draining Kiss - Level 12
  (280, 28000, 577, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Ralts - Teleport - Level 15
  (280, 28000, 100, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Ralts - Psybeam - Level 18
  (280, 28000, 60, 26, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Ralts - Magical Leaf - Level 20
  (280, 28000, 345, 26, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Ralts - Confuse Ray - Level 24
  (280, 28000, 109, 26, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Ralts - Charm - Level 28
  (280, 28000, 204, 26, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Ralts - Double Team - Level 30
  (280, 28000, 104, 26, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Ralts - Calm Mind - Level 35
  (280, 28000, 347, 26, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Ralts - Psychic - Level 38
  (280, 28000, 94, 26, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Ralts - Mystical Fire - Level 44
  (280, 28000, 595, 26, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Ralts - Future Sight - Level 58
  (280, 28000, 248, 26, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Ralts - Psyshock - TM003
  (280, 28000, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 16),
  -- Ralts - Calm Mind - TM006
  (280, 28000, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 17),
  -- Ralts - Thunder Wave - TM008
  (280, 28000, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 18),
  -- Ralts - Light Screen - TM016
  (280, 28000, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 19),
  -- Ralts - Protect - TM017
  (280, 28000, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Ralts - Thunder Punch - TM023
  (280, 28000, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 21),
  -- Ralts - Ice Punch - TM024
  (280, 28000, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 22),
  -- Ralts - Swift - TM027
  (280, 28000, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 23),
  -- Ralts - Fire Punch - TM029
  (280, 28000, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 24),
  -- Ralts - Reflect - TM031
  (280, 28000, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 25),
  -- Ralts - Double Team - TM032
  (280, 28000, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 26),
  -- Ralts - Body Slam - TM033
  (280, 28000, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 27),
  -- Ralts - Endure - TM035
  (280, 28000, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 28),
  -- Ralts - Icy Wind - TM049
  (280, 28000, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 29),
  -- Ralts - Will-O-Wisp - TM057
  (280, 28000, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 30),
  -- Ralts - Zen Headbutt - TM059
  (280, 28000, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 31),
  -- Ralts - Future Sight - TM060
  (280, 28000, 248, 26, NULL, 2, NULL, NULL, 26002060, NULL, 32),
  -- Ralts - Psychic - TM063
  (280, 28000, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 33),
  -- Ralts - Thunderbolt - TM067
  (280, 28000, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 34),
  -- Ralts - Hyper Voice - TM071
  (280, 28000, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 35),
  -- Ralts - Shadow Ball - TM074
  (280, 28000, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 36),
  -- Ralts - Substitute - TM085
  (280, 28000, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 37),
  -- Ralts - Taunt - TM095
  (280, 28000, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 38),
  -- Ralts - Metronome - TM099
  (280, 28000, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 39),
  -- Ralts - Facade - TM109
  (280, 28000, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 40),
  -- Ralts - Dream Eater - TM127
  (280, 28000, 138, 26, NULL, 2, NULL, NULL, 26002127, NULL, 41),
  -- Ralts - Charge Beam - TM130
  (280, 28000, 451, 26, NULL, 2, NULL, NULL, 26002130, NULL, 42),
  -- Kirlia - Growl - Level 1
  (281, 28100, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Kirlia - Disarming Voice - Level 1
  (281, 28100, 574, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Kirlia - Confusion - Level 6
  (281, 28100, 93, 26, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Kirlia - Hypnosis - Level 9
  (281, 28100, 95, 26, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Kirlia - Draining Kiss - Level 12
  (281, 28100, 577, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Kirlia - Teleport - Level 15
  (281, 28100, 100, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Kirlia - Psybeam - Level 18
  (281, 28100, 60, 26, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Kirlia - Magical Leaf - Level 20
  (281, 28100, 345, 26, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Kirlia - Confuse Ray - Level 24
  (281, 28100, 109, 26, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Kirlia - Charm - Level 28
  (281, 28100, 204, 26, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Kirlia - Double Team - Level 30
  (281, 28100, 104, 26, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Kirlia - Calm Mind - Level 35
  (281, 28100, 347, 26, NULL, 1, 35, NULL, NULL, NULL, 12),
  -- Kirlia - Psychic - Level 38
  (281, 28100, 94, 26, NULL, 1, 38, NULL, NULL, NULL, 13),
  -- Kirlia - Mystical Fire - Level 44
  (281, 28100, 595, 26, NULL, 1, 44, NULL, NULL, NULL, 14),
  -- Kirlia - Future Sight - Level 58
  (281, 28100, 248, 26, NULL, 1, 58, NULL, NULL, NULL, 15),
  -- Kirlia - Psyshock - TM003
  (281, 28100, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 16),
  -- Kirlia - Calm Mind - TM006
  (281, 28100, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 17),
  -- Kirlia - Thunder Wave - TM008
  (281, 28100, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 18),
  -- Kirlia - Light Screen - TM016
  (281, 28100, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 19),
  -- Kirlia - Protect - TM017
  (281, 28100, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 20),
  -- Kirlia - Thunder Punch - TM023
  (281, 28100, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 21),
  -- Kirlia - Ice Punch - TM024
  (281, 28100, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 22),
  -- Kirlia - Swift - TM027
  (281, 28100, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 23),
  -- Kirlia - Fire Punch - TM029
  (281, 28100, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 24),
  -- Kirlia - Reflect - TM031
  (281, 28100, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 25),
  -- Kirlia - Double Team - TM032
  (281, 28100, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 26),
  -- Kirlia - Body Slam - TM033
  (281, 28100, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 27),
  -- Kirlia - Endure - TM035
  (281, 28100, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 28),
  -- Kirlia - Hyper Beam - TM044
  (281, 28100, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 29),
  -- Kirlia - Icy Wind - TM049
  (281, 28100, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 30),
  -- Kirlia - Will-O-Wisp - TM057
  (281, 28100, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 31),
  -- Kirlia - Zen Headbutt - TM059
  (281, 28100, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 32),
  -- Kirlia - Future Sight - TM060
  (281, 28100, 248, 26, NULL, 2, NULL, NULL, 26002060, NULL, 33),
  -- Kirlia - Psychic - TM063
  (281, 28100, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 34),
  -- Kirlia - Thunderbolt - TM067
  (281, 28100, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 35),
  -- Kirlia - Hyper Voice - TM071
  (281, 28100, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 36),
  -- Kirlia - Shadow Ball - TM074
  (281, 28100, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 37),
  -- Kirlia - Substitute - TM085
  (281, 28100, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 38),
  -- Kirlia - Taunt - TM095
  (281, 28100, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 39),
  -- Kirlia - Metronome - TM099
  (281, 28100, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 40),
  -- Kirlia - Facade - TM109
  (281, 28100, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 41),
  -- Kirlia - Dream Eater - TM127
  (281, 28100, 138, 26, NULL, 2, NULL, NULL, 26002127, NULL, 42),
  -- Kirlia - Charge Beam - TM130
  (281, 28100, 451, 26, NULL, 2, NULL, NULL, 26002130, NULL, 43),
  -- Kirlia - Triple Axel - TM144
  (281, 28100, 813, 26, NULL, 2, NULL, NULL, 26002144, NULL, 44),
  -- Kirlia - Vacuum Wave - TM150
  (281, 28100, 410, 26, NULL, 2, NULL, NULL, 26002150, NULL, 45),
  -- Gardevoir - Growl - Level 1
  (282, 28200, 45, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Gardevoir - Disarming Voice - Level 1
  (282, 28200, 574, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Gardevoir - Confusion - Level 6
  (282, 28200, 93, 26, NULL, 1, 6, NULL, NULL, NULL, 3),
  -- Gardevoir - Hypnosis - Level 9
  (282, 28200, 95, 26, NULL, 1, 9, NULL, NULL, NULL, 4),
  -- Gardevoir - Draining Kiss - Level 12
  (282, 28200, 577, 26, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Gardevoir - Teleport - Level 15
  (282, 28200, 100, 26, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Gardevoir - Psybeam - Level 18
  (282, 28200, 60, 26, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Gardevoir - Magical Leaf - Level 20
  (282, 28200, 345, 26, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Gardevoir - Confuse Ray - Level 24
  (282, 28200, 109, 26, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Gardevoir - Charm - Level 28
  (282, 28200, 204, 26, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Gardevoir - Double Team - Level 30
  (282, 28200, 104, 26, NULL, 1, 30, NULL, NULL, NULL, 11),
  -- Gardevoir - Wish - Level 32
  (282, 28200, 273, 26, NULL, 1, 32, NULL, NULL, NULL, 12),
  -- Gardevoir - Calm Mind - Level 35
  (282, 28200, 347, 26, NULL, 1, 35, NULL, NULL, NULL, 13),
  -- Gardevoir - Psychic - Level 38
  (282, 28200, 94, 26, NULL, 1, 38, NULL, NULL, NULL, 14),
  -- Gardevoir - Mystical Fire - Level 44
  (282, 28200, 595, 26, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Gardevoir - Moonblast - Level 49
  (282, 28200, 585, 26, NULL, 1, 49, NULL, NULL, NULL, 16),
  -- Gardevoir - Future Sight - Level 58
  (282, 28200, 248, 26, NULL, 1, 58, NULL, NULL, NULL, 17),
  -- Gardevoir - Dazzling Gleam - Evolution
  (282, 28200, 605, 26, NULL, 7, NULL, NULL, NULL, NULL, 18),
  -- Gardevoir - Psyshock - TM003
  (282, 28200, 473, 26, NULL, 2, NULL, NULL, 26002003, NULL, 19),
  -- Gardevoir - Calm Mind - TM006
  (282, 28200, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 20),
  -- Gardevoir - Thunder Wave - TM008
  (282, 28200, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 21),
  -- Gardevoir - Light Screen - TM016
  (282, 28200, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 22),
  -- Gardevoir - Protect - TM017
  (282, 28200, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 23),
  -- Gardevoir - Thunder Punch - TM023
  (282, 28200, 9, 26, NULL, 2, NULL, NULL, 26002023, NULL, 24),
  -- Gardevoir - Ice Punch - TM024
  (282, 28200, 8, 26, NULL, 2, NULL, NULL, 26002024, NULL, 25),
  -- Gardevoir - Energy Ball - TM026
  (282, 28200, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 26),
  -- Gardevoir - Swift - TM027
  (282, 28200, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 27),
  -- Gardevoir - Fire Punch - TM029
  (282, 28200, 7, 26, NULL, 2, NULL, NULL, 26002029, NULL, 28),
  -- Gardevoir - Reflect - TM031
  (282, 28200, 115, 26, NULL, 2, NULL, NULL, 26002031, NULL, 29),
  -- Gardevoir - Double Team - TM032
  (282, 28200, 104, 26, NULL, 2, NULL, NULL, 26002032, NULL, 30),
  -- Gardevoir - Body Slam - TM033
  (282, 28200, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 31),
  -- Gardevoir - Endure - TM035
  (282, 28200, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 32),
  -- Gardevoir - Hyper Beam - TM044
  (282, 28200, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 33),
  -- Gardevoir - Icy Wind - TM049
  (282, 28200, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 34),
  -- Gardevoir - Safeguard - TM051
  (282, 28200, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 35),
  -- Gardevoir - Giga Impact - TM055
  (282, 28200, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 36),
  -- Gardevoir - Will-O-Wisp - TM057
  (282, 28200, 261, 26, NULL, 2, NULL, NULL, 26002057, NULL, 37),
  -- Gardevoir - Zen Headbutt - TM059
  (282, 28200, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 38),
  -- Gardevoir - Future Sight - TM060
  (282, 28200, 248, 26, NULL, 2, NULL, NULL, 26002060, NULL, 39),
  -- Gardevoir - Psychic - TM063
  (282, 28200, 94, 26, NULL, 2, NULL, NULL, 26002063, NULL, 40),
  -- Gardevoir - Thunderbolt - TM067
  (282, 28200, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 41),
  -- Gardevoir - Hyper Voice - TM071
  (282, 28200, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 42),
  -- Gardevoir - Shadow Ball - TM074
  (282, 28200, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 43),
  -- Gardevoir - Substitute - TM085
  (282, 28200, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 44),
  -- Gardevoir - Dazzling Gleam - TM092
  (282, 28200, 605, 26, NULL, 2, NULL, NULL, 26002092, NULL, 45),
  -- Gardevoir - Taunt - TM095
  (282, 28200, 269, 26, NULL, 2, NULL, NULL, 26002095, NULL, 46),
  -- Gardevoir - Metronome - TM099
  (282, 28200, 118, 26, NULL, 2, NULL, NULL, 26002099, NULL, 47),
  -- Gardevoir - Focus Blast - TM102
  (282, 28200, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 48),
  -- Gardevoir - Facade - TM109
  (282, 28200, 263, 26, NULL, 2, NULL, NULL, 26002109, NULL, 49),
  -- Gardevoir - Torment - TM121
  (282, 28200, 259, 26, NULL, 2, NULL, NULL, 26002121, NULL, 50),
  -- Gardevoir - Mimic - TM125
  (282, 28200, 102, 26, NULL, 2, NULL, NULL, 26002125, NULL, 51),
  -- Gardevoir - Dream Eater - TM127
  (282, 28200, 138, 26, NULL, 2, NULL, NULL, 26002127, NULL, 52),
  -- Gardevoir - Charge Beam - TM130
  (282, 28200, 451, 26, NULL, 2, NULL, NULL, 26002130, NULL, 53),
  -- Gardevoir - Swagger - TM139
  (282, 28200, 207, 26, NULL, 2, NULL, NULL, 26002139, NULL, 54),
  -- Gardevoir - Triple Axel - TM144
  (282, 28200, 813, 26, NULL, 2, NULL, NULL, 26002144, NULL, 55),
  -- Gardevoir - Vacuum Wave - TM150
  (282, 28200, 410, 26, NULL, 2, NULL, NULL, 26002150, NULL, 56);
