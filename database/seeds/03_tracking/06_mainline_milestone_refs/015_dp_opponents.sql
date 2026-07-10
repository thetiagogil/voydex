-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, and Diamond / Pearl pages.
-- Cross-check: Pokémon Diamond / Pearl source page.
-- Scope: Pokémon Diamond / Pearl milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Diamond / Pearl battle milestones to their primary opponents.
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
  (80003, 8001, 8, 'battle-opponent', 1, NULL),
  -- Forest Badge -> Gardenia
  (80004, 8002, 8, 'battle-opponent', 1, NULL),
  -- Cobble Badge -> Maylene
  (80005, 8003, 8, 'battle-opponent', 1, NULL),
  -- Fen Badge -> Crasher Wake
  (80006, 8004, 8, 'battle-opponent', 1, NULL),
  -- Relic Badge -> Fantina
  (80007, 8005, 8, 'battle-opponent', 1, NULL),
  -- Mine Badge -> Byron
  (80008, 8006, 8, 'battle-opponent', 1, NULL),
  -- Icicle Badge -> Candice
  (80009, 8007, 8, 'battle-opponent', 1, NULL),
  -- Beacon Badge -> Volkner
  (80010, 8008, 8, 'battle-opponent', 1, NULL),
  -- Elite Four Aaron -> Aaron
  (80011, 8009, 8, 'battle-opponent', 1, NULL),
  -- Elite Four Bertha -> Bertha
  (80012, 8010, 8, 'battle-opponent', 1, NULL),
  -- Elite Four Flint -> Flint
  (80013, 8011, 8, 'battle-opponent', 1, NULL),
  -- Elite Four Lucian -> Lucian
  (80014, 8012, 8, 'battle-opponent', 1, NULL),
  -- Champion Cynthia -> Cynthia
  (80015, 8013, 8, 'battle-opponent', 1, NULL);
