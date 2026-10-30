-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Platinum mainline milestone prerequisite links.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_prerequisites (
  milestone_id,
  prerequisite_milestone_id,
  version_group_id,
  prerequisite_kind_id,
  sort_order,
  notes
) VALUES
  -- Receive Pokedex <- Choose Starter
  (90002, 90001, 9, 1, 1, NULL),
  -- Coal Badge <- Receive Pokedex
  (90003, 90002, 9, 1, 1, NULL),
  -- Forest Badge <- Coal Badge
  (90004, 90003, 9, 1, 1, NULL),
  -- Relic Badge <- Forest Badge
  (90005, 90004, 9, 1, 1, NULL),
  -- Cobble Badge <- Relic Badge
  (90006, 90005, 9, 1, 1, NULL),
  -- Fen Badge <- Cobble Badge
  (90007, 90006, 9, 1, 1, NULL),
  -- Mine Badge <- Celestic Town
  (90008, 90017, 9, 1, 1, NULL),
  -- Icicle Badge <- Mine Badge
  (90009, 90008, 9, 1, 1, NULL),
  -- Beacon Badge <- Distortion World
  (90010, 90019, 9, 1, 1, NULL),
  -- Elite Four Aaron <- Beacon Badge
  (90011, 90010, 9, 1, 1, NULL),
  -- Elite Four Bertha <- Elite Four Aaron
  (90012, 90011, 9, 1, 1, NULL),
  -- Elite Four Flint <- Elite Four Bertha
  (90013, 90012, 9, 1, 1, NULL),
  -- Elite Four Lucian <- Elite Four Flint
  (90014, 90013, 9, 1, 1, NULL),
  -- Champion Cynthia <- Elite Four Lucian
  (90015, 90014, 9, 1, 1, NULL),
  -- Hall of Fame <- Champion Cynthia
  (90016, 90015, 9, 1, 1, NULL),
  -- Celestic Town <- Fen Badge
  (90017, 90007, 9, 1, 1, NULL),
  -- Team Galactic HQ <- Icicle Badge
  (90018, 90009, 9, 1, 1, NULL),
  -- Distortion World <- Team Galactic HQ
  (90019, 90018, 9, 1, 1, NULL),
  -- Stark Mountain <- Hall of Fame
  (90020, 90016, 9, 1, 1, NULL),
  -- Lake Guardians opens after Distortion World
  (90021, 90019, 9, 4, 1, NULL),
  -- Roaming Cresselia opens after Hall of Fame
  (90022, 90016, 9, 4, 1, NULL),
  -- Snowpoint Temple opens after Hall of Fame
  (90023, 90016, 9, 4, 1, NULL),
  -- Spear Pillar opens after Hall of Fame
  (90024, 90016, 9, 4, 1, NULL),
  -- Roaming Articuno opens after Hall of Fame
  (90025, 90016, 9, 4, 1, NULL),
  -- Roaming Zapdos opens after Hall of Fame
  (90026, 90016, 9, 4, 1, NULL),
  -- Roaming Moltres opens after Hall of Fame
  (90027, 90016, 9, 4, 1, NULL);
