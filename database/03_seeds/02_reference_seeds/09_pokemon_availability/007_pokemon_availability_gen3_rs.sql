-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: PokeAPI (dex cross-reference)
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 3
-- Table: reference.pokemon_availability
-- Scope: version-group-specific (rs)
-- Pokemon: 370 (VG-wide)
INSERT INTO
    reference.pokemon_availability (id, species_id, form_id, version_group_id, game_id, availability_context)
VALUES
    -- #001 Bulbasaur
    (805, 1, 100, 5, NULL, 'native'),
    -- #002 Ivysaur
    (806, 2, 200, 5, NULL, 'native'),
    -- #003 Venusaur
    (807, 3, 300, 5, NULL, 'native'),
    -- #004 Charmander
    (808, 4, 400, 5, NULL, 'native'),
    -- #005 Charmeleon
    (809, 5, 500, 5, NULL, 'native'),
    -- #006 Charizard
    (810, 6, 600, 5, NULL, 'native'),
    -- #007 Squirtle
    (811, 7, 700, 5, NULL, 'native'),
    -- #008 Wartortle
    (812, 8, 800, 5, NULL, 'native'),
    -- #009 Blastoise
    (813, 9, 900, 5, NULL, 'native'),
    -- #010 Caterpie
    (814, 10, 1000, 5, NULL, 'native'),
    -- #011 Metapod
    (815, 11, 1100, 5, NULL, 'native'),
    -- #012 Butterfree
    (816, 12, 1200, 5, NULL, 'native'),
    -- #013 Weedle
    (817, 13, 1300, 5, NULL, 'native'),
    -- #014 Kakuna
    (818, 14, 1400, 5, NULL, 'native'),
    -- #015 Beedrill
    (819, 15, 1500, 5, NULL, 'native'),
    -- #016 Pidgey
    (820, 16, 1600, 5, NULL, 'native'),
    -- #017 Pidgeotto
    (821, 17, 1700, 5, NULL, 'native'),
    -- #018 Pidgeot
    (822, 18, 1800, 5, NULL, 'native'),
    -- #019 Rattata
    (823, 19, 1900, 5, NULL, 'native'),
    -- #020 Raticate
    (824, 20, 2000, 5, NULL, 'native'),
    -- #021 Spearow
    (825, 21, 2100, 5, NULL, 'native'),
    -- #022 Fearow
    (826, 22, 2200, 5, NULL, 'native'),
    -- #023 Ekans
    (827, 23, 2300, 5, NULL, 'native'),
    -- #024 Arbok
    (828, 24, 2400, 5, NULL, 'native'),
    -- #025 Pikachu
    (829, 25, 2500, 5, NULL, 'native'),
    -- #026 Raichu
    (830, 26, 2600, 5, NULL, 'native'),
    -- #027 Sandshrew
    (831, 27, 2700, 5, NULL, 'native'),
    -- #028 Sandslash
    (832, 28, 2800, 5, NULL, 'native'),
    -- #029 Nidoran♀
    (833, 29, 2900, 5, NULL, 'native'),
    -- #030 Nidorina
    (834, 30, 3000, 5, NULL, 'native'),
    -- #031 Nidoqueen
    (835, 31, 3100, 5, NULL, 'native'),
    -- #032 Nidoran♂
    (836, 32, 3200, 5, NULL, 'native'),
    -- #033 Nidorino
    (837, 33, 3300, 5, NULL, 'native'),
    -- #034 Nidoking
    (838, 34, 3400, 5, NULL, 'native'),
    -- #035 Clefairy
    (839, 35, 3500, 5, NULL, 'native'),
    -- #036 Clefable
    (840, 36, 3600, 5, NULL, 'native'),
    -- #037 Vulpix
    (841, 37, 3700, 5, NULL, 'native'),
    -- #038 Ninetales
    (842, 38, 3800, 5, NULL, 'native'),
    -- #039 Jigglypuff
    (843, 39, 3900, 5, NULL, 'native'),
    -- #040 Wigglytuff
    (844, 40, 4000, 5, NULL, 'native'),
    -- #041 Zubat
    (845, 41, 4100, 5, NULL, 'native'),
    -- #042 Golbat
    (846, 42, 4200, 5, NULL, 'native'),
    -- #043 Oddish
    (847, 43, 4300, 5, NULL, 'native'),
    -- #044 Gloom
    (848, 44, 4400, 5, NULL, 'native'),
    -- #045 Vileplume
    (849, 45, 4500, 5, NULL, 'native'),
    -- #046 Paras
    (850, 46, 4600, 5, NULL, 'native'),
    -- #047 Parasect
    (851, 47, 4700, 5, NULL, 'native'),
    -- #048 Venonat
    (852, 48, 4800, 5, NULL, 'native'),
    -- #049 Venomoth
    (853, 49, 4900, 5, NULL, 'native'),
    -- #050 Diglett
    (854, 50, 5000, 5, NULL, 'native'),
    -- #051 Dugtrio
    (855, 51, 5100, 5, NULL, 'native'),
    -- #052 Meowth
    (856, 52, 5200, 5, NULL, 'native'),
    -- #053 Persian
    (857, 53, 5300, 5, NULL, 'native'),
    -- #054 Psyduck
    (858, 54, 5400, 5, NULL, 'native'),
    -- #055 Golduck
    (859, 55, 5500, 5, NULL, 'native'),
    -- #056 Mankey
    (860, 56, 5600, 5, NULL, 'native'),
    -- #057 Primeape
    (861, 57, 5700, 5, NULL, 'native'),
    -- #058 Growlithe
    (862, 58, 5800, 5, NULL, 'native'),
    -- #059 Arcanine
    (863, 59, 5900, 5, NULL, 'native'),
    -- #060 Poliwag
    (864, 60, 6000, 5, NULL, 'native'),
    -- #061 Poliwhirl
    (865, 61, 6100, 5, NULL, 'native'),
    -- #062 Poliwrath
    (866, 62, 6200, 5, NULL, 'native'),
    -- #063 Abra
    (867, 63, 6300, 5, NULL, 'native'),
    -- #064 Kadabra
    (868, 64, 6400, 5, NULL, 'native'),
    -- #065 Alakazam
    (869, 65, 6500, 5, NULL, 'native'),
    -- #066 Machop
    (870, 66, 6600, 5, NULL, 'native'),
    -- #067 Machoke
    (871, 67, 6700, 5, NULL, 'native'),
    -- #068 Machamp
    (872, 68, 6800, 5, NULL, 'native'),
    -- #069 Bellsprout
    (873, 69, 6900, 5, NULL, 'native'),
    -- #070 Weepinbell
    (874, 70, 7000, 5, NULL, 'native'),
    -- #071 Victreebel
    (875, 71, 7100, 5, NULL, 'native'),
    -- #072 Tentacool
    (876, 72, 7200, 5, NULL, 'native'),
    -- #073 Tentacruel
    (877, 73, 7300, 5, NULL, 'native'),
    -- #074 Geodude
    (878, 74, 7400, 5, NULL, 'native'),
    -- #075 Graveler
    (879, 75, 7500, 5, NULL, 'native'),
    -- #076 Golem
    (880, 76, 7600, 5, NULL, 'native'),
    -- #077 Ponyta
    (881, 77, 7700, 5, NULL, 'native'),
    -- #078 Rapidash
    (882, 78, 7800, 5, NULL, 'native'),
    -- #079 Slowpoke
    (883, 79, 7900, 5, NULL, 'native'),
    -- #080 Slowbro
    (884, 80, 8000, 5, NULL, 'native'),
    -- #081 Magnemite
    (885, 81, 8100, 5, NULL, 'native'),
    -- #082 Magneton
    (886, 82, 8200, 5, NULL, 'native'),
    -- #083 Farfetch
    (887, 83, 8300, 5, NULL, 'native'),
    -- #084 Doduo
    (888, 84, 8400, 5, NULL, 'native'),
    -- #085 Dodrio
    (889, 85, 8500, 5, NULL, 'native'),
    -- #086 Seel
    (890, 86, 8600, 5, NULL, 'native'),
    -- #087 Dewgong
    (891, 87, 8700, 5, NULL, 'native'),
    -- #088 Grimer
    (892, 88, 8800, 5, NULL, 'native'),
    -- #089 Muk
    (893, 89, 8900, 5, NULL, 'native'),
    -- #090 Shellder
    (894, 90, 9000, 5, NULL, 'native'),
    -- #091 Cloyster
    (895, 91, 9100, 5, NULL, 'native'),
    -- #092 Gastly
    (896, 92, 9200, 5, NULL, 'native'),
    -- #093 Haunter
    (897, 93, 9300, 5, NULL, 'native'),
    -- #094 Gengar
    (898, 94, 9400, 5, NULL, 'native'),
    -- #095 Onix
    (899, 95, 9500, 5, NULL, 'native'),
    -- #096 Drowzee
    (900, 96, 9600, 5, NULL, 'native'),
    -- #097 Hypno
    (901, 97, 9700, 5, NULL, 'native'),
    -- #098 Krabby
    (902, 98, 9800, 5, NULL, 'native'),
    -- #099 Kingler
    (903, 99, 9900, 5, NULL, 'native'),
    -- #100 Voltorb
    (904, 100, 10000, 5, NULL, 'native'),
    -- #101 Electrode
    (905, 101, 10100, 5, NULL, 'native'),
    -- #102 Exeggcute
    (906, 102, 10200, 5, NULL, 'native'),
    -- #103 Exeggutor
    (907, 103, 10300, 5, NULL, 'native'),
    -- #104 Cubone
    (908, 104, 10400, 5, NULL, 'native'),
    -- #105 Marowak
    (909, 105, 10500, 5, NULL, 'native'),
    -- #106 Hitmonlee
    (910, 106, 10600, 5, NULL, 'native'),
    -- #107 Hitmonchan
    (911, 107, 10700, 5, NULL, 'native'),
    -- #108 Lickitung
    (912, 108, 10800, 5, NULL, 'native'),
    -- #109 Koffing
    (913, 109, 10900, 5, NULL, 'native'),
    -- #110 Weezing
    (914, 110, 11000, 5, NULL, 'native'),
    -- #111 Rhyhorn
    (915, 111, 11100, 5, NULL, 'native'),
    -- #112 Rhydon
    (916, 112, 11200, 5, NULL, 'native'),
    -- #113 Chansey
    (917, 113, 11300, 5, NULL, 'native'),
    -- #114 Tangela
    (918, 114, 11400, 5, NULL, 'native'),
    -- #115 Kangaskhan
    (919, 115, 11500, 5, NULL, 'native'),
    -- #116 Horsea
    (920, 116, 11600, 5, NULL, 'native'),
    -- #117 Seadra
    (921, 117, 11700, 5, NULL, 'native'),
    -- #118 Goldeen
    (922, 118, 11800, 5, NULL, 'native'),
    -- #119 Seaking
    (923, 119, 11900, 5, NULL, 'native'),
    -- #120 Staryu
    (924, 120, 12000, 5, NULL, 'native'),
    -- #121 Starmie
    (925, 121, 12100, 5, NULL, 'native'),
    -- #122 Mr. Mime
    (926, 122, 12200, 5, NULL, 'native'),
    -- #123 Scyther
    (927, 123, 12300, 5, NULL, 'native'),
    -- #124 Jynx
    (928, 124, 12400, 5, NULL, 'native'),
    -- #125 Electabuzz
    (929, 125, 12500, 5, NULL, 'native'),
    -- #126 Magmar
    (930, 126, 12600, 5, NULL, 'native'),
    -- #127 Pinsir
    (931, 127, 12700, 5, NULL, 'native'),
    -- #128 Tauros
    (932, 128, 12800, 5, NULL, 'native'),
    -- #129 Magikarp
    (933, 129, 12900, 5, NULL, 'native'),
    -- #130 Gyarados
    (934, 130, 13000, 5, NULL, 'native'),
    -- #131 Lapras
    (935, 131, 13100, 5, NULL, 'native'),
    -- #132 Ditto
    (936, 132, 13200, 5, NULL, 'native'),
    -- #133 Eevee
    (937, 133, 13300, 5, NULL, 'native'),
    -- #134 Vaporeon
    (938, 134, 13400, 5, NULL, 'native'),
    -- #135 Jolteon
    (939, 135, 13500, 5, NULL, 'native'),
    -- #136 Flareon
    (940, 136, 13600, 5, NULL, 'native'),
    -- #137 Porygon
    (941, 137, 13700, 5, NULL, 'native'),
    -- #138 Omanyte
    (942, 138, 13800, 5, NULL, 'native'),
    -- #139 Omastar
    (943, 139, 13900, 5, NULL, 'native'),
    -- #140 Kabuto
    (944, 140, 14000, 5, NULL, 'native'),
    -- #141 Kabutops
    (945, 141, 14100, 5, NULL, 'native'),
    -- #142 Aerodactyl
    (946, 142, 14200, 5, NULL, 'native'),
    -- #143 Snorlax
    (947, 143, 14300, 5, NULL, 'native'),
    -- #144 Articuno
    (948, 144, 14400, 5, NULL, 'native'),
    -- #145 Zapdos
    (949, 145, 14500, 5, NULL, 'native'),
    -- #146 Moltres
    (950, 146, 14600, 5, NULL, 'native'),
    -- #147 Dratini
    (951, 147, 14700, 5, NULL, 'native'),
    -- #148 Dragonair
    (952, 148, 14800, 5, NULL, 'native'),
    -- #149 Dragonite
    (953, 149, 14900, 5, NULL, 'native'),
    -- #150 Mewtwo
    (954, 150, 15000, 5, NULL, 'native'),
    -- #151 Mew
    (955, 151, 15100, 5, NULL, 'native'),
    -- #152 Chikorita
    (956, 152, 15200, 5, NULL, 'native'),
    -- #153 Bayleef
    (957, 153, 15300, 5, NULL, 'native'),
    -- #154 Meganium
    (958, 154, 15400, 5, NULL, 'native'),
    -- #155 Cyndaquil
    (959, 155, 15500, 5, NULL, 'native'),
    -- #156 Quilava
    (960, 156, 15600, 5, NULL, 'native'),
    -- #157 Typhlosion
    (961, 157, 15700, 5, NULL, 'native'),
    -- #158 Totodile
    (962, 158, 15800, 5, NULL, 'native'),
    -- #159 Croconaw
    (963, 159, 15900, 5, NULL, 'native'),
    -- #160 Feraligatr
    (964, 160, 16000, 5, NULL, 'native'),
    -- #161 Sentret
    (965, 161, 16100, 5, NULL, 'native'),
    -- #162 Furret
    (966, 162, 16200, 5, NULL, 'native'),
    -- #163 Hoothoot
    (967, 163, 16300, 5, NULL, 'native'),
    -- #164 Noctowl
    (968, 164, 16400, 5, NULL, 'native'),
    -- #165 Ledyba
    (969, 165, 16500, 5, NULL, 'native'),
    -- #166 Ledian
    (970, 166, 16600, 5, NULL, 'native'),
    -- #167 Spinarak
    (971, 167, 16700, 5, NULL, 'native'),
    -- #168 Ariados
    (972, 168, 16800, 5, NULL, 'native'),
    -- #169 Crobat
    (973, 169, 16900, 5, NULL, 'native'),
    -- #170 Chinchou
    (974, 170, 17000, 5, NULL, 'native'),
    -- #171 Lanturn
    (975, 171, 17100, 5, NULL, 'native'),
    -- #172 Pichu
    (976, 172, 17200, 5, NULL, 'native'),
    -- #173 Cleffa
    (977, 173, 17300, 5, NULL, 'native'),
    -- #174 Igglybuff
    (978, 174, 17400, 5, NULL, 'native'),
    -- #175 Togepi
    (979, 175, 17500, 5, NULL, 'native'),
    -- #176 Togetic
    (980, 176, 17600, 5, NULL, 'native'),
    -- #177 Natu
    (981, 177, 17700, 5, NULL, 'native'),
    -- #178 Xatu
    (982, 178, 17800, 5, NULL, 'native'),
    -- #179 Mareep
    (983, 179, 17900, 5, NULL, 'native'),
    -- #180 Flaaffy
    (984, 180, 18000, 5, NULL, 'native'),
    -- #181 Ampharos
    (985, 181, 18100, 5, NULL, 'native'),
    -- #182 Bellossom
    (986, 182, 18200, 5, NULL, 'native'),
    -- #183 Marill
    (987, 183, 18300, 5, NULL, 'native'),
    -- #184 Azumarill
    (988, 184, 18400, 5, NULL, 'native'),
    -- #185 Sudowoodo
    (989, 185, 18500, 5, NULL, 'native'),
    -- #186 Politoed
    (990, 186, 18600, 5, NULL, 'native'),
    -- #187 Hoppip
    (991, 187, 18700, 5, NULL, 'native'),
    -- #188 Skiploom
    (992, 188, 18800, 5, NULL, 'native'),
    -- #189 Jumpluff
    (993, 189, 18900, 5, NULL, 'native'),
    -- #190 Aipom
    (994, 190, 19000, 5, NULL, 'native'),
    -- #191 Sunkern
    (995, 191, 19100, 5, NULL, 'native'),
    -- #192 Sunflora
    (996, 192, 19200, 5, NULL, 'native'),
    -- #193 Yanma
    (997, 193, 19300, 5, NULL, 'native'),
    -- #194 Wooper
    (998, 194, 19400, 5, NULL, 'native'),
    -- #195 Quagsire
    (999, 195, 19500, 5, NULL, 'native'),
    -- #196 Espeon
    (1000, 196, 19600, 5, NULL, 'native'),
    -- #197 Umbreon
    (1001, 197, 19700, 5, NULL, 'native'),
    -- #198 Murkrow
    (1002, 198, 19800, 5, NULL, 'native'),
    -- #199 Slowking
    (1003, 199, 19900, 5, NULL, 'native'),
    -- #200 Misdreavus
    (1004, 200, 20000, 5, NULL, 'native'),
    -- #201 Unown
    (1005, 201, 20100, 5, NULL, 'native'),
    -- #202 Wobbuffet
    (1006, 202, 20200, 5, NULL, 'native'),
    -- #203 Girafarig
    (1007, 203, 20300, 5, NULL, 'native'),
    -- #204 Pineco
    (1008, 204, 20400, 5, NULL, 'native'),
    -- #205 Forretress
    (1009, 205, 20500, 5, NULL, 'native'),
    -- #206 Dunsparce
    (1010, 206, 20600, 5, NULL, 'native'),
    -- #207 Gligar
    (1011, 207, 20700, 5, NULL, 'native'),
    -- #208 Steelix
    (1012, 208, 20800, 5, NULL, 'native'),
    -- #209 Snubbull
    (1013, 209, 20900, 5, NULL, 'native'),
    -- #210 Granbull
    (1014, 210, 21000, 5, NULL, 'native'),
    -- #211 Qwilfish
    (1015, 211, 21100, 5, NULL, 'native'),
    -- #212 Scizor
    (1016, 212, 21200, 5, NULL, 'native'),
    -- #213 Shuckle
    (1017, 213, 21300, 5, NULL, 'native'),
    -- #214 Heracross
    (1018, 214, 21400, 5, NULL, 'native'),
    -- #215 Sneasel
    (1019, 215, 21500, 5, NULL, 'native'),
    -- #216 Teddiursa
    (1020, 216, 21600, 5, NULL, 'native'),
    -- #217 Ursaring
    (1021, 217, 21700, 5, NULL, 'native'),
    -- #218 Slugma
    (1022, 218, 21800, 5, NULL, 'native'),
    -- #219 Magcargo
    (1023, 219, 21900, 5, NULL, 'native'),
    -- #220 Swinub
    (1024, 220, 22000, 5, NULL, 'native'),
    -- #221 Piloswine
    (1025, 221, 22100, 5, NULL, 'native'),
    -- #222 Corsola
    (1026, 222, 22200, 5, NULL, 'native'),
    -- #223 Remoraid
    (1027, 223, 22300, 5, NULL, 'native'),
    -- #224 Octillery
    (1028, 224, 22400, 5, NULL, 'native'),
    -- #225 Delibird
    (1029, 225, 22500, 5, NULL, 'native'),
    -- #226 Mantine
    (1030, 226, 22600, 5, NULL, 'native'),
    -- #227 Skarmory
    (1031, 227, 22700, 5, NULL, 'native'),
    -- #228 Houndour
    (1032, 228, 22800, 5, NULL, 'native'),
    -- #229 Houndoom
    (1033, 229, 22900, 5, NULL, 'native'),
    -- #230 Kingdra
    (1034, 230, 23000, 5, NULL, 'native'),
    -- #231 Phanpy
    (1035, 231, 23100, 5, NULL, 'native'),
    -- #232 Donphan
    (1036, 232, 23200, 5, NULL, 'native'),
    -- #233 Porygon2
    (1037, 233, 23300, 5, NULL, 'native'),
    -- #234 Stantler
    (1038, 234, 23400, 5, NULL, 'native'),
    -- #235 Smeargle
    (1039, 235, 23500, 5, NULL, 'native'),
    -- #236 Tyrogue
    (1040, 236, 23600, 5, NULL, 'native'),
    -- #237 Hitmontop
    (1041, 237, 23700, 5, NULL, 'native'),
    -- #238 Smoochum
    (1042, 238, 23800, 5, NULL, 'native'),
    -- #239 Elekid
    (1043, 239, 23900, 5, NULL, 'native'),
    -- #240 Magby
    (1044, 240, 24000, 5, NULL, 'native'),
    -- #241 Miltank
    (1045, 241, 24100, 5, NULL, 'native'),
    -- #242 Blissey
    (1046, 242, 24200, 5, NULL, 'native'),
    -- #243 Raikou
    (1047, 243, 24300, 5, NULL, 'native'),
    -- #244 Entei
    (1048, 244, 24400, 5, NULL, 'native'),
    -- #245 Suicune
    (1049, 245, 24500, 5, NULL, 'native'),
    -- #246 Larvitar
    (1050, 246, 24600, 5, NULL, 'native'),
    -- #247 Pupitar
    (1051, 247, 24700, 5, NULL, 'native'),
    -- #248 Tyranitar
    (1052, 248, 24800, 5, NULL, 'native'),
    -- #249 Lugia
    (1053, 249, 24900, 5, NULL, 'native'),
    -- #250 Ho-Oh
    (1054, 250, 25000, 5, NULL, 'native'),
    -- #251 Celebi
    (1055, 251, 25100, 5, NULL, 'native'),
    -- #252 Treecko
    (1056, 252, 25200, 5, NULL, 'native'),
    -- #253 Grovyle
    (1057, 253, 25300, 5, NULL, 'native'),
    -- #254 Sceptile
    (1058, 254, 25400, 5, NULL, 'native'),
    -- #255 Torchic
    (1059, 255, 25500, 5, NULL, 'native'),
    -- #256 Combusken
    (1060, 256, 25600, 5, NULL, 'native'),
    -- #257 Blaziken
    (1061, 257, 25700, 5, NULL, 'native'),
    -- #258 Mudkip
    (1062, 258, 25800, 5, NULL, 'native'),
    -- #259 Marshtomp
    (1063, 259, 25900, 5, NULL, 'native'),
    -- #260 Swampert
    (1064, 260, 26000, 5, NULL, 'native'),
    -- #261 Poochyena
    (1065, 261, 26100, 5, NULL, 'native'),
    -- #262 Mightyena
    (1066, 262, 26200, 5, NULL, 'native'),
    -- #263 Zigzagoon
    (1067, 263, 26300, 5, NULL, 'native'),
    -- #264 Linoone
    (1068, 264, 26400, 5, NULL, 'native'),
    -- #265 Wurmple
    (1069, 265, 26500, 5, NULL, 'native'),
    -- #266 Silcoon
    (1070, 266, 26600, 5, NULL, 'native'),
    -- #267 Beautifly
    (1071, 267, 26700, 5, NULL, 'native'),
    -- #268 Cascoon
    (1072, 268, 26800, 5, NULL, 'native'),
    -- #269 Dustox
    (1073, 269, 26900, 5, NULL, 'native'),
    -- #276 Taillow
    (1074, 276, 27600, 5, NULL, 'native'),
    -- #277 Swellow
    (1075, 277, 27700, 5, NULL, 'native'),
    -- #278 Wingull
    (1076, 278, 27800, 5, NULL, 'native'),
    -- #279 Pelipper
    (1077, 279, 27900, 5, NULL, 'native'),
    -- #280 Ralts
    (1078, 280, 28000, 5, NULL, 'native'),
    -- #281 Kirlia
    (1079, 281, 28100, 5, NULL, 'native'),
    -- #282 Gardevoir
    (1080, 282, 28200, 5, NULL, 'native'),
    -- #283 Surskit
    (1081, 283, 28300, 5, NULL, 'native'),
    -- #284 Masquerain
    (1082, 284, 28400, 5, NULL, 'native'),
    -- #285 Shroomish
    (1083, 285, 28500, 5, NULL, 'native'),
    -- #286 Breloom
    (1084, 286, 28600, 5, NULL, 'native'),
    -- #287 Slakoth
    (1085, 287, 28700, 5, NULL, 'native'),
    -- #288 Vigoroth
    (1086, 288, 28800, 5, NULL, 'native'),
    -- #289 Slaking
    (1087, 289, 28900, 5, NULL, 'native'),
    -- #290 Nincada
    (1088, 290, 29000, 5, NULL, 'native'),
    -- #291 Ninjask
    (1089, 291, 29100, 5, NULL, 'native'),
    -- #292 Shedinja
    (1090, 292, 29200, 5, NULL, 'native'),
    -- #293 Whismur
    (1091, 293, 29300, 5, NULL, 'native'),
    -- #294 Loudred
    (1092, 294, 29400, 5, NULL, 'native'),
    -- #295 Exploud
    (1093, 295, 29500, 5, NULL, 'native'),
    -- #296 Makuhita
    (1094, 296, 29600, 5, NULL, 'native'),
    -- #297 Hariyama
    (1095, 297, 29700, 5, NULL, 'native'),
    -- #298 Azurill
    (1096, 298, 29800, 5, NULL, 'native'),
    -- #299 Nosepass
    (1097, 299, 29900, 5, NULL, 'native'),
    -- #300 Skitty
    (1098, 300, 30000, 5, NULL, 'native'),
    -- #301 Delcatty
    (1099, 301, 30100, 5, NULL, 'native'),
    -- #304 Aron
    (1100, 304, 30400, 5, NULL, 'native'),
    -- #305 Lairon
    (1101, 305, 30500, 5, NULL, 'native'),
    -- #306 Aggron
    (1102, 306, 30600, 5, NULL, 'native'),
    -- #307 Meditite
    (1103, 307, 30700, 5, NULL, 'native'),
    -- #308 Medicham
    (1104, 308, 30800, 5, NULL, 'native'),
    -- #309 Electrike
    (1105, 309, 30900, 5, NULL, 'native'),
    -- #310 Manectric
    (1106, 310, 31000, 5, NULL, 'native'),
    -- #311 Plusle
    (1107, 311, 31100, 5, NULL, 'native'),
    -- #312 Minun
    (1108, 312, 31200, 5, NULL, 'native'),
    -- #313 Volbeat
    (1109, 313, 31300, 5, NULL, 'native'),
    -- #314 Illumise
    (1110, 314, 31400, 5, NULL, 'native'),
    -- #315 Roselia
    (1111, 315, 31500, 5, NULL, 'native'),
    -- #316 Gulpin
    (1112, 316, 31600, 5, NULL, 'native'),
    -- #317 Swalot
    (1113, 317, 31700, 5, NULL, 'native'),
    -- #318 Carvanha
    (1114, 318, 31800, 5, NULL, 'native'),
    -- #319 Sharpedo
    (1115, 319, 31900, 5, NULL, 'native'),
    -- #320 Wailmer
    (1116, 320, 32000, 5, NULL, 'native'),
    -- #321 Wailord
    (1117, 321, 32100, 5, NULL, 'native'),
    -- #322 Numel
    (1118, 322, 32200, 5, NULL, 'native'),
    -- #323 Camerupt
    (1119, 323, 32300, 5, NULL, 'native'),
    -- #324 Torkoal
    (1120, 324, 32400, 5, NULL, 'native'),
    -- #325 Spoink
    (1121, 325, 32500, 5, NULL, 'native'),
    -- #326 Grumpig
    (1122, 326, 32600, 5, NULL, 'native'),
    -- #327 Spinda
    (1123, 327, 32700, 5, NULL, 'native'),
    -- #328 Trapinch
    (1124, 328, 32800, 5, NULL, 'native'),
    -- #329 Vibrava
    (1125, 329, 32900, 5, NULL, 'native'),
    -- #330 Flygon
    (1126, 330, 33000, 5, NULL, 'native'),
    -- #331 Cacnea
    (1127, 331, 33100, 5, NULL, 'native'),
    -- #332 Cacturne
    (1128, 332, 33200, 5, NULL, 'native'),
    -- #333 Swablu
    (1129, 333, 33300, 5, NULL, 'native'),
    -- #334 Altaria
    (1130, 334, 33400, 5, NULL, 'native'),
    -- #339 Barboach
    (1131, 339, 33900, 5, NULL, 'native'),
    -- #340 Whiscash
    (1132, 340, 34000, 5, NULL, 'native'),
    -- #341 Corphish
    (1133, 341, 34100, 5, NULL, 'native'),
    -- #342 Crawdaunt
    (1134, 342, 34200, 5, NULL, 'native'),
    -- #343 Baltoy
    (1135, 343, 34300, 5, NULL, 'native'),
    -- #344 Claydol
    (1136, 344, 34400, 5, NULL, 'native'),
    -- #345 Lileep
    (1137, 345, 34500, 5, NULL, 'native'),
    -- #346 Cradily
    (1138, 346, 34600, 5, NULL, 'native'),
    -- #347 Anorith
    (1139, 347, 34700, 5, NULL, 'native'),
    -- #348 Armaldo
    (1140, 348, 34800, 5, NULL, 'native'),
    -- #349 Feebas
    (1141, 349, 34900, 5, NULL, 'native'),
    -- #350 Milotic
    (1142, 350, 35000, 5, NULL, 'native'),
    -- #351 Castform
    (1143, 351, 35100, 5, NULL, 'native'),
    -- #352 Kecleon
    (1144, 352, 35200, 5, NULL, 'native'),
    -- #353 Shuppet
    (1145, 353, 35300, 5, NULL, 'native'),
    -- #354 Banette
    (1146, 354, 35400, 5, NULL, 'native'),
    -- #355 Duskull
    (1147, 355, 35500, 5, NULL, 'native'),
    -- #356 Dusclops
    (1148, 356, 35600, 5, NULL, 'native'),
    -- #357 Tropius
    (1149, 357, 35700, 5, NULL, 'native'),
    -- #358 Chimecho
    (1150, 358, 35800, 5, NULL, 'native'),
    -- #359 Absol
    (1151, 359, 35900, 5, NULL, 'native'),
    -- #360 Wynaut
    (1152, 360, 36000, 5, NULL, 'native'),
    -- #361 Snorunt
    (1153, 361, 36100, 5, NULL, 'native'),
    -- #362 Glalie
    (1154, 362, 36200, 5, NULL, 'native'),
    -- #363 Spheal
    (1155, 363, 36300, 5, NULL, 'native'),
    -- #364 Sealeo
    (1156, 364, 36400, 5, NULL, 'native'),
    -- #365 Walrein
    (1157, 365, 36500, 5, NULL, 'native'),
    -- #366 Clamperl
    (1158, 366, 36600, 5, NULL, 'native'),
    -- #367 Huntail
    (1159, 367, 36700, 5, NULL, 'native'),
    -- #368 Gorebyss
    (1160, 368, 36800, 5, NULL, 'native'),
    -- #369 Relicanth
    (1161, 369, 36900, 5, NULL, 'native'),
    -- #370 Luvdisc
    (1162, 370, 37000, 5, NULL, 'native'),
    -- #371 Bagon
    (1163, 371, 37100, 5, NULL, 'native'),
    -- #372 Shelgon
    (1164, 372, 37200, 5, NULL, 'native'),
    -- #373 Salamence
    (1165, 373, 37300, 5, NULL, 'native'),
    -- #374 Beldum
    (1166, 374, 37400, 5, NULL, 'native'),
    -- #375 Metang
    (1167, 375, 37500, 5, NULL, 'native'),
    -- #376 Metagross
    (1168, 376, 37600, 5, NULL, 'native'),
    -- #377 Regirock
    (1169, 377, 37700, 5, NULL, 'native'),
    -- #378 Regice
    (1170, 378, 37800, 5, NULL, 'native'),
    -- #379 Registeel
    (1171, 379, 37900, 5, NULL, 'native'),
    -- #384 Rayquaza
    (1172, 384, 38400, 5, NULL, 'native'),
    -- #385 Jirachi
    (1173, 385, 38500, 5, NULL, 'native'),
    -- #386 Deoxys
    (1174, 386, 38600, 5, NULL, 'native');