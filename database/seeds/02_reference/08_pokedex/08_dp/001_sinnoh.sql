-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Sinnoh Pokedex number in Diamond / Pearl.
-- Cross-check: PokemonDB Diamond / Pearl Pokedex and legacy Voydex Diamond / Pearl Pokedex entry seed.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Sinnoh Pokedex entries for Diamond / Pearl.
-- Diamond / Pearl use the original 151-entry Sinnoh Pokedex.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Turtwig
  (801, 387, NULL, 1, TRUE),
  -- #002 Grotle
  (801, 388, NULL, 2, TRUE),
  -- #003 Torterra
  (801, 389, NULL, 3, TRUE),
  -- #004 Chimchar
  (801, 390, NULL, 4, TRUE),
  -- #005 Monferno
  (801, 391, NULL, 5, TRUE),
  -- #006 Infernape
  (801, 392, NULL, 6, TRUE),
  -- #007 Piplup
  (801, 393, NULL, 7, TRUE),
  -- #008 Prinplup
  (801, 394, NULL, 8, TRUE),
  -- #009 Empoleon
  (801, 395, NULL, 9, TRUE),
  -- #010 Starly
  (801, 396, NULL, 10, TRUE),
  -- #011 Staravia
  (801, 397, NULL, 11, TRUE),
  -- #012 Staraptor
  (801, 398, NULL, 12, TRUE),
  -- #013 Bidoof
  (801, 399, NULL, 13, TRUE),
  -- #014 Bibarel
  (801, 400, NULL, 14, TRUE),
  -- #015 Kricketot
  (801, 401, NULL, 15, TRUE),
  -- #016 Kricketune
  (801, 402, NULL, 16, TRUE),
  -- #017 Shinx
  (801, 403, NULL, 17, TRUE),
  -- #018 Luxio
  (801, 404, NULL, 18, TRUE),
  -- #019 Luxray
  (801, 405, NULL, 19, TRUE),
  -- #020 Abra
  (801, 63, NULL, 20, TRUE),
  -- #021 Kadabra
  (801, 64, NULL, 21, TRUE),
  -- #022 Alakazam
  (801, 65, NULL, 22, TRUE),
  -- #023 Magikarp
  (801, 129, NULL, 23, TRUE),
  -- #024 Gyarados
  (801, 130, NULL, 24, TRUE),
  -- #025 Budew
  (801, 406, NULL, 25, TRUE),
  -- #026 Roselia
  (801, 315, NULL, 26, TRUE),
  -- #027 Roserade
  (801, 407, NULL, 27, TRUE),
  -- #028 Zubat
  (801, 41, NULL, 28, TRUE),
  -- #029 Golbat
  (801, 42, NULL, 29, TRUE),
  -- #030 Crobat
  (801, 169, NULL, 30, TRUE),
  -- #031 Geodude
  (801, 74, NULL, 31, TRUE),
  -- #032 Graveler
  (801, 75, NULL, 32, TRUE),
  -- #033 Golem
  (801, 76, NULL, 33, TRUE),
  -- #034 Onix
  (801, 95, NULL, 34, TRUE),
  -- #035 Steelix
  (801, 208, NULL, 35, TRUE),
  -- #036 Cranidos
  (801, 408, NULL, 36, TRUE),
  -- #037 Rampardos
  (801, 409, NULL, 37, TRUE),
  -- #038 Shieldon
  (801, 410, NULL, 38, TRUE),
  -- #039 Bastiodon
  (801, 411, NULL, 39, TRUE),
  -- #040 Machop
  (801, 66, NULL, 40, TRUE),
  -- #041 Machoke
  (801, 67, NULL, 41, TRUE),
  -- #042 Machamp
  (801, 68, NULL, 42, TRUE),
  -- #043 Psyduck
  (801, 54, NULL, 43, TRUE),
  -- #044 Golduck
  (801, 55, NULL, 44, TRUE),
  -- #045 Burmy
  (801, 412, NULL, 45, TRUE),
  -- #046 Wormadam
  (801, 413, NULL, 46, TRUE),
  -- #047 Mothim
  (801, 414, NULL, 47, TRUE),
  -- #048 Wurmple
  (801, 265, NULL, 48, TRUE),
  -- #049 Silcoon
  (801, 266, NULL, 49, TRUE),
  -- #050 Beautifly
  (801, 267, NULL, 50, TRUE),
  -- #051 Cascoon
  (801, 268, NULL, 51, TRUE),
  -- #052 Dustox
  (801, 269, NULL, 52, TRUE),
  -- #053 Combee
  (801, 415, NULL, 53, TRUE),
  -- #054 Vespiquen
  (801, 416, NULL, 54, TRUE),
  -- #055 Pachirisu
  (801, 417, NULL, 55, TRUE),
  -- #056 Buizel
  (801, 418, NULL, 56, TRUE),
  -- #057 Floatzel
  (801, 419, NULL, 57, TRUE),
  -- #058 Cherubi
  (801, 420, NULL, 58, TRUE),
  -- #059 Cherrim
  (801, 421, NULL, 59, TRUE),
  -- #060 Shellos
  (801, 422, NULL, 60, TRUE),
  -- #061 Gastrodon
  (801, 423, NULL, 61, TRUE),
  -- #062 Heracross
  (801, 214, NULL, 62, TRUE),
  -- #063 Aipom
  (801, 190, NULL, 63, TRUE),
  -- #064 Ambipom
  (801, 424, NULL, 64, TRUE),
  -- #065 Drifloon
  (801, 425, NULL, 65, TRUE),
  -- #066 Drifblim
  (801, 426, NULL, 66, TRUE),
  -- #067 Buneary
  (801, 427, NULL, 67, TRUE),
  -- #068 Lopunny
  (801, 428, NULL, 68, TRUE),
  -- #069 Gastly
  (801, 92, NULL, 69, TRUE),
  -- #070 Haunter
  (801, 93, NULL, 70, TRUE),
  -- #071 Gengar
  (801, 94, NULL, 71, TRUE),
  -- #072 Misdreavus
  (801, 200, NULL, 72, TRUE),
  -- #073 Mismagius
  (801, 429, NULL, 73, TRUE),
  -- #074 Murkrow
  (801, 198, NULL, 74, TRUE),
  -- #075 Honchkrow
  (801, 430, NULL, 75, TRUE),
  -- #076 Glameow
  (801, 431, NULL, 76, TRUE),
  -- #077 Purugly
  (801, 432, NULL, 77, TRUE),
  -- #078 Goldeen
  (801, 118, NULL, 78, TRUE),
  -- #079 Seaking
  (801, 119, NULL, 79, TRUE),
  -- #080 Barboach
  (801, 339, NULL, 80, TRUE),
  -- #081 Whiscash
  (801, 340, NULL, 81, TRUE),
  -- #082 Chingling
  (801, 433, NULL, 82, TRUE),
  -- #083 Chimecho
  (801, 358, NULL, 83, TRUE),
  -- #084 Stunky
  (801, 434, NULL, 84, TRUE),
  -- #085 Skuntank
  (801, 435, NULL, 85, TRUE),
  -- #086 Meditite
  (801, 307, NULL, 86, TRUE),
  -- #087 Medicham
  (801, 308, NULL, 87, TRUE),
  -- #088 Bronzor
  (801, 436, NULL, 88, TRUE),
  -- #089 Bronzong
  (801, 437, NULL, 89, TRUE),
  -- #090 Ponyta
  (801, 77, NULL, 90, TRUE),
  -- #091 Rapidash
  (801, 78, NULL, 91, TRUE),
  -- #092 Bonsly
  (801, 438, NULL, 92, TRUE),
  -- #093 Sudowoodo
  (801, 185, NULL, 93, TRUE),
  -- #094 Mime Jr.
  (801, 439, NULL, 94, TRUE),
  -- #095 Mr. Mime
  (801, 122, NULL, 95, TRUE),
  -- #096 Happiny
  (801, 440, NULL, 96, TRUE),
  -- #097 Chansey
  (801, 113, NULL, 97, TRUE),
  -- #098 Blissey
  (801, 242, NULL, 98, TRUE),
  -- #099 Cleffa
  (801, 173, NULL, 99, TRUE),
  -- #100 Clefairy
  (801, 35, NULL, 100, TRUE),
  -- #101 Clefable
  (801, 36, NULL, 101, TRUE),
  -- #102 Chatot
  (801, 441, NULL, 102, TRUE),
  -- #103 Pichu
  (801, 172, NULL, 103, TRUE),
  -- #104 Pikachu
  (801, 25, NULL, 104, TRUE),
  -- #105 Raichu
  (801, 26, NULL, 105, TRUE),
  -- #106 Hoothoot
  (801, 163, NULL, 106, TRUE),
  -- #107 Noctowl
  (801, 164, NULL, 107, TRUE),
  -- #108 Spiritomb
  (801, 442, NULL, 108, TRUE),
  -- #109 Gible
  (801, 443, NULL, 109, TRUE),
  -- #110 Gabite
  (801, 444, NULL, 110, TRUE),
  -- #111 Garchomp
  (801, 445, NULL, 111, TRUE),
  -- #112 Munchlax
  (801, 446, NULL, 112, TRUE),
  -- #113 Snorlax
  (801, 143, NULL, 113, TRUE),
  -- #114 Unown
  (801, 201, NULL, 114, TRUE),
  -- #115 Riolu
  (801, 447, NULL, 115, TRUE),
  -- #116 Lucario
  (801, 448, NULL, 116, TRUE),
  -- #117 Wooper
  (801, 194, NULL, 117, TRUE),
  -- #118 Quagsire
  (801, 195, NULL, 118, TRUE),
  -- #119 Wingull
  (801, 278, NULL, 119, TRUE),
  -- #120 Pelipper
  (801, 279, NULL, 120, TRUE),
  -- #121 Girafarig
  (801, 203, NULL, 121, TRUE),
  -- #122 Hippopotas
  (801, 449, NULL, 122, TRUE),
  -- #123 Hippowdon
  (801, 450, NULL, 123, TRUE),
  -- #124 Azurill
  (801, 298, NULL, 124, TRUE),
  -- #125 Marill
  (801, 183, NULL, 125, TRUE),
  -- #126 Azumarill
  (801, 184, NULL, 126, TRUE),
  -- #127 Skorupi
  (801, 451, NULL, 127, TRUE),
  -- #128 Drapion
  (801, 452, NULL, 128, TRUE),
  -- #129 Croagunk
  (801, 453, NULL, 129, TRUE),
  -- #130 Toxicroak
  (801, 454, NULL, 130, TRUE),
  -- #131 Carnivine
  (801, 455, NULL, 131, TRUE),
  -- #132 Remoraid
  (801, 223, NULL, 132, TRUE),
  -- #133 Octillery
  (801, 224, NULL, 133, TRUE),
  -- #134 Finneon
  (801, 456, NULL, 134, TRUE),
  -- #135 Lumineon
  (801, 457, NULL, 135, TRUE),
  -- #136 Tentacool
  (801, 72, NULL, 136, TRUE),
  -- #137 Tentacruel
  (801, 73, NULL, 137, TRUE),
  -- #138 Feebas
  (801, 349, NULL, 138, TRUE),
  -- #139 Milotic
  (801, 350, NULL, 139, TRUE),
  -- #140 Mantyke
  (801, 458, NULL, 140, TRUE),
  -- #141 Mantine
  (801, 226, NULL, 141, TRUE),
  -- #142 Snover
  (801, 459, NULL, 142, TRUE),
  -- #143 Abomasnow
  (801, 460, NULL, 143, TRUE),
  -- #144 Sneasel
  (801, 215, NULL, 144, TRUE),
  -- #145 Weavile
  (801, 461, NULL, 145, TRUE),
  -- #146 Uxie
  (801, 480, NULL, 146, TRUE),
  -- #147 Mesprit
  (801, 481, NULL, 147, TRUE),
  -- #148 Azelf
  (801, 482, NULL, 148, TRUE),
  -- #149 Dialga
  (801, 483, NULL, 149, TRUE),
  -- #150 Palkia
  (801, 484, NULL, 150, TRUE),
  -- #151 Manaphy
  (801, 490, NULL, 151, FALSE);
