-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Black 2 / White 2 mainline milestone prerequisite links.
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
  (120002, 120001, 12, 1, 1, NULL),
  -- Basic Badge <- Receive Pokedex
  (120003, 120002, 12, 1, 1, NULL),
  -- Toxic Badge <- Basic Badge
  (120004, 120003, 12, 1, 1, NULL),
  -- Insect Badge <- Toxic Badge
  (120005, 120004, 12, 1, 1, NULL),
  -- Bolt Badge <- Insect Badge
  (120006, 120005, 12, 1, 1, NULL),
  -- Quake Badge <- Bolt Badge
  (120007, 120006, 12, 1, 1, NULL),
  -- Jet Badge <- Quake Badge
  (120008, 120007, 12, 1, 1, NULL),
  -- Legend Badge <- Jet Badge
  (120009, 120008, 12, 1, 1, NULL),
  -- Wave Badge <- Legend Badge
  (120010, 120009, 12, 1, 1, NULL),
  -- Defeat Colress <- Wave Badge
  (120011, 120010, 12, 1, 1, NULL),
  -- Defeat Ghetsis <- Defeat Colress
  (120012, 120011, 12, 1, 1, NULL),
  -- Elite Four Shauntal <- Defeat Ghetsis
  (120013, 120012, 12, 1, 1, NULL),
  -- Elite Four Grimsley <- Elite Four Shauntal
  (120014, 120013, 12, 1, 1, NULL),
  -- Elite Four Caitlin <- Elite Four Grimsley
  (120015, 120014, 12, 1, 1, NULL),
  -- Elite Four Marshal <- Elite Four Caitlin
  (120016, 120015, 12, 1, 1, NULL),
  -- Champion Iris <- Elite Four Marshal
  (120017, 120016, 12, 1, 1, NULL),
  -- Hall of Fame <- Champion Iris
  (120018, 120017, 12, 1, 1, NULL),
  -- Hugh in Undella Town <- Hall of Fame
  (120028, 120018, 12, 1, 1, NULL),
  -- Swords of Justice opens after Hall of Fame
  (120019, 120018, 12, 4, 1, NULL),
  -- Dreamyard opens after Hall of Fame
  (120020, 120018, 12, 4, 1, NULL),
  -- Cave of Being opens after Hall of Fame
  (120021, 120018, 12, 4, 1, NULL),
  -- Dragonspiral Tower opens after Hall of Fame
  (120022, 120018, 12, 4, 1, NULL),
  -- Giant Chasm opens after Hall of Fame
  (120023, 120018, 12, 4, 1, NULL),
  -- Underground Ruins opens after Hall of Fame
  (120024, 120018, 12, 4, 1, NULL),
  -- Twist Mountain opens after Hall of Fame
  (120025, 120018, 12, 4, 1, NULL),
  -- Reversal Mountain opens after Hall of Fame
  (120026, 120018, 12, 4, 1, NULL),
  -- Marvelous Bridge opens after Hall of Fame
  (120027, 120018, 12, 4, 1, NULL);
