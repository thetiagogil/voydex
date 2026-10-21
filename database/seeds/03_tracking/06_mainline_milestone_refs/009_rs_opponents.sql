-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge and Elite Four pages.
-- Cross-check: Pokémon Ruby / Sapphire source pages.
-- Scope: Pokémon Ruby / Sapphire milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Ruby / Sapphire battle milestones to their primary opponents.
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
  (50003, 5001, 5, 'battle-opponent', 1, NULL),
  -- Knuckle Badge -> Brawly
  (50004, 5002, 5, 'battle-opponent', 1, NULL),
  -- Dynamo Badge -> Wattson
  (50005, 5003, 5, 'battle-opponent', 3, NULL),
  -- Heat Badge -> Flannery
  (50007, 5004, 5, 'battle-opponent', 1, NULL),
  -- Balance Badge -> Norman
  (50008, 5005, 5, 'battle-opponent', 1, NULL),
  -- Feather Badge -> Winona
  (50009, 5006, 5, 'battle-opponent', 2, NULL),
  -- Mind Badge -> Tate & Liza
  (50010, 5007, 5, 'battle-opponent', 2, NULL),
  -- Rain Badge -> Wallace
  (50011, 5008, 5, 'battle-opponent', 1, NULL),
  -- Elite Four Sidney -> Sidney
  (50012, 5009, 5, 'battle-opponent', 2, NULL),
  -- Elite Four Phoebe -> Phoebe
  (50013, 5010, 5, 'battle-opponent', 1, NULL),
  -- Elite Four Glacia -> Glacia
  (50014, 5011, 5, 'battle-opponent', 1, NULL),
  -- Elite Four Drake -> Drake
  (50015, 5012, 5, 'battle-opponent', 1, NULL),
  -- Champion Steven -> Steven
  (50016, 5013, 5, 'battle-opponent', 1, NULL),
  -- Receive Pokedex -> May / Brendan
  (50002, 5014, 5, 'battle-opponent', 1, 'Route 103'),
  -- Dynamo Badge -> May / Brendan
  (50005, 5014, 5, 'battle-opponent', 1, 'Route 110'),
  -- Dynamo Badge -> Wally
  (50005, 5015, 5, 'battle-opponent', 2, 'Mauville City'),
  -- Mt. Chimney -> Maxie
  (50018, 5016, 5, 'battle-opponent', 1, 'Mt. Chimney'),
  -- Mt. Chimney -> Archie
  (50018, 5017, 5, 'battle-opponent', 2, 'Mt. Chimney'),
  -- Feather Badge -> May / Brendan
  (50009, 5014, 5, 'battle-opponent', 1, 'Route 119'),
  -- Mind Badge -> May / Brendan
  (50010, 5014, 5, 'battle-opponent', 1, 'Lilycove City. You can skip this battle.'),
  -- Seafloor Cavern -> Maxie
  (50019, 5016, 5, 'battle-opponent', 1, 'Seafloor Cavern'),
  -- Seafloor Cavern -> Archie
  (50019, 5017, 5, 'battle-opponent', 2, 'Seafloor Cavern'),
  -- Elite Four Sidney -> Wally
  (50012, 5015, 5, 'battle-opponent', 1, 'Victory Road'),
  -- Hall of Fame -> Wally
  (50017, 5015, 5, 'battle-opponent', 1, 'Victory Road. You can skip this battle.');
