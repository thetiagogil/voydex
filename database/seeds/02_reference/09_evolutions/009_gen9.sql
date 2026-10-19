-- ============================================================================
-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia evolution method and Pokémon species pages.
-- Cross-check: Serebii evolution pages and PokemonDB evolution chains.
-- Machine-readable sanity: PokeAPI evolution-chain detail fields.
-- Scope note: official core-series Pokémon evolution edges through Generation IX.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation 9 evolution edge rows grouped by when the edge/form/method
-- entered the source model.
-- Table: reference.pokemon_evolution_edges
-- ============================================================================

INSERT INTO reference.pokemon_evolution_edges (from_species_id, from_form_id, to_species_id, to_form_id, version_group_id, introduced_generation_id, evolution_method_id, minimum_level, item_id, held_item_id, known_move_id, known_type_id, gender, time_of_day, location_label, condition_summary, condition_data, sort_order)
VALUES
  -- Primeape -> Annihilape
  (57, 5700, 979, 97900, NULL, 9, 9, NULL, NULL, NULL, 889, NULL, NULL, NULL, NULL, 'use Rage Fist 20 times', '{"source_trigger":"use-move","used_move":"rage-fist","min_move_count":20}', 521),
  -- Paldean Wooper -> Clodsire
  (194, 19401, 980, 98000, NULL, 9, 1, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 20', '{"source_trigger":"level-up"}', 522),
  -- Girafarig -> Farigiraf
  (203, 20300, 981, 98100, NULL, 9, 5, NULL, NULL, NULL, 888, NULL, NULL, NULL, NULL, 'knows Twin Beam', '{"source_trigger":"level-up","known_move":"twin-beam"}', 523),
  -- Dunsparce -> Dudunsparce
  (206, 20600, 982, 98200, NULL, 9, 5, NULL, NULL, NULL, 887, NULL, NULL, NULL, NULL, 'knows Hyper Drill; common Two-Segment outcome', '{"source_trigger":"level-up","known_move":"hyper-drill","target_form_rule":"common_two_segment","chance_percent":99}', 524),
  -- Dunsparce -> Dudunsparce (Three-Segment)
  (206, 20600, 982, 98201, NULL, 9, 5, NULL, NULL, NULL, 887, NULL, NULL, NULL, NULL, 'knows Hyper Drill; rare Three-Segment outcome', '{"source_trigger":"level-up","known_move":"hyper-drill","target_form_rule":"rare_three_segment","chance_percent":1}', 525),
  -- Bisharp -> Kingambit
  (625, 62500, 983, 98300, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'defeat three Bisharp holding Leader''s Crest', '{"source_trigger":"three-defeated-bisharp"}', 526),
  -- Crabrawler -> Crabominable
  (739, 73900, 740, 74000, NULL, 9, 2, NULL, 89, NULL, NULL, NULL, NULL, NULL, NULL, 'use Ice Stone', '{"source_trigger":"use-item","item":"ice-stone"}', 527),
  -- Applin -> Dipplin
  (840, 84000, 1011, 101100, NULL, 9, 2, NULL, 112, NULL, NULL, NULL, NULL, NULL, NULL, 'use Syrupy Apple', '{"source_trigger":"use-item","item":"syrupy-apple"}', 528),
  -- Duraludon -> Archaludon
  (884, 88400, 1018, 101800, NULL, 9, 2, NULL, 115, NULL, NULL, NULL, NULL, NULL, NULL, 'use Metal Alloy', '{"source_trigger":"use-item","item":"metal-alloy"}', 529),
  -- Hisuian Qwilfish -> Overqwil
  (211, 21101, 904, 90400, NULL, 9, 5, NULL, NULL, NULL, 839, NULL, NULL, NULL, NULL, 'knows Barb Barrage', '{"source_trigger":"level-up","known_move":"barb-barrage"}', 530),
  -- Kubfu -> Urshifu
  (891, 89100, 892, 89200, 23, 9, 2, NULL, 103, NULL, NULL, NULL, NULL, NULL, NULL, 'use Scroll of Darkness', '{"source_trigger":"use-item","item":"scroll-of-darkness"}', 531),
  -- Kubfu -> Urshifu (Rapid Strike)
  (891, 89100, 892, 89201, 23, 9, 2, NULL, 104, NULL, NULL, NULL, NULL, NULL, NULL, 'use Scroll of Waters', '{"source_trigger":"use-item","item":"scroll-of-waters"}', 532),
  -- Sprigatito -> Floragato
  (906, 90600, 907, 90700, NULL, 9, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 16', '{"source_trigger":"level-up"}', 533),
  -- Floragato -> Meowscarada
  (907, 90700, 908, 90800, NULL, 9, 1, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 36', '{"source_trigger":"level-up"}', 534),
  -- Fuecoco -> Crocalor
  (909, 90900, 910, 91000, NULL, 9, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 16', '{"source_trigger":"level-up"}', 535),
  -- Crocalor -> Skeledirge
  (910, 91000, 911, 91100, NULL, 9, 1, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 36', '{"source_trigger":"level-up"}', 536),
  -- Quaxly -> Quaxwell
  (912, 91200, 913, 91300, NULL, 9, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 16', '{"source_trigger":"level-up"}', 537),
  -- Quaxwell -> Quaquaval
  (913, 91300, 914, 91400, NULL, 9, 1, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 36', '{"source_trigger":"level-up"}', 538),
  -- Lechonk -> Oinkologne
  (915, 91500, 916, 91600, NULL, 9, 8, 18, NULL, NULL, NULL, NULL, 'male', NULL, NULL, 'Level 18; male only', '{"source_trigger":"level-up","target_form_rule":"male"}', 539),
  -- Lechonk -> Oinkologne (Female)
  (915, 91500, 916, 91601, NULL, 9, 8, 18, NULL, NULL, NULL, NULL, 'female', NULL, NULL, 'Level 18; female only', '{"source_trigger":"level-up","target_form_rule":"female"}', 540),
  -- Tarountula -> Spidops
  (917, 91700, 918, 91800, NULL, 9, 1, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 15', '{"source_trigger":"level-up"}', 541),
  -- Nymble -> Lokix
  (919, 91900, 920, 92000, NULL, 9, 1, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 24', '{"source_trigger":"level-up"}', 542),
  -- Pawmi -> Pawmo
  (921, 92100, 922, 92200, NULL, 9, 1, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 18', '{"source_trigger":"level-up"}', 543),
  -- Pawmo -> Pawmot
  (922, 92200, 923, 92300, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'walk 1000+ steps using Let''s Go feature', '{"source_trigger":"level-up","min_steps":1000,"feature":"lets-go"}', 544),
  -- Tandemaus -> Maushold
  (924, 92400, 925, 92500, NULL, 9, 9, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 25 in battle; common Family of Four outcome', '{"source_trigger":"family-group-evolution","needs_battle":true,"target_form_rule":"common_family_of_four","chance_percent":99}', 545),
  -- Tandemaus -> Maushold (Family of Three)
  (924, 92400, 925, 92501, NULL, 9, 9, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 25 in battle; rare Family of Three outcome', '{"source_trigger":"family-group-evolution","needs_battle":true,"target_form_rule":"rare_family_of_three","chance_percent":1}', 546),
  -- Fidough -> Dachsbun
  (926, 92600, 927, 92700, NULL, 9, 1, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 26', '{"source_trigger":"level-up"}', 547),
  -- Smoliv -> Dolliv
  (928, 92800, 929, 92900, NULL, 9, 1, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 25', '{"source_trigger":"level-up"}', 548),
  -- Dolliv -> Arboliva
  (929, 92900, 930, 93000, NULL, 9, 1, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 35', '{"source_trigger":"level-up"}', 549),
  -- Nacli -> Naclstack
  (932, 93200, 933, 93300, NULL, 9, 1, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 24', '{"source_trigger":"level-up"}', 550),
  -- Naclstack -> Garganacl
  (933, 93300, 934, 93400, NULL, 9, 1, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 38', '{"source_trigger":"level-up"}', 551),
  -- Charcadet -> Armarouge
  (935, 93500, 936, 93600, NULL, 9, 2, NULL, 109, NULL, NULL, NULL, NULL, NULL, NULL, 'use Auspicious Armor', '{"source_trigger":"use-item","item":"auspicious-armor"}', 552),
  -- Charcadet -> Ceruledge
  (935, 93500, 937, 93700, NULL, 9, 2, NULL, 108, NULL, NULL, NULL, NULL, NULL, NULL, 'use Malicious Armor', '{"source_trigger":"use-item","item":"malicious-armor"}', 553),
  -- Tadbulb -> Bellibolt
  (938, 93800, 939, 93900, NULL, 9, 2, NULL, 65, NULL, NULL, NULL, NULL, NULL, NULL, 'use Thunder Stone', '{"source_trigger":"use-item","item":"thunder-stone"}', 554),
  -- Wattrel -> Kilowattrel
  (940, 94000, 941, 94100, NULL, 9, 1, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 25', '{"source_trigger":"level-up"}', 555),
  -- Maschiff -> Mabosstiff
  (942, 94200, 943, 94300, NULL, 9, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 30', '{"source_trigger":"level-up"}', 556),
  -- Shroodle -> Grafaiai
  (944, 94400, 945, 94500, NULL, 9, 1, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 28', '{"source_trigger":"level-up"}', 557),
  -- Bramblin -> Brambleghast
  (946, 94600, 947, 94700, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'walk 1000+ steps using Let''s Go feature', '{"source_trigger":"level-up","min_steps":1000,"feature":"lets-go"}', 558),
  -- Toedscool -> Toedscruel
  (948, 94800, 949, 94900, NULL, 9, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 30', '{"source_trigger":"level-up"}', 559),
  -- Capsakid -> Scovillain
  (951, 95100, 952, 95200, NULL, 9, 2, NULL, 64, NULL, NULL, NULL, NULL, NULL, NULL, 'use Fire Stone', '{"source_trigger":"use-item","item":"fire-stone"}', 560),
  -- Rellor -> Rabsca
  (953, 95300, 954, 95400, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'walk 1000+ steps using Let''s Go feature', '{"source_trigger":"level-up","min_steps":1000,"feature":"lets-go"}', 561),
  -- Flittle -> Espathra
  (955, 95500, 956, 95600, NULL, 9, 1, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 35', '{"source_trigger":"level-up"}', 562),
  -- Tinkatink -> Tinkatuff
  (957, 95700, 958, 95800, NULL, 9, 1, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 24', '{"source_trigger":"level-up"}', 563),
  -- Tinkatuff -> Tinkaton
  (958, 95800, 959, 95900, NULL, 9, 1, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 38', '{"source_trigger":"level-up"}', 564),
  -- Wiglett -> Wugtrio
  (960, 96000, 961, 96100, NULL, 9, 1, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 26', '{"source_trigger":"level-up"}', 565),
  -- Finizen -> Palafin
  (963, 96300, 964, 96400, NULL, 9, 9, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 38 while in a Union Circle group', '{"source_trigger":"level-up","needs_multiplayer":true,"needs_union_circle":true}', 566),
  -- Varoom -> Revavroom
  (965, 96500, 966, 96600, NULL, 9, 1, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 40', '{"source_trigger":"level-up"}', 567),
  -- Glimmet -> Glimmora
  (969, 96900, 970, 97000, NULL, 9, 1, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 35', '{"source_trigger":"level-up"}', 568),
  -- Greavard -> Houndstone
  (971, 97100, 972, 97200, NULL, 9, 7, 30, NULL, NULL, NULL, NULL, NULL, 'night', NULL, 'Level 30; during night', '{"source_trigger":"level-up"}', 569),
  -- Cetoddle -> Cetitan
  (974, 97400, 975, 97500, NULL, 9, 2, NULL, 89, NULL, NULL, NULL, NULL, NULL, NULL, 'use Ice Stone', '{"source_trigger":"use-item","item":"ice-stone"}', 570),
  -- Frigibax -> Arctibax
  (996, 99600, 997, 99700, NULL, 9, 1, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 35', '{"source_trigger":"level-up"}', 571),
  -- Arctibax -> Baxcalibur
  (997, 99700, 998, 99800, NULL, 9, 1, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 54', '{"source_trigger":"level-up"}', 572),
  -- Gimmighoul -> Gholdengo
  (999, 99900, 1000, 100000, NULL, 9, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'level up with 999 Gimmighoul Coins', '{"source_trigger":"level-up","currency":"gimmighoul-coin","min_count":999}', 573),
  -- Dipplin -> Hydrapple
  (1011, 101100, 1019, 101900, NULL, 9, 5, NULL, NULL, NULL, 913, NULL, NULL, NULL, NULL, 'knows Dragon Cheer', '{"source_trigger":"level-up","known_move":"dragon-cheer"}', 574),
  -- Poltchageist -> Sinistcha
  (1012, 101200, 1013, 101300, NULL, 9, 2, NULL, 113, NULL, NULL, NULL, NULL, NULL, NULL, 'use Unremarkable Teacup', '{"source_trigger":"use-item","item":"unremarkable-teacup"}', 575),
  -- Poltchageist (Artisan) -> Sinistcha (Masterpiece)
  (1012, 101201, 1013, 101301, NULL, 9, 2, NULL, 114, NULL, NULL, NULL, NULL, NULL, NULL, 'use Masterpiece Teacup', '{"source_trigger":"use-item","item":"masterpiece-teacup"}', 576);

-- ============================================================================
