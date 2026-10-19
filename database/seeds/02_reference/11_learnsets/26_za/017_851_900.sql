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
-- Pokémon Legends: Z-A learnsets for species 851-900.
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
  -- Falinks - Tackle - Level 1
  (870, 87000, 33, 26, NULL, 1, 1, NULL, NULL, NULL, 1),
  -- Falinks - Protect - Level 1
  (870, 87000, 182, 26, NULL, 1, 1, NULL, NULL, NULL, 2),
  -- Falinks - Rock Smash - Level 5
  (870, 87000, 249, 26, NULL, 1, 5, NULL, NULL, NULL, 3),
  -- Falinks - Focus Energy - Level 10
  (870, 87000, 116, 26, NULL, 1, 10, NULL, NULL, NULL, 4),
  -- Falinks - Headbutt - Level 15
  (870, 87000, 29, 26, NULL, 1, 15, NULL, NULL, NULL, 5),
  -- Falinks - Bulk Up - Level 20
  (870, 87000, 339, 26, NULL, 1, 20, NULL, NULL, NULL, 6),
  -- Falinks - Endure - Level 25
  (870, 87000, 203, 26, NULL, 1, 25, NULL, NULL, NULL, 7),
  -- Falinks - Iron Head - Level 32
  (870, 87000, 442, 26, NULL, 1, 32, NULL, NULL, NULL, 8),
  -- Falinks - Brick Break - Level 36
  (870, 87000, 280, 26, NULL, 1, 36, NULL, NULL, NULL, 9),
  -- Falinks - No Retreat - Level 40
  (870, 87000, 748, 26, NULL, 1, 40, NULL, NULL, NULL, 10),
  -- Falinks - Iron Defense - Level 43
  (870, 87000, 334, 26, NULL, 1, 43, NULL, NULL, NULL, 11),
  -- Falinks - Close Combat - Level 48
  (870, 87000, 370, 26, NULL, 1, 48, NULL, NULL, NULL, 12),
  -- Falinks - Megahorn - Level 52
  (870, 87000, 224, 26, NULL, 1, 52, NULL, NULL, NULL, 13),
  -- Falinks - Headbutt - TM001
  (870, 87000, 29, 26, NULL, 2, NULL, NULL, 26002001, NULL, 14),
  -- Falinks - Rock Smash - TM004
  (870, 87000, 249, 26, NULL, 2, NULL, NULL, 26002004, NULL, 15),
  -- Falinks - Brick Break - TM010
  (870, 87000, 280, 26, NULL, 2, NULL, NULL, 26002010, NULL, 16),
  -- Falinks - Bulk Up - TM011
  (870, 87000, 339, 26, NULL, 2, NULL, NULL, 26002011, NULL, 17),
  -- Falinks - Rock Slide - TM012
  (870, 87000, 157, 26, NULL, 2, NULL, NULL, 26002012, NULL, 18),
  -- Falinks - Protect - TM017
  (870, 87000, 182, 26, NULL, 2, NULL, NULL, 26002017, NULL, 19),
  -- Falinks - Swords Dance - TM030
  (870, 87000, 14, 26, NULL, 2, NULL, NULL, 26002030, NULL, 20),
  -- Falinks - Body Slam - TM033
  (870, 87000, 34, 26, NULL, 2, NULL, NULL, 26002033, NULL, 21),
  -- Falinks - Endure - TM035
  (870, 87000, 203, 26, NULL, 2, NULL, NULL, 26002035, NULL, 22),
  -- Falinks - Rock Tomb - TM036
  (870, 87000, 317, 26, NULL, 2, NULL, NULL, 26002036, NULL, 23),
  -- Falinks - Hyper Beam - TM044
  (870, 87000, 63, 26, NULL, 2, NULL, NULL, 26002044, NULL, 24),
  -- Falinks - Knock Off - TM045
  (870, 87000, 282, 26, NULL, 2, NULL, NULL, 26002045, NULL, 25),
  -- Falinks - Agility - TM047
  (870, 87000, 97, 26, NULL, 2, NULL, NULL, 26002047, NULL, 26),
  -- Falinks - Giga Impact - TM055
  (870, 87000, 416, 26, NULL, 2, NULL, NULL, 26002055, NULL, 27),
  -- Falinks - Iron Head - TM058
  (870, 87000, 442, 26, NULL, 2, NULL, NULL, 26002058, NULL, 28),
  -- Falinks - Zen Headbutt - TM059
  (870, 87000, 428, 26, NULL, 2, NULL, NULL, 26002059, NULL, 29),
  -- Falinks - Poison Jab - TM077
  (870, 87000, 398, 26, NULL, 2, NULL, NULL, 26002077, NULL, 30),
  -- Falinks - Iron Defense - TM080
  (870, 87000, 334, 26, NULL, 2, NULL, NULL, 26002080, NULL, 31),
  -- Falinks - Substitute - TM085
  (870, 87000, 164, 26, NULL, 2, NULL, NULL, 26002085, NULL, 32),
  -- Falinks - Focus Blast - TM102
  (870, 87000, 411, 26, NULL, 2, NULL, NULL, 26002102, NULL, 33),
  -- Falinks - Close Combat - TM107
  (870, 87000, 370, 26, NULL, 2, NULL, NULL, 26002107, NULL, 34);
