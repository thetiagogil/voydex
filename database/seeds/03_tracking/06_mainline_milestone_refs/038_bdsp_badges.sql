-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Brilliant Diamond / Shining Pearl, Badge, Elite Four, Champion, and First partner Pokémon pages.
-- Scope: Pokémon Brilliant Diamond / Shining Pearl milestone-to-badge references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Brilliant Diamond / Shining Pearl Gym milestones to their badge rewards.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_badge_refs (
  milestone_id,
  badge_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Coal Badge milestone -> Coal Badge
  (210003, 21001, 21, 'reward', 1, NULL),
  -- Forest Badge milestone -> Forest Badge
  (210004, 21002, 21, 'reward', 1, NULL),
  -- Cobble Badge milestone -> Cobble Badge
  (210005, 21003, 21, 'reward', 1, NULL),
  -- Fen Badge milestone -> Fen Badge
  (210006, 21004, 21, 'reward', 1, NULL),
  -- Relic Badge milestone -> Relic Badge
  (210007, 21005, 21, 'reward', 1, NULL),
  -- Mine Badge milestone -> Mine Badge
  (210008, 21006, 21, 'reward', 1, NULL),
  -- Icicle Badge milestone -> Icicle Badge
  (210009, 21007, 21, 'reward', 1, NULL),
  -- Beacon Badge milestone -> Beacon Badge
  (210010, 21008, 21, 'reward', 1, NULL);
