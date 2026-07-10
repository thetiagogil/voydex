-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Black / White, and First partner Pokémon pages.
-- Scope: Pokémon Black / White milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Black / White battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Trio Badge -> Cilan / Chili / Cress
  (110003, 11001, 11, 'battle-opponent', 1, NULL),
  -- Basic Badge -> Lenora
  (110004, 11002, 11, 'battle-opponent', 1, NULL),
  -- Insect Badge -> Burgh
  (110005, 11003, 11, 'battle-opponent', 1, NULL),
  -- Bolt Badge -> Elesa
  (110006, 11004, 11, 'battle-opponent', 1, NULL),
  -- Quake Badge -> Clay
  (110007, 11005, 11, 'battle-opponent', 1, NULL),
  -- Jet Badge -> Skyla
  (110008, 11006, 11, 'battle-opponent', 1, NULL),
  -- Freeze Badge -> Brycen
  (110009, 11007, 11, 'battle-opponent', 1, NULL),
  -- Legend Badge -> Drayden / Iris
  (110010, 11008, 11, 'battle-opponent', 1, NULL),
  -- Elite Four Shauntal -> Shauntal
  (110011, 11009, 11, 'battle-opponent', 1, NULL),
  -- Elite Four Grimsley -> Grimsley
  (110012, 11010, 11, 'battle-opponent', 1, NULL),
  -- Elite Four Caitlin -> Caitlin
  (110013, 11011, 11, 'battle-opponent', 1, NULL),
  -- Elite Four Marshal -> Marshal
  (110014, 11012, 11, 'battle-opponent', 1, NULL),
  -- Battle N -> N
  (110015, 11013, 11, 'battle-opponent', 1, NULL),
  -- Defeat Ghetsis -> Ghetsis
  (110016, 11014, 11, 'battle-opponent', 1, NULL),
  -- Champion Alder -> Alder
  (110017, 11015, 11, 'battle-opponent', 1, NULL);
