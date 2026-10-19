-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia evolutionary-line convention; PokemonDB and Serebii Pokedex pages for species identity cross-checks.
-- Construction aid: PokeAPI pokemon_species CSV, restricted to National Dex 1-1025, used only to build connected components from explicit evolves_from_species_id edges.
-- Curated rule: breeding-only relationships are not evolution families; only explicit evolution relationships group species.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 9
-- Table: reference.evolution_families
-- Scope: evolution families anchored by generation 9 species
INSERT INTO reference.evolution_families (id, slug, name, sort_order)
VALUES
  -- Sprigatito Family
  (906, 'sprigatito-family', 'Sprigatito Family', 470),
  -- Fuecoco Family
  (909, 'fuecoco-family', 'Fuecoco Family', 471),
  -- Quaxly Family
  (912, 'quaxly-family', 'Quaxly Family', 472),
  -- Lechonk Family
  (915, 'lechonk-family', 'Lechonk Family', 473),
  -- Tarountula Family
  (917, 'tarountula-family', 'Tarountula Family', 474),
  -- Nymble Family
  (919, 'nymble-family', 'Nymble Family', 475),
  -- Pawmi Family
  (921, 'pawmi-family', 'Pawmi Family', 476),
  -- Tandemaus Family
  (924, 'tandemaus-family', 'Tandemaus Family', 477),
  -- Fidough Family
  (926, 'fidough-family', 'Fidough Family', 478),
  -- Smoliv Family
  (928, 'smoliv-family', 'Smoliv Family', 479),
  -- Squawkabilly Family
  (931, 'squawkabilly-family', 'Squawkabilly Family', 480),
  -- Nacli Family
  (932, 'nacli-family', 'Nacli Family', 481),
  -- Charcadet Family
  (935, 'charcadet-family', 'Charcadet Family', 482),
  -- Tadbulb Family
  (938, 'tadbulb-family', 'Tadbulb Family', 483),
  -- Wattrel Family
  (940, 'wattrel-family', 'Wattrel Family', 484),
  -- Maschiff Family
  (942, 'maschiff-family', 'Maschiff Family', 485),
  -- Shroodle Family
  (944, 'shroodle-family', 'Shroodle Family', 486),
  -- Bramblin Family
  (946, 'bramblin-family', 'Bramblin Family', 487),
  -- Toedscool Family
  (948, 'toedscool-family', 'Toedscool Family', 488),
  -- Klawf Family
  (950, 'klawf-family', 'Klawf Family', 489),
  -- Capsakid Family
  (951, 'capsakid-family', 'Capsakid Family', 490),
  -- Rellor Family
  (953, 'rellor-family', 'Rellor Family', 491),
  -- Flittle Family
  (955, 'flittle-family', 'Flittle Family', 492),
  -- Tinkatink Family
  (957, 'tinkatink-family', 'Tinkatink Family', 493),
  -- Wiglett Family
  (960, 'wiglett-family', 'Wiglett Family', 494),
  -- Bombirdier Family
  (962, 'bombirdier-family', 'Bombirdier Family', 495),
  -- Finizen Family
  (963, 'finizen-family', 'Finizen Family', 496),
  -- Varoom Family
  (965, 'varoom-family', 'Varoom Family', 497),
  -- Cyclizar Family
  (967, 'cyclizar-family', 'Cyclizar Family', 498),
  -- Orthworm Family
  (968, 'orthworm-family', 'Orthworm Family', 499),
  -- Glimmet Family
  (969, 'glimmet-family', 'Glimmet Family', 500),
  -- Greavard Family
  (971, 'greavard-family', 'Greavard Family', 501),
  -- Flamigo Family
  (973, 'flamigo-family', 'Flamigo Family', 502),
  -- Cetoddle Family
  (974, 'cetoddle-family', 'Cetoddle Family', 503),
  -- Veluza Family
  (976, 'veluza-family', 'Veluza Family', 504),
  -- Dondozo Family
  (977, 'dondozo-family', 'Dondozo Family', 505),
  -- Tatsugiri Family
  (978, 'tatsugiri-family', 'Tatsugiri Family', 506),
  -- Great Tusk Family
  (984, 'great-tusk-family', 'Great Tusk Family', 507),
  -- Scream Tail Family
  (985, 'scream-tail-family', 'Scream Tail Family', 508),
  -- Brute Bonnet Family
  (986, 'brute-bonnet-family', 'Brute Bonnet Family', 509),
  -- Flutter Mane Family
  (987, 'flutter-mane-family', 'Flutter Mane Family', 510),
  -- Slither Wing Family
  (988, 'slither-wing-family', 'Slither Wing Family', 511),
  -- Sandy Shocks Family
  (989, 'sandy-shocks-family', 'Sandy Shocks Family', 512),
  -- Iron Treads Family
  (990, 'iron-treads-family', 'Iron Treads Family', 513),
  -- Iron Bundle Family
  (991, 'iron-bundle-family', 'Iron Bundle Family', 514),
  -- Iron Hands Family
  (992, 'iron-hands-family', 'Iron Hands Family', 515),
  -- Iron Jugulis Family
  (993, 'iron-jugulis-family', 'Iron Jugulis Family', 516),
  -- Iron Moth Family
  (994, 'iron-moth-family', 'Iron Moth Family', 517),
  -- Iron Thorns Family
  (995, 'iron-thorns-family', 'Iron Thorns Family', 518),
  -- Frigibax Family
  (996, 'frigibax-family', 'Frigibax Family', 519),
  -- Gimmighoul Family
  (999, 'gimmighoul-family', 'Gimmighoul Family', 520),
  -- Wo-Chien Family
  (1001, 'wo-chien-family', 'Wo-Chien Family', 521),
  -- Chien-Pao Family
  (1002, 'chien-pao-family', 'Chien-Pao Family', 522),
  -- Ting-Lu Family
  (1003, 'ting-lu-family', 'Ting-Lu Family', 523),
  -- Chi-Yu Family
  (1004, 'chi-yu-family', 'Chi-Yu Family', 524),
  -- Roaring Moon Family
  (1005, 'roaring-moon-family', 'Roaring Moon Family', 525),
  -- Iron Valiant Family
  (1006, 'iron-valiant-family', 'Iron Valiant Family', 526),
  -- Koraidon Family
  (1007, 'koraidon-family', 'Koraidon Family', 527),
  -- Miraidon Family
  (1008, 'miraidon-family', 'Miraidon Family', 528),
  -- Walking Wake Family
  (1009, 'walking-wake-family', 'Walking Wake Family', 529),
  -- Iron Leaves Family
  (1010, 'iron-leaves-family', 'Iron Leaves Family', 530),
  -- Poltchageist Family
  (1012, 'poltchageist-family', 'Poltchageist Family', 531),
  -- Okidogi Family
  (1014, 'okidogi-family', 'Okidogi Family', 532),
  -- Munkidori Family
  (1015, 'munkidori-family', 'Munkidori Family', 533),
  -- Fezandipiti Family
  (1016, 'fezandipiti-family', 'Fezandipiti Family', 534),
  -- Ogerpon Family
  (1017, 'ogerpon-family', 'Ogerpon Family', 535),
  -- Gouging Fire Family
  (1020, 'gouging-fire-family', 'Gouging Fire Family', 536),
  -- Raging Bolt Family
  (1021, 'raging-bolt-family', 'Raging Bolt Family', 537),
  -- Iron Boulder Family
  (1022, 'iron-boulder-family', 'Iron Boulder Family', 538),
  -- Iron Crown Family
  (1023, 'iron-crown-family', 'Iron Crown Family', 539),
  -- Terapagos Family
  (1024, 'terapagos-family', 'Terapagos Family', 540),
  -- Pecharunt Family
  (1025, 'pecharunt-family', 'Pecharunt Family', 541);
