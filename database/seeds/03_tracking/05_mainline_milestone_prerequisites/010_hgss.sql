-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order, following Bulbapedia's
-- HeartGold / SoulSilver walkthrough.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- HeartGold / SoulSilver mainline milestone prerequisite links, in Red /
-- Blue's pattern: each Main Story beat suggests the one before it in Story
-- order, Post Game carries on from the Pokémon League, and each side-content
-- beat names the beat that opens it (opens-after).
-- ============================================================================

INSERT INTO tracking.mainline_milestone_prerequisites (
  milestone_id,
  prerequisite_milestone_id,
  version_group_id,
  prerequisite_kind_id,
  sort_order,
  notes
) VALUES
  -- Receive Pokédex <- Choose Johto Starter
  (100002, 100001, 10, 1, 1, NULL),
  -- Zephyr Badge <- Receive Pokédex
  (100003, 100002, 10, 1, 1, NULL),
  -- Slowpoke Well <- Zephyr Badge
  (100042, 100003, 10, 1, 1, NULL),
  -- Hive Badge <- Slowpoke Well
  (100004, 100042, 10, 1, 1, NULL),
  -- Ilex Forest <- Hive Badge
  (100043, 100004, 10, 1, 1, NULL),
  -- Plain Badge <- Ilex Forest
  (100005, 100043, 10, 1, 1, NULL),
  -- Burned Tower <- Plain Badge
  (100028, 100005, 10, 1, 1, NULL),
  -- Fog Badge <- Burned Tower
  (100006, 100028, 10, 1, 1, NULL),
  -- Storm Badge <- Fog Badge
  (100007, 100006, 10, 1, 1, NULL),
  -- Olivine Lighthouse <- Storm Badge
  (100044, 100007, 10, 1, 1, NULL),
  -- Mineral Badge <- Olivine Lighthouse
  (100008, 100044, 10, 1, 1, NULL),
  -- Lake of Rage <- Mineral Badge
  (100045, 100008, 10, 1, 1, NULL),
  -- Team Rocket HQ <- Lake of Rage
  (100046, 100045, 10, 1, 1, NULL),
  -- Glacier Badge <- Team Rocket HQ
  (100009, 100046, 10, 1, 1, NULL),
  -- Radio Tower <- Glacier Badge
  (100029, 100009, 10, 1, 1, NULL),
  -- Rising Badge <- Radio Tower
  (100010, 100029, 10, 1, 1, NULL),
  -- Kimono Girls' Ritual <- Rising Badge
  (100030, 100010, 10, 1, 1, NULL),
  -- Pokémon League <- Kimono Girls' Ritual
  (100015, 100030, 10, 1, 1, NULL),
  -- Thunder Badge <- Pokémon League
  (100019, 100015, 10, 1, 1, NULL),
  -- Marsh Badge <- Thunder Badge
  (100022, 100019, 10, 1, 1, NULL),
  -- Machine Part <- Marsh Badge
  (100047, 100022, 10, 1, 1, NULL),
  -- Cascade Badge <- Machine Part
  (100018, 100047, 10, 1, 1, NULL),
  -- Rainbow Badge <- Cascade Badge
  (100020, 100018, 10, 1, 1, NULL),
  -- Soul Badge <- Rainbow Badge
  (100021, 100020, 10, 1, 1, NULL),
  -- Boulder Badge <- Soul Badge
  (100017, 100021, 10, 1, 1, NULL),
  -- Volcano Badge <- Boulder Badge
  (100023, 100017, 10, 1, 1, NULL),
  -- Earth Badge <- Volcano Badge
  (100024, 100023, 10, 1, 1, NULL),
  -- Defeat Red <- Earth Badge
  (100025, 100024, 10, 1, 1, NULL),
  -- Choose Kanto Starter <- Defeat Red
  (100026, 100025, 10, 1, 1, NULL),
  -- Choose Hoenn Starter <- Choose Kanto Starter
  (100027, 100026, 10, 1, 1, NULL),
  -- Roaming Raikou opens after Burned Tower
  (100031, 100028, 10, 4, 1, NULL),
  -- Roaming Entei opens after Burned Tower
  (100032, 100028, 10, 4, 1, NULL),
  -- Roaming Latias or Latios opens after Pokémon League
  (100033, 100015, 10, 4, 1, NULL),
  -- Route 25 opens after Pokémon League
  (100034, 100015, 10, 4, 1, NULL),
  -- Power Plant opens after Pokémon League
  (100035, 100015, 10, 4, 1, NULL),
  -- Seafoam Islands opens after Pokémon League
  (100036, 100015, 10, 4, 1, NULL),
  -- Mt. Silver Cave opens after Earth Badge
  (100037, 100024, 10, 4, 1, NULL),
  -- Cerulean Cave opens after Earth Badge
  (100038, 100024, 10, 4, 1, NULL),
  -- Pewter City Wing opens after Pokémon League
  (100039, 100015, 10, 4, 1, NULL),
  -- Embedded Tower opens after Defeat Red
  (100040, 100025, 10, 4, 1, NULL),
  -- Dragon's Den opens after Volcano Badge
  (100041, 100023, 10, 4, 1, NULL);
