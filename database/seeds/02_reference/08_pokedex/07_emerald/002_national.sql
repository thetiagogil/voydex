-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by National Pokedex number.
-- Cross-check: Bulbapedia National Pokedex page, Serebii National Pokedex, and PokemonDB National Pokedex.
-- ============================================================================
-- File Scope
-- ============================================================================
-- National Pokedex entries for Emerald.
-- National Pokedex contains 386 species for this version group; Mythical species are source-visible but not required for default completion.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Bulbasaur
  (702, 1, NULL, 1, TRUE),
  -- #002 Ivysaur
  (702, 2, NULL, 2, TRUE),
  -- #003 Venusaur
  (702, 3, NULL, 3, TRUE),
  -- #004 Charmander
  (702, 4, NULL, 4, TRUE),
  -- #005 Charmeleon
  (702, 5, NULL, 5, TRUE),
  -- #006 Charizard
  (702, 6, NULL, 6, TRUE),
  -- #007 Squirtle
  (702, 7, NULL, 7, TRUE),
  -- #008 Wartortle
  (702, 8, NULL, 8, TRUE),
  -- #009 Blastoise
  (702, 9, NULL, 9, TRUE),
  -- #010 Caterpie
  (702, 10, NULL, 10, TRUE),
  -- #011 Metapod
  (702, 11, NULL, 11, TRUE),
  -- #012 Butterfree
  (702, 12, NULL, 12, TRUE),
  -- #013 Weedle
  (702, 13, NULL, 13, TRUE),
  -- #014 Kakuna
  (702, 14, NULL, 14, TRUE),
  -- #015 Beedrill
  (702, 15, NULL, 15, TRUE),
  -- #016 Pidgey
  (702, 16, NULL, 16, TRUE),
  -- #017 Pidgeotto
  (702, 17, NULL, 17, TRUE),
  -- #018 Pidgeot
  (702, 18, NULL, 18, TRUE),
  -- #019 Rattata
  (702, 19, NULL, 19, TRUE),
  -- #020 Raticate
  (702, 20, NULL, 20, TRUE),
  -- #021 Spearow
  (702, 21, NULL, 21, TRUE),
  -- #022 Fearow
  (702, 22, NULL, 22, TRUE),
  -- #023 Ekans
  (702, 23, NULL, 23, TRUE),
  -- #024 Arbok
  (702, 24, NULL, 24, TRUE),
  -- #025 Pikachu
  (702, 25, NULL, 25, TRUE),
  -- #026 Raichu
  (702, 26, NULL, 26, TRUE),
  -- #027 Sandshrew
  (702, 27, NULL, 27, TRUE),
  -- #028 Sandslash
  (702, 28, NULL, 28, TRUE),
  -- #029 Nidoran F
  (702, 29, NULL, 29, TRUE),
  -- #030 Nidorina
  (702, 30, NULL, 30, TRUE),
  -- #031 Nidoqueen
  (702, 31, NULL, 31, TRUE),
  -- #032 Nidoran M
  (702, 32, NULL, 32, TRUE),
  -- #033 Nidorino
  (702, 33, NULL, 33, TRUE),
  -- #034 Nidoking
  (702, 34, NULL, 34, TRUE),
  -- #035 Clefairy
  (702, 35, NULL, 35, TRUE),
  -- #036 Clefable
  (702, 36, NULL, 36, TRUE),
  -- #037 Vulpix
  (702, 37, NULL, 37, TRUE),
  -- #038 Ninetales
  (702, 38, NULL, 38, TRUE),
  -- #039 Jigglypuff
  (702, 39, NULL, 39, TRUE),
  -- #040 Wigglytuff
  (702, 40, NULL, 40, TRUE),
  -- #041 Zubat
  (702, 41, NULL, 41, TRUE),
  -- #042 Golbat
  (702, 42, NULL, 42, TRUE),
  -- #043 Oddish
  (702, 43, NULL, 43, TRUE),
  -- #044 Gloom
  (702, 44, NULL, 44, TRUE),
  -- #045 Vileplume
  (702, 45, NULL, 45, TRUE),
  -- #046 Paras
  (702, 46, NULL, 46, TRUE),
  -- #047 Parasect
  (702, 47, NULL, 47, TRUE),
  -- #048 Venonat
  (702, 48, NULL, 48, TRUE),
  -- #049 Venomoth
  (702, 49, NULL, 49, TRUE),
  -- #050 Diglett
  (702, 50, NULL, 50, TRUE),
  -- #051 Dugtrio
  (702, 51, NULL, 51, TRUE),
  -- #052 Meowth
  (702, 52, NULL, 52, TRUE),
  -- #053 Persian
  (702, 53, NULL, 53, TRUE),
  -- #054 Psyduck
  (702, 54, NULL, 54, TRUE),
  -- #055 Golduck
  (702, 55, NULL, 55, TRUE),
  -- #056 Mankey
  (702, 56, NULL, 56, TRUE),
  -- #057 Primeape
  (702, 57, NULL, 57, TRUE),
  -- #058 Growlithe
  (702, 58, NULL, 58, TRUE),
  -- #059 Arcanine
  (702, 59, NULL, 59, TRUE),
  -- #060 Poliwag
  (702, 60, NULL, 60, TRUE),
  -- #061 Poliwhirl
  (702, 61, NULL, 61, TRUE),
  -- #062 Poliwrath
  (702, 62, NULL, 62, TRUE),
  -- #063 Abra
  (702, 63, NULL, 63, TRUE),
  -- #064 Kadabra
  (702, 64, NULL, 64, TRUE),
  -- #065 Alakazam
  (702, 65, NULL, 65, TRUE),
  -- #066 Machop
  (702, 66, NULL, 66, TRUE),
  -- #067 Machoke
  (702, 67, NULL, 67, TRUE),
  -- #068 Machamp
  (702, 68, NULL, 68, TRUE),
  -- #069 Bellsprout
  (702, 69, NULL, 69, TRUE),
  -- #070 Weepinbell
  (702, 70, NULL, 70, TRUE),
  -- #071 Victreebel
  (702, 71, NULL, 71, TRUE),
  -- #072 Tentacool
  (702, 72, NULL, 72, TRUE),
  -- #073 Tentacruel
  (702, 73, NULL, 73, TRUE),
  -- #074 Geodude
  (702, 74, NULL, 74, TRUE),
  -- #075 Graveler
  (702, 75, NULL, 75, TRUE),
  -- #076 Golem
  (702, 76, NULL, 76, TRUE),
  -- #077 Ponyta
  (702, 77, NULL, 77, TRUE),
  -- #078 Rapidash
  (702, 78, NULL, 78, TRUE),
  -- #079 Slowpoke
  (702, 79, NULL, 79, TRUE),
  -- #080 Slowbro
  (702, 80, NULL, 80, TRUE),
  -- #081 Magnemite
  (702, 81, NULL, 81, TRUE),
  -- #082 Magneton
  (702, 82, NULL, 82, TRUE),
  -- #083 Farfetch'd
  (702, 83, NULL, 83, TRUE),
  -- #084 Doduo
  (702, 84, NULL, 84, TRUE),
  -- #085 Dodrio
  (702, 85, NULL, 85, TRUE),
  -- #086 Seel
  (702, 86, NULL, 86, TRUE),
  -- #087 Dewgong
  (702, 87, NULL, 87, TRUE),
  -- #088 Grimer
  (702, 88, NULL, 88, TRUE),
  -- #089 Muk
  (702, 89, NULL, 89, TRUE),
  -- #090 Shellder
  (702, 90, NULL, 90, TRUE),
  -- #091 Cloyster
  (702, 91, NULL, 91, TRUE),
  -- #092 Gastly
  (702, 92, NULL, 92, TRUE),
  -- #093 Haunter
  (702, 93, NULL, 93, TRUE),
  -- #094 Gengar
  (702, 94, NULL, 94, TRUE),
  -- #095 Onix
  (702, 95, NULL, 95, TRUE),
  -- #096 Drowzee
  (702, 96, NULL, 96, TRUE),
  -- #097 Hypno
  (702, 97, NULL, 97, TRUE),
  -- #098 Krabby
  (702, 98, NULL, 98, TRUE),
  -- #099 Kingler
  (702, 99, NULL, 99, TRUE),
  -- #100 Voltorb
  (702, 100, NULL, 100, TRUE),
  -- #101 Electrode
  (702, 101, NULL, 101, TRUE),
  -- #102 Exeggcute
  (702, 102, NULL, 102, TRUE),
  -- #103 Exeggutor
  (702, 103, NULL, 103, TRUE),
  -- #104 Cubone
  (702, 104, NULL, 104, TRUE),
  -- #105 Marowak
  (702, 105, NULL, 105, TRUE),
  -- #106 Hitmonlee
  (702, 106, NULL, 106, TRUE),
  -- #107 Hitmonchan
  (702, 107, NULL, 107, TRUE),
  -- #108 Lickitung
  (702, 108, NULL, 108, TRUE),
  -- #109 Koffing
  (702, 109, NULL, 109, TRUE),
  -- #110 Weezing
  (702, 110, NULL, 110, TRUE),
  -- #111 Rhyhorn
  (702, 111, NULL, 111, TRUE),
  -- #112 Rhydon
  (702, 112, NULL, 112, TRUE),
  -- #113 Chansey
  (702, 113, NULL, 113, TRUE),
  -- #114 Tangela
  (702, 114, NULL, 114, TRUE),
  -- #115 Kangaskhan
  (702, 115, NULL, 115, TRUE),
  -- #116 Horsea
  (702, 116, NULL, 116, TRUE),
  -- #117 Seadra
  (702, 117, NULL, 117, TRUE),
  -- #118 Goldeen
  (702, 118, NULL, 118, TRUE),
  -- #119 Seaking
  (702, 119, NULL, 119, TRUE),
  -- #120 Staryu
  (702, 120, NULL, 120, TRUE),
  -- #121 Starmie
  (702, 121, NULL, 121, TRUE),
  -- #122 Mr. Mime
  (702, 122, NULL, 122, TRUE),
  -- #123 Scyther
  (702, 123, NULL, 123, TRUE),
  -- #124 Jynx
  (702, 124, NULL, 124, TRUE),
  -- #125 Electabuzz
  (702, 125, NULL, 125, TRUE),
  -- #126 Magmar
  (702, 126, NULL, 126, TRUE),
  -- #127 Pinsir
  (702, 127, NULL, 127, TRUE),
  -- #128 Tauros
  (702, 128, NULL, 128, TRUE),
  -- #129 Magikarp
  (702, 129, NULL, 129, TRUE),
  -- #130 Gyarados
  (702, 130, NULL, 130, TRUE),
  -- #131 Lapras
  (702, 131, NULL, 131, TRUE),
  -- #132 Ditto
  (702, 132, NULL, 132, TRUE),
  -- #133 Eevee
  (702, 133, NULL, 133, TRUE),
  -- #134 Vaporeon
  (702, 134, NULL, 134, TRUE),
  -- #135 Jolteon
  (702, 135, NULL, 135, TRUE),
  -- #136 Flareon
  (702, 136, NULL, 136, TRUE),
  -- #137 Porygon
  (702, 137, NULL, 137, TRUE),
  -- #138 Omanyte
  (702, 138, NULL, 138, TRUE),
  -- #139 Omastar
  (702, 139, NULL, 139, TRUE),
  -- #140 Kabuto
  (702, 140, NULL, 140, TRUE),
  -- #141 Kabutops
  (702, 141, NULL, 141, TRUE),
  -- #142 Aerodactyl
  (702, 142, NULL, 142, TRUE),
  -- #143 Snorlax
  (702, 143, NULL, 143, TRUE),
  -- #144 Articuno
  (702, 144, NULL, 144, TRUE),
  -- #145 Zapdos
  (702, 145, NULL, 145, TRUE),
  -- #146 Moltres
  (702, 146, NULL, 146, TRUE),
  -- #147 Dratini
  (702, 147, NULL, 147, TRUE),
  -- #148 Dragonair
  (702, 148, NULL, 148, TRUE),
  -- #149 Dragonite
  (702, 149, NULL, 149, TRUE),
  -- #150 Mewtwo
  (702, 150, NULL, 150, TRUE),
  -- #151 Mew
  (702, 151, NULL, 151, FALSE),
  -- #152 Chikorita
  (702, 152, NULL, 152, TRUE),
  -- #153 Bayleef
  (702, 153, NULL, 153, TRUE),
  -- #154 Meganium
  (702, 154, NULL, 154, TRUE),
  -- #155 Cyndaquil
  (702, 155, NULL, 155, TRUE),
  -- #156 Quilava
  (702, 156, NULL, 156, TRUE),
  -- #157 Typhlosion
  (702, 157, NULL, 157, TRUE),
  -- #158 Totodile
  (702, 158, NULL, 158, TRUE),
  -- #159 Croconaw
  (702, 159, NULL, 159, TRUE),
  -- #160 Feraligatr
  (702, 160, NULL, 160, TRUE),
  -- #161 Sentret
  (702, 161, NULL, 161, TRUE),
  -- #162 Furret
  (702, 162, NULL, 162, TRUE),
  -- #163 Hoothoot
  (702, 163, NULL, 163, TRUE),
  -- #164 Noctowl
  (702, 164, NULL, 164, TRUE),
  -- #165 Ledyba
  (702, 165, NULL, 165, TRUE),
  -- #166 Ledian
  (702, 166, NULL, 166, TRUE),
  -- #167 Spinarak
  (702, 167, NULL, 167, TRUE),
  -- #168 Ariados
  (702, 168, NULL, 168, TRUE),
  -- #169 Crobat
  (702, 169, NULL, 169, TRUE),
  -- #170 Chinchou
  (702, 170, NULL, 170, TRUE),
  -- #171 Lanturn
  (702, 171, NULL, 171, TRUE),
  -- #172 Pichu
  (702, 172, NULL, 172, TRUE),
  -- #173 Cleffa
  (702, 173, NULL, 173, TRUE),
  -- #174 Igglybuff
  (702, 174, NULL, 174, TRUE),
  -- #175 Togepi
  (702, 175, NULL, 175, TRUE),
  -- #176 Togetic
  (702, 176, NULL, 176, TRUE),
  -- #177 Natu
  (702, 177, NULL, 177, TRUE),
  -- #178 Xatu
  (702, 178, NULL, 178, TRUE),
  -- #179 Mareep
  (702, 179, NULL, 179, TRUE),
  -- #180 Flaaffy
  (702, 180, NULL, 180, TRUE),
  -- #181 Ampharos
  (702, 181, NULL, 181, TRUE),
  -- #182 Bellossom
  (702, 182, NULL, 182, TRUE),
  -- #183 Marill
  (702, 183, NULL, 183, TRUE),
  -- #184 Azumarill
  (702, 184, NULL, 184, TRUE),
  -- #185 Sudowoodo
  (702, 185, NULL, 185, TRUE),
  -- #186 Politoed
  (702, 186, NULL, 186, TRUE),
  -- #187 Hoppip
  (702, 187, NULL, 187, TRUE),
  -- #188 Skiploom
  (702, 188, NULL, 188, TRUE),
  -- #189 Jumpluff
  (702, 189, NULL, 189, TRUE),
  -- #190 Aipom
  (702, 190, NULL, 190, TRUE),
  -- #191 Sunkern
  (702, 191, NULL, 191, TRUE),
  -- #192 Sunflora
  (702, 192, NULL, 192, TRUE),
  -- #193 Yanma
  (702, 193, NULL, 193, TRUE),
  -- #194 Wooper
  (702, 194, NULL, 194, TRUE),
  -- #195 Quagsire
  (702, 195, NULL, 195, TRUE),
  -- #196 Espeon
  (702, 196, NULL, 196, TRUE),
  -- #197 Umbreon
  (702, 197, NULL, 197, TRUE),
  -- #198 Murkrow
  (702, 198, NULL, 198, TRUE),
  -- #199 Slowking
  (702, 199, NULL, 199, TRUE),
  -- #200 Misdreavus
  (702, 200, NULL, 200, TRUE),
  -- #201 Unown
  (702, 201, NULL, 201, TRUE),
  -- #202 Wobbuffet
  (702, 202, NULL, 202, TRUE),
  -- #203 Girafarig
  (702, 203, NULL, 203, TRUE),
  -- #204 Pineco
  (702, 204, NULL, 204, TRUE),
  -- #205 Forretress
  (702, 205, NULL, 205, TRUE),
  -- #206 Dunsparce
  (702, 206, NULL, 206, TRUE),
  -- #207 Gligar
  (702, 207, NULL, 207, TRUE),
  -- #208 Steelix
  (702, 208, NULL, 208, TRUE),
  -- #209 Snubbull
  (702, 209, NULL, 209, TRUE),
  -- #210 Granbull
  (702, 210, NULL, 210, TRUE),
  -- #211 Qwilfish
  (702, 211, NULL, 211, TRUE),
  -- #212 Scizor
  (702, 212, NULL, 212, TRUE),
  -- #213 Shuckle
  (702, 213, NULL, 213, TRUE),
  -- #214 Heracross
  (702, 214, NULL, 214, TRUE),
  -- #215 Sneasel
  (702, 215, NULL, 215, TRUE),
  -- #216 Teddiursa
  (702, 216, NULL, 216, TRUE),
  -- #217 Ursaring
  (702, 217, NULL, 217, TRUE),
  -- #218 Slugma
  (702, 218, NULL, 218, TRUE),
  -- #219 Magcargo
  (702, 219, NULL, 219, TRUE),
  -- #220 Swinub
  (702, 220, NULL, 220, TRUE),
  -- #221 Piloswine
  (702, 221, NULL, 221, TRUE),
  -- #222 Corsola
  (702, 222, NULL, 222, TRUE),
  -- #223 Remoraid
  (702, 223, NULL, 223, TRUE),
  -- #224 Octillery
  (702, 224, NULL, 224, TRUE),
  -- #225 Delibird
  (702, 225, NULL, 225, TRUE),
  -- #226 Mantine
  (702, 226, NULL, 226, TRUE),
  -- #227 Skarmory
  (702, 227, NULL, 227, TRUE),
  -- #228 Houndour
  (702, 228, NULL, 228, TRUE),
  -- #229 Houndoom
  (702, 229, NULL, 229, TRUE),
  -- #230 Kingdra
  (702, 230, NULL, 230, TRUE),
  -- #231 Phanpy
  (702, 231, NULL, 231, TRUE),
  -- #232 Donphan
  (702, 232, NULL, 232, TRUE),
  -- #233 Porygon2
  (702, 233, NULL, 233, TRUE),
  -- #234 Stantler
  (702, 234, NULL, 234, TRUE),
  -- #235 Smeargle
  (702, 235, NULL, 235, TRUE),
  -- #236 Tyrogue
  (702, 236, NULL, 236, TRUE),
  -- #237 Hitmontop
  (702, 237, NULL, 237, TRUE),
  -- #238 Smoochum
  (702, 238, NULL, 238, TRUE),
  -- #239 Elekid
  (702, 239, NULL, 239, TRUE),
  -- #240 Magby
  (702, 240, NULL, 240, TRUE),
  -- #241 Miltank
  (702, 241, NULL, 241, TRUE),
  -- #242 Blissey
  (702, 242, NULL, 242, TRUE),
  -- #243 Raikou
  (702, 243, NULL, 243, TRUE),
  -- #244 Entei
  (702, 244, NULL, 244, TRUE),
  -- #245 Suicune
  (702, 245, NULL, 245, TRUE),
  -- #246 Larvitar
  (702, 246, NULL, 246, TRUE),
  -- #247 Pupitar
  (702, 247, NULL, 247, TRUE),
  -- #248 Tyranitar
  (702, 248, NULL, 248, TRUE),
  -- #249 Lugia
  (702, 249, NULL, 249, TRUE),
  -- #250 Ho-Oh
  (702, 250, NULL, 250, TRUE),
  -- #251 Celebi
  (702, 251, NULL, 251, FALSE),
  -- #252 Treecko
  (702, 252, NULL, 252, TRUE),
  -- #253 Grovyle
  (702, 253, NULL, 253, TRUE),
  -- #254 Sceptile
  (702, 254, NULL, 254, TRUE),
  -- #255 Torchic
  (702, 255, NULL, 255, TRUE),
  -- #256 Combusken
  (702, 256, NULL, 256, TRUE),
  -- #257 Blaziken
  (702, 257, NULL, 257, TRUE),
  -- #258 Mudkip
  (702, 258, NULL, 258, TRUE),
  -- #259 Marshtomp
  (702, 259, NULL, 259, TRUE),
  -- #260 Swampert
  (702, 260, NULL, 260, TRUE),
  -- #261 Poochyena
  (702, 261, NULL, 261, TRUE),
  -- #262 Mightyena
  (702, 262, NULL, 262, TRUE),
  -- #263 Zigzagoon
  (702, 263, NULL, 263, TRUE),
  -- #264 Linoone
  (702, 264, NULL, 264, TRUE),
  -- #265 Wurmple
  (702, 265, NULL, 265, TRUE),
  -- #266 Silcoon
  (702, 266, NULL, 266, TRUE),
  -- #267 Beautifly
  (702, 267, NULL, 267, TRUE),
  -- #268 Cascoon
  (702, 268, NULL, 268, TRUE),
  -- #269 Dustox
  (702, 269, NULL, 269, TRUE),
  -- #270 Lotad
  (702, 270, NULL, 270, TRUE),
  -- #271 Lombre
  (702, 271, NULL, 271, TRUE),
  -- #272 Ludicolo
  (702, 272, NULL, 272, TRUE),
  -- #273 Seedot
  (702, 273, NULL, 273, TRUE),
  -- #274 Nuzleaf
  (702, 274, NULL, 274, TRUE),
  -- #275 Shiftry
  (702, 275, NULL, 275, TRUE),
  -- #276 Taillow
  (702, 276, NULL, 276, TRUE),
  -- #277 Swellow
  (702, 277, NULL, 277, TRUE),
  -- #278 Wingull
  (702, 278, NULL, 278, TRUE),
  -- #279 Pelipper
  (702, 279, NULL, 279, TRUE),
  -- #280 Ralts
  (702, 280, NULL, 280, TRUE),
  -- #281 Kirlia
  (702, 281, NULL, 281, TRUE),
  -- #282 Gardevoir
  (702, 282, NULL, 282, TRUE),
  -- #283 Surskit
  (702, 283, NULL, 283, TRUE),
  -- #284 Masquerain
  (702, 284, NULL, 284, TRUE),
  -- #285 Shroomish
  (702, 285, NULL, 285, TRUE),
  -- #286 Breloom
  (702, 286, NULL, 286, TRUE),
  -- #287 Slakoth
  (702, 287, NULL, 287, TRUE),
  -- #288 Vigoroth
  (702, 288, NULL, 288, TRUE),
  -- #289 Slaking
  (702, 289, NULL, 289, TRUE),
  -- #290 Nincada
  (702, 290, NULL, 290, TRUE),
  -- #291 Ninjask
  (702, 291, NULL, 291, TRUE),
  -- #292 Shedinja
  (702, 292, NULL, 292, TRUE),
  -- #293 Whismur
  (702, 293, NULL, 293, TRUE),
  -- #294 Loudred
  (702, 294, NULL, 294, TRUE),
  -- #295 Exploud
  (702, 295, NULL, 295, TRUE),
  -- #296 Makuhita
  (702, 296, NULL, 296, TRUE),
  -- #297 Hariyama
  (702, 297, NULL, 297, TRUE),
  -- #298 Azurill
  (702, 298, NULL, 298, TRUE),
  -- #299 Nosepass
  (702, 299, NULL, 299, TRUE),
  -- #300 Skitty
  (702, 300, NULL, 300, TRUE),
  -- #301 Delcatty
  (702, 301, NULL, 301, TRUE),
  -- #302 Sableye
  (702, 302, NULL, 302, TRUE),
  -- #303 Mawile
  (702, 303, NULL, 303, TRUE),
  -- #304 Aron
  (702, 304, NULL, 304, TRUE),
  -- #305 Lairon
  (702, 305, NULL, 305, TRUE),
  -- #306 Aggron
  (702, 306, NULL, 306, TRUE),
  -- #307 Meditite
  (702, 307, NULL, 307, TRUE),
  -- #308 Medicham
  (702, 308, NULL, 308, TRUE),
  -- #309 Electrike
  (702, 309, NULL, 309, TRUE),
  -- #310 Manectric
  (702, 310, NULL, 310, TRUE),
  -- #311 Plusle
  (702, 311, NULL, 311, TRUE),
  -- #312 Minun
  (702, 312, NULL, 312, TRUE),
  -- #313 Volbeat
  (702, 313, NULL, 313, TRUE),
  -- #314 Illumise
  (702, 314, NULL, 314, TRUE),
  -- #315 Roselia
  (702, 315, NULL, 315, TRUE),
  -- #316 Gulpin
  (702, 316, NULL, 316, TRUE),
  -- #317 Swalot
  (702, 317, NULL, 317, TRUE),
  -- #318 Carvanha
  (702, 318, NULL, 318, TRUE),
  -- #319 Sharpedo
  (702, 319, NULL, 319, TRUE),
  -- #320 Wailmer
  (702, 320, NULL, 320, TRUE),
  -- #321 Wailord
  (702, 321, NULL, 321, TRUE),
  -- #322 Numel
  (702, 322, NULL, 322, TRUE),
  -- #323 Camerupt
  (702, 323, NULL, 323, TRUE),
  -- #324 Torkoal
  (702, 324, NULL, 324, TRUE),
  -- #325 Spoink
  (702, 325, NULL, 325, TRUE),
  -- #326 Grumpig
  (702, 326, NULL, 326, TRUE),
  -- #327 Spinda
  (702, 327, NULL, 327, TRUE),
  -- #328 Trapinch
  (702, 328, NULL, 328, TRUE),
  -- #329 Vibrava
  (702, 329, NULL, 329, TRUE),
  -- #330 Flygon
  (702, 330, NULL, 330, TRUE),
  -- #331 Cacnea
  (702, 331, NULL, 331, TRUE),
  -- #332 Cacturne
  (702, 332, NULL, 332, TRUE),
  -- #333 Swablu
  (702, 333, NULL, 333, TRUE),
  -- #334 Altaria
  (702, 334, NULL, 334, TRUE),
  -- #335 Zangoose
  (702, 335, NULL, 335, TRUE),
  -- #336 Seviper
  (702, 336, NULL, 336, TRUE),
  -- #337 Lunatone
  (702, 337, NULL, 337, TRUE),
  -- #338 Solrock
  (702, 338, NULL, 338, TRUE),
  -- #339 Barboach
  (702, 339, NULL, 339, TRUE),
  -- #340 Whiscash
  (702, 340, NULL, 340, TRUE),
  -- #341 Corphish
  (702, 341, NULL, 341, TRUE),
  -- #342 Crawdaunt
  (702, 342, NULL, 342, TRUE),
  -- #343 Baltoy
  (702, 343, NULL, 343, TRUE),
  -- #344 Claydol
  (702, 344, NULL, 344, TRUE),
  -- #345 Lileep
  (702, 345, NULL, 345, TRUE),
  -- #346 Cradily
  (702, 346, NULL, 346, TRUE),
  -- #347 Anorith
  (702, 347, NULL, 347, TRUE),
  -- #348 Armaldo
  (702, 348, NULL, 348, TRUE),
  -- #349 Feebas
  (702, 349, NULL, 349, TRUE),
  -- #350 Milotic
  (702, 350, NULL, 350, TRUE),
  -- #351 Castform
  (702, 351, NULL, 351, TRUE),
  -- #352 Kecleon
  (702, 352, NULL, 352, TRUE),
  -- #353 Shuppet
  (702, 353, NULL, 353, TRUE),
  -- #354 Banette
  (702, 354, NULL, 354, TRUE),
  -- #355 Duskull
  (702, 355, NULL, 355, TRUE),
  -- #356 Dusclops
  (702, 356, NULL, 356, TRUE),
  -- #357 Tropius
  (702, 357, NULL, 357, TRUE),
  -- #358 Chimecho
  (702, 358, NULL, 358, TRUE),
  -- #359 Absol
  (702, 359, NULL, 359, TRUE),
  -- #360 Wynaut
  (702, 360, NULL, 360, TRUE),
  -- #361 Snorunt
  (702, 361, NULL, 361, TRUE),
  -- #362 Glalie
  (702, 362, NULL, 362, TRUE),
  -- #363 Spheal
  (702, 363, NULL, 363, TRUE),
  -- #364 Sealeo
  (702, 364, NULL, 364, TRUE),
  -- #365 Walrein
  (702, 365, NULL, 365, TRUE),
  -- #366 Clamperl
  (702, 366, NULL, 366, TRUE),
  -- #367 Huntail
  (702, 367, NULL, 367, TRUE),
  -- #368 Gorebyss
  (702, 368, NULL, 368, TRUE),
  -- #369 Relicanth
  (702, 369, NULL, 369, TRUE),
  -- #370 Luvdisc
  (702, 370, NULL, 370, TRUE),
  -- #371 Bagon
  (702, 371, NULL, 371, TRUE),
  -- #372 Shelgon
  (702, 372, NULL, 372, TRUE),
  -- #373 Salamence
  (702, 373, NULL, 373, TRUE),
  -- #374 Beldum
  (702, 374, NULL, 374, TRUE),
  -- #375 Metang
  (702, 375, NULL, 375, TRUE),
  -- #376 Metagross
  (702, 376, NULL, 376, TRUE),
  -- #377 Regirock
  (702, 377, NULL, 377, TRUE),
  -- #378 Regice
  (702, 378, NULL, 378, TRUE),
  -- #379 Registeel
  (702, 379, NULL, 379, TRUE),
  -- #380 Latias
  (702, 380, NULL, 380, TRUE),
  -- #381 Latios
  (702, 381, NULL, 381, TRUE),
  -- #382 Kyogre
  (702, 382, NULL, 382, TRUE),
  -- #383 Groudon
  (702, 383, NULL, 383, TRUE),
  -- #384 Rayquaza
  (702, 384, NULL, 384, TRUE),
  -- #385 Jirachi
  (702, 385, NULL, 385, FALSE),
  -- #386 Deoxys
  (702, 386, NULL, 386, FALSE);
