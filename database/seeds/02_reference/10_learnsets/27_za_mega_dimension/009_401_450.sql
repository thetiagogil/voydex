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
-- Mega Dimension learnset delta rows for species 401-450.
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
  -- Chingling - Tackle - Level 1
  (433, 43300, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Chingling - Growl - Level 1
  (433, 43300, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Chingling - Confusion - Level 7
  (433, 43300, 93, 27, NULL, 1, 7, NULL, NULL, NULL, 3),
  -- Chingling - Disarming Voice - Level 10
  (433, 43300, 574, 27, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Chingling - Supersonic - Level 12
  (433, 43300, 48, 27, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Chingling - Take Down - Level 15
  (433, 43300, 36, 27, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Chingling - Screech - Level 18
  (433, 43300, 103, 27, NULL, 1, 18, NULL, NULL, NULL, 7),
  -- Chingling - Amnesia - Level 23
  (433, 43300, 133, 27, NULL, 1, 23, NULL, NULL, NULL, 8),
  -- Chingling - Wish - Level 25
  (433, 43300, 273, 27, NULL, 1, 25, NULL, NULL, NULL, 9),
  -- Chingling - Metal Sound - Level 29
  (433, 43300, 319, 27, NULL, 1, 29, NULL, NULL, NULL, 10),
  -- Chingling - Psychic - Level 34
  (433, 43300, 94, 27, NULL, 1, 34, NULL, NULL, NULL, 11),
  -- Chingling - Psyshock - TM003
  (433, 43300, 473, 27, NULL, 2, NULL, NULL, 26002003, NULL, 12),
  -- Chingling - Calm Mind - TM006
  (433, 43300, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 13),
  -- Chingling - Thunder Wave - TM008
  (433, 43300, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 14),
  -- Chingling - Light Screen - TM016
  (433, 43300, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 15),
  -- Chingling - Protect - TM017
  (433, 43300, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 16),
  -- Chingling - Energy Ball - TM026
  (433, 43300, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 17),
  -- Chingling - Reflect - TM031
  (433, 43300, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 18),
  -- Chingling - Endure - TM035
  (433, 43300, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 19),
  -- Chingling - Water Pulse - TM041
  (433, 43300, 352, 27, NULL, 2, NULL, NULL, 26002041, NULL, 20),
  -- Chingling - Knock Off - TM045
  (433, 43300, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 21),
  -- Chingling - Self-Destruct - TM048
  (433, 43300, 120, 27, NULL, 2, NULL, NULL, 26002048, NULL, 22),
  -- Chingling - Icy Wind - TM049
  (433, 43300, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 23),
  -- Chingling - Safeguard - TM051
  (433, 43300, 219, 27, NULL, 2, NULL, NULL, 26002051, NULL, 24),
  -- Chingling - Double-Edge - TM056
  (433, 43300, 38, 27, NULL, 2, NULL, NULL, 26002056, NULL, 25),
  -- Chingling - Zen Headbutt - TM059
  (433, 43300, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 26),
  -- Chingling - Future Sight - TM060
  (433, 43300, 248, 27, NULL, 2, NULL, NULL, 26002060, NULL, 27),
  -- Chingling - Psychic - TM063
  (433, 43300, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 28),
  -- Chingling - Hyper Voice - TM071
  (433, 43300, 304, 27, NULL, 2, NULL, NULL, 26002071, NULL, 29),
  -- Chingling - Shadow Ball - TM074
  (433, 43300, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 30),
  -- Chingling - Substitute - TM085
  (433, 43300, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 31),
  -- Chingling - Curse - TM091
  (433, 43300, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 32),
  -- Chingling - Dazzling Gleam - TM092
  (433, 43300, 605, 27, NULL, 2, NULL, NULL, 26002092, NULL, 33),
  -- Chingling - Taunt - TM095
  (433, 43300, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 34),
  -- Chingling - Heal Block - TM097
  (433, 43300, 377, 27, NULL, 2, NULL, NULL, 26002097, NULL, 35),
  -- Chingling - Facade - TM109
  (433, 43300, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 36),
  -- Chingling - Charge Beam - TM130
  (433, 43300, 451, 27, NULL, 2, NULL, NULL, 26002130, NULL, 37),
  -- Mime Jr. - Tackle - Level 1
  (439, 43900, 33, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Mime Jr. - Hypnosis - Level 1
  (439, 43900, 95, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Mime Jr. - Confuse Ray - Level 1
  (439, 43900, 109, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Mime Jr. - Charm - Level 8
  (439, 43900, 204, 27, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Mime Jr. - Confusion - Level 12
  (439, 43900, 93, 27, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Mime Jr. - Dream Eater - Level 15
  (439, 43900, 138, 27, NULL, 1, 15, NULL, NULL, NULL, 6),
  -- Mime Jr. - Infestation - Level 17
  (439, 43900, 611, 27, NULL, 1, 17, NULL, NULL, NULL, 7),
  -- Mime Jr. - Protect - Level 20
  (439, 43900, 182, 27, NULL, 1, 20, NULL, NULL, NULL, 8),
  -- Mime Jr. - Stealth Rock - Level 24
  (439, 43900, 446, 27, NULL, 1, 24, NULL, NULL, NULL, 9),
  -- Mime Jr. - Psybeam - Level 28
  (439, 43900, 60, 27, NULL, 1, 28, NULL, NULL, NULL, 10),
  -- Mime Jr. - Mimic - Level 32
  (439, 43900, 102, 27, NULL, 1, 32, NULL, NULL, NULL, 11),
  -- Mime Jr. - Light Screen - Level 36
  (439, 43900, 113, 27, NULL, 1, 36, NULL, NULL, NULL, 12),
  -- Mime Jr. - Reflect - Level 36
  (439, 43900, 115, 27, NULL, 1, 36, NULL, NULL, NULL, 13),
  -- Mime Jr. - Safeguard - Level 36
  (439, 43900, 219, 27, NULL, 1, 36, NULL, NULL, NULL, 14),
  -- Mime Jr. - Dazzling Gleam - Level 44
  (439, 43900, 605, 27, NULL, 1, 44, NULL, NULL, NULL, 15),
  -- Mime Jr. - Psychic - Level 48
  (439, 43900, 94, 27, NULL, 1, 48, NULL, NULL, NULL, 16),
  -- Mime Jr. - Headbutt - TM001
  (439, 43900, 29, 27, NULL, 2, NULL, NULL, 26002001, NULL, 17),
  -- Mime Jr. - Psyshock - TM003
  (439, 43900, 473, 27, NULL, 2, NULL, NULL, 26002003, NULL, 18),
  -- Mime Jr. - Calm Mind - TM006
  (439, 43900, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 19),
  -- Mime Jr. - Thunder Wave - TM008
  (439, 43900, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 20),
  -- Mime Jr. - Brick Break - TM010
  (439, 43900, 280, 27, NULL, 2, NULL, NULL, 26002010, NULL, 21),
  -- Mime Jr. - Light Screen - TM016
  (439, 43900, 113, 27, NULL, 2, NULL, NULL, 26002016, NULL, 22),
  -- Mime Jr. - Protect - TM017
  (439, 43900, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 23),
  -- Mime Jr. - Energy Ball - TM026
  (439, 43900, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 24),
  -- Mime Jr. - Reflect - TM031
  (439, 43900, 115, 27, NULL, 2, NULL, NULL, 26002031, NULL, 25),
  -- Mime Jr. - Endure - TM035
  (439, 43900, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 26),
  -- Mime Jr. - Stealth Rock - TM037
  (439, 43900, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 27),
  -- Mime Jr. - Icy Wind - TM049
  (439, 43900, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 28),
  -- Mime Jr. - Safeguard - TM051
  (439, 43900, 219, 27, NULL, 2, NULL, NULL, 26002051, NULL, 29),
  -- Mime Jr. - Zen Headbutt - TM059
  (439, 43900, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 30),
  -- Mime Jr. - Future Sight - TM060
  (439, 43900, 248, 27, NULL, 2, NULL, NULL, 26002060, NULL, 31),
  -- Mime Jr. - Psychic - TM063
  (439, 43900, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 32),
  -- Mime Jr. - Solar Beam - TM064
  (439, 43900, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 33),
  -- Mime Jr. - Thunderbolt - TM067
  (439, 43900, 85, 27, NULL, 2, NULL, NULL, 26002067, NULL, 34),
  -- Mime Jr. - Shadow Ball - TM074
  (439, 43900, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 35),
  -- Mime Jr. - Nasty Plot - TM083
  (439, 43900, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 36),
  -- Mime Jr. - Substitute - TM085
  (439, 43900, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 37),
  -- Mime Jr. - Dazzling Gleam - TM092
  (439, 43900, 605, 27, NULL, 2, NULL, NULL, 26002092, NULL, 38),
  -- Mime Jr. - Taunt - TM095
  (439, 43900, 269, 27, NULL, 2, NULL, NULL, 26002095, NULL, 39),
  -- Mime Jr. - Heal Block - TM097
  (439, 43900, 377, 27, NULL, 2, NULL, NULL, 26002097, NULL, 40),
  -- Mime Jr. - Thunder - TM106
  (439, 43900, 87, 27, NULL, 2, NULL, NULL, 26002106, NULL, 41),
  -- Mime Jr. - Facade - TM109
  (439, 43900, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 42),
  -- Mime Jr. - Mimic - TM125
  (439, 43900, 102, 27, NULL, 2, NULL, NULL, 26002125, NULL, 43),
  -- Mime Jr. - Dream Eater - TM127
  (439, 43900, 138, 27, NULL, 2, NULL, NULL, 26002127, NULL, 44),
  -- Mime Jr. - Drain Punch - TM131
  (439, 43900, 409, 27, NULL, 2, NULL, NULL, 26002131, NULL, 45),
  -- Mime Jr. - Fake Out - TM141
  (439, 43900, 252, 27, NULL, 2, NULL, NULL, 26002141, NULL, 46),
  -- Mime Jr. - First Impression - TM142
  (439, 43900, 660, 27, NULL, 2, NULL, NULL, 26002142, NULL, 47);
