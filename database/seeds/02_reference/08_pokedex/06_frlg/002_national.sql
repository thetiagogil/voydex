-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by National Pokedex number.
-- Cross-check: Bulbapedia National Pokedex page, Serebii National Pokedex, and PokemonDB National Pokedex.
-- ============================================================================
-- File Scope
-- ============================================================================
-- National Pokedex entries for FireRed / LeafGreen.
-- National Pokedex contains 386 species for this version group; Mythical species are source-visible but not required for default completion.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Bulbasaur
  (602, 1, NULL, 1, TRUE),
  -- #002 Ivysaur
  (602, 2, NULL, 2, TRUE),
  -- #003 Venusaur
  (602, 3, NULL, 3, TRUE),
  -- #004 Charmander
  (602, 4, NULL, 4, TRUE),
  -- #005 Charmeleon
  (602, 5, NULL, 5, TRUE),
  -- #006 Charizard
  (602, 6, NULL, 6, TRUE),
  -- #007 Squirtle
  (602, 7, NULL, 7, TRUE),
  -- #008 Wartortle
  (602, 8, NULL, 8, TRUE),
  -- #009 Blastoise
  (602, 9, NULL, 9, TRUE),
  -- #010 Caterpie
  (602, 10, NULL, 10, TRUE),
  -- #011 Metapod
  (602, 11, NULL, 11, TRUE),
  -- #012 Butterfree
  (602, 12, NULL, 12, TRUE),
  -- #013 Weedle
  (602, 13, NULL, 13, TRUE),
  -- #014 Kakuna
  (602, 14, NULL, 14, TRUE),
  -- #015 Beedrill
  (602, 15, NULL, 15, TRUE),
  -- #016 Pidgey
  (602, 16, NULL, 16, TRUE),
  -- #017 Pidgeotto
  (602, 17, NULL, 17, TRUE),
  -- #018 Pidgeot
  (602, 18, NULL, 18, TRUE),
  -- #019 Rattata
  (602, 19, NULL, 19, TRUE),
  -- #020 Raticate
  (602, 20, NULL, 20, TRUE),
  -- #021 Spearow
  (602, 21, NULL, 21, TRUE),
  -- #022 Fearow
  (602, 22, NULL, 22, TRUE),
  -- #023 Ekans
  (602, 23, NULL, 23, TRUE),
  -- #024 Arbok
  (602, 24, NULL, 24, TRUE),
  -- #025 Pikachu
  (602, 25, NULL, 25, TRUE),
  -- #026 Raichu
  (602, 26, NULL, 26, TRUE),
  -- #027 Sandshrew
  (602, 27, NULL, 27, TRUE),
  -- #028 Sandslash
  (602, 28, NULL, 28, TRUE),
  -- #029 Nidoran F
  (602, 29, NULL, 29, TRUE),
  -- #030 Nidorina
  (602, 30, NULL, 30, TRUE),
  -- #031 Nidoqueen
  (602, 31, NULL, 31, TRUE),
  -- #032 Nidoran M
  (602, 32, NULL, 32, TRUE),
  -- #033 Nidorino
  (602, 33, NULL, 33, TRUE),
  -- #034 Nidoking
  (602, 34, NULL, 34, TRUE),
  -- #035 Clefairy
  (602, 35, NULL, 35, TRUE),
  -- #036 Clefable
  (602, 36, NULL, 36, TRUE),
  -- #037 Vulpix
  (602, 37, NULL, 37, TRUE),
  -- #038 Ninetales
  (602, 38, NULL, 38, TRUE),
  -- #039 Jigglypuff
  (602, 39, NULL, 39, TRUE),
  -- #040 Wigglytuff
  (602, 40, NULL, 40, TRUE),
  -- #041 Zubat
  (602, 41, NULL, 41, TRUE),
  -- #042 Golbat
  (602, 42, NULL, 42, TRUE),
  -- #043 Oddish
  (602, 43, NULL, 43, TRUE),
  -- #044 Gloom
  (602, 44, NULL, 44, TRUE),
  -- #045 Vileplume
  (602, 45, NULL, 45, TRUE),
  -- #046 Paras
  (602, 46, NULL, 46, TRUE),
  -- #047 Parasect
  (602, 47, NULL, 47, TRUE),
  -- #048 Venonat
  (602, 48, NULL, 48, TRUE),
  -- #049 Venomoth
  (602, 49, NULL, 49, TRUE),
  -- #050 Diglett
  (602, 50, NULL, 50, TRUE),
  -- #051 Dugtrio
  (602, 51, NULL, 51, TRUE),
  -- #052 Meowth
  (602, 52, NULL, 52, TRUE),
  -- #053 Persian
  (602, 53, NULL, 53, TRUE),
  -- #054 Psyduck
  (602, 54, NULL, 54, TRUE),
  -- #055 Golduck
  (602, 55, NULL, 55, TRUE),
  -- #056 Mankey
  (602, 56, NULL, 56, TRUE),
  -- #057 Primeape
  (602, 57, NULL, 57, TRUE),
  -- #058 Growlithe
  (602, 58, NULL, 58, TRUE),
  -- #059 Arcanine
  (602, 59, NULL, 59, TRUE),
  -- #060 Poliwag
  (602, 60, NULL, 60, TRUE),
  -- #061 Poliwhirl
  (602, 61, NULL, 61, TRUE),
  -- #062 Poliwrath
  (602, 62, NULL, 62, TRUE),
  -- #063 Abra
  (602, 63, NULL, 63, TRUE),
  -- #064 Kadabra
  (602, 64, NULL, 64, TRUE),
  -- #065 Alakazam
  (602, 65, NULL, 65, TRUE),
  -- #066 Machop
  (602, 66, NULL, 66, TRUE),
  -- #067 Machoke
  (602, 67, NULL, 67, TRUE),
  -- #068 Machamp
  (602, 68, NULL, 68, TRUE),
  -- #069 Bellsprout
  (602, 69, NULL, 69, TRUE),
  -- #070 Weepinbell
  (602, 70, NULL, 70, TRUE),
  -- #071 Victreebel
  (602, 71, NULL, 71, TRUE),
  -- #072 Tentacool
  (602, 72, NULL, 72, TRUE),
  -- #073 Tentacruel
  (602, 73, NULL, 73, TRUE),
  -- #074 Geodude
  (602, 74, NULL, 74, TRUE),
  -- #075 Graveler
  (602, 75, NULL, 75, TRUE),
  -- #076 Golem
  (602, 76, NULL, 76, TRUE),
  -- #077 Ponyta
  (602, 77, NULL, 77, TRUE),
  -- #078 Rapidash
  (602, 78, NULL, 78, TRUE),
  -- #079 Slowpoke
  (602, 79, NULL, 79, TRUE),
  -- #080 Slowbro
  (602, 80, NULL, 80, TRUE),
  -- #081 Magnemite
  (602, 81, NULL, 81, TRUE),
  -- #082 Magneton
  (602, 82, NULL, 82, TRUE),
  -- #083 Farfetch'd
  (602, 83, NULL, 83, TRUE),
  -- #084 Doduo
  (602, 84, NULL, 84, TRUE),
  -- #085 Dodrio
  (602, 85, NULL, 85, TRUE),
  -- #086 Seel
  (602, 86, NULL, 86, TRUE),
  -- #087 Dewgong
  (602, 87, NULL, 87, TRUE),
  -- #088 Grimer
  (602, 88, NULL, 88, TRUE),
  -- #089 Muk
  (602, 89, NULL, 89, TRUE),
  -- #090 Shellder
  (602, 90, NULL, 90, TRUE),
  -- #091 Cloyster
  (602, 91, NULL, 91, TRUE),
  -- #092 Gastly
  (602, 92, NULL, 92, TRUE),
  -- #093 Haunter
  (602, 93, NULL, 93, TRUE),
  -- #094 Gengar
  (602, 94, NULL, 94, TRUE),
  -- #095 Onix
  (602, 95, NULL, 95, TRUE),
  -- #096 Drowzee
  (602, 96, NULL, 96, TRUE),
  -- #097 Hypno
  (602, 97, NULL, 97, TRUE),
  -- #098 Krabby
  (602, 98, NULL, 98, TRUE),
  -- #099 Kingler
  (602, 99, NULL, 99, TRUE),
  -- #100 Voltorb
  (602, 100, NULL, 100, TRUE),
  -- #101 Electrode
  (602, 101, NULL, 101, TRUE),
  -- #102 Exeggcute
  (602, 102, NULL, 102, TRUE),
  -- #103 Exeggutor
  (602, 103, NULL, 103, TRUE),
  -- #104 Cubone
  (602, 104, NULL, 104, TRUE),
  -- #105 Marowak
  (602, 105, NULL, 105, TRUE),
  -- #106 Hitmonlee
  (602, 106, NULL, 106, TRUE),
  -- #107 Hitmonchan
  (602, 107, NULL, 107, TRUE),
  -- #108 Lickitung
  (602, 108, NULL, 108, TRUE),
  -- #109 Koffing
  (602, 109, NULL, 109, TRUE),
  -- #110 Weezing
  (602, 110, NULL, 110, TRUE),
  -- #111 Rhyhorn
  (602, 111, NULL, 111, TRUE),
  -- #112 Rhydon
  (602, 112, NULL, 112, TRUE),
  -- #113 Chansey
  (602, 113, NULL, 113, TRUE),
  -- #114 Tangela
  (602, 114, NULL, 114, TRUE),
  -- #115 Kangaskhan
  (602, 115, NULL, 115, TRUE),
  -- #116 Horsea
  (602, 116, NULL, 116, TRUE),
  -- #117 Seadra
  (602, 117, NULL, 117, TRUE),
  -- #118 Goldeen
  (602, 118, NULL, 118, TRUE),
  -- #119 Seaking
  (602, 119, NULL, 119, TRUE),
  -- #120 Staryu
  (602, 120, NULL, 120, TRUE),
  -- #121 Starmie
  (602, 121, NULL, 121, TRUE),
  -- #122 Mr. Mime
  (602, 122, NULL, 122, TRUE),
  -- #123 Scyther
  (602, 123, NULL, 123, TRUE),
  -- #124 Jynx
  (602, 124, NULL, 124, TRUE),
  -- #125 Electabuzz
  (602, 125, NULL, 125, TRUE),
  -- #126 Magmar
  (602, 126, NULL, 126, TRUE),
  -- #127 Pinsir
  (602, 127, NULL, 127, TRUE),
  -- #128 Tauros
  (602, 128, NULL, 128, TRUE),
  -- #129 Magikarp
  (602, 129, NULL, 129, TRUE),
  -- #130 Gyarados
  (602, 130, NULL, 130, TRUE),
  -- #131 Lapras
  (602, 131, NULL, 131, TRUE),
  -- #132 Ditto
  (602, 132, NULL, 132, TRUE),
  -- #133 Eevee
  (602, 133, NULL, 133, TRUE),
  -- #134 Vaporeon
  (602, 134, NULL, 134, TRUE),
  -- #135 Jolteon
  (602, 135, NULL, 135, TRUE),
  -- #136 Flareon
  (602, 136, NULL, 136, TRUE),
  -- #137 Porygon
  (602, 137, NULL, 137, TRUE),
  -- #138 Omanyte
  (602, 138, NULL, 138, TRUE),
  -- #139 Omastar
  (602, 139, NULL, 139, TRUE),
  -- #140 Kabuto
  (602, 140, NULL, 140, TRUE),
  -- #141 Kabutops
  (602, 141, NULL, 141, TRUE),
  -- #142 Aerodactyl
  (602, 142, NULL, 142, TRUE),
  -- #143 Snorlax
  (602, 143, NULL, 143, TRUE),
  -- #144 Articuno
  (602, 144, NULL, 144, TRUE),
  -- #145 Zapdos
  (602, 145, NULL, 145, TRUE),
  -- #146 Moltres
  (602, 146, NULL, 146, TRUE),
  -- #147 Dratini
  (602, 147, NULL, 147, TRUE),
  -- #148 Dragonair
  (602, 148, NULL, 148, TRUE),
  -- #149 Dragonite
  (602, 149, NULL, 149, TRUE),
  -- #150 Mewtwo
  (602, 150, NULL, 150, TRUE),
  -- #151 Mew
  (602, 151, NULL, 151, FALSE),
  -- #152 Chikorita
  (602, 152, NULL, 152, TRUE),
  -- #153 Bayleef
  (602, 153, NULL, 153, TRUE),
  -- #154 Meganium
  (602, 154, NULL, 154, TRUE),
  -- #155 Cyndaquil
  (602, 155, NULL, 155, TRUE),
  -- #156 Quilava
  (602, 156, NULL, 156, TRUE),
  -- #157 Typhlosion
  (602, 157, NULL, 157, TRUE),
  -- #158 Totodile
  (602, 158, NULL, 158, TRUE),
  -- #159 Croconaw
  (602, 159, NULL, 159, TRUE),
  -- #160 Feraligatr
  (602, 160, NULL, 160, TRUE),
  -- #161 Sentret
  (602, 161, NULL, 161, TRUE),
  -- #162 Furret
  (602, 162, NULL, 162, TRUE),
  -- #163 Hoothoot
  (602, 163, NULL, 163, TRUE),
  -- #164 Noctowl
  (602, 164, NULL, 164, TRUE),
  -- #165 Ledyba
  (602, 165, NULL, 165, TRUE),
  -- #166 Ledian
  (602, 166, NULL, 166, TRUE),
  -- #167 Spinarak
  (602, 167, NULL, 167, TRUE),
  -- #168 Ariados
  (602, 168, NULL, 168, TRUE),
  -- #169 Crobat
  (602, 169, NULL, 169, TRUE),
  -- #170 Chinchou
  (602, 170, NULL, 170, TRUE),
  -- #171 Lanturn
  (602, 171, NULL, 171, TRUE),
  -- #172 Pichu
  (602, 172, NULL, 172, TRUE),
  -- #173 Cleffa
  (602, 173, NULL, 173, TRUE),
  -- #174 Igglybuff
  (602, 174, NULL, 174, TRUE),
  -- #175 Togepi
  (602, 175, NULL, 175, TRUE),
  -- #176 Togetic
  (602, 176, NULL, 176, TRUE),
  -- #177 Natu
  (602, 177, NULL, 177, TRUE),
  -- #178 Xatu
  (602, 178, NULL, 178, TRUE),
  -- #179 Mareep
  (602, 179, NULL, 179, TRUE),
  -- #180 Flaaffy
  (602, 180, NULL, 180, TRUE),
  -- #181 Ampharos
  (602, 181, NULL, 181, TRUE),
  -- #182 Bellossom
  (602, 182, NULL, 182, TRUE),
  -- #183 Marill
  (602, 183, NULL, 183, TRUE),
  -- #184 Azumarill
  (602, 184, NULL, 184, TRUE),
  -- #185 Sudowoodo
  (602, 185, NULL, 185, TRUE),
  -- #186 Politoed
  (602, 186, NULL, 186, TRUE),
  -- #187 Hoppip
  (602, 187, NULL, 187, TRUE),
  -- #188 Skiploom
  (602, 188, NULL, 188, TRUE),
  -- #189 Jumpluff
  (602, 189, NULL, 189, TRUE),
  -- #190 Aipom
  (602, 190, NULL, 190, TRUE),
  -- #191 Sunkern
  (602, 191, NULL, 191, TRUE),
  -- #192 Sunflora
  (602, 192, NULL, 192, TRUE),
  -- #193 Yanma
  (602, 193, NULL, 193, TRUE),
  -- #194 Wooper
  (602, 194, NULL, 194, TRUE),
  -- #195 Quagsire
  (602, 195, NULL, 195, TRUE),
  -- #196 Espeon
  (602, 196, NULL, 196, TRUE),
  -- #197 Umbreon
  (602, 197, NULL, 197, TRUE),
  -- #198 Murkrow
  (602, 198, NULL, 198, TRUE),
  -- #199 Slowking
  (602, 199, NULL, 199, TRUE),
  -- #200 Misdreavus
  (602, 200, NULL, 200, TRUE),
  -- #201 Unown
  (602, 201, NULL, 201, TRUE),
  -- #202 Wobbuffet
  (602, 202, NULL, 202, TRUE),
  -- #203 Girafarig
  (602, 203, NULL, 203, TRUE),
  -- #204 Pineco
  (602, 204, NULL, 204, TRUE),
  -- #205 Forretress
  (602, 205, NULL, 205, TRUE),
  -- #206 Dunsparce
  (602, 206, NULL, 206, TRUE),
  -- #207 Gligar
  (602, 207, NULL, 207, TRUE),
  -- #208 Steelix
  (602, 208, NULL, 208, TRUE),
  -- #209 Snubbull
  (602, 209, NULL, 209, TRUE),
  -- #210 Granbull
  (602, 210, NULL, 210, TRUE),
  -- #211 Qwilfish
  (602, 211, NULL, 211, TRUE),
  -- #212 Scizor
  (602, 212, NULL, 212, TRUE),
  -- #213 Shuckle
  (602, 213, NULL, 213, TRUE),
  -- #214 Heracross
  (602, 214, NULL, 214, TRUE),
  -- #215 Sneasel
  (602, 215, NULL, 215, TRUE),
  -- #216 Teddiursa
  (602, 216, NULL, 216, TRUE),
  -- #217 Ursaring
  (602, 217, NULL, 217, TRUE),
  -- #218 Slugma
  (602, 218, NULL, 218, TRUE),
  -- #219 Magcargo
  (602, 219, NULL, 219, TRUE),
  -- #220 Swinub
  (602, 220, NULL, 220, TRUE),
  -- #221 Piloswine
  (602, 221, NULL, 221, TRUE),
  -- #222 Corsola
  (602, 222, NULL, 222, TRUE),
  -- #223 Remoraid
  (602, 223, NULL, 223, TRUE),
  -- #224 Octillery
  (602, 224, NULL, 224, TRUE),
  -- #225 Delibird
  (602, 225, NULL, 225, TRUE),
  -- #226 Mantine
  (602, 226, NULL, 226, TRUE),
  -- #227 Skarmory
  (602, 227, NULL, 227, TRUE),
  -- #228 Houndour
  (602, 228, NULL, 228, TRUE),
  -- #229 Houndoom
  (602, 229, NULL, 229, TRUE),
  -- #230 Kingdra
  (602, 230, NULL, 230, TRUE),
  -- #231 Phanpy
  (602, 231, NULL, 231, TRUE),
  -- #232 Donphan
  (602, 232, NULL, 232, TRUE),
  -- #233 Porygon2
  (602, 233, NULL, 233, TRUE),
  -- #234 Stantler
  (602, 234, NULL, 234, TRUE),
  -- #235 Smeargle
  (602, 235, NULL, 235, TRUE),
  -- #236 Tyrogue
  (602, 236, NULL, 236, TRUE),
  -- #237 Hitmontop
  (602, 237, NULL, 237, TRUE),
  -- #238 Smoochum
  (602, 238, NULL, 238, TRUE),
  -- #239 Elekid
  (602, 239, NULL, 239, TRUE),
  -- #240 Magby
  (602, 240, NULL, 240, TRUE),
  -- #241 Miltank
  (602, 241, NULL, 241, TRUE),
  -- #242 Blissey
  (602, 242, NULL, 242, TRUE),
  -- #243 Raikou
  (602, 243, NULL, 243, TRUE),
  -- #244 Entei
  (602, 244, NULL, 244, TRUE),
  -- #245 Suicune
  (602, 245, NULL, 245, TRUE),
  -- #246 Larvitar
  (602, 246, NULL, 246, TRUE),
  -- #247 Pupitar
  (602, 247, NULL, 247, TRUE),
  -- #248 Tyranitar
  (602, 248, NULL, 248, TRUE),
  -- #249 Lugia
  (602, 249, NULL, 249, TRUE),
  -- #250 Ho-Oh
  (602, 250, NULL, 250, TRUE),
  -- #251 Celebi
  (602, 251, NULL, 251, FALSE),
  -- #252 Treecko
  (602, 252, NULL, 252, TRUE),
  -- #253 Grovyle
  (602, 253, NULL, 253, TRUE),
  -- #254 Sceptile
  (602, 254, NULL, 254, TRUE),
  -- #255 Torchic
  (602, 255, NULL, 255, TRUE),
  -- #256 Combusken
  (602, 256, NULL, 256, TRUE),
  -- #257 Blaziken
  (602, 257, NULL, 257, TRUE),
  -- #258 Mudkip
  (602, 258, NULL, 258, TRUE),
  -- #259 Marshtomp
  (602, 259, NULL, 259, TRUE),
  -- #260 Swampert
  (602, 260, NULL, 260, TRUE),
  -- #261 Poochyena
  (602, 261, NULL, 261, TRUE),
  -- #262 Mightyena
  (602, 262, NULL, 262, TRUE),
  -- #263 Zigzagoon
  (602, 263, NULL, 263, TRUE),
  -- #264 Linoone
  (602, 264, NULL, 264, TRUE),
  -- #265 Wurmple
  (602, 265, NULL, 265, TRUE),
  -- #266 Silcoon
  (602, 266, NULL, 266, TRUE),
  -- #267 Beautifly
  (602, 267, NULL, 267, TRUE),
  -- #268 Cascoon
  (602, 268, NULL, 268, TRUE),
  -- #269 Dustox
  (602, 269, NULL, 269, TRUE),
  -- #270 Lotad
  (602, 270, NULL, 270, TRUE),
  -- #271 Lombre
  (602, 271, NULL, 271, TRUE),
  -- #272 Ludicolo
  (602, 272, NULL, 272, TRUE),
  -- #273 Seedot
  (602, 273, NULL, 273, TRUE),
  -- #274 Nuzleaf
  (602, 274, NULL, 274, TRUE),
  -- #275 Shiftry
  (602, 275, NULL, 275, TRUE),
  -- #276 Taillow
  (602, 276, NULL, 276, TRUE),
  -- #277 Swellow
  (602, 277, NULL, 277, TRUE),
  -- #278 Wingull
  (602, 278, NULL, 278, TRUE),
  -- #279 Pelipper
  (602, 279, NULL, 279, TRUE),
  -- #280 Ralts
  (602, 280, NULL, 280, TRUE),
  -- #281 Kirlia
  (602, 281, NULL, 281, TRUE),
  -- #282 Gardevoir
  (602, 282, NULL, 282, TRUE),
  -- #283 Surskit
  (602, 283, NULL, 283, TRUE),
  -- #284 Masquerain
  (602, 284, NULL, 284, TRUE),
  -- #285 Shroomish
  (602, 285, NULL, 285, TRUE),
  -- #286 Breloom
  (602, 286, NULL, 286, TRUE),
  -- #287 Slakoth
  (602, 287, NULL, 287, TRUE),
  -- #288 Vigoroth
  (602, 288, NULL, 288, TRUE),
  -- #289 Slaking
  (602, 289, NULL, 289, TRUE),
  -- #290 Nincada
  (602, 290, NULL, 290, TRUE),
  -- #291 Ninjask
  (602, 291, NULL, 291, TRUE),
  -- #292 Shedinja
  (602, 292, NULL, 292, TRUE),
  -- #293 Whismur
  (602, 293, NULL, 293, TRUE),
  -- #294 Loudred
  (602, 294, NULL, 294, TRUE),
  -- #295 Exploud
  (602, 295, NULL, 295, TRUE),
  -- #296 Makuhita
  (602, 296, NULL, 296, TRUE),
  -- #297 Hariyama
  (602, 297, NULL, 297, TRUE),
  -- #298 Azurill
  (602, 298, NULL, 298, TRUE),
  -- #299 Nosepass
  (602, 299, NULL, 299, TRUE),
  -- #300 Skitty
  (602, 300, NULL, 300, TRUE),
  -- #301 Delcatty
  (602, 301, NULL, 301, TRUE),
  -- #302 Sableye
  (602, 302, NULL, 302, TRUE),
  -- #303 Mawile
  (602, 303, NULL, 303, TRUE),
  -- #304 Aron
  (602, 304, NULL, 304, TRUE),
  -- #305 Lairon
  (602, 305, NULL, 305, TRUE),
  -- #306 Aggron
  (602, 306, NULL, 306, TRUE),
  -- #307 Meditite
  (602, 307, NULL, 307, TRUE),
  -- #308 Medicham
  (602, 308, NULL, 308, TRUE),
  -- #309 Electrike
  (602, 309, NULL, 309, TRUE),
  -- #310 Manectric
  (602, 310, NULL, 310, TRUE),
  -- #311 Plusle
  (602, 311, NULL, 311, TRUE),
  -- #312 Minun
  (602, 312, NULL, 312, TRUE),
  -- #313 Volbeat
  (602, 313, NULL, 313, TRUE),
  -- #314 Illumise
  (602, 314, NULL, 314, TRUE),
  -- #315 Roselia
  (602, 315, NULL, 315, TRUE),
  -- #316 Gulpin
  (602, 316, NULL, 316, TRUE),
  -- #317 Swalot
  (602, 317, NULL, 317, TRUE),
  -- #318 Carvanha
  (602, 318, NULL, 318, TRUE),
  -- #319 Sharpedo
  (602, 319, NULL, 319, TRUE),
  -- #320 Wailmer
  (602, 320, NULL, 320, TRUE),
  -- #321 Wailord
  (602, 321, NULL, 321, TRUE),
  -- #322 Numel
  (602, 322, NULL, 322, TRUE),
  -- #323 Camerupt
  (602, 323, NULL, 323, TRUE),
  -- #324 Torkoal
  (602, 324, NULL, 324, TRUE),
  -- #325 Spoink
  (602, 325, NULL, 325, TRUE),
  -- #326 Grumpig
  (602, 326, NULL, 326, TRUE),
  -- #327 Spinda
  (602, 327, NULL, 327, TRUE),
  -- #328 Trapinch
  (602, 328, NULL, 328, TRUE),
  -- #329 Vibrava
  (602, 329, NULL, 329, TRUE),
  -- #330 Flygon
  (602, 330, NULL, 330, TRUE),
  -- #331 Cacnea
  (602, 331, NULL, 331, TRUE),
  -- #332 Cacturne
  (602, 332, NULL, 332, TRUE),
  -- #333 Swablu
  (602, 333, NULL, 333, TRUE),
  -- #334 Altaria
  (602, 334, NULL, 334, TRUE),
  -- #335 Zangoose
  (602, 335, NULL, 335, TRUE),
  -- #336 Seviper
  (602, 336, NULL, 336, TRUE),
  -- #337 Lunatone
  (602, 337, NULL, 337, TRUE),
  -- #338 Solrock
  (602, 338, NULL, 338, TRUE),
  -- #339 Barboach
  (602, 339, NULL, 339, TRUE),
  -- #340 Whiscash
  (602, 340, NULL, 340, TRUE),
  -- #341 Corphish
  (602, 341, NULL, 341, TRUE),
  -- #342 Crawdaunt
  (602, 342, NULL, 342, TRUE),
  -- #343 Baltoy
  (602, 343, NULL, 343, TRUE),
  -- #344 Claydol
  (602, 344, NULL, 344, TRUE),
  -- #345 Lileep
  (602, 345, NULL, 345, TRUE),
  -- #346 Cradily
  (602, 346, NULL, 346, TRUE),
  -- #347 Anorith
  (602, 347, NULL, 347, TRUE),
  -- #348 Armaldo
  (602, 348, NULL, 348, TRUE),
  -- #349 Feebas
  (602, 349, NULL, 349, TRUE),
  -- #350 Milotic
  (602, 350, NULL, 350, TRUE),
  -- #351 Castform
  (602, 351, NULL, 351, TRUE),
  -- #352 Kecleon
  (602, 352, NULL, 352, TRUE),
  -- #353 Shuppet
  (602, 353, NULL, 353, TRUE),
  -- #354 Banette
  (602, 354, NULL, 354, TRUE),
  -- #355 Duskull
  (602, 355, NULL, 355, TRUE),
  -- #356 Dusclops
  (602, 356, NULL, 356, TRUE),
  -- #357 Tropius
  (602, 357, NULL, 357, TRUE),
  -- #358 Chimecho
  (602, 358, NULL, 358, TRUE),
  -- #359 Absol
  (602, 359, NULL, 359, TRUE),
  -- #360 Wynaut
  (602, 360, NULL, 360, TRUE),
  -- #361 Snorunt
  (602, 361, NULL, 361, TRUE),
  -- #362 Glalie
  (602, 362, NULL, 362, TRUE),
  -- #363 Spheal
  (602, 363, NULL, 363, TRUE),
  -- #364 Sealeo
  (602, 364, NULL, 364, TRUE),
  -- #365 Walrein
  (602, 365, NULL, 365, TRUE),
  -- #366 Clamperl
  (602, 366, NULL, 366, TRUE),
  -- #367 Huntail
  (602, 367, NULL, 367, TRUE),
  -- #368 Gorebyss
  (602, 368, NULL, 368, TRUE),
  -- #369 Relicanth
  (602, 369, NULL, 369, TRUE),
  -- #370 Luvdisc
  (602, 370, NULL, 370, TRUE),
  -- #371 Bagon
  (602, 371, NULL, 371, TRUE),
  -- #372 Shelgon
  (602, 372, NULL, 372, TRUE),
  -- #373 Salamence
  (602, 373, NULL, 373, TRUE),
  -- #374 Beldum
  (602, 374, NULL, 374, TRUE),
  -- #375 Metang
  (602, 375, NULL, 375, TRUE),
  -- #376 Metagross
  (602, 376, NULL, 376, TRUE),
  -- #377 Regirock
  (602, 377, NULL, 377, TRUE),
  -- #378 Regice
  (602, 378, NULL, 378, TRUE),
  -- #379 Registeel
  (602, 379, NULL, 379, TRUE),
  -- #380 Latias
  (602, 380, NULL, 380, TRUE),
  -- #381 Latios
  (602, 381, NULL, 381, TRUE),
  -- #382 Kyogre
  (602, 382, NULL, 382, TRUE),
  -- #383 Groudon
  (602, 383, NULL, 383, TRUE),
  -- #384 Rayquaza
  (602, 384, NULL, 384, TRUE),
  -- #385 Jirachi
  (602, 385, NULL, 385, FALSE),
  -- #386 Deoxys
  (602, 386, NULL, 386, FALSE);
