-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order, following Bulbapedia's
-- Black 2 / White 2 walkthrough.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Black 2 / White 2 mainline milestone prerequisite links, in Red / Blue's
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
  (120002, 120001, 12, 1, 1, NULL),
  -- Basic Badge <- Receive Pokédex
  (120003, 120002, 12, 1, 1, NULL),
  -- Toxic Badge <- Basic Badge
  (120004, 120003, 12, 1, 1, NULL),
  -- Castelia Sewers <- Toxic Badge
  (120029, 120004, 12, 1, 1, NULL),
  -- Insect Badge <- Castelia Sewers
  (120005, 120029, 12, 1, 1, NULL),
  -- Bolt Badge <- Insect Badge
  (120006, 120005, 12, 1, 1, NULL),
  -- Quake Badge <- Bolt Badge
  (120007, 120006, 12, 1, 1, NULL),
  -- Pokémon World Tournament <- Quake Badge
  (120030, 120007, 12, 1, 1, NULL),
  -- Jet Badge <- Pokémon World Tournament
  (120008, 120030, 12, 1, 1, NULL),
  -- Legend Badge <- Jet Badge
  (120009, 120008, 12, 1, 1, NULL),
  -- Team Plasma's Attack <- Legend Badge
  (120031, 120009, 12, 1, 1, NULL),
  -- Wave Badge <- Team Plasma's Attack
  (120010, 120031, 12, 1, 1, NULL),
  -- Plasma Frigate <- Wave Badge
  (120011, 120010, 12, 1, 1, NULL),
  -- Defeat Ghetsis <- Plasma Frigate
  (120012, 120011, 12, 1, 1, NULL),
  -- Pokémon League <- Defeat Ghetsis
  (120017, 120012, 12, 1, 1, NULL),
  -- Hugh in Undella Town <- Pokémon League
  (120028, 120017, 12, 1, 1, NULL),
  -- Swords of Justice opens after Jet Badge
  (120019, 120008, 12, 4, 1, NULL),
  -- Dreamyard opens after Pokémon League
  (120020, 120017, 12, 4, 1, NULL),
  -- Cave of Being opens after Pokémon League
  (120021, 120017, 12, 4, 1, NULL),
  -- Dragonspiral Tower opens after Pokémon League
  (120022, 120017, 12, 4, 1, NULL),
  -- Giant Chasm opens after Pokémon League
  (120023, 120017, 12, 4, 1, NULL),
  -- Underground Ruins opens after Pokémon League
  (120024, 120017, 12, 4, 1, NULL),
  -- Twist Mountain opens after Pokémon League
  (120025, 120017, 12, 4, 1, NULL),
  -- Reversal Mountain opens after Pokémon League
  (120026, 120017, 12, 4, 1, NULL),
  -- Marvelous Bridge opens after Pokémon League
  (120027, 120017, 12, 4, 1, NULL);
