-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Black 2 / White 2, and First partner Pokémon pages.
-- Scope: Pokémon Black 2 / White 2 milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Black 2 / White 2 battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Basic Badge -> Cheren
  (120003, 12001, 12, 'battle-opponent', 2, NULL),
  -- Toxic Badge -> Roxie
  (120004, 12002, 12, 'battle-opponent', 1, NULL),
  -- Insect Badge -> Burgh
  (120005, 12003, 12, 'battle-opponent', 1, NULL),
  -- Bolt Badge -> Elesa
  (120006, 12004, 12, 'battle-opponent', 2, NULL),
  -- Quake Badge -> Clay
  (120007, 12005, 12, 'battle-opponent', 1, NULL),
  -- Jet Badge -> Skyla
  (120008, 12006, 12, 'battle-opponent', 3, NULL),
  -- Legend Badge -> Drayden
  (120009, 12007, 12, 'battle-opponent', 2, NULL),
  -- Wave Badge -> Marlon
  (120010, 12008, 12, 'battle-opponent', 1, NULL),
  -- Defeat Colress -> Colress
  (120011, 12009, 12, 'battle-opponent', 1, NULL),
  -- Defeat Ghetsis -> Ghetsis
  (120012, 12010, 12, 'battle-opponent', 2, NULL),
  -- Elite Four Shauntal -> Shauntal
  (120013, 12011, 12, 'battle-opponent', 1, NULL),
  -- Elite Four Grimsley -> Grimsley
  (120014, 12012, 12, 'battle-opponent', 1, NULL),
  -- Elite Four Caitlin -> Caitlin
  (120015, 12013, 12, 'battle-opponent', 1, NULL),
  -- Elite Four Marshal -> Marshal
  (120016, 12014, 12, 'battle-opponent', 1, NULL),
  -- Champion Iris -> Iris
  (120017, 12015, 12, 'battle-opponent', 1, NULL),
  -- Choose Starter -> Hugh
  (120001, 12016, 12, 'battle-opponent', 1, 'Aspertia City'),
  -- Basic Badge -> Hugh
  (120003, 12016, 12, 'battle-opponent', 1, 'Floccesy Ranch'),
  -- Bolt Badge -> Colress
  (120006, 12009, 12, 'battle-opponent', 1, 'Route 4'),
  -- Jet Badge -> Hugh
  (120008, 12016, 12, 'battle-opponent', 1, 'Pokémon World Tournament (Driftveil Tournament, round 1)'),
  -- Jet Badge -> Colress
  (120008, 12009, 12, 'battle-opponent', 2, 'Pokémon World Tournament (Driftveil Tournament, final)'),
  -- Legend Badge -> Hugh
  (120009, 12016, 12, 'battle-opponent', 1, 'Undella Town'),
  -- Defeat Ghetsis -> Kyurem
  (120012, 12017, 12, 'battle-opponent', 1, 'Giant Chasm (deepest cave)'),
  -- Defeat Ghetsis -> Hugh
  (120012, 12016, 12, 'battle-opponent', 3, 'Victory Road'),
  -- Hall of Fame -> Hugh
  (120018, 12016, 12, 'battle-opponent', 1, 'Undella Town. You can skip this battle.'),
  -- Hall of Fame -> Colress
  (120018, 12009, 12, 'battle-opponent', 2, 'Plasma Frigate (docked at the P2 Laboratory). You can skip this battle.');
