-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Emerald, and Steven Stone pages.
-- Cross-check: Pokémon Emerald source page.
-- Team size: the game's own script (pret pokeemerald, MossdeepCity_SpaceCenter_2F) has the player choose half the party, three Pokémon, for the Multi Battle beside Steven.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and the pret disassemblies.
-- Magma and Aqua Admins (Tabitha, Shelly, Matt): the pret pokeemerald decompilation's
-- trainer parties, cross-checked with Bulbapedia's trainer pages. Their Pokémon have
-- no set moves and get the game's default: the last four level-up moves to their
-- level, in the game's order. Shelly in the Seafloor Cavern is an ordinary trainer
-- the player can walk past, so her battle there is marked skippable.
-- Scope: Pokémon Emerald milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Emerald battle milestones to their primary opponents, in Red / Blue's
-- pattern. The Pokémon League holds its six battles in the order they are
-- fought: Wally in Victory Road, the Elite Four, then Champion Wallace. A Gym
-- lists only its own battle, so Shelly is on the Weather Institute and Matt on
-- the Aqua Hideout.
-- location_id is set only where the battle is fought away from its milestone's
-- place: the rival on Route 103, in Rustboro City, on Route 110, on Route 119
-- and in Lilycove City, and Wally in Mauville City and in Victory Road. NULL
-- means the battle is at the milestone's place.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes,
  location_id
) VALUES
  -- Receive Pokédex -> May / Brendan (Route 103)
  (70002, 7015, 7, 'battle-opponent', 1, 'At the north end of the route, before you go back to the lab.', 203),
  -- Stone Badge -> Roxanne
  (70003, 7001, 7, 'battle-opponent', 1, NULL, NULL),
  -- Knuckle Badge -> May / Brendan (Rustboro City)
  (70004, 7015, 7, 'battle-opponent', 1, 'Outside the Poké Mart, after Mr. Stone''s errand. You can skip this battle.', 235),
  -- Knuckle Badge -> Brawly
  (70004, 7002, 7, 'battle-opponent', 2, NULL, NULL),
  -- Dynamo Badge -> May / Brendan (Route 110)
  (70005, 7015, 7, 'battle-opponent', 1, 'Near the Trick House. Your rival gives you an Itemfinder afterward.', 210),
  -- Dynamo Badge -> Wally (Mauville City)
  (70005, 7016, 7, 'battle-opponent', 2, 'In front of the Gym.', 837),
  -- Dynamo Badge -> Wattson
  (70005, 7003, 7, 'battle-opponent', 3, NULL, NULL),
  -- Mt. Chimney -> Tabitha
  (70020, 7028, 7, 'battle-opponent', 1, 'Mt. Chimney summit, before Maxie', NULL),
  -- Mt. Chimney -> Maxie
  (70020, 7017, 7, 'battle-opponent', 2, 'Mt. Chimney crater', NULL),
  -- Heat Badge -> Flannery
  (70007, 7004, 7, 'battle-opponent', 1, NULL, NULL),
  -- Balance Badge -> Norman
  (70008, 7005, 7, 'battle-opponent', 1, NULL, NULL),
  -- Weather Institute -> Shelly
  (70032, 7029, 7, 'battle-opponent', 1, 'Weather Institute 2F', NULL),
  -- Feather Badge -> May / Brendan (Route 119)
  (70009, 7015, 7, 'battle-opponent', 1, 'Past the Weather Institute. Your rival gives you HM02 Fly afterward.', 219),
  -- Feather Badge -> Winona
  (70009, 7006, 7, 'battle-opponent', 2, NULL, NULL),
  -- Magma Hideout -> Tabitha
  (70021, 7028, 7, 'battle-opponent', 1, 'Magma Hideout, before Maxie', NULL),
  -- Magma Hideout -> Maxie
  (70021, 7017, 7, 'battle-opponent', 2, 'Magma Hideout, deepest chamber', NULL),
  -- Aqua Hideout -> May / Brendan (Lilycove City)
  (70034, 7015, 7, 'battle-opponent', 1, 'In front of the Lilycove Department Store. You can skip this battle.', 157),
  -- Aqua Hideout -> Matt
  (70034, 7030, 7, 'battle-opponent', 2, 'Aqua Hideout, by the submarine', NULL),
  -- Mind Badge -> Tate & Liza
  (70010, 7007, 7, 'battle-opponent', 1, NULL, NULL),
  -- Seafloor Cavern -> Shelly
  (70022, 7029, 7, 'battle-opponent', 1, 'Seafloor Cavern. You can skip this battle.', NULL),
  -- Seafloor Cavern -> Archie
  (70022, 7019, 7, 'battle-opponent', 2, 'Seafloor Cavern, deepest chamber', NULL),
  -- Rain Badge -> Juan
  (70011, 7008, 7, 'battle-opponent', 1, NULL, NULL),
  -- Pokémon League -> Wally (Victory Road)
  (70016, 7016, 7, 'battle-opponent', 1, NULL, 252),
  -- Pokémon League -> Sidney
  (70016, 7009, 7, 'battle-opponent', 2, NULL, NULL),
  -- Pokémon League -> Phoebe
  (70016, 7010, 7, 'battle-opponent', 3, NULL, NULL),
  -- Pokémon League -> Glacia
  (70016, 7011, 7, 'battle-opponent', 4, NULL, NULL),
  -- Pokémon League -> Drake
  (70016, 7012, 7, 'battle-opponent', 5, NULL, NULL),
  -- Pokémon League -> Wallace
  (70016, 7013, 7, 'battle-opponent', 6, NULL, NULL),
  -- Roaming Latias or Latios -> Latias
  (70018, 7026, 7, 'battle-opponent', 1, 'Roams Hoenn routes. You can skip this battle.', NULL),
  -- Roaming Latias or Latios -> Latios
  (70018, 7027, 7, 'battle-opponent', 2, 'Roams Hoenn routes. You can skip this battle.', NULL),
  -- Defeat Steven -> Steven
  (70019, 7014, 7, 'battle-opponent', 1, NULL, NULL),
  -- Sky Pillar -> Rayquaza
  (70024, 7023, 7, 'battle-opponent', 1, 'Sky Pillar summit. You can skip this battle.', NULL),
  -- Sealed Chamber -> Regirock
  (70023, 7020, 7, 'battle-opponent', 1, 'Desert Ruins (Route 111). You can skip this battle.', NULL),
  -- Sealed Chamber -> Regice
  (70023, 7021, 7, 'battle-opponent', 2, 'Island Cave (Route 105). You can skip this battle.', NULL),
  -- Sealed Chamber -> Registeel
  (70023, 7022, 7, 'battle-opponent', 3, 'Ancient Tomb (Route 120). You can skip this battle.', NULL),
  -- Terra Cave -> Groudon
  (70025, 7024, 7, 'battle-opponent', 1, 'You can skip this battle.', NULL),
  -- Marine Cave -> Kyogre
  (70026, 7025, 7, 'battle-opponent', 1, 'You can skip this battle.', NULL);

-- Battles with their own rules for the player's side: team_size_limit.
INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes,
  location_id,
  team_size_limit
) VALUES
  -- Mossdeep Space Center -> Maxie & Tabitha
  (70027, 7018, 7, 'battle-opponent', 1, 'Mossdeep Space Center 2F, a Multi Battle beside Steven', NULL, 3);
