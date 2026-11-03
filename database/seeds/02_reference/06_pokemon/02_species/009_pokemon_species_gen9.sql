-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokemonDB National Pokedex, Bulbapedia species pages, and Serebii Pokedex pages.
-- Migration source: legacy Voydex species seeds, normalized to clean schema columns and ASCII code-facing names.
-- Construction aid: PokeAPI pokemon_species CSV, restricted to National Dex 1-1025, used only for mechanical sanity checks.
-- ============================================================================
-- Category, gender ratio and egg cycles: the machine-readable species snapshot (PokeAPI), checked against Bulbapedia species pages on 2026-11-03.
-- File Scope
-- ============================================================================
-- Generation: 9
-- Table: reference.pokemon_species
-- Scope: National Dex #0906-1025
INSERT INTO reference.pokemon_species (id, national_number, slug, name, introduced_generation_id, evolution_family_id, color, category, female_ratio_eighths, egg_cycles, is_baby, is_legendary, is_mythical)
VALUES
  -- Sprigatito
  (906, 906, 'sprigatito', 'Sprigatito', 9, 906, 'green', 'Grass Cat', 1, 20, FALSE, FALSE, FALSE),
  -- Floragato
  (907, 907, 'floragato', 'Floragato', 9, 906, 'green', 'Grass Cat', 1, 20, FALSE, FALSE, FALSE),
  -- Meowscarada
  (908, 908, 'meowscarada', 'Meowscarada', 9, 906, 'green', 'Magician', 1, 20, FALSE, FALSE, FALSE),
  -- Fuecoco
  (909, 909, 'fuecoco', 'Fuecoco', 9, 909, 'red', 'Fire Croc', 1, 20, FALSE, FALSE, FALSE),
  -- Crocalor
  (910, 910, 'crocalor', 'Crocalor', 9, 909, 'red', 'Fire Croc', 1, 20, FALSE, FALSE, FALSE),
  -- Skeledirge
  (911, 911, 'skeledirge', 'Skeledirge', 9, 909, 'red', 'Singer', 1, 20, FALSE, FALSE, FALSE),
  -- Quaxly
  (912, 912, 'quaxly', 'Quaxly', 9, 912, 'white', 'Duckling', 1, 20, FALSE, FALSE, FALSE),
  -- Quaxwell
  (913, 913, 'quaxwell', 'Quaxwell', 9, 912, 'white', 'Practicing', 1, 20, FALSE, FALSE, FALSE),
  -- Quaquaval
  (914, 914, 'quaquaval', 'Quaquaval', 9, 912, 'blue', 'Dancer', 1, 20, FALSE, FALSE, FALSE),
  -- Lechonk
  (915, 915, 'lechonk', 'Lechonk', 9, 915, 'gray', 'Hog', 4, 15, FALSE, FALSE, FALSE),
  -- Oinkologne
  (916, 916, 'oinkologne', 'Oinkologne', 9, 915, 'gray', 'Hog', 4, 15, FALSE, FALSE, FALSE),
  -- Tarountula
  (917, 917, 'tarountula', 'Tarountula', 9, 917, 'green', 'String Ball', 4, 15, FALSE, FALSE, FALSE),
  -- Spidops
  (918, 918, 'spidops', 'Spidops', 9, 917, 'green', 'Trap', 4, 15, FALSE, FALSE, FALSE),
  -- Nymble
  (919, 919, 'nymble', 'Nymble', 9, 919, 'gray', 'Grasshopper', 4, 20, FALSE, FALSE, FALSE),
  -- Lokix
  (920, 920, 'lokix', 'Lokix', 9, 919, 'gray', 'Grasshopper', 4, 20, FALSE, FALSE, FALSE),
  -- Pawmi
  (921, 921, 'pawmi', 'Pawmi', 9, 921, 'yellow', 'Mouse', 4, 15, FALSE, FALSE, FALSE),
  -- Pawmo
  (922, 922, 'pawmo', 'Pawmo', 9, 921, 'yellow', 'Mouse', 4, 15, FALSE, FALSE, FALSE),
  -- Pawmot
  (923, 923, 'pawmot', 'Pawmot', 9, 921, 'yellow', 'Hands-On', 4, 15, FALSE, FALSE, FALSE),
  -- Tandemaus
  (924, 924, 'tandemaus', 'Tandemaus', 9, 924, 'white', 'Couple', NULL, 10, FALSE, FALSE, FALSE),
  -- Maushold
  (925, 925, 'maushold', 'Maushold', 9, 924, 'white', 'Family', NULL, 10, FALSE, FALSE, FALSE),
  -- Fidough
  (926, 926, 'fidough', 'Fidough', 9, 926, 'yellow', 'Puppy', 4, 20, FALSE, FALSE, FALSE),
  -- Dachsbun
  (927, 927, 'dachsbun', 'Dachsbun', 9, 926, 'brown', 'Dog', 4, 20, FALSE, FALSE, FALSE),
  -- Smoliv
  (928, 928, 'smoliv', 'Smoliv', 9, 928, 'green', 'Olive', 4, 20, FALSE, FALSE, FALSE),
  -- Dolliv
  (929, 929, 'dolliv', 'Dolliv', 9, 928, 'green', 'Olive', 4, 20, FALSE, FALSE, FALSE),
  -- Arboliva
  (930, 930, 'arboliva', 'Arboliva', 9, 928, 'green', 'Olive', 4, 20, FALSE, FALSE, FALSE),
  -- Squawkabilly
  (931, 931, 'squawkabilly', 'Squawkabilly', 9, 931, 'green', 'Parrot', 4, 15, FALSE, FALSE, FALSE),
  -- Nacli
  (932, 932, 'nacli', 'Nacli', 9, 932, 'brown', 'Rock Salt', 4, 20, FALSE, FALSE, FALSE),
  -- Naclstack
  (933, 933, 'naclstack', 'Naclstack', 9, 932, 'brown', 'Rock Salt', 4, 20, FALSE, FALSE, FALSE),
  -- Garganacl
  (934, 934, 'garganacl', 'Garganacl', 9, 932, 'white', 'Rock Salt', 4, 20, FALSE, FALSE, FALSE),
  -- Charcadet
  (935, 935, 'charcadet', 'Charcadet', 9, 935, 'red', 'Fire Child', 4, 35, FALSE, FALSE, FALSE),
  -- Armarouge
  (936, 936, 'armarouge', 'Armarouge', 9, 935, 'red', 'Fire Warrior', 4, 35, FALSE, FALSE, FALSE),
  -- Ceruledge
  (937, 937, 'ceruledge', 'Ceruledge', 9, 935, 'blue', 'Fire Blades', 4, 35, FALSE, FALSE, FALSE),
  -- Tadbulb
  (938, 938, 'tadbulb', 'Tadbulb', 9, 938, 'yellow', 'EleTadpole', 4, 20, FALSE, FALSE, FALSE),
  -- Bellibolt
  (939, 939, 'bellibolt', 'Bellibolt', 9, 938, 'green', 'EleFrog', 4, 20, FALSE, FALSE, FALSE),
  -- Wattrel
  (940, 940, 'wattrel', 'Wattrel', 9, 940, 'black', 'Storm Petrel', 4, 20, FALSE, FALSE, FALSE),
  -- Kilowattrel
  (941, 941, 'kilowattrel', 'Kilowattrel', 9, 940, 'yellow', 'Frigatebird', 4, 20, FALSE, FALSE, FALSE),
  -- Maschiff
  (942, 942, 'maschiff', 'Maschiff', 9, 942, 'brown', 'Rascal', 4, 20, FALSE, FALSE, FALSE),
  -- Mabosstiff
  (943, 943, 'mabosstiff', 'Mabosstiff', 9, 942, 'gray', 'Boss', 4, 20, FALSE, FALSE, FALSE),
  -- Shroodle
  (944, 944, 'shroodle', 'Shroodle', 9, 944, 'white', 'Toxic Mouse', 4, 20, FALSE, FALSE, FALSE),
  -- Grafaiai
  (945, 945, 'grafaiai', 'Grafaiai', 9, 944, 'gray', 'Toxic Monkey', 4, 20, FALSE, FALSE, FALSE),
  -- Bramblin
  (946, 946, 'bramblin', 'Bramblin', 9, 946, 'brown', 'Tumbleweed', 4, 20, FALSE, FALSE, FALSE),
  -- Brambleghast
  (947, 947, 'brambleghast', 'Brambleghast', 9, 946, 'brown', 'Tumbleweed', 4, 20, FALSE, FALSE, FALSE),
  -- Toedscool
  (948, 948, 'toedscool', 'Toedscool', 9, 948, 'black', 'Woodear', 4, 20, FALSE, FALSE, FALSE),
  -- Toedscruel
  (949, 949, 'toedscruel', 'Toedscruel', 9, 948, 'black', 'Woodear', 4, 20, FALSE, FALSE, FALSE),
  -- Klawf
  (950, 950, 'klawf', 'Klawf', 9, 950, 'red', 'Ambush', 4, 35, FALSE, FALSE, FALSE),
  -- Capsakid
  (951, 951, 'capsakid', 'Capsakid', 9, 951, 'green', 'Spicy Pepper', 4, 20, FALSE, FALSE, FALSE),
  -- Scovillain
  (952, 952, 'scovillain', 'Scovillain', 9, 951, 'green', 'Spicy Pepper', 4, 20, FALSE, FALSE, FALSE),
  -- Rellor
  (953, 953, 'rellor', 'Rellor', 9, 953, 'brown', 'Rolling', 4, 20, FALSE, FALSE, FALSE),
  -- Rabsca
  (954, 954, 'rabsca', 'Rabsca', 9, 953, 'green', 'Rolling', 4, 20, FALSE, FALSE, FALSE),
  -- Flittle
  (955, 955, 'flittle', 'Flittle', 9, 955, 'white', 'Frill', 4, 20, FALSE, FALSE, FALSE),
  -- Espathra
  (956, 956, 'espathra', 'Espathra', 9, 955, 'yellow', 'Ostrich', 4, 20, FALSE, FALSE, FALSE),
  -- Tinkatink
  (957, 957, 'tinkatink', 'Tinkatink', 9, 957, 'pink', 'Metalsmith', 8, 20, FALSE, FALSE, FALSE),
  -- Tinkatuff
  (958, 958, 'tinkatuff', 'Tinkatuff', 9, 957, 'pink', 'Hammer', 8, 20, FALSE, FALSE, FALSE),
  -- Tinkaton
  (959, 959, 'tinkaton', 'Tinkaton', 9, 957, 'pink', 'Hammer', 8, 20, FALSE, FALSE, FALSE),
  -- Wiglett
  (960, 960, 'wiglett', 'Wiglett', 9, 960, 'white', 'Garden Eel', 4, 20, FALSE, FALSE, FALSE),
  -- Wugtrio
  (961, 961, 'wugtrio', 'Wugtrio', 9, 960, 'white', 'Garden Eel', 4, 20, FALSE, FALSE, FALSE),
  -- Bombirdier
  (962, 962, 'bombirdier', 'Bombirdier', 9, 962, 'gray', 'Item Drop', 4, 35, FALSE, FALSE, FALSE),
  -- Finizen
  (963, 963, 'finizen', 'Finizen', 9, 963, 'blue', 'Dolphin', 4, 40, FALSE, FALSE, FALSE),
  -- Palafin
  (964, 964, 'palafin', 'Palafin', 9, 963, 'blue', 'Dolphin', 4, 40, FALSE, FALSE, FALSE),
  -- Varoom
  (965, 965, 'varoom', 'Varoom', 9, 965, 'gray', 'Single-Cyl', 4, 20, FALSE, FALSE, FALSE),
  -- Revavroom
  (966, 966, 'revavroom', 'Revavroom', 9, 965, 'gray', 'Multi-Cyl', 4, 20, FALSE, FALSE, FALSE),
  -- Cyclizar
  (967, 967, 'cyclizar', 'Cyclizar', 9, 967, 'green', 'Mount', 4, 30, FALSE, FALSE, FALSE),
  -- Orthworm
  (968, 968, 'orthworm', 'Orthworm', 9, 968, 'pink', 'Earthworm', 4, 35, FALSE, FALSE, FALSE),
  -- Glimmet
  (969, 969, 'glimmet', 'Glimmet', 9, 969, 'blue', 'Ore', 4, 30, FALSE, FALSE, FALSE),
  -- Glimmora
  (970, 970, 'glimmora', 'Glimmora', 9, 969, 'blue', 'Ore', 4, 30, FALSE, FALSE, FALSE),
  -- Greavard
  (971, 971, 'greavard', 'Greavard', 9, 971, 'white', 'Ghost Dog', 4, 20, FALSE, FALSE, FALSE),
  -- Houndstone
  (972, 972, 'houndstone', 'Houndstone', 9, 971, 'white', 'Ghost Dog', 4, 20, FALSE, FALSE, FALSE),
  -- Flamigo
  (973, 973, 'flamigo', 'Flamigo', 9, 973, 'pink', 'Synchronize', 4, 20, FALSE, FALSE, FALSE),
  -- Cetoddle
  (974, 974, 'cetoddle', 'Cetoddle', 9, 974, 'white', 'Terra Whale', 4, 25, FALSE, FALSE, FALSE),
  -- Cetitan
  (975, 975, 'cetitan', 'Cetitan', 9, 974, 'white', 'Terra Whale', 4, 25, FALSE, FALSE, FALSE),
  -- Veluza
  (976, 976, 'veluza', 'Veluza', 9, 976, 'gray', 'Jettison', 4, 20, FALSE, FALSE, FALSE),
  -- Dondozo
  (977, 977, 'dondozo', 'Dondozo', 9, 977, 'blue', 'Big Catfish', 4, 40, FALSE, FALSE, FALSE),
  -- Tatsugiri
  (978, 978, 'tatsugiri', 'Tatsugiri', 9, 978, 'pink', 'Mimicry', 4, 35, FALSE, FALSE, FALSE),
  -- Annihilape
  (979, 979, 'annihilape', 'Annihilape', 9, 56, 'gray', 'Rage Monkey', 4, 20, FALSE, FALSE, FALSE),
  -- Clodsire
  (980, 980, 'clodsire', 'Clodsire', 9, 194, 'brown', 'Spiny Fish', 4, 20, FALSE, FALSE, FALSE),
  -- Farigiraf
  (981, 981, 'farigiraf', 'Farigiraf', 9, 203, 'yellow', 'Long Neck', 4, 20, FALSE, FALSE, FALSE),
  -- Dudunsparce
  (982, 982, 'dudunsparce', 'Dudunsparce', 9, 206, 'yellow', 'Land Snake', 4, 20, FALSE, FALSE, FALSE),
  -- Kingambit
  (983, 983, 'kingambit', 'Kingambit', 9, 624, 'black', 'Big Blade', 4, 20, FALSE, FALSE, FALSE),
  -- Great Tusk
  (984, 984, 'great-tusk', 'Great Tusk', 9, 984, 'brown', 'Paradox', NULL, 50, FALSE, FALSE, FALSE),
  -- Scream Tail
  (985, 985, 'scream-tail', 'Scream Tail', 9, 985, 'pink', 'Paradox', NULL, 50, FALSE, FALSE, FALSE),
  -- Brute Bonnet
  (986, 986, 'brute-bonnet', 'Brute Bonnet', 9, 986, 'brown', 'Paradox', NULL, 50, FALSE, FALSE, FALSE),
  -- Flutter Mane
  (987, 987, 'flutter-mane', 'Flutter Mane', 9, 987, 'gray', 'Paradox', NULL, 50, FALSE, FALSE, FALSE),
  -- Slither Wing
  (988, 988, 'slither-wing', 'Slither Wing', 9, 988, 'red', 'Paradox', NULL, 50, FALSE, FALSE, FALSE),
  -- Sandy Shocks
  (989, 989, 'sandy-shocks', 'Sandy Shocks', 9, 989, 'gray', 'Paradox', NULL, 50, FALSE, FALSE, FALSE),
  -- Iron Treads
  (990, 990, 'iron-treads', 'Iron Treads', 9, 990, 'gray', 'Paradox', NULL, 50, FALSE, FALSE, FALSE),
  -- Iron Bundle
  (991, 991, 'iron-bundle', 'Iron Bundle', 9, 991, 'blue', 'Paradox', NULL, 50, FALSE, FALSE, FALSE),
  -- Iron Hands
  (992, 992, 'iron-hands', 'Iron Hands', 9, 992, 'blue', 'Paradox', NULL, 50, FALSE, FALSE, FALSE),
  -- Iron Jugulis
  (993, 993, 'iron-jugulis', 'Iron Jugulis', 9, 993, 'blue', 'Paradox', NULL, 50, FALSE, FALSE, FALSE),
  -- Iron Moth
  (994, 994, 'iron-moth', 'Iron Moth', 9, 994, 'yellow', 'Paradox', NULL, 50, FALSE, FALSE, FALSE),
  -- Iron Thorns
  (995, 995, 'iron-thorns', 'Iron Thorns', 9, 995, 'gray', 'Paradox', NULL, 50, FALSE, FALSE, FALSE),
  -- Frigibax
  (996, 996, 'frigibax', 'Frigibax', 9, 996, 'gray', 'Ice Fin', 4, 40, FALSE, FALSE, FALSE),
  -- Arctibax
  (997, 997, 'arctibax', 'Arctibax', 9, 996, 'gray', 'Ice Fin', 4, 40, FALSE, FALSE, FALSE),
  -- Baxcalibur
  (998, 998, 'baxcalibur', 'Baxcalibur', 9, 996, 'gray', 'Ice Dragon', 4, 40, FALSE, FALSE, FALSE),
  -- Gimmighoul
  (999, 999, 'gimmighoul', 'Gimmighoul', 9, 999, 'blue', 'Coin Chest', NULL, 50, FALSE, FALSE, FALSE),
  -- Gholdengo
  (1000, 1000, 'gholdengo', 'Gholdengo', 9, 999, 'yellow', 'Coin Entity', NULL, 50, FALSE, FALSE, FALSE),
  -- Wo-Chien
  (1001, 1001, 'wo-chien', 'Wo-Chien', 9, 1001, 'brown', 'Ruinous', NULL, 50, FALSE, TRUE, FALSE),
  -- Chien-Pao
  (1002, 1002, 'chien-pao', 'Chien-Pao', 9, 1002, 'white', 'Ruinous', NULL, 50, FALSE, TRUE, FALSE),
  -- Ting-Lu
  (1003, 1003, 'ting-lu', 'Ting-Lu', 9, 1003, 'brown', 'Ruinous', NULL, 50, FALSE, TRUE, FALSE),
  -- Chi-Yu
  (1004, 1004, 'chi-yu', 'Chi-Yu', 9, 1004, 'red', 'Ruinous', NULL, 50, FALSE, TRUE, FALSE),
  -- Roaring Moon
  (1005, 1005, 'roaring-moon', 'Roaring Moon', 9, 1005, 'green', 'Paradox', NULL, 50, FALSE, FALSE, FALSE),
  -- Iron Valiant
  (1006, 1006, 'iron-valiant', 'Iron Valiant', 9, 1006, 'white', 'Paradox', NULL, 50, FALSE, FALSE, FALSE),
  -- Koraidon
  (1007, 1007, 'koraidon', 'Koraidon', 9, 1007, 'red', 'Paradox', NULL, 50, FALSE, TRUE, FALSE),
  -- Miraidon
  (1008, 1008, 'miraidon', 'Miraidon', 9, 1008, 'purple', 'Paradox', NULL, 50, FALSE, TRUE, FALSE),
  -- Walking Wake
  (1009, 1009, 'walking-wake', 'Walking Wake', 9, 1009, 'blue', 'Paradox', NULL, 50, FALSE, FALSE, FALSE),
  -- Iron Leaves
  (1010, 1010, 'iron-leaves', 'Iron Leaves', 9, 1010, 'green', 'Paradox', NULL, 50, FALSE, FALSE, FALSE),
  -- Dipplin
  (1011, 1011, 'dipplin', 'Dipplin', 9, 840, 'green', 'Candy Apple', 4, 20, FALSE, FALSE, FALSE),
  -- Poltchageist
  (1012, 1012, 'poltchageist', 'Poltchageist', 9, 1012, 'green', 'Matcha', NULL, 50, FALSE, FALSE, FALSE),
  -- Sinistcha
  (1013, 1013, 'sinistcha', 'Sinistcha', 9, 1012, 'green', 'Matcha', NULL, 50, FALSE, FALSE, FALSE),
  -- Okidogi
  (1014, 1014, 'okidogi', 'Okidogi', 9, 1014, 'black', 'Retainer', 0, 50, FALSE, TRUE, FALSE),
  -- Munkidori
  (1015, 1015, 'munkidori', 'Munkidori', 9, 1015, 'pink', 'Retainer', 0, 50, FALSE, TRUE, FALSE),
  -- Fezandipiti
  (1016, 1016, 'fezandipiti', 'Fezandipiti', 9, 1016, 'pink', 'Retainer', 0, 50, FALSE, TRUE, FALSE),
  -- Ogerpon
  (1017, 1017, 'ogerpon', 'Ogerpon', 9, 1017, 'green', 'Mask', 8, 50, FALSE, TRUE, FALSE),
  -- Archaludon
  (1018, 1018, 'archaludon', 'Archaludon', 9, 884, 'gray', 'Alloy', 4, 30, FALSE, FALSE, FALSE),
  -- Hydrapple
  (1019, 1019, 'hydrapple', 'Hydrapple', 9, 840, 'green', 'Apple Hydra', 4, 20, FALSE, FALSE, FALSE),
  -- Gouging Fire
  (1020, 1020, 'gouging-fire', 'Gouging Fire', 9, 1020, 'red', 'Paradox', NULL, 50, FALSE, FALSE, FALSE),
  -- Raging Bolt
  (1021, 1021, 'raging-bolt', 'Raging Bolt', 9, 1021, 'yellow', 'Paradox', NULL, 50, FALSE, FALSE, FALSE),
  -- Iron Boulder
  (1022, 1022, 'iron-boulder', 'Iron Boulder', 9, 1022, 'green', 'Paradox', NULL, 50, FALSE, FALSE, FALSE),
  -- Iron Crown
  (1023, 1023, 'iron-crown', 'Iron Crown', 9, 1023, 'blue', 'Paradox', NULL, 50, FALSE, FALSE, FALSE),
  -- Terapagos
  (1024, 1024, 'terapagos', 'Terapagos', 9, 1024, 'blue', 'Tera', 4, 5, FALSE, TRUE, FALSE),
  -- Pecharunt
  (1025, 1025, 'pecharunt', 'Pecharunt', 9, 1025, 'purple', 'Subjugation', NULL, 20, FALSE, FALSE, TRUE);
