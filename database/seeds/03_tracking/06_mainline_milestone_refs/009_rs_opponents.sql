-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge and Elite Four pages.
-- Cross-check: Pokémon Ruby / Sapphire source pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and the pret disassemblies.
-- Magma and Aqua Admins (Tabitha, Courtney, Matt, Shelly): the pret pokeruby
-- decompilation's trainer parties, cross-checked with Bulbapedia's trainer pages.
-- Their Pokémon have no set moves and get the game's default: the last four
-- level-up moves to their level, in the game's order; where Bulbapedia's reading
-- differs (Tabitha's Poochyena at Mt. Chimney) the game's own learnset wins.
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
  (50009, 5006, 5, 'battle-opponent', 4, NULL),
  -- Mind Badge -> Tate & Liza
  (50010, 5007, 5, 'battle-opponent', 4, NULL),
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
  (50018, 5016, 5, 'battle-opponent', 2, 'Mt. Chimney'),
  -- Mt. Chimney -> Archie
  (50018, 5017, 5, 'battle-opponent', 4, 'Mt. Chimney'),
  -- Feather Badge -> May / Brendan
  (50009, 5014, 5, 'battle-opponent', 3, 'Route 119'),
  -- Mind Badge -> May / Brendan
  (50010, 5014, 5, 'battle-opponent', 1, 'Lilycove City. You can skip this battle.'),
  -- Seafloor Cavern -> Maxie
  (50019, 5016, 5, 'battle-opponent', 2, 'Seafloor Cavern'),
  -- Seafloor Cavern -> Archie
  (50019, 5017, 5, 'battle-opponent', 4, 'Seafloor Cavern'),
  -- Elite Four Sidney -> Wally
  (50012, 5015, 5, 'battle-opponent', 1, 'Victory Road'),
  -- Cave of Origin -> Groudon
  (50023, 5018, 5, 'battle-opponent', 1, 'Cave of Origin B4F'),
  -- Cave of Origin -> Kyogre
  (50023, 5019, 5, 'battle-opponent', 2, 'Cave of Origin B4F'),
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
  (50022, 5025, 5, 'battle-opponent', 2, 'Roams Hoenn routes. You can skip this battle.'),
  -- Mt. Chimney -> Tabitha
  (50018, 5026, 5, 'battle-opponent', 1, 'Mt. Chimney summit, before Maxie (Ruby)'),
  -- Mt. Chimney -> Matt
  (50018, 5028, 5, 'battle-opponent', 3, 'Mt. Chimney summit, before Archie (Sapphire)'),
  -- Feather Badge -> Courtney
  (50009, 5027, 5, 'battle-opponent', 1, 'Weather Institute 2F, Route 119 (Ruby)'),
  -- Feather Badge -> Shelly
  (50009, 5029, 5, 'battle-opponent', 2, 'Weather Institute 2F, Route 119 (Sapphire)'),
  -- Mind Badge -> Tabitha
  (50010, 5026, 5, 'battle-opponent', 2, 'Magma Hideout, Lilycove City (Ruby)'),
  -- Mind Badge -> Matt
  (50010, 5028, 5, 'battle-opponent', 3, 'Aqua Hideout, Lilycove City (Sapphire)'),
  -- Seafloor Cavern -> Courtney
  (50019, 5027, 5, 'battle-opponent', 1, 'Seafloor Cavern, before Maxie (Ruby)'),
  -- Seafloor Cavern -> Shelly
  (50019, 5029, 5, 'battle-opponent', 3, 'Seafloor Cavern, before Archie (Sapphire)');
