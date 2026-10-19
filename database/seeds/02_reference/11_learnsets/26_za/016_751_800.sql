-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Z-A Generation IX learnset raw pages.
-- Cross-check: Serebii and PokemonDB Pokémon Legends: Z-A learnset pages during full row-level audit.
-- Scope note: Base ZA rows include numeric level-up, evolution-learned, and TM001-TM107 rows for Pokémon/forms available in the base ZA scope.
-- Reminder note: source Move Reminder rows are intentionally excluded until reminder/relearn behavior is modeled for this game.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Pokémon Legends: Z-A learnsets for species 751-800.
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
  -- Drampa - Leer - Level 1
  (780, 78000, 43, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Drampa - Twister - Level 1
  (780, 78000, 239, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Drampa - Protect - Level 5
  (780, 78000, 182, 26, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Drampa - Glare - Level 10
  (780, 78000, 137, 26, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Drampa - Safeguard - Level 15
  (780, 78000, 219, 26, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Drampa - Dragon Breath - Level 20
  (780, 78000, 225, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Drampa - Icy Wind - Level 25
  (780, 78000, 196, 26, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Drampa - Body Slam - Level 28
  (780, 78000, 34, 26, NULL, 1, 28, NULL, NULL, NULL, 8),
  -- Drampa - Amnesia - Level 32
  (780, 78000, 133, 26, NULL, 1, 32, NULL, NULL, NULL, 9),
  -- Drampa - Dragon Pulse - Level 35
  (780, 78000, 406, 26, NULL, 1, 35, NULL, NULL, NULL, 10),
  -- Drampa - Light Screen - Level 40
  (780, 78000, 113, 26, NULL, 1, 40, NULL, NULL, NULL, 11),
  -- Drampa - Fly - Level 44
  (780, 78000, 19, 26, NULL, 1, 44, NULL, NULL, NULL, 12),
  -- Drampa - Hyper Voice - Level 50
  (780, 78000, 304, 26, NULL, 1, 50, NULL, NULL, NULL, 13),
  -- Drampa - Outrage - Level 54
  (780, 78000, 200, 26, NULL, 1, 54, NULL, NULL, NULL, 14),
  -- Drampa - Dragon Rush - Level 56
  (780, 78000, 407, 26, NULL, 1, 56, NULL, NULL, NULL, 15),
  -- Drampa - Dragon Claw - TM002
  (780, 78000, 337, 26, NULL, 2, NULL, NULL, 26002002, NULL, 16),
  -- Drampa - Calm Mind - TM006
  (780, 78000, 347, 26, NULL, 2, NULL, NULL, 26002006, NULL, 17),
  -- Drampa - Thunder Wave - TM008
  (780, 78000, 86, 26, NULL, 2, NULL, NULL, 26002008, NULL, 18),
  -- Drampa - Rock Slide - TM012
  (780, 78000, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 19),
  -- Drampa - Ice Beam - TM013
  (780, 78000, 58, 26, NULL, 2, NULL, NULL, 26002013, NULL, 20),
  -- Drampa - Light Screen - TM016
  (780, 78000, 113, 26, NULL, 2, NULL, NULL, 26002016, NULL, 21),
  -- Drampa - Protect - TM017
  (780, 78000, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 22),
  -- Drampa - Play Rough - TM020
  (780, 78000, 583, 26, NULL, 2, NULL, NULL, 26002020, NULL, 23),
  -- Drampa - Energy Ball - TM026
  (780, 78000, 412, 26, NULL, 2, NULL, NULL, 26002026, NULL, 24),
  -- Drampa - Swift - TM027
  (780, 78000, 129, 26, NULL, 2, NULL, NULL, 26002027, NULL, 25),
  -- Drampa - Body Slam - TM033
  (780, 78000, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 26),
  -- Drampa - Endure - TM035
  (780, 78000, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 27),
  -- Drampa - Fire Blast - TM038
  (780, 78000, 126, 26, NULL, 2, NULL, NULL, 26002038, NULL, 28),
  -- Drampa - Fly - TM043
  (780, 78000, 19, 26, NULL, 2, NULL, NULL, 26002043, NULL, 29),
  -- Drampa - Hyper Beam - TM044
  (780, 78000, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 30),
  -- Drampa - Icy Wind - TM049
  (780, 78000, 196, 26, NULL, 2, NULL, NULL, 26002049, NULL, 31),
  -- Drampa - Safeguard - TM051
  (780, 78000, 219, 26, NULL, 2, NULL, NULL, 26002051, NULL, 32),
  -- Drampa - Earth Power - TM052
  (780, 78000, 414, 26, NULL, 2, NULL, NULL, 26002052, NULL, 33),
  -- Drampa - Draco Meteor - TM054
  (780, 78000, 434, 26, NULL, 2, NULL, NULL, 26002054, NULL, 34),
  -- Drampa - Giga Impact - TM055
  (780, 78000, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 35),
  -- Drampa - Shadow Claw - TM061
  (780, 78000, 421, 26, NULL, 2, NULL, NULL, 26002061, NULL, 36),
  -- Drampa - Flamethrower - TM062
  (780, 78000, 53, 26, NULL, 2, NULL, NULL, 26002062, NULL, 37),
  -- Drampa - Solar Beam - TM064
  (780, 78000, 76, 26, NULL, 2, NULL, NULL, 26002064, NULL, 38),
  -- Drampa - Thunderbolt - TM067
  (780, 78000, 85, 26, NULL, 2, NULL, NULL, 26002067, NULL, 39),
  -- Drampa - Heat Wave - TM068
  (780, 78000, 257, 26, NULL, 2, NULL, NULL, 26002068, NULL, 40),
  -- Drampa - Earthquake - TM069
  (780, 78000, 89, 26, NULL, 2, NULL, NULL, 26002069, NULL, 41),
  -- Drampa - Hyper Voice - TM071
  (780, 78000, 304, 26, NULL, 2, NULL, NULL, 26002071, NULL, 42),
  -- Drampa - Surf - TM073
  (780, 78000, 57, 26, NULL, 2, NULL, NULL, 26002073, NULL, 43),
  -- Drampa - Shadow Ball - TM074
  (780, 78000, 247, 26, NULL, 2, NULL, NULL, 26002074, NULL, 44),
  -- Drampa - Dragon Pulse - TM075
  (780, 78000, 406, 26, NULL, 2, NULL, NULL, 26002075, NULL, 45),
  -- Drampa - Hurricane - TM079
  (780, 78000, 542, 26, NULL, 2, NULL, NULL, 26002079, NULL, 46),
  -- Drampa - Substitute - TM085
  (780, 78000, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 47),
  -- Drampa - Outrage - TM093
  (780, 78000, 200, 26, NULL, 2, NULL, NULL, 26002093, NULL, 48),
  -- Drampa - Whirlwind - TM094
  (780, 78000, 18, 26, NULL, 2, NULL, NULL, 26002094, NULL, 49),
  -- Drampa - Hydro Pump - TM096
  (780, 78000, 56, 26, NULL, 2, NULL, NULL, 26002096, NULL, 50),
  -- Drampa - Focus Blast - TM102
  (780, 78000, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 51),
  -- Drampa - Work Up - TM103
  (780, 78000, 526, 26, NULL, 2, NULL, NULL, 26002103, NULL, 52),
  -- Drampa - Blizzard - TM105
  (780, 78000, 59, 26, NULL, 2, NULL, NULL, 26002105, NULL, 53),
  -- Drampa - Thunder - TM106
  (780, 78000, 87, 26, NULL, 2, NULL, NULL, 26002106, NULL, 54);
