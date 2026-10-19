-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokemonDB National Pokedex, Bulbapedia species pages, and Serebii Pokedex pages.
-- Migration source: legacy Voydex default-form seeds, normalized to clean schema columns and ASCII code-facing names.
-- Scope note: default forms only; regional, alternate, held-item, cosmetic, and battle forms are seeded in later reviewed batches.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 9
-- Table: reference.pokemon_forms
-- Scope: default forms for National Dex #0906-1025
INSERT INTO reference.pokemon_forms (id, species_id, slug, name, introduced_generation_id, is_default, form_order, height_decimeters, weight_hectograms)
VALUES
  -- Sprigatito
  (90600, 906, 'sprigatito', 'Sprigatito', 9, TRUE, 1, NULL, NULL),
  -- Floragato
  (90700, 907, 'floragato', 'Floragato', 9, TRUE, 1, NULL, NULL),
  -- Meowscarada
  (90800, 908, 'meowscarada', 'Meowscarada', 9, TRUE, 1, NULL, NULL),
  -- Fuecoco
  (90900, 909, 'fuecoco', 'Fuecoco', 9, TRUE, 1, NULL, NULL),
  -- Crocalor
  (91000, 910, 'crocalor', 'Crocalor', 9, TRUE, 1, NULL, NULL),
  -- Skeledirge
  (91100, 911, 'skeledirge', 'Skeledirge', 9, TRUE, 1, NULL, NULL),
  -- Quaxly
  (91200, 912, 'quaxly', 'Quaxly', 9, TRUE, 1, NULL, NULL),
  -- Quaxwell
  (91300, 913, 'quaxwell', 'Quaxwell', 9, TRUE, 1, NULL, NULL),
  -- Quaquaval
  (91400, 914, 'quaquaval', 'Quaquaval', 9, TRUE, 1, NULL, NULL),
  -- Lechonk
  (91500, 915, 'lechonk', 'Lechonk', 9, TRUE, 1, NULL, NULL),
  -- Oinkologne
  (91600, 916, 'oinkologne', 'Oinkologne', 9, TRUE, 1, NULL, NULL),
  -- Tarountula
  (91700, 917, 'tarountula', 'Tarountula', 9, TRUE, 1, NULL, NULL),
  -- Spidops
  (91800, 918, 'spidops', 'Spidops', 9, TRUE, 1, NULL, NULL),
  -- Nymble
  (91900, 919, 'nymble', 'Nymble', 9, TRUE, 1, NULL, NULL),
  -- Lokix
  (92000, 920, 'lokix', 'Lokix', 9, TRUE, 1, NULL, NULL),
  -- Pawmi
  (92100, 921, 'pawmi', 'Pawmi', 9, TRUE, 1, NULL, NULL),
  -- Pawmo
  (92200, 922, 'pawmo', 'Pawmo', 9, TRUE, 1, NULL, NULL),
  -- Pawmot
  (92300, 923, 'pawmot', 'Pawmot', 9, TRUE, 1, NULL, NULL),
  -- Tandemaus
  (92400, 924, 'tandemaus', 'Tandemaus', 9, TRUE, 1, NULL, NULL),
  -- Maushold
  (92500, 925, 'maushold', 'Maushold', 9, TRUE, 1, NULL, NULL),
  -- Fidough
  (92600, 926, 'fidough', 'Fidough', 9, TRUE, 1, NULL, NULL),
  -- Dachsbun
  (92700, 927, 'dachsbun', 'Dachsbun', 9, TRUE, 1, NULL, NULL),
  -- Smoliv
  (92800, 928, 'smoliv', 'Smoliv', 9, TRUE, 1, NULL, NULL),
  -- Dolliv
  (92900, 929, 'dolliv', 'Dolliv', 9, TRUE, 1, NULL, NULL),
  -- Arboliva
  (93000, 930, 'arboliva', 'Arboliva', 9, TRUE, 1, NULL, NULL),
  -- Squawkabilly
  (93100, 931, 'squawkabilly', 'Squawkabilly', 9, TRUE, 1, NULL, NULL),
  -- Nacli
  (93200, 932, 'nacli', 'Nacli', 9, TRUE, 1, NULL, NULL),
  -- Naclstack
  (93300, 933, 'naclstack', 'Naclstack', 9, TRUE, 1, NULL, NULL),
  -- Garganacl
  (93400, 934, 'garganacl', 'Garganacl', 9, TRUE, 1, NULL, NULL),
  -- Charcadet
  (93500, 935, 'charcadet', 'Charcadet', 9, TRUE, 1, NULL, NULL),
  -- Armarouge
  (93600, 936, 'armarouge', 'Armarouge', 9, TRUE, 1, NULL, NULL),
  -- Ceruledge
  (93700, 937, 'ceruledge', 'Ceruledge', 9, TRUE, 1, NULL, NULL),
  -- Tadbulb
  (93800, 938, 'tadbulb', 'Tadbulb', 9, TRUE, 1, NULL, NULL),
  -- Bellibolt
  (93900, 939, 'bellibolt', 'Bellibolt', 9, TRUE, 1, NULL, NULL),
  -- Wattrel
  (94000, 940, 'wattrel', 'Wattrel', 9, TRUE, 1, NULL, NULL),
  -- Kilowattrel
  (94100, 941, 'kilowattrel', 'Kilowattrel', 9, TRUE, 1, NULL, NULL),
  -- Maschiff
  (94200, 942, 'maschiff', 'Maschiff', 9, TRUE, 1, NULL, NULL),
  -- Mabosstiff
  (94300, 943, 'mabosstiff', 'Mabosstiff', 9, TRUE, 1, NULL, NULL),
  -- Shroodle
  (94400, 944, 'shroodle', 'Shroodle', 9, TRUE, 1, NULL, NULL),
  -- Grafaiai
  (94500, 945, 'grafaiai', 'Grafaiai', 9, TRUE, 1, NULL, NULL),
  -- Bramblin
  (94600, 946, 'bramblin', 'Bramblin', 9, TRUE, 1, NULL, NULL),
  -- Brambleghast
  (94700, 947, 'brambleghast', 'Brambleghast', 9, TRUE, 1, NULL, NULL),
  -- Toedscool
  (94800, 948, 'toedscool', 'Toedscool', 9, TRUE, 1, NULL, NULL),
  -- Toedscruel
  (94900, 949, 'toedscruel', 'Toedscruel', 9, TRUE, 1, NULL, NULL),
  -- Klawf
  (95000, 950, 'klawf', 'Klawf', 9, TRUE, 1, NULL, NULL),
  -- Capsakid
  (95100, 951, 'capsakid', 'Capsakid', 9, TRUE, 1, NULL, NULL),
  -- Scovillain
  (95200, 952, 'scovillain', 'Scovillain', 9, TRUE, 1, NULL, NULL),
  -- Rellor
  (95300, 953, 'rellor', 'Rellor', 9, TRUE, 1, NULL, NULL),
  -- Rabsca
  (95400, 954, 'rabsca', 'Rabsca', 9, TRUE, 1, NULL, NULL),
  -- Flittle
  (95500, 955, 'flittle', 'Flittle', 9, TRUE, 1, NULL, NULL),
  -- Espathra
  (95600, 956, 'espathra', 'Espathra', 9, TRUE, 1, NULL, NULL),
  -- Tinkatink
  (95700, 957, 'tinkatink', 'Tinkatink', 9, TRUE, 1, NULL, NULL),
  -- Tinkatuff
  (95800, 958, 'tinkatuff', 'Tinkatuff', 9, TRUE, 1, NULL, NULL),
  -- Tinkaton
  (95900, 959, 'tinkaton', 'Tinkaton', 9, TRUE, 1, NULL, NULL),
  -- Wiglett
  (96000, 960, 'wiglett', 'Wiglett', 9, TRUE, 1, NULL, NULL),
  -- Wugtrio
  (96100, 961, 'wugtrio', 'Wugtrio', 9, TRUE, 1, NULL, NULL),
  -- Bombirdier
  (96200, 962, 'bombirdier', 'Bombirdier', 9, TRUE, 1, NULL, NULL),
  -- Finizen
  (96300, 963, 'finizen', 'Finizen', 9, TRUE, 1, NULL, NULL),
  -- Palafin
  (96400, 964, 'palafin', 'Palafin', 9, TRUE, 1, NULL, NULL),
  -- Varoom
  (96500, 965, 'varoom', 'Varoom', 9, TRUE, 1, NULL, NULL),
  -- Revavroom
  (96600, 966, 'revavroom', 'Revavroom', 9, TRUE, 1, NULL, NULL),
  -- Cyclizar
  (96700, 967, 'cyclizar', 'Cyclizar', 9, TRUE, 1, NULL, NULL),
  -- Orthworm
  (96800, 968, 'orthworm', 'Orthworm', 9, TRUE, 1, NULL, NULL),
  -- Glimmet
  (96900, 969, 'glimmet', 'Glimmet', 9, TRUE, 1, NULL, NULL),
  -- Glimmora
  (97000, 970, 'glimmora', 'Glimmora', 9, TRUE, 1, NULL, NULL),
  -- Greavard
  (97100, 971, 'greavard', 'Greavard', 9, TRUE, 1, NULL, NULL),
  -- Houndstone
  (97200, 972, 'houndstone', 'Houndstone', 9, TRUE, 1, NULL, NULL),
  -- Flamigo
  (97300, 973, 'flamigo', 'Flamigo', 9, TRUE, 1, NULL, NULL),
  -- Cetoddle
  (97400, 974, 'cetoddle', 'Cetoddle', 9, TRUE, 1, NULL, NULL),
  -- Cetitan
  (97500, 975, 'cetitan', 'Cetitan', 9, TRUE, 1, NULL, NULL),
  -- Veluza
  (97600, 976, 'veluza', 'Veluza', 9, TRUE, 1, NULL, NULL),
  -- Dondozo
  (97700, 977, 'dondozo', 'Dondozo', 9, TRUE, 1, NULL, NULL),
  -- Tatsugiri
  (97800, 978, 'tatsugiri', 'Tatsugiri', 9, TRUE, 1, NULL, NULL),
  -- Annihilape
  (97900, 979, 'annihilape', 'Annihilape', 9, TRUE, 1, NULL, NULL),
  -- Clodsire
  (98000, 980, 'clodsire', 'Clodsire', 9, TRUE, 1, NULL, NULL),
  -- Farigiraf
  (98100, 981, 'farigiraf', 'Farigiraf', 9, TRUE, 1, NULL, NULL),
  -- Dudunsparce
  (98200, 982, 'dudunsparce', 'Dudunsparce', 9, TRUE, 1, NULL, NULL),
  -- Kingambit
  (98300, 983, 'kingambit', 'Kingambit', 9, TRUE, 1, NULL, NULL),
  -- Great Tusk
  (98400, 984, 'great-tusk', 'Great Tusk', 9, TRUE, 1, NULL, NULL),
  -- Scream Tail
  (98500, 985, 'scream-tail', 'Scream Tail', 9, TRUE, 1, NULL, NULL),
  -- Brute Bonnet
  (98600, 986, 'brute-bonnet', 'Brute Bonnet', 9, TRUE, 1, NULL, NULL),
  -- Flutter Mane
  (98700, 987, 'flutter-mane', 'Flutter Mane', 9, TRUE, 1, NULL, NULL),
  -- Slither Wing
  (98800, 988, 'slither-wing', 'Slither Wing', 9, TRUE, 1, NULL, NULL),
  -- Sandy Shocks
  (98900, 989, 'sandy-shocks', 'Sandy Shocks', 9, TRUE, 1, NULL, NULL),
  -- Iron Treads
  (99000, 990, 'iron-treads', 'Iron Treads', 9, TRUE, 1, NULL, NULL),
  -- Iron Bundle
  (99100, 991, 'iron-bundle', 'Iron Bundle', 9, TRUE, 1, NULL, NULL),
  -- Iron Hands
  (99200, 992, 'iron-hands', 'Iron Hands', 9, TRUE, 1, NULL, NULL),
  -- Iron Jugulis
  (99300, 993, 'iron-jugulis', 'Iron Jugulis', 9, TRUE, 1, NULL, NULL),
  -- Iron Moth
  (99400, 994, 'iron-moth', 'Iron Moth', 9, TRUE, 1, NULL, NULL),
  -- Iron Thorns
  (99500, 995, 'iron-thorns', 'Iron Thorns', 9, TRUE, 1, NULL, NULL),
  -- Frigibax
  (99600, 996, 'frigibax', 'Frigibax', 9, TRUE, 1, NULL, NULL),
  -- Arctibax
  (99700, 997, 'arctibax', 'Arctibax', 9, TRUE, 1, NULL, NULL),
  -- Baxcalibur
  (99800, 998, 'baxcalibur', 'Baxcalibur', 9, TRUE, 1, NULL, NULL),
  -- Gimmighoul
  (99900, 999, 'gimmighoul', 'Gimmighoul', 9, TRUE, 1, NULL, NULL),
  -- Gholdengo
  (100000, 1000, 'gholdengo', 'Gholdengo', 9, TRUE, 1, NULL, NULL),
  -- Wo-Chien
  (100100, 1001, 'wo-chien', 'Wo-Chien', 9, TRUE, 1, NULL, NULL),
  -- Chien-Pao
  (100200, 1002, 'chien-pao', 'Chien-Pao', 9, TRUE, 1, NULL, NULL),
  -- Ting-Lu
  (100300, 1003, 'ting-lu', 'Ting-Lu', 9, TRUE, 1, NULL, NULL),
  -- Chi-Yu
  (100400, 1004, 'chi-yu', 'Chi-Yu', 9, TRUE, 1, NULL, NULL),
  -- Roaring Moon
  (100500, 1005, 'roaring-moon', 'Roaring Moon', 9, TRUE, 1, NULL, NULL),
  -- Iron Valiant
  (100600, 1006, 'iron-valiant', 'Iron Valiant', 9, TRUE, 1, NULL, NULL),
  -- Koraidon
  (100700, 1007, 'koraidon', 'Koraidon', 9, TRUE, 1, NULL, NULL),
  -- Miraidon
  (100800, 1008, 'miraidon', 'Miraidon', 9, TRUE, 1, NULL, NULL),
  -- Walking Wake
  (100900, 1009, 'walking-wake', 'Walking Wake', 9, TRUE, 1, NULL, NULL),
  -- Iron Leaves
  (101000, 1010, 'iron-leaves', 'Iron Leaves', 9, TRUE, 1, NULL, NULL),
  -- Dipplin
  (101100, 1011, 'dipplin', 'Dipplin', 9, TRUE, 1, NULL, NULL),
  -- Poltchageist
  (101200, 1012, 'poltchageist', 'Poltchageist', 9, TRUE, 1, NULL, NULL),
  -- Sinistcha
  (101300, 1013, 'sinistcha', 'Sinistcha', 9, TRUE, 1, NULL, NULL),
  -- Okidogi
  (101400, 1014, 'okidogi', 'Okidogi', 9, TRUE, 1, NULL, NULL),
  -- Munkidori
  (101500, 1015, 'munkidori', 'Munkidori', 9, TRUE, 1, NULL, NULL),
  -- Fezandipiti
  (101600, 1016, 'fezandipiti', 'Fezandipiti', 9, TRUE, 1, NULL, NULL),
  -- Ogerpon
  (101700, 1017, 'ogerpon', 'Ogerpon', 9, TRUE, 1, NULL, NULL),
  -- Archaludon
  (101800, 1018, 'archaludon', 'Archaludon', 9, TRUE, 1, NULL, NULL),
  -- Hydrapple
  (101900, 1019, 'hydrapple', 'Hydrapple', 9, TRUE, 1, NULL, NULL),
  -- Gouging Fire
  (102000, 1020, 'gouging-fire', 'Gouging Fire', 9, TRUE, 1, NULL, NULL),
  -- Raging Bolt
  (102100, 1021, 'raging-bolt', 'Raging Bolt', 9, TRUE, 1, NULL, NULL),
  -- Iron Boulder
  (102200, 1022, 'iron-boulder', 'Iron Boulder', 9, TRUE, 1, NULL, NULL),
  -- Iron Crown
  (102300, 1023, 'iron-crown', 'Iron Crown', 9, TRUE, 1, NULL, NULL),
  -- Terapagos
  (102400, 1024, 'terapagos', 'Terapagos', 9, TRUE, 1, NULL, NULL),
  -- Pecharunt
  (102500, 1025, 'pecharunt', 'Pecharunt', 9, TRUE, 1, NULL, NULL);
