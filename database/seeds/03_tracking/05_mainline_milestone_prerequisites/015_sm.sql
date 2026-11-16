-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order, following Bulbapedia's
-- Sun / Moon walkthrough.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Sun / Moon mainline milestone prerequisite links, in Red / Blue's pattern:
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
  (150002, 150001, 15, 1, 1, NULL),
  -- Iki Town Festival <- Receive Pokédex
  (150027, 150002, 15, 1, 1, NULL),
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
  -- Aether Paradise Visit <- Grand Trial Olivia
  (150028, 150008, 15, 1, 1, NULL),
  -- Sophocles Trial <- Aether Paradise Visit
  (150009, 150028, 15, 1, 1, NULL),
  -- Acerola Trial <- Sophocles Trial
  (150010, 150009, 15, 1, 1, NULL),
  -- Po Town <- Acerola Trial
  (150029, 150010, 15, 1, 1, NULL),
  -- Grand Trial Nanu <- Po Town
  (150011, 150029, 15, 1, 1, NULL),
  -- Aether Paradise <- Grand Trial Nanu
  (150021, 150011, 15, 1, 1, NULL),
  -- Grand Trial Hapu <- Aether Paradise
  (150013, 150021, 15, 1, 1, NULL),
  -- Vast Poni Canyon Trial <- Grand Trial Hapu
  (150012, 150013, 15, 1, 1, NULL),
  -- Ultra Space <- Vast Poni Canyon Trial
  (150022, 150012, 15, 1, 1, NULL),
  -- Pokémon League <- Ultra Space
  (150018, 150022, 15, 1, 1, NULL),
  -- Ultra Beast Missions <- Pokémon League
  (150020, 150018, 15, 1, 1, NULL),
  -- Ruins of Life opens after Pokémon League
  (150023, 150018, 15, 4, 1, NULL),
  -- Ruins of Abundance opens after Pokémon League
  (150024, 150018, 15, 4, 1, NULL),
  -- Ruins of Hope opens after Pokémon League
  (150025, 150018, 15, 4, 1, NULL),
  -- Ten Carat Hill opens after Ultra Beast Missions
  (150026, 150020, 15, 4, 1, NULL);
