-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Alola Pokedex number in Pokémon Sun and Moon.
-- Cross-check: PokemonDB Sun / Moon Pokedex and legacy Voydex Sun / Moon Alola Pokedex entry seed.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Alola Pokedex entries for Sun / Moon.
-- Sun / Moon contain 302 Alola Pokedex species; Magearna and Marshadow are source-visible but not required for regional completion.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Rowlet
  (1501, 722, NULL, 1, TRUE),
  -- #002 Dartrix
  (1501, 723, NULL, 2, TRUE),
  -- #003 Decidueye
  (1501, 724, NULL, 3, TRUE),
  -- #004 Litten
  (1501, 725, NULL, 4, TRUE),
  -- #005 Torracat
  (1501, 726, NULL, 5, TRUE),
  -- #006 Incineroar
  (1501, 727, NULL, 6, TRUE),
  -- #007 Popplio
  (1501, 728, NULL, 7, TRUE),
  -- #008 Brionne
  (1501, 729, NULL, 8, TRUE),
  -- #009 Primarina
  (1501, 730, NULL, 9, TRUE),
  -- #010 Pikipek
  (1501, 731, NULL, 10, TRUE),
  -- #011 Trumbeak
  (1501, 732, NULL, 11, TRUE),
  -- #012 Toucannon
  (1501, 733, NULL, 12, TRUE),
  -- #013 Yungoos
  (1501, 734, NULL, 13, TRUE),
  -- #014 Gumshoos
  (1501, 735, NULL, 14, TRUE),
  -- #015 Rattata
  (1501, 19, NULL, 15, TRUE),
  -- #016 Raticate
  (1501, 20, NULL, 16, TRUE),
  -- #017 Caterpie
  (1501, 10, NULL, 17, TRUE),
  -- #018 Metapod
  (1501, 11, NULL, 18, TRUE),
  -- #019 Butterfree
  (1501, 12, NULL, 19, TRUE),
  -- #020 Ledyba
  (1501, 165, NULL, 20, TRUE),
  -- #021 Ledian
  (1501, 166, NULL, 21, TRUE),
  -- #022 Spinarak
  (1501, 167, NULL, 22, TRUE),
  -- #023 Ariados
  (1501, 168, NULL, 23, TRUE),
  -- #024 Pichu
  (1501, 172, NULL, 24, TRUE),
  -- #025 Pikachu
  (1501, 25, NULL, 25, TRUE),
  -- #026 Raichu
  (1501, 26, NULL, 26, TRUE),
  -- #027 Grubbin
  (1501, 736, NULL, 27, TRUE),
  -- #028 Charjabug
  (1501, 737, NULL, 28, TRUE),
  -- #029 Vikavolt
  (1501, 738, NULL, 29, TRUE),
  -- #030 Bonsly
  (1501, 438, NULL, 30, TRUE),
  -- #031 Sudowoodo
  (1501, 185, NULL, 31, TRUE),
  -- #032 Happiny
  (1501, 440, NULL, 32, TRUE),
  -- #033 Chansey
  (1501, 113, NULL, 33, TRUE),
  -- #034 Blissey
  (1501, 242, NULL, 34, TRUE),
  -- #035 Munchlax
  (1501, 446, NULL, 35, TRUE),
  -- #036 Snorlax
  (1501, 143, NULL, 36, TRUE),
  -- #037 Slowpoke
  (1501, 79, NULL, 37, TRUE),
  -- #038 Slowbro
  (1501, 80, NULL, 38, TRUE),
  -- #039 Slowking
  (1501, 199, NULL, 39, TRUE),
  -- #040 Wingull
  (1501, 278, NULL, 40, TRUE),
  -- #041 Pelipper
  (1501, 279, NULL, 41, TRUE),
  -- #042 Abra
  (1501, 63, NULL, 42, TRUE),
  -- #043 Kadabra
  (1501, 64, NULL, 43, TRUE),
  -- #044 Alakazam
  (1501, 65, NULL, 44, TRUE),
  -- #045 Meowth
  (1501, 52, NULL, 45, TRUE),
  -- #046 Persian
  (1501, 53, NULL, 46, TRUE),
  -- #047 Magnemite
  (1501, 81, NULL, 47, TRUE),
  -- #048 Magneton
  (1501, 82, NULL, 48, TRUE),
  -- #049 Magnezone
  (1501, 462, NULL, 49, TRUE),
  -- #050 Grimer
  (1501, 88, NULL, 50, TRUE),
  -- #051 Muk
  (1501, 89, NULL, 51, TRUE),
  -- #052 Growlithe
  (1501, 58, NULL, 52, TRUE),
  -- #053 Arcanine
  (1501, 59, NULL, 53, TRUE),
  -- #054 Drowzee
  (1501, 96, NULL, 54, TRUE),
  -- #055 Hypno
  (1501, 97, NULL, 55, TRUE),
  -- #056 Makuhita
  (1501, 296, NULL, 56, TRUE),
  -- #057 Hariyama
  (1501, 297, NULL, 57, TRUE),
  -- #058 Smeargle
  (1501, 235, NULL, 58, TRUE),
  -- #059 Crabrawler
  (1501, 739, NULL, 59, TRUE),
  -- #060 Crabominable
  (1501, 740, NULL, 60, TRUE),
  -- #061 Gastly
  (1501, 92, NULL, 61, TRUE),
  -- #062 Haunter
  (1501, 93, NULL, 62, TRUE),
  -- #063 Gengar
  (1501, 94, NULL, 63, TRUE),
  -- #064 Drifloon
  (1501, 425, NULL, 64, TRUE),
  -- #065 Drifblim
  (1501, 426, NULL, 65, TRUE),
  -- #066 Misdreavus
  (1501, 200, NULL, 66, TRUE),
  -- #067 Mismagius
  (1501, 429, NULL, 67, TRUE),
  -- #068 Zubat
  (1501, 41, NULL, 68, TRUE),
  -- #069 Golbat
  (1501, 42, NULL, 69, TRUE),
  -- #070 Crobat
  (1501, 169, NULL, 70, TRUE),
  -- #071 Diglett
  (1501, 50, NULL, 71, TRUE),
  -- #072 Dugtrio
  (1501, 51, NULL, 72, TRUE),
  -- #073 Spearow
  (1501, 21, NULL, 73, TRUE),
  -- #074 Fearow
  (1501, 22, NULL, 74, TRUE),
  -- #075 Rufflet
  (1501, 627, NULL, 75, TRUE),
  -- #076 Braviary
  (1501, 628, NULL, 76, TRUE),
  -- #077 Vullaby
  (1501, 629, NULL, 77, TRUE),
  -- #078 Mandibuzz
  (1501, 630, NULL, 78, TRUE),
  -- #079 Mankey
  (1501, 56, NULL, 79, TRUE),
  -- #080 Primeape
  (1501, 57, NULL, 80, TRUE),
  -- #081 Delibird
  (1501, 225, NULL, 81, TRUE),
  -- #082 Oricorio
  (1501, 741, NULL, 82, TRUE),
  -- #083 Cutiefly
  (1501, 742, NULL, 83, TRUE),
  -- #084 Ribombee
  (1501, 743, NULL, 84, TRUE),
  -- #085 Petilil
  (1501, 548, NULL, 85, TRUE),
  -- #086 Lilligant
  (1501, 549, NULL, 86, TRUE),
  -- #087 Cottonee
  (1501, 546, NULL, 87, TRUE),
  -- #088 Whimsicott
  (1501, 547, NULL, 88, TRUE),
  -- #089 Psyduck
  (1501, 54, NULL, 89, TRUE),
  -- #090 Golduck
  (1501, 55, NULL, 90, TRUE),
  -- #091 Magikarp
  (1501, 129, NULL, 91, TRUE),
  -- #092 Gyarados
  (1501, 130, NULL, 92, TRUE),
  -- #093 Barboach
  (1501, 339, NULL, 93, TRUE),
  -- #094 Whiscash
  (1501, 340, NULL, 94, TRUE),
  -- #095 Machop
  (1501, 66, NULL, 95, TRUE),
  -- #096 Machoke
  (1501, 67, NULL, 96, TRUE),
  -- #097 Machamp
  (1501, 68, NULL, 97, TRUE),
  -- #098 Roggenrola
  (1501, 524, NULL, 98, TRUE),
  -- #099 Boldore
  (1501, 525, NULL, 99, TRUE),
  -- #100 Gigalith
  (1501, 526, NULL, 100, TRUE),
  -- #101 Carbink
  (1501, 703, NULL, 101, TRUE),
  -- #102 Sableye
  (1501, 302, NULL, 102, TRUE),
  -- #103 Rockruff
  (1501, 744, NULL, 103, TRUE),
  -- #104 Lycanroc
  (1501, 745, NULL, 104, TRUE),
  -- #105 Spinda
  (1501, 327, NULL, 105, TRUE),
  -- #106 Tentacool
  (1501, 72, NULL, 106, TRUE),
  -- #107 Tentacruel
  (1501, 73, NULL, 107, TRUE),
  -- #108 Finneon
  (1501, 456, NULL, 108, TRUE),
  -- #109 Lumineon
  (1501, 457, NULL, 109, TRUE),
  -- #110 Wishiwashi
  (1501, 746, NULL, 110, TRUE),
  -- #111 Luvdisc
  (1501, 370, NULL, 111, TRUE),
  -- #112 Corsola
  (1501, 222, NULL, 112, TRUE),
  -- #113 Mareanie
  (1501, 747, NULL, 113, TRUE),
  -- #114 Toxapex
  (1501, 748, NULL, 114, TRUE),
  -- #115 Shellder
  (1501, 90, NULL, 115, TRUE),
  -- #116 Cloyster
  (1501, 91, NULL, 116, TRUE),
  -- #117 Bagon
  (1501, 371, NULL, 117, TRUE),
  -- #118 Shelgon
  (1501, 372, NULL, 118, TRUE),
  -- #119 Salamence
  (1501, 373, NULL, 119, TRUE),
  -- #120 Lillipup
  (1501, 506, NULL, 120, TRUE),
  -- #121 Herdier
  (1501, 507, NULL, 121, TRUE),
  -- #122 Stoutland
  (1501, 508, NULL, 122, TRUE),
  -- #123 Eevee
  (1501, 133, NULL, 123, TRUE),
  -- #124 Vaporeon
  (1501, 134, NULL, 124, TRUE),
  -- #125 Jolteon
  (1501, 135, NULL, 125, TRUE),
  -- #126 Flareon
  (1501, 136, NULL, 126, TRUE),
  -- #127 Espeon
  (1501, 196, NULL, 127, TRUE),
  -- #128 Umbreon
  (1501, 197, NULL, 128, TRUE),
  -- #129 Leafeon
  (1501, 470, NULL, 129, TRUE),
  -- #130 Glaceon
  (1501, 471, NULL, 130, TRUE),
  -- #131 Sylveon
  (1501, 700, NULL, 131, TRUE),
  -- #132 Mudbray
  (1501, 749, NULL, 132, TRUE),
  -- #133 Mudsdale
  (1501, 750, NULL, 133, TRUE),
  -- #134 Igglybuff
  (1501, 174, NULL, 134, TRUE),
  -- #135 Jigglypuff
  (1501, 39, NULL, 135, TRUE),
  -- #136 Wigglytuff
  (1501, 40, NULL, 136, TRUE),
  -- #137 Tauros
  (1501, 128, NULL, 137, TRUE),
  -- #138 Miltank
  (1501, 241, NULL, 138, TRUE),
  -- #139 Surskit
  (1501, 283, NULL, 139, TRUE),
  -- #140 Masquerain
  (1501, 284, NULL, 140, TRUE),
  -- #141 Dewpider
  (1501, 751, NULL, 141, TRUE),
  -- #142 Araquanid
  (1501, 752, NULL, 142, TRUE),
  -- #143 Fomantis
  (1501, 753, NULL, 143, TRUE),
  -- #144 Lurantis
  (1501, 754, NULL, 144, TRUE),
  -- #145 Morelull
  (1501, 755, NULL, 145, TRUE),
  -- #146 Shiinotic
  (1501, 756, NULL, 146, TRUE),
  -- #147 Paras
  (1501, 46, NULL, 147, TRUE),
  -- #148 Parasect
  (1501, 47, NULL, 148, TRUE),
  -- #149 Poliwag
  (1501, 60, NULL, 149, TRUE),
  -- #150 Poliwhirl
  (1501, 61, NULL, 150, TRUE),
  -- #151 Poliwrath
  (1501, 62, NULL, 151, TRUE),
  -- #152 Politoed
  (1501, 186, NULL, 152, TRUE),
  -- #153 Goldeen
  (1501, 118, NULL, 153, TRUE),
  -- #154 Seaking
  (1501, 119, NULL, 154, TRUE),
  -- #155 Feebas
  (1501, 349, NULL, 155, TRUE),
  -- #156 Milotic
  (1501, 350, NULL, 156, TRUE),
  -- #157 Alomomola
  (1501, 594, NULL, 157, TRUE),
  -- #158 Fletchling
  (1501, 661, NULL, 158, TRUE),
  -- #159 Fletchinder
  (1501, 662, NULL, 159, TRUE),
  -- #160 Talonflame
  (1501, 663, NULL, 160, TRUE),
  -- #161 Salandit
  (1501, 757, NULL, 161, TRUE),
  -- #162 Salazzle
  (1501, 758, NULL, 162, TRUE),
  -- #163 Cubone
  (1501, 104, NULL, 163, TRUE),
  -- #164 Marowak
  (1501, 105, NULL, 164, TRUE),
  -- #165 Kangaskhan
  (1501, 115, NULL, 165, TRUE),
  -- #166 Magby
  (1501, 240, NULL, 166, TRUE),
  -- #167 Magmar
  (1501, 126, NULL, 167, TRUE),
  -- #168 Magmortar
  (1501, 467, NULL, 168, TRUE),
  -- #169 Stufful
  (1501, 759, NULL, 169, TRUE),
  -- #170 Bewear
  (1501, 760, NULL, 170, TRUE),
  -- #171 Bounsweet
  (1501, 761, NULL, 171, TRUE),
  -- #172 Steenee
  (1501, 762, NULL, 172, TRUE),
  -- #173 Tsareena
  (1501, 763, NULL, 173, TRUE),
  -- #174 Comfey
  (1501, 764, NULL, 174, TRUE),
  -- #175 Pinsir
  (1501, 127, NULL, 175, TRUE),
  -- #176 Oranguru
  (1501, 765, NULL, 176, TRUE),
  -- #177 Passimian
  (1501, 766, NULL, 177, TRUE),
  -- #178 Goomy
  (1501, 704, NULL, 178, TRUE),
  -- #179 Sliggoo
  (1501, 705, NULL, 179, TRUE),
  -- #180 Goodra
  (1501, 706, NULL, 180, TRUE),
  -- #181 Castform
  (1501, 351, NULL, 181, TRUE),
  -- #182 Wimpod
  (1501, 767, NULL, 182, TRUE),
  -- #183 Golisopod
  (1501, 768, NULL, 183, TRUE),
  -- #184 Staryu
  (1501, 120, NULL, 184, TRUE),
  -- #185 Starmie
  (1501, 121, NULL, 185, TRUE),
  -- #186 Sandygast
  (1501, 769, NULL, 186, TRUE),
  -- #187 Palossand
  (1501, 770, NULL, 187, TRUE),
  -- #188 Cranidos
  (1501, 408, NULL, 188, TRUE),
  -- #189 Rampardos
  (1501, 409, NULL, 189, TRUE),
  -- #190 Shieldon
  (1501, 410, NULL, 190, TRUE),
  -- #191 Bastiodon
  (1501, 411, NULL, 191, TRUE),
  -- #192 Archen
  (1501, 566, NULL, 192, TRUE),
  -- #193 Archeops
  (1501, 567, NULL, 193, TRUE),
  -- #194 Tirtouga
  (1501, 564, NULL, 194, TRUE),
  -- #195 Carracosta
  (1501, 565, NULL, 195, TRUE),
  -- #196 Phantump
  (1501, 708, NULL, 196, TRUE),
  -- #197 Trevenant
  (1501, 709, NULL, 197, TRUE),
  -- #198 Nosepass
  (1501, 299, NULL, 198, TRUE),
  -- #199 Probopass
  (1501, 476, NULL, 199, TRUE),
  -- #200 Pyukumuku
  (1501, 771, NULL, 200, TRUE),
  -- #201 Chinchou
  (1501, 170, NULL, 201, TRUE),
  -- #202 Lanturn
  (1501, 171, NULL, 202, TRUE),
  -- #203 Type: Null
  (1501, 772, NULL, 203, TRUE),
  -- #204 Silvally
  (1501, 773, NULL, 204, TRUE),
  -- #205 Zygarde
  (1501, 718, NULL, 205, TRUE),
  -- #206 Trubbish
  (1501, 568, NULL, 206, TRUE),
  -- #207 Garbodor
  (1501, 569, NULL, 207, TRUE),
  -- #208 Skarmory
  (1501, 227, NULL, 208, TRUE),
  -- #209 Ditto
  (1501, 132, NULL, 209, TRUE),
  -- #210 Cleffa
  (1501, 173, NULL, 210, TRUE),
  -- #211 Clefairy
  (1501, 35, NULL, 211, TRUE),
  -- #212 Clefable
  (1501, 36, NULL, 212, TRUE),
  -- #213 Minior
  (1501, 774, NULL, 213, TRUE),
  -- #214 Beldum
  (1501, 374, NULL, 214, TRUE),
  -- #215 Metang
  (1501, 375, NULL, 215, TRUE),
  -- #216 Metagross
  (1501, 376, NULL, 216, TRUE),
  -- #217 Porygon
  (1501, 137, NULL, 217, TRUE),
  -- #218 Porygon2
  (1501, 233, NULL, 218, TRUE),
  -- #219 Porygon-Z
  (1501, 474, NULL, 219, TRUE),
  -- #220 Pancham
  (1501, 674, NULL, 220, TRUE),
  -- #221 Pangoro
  (1501, 675, NULL, 221, TRUE),
  -- #222 Komala
  (1501, 775, NULL, 222, TRUE),
  -- #223 Torkoal
  (1501, 324, NULL, 223, TRUE),
  -- #224 Turtonator
  (1501, 776, NULL, 224, TRUE),
  -- #225 Togedemaru
  (1501, 777, NULL, 225, TRUE),
  -- #226 Elekid
  (1501, 239, NULL, 226, TRUE),
  -- #227 Electabuzz
  (1501, 125, NULL, 227, TRUE),
  -- #228 Electivire
  (1501, 466, NULL, 228, TRUE),
  -- #229 Geodude
  (1501, 74, NULL, 229, TRUE),
  -- #230 Graveler
  (1501, 75, NULL, 230, TRUE),
  -- #231 Golem
  (1501, 76, NULL, 231, TRUE),
  -- #232 Sandile
  (1501, 551, NULL, 232, TRUE),
  -- #233 Krokorok
  (1501, 552, NULL, 233, TRUE),
  -- #234 Krookodile
  (1501, 553, NULL, 234, TRUE),
  -- #235 Trapinch
  (1501, 328, NULL, 235, TRUE),
  -- #236 Vibrava
  (1501, 329, NULL, 236, TRUE),
  -- #237 Flygon
  (1501, 330, NULL, 237, TRUE),
  -- #238 Gible
  (1501, 443, NULL, 238, TRUE),
  -- #239 Gabite
  (1501, 444, NULL, 239, TRUE),
  -- #240 Garchomp
  (1501, 445, NULL, 240, TRUE),
  -- #241 Klefki
  (1501, 707, NULL, 241, TRUE),
  -- #242 Mimikyu
  (1501, 778, NULL, 242, TRUE),
  -- #243 Bruxish
  (1501, 779, NULL, 243, TRUE),
  -- #244 Drampa
  (1501, 780, NULL, 244, TRUE),
  -- #245 Absol
  (1501, 359, NULL, 245, TRUE),
  -- #246 Snorunt
  (1501, 361, NULL, 246, TRUE),
  -- #247 Glalie
  (1501, 362, NULL, 247, TRUE),
  -- #248 Froslass
  (1501, 478, NULL, 248, TRUE),
  -- #249 Sneasel
  (1501, 215, NULL, 249, TRUE),
  -- #250 Weavile
  (1501, 461, NULL, 250, TRUE),
  -- #251 Sandshrew
  (1501, 27, NULL, 251, TRUE),
  -- #252 Sandslash
  (1501, 28, NULL, 252, TRUE),
  -- #253 Vulpix
  (1501, 37, NULL, 253, TRUE),
  -- #254 Ninetales
  (1501, 38, NULL, 254, TRUE),
  -- #255 Vanillite
  (1501, 582, NULL, 255, TRUE),
  -- #256 Vanillish
  (1501, 583, NULL, 256, TRUE),
  -- #257 Vanilluxe
  (1501, 584, NULL, 257, TRUE),
  -- #258 Snubbull
  (1501, 209, NULL, 258, TRUE),
  -- #259 Granbull
  (1501, 210, NULL, 259, TRUE),
  -- #260 Shellos
  (1501, 422, NULL, 260, TRUE),
  -- #261 Gastrodon
  (1501, 423, NULL, 261, TRUE),
  -- #262 Relicanth
  (1501, 369, NULL, 262, TRUE),
  -- #263 Dhelmise
  (1501, 781, NULL, 263, TRUE),
  -- #264 Carvanha
  (1501, 318, NULL, 264, TRUE),
  -- #265 Sharpedo
  (1501, 319, NULL, 265, TRUE),
  -- #266 Wailmer
  (1501, 320, NULL, 266, TRUE),
  -- #267 Wailord
  (1501, 321, NULL, 267, TRUE),
  -- #268 Lapras
  (1501, 131, NULL, 268, TRUE),
  -- #269 Exeggcute
  (1501, 102, NULL, 269, TRUE),
  -- #270 Exeggutor
  (1501, 103, NULL, 270, TRUE),
  -- #271 Jangmo-o
  (1501, 782, NULL, 271, TRUE),
  -- #272 Hakamo-o
  (1501, 783, NULL, 272, TRUE),
  -- #273 Kommo-o
  (1501, 784, NULL, 273, TRUE),
  -- #274 Emolga
  (1501, 587, NULL, 274, TRUE),
  -- #275 Scyther
  (1501, 123, NULL, 275, TRUE),
  -- #276 Scizor
  (1501, 212, NULL, 276, TRUE),
  -- #277 Murkrow
  (1501, 198, NULL, 277, TRUE),
  -- #278 Honchkrow
  (1501, 430, NULL, 278, TRUE),
  -- #279 Riolu
  (1501, 447, NULL, 279, TRUE),
  -- #280 Lucario
  (1501, 448, NULL, 280, TRUE),
  -- #281 Dratini
  (1501, 147, NULL, 281, TRUE),
  -- #282 Dragonair
  (1501, 148, NULL, 282, TRUE),
  -- #283 Dragonite
  (1501, 149, NULL, 283, TRUE),
  -- #284 Aerodactyl
  (1501, 142, NULL, 284, TRUE),
  -- #285 Tapu Koko
  (1501, 785, NULL, 285, TRUE),
  -- #286 Tapu Lele
  (1501, 786, NULL, 286, TRUE),
  -- #287 Tapu Bulu
  (1501, 787, NULL, 287, TRUE),
  -- #288 Tapu Fini
  (1501, 788, NULL, 288, TRUE),
  -- #289 Cosmog
  (1501, 789, NULL, 289, TRUE),
  -- #290 Cosmoem
  (1501, 790, NULL, 290, TRUE),
  -- #291 Solgaleo
  (1501, 791, NULL, 291, TRUE),
  -- #292 Lunala
  (1501, 792, NULL, 292, TRUE),
  -- #293 Nihilego
  (1501, 793, NULL, 293, TRUE),
  -- #294 Buzzwole
  (1501, 794, NULL, 294, TRUE),
  -- #295 Pheromosa
  (1501, 795, NULL, 295, TRUE),
  -- #296 Xurkitree
  (1501, 796, NULL, 296, TRUE),
  -- #297 Celesteela
  (1501, 797, NULL, 297, TRUE),
  -- #298 Kartana
  (1501, 798, NULL, 298, TRUE),
  -- #299 Guzzlord
  (1501, 799, NULL, 299, TRUE),
  -- #300 Necrozma
  (1501, 800, NULL, 300, TRUE),
  -- #301 Magearna
  (1501, 801, NULL, 301, FALSE),
  -- #302 Marshadow
  (1501, 802, NULL, 302, FALSE);
