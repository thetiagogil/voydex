-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia move pages and move list.
-- Cross-check: PokemonDB move pages and PokeAPI move snapshots for row shape.
-- Scope note: official core-series move mechanics through Generation IX.
-- ============================================================================
-- File Scope
-- ============================================================================
-- gen7 changes move attribute rows.
-- Table: reference.move_attributes
-- ============================================================================

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
  -- Tackle Generation VII
  (33, 7, 1, 40, 100, 35, 0, 'physical'),
  -- Thunder Wave Generation VII
  (86, 7, 4, NULL, 90, 20, 0, 'status'),
  -- Leech Life Generation VII
  (141, 7, 12, 80, 100, 10, 0, 'physical'),
  -- Swagger Generation VII
  (207, 7, 1, NULL, 85, 15, 0, 'status'),
  -- Sucker Punch Generation VII
  (389, 7, 16, 70, 100, 5, 1, 'physical'),
  -- Dark Void Generation VII
  (464, 7, 16, NULL, 50, 10, 0, 'status'),
  -- Flying Press Generation VII
  (560, 7, 7, 100, 95, 10, 0, 'physical'),
  -- Fell Stinger Generation VII
  (565, 7, 12, 50, 100, 25, 0, 'physical'),
  -- Parabolic Charge Generation VII
  (570, 7, 4, 65, 100, 20, 0, 'special'),
  -- Mystical Fire Generation VII
  (595, 7, 2, 75, 100, 10, 0, 'special');
