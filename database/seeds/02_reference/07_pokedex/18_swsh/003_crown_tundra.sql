-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Crown Tundra Pokedex number.
-- Cross-check: PokemonDB Crown Tundra Pokedex and legacy Voydex Crown Tundra Pokedex entry seed.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Crown Tundra Pokedex entries for Sword / Shield Expansion Pass.
-- Crown Tundra contains 210 Pokedex species.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Snom
  (2001, 872, NULL, 1, TRUE),
  -- #002 Frosmoth
  (2001, 873, NULL, 2, TRUE),
  -- #003 Wooloo
  (2001, 831, NULL, 3, TRUE),
  -- #004 Dubwool
  (2001, 832, NULL, 4, TRUE),
  -- #005 Skwovet
  (2001, 819, NULL, 5, TRUE),
  -- #006 Greedent
  (2001, 820, NULL, 6, TRUE),
  -- #007 Swinub
  (2001, 220, NULL, 7, TRUE),
  -- #008 Piloswine
  (2001, 221, NULL, 8, TRUE),
  -- #009 Mamoswine
  (2001, 473, NULL, 9, TRUE),
  -- #010 Mime Jr.
  (2001, 439, NULL, 10, TRUE),
  -- #011 Mr. Mime
  (2001, 122, NULL, 11, TRUE),
  -- #012 Mr. Rime
  (2001, 866, NULL, 12, TRUE),
  -- #013 Smoochum
  (2001, 238, NULL, 13, TRUE),
  -- #014 Jynx
  (2001, 124, NULL, 14, TRUE),
  -- #015 Elekid
  (2001, 239, NULL, 15, TRUE),
  -- #016 Electabuzz
  (2001, 125, NULL, 16, TRUE),
  -- #017 Electivire
  (2001, 466, NULL, 17, TRUE),
  -- #018 Magby
  (2001, 240, NULL, 18, TRUE),
  -- #019 Magmar
  (2001, 126, NULL, 19, TRUE),
  -- #020 Magmortar
  (2001, 467, NULL, 20, TRUE),
  -- #021 Audino
  (2001, 531, NULL, 21, TRUE),
  -- #022 Vanillite
  (2001, 582, NULL, 22, TRUE),
  -- #023 Vanillish
  (2001, 583, NULL, 23, TRUE),
  -- #024 Vanilluxe
  (2001, 584, NULL, 24, TRUE),
  -- #025 Snorunt
  (2001, 361, NULL, 25, TRUE),
  -- #026 Glalie
  (2001, 362, NULL, 26, TRUE),
  -- #027 Froslass
  (2001, 478, NULL, 27, TRUE),
  -- #028 Sneasel
  (2001, 215, NULL, 28, TRUE),
  -- #029 Weavile
  (2001, 461, NULL, 29, TRUE),
  -- #030 Cryogonal
  (2001, 615, NULL, 30, TRUE),
  -- #031 Snover
  (2001, 459, NULL, 31, TRUE),
  -- #032 Abomasnow
  (2001, 460, NULL, 32, TRUE),
  -- #033 Phantump
  (2001, 708, NULL, 33, TRUE),
  -- #034 Trevenant
  (2001, 709, NULL, 34, TRUE),
  -- #035 Swablu
  (2001, 333, NULL, 35, TRUE),
  -- #036 Altaria
  (2001, 334, NULL, 36, TRUE),
  -- #037 Impidimp
  (2001, 859, NULL, 37, TRUE),
  -- #038 Morgrem
  (2001, 860, NULL, 38, TRUE),
  -- #039 Grimmsnarl
  (2001, 861, NULL, 39, TRUE),
  -- #040 Hatenna
  (2001, 856, NULL, 40, TRUE),
  -- #041 Hattrem
  (2001, 857, NULL, 41, TRUE),
  -- #042 Hatterene
  (2001, 858, NULL, 42, TRUE),
  -- #043 Cleffa
  (2001, 173, NULL, 43, TRUE),
  -- #044 Clefairy
  (2001, 35, NULL, 44, TRUE),
  -- #045 Clefable
  (2001, 36, NULL, 45, TRUE),
  -- #046 Mimikyu
  (2001, 778, NULL, 46, TRUE),
  -- #047 Spiritomb
  (2001, 442, NULL, 47, TRUE),
  -- #048 Litwick
  (2001, 607, NULL, 48, TRUE),
  -- #049 Lampent
  (2001, 608, NULL, 49, TRUE),
  -- #050 Chandelure
  (2001, 609, NULL, 50, TRUE),
  -- #051 Gothita
  (2001, 574, NULL, 51, TRUE),
  -- #052 Gothorita
  (2001, 575, NULL, 52, TRUE),
  -- #053 Gothitelle
  (2001, 576, NULL, 53, TRUE),
  -- #054 Solosis
  (2001, 577, NULL, 54, TRUE),
  -- #055 Duosion
  (2001, 578, NULL, 55, TRUE),
  -- #056 Reuniclus
  (2001, 579, NULL, 56, TRUE),
  -- #057 Timburr
  (2001, 532, NULL, 57, TRUE),
  -- #058 Gurdurr
  (2001, 533, NULL, 58, TRUE),
  -- #059 Conkeldurr
  (2001, 534, NULL, 59, TRUE),
  -- #060 Barboach
  (2001, 339, NULL, 60, TRUE),
  -- #061 Whiscash
  (2001, 340, NULL, 61, TRUE),
  -- #062 Magikarp
  (2001, 129, NULL, 62, TRUE),
  -- #063 Gyarados
  (2001, 130, NULL, 63, TRUE),
  -- #064 Basculin
  (2001, 550, NULL, 64, TRUE),
  -- #065 Nidoran F
  (2001, 29, NULL, 65, TRUE),
  -- #066 Nidorina
  (2001, 30, NULL, 66, TRUE),
  -- #067 Nidoqueen
  (2001, 31, NULL, 67, TRUE),
  -- #068 Nidoran M
  (2001, 32, NULL, 68, TRUE),
  -- #069 Nidorino
  (2001, 33, NULL, 69, TRUE),
  -- #070 Nidoking
  (2001, 34, NULL, 70, TRUE),
  -- #071 Zigzagoon
  (2001, 263, NULL, 71, TRUE),
  -- #072 Linoone
  (2001, 264, NULL, 72, TRUE),
  -- #073 Obstagoon
  (2001, 862, NULL, 73, TRUE),
  -- #074 Eevee
  (2001, 133, NULL, 74, TRUE),
  -- #075 Vaporeon
  (2001, 134, NULL, 75, TRUE),
  -- #076 Jolteon
  (2001, 135, NULL, 76, TRUE),
  -- #077 Flareon
  (2001, 136, NULL, 77, TRUE),
  -- #078 Umbreon
  (2001, 197, NULL, 78, TRUE),
  -- #079 Espeon
  (2001, 196, NULL, 79, TRUE),
  -- #080 Glaceon
  (2001, 471, NULL, 80, TRUE),
  -- #081 Leafeon
  (2001, 470, NULL, 81, TRUE),
  -- #082 Sylveon
  (2001, 700, NULL, 82, TRUE),
  -- #083 Tyrunt
  (2001, 696, NULL, 83, TRUE),
  -- #084 Tyrantrum
  (2001, 697, NULL, 84, TRUE),
  -- #085 Amaura
  (2001, 698, NULL, 85, TRUE),
  -- #086 Aurorus
  (2001, 699, NULL, 86, TRUE),
  -- #087 Bronzor
  (2001, 436, NULL, 87, TRUE),
  -- #088 Bronzong
  (2001, 437, NULL, 88, TRUE),
  -- #089 Stonjourner
  (2001, 874, NULL, 89, TRUE),
  -- #090 Eiscue
  (2001, 875, NULL, 90, TRUE),
  -- #091 Dewpider
  (2001, 751, NULL, 91, TRUE),
  -- #092 Araquanid
  (2001, 752, NULL, 92, TRUE),
  -- #093 Joltik
  (2001, 595, NULL, 93, TRUE),
  -- #094 Galvantula
  (2001, 596, NULL, 94, TRUE),
  -- #095 Karrablast
  (2001, 588, NULL, 95, TRUE),
  -- #096 Escavalier
  (2001, 589, NULL, 96, TRUE),
  -- #097 Shelmet
  (2001, 616, NULL, 97, TRUE),
  -- #098 Accelgor
  (2001, 617, NULL, 98, TRUE),
  -- #099 Sizzlipede
  (2001, 850, NULL, 99, TRUE),
  -- #100 Centiskorch
  (2001, 851, NULL, 100, TRUE),
  -- #101 Durant
  (2001, 632, NULL, 101, TRUE),
  -- #102 Heatmor
  (2001, 631, NULL, 102, TRUE),
  -- #103 Darumaka
  (2001, 554, NULL, 103, TRUE),
  -- #104 Darmanitan
  (2001, 555, NULL, 104, TRUE),
  -- #105 Ponyta
  (2001, 77, NULL, 105, TRUE),
  -- #106 Rapidash
  (2001, 78, NULL, 106, TRUE),
  -- #107 Absol
  (2001, 359, NULL, 107, TRUE),
  -- #108 Cufant
  (2001, 878, NULL, 108, TRUE),
  -- #109 Copperajah
  (2001, 879, NULL, 109, TRUE),
  -- #110 Dreepy
  (2001, 885, NULL, 110, TRUE),
  -- #111 Drakloak
  (2001, 886, NULL, 111, TRUE),
  -- #112 Dragapult
  (2001, 887, NULL, 112, TRUE),
  -- #113 Bagon
  (2001, 371, NULL, 113, TRUE),
  -- #114 Shelgon
  (2001, 372, NULL, 114, TRUE),
  -- #115 Salamence
  (2001, 373, NULL, 115, TRUE),
  -- #116 Gible
  (2001, 443, NULL, 116, TRUE),
  -- #117 Gabite
  (2001, 444, NULL, 117, TRUE),
  -- #118 Garchomp
  (2001, 445, NULL, 118, TRUE),
  -- #119 Druddigon
  (2001, 621, NULL, 119, TRUE),
  -- #120 Delibird
  (2001, 225, NULL, 120, TRUE),
  -- #121 Cubchoo
  (2001, 613, NULL, 121, TRUE),
  -- #122 Beartic
  (2001, 614, NULL, 122, TRUE),
  -- #123 Omanyte
  (2001, 138, NULL, 123, TRUE),
  -- #124 Omastar
  (2001, 139, NULL, 124, TRUE),
  -- #125 Kabuto
  (2001, 140, NULL, 125, TRUE),
  -- #126 Kabutops
  (2001, 141, NULL, 126, TRUE),
  -- #127 Aerodactyl
  (2001, 142, NULL, 127, TRUE),
  -- #128 Carbink
  (2001, 703, NULL, 128, TRUE),
  -- #129 Beldum
  (2001, 374, NULL, 129, TRUE),
  -- #130 Metang
  (2001, 375, NULL, 130, TRUE),
  -- #131 Metagross
  (2001, 376, NULL, 131, TRUE),
  -- #132 Sinistea
  (2001, 854, NULL, 132, TRUE),
  -- #133 Polteageist
  (2001, 855, NULL, 133, TRUE),
  -- #134 Riolu
  (2001, 447, NULL, 134, TRUE),
  -- #135 Lucario
  (2001, 448, NULL, 135, TRUE),
  -- #136 Deino
  (2001, 633, NULL, 136, TRUE),
  -- #137 Zweilous
  (2001, 634, NULL, 137, TRUE),
  -- #138 Hydreigon
  (2001, 635, NULL, 138, TRUE),
  -- #139 Larvitar
  (2001, 246, NULL, 139, TRUE),
  -- #140 Pupitar
  (2001, 247, NULL, 140, TRUE),
  -- #141 Tyranitar
  (2001, 248, NULL, 141, TRUE),
  -- #142 Bergmite
  (2001, 712, NULL, 142, TRUE),
  -- #143 Avalugg
  (2001, 713, NULL, 143, TRUE),
  -- #144 Zubat
  (2001, 41, NULL, 144, TRUE),
  -- #145 Golbat
  (2001, 42, NULL, 145, TRUE),
  -- #146 Crobat
  (2001, 169, NULL, 146, TRUE),
  -- #147 Tirtouga
  (2001, 564, NULL, 147, TRUE),
  -- #148 Carracosta
  (2001, 565, NULL, 148, TRUE),
  -- #149 Archen
  (2001, 566, NULL, 149, TRUE),
  -- #150 Archeops
  (2001, 567, NULL, 150, TRUE),
  -- #151 Baltoy
  (2001, 343, NULL, 151, TRUE),
  -- #152 Claydol
  (2001, 344, NULL, 152, TRUE),
  -- #153 Golett
  (2001, 622, NULL, 153, TRUE),
  -- #154 Golurk
  (2001, 623, NULL, 154, TRUE),
  -- #155 Yamper
  (2001, 835, NULL, 155, TRUE),
  -- #156 Boltund
  (2001, 836, NULL, 156, TRUE),
  -- #157 Morpeko
  (2001, 877, NULL, 157, TRUE),
  -- #158 Pincurchin
  (2001, 871, NULL, 158, TRUE),
  -- #159 Spheal
  (2001, 363, NULL, 159, TRUE),
  -- #160 Sealeo
  (2001, 364, NULL, 160, TRUE),
  -- #161 Walrein
  (2001, 365, NULL, 161, TRUE),
  -- #162 Dhelmise
  (2001, 781, NULL, 162, TRUE),
  -- #163 Rookidee
  (2001, 821, NULL, 163, TRUE),
  -- #164 Corvisquire
  (2001, 822, NULL, 164, TRUE),
  -- #165 Corviknight
  (2001, 823, NULL, 165, TRUE),
  -- #166 Gossifleur
  (2001, 829, NULL, 166, TRUE),
  -- #167 Eldegoss
  (2001, 830, NULL, 167, TRUE),
  -- #168 Cottonee
  (2001, 546, NULL, 168, TRUE),
  -- #169 Whimsicott
  (2001, 547, NULL, 169, TRUE),
  -- #170 Shuckle
  (2001, 213, NULL, 170, TRUE),
  -- #171 Indeedee
  (2001, 876, NULL, 171, TRUE),
  -- #172 Munchlax
  (2001, 446, NULL, 172, TRUE),
  -- #173 Snorlax
  (2001, 143, NULL, 173, TRUE),
  -- #174 Sableye
  (2001, 302, NULL, 174, TRUE),
  -- #175 Mawile
  (2001, 303, NULL, 175, TRUE),
  -- #176 Rolycoly
  (2001, 837, NULL, 176, TRUE),
  -- #177 Carkol
  (2001, 838, NULL, 177, TRUE),
  -- #178 Coalossal
  (2001, 839, NULL, 178, TRUE),
  -- #179 Ferroseed
  (2001, 597, NULL, 179, TRUE),
  -- #180 Ferrothorn
  (2001, 598, NULL, 180, TRUE),
  -- #181 Noibat
  (2001, 714, NULL, 181, TRUE),
  -- #182 Noivern
  (2001, 715, NULL, 182, TRUE),
  -- #183 Lileep
  (2001, 345, NULL, 183, TRUE),
  -- #184 Cradily
  (2001, 346, NULL, 184, TRUE),
  -- #185 Anorith
  (2001, 347, NULL, 185, TRUE),
  -- #186 Armaldo
  (2001, 348, NULL, 186, TRUE),
  -- #187 Relicanth
  (2001, 369, NULL, 187, TRUE),
  -- #188 Feebas
  (2001, 349, NULL, 188, TRUE),
  -- #189 Milotic
  (2001, 350, NULL, 189, TRUE),
  -- #190 Lapras
  (2001, 131, NULL, 190, TRUE),
  -- #191 Aron
  (2001, 304, NULL, 191, TRUE),
  -- #192 Lairon
  (2001, 305, NULL, 192, TRUE),
  -- #193 Aggron
  (2001, 306, NULL, 193, TRUE),
  -- #194 Dratini
  (2001, 147, NULL, 194, TRUE),
  -- #195 Dragonair
  (2001, 148, NULL, 195, TRUE),
  -- #196 Dragonite
  (2001, 149, NULL, 196, TRUE),
  -- #197 Regirock
  (2001, 377, NULL, 197, TRUE),
  -- #198 Regice
  (2001, 378, NULL, 198, TRUE),
  -- #199 Registeel
  (2001, 379, NULL, 199, TRUE),
  -- #200 Regieleki
  (2001, 894, NULL, 200, TRUE),
  -- #201 Regidrago
  (2001, 895, NULL, 201, TRUE),
  -- #202 Articuno
  (2001, 144, NULL, 202, TRUE),
  -- #203 Zapdos
  (2001, 145, NULL, 203, TRUE),
  -- #204 Moltres
  (2001, 146, NULL, 204, TRUE),
  -- #205 Cobalion
  (2001, 638, NULL, 205, TRUE),
  -- #206 Terrakion
  (2001, 639, NULL, 206, TRUE),
  -- #207 Virizion
  (2001, 640, NULL, 207, TRUE),
  -- #208 Glastrier
  (2001, 896, NULL, 208, TRUE),
  -- #209 Spectrier
  (2001, 897, NULL, 209, TRUE),
  -- #210 Calyrex
  (2001, 898, NULL, 210, TRUE);
