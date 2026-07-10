-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia evolutionary-line convention; PokemonDB and Serebii Pokedex pages for species identity cross-checks.
-- Construction aid: PokeAPI pokemon_species CSV, restricted to National Dex 1-1025, used only to build connected components from explicit evolves_from_species_id edges.
-- Curated rule: breeding-only relationships are not evolution families; only explicit evolution relationships group species.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 2
-- Table: reference.evolution_families
-- Scope: evolution families anchored by generation 2 species
INSERT INTO reference.evolution_families (id, slug, name, sort_order)
VALUES
  -- Chikorita Family
  (152, 'chikorita-family', 'Chikorita Family', 79),
  -- Cyndaquil Family
  (155, 'cyndaquil-family', 'Cyndaquil Family', 80),
  -- Totodile Family
  (158, 'totodile-family', 'Totodile Family', 81),
  -- Sentret Family
  (161, 'sentret-family', 'Sentret Family', 82),
  -- Hoothoot Family
  (163, 'hoothoot-family', 'Hoothoot Family', 83),
  -- Ledyba Family
  (165, 'ledyba-family', 'Ledyba Family', 84),
  -- Spinarak Family
  (167, 'spinarak-family', 'Spinarak Family', 85),
  -- Chinchou Family
  (170, 'chinchou-family', 'Chinchou Family', 86),
  -- Togepi Family
  (175, 'togepi-family', 'Togepi Family', 87),
  -- Natu Family
  (177, 'natu-family', 'Natu Family', 88),
  -- Mareep Family
  (179, 'mareep-family', 'Mareep Family', 89),
  -- Marill Family
  (183, 'marill-family', 'Marill Family', 90),
  -- Sudowoodo Family
  (185, 'sudowoodo-family', 'Sudowoodo Family', 91),
  -- Hoppip Family
  (187, 'hoppip-family', 'Hoppip Family', 92),
  -- Aipom Family
  (190, 'aipom-family', 'Aipom Family', 93),
  -- Sunkern Family
  (191, 'sunkern-family', 'Sunkern Family', 94),
  -- Yanma Family
  (193, 'yanma-family', 'Yanma Family', 95),
  -- Wooper Family
  (194, 'wooper-family', 'Wooper Family', 96),
  -- Murkrow Family
  (198, 'murkrow-family', 'Murkrow Family', 97),
  -- Misdreavus Family
  (200, 'misdreavus-family', 'Misdreavus Family', 98),
  -- Unown Family
  (201, 'unown-family', 'Unown Family', 99),
  -- Wobbuffet Family
  (202, 'wobbuffet-family', 'Wobbuffet Family', 100),
  -- Girafarig Family
  (203, 'girafarig-family', 'Girafarig Family', 101),
  -- Pineco Family
  (204, 'pineco-family', 'Pineco Family', 102),
  -- Dunsparce Family
  (206, 'dunsparce-family', 'Dunsparce Family', 103),
  -- Gligar Family
  (207, 'gligar-family', 'Gligar Family', 104),
  -- Snubbull Family
  (209, 'snubbull-family', 'Snubbull Family', 105),
  -- Qwilfish Family
  (211, 'qwilfish-family', 'Qwilfish Family', 106),
  -- Shuckle Family
  (213, 'shuckle-family', 'Shuckle Family', 107),
  -- Heracross Family
  (214, 'heracross-family', 'Heracross Family', 108),
  -- Sneasel Family
  (215, 'sneasel-family', 'Sneasel Family', 109),
  -- Teddiursa Family
  (216, 'teddiursa-family', 'Teddiursa Family', 110),
  -- Slugma Family
  (218, 'slugma-family', 'Slugma Family', 111),
  -- Swinub Family
  (220, 'swinub-family', 'Swinub Family', 112),
  -- Corsola Family
  (222, 'corsola-family', 'Corsola Family', 113),
  -- Remoraid Family
  (223, 'remoraid-family', 'Remoraid Family', 114),
  -- Delibird Family
  (225, 'delibird-family', 'Delibird Family', 115),
  -- Mantine Family
  (226, 'mantine-family', 'Mantine Family', 116),
  -- Skarmory Family
  (227, 'skarmory-family', 'Skarmory Family', 117),
  -- Houndour Family
  (228, 'houndour-family', 'Houndour Family', 118),
  -- Phanpy Family
  (231, 'phanpy-family', 'Phanpy Family', 119),
  -- Stantler Family
  (234, 'stantler-family', 'Stantler Family', 120),
  -- Smeargle Family
  (235, 'smeargle-family', 'Smeargle Family', 121),
  -- Miltank Family
  (241, 'miltank-family', 'Miltank Family', 122),
  -- Raikou Family
  (243, 'raikou-family', 'Raikou Family', 123),
  -- Entei Family
  (244, 'entei-family', 'Entei Family', 124),
  -- Suicune Family
  (245, 'suicune-family', 'Suicune Family', 125),
  -- Larvitar Family
  (246, 'larvitar-family', 'Larvitar Family', 126),
  -- Lugia Family
  (249, 'lugia-family', 'Lugia Family', 127),
  -- Ho-Oh Family
  (250, 'ho-oh-family', 'Ho-Oh Family', 128),
  -- Celebi Family
  (251, 'celebi-family', 'Celebi Family', 129);
