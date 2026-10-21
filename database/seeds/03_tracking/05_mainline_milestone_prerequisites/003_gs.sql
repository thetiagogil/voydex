-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Gold / Silver mainline milestone prerequisite links.
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
  (30002, 30001, 3, 1, 1, NULL),
  -- Zephyr Badge <- Receive Pokedex
  (30003, 30002, 3, 1, 1, NULL),
  -- Hive Badge <- Zephyr Badge
  (30004, 30003, 3, 1, 1, NULL),
  -- Plain Badge <- Hive Badge
  (30005, 30004, 3, 1, 1, NULL),
  -- Fog Badge <- Burned Tower
  (30006, 30026, 3, 1, 1, NULL),
  -- Storm Badge <- Fog Badge
  (30007, 30006, 3, 1, 1, NULL),
  -- Mineral Badge <- Storm Badge
  (30008, 30007, 3, 1, 1, NULL),
  -- Glacier Badge <- Mineral Badge
  (30009, 30008, 3, 1, 1, NULL),
  -- Rising Badge <- Radio Tower
  (30010, 30027, 3, 1, 1, NULL),
  -- Elite Four Will <- Rising Badge
  (30011, 30010, 3, 1, 1, NULL),
  -- Elite Four Koga <- Elite Four Will
  (30012, 30011, 3, 1, 1, NULL),
  -- Elite Four Bruno <- Elite Four Koga
  (30013, 30012, 3, 1, 1, NULL),
  -- Elite Four Karen <- Elite Four Bruno
  (30014, 30013, 3, 1, 1, NULL),
  -- Champion Lance <- Elite Four Karen
  (30015, 30014, 3, 1, 1, NULL),
  -- Hall of Fame <- Champion Lance
  (30016, 30015, 3, 1, 1, NULL),
  -- Boulder Badge <- Hall of Fame
  (30017, 30016, 3, 1, 1, NULL),
  -- Cascade Badge <- Boulder Badge
  (30018, 30017, 3, 1, 1, NULL),
  -- Thunder Badge <- Cascade Badge
  (30019, 30018, 3, 1, 1, NULL),
  -- Rainbow Badge <- Thunder Badge
  (30020, 30019, 3, 1, 1, NULL),
  -- Soul Badge <- Rainbow Badge
  (30021, 30020, 3, 1, 1, NULL),
  -- Marsh Badge <- Soul Badge
  (30022, 30021, 3, 1, 1, NULL),
  -- Volcano Badge <- Marsh Badge
  (30023, 30022, 3, 1, 1, NULL),
  -- Earth Badge <- Volcano Badge
  (30024, 30023, 3, 1, 1, NULL),
  -- Defeat Red <- Earth Badge
  (30025, 30024, 3, 1, 1, NULL),
  -- Burned Tower <- Plain Badge
  (30026, 30005, 3, 1, 1, NULL),
  -- Radio Tower <- Glacier Badge
  (30027, 30009, 3, 1, 1, NULL);
