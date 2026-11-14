-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order, following Bulbapedia's
-- Ruby / Sapphire walkthrough.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Ruby / Sapphire mainline milestone prerequisite links, in Red / Blue's
-- pattern: each Main Story beat suggests the one before it in Story order,
-- Post Game carries on from the Pokémon League, and each side-content beat
-- names the beat that opens it (opens-after).
-- ============================================================================

INSERT INTO tracking.mainline_milestone_prerequisites (
  milestone_id,
  prerequisite_milestone_id,
  version_group_id,
  prerequisite_kind_id,
  sort_order,
  notes
) VALUES
  -- Receive Pokédex <- Choose Starter
  (50002, 50001, 5, 1, 1, NULL),
  -- Stone Badge <- Receive Pokédex
  (50003, 50002, 5, 1, 1, NULL),
  -- Rusturf Tunnel <- Stone Badge
  (50024, 50003, 5, 1, 1, NULL),
  -- Knuckle Badge <- Rusturf Tunnel
  (50004, 50024, 5, 1, 1, NULL),
  -- Oceanic Museum <- Knuckle Badge
  (50025, 50004, 5, 1, 1, NULL),
  -- Dynamo Badge <- Oceanic Museum
  (50005, 50025, 5, 1, 1, NULL),
  -- Meteor Falls <- Dynamo Badge
  (50026, 50005, 5, 1, 1, NULL),
  -- Mt. Chimney <- Meteor Falls
  (50018, 50026, 5, 1, 1, NULL),
  -- Heat Badge <- Mt. Chimney
  (50007, 50018, 5, 1, 1, NULL),
  -- Balance Badge <- Heat Badge
  (50008, 50007, 5, 1, 1, NULL),
  -- Weather Institute <- Balance Badge
  (50027, 50008, 5, 1, 1, NULL),
  -- Feather Badge <- Weather Institute
  (50009, 50027, 5, 1, 1, NULL),
  -- Mt. Pyre <- Feather Badge
  (50028, 50009, 5, 1, 1, NULL),
  -- Team Magma or Aqua Hideout <- Mt. Pyre
  (50029, 50028, 5, 1, 1, NULL),
  -- Mind Badge <- Team Magma or Aqua Hideout
  (50010, 50029, 5, 1, 1, NULL),
  -- Seafloor Cavern <- Mind Badge
  (50019, 50010, 5, 1, 1, NULL),
  -- Cave of Origin <- Seafloor Cavern
  (50023, 50019, 5, 1, 1, NULL),
  -- Rain Badge <- Cave of Origin
  (50011, 50023, 5, 1, 1, NULL),
  -- Pokémon League <- Rain Badge
  (50016, 50011, 5, 1, 1, NULL),
  -- Roaming Latios or Latias <- Pokémon League
  (50022, 50016, 5, 1, 1, NULL),
  -- Fossil Choice opens after Heat Badge
  (50006, 50007, 5, 4, 1, 'The Go-Goggles you get after the Heat Badge let you into the desert.'),
  -- Sealed Chamber opens after Mind Badge
  (50020, 50010, 5, 4, 1, 'Needs Dive, and a Relicanth and a Wailord.'),
  -- Sky Pillar opens after Pokémon League
  (50021, 50016, 5, 4, 1, NULL);
