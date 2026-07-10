-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, and Platinum pages.
-- Cross-check: Pokémon Platinum source page.
-- Scope: Pokémon Platinum milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Platinum battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Coal Badge -> Roark
  (90003, 9001, 9, 'battle-opponent', 1, NULL),
  -- Forest Badge -> Gardenia
  (90004, 9002, 9, 'battle-opponent', 1, NULL),
  -- Relic Badge -> Fantina
  (90005, 9003, 9, 'battle-opponent', 1, NULL),
  -- Cobble Badge -> Maylene
  (90006, 9004, 9, 'battle-opponent', 1, NULL),
  -- Fen Badge -> Crasher Wake
  (90007, 9005, 9, 'battle-opponent', 1, NULL),
  -- Mine Badge -> Byron
  (90008, 9006, 9, 'battle-opponent', 1, NULL),
  -- Icicle Badge -> Candice
  (90009, 9007, 9, 'battle-opponent', 1, NULL),
  -- Beacon Badge -> Volkner
  (90010, 9008, 9, 'battle-opponent', 1, NULL),
  -- Elite Four Aaron -> Aaron
  (90011, 9009, 9, 'battle-opponent', 1, NULL),
  -- Elite Four Bertha -> Bertha
  (90012, 9010, 9, 'battle-opponent', 1, NULL),
  -- Elite Four Flint -> Flint
  (90013, 9011, 9, 'battle-opponent', 1, NULL),
  -- Elite Four Lucian -> Lucian
  (90014, 9012, 9, 'battle-opponent', 1, NULL),
  -- Champion Cynthia -> Cynthia
  (90015, 9013, 9, 'battle-opponent', 1, NULL);
