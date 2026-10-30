-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Emerald mainline milestone prerequisite links.
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
  (70002, 70001, 7, 1, 1, NULL),
  -- Stone Badge <- Receive Pokedex
  (70003, 70002, 7, 1, 1, NULL),
  -- Knuckle Badge <- Stone Badge
  (70004, 70003, 7, 1, 1, NULL),
  -- Dynamo Badge <- Knuckle Badge
  (70005, 70004, 7, 1, 1, NULL),
  -- Heat Badge <- Mt. Chimney
  (70007, 70020, 7, 1, 1, NULL),
  -- Balance Badge <- Heat Badge
  (70008, 70007, 7, 1, 1, NULL),
  -- Feather Badge <- Balance Badge
  (70009, 70008, 7, 1, 1, NULL),
  -- Mind Badge <- Magma Hideout
  (70010, 70021, 7, 1, 1, NULL),
  -- Rain Badge <- Awaken Rayquaza
  (70011, 70028, 7, 1, 1, NULL),
  -- Elite Four Sidney <- Rain Badge
  (70012, 70011, 7, 1, 1, NULL),
  -- Elite Four Phoebe <- Elite Four Sidney
  (70013, 70012, 7, 1, 1, NULL),
  -- Elite Four Glacia <- Elite Four Phoebe
  (70014, 70013, 7, 1, 1, NULL),
  -- Elite Four Drake <- Elite Four Glacia
  (70015, 70014, 7, 1, 1, NULL),
  -- Champion Wallace <- Elite Four Drake
  (70016, 70015, 7, 1, 1, NULL),
  -- Hall of Fame <- Champion Wallace
  (70017, 70016, 7, 1, 1, NULL),
  -- Lati Choice <- Hall of Fame
  (70018, 70017, 7, 1, 1, NULL),
  -- Defeat Steven <- Lati Choice
  (70019, 70018, 7, 1, 1, NULL),
  -- Mt. Chimney <- Dynamo Badge
  (70020, 70005, 7, 1, 1, NULL),
  -- Magma Hideout <- Feather Badge
  (70021, 70009, 7, 1, 1, NULL),
  -- Seafloor Cavern <- Mossdeep Space Center
  (70022, 70027, 7, 1, 1, NULL),
  -- Mossdeep Space Center <- Mind Badge
  (70027, 70010, 7, 1, 1, NULL),
  -- Awaken Rayquaza <- Seafloor Cavern
  (70028, 70022, 7, 1, 1, NULL),
  -- Fossil Choice opens after Heat Badge
  (70006, 70007, 7, 4, 1, NULL),
  -- Sealed Chamber opens after Mind Badge
  (70023, 70010, 7, 4, 1, NULL),
  -- Sky Pillar opens after Hall of Fame
  (70024, 70017, 7, 4, 1, NULL),
  -- Terra Cave opens after Hall of Fame
  (70025, 70017, 7, 4, 1, NULL),
  -- Marine Cave opens after Hall of Fame
  (70026, 70017, 7, 4, 1, NULL);
