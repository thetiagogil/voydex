-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Sun / Moon mainline milestone prerequisite links.
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
  (150002, 150001, 15, 1, 1, NULL),
  -- Ilima Trial <- Iki Town Festival
  (150003, 150027, 15, 1, 1, NULL),
  -- Grand Trial Hala <- Ilima Trial
  (150004, 150003, 15, 1, 1, NULL),
  -- Lana Trial <- Grand Trial Hala
  (150005, 150004, 15, 1, 1, NULL),
  -- Kiawe Trial <- Lana Trial
  (150006, 150005, 15, 1, 1, NULL),
  -- Mallow Trial <- Kiawe Trial
  (150007, 150006, 15, 1, 1, NULL),
  -- Grand Trial Olivia <- Mallow Trial
  (150008, 150007, 15, 1, 1, NULL),
  -- Sophocles Trial <- Grand Trial Olivia
  (150009, 150008, 15, 1, 1, NULL),
  -- Acerola Trial <- Sophocles Trial
  (150010, 150009, 15, 1, 1, NULL),
  -- Grand Trial Nanu <- Acerola Trial
  (150011, 150010, 15, 1, 1, NULL),
  -- Vast Poni Canyon Trial <- Aether Paradise
  (150012, 150021, 15, 1, 1, NULL),
  -- Grand Trial Hapu <- Ultra Space
  (150013, 150022, 15, 1, 1, NULL),
  -- Elite Four Hala <- Grand Trial Hapu
  (150014, 150013, 15, 1, 1, NULL),
  -- Elite Four Olivia <- Elite Four Hala
  (150015, 150014, 15, 1, 1, NULL),
  -- Elite Four Acerola <- Elite Four Olivia
  (150016, 150015, 15, 1, 1, NULL),
  -- Elite Four Kahili <- Elite Four Acerola
  (150017, 150016, 15, 1, 1, NULL),
  -- Professor Kukui <- Elite Four Kahili
  (150018, 150017, 15, 1, 1, NULL),
  -- Hall of Fame <- Professor Kukui
  (150019, 150018, 15, 1, 1, NULL),
  -- Ultra Beast Missions <- Hall of Fame
  (150020, 150019, 15, 1, 1, NULL),
  -- Aether Paradise <- Grand Trial Nanu
  (150021, 150011, 15, 1, 1, NULL),
  -- Ultra Space <- Vast Poni Canyon Trial
  (150022, 150012, 15, 1, 1, NULL),
  -- Iki Town Festival <- Receive Pokedex
  (150027, 150002, 15, 1, 1, NULL),
  -- Ruins of Life opens after Hall of Fame
  (150023, 150019, 15, 4, 1, NULL),
  -- Ruins of Abundance opens after Hall of Fame
  (150024, 150019, 15, 4, 1, NULL),
  -- Ruins of Hope opens after Hall of Fame
  (150025, 150019, 15, 4, 1, NULL),
  -- Ten Carat Hill opens after Hall of Fame
  (150026, 150019, 15, 4, 1, NULL);
