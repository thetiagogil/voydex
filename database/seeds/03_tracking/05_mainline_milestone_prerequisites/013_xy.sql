-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- X / Y mainline milestone prerequisite links.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_prerequisites (
  milestone_id,
  prerequisite_milestone_id,
  version_group_id,
  prerequisite_kind_id,
  sort_order,
  notes
) VALUES
  -- Receive Pokedex <- Choose Kalos Starter
  (130002, 130001, 13, 1, 1, NULL),
  -- Bug Badge <- Receive Pokedex
  (130003, 130002, 13, 1, 1, NULL),
  -- Choose Kanto Starter <- Bug Badge
  (130004, 130003, 13, 1, 1, NULL),
  -- Fossil Choice <- Choose Kanto Starter
  (130005, 130004, 13, 1, 1, NULL),
  -- Cliff Badge <- Fossil Choice
  (130006, 130005, 13, 1, 1, NULL),
  -- Rumble Badge <- Cliff Badge
  (130007, 130006, 13, 1, 1, NULL),
  -- Plant Badge <- Rumble Badge
  (130008, 130007, 13, 1, 1, NULL),
  -- Voltage Badge <- Plant Badge
  (130009, 130008, 13, 1, 1, NULL),
  -- Fairy Badge <- Voltage Badge
  (130010, 130009, 13, 1, 1, NULL),
  -- Psychic Badge <- Fairy Badge
  (130011, 130010, 13, 1, 1, NULL),
  -- Iceberg Badge <- Team Flare Secret HQ
  (130012, 130022, 13, 1, 1, NULL),
  -- Battle AZ <- Hall of Fame
  (130019, 130018, 13, 1, 1, NULL),
  -- Elite Four Malva <- Iceberg Badge
  (130013, 130012, 13, 1, 1, NULL),
  -- Elite Four Siebold <- Elite Four Malva
  (130014, 130013, 13, 1, 1, NULL),
  -- Elite Four Wikstrom <- Elite Four Siebold
  (130015, 130014, 13, 1, 1, NULL),
  -- Elite Four Drasna <- Elite Four Wikstrom
  (130016, 130015, 13, 1, 1, NULL),
  -- Champion Diantha <- Elite Four Drasna
  (130017, 130016, 13, 1, 1, NULL),
  -- Hall of Fame <- Champion Diantha
  (130018, 130017, 13, 1, 1, NULL),
  -- Looker Bureau <- Battle AZ
  (130020, 130019, 13, 1, 1, NULL),
  -- Lysandre Labs <- Psychic Badge
  (130021, 130011, 13, 1, 1, NULL),
  -- Team Flare Secret HQ <- Lysandre Labs
  (130022, 130021, 13, 1, 1, NULL),
  -- Kiloude City <- Battle AZ
  (130026, 130019, 13, 1, 1, NULL),
  -- Terminus Cave opens after Hall of Fame
  (130023, 130018, 13, 4, 1, NULL),
  -- Unknown Dungeon opens after Hall of Fame
  (130024, 130018, 13, 4, 1, NULL),
  -- Roaming Legendary Bird opens after Hall of Fame
  (130025, 130018, 13, 4, 1, NULL);
