-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Mega Dimension mainline milestone prerequisite links.
-- ============================================================================

INSERT INTO tracking.mainline_milestone_prerequisites (
  milestone_id,
  prerequisite_milestone_id,
  version_group_id,
  prerequisite_kind_id,
  sort_order,
  notes
) VALUES
  -- Investigate Hyperspace Lumiose <- Begin Mega Dimension
  (270002, 270001, 27, 1, 1, NULL),
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
  -- Collecting Four Drives opens after Begin Mega Dimension
  (270007, 270001, 27, 4, 1, NULL),
  -- The Stealthy Shadow opens after Begin Mega Dimension
  (270008, 270001, 27, 4, 1, NULL),
  -- Dreams of Meltan opens after Begin Mega Dimension
  (270009, 270001, 27, 4, 1, NULL),
  -- Volcanion Unleashed opens after Begin Mega Dimension
  (270010, 270001, 27, 4, 1, NULL),
  -- The Djinn Unbound opens after Begin Mega Dimension
  (270011, 270001, 27, 4, 1, NULL),
  -- Special Scan: Latias opens after Rogue Mega Rayquaza
  (270016, 270006, 27, 4, 1, NULL),
  -- Special Scan: Latios opens after Rogue Mega Rayquaza
  (270017, 270006, 27, 4, 1, NULL),
  -- Special Scan: Cobalion opens after Rogue Mega Rayquaza
  (270018, 270006, 27, 4, 1, NULL),
  -- Special Scan: Terrakion opens after Rogue Mega Rayquaza
  (270019, 270006, 27, 4, 1, NULL),
  -- Special Scan: Virizion opens after Rogue Mega Rayquaza
  (270020, 270006, 27, 4, 1, NULL),
  -- Special Scan: Keldeo opens after Rogue Mega Rayquaza
  (270021, 270006, 27, 4, 1, NULL),
  -- Special Scan: Meloetta opens after Rogue Mega Rayquaza
  (270022, 270006, 27, 4, 1, NULL),
  -- Restarting Magearna opens after Rogue Mega Rayquaza
  (270023, 270006, 27, 4, 1, NULL),
  -- Raging Lightning opens after Rogue Mega Rayquaza
  (270024, 270006, 27, 4, 1, NULL);
