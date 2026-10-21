-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Brilliant Diamond / Shining Pearl mainline milestone prerequisite links.
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
  (210002, 210001, 21, 1, 1, NULL),
  -- Coal Badge <- Receive Pokedex
  (210003, 210002, 21, 1, 1, NULL),
  -- Forest Badge <- Coal Badge
  (210004, 210003, 21, 1, 1, NULL),
  -- Cobble Badge <- Forest Badge
  (210005, 210004, 21, 1, 1, NULL),
  -- Fen Badge <- Cobble Badge
  (210006, 210005, 21, 1, 1, NULL),
  -- Relic Badge <- Fen Badge
  (210007, 210006, 21, 1, 1, NULL),
  -- Mine Badge <- Relic Badge
  (210008, 210007, 21, 1, 1, NULL),
  -- Icicle Badge <- Mine Badge
  (210009, 210008, 21, 1, 1, NULL),
  -- Beacon Badge <- Spear Pillar
  (210010, 210019, 21, 1, 1, NULL),
  -- Elite Four Aaron <- Beacon Badge
  (210011, 210010, 21, 1, 1, NULL),
  -- Elite Four Bertha <- Elite Four Aaron
  (210012, 210011, 21, 1, 1, NULL),
  -- Elite Four Flint <- Elite Four Bertha
  (210013, 210012, 21, 1, 1, NULL),
  -- Elite Four Lucian <- Elite Four Flint
  (210014, 210013, 21, 1, 1, NULL),
  -- Champion Cynthia <- Elite Four Lucian
  (210015, 210014, 21, 1, 1, NULL),
  -- Hall of Fame <- Champion Cynthia
  (210016, 210015, 21, 1, 1, NULL),
  -- Ramanas Park <- Hall of Fame
  (210017, 210016, 21, 1, 1, NULL),
  -- Team Galactic HQ <- Icicle Badge
  (210018, 210009, 21, 1, 1, NULL),
  -- Spear Pillar <- Team Galactic HQ
  (210019, 210018, 21, 1, 1, NULL),
  -- Fight Area <- Hall of Fame
  (210020, 210016, 21, 1, 1, NULL);
