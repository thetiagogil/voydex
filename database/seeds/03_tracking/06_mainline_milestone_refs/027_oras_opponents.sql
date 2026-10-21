-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Omega Ruby / Alpha Sapphire, Fossil, Delta Episode, and First partner Pokémon pages.
-- Scope: Pokémon Omega Ruby / Alpha Sapphire milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Omega Ruby / Alpha Sapphire battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Stone Badge -> Roxanne
  (140003, 14001, 14, 'battle-opponent', 1, NULL),
  -- Knuckle Badge -> Brawly
  (140004, 14002, 14, 'battle-opponent', 1, NULL),
  -- Dynamo Badge -> Wattson
  (140005, 14003, 14, 'battle-opponent', 3, NULL),
  -- Heat Badge -> Flannery
  (140007, 14004, 14, 'battle-opponent', 1, NULL),
  -- Balance Badge -> Norman
  (140008, 14005, 14, 'battle-opponent', 1, NULL),
  -- Feather Badge -> Winona
  (140009, 14006, 14, 'battle-opponent', 2, NULL),
  -- Mind Badge -> Tate & Liza
  (140010, 14007, 14, 'battle-opponent', 2, NULL),
  -- Rain Badge -> Wallace
  (140011, 14008, 14, 'battle-opponent', 1, NULL),
  -- Elite Four Sidney -> Sidney
  (140012, 14009, 14, 'battle-opponent', 2, NULL),
  -- Elite Four Phoebe -> Phoebe
  (140013, 14010, 14, 'battle-opponent', 1, NULL),
  -- Elite Four Glacia -> Glacia
  (140014, 14011, 14, 'battle-opponent', 1, NULL),
  -- Elite Four Drake -> Drake
  (140015, 14012, 14, 'battle-opponent', 1, NULL),
  -- Champion Steven -> Steven
  (140016, 14013, 14, 'battle-opponent', 1, NULL),
  -- Delta Episode -> Zinnia
  (140018, 14014, 14, 'battle-opponent', 1, NULL),
  -- Receive Pokedex -> May / Brendan
  (140002, 14015, 14, 'battle-opponent', 1, 'Route 103'),
  -- Dynamo Badge -> May / Brendan
  (140005, 14015, 14, 'battle-opponent', 1, 'Route 110'),
  -- Dynamo Badge -> Wally
  (140005, 14016, 14, 'battle-opponent', 2, 'Mauville City'),
  -- Mt. Chimney -> Maxie
  (140019, 14017, 14, 'battle-opponent', 1, 'Mt. Chimney'),
  -- Mt. Chimney -> Archie
  (140019, 14018, 14, 'battle-opponent', 2, 'Mt. Chimney'),
  -- Feather Badge -> May / Brendan
  (140009, 14015, 14, 'battle-opponent', 1, 'Route 119'),
  -- Mind Badge -> May / Brendan
  (140010, 14015, 14, 'battle-opponent', 1, 'Lilycove City'),
  -- Seafloor Cavern -> Maxie
  (140020, 14017, 14, 'battle-opponent', 1, 'Seafloor Cavern'),
  -- Seafloor Cavern -> Archie
  (140020, 14018, 14, 'battle-opponent', 2, 'Seafloor Cavern'),
  -- Elite Four Sidney -> Wally
  (140012, 14016, 14, 'battle-opponent', 1, 'Victory Road'),
  -- Hall of Fame -> May / Brendan
  (140017, 14015, 14, 'battle-opponent', 1, 'Route 103');
