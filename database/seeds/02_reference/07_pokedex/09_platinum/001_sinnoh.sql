-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Sinnoh Pokedex number in Platinum.
-- Cross-check: PokemonDB Platinum Pokedex and legacy Voydex Platinum Pokedex entry seed.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Enhanced Sinnoh Pokedex entries for Platinum.
-- Platinum expands the Sinnoh Pokedex to 210 entries.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Turtwig
  (901, 387, NULL, 1, TRUE),
  -- #002 Grotle
  (901, 388, NULL, 2, TRUE),
  -- #003 Torterra
  (901, 389, NULL, 3, TRUE),
  -- #004 Chimchar
  (901, 390, NULL, 4, TRUE),
  -- #005 Monferno
  (901, 391, NULL, 5, TRUE),
  -- #006 Infernape
  (901, 392, NULL, 6, TRUE),
  -- #007 Piplup
  (901, 393, NULL, 7, TRUE),
  -- #008 Prinplup
  (901, 394, NULL, 8, TRUE),
  -- #009 Empoleon
  (901, 395, NULL, 9, TRUE),
  -- #010 Starly
  (901, 396, NULL, 10, TRUE),
  -- #011 Staravia
  (901, 397, NULL, 11, TRUE),
  -- #012 Staraptor
  (901, 398, NULL, 12, TRUE),
  -- #013 Bidoof
  (901, 399, NULL, 13, TRUE),
  -- #014 Bibarel
  (901, 400, NULL, 14, TRUE),
  -- #015 Kricketot
  (901, 401, NULL, 15, TRUE),
  -- #016 Kricketune
  (901, 402, NULL, 16, TRUE),
  -- #017 Shinx
  (901, 403, NULL, 17, TRUE),
  -- #018 Luxio
  (901, 404, NULL, 18, TRUE),
  -- #019 Luxray
  (901, 405, NULL, 19, TRUE),
  -- #020 Abra
  (901, 63, NULL, 20, TRUE),
  -- #021 Kadabra
  (901, 64, NULL, 21, TRUE),
  -- #022 Alakazam
  (901, 65, NULL, 22, TRUE),
  -- #023 Magikarp
  (901, 129, NULL, 23, TRUE),
  -- #024 Gyarados
  (901, 130, NULL, 24, TRUE),
  -- #025 Budew
  (901, 406, NULL, 25, TRUE),
  -- #026 Roselia
  (901, 315, NULL, 26, TRUE),
  -- #027 Roserade
  (901, 407, NULL, 27, TRUE),
  -- #028 Zubat
  (901, 41, NULL, 28, TRUE),
  -- #029 Golbat
  (901, 42, NULL, 29, TRUE),
  -- #030 Crobat
  (901, 169, NULL, 30, TRUE),
  -- #031 Geodude
  (901, 74, NULL, 31, TRUE),
  -- #032 Graveler
  (901, 75, NULL, 32, TRUE),
  -- #033 Golem
  (901, 76, NULL, 33, TRUE),
  -- #034 Onix
  (901, 95, NULL, 34, TRUE),
  -- #035 Steelix
  (901, 208, NULL, 35, TRUE),
  -- #036 Cranidos
  (901, 408, NULL, 36, TRUE),
  -- #037 Rampardos
  (901, 409, NULL, 37, TRUE),
  -- #038 Shieldon
  (901, 410, NULL, 38, TRUE),
  -- #039 Bastiodon
  (901, 411, NULL, 39, TRUE),
  -- #040 Machop
  (901, 66, NULL, 40, TRUE),
  -- #041 Machoke
  (901, 67, NULL, 41, TRUE),
  -- #042 Machamp
  (901, 68, NULL, 42, TRUE),
  -- #043 Psyduck
  (901, 54, NULL, 43, TRUE),
  -- #044 Golduck
  (901, 55, NULL, 44, TRUE),
  -- #045 Burmy
  (901, 412, NULL, 45, TRUE),
  -- #046 Wormadam
  (901, 413, NULL, 46, TRUE),
  -- #047 Mothim
  (901, 414, NULL, 47, TRUE),
  -- #048 Wurmple
  (901, 265, NULL, 48, TRUE),
  -- #049 Silcoon
  (901, 266, NULL, 49, TRUE),
  -- #050 Beautifly
  (901, 267, NULL, 50, TRUE),
  -- #051 Cascoon
  (901, 268, NULL, 51, TRUE),
  -- #052 Dustox
  (901, 269, NULL, 52, TRUE),
  -- #053 Combee
  (901, 415, NULL, 53, TRUE),
  -- #054 Vespiquen
  (901, 416, NULL, 54, TRUE),
  -- #055 Pachirisu
  (901, 417, NULL, 55, TRUE),
  -- #056 Buizel
  (901, 418, NULL, 56, TRUE),
  -- #057 Floatzel
  (901, 419, NULL, 57, TRUE),
  -- #058 Cherubi
  (901, 420, NULL, 58, TRUE),
  -- #059 Cherrim
  (901, 421, NULL, 59, TRUE),
  -- #060 Shellos
  (901, 422, NULL, 60, TRUE),
  -- #061 Gastrodon
  (901, 423, NULL, 61, TRUE),
  -- #062 Heracross
  (901, 214, NULL, 62, TRUE),
  -- #063 Aipom
  (901, 190, NULL, 63, TRUE),
  -- #064 Ambipom
  (901, 424, NULL, 64, TRUE),
  -- #065 Drifloon
  (901, 425, NULL, 65, TRUE),
  -- #066 Drifblim
  (901, 426, NULL, 66, TRUE),
  -- #067 Buneary
  (901, 427, NULL, 67, TRUE),
  -- #068 Lopunny
  (901, 428, NULL, 68, TRUE),
  -- #069 Gastly
  (901, 92, NULL, 69, TRUE),
  -- #070 Haunter
  (901, 93, NULL, 70, TRUE),
  -- #071 Gengar
  (901, 94, NULL, 71, TRUE),
  -- #072 Misdreavus
  (901, 200, NULL, 72, TRUE),
  -- #073 Mismagius
  (901, 429, NULL, 73, TRUE),
  -- #074 Murkrow
  (901, 198, NULL, 74, TRUE),
  -- #075 Honchkrow
  (901, 430, NULL, 75, TRUE),
  -- #076 Glameow
  (901, 431, NULL, 76, TRUE),
  -- #077 Purugly
  (901, 432, NULL, 77, TRUE),
  -- #078 Goldeen
  (901, 118, NULL, 78, TRUE),
  -- #079 Seaking
  (901, 119, NULL, 79, TRUE),
  -- #080 Barboach
  (901, 339, NULL, 80, TRUE),
  -- #081 Whiscash
  (901, 340, NULL, 81, TRUE),
  -- #082 Chingling
  (901, 433, NULL, 82, TRUE),
  -- #083 Chimecho
  (901, 358, NULL, 83, TRUE),
  -- #084 Stunky
  (901, 434, NULL, 84, TRUE),
  -- #085 Skuntank
  (901, 435, NULL, 85, TRUE),
  -- #086 Meditite
  (901, 307, NULL, 86, TRUE),
  -- #087 Medicham
  (901, 308, NULL, 87, TRUE),
  -- #088 Bronzor
  (901, 436, NULL, 88, TRUE),
  -- #089 Bronzong
  (901, 437, NULL, 89, TRUE),
  -- #090 Ponyta
  (901, 77, NULL, 90, TRUE),
  -- #091 Rapidash
  (901, 78, NULL, 91, TRUE),
  -- #092 Bonsly
  (901, 438, NULL, 92, TRUE),
  -- #093 Sudowoodo
  (901, 185, NULL, 93, TRUE),
  -- #094 Mime Jr.
  (901, 439, NULL, 94, TRUE),
  -- #095 Mr. Mime
  (901, 122, NULL, 95, TRUE),
  -- #096 Happiny
  (901, 440, NULL, 96, TRUE),
  -- #097 Chansey
  (901, 113, NULL, 97, TRUE),
  -- #098 Blissey
  (901, 242, NULL, 98, TRUE),
  -- #099 Cleffa
  (901, 173, NULL, 99, TRUE),
  -- #100 Clefairy
  (901, 35, NULL, 100, TRUE),
  -- #101 Clefable
  (901, 36, NULL, 101, TRUE),
  -- #102 Chatot
  (901, 441, NULL, 102, TRUE),
  -- #103 Pichu
  (901, 172, NULL, 103, TRUE),
  -- #104 Pikachu
  (901, 25, NULL, 104, TRUE),
  -- #105 Raichu
  (901, 26, NULL, 105, TRUE),
  -- #106 Hoothoot
  (901, 163, NULL, 106, TRUE),
  -- #107 Noctowl
  (901, 164, NULL, 107, TRUE),
  -- #108 Spiritomb
  (901, 442, NULL, 108, TRUE),
  -- #109 Gible
  (901, 443, NULL, 109, TRUE),
  -- #110 Gabite
  (901, 444, NULL, 110, TRUE),
  -- #111 Garchomp
  (901, 445, NULL, 111, TRUE),
  -- #112 Munchlax
  (901, 446, NULL, 112, TRUE),
  -- #113 Snorlax
  (901, 143, NULL, 113, TRUE),
  -- #114 Unown
  (901, 201, NULL, 114, TRUE),
  -- #115 Riolu
  (901, 447, NULL, 115, TRUE),
  -- #116 Lucario
  (901, 448, NULL, 116, TRUE),
  -- #117 Wooper
  (901, 194, NULL, 117, TRUE),
  -- #118 Quagsire
  (901, 195, NULL, 118, TRUE),
  -- #119 Wingull
  (901, 278, NULL, 119, TRUE),
  -- #120 Pelipper
  (901, 279, NULL, 120, TRUE),
  -- #121 Girafarig
  (901, 203, NULL, 121, TRUE),
  -- #122 Hippopotas
  (901, 449, NULL, 122, TRUE),
  -- #123 Hippowdon
  (901, 450, NULL, 123, TRUE),
  -- #124 Azurill
  (901, 298, NULL, 124, TRUE),
  -- #125 Marill
  (901, 183, NULL, 125, TRUE),
  -- #126 Azumarill
  (901, 184, NULL, 126, TRUE),
  -- #127 Skorupi
  (901, 451, NULL, 127, TRUE),
  -- #128 Drapion
  (901, 452, NULL, 128, TRUE),
  -- #129 Croagunk
  (901, 453, NULL, 129, TRUE),
  -- #130 Toxicroak
  (901, 454, NULL, 130, TRUE),
  -- #131 Carnivine
  (901, 455, NULL, 131, TRUE),
  -- #132 Remoraid
  (901, 223, NULL, 132, TRUE),
  -- #133 Octillery
  (901, 224, NULL, 133, TRUE),
  -- #134 Finneon
  (901, 456, NULL, 134, TRUE),
  -- #135 Lumineon
  (901, 457, NULL, 135, TRUE),
  -- #136 Tentacool
  (901, 72, NULL, 136, TRUE),
  -- #137 Tentacruel
  (901, 73, NULL, 137, TRUE),
  -- #138 Feebas
  (901, 349, NULL, 138, TRUE),
  -- #139 Milotic
  (901, 350, NULL, 139, TRUE),
  -- #140 Mantyke
  (901, 458, NULL, 140, TRUE),
  -- #141 Mantine
  (901, 226, NULL, 141, TRUE),
  -- #142 Snover
  (901, 459, NULL, 142, TRUE),
  -- #143 Abomasnow
  (901, 460, NULL, 143, TRUE),
  -- #144 Sneasel
  (901, 215, NULL, 144, TRUE),
  -- #145 Weavile
  (901, 461, NULL, 145, TRUE),
  -- #146 Uxie
  (901, 480, NULL, 146, TRUE),
  -- #147 Mesprit
  (901, 481, NULL, 147, TRUE),
  -- #148 Azelf
  (901, 482, NULL, 148, TRUE),
  -- #149 Dialga
  (901, 483, NULL, 149, TRUE),
  -- #150 Palkia
  (901, 484, NULL, 150, TRUE),
  -- #151 Manaphy
  (901, 490, NULL, 151, TRUE),
  -- #152 Rotom
  (901, 479, NULL, 152, TRUE),
  -- #153 Gligar
  (901, 207, NULL, 153, TRUE),
  -- #154 Gliscor
  (901, 472, NULL, 154, TRUE),
  -- #155 Nosepass
  (901, 299, NULL, 155, TRUE),
  -- #156 Probopass
  (901, 476, NULL, 156, TRUE),
  -- #157 Ralts
  (901, 280, NULL, 157, TRUE),
  -- #158 Kirlia
  (901, 281, NULL, 158, TRUE),
  -- #159 Gardevoir
  (901, 282, NULL, 159, TRUE),
  -- #160 Gallade
  (901, 475, NULL, 160, TRUE),
  -- #161 Lickitung
  (901, 108, NULL, 161, TRUE),
  -- #162 Lickilicky
  (901, 463, NULL, 162, TRUE),
  -- #163 Eevee
  (901, 133, NULL, 163, TRUE),
  -- #164 Vaporeon
  (901, 134, NULL, 164, TRUE),
  -- #165 Jolteon
  (901, 135, NULL, 165, TRUE),
  -- #166 Flareon
  (901, 136, NULL, 166, TRUE),
  -- #167 Espeon
  (901, 196, NULL, 167, TRUE),
  -- #168 Umbreon
  (901, 197, NULL, 168, TRUE),
  -- #169 Leafeon
  (901, 470, NULL, 169, TRUE),
  -- #170 Glaceon
  (901, 471, NULL, 170, TRUE),
  -- #171 Swablu
  (901, 333, NULL, 171, TRUE),
  -- #172 Altaria
  (901, 334, NULL, 172, TRUE),
  -- #173 Togepi
  (901, 175, NULL, 173, TRUE),
  -- #174 Togetic
  (901, 176, NULL, 174, TRUE),
  -- #175 Togekiss
  (901, 468, NULL, 175, TRUE),
  -- #176 Houndour
  (901, 228, NULL, 176, TRUE),
  -- #177 Houndoom
  (901, 229, NULL, 177, TRUE),
  -- #178 Magnemite
  (901, 81, NULL, 178, TRUE),
  -- #179 Magneton
  (901, 82, NULL, 179, TRUE),
  -- #180 Magnezone
  (901, 462, NULL, 180, TRUE),
  -- #181 Tangela
  (901, 114, NULL, 181, TRUE),
  -- #182 Tangrowth
  (901, 465, NULL, 182, TRUE),
  -- #183 Yanma
  (901, 193, NULL, 183, TRUE),
  -- #184 Yanmega
  (901, 469, NULL, 184, TRUE),
  -- #185 Tropius
  (901, 357, NULL, 185, TRUE),
  -- #186 Rhyhorn
  (901, 111, NULL, 186, TRUE),
  -- #187 Rhydon
  (901, 112, NULL, 187, TRUE),
  -- #188 Rhyperior
  (901, 464, NULL, 188, TRUE),
  -- #189 Duskull
  (901, 355, NULL, 189, TRUE),
  -- #190 Dusclops
  (901, 356, NULL, 190, TRUE),
  -- #191 Dusknoir
  (901, 477, NULL, 191, TRUE),
  -- #192 Porygon
  (901, 137, NULL, 192, TRUE),
  -- #193 Porygon2
  (901, 233, NULL, 193, TRUE),
  -- #194 Porygon-Z
  (901, 474, NULL, 194, TRUE),
  -- #195 Scyther
  (901, 123, NULL, 195, TRUE),
  -- #196 Scizor
  (901, 212, NULL, 196, TRUE),
  -- #197 Elekid
  (901, 239, NULL, 197, TRUE),
  -- #198 Electabuzz
  (901, 125, NULL, 198, TRUE),
  -- #199 Electivire
  (901, 466, NULL, 199, TRUE),
  -- #200 Magby
  (901, 240, NULL, 200, TRUE),
  -- #201 Magmar
  (901, 126, NULL, 201, TRUE),
  -- #202 Magmortar
  (901, 467, NULL, 202, TRUE),
  -- #203 Swinub
  (901, 220, NULL, 203, TRUE),
  -- #204 Piloswine
  (901, 221, NULL, 204, TRUE),
  -- #205 Mamoswine
  (901, 473, NULL, 205, TRUE),
  -- #206 Snorunt
  (901, 361, NULL, 206, TRUE),
  -- #207 Glalie
  (901, 362, NULL, 207, TRUE),
  -- #208 Froslass
  (901, 478, NULL, 208, TRUE),
  -- #209 Absol
  (901, 359, NULL, 209, TRUE),
  -- #210 Giratina
  (901, 487, NULL, 210, TRUE);
