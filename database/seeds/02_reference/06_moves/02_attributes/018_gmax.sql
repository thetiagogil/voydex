-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia move pages and move list.
-- Cross-check: PokemonDB move pages and PokeAPI move snapshots for row shape.
-- Scope note: official core-series move mechanics through Generation IX.
-- ============================================================================
-- File Scope
-- ============================================================================
-- gmax move attribute rows.
-- G-Max rows use null PP/accuracy and variable damage class because mechanics derive from compatible base moves.
-- Table: reference.move_attributes
-- ============================================================================

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class)
VALUES
  -- G-Max Wildfire Generation VIII
  (10001, 8, 2, NULL, NULL, NULL, 0, 'variable'),
  -- G-Max Befuddle Generation VIII
  (10002, 8, 12, NULL, NULL, NULL, 0, 'variable'),
  -- G-Max Volt Crash Generation VIII
  (10003, 8, 4, NULL, NULL, NULL, 0, 'variable'),
  -- G-Max Gold Rush Generation VIII
  (10004, 8, 1, NULL, NULL, NULL, 0, 'variable'),
  -- G-Max Chi Strike Generation VIII
  (10005, 8, 7, NULL, NULL, NULL, 0, 'variable'),
  -- G-Max Terror Generation VIII
  (10006, 8, 14, NULL, NULL, NULL, 0, 'variable'),
  -- G-Max Resonance Generation VIII
  (10007, 8, 6, NULL, NULL, NULL, 0, 'variable'),
  -- G-Max Cuddle Generation VIII
  (10008, 8, 1, NULL, NULL, NULL, 0, 'variable'),
  -- G-Max Replenish Generation VIII
  (10009, 8, 1, NULL, NULL, NULL, 0, 'variable'),
  -- G-Max Malodor Generation VIII
  (10010, 8, 8, NULL, NULL, NULL, 0, 'variable'),
  -- G-Max Stonesurge Generation VIII
  (10011, 8, 3, NULL, NULL, NULL, 0, 'variable'),
  -- G-Max Wind Rage Generation VIII
  (10012, 8, 10, NULL, NULL, NULL, 0, 'variable'),
  -- G-Max Stun Shock Generation VIII
  (10013, 8, 4, NULL, NULL, NULL, 0, 'variable'),
  -- G-Max Finale Generation VIII
  (10014, 8, 18, NULL, NULL, NULL, 0, 'variable'),
  -- G-Max Depletion Generation VIII
  (10015, 8, 15, NULL, NULL, NULL, 0, 'variable'),
  -- G-Max Gravitas Generation VIII
  (10016, 8, 11, NULL, NULL, NULL, 0, 'variable'),
  -- G-Max Volcalith Generation VIII
  (10017, 8, 13, NULL, NULL, NULL, 0, 'variable'),
  -- G-Max Sandblast Generation VIII
  (10018, 8, 9, NULL, NULL, NULL, 0, 'variable'),
  -- G-Max Snooze Generation VIII
  (10019, 8, 16, NULL, NULL, NULL, 0, 'variable'),
  -- G-Max Tartness Generation VIII
  (10020, 8, 5, NULL, NULL, NULL, 0, 'variable'),
  -- G-Max Sweetness Generation VIII
  (10021, 8, 5, NULL, NULL, NULL, 0, 'variable'),
  -- G-Max Smite Generation VIII
  (10022, 8, 18, NULL, NULL, NULL, 0, 'variable'),
  -- G-Max Steelsurge Generation VIII
  (10023, 8, 17, NULL, NULL, NULL, 0, 'variable'),
  -- G-Max Meltdown Generation VIII
  (10024, 8, 17, NULL, NULL, NULL, 0, 'variable'),
  -- G-Max Foam Burst Generation VIII
  (10025, 8, 3, NULL, NULL, NULL, 0, 'variable'),
  -- G-Max Centiferno Generation VIII
  (10026, 8, 2, NULL, NULL, NULL, 0, 'variable'),
  -- G-Max Vine Lash Generation VIII
  (10027, 8, 5, NULL, NULL, NULL, 0, 'variable'),
  -- G-Max Cannonade Generation VIII
  (10028, 8, 3, NULL, NULL, NULL, 0, 'variable'),
  -- G-Max Drum Solo Generation VIII
  (10029, 8, 5, 160, NULL, NULL, 0, 'variable'),
  -- G-Max Fireball Generation VIII
  (10030, 8, 2, 160, NULL, NULL, 0, 'variable'),
  -- G-Max Hydrosnipe Generation VIII
  (10031, 8, 3, 160, NULL, NULL, 0, 'variable'),
  -- G-Max One Blow Generation VIII
  (10032, 8, 16, NULL, NULL, NULL, 0, 'variable'),
  -- G-Max Rapid Flow Generation VIII
  (10033, 8, 3, NULL, NULL, NULL, 0, 'variable');
