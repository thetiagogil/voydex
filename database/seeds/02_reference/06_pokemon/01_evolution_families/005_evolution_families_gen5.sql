-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia evolutionary-line convention; PokemonDB and Serebii Pokedex pages for species identity cross-checks.
-- Construction aid: PokeAPI pokemon_species CSV, restricted to National Dex 1-1025, used only to build connected components from explicit evolves_from_species_id edges.
-- Curated rule: breeding-only relationships are not evolution families; only explicit evolution relationships group species.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 5
-- Table: reference.evolution_families
-- Scope: evolution families anchored by generation 5 species
INSERT INTO reference.evolution_families (id, slug, name, sort_order)
VALUES
  -- Victini Family
  (494, 'victini-family', 'Victini Family', 248),
  -- Snivy Family
  (495, 'snivy-family', 'Snivy Family', 249),
  -- Tepig Family
  (498, 'tepig-family', 'Tepig Family', 250),
  -- Oshawott Family
  (501, 'oshawott-family', 'Oshawott Family', 251),
  -- Patrat Family
  (504, 'patrat-family', 'Patrat Family', 252),
  -- Lillipup Family
  (506, 'lillipup-family', 'Lillipup Family', 253),
  -- Purrloin Family
  (509, 'purrloin-family', 'Purrloin Family', 254),
  -- Pansage Family
  (511, 'pansage-family', 'Pansage Family', 255),
  -- Pansear Family
  (513, 'pansear-family', 'Pansear Family', 256),
  -- Panpour Family
  (515, 'panpour-family', 'Panpour Family', 257),
  -- Munna Family
  (517, 'munna-family', 'Munna Family', 258),
  -- Pidove Family
  (519, 'pidove-family', 'Pidove Family', 259),
  -- Blitzle Family
  (522, 'blitzle-family', 'Blitzle Family', 260),
  -- Roggenrola Family
  (524, 'roggenrola-family', 'Roggenrola Family', 261),
  -- Woobat Family
  (527, 'woobat-family', 'Woobat Family', 262),
  -- Drilbur Family
  (529, 'drilbur-family', 'Drilbur Family', 263),
  -- Audino Family
  (531, 'audino-family', 'Audino Family', 264),
  -- Timburr Family
  (532, 'timburr-family', 'Timburr Family', 265),
  -- Tympole Family
  (535, 'tympole-family', 'Tympole Family', 266),
  -- Throh Family
  (538, 'throh-family', 'Throh Family', 267),
  -- Sawk Family
  (539, 'sawk-family', 'Sawk Family', 268),
  -- Sewaddle Family
  (540, 'sewaddle-family', 'Sewaddle Family', 269),
  -- Venipede Family
  (543, 'venipede-family', 'Venipede Family', 270),
  -- Cottonee Family
  (546, 'cottonee-family', 'Cottonee Family', 271),
  -- Petilil Family
  (548, 'petilil-family', 'Petilil Family', 272),
  -- Basculin Family
  (550, 'basculin-family', 'Basculin Family', 273),
  -- Sandile Family
  (551, 'sandile-family', 'Sandile Family', 274),
  -- Darumaka Family
  (554, 'darumaka-family', 'Darumaka Family', 275),
  -- Maractus Family
  (556, 'maractus-family', 'Maractus Family', 276),
  -- Dwebble Family
  (557, 'dwebble-family', 'Dwebble Family', 277),
  -- Scraggy Family
  (559, 'scraggy-family', 'Scraggy Family', 278),
  -- Sigilyph Family
  (561, 'sigilyph-family', 'Sigilyph Family', 279),
  -- Yamask Family
  (562, 'yamask-family', 'Yamask Family', 280),
  -- Tirtouga Family
  (564, 'tirtouga-family', 'Tirtouga Family', 281),
  -- Archen Family
  (566, 'archen-family', 'Archen Family', 282),
  -- Trubbish Family
  (568, 'trubbish-family', 'Trubbish Family', 283),
  -- Zorua Family
  (570, 'zorua-family', 'Zorua Family', 284),
  -- Minccino Family
  (572, 'minccino-family', 'Minccino Family', 285),
  -- Gothita Family
  (574, 'gothita-family', 'Gothita Family', 286),
  -- Solosis Family
  (577, 'solosis-family', 'Solosis Family', 287),
  -- Ducklett Family
  (580, 'ducklett-family', 'Ducklett Family', 288),
  -- Vanillite Family
  (582, 'vanillite-family', 'Vanillite Family', 289),
  -- Deerling Family
  (585, 'deerling-family', 'Deerling Family', 290),
  -- Emolga Family
  (587, 'emolga-family', 'Emolga Family', 291),
  -- Karrablast Family
  (588, 'karrablast-family', 'Karrablast Family', 292),
  -- Foongus Family
  (590, 'foongus-family', 'Foongus Family', 293),
  -- Frillish Family
  (592, 'frillish-family', 'Frillish Family', 294),
  -- Alomomola Family
  (594, 'alomomola-family', 'Alomomola Family', 295),
  -- Joltik Family
  (595, 'joltik-family', 'Joltik Family', 296),
  -- Ferroseed Family
  (597, 'ferroseed-family', 'Ferroseed Family', 297),
  -- Klink Family
  (599, 'klink-family', 'Klink Family', 298),
  -- Tynamo Family
  (602, 'tynamo-family', 'Tynamo Family', 299),
  -- Elgyem Family
  (605, 'elgyem-family', 'Elgyem Family', 300),
  -- Litwick Family
  (607, 'litwick-family', 'Litwick Family', 301),
  -- Axew Family
  (610, 'axew-family', 'Axew Family', 302),
  -- Cubchoo Family
  (613, 'cubchoo-family', 'Cubchoo Family', 303),
  -- Cryogonal Family
  (615, 'cryogonal-family', 'Cryogonal Family', 304),
  -- Shelmet Family
  (616, 'shelmet-family', 'Shelmet Family', 305),
  -- Stunfisk Family
  (618, 'stunfisk-family', 'Stunfisk Family', 306),
  -- Mienfoo Family
  (619, 'mienfoo-family', 'Mienfoo Family', 307),
  -- Druddigon Family
  (621, 'druddigon-family', 'Druddigon Family', 308),
  -- Golett Family
  (622, 'golett-family', 'Golett Family', 309),
  -- Pawniard Family
  (624, 'pawniard-family', 'Pawniard Family', 310),
  -- Bouffalant Family
  (626, 'bouffalant-family', 'Bouffalant Family', 311),
  -- Rufflet Family
  (627, 'rufflet-family', 'Rufflet Family', 312),
  -- Vullaby Family
  (629, 'vullaby-family', 'Vullaby Family', 313),
  -- Heatmor Family
  (631, 'heatmor-family', 'Heatmor Family', 314),
  -- Durant Family
  (632, 'durant-family', 'Durant Family', 315),
  -- Deino Family
  (633, 'deino-family', 'Deino Family', 316),
  -- Larvesta Family
  (636, 'larvesta-family', 'Larvesta Family', 317),
  -- Cobalion Family
  (638, 'cobalion-family', 'Cobalion Family', 318),
  -- Terrakion Family
  (639, 'terrakion-family', 'Terrakion Family', 319),
  -- Virizion Family
  (640, 'virizion-family', 'Virizion Family', 320),
  -- Tornadus Family
  (641, 'tornadus-family', 'Tornadus Family', 321),
  -- Thundurus Family
  (642, 'thundurus-family', 'Thundurus Family', 322),
  -- Reshiram Family
  (643, 'reshiram-family', 'Reshiram Family', 323),
  -- Zekrom Family
  (644, 'zekrom-family', 'Zekrom Family', 324),
  -- Landorus Family
  (645, 'landorus-family', 'Landorus Family', 325),
  -- Kyurem Family
  (646, 'kyurem-family', 'Kyurem Family', 326),
  -- Keldeo Family
  (647, 'keldeo-family', 'Keldeo Family', 327),
  -- Meloetta Family
  (648, 'meloetta-family', 'Meloetta Family', 328),
  -- Genesect Family
  (649, 'genesect-family', 'Genesect Family', 329);
