-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Let's Go, Pikachu! / Let's Go, Eevee!, Badge, Elite Four, and Gift Pokémon pages.
-- Scope: Pokémon Let's Go, Pikachu! / Let's Go, Eevee! milestone-to-badge references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Let's Go, Pikachu! / Let's Go, Eevee! Gym milestones to their badge rewards.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_badge_refs (
  milestone_id,
  badge_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Boulder Badge milestone -> Boulder Badge
  (170003, 17001, 17, 'reward', 1, NULL),
  -- Cascade Badge milestone -> Cascade Badge
  (170004, 17002, 17, 'reward', 1, NULL),
  -- Thunder Badge milestone -> Thunder Badge
  (170005, 17003, 17, 'reward', 1, NULL),
  -- Rainbow Badge milestone -> Rainbow Badge
  (170006, 17004, 17, 'reward', 1, NULL),
  -- Soul Badge milestone -> Soul Badge
  (170008, 17005, 17, 'reward', 1, NULL),
  -- Marsh Badge milestone -> Marsh Badge
  (170009, 17006, 17, 'reward', 1, NULL),
  -- Volcano Badge milestone -> Volcano Badge
  (170010, 17007, 17, 'reward', 1, NULL),
  -- Earth Badge milestone -> Earth Badge
  (170011, 17008, 17, 'reward', 1, NULL);
