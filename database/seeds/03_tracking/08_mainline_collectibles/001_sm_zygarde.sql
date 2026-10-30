-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Zygarde Cell.
-- Cross-check: Serebii Sun/Moon Zygarde locations and legacy Voydex seed.
-- Rewards: Bulbapedia Reassembly Unit (10, 50 and 100 Cells and Cores) and
-- Zygarde Cube (the five Core moves); cross-checked on Serebii Sun/Moon Zygarde.
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
  reward_summary,
  sort_order,
  is_required_for_completion
)
VALUES
  -- Zygarde Cells
  (15001, 15, NULL, 1, 'zygarde-cells', 'Zygarde Cells', 95, 'zygarde-cell', 'All 95 Cells and 5 Cores build a Zygarde with Power Construct that turns Complete in battle; 10 and 50 pieces build its 10% and 50% Formes.', 1, true),
  -- Zygarde Cores
  (15002, 15, NULL, 1, 'zygarde-cores', 'Zygarde Cores', 5, 'zygarde-core', 'Each Core lets the Zygarde Cube teach Zygarde a move: Core Enforcer, Thousand Arrows, Thousand Waves, Extreme Speed and Dragon Dance.', 2, true);
