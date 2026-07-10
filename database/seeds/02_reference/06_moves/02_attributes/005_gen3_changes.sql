-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia move pages and move list.
-- Cross-check: PokemonDB move pages and PokeAPI move snapshots for row shape.
-- Scope note: official core-series move mechanics through Generation IX.
-- ============================================================================
-- File Scope
-- ============================================================================
-- gen3 changes move attribute rows.
-- Table: reference.move_attributes
-- ============================================================================

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
  -- Wing Attack Generation III
  (17, 3, 10, 60, 100, 35, 0, 'physical'),
  -- Whirlwind Generation III
  (18, 3, 1, NULL, 100, 20, -6, 'status'),
  -- Double-Edge Generation III
  (38, 3, 1, 120, 100, 15, 0, 'physical'),
  -- Blizzard Generation III
  (59, 3, 6, 120, 70, 5, 0, 'special'),
  -- Rock Throw Generation III
  (88, 3, 13, 50, 90, 15, 0, 'physical'),
  -- Dig Generation III
  (91, 3, 9, 60, 100, 10, 0, 'physical'),
  -- Self-Destruct Generation III
  (120, 3, 1, 200, 100, 5, 0, 'physical'),
  -- Explosion Generation III
  (153, 3, 1, 250, 100, 5, 0, 'physical');
