-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge and Elite Four pages.
-- Cross-check: legacy Voydex Red / Blue tracking seeds.
-- Scope: Pokémon Red / Blue milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links required Red / Blue battle milestones to their primary opponents.
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
  (10003, 1001, 1, 'battle-opponent', 1, NULL),
  -- Cascade Badge -> Misty
  (10005, 1002, 1, 'battle-opponent', 1, NULL),
  -- Thunder Badge -> Lt. Surge
  (10006, 1003, 1, 'battle-opponent', 1, NULL),
  -- Rainbow Badge -> Erika
  (10007, 1004, 1, 'battle-opponent', 1, NULL),
  -- Soul Badge -> Koga
  (10008, 1005, 1, 'battle-opponent', 1, NULL),
  -- Marsh Badge -> Sabrina
  (10009, 1006, 1, 'battle-opponent', 1, NULL),
  -- Volcano Badge -> Blaine
  (10011, 1007, 1, 'battle-opponent', 1, NULL),
  -- Earth Badge -> Giovanni
  (10012, 1008, 1, 'battle-opponent', 1, NULL),
  -- Elite Four Lorelei -> Lorelei
  (10013, 1009, 1, 'battle-opponent', 1, NULL),
  -- Elite Four Bruno -> Bruno
  (10014, 1010, 1, 'battle-opponent', 1, NULL),
  -- Elite Four Agatha -> Agatha
  (10015, 1011, 1, 'battle-opponent', 1, NULL),
  -- Elite Four Lance -> Lance
  (10016, 1012, 1, 'battle-opponent', 1, NULL),
  -- Champion Blue -> Blue
  (10017, 1013, 1, 'battle-opponent', 1, NULL);
