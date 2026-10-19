-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia evolutionary-line convention; PokemonDB and Serebii Pokedex pages for species identity cross-checks.
-- Construction aid: PokeAPI pokemon_species CSV, restricted to National Dex 1-1025, used only to build connected components from explicit evolves_from_species_id edges.
-- Curated rule: breeding-only relationships are not evolution families; only explicit evolution relationships group species.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 8
-- Table: reference.evolution_families
-- Scope: evolution families anchored by generation 8 species
INSERT INTO reference.evolution_families (id, slug, name, sort_order)
VALUES
  -- Grookey Family
  (810, 'grookey-family', 'Grookey Family', 422),
  -- Scorbunny Family
  (813, 'scorbunny-family', 'Scorbunny Family', 423),
  -- Sobble Family
  (816, 'sobble-family', 'Sobble Family', 424),
  -- Skwovet Family
  (819, 'skwovet-family', 'Skwovet Family', 425),
  -- Rookidee Family
  (821, 'rookidee-family', 'Rookidee Family', 426),
  -- Blipbug Family
  (824, 'blipbug-family', 'Blipbug Family', 427),
  -- Nickit Family
  (827, 'nickit-family', 'Nickit Family', 428),
  -- Gossifleur Family
  (829, 'gossifleur-family', 'Gossifleur Family', 429),
  -- Wooloo Family
  (831, 'wooloo-family', 'Wooloo Family', 430),
  -- Chewtle Family
  (833, 'chewtle-family', 'Chewtle Family', 431),
  -- Yamper Family
  (835, 'yamper-family', 'Yamper Family', 432),
  -- Rolycoly Family
  (837, 'rolycoly-family', 'Rolycoly Family', 433),
  -- Applin Family
  (840, 'applin-family', 'Applin Family', 434),
  -- Silicobra Family
  (843, 'silicobra-family', 'Silicobra Family', 435),
  -- Cramorant Family
  (845, 'cramorant-family', 'Cramorant Family', 436),
  -- Arrokuda Family
  (846, 'arrokuda-family', 'Arrokuda Family', 437),
  -- Toxel Family
  (848, 'toxel-family', 'Toxel Family', 438),
  -- Sizzlipede Family
  (850, 'sizzlipede-family', 'Sizzlipede Family', 439),
  -- Clobbopus Family
  (852, 'clobbopus-family', 'Clobbopus Family', 440),
  -- Sinistea Family
  (854, 'sinistea-family', 'Sinistea Family', 441),
  -- Hatenna Family
  (856, 'hatenna-family', 'Hatenna Family', 442),
  -- Impidimp Family
  (859, 'impidimp-family', 'Impidimp Family', 443),
  -- Milcery Family
  (868, 'milcery-family', 'Milcery Family', 444),
  -- Falinks Family
  (870, 'falinks-family', 'Falinks Family', 445),
  -- Pincurchin Family
  (871, 'pincurchin-family', 'Pincurchin Family', 446),
  -- Snom Family
  (872, 'snom-family', 'Snom Family', 447),
  -- Stonjourner Family
  (874, 'stonjourner-family', 'Stonjourner Family', 448),
  -- Eiscue Family
  (875, 'eiscue-family', 'Eiscue Family', 449),
  -- Indeedee Family
  (876, 'indeedee-family', 'Indeedee Family', 450),
  -- Morpeko Family
  (877, 'morpeko-family', 'Morpeko Family', 451),
  -- Cufant Family
  (878, 'cufant-family', 'Cufant Family', 452),
  -- Dracozolt Family
  (880, 'dracozolt-family', 'Dracozolt Family', 453),
  -- Arctozolt Family
  (881, 'arctozolt-family', 'Arctozolt Family', 454),
  -- Dracovish Family
  (882, 'dracovish-family', 'Dracovish Family', 455),
  -- Arctovish Family
  (883, 'arctovish-family', 'Arctovish Family', 456),
  -- Duraludon Family
  (884, 'duraludon-family', 'Duraludon Family', 457),
  -- Dreepy Family
  (885, 'dreepy-family', 'Dreepy Family', 458),
  -- Zacian Family
  (888, 'zacian-family', 'Zacian Family', 459),
  -- Zamazenta Family
  (889, 'zamazenta-family', 'Zamazenta Family', 460),
  -- Eternatus Family
  (890, 'eternatus-family', 'Eternatus Family', 461),
  -- Kubfu Family
  (891, 'kubfu-family', 'Kubfu Family', 462),
  -- Zarude Family
  (893, 'zarude-family', 'Zarude Family', 463),
  -- Regieleki Family
  (894, 'regieleki-family', 'Regieleki Family', 464),
  -- Regidrago Family
  (895, 'regidrago-family', 'Regidrago Family', 465),
  -- Glastrier Family
  (896, 'glastrier-family', 'Glastrier Family', 466),
  -- Spectrier Family
  (897, 'spectrier-family', 'Spectrier Family', 467),
  -- Calyrex Family
  (898, 'calyrex-family', 'Calyrex Family', 468),
  -- Enamorus Family
  (905, 'enamorus-family', 'Enamorus Family', 469);
