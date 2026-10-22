-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Pokémon Legends: Z-A mainline milestone prerequisite links.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_prerequisites (
  milestone_id,
  prerequisite_milestone_id,
  version_group_id,
  prerequisite_kind_id,
  sort_order,
  notes
) VALUES
  -- Arrive in Lumiose City <- Choose Starter
  (260002, 260001, 26, 1, 1, NULL),
  -- Join Team MZ <- Arrive in Lumiose City
  (260003, 260002, 26, 1, 1, NULL),
  -- Enter Z-A Royale <- Join Team MZ
  (260004, 260003, 26, 1, 1, NULL),
  -- Reach Rank A <- Enter Z-A Royale
  (260006, 260004, 26, 1, 1, NULL),
  -- Unlock Mega Evolution <- Reach Rank A
  (260005, 260006, 26, 1, 1, NULL),
  -- Explore Lysandre Labs <- Unlock Mega Evolution
  (260007, 260005, 26, 1, 1, NULL),
  -- Stop the Ange Crisis <- Explore Lysandre Labs
  (260008, 260007, 26, 1, 1, NULL),
  -- Infinite Z-A Royale <- Stop the Ange Crisis
  (260009, 260008, 26, 1, 1, NULL);
