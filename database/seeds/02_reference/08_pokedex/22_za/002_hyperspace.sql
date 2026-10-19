-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Hyperspace Pokedex number.
-- Cross-check: PokemonDB Mega Dimension Pokedex and Serebii Hyperspace Pokedex.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Hyperspace Pokedex entries for Pokémon Legends: Z-A: Mega Dimension.
-- Hyperspace contains 132 Pokedex species; Zeraora is source-visible but not required.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Mankey
  (2701, 56, NULL, 1, TRUE),
  -- #002 Primeape
  (2701, 57, NULL, 2, TRUE),
  -- #003 Annihilape
  (2701, 979, NULL, 3, TRUE),
  -- #004 Meowth
  (2701, 52, NULL, 4, TRUE),
  -- #005 Persian
  (2701, 53, NULL, 5, TRUE),
  -- #006 Perrserker
  (2701, 863, NULL, 6, TRUE),
  -- #007 Farfetch'd
  (2701, 83, NULL, 7, TRUE),
  -- #008 Sirfetch'd
  (2701, 865, NULL, 8, TRUE),
  -- #009 Cubone
  (2701, 104, NULL, 9, TRUE),
  -- #010 Marowak
  (2701, 105, NULL, 10, TRUE),
  -- #011 Porygon
  (2701, 137, NULL, 11, TRUE),
  -- #012 Porygon2
  (2701, 233, NULL, 12, TRUE),
  -- #013 Porygon-Z
  (2701, 474, NULL, 13, TRUE),
  -- #014 Capsakid
  (2701, 951, NULL, 14, TRUE),
  -- #015 Scovillain
  (2701, 952, NULL, 15, TRUE),
  -- #016 Tinkatink
  (2701, 957, NULL, 16, TRUE),
  -- #017 Tinkatuff
  (2701, 958, NULL, 17, TRUE),
  -- #018 Tinkaton
  (2701, 959, NULL, 18, TRUE),
  -- #019 Cyclizar
  (2701, 967, NULL, 19, TRUE),
  -- #020 Glimmet
  (2701, 969, NULL, 20, TRUE),
  -- #021 Glimmora
  (2701, 970, NULL, 21, TRUE),
  -- #022 Rotom
  (2701, 479, NULL, 22, TRUE),
  -- #023 Greavard
  (2701, 971, NULL, 23, TRUE),
  -- #024 Houndstone
  (2701, 972, NULL, 24, TRUE),
  -- #025 Sandygast
  (2701, 769, NULL, 25, TRUE),
  -- #026 Palossand
  (2701, 770, NULL, 26, TRUE),
  -- #027 Kecleon
  (2701, 352, NULL, 27, TRUE),
  -- #028 Flamigo
  (2701, 973, NULL, 28, TRUE),
  -- #029 Cryogonal
  (2701, 615, NULL, 29, TRUE),
  -- #030 Dondozo
  (2701, 977, NULL, 30, TRUE),
  -- #031 Tatsugiri
  (2701, 978, NULL, 31, TRUE),
  -- #032 Frigibax
  (2701, 996, NULL, 32, TRUE),
  -- #033 Arctibax
  (2701, 997, NULL, 33, TRUE),
  -- #034 Baxcalibur
  (2701, 998, NULL, 34, TRUE),
  -- #035 Gimmighoul
  (2701, 999, NULL, 35, TRUE),
  -- #036 Gholdengo
  (2701, 1000, NULL, 36, TRUE),
  -- #037 Qwilfish
  (2701, 211, NULL, 37, TRUE),
  -- #038 Overqwil
  (2701, 904, NULL, 38, TRUE),
  -- #039 Treecko
  (2701, 252, NULL, 39, TRUE),
  -- #040 Grovyle
  (2701, 253, NULL, 40, TRUE),
  -- #041 Sceptile
  (2701, 254, NULL, 41, TRUE),
  -- #042 Torchic
  (2701, 255, NULL, 42, TRUE),
  -- #043 Combusken
  (2701, 256, NULL, 43, TRUE),
  -- #044 Blaziken
  (2701, 257, NULL, 44, TRUE),
  -- #045 Mudkip
  (2701, 258, NULL, 45, TRUE),
  -- #046 Marshtomp
  (2701, 259, NULL, 46, TRUE),
  -- #047 Swampert
  (2701, 260, NULL, 47, TRUE),
  -- #048 Feebas
  (2701, 349, NULL, 48, TRUE),
  -- #049 Milotic
  (2701, 350, NULL, 49, TRUE),
  -- #050 Chingling
  (2701, 433, NULL, 50, TRUE),
  -- #051 Chimecho
  (2701, 358, NULL, 51, TRUE),
  -- #052 Indeedee
  (2701, 876, NULL, 52, TRUE),
  -- #053 Purrloin
  (2701, 509, NULL, 53, TRUE),
  -- #054 Liepard
  (2701, 510, NULL, 54, TRUE),
  -- #055 Munna
  (2701, 517, NULL, 55, TRUE),
  -- #056 Musharna
  (2701, 518, NULL, 56, TRUE),
  -- #057 Throh
  (2701, 538, NULL, 57, TRUE),
  -- #058 Sawk
  (2701, 539, NULL, 58, TRUE),
  -- #059 Yamask
  (2701, 562, NULL, 59, TRUE),
  -- #060 Cofagrigus
  (2701, 563, NULL, 60, TRUE),
  -- #061 Runerigus
  (2701, 867, NULL, 61, TRUE),
  -- #062 Wimpod
  (2701, 767, NULL, 62, TRUE),
  -- #063 Golisopod
  (2701, 768, NULL, 63, TRUE),
  -- #064 Nickit
  (2701, 827, NULL, 64, TRUE),
  -- #065 Thievul
  (2701, 828, NULL, 65, TRUE),
  -- #066 Clobbopus
  (2701, 852, NULL, 66, TRUE),
  -- #067 Grapploct
  (2701, 853, NULL, 67, TRUE),
  -- #068 Mimikyu
  (2701, 778, NULL, 68, TRUE),
  -- #069 Kleavor
  (2701, 900, NULL, 69, TRUE),
  -- #070 Morpeko
  (2701, 877, NULL, 70, TRUE),
  -- #071 Golett
  (2701, 622, NULL, 71, TRUE),
  -- #072 Golurk
  (2701, 623, NULL, 72, TRUE),
  -- #073 Rookidee
  (2701, 821, NULL, 73, TRUE),
  -- #074 Corvisquire
  (2701, 822, NULL, 74, TRUE),
  -- #075 Corviknight
  (2701, 823, NULL, 75, TRUE),
  -- #076 Igglybuff
  (2701, 174, NULL, 76, TRUE),
  -- #077 Jigglypuff
  (2701, 39, NULL, 77, TRUE),
  -- #078 Wigglytuff
  (2701, 40, NULL, 78, TRUE),
  -- #079 Fidough
  (2701, 926, NULL, 79, TRUE),
  -- #080 Dachsbun
  (2701, 927, NULL, 80, TRUE),
  -- #081 Starly
  (2701, 396, NULL, 81, TRUE),
  -- #082 Staravia
  (2701, 397, NULL, 82, TRUE),
  -- #083 Staraptor
  (2701, 398, NULL, 83, TRUE),
  -- #084 Spoink
  (2701, 325, NULL, 84, TRUE),
  -- #085 Grumpig
  (2701, 326, NULL, 85, TRUE),
  -- #086 Squawkabilly
  (2701, 931, NULL, 86, TRUE),
  -- #087 Crabrawler
  (2701, 739, NULL, 87, TRUE),
  -- #088 Crabominable
  (2701, 740, NULL, 88, TRUE),
  -- #089 Nacli
  (2701, 932, NULL, 89, TRUE),
  -- #090 Naclstack
  (2701, 933, NULL, 90, TRUE),
  -- #091 Garganacl
  (2701, 934, NULL, 91, TRUE),
  -- #092 Gulpin
  (2701, 316, NULL, 92, TRUE),
  -- #093 Swalot
  (2701, 317, NULL, 93, TRUE),
  -- #094 Zubat
  (2701, 41, NULL, 94, TRUE),
  -- #095 Golbat
  (2701, 42, NULL, 95, TRUE),
  -- #096 Crobat
  (2701, 169, NULL, 96, TRUE),
  -- #097 Charcadet
  (2701, 935, NULL, 97, TRUE),
  -- #098 Armarouge
  (2701, 936, NULL, 98, TRUE),
  -- #099 Ceruledge
  (2701, 937, NULL, 99, TRUE),
  -- #100 Maschiff
  (2701, 942, NULL, 100, TRUE),
  -- #101 Mabosstiff
  (2701, 943, NULL, 101, TRUE),
  -- #102 Toxel
  (2701, 848, NULL, 102, TRUE),
  -- #103 Toxtricity
  (2701, 849, NULL, 103, TRUE),
  -- #104 Shroodle
  (2701, 944, NULL, 104, TRUE),
  -- #105 Grafaiai
  (2701, 945, NULL, 105, TRUE),
  -- #106 Zangoose
  (2701, 335, NULL, 106, TRUE),
  -- #107 Seviper
  (2701, 336, NULL, 107, TRUE),
  -- #108 Mime Jr.
  (2701, 439, NULL, 108, TRUE),
  -- #109 Mr. Mime
  (2701, 122, NULL, 109, TRUE),
  -- #110 Mr. Rime
  (2701, 866, NULL, 110, TRUE),
  -- #111 Foongus
  (2701, 590, NULL, 111, TRUE),
  -- #112 Amoonguss
  (2701, 591, NULL, 112, TRUE),
  -- #113 Heatran
  (2701, 485, NULL, 113, TRUE),
  -- #114 Volcanion
  (2701, 721, NULL, 114, TRUE),
  -- #115 Cobalion
  (2701, 638, NULL, 115, TRUE),
  -- #116 Terrakion
  (2701, 639, NULL, 116, TRUE),
  -- #117 Virizion
  (2701, 640, NULL, 117, TRUE),
  -- #118 Keldeo
  (2701, 647, NULL, 118, TRUE),
  -- #119 Meloetta
  (2701, 648, NULL, 119, TRUE),
  -- #120 Genesect
  (2701, 649, NULL, 120, TRUE),
  -- #121 Hoopa
  (2701, 720, NULL, 121, TRUE),
  -- #122 Marshadow
  (2701, 802, NULL, 122, TRUE),
  -- #123 Meltan
  (2701, 808, NULL, 123, TRUE),
  -- #124 Melmetal
  (2701, 809, NULL, 124, TRUE),
  -- #125 Darkrai
  (2701, 491, NULL, 125, TRUE),
  -- #126 Latias
  (2701, 380, NULL, 126, TRUE),
  -- #127 Latios
  (2701, 381, NULL, 127, TRUE),
  -- #128 Kyogre
  (2701, 382, NULL, 128, TRUE),
  -- #129 Groudon
  (2701, 383, NULL, 129, TRUE),
  -- #130 Rayquaza
  (2701, 384, NULL, 130, TRUE),
  -- #131 Magearna
  (2701, 801, NULL, 131, TRUE),
  -- #132 Zeraora
  (2701, 807, NULL, 132, FALSE);
