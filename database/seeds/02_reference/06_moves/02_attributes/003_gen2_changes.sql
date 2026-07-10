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
  -- Gust Generation II
  (16, 2, 10, 40, 100, 35, 0, 'physical'),
  -- Sand Attack Generation II
  (28, 2, 9, NULL, 100, 15, 0, 'status'),
  -- Bite Generation II
  (44, 2, 16, 60, 100, 25, 0, 'special');
