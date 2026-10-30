-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Teal Mask mainline milestone prerequisite links.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_prerequisites (
  milestone_id,
  prerequisite_milestone_id,
  version_group_id,
  prerequisite_kind_id,
  sort_order,
  notes
) VALUES
  -- Festival of Masks <- Arrive in Kitakami
  (240002, 240001, 24, 1, 1, NULL),
  -- Battle Kieran <- Festival of Masks
  (240003, 240002, 24, 1, 1, NULL),
  -- Loyal Three Quest <- Battle Kieran
  (240004, 240003, 24, 1, 1, NULL),
  -- Ogerpon Battle <- Loyal Three Quest
  (240005, 240004, 24, 1, 1, NULL),
  -- Kieran Rematch <- Ogerpon Battle
  (240006, 240005, 24, 1, 1, NULL),
  -- Bloodmoon Ursaluna opens after Kieran Rematch
  (240007, 240006, 24, 4, 1, NULL),
  -- Paradise Barrens opens after Kieran Rematch
  (240008, 240006, 24, 4, 1, NULL),
  -- Wistful Fields opens after Kieran Rematch
  (240009, 240006, 24, 4, 1, NULL),
  -- Oni Mountain opens after Kieran Rematch
  (240010, 240006, 24, 4, 1, NULL);
