-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order, following Bulbapedia's
-- Let's Go, Pikachu! / Let's Go, Eevee! walkthrough.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Let's Go mainline milestone prerequisite links, in Red / Blue's pattern:
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
  -- Receive Pokédex <- Receive Partner Pokémon
  (170002, 170001, 17, 1, 1, NULL),
  -- Boulder Badge <- Receive Pokédex
  (170003, 170002, 17, 1, 1, NULL),
  -- Cascade Badge <- Boulder Badge
  (170004, 170003, 17, 1, 1, NULL),
  -- Bill's Sea Cottage <- Cascade Badge
  (170029, 170004, 17, 1, 1, NULL),
  -- S.S. Anne <- Bill's Sea Cottage
  (170020, 170029, 17, 1, 1, NULL),
  -- Thunder Badge <- S.S. Anne
  (170005, 170020, 17, 1, 1, NULL),
  -- Rainbow Badge <- Thunder Badge
  (170006, 170005, 17, 1, 1, NULL),
  -- Rocket Hideout <- Rainbow Badge
  (170021, 170006, 17, 1, 1, NULL),
  -- Pokémon Tower <- Rocket Hideout
  (170028, 170021, 17, 1, 1, NULL),
  -- Silph Co. <- Pokémon Tower
  (170022, 170028, 17, 1, 1, NULL),
  -- Marsh Badge <- Silph Co.
  (170009, 170022, 17, 1, 1, NULL),
  -- Snorlax Encounter <- Marsh Badge
  (170007, 170009, 17, 1, 1, NULL),
  -- Soul Badge <- Snorlax Encounter
  (170008, 170007, 17, 1, 1, NULL),
  -- Pokémon Mansion <- Soul Badge
  (170030, 170008, 17, 1, 1, NULL),
  -- Volcano Badge <- Pokémon Mansion
  (170010, 170030, 17, 1, 1, NULL),
  -- Earth Badge <- Volcano Badge
  (170011, 170010, 17, 1, 1, NULL),
  -- Pokémon League <- Earth Badge
  (170016, 170011, 17, 1, 1, NULL),
  -- Battle Blue <- Pokémon League
  (170018, 170016, 17, 1, 1, NULL),
  -- Battle Green <- Battle Blue
  (170019, 170018, 17, 1, 1, NULL),
  -- Battle Red <- Battle Green
  (170027, 170019, 17, 1, 1, NULL),
  -- Power Plant opens after Soul Badge
  (170023, 170008, 17, 4, 1, 'Needs Sea Skim, which you learn in Fuchsia City.'),
  -- Seafoam Islands opens after Soul Badge
  (170024, 170008, 17, 4, 1, 'Needs Sea Skim, which you learn in Fuchsia City.'),
  -- Victory Road opens after Earth Badge
  (170025, 170011, 17, 4, 1, NULL),
  -- Cerulean Cave opens after Pokémon League
  (170026, 170016, 17, 4, 1, NULL);
