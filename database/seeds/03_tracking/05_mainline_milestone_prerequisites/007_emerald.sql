-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order, following Bulbapedia's
-- Emerald walkthrough.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Emerald mainline milestone prerequisite links, in Red / Blue's pattern:
-- each Main Story beat suggests the one before it in Story order, Post Game
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
  -- Receive Pokédex <- Choose Starter
  (70002, 70001, 7, 1, 1, NULL),
  -- Stone Badge <- Receive Pokédex
  (70003, 70002, 7, 1, 1, NULL),
  -- Rusturf Tunnel <- Stone Badge
  (70029, 70003, 7, 1, 1, NULL),
  -- Knuckle Badge <- Rusturf Tunnel
  (70004, 70029, 7, 1, 1, NULL),
  -- Oceanic Museum <- Knuckle Badge
  (70030, 70004, 7, 1, 1, NULL),
  -- Dynamo Badge <- Oceanic Museum
  (70005, 70030, 7, 1, 1, NULL),
  -- Meteor Falls <- Dynamo Badge
  (70031, 70005, 7, 1, 1, NULL),
  -- Mt. Chimney <- Meteor Falls
  (70020, 70031, 7, 1, 1, NULL),
  -- Heat Badge <- Mt. Chimney
  (70007, 70020, 7, 1, 1, NULL),
  -- Balance Badge <- Heat Badge
  (70008, 70007, 7, 1, 1, NULL),
  -- Weather Institute <- Balance Badge
  (70032, 70008, 7, 1, 1, NULL),
  -- Feather Badge <- Weather Institute
  (70009, 70032, 7, 1, 1, NULL),
  -- Mt. Pyre <- Feather Badge
  (70033, 70009, 7, 1, 1, NULL),
  -- Magma Hideout <- Mt. Pyre
  (70021, 70033, 7, 1, 1, NULL),
  -- Aqua Hideout <- Magma Hideout
  (70034, 70021, 7, 1, 1, NULL),
  -- Mind Badge <- Aqua Hideout
  (70010, 70034, 7, 1, 1, NULL),
  -- Mossdeep Space Center <- Mind Badge
  (70027, 70010, 7, 1, 1, NULL),
  -- Seafloor Cavern <- Mossdeep Space Center
  (70022, 70027, 7, 1, 1, NULL),
  -- Awaken Rayquaza <- Seafloor Cavern
  (70028, 70022, 7, 1, 1, NULL),
  -- Rain Badge <- Awaken Rayquaza
  (70011, 70028, 7, 1, 1, NULL),
  -- Pokémon League <- Rain Badge
  (70016, 70011, 7, 1, 1, NULL),
  -- Roaming Latias or Latios <- Pokémon League
  (70018, 70016, 7, 1, 1, NULL),
  -- Defeat Steven <- Roaming Latias or Latios
  (70019, 70018, 7, 1, 1, NULL),
  -- Fossil Choice opens after Heat Badge
  (70006, 70007, 7, 4, 1, 'The Go-Goggles you get after the Heat Badge let you into the desert.'),
  -- Sky Pillar opens after Awaken Rayquaza
  (70024, 70028, 7, 4, 1, NULL),
  -- Sealed Chamber opens after Mossdeep Space Center
  (70023, 70027, 7, 4, 1, 'Needs Dive, and a Wailord and a Relicanth.'),
  -- Terra Cave opens after Pokémon League
  (70025, 70016, 7, 4, 1, NULL),
  -- Marine Cave opens after Pokémon League
  (70026, 70016, 7, 4, 1, NULL);
