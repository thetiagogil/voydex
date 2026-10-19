-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by National Pokedex number.
-- Cross-check: Bulbapedia National Pokedex page, Serebii National Pokedex, and PokemonDB National Pokedex.
-- ============================================================================
-- File Scope
-- ============================================================================
-- National Pokedex entries for Platinum.
-- National Pokedex contains 493 species for this version group; Mythical species are source-visible but not required for default completion.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Bulbasaur
  (902, 1, NULL, 1, TRUE),
  -- #002 Ivysaur
  (902, 2, NULL, 2, TRUE),
  -- #003 Venusaur
  (902, 3, NULL, 3, TRUE),
  -- #004 Charmander
  (902, 4, NULL, 4, TRUE),
  -- #005 Charmeleon
  (902, 5, NULL, 5, TRUE),
  -- #006 Charizard
  (902, 6, NULL, 6, TRUE),
  -- #007 Squirtle
  (902, 7, NULL, 7, TRUE),
  -- #008 Wartortle
  (902, 8, NULL, 8, TRUE),
  -- #009 Blastoise
  (902, 9, NULL, 9, TRUE),
  -- #010 Caterpie
  (902, 10, NULL, 10, TRUE),
  -- #011 Metapod
  (902, 11, NULL, 11, TRUE),
  -- #012 Butterfree
  (902, 12, NULL, 12, TRUE),
  -- #013 Weedle
  (902, 13, NULL, 13, TRUE),
  -- #014 Kakuna
  (902, 14, NULL, 14, TRUE),
  -- #015 Beedrill
  (902, 15, NULL, 15, TRUE),
  -- #016 Pidgey
  (902, 16, NULL, 16, TRUE),
  -- #017 Pidgeotto
  (902, 17, NULL, 17, TRUE),
  -- #018 Pidgeot
  (902, 18, NULL, 18, TRUE),
  -- #019 Rattata
  (902, 19, NULL, 19, TRUE),
  -- #020 Raticate
  (902, 20, NULL, 20, TRUE),
  -- #021 Spearow
  (902, 21, NULL, 21, TRUE),
  -- #022 Fearow
  (902, 22, NULL, 22, TRUE),
  -- #023 Ekans
  (902, 23, NULL, 23, TRUE),
  -- #024 Arbok
  (902, 24, NULL, 24, TRUE),
  -- #025 Pikachu
  (902, 25, NULL, 25, TRUE),
  -- #026 Raichu
  (902, 26, NULL, 26, TRUE),
  -- #027 Sandshrew
  (902, 27, NULL, 27, TRUE),
  -- #028 Sandslash
  (902, 28, NULL, 28, TRUE),
  -- #029 Nidoran F
  (902, 29, NULL, 29, TRUE),
  -- #030 Nidorina
  (902, 30, NULL, 30, TRUE),
  -- #031 Nidoqueen
  (902, 31, NULL, 31, TRUE),
  -- #032 Nidoran M
  (902, 32, NULL, 32, TRUE),
  -- #033 Nidorino
  (902, 33, NULL, 33, TRUE),
  -- #034 Nidoking
  (902, 34, NULL, 34, TRUE),
  -- #035 Clefairy
  (902, 35, NULL, 35, TRUE),
  -- #036 Clefable
  (902, 36, NULL, 36, TRUE),
  -- #037 Vulpix
  (902, 37, NULL, 37, TRUE),
  -- #038 Ninetales
  (902, 38, NULL, 38, TRUE),
  -- #039 Jigglypuff
  (902, 39, NULL, 39, TRUE),
  -- #040 Wigglytuff
  (902, 40, NULL, 40, TRUE),
  -- #041 Zubat
  (902, 41, NULL, 41, TRUE),
  -- #042 Golbat
  (902, 42, NULL, 42, TRUE),
  -- #043 Oddish
  (902, 43, NULL, 43, TRUE),
  -- #044 Gloom
  (902, 44, NULL, 44, TRUE),
  -- #045 Vileplume
  (902, 45, NULL, 45, TRUE),
  -- #046 Paras
  (902, 46, NULL, 46, TRUE),
  -- #047 Parasect
  (902, 47, NULL, 47, TRUE),
  -- #048 Venonat
  (902, 48, NULL, 48, TRUE),
  -- #049 Venomoth
  (902, 49, NULL, 49, TRUE),
  -- #050 Diglett
  (902, 50, NULL, 50, TRUE),
  -- #051 Dugtrio
  (902, 51, NULL, 51, TRUE),
  -- #052 Meowth
  (902, 52, NULL, 52, TRUE),
  -- #053 Persian
  (902, 53, NULL, 53, TRUE),
  -- #054 Psyduck
  (902, 54, NULL, 54, TRUE),
  -- #055 Golduck
  (902, 55, NULL, 55, TRUE),
  -- #056 Mankey
  (902, 56, NULL, 56, TRUE),
  -- #057 Primeape
  (902, 57, NULL, 57, TRUE),
  -- #058 Growlithe
  (902, 58, NULL, 58, TRUE),
  -- #059 Arcanine
  (902, 59, NULL, 59, TRUE),
  -- #060 Poliwag
  (902, 60, NULL, 60, TRUE),
  -- #061 Poliwhirl
  (902, 61, NULL, 61, TRUE),
  -- #062 Poliwrath
  (902, 62, NULL, 62, TRUE),
  -- #063 Abra
  (902, 63, NULL, 63, TRUE),
  -- #064 Kadabra
  (902, 64, NULL, 64, TRUE),
  -- #065 Alakazam
  (902, 65, NULL, 65, TRUE),
  -- #066 Machop
  (902, 66, NULL, 66, TRUE),
  -- #067 Machoke
  (902, 67, NULL, 67, TRUE),
  -- #068 Machamp
  (902, 68, NULL, 68, TRUE),
  -- #069 Bellsprout
  (902, 69, NULL, 69, TRUE),
  -- #070 Weepinbell
  (902, 70, NULL, 70, TRUE),
  -- #071 Victreebel
  (902, 71, NULL, 71, TRUE),
  -- #072 Tentacool
  (902, 72, NULL, 72, TRUE),
  -- #073 Tentacruel
  (902, 73, NULL, 73, TRUE),
  -- #074 Geodude
  (902, 74, NULL, 74, TRUE),
  -- #075 Graveler
  (902, 75, NULL, 75, TRUE),
  -- #076 Golem
  (902, 76, NULL, 76, TRUE),
  -- #077 Ponyta
  (902, 77, NULL, 77, TRUE),
  -- #078 Rapidash
  (902, 78, NULL, 78, TRUE),
  -- #079 Slowpoke
  (902, 79, NULL, 79, TRUE),
  -- #080 Slowbro
  (902, 80, NULL, 80, TRUE),
  -- #081 Magnemite
  (902, 81, NULL, 81, TRUE),
  -- #082 Magneton
  (902, 82, NULL, 82, TRUE),
  -- #083 Farfetch'd
  (902, 83, NULL, 83, TRUE),
  -- #084 Doduo
  (902, 84, NULL, 84, TRUE),
  -- #085 Dodrio
  (902, 85, NULL, 85, TRUE),
  -- #086 Seel
  (902, 86, NULL, 86, TRUE),
  -- #087 Dewgong
  (902, 87, NULL, 87, TRUE),
  -- #088 Grimer
  (902, 88, NULL, 88, TRUE),
  -- #089 Muk
  (902, 89, NULL, 89, TRUE),
  -- #090 Shellder
  (902, 90, NULL, 90, TRUE),
  -- #091 Cloyster
  (902, 91, NULL, 91, TRUE),
  -- #092 Gastly
  (902, 92, NULL, 92, TRUE),
  -- #093 Haunter
  (902, 93, NULL, 93, TRUE),
  -- #094 Gengar
  (902, 94, NULL, 94, TRUE),
  -- #095 Onix
  (902, 95, NULL, 95, TRUE),
  -- #096 Drowzee
  (902, 96, NULL, 96, TRUE),
  -- #097 Hypno
  (902, 97, NULL, 97, TRUE),
  -- #098 Krabby
  (902, 98, NULL, 98, TRUE),
  -- #099 Kingler
  (902, 99, NULL, 99, TRUE),
  -- #100 Voltorb
  (902, 100, NULL, 100, TRUE),
  -- #101 Electrode
  (902, 101, NULL, 101, TRUE),
  -- #102 Exeggcute
  (902, 102, NULL, 102, TRUE),
  -- #103 Exeggutor
  (902, 103, NULL, 103, TRUE),
  -- #104 Cubone
  (902, 104, NULL, 104, TRUE),
  -- #105 Marowak
  (902, 105, NULL, 105, TRUE),
  -- #106 Hitmonlee
  (902, 106, NULL, 106, TRUE),
  -- #107 Hitmonchan
  (902, 107, NULL, 107, TRUE),
  -- #108 Lickitung
  (902, 108, NULL, 108, TRUE),
  -- #109 Koffing
  (902, 109, NULL, 109, TRUE),
  -- #110 Weezing
  (902, 110, NULL, 110, TRUE),
  -- #111 Rhyhorn
  (902, 111, NULL, 111, TRUE),
  -- #112 Rhydon
  (902, 112, NULL, 112, TRUE),
  -- #113 Chansey
  (902, 113, NULL, 113, TRUE),
  -- #114 Tangela
  (902, 114, NULL, 114, TRUE),
  -- #115 Kangaskhan
  (902, 115, NULL, 115, TRUE),
  -- #116 Horsea
  (902, 116, NULL, 116, TRUE),
  -- #117 Seadra
  (902, 117, NULL, 117, TRUE),
  -- #118 Goldeen
  (902, 118, NULL, 118, TRUE),
  -- #119 Seaking
  (902, 119, NULL, 119, TRUE),
  -- #120 Staryu
  (902, 120, NULL, 120, TRUE),
  -- #121 Starmie
  (902, 121, NULL, 121, TRUE),
  -- #122 Mr. Mime
  (902, 122, NULL, 122, TRUE),
  -- #123 Scyther
  (902, 123, NULL, 123, TRUE),
  -- #124 Jynx
  (902, 124, NULL, 124, TRUE),
  -- #125 Electabuzz
  (902, 125, NULL, 125, TRUE),
  -- #126 Magmar
  (902, 126, NULL, 126, TRUE),
  -- #127 Pinsir
  (902, 127, NULL, 127, TRUE),
  -- #128 Tauros
  (902, 128, NULL, 128, TRUE),
  -- #129 Magikarp
  (902, 129, NULL, 129, TRUE),
  -- #130 Gyarados
  (902, 130, NULL, 130, TRUE),
  -- #131 Lapras
  (902, 131, NULL, 131, TRUE),
  -- #132 Ditto
  (902, 132, NULL, 132, TRUE),
  -- #133 Eevee
  (902, 133, NULL, 133, TRUE),
  -- #134 Vaporeon
  (902, 134, NULL, 134, TRUE),
  -- #135 Jolteon
  (902, 135, NULL, 135, TRUE),
  -- #136 Flareon
  (902, 136, NULL, 136, TRUE),
  -- #137 Porygon
  (902, 137, NULL, 137, TRUE),
  -- #138 Omanyte
  (902, 138, NULL, 138, TRUE),
  -- #139 Omastar
  (902, 139, NULL, 139, TRUE),
  -- #140 Kabuto
  (902, 140, NULL, 140, TRUE),
  -- #141 Kabutops
  (902, 141, NULL, 141, TRUE),
  -- #142 Aerodactyl
  (902, 142, NULL, 142, TRUE),
  -- #143 Snorlax
  (902, 143, NULL, 143, TRUE),
  -- #144 Articuno
  (902, 144, NULL, 144, TRUE),
  -- #145 Zapdos
  (902, 145, NULL, 145, TRUE),
  -- #146 Moltres
  (902, 146, NULL, 146, TRUE),
  -- #147 Dratini
  (902, 147, NULL, 147, TRUE),
  -- #148 Dragonair
  (902, 148, NULL, 148, TRUE),
  -- #149 Dragonite
  (902, 149, NULL, 149, TRUE),
  -- #150 Mewtwo
  (902, 150, NULL, 150, TRUE),
  -- #151 Mew
  (902, 151, NULL, 151, FALSE),
  -- #152 Chikorita
  (902, 152, NULL, 152, TRUE),
  -- #153 Bayleef
  (902, 153, NULL, 153, TRUE),
  -- #154 Meganium
  (902, 154, NULL, 154, TRUE),
  -- #155 Cyndaquil
  (902, 155, NULL, 155, TRUE),
  -- #156 Quilava
  (902, 156, NULL, 156, TRUE),
  -- #157 Typhlosion
  (902, 157, NULL, 157, TRUE),
  -- #158 Totodile
  (902, 158, NULL, 158, TRUE),
  -- #159 Croconaw
  (902, 159, NULL, 159, TRUE),
  -- #160 Feraligatr
  (902, 160, NULL, 160, TRUE),
  -- #161 Sentret
  (902, 161, NULL, 161, TRUE),
  -- #162 Furret
  (902, 162, NULL, 162, TRUE),
  -- #163 Hoothoot
  (902, 163, NULL, 163, TRUE),
  -- #164 Noctowl
  (902, 164, NULL, 164, TRUE),
  -- #165 Ledyba
  (902, 165, NULL, 165, TRUE),
  -- #166 Ledian
  (902, 166, NULL, 166, TRUE),
  -- #167 Spinarak
  (902, 167, NULL, 167, TRUE),
  -- #168 Ariados
  (902, 168, NULL, 168, TRUE),
  -- #169 Crobat
  (902, 169, NULL, 169, TRUE),
  -- #170 Chinchou
  (902, 170, NULL, 170, TRUE),
  -- #171 Lanturn
  (902, 171, NULL, 171, TRUE),
  -- #172 Pichu
  (902, 172, NULL, 172, TRUE),
  -- #173 Cleffa
  (902, 173, NULL, 173, TRUE),
  -- #174 Igglybuff
  (902, 174, NULL, 174, TRUE),
  -- #175 Togepi
  (902, 175, NULL, 175, TRUE),
  -- #176 Togetic
  (902, 176, NULL, 176, TRUE),
  -- #177 Natu
  (902, 177, NULL, 177, TRUE),
  -- #178 Xatu
  (902, 178, NULL, 178, TRUE),
  -- #179 Mareep
  (902, 179, NULL, 179, TRUE),
  -- #180 Flaaffy
  (902, 180, NULL, 180, TRUE),
  -- #181 Ampharos
  (902, 181, NULL, 181, TRUE),
  -- #182 Bellossom
  (902, 182, NULL, 182, TRUE),
  -- #183 Marill
  (902, 183, NULL, 183, TRUE),
  -- #184 Azumarill
  (902, 184, NULL, 184, TRUE),
  -- #185 Sudowoodo
  (902, 185, NULL, 185, TRUE),
  -- #186 Politoed
  (902, 186, NULL, 186, TRUE),
  -- #187 Hoppip
  (902, 187, NULL, 187, TRUE),
  -- #188 Skiploom
  (902, 188, NULL, 188, TRUE),
  -- #189 Jumpluff
  (902, 189, NULL, 189, TRUE),
  -- #190 Aipom
  (902, 190, NULL, 190, TRUE),
  -- #191 Sunkern
  (902, 191, NULL, 191, TRUE),
  -- #192 Sunflora
  (902, 192, NULL, 192, TRUE),
  -- #193 Yanma
  (902, 193, NULL, 193, TRUE),
  -- #194 Wooper
  (902, 194, NULL, 194, TRUE),
  -- #195 Quagsire
  (902, 195, NULL, 195, TRUE),
  -- #196 Espeon
  (902, 196, NULL, 196, TRUE),
  -- #197 Umbreon
  (902, 197, NULL, 197, TRUE),
  -- #198 Murkrow
  (902, 198, NULL, 198, TRUE),
  -- #199 Slowking
  (902, 199, NULL, 199, TRUE),
  -- #200 Misdreavus
  (902, 200, NULL, 200, TRUE),
  -- #201 Unown
  (902, 201, NULL, 201, TRUE),
  -- #202 Wobbuffet
  (902, 202, NULL, 202, TRUE),
  -- #203 Girafarig
  (902, 203, NULL, 203, TRUE),
  -- #204 Pineco
  (902, 204, NULL, 204, TRUE),
  -- #205 Forretress
  (902, 205, NULL, 205, TRUE),
  -- #206 Dunsparce
  (902, 206, NULL, 206, TRUE),
  -- #207 Gligar
  (902, 207, NULL, 207, TRUE),
  -- #208 Steelix
  (902, 208, NULL, 208, TRUE),
  -- #209 Snubbull
  (902, 209, NULL, 209, TRUE),
  -- #210 Granbull
  (902, 210, NULL, 210, TRUE),
  -- #211 Qwilfish
  (902, 211, NULL, 211, TRUE),
  -- #212 Scizor
  (902, 212, NULL, 212, TRUE),
  -- #213 Shuckle
  (902, 213, NULL, 213, TRUE),
  -- #214 Heracross
  (902, 214, NULL, 214, TRUE),
  -- #215 Sneasel
  (902, 215, NULL, 215, TRUE),
  -- #216 Teddiursa
  (902, 216, NULL, 216, TRUE),
  -- #217 Ursaring
  (902, 217, NULL, 217, TRUE),
  -- #218 Slugma
  (902, 218, NULL, 218, TRUE),
  -- #219 Magcargo
  (902, 219, NULL, 219, TRUE),
  -- #220 Swinub
  (902, 220, NULL, 220, TRUE),
  -- #221 Piloswine
  (902, 221, NULL, 221, TRUE),
  -- #222 Corsola
  (902, 222, NULL, 222, TRUE),
  -- #223 Remoraid
  (902, 223, NULL, 223, TRUE),
  -- #224 Octillery
  (902, 224, NULL, 224, TRUE),
  -- #225 Delibird
  (902, 225, NULL, 225, TRUE),
  -- #226 Mantine
  (902, 226, NULL, 226, TRUE),
  -- #227 Skarmory
  (902, 227, NULL, 227, TRUE),
  -- #228 Houndour
  (902, 228, NULL, 228, TRUE),
  -- #229 Houndoom
  (902, 229, NULL, 229, TRUE),
  -- #230 Kingdra
  (902, 230, NULL, 230, TRUE),
  -- #231 Phanpy
  (902, 231, NULL, 231, TRUE),
  -- #232 Donphan
  (902, 232, NULL, 232, TRUE),
  -- #233 Porygon2
  (902, 233, NULL, 233, TRUE),
  -- #234 Stantler
  (902, 234, NULL, 234, TRUE),
  -- #235 Smeargle
  (902, 235, NULL, 235, TRUE),
  -- #236 Tyrogue
  (902, 236, NULL, 236, TRUE),
  -- #237 Hitmontop
  (902, 237, NULL, 237, TRUE),
  -- #238 Smoochum
  (902, 238, NULL, 238, TRUE),
  -- #239 Elekid
  (902, 239, NULL, 239, TRUE),
  -- #240 Magby
  (902, 240, NULL, 240, TRUE),
  -- #241 Miltank
  (902, 241, NULL, 241, TRUE),
  -- #242 Blissey
  (902, 242, NULL, 242, TRUE),
  -- #243 Raikou
  (902, 243, NULL, 243, TRUE),
  -- #244 Entei
  (902, 244, NULL, 244, TRUE),
  -- #245 Suicune
  (902, 245, NULL, 245, TRUE),
  -- #246 Larvitar
  (902, 246, NULL, 246, TRUE),
  -- #247 Pupitar
  (902, 247, NULL, 247, TRUE),
  -- #248 Tyranitar
  (902, 248, NULL, 248, TRUE),
  -- #249 Lugia
  (902, 249, NULL, 249, TRUE),
  -- #250 Ho-Oh
  (902, 250, NULL, 250, TRUE),
  -- #251 Celebi
  (902, 251, NULL, 251, FALSE),
  -- #252 Treecko
  (902, 252, NULL, 252, TRUE),
  -- #253 Grovyle
  (902, 253, NULL, 253, TRUE),
  -- #254 Sceptile
  (902, 254, NULL, 254, TRUE),
  -- #255 Torchic
  (902, 255, NULL, 255, TRUE),
  -- #256 Combusken
  (902, 256, NULL, 256, TRUE),
  -- #257 Blaziken
  (902, 257, NULL, 257, TRUE),
  -- #258 Mudkip
  (902, 258, NULL, 258, TRUE),
  -- #259 Marshtomp
  (902, 259, NULL, 259, TRUE),
  -- #260 Swampert
  (902, 260, NULL, 260, TRUE),
  -- #261 Poochyena
  (902, 261, NULL, 261, TRUE),
  -- #262 Mightyena
  (902, 262, NULL, 262, TRUE),
  -- #263 Zigzagoon
  (902, 263, NULL, 263, TRUE),
  -- #264 Linoone
  (902, 264, NULL, 264, TRUE),
  -- #265 Wurmple
  (902, 265, NULL, 265, TRUE),
  -- #266 Silcoon
  (902, 266, NULL, 266, TRUE),
  -- #267 Beautifly
  (902, 267, NULL, 267, TRUE),
  -- #268 Cascoon
  (902, 268, NULL, 268, TRUE),
  -- #269 Dustox
  (902, 269, NULL, 269, TRUE),
  -- #270 Lotad
  (902, 270, NULL, 270, TRUE),
  -- #271 Lombre
  (902, 271, NULL, 271, TRUE),
  -- #272 Ludicolo
  (902, 272, NULL, 272, TRUE),
  -- #273 Seedot
  (902, 273, NULL, 273, TRUE),
  -- #274 Nuzleaf
  (902, 274, NULL, 274, TRUE),
  -- #275 Shiftry
  (902, 275, NULL, 275, TRUE),
  -- #276 Taillow
  (902, 276, NULL, 276, TRUE),
  -- #277 Swellow
  (902, 277, NULL, 277, TRUE),
  -- #278 Wingull
  (902, 278, NULL, 278, TRUE),
  -- #279 Pelipper
  (902, 279, NULL, 279, TRUE),
  -- #280 Ralts
  (902, 280, NULL, 280, TRUE),
  -- #281 Kirlia
  (902, 281, NULL, 281, TRUE),
  -- #282 Gardevoir
  (902, 282, NULL, 282, TRUE),
  -- #283 Surskit
  (902, 283, NULL, 283, TRUE),
  -- #284 Masquerain
  (902, 284, NULL, 284, TRUE),
  -- #285 Shroomish
  (902, 285, NULL, 285, TRUE),
  -- #286 Breloom
  (902, 286, NULL, 286, TRUE),
  -- #287 Slakoth
  (902, 287, NULL, 287, TRUE),
  -- #288 Vigoroth
  (902, 288, NULL, 288, TRUE),
  -- #289 Slaking
  (902, 289, NULL, 289, TRUE),
  -- #290 Nincada
  (902, 290, NULL, 290, TRUE),
  -- #291 Ninjask
  (902, 291, NULL, 291, TRUE),
  -- #292 Shedinja
  (902, 292, NULL, 292, TRUE),
  -- #293 Whismur
  (902, 293, NULL, 293, TRUE),
  -- #294 Loudred
  (902, 294, NULL, 294, TRUE),
  -- #295 Exploud
  (902, 295, NULL, 295, TRUE),
  -- #296 Makuhita
  (902, 296, NULL, 296, TRUE),
  -- #297 Hariyama
  (902, 297, NULL, 297, TRUE),
  -- #298 Azurill
  (902, 298, NULL, 298, TRUE),
  -- #299 Nosepass
  (902, 299, NULL, 299, TRUE),
  -- #300 Skitty
  (902, 300, NULL, 300, TRUE),
  -- #301 Delcatty
  (902, 301, NULL, 301, TRUE),
  -- #302 Sableye
  (902, 302, NULL, 302, TRUE),
  -- #303 Mawile
  (902, 303, NULL, 303, TRUE),
  -- #304 Aron
  (902, 304, NULL, 304, TRUE),
  -- #305 Lairon
  (902, 305, NULL, 305, TRUE),
  -- #306 Aggron
  (902, 306, NULL, 306, TRUE),
  -- #307 Meditite
  (902, 307, NULL, 307, TRUE),
  -- #308 Medicham
  (902, 308, NULL, 308, TRUE),
  -- #309 Electrike
  (902, 309, NULL, 309, TRUE),
  -- #310 Manectric
  (902, 310, NULL, 310, TRUE),
  -- #311 Plusle
  (902, 311, NULL, 311, TRUE),
  -- #312 Minun
  (902, 312, NULL, 312, TRUE),
  -- #313 Volbeat
  (902, 313, NULL, 313, TRUE),
  -- #314 Illumise
  (902, 314, NULL, 314, TRUE),
  -- #315 Roselia
  (902, 315, NULL, 315, TRUE),
  -- #316 Gulpin
  (902, 316, NULL, 316, TRUE),
  -- #317 Swalot
  (902, 317, NULL, 317, TRUE),
  -- #318 Carvanha
  (902, 318, NULL, 318, TRUE),
  -- #319 Sharpedo
  (902, 319, NULL, 319, TRUE),
  -- #320 Wailmer
  (902, 320, NULL, 320, TRUE),
  -- #321 Wailord
  (902, 321, NULL, 321, TRUE),
  -- #322 Numel
  (902, 322, NULL, 322, TRUE),
  -- #323 Camerupt
  (902, 323, NULL, 323, TRUE),
  -- #324 Torkoal
  (902, 324, NULL, 324, TRUE),
  -- #325 Spoink
  (902, 325, NULL, 325, TRUE),
  -- #326 Grumpig
  (902, 326, NULL, 326, TRUE),
  -- #327 Spinda
  (902, 327, NULL, 327, TRUE),
  -- #328 Trapinch
  (902, 328, NULL, 328, TRUE),
  -- #329 Vibrava
  (902, 329, NULL, 329, TRUE),
  -- #330 Flygon
  (902, 330, NULL, 330, TRUE),
  -- #331 Cacnea
  (902, 331, NULL, 331, TRUE),
  -- #332 Cacturne
  (902, 332, NULL, 332, TRUE),
  -- #333 Swablu
  (902, 333, NULL, 333, TRUE),
  -- #334 Altaria
  (902, 334, NULL, 334, TRUE),
  -- #335 Zangoose
  (902, 335, NULL, 335, TRUE),
  -- #336 Seviper
  (902, 336, NULL, 336, TRUE),
  -- #337 Lunatone
  (902, 337, NULL, 337, TRUE),
  -- #338 Solrock
  (902, 338, NULL, 338, TRUE),
  -- #339 Barboach
  (902, 339, NULL, 339, TRUE),
  -- #340 Whiscash
  (902, 340, NULL, 340, TRUE),
  -- #341 Corphish
  (902, 341, NULL, 341, TRUE),
  -- #342 Crawdaunt
  (902, 342, NULL, 342, TRUE),
  -- #343 Baltoy
  (902, 343, NULL, 343, TRUE),
  -- #344 Claydol
  (902, 344, NULL, 344, TRUE),
  -- #345 Lileep
  (902, 345, NULL, 345, TRUE),
  -- #346 Cradily
  (902, 346, NULL, 346, TRUE),
  -- #347 Anorith
  (902, 347, NULL, 347, TRUE),
  -- #348 Armaldo
  (902, 348, NULL, 348, TRUE),
  -- #349 Feebas
  (902, 349, NULL, 349, TRUE),
  -- #350 Milotic
  (902, 350, NULL, 350, TRUE),
  -- #351 Castform
  (902, 351, NULL, 351, TRUE),
  -- #352 Kecleon
  (902, 352, NULL, 352, TRUE),
  -- #353 Shuppet
  (902, 353, NULL, 353, TRUE),
  -- #354 Banette
  (902, 354, NULL, 354, TRUE),
  -- #355 Duskull
  (902, 355, NULL, 355, TRUE),
  -- #356 Dusclops
  (902, 356, NULL, 356, TRUE),
  -- #357 Tropius
  (902, 357, NULL, 357, TRUE),
  -- #358 Chimecho
  (902, 358, NULL, 358, TRUE),
  -- #359 Absol
  (902, 359, NULL, 359, TRUE),
  -- #360 Wynaut
  (902, 360, NULL, 360, TRUE),
  -- #361 Snorunt
  (902, 361, NULL, 361, TRUE),
  -- #362 Glalie
  (902, 362, NULL, 362, TRUE),
  -- #363 Spheal
  (902, 363, NULL, 363, TRUE),
  -- #364 Sealeo
  (902, 364, NULL, 364, TRUE),
  -- #365 Walrein
  (902, 365, NULL, 365, TRUE),
  -- #366 Clamperl
  (902, 366, NULL, 366, TRUE),
  -- #367 Huntail
  (902, 367, NULL, 367, TRUE),
  -- #368 Gorebyss
  (902, 368, NULL, 368, TRUE),
  -- #369 Relicanth
  (902, 369, NULL, 369, TRUE),
  -- #370 Luvdisc
  (902, 370, NULL, 370, TRUE),
  -- #371 Bagon
  (902, 371, NULL, 371, TRUE),
  -- #372 Shelgon
  (902, 372, NULL, 372, TRUE),
  -- #373 Salamence
  (902, 373, NULL, 373, TRUE),
  -- #374 Beldum
  (902, 374, NULL, 374, TRUE),
  -- #375 Metang
  (902, 375, NULL, 375, TRUE),
  -- #376 Metagross
  (902, 376, NULL, 376, TRUE),
  -- #377 Regirock
  (902, 377, NULL, 377, TRUE),
  -- #378 Regice
  (902, 378, NULL, 378, TRUE),
  -- #379 Registeel
  (902, 379, NULL, 379, TRUE),
  -- #380 Latias
  (902, 380, NULL, 380, TRUE),
  -- #381 Latios
  (902, 381, NULL, 381, TRUE),
  -- #382 Kyogre
  (902, 382, NULL, 382, TRUE),
  -- #383 Groudon
  (902, 383, NULL, 383, TRUE),
  -- #384 Rayquaza
  (902, 384, NULL, 384, TRUE),
  -- #385 Jirachi
  (902, 385, NULL, 385, FALSE),
  -- #386 Deoxys
  (902, 386, NULL, 386, FALSE),
  -- #387 Turtwig
  (902, 387, NULL, 387, TRUE),
  -- #388 Grotle
  (902, 388, NULL, 388, TRUE),
  -- #389 Torterra
  (902, 389, NULL, 389, TRUE),
  -- #390 Chimchar
  (902, 390, NULL, 390, TRUE),
  -- #391 Monferno
  (902, 391, NULL, 391, TRUE),
  -- #392 Infernape
  (902, 392, NULL, 392, TRUE),
  -- #393 Piplup
  (902, 393, NULL, 393, TRUE),
  -- #394 Prinplup
  (902, 394, NULL, 394, TRUE),
  -- #395 Empoleon
  (902, 395, NULL, 395, TRUE),
  -- #396 Starly
  (902, 396, NULL, 396, TRUE),
  -- #397 Staravia
  (902, 397, NULL, 397, TRUE),
  -- #398 Staraptor
  (902, 398, NULL, 398, TRUE),
  -- #399 Bidoof
  (902, 399, NULL, 399, TRUE),
  -- #400 Bibarel
  (902, 400, NULL, 400, TRUE),
  -- #401 Kricketot
  (902, 401, NULL, 401, TRUE),
  -- #402 Kricketune
  (902, 402, NULL, 402, TRUE),
  -- #403 Shinx
  (902, 403, NULL, 403, TRUE),
  -- #404 Luxio
  (902, 404, NULL, 404, TRUE),
  -- #405 Luxray
  (902, 405, NULL, 405, TRUE),
  -- #406 Budew
  (902, 406, NULL, 406, TRUE),
  -- #407 Roserade
  (902, 407, NULL, 407, TRUE),
  -- #408 Cranidos
  (902, 408, NULL, 408, TRUE),
  -- #409 Rampardos
  (902, 409, NULL, 409, TRUE),
  -- #410 Shieldon
  (902, 410, NULL, 410, TRUE),
  -- #411 Bastiodon
  (902, 411, NULL, 411, TRUE),
  -- #412 Burmy
  (902, 412, NULL, 412, TRUE),
  -- #413 Wormadam
  (902, 413, NULL, 413, TRUE),
  -- #414 Mothim
  (902, 414, NULL, 414, TRUE),
  -- #415 Combee
  (902, 415, NULL, 415, TRUE),
  -- #416 Vespiquen
  (902, 416, NULL, 416, TRUE),
  -- #417 Pachirisu
  (902, 417, NULL, 417, TRUE),
  -- #418 Buizel
  (902, 418, NULL, 418, TRUE),
  -- #419 Floatzel
  (902, 419, NULL, 419, TRUE),
  -- #420 Cherubi
  (902, 420, NULL, 420, TRUE),
  -- #421 Cherrim
  (902, 421, NULL, 421, TRUE),
  -- #422 Shellos
  (902, 422, NULL, 422, TRUE),
  -- #423 Gastrodon
  (902, 423, NULL, 423, TRUE),
  -- #424 Ambipom
  (902, 424, NULL, 424, TRUE),
  -- #425 Drifloon
  (902, 425, NULL, 425, TRUE),
  -- #426 Drifblim
  (902, 426, NULL, 426, TRUE),
  -- #427 Buneary
  (902, 427, NULL, 427, TRUE),
  -- #428 Lopunny
  (902, 428, NULL, 428, TRUE),
  -- #429 Mismagius
  (902, 429, NULL, 429, TRUE),
  -- #430 Honchkrow
  (902, 430, NULL, 430, TRUE),
  -- #431 Glameow
  (902, 431, NULL, 431, TRUE),
  -- #432 Purugly
  (902, 432, NULL, 432, TRUE),
  -- #433 Chingling
  (902, 433, NULL, 433, TRUE),
  -- #434 Stunky
  (902, 434, NULL, 434, TRUE),
  -- #435 Skuntank
  (902, 435, NULL, 435, TRUE),
  -- #436 Bronzor
  (902, 436, NULL, 436, TRUE),
  -- #437 Bronzong
  (902, 437, NULL, 437, TRUE),
  -- #438 Bonsly
  (902, 438, NULL, 438, TRUE),
  -- #439 Mime Jr.
  (902, 439, NULL, 439, TRUE),
  -- #440 Happiny
  (902, 440, NULL, 440, TRUE),
  -- #441 Chatot
  (902, 441, NULL, 441, TRUE),
  -- #442 Spiritomb
  (902, 442, NULL, 442, TRUE),
  -- #443 Gible
  (902, 443, NULL, 443, TRUE),
  -- #444 Gabite
  (902, 444, NULL, 444, TRUE),
  -- #445 Garchomp
  (902, 445, NULL, 445, TRUE),
  -- #446 Munchlax
  (902, 446, NULL, 446, TRUE),
  -- #447 Riolu
  (902, 447, NULL, 447, TRUE),
  -- #448 Lucario
  (902, 448, NULL, 448, TRUE),
  -- #449 Hippopotas
  (902, 449, NULL, 449, TRUE),
  -- #450 Hippowdon
  (902, 450, NULL, 450, TRUE),
  -- #451 Skorupi
  (902, 451, NULL, 451, TRUE),
  -- #452 Drapion
  (902, 452, NULL, 452, TRUE),
  -- #453 Croagunk
  (902, 453, NULL, 453, TRUE),
  -- #454 Toxicroak
  (902, 454, NULL, 454, TRUE),
  -- #455 Carnivine
  (902, 455, NULL, 455, TRUE),
  -- #456 Finneon
  (902, 456, NULL, 456, TRUE),
  -- #457 Lumineon
  (902, 457, NULL, 457, TRUE),
  -- #458 Mantyke
  (902, 458, NULL, 458, TRUE),
  -- #459 Snover
  (902, 459, NULL, 459, TRUE),
  -- #460 Abomasnow
  (902, 460, NULL, 460, TRUE),
  -- #461 Weavile
  (902, 461, NULL, 461, TRUE),
  -- #462 Magnezone
  (902, 462, NULL, 462, TRUE),
  -- #463 Lickilicky
  (902, 463, NULL, 463, TRUE),
  -- #464 Rhyperior
  (902, 464, NULL, 464, TRUE),
  -- #465 Tangrowth
  (902, 465, NULL, 465, TRUE),
  -- #466 Electivire
  (902, 466, NULL, 466, TRUE),
  -- #467 Magmortar
  (902, 467, NULL, 467, TRUE),
  -- #468 Togekiss
  (902, 468, NULL, 468, TRUE),
  -- #469 Yanmega
  (902, 469, NULL, 469, TRUE),
  -- #470 Leafeon
  (902, 470, NULL, 470, TRUE),
  -- #471 Glaceon
  (902, 471, NULL, 471, TRUE),
  -- #472 Gliscor
  (902, 472, NULL, 472, TRUE),
  -- #473 Mamoswine
  (902, 473, NULL, 473, TRUE),
  -- #474 Porygon-Z
  (902, 474, NULL, 474, TRUE),
  -- #475 Gallade
  (902, 475, NULL, 475, TRUE),
  -- #476 Probopass
  (902, 476, NULL, 476, TRUE),
  -- #477 Dusknoir
  (902, 477, NULL, 477, TRUE),
  -- #478 Froslass
  (902, 478, NULL, 478, TRUE),
  -- #479 Rotom
  (902, 479, NULL, 479, TRUE),
  -- #480 Uxie
  (902, 480, NULL, 480, TRUE),
  -- #481 Mesprit
  (902, 481, NULL, 481, TRUE),
  -- #482 Azelf
  (902, 482, NULL, 482, TRUE),
  -- #483 Dialga
  (902, 483, NULL, 483, TRUE),
  -- #484 Palkia
  (902, 484, NULL, 484, TRUE),
  -- #485 Heatran
  (902, 485, NULL, 485, TRUE),
  -- #486 Regigigas
  (902, 486, NULL, 486, TRUE),
  -- #487 Giratina
  (902, 487, NULL, 487, TRUE),
  -- #488 Cresselia
  (902, 488, NULL, 488, TRUE),
  -- #489 Phione
  (902, 489, NULL, 489, FALSE),
  -- #490 Manaphy
  (902, 490, NULL, 490, FALSE),
  -- #491 Darkrai
  (902, 491, NULL, 491, FALSE),
  -- #492 Shaymin
  (902, 492, NULL, 492, FALSE),
  -- #493 Arceus
  (902, 493, NULL, 493, FALSE);
