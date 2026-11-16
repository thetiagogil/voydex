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
-- Links Ruby / Sapphire battle milestones to their primary opponents, in Red /
-- Blue's pattern. The Pokémon League holds its six battles in the order they
-- are fought: Wally in Victory Road, the Elite Four, then Champion Steven. A
-- Gym lists only its own battle, so the Admins of the Weather Institute and of
-- the Lilycove hideout are on those milestones. Team Magma's battles are
-- Ruby's and Team Aqua's are Sapphire's.
-- location_id is set only where the battle is fought away from its milestone's
-- place: the rival on Route 103, on Route 110 and on Route 119, and Wally in
-- Mauville City and in Victory Road. NULL means the battle is at the
-- milestone's place.
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
  (50002, 5014, 5, 'battle-opponent', 1, 'At the north end of the route, before you go back to the lab.', 203),
  -- Stone Badge -> Roxanne
  (50003, 5001, 5, 'battle-opponent', 1, NULL, NULL),
  -- Knuckle Badge -> Brawly
  (50004, 5002, 5, 'battle-opponent', 1, NULL, NULL),
  -- Dynamo Badge -> May / Brendan (Route 110)
  (50005, 5014, 5, 'battle-opponent', 1, 'Near the Trick House. Your rival gives you an Itemfinder afterward.', 210),
  -- Dynamo Badge -> Wally (Mauville City)
  (50005, 5015, 5, 'battle-opponent', 2, 'In front of the Gym.', 837),
  -- Dynamo Badge -> Wattson
  (50005, 5003, 5, 'battle-opponent', 3, NULL, NULL),
  -- Mt. Chimney -> Tabitha (Ruby)
  (50018, 5026, 5, 'battle-opponent', 1, 'Mt. Chimney summit, before Maxie (Ruby)', NULL),
  -- Mt. Chimney -> Maxie (Ruby)
  (50018, 5016, 5, 'battle-opponent', 2, 'Mt. Chimney crater', NULL),
  -- Mt. Chimney -> Matt (Sapphire)
  (50018, 5028, 5, 'battle-opponent', 3, 'Mt. Chimney summit, before Archie (Sapphire)', NULL),
  -- Mt. Chimney -> Archie (Sapphire)
  (50018, 5017, 5, 'battle-opponent', 4, 'Mt. Chimney crater', NULL),
  -- Heat Badge -> Flannery
  (50007, 5004, 5, 'battle-opponent', 1, NULL, NULL),
  -- Balance Badge -> Norman
  (50008, 5005, 5, 'battle-opponent', 1, NULL, NULL),
  -- Weather Institute -> Courtney (Ruby)
  (50027, 5027, 5, 'battle-opponent', 1, 'Weather Institute 2F (Ruby)', NULL),
  -- Weather Institute -> Shelly (Sapphire)
  (50027, 5029, 5, 'battle-opponent', 2, 'Weather Institute 2F (Sapphire)', NULL),
  -- Feather Badge -> May / Brendan (Route 119)
  (50009, 5014, 5, 'battle-opponent', 1, 'Past the Weather Institute. Your rival gives you HM02 Fly afterward.', 219),
  -- Feather Badge -> Winona
  (50009, 5006, 5, 'battle-opponent', 2, NULL, NULL),
  -- Team Magma or Aqua Hideout -> May / Brendan
  (50029, 5014, 5, 'battle-opponent', 1, 'In front of the Lilycove Department Store. You can skip this battle.', NULL),
  -- Team Magma or Aqua Hideout -> Tabitha (Ruby)
  (50029, 5026, 5, 'battle-opponent', 2, 'Team Magma Hideout, by the submarine (Ruby)', NULL),
  -- Team Magma or Aqua Hideout -> Matt (Sapphire)
  (50029, 5028, 5, 'battle-opponent', 3, 'Team Aqua Hideout, by the submarine (Sapphire)', NULL),
  -- Mind Badge -> Tate & Liza
  (50010, 5007, 5, 'battle-opponent', 1, NULL, NULL),
  -- Seafloor Cavern -> Courtney (Ruby)
  (50019, 5027, 5, 'battle-opponent', 1, 'Seafloor Cavern, before Maxie (Ruby)', NULL),
  -- Seafloor Cavern -> Maxie (Ruby)
  (50019, 5016, 5, 'battle-opponent', 2, 'Seafloor Cavern, deepest chamber', NULL),
  -- Seafloor Cavern -> Shelly (Sapphire)
  (50019, 5029, 5, 'battle-opponent', 3, 'Seafloor Cavern, before Archie (Sapphire)', NULL),
  -- Seafloor Cavern -> Archie (Sapphire)
  (50019, 5017, 5, 'battle-opponent', 4, 'Seafloor Cavern, deepest chamber', NULL),
  -- Cave of Origin -> Groudon (Ruby)
  (50023, 5018, 5, 'battle-opponent', 1, 'Cave of Origin B4F', NULL),
  -- Cave of Origin -> Kyogre (Sapphire)
  (50023, 5019, 5, 'battle-opponent', 2, 'Cave of Origin B4F', NULL),
  -- Rain Badge -> Wallace
  (50011, 5008, 5, 'battle-opponent', 1, NULL, NULL),
  -- Pokémon League -> Wally (Victory Road)
  (50016, 5015, 5, 'battle-opponent', 1, NULL, 252),
  -- Pokémon League -> Sidney
  (50016, 5009, 5, 'battle-opponent', 2, NULL, NULL),
  -- Pokémon League -> Phoebe
  (50016, 5010, 5, 'battle-opponent', 3, NULL, NULL),
  -- Pokémon League -> Glacia
  (50016, 5011, 5, 'battle-opponent', 4, NULL, NULL),
  -- Pokémon League -> Drake
  (50016, 5012, 5, 'battle-opponent', 5, NULL, NULL),
  -- Pokémon League -> Champion Steven
  (50016, 5013, 5, 'battle-opponent', 6, NULL, NULL),
  -- Roaming Latios or Latias -> Latios (Ruby)
  (50022, 5024, 5, 'battle-opponent', 1, 'Roams Hoenn routes. You can skip this battle.', NULL),
  -- Roaming Latios or Latias -> Latias (Sapphire)
  (50022, 5025, 5, 'battle-opponent', 2, 'Roams Hoenn routes. You can skip this battle.', NULL),
  -- Sealed Chamber -> Regirock
  (50020, 5020, 5, 'battle-opponent', 1, 'Desert Ruins (Route 111). You can skip this battle.', NULL),
  -- Sealed Chamber -> Regice
  (50020, 5021, 5, 'battle-opponent', 2, 'Island Cave (Route 105). You can skip this battle.', NULL),
  -- Sealed Chamber -> Registeel
  (50020, 5022, 5, 'battle-opponent', 3, 'Ancient Tomb (Route 120). You can skip this battle.', NULL),
  -- Sky Pillar -> Rayquaza
  (50021, 5023, 5, 'battle-opponent', 1, 'Sky Pillar summit. You can skip this battle.', NULL);
