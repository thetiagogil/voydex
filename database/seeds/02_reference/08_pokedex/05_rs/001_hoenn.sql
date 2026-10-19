-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Hoenn Pokedex number in Generation III.
-- Cross-check: PokemonDB Ruby / Sapphire / Emerald Pokedex and legacy Voydex Pokedex entry seed.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Hoenn Pokedex entries for Ruby / Sapphire.
-- Ruby / Sapphire use the original 202-entry Hoenn Pokedex.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Treecko
  (501, 252, NULL, 1, TRUE),
  -- #002 Grovyle
  (501, 253, NULL, 2, TRUE),
  -- #003 Sceptile
  (501, 254, NULL, 3, TRUE),
  -- #004 Torchic
  (501, 255, NULL, 4, TRUE),
  -- #005 Combusken
  (501, 256, NULL, 5, TRUE),
  -- #006 Blaziken
  (501, 257, NULL, 6, TRUE),
  -- #007 Mudkip
  (501, 258, NULL, 7, TRUE),
  -- #008 Marshtomp
  (501, 259, NULL, 8, TRUE),
  -- #009 Swampert
  (501, 260, NULL, 9, TRUE),
  -- #010 Poochyena
  (501, 261, NULL, 10, TRUE),
  -- #011 Mightyena
  (501, 262, NULL, 11, TRUE),
  -- #012 Zigzagoon
  (501, 263, NULL, 12, TRUE),
  -- #013 Linoone
  (501, 264, NULL, 13, TRUE),
  -- #014 Wurmple
  (501, 265, NULL, 14, TRUE),
  -- #015 Silcoon
  (501, 266, NULL, 15, TRUE),
  -- #016 Beautifly
  (501, 267, NULL, 16, TRUE),
  -- #017 Cascoon
  (501, 268, NULL, 17, TRUE),
  -- #018 Dustox
  (501, 269, NULL, 18, TRUE),
  -- #019 Lotad
  (501, 270, NULL, 19, TRUE),
  -- #020 Lombre
  (501, 271, NULL, 20, TRUE),
  -- #021 Ludicolo
  (501, 272, NULL, 21, TRUE),
  -- #022 Seedot
  (501, 273, NULL, 22, TRUE),
  -- #023 Nuzleaf
  (501, 274, NULL, 23, TRUE),
  -- #024 Shiftry
  (501, 275, NULL, 24, TRUE),
  -- #025 Taillow
  (501, 276, NULL, 25, TRUE),
  -- #026 Swellow
  (501, 277, NULL, 26, TRUE),
  -- #027 Wingull
  (501, 278, NULL, 27, TRUE),
  -- #028 Pelipper
  (501, 279, NULL, 28, TRUE),
  -- #029 Ralts
  (501, 280, NULL, 29, TRUE),
  -- #030 Kirlia
  (501, 281, NULL, 30, TRUE),
  -- #031 Gardevoir
  (501, 282, NULL, 31, TRUE),
  -- #032 Surskit
  (501, 283, NULL, 32, TRUE),
  -- #033 Masquerain
  (501, 284, NULL, 33, TRUE),
  -- #034 Shroomish
  (501, 285, NULL, 34, TRUE),
  -- #035 Breloom
  (501, 286, NULL, 35, TRUE),
  -- #036 Slakoth
  (501, 287, NULL, 36, TRUE),
  -- #037 Vigoroth
  (501, 288, NULL, 37, TRUE),
  -- #038 Slaking
  (501, 289, NULL, 38, TRUE),
  -- #039 Abra
  (501, 63, NULL, 39, TRUE),
  -- #040 Kadabra
  (501, 64, NULL, 40, TRUE),
  -- #041 Alakazam
  (501, 65, NULL, 41, TRUE),
  -- #042 Nincada
  (501, 290, NULL, 42, TRUE),
  -- #043 Ninjask
  (501, 291, NULL, 43, TRUE),
  -- #044 Shedinja
  (501, 292, NULL, 44, TRUE),
  -- #045 Whismur
  (501, 293, NULL, 45, TRUE),
  -- #046 Loudred
  (501, 294, NULL, 46, TRUE),
  -- #047 Exploud
  (501, 295, NULL, 47, TRUE),
  -- #048 Makuhita
  (501, 296, NULL, 48, TRUE),
  -- #049 Hariyama
  (501, 297, NULL, 49, TRUE),
  -- #050 Goldeen
  (501, 118, NULL, 50, TRUE),
  -- #051 Seaking
  (501, 119, NULL, 51, TRUE),
  -- #052 Magikarp
  (501, 129, NULL, 52, TRUE),
  -- #053 Gyarados
  (501, 130, NULL, 53, TRUE),
  -- #054 Azurill
  (501, 298, NULL, 54, TRUE),
  -- #055 Marill
  (501, 183, NULL, 55, TRUE),
  -- #056 Azumarill
  (501, 184, NULL, 56, TRUE),
  -- #057 Geodude
  (501, 74, NULL, 57, TRUE),
  -- #058 Graveler
  (501, 75, NULL, 58, TRUE),
  -- #059 Golem
  (501, 76, NULL, 59, TRUE),
  -- #060 Nosepass
  (501, 299, NULL, 60, TRUE),
  -- #061 Skitty
  (501, 300, NULL, 61, TRUE),
  -- #062 Delcatty
  (501, 301, NULL, 62, TRUE),
  -- #063 Zubat
  (501, 41, NULL, 63, TRUE),
  -- #064 Golbat
  (501, 42, NULL, 64, TRUE),
  -- #065 Crobat
  (501, 169, NULL, 65, TRUE),
  -- #066 Tentacool
  (501, 72, NULL, 66, TRUE),
  -- #067 Tentacruel
  (501, 73, NULL, 67, TRUE),
  -- #068 Sableye
  (501, 302, NULL, 68, TRUE),
  -- #069 Mawile
  (501, 303, NULL, 69, TRUE),
  -- #070 Aron
  (501, 304, NULL, 70, TRUE),
  -- #071 Lairon
  (501, 305, NULL, 71, TRUE),
  -- #072 Aggron
  (501, 306, NULL, 72, TRUE),
  -- #073 Machop
  (501, 66, NULL, 73, TRUE),
  -- #074 Machoke
  (501, 67, NULL, 74, TRUE),
  -- #075 Machamp
  (501, 68, NULL, 75, TRUE),
  -- #076 Meditite
  (501, 307, NULL, 76, TRUE),
  -- #077 Medicham
  (501, 308, NULL, 77, TRUE),
  -- #078 Electrike
  (501, 309, NULL, 78, TRUE),
  -- #079 Manectric
  (501, 310, NULL, 79, TRUE),
  -- #080 Plusle
  (501, 311, NULL, 80, TRUE),
  -- #081 Minun
  (501, 312, NULL, 81, TRUE),
  -- #082 Magnemite
  (501, 81, NULL, 82, TRUE),
  -- #083 Magneton
  (501, 82, NULL, 83, TRUE),
  -- #084 Voltorb
  (501, 100, NULL, 84, TRUE),
  -- #085 Electrode
  (501, 101, NULL, 85, TRUE),
  -- #086 Volbeat
  (501, 313, NULL, 86, TRUE),
  -- #087 Illumise
  (501, 314, NULL, 87, TRUE),
  -- #088 Oddish
  (501, 43, NULL, 88, TRUE),
  -- #089 Gloom
  (501, 44, NULL, 89, TRUE),
  -- #090 Vileplume
  (501, 45, NULL, 90, TRUE),
  -- #091 Bellossom
  (501, 182, NULL, 91, TRUE),
  -- #092 Doduo
  (501, 84, NULL, 92, TRUE),
  -- #093 Dodrio
  (501, 85, NULL, 93, TRUE),
  -- #094 Roselia
  (501, 315, NULL, 94, TRUE),
  -- #095 Gulpin
  (501, 316, NULL, 95, TRUE),
  -- #096 Swalot
  (501, 317, NULL, 96, TRUE),
  -- #097 Carvanha
  (501, 318, NULL, 97, TRUE),
  -- #098 Sharpedo
  (501, 319, NULL, 98, TRUE),
  -- #099 Wailmer
  (501, 320, NULL, 99, TRUE),
  -- #100 Wailord
  (501, 321, NULL, 100, TRUE),
  -- #101 Numel
  (501, 322, NULL, 101, TRUE),
  -- #102 Camerupt
  (501, 323, NULL, 102, TRUE),
  -- #103 Slugma
  (501, 218, NULL, 103, TRUE),
  -- #104 Magcargo
  (501, 219, NULL, 104, TRUE),
  -- #105 Torkoal
  (501, 324, NULL, 105, TRUE),
  -- #106 Grimer
  (501, 88, NULL, 106, TRUE),
  -- #107 Muk
  (501, 89, NULL, 107, TRUE),
  -- #108 Koffing
  (501, 109, NULL, 108, TRUE),
  -- #109 Weezing
  (501, 110, NULL, 109, TRUE),
  -- #110 Spoink
  (501, 325, NULL, 110, TRUE),
  -- #111 Grumpig
  (501, 326, NULL, 111, TRUE),
  -- #112 Sandshrew
  (501, 27, NULL, 112, TRUE),
  -- #113 Sandslash
  (501, 28, NULL, 113, TRUE),
  -- #114 Spinda
  (501, 327, NULL, 114, TRUE),
  -- #115 Skarmory
  (501, 227, NULL, 115, TRUE),
  -- #116 Trapinch
  (501, 328, NULL, 116, TRUE),
  -- #117 Vibrava
  (501, 329, NULL, 117, TRUE),
  -- #118 Flygon
  (501, 330, NULL, 118, TRUE),
  -- #119 Cacnea
  (501, 331, NULL, 119, TRUE),
  -- #120 Cacturne
  (501, 332, NULL, 120, TRUE),
  -- #121 Swablu
  (501, 333, NULL, 121, TRUE),
  -- #122 Altaria
  (501, 334, NULL, 122, TRUE),
  -- #123 Zangoose
  (501, 335, NULL, 123, TRUE),
  -- #124 Seviper
  (501, 336, NULL, 124, TRUE),
  -- #125 Lunatone
  (501, 337, NULL, 125, TRUE),
  -- #126 Solrock
  (501, 338, NULL, 126, TRUE),
  -- #127 Barboach
  (501, 339, NULL, 127, TRUE),
  -- #128 Whiscash
  (501, 340, NULL, 128, TRUE),
  -- #129 Corphish
  (501, 341, NULL, 129, TRUE),
  -- #130 Crawdaunt
  (501, 342, NULL, 130, TRUE),
  -- #131 Baltoy
  (501, 343, NULL, 131, TRUE),
  -- #132 Claydol
  (501, 344, NULL, 132, TRUE),
  -- #133 Lileep
  (501, 345, NULL, 133, TRUE),
  -- #134 Cradily
  (501, 346, NULL, 134, TRUE),
  -- #135 Anorith
  (501, 347, NULL, 135, TRUE),
  -- #136 Armaldo
  (501, 348, NULL, 136, TRUE),
  -- #137 Igglybuff
  (501, 174, NULL, 137, TRUE),
  -- #138 Jigglypuff
  (501, 39, NULL, 138, TRUE),
  -- #139 Wigglytuff
  (501, 40, NULL, 139, TRUE),
  -- #140 Feebas
  (501, 349, NULL, 140, TRUE),
  -- #141 Milotic
  (501, 350, NULL, 141, TRUE),
  -- #142 Castform
  (501, 351, NULL, 142, TRUE),
  -- #143 Staryu
  (501, 120, NULL, 143, TRUE),
  -- #144 Starmie
  (501, 121, NULL, 144, TRUE),
  -- #145 Kecleon
  (501, 352, NULL, 145, TRUE),
  -- #146 Shuppet
  (501, 353, NULL, 146, TRUE),
  -- #147 Banette
  (501, 354, NULL, 147, TRUE),
  -- #148 Duskull
  (501, 355, NULL, 148, TRUE),
  -- #149 Dusclops
  (501, 356, NULL, 149, TRUE),
  -- #150 Tropius
  (501, 357, NULL, 150, TRUE),
  -- #151 Chimecho
  (501, 358, NULL, 151, TRUE),
  -- #152 Absol
  (501, 359, NULL, 152, TRUE),
  -- #153 Vulpix
  (501, 37, NULL, 153, TRUE),
  -- #154 Ninetales
  (501, 38, NULL, 154, TRUE),
  -- #155 Pichu
  (501, 172, NULL, 155, TRUE),
  -- #156 Pikachu
  (501, 25, NULL, 156, TRUE),
  -- #157 Raichu
  (501, 26, NULL, 157, TRUE),
  -- #158 Psyduck
  (501, 54, NULL, 158, TRUE),
  -- #159 Golduck
  (501, 55, NULL, 159, TRUE),
  -- #160 Wynaut
  (501, 360, NULL, 160, TRUE),
  -- #161 Wobbuffet
  (501, 202, NULL, 161, TRUE),
  -- #162 Natu
  (501, 177, NULL, 162, TRUE),
  -- #163 Xatu
  (501, 178, NULL, 163, TRUE),
  -- #164 Girafarig
  (501, 203, NULL, 164, TRUE),
  -- #165 Phanpy
  (501, 231, NULL, 165, TRUE),
  -- #166 Donphan
  (501, 232, NULL, 166, TRUE),
  -- #167 Pinsir
  (501, 127, NULL, 167, TRUE),
  -- #168 Heracross
  (501, 214, NULL, 168, TRUE),
  -- #169 Rhyhorn
  (501, 111, NULL, 169, TRUE),
  -- #170 Rhydon
  (501, 112, NULL, 170, TRUE),
  -- #171 Snorunt
  (501, 361, NULL, 171, TRUE),
  -- #172 Glalie
  (501, 362, NULL, 172, TRUE),
  -- #173 Spheal
  (501, 363, NULL, 173, TRUE),
  -- #174 Sealeo
  (501, 364, NULL, 174, TRUE),
  -- #175 Walrein
  (501, 365, NULL, 175, TRUE),
  -- #176 Clamperl
  (501, 366, NULL, 176, TRUE),
  -- #177 Huntail
  (501, 367, NULL, 177, TRUE),
  -- #178 Gorebyss
  (501, 368, NULL, 178, TRUE),
  -- #179 Relicanth
  (501, 369, NULL, 179, TRUE),
  -- #180 Corsola
  (501, 222, NULL, 180, TRUE),
  -- #181 Chinchou
  (501, 170, NULL, 181, TRUE),
  -- #182 Lanturn
  (501, 171, NULL, 182, TRUE),
  -- #183 Luvdisc
  (501, 370, NULL, 183, TRUE),
  -- #184 Horsea
  (501, 116, NULL, 184, TRUE),
  -- #185 Seadra
  (501, 117, NULL, 185, TRUE),
  -- #186 Kingdra
  (501, 230, NULL, 186, TRUE),
  -- #187 Bagon
  (501, 371, NULL, 187, TRUE),
  -- #188 Shelgon
  (501, 372, NULL, 188, TRUE),
  -- #189 Salamence
  (501, 373, NULL, 189, TRUE),
  -- #190 Beldum
  (501, 374, NULL, 190, TRUE),
  -- #191 Metang
  (501, 375, NULL, 191, TRUE),
  -- #192 Metagross
  (501, 376, NULL, 192, TRUE),
  -- #193 Regirock
  (501, 377, NULL, 193, TRUE),
  -- #194 Regice
  (501, 378, NULL, 194, TRUE),
  -- #195 Registeel
  (501, 379, NULL, 195, TRUE),
  -- #196 Latias
  (501, 380, NULL, 196, TRUE),
  -- #197 Latios
  (501, 381, NULL, 197, TRUE),
  -- #198 Kyogre
  (501, 382, NULL, 198, TRUE),
  -- #199 Groudon
  (501, 383, NULL, 199, TRUE),
  -- #200 Rayquaza
  (501, 384, NULL, 200, TRUE),
  -- #201 Jirachi
  (501, 385, NULL, 201, FALSE),
  -- #202 Deoxys
  (501, 386, NULL, 202, FALSE);
