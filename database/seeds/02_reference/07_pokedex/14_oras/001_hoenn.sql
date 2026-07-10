-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Hoenn Pokedex number in Generation VI.
-- Cross-check: PokemonDB Omega Ruby / Alpha Sapphire Pokedex, Serebii ORAS Hoenn Pokedex, and legacy Voydex Pokedex entry seed.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Hoenn Pokedex entries for Omega Ruby / Alpha Sapphire.
-- Omega Ruby / Alpha Sapphire expands the Hoenn Pokedex to 211 entries with nine Generation IV relatives.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Treecko
  (1401, 252, NULL, 1, TRUE),
  -- #002 Grovyle
  (1401, 253, NULL, 2, TRUE),
  -- #003 Sceptile
  (1401, 254, NULL, 3, TRUE),
  -- #004 Torchic
  (1401, 255, NULL, 4, TRUE),
  -- #005 Combusken
  (1401, 256, NULL, 5, TRUE),
  -- #006 Blaziken
  (1401, 257, NULL, 6, TRUE),
  -- #007 Mudkip
  (1401, 258, NULL, 7, TRUE),
  -- #008 Marshtomp
  (1401, 259, NULL, 8, TRUE),
  -- #009 Swampert
  (1401, 260, NULL, 9, TRUE),
  -- #010 Poochyena
  (1401, 261, NULL, 10, TRUE),
  -- #011 Mightyena
  (1401, 262, NULL, 11, TRUE),
  -- #012 Zigzagoon
  (1401, 263, NULL, 12, TRUE),
  -- #013 Linoone
  (1401, 264, NULL, 13, TRUE),
  -- #014 Wurmple
  (1401, 265, NULL, 14, TRUE),
  -- #015 Silcoon
  (1401, 266, NULL, 15, TRUE),
  -- #016 Beautifly
  (1401, 267, NULL, 16, TRUE),
  -- #017 Cascoon
  (1401, 268, NULL, 17, TRUE),
  -- #018 Dustox
  (1401, 269, NULL, 18, TRUE),
  -- #019 Lotad
  (1401, 270, NULL, 19, TRUE),
  -- #020 Lombre
  (1401, 271, NULL, 20, TRUE),
  -- #021 Ludicolo
  (1401, 272, NULL, 21, TRUE),
  -- #022 Seedot
  (1401, 273, NULL, 22, TRUE),
  -- #023 Nuzleaf
  (1401, 274, NULL, 23, TRUE),
  -- #024 Shiftry
  (1401, 275, NULL, 24, TRUE),
  -- #025 Taillow
  (1401, 276, NULL, 25, TRUE),
  -- #026 Swellow
  (1401, 277, NULL, 26, TRUE),
  -- #027 Wingull
  (1401, 278, NULL, 27, TRUE),
  -- #028 Pelipper
  (1401, 279, NULL, 28, TRUE),
  -- #029 Ralts
  (1401, 280, NULL, 29, TRUE),
  -- #030 Kirlia
  (1401, 281, NULL, 30, TRUE),
  -- #031 Gardevoir
  (1401, 282, NULL, 31, TRUE),
  -- #032 Gallade
  (1401, 475, NULL, 32, TRUE),
  -- #033 Surskit
  (1401, 283, NULL, 33, TRUE),
  -- #034 Masquerain
  (1401, 284, NULL, 34, TRUE),
  -- #035 Shroomish
  (1401, 285, NULL, 35, TRUE),
  -- #036 Breloom
  (1401, 286, NULL, 36, TRUE),
  -- #037 Slakoth
  (1401, 287, NULL, 37, TRUE),
  -- #038 Vigoroth
  (1401, 288, NULL, 38, TRUE),
  -- #039 Slaking
  (1401, 289, NULL, 39, TRUE),
  -- #040 Abra
  (1401, 63, NULL, 40, TRUE),
  -- #041 Kadabra
  (1401, 64, NULL, 41, TRUE),
  -- #042 Alakazam
  (1401, 65, NULL, 42, TRUE),
  -- #043 Nincada
  (1401, 290, NULL, 43, TRUE),
  -- #044 Ninjask
  (1401, 291, NULL, 44, TRUE),
  -- #045 Shedinja
  (1401, 292, NULL, 45, TRUE),
  -- #046 Whismur
  (1401, 293, NULL, 46, TRUE),
  -- #047 Loudred
  (1401, 294, NULL, 47, TRUE),
  -- #048 Exploud
  (1401, 295, NULL, 48, TRUE),
  -- #049 Makuhita
  (1401, 296, NULL, 49, TRUE),
  -- #050 Hariyama
  (1401, 297, NULL, 50, TRUE),
  -- #051 Goldeen
  (1401, 118, NULL, 51, TRUE),
  -- #052 Seaking
  (1401, 119, NULL, 52, TRUE),
  -- #053 Magikarp
  (1401, 129, NULL, 53, TRUE),
  -- #054 Gyarados
  (1401, 130, NULL, 54, TRUE),
  -- #055 Azurill
  (1401, 298, NULL, 55, TRUE),
  -- #056 Marill
  (1401, 183, NULL, 56, TRUE),
  -- #057 Azumarill
  (1401, 184, NULL, 57, TRUE),
  -- #058 Geodude
  (1401, 74, NULL, 58, TRUE),
  -- #059 Graveler
  (1401, 75, NULL, 59, TRUE),
  -- #060 Golem
  (1401, 76, NULL, 60, TRUE),
  -- #061 Nosepass
  (1401, 299, NULL, 61, TRUE),
  -- #062 Probopass
  (1401, 476, NULL, 62, TRUE),
  -- #063 Skitty
  (1401, 300, NULL, 63, TRUE),
  -- #064 Delcatty
  (1401, 301, NULL, 64, TRUE),
  -- #065 Zubat
  (1401, 41, NULL, 65, TRUE),
  -- #066 Golbat
  (1401, 42, NULL, 66, TRUE),
  -- #067 Crobat
  (1401, 169, NULL, 67, TRUE),
  -- #068 Tentacool
  (1401, 72, NULL, 68, TRUE),
  -- #069 Tentacruel
  (1401, 73, NULL, 69, TRUE),
  -- #070 Sableye
  (1401, 302, NULL, 70, TRUE),
  -- #071 Mawile
  (1401, 303, NULL, 71, TRUE),
  -- #072 Aron
  (1401, 304, NULL, 72, TRUE),
  -- #073 Lairon
  (1401, 305, NULL, 73, TRUE),
  -- #074 Aggron
  (1401, 306, NULL, 74, TRUE),
  -- #075 Machop
  (1401, 66, NULL, 75, TRUE),
  -- #076 Machoke
  (1401, 67, NULL, 76, TRUE),
  -- #077 Machamp
  (1401, 68, NULL, 77, TRUE),
  -- #078 Meditite
  (1401, 307, NULL, 78, TRUE),
  -- #079 Medicham
  (1401, 308, NULL, 79, TRUE),
  -- #080 Electrike
  (1401, 309, NULL, 80, TRUE),
  -- #081 Manectric
  (1401, 310, NULL, 81, TRUE),
  -- #082 Plusle
  (1401, 311, NULL, 82, TRUE),
  -- #083 Minun
  (1401, 312, NULL, 83, TRUE),
  -- #084 Magnemite
  (1401, 81, NULL, 84, TRUE),
  -- #085 Magneton
  (1401, 82, NULL, 85, TRUE),
  -- #086 Magnezone
  (1401, 462, NULL, 86, TRUE),
  -- #087 Voltorb
  (1401, 100, NULL, 87, TRUE),
  -- #088 Electrode
  (1401, 101, NULL, 88, TRUE),
  -- #089 Volbeat
  (1401, 313, NULL, 89, TRUE),
  -- #090 Illumise
  (1401, 314, NULL, 90, TRUE),
  -- #091 Oddish
  (1401, 43, NULL, 91, TRUE),
  -- #092 Gloom
  (1401, 44, NULL, 92, TRUE),
  -- #093 Vileplume
  (1401, 45, NULL, 93, TRUE),
  -- #094 Bellossom
  (1401, 182, NULL, 94, TRUE),
  -- #095 Doduo
  (1401, 84, NULL, 95, TRUE),
  -- #096 Dodrio
  (1401, 85, NULL, 96, TRUE),
  -- #097 Budew
  (1401, 406, NULL, 97, TRUE),
  -- #098 Roselia
  (1401, 315, NULL, 98, TRUE),
  -- #099 Roserade
  (1401, 407, NULL, 99, TRUE),
  -- #100 Gulpin
  (1401, 316, NULL, 100, TRUE),
  -- #101 Swalot
  (1401, 317, NULL, 101, TRUE),
  -- #102 Carvanha
  (1401, 318, NULL, 102, TRUE),
  -- #103 Sharpedo
  (1401, 319, NULL, 103, TRUE),
  -- #104 Wailmer
  (1401, 320, NULL, 104, TRUE),
  -- #105 Wailord
  (1401, 321, NULL, 105, TRUE),
  -- #106 Numel
  (1401, 322, NULL, 106, TRUE),
  -- #107 Camerupt
  (1401, 323, NULL, 107, TRUE),
  -- #108 Slugma
  (1401, 218, NULL, 108, TRUE),
  -- #109 Magcargo
  (1401, 219, NULL, 109, TRUE),
  -- #110 Torkoal
  (1401, 324, NULL, 110, TRUE),
  -- #111 Grimer
  (1401, 88, NULL, 111, TRUE),
  -- #112 Muk
  (1401, 89, NULL, 112, TRUE),
  -- #113 Koffing
  (1401, 109, NULL, 113, TRUE),
  -- #114 Weezing
  (1401, 110, NULL, 114, TRUE),
  -- #115 Spoink
  (1401, 325, NULL, 115, TRUE),
  -- #116 Grumpig
  (1401, 326, NULL, 116, TRUE),
  -- #117 Sandshrew
  (1401, 27, NULL, 117, TRUE),
  -- #118 Sandslash
  (1401, 28, NULL, 118, TRUE),
  -- #119 Spinda
  (1401, 327, NULL, 119, TRUE),
  -- #120 Skarmory
  (1401, 227, NULL, 120, TRUE),
  -- #121 Trapinch
  (1401, 328, NULL, 121, TRUE),
  -- #122 Vibrava
  (1401, 329, NULL, 122, TRUE),
  -- #123 Flygon
  (1401, 330, NULL, 123, TRUE),
  -- #124 Cacnea
  (1401, 331, NULL, 124, TRUE),
  -- #125 Cacturne
  (1401, 332, NULL, 125, TRUE),
  -- #126 Swablu
  (1401, 333, NULL, 126, TRUE),
  -- #127 Altaria
  (1401, 334, NULL, 127, TRUE),
  -- #128 Zangoose
  (1401, 335, NULL, 128, TRUE),
  -- #129 Seviper
  (1401, 336, NULL, 129, TRUE),
  -- #130 Lunatone
  (1401, 337, NULL, 130, TRUE),
  -- #131 Solrock
  (1401, 338, NULL, 131, TRUE),
  -- #132 Barboach
  (1401, 339, NULL, 132, TRUE),
  -- #133 Whiscash
  (1401, 340, NULL, 133, TRUE),
  -- #134 Corphish
  (1401, 341, NULL, 134, TRUE),
  -- #135 Crawdaunt
  (1401, 342, NULL, 135, TRUE),
  -- #136 Baltoy
  (1401, 343, NULL, 136, TRUE),
  -- #137 Claydol
  (1401, 344, NULL, 137, TRUE),
  -- #138 Lileep
  (1401, 345, NULL, 138, TRUE),
  -- #139 Cradily
  (1401, 346, NULL, 139, TRUE),
  -- #140 Anorith
  (1401, 347, NULL, 140, TRUE),
  -- #141 Armaldo
  (1401, 348, NULL, 141, TRUE),
  -- #142 Igglybuff
  (1401, 174, NULL, 142, TRUE),
  -- #143 Jigglypuff
  (1401, 39, NULL, 143, TRUE),
  -- #144 Wigglytuff
  (1401, 40, NULL, 144, TRUE),
  -- #145 Feebas
  (1401, 349, NULL, 145, TRUE),
  -- #146 Milotic
  (1401, 350, NULL, 146, TRUE),
  -- #147 Castform
  (1401, 351, NULL, 147, TRUE),
  -- #148 Staryu
  (1401, 120, NULL, 148, TRUE),
  -- #149 Starmie
  (1401, 121, NULL, 149, TRUE),
  -- #150 Kecleon
  (1401, 352, NULL, 150, TRUE),
  -- #151 Shuppet
  (1401, 353, NULL, 151, TRUE),
  -- #152 Banette
  (1401, 354, NULL, 152, TRUE),
  -- #153 Duskull
  (1401, 355, NULL, 153, TRUE),
  -- #154 Dusclops
  (1401, 356, NULL, 154, TRUE),
  -- #155 Dusknoir
  (1401, 477, NULL, 155, TRUE),
  -- #156 Tropius
  (1401, 357, NULL, 156, TRUE),
  -- #157 Chingling
  (1401, 433, NULL, 157, TRUE),
  -- #158 Chimecho
  (1401, 358, NULL, 158, TRUE),
  -- #159 Absol
  (1401, 359, NULL, 159, TRUE),
  -- #160 Vulpix
  (1401, 37, NULL, 160, TRUE),
  -- #161 Ninetales
  (1401, 38, NULL, 161, TRUE),
  -- #162 Pichu
  (1401, 172, NULL, 162, TRUE),
  -- #163 Pikachu
  (1401, 25, NULL, 163, TRUE),
  -- #164 Raichu
  (1401, 26, NULL, 164, TRUE),
  -- #165 Psyduck
  (1401, 54, NULL, 165, TRUE),
  -- #166 Golduck
  (1401, 55, NULL, 166, TRUE),
  -- #167 Wynaut
  (1401, 360, NULL, 167, TRUE),
  -- #168 Wobbuffet
  (1401, 202, NULL, 168, TRUE),
  -- #169 Natu
  (1401, 177, NULL, 169, TRUE),
  -- #170 Xatu
  (1401, 178, NULL, 170, TRUE),
  -- #171 Girafarig
  (1401, 203, NULL, 171, TRUE),
  -- #172 Phanpy
  (1401, 231, NULL, 172, TRUE),
  -- #173 Donphan
  (1401, 232, NULL, 173, TRUE),
  -- #174 Pinsir
  (1401, 127, NULL, 174, TRUE),
  -- #175 Heracross
  (1401, 214, NULL, 175, TRUE),
  -- #176 Rhyhorn
  (1401, 111, NULL, 176, TRUE),
  -- #177 Rhydon
  (1401, 112, NULL, 177, TRUE),
  -- #178 Rhyperior
  (1401, 464, NULL, 178, TRUE),
  -- #179 Snorunt
  (1401, 361, NULL, 179, TRUE),
  -- #180 Glalie
  (1401, 362, NULL, 180, TRUE),
  -- #181 Froslass
  (1401, 478, NULL, 181, TRUE),
  -- #182 Spheal
  (1401, 363, NULL, 182, TRUE),
  -- #183 Sealeo
  (1401, 364, NULL, 183, TRUE),
  -- #184 Walrein
  (1401, 365, NULL, 184, TRUE),
  -- #185 Clamperl
  (1401, 366, NULL, 185, TRUE),
  -- #186 Huntail
  (1401, 367, NULL, 186, TRUE),
  -- #187 Gorebyss
  (1401, 368, NULL, 187, TRUE),
  -- #188 Relicanth
  (1401, 369, NULL, 188, TRUE),
  -- #189 Corsola
  (1401, 222, NULL, 189, TRUE),
  -- #190 Chinchou
  (1401, 170, NULL, 190, TRUE),
  -- #191 Lanturn
  (1401, 171, NULL, 191, TRUE),
  -- #192 Luvdisc
  (1401, 370, NULL, 192, TRUE),
  -- #193 Horsea
  (1401, 116, NULL, 193, TRUE),
  -- #194 Seadra
  (1401, 117, NULL, 194, TRUE),
  -- #195 Kingdra
  (1401, 230, NULL, 195, TRUE),
  -- #196 Bagon
  (1401, 371, NULL, 196, TRUE),
  -- #197 Shelgon
  (1401, 372, NULL, 197, TRUE),
  -- #198 Salamence
  (1401, 373, NULL, 198, TRUE),
  -- #199 Beldum
  (1401, 374, NULL, 199, TRUE),
  -- #200 Metang
  (1401, 375, NULL, 200, TRUE),
  -- #201 Metagross
  (1401, 376, NULL, 201, TRUE),
  -- #202 Regirock
  (1401, 377, NULL, 202, TRUE),
  -- #203 Regice
  (1401, 378, NULL, 203, TRUE),
  -- #204 Registeel
  (1401, 379, NULL, 204, TRUE),
  -- #205 Latias
  (1401, 380, NULL, 205, TRUE),
  -- #206 Latios
  (1401, 381, NULL, 206, TRUE),
  -- #207 Kyogre
  (1401, 382, NULL, 207, TRUE),
  -- #208 Groudon
  (1401, 383, NULL, 208, TRUE),
  -- #209 Rayquaza
  (1401, 384, NULL, 209, TRUE),
  -- #210 Jirachi
  (1401, 385, NULL, 210, FALSE),
  -- #211 Deoxys
  (1401, 386, NULL, 211, FALSE);
