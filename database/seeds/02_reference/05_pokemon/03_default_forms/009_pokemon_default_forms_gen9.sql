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
INSERT INTO reference.pokemon_forms (id, species_id, slug, name, introduced_generation_id, is_default, form_order, height_decimeters, weight_hectograms, sprite_slug)
VALUES
  -- Sprigatito
  (90600, 906, 'sprigatito', 'Sprigatito', 9, TRUE, 1, NULL, NULL, 'sprigatito'),
  -- Floragato
  (90700, 907, 'floragato', 'Floragato', 9, TRUE, 1, NULL, NULL, 'floragato'),
  -- Meowscarada
  (90800, 908, 'meowscarada', 'Meowscarada', 9, TRUE, 1, NULL, NULL, 'meowscarada'),
  -- Fuecoco
  (90900, 909, 'fuecoco', 'Fuecoco', 9, TRUE, 1, NULL, NULL, 'fuecoco'),
  -- Crocalor
  (91000, 910, 'crocalor', 'Crocalor', 9, TRUE, 1, NULL, NULL, 'crocalor'),
  -- Skeledirge
  (91100, 911, 'skeledirge', 'Skeledirge', 9, TRUE, 1, NULL, NULL, 'skeledirge'),
  -- Quaxly
  (91200, 912, 'quaxly', 'Quaxly', 9, TRUE, 1, NULL, NULL, 'quaxly'),
  -- Quaxwell
  (91300, 913, 'quaxwell', 'Quaxwell', 9, TRUE, 1, NULL, NULL, 'quaxwell'),
  -- Quaquaval
  (91400, 914, 'quaquaval', 'Quaquaval', 9, TRUE, 1, NULL, NULL, 'quaquaval'),
  -- Lechonk
  (91500, 915, 'lechonk', 'Lechonk', 9, TRUE, 1, NULL, NULL, 'lechonk'),
  -- Oinkologne
  (91600, 916, 'oinkologne', 'Oinkologne', 9, TRUE, 1, NULL, NULL, 'oinkologne'),
  -- Tarountula
  (91700, 917, 'tarountula', 'Tarountula', 9, TRUE, 1, NULL, NULL, 'tarountula'),
  -- Spidops
  (91800, 918, 'spidops', 'Spidops', 9, TRUE, 1, NULL, NULL, 'spidops'),
  -- Nymble
  (91900, 919, 'nymble', 'Nymble', 9, TRUE, 1, NULL, NULL, 'nymble'),
  -- Lokix
  (92000, 920, 'lokix', 'Lokix', 9, TRUE, 1, NULL, NULL, 'lokix'),
  -- Pawmi
  (92100, 921, 'pawmi', 'Pawmi', 9, TRUE, 1, NULL, NULL, 'pawmi'),
  -- Pawmo
  (92200, 922, 'pawmo', 'Pawmo', 9, TRUE, 1, NULL, NULL, 'pawmo'),
  -- Pawmot
  (92300, 923, 'pawmot', 'Pawmot', 9, TRUE, 1, NULL, NULL, 'pawmot'),
  -- Tandemaus
  (92400, 924, 'tandemaus', 'Tandemaus', 9, TRUE, 1, NULL, NULL, 'tandemaus'),
  -- Maushold
  (92500, 925, 'maushold', 'Maushold', 9, TRUE, 1, NULL, NULL, 'maushold'),
  -- Fidough
  (92600, 926, 'fidough', 'Fidough', 9, TRUE, 1, NULL, NULL, 'fidough'),
  -- Dachsbun
  (92700, 927, 'dachsbun', 'Dachsbun', 9, TRUE, 1, NULL, NULL, 'dachsbun'),
  -- Smoliv
  (92800, 928, 'smoliv', 'Smoliv', 9, TRUE, 1, NULL, NULL, 'smoliv'),
  -- Dolliv
  (92900, 929, 'dolliv', 'Dolliv', 9, TRUE, 1, NULL, NULL, 'dolliv'),
  -- Arboliva
  (93000, 930, 'arboliva', 'Arboliva', 9, TRUE, 1, NULL, NULL, 'arboliva'),
  -- Squawkabilly
  (93100, 931, 'squawkabilly', 'Squawkabilly', 9, TRUE, 1, NULL, NULL, 'squawkabilly'),
  -- Nacli
  (93200, 932, 'nacli', 'Nacli', 9, TRUE, 1, NULL, NULL, 'nacli'),
  -- Naclstack
  (93300, 933, 'naclstack', 'Naclstack', 9, TRUE, 1, NULL, NULL, 'naclstack'),
  -- Garganacl
  (93400, 934, 'garganacl', 'Garganacl', 9, TRUE, 1, NULL, NULL, 'garganacl'),
  -- Charcadet
  (93500, 935, 'charcadet', 'Charcadet', 9, TRUE, 1, NULL, NULL, 'charcadet'),
  -- Armarouge
  (93600, 936, 'armarouge', 'Armarouge', 9, TRUE, 1, NULL, NULL, 'armarouge'),
  -- Ceruledge
  (93700, 937, 'ceruledge', 'Ceruledge', 9, TRUE, 1, NULL, NULL, 'ceruledge'),
  -- Tadbulb
  (93800, 938, 'tadbulb', 'Tadbulb', 9, TRUE, 1, NULL, NULL, 'tadbulb'),
  -- Bellibolt
  (93900, 939, 'bellibolt', 'Bellibolt', 9, TRUE, 1, NULL, NULL, 'bellibolt'),
  -- Wattrel
  (94000, 940, 'wattrel', 'Wattrel', 9, TRUE, 1, NULL, NULL, 'wattrel'),
  -- Kilowattrel
  (94100, 941, 'kilowattrel', 'Kilowattrel', 9, TRUE, 1, NULL, NULL, 'kilowattrel'),
  -- Maschiff
  (94200, 942, 'maschiff', 'Maschiff', 9, TRUE, 1, NULL, NULL, 'maschiff'),
  -- Mabosstiff
  (94300, 943, 'mabosstiff', 'Mabosstiff', 9, TRUE, 1, NULL, NULL, 'mabosstiff'),
  -- Shroodle
  (94400, 944, 'shroodle', 'Shroodle', 9, TRUE, 1, NULL, NULL, 'shroodle'),
  -- Grafaiai
  (94500, 945, 'grafaiai', 'Grafaiai', 9, TRUE, 1, NULL, NULL, 'grafaiai'),
  -- Bramblin
  (94600, 946, 'bramblin', 'Bramblin', 9, TRUE, 1, NULL, NULL, 'bramblin'),
  -- Brambleghast
  (94700, 947, 'brambleghast', 'Brambleghast', 9, TRUE, 1, NULL, NULL, 'brambleghast'),
  -- Toedscool
  (94800, 948, 'toedscool', 'Toedscool', 9, TRUE, 1, NULL, NULL, 'toedscool'),
  -- Toedscruel
  (94900, 949, 'toedscruel', 'Toedscruel', 9, TRUE, 1, NULL, NULL, 'toedscruel'),
  -- Klawf
  (95000, 950, 'klawf', 'Klawf', 9, TRUE, 1, NULL, NULL, 'klawf'),
  -- Capsakid
  (95100, 951, 'capsakid', 'Capsakid', 9, TRUE, 1, NULL, NULL, 'capsakid'),
  -- Scovillain
  (95200, 952, 'scovillain', 'Scovillain', 9, TRUE, 1, NULL, NULL, 'scovillain'),
  -- Rellor
  (95300, 953, 'rellor', 'Rellor', 9, TRUE, 1, NULL, NULL, 'rellor'),
  -- Rabsca
  (95400, 954, 'rabsca', 'Rabsca', 9, TRUE, 1, NULL, NULL, 'rabsca'),
  -- Flittle
  (95500, 955, 'flittle', 'Flittle', 9, TRUE, 1, NULL, NULL, 'flittle'),
  -- Espathra
  (95600, 956, 'espathra', 'Espathra', 9, TRUE, 1, NULL, NULL, 'espathra'),
  -- Tinkatink
  (95700, 957, 'tinkatink', 'Tinkatink', 9, TRUE, 1, NULL, NULL, 'tinkatink'),
  -- Tinkatuff
  (95800, 958, 'tinkatuff', 'Tinkatuff', 9, TRUE, 1, NULL, NULL, 'tinkatuff'),
  -- Tinkaton
  (95900, 959, 'tinkaton', 'Tinkaton', 9, TRUE, 1, NULL, NULL, 'tinkaton'),
  -- Wiglett
  (96000, 960, 'wiglett', 'Wiglett', 9, TRUE, 1, NULL, NULL, 'wiglett'),
  -- Wugtrio
  (96100, 961, 'wugtrio', 'Wugtrio', 9, TRUE, 1, NULL, NULL, 'wugtrio'),
  -- Bombirdier
  (96200, 962, 'bombirdier', 'Bombirdier', 9, TRUE, 1, NULL, NULL, 'bombirdier'),
  -- Finizen
  (96300, 963, 'finizen', 'Finizen', 9, TRUE, 1, NULL, NULL, 'finizen'),
  -- Palafin
  (96400, 964, 'palafin', 'Palafin', 9, TRUE, 1, NULL, NULL, 'palafin'),
  -- Varoom
  (96500, 965, 'varoom', 'Varoom', 9, TRUE, 1, NULL, NULL, 'varoom'),
  -- Revavroom
  (96600, 966, 'revavroom', 'Revavroom', 9, TRUE, 1, NULL, NULL, 'revavroom'),
  -- Cyclizar
  (96700, 967, 'cyclizar', 'Cyclizar', 9, TRUE, 1, NULL, NULL, 'cyclizar'),
  -- Orthworm
  (96800, 968, 'orthworm', 'Orthworm', 9, TRUE, 1, NULL, NULL, 'orthworm'),
  -- Glimmet
  (96900, 969, 'glimmet', 'Glimmet', 9, TRUE, 1, NULL, NULL, 'glimmet'),
  -- Glimmora
  (97000, 970, 'glimmora', 'Glimmora', 9, TRUE, 1, NULL, NULL, 'glimmora'),
  -- Greavard
  (97100, 971, 'greavard', 'Greavard', 9, TRUE, 1, NULL, NULL, 'greavard'),
  -- Houndstone
  (97200, 972, 'houndstone', 'Houndstone', 9, TRUE, 1, NULL, NULL, 'houndstone'),
  -- Flamigo
  (97300, 973, 'flamigo', 'Flamigo', 9, TRUE, 1, NULL, NULL, 'flamigo'),
  -- Cetoddle
  (97400, 974, 'cetoddle', 'Cetoddle', 9, TRUE, 1, NULL, NULL, 'cetoddle'),
  -- Cetitan
  (97500, 975, 'cetitan', 'Cetitan', 9, TRUE, 1, NULL, NULL, 'cetitan'),
  -- Veluza
  (97600, 976, 'veluza', 'Veluza', 9, TRUE, 1, NULL, NULL, 'veluza'),
  -- Dondozo
  (97700, 977, 'dondozo', 'Dondozo', 9, TRUE, 1, NULL, NULL, 'dondozo'),
  -- Tatsugiri
  (97800, 978, 'tatsugiri', 'Tatsugiri', 9, TRUE, 1, NULL, NULL, 'tatsugiri'),
  -- Annihilape
  (97900, 979, 'annihilape', 'Annihilape', 9, TRUE, 1, NULL, NULL, 'annihilape'),
  -- Clodsire
  (98000, 980, 'clodsire', 'Clodsire', 9, TRUE, 1, NULL, NULL, 'clodsire'),
  -- Farigiraf
  (98100, 981, 'farigiraf', 'Farigiraf', 9, TRUE, 1, NULL, NULL, 'farigiraf'),
  -- Dudunsparce
  (98200, 982, 'dudunsparce', 'Dudunsparce', 9, TRUE, 1, NULL, NULL, 'dudunsparce'),
  -- Kingambit
  (98300, 983, 'kingambit', 'Kingambit', 9, TRUE, 1, NULL, NULL, 'kingambit'),
  -- Great Tusk
  (98400, 984, 'great-tusk', 'Great Tusk', 9, TRUE, 1, NULL, NULL, 'great-tusk'),
  -- Scream Tail
  (98500, 985, 'scream-tail', 'Scream Tail', 9, TRUE, 1, NULL, NULL, 'scream-tail'),
  -- Brute Bonnet
  (98600, 986, 'brute-bonnet', 'Brute Bonnet', 9, TRUE, 1, NULL, NULL, 'brute-bonnet'),
  -- Flutter Mane
  (98700, 987, 'flutter-mane', 'Flutter Mane', 9, TRUE, 1, NULL, NULL, 'flutter-mane'),
  -- Slither Wing
  (98800, 988, 'slither-wing', 'Slither Wing', 9, TRUE, 1, NULL, NULL, 'slither-wing'),
  -- Sandy Shocks
  (98900, 989, 'sandy-shocks', 'Sandy Shocks', 9, TRUE, 1, NULL, NULL, 'sandy-shocks'),
  -- Iron Treads
  (99000, 990, 'iron-treads', 'Iron Treads', 9, TRUE, 1, NULL, NULL, 'iron-treads'),
  -- Iron Bundle
  (99100, 991, 'iron-bundle', 'Iron Bundle', 9, TRUE, 1, NULL, NULL, 'iron-bundle'),
  -- Iron Hands
  (99200, 992, 'iron-hands', 'Iron Hands', 9, TRUE, 1, NULL, NULL, 'iron-hands'),
  -- Iron Jugulis
  (99300, 993, 'iron-jugulis', 'Iron Jugulis', 9, TRUE, 1, NULL, NULL, 'iron-jugulis'),
  -- Iron Moth
  (99400, 994, 'iron-moth', 'Iron Moth', 9, TRUE, 1, NULL, NULL, 'iron-moth'),
  -- Iron Thorns
  (99500, 995, 'iron-thorns', 'Iron Thorns', 9, TRUE, 1, NULL, NULL, 'iron-thorns'),
  -- Frigibax
  (99600, 996, 'frigibax', 'Frigibax', 9, TRUE, 1, NULL, NULL, 'frigibax'),
  -- Arctibax
  (99700, 997, 'arctibax', 'Arctibax', 9, TRUE, 1, NULL, NULL, 'arctibax'),
  -- Baxcalibur
  (99800, 998, 'baxcalibur', 'Baxcalibur', 9, TRUE, 1, NULL, NULL, 'baxcalibur'),
  -- Gimmighoul
  (99900, 999, 'gimmighoul', 'Gimmighoul', 9, TRUE, 1, NULL, NULL, 'gimmighoul'),
  -- Gholdengo
  (100000, 1000, 'gholdengo', 'Gholdengo', 9, TRUE, 1, NULL, NULL, 'gholdengo'),
  -- Wo-Chien
  (100100, 1001, 'wo-chien', 'Wo-Chien', 9, TRUE, 1, NULL, NULL, 'wo-chien'),
  -- Chien-Pao
  (100200, 1002, 'chien-pao', 'Chien-Pao', 9, TRUE, 1, NULL, NULL, 'chien-pao'),
  -- Ting-Lu
  (100300, 1003, 'ting-lu', 'Ting-Lu', 9, TRUE, 1, NULL, NULL, 'ting-lu'),
  -- Chi-Yu
  (100400, 1004, 'chi-yu', 'Chi-Yu', 9, TRUE, 1, NULL, NULL, 'chi-yu'),
  -- Roaring Moon
  (100500, 1005, 'roaring-moon', 'Roaring Moon', 9, TRUE, 1, NULL, NULL, 'roaring-moon'),
  -- Iron Valiant
  (100600, 1006, 'iron-valiant', 'Iron Valiant', 9, TRUE, 1, NULL, NULL, 'iron-valiant'),
  -- Koraidon
  (100700, 1007, 'koraidon', 'Koraidon', 9, TRUE, 1, NULL, NULL, 'koraidon'),
  -- Miraidon
  (100800, 1008, 'miraidon', 'Miraidon', 9, TRUE, 1, NULL, NULL, 'miraidon'),
  -- Walking Wake
  (100900, 1009, 'walking-wake', 'Walking Wake', 9, TRUE, 1, NULL, NULL, 'walking-wake'),
  -- Iron Leaves
  (101000, 1010, 'iron-leaves', 'Iron Leaves', 9, TRUE, 1, NULL, NULL, 'iron-leaves'),
  -- Dipplin
  (101100, 1011, 'dipplin', 'Dipplin', 9, TRUE, 1, NULL, NULL, 'dipplin'),
  -- Poltchageist
  (101200, 1012, 'poltchageist', 'Poltchageist', 9, TRUE, 1, NULL, NULL, 'poltchageist'),
  -- Sinistcha
  (101300, 1013, 'sinistcha', 'Sinistcha', 9, TRUE, 1, NULL, NULL, 'sinistcha'),
  -- Okidogi
  (101400, 1014, 'okidogi', 'Okidogi', 9, TRUE, 1, NULL, NULL, 'okidogi'),
  -- Munkidori
  (101500, 1015, 'munkidori', 'Munkidori', 9, TRUE, 1, NULL, NULL, 'munkidori'),
  -- Fezandipiti
  (101600, 1016, 'fezandipiti', 'Fezandipiti', 9, TRUE, 1, NULL, NULL, 'fezandipiti'),
  -- Ogerpon
  (101700, 1017, 'ogerpon', 'Ogerpon', 9, TRUE, 1, NULL, NULL, 'ogerpon'),
  -- Archaludon
  (101800, 1018, 'archaludon', 'Archaludon', 9, TRUE, 1, NULL, NULL, 'archaludon'),
  -- Hydrapple
  (101900, 1019, 'hydrapple', 'Hydrapple', 9, TRUE, 1, NULL, NULL, 'hydrapple'),
  -- Gouging Fire
  (102000, 1020, 'gouging-fire', 'Gouging Fire', 9, TRUE, 1, NULL, NULL, 'gouging-fire'),
  -- Raging Bolt
  (102100, 1021, 'raging-bolt', 'Raging Bolt', 9, TRUE, 1, NULL, NULL, 'raging-bolt'),
  -- Iron Boulder
  (102200, 1022, 'iron-boulder', 'Iron Boulder', 9, TRUE, 1, NULL, NULL, 'iron-boulder'),
  -- Iron Crown
  (102300, 1023, 'iron-crown', 'Iron Crown', 9, TRUE, 1, NULL, NULL, 'iron-crown'),
  -- Terapagos
  (102400, 1024, 'terapagos', 'Terapagos', 9, TRUE, 1, NULL, NULL, 'terapagos'),
  -- Pecharunt
  (102500, 1025, 'pecharunt', 'Pecharunt', 9, TRUE, 1, NULL, NULL, 'pecharunt');
