-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Zygarde Cell.
-- Cross-check: Serebii Sun/Moon Zygarde locations and legacy Voydex seed.
-- Scope: Pokémon Sun/Moon Zygarde Cells and Cores.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_collectibles.
-- ============================================================================

INSERT INTO tracking.mainline_collectibles (
  id,
  version_group_id,
  game_id,
  collectible_type_id,
  slug,
  name,
  total_count,
  sprite_slug,
  sort_order,
  is_required_for_completion
)
VALUES
  -- Zygarde Cells
  (15001, 15, NULL, 1, 'zygarde-cells', 'Zygarde Cells', 95, 'zygarde-cell', 1, true),
  -- Zygarde Cores
  (15002, 15, NULL, 1, 'zygarde-cores', 'Zygarde Cores', 5, 'zygarde-core', 2, true);
