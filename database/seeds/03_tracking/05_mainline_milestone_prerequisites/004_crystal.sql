-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Crystal mainline milestone prerequisite links.
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
  (40002, 40001, 4, 1, 1, NULL),
  -- Zephyr Badge <- Receive Pokedex
  (40003, 40002, 4, 1, 1, NULL),
  -- Hive Badge <- Zephyr Badge
  (40004, 40003, 4, 1, 1, NULL),
  -- Plain Badge <- Hive Badge
  (40005, 40004, 4, 1, 1, NULL),
  -- Fog Badge <- Burned Tower
  (40006, 40026, 4, 1, 1, NULL),
  -- Storm Badge <- Fog Badge
  (40007, 40006, 4, 1, 1, NULL),
  -- Mineral Badge <- Storm Badge
  (40008, 40007, 4, 1, 1, NULL),
  -- Glacier Badge <- Mineral Badge
  (40009, 40008, 4, 1, 1, NULL),
  -- Rising Badge <- Radio Tower
  (40010, 40027, 4, 1, 1, NULL),
  -- Elite Four Will <- Rising Badge
  (40011, 40010, 4, 1, 1, NULL),
  -- Elite Four Koga <- Elite Four Will
  (40012, 40011, 4, 1, 1, NULL),
  -- Elite Four Bruno <- Elite Four Koga
  (40013, 40012, 4, 1, 1, NULL),
  -- Elite Four Karen <- Elite Four Bruno
  (40014, 40013, 4, 1, 1, NULL),
  -- Champion Lance <- Elite Four Karen
  (40015, 40014, 4, 1, 1, NULL),
  -- Hall of Fame <- Champion Lance
  (40016, 40015, 4, 1, 1, NULL),
  -- Boulder Badge <- Hall of Fame
  (40017, 40016, 4, 1, 1, NULL),
  -- Cascade Badge <- Boulder Badge
  (40018, 40017, 4, 1, 1, NULL),
  -- Thunder Badge <- Cascade Badge
  (40019, 40018, 4, 1, 1, NULL),
  -- Rainbow Badge <- Thunder Badge
  (40020, 40019, 4, 1, 1, NULL),
  -- Soul Badge <- Rainbow Badge
  (40021, 40020, 4, 1, 1, NULL),
  -- Marsh Badge <- Soul Badge
  (40022, 40021, 4, 1, 1, NULL),
  -- Volcano Badge <- Marsh Badge
  (40023, 40022, 4, 1, 1, NULL),
  -- Earth Badge <- Volcano Badge
  (40024, 40023, 4, 1, 1, NULL),
  -- Defeat Red <- Earth Badge
  (40025, 40024, 4, 1, 1, NULL),
  -- Burned Tower <- Plain Badge
  (40026, 40005, 4, 1, 1, NULL),
  -- Radio Tower <- Glacier Badge
  (40027, 40009, 4, 1, 1, NULL),
  -- Roaming Raikou opens after Burned Tower
  (40028, 40026, 4, 4, 1, NULL),
  -- Roaming Entei opens after Burned Tower
  (40029, 40026, 4, 4, 1, NULL),
  -- Tin Tower opens after Radio Tower
  (40030, 40027, 4, 4, 1, 'The Clear Bell comes from the Radio Tower director; Suicune waits once the three beasts have been seen.'),
  -- Whirl Islands opens after Hall of Fame
  (40031, 40016, 4, 4, 1, NULL),
  -- Ilex Forest Shrine opens after Hall of Fame
  (40032, 40016, 4, 4, 1, NULL);
