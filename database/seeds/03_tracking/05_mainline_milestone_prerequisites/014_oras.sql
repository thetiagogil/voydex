-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex curated mainline milestone order, following Bulbapedia's
-- Omega Ruby / Alpha Sapphire walkthrough.
-- Scope: Previous-step and unlock prerequisite links derived from seeded milestone definitions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Omega Ruby / Alpha Sapphire mainline milestone prerequisite links, in Red /
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
  (140002, 140001, 14, 1, 1, NULL),
  -- Stone Badge <- Receive Pokédex
  (140003, 140002, 14, 1, 1, NULL),
  -- Rusturf Tunnel <- Stone Badge
  (140034, 140003, 14, 1, 1, NULL),
  -- Knuckle Badge <- Rusturf Tunnel
  (140004, 140034, 14, 1, 1, NULL),
  -- Oceanic Museum <- Knuckle Badge
  (140035, 140004, 14, 1, 1, NULL),
  -- Dynamo Badge <- Oceanic Museum
  (140005, 140035, 14, 1, 1, NULL),
  -- Meteor Falls <- Dynamo Badge
  (140036, 140005, 14, 1, 1, NULL),
  -- Mt. Chimney <- Meteor Falls
  (140019, 140036, 14, 1, 1, NULL),
  -- Heat Badge <- Mt. Chimney
  (140007, 140019, 14, 1, 1, NULL),
  -- Balance Badge <- Heat Badge
  (140008, 140007, 14, 1, 1, NULL),
  -- Southern Island <- Balance Badge
  (140037, 140008, 14, 1, 1, NULL),
  -- Weather Institute <- Southern Island
  (140038, 140037, 14, 1, 1, NULL),
  -- Feather Badge <- Weather Institute
  (140009, 140038, 14, 1, 1, NULL),
  -- Mt. Pyre <- Feather Badge
  (140039, 140009, 14, 1, 1, NULL),
  -- Team Magma or Aqua Hideout <- Mt. Pyre
  (140040, 140039, 14, 1, 1, NULL),
  -- Mind Badge <- Team Magma or Aqua Hideout
  (140010, 140040, 14, 1, 1, NULL),
  -- Seafloor Cavern <- Mind Badge
  (140020, 140010, 14, 1, 1, NULL),
  -- Cave of Origin <- Seafloor Cavern
  (140033, 140020, 14, 1, 1, NULL),
  -- Rain Badge <- Cave of Origin
  (140011, 140033, 14, 1, 1, NULL),
  -- Pokémon League <- Rain Badge
  (140016, 140011, 14, 1, 1, NULL),
  -- Delta Episode <- Pokémon League
  (140018, 140016, 14, 1, 1, NULL),
  -- Fossil Choice opens after Heat Badge
  (140006, 140007, 14, 4, 1, 'The Go-Goggles you get after the Heat Badge let you into the desert.'),
  -- Sealed Chamber opens after Mind Badge
  (140021, 140010, 14, 4, 1, 'Needs Dive, and a Relicanth and a Wailord.'),
  -- Scorched Slab opens after Cave of Origin
  (140022, 140033, 14, 4, 1, NULL),
  -- Sea Mauville opens after Pokémon League
  (140023, 140016, 14, 4, 1, NULL),
  -- Crescent Isle opens after Pokémon League
  (140024, 140016, 14, 4, 1, NULL),
  -- Storm Clouds opens after Pokémon League
  (140025, 140016, 14, 4, 1, NULL),
  -- Regigigas in Island Cave opens after Pokémon League
  (140026, 140016, 14, 4, 1, NULL),
  -- Trackless Forest opens after Pokémon League
  (140027, 140016, 14, 4, 1, NULL),
  -- Nameless Cavern opens after Pokémon League
  (140028, 140016, 14, 4, 1, NULL),
  -- Dimensional Rift opens after Pokémon League
  (140029, 140016, 14, 4, 1, NULL),
  -- Pathless Plain opens after Pokémon League
  (140030, 140016, 14, 4, 1, NULL),
  -- Fabled Cave opens after Pokémon League
  (140031, 140016, 14, 4, 1, NULL),
  -- Gnarled Den opens after Pokémon League
  (140032, 140016, 14, 4, 1, NULL);
