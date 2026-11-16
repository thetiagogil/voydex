-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order, following Bulbapedia's
-- Gold / Silver walkthrough.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Gold / Silver mainline milestone prerequisite links, in Red / Blue's
-- pattern: each Main Story beat suggests the one before it in Story order
-- (the Pokémon League after the Rising Badge), Post Game carries on from the
-- Pokémon League, where the team enters the Hall of Fame, and each
-- side-content beat names the beat that opens it (opens-after).
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
  (30002, 30001, 3, 1, 1, NULL),
  -- Zephyr Badge <- Receive Pokédex
  (30003, 30002, 3, 1, 1, NULL),
  -- Slowpoke Well <- Zephyr Badge
  (30033, 30003, 3, 1, 1, NULL),
  -- Hive Badge <- Slowpoke Well
  (30004, 30033, 3, 1, 1, NULL),
  -- Ilex Forest <- Hive Badge
  (30034, 30004, 3, 1, 1, NULL),
  -- Plain Badge <- Ilex Forest
  (30005, 30034, 3, 1, 1, NULL),
  -- Fog Badge <- Plain Badge
  (30006, 30005, 3, 1, 1, NULL),
  -- Storm Badge <- Fog Badge
  (30007, 30006, 3, 1, 1, NULL),
  -- Olivine Lighthouse <- Storm Badge
  (30035, 30007, 3, 1, 1, NULL),
  -- Mineral Badge <- Olivine Lighthouse
  (30008, 30035, 3, 1, 1, NULL),
  -- Lake of Rage <- Mineral Badge
  (30036, 30008, 3, 1, 1, NULL),
  -- Team Rocket HQ <- Lake of Rage
  (30037, 30036, 3, 1, 1, NULL),
  -- Glacier Badge <- Team Rocket HQ
  (30009, 30037, 3, 1, 1, NULL),
  -- Radio Tower <- Glacier Badge
  (30027, 30009, 3, 1, 1, NULL),
  -- Rising Badge <- Radio Tower
  (30010, 30027, 3, 1, 1, NULL),
  -- Pokémon League <- Rising Badge
  (30015, 30010, 3, 1, 1, NULL),
  -- Thunder Badge <- Pokémon League
  (30019, 30015, 3, 1, 1, NULL),
  -- Marsh Badge <- Thunder Badge
  (30022, 30019, 3, 1, 1, NULL),
  -- Power Plant <- Marsh Badge
  (30038, 30022, 3, 1, 1, NULL),
  -- Cascade Badge <- Power Plant
  (30018, 30038, 3, 1, 1, NULL),
  -- Rainbow Badge <- Cascade Badge
  (30020, 30018, 3, 1, 1, NULL),
  -- Soul Badge <- Rainbow Badge
  (30021, 30020, 3, 1, 1, NULL),
  -- Boulder Badge <- Soul Badge
  (30017, 30021, 3, 1, 1, NULL),
  -- Volcano Badge <- Boulder Badge
  (30023, 30017, 3, 1, 1, NULL),
  -- Earth Badge <- Volcano Badge
  (30024, 30023, 3, 1, 1, NULL),
  -- Defeat Red <- Earth Badge
  (30025, 30024, 3, 1, 1, NULL),
  -- Burned Tower opens after Plain Badge
  (30026, 30005, 3, 4, 1, NULL),
  -- Roaming Raikou opens after Burned Tower
  (30028, 30026, 3, 4, 1, NULL),
  -- Roaming Entei opens after Burned Tower
  (30029, 30026, 3, 4, 1, NULL),
  -- Roaming Suicune opens after Burned Tower
  (30030, 30026, 3, 4, 1, NULL),
  -- Tin Tower opens after Radio Tower
  (30031, 30027, 3, 4, 1, 'Gold: the Rainbow Wing comes from the Radio Tower director. Silver: after the Hall of Fame, from the elder in Pewter City.'),
  -- Whirl Islands opens after Radio Tower
  (30032, 30027, 3, 4, 1, 'Silver: the Silver Wing comes from the Radio Tower director. Gold: after the Hall of Fame, from the elder in Pewter City.');
