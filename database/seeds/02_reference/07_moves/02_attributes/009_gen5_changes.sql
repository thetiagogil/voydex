-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia move pages and move list.
-- Cross-check: PokemonDB move pages and PokeAPI move snapshots for row shape.
-- Scope note: official core-series move mechanics through Generation IX.
-- ============================================================================
-- File Scope
-- ============================================================================
-- gen5 changes move attribute rows.
-- Table: reference.move_attributes
-- ============================================================================

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
  -- Fly Generation V
  (19, 5, 10, 90, 95, 15, 0, 'physical'),
  -- Vine Whip Generation V
  (22, 5, 5, 35, 100, 15, 0, 'physical'),
  -- Jump Kick Generation V
  (26, 5, 7, 85, 95, 25, 0, 'physical'),
  -- Disable Generation V
  (50, 5, 1, NULL, 80, 20, 0, 'status'),
  -- Absorb Generation V
  (71, 5, 5, 20, 100, 25, 0, 'special'),
  -- Mega Drain Generation V
  (72, 5, 5, 40, 100, 15, 0, 'special'),
  -- Petal Dance Generation V
  (80, 5, 5, 90, 100, 20, 0, 'special'),
  -- Dig Generation V
  (91, 5, 9, 80, 100, 10, 0, 'physical'),
  -- Hypnosis Generation V
  (95, 5, 11, NULL, 60, 20, 0, 'status'),
  -- Recover Generation V
  (105, 5, 1, NULL, NULL, 5, 0, 'status'),
  -- High Jump Kick Generation V
  (136, 5, 7, 100, 90, 20, 0, 'physical'),
  -- Flash Generation V
  (148, 5, 1, NULL, 100, 20, 0, 'status'),
  -- Zap Cannon Generation V
  (192, 5, 4, 120, 50, 5, 0, 'special'),
  -- Outrage Generation V
  (200, 5, 15, 120, 100, 15, 0, 'physical'),
  -- Giga Drain Generation V
  (202, 5, 5, 60, 100, 10, 0, 'special'),
  -- Rock Smash Generation V
  (249, 5, 7, 40, 100, 15, 0, 'physical'),
  -- Stockpile Generation V
  (254, 5, 1, NULL, NULL, 20, 0, 'status'),
  -- Dive Generation V
  (291, 5, 3, 80, 100, 10, 0, 'physical'),
  -- Leaf Blade Generation V
  (348, 5, 5, 90, 100, 15, 0, 'physical');
