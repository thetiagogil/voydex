-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, and FireRed / LeafGreen pages.
-- Cross-check: Pokémon FireRed / LeafGreen source pages.
-- Scope: Pokémon FireRed / LeafGreen milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links FireRed / LeafGreen battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Boulder Badge -> Brock
  (60003, 6001, 6, 'battle-opponent', 1, NULL),
  -- Cascade Badge -> Misty
  (60005, 6002, 6, 'battle-opponent', 1, NULL),
  -- Thunder Badge -> Lt. Surge
  (60006, 6003, 6, 'battle-opponent', 1, NULL),
  -- Rainbow Badge -> Erika
  (60007, 6004, 6, 'battle-opponent', 1, NULL),
  -- Soul Badge -> Koga
  (60008, 6005, 6, 'battle-opponent', 1, NULL),
  -- Marsh Badge -> Sabrina
  (60009, 6006, 6, 'battle-opponent', 1, NULL),
  -- Volcano Badge -> Blaine
  (60011, 6007, 6, 'battle-opponent', 1, NULL),
  -- Earth Badge -> Giovanni
  (60012, 6008, 6, 'battle-opponent', 1, NULL),
  -- Elite Four Lorelei -> Lorelei
  (60013, 6009, 6, 'battle-opponent', 1, NULL),
  -- Elite Four Bruno -> Bruno
  (60014, 6010, 6, 'battle-opponent', 1, NULL),
  -- Elite Four Agatha -> Agatha
  (60015, 6011, 6, 'battle-opponent', 1, NULL),
  -- Elite Four Lance -> Lance
  (60016, 6012, 6, 'battle-opponent', 1, NULL),
  -- Champion Blue -> Blue
  (60017, 6013, 6, 'battle-opponent', 1, NULL);
