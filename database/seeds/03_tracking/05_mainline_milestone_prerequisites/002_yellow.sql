-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Yellow mainline milestone prerequisite links.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_prerequisites (
  milestone_id,
  prerequisite_milestone_id,
  version_group_id,
  prerequisite_kind_id,
  sort_order,
  notes
) VALUES
  -- Receive Pokedex <- Receive Pikachu
  (20002, 20001, 2, 1, 1, NULL),
  -- Boulder Badge <- Receive Pokedex
  (20003, 20002, 2, 1, 1, NULL),
  -- Fossil Choice <- Boulder Badge
  (20004, 20003, 2, 1, 1, NULL),
  -- Cascade Badge <- Fossil Choice
  (20005, 20004, 2, 1, 1, NULL),
  -- Thunder Badge <- S.S. Anne
  (20006, 20019, 2, 1, 1, NULL),
  -- Rainbow Badge <- Thunder Badge
  (20007, 20006, 2, 1, 1, NULL),
  -- Soul Badge <- Pokémon Tower
  (20008, 20021, 2, 1, 1, NULL),
  -- Marsh Badge <- Silph Co.
  (20009, 20022, 2, 1, 1, NULL),
  -- Volcano Badge <- Marsh Badge
  (20011, 20009, 2, 1, 1, NULL),
  -- Earth Badge <- Volcano Badge
  (20012, 20011, 2, 1, 1, NULL),
  -- Elite Four Lorelei <- Earth Badge
  (20013, 20012, 2, 1, 1, NULL),
  -- Elite Four Bruno <- Elite Four Lorelei
  (20014, 20013, 2, 1, 1, NULL),
  -- Elite Four Agatha <- Elite Four Bruno
  (20015, 20014, 2, 1, 1, NULL),
  -- Elite Four Lance <- Elite Four Agatha
  (20016, 20015, 2, 1, 1, NULL),
  -- Champion Blue <- Elite Four Lance
  (20017, 20016, 2, 1, 1, NULL),
  -- Hall of Fame <- Champion Blue
  (20018, 20017, 2, 1, 1, NULL),
  -- S.S. Anne <- Cascade Badge
  (20019, 20005, 2, 1, 1, NULL),
  -- Rocket Hideout <- Rainbow Badge
  (20020, 20007, 2, 1, 1, NULL),
  -- Pokémon Tower <- Rocket Hideout
  (20021, 20020, 2, 1, 1, NULL),
  -- Silph Co. <- Soul Badge
  (20022, 20008, 2, 1, 1, NULL),
  -- Fighting Dojo Choice opens after Rainbow Badge
  (20010, 20007, 2, 4, 1, NULL),
  -- Power Plant opens after Soul Badge
  (20023, 20008, 2, 4, 1, NULL),
  -- Seafoam Islands opens after Soul Badge
  (20024, 20008, 2, 4, 1, NULL),
  -- Victory Road opens after Earth Badge
  (20025, 20012, 2, 4, 1, NULL),
  -- Cerulean Cave opens after Hall of Fame
  (20026, 20018, 2, 4, 1, NULL);
