-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex product definition.
-- Cross-check: Bulbapedia, Serebii, and PokemonDB terminology.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Move identity category rows.
-- ============================================================================
INSERT INTO reference.move_kinds (id, slug, name, description, sort_order)
VALUES
  -- Regular
  (1, 'regular', 'Regular', 'Standard learnable moves used in normal move lists, learnsets, and team planning.', 1),
  -- Z-Move
  (2, 'z-move', 'Z-Move', 'Generation VII special moves activated through Z-Crystals rather than learned as ordinary moves.', 2),
  -- Max Move
  (3, 'max-move', 'Max Move', 'Generation VIII Dynamax moves derived from regular moves during battle.', 3),
  -- G-Max Move
  (4, 'g-max-move', 'G-Max Move', 'Species-specific Gigantamax moves derived during battle from eligible Gigantamax Pokémon.', 4);
