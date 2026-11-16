-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order, following Bulbapedia's
-- Crystal walkthrough.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Crystal mainline milestone prerequisite links, in Red / Blue's pattern:
-- each Main Story beat suggests the one before it in Story order, Post Game
-- carries on from the Pokémon League, and each side-content beat names the
-- beat that opens it (opens-after).
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
  (40002, 40001, 4, 1, 1, NULL),
  -- Zephyr Badge <- Receive Pokédex
  (40003, 40002, 4, 1, 1, NULL),
  -- Slowpoke Well <- Zephyr Badge
  (40033, 40003, 4, 1, 1, NULL),
  -- Hive Badge <- Slowpoke Well
  (40004, 40033, 4, 1, 1, NULL),
  -- Ilex Forest <- Hive Badge
  (40034, 40004, 4, 1, 1, NULL),
  -- Plain Badge <- Ilex Forest
  (40005, 40034, 4, 1, 1, NULL),
  -- Burned Tower <- Plain Badge
  (40026, 40005, 4, 1, 1, NULL),
  -- Fog Badge <- Burned Tower
  (40006, 40026, 4, 1, 1, NULL),
  -- Storm Badge <- Fog Badge
  (40007, 40006, 4, 1, 1, NULL),
  -- Olivine Lighthouse <- Storm Badge
  (40035, 40007, 4, 1, 1, NULL),
  -- Mineral Badge <- Olivine Lighthouse
  (40008, 40035, 4, 1, 1, NULL),
  -- Lake of Rage <- Mineral Badge
  (40036, 40008, 4, 1, 1, NULL),
  -- Team Rocket HQ <- Lake of Rage
  (40037, 40036, 4, 1, 1, NULL),
  -- Glacier Badge <- Team Rocket HQ
  (40009, 40037, 4, 1, 1, NULL),
  -- Radio Tower <- Glacier Badge
  (40027, 40009, 4, 1, 1, NULL),
  -- Rising Badge <- Radio Tower
  (40010, 40027, 4, 1, 1, NULL),
  -- Pokémon League <- Rising Badge
  (40015, 40010, 4, 1, 1, NULL),
  -- Thunder Badge <- Pokémon League
  (40019, 40015, 4, 1, 1, NULL),
  -- Marsh Badge <- Thunder Badge
  (40022, 40019, 4, 1, 1, NULL),
  -- Power Plant <- Marsh Badge
  (40038, 40022, 4, 1, 1, NULL),
  -- Cascade Badge <- Power Plant
  (40018, 40038, 4, 1, 1, NULL),
  -- Rainbow Badge <- Cascade Badge
  (40020, 40018, 4, 1, 1, NULL),
  -- Soul Badge <- Rainbow Badge
  (40021, 40020, 4, 1, 1, NULL),
  -- Boulder Badge <- Soul Badge
  (40017, 40021, 4, 1, 1, NULL),
  -- Volcano Badge <- Boulder Badge
  (40023, 40017, 4, 1, 1, NULL),
  -- Earth Badge <- Volcano Badge
  (40024, 40023, 4, 1, 1, NULL),
  -- Defeat Red <- Earth Badge
  (40025, 40024, 4, 1, 1, NULL),
  -- Roaming Raikou opens after Burned Tower
  (40028, 40026, 4, 4, 1, NULL),
  -- Roaming Entei opens after Burned Tower
  (40029, 40026, 4, 4, 1, NULL),
  -- Suicune opens after Radio Tower
  (40039, 40027, 4, 4, 1, 'The Radio Tower''s Director gives you the Clear Bell that lets you in.'),
  -- Tin Tower opens after Pokémon League
  (40030, 40015, 4, 4, 1, 'Needs Raikou, Entei and Suicune caught as well.'),
  -- Whirl Islands opens after Boulder Badge
  (40031, 40017, 4, 4, 1, 'The Silver Wing comes from the elder in Pewter City.'),
  -- Ilex Forest Shrine opens after Pokémon League
  (40032, 40015, 4, 4, 1, 'Virtual Console release only.');
