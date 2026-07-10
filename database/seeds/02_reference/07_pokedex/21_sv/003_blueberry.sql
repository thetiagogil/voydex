-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Blueberry Pokedex number.
-- Cross-check: PokemonDB The Indigo Disk Pokedex, Serebii Blueberry Pokedex, and legacy Voydex Blueberry Pokedex entry seed.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Blueberry Pokedex entries for Pokémon Scarlet / Violet: The Indigo Disk.
-- Blueberry contains 243 Pokedex species; Walking Wake, Iron Leaves, and Pecharunt are source-visible but not required for completion.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Doduo
  (2501, 84, NULL, 1, TRUE),
  -- #002 Dodrio
  (2501, 85, NULL, 2, TRUE),
  -- #003 Exeggcute
  (2501, 102, NULL, 3, TRUE),
  -- #004 Exeggutor
  (2501, 103, NULL, 4, TRUE),
  -- #005 Rhyhorn
  (2501, 111, NULL, 5, TRUE),
  -- #006 Rhydon
  (2501, 112, NULL, 6, TRUE),
  -- #007 Rhyperior
  (2501, 464, NULL, 7, TRUE),
  -- #008 Venonat
  (2501, 48, NULL, 8, TRUE),
  -- #009 Venomoth
  (2501, 49, NULL, 9, TRUE),
  -- #010 Elekid
  (2501, 239, NULL, 10, TRUE),
  -- #011 Electabuzz
  (2501, 125, NULL, 11, TRUE),
  -- #012 Electivire
  (2501, 466, NULL, 12, TRUE),
  -- #013 Magby
  (2501, 240, NULL, 13, TRUE),
  -- #014 Magmar
  (2501, 126, NULL, 14, TRUE),
  -- #015 Magmortar
  (2501, 467, NULL, 15, TRUE),
  -- #016 Happiny
  (2501, 440, NULL, 16, TRUE),
  -- #017 Chansey
  (2501, 113, NULL, 17, TRUE),
  -- #018 Blissey
  (2501, 242, NULL, 18, TRUE),
  -- #019 Scyther
  (2501, 123, NULL, 19, TRUE),
  -- #020 Scizor
  (2501, 212, NULL, 20, TRUE),
  -- #021 Kleavor
  (2501, 900, NULL, 21, TRUE),
  -- #022 Tauros
  (2501, 128, NULL, 22, TRUE),
  -- #023 Blitzle
  (2501, 522, NULL, 23, TRUE),
  -- #024 Zebstrika
  (2501, 523, NULL, 24, TRUE),
  -- #025 Girafarig
  (2501, 203, NULL, 25, TRUE),
  -- #026 Farigiraf
  (2501, 981, NULL, 26, TRUE),
  -- #027 Sandile
  (2501, 551, NULL, 27, TRUE),
  -- #028 Krokorok
  (2501, 552, NULL, 28, TRUE),
  -- #029 Krookodile
  (2501, 553, NULL, 29, TRUE),
  -- #030 Rellor
  (2501, 953, NULL, 30, TRUE),
  -- #031 Rabsca
  (2501, 954, NULL, 31, TRUE),
  -- #032 Rufflet
  (2501, 627, NULL, 32, TRUE),
  -- #033 Braviary
  (2501, 628, NULL, 33, TRUE),
  -- #034 Vullaby
  (2501, 629, NULL, 34, TRUE),
  -- #035 Mandibuzz
  (2501, 630, NULL, 35, TRUE),
  -- #036 Litleo
  (2501, 667, NULL, 36, TRUE),
  -- #037 Pyroar
  (2501, 668, NULL, 37, TRUE),
  -- #038 Deerling
  (2501, 585, NULL, 38, TRUE),
  -- #039 Sawsbuck
  (2501, 586, NULL, 39, TRUE),
  -- #040 Smeargle
  (2501, 235, NULL, 40, TRUE),
  -- #041 Rotom
  (2501, 479, NULL, 41, TRUE),
  -- #042 Milcery
  (2501, 868, NULL, 42, TRUE),
  -- #043 Alcremie
  (2501, 869, NULL, 43, TRUE),
  -- #044 Trapinch
  (2501, 328, NULL, 44, TRUE),
  -- #045 Vibrava
  (2501, 329, NULL, 45, TRUE),
  -- #046 Flygon
  (2501, 330, NULL, 46, TRUE),
  -- #047 Pikipek
  (2501, 731, NULL, 47, TRUE),
  -- #048 Trumbeak
  (2501, 732, NULL, 48, TRUE),
  -- #049 Toucannon
  (2501, 733, NULL, 49, TRUE),
  -- #050 Tentacool
  (2501, 72, NULL, 50, TRUE),
  -- #051 Tentacruel
  (2501, 73, NULL, 51, TRUE),
  -- #052 Horsea
  (2501, 116, NULL, 52, TRUE),
  -- #053 Seadra
  (2501, 117, NULL, 53, TRUE),
  -- #054 Kingdra
  (2501, 230, NULL, 54, TRUE),
  -- #055 Bruxish
  (2501, 779, NULL, 55, TRUE),
  -- #056 Cottonee
  (2501, 546, NULL, 56, TRUE),
  -- #057 Whimsicott
  (2501, 547, NULL, 57, TRUE),
  -- #058 Comfey
  (2501, 764, NULL, 58, TRUE),
  -- #059 Slakoth
  (2501, 287, NULL, 59, TRUE),
  -- #060 Vigoroth
  (2501, 288, NULL, 60, TRUE),
  -- #061 Slaking
  (2501, 289, NULL, 61, TRUE),
  -- #062 Oddish
  (2501, 43, NULL, 62, TRUE),
  -- #063 Gloom
  (2501, 44, NULL, 63, TRUE),
  -- #064 Vileplume
  (2501, 45, NULL, 64, TRUE),
  -- #065 Bellossom
  (2501, 182, NULL, 65, TRUE),
  -- #066 Diglett
  (2501, 50, NULL, 66, TRUE),
  -- #067 Dugtrio
  (2501, 51, NULL, 67, TRUE),
  -- #068 Grimer
  (2501, 88, NULL, 68, TRUE),
  -- #069 Muk
  (2501, 89, NULL, 69, TRUE),
  -- #070 Zangoose
  (2501, 335, NULL, 70, TRUE),
  -- #071 Seviper
  (2501, 336, NULL, 71, TRUE),
  -- #072 Crabrawler
  (2501, 739, NULL, 72, TRUE),
  -- #073 Crabominable
  (2501, 740, NULL, 73, TRUE),
  -- #074 Oricorio
  (2501, 741, NULL, 74, TRUE),
  -- #075 Slowpoke
  (2501, 79, NULL, 75, TRUE),
  -- #076 Slowbro
  (2501, 80, NULL, 76, TRUE),
  -- #077 Slowking
  (2501, 199, NULL, 77, TRUE),
  -- #078 Chinchou
  (2501, 170, NULL, 78, TRUE),
  -- #079 Lanturn
  (2501, 171, NULL, 79, TRUE),
  -- #080 Inkay
  (2501, 686, NULL, 80, TRUE),
  -- #081 Malamar
  (2501, 687, NULL, 81, TRUE),
  -- #082 Luvdisc
  (2501, 370, NULL, 82, TRUE),
  -- #083 Finneon
  (2501, 456, NULL, 83, TRUE),
  -- #084 Lumineon
  (2501, 457, NULL, 84, TRUE),
  -- #085 Alomomola
  (2501, 594, NULL, 85, TRUE),
  -- #086 Torkoal
  (2501, 324, NULL, 86, TRUE),
  -- #087 Fletchling
  (2501, 661, NULL, 87, TRUE),
  -- #088 Fletchinder
  (2501, 662, NULL, 88, TRUE),
  -- #089 Talonflame
  (2501, 663, NULL, 89, TRUE),
  -- #090 Dewpider
  (2501, 751, NULL, 90, TRUE),
  -- #091 Araquanid
  (2501, 752, NULL, 91, TRUE),
  -- #092 Tyrogue
  (2501, 236, NULL, 92, TRUE),
  -- #093 Hitmonlee
  (2501, 106, NULL, 93, TRUE),
  -- #094 Hitmonchan
  (2501, 107, NULL, 94, TRUE),
  -- #095 Hitmontop
  (2501, 237, NULL, 95, TRUE),
  -- #096 Geodude
  (2501, 74, NULL, 96, TRUE),
  -- #097 Graveler
  (2501, 75, NULL, 97, TRUE),
  -- #098 Golem
  (2501, 76, NULL, 98, TRUE),
  -- #099 Drilbur
  (2501, 529, NULL, 99, TRUE),
  -- #100 Excadrill
  (2501, 530, NULL, 100, TRUE),
  -- #101 Gothita
  (2501, 574, NULL, 101, TRUE),
  -- #102 Gothorita
  (2501, 575, NULL, 102, TRUE),
  -- #103 Gothitelle
  (2501, 576, NULL, 103, TRUE),
  -- #104 Espurr
  (2501, 677, NULL, 104, TRUE),
  -- #105 Meowstic
  (2501, 678, NULL, 105, TRUE),
  -- #106 Minior
  (2501, 774, NULL, 106, TRUE),
  -- #107 Cranidos
  (2501, 408, NULL, 107, TRUE),
  -- #108 Rampardos
  (2501, 409, NULL, 108, TRUE),
  -- #109 Shieldon
  (2501, 410, NULL, 109, TRUE),
  -- #110 Bastiodon
  (2501, 411, NULL, 110, TRUE),
  -- #111 Minccino
  (2501, 572, NULL, 111, TRUE),
  -- #112 Cinccino
  (2501, 573, NULL, 112, TRUE),
  -- #113 Skarmory
  (2501, 227, NULL, 113, TRUE),
  -- #114 Swablu
  (2501, 333, NULL, 114, TRUE),
  -- #115 Altaria
  (2501, 334, NULL, 115, TRUE),
  -- #116 Magnemite
  (2501, 81, NULL, 116, TRUE),
  -- #117 Magneton
  (2501, 82, NULL, 117, TRUE),
  -- #118 Magnezone
  (2501, 462, NULL, 118, TRUE),
  -- #119 Plusle
  (2501, 311, NULL, 119, TRUE),
  -- #120 Minun
  (2501, 312, NULL, 120, TRUE),
  -- #121 Scraggy
  (2501, 559, NULL, 121, TRUE),
  -- #122 Scrafty
  (2501, 560, NULL, 122, TRUE),
  -- #123 Golett
  (2501, 622, NULL, 123, TRUE),
  -- #124 Golurk
  (2501, 623, NULL, 124, TRUE),
  -- #125 Numel
  (2501, 322, NULL, 125, TRUE),
  -- #126 Camerupt
  (2501, 323, NULL, 126, TRUE),
  -- #127 Sinistea
  (2501, 854, NULL, 127, TRUE),
  -- #128 Polteageist
  (2501, 855, NULL, 128, TRUE),
  -- #129 Porygon
  (2501, 137, NULL, 129, TRUE),
  -- #130 Porygon2
  (2501, 233, NULL, 130, TRUE),
  -- #131 Porygon-Z
  (2501, 474, NULL, 131, TRUE),
  -- #132 Joltik
  (2501, 595, NULL, 132, TRUE),
  -- #133 Galvantula
  (2501, 596, NULL, 133, TRUE),
  -- #134 Tynamo
  (2501, 602, NULL, 134, TRUE),
  -- #135 Eelektrik
  (2501, 603, NULL, 135, TRUE),
  -- #136 Eelektross
  (2501, 604, NULL, 136, TRUE),
  -- #137 Beldum
  (2501, 374, NULL, 137, TRUE),
  -- #138 Metang
  (2501, 375, NULL, 138, TRUE),
  -- #139 Metagross
  (2501, 376, NULL, 139, TRUE),
  -- #140 Axew
  (2501, 610, NULL, 140, TRUE),
  -- #141 Fraxure
  (2501, 611, NULL, 141, TRUE),
  -- #142 Haxorus
  (2501, 612, NULL, 142, TRUE),
  -- #143 Seel
  (2501, 86, NULL, 143, TRUE),
  -- #144 Dewgong
  (2501, 87, NULL, 144, TRUE),
  -- #145 Lapras
  (2501, 131, NULL, 145, TRUE),
  -- #146 Qwilfish
  (2501, 211, NULL, 146, TRUE),
  -- #147 Overqwil
  (2501, 904, NULL, 147, TRUE),
  -- #148 Solosis
  (2501, 577, NULL, 148, TRUE),
  -- #149 Duosion
  (2501, 578, NULL, 149, TRUE),
  -- #150 Reuniclus
  (2501, 579, NULL, 150, TRUE),
  -- #151 Snubbull
  (2501, 209, NULL, 151, TRUE),
  -- #152 Granbull
  (2501, 210, NULL, 152, TRUE),
  -- #153 Cubchoo
  (2501, 613, NULL, 153, TRUE),
  -- #154 Beartic
  (2501, 614, NULL, 154, TRUE),
  -- #155 Sandshrew
  (2501, 27, NULL, 155, TRUE),
  -- #156 Sandslash
  (2501, 28, NULL, 156, TRUE),
  -- #157 Vulpix
  (2501, 37, NULL, 157, TRUE),
  -- #158 Ninetales
  (2501, 38, NULL, 158, TRUE),
  -- #159 Snover
  (2501, 459, NULL, 159, TRUE),
  -- #160 Abomasnow
  (2501, 460, NULL, 160, TRUE),
  -- #161 Duraludon
  (2501, 884, NULL, 161, TRUE),
  -- #162 Archaludon
  (2501, 1018, NULL, 162, TRUE),
  -- #163 Hydrapple
  (2501, 1019, NULL, 163, TRUE),
  -- #164 Bulbasaur
  (2501, 1, NULL, 164, TRUE),
  -- #165 Ivysaur
  (2501, 2, NULL, 165, TRUE),
  -- #166 Venusaur
  (2501, 3, NULL, 166, TRUE),
  -- #167 Charmander
  (2501, 4, NULL, 167, TRUE),
  -- #168 Charmeleon
  (2501, 5, NULL, 168, TRUE),
  -- #169 Charizard
  (2501, 6, NULL, 169, TRUE),
  -- #170 Squirtle
  (2501, 7, NULL, 170, TRUE),
  -- #171 Wartortle
  (2501, 8, NULL, 171, TRUE),
  -- #172 Blastoise
  (2501, 9, NULL, 172, TRUE),
  -- #173 Chikorita
  (2501, 152, NULL, 173, TRUE),
  -- #174 Bayleef
  (2501, 153, NULL, 174, TRUE),
  -- #175 Meganium
  (2501, 154, NULL, 175, TRUE),
  -- #176 Cyndaquil
  (2501, 155, NULL, 176, TRUE),
  -- #177 Quilava
  (2501, 156, NULL, 177, TRUE),
  -- #178 Typhlosion
  (2501, 157, NULL, 178, TRUE),
  -- #179 Totodile
  (2501, 158, NULL, 179, TRUE),
  -- #180 Croconaw
  (2501, 159, NULL, 180, TRUE),
  -- #181 Feraligatr
  (2501, 160, NULL, 181, TRUE),
  -- #182 Treecko
  (2501, 252, NULL, 182, TRUE),
  -- #183 Grovyle
  (2501, 253, NULL, 183, TRUE),
  -- #184 Sceptile
  (2501, 254, NULL, 184, TRUE),
  -- #185 Torchic
  (2501, 255, NULL, 185, TRUE),
  -- #186 Combusken
  (2501, 256, NULL, 186, TRUE),
  -- #187 Blaziken
  (2501, 257, NULL, 187, TRUE),
  -- #188 Mudkip
  (2501, 258, NULL, 188, TRUE),
  -- #189 Marshtomp
  (2501, 259, NULL, 189, TRUE),
  -- #190 Swampert
  (2501, 260, NULL, 190, TRUE),
  -- #191 Turtwig
  (2501, 387, NULL, 191, TRUE),
  -- #192 Grotle
  (2501, 388, NULL, 192, TRUE),
  -- #193 Torterra
  (2501, 389, NULL, 193, TRUE),
  -- #194 Chimchar
  (2501, 390, NULL, 194, TRUE),
  -- #195 Monferno
  (2501, 391, NULL, 195, TRUE),
  -- #196 Infernape
  (2501, 392, NULL, 196, TRUE),
  -- #197 Piplup
  (2501, 393, NULL, 197, TRUE),
  -- #198 Prinplup
  (2501, 394, NULL, 198, TRUE),
  -- #199 Empoleon
  (2501, 395, NULL, 199, TRUE),
  -- #200 Snivy
  (2501, 495, NULL, 200, TRUE),
  -- #201 Servine
  (2501, 496, NULL, 201, TRUE),
  -- #202 Serperior
  (2501, 497, NULL, 202, TRUE),
  -- #203 Tepig
  (2501, 498, NULL, 203, TRUE),
  -- #204 Pignite
  (2501, 499, NULL, 204, TRUE),
  -- #205 Emboar
  (2501, 500, NULL, 205, TRUE),
  -- #206 Oshawott
  (2501, 501, NULL, 206, TRUE),
  -- #207 Dewott
  (2501, 502, NULL, 207, TRUE),
  -- #208 Samurott
  (2501, 503, NULL, 208, TRUE),
  -- #209 Chespin
  (2501, 650, NULL, 209, TRUE),
  -- #210 Quilladin
  (2501, 651, NULL, 210, TRUE),
  -- #211 Chesnaught
  (2501, 652, NULL, 211, TRUE),
  -- #212 Fennekin
  (2501, 653, NULL, 212, TRUE),
  -- #213 Braixen
  (2501, 654, NULL, 213, TRUE),
  -- #214 Delphox
  (2501, 655, NULL, 214, TRUE),
  -- #215 Froakie
  (2501, 656, NULL, 215, TRUE),
  -- #216 Frogadier
  (2501, 657, NULL, 216, TRUE),
  -- #217 Greninja
  (2501, 658, NULL, 217, TRUE),
  -- #218 Rowlet
  (2501, 722, NULL, 218, TRUE),
  -- #219 Dartrix
  (2501, 723, NULL, 219, TRUE),
  -- #220 Decidueye
  (2501, 724, NULL, 220, TRUE),
  -- #221 Litten
  (2501, 725, NULL, 221, TRUE),
  -- #222 Torracat
  (2501, 726, NULL, 222, TRUE),
  -- #223 Incineroar
  (2501, 727, NULL, 223, TRUE),
  -- #224 Popplio
  (2501, 728, NULL, 224, TRUE),
  -- #225 Brionne
  (2501, 729, NULL, 225, TRUE),
  -- #226 Primarina
  (2501, 730, NULL, 226, TRUE),
  -- #227 Grookey
  (2501, 810, NULL, 227, TRUE),
  -- #228 Thwackey
  (2501, 811, NULL, 228, TRUE),
  -- #229 Rillaboom
  (2501, 812, NULL, 229, TRUE),
  -- #230 Scorbunny
  (2501, 813, NULL, 230, TRUE),
  -- #231 Raboot
  (2501, 814, NULL, 231, TRUE),
  -- #232 Cinderace
  (2501, 815, NULL, 232, TRUE),
  -- #233 Sobble
  (2501, 816, NULL, 233, TRUE),
  -- #234 Drizzile
  (2501, 817, NULL, 234, TRUE),
  -- #235 Inteleon
  (2501, 818, NULL, 235, TRUE),
  -- #236 Gouging Fire
  (2501, 1020, NULL, 236, TRUE),
  -- #237 Raging Bolt
  (2501, 1021, NULL, 237, TRUE),
  -- #238 Iron Crown
  (2501, 1023, NULL, 238, TRUE),
  -- #239 Iron Boulder
  (2501, 1022, NULL, 239, TRUE),
  -- #240 Terapagos
  (2501, 1024, NULL, 240, TRUE),
  -- #241 Walking Wake
  (2501, 1009, NULL, 241, FALSE),
  -- #242 Iron Leaves
  (2501, 1010, NULL, 242, FALSE),
  -- #243 Pecharunt
  (2501, 1025, NULL, 243, FALSE);
