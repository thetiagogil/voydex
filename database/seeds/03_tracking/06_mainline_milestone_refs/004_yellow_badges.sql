-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge page.
-- Cross-check: Red / Blue tracking seed structure.
-- Scope: Pokémon Yellow milestone-to-badge references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links required Yellow Gym milestones to their badge rewards.
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
  (20003, 2001, 2, 'reward', 1, NULL),
  -- Cascade Badge milestone -> Cascade Badge
  (20005, 2002, 2, 'reward', 1, NULL),
  -- Thunder Badge milestone -> Thunder Badge
  (20006, 2003, 2, 'reward', 1, NULL),
  -- Rainbow Badge milestone -> Rainbow Badge
  (20007, 2004, 2, 'reward', 1, NULL),
  -- Soul Badge milestone -> Soul Badge
  (20008, 2005, 2, 'reward', 1, NULL),
  -- Marsh Badge milestone -> Marsh Badge
  (20009, 2006, 2, 'reward', 1, NULL),
  -- Volcano Badge milestone -> Volcano Badge
  (20011, 2007, 2, 'reward', 1, NULL),
  -- Earth Badge milestone -> Earth Badge
  (20012, 2008, 2, 'reward', 1, NULL);
