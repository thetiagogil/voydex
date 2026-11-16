-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order, following Diamond / Pearl's walkthrough.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Brilliant Diamond / Shining Pearl mainline milestone prerequisite links, in
-- Red / Blue's pattern: each Main Story beat suggests the one before it in
-- Story order, Post Game carries on from the Pokémon League, and each
-- side-content beat names the beat that opens it (opens-after).
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
  (210002, 210001, 21, 1, 1, NULL),
  -- Coal Badge <- Receive Pokédex
  (210003, 210002, 21, 1, 1, NULL),
  -- Valley Windworks <- Coal Badge
  (210026, 210003, 21, 1, 1, NULL),
  -- Forest Badge <- Valley Windworks
  (210004, 210026, 21, 1, 1, NULL),
  -- Team Galactic Eterna Building <- Forest Badge
  (210027, 210004, 21, 1, 1, NULL),
  -- Cobble Badge <- Team Galactic Eterna Building
  (210005, 210027, 21, 1, 1, NULL),
  -- Fen Badge <- Cobble Badge
  (210006, 210005, 21, 1, 1, NULL),
  -- Celestic Town <- Fen Badge
  (210028, 210006, 21, 1, 1, NULL),
  -- Relic Badge <- Celestic Town
  (210007, 210028, 21, 1, 1, NULL),
  -- Mine Badge <- Relic Badge
  (210008, 210007, 21, 1, 1, NULL),
  -- Lake Valor <- Mine Badge
  (210029, 210008, 21, 1, 1, NULL),
  -- Lake Verity <- Lake Valor
  (210030, 210029, 21, 1, 1, NULL),
  -- Icicle Badge <- Lake Verity
  (210009, 210030, 21, 1, 1, NULL),
  -- Team Galactic HQ <- Icicle Badge
  (210018, 210009, 21, 1, 1, NULL),
  -- Spear Pillar <- Team Galactic HQ
  (210019, 210018, 21, 1, 1, NULL),
  -- Beacon Badge <- Spear Pillar
  (210010, 210019, 21, 1, 1, NULL),
  -- Pokémon League <- Beacon Badge
  (210015, 210010, 21, 1, 1, NULL),
  -- Fight Area <- Pokémon League
  (210020, 210015, 21, 1, 1, NULL),
  -- Stark Mountain <- Fight Area
  (210024, 210020, 21, 1, 1, NULL),
  -- Ramanas Park <- Stark Mountain
  (210017, 210024, 21, 1, 1, NULL),
  -- Lake Guardians opens after Spear Pillar
  (210021, 210019, 21, 4, 1, NULL),
  -- Roaming Mesprit opens after Spear Pillar
  (210031, 210019, 21, 4, 1, NULL),
  -- Turnback Cave opens after Pokémon League
  (210022, 210015, 21, 4, 1, NULL),
  -- Roaming Cresselia opens after Pokémon League
  (210023, 210015, 21, 4, 1, 'Needs the National Pokédex.'),
  -- Snowpoint Temple opens after Pokémon League
  (210025, 210015, 21, 4, 1, 'Needs the National Pokédex, and Regirock, Regice and Registeel from Ramanas Park.');
