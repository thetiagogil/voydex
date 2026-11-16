-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order, following Bulbapedia's
-- Black / White walkthrough.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Black / White mainline milestone prerequisite links, in Red / Blue's
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
  (110002, 110001, 11, 1, 1, NULL),
  -- Trio Badge <- Receive Pokédex
  (110003, 110002, 11, 1, 1, NULL),
  -- Dreamyard <- Trio Badge
  (110023, 110003, 11, 1, 1, NULL),
  -- Basic Badge <- Dreamyard
  (110004, 110023, 11, 1, 1, NULL),
  -- Pinwheel Forest <- Basic Badge
  (110024, 110004, 11, 1, 1, NULL),
  -- Insect Badge <- Pinwheel Forest
  (110005, 110024, 11, 1, 1, NULL),
  -- Bolt Badge <- Insect Badge
  (110006, 110005, 11, 1, 1, NULL),
  -- Cold Storage <- Bolt Badge
  (110025, 110006, 11, 1, 1, NULL),
  -- Quake Badge <- Cold Storage
  (110007, 110025, 11, 1, 1, NULL),
  -- Jet Badge <- Quake Badge
  (110008, 110007, 11, 1, 1, NULL),
  -- Freeze Badge <- Jet Badge
  (110009, 110008, 11, 1, 1, NULL),
  -- Dragonspiral Tower <- Freeze Badge
  (110026, 110009, 11, 1, 1, NULL),
  -- Relic Castle <- Dragonspiral Tower
  (110027, 110026, 11, 1, 1, NULL),
  -- Legend Badge <- Relic Castle
  (110010, 110027, 11, 1, 1, NULL),
  -- Pokémon League <- Legend Badge
  (110016, 110010, 11, 1, 1, NULL),
  -- Champion Alder <- Pokémon League
  (110017, 110016, 11, 1, 1, NULL),
  -- Swords of Justice opens after Jet Badge
  (110019, 110008, 11, 4, 1, 'Needs Surf, which Alder gives you after the Jet Badge.'),
  -- Roaming Tornadus or Thundurus opens after Legend Badge
  (110020, 110010, 11, 4, 1, NULL),
  -- Giant Chasm opens after Pokémon League
  (110021, 110016, 11, 4, 1, NULL),
  -- Abundant Shrine opens after Pokémon League
  (110022, 110016, 11, 4, 1, NULL);
