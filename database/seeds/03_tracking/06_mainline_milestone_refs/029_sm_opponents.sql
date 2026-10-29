-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Sun / Moon, Island challenge, Elite Four, Champion, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and Pokémon Database.
-- Team size: Bulbapedia's Battle Royal Dome page (the player fights with the lead Pokémon in their party), matching a walkthrough's "one pokémon per trainer".
-- Scope: Pokémon Sun / Moon milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Sun / Moon battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Ilima Trial -> Ilima
  (150003, 15001, 15, 'battle-opponent', 1, NULL),
  -- Grand Trial Hala -> Hala
  (150004, 15002, 15, 'battle-opponent', 2, NULL),
  -- Lana Trial -> Lana
  (150005, 15003, 15, 'battle-opponent', 3, NULL),
  -- Kiawe Trial -> Kiawe
  (150006, 15004, 15, 'battle-opponent', 2, NULL),
  -- Mallow Trial -> Mallow
  (150007, 15005, 15, 'battle-opponent', 1, NULL),
  -- Grand Trial Olivia -> Olivia
  (150008, 15006, 15, 'battle-opponent', 1, NULL),
  -- Sophocles Trial -> Sophocles
  (150009, 15007, 15, 'battle-opponent', 4, NULL),
  -- Acerola Trial -> Acerola
  (150010, 15008, 15, 'battle-opponent', 1, NULL),
  -- Grand Trial Nanu -> Nanu
  (150011, 15009, 15, 'battle-opponent', 3, NULL),
  -- Vast Poni Canyon Trial -> Totem Kommo-o
  (150012, 15035, 15, 'battle-opponent', 1, NULL),
  -- Grand Trial Hapu -> Hapu
  (150013, 15010, 15, 'battle-opponent', 1, NULL),
  -- Elite Four Hala -> Hala
  (150014, 15011, 15, 'battle-opponent', 3, NULL),
  -- Elite Four Olivia -> Olivia
  (150015, 15012, 15, 'battle-opponent', 1, NULL),
  -- Elite Four Acerola -> Acerola
  (150016, 15013, 15, 'battle-opponent', 1, NULL),
  -- Elite Four Kahili -> Kahili
  (150017, 15014, 15, 'battle-opponent', 1, NULL),
  -- Professor Kukui -> Professor Kukui
  (150018, 15015, 15, 'battle-opponent', 1, NULL),
  -- Choose Starter -> Hau
  (150001, 15016, 15, 'battle-opponent', 1, 'Iki Town'),
  -- Receive Pokedex -> Hau
  (150002, 15016, 15, 'battle-opponent', 1, 'Iki Town (festival)'),
  -- Grand Trial Hala -> Hau
  (150004, 15016, 15, 'battle-opponent', 1, 'Route 3'),
  -- Lana Trial -> Hau
  (150005, 15016, 15, 'battle-opponent', 1, 'Paniola Town'),
  -- Lana Trial -> Gladion
  (150005, 15017, 15, 'battle-opponent', 2, 'Route 5'),
  -- Sophocles Trial -> Hau
  (150009, 15016, 15, 'battle-opponent', 2, 'Malie City'),
  -- Sophocles Trial -> Guzma
  (150009, 15019, 15, 'battle-opponent', 3, 'Malie Garden'),
  -- Grand Trial Nanu -> Guzma
  (150011, 15019, 15, 'battle-opponent', 1, 'Shady House, Po Town'),
  -- Grand Trial Nanu -> Gladion
  (150011, 15017, 15, 'battle-opponent', 2, 'Aether House, Route 15'),
  -- Aether Paradise -> Guzma
  (150021, 15019, 15, 'battle-opponent', 1, 'Aether Paradise'),
  -- Aether Paradise -> Lusamine
  (150021, 15020, 15, 'battle-opponent', 2, 'Aether Paradise'),
  -- Ultra Space -> Lusamine
  (150022, 15020, 15, 'battle-opponent', 1, 'Ultra Space'),
  -- Elite Four Hala -> Gladion
  (150014, 15017, 15, 'battle-opponent', 1, 'Mount Lanakila (base)'),
  -- Elite Four Hala -> Hau
  (150014, 15016, 15, 'battle-opponent', 2, 'Mount Lanakila (peak)'),
  -- Sophocles Trial -> Nihilego
  (150009, 15021, 15, 'battle-opponent', 1, 'Aether Paradise (first visit)'),
  -- Ultra Space -> Solgaleo
  (150022, 15022, 15, 'battle-opponent', 2, 'Altar of the Sunne (Poni Island)'),
  -- Ultra Space -> Lunala
  (150022, 15023, 15, 'battle-opponent', 3, 'Altar of the Moone (Poni Island)'),
  -- Hall of Fame -> Tapu Koko
  (150019, 15024, 15, 'battle-opponent', 1, 'Ruins of Conflict (Melemele Island)'),
  -- Ultra Beast Missions -> Nihilego
  (150020, 15021, 15, 'battle-opponent', 1, 'Diglett''s Tunnel / Wela Volcano Park (Akala Island). You can skip this battle.'),
  -- Ultra Beast Missions -> Buzzwole
  (150020, 15025, 15, 'battle-opponent', 2, 'Melemele Meadow (Melemele Island). You can skip this battle.'),
  -- Ultra Beast Missions -> Pheromosa
  (150020, 15026, 15, 'battle-opponent', 3, 'Verdant Cavern (Melemele Island). You can skip this battle.'),
  -- Ultra Beast Missions -> Xurkitree
  (150020, 15027, 15, 'battle-opponent', 4, 'Lush Jungle / Memorial Hill (Akala Island). You can skip this battle.'),
  -- Ultra Beast Missions -> Kartana
  (150020, 15028, 15, 'battle-opponent', 5, 'Route 17 / Malie Garden (Ula''ula Island). You can skip this battle.'),
  -- Ultra Beast Missions -> Celesteela
  (150020, 15029, 15, 'battle-opponent', 6, 'Haina Desert / Malie Garden (Ula''ula Island). You can skip this battle.'),
  -- Ultra Beast Missions -> Guzzlord
  (150020, 15030, 15, 'battle-opponent', 7, 'Resolution Cave B1F (Poni Island). You can skip this battle.'),
  -- Ruins of Life -> Tapu Lele
  (150023, 15031, 15, 'battle-opponent', 1, 'Ruins of Life (Akala Island). You can skip this battle.'),
  -- Ruins of Abundance -> Tapu Bulu
  (150024, 15032, 15, 'battle-opponent', 1, 'Ruins of Abundance (Ula''ula Island, beyond Haina Desert). You can skip this battle.'),
  -- Ruins of Hope -> Tapu Fini
  (150025, 15033, 15, 'battle-opponent', 1, 'Ruins of Hope (Poni Island). You can skip this battle.'),
  -- Ten Carat Hill -> Necrozma
  (150026, 15034, 15, 'battle-opponent', 1, 'Ten Carat Hill, Farthest Hollow (Melemele Island). You can skip this battle.');

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
  -- Kiawe Trial -> Hau & Gladion (the Battle Royal: one Pokémon per trainer, the player's lead)
  (150006, 15018, 15, 'battle-opponent', 1, 'Battle Royal Dome, Royal Avenue', 1);
