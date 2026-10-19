-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Hoenn Pokedex number in Generation III.
-- Cross-check: PokemonDB Ruby / Sapphire / Emerald Pokedex and legacy Voydex Pokedex entry seed.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Hoenn Pokedex entries for Emerald.
-- Emerald uses the same 202-entry Hoenn Pokedex ordering as Ruby / Sapphire.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Treecko
  (701, 252, NULL, 1, TRUE),
  -- #002 Grovyle
  (701, 253, NULL, 2, TRUE),
  -- #003 Sceptile
  (701, 254, NULL, 3, TRUE),
  -- #004 Torchic
  (701, 255, NULL, 4, TRUE),
  -- #005 Combusken
  (701, 256, NULL, 5, TRUE),
  -- #006 Blaziken
  (701, 257, NULL, 6, TRUE),
  -- #007 Mudkip
  (701, 258, NULL, 7, TRUE),
  -- #008 Marshtomp
  (701, 259, NULL, 8, TRUE),
  -- #009 Swampert
  (701, 260, NULL, 9, TRUE),
  -- #010 Poochyena
  (701, 261, NULL, 10, TRUE),
  -- #011 Mightyena
  (701, 262, NULL, 11, TRUE),
  -- #012 Zigzagoon
  (701, 263, NULL, 12, TRUE),
  -- #013 Linoone
  (701, 264, NULL, 13, TRUE),
  -- #014 Wurmple
  (701, 265, NULL, 14, TRUE),
  -- #015 Silcoon
  (701, 266, NULL, 15, TRUE),
  -- #016 Beautifly
  (701, 267, NULL, 16, TRUE),
  -- #017 Cascoon
  (701, 268, NULL, 17, TRUE),
  -- #018 Dustox
  (701, 269, NULL, 18, TRUE),
  -- #019 Lotad
  (701, 270, NULL, 19, TRUE),
  -- #020 Lombre
  (701, 271, NULL, 20, TRUE),
  -- #021 Ludicolo
  (701, 272, NULL, 21, TRUE),
  -- #022 Seedot
  (701, 273, NULL, 22, TRUE),
  -- #023 Nuzleaf
  (701, 274, NULL, 23, TRUE),
  -- #024 Shiftry
  (701, 275, NULL, 24, TRUE),
  -- #025 Taillow
  (701, 276, NULL, 25, TRUE),
  -- #026 Swellow
  (701, 277, NULL, 26, TRUE),
  -- #027 Wingull
  (701, 278, NULL, 27, TRUE),
  -- #028 Pelipper
  (701, 279, NULL, 28, TRUE),
  -- #029 Ralts
  (701, 280, NULL, 29, TRUE),
  -- #030 Kirlia
  (701, 281, NULL, 30, TRUE),
  -- #031 Gardevoir
  (701, 282, NULL, 31, TRUE),
  -- #032 Surskit
  (701, 283, NULL, 32, TRUE),
  -- #033 Masquerain
  (701, 284, NULL, 33, TRUE),
  -- #034 Shroomish
  (701, 285, NULL, 34, TRUE),
  -- #035 Breloom
  (701, 286, NULL, 35, TRUE),
  -- #036 Slakoth
  (701, 287, NULL, 36, TRUE),
  -- #037 Vigoroth
  (701, 288, NULL, 37, TRUE),
  -- #038 Slaking
  (701, 289, NULL, 38, TRUE),
  -- #039 Abra
  (701, 63, NULL, 39, TRUE),
  -- #040 Kadabra
  (701, 64, NULL, 40, TRUE),
  -- #041 Alakazam
  (701, 65, NULL, 41, TRUE),
  -- #042 Nincada
  (701, 290, NULL, 42, TRUE),
  -- #043 Ninjask
  (701, 291, NULL, 43, TRUE),
  -- #044 Shedinja
  (701, 292, NULL, 44, TRUE),
  -- #045 Whismur
  (701, 293, NULL, 45, TRUE),
  -- #046 Loudred
  (701, 294, NULL, 46, TRUE),
  -- #047 Exploud
  (701, 295, NULL, 47, TRUE),
  -- #048 Makuhita
  (701, 296, NULL, 48, TRUE),
  -- #049 Hariyama
  (701, 297, NULL, 49, TRUE),
  -- #050 Goldeen
  (701, 118, NULL, 50, TRUE),
  -- #051 Seaking
  (701, 119, NULL, 51, TRUE),
  -- #052 Magikarp
  (701, 129, NULL, 52, TRUE),
  -- #053 Gyarados
  (701, 130, NULL, 53, TRUE),
  -- #054 Azurill
  (701, 298, NULL, 54, TRUE),
  -- #055 Marill
  (701, 183, NULL, 55, TRUE),
  -- #056 Azumarill
  (701, 184, NULL, 56, TRUE),
  -- #057 Geodude
  (701, 74, NULL, 57, TRUE),
  -- #058 Graveler
  (701, 75, NULL, 58, TRUE),
  -- #059 Golem
  (701, 76, NULL, 59, TRUE),
  -- #060 Nosepass
  (701, 299, NULL, 60, TRUE),
  -- #061 Skitty
  (701, 300, NULL, 61, TRUE),
  -- #062 Delcatty
  (701, 301, NULL, 62, TRUE),
  -- #063 Zubat
  (701, 41, NULL, 63, TRUE),
  -- #064 Golbat
  (701, 42, NULL, 64, TRUE),
  -- #065 Crobat
  (701, 169, NULL, 65, TRUE),
  -- #066 Tentacool
  (701, 72, NULL, 66, TRUE),
  -- #067 Tentacruel
  (701, 73, NULL, 67, TRUE),
  -- #068 Sableye
  (701, 302, NULL, 68, TRUE),
  -- #069 Mawile
  (701, 303, NULL, 69, TRUE),
  -- #070 Aron
  (701, 304, NULL, 70, TRUE),
  -- #071 Lairon
  (701, 305, NULL, 71, TRUE),
  -- #072 Aggron
  (701, 306, NULL, 72, TRUE),
  -- #073 Machop
  (701, 66, NULL, 73, TRUE),
  -- #074 Machoke
  (701, 67, NULL, 74, TRUE),
  -- #075 Machamp
  (701, 68, NULL, 75, TRUE),
  -- #076 Meditite
  (701, 307, NULL, 76, TRUE),
  -- #077 Medicham
  (701, 308, NULL, 77, TRUE),
  -- #078 Electrike
  (701, 309, NULL, 78, TRUE),
  -- #079 Manectric
  (701, 310, NULL, 79, TRUE),
  -- #080 Plusle
  (701, 311, NULL, 80, TRUE),
  -- #081 Minun
  (701, 312, NULL, 81, TRUE),
  -- #082 Magnemite
  (701, 81, NULL, 82, TRUE),
  -- #083 Magneton
  (701, 82, NULL, 83, TRUE),
  -- #084 Voltorb
  (701, 100, NULL, 84, TRUE),
  -- #085 Electrode
  (701, 101, NULL, 85, TRUE),
  -- #086 Volbeat
  (701, 313, NULL, 86, TRUE),
  -- #087 Illumise
  (701, 314, NULL, 87, TRUE),
  -- #088 Oddish
  (701, 43, NULL, 88, TRUE),
  -- #089 Gloom
  (701, 44, NULL, 89, TRUE),
  -- #090 Vileplume
  (701, 45, NULL, 90, TRUE),
  -- #091 Bellossom
  (701, 182, NULL, 91, TRUE),
  -- #092 Doduo
  (701, 84, NULL, 92, TRUE),
  -- #093 Dodrio
  (701, 85, NULL, 93, TRUE),
  -- #094 Roselia
  (701, 315, NULL, 94, TRUE),
  -- #095 Gulpin
  (701, 316, NULL, 95, TRUE),
  -- #096 Swalot
  (701, 317, NULL, 96, TRUE),
  -- #097 Carvanha
  (701, 318, NULL, 97, TRUE),
  -- #098 Sharpedo
  (701, 319, NULL, 98, TRUE),
  -- #099 Wailmer
  (701, 320, NULL, 99, TRUE),
  -- #100 Wailord
  (701, 321, NULL, 100, TRUE),
  -- #101 Numel
  (701, 322, NULL, 101, TRUE),
  -- #102 Camerupt
  (701, 323, NULL, 102, TRUE),
  -- #103 Slugma
  (701, 218, NULL, 103, TRUE),
  -- #104 Magcargo
  (701, 219, NULL, 104, TRUE),
  -- #105 Torkoal
  (701, 324, NULL, 105, TRUE),
  -- #106 Grimer
  (701, 88, NULL, 106, TRUE),
  -- #107 Muk
  (701, 89, NULL, 107, TRUE),
  -- #108 Koffing
  (701, 109, NULL, 108, TRUE),
  -- #109 Weezing
  (701, 110, NULL, 109, TRUE),
  -- #110 Spoink
  (701, 325, NULL, 110, TRUE),
  -- #111 Grumpig
  (701, 326, NULL, 111, TRUE),
  -- #112 Sandshrew
  (701, 27, NULL, 112, TRUE),
  -- #113 Sandslash
  (701, 28, NULL, 113, TRUE),
  -- #114 Spinda
  (701, 327, NULL, 114, TRUE),
  -- #115 Skarmory
  (701, 227, NULL, 115, TRUE),
  -- #116 Trapinch
  (701, 328, NULL, 116, TRUE),
  -- #117 Vibrava
  (701, 329, NULL, 117, TRUE),
  -- #118 Flygon
  (701, 330, NULL, 118, TRUE),
  -- #119 Cacnea
  (701, 331, NULL, 119, TRUE),
  -- #120 Cacturne
  (701, 332, NULL, 120, TRUE),
  -- #121 Swablu
  (701, 333, NULL, 121, TRUE),
  -- #122 Altaria
  (701, 334, NULL, 122, TRUE),
  -- #123 Zangoose
  (701, 335, NULL, 123, TRUE),
  -- #124 Seviper
  (701, 336, NULL, 124, TRUE),
  -- #125 Lunatone
  (701, 337, NULL, 125, TRUE),
  -- #126 Solrock
  (701, 338, NULL, 126, TRUE),
  -- #127 Barboach
  (701, 339, NULL, 127, TRUE),
  -- #128 Whiscash
  (701, 340, NULL, 128, TRUE),
  -- #129 Corphish
  (701, 341, NULL, 129, TRUE),
  -- #130 Crawdaunt
  (701, 342, NULL, 130, TRUE),
  -- #131 Baltoy
  (701, 343, NULL, 131, TRUE),
  -- #132 Claydol
  (701, 344, NULL, 132, TRUE),
  -- #133 Lileep
  (701, 345, NULL, 133, TRUE),
  -- #134 Cradily
  (701, 346, NULL, 134, TRUE),
  -- #135 Anorith
  (701, 347, NULL, 135, TRUE),
  -- #136 Armaldo
  (701, 348, NULL, 136, TRUE),
  -- #137 Igglybuff
  (701, 174, NULL, 137, TRUE),
  -- #138 Jigglypuff
  (701, 39, NULL, 138, TRUE),
  -- #139 Wigglytuff
  (701, 40, NULL, 139, TRUE),
  -- #140 Feebas
  (701, 349, NULL, 140, TRUE),
  -- #141 Milotic
  (701, 350, NULL, 141, TRUE),
  -- #142 Castform
  (701, 351, NULL, 142, TRUE),
  -- #143 Staryu
  (701, 120, NULL, 143, TRUE),
  -- #144 Starmie
  (701, 121, NULL, 144, TRUE),
  -- #145 Kecleon
  (701, 352, NULL, 145, TRUE),
  -- #146 Shuppet
  (701, 353, NULL, 146, TRUE),
  -- #147 Banette
  (701, 354, NULL, 147, TRUE),
  -- #148 Duskull
  (701, 355, NULL, 148, TRUE),
  -- #149 Dusclops
  (701, 356, NULL, 149, TRUE),
  -- #150 Tropius
  (701, 357, NULL, 150, TRUE),
  -- #151 Chimecho
  (701, 358, NULL, 151, TRUE),
  -- #152 Absol
  (701, 359, NULL, 152, TRUE),
  -- #153 Vulpix
  (701, 37, NULL, 153, TRUE),
  -- #154 Ninetales
  (701, 38, NULL, 154, TRUE),
  -- #155 Pichu
  (701, 172, NULL, 155, TRUE),
  -- #156 Pikachu
  (701, 25, NULL, 156, TRUE),
  -- #157 Raichu
  (701, 26, NULL, 157, TRUE),
  -- #158 Psyduck
  (701, 54, NULL, 158, TRUE),
  -- #159 Golduck
  (701, 55, NULL, 159, TRUE),
  -- #160 Wynaut
  (701, 360, NULL, 160, TRUE),
  -- #161 Wobbuffet
  (701, 202, NULL, 161, TRUE),
  -- #162 Natu
  (701, 177, NULL, 162, TRUE),
  -- #163 Xatu
  (701, 178, NULL, 163, TRUE),
  -- #164 Girafarig
  (701, 203, NULL, 164, TRUE),
  -- #165 Phanpy
  (701, 231, NULL, 165, TRUE),
  -- #166 Donphan
  (701, 232, NULL, 166, TRUE),
  -- #167 Pinsir
  (701, 127, NULL, 167, TRUE),
  -- #168 Heracross
  (701, 214, NULL, 168, TRUE),
  -- #169 Rhyhorn
  (701, 111, NULL, 169, TRUE),
  -- #170 Rhydon
  (701, 112, NULL, 170, TRUE),
  -- #171 Snorunt
  (701, 361, NULL, 171, TRUE),
  -- #172 Glalie
  (701, 362, NULL, 172, TRUE),
  -- #173 Spheal
  (701, 363, NULL, 173, TRUE),
  -- #174 Sealeo
  (701, 364, NULL, 174, TRUE),
  -- #175 Walrein
  (701, 365, NULL, 175, TRUE),
  -- #176 Clamperl
  (701, 366, NULL, 176, TRUE),
  -- #177 Huntail
  (701, 367, NULL, 177, TRUE),
  -- #178 Gorebyss
  (701, 368, NULL, 178, TRUE),
  -- #179 Relicanth
  (701, 369, NULL, 179, TRUE),
  -- #180 Corsola
  (701, 222, NULL, 180, TRUE),
  -- #181 Chinchou
  (701, 170, NULL, 181, TRUE),
  -- #182 Lanturn
  (701, 171, NULL, 182, TRUE),
  -- #183 Luvdisc
  (701, 370, NULL, 183, TRUE),
  -- #184 Horsea
  (701, 116, NULL, 184, TRUE),
  -- #185 Seadra
  (701, 117, NULL, 185, TRUE),
  -- #186 Kingdra
  (701, 230, NULL, 186, TRUE),
  -- #187 Bagon
  (701, 371, NULL, 187, TRUE),
  -- #188 Shelgon
  (701, 372, NULL, 188, TRUE),
  -- #189 Salamence
  (701, 373, NULL, 189, TRUE),
  -- #190 Beldum
  (701, 374, NULL, 190, TRUE),
  -- #191 Metang
  (701, 375, NULL, 191, TRUE),
  -- #192 Metagross
  (701, 376, NULL, 192, TRUE),
  -- #193 Regirock
  (701, 377, NULL, 193, TRUE),
  -- #194 Regice
  (701, 378, NULL, 194, TRUE),
  -- #195 Registeel
  (701, 379, NULL, 195, TRUE),
  -- #196 Latias
  (701, 380, NULL, 196, TRUE),
  -- #197 Latios
  (701, 381, NULL, 197, TRUE),
  -- #198 Kyogre
  (701, 382, NULL, 198, TRUE),
  -- #199 Groudon
  (701, 383, NULL, 199, TRUE),
  -- #200 Rayquaza
  (701, 384, NULL, 200, TRUE),
  -- #201 Jirachi
  (701, 385, NULL, 201, FALSE),
  -- #202 Deoxys
  (701, 386, NULL, 202, FALSE);
