-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Galar Pokedex number.
-- Cross-check: PokemonDB Sword / Shield Galar Pokedex and legacy Voydex Sword / Shield Galar Pokedex entry seed.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Galar Pokedex entries for Sword / Shield.
-- Sword / Shield contain 400 base Galar Pokedex species.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Grookey
  (1801, 810, NULL, 1, TRUE),
  -- #002 Thwackey
  (1801, 811, NULL, 2, TRUE),
  -- #003 Rillaboom
  (1801, 812, NULL, 3, TRUE),
  -- #004 Scorbunny
  (1801, 813, NULL, 4, TRUE),
  -- #005 Raboot
  (1801, 814, NULL, 5, TRUE),
  -- #006 Cinderace
  (1801, 815, NULL, 6, TRUE),
  -- #007 Sobble
  (1801, 816, NULL, 7, TRUE),
  -- #008 Drizzile
  (1801, 817, NULL, 8, TRUE),
  -- #009 Inteleon
  (1801, 818, NULL, 9, TRUE),
  -- #010 Blipbug
  (1801, 824, NULL, 10, TRUE),
  -- #011 Dottler
  (1801, 825, NULL, 11, TRUE),
  -- #012 Orbeetle
  (1801, 826, NULL, 12, TRUE),
  -- #013 Caterpie
  (1801, 10, NULL, 13, TRUE),
  -- #014 Metapod
  (1801, 11, NULL, 14, TRUE),
  -- #015 Butterfree
  (1801, 12, NULL, 15, TRUE),
  -- #016 Grubbin
  (1801, 736, NULL, 16, TRUE),
  -- #017 Charjabug
  (1801, 737, NULL, 17, TRUE),
  -- #018 Vikavolt
  (1801, 738, NULL, 18, TRUE),
  -- #019 Hoothoot
  (1801, 163, NULL, 19, TRUE),
  -- #020 Noctowl
  (1801, 164, NULL, 20, TRUE),
  -- #021 Rookidee
  (1801, 821, NULL, 21, TRUE),
  -- #022 Corvisquire
  (1801, 822, NULL, 22, TRUE),
  -- #023 Corviknight
  (1801, 823, NULL, 23, TRUE),
  -- #024 Skwovet
  (1801, 819, NULL, 24, TRUE),
  -- #025 Greedent
  (1801, 820, NULL, 25, TRUE),
  -- #026 Pidove
  (1801, 519, NULL, 26, TRUE),
  -- #027 Tranquill
  (1801, 520, NULL, 27, TRUE),
  -- #028 Unfezant
  (1801, 521, NULL, 28, TRUE),
  -- #029 Nickit
  (1801, 827, NULL, 29, TRUE),
  -- #030 Thievul
  (1801, 828, NULL, 30, TRUE),
  -- #031 Zigzagoon
  (1801, 263, NULL, 31, TRUE),
  -- #032 Linoone
  (1801, 264, NULL, 32, TRUE),
  -- #033 Obstagoon
  (1801, 862, NULL, 33, TRUE),
  -- #034 Wooloo
  (1801, 831, NULL, 34, TRUE),
  -- #035 Dubwool
  (1801, 832, NULL, 35, TRUE),
  -- #036 Lotad
  (1801, 270, NULL, 36, TRUE),
  -- #037 Lombre
  (1801, 271, NULL, 37, TRUE),
  -- #038 Ludicolo
  (1801, 272, NULL, 38, TRUE),
  -- #039 Seedot
  (1801, 273, NULL, 39, TRUE),
  -- #040 Nuzleaf
  (1801, 274, NULL, 40, TRUE),
  -- #041 Shiftry
  (1801, 275, NULL, 41, TRUE),
  -- #042 Chewtle
  (1801, 833, NULL, 42, TRUE),
  -- #043 Drednaw
  (1801, 834, NULL, 43, TRUE),
  -- #044 Purrloin
  (1801, 509, NULL, 44, TRUE),
  -- #045 Liepard
  (1801, 510, NULL, 45, TRUE),
  -- #046 Yamper
  (1801, 835, NULL, 46, TRUE),
  -- #047 Boltund
  (1801, 836, NULL, 47, TRUE),
  -- #048 Bunnelby
  (1801, 659, NULL, 48, TRUE),
  -- #049 Diggersby
  (1801, 660, NULL, 49, TRUE),
  -- #050 Minccino
  (1801, 572, NULL, 50, TRUE),
  -- #051 Cinccino
  (1801, 573, NULL, 51, TRUE),
  -- #052 Bounsweet
  (1801, 761, NULL, 52, TRUE),
  -- #053 Steenee
  (1801, 762, NULL, 53, TRUE),
  -- #054 Tsareena
  (1801, 763, NULL, 54, TRUE),
  -- #055 Oddish
  (1801, 43, NULL, 55, TRUE),
  -- #056 Gloom
  (1801, 44, NULL, 56, TRUE),
  -- #057 Vileplume
  (1801, 45, NULL, 57, TRUE),
  -- #058 Bellossom
  (1801, 182, NULL, 58, TRUE),
  -- #059 Budew
  (1801, 406, NULL, 59, TRUE),
  -- #060 Roselia
  (1801, 315, NULL, 60, TRUE),
  -- #061 Roserade
  (1801, 407, NULL, 61, TRUE),
  -- #062 Wingull
  (1801, 278, NULL, 62, TRUE),
  -- #063 Pelipper
  (1801, 279, NULL, 63, TRUE),
  -- #064 Joltik
  (1801, 595, NULL, 64, TRUE),
  -- #065 Galvantula
  (1801, 596, NULL, 65, TRUE),
  -- #066 Electrike
  (1801, 309, NULL, 66, TRUE),
  -- #067 Manectric
  (1801, 310, NULL, 67, TRUE),
  -- #068 Vulpix
  (1801, 37, NULL, 68, TRUE),
  -- #069 Ninetales
  (1801, 38, NULL, 69, TRUE),
  -- #070 Growlithe
  (1801, 58, NULL, 70, TRUE),
  -- #071 Arcanine
  (1801, 59, NULL, 71, TRUE),
  -- #072 Vanillite
  (1801, 582, NULL, 72, TRUE),
  -- #073 Vanillish
  (1801, 583, NULL, 73, TRUE),
  -- #074 Vanilluxe
  (1801, 584, NULL, 74, TRUE),
  -- #075 Swinub
  (1801, 220, NULL, 75, TRUE),
  -- #076 Piloswine
  (1801, 221, NULL, 76, TRUE),
  -- #077 Mamoswine
  (1801, 473, NULL, 77, TRUE),
  -- #078 Delibird
  (1801, 225, NULL, 78, TRUE),
  -- #079 Snorunt
  (1801, 361, NULL, 79, TRUE),
  -- #080 Glalie
  (1801, 362, NULL, 80, TRUE),
  -- #081 Froslass
  (1801, 478, NULL, 81, TRUE),
  -- #082 Baltoy
  (1801, 343, NULL, 82, TRUE),
  -- #083 Claydol
  (1801, 344, NULL, 83, TRUE),
  -- #084 Mudbray
  (1801, 749, NULL, 84, TRUE),
  -- #085 Mudsdale
  (1801, 750, NULL, 85, TRUE),
  -- #086 Dwebble
  (1801, 557, NULL, 86, TRUE),
  -- #087 Crustle
  (1801, 558, NULL, 87, TRUE),
  -- #088 Golett
  (1801, 622, NULL, 88, TRUE),
  -- #089 Golurk
  (1801, 623, NULL, 89, TRUE),
  -- #090 Munna
  (1801, 517, NULL, 90, TRUE),
  -- #091 Musharna
  (1801, 518, NULL, 91, TRUE),
  -- #092 Natu
  (1801, 177, NULL, 92, TRUE),
  -- #093 Xatu
  (1801, 178, NULL, 93, TRUE),
  -- #094 Stufful
  (1801, 759, NULL, 94, TRUE),
  -- #095 Bewear
  (1801, 760, NULL, 95, TRUE),
  -- #096 Snover
  (1801, 459, NULL, 96, TRUE),
  -- #097 Abomasnow
  (1801, 460, NULL, 97, TRUE),
  -- #098 Krabby
  (1801, 98, NULL, 98, TRUE),
  -- #099 Kingler
  (1801, 99, NULL, 99, TRUE),
  -- #100 Wooper
  (1801, 194, NULL, 100, TRUE),
  -- #101 Quagsire
  (1801, 195, NULL, 101, TRUE),
  -- #102 Corphish
  (1801, 341, NULL, 102, TRUE),
  -- #103 Crawdaunt
  (1801, 342, NULL, 103, TRUE),
  -- #104 Nincada
  (1801, 290, NULL, 104, TRUE),
  -- #105 Ninjask
  (1801, 291, NULL, 105, TRUE),
  -- #106 Shedinja
  (1801, 292, NULL, 106, TRUE),
  -- #107 Tyrogue
  (1801, 236, NULL, 107, TRUE),
  -- #108 Hitmonlee
  (1801, 106, NULL, 108, TRUE),
  -- #109 Hitmonchan
  (1801, 107, NULL, 109, TRUE),
  -- #110 Hitmontop
  (1801, 237, NULL, 110, TRUE),
  -- #111 Pancham
  (1801, 674, NULL, 111, TRUE),
  -- #112 Pangoro
  (1801, 675, NULL, 112, TRUE),
  -- #113 Klink
  (1801, 599, NULL, 113, TRUE),
  -- #114 Klang
  (1801, 600, NULL, 114, TRUE),
  -- #115 Klinklang
  (1801, 601, NULL, 115, TRUE),
  -- #116 Combee
  (1801, 415, NULL, 116, TRUE),
  -- #117 Vespiquen
  (1801, 416, NULL, 117, TRUE),
  -- #118 Bronzor
  (1801, 436, NULL, 118, TRUE),
  -- #119 Bronzong
  (1801, 437, NULL, 119, TRUE),
  -- #120 Ralts
  (1801, 280, NULL, 120, TRUE),
  -- #121 Kirlia
  (1801, 281, NULL, 121, TRUE),
  -- #122 Gardevoir
  (1801, 282, NULL, 122, TRUE),
  -- #123 Gallade
  (1801, 475, NULL, 123, TRUE),
  -- #124 Drifloon
  (1801, 425, NULL, 124, TRUE),
  -- #125 Drifblim
  (1801, 426, NULL, 125, TRUE),
  -- #126 Gossifleur
  (1801, 829, NULL, 126, TRUE),
  -- #127 Eldegoss
  (1801, 830, NULL, 127, TRUE),
  -- #128 Cherubi
  (1801, 420, NULL, 128, TRUE),
  -- #129 Cherrim
  (1801, 421, NULL, 129, TRUE),
  -- #130 Stunky
  (1801, 434, NULL, 130, TRUE),
  -- #131 Skuntank
  (1801, 435, NULL, 131, TRUE),
  -- #132 Tympole
  (1801, 535, NULL, 132, TRUE),
  -- #133 Palpitoad
  (1801, 536, NULL, 133, TRUE),
  -- #134 Seismitoad
  (1801, 537, NULL, 134, TRUE),
  -- #135 Duskull
  (1801, 355, NULL, 135, TRUE),
  -- #136 Dusclops
  (1801, 356, NULL, 136, TRUE),
  -- #137 Dusknoir
  (1801, 477, NULL, 137, TRUE),
  -- #138 Machop
  (1801, 66, NULL, 138, TRUE),
  -- #139 Machoke
  (1801, 67, NULL, 139, TRUE),
  -- #140 Machamp
  (1801, 68, NULL, 140, TRUE),
  -- #141 Gastly
  (1801, 92, NULL, 141, TRUE),
  -- #142 Haunter
  (1801, 93, NULL, 142, TRUE),
  -- #143 Gengar
  (1801, 94, NULL, 143, TRUE),
  -- #144 Magikarp
  (1801, 129, NULL, 144, TRUE),
  -- #145 Gyarados
  (1801, 130, NULL, 145, TRUE),
  -- #146 Goldeen
  (1801, 118, NULL, 146, TRUE),
  -- #147 Seaking
  (1801, 119, NULL, 147, TRUE),
  -- #148 Remoraid
  (1801, 223, NULL, 148, TRUE),
  -- #149 Octillery
  (1801, 224, NULL, 149, TRUE),
  -- #150 Shellder
  (1801, 90, NULL, 150, TRUE),
  -- #151 Cloyster
  (1801, 91, NULL, 151, TRUE),
  -- #152 Feebas
  (1801, 349, NULL, 152, TRUE),
  -- #153 Milotic
  (1801, 350, NULL, 153, TRUE),
  -- #154 Basculin
  (1801, 550, NULL, 154, TRUE),
  -- #155 Wishiwashi
  (1801, 746, NULL, 155, TRUE),
  -- #156 Pyukumuku
  (1801, 771, NULL, 156, TRUE),
  -- #157 Trubbish
  (1801, 568, NULL, 157, TRUE),
  -- #158 Garbodor
  (1801, 569, NULL, 158, TRUE),
  -- #159 Sizzlipede
  (1801, 850, NULL, 159, TRUE),
  -- #160 Centiskorch
  (1801, 851, NULL, 160, TRUE),
  -- #161 Rolycoly
  (1801, 837, NULL, 161, TRUE),
  -- #162 Carkol
  (1801, 838, NULL, 162, TRUE),
  -- #163 Coalossal
  (1801, 839, NULL, 163, TRUE),
  -- #164 Diglett
  (1801, 50, NULL, 164, TRUE),
  -- #165 Dugtrio
  (1801, 51, NULL, 165, TRUE),
  -- #166 Drilbur
  (1801, 529, NULL, 166, TRUE),
  -- #167 Excadrill
  (1801, 530, NULL, 167, TRUE),
  -- #168 Roggenrola
  (1801, 524, NULL, 168, TRUE),
  -- #169 Boldore
  (1801, 525, NULL, 169, TRUE),
  -- #170 Gigalith
  (1801, 526, NULL, 170, TRUE),
  -- #171 Timburr
  (1801, 532, NULL, 171, TRUE),
  -- #172 Gurdurr
  (1801, 533, NULL, 172, TRUE),
  -- #173 Conkeldurr
  (1801, 534, NULL, 173, TRUE),
  -- #174 Woobat
  (1801, 527, NULL, 174, TRUE),
  -- #175 Swoobat
  (1801, 528, NULL, 175, TRUE),
  -- #176 Noibat
  (1801, 714, NULL, 176, TRUE),
  -- #177 Noivern
  (1801, 715, NULL, 177, TRUE),
  -- #178 Onix
  (1801, 95, NULL, 178, TRUE),
  -- #179 Steelix
  (1801, 208, NULL, 179, TRUE),
  -- #180 Arrokuda
  (1801, 846, NULL, 180, TRUE),
  -- #181 Barraskewda
  (1801, 847, NULL, 181, TRUE),
  -- #182 Meowth
  (1801, 52, NULL, 182, TRUE),
  -- #183 Perrserker
  (1801, 863, NULL, 183, TRUE),
  -- #184 Persian
  (1801, 53, NULL, 184, TRUE),
  -- #185 Milcery
  (1801, 868, NULL, 185, TRUE),
  -- #186 Alcremie
  (1801, 869, NULL, 186, TRUE),
  -- #187 Cutiefly
  (1801, 742, NULL, 187, TRUE),
  -- #188 Ribombee
  (1801, 743, NULL, 188, TRUE),
  -- #189 Ferroseed
  (1801, 597, NULL, 189, TRUE),
  -- #190 Ferrothorn
  (1801, 598, NULL, 190, TRUE),
  -- #191 Pumpkaboo
  (1801, 710, NULL, 191, TRUE),
  -- #192 Gourgeist
  (1801, 711, NULL, 192, TRUE),
  -- #193 Pichu
  (1801, 172, NULL, 193, TRUE),
  -- #194 Pikachu
  (1801, 25, NULL, 194, TRUE),
  -- #195 Raichu
  (1801, 26, NULL, 195, TRUE),
  -- #196 Eevee
  (1801, 133, NULL, 196, TRUE),
  -- #197 Vaporeon
  (1801, 134, NULL, 197, TRUE),
  -- #198 Jolteon
  (1801, 135, NULL, 198, TRUE),
  -- #199 Flareon
  (1801, 136, NULL, 199, TRUE),
  -- #200 Espeon
  (1801, 196, NULL, 200, TRUE),
  -- #201 Umbreon
  (1801, 197, NULL, 201, TRUE),
  -- #202 Leafeon
  (1801, 470, NULL, 202, TRUE),
  -- #203 Glaceon
  (1801, 471, NULL, 203, TRUE),
  -- #204 Sylveon
  (1801, 700, NULL, 204, TRUE),
  -- #205 Applin
  (1801, 840, NULL, 205, TRUE),
  -- #206 Flapple
  (1801, 841, NULL, 206, TRUE),
  -- #207 Appletun
  (1801, 842, NULL, 207, TRUE),
  -- #208 Espurr
  (1801, 677, NULL, 208, TRUE),
  -- #209 Meowstic
  (1801, 678, NULL, 209, TRUE),
  -- #210 Swirlix
  (1801, 684, NULL, 210, TRUE),
  -- #211 Slurpuff
  (1801, 685, NULL, 211, TRUE),
  -- #212 Spritzee
  (1801, 682, NULL, 212, TRUE),
  -- #213 Aromatisse
  (1801, 683, NULL, 213, TRUE),
  -- #214 Dewpider
  (1801, 751, NULL, 214, TRUE),
  -- #215 Araquanid
  (1801, 752, NULL, 215, TRUE),
  -- #216 Wynaut
  (1801, 360, NULL, 216, TRUE),
  -- #217 Wobbuffet
  (1801, 202, NULL, 217, TRUE),
  -- #218 Farfetch'd
  (1801, 83, NULL, 218, TRUE),
  -- #219 Sirfetch'd
  (1801, 865, NULL, 219, TRUE),
  -- #220 Chinchou
  (1801, 170, NULL, 220, TRUE),
  -- #221 Lanturn
  (1801, 171, NULL, 221, TRUE),
  -- #222 Croagunk
  (1801, 453, NULL, 222, TRUE),
  -- #223 Toxicroak
  (1801, 454, NULL, 223, TRUE),
  -- #224 Scraggy
  (1801, 559, NULL, 224, TRUE),
  -- #225 Scrafty
  (1801, 560, NULL, 225, TRUE),
  -- #226 Stunfisk
  (1801, 618, NULL, 226, TRUE),
  -- #227 Shuckle
  (1801, 213, NULL, 227, TRUE),
  -- #228 Barboach
  (1801, 339, NULL, 228, TRUE),
  -- #229 Whiscash
  (1801, 340, NULL, 229, TRUE),
  -- #230 Shellos
  (1801, 422, NULL, 230, TRUE),
  -- #231 Gastrodon
  (1801, 423, NULL, 231, TRUE),
  -- #232 Wimpod
  (1801, 767, NULL, 232, TRUE),
  -- #233 Golisopod
  (1801, 768, NULL, 233, TRUE),
  -- #234 Binacle
  (1801, 688, NULL, 234, TRUE),
  -- #235 Barbaracle
  (1801, 689, NULL, 235, TRUE),
  -- #236 Corsola
  (1801, 222, NULL, 236, TRUE),
  -- #237 Cursola
  (1801, 864, NULL, 237, TRUE),
  -- #238 Impidimp
  (1801, 859, NULL, 238, TRUE),
  -- #239 Morgrem
  (1801, 860, NULL, 239, TRUE),
  -- #240 Grimmsnarl
  (1801, 861, NULL, 240, TRUE),
  -- #241 Hatenna
  (1801, 856, NULL, 241, TRUE),
  -- #242 Hattrem
  (1801, 857, NULL, 242, TRUE),
  -- #243 Hatterene
  (1801, 858, NULL, 243, TRUE),
  -- #244 Salandit
  (1801, 757, NULL, 244, TRUE),
  -- #245 Salazzle
  (1801, 758, NULL, 245, TRUE),
  -- #246 Pawniard
  (1801, 624, NULL, 246, TRUE),
  -- #247 Bisharp
  (1801, 625, NULL, 247, TRUE),
  -- #248 Throh
  (1801, 538, NULL, 248, TRUE),
  -- #249 Sawk
  (1801, 539, NULL, 249, TRUE),
  -- #250 Koffing
  (1801, 109, NULL, 250, TRUE),
  -- #251 Weezing
  (1801, 110, NULL, 251, TRUE),
  -- #252 Bonsly
  (1801, 438, NULL, 252, TRUE),
  -- #253 Sudowoodo
  (1801, 185, NULL, 253, TRUE),
  -- #254 Cleffa
  (1801, 173, NULL, 254, TRUE),
  -- #255 Clefairy
  (1801, 35, NULL, 255, TRUE),
  -- #256 Clefable
  (1801, 36, NULL, 256, TRUE),
  -- #257 Togepi
  (1801, 175, NULL, 257, TRUE),
  -- #258 Togetic
  (1801, 176, NULL, 258, TRUE),
  -- #259 Togekiss
  (1801, 468, NULL, 259, TRUE),
  -- #260 Munchlax
  (1801, 446, NULL, 260, TRUE),
  -- #261 Snorlax
  (1801, 143, NULL, 261, TRUE),
  -- #262 Cottonee
  (1801, 546, NULL, 262, TRUE),
  -- #263 Whimsicott
  (1801, 547, NULL, 263, TRUE),
  -- #264 Rhyhorn
  (1801, 111, NULL, 264, TRUE),
  -- #265 Rhydon
  (1801, 112, NULL, 265, TRUE),
  -- #266 Rhyperior
  (1801, 464, NULL, 266, TRUE),
  -- #267 Gothita
  (1801, 574, NULL, 267, TRUE),
  -- #268 Gothorita
  (1801, 575, NULL, 268, TRUE),
  -- #269 Gothitelle
  (1801, 576, NULL, 269, TRUE),
  -- #270 Solosis
  (1801, 577, NULL, 270, TRUE),
  -- #271 Duosion
  (1801, 578, NULL, 271, TRUE),
  -- #272 Reuniclus
  (1801, 579, NULL, 272, TRUE),
  -- #273 Karrablast
  (1801, 588, NULL, 273, TRUE),
  -- #274 Escavalier
  (1801, 589, NULL, 274, TRUE),
  -- #275 Shelmet
  (1801, 616, NULL, 275, TRUE),
  -- #276 Accelgor
  (1801, 617, NULL, 276, TRUE),
  -- #277 Elgyem
  (1801, 605, NULL, 277, TRUE),
  -- #278 Beheeyem
  (1801, 606, NULL, 278, TRUE),
  -- #279 Cubchoo
  (1801, 613, NULL, 279, TRUE),
  -- #280 Beartic
  (1801, 614, NULL, 280, TRUE),
  -- #281 Rufflet
  (1801, 627, NULL, 281, TRUE),
  -- #282 Braviary
  (1801, 628, NULL, 282, TRUE),
  -- #283 Vullaby
  (1801, 629, NULL, 283, TRUE),
  -- #284 Mandibuzz
  (1801, 630, NULL, 284, TRUE),
  -- #285 Skorupi
  (1801, 451, NULL, 285, TRUE),
  -- #286 Drapion
  (1801, 452, NULL, 286, TRUE),
  -- #287 Litwick
  (1801, 607, NULL, 287, TRUE),
  -- #288 Lampent
  (1801, 608, NULL, 288, TRUE),
  -- #289 Chandelure
  (1801, 609, NULL, 289, TRUE),
  -- #290 Inkay
  (1801, 686, NULL, 290, TRUE),
  -- #291 Malamar
  (1801, 687, NULL, 291, TRUE),
  -- #292 Sneasel
  (1801, 215, NULL, 292, TRUE),
  -- #293 Weavile
  (1801, 461, NULL, 293, TRUE),
  -- #294 Sableye
  (1801, 302, NULL, 294, TRUE),
  -- #295 Mawile
  (1801, 303, NULL, 295, TRUE),
  -- #296 Maractus
  (1801, 556, NULL, 296, TRUE),
  -- #297 Sigilyph
  (1801, 561, NULL, 297, TRUE),
  -- #298 Riolu
  (1801, 447, NULL, 298, TRUE),
  -- #299 Lucario
  (1801, 448, NULL, 299, TRUE),
  -- #300 Torkoal
  (1801, 324, NULL, 300, TRUE),
  -- #301 Mimikyu
  (1801, 778, NULL, 301, TRUE),
  -- #302 Cufant
  (1801, 878, NULL, 302, TRUE),
  -- #303 Copperajah
  (1801, 879, NULL, 303, TRUE),
  -- #304 Qwilfish
  (1801, 211, NULL, 304, TRUE),
  -- #305 Frillish
  (1801, 592, NULL, 305, TRUE),
  -- #306 Jellicent
  (1801, 593, NULL, 306, TRUE),
  -- #307 Mareanie
  (1801, 747, NULL, 307, TRUE),
  -- #308 Toxapex
  (1801, 748, NULL, 308, TRUE),
  -- #309 Cramorant
  (1801, 845, NULL, 309, TRUE),
  -- #310 Toxel
  (1801, 848, NULL, 310, TRUE),
  -- #311 Toxtricity
  (1801, 849, NULL, 311, TRUE),
  -- #312 Silicobra
  (1801, 843, NULL, 312, TRUE),
  -- #313 Sandaconda
  (1801, 844, NULL, 313, TRUE),
  -- #314 Hippopotas
  (1801, 449, NULL, 314, TRUE),
  -- #315 Hippowdon
  (1801, 450, NULL, 315, TRUE),
  -- #316 Durant
  (1801, 632, NULL, 316, TRUE),
  -- #317 Heatmor
  (1801, 631, NULL, 317, TRUE),
  -- #318 Helioptile
  (1801, 694, NULL, 318, TRUE),
  -- #319 Heliolisk
  (1801, 695, NULL, 319, TRUE),
  -- #320 Hawlucha
  (1801, 701, NULL, 320, TRUE),
  -- #321 Trapinch
  (1801, 328, NULL, 321, TRUE),
  -- #322 Vibrava
  (1801, 329, NULL, 322, TRUE),
  -- #323 Flygon
  (1801, 330, NULL, 323, TRUE),
  -- #324 Axew
  (1801, 610, NULL, 324, TRUE),
  -- #325 Fraxure
  (1801, 611, NULL, 325, TRUE),
  -- #326 Haxorus
  (1801, 612, NULL, 326, TRUE),
  -- #327 Yamask
  (1801, 562, NULL, 327, TRUE),
  -- #328 Runerigus
  (1801, 867, NULL, 328, TRUE),
  -- #329 Cofagrigus
  (1801, 563, NULL, 329, TRUE),
  -- #330 Honedge
  (1801, 679, NULL, 330, TRUE),
  -- #331 Doublade
  (1801, 680, NULL, 331, TRUE),
  -- #332 Aegislash
  (1801, 681, NULL, 332, TRUE),
  -- #333 Ponyta
  (1801, 77, NULL, 333, TRUE),
  -- #334 Rapidash
  (1801, 78, NULL, 334, TRUE),
  -- #335 Sinistea
  (1801, 854, NULL, 335, TRUE),
  -- #336 Polteageist
  (1801, 855, NULL, 336, TRUE),
  -- #337 Indeedee
  (1801, 876, NULL, 337, TRUE),
  -- #338 Phantump
  (1801, 708, NULL, 338, TRUE),
  -- #339 Trevenant
  (1801, 709, NULL, 339, TRUE),
  -- #340 Morelull
  (1801, 755, NULL, 340, TRUE),
  -- #341 Shiinotic
  (1801, 756, NULL, 341, TRUE),
  -- #342 Oranguru
  (1801, 765, NULL, 342, TRUE),
  -- #343 Passimian
  (1801, 766, NULL, 343, TRUE),
  -- #344 Morpeko
  (1801, 877, NULL, 344, TRUE),
  -- #345 Falinks
  (1801, 870, NULL, 345, TRUE),
  -- #346 Drampa
  (1801, 780, NULL, 346, TRUE),
  -- #347 Turtonator
  (1801, 776, NULL, 347, TRUE),
  -- #348 Togedemaru
  (1801, 777, NULL, 348, TRUE),
  -- #349 Snom
  (1801, 872, NULL, 349, TRUE),
  -- #350 Frosmoth
  (1801, 873, NULL, 350, TRUE),
  -- #351 Clobbopus
  (1801, 852, NULL, 351, TRUE),
  -- #352 Grapploct
  (1801, 853, NULL, 352, TRUE),
  -- #353 Pincurchin
  (1801, 871, NULL, 353, TRUE),
  -- #354 Mantyke
  (1801, 458, NULL, 354, TRUE),
  -- #355 Mantine
  (1801, 226, NULL, 355, TRUE),
  -- #356 Wailmer
  (1801, 320, NULL, 356, TRUE),
  -- #357 Wailord
  (1801, 321, NULL, 357, TRUE),
  -- #358 Bergmite
  (1801, 712, NULL, 358, TRUE),
  -- #359 Avalugg
  (1801, 713, NULL, 359, TRUE),
  -- #360 Dhelmise
  (1801, 781, NULL, 360, TRUE),
  -- #361 Lapras
  (1801, 131, NULL, 361, TRUE),
  -- #362 Lunatone
  (1801, 337, NULL, 362, TRUE),
  -- #363 Solrock
  (1801, 338, NULL, 363, TRUE),
  -- #364 Mime Jr.
  (1801, 439, NULL, 364, TRUE),
  -- #365 Mr. Mime
  (1801, 122, NULL, 365, TRUE),
  -- #366 Mr. Rime
  (1801, 866, NULL, 366, TRUE),
  -- #367 Darumaka
  (1801, 554, NULL, 367, TRUE),
  -- #368 Darmanitan
  (1801, 555, NULL, 368, TRUE),
  -- #369 Stonjourner
  (1801, 874, NULL, 369, TRUE),
  -- #370 Eiscue
  (1801, 875, NULL, 370, TRUE),
  -- #371 Duraludon
  (1801, 884, NULL, 371, TRUE),
  -- #372 Rotom
  (1801, 479, NULL, 372, TRUE),
  -- #373 Ditto
  (1801, 132, NULL, 373, TRUE),
  -- #374 Dracozolt
  (1801, 880, NULL, 374, TRUE),
  -- #375 Arctozolt
  (1801, 881, NULL, 375, TRUE),
  -- #376 Dracovish
  (1801, 882, NULL, 376, TRUE),
  -- #377 Arctovish
  (1801, 883, NULL, 377, TRUE),
  -- #378 Charmander
  (1801, 4, NULL, 378, TRUE),
  -- #379 Charmeleon
  (1801, 5, NULL, 379, TRUE),
  -- #380 Charizard
  (1801, 6, NULL, 380, TRUE),
  -- #381 Type: Null
  (1801, 772, NULL, 381, TRUE),
  -- #382 Silvally
  (1801, 773, NULL, 382, TRUE),
  -- #383 Larvitar
  (1801, 246, NULL, 383, TRUE),
  -- #384 Pupitar
  (1801, 247, NULL, 384, TRUE),
  -- #385 Tyranitar
  (1801, 248, NULL, 385, TRUE),
  -- #386 Deino
  (1801, 633, NULL, 386, TRUE),
  -- #387 Zweilous
  (1801, 634, NULL, 387, TRUE),
  -- #388 Hydreigon
  (1801, 635, NULL, 388, TRUE),
  -- #389 Goomy
  (1801, 704, NULL, 389, TRUE),
  -- #390 Sliggoo
  (1801, 705, NULL, 390, TRUE),
  -- #391 Goodra
  (1801, 706, NULL, 391, TRUE),
  -- #392 Jangmo-o
  (1801, 782, NULL, 392, TRUE),
  -- #393 Hakamo-o
  (1801, 783, NULL, 393, TRUE),
  -- #394 Kommo-o
  (1801, 784, NULL, 394, TRUE),
  -- #395 Dreepy
  (1801, 885, NULL, 395, TRUE),
  -- #396 Drakloak
  (1801, 886, NULL, 396, TRUE),
  -- #397 Dragapult
  (1801, 887, NULL, 397, TRUE),
  -- #398 Zacian
  (1801, 888, NULL, 398, TRUE),
  -- #399 Zamazenta
  (1801, 889, NULL, 399, TRUE),
  -- #400 Eternatus
  (1801, 890, NULL, 400, TRUE);
