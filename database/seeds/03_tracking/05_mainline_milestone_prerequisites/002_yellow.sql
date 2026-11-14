-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order, following Bulbapedia's
-- Yellow walkthrough.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Yellow mainline milestone prerequisite links, in Red / Blue's pattern: each
-- Main Story beat suggests the one before it in Story order (the Pokémon
-- League after the Earth Badge), Cerulean Cave (post-game) suggests the
-- Pokémon League, where the team enters the Hall of Fame, and each
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
  -- Receive Pokédex <- Receive Pikachu
  (20002, 20001, 2, 1, 1, NULL),
  -- Boulder Badge <- Receive Pokédex
  (20003, 20002, 2, 1, 1, NULL),
  -- Fossil Choice <- Boulder Badge
  (20004, 20003, 2, 1, 1, NULL),
  -- Cascade Badge <- Fossil Choice
  (20005, 20004, 2, 1, 1, NULL),
  -- Bill's Sea Cottage <- Cascade Badge
  (20027, 20005, 2, 1, 1, NULL),
  -- S.S. Anne <- Bill's Sea Cottage
  (20019, 20027, 2, 1, 1, NULL),
  -- Thunder Badge <- S.S. Anne
  (20006, 20019, 2, 1, 1, NULL),
  -- Rainbow Badge <- Thunder Badge
  (20007, 20006, 2, 1, 1, NULL),
  -- Rocket Hideout <- Rainbow Badge
  (20020, 20007, 2, 1, 1, NULL),
  -- Pokémon Tower <- Rocket Hideout
  (20021, 20020, 2, 1, 1, NULL),
  -- Silph Co. <- Pokémon Tower
  (20022, 20021, 2, 1, 1, NULL),
  -- Marsh Badge <- Silph Co.
  (20009, 20022, 2, 1, 1, NULL),
  -- Soul Badge <- Marsh Badge
  (20008, 20009, 2, 1, 1, NULL),
  -- Safari Zone <- Soul Badge
  (20028, 20008, 2, 1, 1, NULL),
  -- Pokémon Mansion <- Safari Zone
  (20029, 20028, 2, 1, 1, NULL),
  -- Volcano Badge <- Pokémon Mansion
  (20011, 20029, 2, 1, 1, NULL),
  -- Earth Badge <- Volcano Badge
  (20012, 20011, 2, 1, 1, NULL),
  -- Pokémon League <- Earth Badge
  (20017, 20012, 2, 1, 1, NULL),
  -- Cerulean Cave <- Pokémon League
  (20026, 20017, 2, 1, 1, NULL),
  -- Fighting Dojo Choice opens after Rainbow Badge
  (20010, 20007, 2, 4, 1, NULL),
  -- Power Plant opens after Safari Zone (Surf)
  (20023, 20028, 2, 4, 1, NULL),
  -- Seafoam Islands opens after Safari Zone (Surf and Strength)
  (20024, 20028, 2, 4, 1, NULL),
  -- Victory Road opens after Earth Badge
  (20025, 20012, 2, 4, 1, NULL);
