-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order, following Bulbapedia's
-- Red / Blue walkthrough.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Red / Blue mainline milestone prerequisite links: each Main Story and
-- Pokémon League beat suggests the one before it in Story order, Cerulean Cave
-- (post-game) suggests the Hall of Fame as other games' post-game beats do,
-- and each side-content beat names the beat that opens it (opens-after).
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
  (10002, 10001, 1, 1, 1, NULL),
  -- Boulder Badge <- Receive Pokédex
  (10003, 10002, 1, 1, 1, NULL),
  -- Fossil Choice <- Boulder Badge
  (10004, 10003, 1, 1, 1, NULL),
  -- Cascade Badge <- Fossil Choice
  (10005, 10004, 1, 1, 1, NULL),
  -- Bill's Sea Cottage <- Cascade Badge
  (10027, 10005, 1, 1, 1, NULL),
  -- S.S. Anne <- Bill's Sea Cottage
  (10019, 10027, 1, 1, 1, NULL),
  -- Thunder Badge <- S.S. Anne
  (10006, 10019, 1, 1, 1, NULL),
  -- Rainbow Badge <- Thunder Badge
  (10007, 10006, 1, 1, 1, NULL),
  -- Rocket Hideout <- Rainbow Badge
  (10020, 10007, 1, 1, 1, NULL),
  -- Pokémon Tower <- Rocket Hideout
  (10021, 10020, 1, 1, 1, NULL),
  -- Silph Co. <- Pokémon Tower
  (10022, 10021, 1, 1, 1, NULL),
  -- Marsh Badge <- Silph Co.
  (10009, 10022, 1, 1, 1, NULL),
  -- Soul Badge <- Marsh Badge
  (10008, 10009, 1, 1, 1, NULL),
  -- Safari Zone <- Soul Badge
  (10028, 10008, 1, 1, 1, NULL),
  -- Pokémon Mansion <- Safari Zone
  (10029, 10028, 1, 1, 1, NULL),
  -- Volcano Badge <- Pokémon Mansion
  (10011, 10029, 1, 1, 1, NULL),
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
  (10018, 10017, 1, 1, 1, NULL),
  -- Cerulean Cave <- Hall of Fame
  (10026, 10018, 1, 1, 1, NULL),
  -- Fighting Dojo Choice opens after Rainbow Badge
  (10010, 10007, 1, 4, 1, NULL),
  -- Power Plant opens after Safari Zone (Surf)
  (10023, 10028, 1, 4, 1, NULL),
  -- Seafoam Islands opens after Safari Zone (Surf and Strength)
  (10024, 10028, 1, 4, 1, NULL),
  -- Victory Road opens after Earth Badge
  (10025, 10012, 1, 4, 1, NULL);
