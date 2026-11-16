-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order, following Legends: Z-A's story.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Legends: Z-A milestone prerequisite links, in Red / Blue's pattern: each
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
  -- Join Team MZ <- Choose Starter
  (260003, 260001, 26, 1, 1, NULL),
  -- Reach Rank Y <- Join Team MZ
  (260013, 260003, 26, 1, 1, NULL),
  -- Reach Rank X <- Reach Rank Y
  (260014, 260013, 26, 1, 1, NULL),
  -- Reach Rank W <- Reach Rank X
  (260015, 260014, 26, 1, 1, NULL),
  -- Reach Rank V <- Reach Rank W
  (260016, 260015, 26, 1, 1, NULL),
  -- Unlock Mega Evolution <- Reach Rank V
  (260005, 260016, 26, 1, 1, NULL),
  -- Reach Rank F <- Unlock Mega Evolution
  (260017, 260005, 26, 1, 1, NULL),
  -- Rogue Mega Slowbro <- Reach Rank F
  (260022, 260017, 26, 1, 1, NULL),
  -- Rogue Mega Camerupt <- Rogue Mega Slowbro
  (260023, 260022, 26, 1, 1, NULL),
  -- Rogue Mega Victreebel <- Rogue Mega Camerupt
  (260024, 260023, 26, 1, 1, NULL),
  -- Reach Rank E <- Rogue Mega Victreebel
  (260018, 260024, 26, 1, 1, NULL),
  -- Rogue Mega Beedrill <- Reach Rank E
  (260025, 260018, 26, 1, 1, NULL),
  -- Rogue Mega Hawlucha <- Rogue Mega Beedrill
  (260026, 260025, 26, 1, 1, NULL),
  -- Rogue Mega Banette <- Rogue Mega Hawlucha
  (260027, 260026, 26, 1, 1, NULL),
  -- Reach Rank D <- Rogue Mega Banette
  (260019, 260027, 26, 1, 1, NULL),
  -- Rogue Mega Mawile <- Reach Rank D
  (260028, 260019, 26, 1, 1, NULL),
  -- Rogue Mega Barbaracle <- Rogue Mega Mawile
  (260029, 260028, 26, 1, 1, NULL),
  -- Rogue Mega Ampharos <- Rogue Mega Barbaracle
  (260030, 260029, 26, 1, 1, NULL),
  -- Reach Rank C <- Rogue Mega Ampharos
  (260020, 260030, 26, 1, 1, NULL),
  -- Rogue Mega Froslass <- Reach Rank C
  (260031, 260020, 26, 1, 1, NULL),
  -- Rogue Mega Altaria <- Rogue Mega Froslass
  (260032, 260031, 26, 1, 1, NULL),
  -- Rogue Mega Venusaur <- Rogue Mega Altaria
  (260033, 260032, 26, 1, 1, NULL),
  -- Reach Rank B <- Rogue Mega Venusaur
  (260006, 260033, 26, 1, 1, NULL),
  -- Rogue Mega Dragonite <- Reach Rank B
  (260034, 260006, 26, 1, 1, NULL),
  -- Rogue Mega Tyranitar <- Rogue Mega Dragonite
  (260035, 260034, 26, 1, 1, NULL),
  -- Rogue Mega Starmie <- Rogue Mega Tyranitar
  (260036, 260035, 26, 1, 1, NULL),
  -- Reach Rank A <- Rogue Mega Starmie
  (260021, 260036, 26, 1, 1, NULL),
  -- Stop the Ange Crisis <- Reach Rank A
  (260008, 260021, 26, 1, 1, NULL),
  -- The One That Gives opens after Stop the Ange Crisis
  (260010, 260008, 26, 4, 1, NULL),
  -- The One That Takes opens after Stop the Ange Crisis
  (260011, 260008, 26, 4, 1, NULL),
  -- To Keep the World in Balance opens after Stop the Ange Crisis
  (260012, 260008, 26, 4, 1, NULL);
