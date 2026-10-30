-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- FireRed / LeafGreen mainline milestone prerequisite links.
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
  (60002, 60001, 6, 1, 1, NULL),
  -- Boulder Badge <- Receive Pokedex
  (60003, 60002, 6, 1, 1, NULL),
  -- Fossil Choice <- Boulder Badge
  (60004, 60003, 6, 1, 1, NULL),
  -- Cascade Badge <- Fossil Choice
  (60005, 60004, 6, 1, 1, NULL),
  -- Thunder Badge <- S.S. Anne
  (60006, 60019, 6, 1, 1, NULL),
  -- Rainbow Badge <- Thunder Badge
  (60007, 60006, 6, 1, 1, NULL),
  -- Soul Badge <- Pokémon Tower
  (60008, 60021, 6, 1, 1, NULL),
  -- Marsh Badge <- Silph Co.
  (60009, 60022, 6, 1, 1, NULL),
  -- Volcano Badge <- Marsh Badge
  (60011, 60009, 6, 1, 1, NULL),
  -- Earth Badge <- Volcano Badge
  (60012, 60011, 6, 1, 1, NULL),
  -- Elite Four Lorelei <- Earth Badge
  (60013, 60012, 6, 1, 1, NULL),
  -- Elite Four Bruno <- Elite Four Lorelei
  (60014, 60013, 6, 1, 1, NULL),
  -- Elite Four Agatha <- Elite Four Bruno
  (60015, 60014, 6, 1, 1, NULL),
  -- Elite Four Lance <- Elite Four Agatha
  (60016, 60015, 6, 1, 1, NULL),
  -- Champion Blue <- Elite Four Lance
  (60017, 60016, 6, 1, 1, NULL),
  -- Hall of Fame <- Champion Blue
  (60018, 60017, 6, 1, 1, NULL),
  -- S.S. Anne <- Cascade Badge
  (60019, 60005, 6, 1, 1, NULL),
  -- Rocket Hideout <- Rainbow Badge
  (60020, 60007, 6, 1, 1, NULL),
  -- Pokémon Tower <- Rocket Hideout
  (60021, 60020, 6, 1, 1, NULL),
  -- Silph Co. <- Soul Badge
  (60022, 60008, 6, 1, 1, NULL),
  -- Fighting Dojo Choice opens after Rainbow Badge
  (60010, 60007, 6, 4, 1, NULL),
  -- Power Plant opens after Soul Badge
  (60023, 60008, 6, 4, 1, NULL),
  -- Seafoam Islands opens after Soul Badge
  (60024, 60008, 6, 4, 1, NULL),
  -- Mt. Ember opens after Volcano Badge
  (60025, 60011, 6, 4, 1, NULL),
  -- Navel Rock opens after Hall of Fame
  (60026, 60018, 6, 4, 1, NULL),
  -- Birth Island opens after Hall of Fame
  (60027, 60018, 6, 4, 1, NULL),
  -- Roaming Legendary Beast opens after Hall of Fame
  (60028, 60018, 6, 4, 1, NULL),
  -- Cerulean Cave opens after Hall of Fame
  (60029, 60018, 6, 4, 1, NULL);
