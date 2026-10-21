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
  (110003, 11001, 11, 'battle-opponent', 4, NULL),
  -- Basic Badge -> Lenora
  (110004, 11002, 11, 'battle-opponent', 3, NULL),
  -- Insect Badge -> Burgh
  (110005, 11003, 11, 'battle-opponent', 1, NULL),
  -- Bolt Badge -> Elesa
  (110006, 11004, 11, 'battle-opponent', 4, NULL),
  -- Quake Badge -> Clay
  (110007, 11005, 11, 'battle-opponent', 2, NULL),
  -- Jet Badge -> Skyla
  (110008, 11006, 11, 'battle-opponent', 3, NULL),
  -- Freeze Badge -> Brycen
  (110009, 11007, 11, 'battle-opponent', 2, NULL),
  -- Legend Badge -> Drayden / Iris
  (110010, 11008, 11, 'battle-opponent', 2, NULL),
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
  (110017, 11015, 11, 'battle-opponent', 1, NULL),
  -- Choose Starter -> Bianca
  (110001, 11016, 11, 'battle-opponent', 1, 'Your room, Nuvema Town'),
  -- Choose Starter -> Cheren
  (110001, 11017, 11, 'battle-opponent', 2, 'Your room, Nuvema Town'),
  -- Trio Badge -> N
  (110003, 11013, 11, 'battle-opponent', 1, 'Accumula Town'),
  -- Trio Badge -> Bianca
  (110003, 11016, 11, 'battle-opponent', 2, 'Route 2 (just before Striaton City)'),
  -- Trio Badge -> Cheren
  (110003, 11017, 11, 'battle-opponent', 3, 'Striaton City (Trainers'' School)'),
  -- Basic Badge -> Cheren
  (110004, 11017, 11, 'battle-opponent', 1, 'Route 3'),
  -- Basic Badge -> N
  (110004, 11013, 11, 'battle-opponent', 2, 'Nacrene City (outside the museum)'),
  -- Bolt Badge -> Bianca
  (110006, 11016, 11, 'battle-opponent', 1, 'Castelia City gate to Route 4'),
  -- Bolt Badge -> Cheren
  (110006, 11017, 11, 'battle-opponent', 2, 'Route 4'),
  -- Bolt Badge -> N
  (110006, 11013, 11, 'battle-opponent', 3, 'Nimbasa City (Ferris wheel, amusement park)'),
  -- Quake Badge -> Cheren
  (110007, 11017, 11, 'battle-opponent', 1, 'Route 5'),
  -- Jet Badge -> Bianca
  (110008, 11016, 11, 'battle-opponent', 1, 'Driftveil City (exit to Route 6)'),
  -- Jet Badge -> N
  (110008, 11013, 11, 'battle-opponent', 2, 'Chargestone Cave'),
  -- Freeze Badge -> Cheren
  (110009, 11017, 11, 'battle-opponent', 1, 'Route 7, at the Twist Mountain entrance'),
  -- Legend Badge -> Bianca
  (110010, 11016, 11, 'battle-opponent', 1, 'Route 8'),
  -- Legend Badge -> Cheren
  (110010, 11017, 11, 'battle-opponent', 3, 'Route 10');
