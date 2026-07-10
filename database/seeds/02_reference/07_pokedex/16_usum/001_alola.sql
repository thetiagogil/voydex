-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Alola Pokedex number in Pokémon Ultra Sun and Ultra Moon.
-- Cross-check: legacy Voydex Ultra Sun / Ultra Moon Alola Pokedex entry seed.
-- Source disagreement: PokemonDB orders Stakataka and Blacephalon before Nihilego at #391-#393; Bulbapedia/legacy order is retained.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Alola Pokedex entries for Ultra Sun / Ultra Moon.
-- Ultra Sun / Ultra Moon contain 403 Alola Pokedex species; Magearna, Marshadow, and Zeraora are source-visible but not required for regional completion.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Rowlet
  (1601, 722, NULL, 1, TRUE),
  -- #002 Dartrix
  (1601, 723, NULL, 2, TRUE),
  -- #003 Decidueye
  (1601, 724, NULL, 3, TRUE),
  -- #004 Litten
  (1601, 725, NULL, 4, TRUE),
  -- #005 Torracat
  (1601, 726, NULL, 5, TRUE),
  -- #006 Incineroar
  (1601, 727, NULL, 6, TRUE),
  -- #007 Popplio
  (1601, 728, NULL, 7, TRUE),
  -- #008 Brionne
  (1601, 729, NULL, 8, TRUE),
  -- #009 Primarina
  (1601, 730, NULL, 9, TRUE),
  -- #010 Pikipek
  (1601, 731, NULL, 10, TRUE),
  -- #011 Trumbeak
  (1601, 732, NULL, 11, TRUE),
  -- #012 Toucannon
  (1601, 733, NULL, 12, TRUE),
  -- #013 Yungoos
  (1601, 734, NULL, 13, TRUE),
  -- #014 Gumshoos
  (1601, 735, NULL, 14, TRUE),
  -- #015 Rattata
  (1601, 19, NULL, 15, TRUE),
  -- #016 Raticate
  (1601, 20, NULL, 16, TRUE),
  -- #017 Caterpie
  (1601, 10, NULL, 17, TRUE),
  -- #018 Metapod
  (1601, 11, NULL, 18, TRUE),
  -- #019 Butterfree
  (1601, 12, NULL, 19, TRUE),
  -- #020 Ledyba
  (1601, 165, NULL, 20, TRUE),
  -- #021 Ledian
  (1601, 166, NULL, 21, TRUE),
  -- #022 Spinarak
  (1601, 167, NULL, 22, TRUE),
  -- #023 Ariados
  (1601, 168, NULL, 23, TRUE),
  -- #024 Buneary
  (1601, 427, NULL, 24, TRUE),
  -- #025 Lopunny
  (1601, 428, NULL, 25, TRUE),
  -- #026 Inkay
  (1601, 686, NULL, 26, TRUE),
  -- #027 Malamar
  (1601, 687, NULL, 27, TRUE),
  -- #028 Zorua
  (1601, 570, NULL, 28, TRUE),
  -- #029 Zoroark
  (1601, 571, NULL, 29, TRUE),
  -- #030 Furfrou
  (1601, 676, NULL, 30, TRUE),
  -- #031 Pichu
  (1601, 172, NULL, 31, TRUE),
  -- #032 Pikachu
  (1601, 25, NULL, 32, TRUE),
  -- #033 Raichu
  (1601, 26, NULL, 33, TRUE),
  -- #034 Grubbin
  (1601, 736, NULL, 34, TRUE),
  -- #035 Charjabug
  (1601, 737, NULL, 35, TRUE),
  -- #036 Vikavolt
  (1601, 738, NULL, 36, TRUE),
  -- #037 Bonsly
  (1601, 438, NULL, 37, TRUE),
  -- #038 Sudowoodo
  (1601, 185, NULL, 38, TRUE),
  -- #039 Happiny
  (1601, 440, NULL, 39, TRUE),
  -- #040 Chansey
  (1601, 113, NULL, 40, TRUE),
  -- #041 Blissey
  (1601, 242, NULL, 41, TRUE),
  -- #042 Munchlax
  (1601, 446, NULL, 42, TRUE),
  -- #043 Snorlax
  (1601, 143, NULL, 43, TRUE),
  -- #044 Slowpoke
  (1601, 79, NULL, 44, TRUE),
  -- #045 Slowbro
  (1601, 80, NULL, 45, TRUE),
  -- #046 Slowking
  (1601, 199, NULL, 46, TRUE),
  -- #047 Wingull
  (1601, 278, NULL, 47, TRUE),
  -- #048 Pelipper
  (1601, 279, NULL, 48, TRUE),
  -- #049 Abra
  (1601, 63, NULL, 49, TRUE),
  -- #050 Kadabra
  (1601, 64, NULL, 50, TRUE),
  -- #051 Alakazam
  (1601, 65, NULL, 51, TRUE),
  -- #052 Meowth
  (1601, 52, NULL, 52, TRUE),
  -- #053 Persian
  (1601, 53, NULL, 53, TRUE),
  -- #054 Magnemite
  (1601, 81, NULL, 54, TRUE),
  -- #055 Magneton
  (1601, 82, NULL, 55, TRUE),
  -- #056 Magnezone
  (1601, 462, NULL, 56, TRUE),
  -- #057 Grimer
  (1601, 88, NULL, 57, TRUE),
  -- #058 Muk
  (1601, 89, NULL, 58, TRUE),
  -- #059 Mime Jr.
  (1601, 439, NULL, 59, TRUE),
  -- #060 Mr. Mime
  (1601, 122, NULL, 60, TRUE),
  -- #061 Ekans
  (1601, 23, NULL, 61, TRUE),
  -- #062 Arbok
  (1601, 24, NULL, 62, TRUE),
  -- #063 Dunsparce
  (1601, 206, NULL, 63, TRUE),
  -- #064 Growlithe
  (1601, 58, NULL, 64, TRUE),
  -- #065 Arcanine
  (1601, 59, NULL, 65, TRUE),
  -- #066 Drowzee
  (1601, 96, NULL, 66, TRUE),
  -- #067 Hypno
  (1601, 97, NULL, 67, TRUE),
  -- #068 Makuhita
  (1601, 296, NULL, 68, TRUE),
  -- #069 Hariyama
  (1601, 297, NULL, 69, TRUE),
  -- #070 Smeargle
  (1601, 235, NULL, 70, TRUE),
  -- #071 Crabrawler
  (1601, 739, NULL, 71, TRUE),
  -- #072 Crabominable
  (1601, 740, NULL, 72, TRUE),
  -- #073 Gastly
  (1601, 92, NULL, 73, TRUE),
  -- #074 Haunter
  (1601, 93, NULL, 74, TRUE),
  -- #075 Gengar
  (1601, 94, NULL, 75, TRUE),
  -- #076 Drifloon
  (1601, 425, NULL, 76, TRUE),
  -- #077 Drifblim
  (1601, 426, NULL, 77, TRUE),
  -- #078 Murkrow
  (1601, 198, NULL, 78, TRUE),
  -- #079 Honchkrow
  (1601, 430, NULL, 79, TRUE),
  -- #080 Zubat
  (1601, 41, NULL, 80, TRUE),
  -- #081 Golbat
  (1601, 42, NULL, 81, TRUE),
  -- #082 Crobat
  (1601, 169, NULL, 82, TRUE),
  -- #083 Noibat
  (1601, 714, NULL, 83, TRUE),
  -- #084 Noivern
  (1601, 715, NULL, 84, TRUE),
  -- #085 Diglett
  (1601, 50, NULL, 85, TRUE),
  -- #086 Dugtrio
  (1601, 51, NULL, 86, TRUE),
  -- #087 Spearow
  (1601, 21, NULL, 87, TRUE),
  -- #088 Fearow
  (1601, 22, NULL, 88, TRUE),
  -- #089 Rufflet
  (1601, 627, NULL, 89, TRUE),
  -- #090 Braviary
  (1601, 628, NULL, 90, TRUE),
  -- #091 Vullaby
  (1601, 629, NULL, 91, TRUE),
  -- #092 Mandibuzz
  (1601, 630, NULL, 92, TRUE),
  -- #093 Mankey
  (1601, 56, NULL, 93, TRUE),
  -- #094 Primeape
  (1601, 57, NULL, 94, TRUE),
  -- #095 Delibird
  (1601, 225, NULL, 95, TRUE),
  -- #096 Hawlucha
  (1601, 701, NULL, 96, TRUE),
  -- #097 Oricorio
  (1601, 741, NULL, 97, TRUE),
  -- #098 Cutiefly
  (1601, 742, NULL, 98, TRUE),
  -- #099 Ribombee
  (1601, 743, NULL, 99, TRUE),
  -- #100 Flabebe
  (1601, 669, NULL, 100, TRUE),
  -- #101 Floette
  (1601, 670, NULL, 101, TRUE),
  -- #102 Florges
  (1601, 671, NULL, 102, TRUE),
  -- #103 Petilil
  (1601, 548, NULL, 103, TRUE),
  -- #104 Lilligant
  (1601, 549, NULL, 104, TRUE),
  -- #105 Cottonee
  (1601, 546, NULL, 105, TRUE),
  -- #106 Whimsicott
  (1601, 547, NULL, 106, TRUE),
  -- #107 Psyduck
  (1601, 54, NULL, 107, TRUE),
  -- #108 Golduck
  (1601, 55, NULL, 108, TRUE),
  -- #109 Smoochum
  (1601, 238, NULL, 109, TRUE),
  -- #110 Jynx
  (1601, 124, NULL, 110, TRUE),
  -- #111 Magikarp
  (1601, 129, NULL, 111, TRUE),
  -- #112 Gyarados
  (1601, 130, NULL, 112, TRUE),
  -- #113 Barboach
  (1601, 339, NULL, 113, TRUE),
  -- #114 Whiscash
  (1601, 340, NULL, 114, TRUE),
  -- #115 Seel
  (1601, 86, NULL, 115, TRUE),
  -- #116 Dewgong
  (1601, 87, NULL, 116, TRUE),
  -- #117 Machop
  (1601, 66, NULL, 117, TRUE),
  -- #118 Machoke
  (1601, 67, NULL, 118, TRUE),
  -- #119 Machamp
  (1601, 68, NULL, 119, TRUE),
  -- #120 Roggenrola
  (1601, 524, NULL, 120, TRUE),
  -- #121 Boldore
  (1601, 525, NULL, 121, TRUE),
  -- #122 Gigalith
  (1601, 526, NULL, 122, TRUE),
  -- #123 Carbink
  (1601, 703, NULL, 123, TRUE),
  -- #124 Sableye
  (1601, 302, NULL, 124, TRUE),
  -- #125 Mawile
  (1601, 303, NULL, 125, TRUE),
  -- #126 Rockruff
  (1601, 744, NULL, 126, TRUE),
  -- #127 Lycanroc
  (1601, 745, NULL, 127, TRUE),
  -- #128 Spinda
  (1601, 327, NULL, 128, TRUE),
  -- #129 Tentacool
  (1601, 72, NULL, 129, TRUE),
  -- #130 Tentacruel
  (1601, 73, NULL, 130, TRUE),
  -- #131 Finneon
  (1601, 456, NULL, 131, TRUE),
  -- #132 Lumineon
  (1601, 457, NULL, 132, TRUE),
  -- #133 Wishiwashi
  (1601, 746, NULL, 133, TRUE),
  -- #134 Luvdisc
  (1601, 370, NULL, 134, TRUE),
  -- #135 Corsola
  (1601, 222, NULL, 135, TRUE),
  -- #136 Mareanie
  (1601, 747, NULL, 136, TRUE),
  -- #137 Toxapex
  (1601, 748, NULL, 137, TRUE),
  -- #138 Shellder
  (1601, 90, NULL, 138, TRUE),
  -- #139 Cloyster
  (1601, 91, NULL, 139, TRUE),
  -- #140 Clamperl
  (1601, 366, NULL, 140, TRUE),
  -- #141 Huntail
  (1601, 367, NULL, 141, TRUE),
  -- #142 Gorebyss
  (1601, 368, NULL, 142, TRUE),
  -- #143 Remoraid
  (1601, 223, NULL, 143, TRUE),
  -- #144 Octillery
  (1601, 224, NULL, 144, TRUE),
  -- #145 Mantyke
  (1601, 458, NULL, 145, TRUE),
  -- #146 Mantine
  (1601, 226, NULL, 146, TRUE),
  -- #147 Bagon
  (1601, 371, NULL, 147, TRUE),
  -- #148 Shelgon
  (1601, 372, NULL, 148, TRUE),
  -- #149 Salamence
  (1601, 373, NULL, 149, TRUE),
  -- #150 Lillipup
  (1601, 506, NULL, 150, TRUE),
  -- #151 Herdier
  (1601, 507, NULL, 151, TRUE),
  -- #152 Stoutland
  (1601, 508, NULL, 152, TRUE),
  -- #153 Eevee
  (1601, 133, NULL, 153, TRUE),
  -- #154 Vaporeon
  (1601, 134, NULL, 154, TRUE),
  -- #155 Jolteon
  (1601, 135, NULL, 155, TRUE),
  -- #156 Flareon
  (1601, 136, NULL, 156, TRUE),
  -- #157 Espeon
  (1601, 196, NULL, 157, TRUE),
  -- #158 Umbreon
  (1601, 197, NULL, 158, TRUE),
  -- #159 Leafeon
  (1601, 470, NULL, 159, TRUE),
  -- #160 Glaceon
  (1601, 471, NULL, 160, TRUE),
  -- #161 Sylveon
  (1601, 700, NULL, 161, TRUE),
  -- #162 Mareep
  (1601, 179, NULL, 162, TRUE),
  -- #163 Flaaffy
  (1601, 180, NULL, 163, TRUE),
  -- #164 Ampharos
  (1601, 181, NULL, 164, TRUE),
  -- #165 Mudbray
  (1601, 749, NULL, 165, TRUE),
  -- #166 Mudsdale
  (1601, 750, NULL, 166, TRUE),
  -- #167 Igglybuff
  (1601, 174, NULL, 167, TRUE),
  -- #168 Jigglypuff
  (1601, 39, NULL, 168, TRUE),
  -- #169 Wigglytuff
  (1601, 40, NULL, 169, TRUE),
  -- #170 Tauros
  (1601, 128, NULL, 170, TRUE),
  -- #171 Miltank
  (1601, 241, NULL, 171, TRUE),
  -- #172 Surskit
  (1601, 283, NULL, 172, TRUE),
  -- #173 Masquerain
  (1601, 284, NULL, 173, TRUE),
  -- #174 Dewpider
  (1601, 751, NULL, 174, TRUE),
  -- #175 Araquanid
  (1601, 752, NULL, 175, TRUE),
  -- #176 Fomantis
  (1601, 753, NULL, 176, TRUE),
  -- #177 Lurantis
  (1601, 754, NULL, 177, TRUE),
  -- #178 Morelull
  (1601, 755, NULL, 178, TRUE),
  -- #179 Shiinotic
  (1601, 756, NULL, 179, TRUE),
  -- #180 Paras
  (1601, 46, NULL, 180, TRUE),
  -- #181 Parasect
  (1601, 47, NULL, 181, TRUE),
  -- #182 Poliwag
  (1601, 60, NULL, 182, TRUE),
  -- #183 Poliwhirl
  (1601, 61, NULL, 183, TRUE),
  -- #184 Poliwrath
  (1601, 62, NULL, 184, TRUE),
  -- #185 Politoed
  (1601, 186, NULL, 185, TRUE),
  -- #186 Goldeen
  (1601, 118, NULL, 186, TRUE),
  -- #187 Seaking
  (1601, 119, NULL, 187, TRUE),
  -- #188 Basculin
  (1601, 550, NULL, 188, TRUE),
  -- #189 Feebas
  (1601, 349, NULL, 189, TRUE),
  -- #190 Milotic
  (1601, 350, NULL, 190, TRUE),
  -- #191 Alomomola
  (1601, 594, NULL, 191, TRUE),
  -- #192 Fletchling
  (1601, 661, NULL, 192, TRUE),
  -- #193 Fletchinder
  (1601, 662, NULL, 193, TRUE),
  -- #194 Talonflame
  (1601, 663, NULL, 194, TRUE),
  -- #195 Salandit
  (1601, 757, NULL, 195, TRUE),
  -- #196 Salazzle
  (1601, 758, NULL, 196, TRUE),
  -- #197 Cubone
  (1601, 104, NULL, 197, TRUE),
  -- #198 Marowak
  (1601, 105, NULL, 198, TRUE),
  -- #199 Kangaskhan
  (1601, 115, NULL, 199, TRUE),
  -- #200 Magby
  (1601, 240, NULL, 200, TRUE),
  -- #201 Magmar
  (1601, 126, NULL, 201, TRUE),
  -- #202 Magmortar
  (1601, 467, NULL, 202, TRUE),
  -- #203 Larvesta
  (1601, 636, NULL, 203, TRUE),
  -- #204 Volcarona
  (1601, 637, NULL, 204, TRUE),
  -- #205 Stufful
  (1601, 759, NULL, 205, TRUE),
  -- #206 Bewear
  (1601, 760, NULL, 206, TRUE),
  -- #207 Bounsweet
  (1601, 761, NULL, 207, TRUE),
  -- #208 Steenee
  (1601, 762, NULL, 208, TRUE),
  -- #209 Tsareena
  (1601, 763, NULL, 209, TRUE),
  -- #210 Comfey
  (1601, 764, NULL, 210, TRUE),
  -- #211 Pinsir
  (1601, 127, NULL, 211, TRUE),
  -- #212 Hoothoot
  (1601, 163, NULL, 212, TRUE),
  -- #213 Noctowl
  (1601, 164, NULL, 213, TRUE),
  -- #214 Kecleon
  (1601, 352, NULL, 214, TRUE),
  -- #215 Oranguru
  (1601, 765, NULL, 215, TRUE),
  -- #216 Passimian
  (1601, 766, NULL, 216, TRUE),
  -- #217 Goomy
  (1601, 704, NULL, 217, TRUE),
  -- #218 Sliggoo
  (1601, 705, NULL, 218, TRUE),
  -- #219 Goodra
  (1601, 706, NULL, 219, TRUE),
  -- #220 Castform
  (1601, 351, NULL, 220, TRUE),
  -- #221 Wimpod
  (1601, 767, NULL, 221, TRUE),
  -- #222 Golisopod
  (1601, 768, NULL, 222, TRUE),
  -- #223 Staryu
  (1601, 120, NULL, 223, TRUE),
  -- #224 Starmie
  (1601, 121, NULL, 224, TRUE),
  -- #225 Sandygast
  (1601, 769, NULL, 225, TRUE),
  -- #226 Palossand
  (1601, 770, NULL, 226, TRUE),
  -- #227 Omanyte
  (1601, 138, NULL, 227, TRUE),
  -- #228 Omastar
  (1601, 139, NULL, 228, TRUE),
  -- #229 Kabuto
  (1601, 140, NULL, 229, TRUE),
  -- #230 Kabutops
  (1601, 141, NULL, 230, TRUE),
  -- #231 Lileep
  (1601, 345, NULL, 231, TRUE),
  -- #232 Cradily
  (1601, 346, NULL, 232, TRUE),
  -- #233 Anorith
  (1601, 347, NULL, 233, TRUE),
  -- #234 Armaldo
  (1601, 348, NULL, 234, TRUE),
  -- #235 Cranidos
  (1601, 408, NULL, 235, TRUE),
  -- #236 Rampardos
  (1601, 409, NULL, 236, TRUE),
  -- #237 Shieldon
  (1601, 410, NULL, 237, TRUE),
  -- #238 Bastiodon
  (1601, 411, NULL, 238, TRUE),
  -- #239 Archen
  (1601, 566, NULL, 239, TRUE),
  -- #240 Archeops
  (1601, 567, NULL, 240, TRUE),
  -- #241 Tirtouga
  (1601, 564, NULL, 241, TRUE),
  -- #242 Carracosta
  (1601, 565, NULL, 242, TRUE),
  -- #243 Tyrunt
  (1601, 696, NULL, 243, TRUE),
  -- #244 Tyrantrum
  (1601, 697, NULL, 244, TRUE),
  -- #245 Amaura
  (1601, 698, NULL, 245, TRUE),
  -- #246 Aurorus
  (1601, 699, NULL, 246, TRUE),
  -- #247 Larvitar
  (1601, 246, NULL, 247, TRUE),
  -- #248 Pupitar
  (1601, 247, NULL, 248, TRUE),
  -- #249 Tyranitar
  (1601, 248, NULL, 249, TRUE),
  -- #250 Phantump
  (1601, 708, NULL, 250, TRUE),
  -- #251 Trevenant
  (1601, 709, NULL, 251, TRUE),
  -- #252 Natu
  (1601, 177, NULL, 252, TRUE),
  -- #253 Xatu
  (1601, 178, NULL, 253, TRUE),
  -- #254 Nosepass
  (1601, 299, NULL, 254, TRUE),
  -- #255 Probopass
  (1601, 476, NULL, 255, TRUE),
  -- #256 Pyukumuku
  (1601, 771, NULL, 256, TRUE),
  -- #257 Chinchou
  (1601, 170, NULL, 257, TRUE),
  -- #258 Lanturn
  (1601, 171, NULL, 258, TRUE),
  -- #259 Type: Null
  (1601, 772, NULL, 259, TRUE),
  -- #260 Silvally
  (1601, 773, NULL, 260, TRUE),
  -- #261 Poipole
  (1601, 803, NULL, 261, TRUE),
  -- #262 Naganadel
  (1601, 804, NULL, 262, TRUE),
  -- #263 Zygarde
  (1601, 718, NULL, 263, TRUE),
  -- #264 Trubbish
  (1601, 568, NULL, 264, TRUE),
  -- #265 Garbodor
  (1601, 569, NULL, 265, TRUE),
  -- #266 Minccino
  (1601, 572, NULL, 266, TRUE),
  -- #267 Cinccino
  (1601, 573, NULL, 267, TRUE),
  -- #268 Pineco
  (1601, 204, NULL, 268, TRUE),
  -- #269 Forretress
  (1601, 205, NULL, 269, TRUE),
  -- #270 Skarmory
  (1601, 227, NULL, 270, TRUE),
  -- #271 Ditto
  (1601, 132, NULL, 271, TRUE),
  -- #272 Cleffa
  (1601, 173, NULL, 272, TRUE),
  -- #273 Clefairy
  (1601, 35, NULL, 273, TRUE),
  -- #274 Clefable
  (1601, 36, NULL, 274, TRUE),
  -- #275 Elgyem
  (1601, 605, NULL, 275, TRUE),
  -- #276 Beheeyem
  (1601, 606, NULL, 276, TRUE),
  -- #277 Minior
  (1601, 774, NULL, 277, TRUE),
  -- #278 Beldum
  (1601, 374, NULL, 278, TRUE),
  -- #279 Metang
  (1601, 375, NULL, 279, TRUE),
  -- #280 Metagross
  (1601, 376, NULL, 280, TRUE),
  -- #281 Porygon
  (1601, 137, NULL, 281, TRUE),
  -- #282 Porygon2
  (1601, 233, NULL, 282, TRUE),
  -- #283 Porygon-Z
  (1601, 474, NULL, 283, TRUE),
  -- #284 Pancham
  (1601, 674, NULL, 284, TRUE),
  -- #285 Pangoro
  (1601, 675, NULL, 285, TRUE),
  -- #286 Komala
  (1601, 775, NULL, 286, TRUE),
  -- #287 Torkoal
  (1601, 324, NULL, 287, TRUE),
  -- #288 Turtonator
  (1601, 776, NULL, 288, TRUE),
  -- #289 Houndour
  (1601, 228, NULL, 289, TRUE),
  -- #290 Houndoom
  (1601, 229, NULL, 290, TRUE),
  -- #291 Dedenne
  (1601, 702, NULL, 291, TRUE),
  -- #292 Togedemaru
  (1601, 777, NULL, 292, TRUE),
  -- #293 Electrike
  (1601, 309, NULL, 293, TRUE),
  -- #294 Manectric
  (1601, 310, NULL, 294, TRUE),
  -- #295 Elekid
  (1601, 239, NULL, 295, TRUE),
  -- #296 Electabuzz
  (1601, 125, NULL, 296, TRUE),
  -- #297 Electivire
  (1601, 466, NULL, 297, TRUE),
  -- #298 Geodude
  (1601, 74, NULL, 298, TRUE),
  -- #299 Graveler
  (1601, 75, NULL, 299, TRUE),
  -- #300 Golem
  (1601, 76, NULL, 300, TRUE),
  -- #301 Sandile
  (1601, 551, NULL, 301, TRUE),
  -- #302 Krokorok
  (1601, 552, NULL, 302, TRUE),
  -- #303 Krookodile
  (1601, 553, NULL, 303, TRUE),
  -- #304 Trapinch
  (1601, 328, NULL, 304, TRUE),
  -- #305 Vibrava
  (1601, 329, NULL, 305, TRUE),
  -- #306 Flygon
  (1601, 330, NULL, 306, TRUE),
  -- #307 Gible
  (1601, 443, NULL, 307, TRUE),
  -- #308 Gabite
  (1601, 444, NULL, 308, TRUE),
  -- #309 Garchomp
  (1601, 445, NULL, 309, TRUE),
  -- #310 Baltoy
  (1601, 343, NULL, 310, TRUE),
  -- #311 Claydol
  (1601, 344, NULL, 311, TRUE),
  -- #312 Golett
  (1601, 622, NULL, 312, TRUE),
  -- #313 Golurk
  (1601, 623, NULL, 313, TRUE),
  -- #314 Klefki
  (1601, 707, NULL, 314, TRUE),
  -- #315 Mimikyu
  (1601, 778, NULL, 315, TRUE),
  -- #316 Shuppet
  (1601, 353, NULL, 316, TRUE),
  -- #317 Banette
  (1601, 354, NULL, 317, TRUE),
  -- #318 Frillish
  (1601, 592, NULL, 318, TRUE),
  -- #319 Jellicent
  (1601, 593, NULL, 319, TRUE),
  -- #320 Bruxish
  (1601, 779, NULL, 320, TRUE),
  -- #321 Drampa
  (1601, 780, NULL, 321, TRUE),
  -- #322 Absol
  (1601, 359, NULL, 322, TRUE),
  -- #323 Snorunt
  (1601, 361, NULL, 323, TRUE),
  -- #324 Glalie
  (1601, 362, NULL, 324, TRUE),
  -- #325 Froslass
  (1601, 478, NULL, 325, TRUE),
  -- #326 Sneasel
  (1601, 215, NULL, 326, TRUE),
  -- #327 Weavile
  (1601, 461, NULL, 327, TRUE),
  -- #328 Sandshrew
  (1601, 27, NULL, 328, TRUE),
  -- #329 Sandslash
  (1601, 28, NULL, 329, TRUE),
  -- #330 Vulpix
  (1601, 37, NULL, 330, TRUE),
  -- #331 Ninetales
  (1601, 38, NULL, 331, TRUE),
  -- #332 Vanillite
  (1601, 582, NULL, 332, TRUE),
  -- #333 Vanillish
  (1601, 583, NULL, 333, TRUE),
  -- #334 Vanilluxe
  (1601, 584, NULL, 334, TRUE),
  -- #335 Scraggy
  (1601, 559, NULL, 335, TRUE),
  -- #336 Scrafty
  (1601, 560, NULL, 336, TRUE),
  -- #337 Pawniard
  (1601, 624, NULL, 337, TRUE),
  -- #338 Bisharp
  (1601, 625, NULL, 338, TRUE),
  -- #339 Snubbull
  (1601, 209, NULL, 339, TRUE),
  -- #340 Granbull
  (1601, 210, NULL, 340, TRUE),
  -- #341 Shellos
  (1601, 422, NULL, 341, TRUE),
  -- #342 Gastrodon
  (1601, 423, NULL, 342, TRUE),
  -- #343 Relicanth
  (1601, 369, NULL, 343, TRUE),
  -- #344 Dhelmise
  (1601, 781, NULL, 344, TRUE),
  -- #345 Carvanha
  (1601, 318, NULL, 345, TRUE),
  -- #346 Sharpedo
  (1601, 319, NULL, 346, TRUE),
  -- #347 Skrelp
  (1601, 690, NULL, 347, TRUE),
  -- #348 Dragalge
  (1601, 691, NULL, 348, TRUE),
  -- #349 Clauncher
  (1601, 692, NULL, 349, TRUE),
  -- #350 Clawitzer
  (1601, 693, NULL, 350, TRUE),
  -- #351 Wailmer
  (1601, 320, NULL, 351, TRUE),
  -- #352 Wailord
  (1601, 321, NULL, 352, TRUE),
  -- #353 Lapras
  (1601, 131, NULL, 353, TRUE),
  -- #354 Tropius
  (1601, 357, NULL, 354, TRUE),
  -- #355 Exeggcute
  (1601, 102, NULL, 355, TRUE),
  -- #356 Exeggutor
  (1601, 103, NULL, 356, TRUE),
  -- #357 Corphish
  (1601, 341, NULL, 357, TRUE),
  -- #358 Crawdaunt
  (1601, 342, NULL, 358, TRUE),
  -- #359 Mienfoo
  (1601, 619, NULL, 359, TRUE),
  -- #360 Mienshao
  (1601, 620, NULL, 360, TRUE),
  -- #361 Jangmo-o
  (1601, 782, NULL, 361, TRUE),
  -- #362 Hakamo-o
  (1601, 783, NULL, 362, TRUE),
  -- #363 Kommo-o
  (1601, 784, NULL, 363, TRUE),
  -- #364 Emolga
  (1601, 587, NULL, 364, TRUE),
  -- #365 Scyther
  (1601, 123, NULL, 365, TRUE),
  -- #366 Scizor
  (1601, 212, NULL, 366, TRUE),
  -- #367 Heracross
  (1601, 214, NULL, 367, TRUE),
  -- #368 Aipom
  (1601, 190, NULL, 368, TRUE),
  -- #369 Ambipom
  (1601, 424, NULL, 369, TRUE),
  -- #370 Litleo
  (1601, 667, NULL, 370, TRUE),
  -- #371 Pyroar
  (1601, 668, NULL, 371, TRUE),
  -- #372 Misdreavus
  (1601, 200, NULL, 372, TRUE),
  -- #373 Mismagius
  (1601, 429, NULL, 373, TRUE),
  -- #374 Druddigon
  (1601, 621, NULL, 374, TRUE),
  -- #375 Lickitung
  (1601, 108, NULL, 375, TRUE),
  -- #376 Lickilicky
  (1601, 463, NULL, 376, TRUE),
  -- #377 Riolu
  (1601, 447, NULL, 377, TRUE),
  -- #378 Lucario
  (1601, 448, NULL, 378, TRUE),
  -- #379 Dratini
  (1601, 147, NULL, 379, TRUE),
  -- #380 Dragonair
  (1601, 148, NULL, 380, TRUE),
  -- #381 Dragonite
  (1601, 149, NULL, 381, TRUE),
  -- #382 Aerodactyl
  (1601, 142, NULL, 382, TRUE),
  -- #383 Tapu Koko
  (1601, 785, NULL, 383, TRUE),
  -- #384 Tapu Lele
  (1601, 786, NULL, 384, TRUE),
  -- #385 Tapu Bulu
  (1601, 787, NULL, 385, TRUE),
  -- #386 Tapu Fini
  (1601, 788, NULL, 386, TRUE),
  -- #387 Cosmog
  (1601, 789, NULL, 387, TRUE),
  -- #388 Cosmoem
  (1601, 790, NULL, 388, TRUE),
  -- #389 Solgaleo
  (1601, 791, NULL, 389, TRUE),
  -- #390 Lunala
  (1601, 792, NULL, 390, TRUE),
  -- #391 Nihilego
  (1601, 793, NULL, 391, TRUE),
  -- #392 Stakataka
  (1601, 805, NULL, 392, TRUE),
  -- #393 Blacephalon
  (1601, 806, NULL, 393, TRUE),
  -- #394 Buzzwole
  (1601, 794, NULL, 394, TRUE),
  -- #395 Pheromosa
  (1601, 795, NULL, 395, TRUE),
  -- #396 Xurkitree
  (1601, 796, NULL, 396, TRUE),
  -- #397 Celesteela
  (1601, 797, NULL, 397, TRUE),
  -- #398 Kartana
  (1601, 798, NULL, 398, TRUE),
  -- #399 Guzzlord
  (1601, 799, NULL, 399, TRUE),
  -- #400 Necrozma
  (1601, 800, NULL, 400, TRUE),
  -- #401 Magearna
  (1601, 801, NULL, 401, FALSE),
  -- #402 Marshadow
  (1601, 802, NULL, 402, FALSE),
  -- #403 Zeraora
  (1601, 807, NULL, 403, FALSE);
