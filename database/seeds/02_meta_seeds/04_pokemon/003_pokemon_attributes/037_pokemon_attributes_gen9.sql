-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 9
-- Table: meta.pokemon_attributes
-- Scope: new species (#906–1025, Scarlet/Violet + DLC)
-- Includes Kitakami and Blueberry Academy DLC species.
-- Default forms used: Oinkologne Male, Maushold Family of Four, Squawkabilly Green Plumage,
--   Palafin Zero, Tatsugiri Curly, Dudunsparce Two-Segment, Gimmighoul Chest, Ogerpon Teal Mask,
--   Terapagos Normal. Non-default forms handled in separate files.
INSERT INTO
    meta.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
VALUES
    -- #906 Sprigatito
    (906, 90600, 9, 5, NULL, 65, NULL, 168, 7, 9, 40, 61, 54, 45, 45, 65, NULL),
    -- #907 Floragato
    (907, 90700, 9, 5, NULL, 65, NULL, 168, 7, 9, 61, 80, 63, 60, 63, 83, NULL),
    -- #908 Meowscarada
    (908, 90800, 9, 5, 16, 65, NULL, 168, 7, 9, 76, 110, 70, 81, 70, 123, NULL),
    -- #909 Fuecoco
    (909, 90900, 9, 2, NULL, 66, NULL, 109, 7, NULL, 67, 45, 59, 63, 40, 36, NULL),
    -- #910 Crocalor
    (910, 91000, 9, 2, NULL, 66, NULL, 109, 7, NULL, 81, 55, 78, 90, 58, 49, NULL),
    -- #911 Skeledirge
    (911, 91100, 9, 2, 14, 66, NULL, 109, 7, NULL, 104, 75, 100, 110, 75, 66, NULL),
    -- #912 Quaxly
    (912, 91200, 9, 3, NULL, 67, NULL, 153, 6, 2, 55, 65, 45, 50, 45, 50, NULL),
    -- #913 Quaxwell
    (913, 91300, 9, 3, NULL, 67, NULL, 153, 6, 2, 70, 85, 65, 65, 60, 65, NULL),
    -- #914 Quaquaval
    (914, 91400, 9, 3, 7, 67, NULL, 153, 6, 2, 85, 120, 80, 85, 75, 85, NULL),
    -- #915 Lechonk
    (915, 91500, 9, 1, NULL, 165, 82, 47, 7, NULL, 54, 45, 40, 35, 45, 35, NULL),
    -- #916 Oinkologne default=Male
    (916, 91600, 9, 1, NULL, 268, 82, 47, 7, NULL, 110, 100, 75, 59, 80, 65, NULL),
    -- #917 Tarountula
    (917, 91700, 9, 12, NULL, 15, NULL, 198, 5, NULL, 35, 41, 45, 29, 40, 20, NULL),
    -- #918 Spidops
    (918, 91800, 9, 12, NULL, 15, NULL, 198, 5, NULL, 60, 79, 92, 52, 86, 35, NULL),
    -- #919 Nymble
    (919, 91900, 9, 12, NULL, 68, NULL, 110, 5, NULL, 33, 46, 40, 21, 25, 45, NULL),
    -- #920 Lokix
    (920, 92000, 9, 12, 16, 68, NULL, 110, 5, NULL, 71, 102, 78, 52, 55, 92, NULL),
    -- #921 Pawmi
    (921, 92100, 9, 4, NULL, 9, 30, 89, 7, NULL, 45, 50, 20, 40, 25, 60, NULL),
    -- #922 Pawmo
    (922, 92200, 9, 4, 7, 10, 30, 89, 7, NULL, 60, 75, 40, 50, 40, 85, NULL),
    -- #923 Pawmot
    (923, 92300, 9, 4, 7, 10, 30, 89, 7, NULL, 70, 115, 70, 70, 60, 105, NULL),
    -- #924 Tandemaus
    (924, 92400, 9, 1, NULL, 50, 53, 20, 7, 8, 50, 50, 45, 40, 45, 75, NULL),
    -- #925 Maushold default=Family of Four
    (925, 92500, 9, 1, NULL, 132, 167, 101, 7, 8, 74, 75, 70, 65, 75, 111, NULL),
    -- #926 Fidough
    (926, 92600, 9, 18, NULL, 20, NULL, 103, 7, 11, 37, 55, 70, 30, 55, 65, NULL),
    -- #927 Dachsbun
    (927, 92700, 9, 18, NULL, 273, NULL, 165, 7, 11, 57, 80, 115, 50, 80, 95, NULL),
    -- #928 Smoliv
    (928, 92800, 9, 5, 1, 48, NULL, 139, 9, NULL, 41, 35, 45, 58, 51, 30, NULL),
    -- #929 Dolliv
    (929, 92900, 9, 5, 1, 48, NULL, 139, 9, NULL, 52, 53, 60, 78, 78, 33, NULL),
    -- #930 Arboliva
    (930, 93000, 9, 5, 1, 269, NULL, 139, 9, NULL, 78, 69, 90, 125, 109, 39, NULL),
    -- #931 Squawkabilly default=Green Plumage
    (931, 93100, 9, 1, 10, 22, 55, 62, 6, NULL, 82, 96, 51, 45, 51, 92, NULL),
    -- #932 Nacli
    (932, 93200, 9, 13, NULL, 272, 5, 29, 11, NULL, 55, 55, 75, 35, 35, 25, NULL),
    -- #933 Naclstack
    (933, 93300, 9, 13, NULL, 272, 5, 29, 11, NULL, 60, 60, 100, 35, 65, 35, NULL),
    -- #934 Garganacl
    (934, 93400, 9, 13, NULL, 272, 5, 29, 11, NULL, 100, 100, 130, 45, 90, 35, NULL),
    -- #935 Charcadet
    (935, 93500, 9, 2, NULL, 18, NULL, 49, 10, NULL, 40, 50, 40, 50, 40, 35, NULL),
    -- #936 Armarouge
    (936, 93600, 9, 2, 11, 18, NULL, 133, 10, NULL, 85, 60, 100, 125, 80, 75, NULL),
    -- #937 Ceruledge
    (937, 93700, 9, 2, 14, 18, NULL, 133, 10, NULL, 75, 125, 80, 60, 100, 85, NULL),
    -- #938 Tadbulb
    (938, 93800, 9, 4, NULL, 20, 9, 6, 2, NULL, 61, 31, 41, 59, 35, 45, NULL),
    -- #939 Bellibolt
    (939, 93900, 9, 4, NULL, 280, 9, 6, 2, NULL, 109, 64, 91, 103, 83, 45, NULL),
    -- #940 Wattrel
    (940, 94000, 9, 4, 10, 277, 10, 172, 2, 6, 40, 40, 35, 55, 40, 70, NULL),
    -- #941 Kilowattrel
    (941, 94100, 9, 4, 10, 277, 10, 172, 2, 6, 70, 70, 60, 105, 60, 125, NULL),
    -- #942 Maschiff
    (942, 94200, 9, 16, NULL, 22, 50, 198, 7, NULL, 60, 78, 60, 40, 51, 51, NULL),
    -- #943 Mabosstiff
    (943, 94300, 9, 16, NULL, 22, 275, 198, 7, NULL, 80, 120, 90, 60, 70, 85, NULL),
    -- #944 Shroodle
    (944, 94400, 9, 8, 1, 84, 124, 158, 7, NULL, 40, 65, 35, 40, 35, 75, NULL),
    -- #945 Grafaiai
    (945, 94500, 9, 8, 1, 84, 143, 158, 7, NULL, 63, 95, 65, 80, 72, 110, NULL),
    -- #946 Bramblin
    (946, 94600, 9, 5, 14, 274, NULL, 151, 9, NULL, 40, 65, 30, 45, 35, 60, NULL),
    -- #947 Brambleghast
    (947, 94700, 9, 5, 14, 274, NULL, 151, 9, NULL, 55, 115, 70, 80, 70, 90, NULL),
    -- #948 Toedscool
    (948, 94800, 9, 9, 5, 298, NULL, NULL, 9, NULL, 40, 40, 35, 50, 100, 70, NULL),
    -- #949 Toedscruel
    (949, 94900, 9, 9, 5, 298, NULL, NULL, 9, NULL, 80, 70, 65, 80, 120, 100, NULL),
    -- #950 Klawf
    (950, 95000, 9, 13, NULL, 271, 75, 144, 4, NULL, 70, 100, 115, 35, 55, 75, NULL),
    -- #951 Capsakid
    (951, 95100, 9, 5, NULL, 34, 15, 103, 9, NULL, 50, 62, 40, 62, 40, 50, NULL),
    -- #952 Scovillain
    (952, 95200, 9, 5, 2, 34, 15, 141, 9, NULL, 65, 108, 65, 108, 65, 75, NULL),
    -- #953 Rellor
    (953, 95300, 9, 12, NULL, 14, NULL, 61, 5, NULL, 41, 50, 60, 31, 58, 30, NULL),
    -- #954 Rabsca
    (954, 95400, 9, 12, 11, 28, NULL, 140, 5, NULL, 75, 50, 85, 115, 100, 45, NULL),
    -- #955 Flittle
    (955, 95500, 9, 11, NULL, 107, 119, 3, 6, NULL, 30, 35, 30, 55, 30, 75, NULL),
    -- #956 Espathra
    (956, 95600, 9, 11, NULL, 290, 119, 3, 6, NULL, 95, 60, 60, 101, 60, 105, NULL),
    -- #957 Tinkatink
    (957, 95700, 9, 18, 17, 104, 20, 124, 8, NULL, 50, 45, 45, 35, 64, 58, NULL),
    -- #958 Tinkatuff
    (958, 95800, 9, 18, 17, 104, 20, 124, 8, NULL, 65, 55, 55, 45, 82, 78, NULL),
    -- #959 Tinkaton
    (959, 95900, 9, 18, 17, 104, 20, 124, 8, NULL, 85, 75, 77, 70, 105, 94, NULL),
    -- #960 Wiglett
    (960, 96000, 9, 3, NULL, 183, 155, 8, 4, NULL, 10, 55, 25, 35, 25, 95, NULL),
    -- #961 Wugtrio
    (961, 96100, 9, 3, NULL, 183, 155, 8, 4, NULL, 35, 100, 50, 50, 70, 120, NULL),
    -- #962 Bombirdier
    (962, 96200, 9, 10, 16, 145, 51, 276, 6, NULL, 70, 103, 85, 60, 85, 82, NULL),
    -- #963 Finizen
    (963, 96300, 9, 3, NULL, 41, NULL, NULL, 7, 3, 70, 45, 40, 45, 40, 75, NULL),
    -- #964 Palafin default=Zero Form
    (964, 96400, 9, 3, NULL, 278, NULL, NULL, 7, 3, 100, 70, 72, 53, 62, 100, NULL),
    -- #965 Varoom
    (965, 96500, 9, 17, 8, 142, NULL, 112, 11, NULL, 45, 70, 63, 30, 45, 47, NULL),
    -- #966 Revavroom
    (966, 96600, 9, 17, 8, 142, NULL, 111, 11, NULL, 80, 119, 90, 54, 67, 90, NULL),
    -- #967 Cyclizar
    (967, 96700, 9, 15, 1, 61, NULL, 144, 7, NULL, 70, 95, 65, 85, 65, 121, NULL),
    -- #968 Orthworm
    (968, 96800, 9, 17, NULL, 297, NULL, 8, 7, NULL, 70, 85, 145, 60, 55, 65, NULL),
    -- #969 Glimmet
    (969, 96900, 9, 13, 8, 295, NULL, 212, 11, NULL, 48, 35, 42, 105, 60, 60, NULL),
    -- #970 Glimmora
    (970, 97000, 9, 13, 8, 295, NULL, 212, 11, NULL, 83, 55, 90, 130, 81, 86, NULL),
    -- #971 Greavard
    (971, 97100, 9, 14, NULL, 53, NULL, 218, 7, NULL, 50, 61, 60, 30, 55, 34, NULL),
    -- #972 Houndstone
    (972, 97200, 9, 14, NULL, 146, NULL, 218, 7, NULL, 72, 101, 100, 50, 97, 68, NULL),
    -- #973 Flamigo
    (973, 97300, 9, 10, 7, 113, 77, 294, 6, NULL, 82, 115, 74, 75, 64, 90, NULL),
    -- #974 Cetoddle
    (974, 97400, 9, 6, NULL, 47, 81, 125, 7, NULL, 108, 68, 45, 30, 40, 43, NULL),
    -- #975 Cetitan
    (975, 97500, 9, 6, NULL, 47, 202, 125, 7, NULL, 170, 113, 65, 45, 55, 73, NULL),
    -- #976 Veluza
    (976, 97600, 9, 3, 11, 104, NULL, 292, 3, NULL, 90, 102, 73, 78, 65, 70, NULL),
    -- #977 Dondozo
    (977, 97700, 9, 3, NULL, 109, 12, 41, 3, NULL, 150, 100, 115, 65, 65, 35, NULL),
    -- #978 Tatsugiri default=Curly Form
    (978, 97800, 9, 15, 3, 279, NULL, 114, 3, NULL, 68, 50, 60, 120, 95, 82, NULL),
    -- #979 Annihilape
    (979, 97900, 9, 7, 14, 72, 39, 128, 7, NULL, 110, 115, 80, 50, 90, 90, NULL),
    -- #980 Clodsire
    (980, 98000, 9, 8, 9, 38, 11, 109, 2, 7, 130, 75, 60, 45, 100, 20, NULL),
    -- #981 Farigiraf
    (981, 98100, 9, 1, 11, 291, 296, 157, 7, NULL, 120, 90, 70, 110, 70, 60, NULL),
    -- #982 Dudunsparce default=Two-Segment Form
    (982, 98200, 9, 1, NULL, 32, 50, 155, 7, NULL, 125, 100, 80, 85, 75, 55, NULL),
    -- #983 Kingambit
    (983, 98300, 9, 16, 17, 128, 293, 46, 10, NULL, 100, 135, 120, 60, 85, 50, NULL),
    -- #984 Great Tusk
    (984, 98400, 9, 9, 7, 281, NULL, NULL, 15, NULL, 115, 131, 131, 53, 53, 87, NULL),
    -- #985 Scream Tail
    (985, 98500, 9, 18, 11, 281, NULL, NULL, 15, NULL, 115, 65, 99, 65, 115, 111, NULL),
    -- #986 Brute Bonnet
    (986, 98600, 9, 5, 16, 281, NULL, NULL, 15, NULL, 111, 127, 99, 79, 99, 55, NULL),
    -- #987 Flutter Mane
    (987, 98700, 9, 14, 18, 281, NULL, NULL, 15, NULL, 55, 55, 55, 135, 135, 135, NULL),
    -- #988 Slither Wing
    (988, 98800, 9, 12, 7, 281, NULL, NULL, 15, NULL, 85, 135, 79, 85, 105, 81, NULL),
    -- #989 Sandy Shocks
    (989, 98900, 9, 4, 9, 281, NULL, NULL, 15, NULL, 85, 81, 97, 121, 85, 101, NULL),
    -- #990 Iron Treads
    (990, 99000, 9, 9, 17, 282, NULL, NULL, 15, NULL, 90, 112, 120, 72, 70, 106, NULL),
    -- #991 Iron Bundle
    (991, 99100, 9, 6, 3, 282, NULL, NULL, 15, NULL, 56, 80, 114, 124, 60, 136, NULL),
    -- #992 Iron Hands
    (992, 99200, 9, 7, 4, 282, NULL, NULL, 15, NULL, 154, 140, 108, 50, 68, 50, NULL),
    -- #993 Iron Jugulis
    (993, 99300, 9, 16, 10, 282, NULL, NULL, 15, NULL, 94, 80, 86, 122, 80, 108, NULL),
    -- #994 Iron Moth
    (994, 99400, 9, 2, 8, 282, NULL, NULL, 15, NULL, 80, 70, 60, 140, 110, 110, NULL),
    -- #995 Iron Thorns
    (995, 99500, 9, 13, 4, 282, NULL, NULL, 15, NULL, 100, 134, 110, 70, 84, 72, NULL),
    -- #996 Frigibax
    (996, 99600, 9, 15, 6, 270, NULL, 115, 13, 11, 65, 75, 45, 35, 45, 55, NULL),
    -- #997 Arctibax
    (997, 99700, 9, 15, 6, 270, NULL, 115, 13, 11, 90, 95, 66, 45, 65, 62, NULL),
    -- #998 Baxcalibur
    (998, 99800, 9, 15, 6, 270, NULL, 115, 13, 11, 115, 145, 92, 75, 86, 87, NULL),
    -- #999 Gimmighoul default=Chest Form
    (999, 99900, 9, 14, NULL, 155, NULL, NULL, 15, NULL, 45, 30, 70, 75, 70, 10, NULL),
    -- #1000 Gholdengo
    (1000, 100000, 9, 17, 14, 283, NULL, NULL, 15, NULL, 87, 60, 95, 133, 91, 84, NULL),
    -- #1001 Wo-Chien
    (1001, 100100, 9, 16, 5, 286, NULL, NULL, 15, NULL, 85, 85, 100, 95, 135, 70, NULL),
    -- #1002 Chien-Pao
    (1002, 100200, 9, 16, 6, 285, NULL, NULL, 15, NULL, 80, 120, 80, 90, 65, 135, NULL),
    -- #1003 Ting-Lu
    (1003, 100300, 9, 16, 9, 284, NULL, NULL, 15, NULL, 155, 110, 125, 55, 80, 45, NULL),
    -- #1004 Chi-Yu
    (1004, 100400, 9, 16, 2, 287, NULL, NULL, 15, NULL, 55, 80, 80, 135, 120, 100, NULL),
    -- #1005 Roaring Moon
    (1005, 100500, 9, 15, 16, 281, NULL, NULL, 15, NULL, 105, 139, 71, 55, 101, 119, NULL),
    -- #1006 Iron Valiant
    (1006, 100600, 9, 18, 7, 282, NULL, NULL, 15, NULL, 74, 130, 90, 120, 60, 116, NULL),
    -- #1007 Koraidon
    (1007, 100700, 9, 7, 15, 288, NULL, NULL, 15, NULL, 100, 135, 115, 85, 100, 135, NULL),
    -- #1008 Miraidon
    (1008, 100800, 9, 4, 15, 289, NULL, NULL, 15, NULL, 100, 85, 100, 135, 115, 135, NULL),
    -- #1009 Walking Wake
    (1009, 100900, 9, 3, 15, 281, NULL, NULL, 15, NULL, 99, 83, 91, 125, 83, 109, NULL),
    -- #1010 Iron Leaves
    (1010, 101000, 9, 5, 11, 282, NULL, NULL, 15, NULL, 90, 130, 88, 70, 108, 104, NULL),
    -- #1011 Dipplin
    (1011, 101100, 9, 5, 15, 306, 82, 60, 9, 13, 80, 80, 110, 95, 80, 40, NULL),
    -- #1012 Poltchageist
    (1012, 101200, 9, 5, 14, 299, NULL, 85, 11, 12, 40, 45, 45, 74, 54, 50, NULL),
    -- #1013 Sinistcha
    (1013, 101300, 9, 5, 14, 299, NULL, 85, 11, 12, 71, 60, 106, 121, 80, 70, NULL),
    -- #1014 Okidogi
    (1014, 101400, 9, 8, 7, 305, NULL, 275, 15, NULL, 88, 128, 115, 58, 86, 80, NULL),
    -- #1015 Munkidori
    (1015, 101500, 9, 8, 11, 305, NULL, 119, 15, NULL, 88, 75, 66, 130, 90, 106, NULL),
    -- #1016 Fezandipiti
    (1016, 101600, 9, 8, 18, 305, NULL, 101, 15, NULL, 88, 91, 82, 70, 125, 99, NULL),
    -- #1017 Ogerpon default=Teal Mask
    (1017, 101700, 9, 5, NULL, 128, NULL, NULL, 15, NULL, 80, 120, 84, 60, 96, 110, NULL),
    -- #1018 Archaludon
    (1018, 101800, 9, 17, 15, 192, 5, 242, 11, 13, 90, 105, 130, 125, 65, 85, NULL),
    -- #1019 Hydrapple
    (1019, 101900, 9, 5, 15, 306, 144, 60, 9, 13, 106, 80, 110, 120, 80, 44, NULL),
    -- #1020 Gouging Fire
    (1020, 102000, 9, 2, 15, 281, NULL, NULL, 15, NULL, 105, 115, 121, 65, 93, 91, NULL),
    -- #1021 Raging Bolt
    (1021, 102100, 9, 4, 15, 281, NULL, NULL, 15, NULL, 125, 73, 91, 137, 89, 75, NULL),
    -- #1022 Iron Boulder
    (1022, 102200, 9, 13, 11, 282, NULL, NULL, 15, NULL, 90, 120, 80, 68, 108, 124, NULL),
    -- #1023 Iron Crown
    (1023, 102300, 9, 17, 11, 282, NULL, NULL, 15, NULL, 90, 72, 100, 122, 108, 98, NULL),
    -- #1024 Terapagos default=Normal Form
    (1024, 102400, 9, 1, NULL, 307, NULL, NULL, 15, NULL, 90, 65, 85, 65, 85, 60, NULL),
    -- #1025 Pecharunt
    (1025, 102500, 9, 8, 14, 310, NULL, NULL, 15, NULL, 88, 88, 160, 88, 88, 88, NULL);