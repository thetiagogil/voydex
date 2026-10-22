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
  -- Reach Rank Y <- Enter Z-A Royale
  (260013, 260004, 26, 1, 1, NULL),
  -- Reach Rank X <- Reach Rank Y
  (260014, 260013, 26, 1, 1, NULL),
  -- Reach Rank W <- Reach Rank X
  (260015, 260014, 26, 1, 1, NULL),
  -- Reach Rank V <- Reach Rank W
  (260016, 260015, 26, 1, 1, NULL),
  -- Unlock Mega Evolution <- Reach Rank V
  (260005, 260016, 26, 1, 1, NULL),
  -- Reach Rank F <- Unlock Mega Evolution
  (260017, 260005, 26, 1, 1, NULL),
  -- Reach Rank E <- Reach Rank F
  (260018, 260017, 26, 1, 1, NULL),
  -- Reach Rank D <- Reach Rank E
  (260019, 260018, 26, 1, 1, NULL),
  -- Reach Rank C <- Reach Rank D
  (260020, 260019, 26, 1, 1, NULL),
  -- Reach Rank B <- Reach Rank C
  (260006, 260020, 26, 1, 1, NULL),
  -- Explore Lysandre Labs <- Reach Rank B
  (260007, 260006, 26, 1, 1, NULL),
  -- Reach Rank A <- Explore Lysandre Labs
  (260021, 260007, 26, 1, 1, NULL),
  -- Stop the Ange Crisis <- Reach Rank A
  (260008, 260021, 26, 1, 1, NULL),
  -- Infinite Z-A Royale <- Stop the Ange Crisis
  (260009, 260008, 26, 1, 1, NULL);
