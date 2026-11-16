-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order, following Bulbapedia's
-- X / Y walkthrough.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- X / Y mainline milestone prerequisite links, in Red / Blue's pattern: each
-- Main Story beat suggests the one before it in Story order, Post Game
-- carries on from the Pokémon League, and each side-content beat names the
-- beat that opens it (opens-after).
-- ============================================================================

INSERT INTO tracking.mainline_milestone_prerequisites (
  milestone_id,
  prerequisite_milestone_id,
  version_group_id,
  prerequisite_kind_id,
  sort_order,
  notes
) VALUES
  -- Receive Pokédex <- Choose Kalos Starter
  (130002, 130001, 13, 1, 1, NULL),
  -- Bug Badge <- Receive Pokédex
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
  -- Kalos Power Plant <- Plant Badge
  (130027, 130008, 13, 1, 1, NULL),
  -- Voltage Badge <- Kalos Power Plant
  (130009, 130027, 13, 1, 1, NULL),
  -- Fairy Badge <- Voltage Badge
  (130010, 130009, 13, 1, 1, NULL),
  -- Poké Ball Factory <- Fairy Badge
  (130028, 130010, 13, 1, 1, NULL),
  -- Frost Cavern <- Poké Ball Factory
  (130029, 130028, 13, 1, 1, NULL),
  -- Psychic Badge <- Frost Cavern
  (130011, 130029, 13, 1, 1, NULL),
  -- Lysandre Labs <- Psychic Badge
  (130021, 130011, 13, 1, 1, NULL),
  -- Team Flare Secret HQ <- Lysandre Labs
  (130022, 130021, 13, 1, 1, NULL),
  -- Iceberg Badge <- Team Flare Secret HQ
  (130012, 130022, 13, 1, 1, NULL),
  -- Pokémon League <- Iceberg Badge
  (130017, 130012, 13, 1, 1, NULL),
  -- Kiloude City <- Pokémon League
  (130026, 130017, 13, 1, 1, NULL),
  -- Looker Bureau <- Kiloude City
  (130020, 130026, 13, 1, 1, NULL),
  -- Terminus Cave opens after Pokémon League
  (130023, 130017, 13, 4, 1, NULL),
  -- Unknown Dungeon opens after Pokémon League
  (130024, 130017, 13, 4, 1, NULL),
  -- Roaming Legendary Bird opens after Pokémon League
  (130025, 130017, 13, 4, 1, NULL);
