-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Let's Go, Pikachu! / Let's Go, Eevee! mainline milestone prerequisite links.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_prerequisites (
  milestone_id,
  prerequisite_milestone_id,
  version_group_id,
  prerequisite_kind_id,
  sort_order,
  notes
) VALUES
  -- Receive Pokedex <- Receive Partner Pokémon
  (170002, 170001, 17, 1, 1, NULL),
  -- Boulder Badge <- Receive Pokedex
  (170003, 170002, 17, 1, 1, NULL),
  -- Cascade Badge <- Boulder Badge
  (170004, 170003, 17, 1, 1, NULL),
  -- Thunder Badge <- S.S. Anne
  (170005, 170020, 17, 1, 1, NULL),
  -- Rainbow Badge <- Thunder Badge
  (170006, 170005, 17, 1, 1, NULL),
  -- Snorlax Encounter <- Silph Co.
  (170007, 170022, 17, 1, 1, NULL),
  -- Soul Badge <- Snorlax Encounter
  (170008, 170007, 17, 1, 1, NULL),
  -- Marsh Badge <- Soul Badge
  (170009, 170008, 17, 1, 1, NULL),
  -- Volcano Badge <- Marsh Badge
  (170010, 170009, 17, 1, 1, NULL),
  -- Earth Badge <- Volcano Badge
  (170011, 170010, 17, 1, 1, NULL),
  -- Elite Four Lorelei <- Earth Badge
  (170012, 170011, 17, 1, 1, NULL),
  -- Elite Four Bruno <- Elite Four Lorelei
  (170013, 170012, 17, 1, 1, NULL),
  -- Elite Four Agatha <- Elite Four Bruno
  (170014, 170013, 17, 1, 1, NULL),
  -- Elite Four Lance <- Elite Four Agatha
  (170015, 170014, 17, 1, 1, NULL),
  -- Champion Rival <- Elite Four Lance
  (170016, 170015, 17, 1, 1, NULL),
  -- Hall of Fame <- Champion Rival
  (170017, 170016, 17, 1, 1, NULL),
  -- Battle Blue <- Hall of Fame
  (170018, 170017, 17, 1, 1, NULL),
  -- Battle Green <- Battle Blue
  (170019, 170018, 17, 1, 1, NULL),
  -- S.S. Anne <- Cascade Badge
  (170020, 170004, 17, 1, 1, NULL),
  -- Rocket Hideout <- Rainbow Badge
  (170021, 170006, 17, 1, 1, NULL),
  -- Silph Co. <- Rocket Hideout
  (170022, 170021, 17, 1, 1, NULL),
  -- Battle Red <- Battle Green
  (170027, 170019, 17, 1, 1, NULL);
