-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- HeartGold / SoulSilver mainline milestone prerequisite links.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_prerequisites (
  milestone_id,
  prerequisite_milestone_id,
  version_group_id,
  prerequisite_kind_id,
  sort_order,
  notes
) VALUES
  -- Receive Pokedex <- Choose Johto Starter
  (100002, 100001, 10, 1, 1, NULL),
  -- Zephyr Badge <- Receive Pokedex
  (100003, 100002, 10, 1, 1, NULL),
  -- Hive Badge <- Zephyr Badge
  (100004, 100003, 10, 1, 1, NULL),
  -- Plain Badge <- Hive Badge
  (100005, 100004, 10, 1, 1, NULL),
  -- Fog Badge <- Burned Tower
  (100006, 100028, 10, 1, 1, NULL),
  -- Storm Badge <- Fog Badge
  (100007, 100006, 10, 1, 1, NULL),
  -- Mineral Badge <- Storm Badge
  (100008, 100007, 10, 1, 1, NULL),
  -- Glacier Badge <- Mineral Badge
  (100009, 100008, 10, 1, 1, NULL),
  -- Rising Badge <- Radio Tower
  (100010, 100029, 10, 1, 1, NULL),
  -- Elite Four Will <- Rising Badge
  (100011, 100010, 10, 1, 1, NULL),
  -- Elite Four Koga <- Elite Four Will
  (100012, 100011, 10, 1, 1, NULL),
  -- Elite Four Bruno <- Elite Four Koga
  (100013, 100012, 10, 1, 1, NULL),
  -- Elite Four Karen <- Elite Four Bruno
  (100014, 100013, 10, 1, 1, NULL),
  -- Champion Lance <- Elite Four Karen
  (100015, 100014, 10, 1, 1, NULL),
  -- Hall of Fame <- Champion Lance
  (100016, 100015, 10, 1, 1, NULL),
  -- Boulder Badge <- Hall of Fame
  (100017, 100016, 10, 1, 1, NULL),
  -- Cascade Badge <- Boulder Badge
  (100018, 100017, 10, 1, 1, NULL),
  -- Thunder Badge <- Cascade Badge
  (100019, 100018, 10, 1, 1, NULL),
  -- Rainbow Badge <- Thunder Badge
  (100020, 100019, 10, 1, 1, NULL),
  -- Soul Badge <- Rainbow Badge
  (100021, 100020, 10, 1, 1, NULL),
  -- Marsh Badge <- Soul Badge
  (100022, 100021, 10, 1, 1, NULL),
  -- Volcano Badge <- Marsh Badge
  (100023, 100022, 10, 1, 1, NULL),
  -- Earth Badge <- Volcano Badge
  (100024, 100023, 10, 1, 1, NULL),
  -- Defeat Red <- Earth Badge
  (100025, 100024, 10, 1, 1, NULL),
  -- Choose Kanto Starter <- Defeat Red
  (100026, 100025, 10, 1, 1, NULL),
  -- Choose Hoenn Starter <- Choose Kanto Starter
  (100027, 100026, 10, 1, 1, NULL),
  -- Burned Tower <- Plain Badge
  (100028, 100005, 10, 1, 1, NULL),
  -- Radio Tower <- Glacier Badge
  (100029, 100009, 10, 1, 1, NULL);
