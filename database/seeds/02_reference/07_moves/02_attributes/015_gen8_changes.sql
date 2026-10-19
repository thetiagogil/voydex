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
  -- Rapid Spin Generation VIII
  (229, 8, 1, 50, 100, 40, 0, 'physical'),
  -- Multi-Attack Generation VIII
  (718, 8, 1, 120, 100, 10, 0, 'physical'),
  -- Zippy Zap Generation VIII
  (729, 8, 4, 80, 100, 10, 2, 'physical'),
  -- Bouncy Bubble Generation VIII
  (733, 8, 3, 60, 100, 20, 0, 'special'),
  -- Buzzy Buzz Generation VIII
  (734, 8, 4, 60, 100, 20, 0, 'special'),
  -- Sizzly Slide Generation VIII
  (735, 8, 2, 60, 100, 20, 0, 'physical'),
  -- Glitzy Glow Generation VIII
  (736, 8, 11, 80, 95, 15, 0, 'special'),
  -- Baddy Bad Generation VIII
  (737, 8, 16, 80, 95, 15, 0, 'special'),
  -- Sappy Seed Generation VIII
  (738, 8, 5, 100, 90, 10, 0, 'physical'),
  -- Freezy Frost Generation VIII
  (739, 8, 6, 100, 90, 10, 0, 'special'),
  -- Sparkly Swirl Generation VIII
  (740, 8, 18, 120, 85, 5, 0, 'special');
