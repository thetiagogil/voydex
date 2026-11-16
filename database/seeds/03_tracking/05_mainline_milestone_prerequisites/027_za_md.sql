-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order, following Mega Dimension's story.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Mega Dimension milestone prerequisite links, in Red / Blue's pattern: each
-- required beat suggests the one before it in Story order, and each
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
  -- Rogue Mega Absol Z <- Investigate Hyperspace Lumiose
  (270012, 270002, 27, 1, 1, NULL),
  -- Rogue Mega Staraptor <- Rogue Mega Absol Z
  (270013, 270012, 27, 1, 1, NULL),
  -- Rogue Mega Tatsugiri <- Rogue Mega Staraptor
  (270014, 270013, 27, 1, 1, NULL),
  -- Rogue Mega Meowstic <- Rogue Mega Tatsugiri
  (270015, 270014, 27, 1, 1, NULL),
  -- Rogue Mega Darkrai <- Rogue Mega Meowstic
  (270003, 270015, 27, 1, 1, NULL),
  -- Capture Groudon <- Rogue Mega Darkrai
  (270004, 270003, 27, 1, 1, NULL),
  -- Capture Kyogre <- Capture Groudon
  (270005, 270004, 27, 1, 1, NULL),
  -- Rogue Mega Rayquaza <- Capture Kyogre
  (270006, 270005, 27, 1, 1, NULL),
  -- Collecting Four Drives opens after Investigate Hyperspace Lumiose
  (270007, 270002, 27, 4, 1, NULL),
  -- The Stealthy Shadow opens after Investigate Hyperspace Lumiose
  (270008, 270002, 27, 4, 1, NULL),
  -- Dreams of Meltan opens after Investigate Hyperspace Lumiose
  (270009, 270002, 27, 4, 1, NULL),
  -- Volcanion Unleashed opens after Investigate Hyperspace Lumiose
  (270010, 270002, 27, 4, 1, NULL),
  -- The Djinn Unbound opens after Investigate Hyperspace Lumiose
  (270011, 270002, 27, 4, 1, NULL),
  -- Special Scans opens after Rogue Mega Rayquaza
  (270016, 270006, 27, 4, 1, NULL),
  -- Restarting Magearna opens after Rogue Mega Rayquaza
  (270023, 270006, 27, 4, 1, NULL),
  -- Raging Lightning opens after Rogue Mega Rayquaza
  (270024, 270006, 27, 4, 1, NULL),
  -- Hyperspace Wild Zones opens after Investigate Hyperspace Lumiose
  (270025, 270002, 27, 4, 1, NULL);
