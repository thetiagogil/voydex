-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia nature page.
-- Cross-check: PokemonDB nature data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Pokémon nature rows and stat modifier pairs.
-- ============================================================================
INSERT INTO reference.natures (id, slug, name, introduced_generation_id, increased_stat, decreased_stat, sort_order)
VALUES
  -- Hardy
  (1, 'hardy', 'Hardy', 3, NULL, NULL, 1),
  -- Lonely
  (2, 'lonely', 'Lonely', 3, 'attack', 'defense', 2),
  -- Brave
  (3, 'brave', 'Brave', 3, 'attack', 'speed', 3),
  -- Adamant
  (4, 'adamant', 'Adamant', 3, 'attack', 'special_attack', 4),
  -- Naughty
  (5, 'naughty', 'Naughty', 3, 'attack', 'special_defense', 5),
  -- Bold
  (6, 'bold', 'Bold', 3, 'defense', 'attack', 6),
  -- Docile
  (7, 'docile', 'Docile', 3, NULL, NULL, 7),
  -- Relaxed
  (8, 'relaxed', 'Relaxed', 3, 'defense', 'speed', 8),
  -- Impish
  (9, 'impish', 'Impish', 3, 'defense', 'special_attack', 9),
  -- Lax
  (10, 'lax', 'Lax', 3, 'defense', 'special_defense', 10),
  -- Timid
  (11, 'timid', 'Timid', 3, 'speed', 'attack', 11),
  -- Hasty
  (12, 'hasty', 'Hasty', 3, 'speed', 'defense', 12),
  -- Serious
  (13, 'serious', 'Serious', 3, NULL, NULL, 13),
  -- Jolly
  (14, 'jolly', 'Jolly', 3, 'speed', 'special_attack', 14),
  -- Naive
  (15, 'naive', 'Naive', 3, 'speed', 'special_defense', 15),
  -- Modest
  (16, 'modest', 'Modest', 3, 'special_attack', 'attack', 16),
  -- Mild
  (17, 'mild', 'Mild', 3, 'special_attack', 'defense', 17),
  -- Quiet
  (18, 'quiet', 'Quiet', 3, 'special_attack', 'speed', 18),
  -- Bashful
  (19, 'bashful', 'Bashful', 3, NULL, NULL, 19),
  -- Rash
  (20, 'rash', 'Rash', 3, 'special_attack', 'special_defense', 20),
  -- Calm
  (21, 'calm', 'Calm', 3, 'special_defense', 'attack', 21),
  -- Gentle
  (22, 'gentle', 'Gentle', 3, 'special_defense', 'defense', 22),
  -- Sassy
  (23, 'sassy', 'Sassy', 3, 'special_defense', 'speed', 23),
  -- Careful
  (24, 'careful', 'Careful', 3, 'special_defense', 'special_attack', 24),
  -- Quirky
  (25, 'quirky', 'Quirky', 3, NULL, NULL, 25);
