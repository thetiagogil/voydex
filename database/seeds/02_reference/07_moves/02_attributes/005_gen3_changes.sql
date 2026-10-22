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

INSERT INTO reference.move_attributes (move_id, generation_start_id, type_id, power, accuracy, pp, priority, damage_class, effect_summary)
VALUES
  -- Whirlwind Generation III
  (18, 3, 1, NULL, 100, 20, -5, 'status', 'Moves last and forces the target to switch out, or ends a wild battle.'),
  -- Roar Generation III
  (46, 3, 1, NULL, 100, 20, -5, 'status', 'Moves last and forces the target to switch out, or ends a wild battle.'),
  -- Low Kick Generation III
  (67, 3, 7, NULL, 100, 20, 0, 'physical', 'Stronger against heavier targets (20 to 120 power).');
