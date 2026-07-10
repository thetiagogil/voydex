-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Scarlet / Violet, Gym Leader, Elite Four, Champion, Team Star, Titan Pokémon, The Way Home, and First partner Pokémon pages.
-- Scope: Pokémon Scarlet / Violet milestone-to-badge references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Scarlet / Violet Gym milestones to their badge rewards.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_badge_refs (
  milestone_id,
  badge_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Bug Badge milestone -> Bug Badge
  (230003, 23001, 23, 'reward', 1, NULL),
  -- Grass Badge milestone -> Grass Badge
  (230004, 23002, 23, 'reward', 1, NULL),
  -- Electric Badge milestone -> Electric Badge
  (230005, 23003, 23, 'reward', 1, NULL),
  -- Water Badge milestone -> Water Badge
  (230006, 23004, 23, 'reward', 1, NULL),
  -- Normal Badge milestone -> Normal Badge
  (230007, 23005, 23, 'reward', 1, NULL),
  -- Ghost Badge milestone -> Ghost Badge
  (230008, 23006, 23, 'reward', 1, NULL),
  -- Psychic Badge milestone -> Psychic Badge
  (230009, 23007, 23, 'reward', 1, NULL),
  -- Ice Badge milestone -> Ice Badge
  (230010, 23008, 23, 'reward', 1, NULL);
