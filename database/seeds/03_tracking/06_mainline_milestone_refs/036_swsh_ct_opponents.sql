-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia The Crown Tundra, Crown Tundra expedition, Calyrex, and Legendary clue pages.
-- Scope: Pokémon The Crown Tundra milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links The Crown Tundra battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Battle Peony -> Peony
  (200002, 20001, 20, 'battle-opponent', 1, NULL),
  -- Calyrex Quest -> Calyrex
  (200004, 20002, 20, 'battle-opponent', 1, NULL);
