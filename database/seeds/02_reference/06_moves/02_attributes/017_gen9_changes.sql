-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia move pages and move list.
-- Cross-check: PokemonDB move pages and PokeAPI move snapshots for row shape.
-- Scope note: official core-series move mechanics through Generation IX.
-- ============================================================================
-- File Scope
-- ============================================================================
-- gen9 changes move attribute rows.
-- Table: reference.move_attributes
-- ============================================================================

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
  -- Absorb Generation IX
  (71, 9, 5, 20, 100, 25, 0, 'special'),
  -- Mega Drain Generation IX
  (72, 9, 5, 40, 100, 15, 0, 'special'),
  -- Solar Beam Generation IX
  (76, 9, 5, 120, 100, 10, 0, 'special'),
  -- Sky Attack Generation IX
  (143, 9, 10, 140, 90, 5, 0, 'physical'),
  -- Rapid Spin Generation IX
  (229, 9, 1, 50, 100, 40, 0, 'physical'),
  -- Mist Ball Generation IX
  (296, 9, 11, 95, 100, 5, 0, 'special'),
  -- Multi-Attack Generation IX
  (718, 9, 1, 120, 100, 10, 0, 'physical'),
  -- Zippy Zap Generation IX
  (729, 9, 4, 80, 100, 10, 2, 'physical'),
  -- Bouncy Bubble Generation IX
  (733, 9, 3, 60, 100, 20, 0, 'special'),
  -- Buzzy Buzz Generation IX
  (734, 9, 4, 60, 100, 20, 0, 'special'),
  -- Sizzly Slide Generation IX
  (735, 9, 2, 60, 100, 20, 0, 'physical'),
  -- Glitzy Glow Generation IX
  (736, 9, 11, 80, 95, 15, 0, 'special'),
  -- Baddy Bad Generation IX
  (737, 9, 16, 80, 95, 15, 0, 'special'),
  -- Sappy Seed Generation IX
  (738, 9, 5, 100, 90, 10, 0, 'physical'),
  -- Freezy Frost Generation IX
  (739, 9, 6, 100, 90, 10, 0, 'special'),
  -- Sparkly Swirl Generation IX
  (740, 9, 18, 120, 85, 5, 0, 'special');
