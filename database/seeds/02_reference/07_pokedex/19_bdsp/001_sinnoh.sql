-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Sinnoh Pokedex number in Brilliant Diamond / Shining Pearl.
-- Cross-check: PokemonDB Brilliant Diamond / Shining Pearl Pokedex. Legacy BDSP rows are not used because they contain the 210-entry Platinum ordering.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Sinnoh Pokedex entries for Brilliant Diamond / Shining Pearl.
-- Brilliant Diamond / Shining Pearl use the same 151-entry Sinnoh Pokedex ordering as Diamond / Pearl.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Turtwig
  (2101, 387, NULL, 1, TRUE),
  -- #002 Grotle
  (2101, 388, NULL, 2, TRUE),
  -- #003 Torterra
  (2101, 389, NULL, 3, TRUE),
  -- #004 Chimchar
  (2101, 390, NULL, 4, TRUE),
  -- #005 Monferno
  (2101, 391, NULL, 5, TRUE),
  -- #006 Infernape
  (2101, 392, NULL, 6, TRUE),
  -- #007 Piplup
  (2101, 393, NULL, 7, TRUE),
  -- #008 Prinplup
  (2101, 394, NULL, 8, TRUE),
  -- #009 Empoleon
  (2101, 395, NULL, 9, TRUE),
  -- #010 Starly
  (2101, 396, NULL, 10, TRUE),
  -- #011 Staravia
  (2101, 397, NULL, 11, TRUE),
  -- #012 Staraptor
  (2101, 398, NULL, 12, TRUE),
  -- #013 Bidoof
  (2101, 399, NULL, 13, TRUE),
  -- #014 Bibarel
  (2101, 400, NULL, 14, TRUE),
  -- #015 Kricketot
  (2101, 401, NULL, 15, TRUE),
  -- #016 Kricketune
  (2101, 402, NULL, 16, TRUE),
  -- #017 Shinx
  (2101, 403, NULL, 17, TRUE),
  -- #018 Luxio
  (2101, 404, NULL, 18, TRUE),
  -- #019 Luxray
  (2101, 405, NULL, 19, TRUE),
  -- #020 Abra
  (2101, 63, NULL, 20, TRUE),
  -- #021 Kadabra
  (2101, 64, NULL, 21, TRUE),
  -- #022 Alakazam
  (2101, 65, NULL, 22, TRUE),
  -- #023 Magikarp
  (2101, 129, NULL, 23, TRUE),
  -- #024 Gyarados
  (2101, 130, NULL, 24, TRUE),
  -- #025 Budew
  (2101, 406, NULL, 25, TRUE),
  -- #026 Roselia
  (2101, 315, NULL, 26, TRUE),
  -- #027 Roserade
  (2101, 407, NULL, 27, TRUE),
  -- #028 Zubat
  (2101, 41, NULL, 28, TRUE),
  -- #029 Golbat
  (2101, 42, NULL, 29, TRUE),
  -- #030 Crobat
  (2101, 169, NULL, 30, TRUE),
  -- #031 Geodude
  (2101, 74, NULL, 31, TRUE),
  -- #032 Graveler
  (2101, 75, NULL, 32, TRUE),
  -- #033 Golem
  (2101, 76, NULL, 33, TRUE),
  -- #034 Onix
  (2101, 95, NULL, 34, TRUE),
  -- #035 Steelix
  (2101, 208, NULL, 35, TRUE),
  -- #036 Cranidos
  (2101, 408, NULL, 36, TRUE),
  -- #037 Rampardos
  (2101, 409, NULL, 37, TRUE),
  -- #038 Shieldon
  (2101, 410, NULL, 38, TRUE),
  -- #039 Bastiodon
  (2101, 411, NULL, 39, TRUE),
  -- #040 Machop
  (2101, 66, NULL, 40, TRUE),
  -- #041 Machoke
  (2101, 67, NULL, 41, TRUE),
  -- #042 Machamp
  (2101, 68, NULL, 42, TRUE),
  -- #043 Psyduck
  (2101, 54, NULL, 43, TRUE),
  -- #044 Golduck
  (2101, 55, NULL, 44, TRUE),
  -- #045 Burmy
  (2101, 412, NULL, 45, TRUE),
  -- #046 Wormadam
  (2101, 413, NULL, 46, TRUE),
  -- #047 Mothim
  (2101, 414, NULL, 47, TRUE),
  -- #048 Wurmple
  (2101, 265, NULL, 48, TRUE),
  -- #049 Silcoon
  (2101, 266, NULL, 49, TRUE),
  -- #050 Beautifly
  (2101, 267, NULL, 50, TRUE),
  -- #051 Cascoon
  (2101, 268, NULL, 51, TRUE),
  -- #052 Dustox
  (2101, 269, NULL, 52, TRUE),
  -- #053 Combee
  (2101, 415, NULL, 53, TRUE),
  -- #054 Vespiquen
  (2101, 416, NULL, 54, TRUE),
  -- #055 Pachirisu
  (2101, 417, NULL, 55, TRUE),
  -- #056 Buizel
  (2101, 418, NULL, 56, TRUE),
  -- #057 Floatzel
  (2101, 419, NULL, 57, TRUE),
  -- #058 Cherubi
  (2101, 420, NULL, 58, TRUE),
  -- #059 Cherrim
  (2101, 421, NULL, 59, TRUE),
  -- #060 Shellos
  (2101, 422, NULL, 60, TRUE),
  -- #061 Gastrodon
  (2101, 423, NULL, 61, TRUE),
  -- #062 Heracross
  (2101, 214, NULL, 62, TRUE),
  -- #063 Aipom
  (2101, 190, NULL, 63, TRUE),
  -- #064 Ambipom
  (2101, 424, NULL, 64, TRUE),
  -- #065 Drifloon
  (2101, 425, NULL, 65, TRUE),
  -- #066 Drifblim
  (2101, 426, NULL, 66, TRUE),
  -- #067 Buneary
  (2101, 427, NULL, 67, TRUE),
  -- #068 Lopunny
  (2101, 428, NULL, 68, TRUE),
  -- #069 Gastly
  (2101, 92, NULL, 69, TRUE),
  -- #070 Haunter
  (2101, 93, NULL, 70, TRUE),
  -- #071 Gengar
  (2101, 94, NULL, 71, TRUE),
  -- #072 Misdreavus
  (2101, 200, NULL, 72, TRUE),
  -- #073 Mismagius
  (2101, 429, NULL, 73, TRUE),
  -- #074 Murkrow
  (2101, 198, NULL, 74, TRUE),
  -- #075 Honchkrow
  (2101, 430, NULL, 75, TRUE),
  -- #076 Glameow
  (2101, 431, NULL, 76, TRUE),
  -- #077 Purugly
  (2101, 432, NULL, 77, TRUE),
  -- #078 Goldeen
  (2101, 118, NULL, 78, TRUE),
  -- #079 Seaking
  (2101, 119, NULL, 79, TRUE),
  -- #080 Barboach
  (2101, 339, NULL, 80, TRUE),
  -- #081 Whiscash
  (2101, 340, NULL, 81, TRUE),
  -- #082 Chingling
  (2101, 433, NULL, 82, TRUE),
  -- #083 Chimecho
  (2101, 358, NULL, 83, TRUE),
  -- #084 Stunky
  (2101, 434, NULL, 84, TRUE),
  -- #085 Skuntank
  (2101, 435, NULL, 85, TRUE),
  -- #086 Meditite
  (2101, 307, NULL, 86, TRUE),
  -- #087 Medicham
  (2101, 308, NULL, 87, TRUE),
  -- #088 Bronzor
  (2101, 436, NULL, 88, TRUE),
  -- #089 Bronzong
  (2101, 437, NULL, 89, TRUE),
  -- #090 Ponyta
  (2101, 77, NULL, 90, TRUE),
  -- #091 Rapidash
  (2101, 78, NULL, 91, TRUE),
  -- #092 Bonsly
  (2101, 438, NULL, 92, TRUE),
  -- #093 Sudowoodo
  (2101, 185, NULL, 93, TRUE),
  -- #094 Mime Jr.
  (2101, 439, NULL, 94, TRUE),
  -- #095 Mr. Mime
  (2101, 122, NULL, 95, TRUE),
  -- #096 Happiny
  (2101, 440, NULL, 96, TRUE),
  -- #097 Chansey
  (2101, 113, NULL, 97, TRUE),
  -- #098 Blissey
  (2101, 242, NULL, 98, TRUE),
  -- #099 Cleffa
  (2101, 173, NULL, 99, TRUE),
  -- #100 Clefairy
  (2101, 35, NULL, 100, TRUE),
  -- #101 Clefable
  (2101, 36, NULL, 101, TRUE),
  -- #102 Chatot
  (2101, 441, NULL, 102, TRUE),
  -- #103 Pichu
  (2101, 172, NULL, 103, TRUE),
  -- #104 Pikachu
  (2101, 25, NULL, 104, TRUE),
  -- #105 Raichu
  (2101, 26, NULL, 105, TRUE),
  -- #106 Hoothoot
  (2101, 163, NULL, 106, TRUE),
  -- #107 Noctowl
  (2101, 164, NULL, 107, TRUE),
  -- #108 Spiritomb
  (2101, 442, NULL, 108, TRUE),
  -- #109 Gible
  (2101, 443, NULL, 109, TRUE),
  -- #110 Gabite
  (2101, 444, NULL, 110, TRUE),
  -- #111 Garchomp
  (2101, 445, NULL, 111, TRUE),
  -- #112 Munchlax
  (2101, 446, NULL, 112, TRUE),
  -- #113 Snorlax
  (2101, 143, NULL, 113, TRUE),
  -- #114 Unown
  (2101, 201, NULL, 114, TRUE),
  -- #115 Riolu
  (2101, 447, NULL, 115, TRUE),
  -- #116 Lucario
  (2101, 448, NULL, 116, TRUE),
  -- #117 Wooper
  (2101, 194, NULL, 117, TRUE),
  -- #118 Quagsire
  (2101, 195, NULL, 118, TRUE),
  -- #119 Wingull
  (2101, 278, NULL, 119, TRUE),
  -- #120 Pelipper
  (2101, 279, NULL, 120, TRUE),
  -- #121 Girafarig
  (2101, 203, NULL, 121, TRUE),
  -- #122 Hippopotas
  (2101, 449, NULL, 122, TRUE),
  -- #123 Hippowdon
  (2101, 450, NULL, 123, TRUE),
  -- #124 Azurill
  (2101, 298, NULL, 124, TRUE),
  -- #125 Marill
  (2101, 183, NULL, 125, TRUE),
  -- #126 Azumarill
  (2101, 184, NULL, 126, TRUE),
  -- #127 Skorupi
  (2101, 451, NULL, 127, TRUE),
  -- #128 Drapion
  (2101, 452, NULL, 128, TRUE),
  -- #129 Croagunk
  (2101, 453, NULL, 129, TRUE),
  -- #130 Toxicroak
  (2101, 454, NULL, 130, TRUE),
  -- #131 Carnivine
  (2101, 455, NULL, 131, TRUE),
  -- #132 Remoraid
  (2101, 223, NULL, 132, TRUE),
  -- #133 Octillery
  (2101, 224, NULL, 133, TRUE),
  -- #134 Finneon
  (2101, 456, NULL, 134, TRUE),
  -- #135 Lumineon
  (2101, 457, NULL, 135, TRUE),
  -- #136 Tentacool
  (2101, 72, NULL, 136, TRUE),
  -- #137 Tentacruel
  (2101, 73, NULL, 137, TRUE),
  -- #138 Feebas
  (2101, 349, NULL, 138, TRUE),
  -- #139 Milotic
  (2101, 350, NULL, 139, TRUE),
  -- #140 Mantyke
  (2101, 458, NULL, 140, TRUE),
  -- #141 Mantine
  (2101, 226, NULL, 141, TRUE),
  -- #142 Snover
  (2101, 459, NULL, 142, TRUE),
  -- #143 Abomasnow
  (2101, 460, NULL, 143, TRUE),
  -- #144 Sneasel
  (2101, 215, NULL, 144, TRUE),
  -- #145 Weavile
  (2101, 461, NULL, 145, TRUE),
  -- #146 Uxie
  (2101, 480, NULL, 146, TRUE),
  -- #147 Mesprit
  (2101, 481, NULL, 147, TRUE),
  -- #148 Azelf
  (2101, 482, NULL, 148, TRUE),
  -- #149 Dialga
  (2101, 483, NULL, 149, TRUE),
  -- #150 Palkia
  (2101, 484, NULL, 150, TRUE),
  -- #151 Manaphy
  (2101, 490, NULL, 151, FALSE);
