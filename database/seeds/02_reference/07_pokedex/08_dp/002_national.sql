-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by National Pokedex number.
-- Cross-check: Bulbapedia National Pokedex page, Serebii National Pokedex, and PokemonDB National Pokedex.
-- ============================================================================
-- File Scope
-- ============================================================================
-- National Pokedex entries for Diamond / Pearl.
-- National Pokedex contains 493 species for this version group; Mythical species are source-visible but not required for default completion.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Bulbasaur
  (802, 1, NULL, 1, TRUE),
  -- #002 Ivysaur
  (802, 2, NULL, 2, TRUE),
  -- #003 Venusaur
  (802, 3, NULL, 3, TRUE),
  -- #004 Charmander
  (802, 4, NULL, 4, TRUE),
  -- #005 Charmeleon
  (802, 5, NULL, 5, TRUE),
  -- #006 Charizard
  (802, 6, NULL, 6, TRUE),
  -- #007 Squirtle
  (802, 7, NULL, 7, TRUE),
  -- #008 Wartortle
  (802, 8, NULL, 8, TRUE),
  -- #009 Blastoise
  (802, 9, NULL, 9, TRUE),
  -- #010 Caterpie
  (802, 10, NULL, 10, TRUE),
  -- #011 Metapod
  (802, 11, NULL, 11, TRUE),
  -- #012 Butterfree
  (802, 12, NULL, 12, TRUE),
  -- #013 Weedle
  (802, 13, NULL, 13, TRUE),
  -- #014 Kakuna
  (802, 14, NULL, 14, TRUE),
  -- #015 Beedrill
  (802, 15, NULL, 15, TRUE),
  -- #016 Pidgey
  (802, 16, NULL, 16, TRUE),
  -- #017 Pidgeotto
  (802, 17, NULL, 17, TRUE),
  -- #018 Pidgeot
  (802, 18, NULL, 18, TRUE),
  -- #019 Rattata
  (802, 19, NULL, 19, TRUE),
  -- #020 Raticate
  (802, 20, NULL, 20, TRUE),
  -- #021 Spearow
  (802, 21, NULL, 21, TRUE),
  -- #022 Fearow
  (802, 22, NULL, 22, TRUE),
  -- #023 Ekans
  (802, 23, NULL, 23, TRUE),
  -- #024 Arbok
  (802, 24, NULL, 24, TRUE),
  -- #025 Pikachu
  (802, 25, NULL, 25, TRUE),
  -- #026 Raichu
  (802, 26, NULL, 26, TRUE),
  -- #027 Sandshrew
  (802, 27, NULL, 27, TRUE),
  -- #028 Sandslash
  (802, 28, NULL, 28, TRUE),
  -- #029 Nidoran F
  (802, 29, NULL, 29, TRUE),
  -- #030 Nidorina
  (802, 30, NULL, 30, TRUE),
  -- #031 Nidoqueen
  (802, 31, NULL, 31, TRUE),
  -- #032 Nidoran M
  (802, 32, NULL, 32, TRUE),
  -- #033 Nidorino
  (802, 33, NULL, 33, TRUE),
  -- #034 Nidoking
  (802, 34, NULL, 34, TRUE),
  -- #035 Clefairy
  (802, 35, NULL, 35, TRUE),
  -- #036 Clefable
  (802, 36, NULL, 36, TRUE),
  -- #037 Vulpix
  (802, 37, NULL, 37, TRUE),
  -- #038 Ninetales
  (802, 38, NULL, 38, TRUE),
  -- #039 Jigglypuff
  (802, 39, NULL, 39, TRUE),
  -- #040 Wigglytuff
  (802, 40, NULL, 40, TRUE),
  -- #041 Zubat
  (802, 41, NULL, 41, TRUE),
  -- #042 Golbat
  (802, 42, NULL, 42, TRUE),
  -- #043 Oddish
  (802, 43, NULL, 43, TRUE),
  -- #044 Gloom
  (802, 44, NULL, 44, TRUE),
  -- #045 Vileplume
  (802, 45, NULL, 45, TRUE),
  -- #046 Paras
  (802, 46, NULL, 46, TRUE),
  -- #047 Parasect
  (802, 47, NULL, 47, TRUE),
  -- #048 Venonat
  (802, 48, NULL, 48, TRUE),
  -- #049 Venomoth
  (802, 49, NULL, 49, TRUE),
  -- #050 Diglett
  (802, 50, NULL, 50, TRUE),
  -- #051 Dugtrio
  (802, 51, NULL, 51, TRUE),
  -- #052 Meowth
  (802, 52, NULL, 52, TRUE),
  -- #053 Persian
  (802, 53, NULL, 53, TRUE),
  -- #054 Psyduck
  (802, 54, NULL, 54, TRUE),
  -- #055 Golduck
  (802, 55, NULL, 55, TRUE),
  -- #056 Mankey
  (802, 56, NULL, 56, TRUE),
  -- #057 Primeape
  (802, 57, NULL, 57, TRUE),
  -- #058 Growlithe
  (802, 58, NULL, 58, TRUE),
  -- #059 Arcanine
  (802, 59, NULL, 59, TRUE),
  -- #060 Poliwag
  (802, 60, NULL, 60, TRUE),
  -- #061 Poliwhirl
  (802, 61, NULL, 61, TRUE),
  -- #062 Poliwrath
  (802, 62, NULL, 62, TRUE),
  -- #063 Abra
  (802, 63, NULL, 63, TRUE),
  -- #064 Kadabra
  (802, 64, NULL, 64, TRUE),
  -- #065 Alakazam
  (802, 65, NULL, 65, TRUE),
  -- #066 Machop
  (802, 66, NULL, 66, TRUE),
  -- #067 Machoke
  (802, 67, NULL, 67, TRUE),
  -- #068 Machamp
  (802, 68, NULL, 68, TRUE),
  -- #069 Bellsprout
  (802, 69, NULL, 69, TRUE),
  -- #070 Weepinbell
  (802, 70, NULL, 70, TRUE),
  -- #071 Victreebel
  (802, 71, NULL, 71, TRUE),
  -- #072 Tentacool
  (802, 72, NULL, 72, TRUE),
  -- #073 Tentacruel
  (802, 73, NULL, 73, TRUE),
  -- #074 Geodude
  (802, 74, NULL, 74, TRUE),
  -- #075 Graveler
  (802, 75, NULL, 75, TRUE),
  -- #076 Golem
  (802, 76, NULL, 76, TRUE),
  -- #077 Ponyta
  (802, 77, NULL, 77, TRUE),
  -- #078 Rapidash
  (802, 78, NULL, 78, TRUE),
  -- #079 Slowpoke
  (802, 79, NULL, 79, TRUE),
  -- #080 Slowbro
  (802, 80, NULL, 80, TRUE),
  -- #081 Magnemite
  (802, 81, NULL, 81, TRUE),
  -- #082 Magneton
  (802, 82, NULL, 82, TRUE),
  -- #083 Farfetch'd
  (802, 83, NULL, 83, TRUE),
  -- #084 Doduo
  (802, 84, NULL, 84, TRUE),
  -- #085 Dodrio
  (802, 85, NULL, 85, TRUE),
  -- #086 Seel
  (802, 86, NULL, 86, TRUE),
  -- #087 Dewgong
  (802, 87, NULL, 87, TRUE),
  -- #088 Grimer
  (802, 88, NULL, 88, TRUE),
  -- #089 Muk
  (802, 89, NULL, 89, TRUE),
  -- #090 Shellder
  (802, 90, NULL, 90, TRUE),
  -- #091 Cloyster
  (802, 91, NULL, 91, TRUE),
  -- #092 Gastly
  (802, 92, NULL, 92, TRUE),
  -- #093 Haunter
  (802, 93, NULL, 93, TRUE),
  -- #094 Gengar
  (802, 94, NULL, 94, TRUE),
  -- #095 Onix
  (802, 95, NULL, 95, TRUE),
  -- #096 Drowzee
  (802, 96, NULL, 96, TRUE),
  -- #097 Hypno
  (802, 97, NULL, 97, TRUE),
  -- #098 Krabby
  (802, 98, NULL, 98, TRUE),
  -- #099 Kingler
  (802, 99, NULL, 99, TRUE),
  -- #100 Voltorb
  (802, 100, NULL, 100, TRUE),
  -- #101 Electrode
  (802, 101, NULL, 101, TRUE),
  -- #102 Exeggcute
  (802, 102, NULL, 102, TRUE),
  -- #103 Exeggutor
  (802, 103, NULL, 103, TRUE),
  -- #104 Cubone
  (802, 104, NULL, 104, TRUE),
  -- #105 Marowak
  (802, 105, NULL, 105, TRUE),
  -- #106 Hitmonlee
  (802, 106, NULL, 106, TRUE),
  -- #107 Hitmonchan
  (802, 107, NULL, 107, TRUE),
  -- #108 Lickitung
  (802, 108, NULL, 108, TRUE),
  -- #109 Koffing
  (802, 109, NULL, 109, TRUE),
  -- #110 Weezing
  (802, 110, NULL, 110, TRUE),
  -- #111 Rhyhorn
  (802, 111, NULL, 111, TRUE),
  -- #112 Rhydon
  (802, 112, NULL, 112, TRUE),
  -- #113 Chansey
  (802, 113, NULL, 113, TRUE),
  -- #114 Tangela
  (802, 114, NULL, 114, TRUE),
  -- #115 Kangaskhan
  (802, 115, NULL, 115, TRUE),
  -- #116 Horsea
  (802, 116, NULL, 116, TRUE),
  -- #117 Seadra
  (802, 117, NULL, 117, TRUE),
  -- #118 Goldeen
  (802, 118, NULL, 118, TRUE),
  -- #119 Seaking
  (802, 119, NULL, 119, TRUE),
  -- #120 Staryu
  (802, 120, NULL, 120, TRUE),
  -- #121 Starmie
  (802, 121, NULL, 121, TRUE),
  -- #122 Mr. Mime
  (802, 122, NULL, 122, TRUE),
  -- #123 Scyther
  (802, 123, NULL, 123, TRUE),
  -- #124 Jynx
  (802, 124, NULL, 124, TRUE),
  -- #125 Electabuzz
  (802, 125, NULL, 125, TRUE),
  -- #126 Magmar
  (802, 126, NULL, 126, TRUE),
  -- #127 Pinsir
  (802, 127, NULL, 127, TRUE),
  -- #128 Tauros
  (802, 128, NULL, 128, TRUE),
  -- #129 Magikarp
  (802, 129, NULL, 129, TRUE),
  -- #130 Gyarados
  (802, 130, NULL, 130, TRUE),
  -- #131 Lapras
  (802, 131, NULL, 131, TRUE),
  -- #132 Ditto
  (802, 132, NULL, 132, TRUE),
  -- #133 Eevee
  (802, 133, NULL, 133, TRUE),
  -- #134 Vaporeon
  (802, 134, NULL, 134, TRUE),
  -- #135 Jolteon
  (802, 135, NULL, 135, TRUE),
  -- #136 Flareon
  (802, 136, NULL, 136, TRUE),
  -- #137 Porygon
  (802, 137, NULL, 137, TRUE),
  -- #138 Omanyte
  (802, 138, NULL, 138, TRUE),
  -- #139 Omastar
  (802, 139, NULL, 139, TRUE),
  -- #140 Kabuto
  (802, 140, NULL, 140, TRUE),
  -- #141 Kabutops
  (802, 141, NULL, 141, TRUE),
  -- #142 Aerodactyl
  (802, 142, NULL, 142, TRUE),
  -- #143 Snorlax
  (802, 143, NULL, 143, TRUE),
  -- #144 Articuno
  (802, 144, NULL, 144, TRUE),
  -- #145 Zapdos
  (802, 145, NULL, 145, TRUE),
  -- #146 Moltres
  (802, 146, NULL, 146, TRUE),
  -- #147 Dratini
  (802, 147, NULL, 147, TRUE),
  -- #148 Dragonair
  (802, 148, NULL, 148, TRUE),
  -- #149 Dragonite
  (802, 149, NULL, 149, TRUE),
  -- #150 Mewtwo
  (802, 150, NULL, 150, TRUE),
  -- #151 Mew
  (802, 151, NULL, 151, FALSE),
  -- #152 Chikorita
  (802, 152, NULL, 152, TRUE),
  -- #153 Bayleef
  (802, 153, NULL, 153, TRUE),
  -- #154 Meganium
  (802, 154, NULL, 154, TRUE),
  -- #155 Cyndaquil
  (802, 155, NULL, 155, TRUE),
  -- #156 Quilava
  (802, 156, NULL, 156, TRUE),
  -- #157 Typhlosion
  (802, 157, NULL, 157, TRUE),
  -- #158 Totodile
  (802, 158, NULL, 158, TRUE),
  -- #159 Croconaw
  (802, 159, NULL, 159, TRUE),
  -- #160 Feraligatr
  (802, 160, NULL, 160, TRUE),
  -- #161 Sentret
  (802, 161, NULL, 161, TRUE),
  -- #162 Furret
  (802, 162, NULL, 162, TRUE),
  -- #163 Hoothoot
  (802, 163, NULL, 163, TRUE),
  -- #164 Noctowl
  (802, 164, NULL, 164, TRUE),
  -- #165 Ledyba
  (802, 165, NULL, 165, TRUE),
  -- #166 Ledian
  (802, 166, NULL, 166, TRUE),
  -- #167 Spinarak
  (802, 167, NULL, 167, TRUE),
  -- #168 Ariados
  (802, 168, NULL, 168, TRUE),
  -- #169 Crobat
  (802, 169, NULL, 169, TRUE),
  -- #170 Chinchou
  (802, 170, NULL, 170, TRUE),
  -- #171 Lanturn
  (802, 171, NULL, 171, TRUE),
  -- #172 Pichu
  (802, 172, NULL, 172, TRUE),
  -- #173 Cleffa
  (802, 173, NULL, 173, TRUE),
  -- #174 Igglybuff
  (802, 174, NULL, 174, TRUE),
  -- #175 Togepi
  (802, 175, NULL, 175, TRUE),
  -- #176 Togetic
  (802, 176, NULL, 176, TRUE),
  -- #177 Natu
  (802, 177, NULL, 177, TRUE),
  -- #178 Xatu
  (802, 178, NULL, 178, TRUE),
  -- #179 Mareep
  (802, 179, NULL, 179, TRUE),
  -- #180 Flaaffy
  (802, 180, NULL, 180, TRUE),
  -- #181 Ampharos
  (802, 181, NULL, 181, TRUE),
  -- #182 Bellossom
  (802, 182, NULL, 182, TRUE),
  -- #183 Marill
  (802, 183, NULL, 183, TRUE),
  -- #184 Azumarill
  (802, 184, NULL, 184, TRUE),
  -- #185 Sudowoodo
  (802, 185, NULL, 185, TRUE),
  -- #186 Politoed
  (802, 186, NULL, 186, TRUE),
  -- #187 Hoppip
  (802, 187, NULL, 187, TRUE),
  -- #188 Skiploom
  (802, 188, NULL, 188, TRUE),
  -- #189 Jumpluff
  (802, 189, NULL, 189, TRUE),
  -- #190 Aipom
  (802, 190, NULL, 190, TRUE),
  -- #191 Sunkern
  (802, 191, NULL, 191, TRUE),
  -- #192 Sunflora
  (802, 192, NULL, 192, TRUE),
  -- #193 Yanma
  (802, 193, NULL, 193, TRUE),
  -- #194 Wooper
  (802, 194, NULL, 194, TRUE),
  -- #195 Quagsire
  (802, 195, NULL, 195, TRUE),
  -- #196 Espeon
  (802, 196, NULL, 196, TRUE),
  -- #197 Umbreon
  (802, 197, NULL, 197, TRUE),
  -- #198 Murkrow
  (802, 198, NULL, 198, TRUE),
  -- #199 Slowking
  (802, 199, NULL, 199, TRUE),
  -- #200 Misdreavus
  (802, 200, NULL, 200, TRUE),
  -- #201 Unown
  (802, 201, NULL, 201, TRUE),
  -- #202 Wobbuffet
  (802, 202, NULL, 202, TRUE),
  -- #203 Girafarig
  (802, 203, NULL, 203, TRUE),
  -- #204 Pineco
  (802, 204, NULL, 204, TRUE),
  -- #205 Forretress
  (802, 205, NULL, 205, TRUE),
  -- #206 Dunsparce
  (802, 206, NULL, 206, TRUE),
  -- #207 Gligar
  (802, 207, NULL, 207, TRUE),
  -- #208 Steelix
  (802, 208, NULL, 208, TRUE),
  -- #209 Snubbull
  (802, 209, NULL, 209, TRUE),
  -- #210 Granbull
  (802, 210, NULL, 210, TRUE),
  -- #211 Qwilfish
  (802, 211, NULL, 211, TRUE),
  -- #212 Scizor
  (802, 212, NULL, 212, TRUE),
  -- #213 Shuckle
  (802, 213, NULL, 213, TRUE),
  -- #214 Heracross
  (802, 214, NULL, 214, TRUE),
  -- #215 Sneasel
  (802, 215, NULL, 215, TRUE),
  -- #216 Teddiursa
  (802, 216, NULL, 216, TRUE),
  -- #217 Ursaring
  (802, 217, NULL, 217, TRUE),
  -- #218 Slugma
  (802, 218, NULL, 218, TRUE),
  -- #219 Magcargo
  (802, 219, NULL, 219, TRUE),
  -- #220 Swinub
  (802, 220, NULL, 220, TRUE),
  -- #221 Piloswine
  (802, 221, NULL, 221, TRUE),
  -- #222 Corsola
  (802, 222, NULL, 222, TRUE),
  -- #223 Remoraid
  (802, 223, NULL, 223, TRUE),
  -- #224 Octillery
  (802, 224, NULL, 224, TRUE),
  -- #225 Delibird
  (802, 225, NULL, 225, TRUE),
  -- #226 Mantine
  (802, 226, NULL, 226, TRUE),
  -- #227 Skarmory
  (802, 227, NULL, 227, TRUE),
  -- #228 Houndour
  (802, 228, NULL, 228, TRUE),
  -- #229 Houndoom
  (802, 229, NULL, 229, TRUE),
  -- #230 Kingdra
  (802, 230, NULL, 230, TRUE),
  -- #231 Phanpy
  (802, 231, NULL, 231, TRUE),
  -- #232 Donphan
  (802, 232, NULL, 232, TRUE),
  -- #233 Porygon2
  (802, 233, NULL, 233, TRUE),
  -- #234 Stantler
  (802, 234, NULL, 234, TRUE),
  -- #235 Smeargle
  (802, 235, NULL, 235, TRUE),
  -- #236 Tyrogue
  (802, 236, NULL, 236, TRUE),
  -- #237 Hitmontop
  (802, 237, NULL, 237, TRUE),
  -- #238 Smoochum
  (802, 238, NULL, 238, TRUE),
  -- #239 Elekid
  (802, 239, NULL, 239, TRUE),
  -- #240 Magby
  (802, 240, NULL, 240, TRUE),
  -- #241 Miltank
  (802, 241, NULL, 241, TRUE),
  -- #242 Blissey
  (802, 242, NULL, 242, TRUE),
  -- #243 Raikou
  (802, 243, NULL, 243, TRUE),
  -- #244 Entei
  (802, 244, NULL, 244, TRUE),
  -- #245 Suicune
  (802, 245, NULL, 245, TRUE),
  -- #246 Larvitar
  (802, 246, NULL, 246, TRUE),
  -- #247 Pupitar
  (802, 247, NULL, 247, TRUE),
  -- #248 Tyranitar
  (802, 248, NULL, 248, TRUE),
  -- #249 Lugia
  (802, 249, NULL, 249, TRUE),
  -- #250 Ho-Oh
  (802, 250, NULL, 250, TRUE),
  -- #251 Celebi
  (802, 251, NULL, 251, FALSE),
  -- #252 Treecko
  (802, 252, NULL, 252, TRUE),
  -- #253 Grovyle
  (802, 253, NULL, 253, TRUE),
  -- #254 Sceptile
  (802, 254, NULL, 254, TRUE),
  -- #255 Torchic
  (802, 255, NULL, 255, TRUE),
  -- #256 Combusken
  (802, 256, NULL, 256, TRUE),
  -- #257 Blaziken
  (802, 257, NULL, 257, TRUE),
  -- #258 Mudkip
  (802, 258, NULL, 258, TRUE),
  -- #259 Marshtomp
  (802, 259, NULL, 259, TRUE),
  -- #260 Swampert
  (802, 260, NULL, 260, TRUE),
  -- #261 Poochyena
  (802, 261, NULL, 261, TRUE),
  -- #262 Mightyena
  (802, 262, NULL, 262, TRUE),
  -- #263 Zigzagoon
  (802, 263, NULL, 263, TRUE),
  -- #264 Linoone
  (802, 264, NULL, 264, TRUE),
  -- #265 Wurmple
  (802, 265, NULL, 265, TRUE),
  -- #266 Silcoon
  (802, 266, NULL, 266, TRUE),
  -- #267 Beautifly
  (802, 267, NULL, 267, TRUE),
  -- #268 Cascoon
  (802, 268, NULL, 268, TRUE),
  -- #269 Dustox
  (802, 269, NULL, 269, TRUE),
  -- #270 Lotad
  (802, 270, NULL, 270, TRUE),
  -- #271 Lombre
  (802, 271, NULL, 271, TRUE),
  -- #272 Ludicolo
  (802, 272, NULL, 272, TRUE),
  -- #273 Seedot
  (802, 273, NULL, 273, TRUE),
  -- #274 Nuzleaf
  (802, 274, NULL, 274, TRUE),
  -- #275 Shiftry
  (802, 275, NULL, 275, TRUE),
  -- #276 Taillow
  (802, 276, NULL, 276, TRUE),
  -- #277 Swellow
  (802, 277, NULL, 277, TRUE),
  -- #278 Wingull
  (802, 278, NULL, 278, TRUE),
  -- #279 Pelipper
  (802, 279, NULL, 279, TRUE),
  -- #280 Ralts
  (802, 280, NULL, 280, TRUE),
  -- #281 Kirlia
  (802, 281, NULL, 281, TRUE),
  -- #282 Gardevoir
  (802, 282, NULL, 282, TRUE),
  -- #283 Surskit
  (802, 283, NULL, 283, TRUE),
  -- #284 Masquerain
  (802, 284, NULL, 284, TRUE),
  -- #285 Shroomish
  (802, 285, NULL, 285, TRUE),
  -- #286 Breloom
  (802, 286, NULL, 286, TRUE),
  -- #287 Slakoth
  (802, 287, NULL, 287, TRUE),
  -- #288 Vigoroth
  (802, 288, NULL, 288, TRUE),
  -- #289 Slaking
  (802, 289, NULL, 289, TRUE),
  -- #290 Nincada
  (802, 290, NULL, 290, TRUE),
  -- #291 Ninjask
  (802, 291, NULL, 291, TRUE),
  -- #292 Shedinja
  (802, 292, NULL, 292, TRUE),
  -- #293 Whismur
  (802, 293, NULL, 293, TRUE),
  -- #294 Loudred
  (802, 294, NULL, 294, TRUE),
  -- #295 Exploud
  (802, 295, NULL, 295, TRUE),
  -- #296 Makuhita
  (802, 296, NULL, 296, TRUE),
  -- #297 Hariyama
  (802, 297, NULL, 297, TRUE),
  -- #298 Azurill
  (802, 298, NULL, 298, TRUE),
  -- #299 Nosepass
  (802, 299, NULL, 299, TRUE),
  -- #300 Skitty
  (802, 300, NULL, 300, TRUE),
  -- #301 Delcatty
  (802, 301, NULL, 301, TRUE),
  -- #302 Sableye
  (802, 302, NULL, 302, TRUE),
  -- #303 Mawile
  (802, 303, NULL, 303, TRUE),
  -- #304 Aron
  (802, 304, NULL, 304, TRUE),
  -- #305 Lairon
  (802, 305, NULL, 305, TRUE),
  -- #306 Aggron
  (802, 306, NULL, 306, TRUE),
  -- #307 Meditite
  (802, 307, NULL, 307, TRUE),
  -- #308 Medicham
  (802, 308, NULL, 308, TRUE),
  -- #309 Electrike
  (802, 309, NULL, 309, TRUE),
  -- #310 Manectric
  (802, 310, NULL, 310, TRUE),
  -- #311 Plusle
  (802, 311, NULL, 311, TRUE),
  -- #312 Minun
  (802, 312, NULL, 312, TRUE),
  -- #313 Volbeat
  (802, 313, NULL, 313, TRUE),
  -- #314 Illumise
  (802, 314, NULL, 314, TRUE),
  -- #315 Roselia
  (802, 315, NULL, 315, TRUE),
  -- #316 Gulpin
  (802, 316, NULL, 316, TRUE),
  -- #317 Swalot
  (802, 317, NULL, 317, TRUE),
  -- #318 Carvanha
  (802, 318, NULL, 318, TRUE),
  -- #319 Sharpedo
  (802, 319, NULL, 319, TRUE),
  -- #320 Wailmer
  (802, 320, NULL, 320, TRUE),
  -- #321 Wailord
  (802, 321, NULL, 321, TRUE),
  -- #322 Numel
  (802, 322, NULL, 322, TRUE),
  -- #323 Camerupt
  (802, 323, NULL, 323, TRUE),
  -- #324 Torkoal
  (802, 324, NULL, 324, TRUE),
  -- #325 Spoink
  (802, 325, NULL, 325, TRUE),
  -- #326 Grumpig
  (802, 326, NULL, 326, TRUE),
  -- #327 Spinda
  (802, 327, NULL, 327, TRUE),
  -- #328 Trapinch
  (802, 328, NULL, 328, TRUE),
  -- #329 Vibrava
  (802, 329, NULL, 329, TRUE),
  -- #330 Flygon
  (802, 330, NULL, 330, TRUE),
  -- #331 Cacnea
  (802, 331, NULL, 331, TRUE),
  -- #332 Cacturne
  (802, 332, NULL, 332, TRUE),
  -- #333 Swablu
  (802, 333, NULL, 333, TRUE),
  -- #334 Altaria
  (802, 334, NULL, 334, TRUE),
  -- #335 Zangoose
  (802, 335, NULL, 335, TRUE),
  -- #336 Seviper
  (802, 336, NULL, 336, TRUE),
  -- #337 Lunatone
  (802, 337, NULL, 337, TRUE),
  -- #338 Solrock
  (802, 338, NULL, 338, TRUE),
  -- #339 Barboach
  (802, 339, NULL, 339, TRUE),
  -- #340 Whiscash
  (802, 340, NULL, 340, TRUE),
  -- #341 Corphish
  (802, 341, NULL, 341, TRUE),
  -- #342 Crawdaunt
  (802, 342, NULL, 342, TRUE),
  -- #343 Baltoy
  (802, 343, NULL, 343, TRUE),
  -- #344 Claydol
  (802, 344, NULL, 344, TRUE),
  -- #345 Lileep
  (802, 345, NULL, 345, TRUE),
  -- #346 Cradily
  (802, 346, NULL, 346, TRUE),
  -- #347 Anorith
  (802, 347, NULL, 347, TRUE),
  -- #348 Armaldo
  (802, 348, NULL, 348, TRUE),
  -- #349 Feebas
  (802, 349, NULL, 349, TRUE),
  -- #350 Milotic
  (802, 350, NULL, 350, TRUE),
  -- #351 Castform
  (802, 351, NULL, 351, TRUE),
  -- #352 Kecleon
  (802, 352, NULL, 352, TRUE),
  -- #353 Shuppet
  (802, 353, NULL, 353, TRUE),
  -- #354 Banette
  (802, 354, NULL, 354, TRUE),
  -- #355 Duskull
  (802, 355, NULL, 355, TRUE),
  -- #356 Dusclops
  (802, 356, NULL, 356, TRUE),
  -- #357 Tropius
  (802, 357, NULL, 357, TRUE),
  -- #358 Chimecho
  (802, 358, NULL, 358, TRUE),
  -- #359 Absol
  (802, 359, NULL, 359, TRUE),
  -- #360 Wynaut
  (802, 360, NULL, 360, TRUE),
  -- #361 Snorunt
  (802, 361, NULL, 361, TRUE),
  -- #362 Glalie
  (802, 362, NULL, 362, TRUE),
  -- #363 Spheal
  (802, 363, NULL, 363, TRUE),
  -- #364 Sealeo
  (802, 364, NULL, 364, TRUE),
  -- #365 Walrein
  (802, 365, NULL, 365, TRUE),
  -- #366 Clamperl
  (802, 366, NULL, 366, TRUE),
  -- #367 Huntail
  (802, 367, NULL, 367, TRUE),
  -- #368 Gorebyss
  (802, 368, NULL, 368, TRUE),
  -- #369 Relicanth
  (802, 369, NULL, 369, TRUE),
  -- #370 Luvdisc
  (802, 370, NULL, 370, TRUE),
  -- #371 Bagon
  (802, 371, NULL, 371, TRUE),
  -- #372 Shelgon
  (802, 372, NULL, 372, TRUE),
  -- #373 Salamence
  (802, 373, NULL, 373, TRUE),
  -- #374 Beldum
  (802, 374, NULL, 374, TRUE),
  -- #375 Metang
  (802, 375, NULL, 375, TRUE),
  -- #376 Metagross
  (802, 376, NULL, 376, TRUE),
  -- #377 Regirock
  (802, 377, NULL, 377, TRUE),
  -- #378 Regice
  (802, 378, NULL, 378, TRUE),
  -- #379 Registeel
  (802, 379, NULL, 379, TRUE),
  -- #380 Latias
  (802, 380, NULL, 380, TRUE),
  -- #381 Latios
  (802, 381, NULL, 381, TRUE),
  -- #382 Kyogre
  (802, 382, NULL, 382, TRUE),
  -- #383 Groudon
  (802, 383, NULL, 383, TRUE),
  -- #384 Rayquaza
  (802, 384, NULL, 384, TRUE),
  -- #385 Jirachi
  (802, 385, NULL, 385, FALSE),
  -- #386 Deoxys
  (802, 386, NULL, 386, FALSE),
  -- #387 Turtwig
  (802, 387, NULL, 387, TRUE),
  -- #388 Grotle
  (802, 388, NULL, 388, TRUE),
  -- #389 Torterra
  (802, 389, NULL, 389, TRUE),
  -- #390 Chimchar
  (802, 390, NULL, 390, TRUE),
  -- #391 Monferno
  (802, 391, NULL, 391, TRUE),
  -- #392 Infernape
  (802, 392, NULL, 392, TRUE),
  -- #393 Piplup
  (802, 393, NULL, 393, TRUE),
  -- #394 Prinplup
  (802, 394, NULL, 394, TRUE),
  -- #395 Empoleon
  (802, 395, NULL, 395, TRUE),
  -- #396 Starly
  (802, 396, NULL, 396, TRUE),
  -- #397 Staravia
  (802, 397, NULL, 397, TRUE),
  -- #398 Staraptor
  (802, 398, NULL, 398, TRUE),
  -- #399 Bidoof
  (802, 399, NULL, 399, TRUE),
  -- #400 Bibarel
  (802, 400, NULL, 400, TRUE),
  -- #401 Kricketot
  (802, 401, NULL, 401, TRUE),
  -- #402 Kricketune
  (802, 402, NULL, 402, TRUE),
  -- #403 Shinx
  (802, 403, NULL, 403, TRUE),
  -- #404 Luxio
  (802, 404, NULL, 404, TRUE),
  -- #405 Luxray
  (802, 405, NULL, 405, TRUE),
  -- #406 Budew
  (802, 406, NULL, 406, TRUE),
  -- #407 Roserade
  (802, 407, NULL, 407, TRUE),
  -- #408 Cranidos
  (802, 408, NULL, 408, TRUE),
  -- #409 Rampardos
  (802, 409, NULL, 409, TRUE),
  -- #410 Shieldon
  (802, 410, NULL, 410, TRUE),
  -- #411 Bastiodon
  (802, 411, NULL, 411, TRUE),
  -- #412 Burmy
  (802, 412, NULL, 412, TRUE),
  -- #413 Wormadam
  (802, 413, NULL, 413, TRUE),
  -- #414 Mothim
  (802, 414, NULL, 414, TRUE),
  -- #415 Combee
  (802, 415, NULL, 415, TRUE),
  -- #416 Vespiquen
  (802, 416, NULL, 416, TRUE),
  -- #417 Pachirisu
  (802, 417, NULL, 417, TRUE),
  -- #418 Buizel
  (802, 418, NULL, 418, TRUE),
  -- #419 Floatzel
  (802, 419, NULL, 419, TRUE),
  -- #420 Cherubi
  (802, 420, NULL, 420, TRUE),
  -- #421 Cherrim
  (802, 421, NULL, 421, TRUE),
  -- #422 Shellos
  (802, 422, NULL, 422, TRUE),
  -- #423 Gastrodon
  (802, 423, NULL, 423, TRUE),
  -- #424 Ambipom
  (802, 424, NULL, 424, TRUE),
  -- #425 Drifloon
  (802, 425, NULL, 425, TRUE),
  -- #426 Drifblim
  (802, 426, NULL, 426, TRUE),
  -- #427 Buneary
  (802, 427, NULL, 427, TRUE),
  -- #428 Lopunny
  (802, 428, NULL, 428, TRUE),
  -- #429 Mismagius
  (802, 429, NULL, 429, TRUE),
  -- #430 Honchkrow
  (802, 430, NULL, 430, TRUE),
  -- #431 Glameow
  (802, 431, NULL, 431, TRUE),
  -- #432 Purugly
  (802, 432, NULL, 432, TRUE),
  -- #433 Chingling
  (802, 433, NULL, 433, TRUE),
  -- #434 Stunky
  (802, 434, NULL, 434, TRUE),
  -- #435 Skuntank
  (802, 435, NULL, 435, TRUE),
  -- #436 Bronzor
  (802, 436, NULL, 436, TRUE),
  -- #437 Bronzong
  (802, 437, NULL, 437, TRUE),
  -- #438 Bonsly
  (802, 438, NULL, 438, TRUE),
  -- #439 Mime Jr.
  (802, 439, NULL, 439, TRUE),
  -- #440 Happiny
  (802, 440, NULL, 440, TRUE),
  -- #441 Chatot
  (802, 441, NULL, 441, TRUE),
  -- #442 Spiritomb
  (802, 442, NULL, 442, TRUE),
  -- #443 Gible
  (802, 443, NULL, 443, TRUE),
  -- #444 Gabite
  (802, 444, NULL, 444, TRUE),
  -- #445 Garchomp
  (802, 445, NULL, 445, TRUE),
  -- #446 Munchlax
  (802, 446, NULL, 446, TRUE),
  -- #447 Riolu
  (802, 447, NULL, 447, TRUE),
  -- #448 Lucario
  (802, 448, NULL, 448, TRUE),
  -- #449 Hippopotas
  (802, 449, NULL, 449, TRUE),
  -- #450 Hippowdon
  (802, 450, NULL, 450, TRUE),
  -- #451 Skorupi
  (802, 451, NULL, 451, TRUE),
  -- #452 Drapion
  (802, 452, NULL, 452, TRUE),
  -- #453 Croagunk
  (802, 453, NULL, 453, TRUE),
  -- #454 Toxicroak
  (802, 454, NULL, 454, TRUE),
  -- #455 Carnivine
  (802, 455, NULL, 455, TRUE),
  -- #456 Finneon
  (802, 456, NULL, 456, TRUE),
  -- #457 Lumineon
  (802, 457, NULL, 457, TRUE),
  -- #458 Mantyke
  (802, 458, NULL, 458, TRUE),
  -- #459 Snover
  (802, 459, NULL, 459, TRUE),
  -- #460 Abomasnow
  (802, 460, NULL, 460, TRUE),
  -- #461 Weavile
  (802, 461, NULL, 461, TRUE),
  -- #462 Magnezone
  (802, 462, NULL, 462, TRUE),
  -- #463 Lickilicky
  (802, 463, NULL, 463, TRUE),
  -- #464 Rhyperior
  (802, 464, NULL, 464, TRUE),
  -- #465 Tangrowth
  (802, 465, NULL, 465, TRUE),
  -- #466 Electivire
  (802, 466, NULL, 466, TRUE),
  -- #467 Magmortar
  (802, 467, NULL, 467, TRUE),
  -- #468 Togekiss
  (802, 468, NULL, 468, TRUE),
  -- #469 Yanmega
  (802, 469, NULL, 469, TRUE),
  -- #470 Leafeon
  (802, 470, NULL, 470, TRUE),
  -- #471 Glaceon
  (802, 471, NULL, 471, TRUE),
  -- #472 Gliscor
  (802, 472, NULL, 472, TRUE),
  -- #473 Mamoswine
  (802, 473, NULL, 473, TRUE),
  -- #474 Porygon-Z
  (802, 474, NULL, 474, TRUE),
  -- #475 Gallade
  (802, 475, NULL, 475, TRUE),
  -- #476 Probopass
  (802, 476, NULL, 476, TRUE),
  -- #477 Dusknoir
  (802, 477, NULL, 477, TRUE),
  -- #478 Froslass
  (802, 478, NULL, 478, TRUE),
  -- #479 Rotom
  (802, 479, NULL, 479, TRUE),
  -- #480 Uxie
  (802, 480, NULL, 480, TRUE),
  -- #481 Mesprit
  (802, 481, NULL, 481, TRUE),
  -- #482 Azelf
  (802, 482, NULL, 482, TRUE),
  -- #483 Dialga
  (802, 483, NULL, 483, TRUE),
  -- #484 Palkia
  (802, 484, NULL, 484, TRUE),
  -- #485 Heatran
  (802, 485, NULL, 485, TRUE),
  -- #486 Regigigas
  (802, 486, NULL, 486, TRUE),
  -- #487 Giratina
  (802, 487, NULL, 487, TRUE),
  -- #488 Cresselia
  (802, 488, NULL, 488, TRUE),
  -- #489 Phione
  (802, 489, NULL, 489, FALSE),
  -- #490 Manaphy
  (802, 490, NULL, 490, FALSE),
  -- #491 Darkrai
  (802, 491, NULL, 491, FALSE),
  -- #492 Shaymin
  (802, 492, NULL, 492, FALSE),
  -- #493 Arceus
  (802, 493, NULL, 493, FALSE);
