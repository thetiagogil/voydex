-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Sun / Moon, Island challenge, Elite Four, Champion, and First partner Pokémon pages.
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
  (150009, 15007, 15, 'battle-opponent', 3, NULL),
  -- Acerola Trial -> Acerola
  (150010, 15008, 15, 'battle-opponent', 1, NULL),
  -- Grand Trial Nanu -> Nanu
  (150011, 15009, 15, 'battle-opponent', 3, NULL),
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
  -- Kiawe Trial -> Hau & Gladion
  (150006, 15018, 15, 'battle-opponent', 1, 'Battle Royal Dome, Royal Avenue'),
  -- Sophocles Trial -> Hau
  (150009, 15016, 15, 'battle-opponent', 1, 'Malie City'),
  -- Sophocles Trial -> Guzma
  (150009, 15019, 15, 'battle-opponent', 2, 'Malie Garden'),
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
  (150014, 15016, 15, 'battle-opponent', 2, 'Mount Lanakila (peak)');
