-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order, following Bulbapedia's
-- Diamond / Pearl walkthrough.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Diamond / Pearl mainline milestone prerequisite links, in Red / Blue's
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
  (80002, 80001, 8, 1, 1, NULL),
  -- Coal Badge <- Receive Pokédex
  (80003, 80002, 8, 1, 1, NULL),
  -- Valley Windworks <- Coal Badge
  (80025, 80003, 8, 1, 1, NULL),
  -- Forest Badge <- Valley Windworks
  (80004, 80025, 8, 1, 1, NULL),
  -- Team Galactic Eterna Building <- Forest Badge
  (80027, 80004, 8, 1, 1, NULL),
  -- Cobble Badge <- Team Galactic Eterna Building
  (80005, 80027, 8, 1, 1, NULL),
  -- Fen Badge <- Cobble Badge
  (80006, 80005, 8, 1, 1, NULL),
  -- Celestic Town <- Fen Badge
  (80028, 80006, 8, 1, 1, NULL),
  -- Relic Badge <- Celestic Town
  (80007, 80028, 8, 1, 1, NULL),
  -- Mine Badge <- Relic Badge
  (80008, 80007, 8, 1, 1, NULL),
  -- Lake Valor <- Mine Badge
  (80029, 80008, 8, 1, 1, NULL),
  -- Lake Verity <- Lake Valor
  (80030, 80029, 8, 1, 1, NULL),
  -- Icicle Badge <- Lake Verity
  (80009, 80030, 8, 1, 1, NULL),
  -- Team Galactic HQ <- Icicle Badge
  (80017, 80009, 8, 1, 1, NULL),
  -- Spear Pillar <- Team Galactic HQ
  (80018, 80017, 8, 1, 1, NULL),
  -- Beacon Badge <- Spear Pillar
  (80010, 80018, 8, 1, 1, NULL),
  -- Pokémon League <- Beacon Badge
  (80015, 80010, 8, 1, 1, NULL),
  -- Fight Area <- Pokémon League
  (80019, 80015, 8, 1, 1, NULL),
  -- Stark Mountain <- Fight Area
  (80024, 80019, 8, 1, 1, NULL),
  -- Lake Guardians opens after Spear Pillar
  (80020, 80018, 8, 4, 1, NULL),
  -- Roaming Mesprit opens after Spear Pillar
  (80031, 80018, 8, 4, 1, NULL),
  -- Turnback Cave opens after Pokémon League
  (80021, 80015, 8, 4, 1, NULL),
  -- Roaming Cresselia opens after Pokémon League
  (80022, 80015, 8, 4, 1, 'Needs the National Pokédex.'),
  -- Snowpoint Temple opens after Pokémon League
  (80023, 80015, 8, 4, 1, 'Needs the National Pokédex, and Regirock, Regice and Registeel brought over from a Game Boy Advance game.');
