-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Mega Dimension, Hyperspace Lumiose, Darkrai, Groudon, Kyogre, and Rayquaza pages.
-- Scope: Pokémon Mega Dimension milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Mega Dimension battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Rogue Mega Darkrai -> Darkrai
  (270003, 27001, 27, 'battle-opponent', 1, NULL),
  -- Capture Groudon -> Groudon
  (270004, 27002, 27, 'battle-opponent', 1, NULL),
  -- Capture Kyogre -> Kyogre
  (270005, 27003, 27, 'battle-opponent', 1, NULL),
  -- Rogue Mega Rayquaza -> Rayquaza
  (270006, 27004, 27, 'battle-opponent', 1, NULL);
