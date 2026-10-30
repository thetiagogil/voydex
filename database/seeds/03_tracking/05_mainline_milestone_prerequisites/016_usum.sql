-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Ultra Sun / Ultra Moon mainline milestone prerequisite links.
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
  (160002, 160001, 16, 1, 1, NULL),
  -- Ilima Trial <- Iki Town Festival
  (160003, 160033, 16, 1, 1, NULL),
  -- Grand Trial Hala <- Ilima Trial
  (160004, 160003, 16, 1, 1, NULL),
  -- Lana Trial <- Grand Trial Hala
  (160005, 160004, 16, 1, 1, NULL),
  -- Kiawe Trial <- Lana Trial
  (160006, 160005, 16, 1, 1, NULL),
  -- Mallow Trial <- Kiawe Trial
  (160007, 160006, 16, 1, 1, NULL),
  -- Grand Trial Olivia <- Mallow Trial
  (160008, 160007, 16, 1, 1, NULL),
  -- Sophocles Trial <- Grand Trial Olivia
  (160009, 160008, 16, 1, 1, NULL),
  -- Acerola Trial <- Sophocles Trial
  (160010, 160009, 16, 1, 1, NULL),
  -- Grand Trial Nanu <- Acerola Trial
  (160011, 160010, 16, 1, 1, NULL),
  -- Vast Poni Canyon Trial <- Aether Paradise
  (160013, 160023, 16, 1, 1, NULL),
  -- Ultra Necrozma <- Vast Poni Canyon Trial
  (160015, 160013, 16, 1, 1, NULL),
  -- Mina Trial <- Ultra Necrozma
  (160012, 160015, 16, 1, 1, NULL),
  -- Grand Trial Hapu <- Mina Trial
  (160014, 160012, 16, 1, 1, NULL),
  -- Elite Four Molayne <- Grand Trial Hapu
  (160016, 160014, 16, 1, 1, NULL),
  -- Elite Four Olivia <- Elite Four Molayne
  (160017, 160016, 16, 1, 1, NULL),
  -- Elite Four Acerola <- Elite Four Olivia
  (160018, 160017, 16, 1, 1, NULL),
  -- Elite Four Kahili <- Elite Four Acerola
  (160019, 160018, 16, 1, 1, NULL),
  -- Champion Battle Hau <- Elite Four Kahili
  (160020, 160019, 16, 1, 1, NULL),
  -- Hall of Fame <- Champion Battle Hau
  (160021, 160020, 16, 1, 1, NULL),
  -- Team Rainbow Rocket <- Hall of Fame
  (160022, 160021, 16, 1, 1, NULL),
  -- Aether Paradise <- Grand Trial Nanu
  (160023, 160011, 16, 1, 1, NULL),
  -- Iki Town Festival <- Receive Pokedex
  (160033, 160002, 16, 1, 1, NULL),
  -- Mahalo Trail opens after Hall of Fame
  (160024, 160021, 16, 4, 1, NULL),
  -- Mount Lanakila Crater opens after Hall of Fame
  (160025, 160021, 16, 4, 1, NULL),
  -- Ruins of Conflict opens after Hall of Fame
  (160026, 160021, 16, 4, 1, NULL),
  -- Ruins of Life opens after Hall of Fame
  (160027, 160021, 16, 4, 1, NULL),
  -- Ruins of Abundance opens after Hall of Fame
  (160028, 160021, 16, 4, 1, NULL),
  -- Ruins of Hope opens after Hall of Fame
  (160029, 160021, 16, 4, 1, NULL),
  -- Resolution Cave opens after Hall of Fame
  (160030, 160021, 16, 4, 1, NULL),
  -- Poni Grove opens after Hall of Fame
  (160031, 160021, 16, 4, 1, NULL),
  -- Ilima Bonus Trial opens after Hall of Fame
  (160032, 160021, 16, 4, 1, NULL);
