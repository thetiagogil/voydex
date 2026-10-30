-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Ruby / Sapphire mainline milestone prerequisite links.
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
  (50002, 50001, 5, 1, 1, NULL),
  -- Stone Badge <- Receive Pokedex
  (50003, 50002, 5, 1, 1, NULL),
  -- Knuckle Badge <- Stone Badge
  (50004, 50003, 5, 1, 1, NULL),
  -- Dynamo Badge <- Knuckle Badge
  (50005, 50004, 5, 1, 1, NULL),
  -- Heat Badge <- Mt. Chimney
  (50007, 50018, 5, 1, 1, NULL),
  -- Balance Badge <- Heat Badge
  (50008, 50007, 5, 1, 1, NULL),
  -- Feather Badge <- Balance Badge
  (50009, 50008, 5, 1, 1, NULL),
  -- Mind Badge <- Feather Badge
  (50010, 50009, 5, 1, 1, NULL),
  -- Rain Badge <- Cave of Origin
  (50011, 50023, 5, 1, 1, NULL),
  -- Elite Four Sidney <- Rain Badge
  (50012, 50011, 5, 1, 1, NULL),
  -- Elite Four Phoebe <- Elite Four Sidney
  (50013, 50012, 5, 1, 1, NULL),
  -- Elite Four Glacia <- Elite Four Phoebe
  (50014, 50013, 5, 1, 1, NULL),
  -- Elite Four Drake <- Elite Four Glacia
  (50015, 50014, 5, 1, 1, NULL),
  -- Champion Steven <- Elite Four Drake
  (50016, 50015, 5, 1, 1, NULL),
  -- Hall of Fame <- Champion Steven
  (50017, 50016, 5, 1, 1, NULL),
  -- Mt. Chimney <- Dynamo Badge
  (50018, 50005, 5, 1, 1, NULL),
  -- Seafloor Cavern <- Mind Badge
  (50019, 50010, 5, 1, 1, NULL),
  -- Cave of Origin <- Seafloor Cavern
  (50023, 50019, 5, 1, 1, NULL),
  -- Fossil Choice opens after Heat Badge
  (50006, 50007, 5, 4, 1, NULL),
  -- Sealed Chamber opens after Mind Badge
  (50020, 50010, 5, 4, 1, NULL),
  -- Sky Pillar opens after Hall of Fame
  (50021, 50017, 5, 4, 1, NULL),
  -- Roaming Latios or Latias opens after Hall of Fame
  (50022, 50017, 5, 4, 1, NULL);
