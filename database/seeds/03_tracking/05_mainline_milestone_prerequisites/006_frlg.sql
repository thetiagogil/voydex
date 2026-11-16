-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order, following Bulbapedia's
-- FireRed / LeafGreen walkthrough.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- FireRed / LeafGreen mainline milestone prerequisite links, in Red / Blue's
-- pattern: each Main Story beat suggests the one before it in Story order,
-- Post Game carries on from the Pokémon League, and each side-content beat
-- names the beat that opens it (opens-after).
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
  (60002, 60001, 6, 1, 1, NULL),
  -- Boulder Badge <- Receive Pokédex
  (60003, 60002, 6, 1, 1, NULL),
  -- Fossil Choice <- Boulder Badge
  (60004, 60003, 6, 1, 1, NULL),
  -- Cascade Badge <- Fossil Choice
  (60005, 60004, 6, 1, 1, NULL),
  -- Bill's Sea Cottage <- Cascade Badge
  (60030, 60005, 6, 1, 1, NULL),
  -- S.S. Anne <- Bill's Sea Cottage
  (60019, 60030, 6, 1, 1, NULL),
  -- Thunder Badge <- S.S. Anne
  (60006, 60019, 6, 1, 1, NULL),
  -- Rainbow Badge <- Thunder Badge
  (60007, 60006, 6, 1, 1, NULL),
  -- Rocket Hideout <- Rainbow Badge
  (60020, 60007, 6, 1, 1, NULL),
  -- Pokémon Tower <- Rocket Hideout
  (60021, 60020, 6, 1, 1, NULL),
  -- Soul Badge <- Pokémon Tower
  (60008, 60021, 6, 1, 1, NULL),
  -- Safari Zone <- Soul Badge
  (60031, 60008, 6, 1, 1, NULL),
  -- Silph Co. <- Safari Zone
  (60022, 60031, 6, 1, 1, NULL),
  -- Marsh Badge <- Silph Co.
  (60009, 60022, 6, 1, 1, NULL),
  -- Pokémon Mansion <- Marsh Badge
  (60032, 60009, 6, 1, 1, NULL),
  -- Volcano Badge <- Pokémon Mansion
  (60011, 60032, 6, 1, 1, NULL),
  -- Berry Forest <- Volcano Badge
  (60033, 60011, 6, 1, 1, NULL),
  -- Earth Badge <- Berry Forest
  (60012, 60033, 6, 1, 1, NULL),
  -- Pokémon League <- Earth Badge
  (60017, 60012, 6, 1, 1, NULL),
  -- Ruby Path <- Pokémon League
  (60034, 60017, 6, 1, 1, NULL),
  -- Icefall Cave <- Ruby Path
  (60035, 60034, 6, 1, 1, NULL),
  -- Dotted Hole <- Icefall Cave
  (60036, 60035, 6, 1, 1, NULL),
  -- Rocket Warehouse <- Dotted Hole
  (60037, 60036, 6, 1, 1, NULL),
  -- Lost Cave <- Rocket Warehouse
  (60038, 60037, 6, 1, 1, NULL),
  -- Trainer Tower <- Lost Cave
  (60039, 60038, 6, 1, 1, NULL),
  -- Tanoby Chambers <- Trainer Tower
  (60040, 60039, 6, 1, 1, NULL),
  -- Cerulean Cave <- Rocket Warehouse
  (60029, 60037, 6, 1, 1, NULL),
  -- Roaming Legendary Beast <- Cerulean Cave
  (60028, 60029, 6, 1, 1, NULL),
  -- Fighting Dojo Choice opens after Rainbow Badge
  (60010, 60007, 6, 4, 1, NULL),
  -- Power Plant opens after Safari Zone
  (60023, 60031, 6, 4, 1, NULL),
  -- Seafoam Islands opens after Safari Zone
  (60024, 60031, 6, 4, 1, NULL),
  -- Mt. Ember opens after Volcano Badge
  (60025, 60011, 6, 4, 1, 'Bill takes you to One Island after the Volcano Badge.'),
  -- Navel Rock opens after Pokémon League
  (60026, 60017, 6, 4, 1, 'Needs the MysticTicket.'),
  -- Birth Island opens after Pokémon League
  (60027, 60017, 6, 4, 1, 'Needs the AuroraTicket.');
