-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Paldea Pokedex number.
-- Cross-check: PokemonDB Scarlet / Violet Pokedex, Serebii Paldea Pokedex, and legacy Voydex Paldea Pokedex entry seed.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Paldea Pokedex entries for Pokémon Scarlet / Violet.
-- Paldea contains 400 Pokedex species.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Sprigatito
  (2301, 906, NULL, 1, TRUE),
  -- #002 Floragato
  (2301, 907, NULL, 2, TRUE),
  -- #003 Meowscarada
  (2301, 908, NULL, 3, TRUE),
  -- #004 Fuecoco
  (2301, 909, NULL, 4, TRUE),
  -- #005 Crocalor
  (2301, 910, NULL, 5, TRUE),
  -- #006 Skeledirge
  (2301, 911, NULL, 6, TRUE),
  -- #007 Quaxly
  (2301, 912, NULL, 7, TRUE),
  -- #008 Quaxwell
  (2301, 913, NULL, 8, TRUE),
  -- #009 Quaquaval
  (2301, 914, NULL, 9, TRUE),
  -- #010 Lechonk
  (2301, 915, NULL, 10, TRUE),
  -- #011 Oinkologne
  (2301, 916, NULL, 11, TRUE),
  -- #012 Tarountula
  (2301, 917, NULL, 12, TRUE),
  -- #013 Spidops
  (2301, 918, NULL, 13, TRUE),
  -- #014 Nymble
  (2301, 919, NULL, 14, TRUE),
  -- #015 Lokix
  (2301, 920, NULL, 15, TRUE),
  -- #016 Hoppip
  (2301, 187, NULL, 16, TRUE),
  -- #017 Skiploom
  (2301, 188, NULL, 17, TRUE),
  -- #018 Jumpluff
  (2301, 189, NULL, 18, TRUE),
  -- #019 Fletchling
  (2301, 661, NULL, 19, TRUE),
  -- #020 Fletchinder
  (2301, 662, NULL, 20, TRUE),
  -- #021 Talonflame
  (2301, 663, NULL, 21, TRUE),
  -- #022 Pawmi
  (2301, 921, NULL, 22, TRUE),
  -- #023 Pawmo
  (2301, 922, NULL, 23, TRUE),
  -- #024 Pawmot
  (2301, 923, NULL, 24, TRUE),
  -- #025 Houndour
  (2301, 228, NULL, 25, TRUE),
  -- #026 Houndoom
  (2301, 229, NULL, 26, TRUE),
  -- #027 Yungoos
  (2301, 734, NULL, 27, TRUE),
  -- #028 Gumshoos
  (2301, 735, NULL, 28, TRUE),
  -- #029 Skwovet
  (2301, 819, NULL, 29, TRUE),
  -- #030 Greedent
  (2301, 820, NULL, 30, TRUE),
  -- #031 Sunkern
  (2301, 191, NULL, 31, TRUE),
  -- #032 Sunflora
  (2301, 192, NULL, 32, TRUE),
  -- #033 Kricketot
  (2301, 401, NULL, 33, TRUE),
  -- #034 Kricketune
  (2301, 402, NULL, 34, TRUE),
  -- #035 Scatterbug
  (2301, 664, NULL, 35, TRUE),
  -- #036 Spewpa
  (2301, 665, NULL, 36, TRUE),
  -- #037 Vivillon
  (2301, 666, NULL, 37, TRUE),
  -- #038 Combee
  (2301, 415, NULL, 38, TRUE),
  -- #039 Vespiquen
  (2301, 416, NULL, 39, TRUE),
  -- #040 Rookidee
  (2301, 821, NULL, 40, TRUE),
  -- #041 Corvisquire
  (2301, 822, NULL, 41, TRUE),
  -- #042 Corviknight
  (2301, 823, NULL, 42, TRUE),
  -- #043 Happiny
  (2301, 440, NULL, 43, TRUE),
  -- #044 Chansey
  (2301, 113, NULL, 44, TRUE),
  -- #045 Blissey
  (2301, 242, NULL, 45, TRUE),
  -- #046 Azurill
  (2301, 298, NULL, 46, TRUE),
  -- #047 Marill
  (2301, 183, NULL, 47, TRUE),
  -- #048 Azumarill
  (2301, 184, NULL, 48, TRUE),
  -- #049 Surskit
  (2301, 283, NULL, 49, TRUE),
  -- #050 Masquerain
  (2301, 284, NULL, 50, TRUE),
  -- #051 Buizel
  (2301, 418, NULL, 51, TRUE),
  -- #052 Floatzel
  (2301, 419, NULL, 52, TRUE),
  -- #053 Wooper
  (2301, 194, NULL, 53, TRUE),
  -- #054 Clodsire
  (2301, 980, NULL, 54, TRUE),
  -- #055 Psyduck
  (2301, 54, NULL, 55, TRUE),
  -- #056 Golduck
  (2301, 55, NULL, 56, TRUE),
  -- #057 Chewtle
  (2301, 833, NULL, 57, TRUE),
  -- #058 Drednaw
  (2301, 834, NULL, 58, TRUE),
  -- #059 Igglybuff
  (2301, 174, NULL, 59, TRUE),
  -- #060 Jigglypuff
  (2301, 39, NULL, 60, TRUE),
  -- #061 Wigglytuff
  (2301, 40, NULL, 61, TRUE),
  -- #062 Ralts
  (2301, 280, NULL, 62, TRUE),
  -- #063 Kirlia
  (2301, 281, NULL, 63, TRUE),
  -- #064 Gardevoir
  (2301, 282, NULL, 64, TRUE),
  -- #065 Gallade
  (2301, 475, NULL, 65, TRUE),
  -- #066 Drowzee
  (2301, 96, NULL, 66, TRUE),
  -- #067 Hypno
  (2301, 97, NULL, 67, TRUE),
  -- #068 Gastly
  (2301, 92, NULL, 68, TRUE),
  -- #069 Haunter
  (2301, 93, NULL, 69, TRUE),
  -- #070 Gengar
  (2301, 94, NULL, 70, TRUE),
  -- #071 Tandemaus
  (2301, 924, NULL, 71, TRUE),
  -- #072 Maushold
  (2301, 925, NULL, 72, TRUE),
  -- #073 Pichu
  (2301, 172, NULL, 73, TRUE),
  -- #074 Pikachu
  (2301, 25, NULL, 74, TRUE),
  -- #075 Raichu
  (2301, 26, NULL, 75, TRUE),
  -- #076 Fidough
  (2301, 926, NULL, 76, TRUE),
  -- #077 Dachsbun
  (2301, 927, NULL, 77, TRUE),
  -- #078 Slakoth
  (2301, 287, NULL, 78, TRUE),
  -- #079 Vigoroth
  (2301, 288, NULL, 79, TRUE),
  -- #080 Slaking
  (2301, 289, NULL, 80, TRUE),
  -- #081 Bounsweet
  (2301, 761, NULL, 81, TRUE),
  -- #082 Steenee
  (2301, 762, NULL, 82, TRUE),
  -- #083 Tsareena
  (2301, 763, NULL, 83, TRUE),
  -- #084 Smoliv
  (2301, 928, NULL, 84, TRUE),
  -- #085 Dolliv
  (2301, 929, NULL, 85, TRUE),
  -- #086 Arboliva
  (2301, 930, NULL, 86, TRUE),
  -- #087 Bonsly
  (2301, 438, NULL, 87, TRUE),
  -- #088 Sudowoodo
  (2301, 185, NULL, 88, TRUE),
  -- #089 Rockruff
  (2301, 744, NULL, 89, TRUE),
  -- #090 Lycanroc
  (2301, 745, NULL, 90, TRUE),
  -- #091 Rolycoly
  (2301, 837, NULL, 91, TRUE),
  -- #092 Carkol
  (2301, 838, NULL, 92, TRUE),
  -- #093 Coalossal
  (2301, 839, NULL, 93, TRUE),
  -- #094 Shinx
  (2301, 403, NULL, 94, TRUE),
  -- #095 Luxio
  (2301, 404, NULL, 95, TRUE),
  -- #096 Luxray
  (2301, 405, NULL, 96, TRUE),
  -- #097 Starly
  (2301, 396, NULL, 97, TRUE),
  -- #098 Staravia
  (2301, 397, NULL, 98, TRUE),
  -- #099 Staraptor
  (2301, 398, NULL, 99, TRUE),
  -- #100 Oricorio
  (2301, 741, NULL, 100, TRUE),
  -- #101 Mareep
  (2301, 179, NULL, 101, TRUE),
  -- #102 Flaaffy
  (2301, 180, NULL, 102, TRUE),
  -- #103 Ampharos
  (2301, 181, NULL, 103, TRUE),
  -- #104 Petilil
  (2301, 548, NULL, 104, TRUE),
  -- #105 Lilligant
  (2301, 549, NULL, 105, TRUE),
  -- #106 Shroomish
  (2301, 285, NULL, 106, TRUE),
  -- #107 Breloom
  (2301, 286, NULL, 107, TRUE),
  -- #108 Applin
  (2301, 840, NULL, 108, TRUE),
  -- #109 Flapple
  (2301, 841, NULL, 109, TRUE),
  -- #110 Appletun
  (2301, 842, NULL, 110, TRUE),
  -- #111 Spoink
  (2301, 325, NULL, 111, TRUE),
  -- #112 Grumpig
  (2301, 326, NULL, 112, TRUE),
  -- #113 Squawkabilly
  (2301, 931, NULL, 113, TRUE),
  -- #114 Misdreavus
  (2301, 200, NULL, 114, TRUE),
  -- #115 Mismagius
  (2301, 429, NULL, 115, TRUE),
  -- #116 Makuhita
  (2301, 296, NULL, 116, TRUE),
  -- #117 Hariyama
  (2301, 297, NULL, 117, TRUE),
  -- #118 Crabrawler
  (2301, 739, NULL, 118, TRUE),
  -- #119 Crabominable
  (2301, 740, NULL, 119, TRUE),
  -- #120 Salandit
  (2301, 757, NULL, 120, TRUE),
  -- #121 Salazzle
  (2301, 758, NULL, 121, TRUE),
  -- #122 Phanpy
  (2301, 231, NULL, 122, TRUE),
  -- #123 Donphan
  (2301, 232, NULL, 123, TRUE),
  -- #124 Cufant
  (2301, 878, NULL, 124, TRUE),
  -- #125 Copperajah
  (2301, 879, NULL, 125, TRUE),
  -- #126 Gible
  (2301, 443, NULL, 126, TRUE),
  -- #127 Gabite
  (2301, 444, NULL, 127, TRUE),
  -- #128 Garchomp
  (2301, 445, NULL, 128, TRUE),
  -- #129 Nacli
  (2301, 932, NULL, 129, TRUE),
  -- #130 Naclstack
  (2301, 933, NULL, 130, TRUE),
  -- #131 Garganacl
  (2301, 934, NULL, 131, TRUE),
  -- #132 Wingull
  (2301, 278, NULL, 132, TRUE),
  -- #133 Pelipper
  (2301, 279, NULL, 133, TRUE),
  -- #134 Magikarp
  (2301, 129, NULL, 134, TRUE),
  -- #135 Gyarados
  (2301, 130, NULL, 135, TRUE),
  -- #136 Arrokuda
  (2301, 846, NULL, 136, TRUE),
  -- #137 Barraskewda
  (2301, 847, NULL, 137, TRUE),
  -- #138 Basculin
  (2301, 550, NULL, 138, TRUE),
  -- #139 Gulpin
  (2301, 316, NULL, 139, TRUE),
  -- #140 Swalot
  (2301, 317, NULL, 140, TRUE),
  -- #141 Meowth
  (2301, 52, NULL, 141, TRUE),
  -- #142 Persian
  (2301, 53, NULL, 142, TRUE),
  -- #143 Drifloon
  (2301, 425, NULL, 143, TRUE),
  -- #144 Drifblim
  (2301, 426, NULL, 144, TRUE),
  -- #145 Flabebe
  (2301, 669, NULL, 145, TRUE),
  -- #146 Floette
  (2301, 670, NULL, 146, TRUE),
  -- #147 Florges
  (2301, 671, NULL, 147, TRUE),
  -- #148 Diglett
  (2301, 50, NULL, 148, TRUE),
  -- #149 Dugtrio
  (2301, 51, NULL, 149, TRUE),
  -- #150 Torkoal
  (2301, 324, NULL, 150, TRUE),
  -- #151 Numel
  (2301, 322, NULL, 151, TRUE),
  -- #152 Camerupt
  (2301, 323, NULL, 152, TRUE),
  -- #153 Bronzor
  (2301, 436, NULL, 153, TRUE),
  -- #154 Bronzong
  (2301, 437, NULL, 154, TRUE),
  -- #155 Axew
  (2301, 610, NULL, 155, TRUE),
  -- #156 Fraxure
  (2301, 611, NULL, 156, TRUE),
  -- #157 Haxorus
  (2301, 612, NULL, 157, TRUE),
  -- #158 Mankey
  (2301, 56, NULL, 158, TRUE),
  -- #159 Primeape
  (2301, 57, NULL, 159, TRUE),
  -- #160 Annihilape
  (2301, 979, NULL, 160, TRUE),
  -- #161 Meditite
  (2301, 307, NULL, 161, TRUE),
  -- #162 Medicham
  (2301, 308, NULL, 162, TRUE),
  -- #163 Riolu
  (2301, 447, NULL, 163, TRUE),
  -- #164 Lucario
  (2301, 448, NULL, 164, TRUE),
  -- #165 Charcadet
  (2301, 935, NULL, 165, TRUE),
  -- #166 Armarouge
  (2301, 936, NULL, 166, TRUE),
  -- #167 Ceruledge
  (2301, 937, NULL, 167, TRUE),
  -- #168 Barboach
  (2301, 339, NULL, 168, TRUE),
  -- #169 Whiscash
  (2301, 340, NULL, 169, TRUE),
  -- #170 Tadbulb
  (2301, 938, NULL, 170, TRUE),
  -- #171 Bellibolt
  (2301, 939, NULL, 171, TRUE),
  -- #172 Goomy
  (2301, 704, NULL, 172, TRUE),
  -- #173 Sliggoo
  (2301, 705, NULL, 173, TRUE),
  -- #174 Goodra
  (2301, 706, NULL, 174, TRUE),
  -- #175 Croagunk
  (2301, 453, NULL, 175, TRUE),
  -- #176 Toxicroak
  (2301, 454, NULL, 176, TRUE),
  -- #177 Wattrel
  (2301, 940, NULL, 177, TRUE),
  -- #178 Kilowattrel
  (2301, 941, NULL, 178, TRUE),
  -- #179 Eevee
  (2301, 133, NULL, 179, TRUE),
  -- #180 Vaporeon
  (2301, 134, NULL, 180, TRUE),
  -- #181 Jolteon
  (2301, 135, NULL, 181, TRUE),
  -- #182 Flareon
  (2301, 136, NULL, 182, TRUE),
  -- #183 Espeon
  (2301, 196, NULL, 183, TRUE),
  -- #184 Umbreon
  (2301, 197, NULL, 184, TRUE),
  -- #185 Leafeon
  (2301, 470, NULL, 185, TRUE),
  -- #186 Glaceon
  (2301, 471, NULL, 186, TRUE),
  -- #187 Sylveon
  (2301, 700, NULL, 187, TRUE),
  -- #188 Dunsparce
  (2301, 206, NULL, 188, TRUE),
  -- #189 Dudunsparce
  (2301, 982, NULL, 189, TRUE),
  -- #190 Deerling
  (2301, 585, NULL, 190, TRUE),
  -- #191 Sawsbuck
  (2301, 586, NULL, 191, TRUE),
  -- #192 Girafarig
  (2301, 203, NULL, 192, TRUE),
  -- #193 Farigiraf
  (2301, 981, NULL, 193, TRUE),
  -- #194 Grimer
  (2301, 88, NULL, 194, TRUE),
  -- #195 Muk
  (2301, 89, NULL, 195, TRUE),
  -- #196 Maschiff
  (2301, 942, NULL, 196, TRUE),
  -- #197 Mabosstiff
  (2301, 943, NULL, 197, TRUE),
  -- #198 Toxel
  (2301, 848, NULL, 198, TRUE),
  -- #199 Toxtricity
  (2301, 849, NULL, 199, TRUE),
  -- #200 Dedenne
  (2301, 702, NULL, 200, TRUE),
  -- #201 Pachirisu
  (2301, 417, NULL, 201, TRUE),
  -- #202 Shroodle
  (2301, 944, NULL, 202, TRUE),
  -- #203 Grafaiai
  (2301, 945, NULL, 203, TRUE),
  -- #204 Stantler
  (2301, 234, NULL, 204, TRUE),
  -- #205 Foongus
  (2301, 590, NULL, 205, TRUE),
  -- #206 Amoonguss
  (2301, 591, NULL, 206, TRUE),
  -- #207 Voltorb
  (2301, 100, NULL, 207, TRUE),
  -- #208 Electrode
  (2301, 101, NULL, 208, TRUE),
  -- #209 Magnemite
  (2301, 81, NULL, 209, TRUE),
  -- #210 Magneton
  (2301, 82, NULL, 210, TRUE),
  -- #211 Magnezone
  (2301, 462, NULL, 211, TRUE),
  -- #212 Ditto
  (2301, 132, NULL, 212, TRUE),
  -- #213 Growlithe
  (2301, 58, NULL, 213, TRUE),
  -- #214 Arcanine
  (2301, 59, NULL, 214, TRUE),
  -- #215 Teddiursa
  (2301, 216, NULL, 215, TRUE),
  -- #216 Ursaring
  (2301, 217, NULL, 216, TRUE),
  -- #217 Zangoose
  (2301, 335, NULL, 217, TRUE),
  -- #218 Seviper
  (2301, 336, NULL, 218, TRUE),
  -- #219 Swablu
  (2301, 333, NULL, 219, TRUE),
  -- #220 Altaria
  (2301, 334, NULL, 220, TRUE),
  -- #221 Skiddo
  (2301, 672, NULL, 221, TRUE),
  -- #222 Gogoat
  (2301, 673, NULL, 222, TRUE),
  -- #223 Tauros
  (2301, 128, NULL, 223, TRUE),
  -- #224 Litleo
  (2301, 667, NULL, 224, TRUE),
  -- #225 Pyroar
  (2301, 668, NULL, 225, TRUE),
  -- #226 Stunky
  (2301, 434, NULL, 226, TRUE),
  -- #227 Skuntank
  (2301, 435, NULL, 227, TRUE),
  -- #228 Zorua
  (2301, 570, NULL, 228, TRUE),
  -- #229 Zoroark
  (2301, 571, NULL, 229, TRUE),
  -- #230 Sneasel
  (2301, 215, NULL, 230, TRUE),
  -- #231 Weavile
  (2301, 461, NULL, 231, TRUE),
  -- #232 Murkrow
  (2301, 198, NULL, 232, TRUE),
  -- #233 Honchkrow
  (2301, 430, NULL, 233, TRUE),
  -- #234 Gothita
  (2301, 574, NULL, 234, TRUE),
  -- #235 Gothorita
  (2301, 575, NULL, 235, TRUE),
  -- #236 Gothitelle
  (2301, 576, NULL, 236, TRUE),
  -- #237 Sinistea
  (2301, 854, NULL, 237, TRUE),
  -- #238 Polteageist
  (2301, 855, NULL, 238, TRUE),
  -- #239 Mimikyu
  (2301, 778, NULL, 239, TRUE),
  -- #240 Klefki
  (2301, 707, NULL, 240, TRUE),
  -- #241 Indeedee
  (2301, 876, NULL, 241, TRUE),
  -- #242 Bramblin
  (2301, 946, NULL, 242, TRUE),
  -- #243 Brambleghast
  (2301, 947, NULL, 243, TRUE),
  -- #244 Toedscool
  (2301, 948, NULL, 244, TRUE),
  -- #245 Toedscruel
  (2301, 949, NULL, 245, TRUE),
  -- #246 Tropius
  (2301, 357, NULL, 246, TRUE),
  -- #247 Fomantis
  (2301, 753, NULL, 247, TRUE),
  -- #248 Lurantis
  (2301, 754, NULL, 248, TRUE),
  -- #249 Klawf
  (2301, 950, NULL, 249, TRUE),
  -- #250 Capsakid
  (2301, 951, NULL, 250, TRUE),
  -- #251 Scovillain
  (2301, 952, NULL, 251, TRUE),
  -- #252 Cacnea
  (2301, 331, NULL, 252, TRUE),
  -- #253 Cacturne
  (2301, 332, NULL, 253, TRUE),
  -- #254 Rellor
  (2301, 953, NULL, 254, TRUE),
  -- #255 Rabsca
  (2301, 954, NULL, 255, TRUE),
  -- #256 Venonat
  (2301, 48, NULL, 256, TRUE),
  -- #257 Venomoth
  (2301, 49, NULL, 257, TRUE),
  -- #258 Pineco
  (2301, 204, NULL, 258, TRUE),
  -- #259 Forretress
  (2301, 205, NULL, 259, TRUE),
  -- #260 Scyther
  (2301, 123, NULL, 260, TRUE),
  -- #261 Scizor
  (2301, 212, NULL, 261, TRUE),
  -- #262 Heracross
  (2301, 214, NULL, 262, TRUE),
  -- #263 Flittle
  (2301, 955, NULL, 263, TRUE),
  -- #264 Espathra
  (2301, 956, NULL, 264, TRUE),
  -- #265 Hippopotas
  (2301, 449, NULL, 265, TRUE),
  -- #266 Hippowdon
  (2301, 450, NULL, 266, TRUE),
  -- #267 Sandile
  (2301, 551, NULL, 267, TRUE),
  -- #268 Krokorok
  (2301, 552, NULL, 268, TRUE),
  -- #269 Krookodile
  (2301, 553, NULL, 269, TRUE),
  -- #270 Silicobra
  (2301, 843, NULL, 270, TRUE),
  -- #271 Sandaconda
  (2301, 844, NULL, 271, TRUE),
  -- #272 Mudbray
  (2301, 749, NULL, 272, TRUE),
  -- #273 Mudsdale
  (2301, 750, NULL, 273, TRUE),
  -- #274 Larvesta
  (2301, 636, NULL, 274, TRUE),
  -- #275 Volcarona
  (2301, 637, NULL, 275, TRUE),
  -- #276 Bagon
  (2301, 371, NULL, 276, TRUE),
  -- #277 Shelgon
  (2301, 372, NULL, 277, TRUE),
  -- #278 Salamence
  (2301, 373, NULL, 278, TRUE),
  -- #279 Tinkatink
  (2301, 957, NULL, 279, TRUE),
  -- #280 Tinkatuff
  (2301, 958, NULL, 280, TRUE),
  -- #281 Tinkaton
  (2301, 959, NULL, 281, TRUE),
  -- #282 Hatenna
  (2301, 856, NULL, 282, TRUE),
  -- #283 Hattrem
  (2301, 857, NULL, 283, TRUE),
  -- #284 Hatterene
  (2301, 858, NULL, 284, TRUE),
  -- #285 Impidimp
  (2301, 859, NULL, 285, TRUE),
  -- #286 Morgrem
  (2301, 860, NULL, 286, TRUE),
  -- #287 Grimmsnarl
  (2301, 861, NULL, 287, TRUE),
  -- #288 Wiglett
  (2301, 960, NULL, 288, TRUE),
  -- #289 Wugtrio
  (2301, 961, NULL, 289, TRUE),
  -- #290 Bombirdier
  (2301, 962, NULL, 290, TRUE),
  -- #291 Finizen
  (2301, 963, NULL, 291, TRUE),
  -- #292 Palafin
  (2301, 964, NULL, 292, TRUE),
  -- #293 Varoom
  (2301, 965, NULL, 293, TRUE),
  -- #294 Revavroom
  (2301, 966, NULL, 294, TRUE),
  -- #295 Cyclizar
  (2301, 967, NULL, 295, TRUE),
  -- #296 Orthworm
  (2301, 968, NULL, 296, TRUE),
  -- #297 Sableye
  (2301, 302, NULL, 297, TRUE),
  -- #298 Shuppet
  (2301, 353, NULL, 298, TRUE),
  -- #299 Banette
  (2301, 354, NULL, 299, TRUE),
  -- #300 Falinks
  (2301, 870, NULL, 300, TRUE),
  -- #301 Hawlucha
  (2301, 701, NULL, 301, TRUE),
  -- #302 Spiritomb
  (2301, 442, NULL, 302, TRUE),
  -- #303 Noibat
  (2301, 714, NULL, 303, TRUE),
  -- #304 Noivern
  (2301, 715, NULL, 304, TRUE),
  -- #305 Dreepy
  (2301, 885, NULL, 305, TRUE),
  -- #306 Drakloak
  (2301, 886, NULL, 306, TRUE),
  -- #307 Dragapult
  (2301, 887, NULL, 307, TRUE),
  -- #308 Glimmet
  (2301, 969, NULL, 308, TRUE),
  -- #309 Glimmora
  (2301, 970, NULL, 309, TRUE),
  -- #310 Rotom
  (2301, 479, NULL, 310, TRUE),
  -- #311 Greavard
  (2301, 971, NULL, 311, TRUE),
  -- #312 Houndstone
  (2301, 972, NULL, 312, TRUE),
  -- #313 Oranguru
  (2301, 765, NULL, 313, TRUE),
  -- #314 Passimian
  (2301, 766, NULL, 314, TRUE),
  -- #315 Komala
  (2301, 775, NULL, 315, TRUE),
  -- #316 Larvitar
  (2301, 246, NULL, 316, TRUE),
  -- #317 Pupitar
  (2301, 247, NULL, 317, TRUE),
  -- #318 Tyranitar
  (2301, 248, NULL, 318, TRUE),
  -- #319 Stonjourner
  (2301, 874, NULL, 319, TRUE),
  -- #320 Eiscue
  (2301, 875, NULL, 320, TRUE),
  -- #321 Pincurchin
  (2301, 871, NULL, 321, TRUE),
  -- #322 Sandygast
  (2301, 769, NULL, 322, TRUE),
  -- #323 Palossand
  (2301, 770, NULL, 323, TRUE),
  -- #324 Slowpoke
  (2301, 79, NULL, 324, TRUE),
  -- #325 Slowbro
  (2301, 80, NULL, 325, TRUE),
  -- #326 Slowking
  (2301, 199, NULL, 326, TRUE),
  -- #327 Shellos
  (2301, 422, NULL, 327, TRUE),
  -- #328 Gastrodon
  (2301, 423, NULL, 328, TRUE),
  -- #329 Shellder
  (2301, 90, NULL, 329, TRUE),
  -- #330 Cloyster
  (2301, 91, NULL, 330, TRUE),
  -- #331 Qwilfish
  (2301, 211, NULL, 331, TRUE),
  -- #332 Luvdisc
  (2301, 370, NULL, 332, TRUE),
  -- #333 Finneon
  (2301, 456, NULL, 333, TRUE),
  -- #334 Lumineon
  (2301, 457, NULL, 334, TRUE),
  -- #335 Bruxish
  (2301, 779, NULL, 335, TRUE),
  -- #336 Alomomola
  (2301, 594, NULL, 336, TRUE),
  -- #337 Skrelp
  (2301, 690, NULL, 337, TRUE),
  -- #338 Dragalge
  (2301, 691, NULL, 338, TRUE),
  -- #339 Clauncher
  (2301, 692, NULL, 339, TRUE),
  -- #340 Clawitzer
  (2301, 693, NULL, 340, TRUE),
  -- #341 Tynamo
  (2301, 602, NULL, 341, TRUE),
  -- #342 Eelektrik
  (2301, 603, NULL, 342, TRUE),
  -- #343 Eelektross
  (2301, 604, NULL, 343, TRUE),
  -- #344 Mareanie
  (2301, 747, NULL, 344, TRUE),
  -- #345 Toxapex
  (2301, 748, NULL, 345, TRUE),
  -- #346 Flamigo
  (2301, 973, NULL, 346, TRUE),
  -- #347 Dratini
  (2301, 147, NULL, 347, TRUE),
  -- #348 Dragonair
  (2301, 148, NULL, 348, TRUE),
  -- #349 Dragonite
  (2301, 149, NULL, 349, TRUE),
  -- #350 Snom
  (2301, 872, NULL, 350, TRUE),
  -- #351 Frosmoth
  (2301, 873, NULL, 351, TRUE),
  -- #352 Snover
  (2301, 459, NULL, 352, TRUE),
  -- #353 Abomasnow
  (2301, 460, NULL, 353, TRUE),
  -- #354 Delibird
  (2301, 225, NULL, 354, TRUE),
  -- #355 Cubchoo
  (2301, 613, NULL, 355, TRUE),
  -- #356 Beartic
  (2301, 614, NULL, 356, TRUE),
  -- #357 Snorunt
  (2301, 361, NULL, 357, TRUE),
  -- #358 Glalie
  (2301, 362, NULL, 358, TRUE),
  -- #359 Froslass
  (2301, 478, NULL, 359, TRUE),
  -- #360 Cryogonal
  (2301, 615, NULL, 360, TRUE),
  -- #361 Cetoddle
  (2301, 974, NULL, 361, TRUE),
  -- #362 Cetitan
  (2301, 975, NULL, 362, TRUE),
  -- #363 Bergmite
  (2301, 712, NULL, 363, TRUE),
  -- #364 Avalugg
  (2301, 713, NULL, 364, TRUE),
  -- #365 Rufflet
  (2301, 627, NULL, 365, TRUE),
  -- #366 Braviary
  (2301, 628, NULL, 366, TRUE),
  -- #367 Pawniard
  (2301, 624, NULL, 367, TRUE),
  -- #368 Bisharp
  (2301, 625, NULL, 368, TRUE),
  -- #369 Kingambit
  (2301, 983, NULL, 369, TRUE),
  -- #370 Deino
  (2301, 633, NULL, 370, TRUE),
  -- #371 Zweilous
  (2301, 634, NULL, 371, TRUE),
  -- #372 Hydreigon
  (2301, 635, NULL, 372, TRUE),
  -- #373 Veluza
  (2301, 976, NULL, 373, TRUE),
  -- #374 Dondozo
  (2301, 977, NULL, 374, TRUE),
  -- #375 Tatsugiri
  (2301, 978, NULL, 375, TRUE),
  -- #376 Great Tusk
  (2301, 984, NULL, 376, TRUE),
  -- #377 Scream Tail
  (2301, 985, NULL, 377, TRUE),
  -- #378 Brute Bonnet
  (2301, 986, NULL, 378, TRUE),
  -- #379 Flutter Mane
  (2301, 987, NULL, 379, TRUE),
  -- #380 Slither Wing
  (2301, 988, NULL, 380, TRUE),
  -- #381 Sandy Shocks
  (2301, 989, NULL, 381, TRUE),
  -- #382 Iron Treads
  (2301, 990, NULL, 382, TRUE),
  -- #383 Iron Bundle
  (2301, 991, NULL, 383, TRUE),
  -- #384 Iron Hands
  (2301, 992, NULL, 384, TRUE),
  -- #385 Iron Jugulis
  (2301, 993, NULL, 385, TRUE),
  -- #386 Iron Moth
  (2301, 994, NULL, 386, TRUE),
  -- #387 Iron Thorns
  (2301, 995, NULL, 387, TRUE),
  -- #388 Frigibax
  (2301, 996, NULL, 388, TRUE),
  -- #389 Arctibax
  (2301, 997, NULL, 389, TRUE),
  -- #390 Baxcalibur
  (2301, 998, NULL, 390, TRUE),
  -- #391 Gimmighoul
  (2301, 999, NULL, 391, TRUE),
  -- #392 Gholdengo
  (2301, 1000, NULL, 392, TRUE),
  -- #393 Wo-Chien
  (2301, 1001, NULL, 393, TRUE),
  -- #394 Chien-Pao
  (2301, 1002, NULL, 394, TRUE),
  -- #395 Ting-Lu
  (2301, 1003, NULL, 395, TRUE),
  -- #396 Chi-Yu
  (2301, 1004, NULL, 396, TRUE),
  -- #397 Roaring Moon
  (2301, 1005, NULL, 397, TRUE),
  -- #398 Iron Valiant
  (2301, 1006, NULL, 398, TRUE),
  -- #399 Koraidon
  (2301, 1007, NULL, 399, TRUE),
  -- #400 Miraidon
  (2301, 1008, NULL, 400, TRUE);

