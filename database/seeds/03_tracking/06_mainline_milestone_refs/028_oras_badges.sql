-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Omega Ruby / Alpha Sapphire, Fossil, Delta Episode, and First partner Pokémon pages.
-- Scope: Pokémon Omega Ruby / Alpha Sapphire milestone-to-badge references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Omega Ruby / Alpha Sapphire Gym milestones to their badge rewards.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_badge_refs (
  milestone_id,
  badge_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Stone Badge milestone -> Stone Badge
  (140003, 14001, 14, 'reward', 1, NULL),
  -- Knuckle Badge milestone -> Knuckle Badge
  (140004, 14002, 14, 'reward', 1, NULL),
  -- Dynamo Badge milestone -> Dynamo Badge
  (140005, 14003, 14, 'reward', 1, NULL),
  -- Heat Badge milestone -> Heat Badge
  (140007, 14004, 14, 'reward', 1, NULL),
  -- Balance Badge milestone -> Balance Badge
  (140008, 14005, 14, 'reward', 1, NULL),
  -- Feather Badge milestone -> Feather Badge
  (140009, 14006, 14, 'reward', 1, NULL),
  -- Mind Badge milestone -> Mind Badge
  (140010, 14007, 14, 'reward', 1, NULL),
  -- Rain Badge milestone -> Rain Badge
  (140011, 14008, 14, 'reward', 1, NULL);
