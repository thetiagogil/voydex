-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Let's Go, Pikachu! / Let's Go, Eevee!, Badge, Elite Four, and Gift Pokémon pages.
-- Scope: Pokémon Let's Go, Pikachu! / Let's Go, Eevee! milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Let's Go, Pikachu! / Let's Go, Eevee! battle milestones to their primary opponents.
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
  (170003, 17001, 17, 'battle-opponent', 1, NULL),
  -- Cascade Badge -> Misty
  (170004, 17002, 17, 'battle-opponent', 1, NULL),
  -- Thunder Badge -> Lt. Surge
  (170005, 17003, 17, 'battle-opponent', 1, NULL),
  -- Rainbow Badge -> Erika
  (170006, 17004, 17, 'battle-opponent', 1, NULL),
  -- Soul Badge -> Koga
  (170008, 17005, 17, 'battle-opponent', 1, NULL),
  -- Marsh Badge -> Sabrina
  (170009, 17006, 17, 'battle-opponent', 1, NULL),
  -- Volcano Badge -> Blaine
  (170010, 17007, 17, 'battle-opponent', 1, NULL),
  -- Earth Badge -> Giovanni
  (170011, 17008, 17, 'battle-opponent', 1, NULL),
  -- Elite Four Lorelei -> Lorelei
  (170012, 17009, 17, 'battle-opponent', 1, NULL),
  -- Elite Four Bruno -> Bruno
  (170013, 17010, 17, 'battle-opponent', 1, NULL),
  -- Elite Four Agatha -> Agatha
  (170014, 17011, 17, 'battle-opponent', 1, NULL),
  -- Elite Four Lance -> Lance
  (170015, 17012, 17, 'battle-opponent', 1, NULL),
  -- Champion Rival -> Rival
  (170016, 17013, 17, 'battle-opponent', 1, NULL),
  -- Battle Blue -> Blue
  (170018, 17014, 17, 'battle-opponent', 1, NULL),
  -- Battle Green -> Green
  (170019, 17015, 17, 'battle-opponent', 1, NULL);
