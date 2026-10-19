-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia move pages and move list.
-- Cross-check: PokemonDB move pages.
-- Scope note: values one version group uses instead of its generation row.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group move attribute overrides.
-- Let's Go doubles the draining and two-turn moves; Diamond/Pearl raises Hypnosis to 70%.
-- Table: reference.move_version_group_attributes
-- ============================================================================

INSERT INTO reference.move_version_group_attributes (move_id, version_group_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
  -- Absorb in Let's Go Pikachu / Let's Go Eevee
  (71, 17, 5, 40, 100, 15, 0, 'special'),
  -- Mega Drain in Let's Go Pikachu / Let's Go Eevee
  (72, 17, 5, 75, 100, 10, 0, 'special'),
  -- Solar Beam in Let's Go Pikachu / Let's Go Eevee
  (76, 17, 5, 200, 100, 10, 0, 'special'),
  -- Hypnosis in Diamond / Pearl
  (95, 8, 11, NULL, 70, 20, 0, 'status'),
  -- Sky Attack in Let's Go Pikachu / Let's Go Eevee
  (143, 17, 10, 200, 90, 5, 0, 'physical');
