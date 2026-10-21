-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Omega Ruby / Alpha Sapphire mainline milestone prerequisite links.
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
  (140002, 140001, 14, 1, 1, NULL),
  -- Stone Badge <- Receive Pokedex
  (140003, 140002, 14, 1, 1, NULL),
  -- Knuckle Badge <- Stone Badge
  (140004, 140003, 14, 1, 1, NULL),
  -- Dynamo Badge <- Knuckle Badge
  (140005, 140004, 14, 1, 1, NULL),
  -- Heat Badge <- Mt. Chimney
  (140007, 140019, 14, 1, 1, NULL),
  -- Balance Badge <- Heat Badge
  (140008, 140007, 14, 1, 1, NULL),
  -- Feather Badge <- Balance Badge
  (140009, 140008, 14, 1, 1, NULL),
  -- Mind Badge <- Feather Badge
  (140010, 140009, 14, 1, 1, NULL),
  -- Rain Badge <- Seafloor Cavern
  (140011, 140020, 14, 1, 1, NULL),
  -- Elite Four Sidney <- Rain Badge
  (140012, 140011, 14, 1, 1, NULL),
  -- Elite Four Phoebe <- Elite Four Sidney
  (140013, 140012, 14, 1, 1, NULL),
  -- Elite Four Glacia <- Elite Four Phoebe
  (140014, 140013, 14, 1, 1, NULL),
  -- Elite Four Drake <- Elite Four Glacia
  (140015, 140014, 14, 1, 1, NULL),
  -- Champion Steven <- Elite Four Drake
  (140016, 140015, 14, 1, 1, NULL),
  -- Hall of Fame <- Champion Steven
  (140017, 140016, 14, 1, 1, NULL),
  -- Delta Episode <- Hall of Fame
  (140018, 140017, 14, 1, 1, NULL),
  -- Mt. Chimney <- Dynamo Badge
  (140019, 140005, 14, 1, 1, NULL),
  -- Seafloor Cavern <- Mind Badge
  (140020, 140010, 14, 1, 1, NULL);
