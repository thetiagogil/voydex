-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge and Elite Four pages.
-- Cross-check: Pokémon Ruby / Sapphire source pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and the pret disassemblies.
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
  (50011, 5008, 5, 'battle-opponent', 3, NULL),
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
  (50017, 5015, 5, 'battle-opponent', 1, 'Victory Road. You can skip this battle.'),
  -- Rain Badge -> Groudon
  (50011, 5018, 5, 'battle-opponent', 1, 'Cave of Origin B4F'),
  -- Rain Badge -> Kyogre
  (50011, 5019, 5, 'battle-opponent', 2, 'Cave of Origin B4F'),
  -- Sealed Chamber -> Regirock
  (50020, 5020, 5, 'battle-opponent', 1, 'Desert Ruins (Route 111). You can skip this battle.'),
  -- Sealed Chamber -> Regice
  (50020, 5021, 5, 'battle-opponent', 2, 'Island Cave (Route 105). You can skip this battle.'),
  -- Sealed Chamber -> Registeel
  (50020, 5022, 5, 'battle-opponent', 3, 'Ancient Tomb (Route 120). You can skip this battle.'),
  -- Sky Pillar -> Rayquaza
  (50021, 5023, 5, 'battle-opponent', 1, 'Sky Pillar summit. You can skip this battle.'),
  -- Roaming Latios or Latias -> Latios
  (50022, 5024, 5, 'battle-opponent', 1, 'Roams Hoenn routes. You can skip this battle.'),
  -- Roaming Latios or Latias -> Latias
  (50022, 5025, 5, 'battle-opponent', 2, 'Roams Hoenn routes. You can skip this battle.');
