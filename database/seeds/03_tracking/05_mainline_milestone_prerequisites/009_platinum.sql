-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order, following Bulbapedia's
-- Platinum walkthrough.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Platinum mainline milestone prerequisite links, in Red / Blue's pattern:
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
  (90002, 90001, 9, 1, 1, NULL),
  -- Coal Badge <- Receive Pokédex
  (90003, 90002, 9, 1, 1, NULL),
  -- Valley Windworks <- Coal Badge
  (90028, 90003, 9, 1, 1, NULL),
  -- Forest Badge <- Valley Windworks
  (90004, 90028, 9, 1, 1, NULL),
  -- Team Galactic Eterna Building <- Forest Badge
  (90029, 90004, 9, 1, 1, NULL),
  -- Relic Badge <- Team Galactic Eterna Building
  (90005, 90029, 9, 1, 1, NULL),
  -- Cobble Badge <- Relic Badge
  (90006, 90005, 9, 1, 1, NULL),
  -- Fen Badge <- Cobble Badge
  (90007, 90006, 9, 1, 1, NULL),
  -- Celestic Town <- Fen Badge
  (90017, 90007, 9, 1, 1, NULL),
  -- Mine Badge <- Celestic Town
  (90008, 90017, 9, 1, 1, NULL),
  -- Lake Valor <- Mine Badge
  (90030, 90008, 9, 1, 1, NULL),
  -- Lake Verity <- Lake Valor
  (90031, 90030, 9, 1, 1, NULL),
  -- Icicle Badge <- Lake Verity
  (90009, 90031, 9, 1, 1, NULL),
  -- Team Galactic HQ <- Icicle Badge
  (90018, 90009, 9, 1, 1, NULL),
  -- Distortion World <- Team Galactic HQ
  (90019, 90018, 9, 1, 1, NULL),
  -- Beacon Badge <- Distortion World
  (90010, 90019, 9, 1, 1, NULL),
  -- Pokémon League <- Beacon Badge
  (90015, 90010, 9, 1, 1, NULL),
  -- Stark Mountain <- Pokémon League
  (90020, 90015, 9, 1, 1, NULL),
  -- Lake Guardians opens after Distortion World
  (90021, 90019, 9, 4, 1, NULL),
  -- Roaming Cresselia opens after Pokémon League
  (90022, 90015, 9, 4, 1, 'Needs the National Pokédex.'),
  -- Snowpoint Temple opens after Pokémon League
  (90023, 90015, 9, 4, 1, 'Needs the National Pokédex, and Regirock, Regice and Registeel brought over from a Game Boy Advance game.'),
  -- Spear Pillar opens after Pokémon League
  (90024, 90015, 9, 4, 1, 'Needs the National Pokédex.'),
  -- Roaming Articuno opens after Pokémon League
  (90025, 90015, 9, 4, 1, 'Needs the National Pokédex.'),
  -- Roaming Zapdos opens after Pokémon League
  (90026, 90015, 9, 4, 1, 'Needs the National Pokédex.'),
  -- Roaming Moltres opens after Pokémon League
  (90027, 90015, 9, 4, 1, 'Needs the National Pokédex.');
