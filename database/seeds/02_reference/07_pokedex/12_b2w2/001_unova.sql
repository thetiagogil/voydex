-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by New Unova Pokedex number in Black 2 / White 2.
-- Cross-check: PokemonDB Black 2 / White 2 Pokedex and legacy Voydex Black 2 / White 2 Pokedex entry seed.
-- ============================================================================
-- File Scope
-- ============================================================================
-- New Unova Pokedex entries for Black 2 / White 2.
-- Black 2 / White 2 expand the Unova Pokedex to 301 entries, numbered #000-#300 with Victini at #000.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #000 Victini
  (1201, 494, NULL, 0, FALSE),
  -- #001 Snivy
  (1201, 495, NULL, 1, TRUE),
  -- #002 Servine
  (1201, 496, NULL, 2, TRUE),
  -- #003 Serperior
  (1201, 497, NULL, 3, TRUE),
  -- #004 Tepig
  (1201, 498, NULL, 4, TRUE),
  -- #005 Pignite
  (1201, 499, NULL, 5, TRUE),
  -- #006 Emboar
  (1201, 500, NULL, 6, TRUE),
  -- #007 Oshawott
  (1201, 501, NULL, 7, TRUE),
  -- #008 Dewott
  (1201, 502, NULL, 8, TRUE),
  -- #009 Samurott
  (1201, 503, NULL, 9, TRUE),
  -- #010 Patrat
  (1201, 504, NULL, 10, TRUE),
  -- #011 Watchog
  (1201, 505, NULL, 11, TRUE),
  -- #012 Purrloin
  (1201, 509, NULL, 12, TRUE),
  -- #013 Liepard
  (1201, 510, NULL, 13, TRUE),
  -- #014 Pidove
  (1201, 519, NULL, 14, TRUE),
  -- #015 Tranquill
  (1201, 520, NULL, 15, TRUE),
  -- #016 Unfezant
  (1201, 521, NULL, 16, TRUE),
  -- #017 Sewaddle
  (1201, 540, NULL, 17, TRUE),
  -- #018 Swadloon
  (1201, 541, NULL, 18, TRUE),
  -- #019 Leavanny
  (1201, 542, NULL, 19, TRUE),
  -- #020 Sunkern
  (1201, 191, NULL, 20, TRUE),
  -- #021 Sunflora
  (1201, 192, NULL, 21, TRUE),
  -- #022 Lillipup
  (1201, 506, NULL, 22, TRUE),
  -- #023 Herdier
  (1201, 507, NULL, 23, TRUE),
  -- #024 Stoutland
  (1201, 508, NULL, 24, TRUE),
  -- #025 Mareep
  (1201, 179, NULL, 25, TRUE),
  -- #026 Flaaffy
  (1201, 180, NULL, 26, TRUE),
  -- #027 Ampharos
  (1201, 181, NULL, 27, TRUE),
  -- #028 Psyduck
  (1201, 54, NULL, 28, TRUE),
  -- #029 Golduck
  (1201, 55, NULL, 29, TRUE),
  -- #030 Azurill
  (1201, 298, NULL, 30, TRUE),
  -- #031 Marill
  (1201, 183, NULL, 31, TRUE),
  -- #032 Azumarill
  (1201, 184, NULL, 32, TRUE),
  -- #033 Riolu
  (1201, 447, NULL, 33, TRUE),
  -- #034 Lucario
  (1201, 448, NULL, 34, TRUE),
  -- #035 Dunsparce
  (1201, 206, NULL, 35, TRUE),
  -- #036 Audino
  (1201, 531, NULL, 36, TRUE),
  -- #037 Pansage
  (1201, 511, NULL, 37, TRUE),
  -- #038 Simisage
  (1201, 512, NULL, 38, TRUE),
  -- #039 Pansear
  (1201, 513, NULL, 39, TRUE),
  -- #040 Simisear
  (1201, 514, NULL, 40, TRUE),
  -- #041 Panpour
  (1201, 515, NULL, 41, TRUE),
  -- #042 Simipour
  (1201, 516, NULL, 42, TRUE),
  -- #043 Venipede
  (1201, 543, NULL, 43, TRUE),
  -- #044 Whirlipede
  (1201, 544, NULL, 44, TRUE),
  -- #045 Scolipede
  (1201, 545, NULL, 45, TRUE),
  -- #046 Koffing
  (1201, 109, NULL, 46, TRUE),
  -- #047 Weezing
  (1201, 110, NULL, 47, TRUE),
  -- #048 Magnemite
  (1201, 81, NULL, 48, TRUE),
  -- #049 Magneton
  (1201, 82, NULL, 49, TRUE),
  -- #050 Magnezone
  (1201, 462, NULL, 50, TRUE),
  -- #051 Growlithe
  (1201, 58, NULL, 51, TRUE),
  -- #052 Arcanine
  (1201, 59, NULL, 52, TRUE),
  -- #053 Magby
  (1201, 240, NULL, 53, TRUE),
  -- #054 Magmar
  (1201, 126, NULL, 54, TRUE),
  -- #055 Magmortar
  (1201, 467, NULL, 55, TRUE),
  -- #056 Elekid
  (1201, 239, NULL, 56, TRUE),
  -- #057 Electabuzz
  (1201, 125, NULL, 57, TRUE),
  -- #058 Electivire
  (1201, 466, NULL, 58, TRUE),
  -- #059 Rattata
  (1201, 19, NULL, 59, TRUE),
  -- #060 Raticate
  (1201, 20, NULL, 60, TRUE),
  -- #061 Zubat
  (1201, 41, NULL, 61, TRUE),
  -- #062 Golbat
  (1201, 42, NULL, 62, TRUE),
  -- #063 Crobat
  (1201, 169, NULL, 63, TRUE),
  -- #064 Grimer
  (1201, 88, NULL, 64, TRUE),
  -- #065 Muk
  (1201, 89, NULL, 65, TRUE),
  -- #066 Woobat
  (1201, 527, NULL, 66, TRUE),
  -- #067 Swoobat
  (1201, 528, NULL, 67, TRUE),
  -- #068 Roggenrola
  (1201, 524, NULL, 68, TRUE),
  -- #069 Boldore
  (1201, 525, NULL, 69, TRUE),
  -- #070 Gigalith
  (1201, 526, NULL, 70, TRUE),
  -- #071 Onix
  (1201, 95, NULL, 71, TRUE),
  -- #072 Steelix
  (1201, 208, NULL, 72, TRUE),
  -- #073 Timburr
  (1201, 532, NULL, 73, TRUE),
  -- #074 Gurdurr
  (1201, 533, NULL, 74, TRUE),
  -- #075 Conkeldurr
  (1201, 534, NULL, 75, TRUE),
  -- #076 Drilbur
  (1201, 529, NULL, 76, TRUE),
  -- #077 Excadrill
  (1201, 530, NULL, 77, TRUE),
  -- #078 Skitty
  (1201, 300, NULL, 78, TRUE),
  -- #079 Delcatty
  (1201, 301, NULL, 79, TRUE),
  -- #080 Buneary
  (1201, 427, NULL, 80, TRUE),
  -- #081 Lopunny
  (1201, 428, NULL, 81, TRUE),
  -- #082 Cottonee
  (1201, 546, NULL, 82, TRUE),
  -- #083 Whimsicott
  (1201, 547, NULL, 83, TRUE),
  -- #084 Petilil
  (1201, 548, NULL, 84, TRUE),
  -- #085 Lilligant
  (1201, 549, NULL, 85, TRUE),
  -- #086 Munna
  (1201, 517, NULL, 86, TRUE),
  -- #087 Musharna
  (1201, 518, NULL, 87, TRUE),
  -- #088 Cleffa
  (1201, 173, NULL, 88, TRUE),
  -- #089 Clefairy
  (1201, 35, NULL, 89, TRUE),
  -- #090 Clefable
  (1201, 36, NULL, 90, TRUE),
  -- #091 Eevee
  (1201, 133, NULL, 91, TRUE),
  -- #092 Vaporeon
  (1201, 134, NULL, 92, TRUE),
  -- #093 Jolteon
  (1201, 135, NULL, 93, TRUE),
  -- #094 Flareon
  (1201, 136, NULL, 94, TRUE),
  -- #095 Espeon
  (1201, 196, NULL, 95, TRUE),
  -- #096 Umbreon
  (1201, 197, NULL, 96, TRUE),
  -- #097 Leafeon
  (1201, 470, NULL, 97, TRUE),
  -- #098 Glaceon
  (1201, 471, NULL, 98, TRUE),
  -- #099 Sandile
  (1201, 551, NULL, 99, TRUE),
  -- #100 Krokorok
  (1201, 552, NULL, 100, TRUE),
  -- #101 Krookodile
  (1201, 553, NULL, 101, TRUE),
  -- #102 Darumaka
  (1201, 554, NULL, 102, TRUE),
  -- #103 Darmanitan
  (1201, 555, NULL, 103, TRUE),
  -- #104 Basculin
  (1201, 550, NULL, 104, TRUE),
  -- #105 Trubbish
  (1201, 568, NULL, 105, TRUE),
  -- #106 Garbodor
  (1201, 569, NULL, 106, TRUE),
  -- #107 Minccino
  (1201, 572, NULL, 107, TRUE),
  -- #108 Cinccino
  (1201, 573, NULL, 108, TRUE),
  -- #109 Rufflet
  (1201, 627, NULL, 109, TRUE),
  -- #110 Braviary
  (1201, 628, NULL, 110, TRUE),
  -- #111 Vullaby
  (1201, 629, NULL, 111, TRUE),
  -- #112 Mandibuzz
  (1201, 630, NULL, 112, TRUE),
  -- #113 Sandshrew
  (1201, 27, NULL, 113, TRUE),
  -- #114 Sandslash
  (1201, 28, NULL, 114, TRUE),
  -- #115 Dwebble
  (1201, 557, NULL, 115, TRUE),
  -- #116 Crustle
  (1201, 558, NULL, 116, TRUE),
  -- #117 Scraggy
  (1201, 559, NULL, 117, TRUE),
  -- #118 Scrafty
  (1201, 560, NULL, 118, TRUE),
  -- #119 Maractus
  (1201, 556, NULL, 119, TRUE),
  -- #120 Sigilyph
  (1201, 561, NULL, 120, TRUE),
  -- #121 Trapinch
  (1201, 328, NULL, 121, TRUE),
  -- #122 Vibrava
  (1201, 329, NULL, 122, TRUE),
  -- #123 Flygon
  (1201, 330, NULL, 123, TRUE),
  -- #124 Yamask
  (1201, 562, NULL, 124, TRUE),
  -- #125 Cofagrigus
  (1201, 563, NULL, 125, TRUE),
  -- #126 Tirtouga
  (1201, 564, NULL, 126, TRUE),
  -- #127 Carracosta
  (1201, 565, NULL, 127, TRUE),
  -- #128 Archen
  (1201, 566, NULL, 128, TRUE),
  -- #129 Archeops
  (1201, 567, NULL, 129, TRUE),
  -- #130 Klink
  (1201, 599, NULL, 130, TRUE),
  -- #131 Klang
  (1201, 600, NULL, 131, TRUE),
  -- #132 Klinklang
  (1201, 601, NULL, 132, TRUE),
  -- #133 Budew
  (1201, 406, NULL, 133, TRUE),
  -- #134 Roselia
  (1201, 315, NULL, 134, TRUE),
  -- #135 Roserade
  (1201, 407, NULL, 135, TRUE),
  -- #136 Gothita
  (1201, 574, NULL, 136, TRUE),
  -- #137 Gothorita
  (1201, 575, NULL, 137, TRUE),
  -- #138 Gothitelle
  (1201, 576, NULL, 138, TRUE),
  -- #139 Solosis
  (1201, 577, NULL, 139, TRUE),
  -- #140 Duosion
  (1201, 578, NULL, 140, TRUE),
  -- #141 Reuniclus
  (1201, 579, NULL, 141, TRUE),
  -- #142 Combee
  (1201, 415, NULL, 142, TRUE),
  -- #143 Vespiquen
  (1201, 416, NULL, 143, TRUE),
  -- #144 Emolga
  (1201, 587, NULL, 144, TRUE),
  -- #145 Heracross
  (1201, 214, NULL, 145, TRUE),
  -- #146 Pinsir
  (1201, 127, NULL, 146, TRUE),
  -- #147 Blitzle
  (1201, 522, NULL, 147, TRUE),
  -- #148 Zebstrika
  (1201, 523, NULL, 148, TRUE),
  -- #149 Buizel
  (1201, 418, NULL, 149, TRUE),
  -- #150 Floatzel
  (1201, 419, NULL, 150, TRUE),
  -- #151 Zorua
  (1201, 570, NULL, 151, TRUE),
  -- #152 Zoroark
  (1201, 571, NULL, 152, TRUE),
  -- #153 Ducklett
  (1201, 580, NULL, 153, TRUE),
  -- #154 Swanna
  (1201, 581, NULL, 154, TRUE),
  -- #155 Karrablast
  (1201, 588, NULL, 155, TRUE),
  -- #156 Escavalier
  (1201, 589, NULL, 156, TRUE),
  -- #157 Shelmet
  (1201, 616, NULL, 157, TRUE),
  -- #158 Accelgor
  (1201, 617, NULL, 158, TRUE),
  -- #159 Deerling
  (1201, 585, NULL, 159, TRUE),
  -- #160 Sawsbuck
  (1201, 586, NULL, 160, TRUE),
  -- #161 Foongus
  (1201, 590, NULL, 161, TRUE),
  -- #162 Amoonguss
  (1201, 591, NULL, 162, TRUE),
  -- #163 Castform
  (1201, 351, NULL, 163, TRUE),
  -- #164 Nosepass
  (1201, 299, NULL, 164, TRUE),
  -- #165 Probopass
  (1201, 476, NULL, 165, TRUE),
  -- #166 Aron
  (1201, 304, NULL, 166, TRUE),
  -- #167 Lairon
  (1201, 305, NULL, 167, TRUE),
  -- #168 Aggron
  (1201, 306, NULL, 168, TRUE),
  -- #169 Baltoy
  (1201, 343, NULL, 169, TRUE),
  -- #170 Claydol
  (1201, 344, NULL, 170, TRUE),
  -- #171 Larvesta
  (1201, 636, NULL, 171, TRUE),
  -- #172 Volcarona
  (1201, 637, NULL, 172, TRUE),
  -- #173 Joltik
  (1201, 595, NULL, 173, TRUE),
  -- #174 Galvantula
  (1201, 596, NULL, 174, TRUE),
  -- #175 Ferroseed
  (1201, 597, NULL, 175, TRUE),
  -- #176 Ferrothorn
  (1201, 598, NULL, 176, TRUE),
  -- #177 Tynamo
  (1201, 602, NULL, 177, TRUE),
  -- #178 Eelektrik
  (1201, 603, NULL, 178, TRUE),
  -- #179 Eelektross
  (1201, 604, NULL, 179, TRUE),
  -- #180 Frillish
  (1201, 592, NULL, 180, TRUE),
  -- #181 Jellicent
  (1201, 593, NULL, 181, TRUE),
  -- #182 Alomomola
  (1201, 594, NULL, 182, TRUE),
  -- #183 Axew
  (1201, 610, NULL, 183, TRUE),
  -- #184 Fraxure
  (1201, 611, NULL, 184, TRUE),
  -- #185 Haxorus
  (1201, 612, NULL, 185, TRUE),
  -- #186 Zangoose
  (1201, 335, NULL, 186, TRUE),
  -- #187 Seviper
  (1201, 336, NULL, 187, TRUE),
  -- #188 Elgyem
  (1201, 605, NULL, 188, TRUE),
  -- #189 Beheeyem
  (1201, 606, NULL, 189, TRUE),
  -- #190 Litwick
  (1201, 607, NULL, 190, TRUE),
  -- #191 Lampent
  (1201, 608, NULL, 191, TRUE),
  -- #192 Chandelure
  (1201, 609, NULL, 192, TRUE),
  -- #193 Heatmor
  (1201, 631, NULL, 193, TRUE),
  -- #194 Durant
  (1201, 632, NULL, 194, TRUE),
  -- #195 Cubchoo
  (1201, 613, NULL, 195, TRUE),
  -- #196 Beartic
  (1201, 614, NULL, 196, TRUE),
  -- #197 Cryogonal
  (1201, 615, NULL, 197, TRUE),
  -- #198 Tornadus
  (1201, 641, NULL, 198, TRUE),
  -- #199 Thundurus
  (1201, 642, NULL, 199, TRUE),
  -- #200 Landorus
  (1201, 645, NULL, 200, TRUE),
  -- #201 Skorupi
  (1201, 451, NULL, 201, TRUE),
  -- #202 Drapion
  (1201, 452, NULL, 202, TRUE),
  -- #203 Skarmory
  (1201, 227, NULL, 203, TRUE),
  -- #204 Numel
  (1201, 322, NULL, 204, TRUE),
  -- #205 Camerupt
  (1201, 323, NULL, 205, TRUE),
  -- #206 Spoink
  (1201, 325, NULL, 206, TRUE),
  -- #207 Grumpig
  (1201, 326, NULL, 207, TRUE),
  -- #208 Drifloon
  (1201, 425, NULL, 208, TRUE),
  -- #209 Drifblim
  (1201, 426, NULL, 209, TRUE),
  -- #210 Shuppet
  (1201, 353, NULL, 210, TRUE),
  -- #211 Banette
  (1201, 354, NULL, 211, TRUE),
  -- #212 Wingull
  (1201, 278, NULL, 212, TRUE),
  -- #213 Pelipper
  (1201, 279, NULL, 213, TRUE),
  -- #214 Lunatone
  (1201, 337, NULL, 214, TRUE),
  -- #215 Solrock
  (1201, 338, NULL, 215, TRUE),
  -- #216 Absol
  (1201, 359, NULL, 216, TRUE),
  -- #217 Tangela
  (1201, 114, NULL, 217, TRUE),
  -- #218 Tangrowth
  (1201, 465, NULL, 218, TRUE),
  -- #219 Mienfoo
  (1201, 619, NULL, 219, TRUE),
  -- #220 Mienshao
  (1201, 620, NULL, 220, TRUE),
  -- #221 Gligar
  (1201, 207, NULL, 221, TRUE),
  -- #222 Gliscor
  (1201, 472, NULL, 222, TRUE),
  -- #223 Pawniard
  (1201, 624, NULL, 223, TRUE),
  -- #224 Bisharp
  (1201, 625, NULL, 224, TRUE),
  -- #225 Cobalion
  (1201, 638, NULL, 225, TRUE),
  -- #226 Terrakion
  (1201, 639, NULL, 226, TRUE),
  -- #227 Virizion
  (1201, 640, NULL, 227, TRUE),
  -- #228 Tympole
  (1201, 535, NULL, 228, TRUE),
  -- #229 Palpitoad
  (1201, 536, NULL, 229, TRUE),
  -- #230 Seismitoad
  (1201, 537, NULL, 230, TRUE),
  -- #231 Stunfisk
  (1201, 618, NULL, 231, TRUE),
  -- #232 Shuckle
  (1201, 213, NULL, 232, TRUE),
  -- #233 Mantyke
  (1201, 458, NULL, 233, TRUE),
  -- #234 Mantine
  (1201, 226, NULL, 234, TRUE),
  -- #235 Remoraid
  (1201, 223, NULL, 235, TRUE),
  -- #236 Octillery
  (1201, 224, NULL, 236, TRUE),
  -- #237 Corsola
  (1201, 222, NULL, 237, TRUE),
  -- #238 Staryu
  (1201, 120, NULL, 238, TRUE),
  -- #239 Starmie
  (1201, 121, NULL, 239, TRUE),
  -- #240 Wailmer
  (1201, 320, NULL, 240, TRUE),
  -- #241 Wailord
  (1201, 321, NULL, 241, TRUE),
  -- #242 Lapras
  (1201, 131, NULL, 242, TRUE),
  -- #243 Spheal
  (1201, 363, NULL, 243, TRUE),
  -- #244 Sealeo
  (1201, 364, NULL, 244, TRUE),
  -- #245 Walrein
  (1201, 365, NULL, 245, TRUE),
  -- #246 Swablu
  (1201, 333, NULL, 246, TRUE),
  -- #247 Altaria
  (1201, 334, NULL, 247, TRUE),
  -- #248 Vulpix
  (1201, 37, NULL, 248, TRUE),
  -- #249 Ninetales
  (1201, 38, NULL, 249, TRUE),
  -- #250 Bronzor
  (1201, 436, NULL, 250, TRUE),
  -- #251 Bronzong
  (1201, 437, NULL, 251, TRUE),
  -- #252 Sneasel
  (1201, 215, NULL, 252, TRUE),
  -- #253 Weavile
  (1201, 461, NULL, 253, TRUE),
  -- #254 Delibird
  (1201, 225, NULL, 254, TRUE),
  -- #255 Vanillite
  (1201, 582, NULL, 255, TRUE),
  -- #256 Vanillish
  (1201, 583, NULL, 256, TRUE),
  -- #257 Vanilluxe
  (1201, 584, NULL, 257, TRUE),
  -- #258 Swinub
  (1201, 220, NULL, 258, TRUE),
  -- #259 Piloswine
  (1201, 221, NULL, 259, TRUE),
  -- #260 Mamoswine
  (1201, 473, NULL, 260, TRUE),
  -- #261 Ditto
  (1201, 132, NULL, 261, TRUE),
  -- #262 Beldum
  (1201, 374, NULL, 262, TRUE),
  -- #263 Metang
  (1201, 375, NULL, 263, TRUE),
  -- #264 Metagross
  (1201, 376, NULL, 264, TRUE),
  -- #265 Seel
  (1201, 86, NULL, 265, TRUE),
  -- #266 Dewgong
  (1201, 87, NULL, 266, TRUE),
  -- #267 Throh
  (1201, 538, NULL, 267, TRUE),
  -- #268 Sawk
  (1201, 539, NULL, 268, TRUE),
  -- #269 Bouffalant
  (1201, 626, NULL, 269, TRUE),
  -- #270 Druddigon
  (1201, 621, NULL, 270, TRUE),
  -- #271 Golett
  (1201, 622, NULL, 271, TRUE),
  -- #272 Golurk
  (1201, 623, NULL, 272, TRUE),
  -- #273 Deino
  (1201, 633, NULL, 273, TRUE),
  -- #274 Zweilous
  (1201, 634, NULL, 274, TRUE),
  -- #275 Hydreigon
  (1201, 635, NULL, 275, TRUE),
  -- #276 Slakoth
  (1201, 287, NULL, 276, TRUE),
  -- #277 Vigoroth
  (1201, 288, NULL, 277, TRUE),
  -- #278 Slaking
  (1201, 289, NULL, 278, TRUE),
  -- #279 Corphish
  (1201, 341, NULL, 279, TRUE),
  -- #280 Crawdaunt
  (1201, 342, NULL, 280, TRUE),
  -- #281 Igglybuff
  (1201, 174, NULL, 281, TRUE),
  -- #282 Jigglypuff
  (1201, 39, NULL, 282, TRUE),
  -- #283 Wigglytuff
  (1201, 40, NULL, 283, TRUE),
  -- #284 Lickitung
  (1201, 108, NULL, 284, TRUE),
  -- #285 Lickilicky
  (1201, 463, NULL, 285, TRUE),
  -- #286 Yanma
  (1201, 193, NULL, 286, TRUE),
  -- #287 Yanmega
  (1201, 469, NULL, 287, TRUE),
  -- #288 Tropius
  (1201, 357, NULL, 288, TRUE),
  -- #289 Carnivine
  (1201, 455, NULL, 289, TRUE),
  -- #290 Croagunk
  (1201, 453, NULL, 290, TRUE),
  -- #291 Toxicroak
  (1201, 454, NULL, 291, TRUE),
  -- #292 Larvitar
  (1201, 246, NULL, 292, TRUE),
  -- #293 Pupitar
  (1201, 247, NULL, 293, TRUE),
  -- #294 Tyranitar
  (1201, 248, NULL, 294, TRUE),
  -- #295 Reshiram
  (1201, 643, NULL, 295, TRUE),
  -- #296 Zekrom
  (1201, 644, NULL, 296, TRUE),
  -- #297 Kyurem
  (1201, 646, NULL, 297, TRUE),
  -- #298 Keldeo
  (1201, 647, NULL, 298, FALSE),
  -- #299 Meloetta
  (1201, 648, NULL, 299, FALSE),
  -- #300 Genesect
  (1201, 649, NULL, 300, FALSE);
