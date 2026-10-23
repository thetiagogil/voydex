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

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class, effect_summary)
VALUES
  -- Tackle Generation VII
  (33, 7, 1, 40, 100, 35, 0, 'physical', 'A plain attack with no added effect.'),
  -- Thunder Wave Generation VII
  (86, 7, 4, NULL, 90, 20, 0, 'status', 'Paralyzes the target.'),
  -- Leech Life Generation VII
  (141, 7, 12, 80, 100, 10, 0, 'physical', 'Restores the user''s HP by half of the damage dealt.'),
  -- Swagger Generation VII
  (207, 7, 1, NULL, 85, 15, 0, 'status', 'Confuses the target but raises its Attack by two stages.'),
  -- Sucker Punch Generation VII
  (389, 7, 16, 70, 100, 5, 1, 'physical', 'Strikes first (+1 priority), but only if the target is about to attack.'),
  -- Dark Void Generation VII
  (464, 7, 16, NULL, 50, 10, 0, 'status', 'Puts the target to sleep.'),
  -- Flying Press Generation VII
  (560, 7, 7, 100, 95, 10, 0, 'physical', 'Counts as both Fighting and Flying type for damage.'),
  -- Fell Stinger Generation VII
  (565, 7, 12, 50, 100, 25, 0, 'physical', 'Raises the user''s Attack by three stages if it knocks out the target.'),
  -- Parabolic Charge Generation VII
  (570, 7, 4, 65, 100, 20, 0, 'special', 'Restores the user''s HP by half of the damage dealt.'),
  -- Mystical Fire Generation VII
  (595, 7, 2, 75, 100, 10, 0, 'special', 'Lowers the target''s Sp. Atk by one stage.');
