-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order, following The Teal Mask's story.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- The Teal Mask milestone prerequisite links, in Red / Blue's pattern: each
-- required beat suggests the one before it in Story order, and each
-- side-content beat names the beat that opens it (opens-after).
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
  -- Three Signboards <- Festival of Masks
  (240003, 240002, 24, 1, 1, NULL),
  -- The Loyal Three <- Three Signboards
  (240004, 240003, 24, 1, 1, NULL),
  -- Ogerpon <- The Loyal Three
  (240005, 240004, 24, 1, 1, NULL),
  -- Bloodmoon Ursaluna opens after Ogerpon
  (240007, 240005, 24, 4, 1, NULL),
  -- Paradise Barrens opens after Ogerpon
  (240008, 240005, 24, 4, 1, NULL),
  -- Wistful Fields opens after Ogerpon
  (240009, 240005, 24, 4, 1, NULL),
  -- Oni Mountain opens after Ogerpon
  (240010, 240005, 24, 4, 1, NULL);
