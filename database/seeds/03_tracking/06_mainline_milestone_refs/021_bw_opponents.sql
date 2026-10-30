-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Black / White, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and Pokémon Database.
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
  (110008, 11006, 11, 'battle-opponent', 2, NULL),
  -- Freeze Badge -> Brycen
  (110009, 11007, 11, 'battle-opponent', 2, NULL),
  -- Legend Badge -> Drayden / Iris
  (110010, 11008, 11, 'battle-opponent', 2, NULL),
  -- Elite Four Shauntal -> Shauntal
  (110011, 11009, 11, 'battle-opponent', 2, NULL),
  -- Elite Four Grimsley -> Grimsley
  (110012, 11010, 11, 'battle-opponent', 1, NULL),
  -- Elite Four Caitlin -> Caitlin
  (110013, 11011, 11, 'battle-opponent', 1, NULL),
  -- Elite Four Marshal -> Marshal
  (110014, 11012, 11, 'battle-opponent', 1, NULL),
  -- Battle N -> N
  (110015, 11013, 11, 'battle-opponent', 3, NULL),
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
  -- Quake Badge -> Bianca
  (110007, 11016, 11, 'battle-opponent', 3, 'Driftveil City (exit to Route 6)'),
  -- Jet Badge -> N
  (110008, 11013, 11, 'battle-opponent', 1, 'Chargestone Cave'),
  -- Freeze Badge -> Cheren
  (110009, 11017, 11, 'battle-opponent', 1, 'Route 7, at the Twist Mountain entrance'),
  -- Legend Badge -> Bianca
  (110010, 11016, 11, 'battle-opponent', 1, 'Route 8'),
  -- Elite Four Shauntal -> Cheren
  (110011, 11017, 11, 'battle-opponent', 1, 'Route 10'),
  -- Battle N -> Reshiram
  (110015, 11018, 11, 'battle-opponent', 1, 'N''s Castle (throne room, before the battle with N)'),
  -- Battle N -> Zekrom
  (110015, 11019, 11, 'battle-opponent', 2, 'N''s Castle (throne room, before the battle with N)'),
  -- Swords of Justice -> Cobalion
  (110019, 11020, 11, 'battle-opponent', 1, 'Mistralton Cave (Guidance Chamber, needs Surf). You can skip this battle.'),
  -- Swords of Justice -> Terrakion
  (110019, 11021, 11, 'battle-opponent', 2, 'Victory Road (Trial Chamber, needs Strength). You can skip this battle.'),
  -- Swords of Justice -> Virizion
  (110019, 11022, 11, 'battle-opponent', 3, 'Pinwheel Forest (Rumination Field). You can skip this battle.'),
  -- Roaming Tornadus or Thundurus -> Tornadus
  (110020, 11023, 11, 'battle-opponent', 1, 'Roams Unova routes (time-based: 12-15, 2/3/18, 4/5/16, 6-8, 9-11); released at the second house on Route 7. You can skip this battle.'),
  -- Roaming Tornadus or Thundurus -> Thundurus
  (110020, 11024, 11, 'battle-opponent', 2, 'Roams Unova routes (time-based: 12-15, 2/3/18, 4/5/16, 6-8, 9-11); released at the second house on Route 7. You can skip this battle.'),
  -- Giant Chasm -> Kyurem
  (110021, 11025, 11, 'battle-opponent', 1, 'Giant Chasm (cave depths, reached once the forest freezes). You can skip this battle.'),
  -- Abundant Shrine -> Landorus
  (110022, 11026, 11, 'battle-opponent', 1, 'Abundant Shrine (off Route 14, needs Surf and Waterfall). You can skip this battle.');
