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
-- Links Sun / Moon battle milestones to their primary opponents, in Red /
-- Blue's pattern. The Pokémon League holds its eight battles in the order
-- they are fought: Gladion and Hau on Mount Lanakila, the Elite Four,
-- Professor Kukui, then Tapu Koko after the Hall of Fame. A trial lists its
-- Totem Pokémon and the battles on the way to it.
-- location_id is set only where the battle is fought away from its milestone's
-- place. NULL means the battle is at the milestone's place. The Battle Royal
-- is fought with one Pokémon.
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
  -- Choose Starter -> Hau
  (150001, 15016, 15, 'battle-opponent', 1, 'Right after you pick.', NULL),
  -- Iki Town Festival -> Hau
  (150027, 15016, 15, 'battle-opponent', 1, 'On the festival stage.', NULL),
  -- Ilima Trial -> Ilima (Hau'oli City)
  (150003, 15001, 15, 'battle-opponent', 1, 'At the marina, to see if you are ready for his trial.', 516),
  -- Ilima Trial -> Totem Gumshoos (Sun)
  (150003, 15036, 15, 'battle-opponent', 2, 'Totem''s Den (Sun)', NULL),
  -- Ilima Trial -> Totem Raticate (Moon)
  (150003, 15037, 15, 'battle-opponent', 3, 'Totem''s Den (Moon)', NULL),
  -- Grand Trial Hala -> Hau (Route 3)
  (150004, 15016, 15, 'battle-opponent', 1, 'Once you have found Nebby in Melemele Meadow.', 553),
  -- Grand Trial Hala -> Hala
  (150004, 15002, 15, 'battle-opponent', 2, NULL, NULL),
  -- Lana Trial -> Hau (Paniola Town)
  (150005, 15016, 15, 'battle-opponent', 1, 'On your way through town.', 533),
  -- Lana Trial -> Gladion (Route 5)
  (150005, 15017, 15, 'battle-opponent', 2, 'Gladion, Team Skull''s enforcer, stops you.', 555),
  -- Lana Trial -> Totem Wishiwashi
  (150005, 15038, 15, 'battle-opponent', 3, 'At the bottom of the hill', NULL),
  -- Kiawe Trial -> Totem Salazzle
  (150006, 15039, 15, 'battle-opponent', 2, 'At the top of the park', NULL),
  -- Mallow Trial -> Totem Lurantis
  (150007, 15040, 15, 'battle-opponent', 1, NULL, NULL),
  -- Grand Trial Olivia -> Plumeria (Akala Outskirts)
  (150008, 15044, 15, 'battle-opponent', 1, 'Plumeria, Team Skull''s big sister, steps in.', 506),
  -- Grand Trial Olivia -> Olivia
  (150008, 15006, 15, 'battle-opponent', 2, NULL, NULL),
  -- Aether Paradise Visit -> Nihilego
  (150028, 15021, 15, 'battle-opponent', 1, 'You can''t catch it.', NULL),
  -- Sophocles Trial -> Hau (Malie City)
  (150009, 15016, 15, 'battle-opponent', 1, 'When you land on Ula''ula Island.', 525),
  -- Sophocles Trial -> Guzma (Malie Garden)
  (150009, 15019, 15, 'battle-opponent', 2, 'Guzma, the boss of Team Skull, turns on you.', 526),
  -- Sophocles Trial -> Molayne (Mount Hokulani)
  (150009, 15045, 15, 'battle-opponent', 3, 'Before he takes you in to Sophocles.', 530),
  -- Sophocles Trial -> Totem Vikavolt
  (150009, 15041, 15, 'battle-opponent', 4, NULL, NULL),
  -- Acerola Trial -> Totem Mimikyu
  (150010, 15042, 15, 'battle-opponent', 1, NULL, NULL),
  -- Po Town -> Plumeria (Route 15)
  (150029, 15044, 15, 'battle-opponent', 1, 'When Team Skull takes the Yungoos.', 549),
  -- Po Town -> Guzma
  (150029, 15019, 15, 'battle-opponent', 2, 'In the Shady House', NULL),
  -- Grand Trial Nanu -> Gladion (Aether House)
  (150011, 15017, 15, 'battle-opponent', 1, 'He blames you for losing Lillie.', 504),
  -- Grand Trial Nanu -> Nanu
  (150011, 15009, 15, 'battle-opponent', 2, NULL, NULL),
  -- Aether Paradise -> Faba
  (150021, 15043, 15, 'battle-opponent', 1, 'At the entrance', NULL),
  -- Aether Paradise -> Faba (Secret Lab)
  (150021, 15046, 15, 'battle-opponent', 2, 'In Secret Lab B', NULL),
  -- Aether Paradise -> Guzma
  (150021, 15019, 15, 'battle-opponent', 3, 'In front of Lusamine''s house', NULL),
  -- Aether Paradise -> Lusamine
  (150021, 15020, 15, 'battle-opponent', 4, 'In her house', NULL),
  -- Vast Poni Canyon Trial -> Totem Kommo-o
  (150012, 15035, 15, 'battle-opponent', 1, NULL, NULL),
  -- Ultra Space -> Lusamine
  (150022, 15020, 15, 'battle-opponent', 1, 'In Ultra Space, merged with a Nihilego', NULL),
  -- Ultra Space -> Solgaleo (Sun)
  (150022, 15022, 15, 'battle-opponent', 2, 'At the Altar of the Sunne (Sun). You have to catch it.', NULL),
  -- Ultra Space -> Lunala (Moon)
  (150022, 15023, 15, 'battle-opponent', 3, 'At the Altar of the Moone (Moon). You have to catch it.', NULL),
  -- Grand Trial Hapu -> Hapu
  (150013, 15010, 15, 'battle-opponent', 1, NULL, NULL),
  -- Pokémon League -> Gladion (Mount Lanakila)
  (150018, 15017, 15, 'battle-opponent', 1, 'At the foot of the mountain.', 531),
  -- Pokémon League -> Hau (Mount Lanakila)
  (150018, 15016, 15, 'battle-opponent', 2, 'At the peak, before the League.', 531),
  -- Pokémon League -> Hala (Elite Four)
  (150018, 15011, 15, 'battle-opponent', 3, NULL, NULL),
  -- Pokémon League -> Olivia (Elite Four)
  (150018, 15012, 15, 'battle-opponent', 4, NULL, NULL),
  -- Pokémon League -> Acerola (Elite Four)
  (150018, 15013, 15, 'battle-opponent', 5, NULL, NULL),
  -- Pokémon League -> Kahili
  (150018, 15014, 15, 'battle-opponent', 6, NULL, NULL),
  -- Pokémon League -> Professor Kukui
  (150018, 15015, 15, 'battle-opponent', 7, NULL, NULL),
  -- Pokémon League -> Tapu Koko
  (150018, 15024, 15, 'battle-opponent', 8, 'At the Ruins of Conflict, after the Hall of Fame. Catch or defeat it.', NULL),
  -- Ultra Beast Missions -> Nihilego
  (150020, 15021, 15, 'battle-opponent', 1, 'Diglett''s Tunnel or Wela Volcano Park. You can skip this battle.', NULL),
  -- Ultra Beast Missions -> Buzzwole (Sun)
  (150020, 15025, 15, 'battle-opponent', 2, 'Melemele Meadow (Sun). You can skip this battle.', NULL),
  -- Ultra Beast Missions -> Pheromosa (Moon)
  (150020, 15026, 15, 'battle-opponent', 3, 'Verdant Cavern (Moon). You can skip this battle.', NULL),
  -- Ultra Beast Missions -> Xurkitree
  (150020, 15027, 15, 'battle-opponent', 4, 'Lush Jungle or Memorial Hill. You can skip this battle.', NULL),
  -- Ultra Beast Missions -> Kartana (Sun)
  (150020, 15028, 15, 'battle-opponent', 5, 'Route 17 or Malie Garden (Sun). You can skip this battle.', NULL),
  -- Ultra Beast Missions -> Celesteela (Moon)
  (150020, 15029, 15, 'battle-opponent', 6, 'Haina Desert or Malie Garden (Moon). You can skip this battle.', NULL),
  -- Ultra Beast Missions -> Guzzlord
  (150020, 15030, 15, 'battle-opponent', 7, 'Resolution Cave. You can skip this battle.', NULL),
  -- Ruins of Life -> Tapu Lele
  (150023, 15031, 15, 'battle-opponent', 1, 'You can skip this battle.', NULL),
  -- Ruins of Abundance -> Tapu Bulu
  (150024, 15032, 15, 'battle-opponent', 1, 'You can skip this battle.', NULL),
  -- Ruins of Hope -> Tapu Fini
  (150025, 15033, 15, 'battle-opponent', 1, 'You can skip this battle.', NULL),
  -- Ten Carat Hill -> Necrozma
  (150026, 15034, 15, 'battle-opponent', 1, 'You can skip this battle.', NULL);

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
  -- Kiawe Trial -> Hau, Gladion & the Masked Royal (Royal Avenue)
  (150006, 15018, 15, 'battle-opponent', 1, 'A Battle Royal, with one Pokémon each.', 560, 1);
