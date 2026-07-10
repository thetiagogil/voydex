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
-- Mega Dimension learnset delta rows for species 551-600.
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
  -- Yamask - Confusion - Level 1
  (562, 56200, 93, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Yamask - Protect - Level 1
  (562, 56200, 182, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Yamask - Haze - Level 4
  (562, 56200, 114, 27, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Yamask - Confuse Ray - Level 8
  (562, 56200, 109, 27, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Yamask - Fake Tears - Level 12
  (562, 56200, 313, 27, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Yamask - Will-O-Wisp - Level 16
  (562, 56200, 261, 27, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Yamask - Infestation - Level 22
  (562, 56200, 611, 27, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Yamask - Psyshock - Level 30
  (562, 56200, 473, 27, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Yamask - Curse - Level 36
  (562, 56200, 174, 27, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Yamask - Shadow Ball - Level 40
  (562, 56200, 247, 27, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Yamask - Dark Pulse - Level 44
  (562, 56200, 399, 27, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Yamask - Phantom Force - Level 46
  (562, 56200, 566, 27, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Yamask - Parting Shot - Level 48
  (562, 56200, 575, 27, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Yamask - Psyshock - TM003
  (562, 56200, 473, 27, NULL, 2, NULL, NULL, 26002003, NULL, 14),
  -- Yamask - Calm Mind - TM006
  (562, 56200, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 15),
  -- Yamask - Thunder Wave - TM008
  (562, 56200, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 16),
  -- Yamask - Protect - TM017
  (562, 56200, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 17),
  -- Yamask - Energy Ball - TM026
  (562, 56200, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 18),
  -- Yamask - Endure - TM035
  (562, 56200, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 19),
  -- Yamask - Stealth Rock - TM037
  (562, 56200, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 20),
  -- Yamask - Knock Off - TM045
  (562, 56200, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 21),
  -- Yamask - Mud Shot - TM046
  (562, 56200, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 22),
  -- Yamask - Self-Destruct - TM048
  (562, 56200, 120, 27, NULL, 2, NULL, NULL, 26002048, NULL, 23),
  -- Yamask - Safeguard - TM051
  (562, 56200, 219, 27, NULL, 2, NULL, NULL, 26002051, NULL, 24),
  -- Yamask - Will-O-Wisp - TM057
  (562, 56200, 261, 27, NULL, 2, NULL, NULL, 26002057, NULL, 25),
  -- Yamask - Zen Headbutt - TM059
  (562, 56200, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 26),
  -- Yamask - Shadow Claw - TM061
  (562, 56200, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 27),
  -- Yamask - Psychic - TM063
  (562, 56200, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 28),
  -- Yamask - Shadow Ball - TM074
  (562, 56200, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 29),
  -- Yamask - Iron Defense - TM080
  (562, 56200, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 30),
  -- Yamask - Nasty Plot - TM083
  (562, 56200, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 31),
  -- Yamask - Substitute - TM085
  (562, 56200, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 32),
  -- Yamask - Toxic Spikes - TM089
  (562, 56200, 390, 27, NULL, 2, NULL, NULL, 26002089, NULL, 33),
  -- Yamask - Dark Pulse - TM090
  (562, 56200, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 34),
  -- Yamask - Curse - TM091
  (562, 56200, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 35),
  -- Yamask - Heal Block - TM097
  (562, 56200, 377, 27, NULL, 2, NULL, NULL, 26002097, NULL, 36),
  -- Yamask - Facade - TM109
  (562, 56200, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 37),
  -- Yamask - Shadow Punch - TM118
  (562, 56200, 325, 27, NULL, 2, NULL, NULL, 26002118, NULL, 38),
  -- Yamask - Ominous Wind - TM119
  (562, 56200, 466, 27, NULL, 2, NULL, NULL, 26002119, NULL, 39),
  -- Yamask - Dream Eater - TM127
  (562, 56200, 138, 27, NULL, 2, NULL, NULL, 26002127, NULL, 40),
  -- Galarian Yamask - Confusion - Level 1
  (562, 56201, 93, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Galarian Yamask - Protect - Level 1
  (562, 56201, 182, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Galarian Yamask - Haze - Level 4
  (562, 56201, 114, 27, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Galarian Yamask - Confuse Ray - Level 8
  (562, 56201, 109, 27, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Galarian Yamask - Fake Tears - Level 12
  (562, 56201, 313, 27, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Galarian Yamask - Brutal Swing - Level 16
  (562, 56201, 693, 27, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Galarian Yamask - Infestation - Level 22
  (562, 56201, 611, 27, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Galarian Yamask - Psyshock - Level 30
  (562, 56201, 473, 27, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Galarian Yamask - Curse - Level 36
  (562, 56201, 174, 27, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Galarian Yamask - Shadow Ball - Level 40
  (562, 56201, 247, 27, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Galarian Yamask - Earthquake - Level 44
  (562, 56201, 89, 27, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Galarian Yamask - Phantom Force - Level 46
  (562, 56201, 566, 27, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Galarian Yamask - Parting Shot - Level 48
  (562, 56201, 575, 27, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Galarian Yamask - Psyshock - TM003
  (562, 56201, 473, 27, NULL, 2, NULL, NULL, 26002003, NULL, 14),
  -- Galarian Yamask - Calm Mind - TM006
  (562, 56201, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 15),
  -- Galarian Yamask - Thunder Wave - TM008
  (562, 56201, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 16),
  -- Galarian Yamask - Rock Slide - TM012
  (562, 56201, 157, 27, NULL, 2, NULL, NULL, 26002012, NULL, 17),
  -- Galarian Yamask - Protect - TM017
  (562, 56201, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Galarian Yamask - Energy Ball - TM026
  (562, 56201, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 19),
  -- Galarian Yamask - Endure - TM035
  (562, 56201, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 20),
  -- Galarian Yamask - Rock Tomb - TM036
  (562, 56201, 317, 27, NULL, 2, NULL, NULL, 26002036, NULL, 21),
  -- Galarian Yamask - Stealth Rock - TM037
  (562, 56201, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 22),
  -- Galarian Yamask - Knock Off - TM045
  (562, 56201, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 23),
  -- Galarian Yamask - Mud Shot - TM046
  (562, 56201, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 24),
  -- Galarian Yamask - Self-Destruct - TM048
  (562, 56201, 120, 27, NULL, 2, NULL, NULL, 26002048, NULL, 25),
  -- Galarian Yamask - Safeguard - TM051
  (562, 56201, 219, 27, NULL, 2, NULL, NULL, 26002051, NULL, 26),
  -- Galarian Yamask - Earth Power - TM052
  (562, 56201, 414, 27, NULL, 2, NULL, NULL, 26002052, NULL, 27),
  -- Galarian Yamask - Will-O-Wisp - TM057
  (562, 56201, 261, 27, NULL, 2, NULL, NULL, 26002057, NULL, 28),
  -- Galarian Yamask - Zen Headbutt - TM059
  (562, 56201, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 29),
  -- Galarian Yamask - Shadow Claw - TM061
  (562, 56201, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 30),
  -- Galarian Yamask - Psychic - TM063
  (562, 56201, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 31),
  -- Galarian Yamask - Earthquake - TM069
  (562, 56201, 89, 27, NULL, 2, NULL, NULL, 26002069, NULL, 32),
  -- Galarian Yamask - Shadow Ball - TM074
  (562, 56201, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 33),
  -- Galarian Yamask - Iron Defense - TM080
  (562, 56201, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 34),
  -- Galarian Yamask - Nasty Plot - TM083
  (562, 56201, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 35),
  -- Galarian Yamask - Substitute - TM085
  (562, 56201, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 36),
  -- Galarian Yamask - Toxic Spikes - TM089
  (562, 56201, 390, 27, NULL, 2, NULL, NULL, 26002089, NULL, 37),
  -- Galarian Yamask - Dark Pulse - TM090
  (562, 56201, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 38),
  -- Galarian Yamask - Curse - TM091
  (562, 56201, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 39),
  -- Galarian Yamask - Heal Block - TM097
  (562, 56201, 377, 27, NULL, 2, NULL, NULL, 26002097, NULL, 40),
  -- Galarian Yamask - Facade - TM109
  (562, 56201, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 41),
  -- Galarian Yamask - Shadow Punch - TM118
  (562, 56201, 325, 27, NULL, 2, NULL, NULL, 26002118, NULL, 42),
  -- Galarian Yamask - Ominous Wind - TM119
  (562, 56201, 466, 27, NULL, 2, NULL, NULL, 26002119, NULL, 43),
  -- Galarian Yamask - Dream Eater - TM127
  (562, 56201, 138, 27, NULL, 2, NULL, NULL, 26002127, NULL, 44),
  -- Cofagrigus - Confusion - Level 1
  (563, 56300, 93, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Cofagrigus - Protect - Level 1
  (563, 56300, 182, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Cofagrigus - Haze - Level 4
  (563, 56300, 114, 27, NULL, 1, 4, NULL, NULL, NULL, 3),
  -- Cofagrigus - Confuse Ray - Level 8
  (563, 56300, 109, 27, NULL, 1, 8, NULL, NULL, NULL, 4),
  -- Cofagrigus - Fake Tears - Level 12
  (563, 56300, 313, 27, NULL, 1, 12, NULL, NULL, NULL, 5),
  -- Cofagrigus - Will-O-Wisp - Level 16
  (563, 56300, 261, 27, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Cofagrigus - Infestation - Level 22
  (563, 56300, 611, 27, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Cofagrigus - Psyshock - Level 30
  (563, 56300, 473, 27, NULL, 1, 30, NULL, NULL, NULL, 8),
  -- Cofagrigus - Curse - Level 36
  (563, 56300, 174, 27, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Cofagrigus - Shadow Ball - Level 40
  (563, 56300, 247, 27, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Cofagrigus - Dark Pulse - Level 44
  (563, 56300, 399, 27, NULL, 1, 44, NULL, NULL, NULL, 11),
  -- Cofagrigus - Phantom Force - Level 46
  (563, 56300, 566, 27, NULL, 1, 46, NULL, NULL, NULL, 12),
  -- Cofagrigus - Parting Shot - Level 48
  (563, 56300, 575, 27, NULL, 1, 48, NULL, NULL, NULL, 13),
  -- Cofagrigus - Shadow Claw - Evolution
  (563, 56300, 421, 27, NULL, 7, NULL, NULL, NULL, NULL, 14),
  -- Cofagrigus - Psyshock - TM003
  (563, 56300, 473, 27, NULL, 2, NULL, NULL, 26002003, NULL, 15),
  -- Cofagrigus - Calm Mind - TM006
  (563, 56300, 347, 27, NULL, 2, NULL, NULL, 26002006, NULL, 16),
  -- Cofagrigus - Thunder Wave - TM008
  (563, 56300, 86, 27, NULL, 2, NULL, NULL, 26002008, NULL, 17),
  -- Cofagrigus - Protect - TM017
  (563, 56300, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 18),
  -- Cofagrigus - Energy Ball - TM026
  (563, 56300, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 19),
  -- Cofagrigus - Endure - TM035
  (563, 56300, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 20),
  -- Cofagrigus - Stealth Rock - TM037
  (563, 56300, 446, 27, NULL, 2, NULL, NULL, 26002037, NULL, 21),
  -- Cofagrigus - Giga Drain - TM042
  (563, 56300, 202, 27, NULL, 2, NULL, NULL, 26002042, NULL, 22),
  -- Cofagrigus - Hyper Beam - TM044
  (563, 56300, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 23),
  -- Cofagrigus - Knock Off - TM045
  (563, 56300, 282, 27, NULL, 2, NULL, NULL, 26002045, NULL, 24),
  -- Cofagrigus - Mud Shot - TM046
  (563, 56300, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 25),
  -- Cofagrigus - Self-Destruct - TM048
  (563, 56300, 120, 27, NULL, 2, NULL, NULL, 26002048, NULL, 26),
  -- Cofagrigus - Icy Wind - TM049
  (563, 56300, 196, 27, NULL, 2, NULL, NULL, 26002049, NULL, 27),
  -- Cofagrigus - Safeguard - TM051
  (563, 56300, 219, 27, NULL, 2, NULL, NULL, 26002051, NULL, 28),
  -- Cofagrigus - Giga Impact - TM055
  (563, 56300, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 29),
  -- Cofagrigus - Will-O-Wisp - TM057
  (563, 56300, 261, 27, NULL, 2, NULL, NULL, 26002057, NULL, 30),
  -- Cofagrigus - Zen Headbutt - TM059
  (563, 56300, 428, 27, NULL, 2, NULL, NULL, 26002059, NULL, 31),
  -- Cofagrigus - Shadow Claw - TM061
  (563, 56300, 421, 27, NULL, 2, NULL, NULL, 26002061, NULL, 32),
  -- Cofagrigus - Psychic - TM063
  (563, 56300, 94, 27, NULL, 2, NULL, NULL, 26002063, NULL, 33),
  -- Cofagrigus - Shadow Ball - TM074
  (563, 56300, 247, 27, NULL, 2, NULL, NULL, 26002074, NULL, 34),
  -- Cofagrigus - Iron Defense - TM080
  (563, 56300, 334, 27, NULL, 2, NULL, NULL, 26002080, NULL, 35),
  -- Cofagrigus - Nasty Plot - TM083
  (563, 56300, 417, 27, NULL, 2, NULL, NULL, 26002083, NULL, 36),
  -- Cofagrigus - Substitute - TM085
  (563, 56300, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 37),
  -- Cofagrigus - Toxic Spikes - TM089
  (563, 56300, 390, 27, NULL, 2, NULL, NULL, 26002089, NULL, 38),
  -- Cofagrigus - Dark Pulse - TM090
  (563, 56300, 399, 27, NULL, 2, NULL, NULL, 26002090, NULL, 39),
  -- Cofagrigus - Curse - TM091
  (563, 56300, 174, 27, NULL, 2, NULL, NULL, 26002091, NULL, 40),
  -- Cofagrigus - Heal Block - TM097
  (563, 56300, 377, 27, NULL, 2, NULL, NULL, 26002097, NULL, 41),
  -- Cofagrigus - Facade - TM109
  (563, 56300, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 42),
  -- Cofagrigus - Shadow Punch - TM118
  (563, 56300, 325, 27, NULL, 2, NULL, NULL, 26002118, NULL, 43),
  -- Cofagrigus - Ominous Wind - TM119
  (563, 56300, 466, 27, NULL, 2, NULL, NULL, 26002119, NULL, 44),
  -- Cofagrigus - Dream Eater - TM127
  (563, 56300, 138, 27, NULL, 2, NULL, NULL, 26002127, NULL, 45),
  -- Foongus - Growl - Level 1
  (590, 59000, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Foongus - Absorb - Level 1
  (590, 59000, 71, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Foongus - Stun Spore - Level 1
  (590, 59000, 78, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Foongus - Rollout - Level 10
  (590, 59000, 205, 27, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Foongus - Magical Leaf - Level 14
  (590, 59000, 345, 27, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Foongus - Synthesis - Level 16
  (590, 59000, 235, 27, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Foongus - Toxic Spikes - Level 22
  (590, 59000, 390, 27, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Foongus - Giga Drain - Level 28
  (590, 59000, 202, 27, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Foongus - Toxic - Level 36
  (590, 59000, 92, 27, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Foongus - Solar Beam - Level 48
  (590, 59000, 76, 27, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Foongus - Spore - Level 54
  (590, 59000, 147, 27, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Foongus - Leaf Storm - Level 62
  (590, 59000, 437, 27, NULL, 1, 62, NULL, NULL, NULL, 12),
  -- Foongus - Toxic - TM007
  (590, 59000, 92, 27, NULL, 2, NULL, NULL, 26002007, NULL, 13),
  -- Foongus - Protect - TM017
  (590, 59000, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 14),
  -- Foongus - Energy Ball - TM026
  (590, 59000, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 15),
  -- Foongus - Body Slam - TM033
  (590, 59000, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 16),
  -- Foongus - Endure - TM035
  (590, 59000, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 17),
  -- Foongus - Bullet Seed - TM040
  (590, 59000, 331, 27, NULL, 2, NULL, NULL, 26002040, NULL, 18),
  -- Foongus - Giga Drain - TM042
  (590, 59000, 202, 27, NULL, 2, NULL, NULL, 26002042, NULL, 19),
  -- Foongus - Mud Shot - TM046
  (590, 59000, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 20),
  -- Foongus - Sludge Bomb - TM053
  (590, 59000, 188, 27, NULL, 2, NULL, NULL, 26002053, NULL, 21),
  -- Foongus - Solar Beam - TM064
  (590, 59000, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 22),
  -- Foongus - Substitute - TM085
  (590, 59000, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 23),
  -- Foongus - Toxic Spikes - TM089
  (590, 59000, 390, 27, NULL, 2, NULL, NULL, 26002089, NULL, 24),
  -- Foongus - Dazzling Gleam - TM092
  (590, 59000, 605, 27, NULL, 2, NULL, NULL, 26002092, NULL, 25),
  -- Foongus - Heal Block - TM097
  (590, 59000, 377, 27, NULL, 2, NULL, NULL, 26002097, NULL, 26),
  -- Foongus - Facade - TM109
  (590, 59000, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 27),
  -- Foongus - Mimic - TM125
  (590, 59000, 102, 27, NULL, 2, NULL, NULL, 26002125, NULL, 28),
  -- Foongus - Seed Bomb - TM128
  (590, 59000, 402, 27, NULL, 2, NULL, NULL, 26002128, NULL, 29),
  -- Foongus - First Impression - TM142
  (590, 59000, 660, 27, NULL, 2, NULL, NULL, 26002142, NULL, 30),
  -- Foongus - Skull Bash - TM146
  (590, 59000, 130, 27, NULL, 2, NULL, NULL, 26002146, NULL, 31),
  -- Amoonguss - Growl - Level 1
  (591, 59100, 45, 27, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Amoonguss - Absorb - Level 1
  (591, 59100, 71, 27, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Amoonguss - Stun Spore - Level 1
  (591, 59100, 78, 27, NULL, 1, 1, NULL, NULL, NULL, 3),
  -- Amoonguss - Rollout - Level 10
  (591, 59100, 205, 27, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Amoonguss - Magical Leaf - Level 14
  (591, 59100, 345, 27, NULL, 1, 14, NULL, NULL, NULL, 5),
  -- Amoonguss - Synthesis - Level 16
  (591, 59100, 235, 27, NULL, 1, 16, NULL, NULL, NULL, 6),
  -- Amoonguss - Toxic Spikes - Level 22
  (591, 59100, 390, 27, NULL, 1, 22, NULL, NULL, NULL, 7),
  -- Amoonguss - Giga Drain - Level 28
  (591, 59100, 202, 27, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Amoonguss - Toxic - Level 36
  (591, 59100, 92, 27, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Amoonguss - Solar Beam - Level 48
  (591, 59100, 76, 27, NULL, 1, 48, NULL, NULL, NULL, 10),
  -- Amoonguss - Spore - Level 54
  (591, 59100, 147, 27, NULL, 1, 54, NULL, NULL, NULL, 11),
  -- Amoonguss - Leaf Storm - Level 62
  (591, 59100, 437, 27, NULL, 1, 62, NULL, NULL, NULL, 12),
  -- Amoonguss - Toxic - TM007
  (591, 59100, 92, 27, NULL, 2, NULL, NULL, 26002007, NULL, 13),
  -- Amoonguss - Protect - TM017
  (591, 59100, 182, 27, NULL, 2, NULL, NULL, 26002017, NULL, 14),
  -- Amoonguss - Energy Ball - TM026
  (591, 59100, 412, 27, NULL, 2, NULL, NULL, 26002026, NULL, 15),
  -- Amoonguss - Body Slam - TM033
  (591, 59100, 34, 27, NULL, 2, NULL, NULL, 26002033, NULL, 16),
  -- Amoonguss - Endure - TM035
  (591, 59100, 203, 27, NULL, 2, NULL, NULL, 26002035, NULL, 17),
  -- Amoonguss - Bullet Seed - TM040
  (591, 59100, 331, 27, NULL, 2, NULL, NULL, 26002040, NULL, 18),
  -- Amoonguss - Giga Drain - TM042
  (591, 59100, 202, 27, NULL, 2, NULL, NULL, 26002042, NULL, 19),
  -- Amoonguss - Hyper Beam - TM044
  (591, 59100, 63, 27, NULL, 2, NULL, NULL, 26002044, NULL, 20),
  -- Amoonguss - Mud Shot - TM046
  (591, 59100, 341, 27, NULL, 2, NULL, NULL, 26002046, NULL, 21),
  -- Amoonguss - Sludge Bomb - TM053
  (591, 59100, 188, 27, NULL, 2, NULL, NULL, 26002053, NULL, 22),
  -- Amoonguss - Giga Impact - TM055
  (591, 59100, 416, 27, NULL, 2, NULL, NULL, 26002055, NULL, 23),
  -- Amoonguss - Solar Beam - TM064
  (591, 59100, 76, 27, NULL, 2, NULL, NULL, 26002064, NULL, 24),
  -- Amoonguss - Substitute - TM085
  (591, 59100, 164, 27, NULL, 2, NULL, NULL, 26002085, NULL, 25),
  -- Amoonguss - Toxic Spikes - TM089
  (591, 59100, 390, 27, NULL, 2, NULL, NULL, 26002089, NULL, 26),
  -- Amoonguss - Dazzling Gleam - TM092
  (591, 59100, 605, 27, NULL, 2, NULL, NULL, 26002092, NULL, 27),
  -- Amoonguss - Heal Block - TM097
  (591, 59100, 377, 27, NULL, 2, NULL, NULL, 26002097, NULL, 28),
  -- Amoonguss - Facade - TM109
  (591, 59100, 263, 27, NULL, 2, NULL, NULL, 26002109, NULL, 29),
  -- Amoonguss - Torment - TM121
  (591, 59100, 259, 27, NULL, 2, NULL, NULL, 26002121, NULL, 30),
  -- Amoonguss - Mimic - TM125
  (591, 59100, 102, 27, NULL, 2, NULL, NULL, 26002125, NULL, 31),
  -- Amoonguss - Seed Bomb - TM128
  (591, 59100, 402, 27, NULL, 2, NULL, NULL, 26002128, NULL, 32),
  -- Amoonguss - Swagger - TM139
  (591, 59100, 207, 27, NULL, 2, NULL, NULL, 26002139, NULL, 33),
  -- Amoonguss - First Impression - TM142
  (591, 59100, 660, 27, NULL, 2, NULL, NULL, 26002142, NULL, 34),
  -- Amoonguss - Skull Bash - TM146
  (591, 59100, 130, 27, NULL, 2, NULL, NULL, 26002146, NULL, 35);
