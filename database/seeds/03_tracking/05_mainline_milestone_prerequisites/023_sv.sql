-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Scarlet / Violet mainline milestone prerequisite links.
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
  (230002, 230001, 23, 1, 1, NULL),
  -- Bug Badge <- Receive Pokedex
  (230003, 230002, 23, 1, 1, NULL),
  -- Grass Badge <- Bug Badge
  (230004, 230003, 23, 1, 1, NULL),
  -- Electric Badge <- Grass Badge
  (230005, 230004, 23, 1, 1, NULL),
  -- Water Badge <- Electric Badge
  (230006, 230005, 23, 1, 1, NULL),
  -- Normal Badge <- Water Badge
  (230007, 230006, 23, 1, 1, NULL),
  -- Ghost Badge <- Normal Badge
  (230008, 230007, 23, 1, 1, NULL),
  -- Psychic Badge <- Ghost Badge
  (230009, 230008, 23, 1, 1, NULL),
  -- Ice Badge <- Psychic Badge
  (230010, 230009, 23, 1, 1, NULL),
  -- Elite Four Rika <- Ice Badge
  (230011, 230010, 23, 1, 1, NULL),
  -- Elite Four Poppy <- Elite Four Rika
  (230012, 230011, 23, 1, 1, NULL),
  -- Elite Four Larry <- Elite Four Poppy
  (230013, 230012, 23, 1, 1, NULL),
  -- Elite Four Hassel <- Elite Four Larry
  (230014, 230013, 23, 1, 1, NULL),
  -- Champion Geeta <- Elite Four Hassel
  (230015, 230014, 23, 1, 1, NULL),
  -- Champion Nemona <- Champion Geeta
  (230016, 230015, 23, 1, 1, NULL),
  -- Dark Crew <- Receive Pokedex
  (230017, 230002, 23, 1, 1, NULL),
  -- Fire Crew <- Dark Crew
  (230018, 230017, 23, 1, 1, NULL),
  -- Poison Crew <- Fire Crew
  (230019, 230018, 23, 1, 1, NULL),
  -- Fairy Crew <- Poison Crew
  (230020, 230019, 23, 1, 1, NULL),
  -- Fighting Crew <- Fairy Crew
  (230021, 230020, 23, 1, 1, NULL),
  -- Defeat Clavell <- Fighting Crew
  (230022, 230021, 23, 1, 1, NULL),
  -- Defeat Penny <- Defeat Clavell
  (230023, 230022, 23, 1, 1, NULL),
  -- Stony Cliff Titan <- Receive Pokedex
  (230024, 230002, 23, 1, 1, NULL),
  -- Open Sky Titan <- Stony Cliff Titan
  (230025, 230024, 23, 1, 1, NULL),
  -- Lurking Steel Titan <- Open Sky Titan
  (230026, 230025, 23, 1, 1, NULL),
  -- Quaking Earth Titan <- Lurking Steel Titan
  (230027, 230026, 23, 1, 1, NULL),
  -- False Dragon Titan <- Quaking Earth Titan
  (230028, 230027, 23, 1, 1, NULL),
  -- Defeat Arven <- False Dragon Titan
  (230029, 230028, 23, 1, 1, NULL),
  -- Area Zero <- Champion Nemona
  (230030, 230016, 23, 3, 1, NULL),
  -- Area Zero <- Defeat Penny
  (230030, 230023, 23, 3, 2, NULL),
  -- Area Zero <- Defeat Arven
  (230030, 230029, 23, 3, 3, NULL),
  -- Defeat AI Professor <- Area Zero
  (230031, 230030, 23, 1, 1, NULL),
  -- Academy Ace Tournament <- Defeat AI Professor
  (230032, 230031, 23, 3, 1, NULL),
  -- Area Zero Depths opens after Defeat AI Professor
  (230037, 230031, 23, 4, 1, NULL);
