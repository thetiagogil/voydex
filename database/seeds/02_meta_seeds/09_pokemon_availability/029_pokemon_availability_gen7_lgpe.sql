-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: PokeAPI (dex cross-reference)
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 7
-- Table: meta.pokemon_availability
-- Scope: version-group-specific (lgpe)
-- Pokemon: 133 (VG-wide)
INSERT INTO
    meta.pokemon_availability (id, species_id, form_id, version_group_id, game_id, availability_context)
VALUES
    -- #001 Bulbasaur
    (6887, 1, 100, 17, NULL, 'native'),
    -- #002 Ivysaur
    (6888, 2, 200, 17, NULL, 'native'),
    -- #003 Venusaur
    (6889, 3, 300, 17, NULL, 'native'),
    -- #004 Charmander
    (6890, 4, 400, 17, NULL, 'native'),
    -- #005 Charmeleon
    (6891, 5, 500, 17, NULL, 'native'),
    -- #006 Charizard
    (6892, 6, 600, 17, NULL, 'native'),
    -- #007 Squirtle
    (6893, 7, 700, 17, NULL, 'native'),
    -- #008 Wartortle
    (6894, 8, 800, 17, NULL, 'native'),
    -- #009 Blastoise
    (6895, 9, 900, 17, NULL, 'native'),
    -- #010 Caterpie
    (6896, 10, 1000, 17, NULL, 'native'),
    -- #011 Metapod
    (6897, 11, 1100, 17, NULL, 'native'),
    -- #012 Butterfree
    (6898, 12, 1200, 17, NULL, 'native'),
    -- #013 Weedle
    (6899, 13, 1300, 17, NULL, 'native'),
    -- #014 Kakuna
    (6900, 14, 1400, 17, NULL, 'native'),
    -- #015 Beedrill
    (6901, 15, 1500, 17, NULL, 'native'),
    -- #016 Pidgey
    (6902, 16, 1600, 17, NULL, 'native'),
    -- #017 Pidgeotto
    (6903, 17, 1700, 17, NULL, 'native'),
    -- #018 Pidgeot
    (6904, 18, 1800, 17, NULL, 'native'),
    -- #019 Rattata
    (6905, 19, 1900, 17, NULL, 'native'),
    -- #020 Raticate
    (6906, 20, 2000, 17, NULL, 'native'),
    -- #021 Spearow
    (6907, 21, 2100, 17, NULL, 'native'),
    -- #022 Fearow
    (6908, 22, 2200, 17, NULL, 'native'),
    -- #025 Pikachu
    (6909, 25, 2500, 17, NULL, 'native'),
    -- #026 Raichu
    (6910, 26, 2600, 17, NULL, 'native'),
    -- #029 Nidoran♀
    (6911, 29, 2900, 17, NULL, 'native'),
    -- #030 Nidorina
    (6912, 30, 3000, 17, NULL, 'native'),
    -- #031 Nidoqueen
    (6913, 31, 3100, 17, NULL, 'native'),
    -- #032 Nidoran♂
    (6914, 32, 3200, 17, NULL, 'native'),
    -- #033 Nidorino
    (6915, 33, 3300, 17, NULL, 'native'),
    -- #034 Nidoking
    (6916, 34, 3400, 17, NULL, 'native'),
    -- #035 Clefairy
    (6917, 35, 3500, 17, NULL, 'native'),
    -- #036 Clefable
    (6918, 36, 3600, 17, NULL, 'native'),
    -- #039 Jigglypuff
    (6919, 39, 3900, 17, NULL, 'native'),
    -- #040 Wigglytuff
    (6920, 40, 4000, 17, NULL, 'native'),
    -- #041 Zubat
    (6921, 41, 4100, 17, NULL, 'native'),
    -- #042 Golbat
    (6922, 42, 4200, 17, NULL, 'native'),
    -- #046 Paras
    (6923, 46, 4600, 17, NULL, 'native'),
    -- #047 Parasect
    (6924, 47, 4700, 17, NULL, 'native'),
    -- #048 Venonat
    (6925, 48, 4800, 17, NULL, 'native'),
    -- #049 Venomoth
    (6926, 49, 4900, 17, NULL, 'native'),
    -- #050 Diglett
    (6927, 50, 5000, 17, NULL, 'native'),
    -- #051 Dugtrio
    (6928, 51, 5100, 17, NULL, 'native'),
    -- #054 Psyduck
    (6929, 54, 5400, 17, NULL, 'native'),
    -- #055 Golduck
    (6930, 55, 5500, 17, NULL, 'native'),
    -- #056 Mankey
    (6931, 56, 5600, 17, NULL, 'native'),
    -- #057 Primeape
    (6932, 57, 5700, 17, NULL, 'native'),
    -- #060 Poliwag
    (6933, 60, 6000, 17, NULL, 'native'),
    -- #061 Poliwhirl
    (6934, 61, 6100, 17, NULL, 'native'),
    -- #062 Poliwrath
    (6935, 62, 6200, 17, NULL, 'native'),
    -- #063 Abra
    (6936, 63, 6300, 17, NULL, 'native'),
    -- #064 Kadabra
    (6937, 64, 6400, 17, NULL, 'native'),
    -- #065 Alakazam
    (6938, 65, 6500, 17, NULL, 'native'),
    -- #066 Machop
    (6939, 66, 6600, 17, NULL, 'native'),
    -- #067 Machoke
    (6940, 67, 6700, 17, NULL, 'native'),
    -- #068 Machamp
    (6941, 68, 6800, 17, NULL, 'native'),
    -- #072 Tentacool
    (6942, 72, 7200, 17, NULL, 'native'),
    -- #073 Tentacruel
    (6943, 73, 7300, 17, NULL, 'native'),
    -- #074 Geodude
    (6944, 74, 7400, 17, NULL, 'native'),
    -- #075 Graveler
    (6945, 75, 7500, 17, NULL, 'native'),
    -- #076 Golem
    (6946, 76, 7600, 17, NULL, 'native'),
    -- #077 Ponyta
    (6947, 77, 7700, 17, NULL, 'native'),
    -- #078 Rapidash
    (6948, 78, 7800, 17, NULL, 'native'),
    -- #079 Slowpoke
    (6949, 79, 7900, 17, NULL, 'native'),
    -- #080 Slowbro
    (6950, 80, 8000, 17, NULL, 'native'),
    -- #081 Magnemite
    (6951, 81, 8100, 17, NULL, 'native'),
    -- #082 Magneton
    (6952, 82, 8200, 17, NULL, 'native'),
    -- #083 Farfetch
    (6953, 83, 8300, 17, NULL, 'native'),
    -- #084 Doduo
    (6954, 84, 8400, 17, NULL, 'native'),
    -- #085 Dodrio
    (6955, 85, 8500, 17, NULL, 'native'),
    -- #086 Seel
    (6956, 86, 8600, 17, NULL, 'native'),
    -- #087 Dewgong
    (6957, 87, 8700, 17, NULL, 'native'),
    -- #090 Shellder
    (6958, 90, 9000, 17, NULL, 'native'),
    -- #091 Cloyster
    (6959, 91, 9100, 17, NULL, 'native'),
    -- #092 Gastly
    (6960, 92, 9200, 17, NULL, 'native'),
    -- #093 Haunter
    (6961, 93, 9300, 17, NULL, 'native'),
    -- #094 Gengar
    (6962, 94, 9400, 17, NULL, 'native'),
    -- #095 Onix
    (6963, 95, 9500, 17, NULL, 'native'),
    -- #096 Drowzee
    (6964, 96, 9600, 17, NULL, 'native'),
    -- #097 Hypno
    (6965, 97, 9700, 17, NULL, 'native'),
    -- #098 Krabby
    (6966, 98, 9800, 17, NULL, 'native'),
    -- #099 Kingler
    (6967, 99, 9900, 17, NULL, 'native'),
    -- #100 Voltorb
    (6968, 100, 10000, 17, NULL, 'native'),
    -- #101 Electrode
    (6969, 101, 10100, 17, NULL, 'native'),
    -- #102 Exeggcute
    (6970, 102, 10200, 17, NULL, 'native'),
    -- #103 Exeggutor
    (6971, 103, 10300, 17, NULL, 'native'),
    -- #104 Cubone
    (6972, 104, 10400, 17, NULL, 'native'),
    -- #105 Marowak
    (6973, 105, 10500, 17, NULL, 'native'),
    -- #106 Hitmonlee
    (6974, 106, 10600, 17, NULL, 'native'),
    -- #107 Hitmonchan
    (6975, 107, 10700, 17, NULL, 'native'),
    -- #108 Lickitung
    (6976, 108, 10800, 17, NULL, 'native'),
    -- #109 Koffing
    (6977, 109, 10900, 17, NULL, 'native'),
    -- #110 Weezing
    (6978, 110, 11000, 17, NULL, 'native'),
    -- #111 Rhyhorn
    (6979, 111, 11100, 17, NULL, 'native'),
    -- #112 Rhydon
    (6980, 112, 11200, 17, NULL, 'native'),
    -- #113 Chansey
    (6981, 113, 11300, 17, NULL, 'native'),
    -- #114 Tangela
    (6982, 114, 11400, 17, NULL, 'native'),
    -- #115 Kangaskhan
    (6983, 115, 11500, 17, NULL, 'native'),
    -- #116 Horsea
    (6984, 116, 11600, 17, NULL, 'native'),
    -- #117 Seadra
    (6985, 117, 11700, 17, NULL, 'native'),
    -- #118 Goldeen
    (6986, 118, 11800, 17, NULL, 'native'),
    -- #119 Seaking
    (6987, 119, 11900, 17, NULL, 'native'),
    -- #120 Staryu
    (6988, 120, 12000, 17, NULL, 'native'),
    -- #121 Starmie
    (6989, 121, 12100, 17, NULL, 'native'),
    -- #122 Mr. Mime
    (6990, 122, 12200, 17, NULL, 'native'),
    -- #124 Jynx
    (6991, 124, 12400, 17, NULL, 'native'),
    -- #125 Electabuzz
    (6992, 125, 12500, 17, NULL, 'native'),
    -- #126 Magmar
    (6993, 126, 12600, 17, NULL, 'native'),
    -- #128 Tauros
    (6994, 128, 12800, 17, NULL, 'native'),
    -- #129 Magikarp
    (6995, 129, 12900, 17, NULL, 'native'),
    -- #130 Gyarados
    (6996, 130, 13000, 17, NULL, 'native'),
    -- #131 Lapras
    (6997, 131, 13100, 17, NULL, 'native'),
    -- #132 Ditto
    (6998, 132, 13200, 17, NULL, 'native'),
    -- #133 Eevee
    (6999, 133, 13300, 17, NULL, 'native'),
    -- #134 Vaporeon
    (7000, 134, 13400, 17, NULL, 'native'),
    -- #135 Jolteon
    (7001, 135, 13500, 17, NULL, 'native'),
    -- #136 Flareon
    (7002, 136, 13600, 17, NULL, 'native'),
    -- #137 Porygon
    (7003, 137, 13700, 17, NULL, 'native'),
    -- #138 Omanyte
    (7004, 138, 13800, 17, NULL, 'native'),
    -- #139 Omastar
    (7005, 139, 13900, 17, NULL, 'native'),
    -- #140 Kabuto
    (7006, 140, 14000, 17, NULL, 'native'),
    -- #141 Kabutops
    (7007, 141, 14100, 17, NULL, 'native'),
    -- #142 Aerodactyl
    (7008, 142, 14200, 17, NULL, 'native'),
    -- #143 Snorlax
    (7009, 143, 14300, 17, NULL, 'native'),
    -- #144 Articuno
    (7010, 144, 14400, 17, NULL, 'native'),
    -- #145 Zapdos
    (7011, 145, 14500, 17, NULL, 'native'),
    -- #146 Moltres
    (7012, 146, 14600, 17, NULL, 'native'),
    -- #147 Dratini
    (7013, 147, 14700, 17, NULL, 'native'),
    -- #148 Dragonair
    (7014, 148, 14800, 17, NULL, 'native'),
    -- #149 Dragonite
    (7015, 149, 14900, 17, NULL, 'native'),
    -- #150 Mewtwo
    (7016, 150, 15000, 17, NULL, 'native'),
    -- #151 Mew
    (7017, 151, 15100, 17, NULL, 'native'),
    -- #808 Meltan
    (7018, 808, 80800, 17, NULL, 'native'),
    -- #809 Melmetal
    (7019, 809, 80900, 17, NULL, 'native');