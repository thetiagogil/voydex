-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia evolutionary-line convention; PokemonDB and Serebii Pokedex pages for species identity cross-checks.
-- Construction aid: PokeAPI pokemon_species CSV, restricted to National Dex 1-1025, used only to build connected components from explicit evolves_from_species_id edges.
-- Curated rule: breeding-only relationships are not evolution families; only explicit evolution relationships group species.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 7
-- Table: reference.evolution_families
-- Scope: evolution families anchored by generation 7 species
INSERT INTO reference.evolution_families (id, slug, name, sort_order)
VALUES
  -- Rowlet Family
  (722, 'rowlet-family', 'Rowlet Family', 367),
  -- Litten Family
  (725, 'litten-family', 'Litten Family', 368),
  -- Popplio Family
  (728, 'popplio-family', 'Popplio Family', 369),
  -- Pikipek Family
  (731, 'pikipek-family', 'Pikipek Family', 370),
  -- Yungoos Family
  (734, 'yungoos-family', 'Yungoos Family', 371),
  -- Grubbin Family
  (736, 'grubbin-family', 'Grubbin Family', 372),
  -- Crabrawler Family
  (739, 'crabrawler-family', 'Crabrawler Family', 373),
  -- Oricorio Family
  (741, 'oricorio-family', 'Oricorio Family', 374),
  -- Cutiefly Family
  (742, 'cutiefly-family', 'Cutiefly Family', 375),
  -- Rockruff Family
  (744, 'rockruff-family', 'Rockruff Family', 376),
  -- Wishiwashi Family
  (746, 'wishiwashi-family', 'Wishiwashi Family', 377),
  -- Mareanie Family
  (747, 'mareanie-family', 'Mareanie Family', 378),
  -- Mudbray Family
  (749, 'mudbray-family', 'Mudbray Family', 379),
  -- Dewpider Family
  (751, 'dewpider-family', 'Dewpider Family', 380),
  -- Fomantis Family
  (753, 'fomantis-family', 'Fomantis Family', 381),
  -- Morelull Family
  (755, 'morelull-family', 'Morelull Family', 382),
  -- Salandit Family
  (757, 'salandit-family', 'Salandit Family', 383),
  -- Stufful Family
  (759, 'stufful-family', 'Stufful Family', 384),
  -- Bounsweet Family
  (761, 'bounsweet-family', 'Bounsweet Family', 385),
  -- Comfey Family
  (764, 'comfey-family', 'Comfey Family', 386),
  -- Oranguru Family
  (765, 'oranguru-family', 'Oranguru Family', 387),
  -- Passimian Family
  (766, 'passimian-family', 'Passimian Family', 388),
  -- Wimpod Family
  (767, 'wimpod-family', 'Wimpod Family', 389),
  -- Sandygast Family
  (769, 'sandygast-family', 'Sandygast Family', 390),
  -- Pyukumuku Family
  (771, 'pyukumuku-family', 'Pyukumuku Family', 391),
  -- Type: Null Family
  (772, 'type-null-family', 'Type: Null Family', 392),
  -- Minior Family
  (774, 'minior-family', 'Minior Family', 393),
  -- Komala Family
  (775, 'komala-family', 'Komala Family', 394),
  -- Turtonator Family
  (776, 'turtonator-family', 'Turtonator Family', 395),
  -- Togedemaru Family
  (777, 'togedemaru-family', 'Togedemaru Family', 396),
  -- Mimikyu Family
  (778, 'mimikyu-family', 'Mimikyu Family', 397),
  -- Bruxish Family
  (779, 'bruxish-family', 'Bruxish Family', 398),
  -- Drampa Family
  (780, 'drampa-family', 'Drampa Family', 399),
  -- Dhelmise Family
  (781, 'dhelmise-family', 'Dhelmise Family', 400),
  -- Jangmo-o Family
  (782, 'jangmo-o-family', 'Jangmo-o Family', 401),
  -- Tapu Koko Family
  (785, 'tapu-koko-family', 'Tapu Koko Family', 402),
  -- Tapu Lele Family
  (786, 'tapu-lele-family', 'Tapu Lele Family', 403),
  -- Tapu Bulu Family
  (787, 'tapu-bulu-family', 'Tapu Bulu Family', 404),
  -- Tapu Fini Family
  (788, 'tapu-fini-family', 'Tapu Fini Family', 405),
  -- Cosmog Family
  (789, 'cosmog-family', 'Cosmog Family', 406),
  -- Nihilego Family
  (793, 'nihilego-family', 'Nihilego Family', 407),
  -- Buzzwole Family
  (794, 'buzzwole-family', 'Buzzwole Family', 408),
  -- Pheromosa Family
  (795, 'pheromosa-family', 'Pheromosa Family', 409),
  -- Xurkitree Family
  (796, 'xurkitree-family', 'Xurkitree Family', 410),
  -- Celesteela Family
  (797, 'celesteela-family', 'Celesteela Family', 411),
  -- Kartana Family
  (798, 'kartana-family', 'Kartana Family', 412),
  -- Guzzlord Family
  (799, 'guzzlord-family', 'Guzzlord Family', 413),
  -- Necrozma Family
  (800, 'necrozma-family', 'Necrozma Family', 414),
  -- Magearna Family
  (801, 'magearna-family', 'Magearna Family', 415),
  -- Marshadow Family
  (802, 'marshadow-family', 'Marshadow Family', 416),
  -- Poipole Family
  (803, 'poipole-family', 'Poipole Family', 417),
  -- Stakataka Family
  (805, 'stakataka-family', 'Stakataka Family', 418),
  -- Blacephalon Family
  (806, 'blacephalon-family', 'Blacephalon Family', 419),
  -- Zeraora Family
  (807, 'zeraora-family', 'Zeraora Family', 420),
  -- Meltan Family
  (808, 'meltan-family', 'Meltan Family', 421);
