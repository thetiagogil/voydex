-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia move pages and move list.
-- Cross-check: PokemonDB move pages and PokeAPI move snapshots for row shape.
-- Scope note: official core-series move mechanics through Generation IX.
-- ============================================================================
-- File Scope
-- ============================================================================
-- gen2 changes move attribute rows.
-- Table: reference.move_attributes
-- ============================================================================

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
  -- Karate Chop Generation II
  (2, 2, 7, 50, 100, 25, 0, 'physical'),
  -- Razor Wind Generation II
  (13, 2, 1, 80, 100, 10, 0, 'physical'),
  -- Gust Generation II
  (16, 2, 10, 40, 100, 35, 0, 'physical'),
  -- Wing Attack Generation II
  (17, 2, 10, 60, 100, 35, 0, 'physical'),
  -- Whirlwind Generation II
  (18, 2, 1, NULL, 100, 20, -6, 'status'),
  -- Sand Attack Generation II
  (28, 2, 9, NULL, 100, 15, 0, 'status'),
  -- Double-Edge Generation II
  (38, 2, 1, 120, 100, 15, 0, 'physical'),
  -- Bite Generation II
  (44, 2, 16, 60, 100, 25, 0, 'special'),
  -- Blizzard Generation II
  (59, 2, 6, 120, 70, 5, 0, 'special'),
  -- Rock Throw Generation II
  (88, 2, 13, 50, 90, 15, 0, 'physical'),
  -- Dig Generation II
  (91, 2, 9, 60, 100, 10, 0, 'physical'),
  -- Self-Destruct Generation II
  (120, 2, 1, 200, 100, 5, 0, 'physical'),
  -- Explosion Generation II
  (153, 2, 1, 250, 100, 5, 0, 'physical');
