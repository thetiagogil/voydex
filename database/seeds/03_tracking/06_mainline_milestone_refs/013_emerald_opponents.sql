-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Emerald, and Steven Stone pages.
-- Cross-check: Pokémon Emerald source page.
-- Scope: Pokémon Emerald milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Emerald battle milestones to their primary opponents.
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
  (70003, 7001, 7, 'battle-opponent', 1, NULL),
  -- Knuckle Badge -> Brawly
  (70004, 7002, 7, 'battle-opponent', 2, NULL),
  -- Dynamo Badge -> Wattson
  (70005, 7003, 7, 'battle-opponent', 3, NULL),
  -- Heat Badge -> Flannery
  (70007, 7004, 7, 'battle-opponent', 1, NULL),
  -- Balance Badge -> Norman
  (70008, 7005, 7, 'battle-opponent', 1, NULL),
  -- Feather Badge -> Winona
  (70009, 7006, 7, 'battle-opponent', 2, NULL),
  -- Mind Badge -> Tate & Liza
  (70010, 7007, 7, 'battle-opponent', 1, NULL),
  -- Rain Badge -> Juan
  (70011, 7008, 7, 'battle-opponent', 1, NULL),
  -- Elite Four Sidney -> Sidney
  (70012, 7009, 7, 'battle-opponent', 2, NULL),
  -- Elite Four Phoebe -> Phoebe
  (70013, 7010, 7, 'battle-opponent', 1, NULL),
  -- Elite Four Glacia -> Glacia
  (70014, 7011, 7, 'battle-opponent', 1, NULL),
  -- Elite Four Drake -> Drake
  (70015, 7012, 7, 'battle-opponent', 1, NULL),
  -- Champion Wallace -> Wallace
  (70016, 7013, 7, 'battle-opponent', 1, NULL),
  -- Defeat Steven -> Steven
  (70019, 7014, 7, 'battle-opponent', 1, NULL),
  -- Receive Pokedex -> May / Brendan
  (70002, 7015, 7, 'battle-opponent', 1, 'Route 103'),
  -- Knuckle Badge -> May / Brendan
  (70004, 7015, 7, 'battle-opponent', 1, 'Rustboro City. You can skip this battle.'),
  -- Dynamo Badge -> May / Brendan
  (70005, 7015, 7, 'battle-opponent', 1, 'Route 110'),
  -- Dynamo Badge -> Wally
  (70005, 7016, 7, 'battle-opponent', 2, 'Mauville City'),
  -- Mt. Chimney -> Maxie
  (70020, 7017, 7, 'battle-opponent', 1, 'Mt. Chimney'),
  -- Feather Badge -> May / Brendan
  (70009, 7015, 7, 'battle-opponent', 1, 'Route 119'),
  -- Magma Hideout -> May / Brendan
  (70021, 7015, 7, 'battle-opponent', 1, 'Lilycove City. You can skip this battle.'),
  -- Magma Hideout -> Maxie
  (70021, 7017, 7, 'battle-opponent', 2, 'Magma Hideout'),
  -- Mind Badge -> Maxie & Tabitha
  (70010, 7018, 7, 'battle-opponent', 2, 'Mossdeep Space Center'),
  -- Seafloor Cavern -> Archie
  (70022, 7019, 7, 'battle-opponent', 1, 'Seafloor Cavern'),
  -- Elite Four Sidney -> Wally
  (70012, 7016, 7, 'battle-opponent', 1, 'Victory Road'),
  -- Hall of Fame -> Wally
  (70017, 7016, 7, 'battle-opponent', 1, 'Victory Road. You can skip this battle.');
