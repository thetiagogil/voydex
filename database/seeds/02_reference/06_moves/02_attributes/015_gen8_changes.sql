-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia move pages and move list.
-- Cross-check: PokemonDB move pages and PokeAPI move snapshots for row shape.
-- Scope note: official core-series move mechanics through Generation IX.
-- ============================================================================
-- File Scope
-- ============================================================================
-- gen8 changes move attribute rows.
-- Table: reference.move_attributes
-- ============================================================================

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
  -- Tackle Generation VIII
  (33, 8, 1, 40, 100, 35, 0, 'physical'),
  -- Absorb Generation VIII
  (71, 8, 5, 40, 100, 15, 0, 'special'),
  -- Mega Drain Generation VIII
  (72, 8, 5, 75, 100, 10, 0, 'special'),
  -- Solar Beam Generation VIII
  (76, 8, 5, 200, 100, 10, 0, 'special'),
  -- Thunder Wave Generation VIII
  (86, 8, 4, NULL, 90, 20, 0, 'status'),
  -- Leech Life Generation VIII
  (141, 8, 12, 80, 100, 10, 0, 'physical'),
  -- Sky Attack Generation VIII
  (143, 8, 10, 200, 90, 5, 0, 'physical'),
  -- Swagger Generation VIII
  (207, 8, 1, NULL, 85, 15, 0, 'status'),
  -- Sucker Punch Generation VIII
  (389, 8, 16, 70, 100, 5, 1, 'physical'),
  -- Dark Void Generation VIII
  (464, 8, 16, NULL, 50, 10, 0, 'status'),
  -- Flying Press Generation VIII
  (560, 8, 7, 100, 95, 10, 0, 'physical'),
  -- Fell Stinger Generation VIII
  (565, 8, 12, 50, 100, 25, 0, 'physical'),
  -- Parabolic Charge Generation VIII
  (570, 8, 4, 65, 100, 20, 0, 'special'),
  -- Mystical Fire Generation VIII
  (595, 8, 2, 75, 100, 10, 0, 'special');
