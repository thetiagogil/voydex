-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia evolutionary-line convention; PokemonDB and Serebii Pokedex pages for species identity cross-checks.
-- Construction aid: PokeAPI pokemon_species CSV, restricted to National Dex 1-1025, used only to build connected components from explicit evolves_from_species_id edges.
-- Curated rule: breeding-only relationships are not evolution families; only explicit evolution relationships group species.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 3
-- Table: reference.evolution_families
-- Scope: evolution families anchored by generation 3 species
INSERT INTO reference.evolution_families (id, slug, name, sort_order)
VALUES
  -- Treecko Family
  (252, 'treecko-family', 'Treecko Family', 130),
  -- Torchic Family
  (255, 'torchic-family', 'Torchic Family', 131),
  -- Mudkip Family
  (258, 'mudkip-family', 'Mudkip Family', 132),
  -- Poochyena Family
  (261, 'poochyena-family', 'Poochyena Family', 133),
  -- Zigzagoon Family
  (263, 'zigzagoon-family', 'Zigzagoon Family', 134),
  -- Wurmple Family
  (265, 'wurmple-family', 'Wurmple Family', 135),
  -- Lotad Family
  (270, 'lotad-family', 'Lotad Family', 136),
  -- Seedot Family
  (273, 'seedot-family', 'Seedot Family', 137),
  -- Taillow Family
  (276, 'taillow-family', 'Taillow Family', 138),
  -- Wingull Family
  (278, 'wingull-family', 'Wingull Family', 139),
  -- Ralts Family
  (280, 'ralts-family', 'Ralts Family', 140),
  -- Surskit Family
  (283, 'surskit-family', 'Surskit Family', 141),
  -- Shroomish Family
  (285, 'shroomish-family', 'Shroomish Family', 142),
  -- Slakoth Family
  (287, 'slakoth-family', 'Slakoth Family', 143),
  -- Nincada Family
  (290, 'nincada-family', 'Nincada Family', 144),
  -- Whismur Family
  (293, 'whismur-family', 'Whismur Family', 145),
  -- Makuhita Family
  (296, 'makuhita-family', 'Makuhita Family', 146),
  -- Nosepass Family
  (299, 'nosepass-family', 'Nosepass Family', 147),
  -- Skitty Family
  (300, 'skitty-family', 'Skitty Family', 148),
  -- Sableye Family
  (302, 'sableye-family', 'Sableye Family', 149),
  -- Mawile Family
  (303, 'mawile-family', 'Mawile Family', 150),
  -- Aron Family
  (304, 'aron-family', 'Aron Family', 151),
  -- Meditite Family
  (307, 'meditite-family', 'Meditite Family', 152),
  -- Electrike Family
  (309, 'electrike-family', 'Electrike Family', 153),
  -- Plusle Family
  (311, 'plusle-family', 'Plusle Family', 154),
  -- Minun Family
  (312, 'minun-family', 'Minun Family', 155),
  -- Volbeat Family
  (313, 'volbeat-family', 'Volbeat Family', 156),
  -- Illumise Family
  (314, 'illumise-family', 'Illumise Family', 157),
  -- Roselia Family
  (315, 'roselia-family', 'Roselia Family', 158),
  -- Gulpin Family
  (316, 'gulpin-family', 'Gulpin Family', 159),
  -- Carvanha Family
  (318, 'carvanha-family', 'Carvanha Family', 160),
  -- Wailmer Family
  (320, 'wailmer-family', 'Wailmer Family', 161),
  -- Numel Family
  (322, 'numel-family', 'Numel Family', 162),
  -- Torkoal Family
  (324, 'torkoal-family', 'Torkoal Family', 163),
  -- Spoink Family
  (325, 'spoink-family', 'Spoink Family', 164),
  -- Spinda Family
  (327, 'spinda-family', 'Spinda Family', 165),
  -- Trapinch Family
  (328, 'trapinch-family', 'Trapinch Family', 166),
  -- Cacnea Family
  (331, 'cacnea-family', 'Cacnea Family', 167),
  -- Swablu Family
  (333, 'swablu-family', 'Swablu Family', 168),
  -- Zangoose Family
  (335, 'zangoose-family', 'Zangoose Family', 169),
  -- Seviper Family
  (336, 'seviper-family', 'Seviper Family', 170),
  -- Lunatone Family
  (337, 'lunatone-family', 'Lunatone Family', 171),
  -- Solrock Family
  (338, 'solrock-family', 'Solrock Family', 172),
  -- Barboach Family
  (339, 'barboach-family', 'Barboach Family', 173),
  -- Corphish Family
  (341, 'corphish-family', 'Corphish Family', 174),
  -- Baltoy Family
  (343, 'baltoy-family', 'Baltoy Family', 175),
  -- Lileep Family
  (345, 'lileep-family', 'Lileep Family', 176),
  -- Anorith Family
  (347, 'anorith-family', 'Anorith Family', 177),
  -- Feebas Family
  (349, 'feebas-family', 'Feebas Family', 178),
  -- Castform Family
  (351, 'castform-family', 'Castform Family', 179),
  -- Kecleon Family
  (352, 'kecleon-family', 'Kecleon Family', 180),
  -- Shuppet Family
  (353, 'shuppet-family', 'Shuppet Family', 181),
  -- Duskull Family
  (355, 'duskull-family', 'Duskull Family', 182),
  -- Tropius Family
  (357, 'tropius-family', 'Tropius Family', 183),
  -- Chimecho Family
  (358, 'chimecho-family', 'Chimecho Family', 184),
  -- Absol Family
  (359, 'absol-family', 'Absol Family', 185),
  -- Snorunt Family
  (361, 'snorunt-family', 'Snorunt Family', 186),
  -- Spheal Family
  (363, 'spheal-family', 'Spheal Family', 187),
  -- Clamperl Family
  (366, 'clamperl-family', 'Clamperl Family', 188),
  -- Relicanth Family
  (369, 'relicanth-family', 'Relicanth Family', 189),
  -- Luvdisc Family
  (370, 'luvdisc-family', 'Luvdisc Family', 190),
  -- Bagon Family
  (371, 'bagon-family', 'Bagon Family', 191),
  -- Beldum Family
  (374, 'beldum-family', 'Beldum Family', 192),
  -- Regirock Family
  (377, 'regirock-family', 'Regirock Family', 193),
  -- Regice Family
  (378, 'regice-family', 'Regice Family', 194),
  -- Registeel Family
  (379, 'registeel-family', 'Registeel Family', 195),
  -- Latias Family
  (380, 'latias-family', 'Latias Family', 196),
  -- Latios Family
  (381, 'latios-family', 'Latios Family', 197),
  -- Kyogre Family
  (382, 'kyogre-family', 'Kyogre Family', 198),
  -- Groudon Family
  (383, 'groudon-family', 'Groudon Family', 199),
  -- Rayquaza Family
  (384, 'rayquaza-family', 'Rayquaza Family', 200),
  -- Jirachi Family
  (385, 'jirachi-family', 'Jirachi Family', 201),
  -- Deoxys Family
  (386, 'deoxys-family', 'Deoxys Family', 202);
