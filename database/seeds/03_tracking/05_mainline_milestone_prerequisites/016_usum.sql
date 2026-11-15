-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order, following Bulbapedia's
-- Ultra Sun / Ultra Moon walkthrough.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Ultra Sun / Ultra Moon mainline milestone prerequisite links, in Red /
-- Blue's pattern: each Main Story beat suggests the one before it in Story
-- order, Post Game carries on from the Pokémon League, and each side-content
-- beat names the beat that opens it (opens-after).
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
  (160002, 160001, 16, 1, 1, NULL),
  -- Iki Town Festival <- Receive Pokédex
  (160033, 160002, 16, 1, 1, NULL),
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
  -- Aether Paradise Visit <- Grand Trial Olivia
  (160034, 160008, 16, 1, 1, NULL),
  -- Sophocles Trial <- Aether Paradise Visit
  (160009, 160034, 16, 1, 1, NULL),
  -- Acerola Trial <- Sophocles Trial
  (160010, 160009, 16, 1, 1, NULL),
  -- Po Town <- Acerola Trial
  (160035, 160010, 16, 1, 1, NULL),
  -- Grand Trial Nanu <- Po Town
  (160011, 160035, 16, 1, 1, NULL),
  -- Aether Paradise <- Grand Trial Nanu
  (160023, 160011, 16, 1, 1, NULL),
  -- Vast Poni Canyon Trial <- Aether Paradise
  (160013, 160023, 16, 1, 1, NULL),
  -- Ultra Necrozma <- Vast Poni Canyon Trial
  (160015, 160013, 16, 1, 1, NULL),
  -- Mina Trial <- Ultra Necrozma
  (160012, 160015, 16, 1, 1, NULL),
  -- Grand Trial Hapu <- Mina Trial
  (160014, 160012, 16, 1, 1, NULL),
  -- Pokémon League <- Grand Trial Hapu
  (160020, 160014, 16, 1, 1, NULL),
  -- Team Rainbow Rocket <- Pokémon League
  (160022, 160020, 16, 1, 1, NULL),
  -- Mahalo Trail opens after Pokémon League
  (160024, 160020, 16, 4, 1, NULL),
  -- Mount Lanakila Crater opens after Pokémon League
  (160025, 160020, 16, 4, 1, NULL),
  -- Ruins of Conflict opens after Pokémon League
  (160026, 160020, 16, 4, 1, NULL),
  -- Ruins of Life opens after Pokémon League
  (160027, 160020, 16, 4, 1, NULL),
  -- Ruins of Abundance opens after Pokémon League
  (160028, 160020, 16, 4, 1, NULL),
  -- Ruins of Hope opens after Pokémon League
  (160029, 160020, 16, 4, 1, NULL),
  -- Resolution Cave opens after Pokémon League
  (160030, 160020, 16, 4, 1, NULL),
  -- Poni Grove opens after Pokémon League
  (160031, 160020, 16, 4, 1, NULL),
  -- Ilima Bonus Trial opens after Pokémon League
  (160032, 160020, 16, 4, 1, NULL);
