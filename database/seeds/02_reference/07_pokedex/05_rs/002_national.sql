-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by National Pokedex number.
-- Cross-check: Bulbapedia National Pokedex page, Serebii National Pokedex, and PokemonDB National Pokedex.
-- ============================================================================
-- File Scope
-- ============================================================================
-- National Pokedex entries for Ruby / Sapphire.
-- National Pokedex contains 386 species for this version group; Mythical species are source-visible but not required for default completion.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Bulbasaur
  (502, 1, NULL, 1, TRUE),
  -- #002 Ivysaur
  (502, 2, NULL, 2, TRUE),
  -- #003 Venusaur
  (502, 3, NULL, 3, TRUE),
  -- #004 Charmander
  (502, 4, NULL, 4, TRUE),
  -- #005 Charmeleon
  (502, 5, NULL, 5, TRUE),
  -- #006 Charizard
  (502, 6, NULL, 6, TRUE),
  -- #007 Squirtle
  (502, 7, NULL, 7, TRUE),
  -- #008 Wartortle
  (502, 8, NULL, 8, TRUE),
  -- #009 Blastoise
  (502, 9, NULL, 9, TRUE),
  -- #010 Caterpie
  (502, 10, NULL, 10, TRUE),
  -- #011 Metapod
  (502, 11, NULL, 11, TRUE),
  -- #012 Butterfree
  (502, 12, NULL, 12, TRUE),
  -- #013 Weedle
  (502, 13, NULL, 13, TRUE),
  -- #014 Kakuna
  (502, 14, NULL, 14, TRUE),
  -- #015 Beedrill
  (502, 15, NULL, 15, TRUE),
  -- #016 Pidgey
  (502, 16, NULL, 16, TRUE),
  -- #017 Pidgeotto
  (502, 17, NULL, 17, TRUE),
  -- #018 Pidgeot
  (502, 18, NULL, 18, TRUE),
  -- #019 Rattata
  (502, 19, NULL, 19, TRUE),
  -- #020 Raticate
  (502, 20, NULL, 20, TRUE),
  -- #021 Spearow
  (502, 21, NULL, 21, TRUE),
  -- #022 Fearow
  (502, 22, NULL, 22, TRUE),
  -- #023 Ekans
  (502, 23, NULL, 23, TRUE),
  -- #024 Arbok
  (502, 24, NULL, 24, TRUE),
  -- #025 Pikachu
  (502, 25, NULL, 25, TRUE),
  -- #026 Raichu
  (502, 26, NULL, 26, TRUE),
  -- #027 Sandshrew
  (502, 27, NULL, 27, TRUE),
  -- #028 Sandslash
  (502, 28, NULL, 28, TRUE),
  -- #029 Nidoran F
  (502, 29, NULL, 29, TRUE),
  -- #030 Nidorina
  (502, 30, NULL, 30, TRUE),
  -- #031 Nidoqueen
  (502, 31, NULL, 31, TRUE),
  -- #032 Nidoran M
  (502, 32, NULL, 32, TRUE),
  -- #033 Nidorino
  (502, 33, NULL, 33, TRUE),
  -- #034 Nidoking
  (502, 34, NULL, 34, TRUE),
  -- #035 Clefairy
  (502, 35, NULL, 35, TRUE),
  -- #036 Clefable
  (502, 36, NULL, 36, TRUE),
  -- #037 Vulpix
  (502, 37, NULL, 37, TRUE),
  -- #038 Ninetales
  (502, 38, NULL, 38, TRUE),
  -- #039 Jigglypuff
  (502, 39, NULL, 39, TRUE),
  -- #040 Wigglytuff
  (502, 40, NULL, 40, TRUE),
  -- #041 Zubat
  (502, 41, NULL, 41, TRUE),
  -- #042 Golbat
  (502, 42, NULL, 42, TRUE),
  -- #043 Oddish
  (502, 43, NULL, 43, TRUE),
  -- #044 Gloom
  (502, 44, NULL, 44, TRUE),
  -- #045 Vileplume
  (502, 45, NULL, 45, TRUE),
  -- #046 Paras
  (502, 46, NULL, 46, TRUE),
  -- #047 Parasect
  (502, 47, NULL, 47, TRUE),
  -- #048 Venonat
  (502, 48, NULL, 48, TRUE),
  -- #049 Venomoth
  (502, 49, NULL, 49, TRUE),
  -- #050 Diglett
  (502, 50, NULL, 50, TRUE),
  -- #051 Dugtrio
  (502, 51, NULL, 51, TRUE),
  -- #052 Meowth
  (502, 52, NULL, 52, TRUE),
  -- #053 Persian
  (502, 53, NULL, 53, TRUE),
  -- #054 Psyduck
  (502, 54, NULL, 54, TRUE),
  -- #055 Golduck
  (502, 55, NULL, 55, TRUE),
  -- #056 Mankey
  (502, 56, NULL, 56, TRUE),
  -- #057 Primeape
  (502, 57, NULL, 57, TRUE),
  -- #058 Growlithe
  (502, 58, NULL, 58, TRUE),
  -- #059 Arcanine
  (502, 59, NULL, 59, TRUE),
  -- #060 Poliwag
  (502, 60, NULL, 60, TRUE),
  -- #061 Poliwhirl
  (502, 61, NULL, 61, TRUE),
  -- #062 Poliwrath
  (502, 62, NULL, 62, TRUE),
  -- #063 Abra
  (502, 63, NULL, 63, TRUE),
  -- #064 Kadabra
  (502, 64, NULL, 64, TRUE),
  -- #065 Alakazam
  (502, 65, NULL, 65, TRUE),
  -- #066 Machop
  (502, 66, NULL, 66, TRUE),
  -- #067 Machoke
  (502, 67, NULL, 67, TRUE),
  -- #068 Machamp
  (502, 68, NULL, 68, TRUE),
  -- #069 Bellsprout
  (502, 69, NULL, 69, TRUE),
  -- #070 Weepinbell
  (502, 70, NULL, 70, TRUE),
  -- #071 Victreebel
  (502, 71, NULL, 71, TRUE),
  -- #072 Tentacool
  (502, 72, NULL, 72, TRUE),
  -- #073 Tentacruel
  (502, 73, NULL, 73, TRUE),
  -- #074 Geodude
  (502, 74, NULL, 74, TRUE),
  -- #075 Graveler
  (502, 75, NULL, 75, TRUE),
  -- #076 Golem
  (502, 76, NULL, 76, TRUE),
  -- #077 Ponyta
  (502, 77, NULL, 77, TRUE),
  -- #078 Rapidash
  (502, 78, NULL, 78, TRUE),
  -- #079 Slowpoke
  (502, 79, NULL, 79, TRUE),
  -- #080 Slowbro
  (502, 80, NULL, 80, TRUE),
  -- #081 Magnemite
  (502, 81, NULL, 81, TRUE),
  -- #082 Magneton
  (502, 82, NULL, 82, TRUE),
  -- #083 Farfetch'd
  (502, 83, NULL, 83, TRUE),
  -- #084 Doduo
  (502, 84, NULL, 84, TRUE),
  -- #085 Dodrio
  (502, 85, NULL, 85, TRUE),
  -- #086 Seel
  (502, 86, NULL, 86, TRUE),
  -- #087 Dewgong
  (502, 87, NULL, 87, TRUE),
  -- #088 Grimer
  (502, 88, NULL, 88, TRUE),
  -- #089 Muk
  (502, 89, NULL, 89, TRUE),
  -- #090 Shellder
  (502, 90, NULL, 90, TRUE),
  -- #091 Cloyster
  (502, 91, NULL, 91, TRUE),
  -- #092 Gastly
  (502, 92, NULL, 92, TRUE),
  -- #093 Haunter
  (502, 93, NULL, 93, TRUE),
  -- #094 Gengar
  (502, 94, NULL, 94, TRUE),
  -- #095 Onix
  (502, 95, NULL, 95, TRUE),
  -- #096 Drowzee
  (502, 96, NULL, 96, TRUE),
  -- #097 Hypno
  (502, 97, NULL, 97, TRUE),
  -- #098 Krabby
  (502, 98, NULL, 98, TRUE),
  -- #099 Kingler
  (502, 99, NULL, 99, TRUE),
  -- #100 Voltorb
  (502, 100, NULL, 100, TRUE),
  -- #101 Electrode
  (502, 101, NULL, 101, TRUE),
  -- #102 Exeggcute
  (502, 102, NULL, 102, TRUE),
  -- #103 Exeggutor
  (502, 103, NULL, 103, TRUE),
  -- #104 Cubone
  (502, 104, NULL, 104, TRUE),
  -- #105 Marowak
  (502, 105, NULL, 105, TRUE),
  -- #106 Hitmonlee
  (502, 106, NULL, 106, TRUE),
  -- #107 Hitmonchan
  (502, 107, NULL, 107, TRUE),
  -- #108 Lickitung
  (502, 108, NULL, 108, TRUE),
  -- #109 Koffing
  (502, 109, NULL, 109, TRUE),
  -- #110 Weezing
  (502, 110, NULL, 110, TRUE),
  -- #111 Rhyhorn
  (502, 111, NULL, 111, TRUE),
  -- #112 Rhydon
  (502, 112, NULL, 112, TRUE),
  -- #113 Chansey
  (502, 113, NULL, 113, TRUE),
  -- #114 Tangela
  (502, 114, NULL, 114, TRUE),
  -- #115 Kangaskhan
  (502, 115, NULL, 115, TRUE),
  -- #116 Horsea
  (502, 116, NULL, 116, TRUE),
  -- #117 Seadra
  (502, 117, NULL, 117, TRUE),
  -- #118 Goldeen
  (502, 118, NULL, 118, TRUE),
  -- #119 Seaking
  (502, 119, NULL, 119, TRUE),
  -- #120 Staryu
  (502, 120, NULL, 120, TRUE),
  -- #121 Starmie
  (502, 121, NULL, 121, TRUE),
  -- #122 Mr. Mime
  (502, 122, NULL, 122, TRUE),
  -- #123 Scyther
  (502, 123, NULL, 123, TRUE),
  -- #124 Jynx
  (502, 124, NULL, 124, TRUE),
  -- #125 Electabuzz
  (502, 125, NULL, 125, TRUE),
  -- #126 Magmar
  (502, 126, NULL, 126, TRUE),
  -- #127 Pinsir
  (502, 127, NULL, 127, TRUE),
  -- #128 Tauros
  (502, 128, NULL, 128, TRUE),
  -- #129 Magikarp
  (502, 129, NULL, 129, TRUE),
  -- #130 Gyarados
  (502, 130, NULL, 130, TRUE),
  -- #131 Lapras
  (502, 131, NULL, 131, TRUE),
  -- #132 Ditto
  (502, 132, NULL, 132, TRUE),
  -- #133 Eevee
  (502, 133, NULL, 133, TRUE),
  -- #134 Vaporeon
  (502, 134, NULL, 134, TRUE),
  -- #135 Jolteon
  (502, 135, NULL, 135, TRUE),
  -- #136 Flareon
  (502, 136, NULL, 136, TRUE),
  -- #137 Porygon
  (502, 137, NULL, 137, TRUE),
  -- #138 Omanyte
  (502, 138, NULL, 138, TRUE),
  -- #139 Omastar
  (502, 139, NULL, 139, TRUE),
  -- #140 Kabuto
  (502, 140, NULL, 140, TRUE),
  -- #141 Kabutops
  (502, 141, NULL, 141, TRUE),
  -- #142 Aerodactyl
  (502, 142, NULL, 142, TRUE),
  -- #143 Snorlax
  (502, 143, NULL, 143, TRUE),
  -- #144 Articuno
  (502, 144, NULL, 144, TRUE),
  -- #145 Zapdos
  (502, 145, NULL, 145, TRUE),
  -- #146 Moltres
  (502, 146, NULL, 146, TRUE),
  -- #147 Dratini
  (502, 147, NULL, 147, TRUE),
  -- #148 Dragonair
  (502, 148, NULL, 148, TRUE),
  -- #149 Dragonite
  (502, 149, NULL, 149, TRUE),
  -- #150 Mewtwo
  (502, 150, NULL, 150, TRUE),
  -- #151 Mew
  (502, 151, NULL, 151, FALSE),
  -- #152 Chikorita
  (502, 152, NULL, 152, TRUE),
  -- #153 Bayleef
  (502, 153, NULL, 153, TRUE),
  -- #154 Meganium
  (502, 154, NULL, 154, TRUE),
  -- #155 Cyndaquil
  (502, 155, NULL, 155, TRUE),
  -- #156 Quilava
  (502, 156, NULL, 156, TRUE),
  -- #157 Typhlosion
  (502, 157, NULL, 157, TRUE),
  -- #158 Totodile
  (502, 158, NULL, 158, TRUE),
  -- #159 Croconaw
  (502, 159, NULL, 159, TRUE),
  -- #160 Feraligatr
  (502, 160, NULL, 160, TRUE),
  -- #161 Sentret
  (502, 161, NULL, 161, TRUE),
  -- #162 Furret
  (502, 162, NULL, 162, TRUE),
  -- #163 Hoothoot
  (502, 163, NULL, 163, TRUE),
  -- #164 Noctowl
  (502, 164, NULL, 164, TRUE),
  -- #165 Ledyba
  (502, 165, NULL, 165, TRUE),
  -- #166 Ledian
  (502, 166, NULL, 166, TRUE),
  -- #167 Spinarak
  (502, 167, NULL, 167, TRUE),
  -- #168 Ariados
  (502, 168, NULL, 168, TRUE),
  -- #169 Crobat
  (502, 169, NULL, 169, TRUE),
  -- #170 Chinchou
  (502, 170, NULL, 170, TRUE),
  -- #171 Lanturn
  (502, 171, NULL, 171, TRUE),
  -- #172 Pichu
  (502, 172, NULL, 172, TRUE),
  -- #173 Cleffa
  (502, 173, NULL, 173, TRUE),
  -- #174 Igglybuff
  (502, 174, NULL, 174, TRUE),
  -- #175 Togepi
  (502, 175, NULL, 175, TRUE),
  -- #176 Togetic
  (502, 176, NULL, 176, TRUE),
  -- #177 Natu
  (502, 177, NULL, 177, TRUE),
  -- #178 Xatu
  (502, 178, NULL, 178, TRUE),
  -- #179 Mareep
  (502, 179, NULL, 179, TRUE),
  -- #180 Flaaffy
  (502, 180, NULL, 180, TRUE),
  -- #181 Ampharos
  (502, 181, NULL, 181, TRUE),
  -- #182 Bellossom
  (502, 182, NULL, 182, TRUE),
  -- #183 Marill
  (502, 183, NULL, 183, TRUE),
  -- #184 Azumarill
  (502, 184, NULL, 184, TRUE),
  -- #185 Sudowoodo
  (502, 185, NULL, 185, TRUE),
  -- #186 Politoed
  (502, 186, NULL, 186, TRUE),
  -- #187 Hoppip
  (502, 187, NULL, 187, TRUE),
  -- #188 Skiploom
  (502, 188, NULL, 188, TRUE),
  -- #189 Jumpluff
  (502, 189, NULL, 189, TRUE),
  -- #190 Aipom
  (502, 190, NULL, 190, TRUE),
  -- #191 Sunkern
  (502, 191, NULL, 191, TRUE),
  -- #192 Sunflora
  (502, 192, NULL, 192, TRUE),
  -- #193 Yanma
  (502, 193, NULL, 193, TRUE),
  -- #194 Wooper
  (502, 194, NULL, 194, TRUE),
  -- #195 Quagsire
  (502, 195, NULL, 195, TRUE),
  -- #196 Espeon
  (502, 196, NULL, 196, TRUE),
  -- #197 Umbreon
  (502, 197, NULL, 197, TRUE),
  -- #198 Murkrow
  (502, 198, NULL, 198, TRUE),
  -- #199 Slowking
  (502, 199, NULL, 199, TRUE),
  -- #200 Misdreavus
  (502, 200, NULL, 200, TRUE),
  -- #201 Unown
  (502, 201, NULL, 201, TRUE),
  -- #202 Wobbuffet
  (502, 202, NULL, 202, TRUE),
  -- #203 Girafarig
  (502, 203, NULL, 203, TRUE),
  -- #204 Pineco
  (502, 204, NULL, 204, TRUE),
  -- #205 Forretress
  (502, 205, NULL, 205, TRUE),
  -- #206 Dunsparce
  (502, 206, NULL, 206, TRUE),
  -- #207 Gligar
  (502, 207, NULL, 207, TRUE),
  -- #208 Steelix
  (502, 208, NULL, 208, TRUE),
  -- #209 Snubbull
  (502, 209, NULL, 209, TRUE),
  -- #210 Granbull
  (502, 210, NULL, 210, TRUE),
  -- #211 Qwilfish
  (502, 211, NULL, 211, TRUE),
  -- #212 Scizor
  (502, 212, NULL, 212, TRUE),
  -- #213 Shuckle
  (502, 213, NULL, 213, TRUE),
  -- #214 Heracross
  (502, 214, NULL, 214, TRUE),
  -- #215 Sneasel
  (502, 215, NULL, 215, TRUE),
  -- #216 Teddiursa
  (502, 216, NULL, 216, TRUE),
  -- #217 Ursaring
  (502, 217, NULL, 217, TRUE),
  -- #218 Slugma
  (502, 218, NULL, 218, TRUE),
  -- #219 Magcargo
  (502, 219, NULL, 219, TRUE),
  -- #220 Swinub
  (502, 220, NULL, 220, TRUE),
  -- #221 Piloswine
  (502, 221, NULL, 221, TRUE),
  -- #222 Corsola
  (502, 222, NULL, 222, TRUE),
  -- #223 Remoraid
  (502, 223, NULL, 223, TRUE),
  -- #224 Octillery
  (502, 224, NULL, 224, TRUE),
  -- #225 Delibird
  (502, 225, NULL, 225, TRUE),
  -- #226 Mantine
  (502, 226, NULL, 226, TRUE),
  -- #227 Skarmory
  (502, 227, NULL, 227, TRUE),
  -- #228 Houndour
  (502, 228, NULL, 228, TRUE),
  -- #229 Houndoom
  (502, 229, NULL, 229, TRUE),
  -- #230 Kingdra
  (502, 230, NULL, 230, TRUE),
  -- #231 Phanpy
  (502, 231, NULL, 231, TRUE),
  -- #232 Donphan
  (502, 232, NULL, 232, TRUE),
  -- #233 Porygon2
  (502, 233, NULL, 233, TRUE),
  -- #234 Stantler
  (502, 234, NULL, 234, TRUE),
  -- #235 Smeargle
  (502, 235, NULL, 235, TRUE),
  -- #236 Tyrogue
  (502, 236, NULL, 236, TRUE),
  -- #237 Hitmontop
  (502, 237, NULL, 237, TRUE),
  -- #238 Smoochum
  (502, 238, NULL, 238, TRUE),
  -- #239 Elekid
  (502, 239, NULL, 239, TRUE),
  -- #240 Magby
  (502, 240, NULL, 240, TRUE),
  -- #241 Miltank
  (502, 241, NULL, 241, TRUE),
  -- #242 Blissey
  (502, 242, NULL, 242, TRUE),
  -- #243 Raikou
  (502, 243, NULL, 243, TRUE),
  -- #244 Entei
  (502, 244, NULL, 244, TRUE),
  -- #245 Suicune
  (502, 245, NULL, 245, TRUE),
  -- #246 Larvitar
  (502, 246, NULL, 246, TRUE),
  -- #247 Pupitar
  (502, 247, NULL, 247, TRUE),
  -- #248 Tyranitar
  (502, 248, NULL, 248, TRUE),
  -- #249 Lugia
  (502, 249, NULL, 249, TRUE),
  -- #250 Ho-Oh
  (502, 250, NULL, 250, TRUE),
  -- #251 Celebi
  (502, 251, NULL, 251, FALSE),
  -- #252 Treecko
  (502, 252, NULL, 252, TRUE),
  -- #253 Grovyle
  (502, 253, NULL, 253, TRUE),
  -- #254 Sceptile
  (502, 254, NULL, 254, TRUE),
  -- #255 Torchic
  (502, 255, NULL, 255, TRUE),
  -- #256 Combusken
  (502, 256, NULL, 256, TRUE),
  -- #257 Blaziken
  (502, 257, NULL, 257, TRUE),
  -- #258 Mudkip
  (502, 258, NULL, 258, TRUE),
  -- #259 Marshtomp
  (502, 259, NULL, 259, TRUE),
  -- #260 Swampert
  (502, 260, NULL, 260, TRUE),
  -- #261 Poochyena
  (502, 261, NULL, 261, TRUE),
  -- #262 Mightyena
  (502, 262, NULL, 262, TRUE),
  -- #263 Zigzagoon
  (502, 263, NULL, 263, TRUE),
  -- #264 Linoone
  (502, 264, NULL, 264, TRUE),
  -- #265 Wurmple
  (502, 265, NULL, 265, TRUE),
  -- #266 Silcoon
  (502, 266, NULL, 266, TRUE),
  -- #267 Beautifly
  (502, 267, NULL, 267, TRUE),
  -- #268 Cascoon
  (502, 268, NULL, 268, TRUE),
  -- #269 Dustox
  (502, 269, NULL, 269, TRUE),
  -- #270 Lotad
  (502, 270, NULL, 270, TRUE),
  -- #271 Lombre
  (502, 271, NULL, 271, TRUE),
  -- #272 Ludicolo
  (502, 272, NULL, 272, TRUE),
  -- #273 Seedot
  (502, 273, NULL, 273, TRUE),
  -- #274 Nuzleaf
  (502, 274, NULL, 274, TRUE),
  -- #275 Shiftry
  (502, 275, NULL, 275, TRUE),
  -- #276 Taillow
  (502, 276, NULL, 276, TRUE),
  -- #277 Swellow
  (502, 277, NULL, 277, TRUE),
  -- #278 Wingull
  (502, 278, NULL, 278, TRUE),
  -- #279 Pelipper
  (502, 279, NULL, 279, TRUE),
  -- #280 Ralts
  (502, 280, NULL, 280, TRUE),
  -- #281 Kirlia
  (502, 281, NULL, 281, TRUE),
  -- #282 Gardevoir
  (502, 282, NULL, 282, TRUE),
  -- #283 Surskit
  (502, 283, NULL, 283, TRUE),
  -- #284 Masquerain
  (502, 284, NULL, 284, TRUE),
  -- #285 Shroomish
  (502, 285, NULL, 285, TRUE),
  -- #286 Breloom
  (502, 286, NULL, 286, TRUE),
  -- #287 Slakoth
  (502, 287, NULL, 287, TRUE),
  -- #288 Vigoroth
  (502, 288, NULL, 288, TRUE),
  -- #289 Slaking
  (502, 289, NULL, 289, TRUE),
  -- #290 Nincada
  (502, 290, NULL, 290, TRUE),
  -- #291 Ninjask
  (502, 291, NULL, 291, TRUE),
  -- #292 Shedinja
  (502, 292, NULL, 292, TRUE),
  -- #293 Whismur
  (502, 293, NULL, 293, TRUE),
  -- #294 Loudred
  (502, 294, NULL, 294, TRUE),
  -- #295 Exploud
  (502, 295, NULL, 295, TRUE),
  -- #296 Makuhita
  (502, 296, NULL, 296, TRUE),
  -- #297 Hariyama
  (502, 297, NULL, 297, TRUE),
  -- #298 Azurill
  (502, 298, NULL, 298, TRUE),
  -- #299 Nosepass
  (502, 299, NULL, 299, TRUE),
  -- #300 Skitty
  (502, 300, NULL, 300, TRUE),
  -- #301 Delcatty
  (502, 301, NULL, 301, TRUE),
  -- #302 Sableye
  (502, 302, NULL, 302, TRUE),
  -- #303 Mawile
  (502, 303, NULL, 303, TRUE),
  -- #304 Aron
  (502, 304, NULL, 304, TRUE),
  -- #305 Lairon
  (502, 305, NULL, 305, TRUE),
  -- #306 Aggron
  (502, 306, NULL, 306, TRUE),
  -- #307 Meditite
  (502, 307, NULL, 307, TRUE),
  -- #308 Medicham
  (502, 308, NULL, 308, TRUE),
  -- #309 Electrike
  (502, 309, NULL, 309, TRUE),
  -- #310 Manectric
  (502, 310, NULL, 310, TRUE),
  -- #311 Plusle
  (502, 311, NULL, 311, TRUE),
  -- #312 Minun
  (502, 312, NULL, 312, TRUE),
  -- #313 Volbeat
  (502, 313, NULL, 313, TRUE),
  -- #314 Illumise
  (502, 314, NULL, 314, TRUE),
  -- #315 Roselia
  (502, 315, NULL, 315, TRUE),
  -- #316 Gulpin
  (502, 316, NULL, 316, TRUE),
  -- #317 Swalot
  (502, 317, NULL, 317, TRUE),
  -- #318 Carvanha
  (502, 318, NULL, 318, TRUE),
  -- #319 Sharpedo
  (502, 319, NULL, 319, TRUE),
  -- #320 Wailmer
  (502, 320, NULL, 320, TRUE),
  -- #321 Wailord
  (502, 321, NULL, 321, TRUE),
  -- #322 Numel
  (502, 322, NULL, 322, TRUE),
  -- #323 Camerupt
  (502, 323, NULL, 323, TRUE),
  -- #324 Torkoal
  (502, 324, NULL, 324, TRUE),
  -- #325 Spoink
  (502, 325, NULL, 325, TRUE),
  -- #326 Grumpig
  (502, 326, NULL, 326, TRUE),
  -- #327 Spinda
  (502, 327, NULL, 327, TRUE),
  -- #328 Trapinch
  (502, 328, NULL, 328, TRUE),
  -- #329 Vibrava
  (502, 329, NULL, 329, TRUE),
  -- #330 Flygon
  (502, 330, NULL, 330, TRUE),
  -- #331 Cacnea
  (502, 331, NULL, 331, TRUE),
  -- #332 Cacturne
  (502, 332, NULL, 332, TRUE),
  -- #333 Swablu
  (502, 333, NULL, 333, TRUE),
  -- #334 Altaria
  (502, 334, NULL, 334, TRUE),
  -- #335 Zangoose
  (502, 335, NULL, 335, TRUE),
  -- #336 Seviper
  (502, 336, NULL, 336, TRUE),
  -- #337 Lunatone
  (502, 337, NULL, 337, TRUE),
  -- #338 Solrock
  (502, 338, NULL, 338, TRUE),
  -- #339 Barboach
  (502, 339, NULL, 339, TRUE),
  -- #340 Whiscash
  (502, 340, NULL, 340, TRUE),
  -- #341 Corphish
  (502, 341, NULL, 341, TRUE),
  -- #342 Crawdaunt
  (502, 342, NULL, 342, TRUE),
  -- #343 Baltoy
  (502, 343, NULL, 343, TRUE),
  -- #344 Claydol
  (502, 344, NULL, 344, TRUE),
  -- #345 Lileep
  (502, 345, NULL, 345, TRUE),
  -- #346 Cradily
  (502, 346, NULL, 346, TRUE),
  -- #347 Anorith
  (502, 347, NULL, 347, TRUE),
  -- #348 Armaldo
  (502, 348, NULL, 348, TRUE),
  -- #349 Feebas
  (502, 349, NULL, 349, TRUE),
  -- #350 Milotic
  (502, 350, NULL, 350, TRUE),
  -- #351 Castform
  (502, 351, NULL, 351, TRUE),
  -- #352 Kecleon
  (502, 352, NULL, 352, TRUE),
  -- #353 Shuppet
  (502, 353, NULL, 353, TRUE),
  -- #354 Banette
  (502, 354, NULL, 354, TRUE),
  -- #355 Duskull
  (502, 355, NULL, 355, TRUE),
  -- #356 Dusclops
  (502, 356, NULL, 356, TRUE),
  -- #357 Tropius
  (502, 357, NULL, 357, TRUE),
  -- #358 Chimecho
  (502, 358, NULL, 358, TRUE),
  -- #359 Absol
  (502, 359, NULL, 359, TRUE),
  -- #360 Wynaut
  (502, 360, NULL, 360, TRUE),
  -- #361 Snorunt
  (502, 361, NULL, 361, TRUE),
  -- #362 Glalie
  (502, 362, NULL, 362, TRUE),
  -- #363 Spheal
  (502, 363, NULL, 363, TRUE),
  -- #364 Sealeo
  (502, 364, NULL, 364, TRUE),
  -- #365 Walrein
  (502, 365, NULL, 365, TRUE),
  -- #366 Clamperl
  (502, 366, NULL, 366, TRUE),
  -- #367 Huntail
  (502, 367, NULL, 367, TRUE),
  -- #368 Gorebyss
  (502, 368, NULL, 368, TRUE),
  -- #369 Relicanth
  (502, 369, NULL, 369, TRUE),
  -- #370 Luvdisc
  (502, 370, NULL, 370, TRUE),
  -- #371 Bagon
  (502, 371, NULL, 371, TRUE),
  -- #372 Shelgon
  (502, 372, NULL, 372, TRUE),
  -- #373 Salamence
  (502, 373, NULL, 373, TRUE),
  -- #374 Beldum
  (502, 374, NULL, 374, TRUE),
  -- #375 Metang
  (502, 375, NULL, 375, TRUE),
  -- #376 Metagross
  (502, 376, NULL, 376, TRUE),
  -- #377 Regirock
  (502, 377, NULL, 377, TRUE),
  -- #378 Regice
  (502, 378, NULL, 378, TRUE),
  -- #379 Registeel
  (502, 379, NULL, 379, TRUE),
  -- #380 Latias
  (502, 380, NULL, 380, TRUE),
  -- #381 Latios
  (502, 381, NULL, 381, TRUE),
  -- #382 Kyogre
  (502, 382, NULL, 382, TRUE),
  -- #383 Groudon
  (502, 383, NULL, 383, TRUE),
  -- #384 Rayquaza
  (502, 384, NULL, 384, TRUE),
  -- #385 Jirachi
  (502, 385, NULL, 385, FALSE),
  -- #386 Deoxys
  (502, 386, NULL, 386, FALSE);
