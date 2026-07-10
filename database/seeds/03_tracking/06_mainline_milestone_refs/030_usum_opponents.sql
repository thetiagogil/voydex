-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Ultra Sun / Ultra Moon, Island challenge, Elite Four, Champion, Team Rainbow Rocket, and First partner Pokémon pages.
-- Scope: Pokémon Ultra Sun / Ultra Moon milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links Ultra Sun / Ultra Moon battle milestones to their primary opponents.
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
  (160003, 16001, 16, 'battle-opponent', 1, NULL),
  -- Grand Trial Hala -> Hala
  (160004, 16002, 16, 'battle-opponent', 1, NULL),
  -- Lana Trial -> Lana
  (160005, 16003, 16, 'battle-opponent', 1, NULL),
  -- Kiawe Trial -> Kiawe
  (160006, 16004, 16, 'battle-opponent', 1, NULL),
  -- Mallow Trial -> Mallow
  (160007, 16005, 16, 'battle-opponent', 1, NULL),
  -- Grand Trial Olivia -> Olivia
  (160008, 16006, 16, 'battle-opponent', 1, NULL),
  -- Sophocles Trial -> Sophocles
  (160009, 16007, 16, 'battle-opponent', 1, NULL),
  -- Acerola Trial -> Acerola
  (160010, 16008, 16, 'battle-opponent', 1, NULL),
  -- Grand Trial Nanu -> Nanu
  (160011, 16009, 16, 'battle-opponent', 1, NULL),
  -- Mina Trial -> Mina
  (160012, 16010, 16, 'battle-opponent', 1, NULL),
  -- Grand Trial Hapu -> Hapu
  (160014, 16011, 16, 'battle-opponent', 1, NULL),
  -- Ultra Necrozma -> Ultra Necrozma
  (160015, 16012, 16, 'battle-opponent', 1, NULL),
  -- Elite Four Molayne -> Molayne
  (160016, 16013, 16, 'battle-opponent', 1, NULL),
  -- Elite Four Olivia -> Olivia
  (160017, 16014, 16, 'battle-opponent', 1, NULL),
  -- Elite Four Acerola -> Acerola
  (160018, 16015, 16, 'battle-opponent', 1, NULL),
  -- Elite Four Kahili -> Kahili
  (160019, 16016, 16, 'battle-opponent', 1, NULL),
  -- Champion Battle Hau -> Hau
  (160020, 16017, 16, 'battle-opponent', 1, NULL),
  -- Team Rainbow Rocket -> Giovanni
  (160022, 16018, 16, 'battle-opponent', 1, NULL);
