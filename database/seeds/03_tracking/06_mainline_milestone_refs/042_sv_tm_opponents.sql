-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia The Teal Mask, Kitakami, Kieran, Ogerpon, Loyal Three, and Bloodmoon Ursaluna pages.
-- Scope: Pokémon The Teal Mask milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links The Teal Mask battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Battle Kieran -> Kieran
  (240003, 24001, 24, 'battle-opponent', 1, NULL),
  -- Loyal Three Quest -> The Loyal Three
  (240004, 24002, 24, 'battle-opponent', 1, NULL),
  -- Ogerpon Battle -> Ogerpon
  (240005, 24003, 24, 'battle-opponent', 1, NULL),
  -- Kieran Rematch -> Kieran
  (240006, 24001, 24, 'battle-opponent', 1, NULL),
  -- Bloodmoon Ursaluna -> Bloodmoon Ursaluna
  (240007, 24004, 24, 'battle-opponent', 1, NULL);
