-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Red / Blue mainline milestone prerequisite links.
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
  (10002, 10001, 1, 1, 1, NULL),
  -- Boulder Badge <- Receive Pokedex
  (10003, 10002, 1, 1, 1, NULL),
  -- Fossil Choice <- Boulder Badge
  (10004, 10003, 1, 1, 1, NULL),
  -- Cascade Badge <- Fossil Choice
  (10005, 10004, 1, 1, 1, NULL),
  -- Thunder Badge <- Cascade Badge
  (10006, 10005, 1, 1, 1, NULL),
  -- Rainbow Badge <- Thunder Badge
  (10007, 10006, 1, 1, 1, NULL),
  -- Soul Badge <- Rainbow Badge
  (10008, 10007, 1, 1, 1, NULL),
  -- Marsh Badge <- Soul Badge
  (10009, 10008, 1, 1, 1, NULL),
  -- Volcano Badge <- Marsh Badge
  (10011, 10009, 1, 1, 1, NULL),
  -- Earth Badge <- Volcano Badge
  (10012, 10011, 1, 1, 1, NULL),
  -- Elite Four Lorelei <- Earth Badge
  (10013, 10012, 1, 1, 1, NULL),
  -- Elite Four Bruno <- Elite Four Lorelei
  (10014, 10013, 1, 1, 1, NULL),
  -- Elite Four Agatha <- Elite Four Bruno
  (10015, 10014, 1, 1, 1, NULL),
  -- Elite Four Lance <- Elite Four Agatha
  (10016, 10015, 1, 1, 1, NULL),
  -- Champion Blue <- Elite Four Lance
  (10017, 10016, 1, 1, 1, NULL),
  -- Hall of Fame <- Champion Blue
  (10018, 10017, 1, 1, 1, NULL);
