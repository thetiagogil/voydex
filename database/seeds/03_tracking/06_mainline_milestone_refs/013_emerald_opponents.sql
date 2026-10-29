-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Emerald, and Steven Stone pages.
-- Cross-check: Pokémon Emerald source page.
-- Team size: the game's own script (pret pokeemerald, MossdeepCity_SpaceCenter_2F) has the player choose half the party, three Pokémon, for the Multi Battle beside Steven.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and the pret disassemblies.
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
  -- Seafloor Cavern -> Archie
  (70022, 7019, 7, 'battle-opponent', 1, 'Seafloor Cavern'),
  -- Elite Four Sidney -> Wally
  (70012, 7016, 7, 'battle-opponent', 1, 'Victory Road'),
  -- Hall of Fame -> Wally
  (70017, 7016, 7, 'battle-opponent', 1, 'Victory Road. You can skip this battle.'),
  -- Sealed Chamber -> Regirock
  (70023, 7020, 7, 'battle-opponent', 1, 'Desert Ruins (Route 111). You can skip this battle.'),
  -- Sealed Chamber -> Regice
  (70023, 7021, 7, 'battle-opponent', 2, 'Island Cave (Route 105). You can skip this battle.'),
  -- Sealed Chamber -> Registeel
  (70023, 7022, 7, 'battle-opponent', 3, 'Ancient Tomb (Route 120). You can skip this battle.'),
  -- Sky Pillar -> Rayquaza
  (70024, 7023, 7, 'battle-opponent', 1, 'Sky Pillar summit. You can skip this battle.'),
  -- Terra Cave -> Groudon
  (70025, 7024, 7, 'battle-opponent', 1, 'Terra Cave (appears on Route 114, 115, 116 or 118). You can skip this battle.'),
  -- Marine Cave -> Kyogre
  (70026, 7025, 7, 'battle-opponent', 1, 'Marine Cave (dive spot on Route 105, 125, 127 or 129). You can skip this battle.'),
  -- Lati Choice -> Latias
  (70018, 7026, 7, 'battle-opponent', 1, 'Roams Hoenn routes. You can skip this battle.'),
  -- Lati Choice -> Latios
  (70018, 7027, 7, 'battle-opponent', 2, 'Roams Hoenn routes. You can skip this battle.');

-- Battles where the player may bring only some of their team.
INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes,
  team_size_limit
) VALUES
  -- Mind Badge -> Maxie & Tabitha (the player chooses three to fight beside Steven)
  (70010, 7018, 7, 'battle-opponent', 2, 'Mossdeep Space Center', 3);
