-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, X / Y, Gift Pokémon, Fossil, and First partner Pokémon pages.
-- Scope: Pokémon X / Y milestone-to-opponent references.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Links X / Y battle milestones to their primary opponents.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_opponent_refs (
  milestone_id,
  opponent_id,
  version_group_id,
  relation_kind,
  sort_order,
  notes
) VALUES
  -- Bug Badge -> Viola
  (130003, 13001, 13, 'battle-opponent', 1, NULL),
  -- Cliff Badge -> Grant
  (130006, 13002, 13, 'battle-opponent', 1, NULL),
  -- Rumble Badge -> Korrina
  (130007, 13003, 13, 'battle-opponent', 2, NULL),
  -- Plant Badge -> Ramos
  (130008, 13004, 13, 'battle-opponent', 2, NULL),
  -- Voltage Badge -> Clemont
  (130009, 13005, 13, 'battle-opponent', 1, NULL),
  -- Fairy Badge -> Valerie
  (130010, 13006, 13, 'battle-opponent', 2, NULL),
  -- Psychic Badge -> Olympia
  (130011, 13007, 13, 'battle-opponent', 2, NULL),
  -- Iceberg Badge -> Wulfric
  (130012, 13008, 13, 'battle-opponent', 4, NULL),
  -- Elite Four Malva -> Malva
  (130013, 13009, 13, 'battle-opponent', 2, NULL),
  -- Elite Four Siebold -> Siebold
  (130014, 13010, 13, 'battle-opponent', 1, NULL),
  -- Elite Four Wikstrom -> Wikstrom
  (130015, 13011, 13, 'battle-opponent', 1, NULL),
  -- Elite Four Drasna -> Drasna
  (130016, 13012, 13, 'battle-opponent', 1, NULL),
  -- Champion Diantha -> Diantha
  (130017, 13013, 13, 'battle-opponent', 1, NULL),
  -- Battle AZ -> AZ
  (130019, 13014, 13, 'battle-opponent', 1, NULL),
  -- Choose Kalos Starter -> Shauna
  (130001, 13015, 13, 'battle-opponent', 1, 'Aquacorde Town'),
  -- Choose Kanto Starter -> Tierno
  (130004, 13016, 13, 'battle-opponent', 1, 'Route 5'),
  -- Fossil Choice -> Tierno & Trevor
  (130005, 13017, 13, 'battle-opponent', 1, 'Route 7'),
  -- Rumble Badge -> Serena / Calem
  (130007, 13018, 13, 'battle-opponent', 1, 'Tower of Mastery, Shalour City'),
  -- Plant Badge -> Serena / Calem
  (130008, 13018, 13, 'battle-opponent', 1, 'Coumarine City, in front of the Gym'),
  -- Fairy Badge -> Serena / Calem
  (130010, 13018, 13, 'battle-opponent', 1, 'Route 14'),
  -- Psychic Badge -> Serena / Calem
  (130011, 13018, 13, 'battle-opponent', 1, 'Anistar City, in front of the Gym'),
  -- Lysandre Labs -> Lysandre
  (130021, 13019, 13, 'battle-opponent', 1, 'Lysandre Labs, Lumiose City'),
  -- Team Flare Secret HQ -> Lysandre
  (130022, 13019, 13, 'battle-opponent', 1, 'Team Flare Secret HQ, Geosenge Town'),
  -- Iceberg Badge -> Shauna
  (130012, 13015, 13, 'battle-opponent', 1, 'Route 19'),
  -- Iceberg Badge -> Tierno
  (130012, 13016, 13, 'battle-opponent', 2, 'Route 19'),
  -- Iceberg Badge -> Trevor
  (130012, 13020, 13, 'battle-opponent', 3, 'Route 19'),
  -- Elite Four Malva -> Serena / Calem
  (130013, 13018, 13, 'battle-opponent', 1, 'Victory Road'),
  -- Battle AZ -> Serena / Calem
  (130019, 13018, 13, 'battle-opponent', 2, 'Kiloude City. You can skip this battle.');
