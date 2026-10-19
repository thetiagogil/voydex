-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by National Pokedex number.
-- Cross-check: Bulbapedia National Pokedex page, Serebii National Pokedex, and PokemonDB National Pokedex.
-- ============================================================================
-- File Scope
-- ============================================================================
-- National Pokedex entries for X / Y.
-- National Pokedex contains 721 species for this version group; Mythical species are source-visible but not required for default completion.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Bulbasaur
  (1304, 1, NULL, 1, TRUE),
  -- #002 Ivysaur
  (1304, 2, NULL, 2, TRUE),
  -- #003 Venusaur
  (1304, 3, NULL, 3, TRUE),
  -- #004 Charmander
  (1304, 4, NULL, 4, TRUE),
  -- #005 Charmeleon
  (1304, 5, NULL, 5, TRUE),
  -- #006 Charizard
  (1304, 6, NULL, 6, TRUE),
  -- #007 Squirtle
  (1304, 7, NULL, 7, TRUE),
  -- #008 Wartortle
  (1304, 8, NULL, 8, TRUE),
  -- #009 Blastoise
  (1304, 9, NULL, 9, TRUE),
  -- #010 Caterpie
  (1304, 10, NULL, 10, TRUE),
  -- #011 Metapod
  (1304, 11, NULL, 11, TRUE),
  -- #012 Butterfree
  (1304, 12, NULL, 12, TRUE),
  -- #013 Weedle
  (1304, 13, NULL, 13, TRUE),
  -- #014 Kakuna
  (1304, 14, NULL, 14, TRUE),
  -- #015 Beedrill
  (1304, 15, NULL, 15, TRUE),
  -- #016 Pidgey
  (1304, 16, NULL, 16, TRUE),
  -- #017 Pidgeotto
  (1304, 17, NULL, 17, TRUE),
  -- #018 Pidgeot
  (1304, 18, NULL, 18, TRUE),
  -- #019 Rattata
  (1304, 19, NULL, 19, TRUE),
  -- #020 Raticate
  (1304, 20, NULL, 20, TRUE),
  -- #021 Spearow
  (1304, 21, NULL, 21, TRUE),
  -- #022 Fearow
  (1304, 22, NULL, 22, TRUE),
  -- #023 Ekans
  (1304, 23, NULL, 23, TRUE),
  -- #024 Arbok
  (1304, 24, NULL, 24, TRUE),
  -- #025 Pikachu
  (1304, 25, NULL, 25, TRUE),
  -- #026 Raichu
  (1304, 26, NULL, 26, TRUE),
  -- #027 Sandshrew
  (1304, 27, NULL, 27, TRUE),
  -- #028 Sandslash
  (1304, 28, NULL, 28, TRUE),
  -- #029 Nidoran F
  (1304, 29, NULL, 29, TRUE),
  -- #030 Nidorina
  (1304, 30, NULL, 30, TRUE),
  -- #031 Nidoqueen
  (1304, 31, NULL, 31, TRUE),
  -- #032 Nidoran M
  (1304, 32, NULL, 32, TRUE),
  -- #033 Nidorino
  (1304, 33, NULL, 33, TRUE),
  -- #034 Nidoking
  (1304, 34, NULL, 34, TRUE),
  -- #035 Clefairy
  (1304, 35, NULL, 35, TRUE),
  -- #036 Clefable
  (1304, 36, NULL, 36, TRUE),
  -- #037 Vulpix
  (1304, 37, NULL, 37, TRUE),
  -- #038 Ninetales
  (1304, 38, NULL, 38, TRUE),
  -- #039 Jigglypuff
  (1304, 39, NULL, 39, TRUE),
  -- #040 Wigglytuff
  (1304, 40, NULL, 40, TRUE),
  -- #041 Zubat
  (1304, 41, NULL, 41, TRUE),
  -- #042 Golbat
  (1304, 42, NULL, 42, TRUE),
  -- #043 Oddish
  (1304, 43, NULL, 43, TRUE),
  -- #044 Gloom
  (1304, 44, NULL, 44, TRUE),
  -- #045 Vileplume
  (1304, 45, NULL, 45, TRUE),
  -- #046 Paras
  (1304, 46, NULL, 46, TRUE),
  -- #047 Parasect
  (1304, 47, NULL, 47, TRUE),
  -- #048 Venonat
  (1304, 48, NULL, 48, TRUE),
  -- #049 Venomoth
  (1304, 49, NULL, 49, TRUE),
  -- #050 Diglett
  (1304, 50, NULL, 50, TRUE),
  -- #051 Dugtrio
  (1304, 51, NULL, 51, TRUE),
  -- #052 Meowth
  (1304, 52, NULL, 52, TRUE),
  -- #053 Persian
  (1304, 53, NULL, 53, TRUE),
  -- #054 Psyduck
  (1304, 54, NULL, 54, TRUE),
  -- #055 Golduck
  (1304, 55, NULL, 55, TRUE),
  -- #056 Mankey
  (1304, 56, NULL, 56, TRUE),
  -- #057 Primeape
  (1304, 57, NULL, 57, TRUE),
  -- #058 Growlithe
  (1304, 58, NULL, 58, TRUE),
  -- #059 Arcanine
  (1304, 59, NULL, 59, TRUE),
  -- #060 Poliwag
  (1304, 60, NULL, 60, TRUE),
  -- #061 Poliwhirl
  (1304, 61, NULL, 61, TRUE),
  -- #062 Poliwrath
  (1304, 62, NULL, 62, TRUE),
  -- #063 Abra
  (1304, 63, NULL, 63, TRUE),
  -- #064 Kadabra
  (1304, 64, NULL, 64, TRUE),
  -- #065 Alakazam
  (1304, 65, NULL, 65, TRUE),
  -- #066 Machop
  (1304, 66, NULL, 66, TRUE),
  -- #067 Machoke
  (1304, 67, NULL, 67, TRUE),
  -- #068 Machamp
  (1304, 68, NULL, 68, TRUE),
  -- #069 Bellsprout
  (1304, 69, NULL, 69, TRUE),
  -- #070 Weepinbell
  (1304, 70, NULL, 70, TRUE),
  -- #071 Victreebel
  (1304, 71, NULL, 71, TRUE),
  -- #072 Tentacool
  (1304, 72, NULL, 72, TRUE),
  -- #073 Tentacruel
  (1304, 73, NULL, 73, TRUE),
  -- #074 Geodude
  (1304, 74, NULL, 74, TRUE),
  -- #075 Graveler
  (1304, 75, NULL, 75, TRUE),
  -- #076 Golem
  (1304, 76, NULL, 76, TRUE),
  -- #077 Ponyta
  (1304, 77, NULL, 77, TRUE),
  -- #078 Rapidash
  (1304, 78, NULL, 78, TRUE),
  -- #079 Slowpoke
  (1304, 79, NULL, 79, TRUE),
  -- #080 Slowbro
  (1304, 80, NULL, 80, TRUE),
  -- #081 Magnemite
  (1304, 81, NULL, 81, TRUE),
  -- #082 Magneton
  (1304, 82, NULL, 82, TRUE),
  -- #083 Farfetch'd
  (1304, 83, NULL, 83, TRUE),
  -- #084 Doduo
  (1304, 84, NULL, 84, TRUE),
  -- #085 Dodrio
  (1304, 85, NULL, 85, TRUE),
  -- #086 Seel
  (1304, 86, NULL, 86, TRUE),
  -- #087 Dewgong
  (1304, 87, NULL, 87, TRUE),
  -- #088 Grimer
  (1304, 88, NULL, 88, TRUE),
  -- #089 Muk
  (1304, 89, NULL, 89, TRUE),
  -- #090 Shellder
  (1304, 90, NULL, 90, TRUE),
  -- #091 Cloyster
  (1304, 91, NULL, 91, TRUE),
  -- #092 Gastly
  (1304, 92, NULL, 92, TRUE),
  -- #093 Haunter
  (1304, 93, NULL, 93, TRUE),
  -- #094 Gengar
  (1304, 94, NULL, 94, TRUE),
  -- #095 Onix
  (1304, 95, NULL, 95, TRUE),
  -- #096 Drowzee
  (1304, 96, NULL, 96, TRUE),
  -- #097 Hypno
  (1304, 97, NULL, 97, TRUE),
  -- #098 Krabby
  (1304, 98, NULL, 98, TRUE),
  -- #099 Kingler
  (1304, 99, NULL, 99, TRUE),
  -- #100 Voltorb
  (1304, 100, NULL, 100, TRUE),
  -- #101 Electrode
  (1304, 101, NULL, 101, TRUE),
  -- #102 Exeggcute
  (1304, 102, NULL, 102, TRUE),
  -- #103 Exeggutor
  (1304, 103, NULL, 103, TRUE),
  -- #104 Cubone
  (1304, 104, NULL, 104, TRUE),
  -- #105 Marowak
  (1304, 105, NULL, 105, TRUE),
  -- #106 Hitmonlee
  (1304, 106, NULL, 106, TRUE),
  -- #107 Hitmonchan
  (1304, 107, NULL, 107, TRUE),
  -- #108 Lickitung
  (1304, 108, NULL, 108, TRUE),
  -- #109 Koffing
  (1304, 109, NULL, 109, TRUE),
  -- #110 Weezing
  (1304, 110, NULL, 110, TRUE),
  -- #111 Rhyhorn
  (1304, 111, NULL, 111, TRUE),
  -- #112 Rhydon
  (1304, 112, NULL, 112, TRUE),
  -- #113 Chansey
  (1304, 113, NULL, 113, TRUE),
  -- #114 Tangela
  (1304, 114, NULL, 114, TRUE),
  -- #115 Kangaskhan
  (1304, 115, NULL, 115, TRUE),
  -- #116 Horsea
  (1304, 116, NULL, 116, TRUE),
  -- #117 Seadra
  (1304, 117, NULL, 117, TRUE),
  -- #118 Goldeen
  (1304, 118, NULL, 118, TRUE),
  -- #119 Seaking
  (1304, 119, NULL, 119, TRUE),
  -- #120 Staryu
  (1304, 120, NULL, 120, TRUE),
  -- #121 Starmie
  (1304, 121, NULL, 121, TRUE),
  -- #122 Mr. Mime
  (1304, 122, NULL, 122, TRUE),
  -- #123 Scyther
  (1304, 123, NULL, 123, TRUE),
  -- #124 Jynx
  (1304, 124, NULL, 124, TRUE),
  -- #125 Electabuzz
  (1304, 125, NULL, 125, TRUE),
  -- #126 Magmar
  (1304, 126, NULL, 126, TRUE),
  -- #127 Pinsir
  (1304, 127, NULL, 127, TRUE),
  -- #128 Tauros
  (1304, 128, NULL, 128, TRUE),
  -- #129 Magikarp
  (1304, 129, NULL, 129, TRUE),
  -- #130 Gyarados
  (1304, 130, NULL, 130, TRUE),
  -- #131 Lapras
  (1304, 131, NULL, 131, TRUE),
  -- #132 Ditto
  (1304, 132, NULL, 132, TRUE),
  -- #133 Eevee
  (1304, 133, NULL, 133, TRUE),
  -- #134 Vaporeon
  (1304, 134, NULL, 134, TRUE),
  -- #135 Jolteon
  (1304, 135, NULL, 135, TRUE),
  -- #136 Flareon
  (1304, 136, NULL, 136, TRUE),
  -- #137 Porygon
  (1304, 137, NULL, 137, TRUE),
  -- #138 Omanyte
  (1304, 138, NULL, 138, TRUE),
  -- #139 Omastar
  (1304, 139, NULL, 139, TRUE),
  -- #140 Kabuto
  (1304, 140, NULL, 140, TRUE),
  -- #141 Kabutops
  (1304, 141, NULL, 141, TRUE),
  -- #142 Aerodactyl
  (1304, 142, NULL, 142, TRUE),
  -- #143 Snorlax
  (1304, 143, NULL, 143, TRUE),
  -- #144 Articuno
  (1304, 144, NULL, 144, TRUE),
  -- #145 Zapdos
  (1304, 145, NULL, 145, TRUE),
  -- #146 Moltres
  (1304, 146, NULL, 146, TRUE),
  -- #147 Dratini
  (1304, 147, NULL, 147, TRUE),
  -- #148 Dragonair
  (1304, 148, NULL, 148, TRUE),
  -- #149 Dragonite
  (1304, 149, NULL, 149, TRUE),
  -- #150 Mewtwo
  (1304, 150, NULL, 150, TRUE),
  -- #151 Mew
  (1304, 151, NULL, 151, FALSE),
  -- #152 Chikorita
  (1304, 152, NULL, 152, TRUE),
  -- #153 Bayleef
  (1304, 153, NULL, 153, TRUE),
  -- #154 Meganium
  (1304, 154, NULL, 154, TRUE),
  -- #155 Cyndaquil
  (1304, 155, NULL, 155, TRUE),
  -- #156 Quilava
  (1304, 156, NULL, 156, TRUE),
  -- #157 Typhlosion
  (1304, 157, NULL, 157, TRUE),
  -- #158 Totodile
  (1304, 158, NULL, 158, TRUE),
  -- #159 Croconaw
  (1304, 159, NULL, 159, TRUE),
  -- #160 Feraligatr
  (1304, 160, NULL, 160, TRUE),
  -- #161 Sentret
  (1304, 161, NULL, 161, TRUE),
  -- #162 Furret
  (1304, 162, NULL, 162, TRUE),
  -- #163 Hoothoot
  (1304, 163, NULL, 163, TRUE),
  -- #164 Noctowl
  (1304, 164, NULL, 164, TRUE),
  -- #165 Ledyba
  (1304, 165, NULL, 165, TRUE),
  -- #166 Ledian
  (1304, 166, NULL, 166, TRUE),
  -- #167 Spinarak
  (1304, 167, NULL, 167, TRUE),
  -- #168 Ariados
  (1304, 168, NULL, 168, TRUE),
  -- #169 Crobat
  (1304, 169, NULL, 169, TRUE),
  -- #170 Chinchou
  (1304, 170, NULL, 170, TRUE),
  -- #171 Lanturn
  (1304, 171, NULL, 171, TRUE),
  -- #172 Pichu
  (1304, 172, NULL, 172, TRUE),
  -- #173 Cleffa
  (1304, 173, NULL, 173, TRUE),
  -- #174 Igglybuff
  (1304, 174, NULL, 174, TRUE),
  -- #175 Togepi
  (1304, 175, NULL, 175, TRUE),
  -- #176 Togetic
  (1304, 176, NULL, 176, TRUE),
  -- #177 Natu
  (1304, 177, NULL, 177, TRUE),
  -- #178 Xatu
  (1304, 178, NULL, 178, TRUE),
  -- #179 Mareep
  (1304, 179, NULL, 179, TRUE),
  -- #180 Flaaffy
  (1304, 180, NULL, 180, TRUE),
  -- #181 Ampharos
  (1304, 181, NULL, 181, TRUE),
  -- #182 Bellossom
  (1304, 182, NULL, 182, TRUE),
  -- #183 Marill
  (1304, 183, NULL, 183, TRUE),
  -- #184 Azumarill
  (1304, 184, NULL, 184, TRUE),
  -- #185 Sudowoodo
  (1304, 185, NULL, 185, TRUE),
  -- #186 Politoed
  (1304, 186, NULL, 186, TRUE),
  -- #187 Hoppip
  (1304, 187, NULL, 187, TRUE),
  -- #188 Skiploom
  (1304, 188, NULL, 188, TRUE),
  -- #189 Jumpluff
  (1304, 189, NULL, 189, TRUE),
  -- #190 Aipom
  (1304, 190, NULL, 190, TRUE),
  -- #191 Sunkern
  (1304, 191, NULL, 191, TRUE),
  -- #192 Sunflora
  (1304, 192, NULL, 192, TRUE),
  -- #193 Yanma
  (1304, 193, NULL, 193, TRUE),
  -- #194 Wooper
  (1304, 194, NULL, 194, TRUE),
  -- #195 Quagsire
  (1304, 195, NULL, 195, TRUE),
  -- #196 Espeon
  (1304, 196, NULL, 196, TRUE),
  -- #197 Umbreon
  (1304, 197, NULL, 197, TRUE),
  -- #198 Murkrow
  (1304, 198, NULL, 198, TRUE),
  -- #199 Slowking
  (1304, 199, NULL, 199, TRUE),
  -- #200 Misdreavus
  (1304, 200, NULL, 200, TRUE),
  -- #201 Unown
  (1304, 201, NULL, 201, TRUE),
  -- #202 Wobbuffet
  (1304, 202, NULL, 202, TRUE),
  -- #203 Girafarig
  (1304, 203, NULL, 203, TRUE),
  -- #204 Pineco
  (1304, 204, NULL, 204, TRUE),
  -- #205 Forretress
  (1304, 205, NULL, 205, TRUE),
  -- #206 Dunsparce
  (1304, 206, NULL, 206, TRUE),
  -- #207 Gligar
  (1304, 207, NULL, 207, TRUE),
  -- #208 Steelix
  (1304, 208, NULL, 208, TRUE),
  -- #209 Snubbull
  (1304, 209, NULL, 209, TRUE),
  -- #210 Granbull
  (1304, 210, NULL, 210, TRUE),
  -- #211 Qwilfish
  (1304, 211, NULL, 211, TRUE),
  -- #212 Scizor
  (1304, 212, NULL, 212, TRUE),
  -- #213 Shuckle
  (1304, 213, NULL, 213, TRUE),
  -- #214 Heracross
  (1304, 214, NULL, 214, TRUE),
  -- #215 Sneasel
  (1304, 215, NULL, 215, TRUE),
  -- #216 Teddiursa
  (1304, 216, NULL, 216, TRUE),
  -- #217 Ursaring
  (1304, 217, NULL, 217, TRUE),
  -- #218 Slugma
  (1304, 218, NULL, 218, TRUE),
  -- #219 Magcargo
  (1304, 219, NULL, 219, TRUE),
  -- #220 Swinub
  (1304, 220, NULL, 220, TRUE),
  -- #221 Piloswine
  (1304, 221, NULL, 221, TRUE),
  -- #222 Corsola
  (1304, 222, NULL, 222, TRUE),
  -- #223 Remoraid
  (1304, 223, NULL, 223, TRUE),
  -- #224 Octillery
  (1304, 224, NULL, 224, TRUE),
  -- #225 Delibird
  (1304, 225, NULL, 225, TRUE),
  -- #226 Mantine
  (1304, 226, NULL, 226, TRUE),
  -- #227 Skarmory
  (1304, 227, NULL, 227, TRUE),
  -- #228 Houndour
  (1304, 228, NULL, 228, TRUE),
  -- #229 Houndoom
  (1304, 229, NULL, 229, TRUE),
  -- #230 Kingdra
  (1304, 230, NULL, 230, TRUE),
  -- #231 Phanpy
  (1304, 231, NULL, 231, TRUE),
  -- #232 Donphan
  (1304, 232, NULL, 232, TRUE),
  -- #233 Porygon2
  (1304, 233, NULL, 233, TRUE),
  -- #234 Stantler
  (1304, 234, NULL, 234, TRUE),
  -- #235 Smeargle
  (1304, 235, NULL, 235, TRUE),
  -- #236 Tyrogue
  (1304, 236, NULL, 236, TRUE),
  -- #237 Hitmontop
  (1304, 237, NULL, 237, TRUE),
  -- #238 Smoochum
  (1304, 238, NULL, 238, TRUE),
  -- #239 Elekid
  (1304, 239, NULL, 239, TRUE),
  -- #240 Magby
  (1304, 240, NULL, 240, TRUE),
  -- #241 Miltank
  (1304, 241, NULL, 241, TRUE),
  -- #242 Blissey
  (1304, 242, NULL, 242, TRUE),
  -- #243 Raikou
  (1304, 243, NULL, 243, TRUE),
  -- #244 Entei
  (1304, 244, NULL, 244, TRUE),
  -- #245 Suicune
  (1304, 245, NULL, 245, TRUE),
  -- #246 Larvitar
  (1304, 246, NULL, 246, TRUE),
  -- #247 Pupitar
  (1304, 247, NULL, 247, TRUE),
  -- #248 Tyranitar
  (1304, 248, NULL, 248, TRUE),
  -- #249 Lugia
  (1304, 249, NULL, 249, TRUE),
  -- #250 Ho-Oh
  (1304, 250, NULL, 250, TRUE),
  -- #251 Celebi
  (1304, 251, NULL, 251, FALSE),
  -- #252 Treecko
  (1304, 252, NULL, 252, TRUE),
  -- #253 Grovyle
  (1304, 253, NULL, 253, TRUE),
  -- #254 Sceptile
  (1304, 254, NULL, 254, TRUE),
  -- #255 Torchic
  (1304, 255, NULL, 255, TRUE),
  -- #256 Combusken
  (1304, 256, NULL, 256, TRUE),
  -- #257 Blaziken
  (1304, 257, NULL, 257, TRUE),
  -- #258 Mudkip
  (1304, 258, NULL, 258, TRUE),
  -- #259 Marshtomp
  (1304, 259, NULL, 259, TRUE),
  -- #260 Swampert
  (1304, 260, NULL, 260, TRUE),
  -- #261 Poochyena
  (1304, 261, NULL, 261, TRUE),
  -- #262 Mightyena
  (1304, 262, NULL, 262, TRUE),
  -- #263 Zigzagoon
  (1304, 263, NULL, 263, TRUE),
  -- #264 Linoone
  (1304, 264, NULL, 264, TRUE),
  -- #265 Wurmple
  (1304, 265, NULL, 265, TRUE),
  -- #266 Silcoon
  (1304, 266, NULL, 266, TRUE),
  -- #267 Beautifly
  (1304, 267, NULL, 267, TRUE),
  -- #268 Cascoon
  (1304, 268, NULL, 268, TRUE),
  -- #269 Dustox
  (1304, 269, NULL, 269, TRUE),
  -- #270 Lotad
  (1304, 270, NULL, 270, TRUE),
  -- #271 Lombre
  (1304, 271, NULL, 271, TRUE),
  -- #272 Ludicolo
  (1304, 272, NULL, 272, TRUE),
  -- #273 Seedot
  (1304, 273, NULL, 273, TRUE),
  -- #274 Nuzleaf
  (1304, 274, NULL, 274, TRUE),
  -- #275 Shiftry
  (1304, 275, NULL, 275, TRUE),
  -- #276 Taillow
  (1304, 276, NULL, 276, TRUE),
  -- #277 Swellow
  (1304, 277, NULL, 277, TRUE),
  -- #278 Wingull
  (1304, 278, NULL, 278, TRUE),
  -- #279 Pelipper
  (1304, 279, NULL, 279, TRUE),
  -- #280 Ralts
  (1304, 280, NULL, 280, TRUE),
  -- #281 Kirlia
  (1304, 281, NULL, 281, TRUE),
  -- #282 Gardevoir
  (1304, 282, NULL, 282, TRUE),
  -- #283 Surskit
  (1304, 283, NULL, 283, TRUE),
  -- #284 Masquerain
  (1304, 284, NULL, 284, TRUE),
  -- #285 Shroomish
  (1304, 285, NULL, 285, TRUE),
  -- #286 Breloom
  (1304, 286, NULL, 286, TRUE),
  -- #287 Slakoth
  (1304, 287, NULL, 287, TRUE),
  -- #288 Vigoroth
  (1304, 288, NULL, 288, TRUE),
  -- #289 Slaking
  (1304, 289, NULL, 289, TRUE),
  -- #290 Nincada
  (1304, 290, NULL, 290, TRUE),
  -- #291 Ninjask
  (1304, 291, NULL, 291, TRUE),
  -- #292 Shedinja
  (1304, 292, NULL, 292, TRUE),
  -- #293 Whismur
  (1304, 293, NULL, 293, TRUE),
  -- #294 Loudred
  (1304, 294, NULL, 294, TRUE),
  -- #295 Exploud
  (1304, 295, NULL, 295, TRUE),
  -- #296 Makuhita
  (1304, 296, NULL, 296, TRUE),
  -- #297 Hariyama
  (1304, 297, NULL, 297, TRUE),
  -- #298 Azurill
  (1304, 298, NULL, 298, TRUE),
  -- #299 Nosepass
  (1304, 299, NULL, 299, TRUE),
  -- #300 Skitty
  (1304, 300, NULL, 300, TRUE),
  -- #301 Delcatty
  (1304, 301, NULL, 301, TRUE),
  -- #302 Sableye
  (1304, 302, NULL, 302, TRUE),
  -- #303 Mawile
  (1304, 303, NULL, 303, TRUE),
  -- #304 Aron
  (1304, 304, NULL, 304, TRUE),
  -- #305 Lairon
  (1304, 305, NULL, 305, TRUE),
  -- #306 Aggron
  (1304, 306, NULL, 306, TRUE),
  -- #307 Meditite
  (1304, 307, NULL, 307, TRUE),
  -- #308 Medicham
  (1304, 308, NULL, 308, TRUE),
  -- #309 Electrike
  (1304, 309, NULL, 309, TRUE),
  -- #310 Manectric
  (1304, 310, NULL, 310, TRUE),
  -- #311 Plusle
  (1304, 311, NULL, 311, TRUE),
  -- #312 Minun
  (1304, 312, NULL, 312, TRUE),
  -- #313 Volbeat
  (1304, 313, NULL, 313, TRUE),
  -- #314 Illumise
  (1304, 314, NULL, 314, TRUE),
  -- #315 Roselia
  (1304, 315, NULL, 315, TRUE),
  -- #316 Gulpin
  (1304, 316, NULL, 316, TRUE),
  -- #317 Swalot
  (1304, 317, NULL, 317, TRUE),
  -- #318 Carvanha
  (1304, 318, NULL, 318, TRUE),
  -- #319 Sharpedo
  (1304, 319, NULL, 319, TRUE),
  -- #320 Wailmer
  (1304, 320, NULL, 320, TRUE),
  -- #321 Wailord
  (1304, 321, NULL, 321, TRUE),
  -- #322 Numel
  (1304, 322, NULL, 322, TRUE),
  -- #323 Camerupt
  (1304, 323, NULL, 323, TRUE),
  -- #324 Torkoal
  (1304, 324, NULL, 324, TRUE),
  -- #325 Spoink
  (1304, 325, NULL, 325, TRUE),
  -- #326 Grumpig
  (1304, 326, NULL, 326, TRUE),
  -- #327 Spinda
  (1304, 327, NULL, 327, TRUE),
  -- #328 Trapinch
  (1304, 328, NULL, 328, TRUE),
  -- #329 Vibrava
  (1304, 329, NULL, 329, TRUE),
  -- #330 Flygon
  (1304, 330, NULL, 330, TRUE),
  -- #331 Cacnea
  (1304, 331, NULL, 331, TRUE),
  -- #332 Cacturne
  (1304, 332, NULL, 332, TRUE),
  -- #333 Swablu
  (1304, 333, NULL, 333, TRUE),
  -- #334 Altaria
  (1304, 334, NULL, 334, TRUE),
  -- #335 Zangoose
  (1304, 335, NULL, 335, TRUE),
  -- #336 Seviper
  (1304, 336, NULL, 336, TRUE),
  -- #337 Lunatone
  (1304, 337, NULL, 337, TRUE),
  -- #338 Solrock
  (1304, 338, NULL, 338, TRUE),
  -- #339 Barboach
  (1304, 339, NULL, 339, TRUE),
  -- #340 Whiscash
  (1304, 340, NULL, 340, TRUE),
  -- #341 Corphish
  (1304, 341, NULL, 341, TRUE),
  -- #342 Crawdaunt
  (1304, 342, NULL, 342, TRUE),
  -- #343 Baltoy
  (1304, 343, NULL, 343, TRUE),
  -- #344 Claydol
  (1304, 344, NULL, 344, TRUE),
  -- #345 Lileep
  (1304, 345, NULL, 345, TRUE),
  -- #346 Cradily
  (1304, 346, NULL, 346, TRUE),
  -- #347 Anorith
  (1304, 347, NULL, 347, TRUE),
  -- #348 Armaldo
  (1304, 348, NULL, 348, TRUE),
  -- #349 Feebas
  (1304, 349, NULL, 349, TRUE),
  -- #350 Milotic
  (1304, 350, NULL, 350, TRUE),
  -- #351 Castform
  (1304, 351, NULL, 351, TRUE),
  -- #352 Kecleon
  (1304, 352, NULL, 352, TRUE),
  -- #353 Shuppet
  (1304, 353, NULL, 353, TRUE),
  -- #354 Banette
  (1304, 354, NULL, 354, TRUE),
  -- #355 Duskull
  (1304, 355, NULL, 355, TRUE),
  -- #356 Dusclops
  (1304, 356, NULL, 356, TRUE),
  -- #357 Tropius
  (1304, 357, NULL, 357, TRUE),
  -- #358 Chimecho
  (1304, 358, NULL, 358, TRUE),
  -- #359 Absol
  (1304, 359, NULL, 359, TRUE),
  -- #360 Wynaut
  (1304, 360, NULL, 360, TRUE),
  -- #361 Snorunt
  (1304, 361, NULL, 361, TRUE),
  -- #362 Glalie
  (1304, 362, NULL, 362, TRUE),
  -- #363 Spheal
  (1304, 363, NULL, 363, TRUE),
  -- #364 Sealeo
  (1304, 364, NULL, 364, TRUE),
  -- #365 Walrein
  (1304, 365, NULL, 365, TRUE),
  -- #366 Clamperl
  (1304, 366, NULL, 366, TRUE),
  -- #367 Huntail
  (1304, 367, NULL, 367, TRUE),
  -- #368 Gorebyss
  (1304, 368, NULL, 368, TRUE),
  -- #369 Relicanth
  (1304, 369, NULL, 369, TRUE),
  -- #370 Luvdisc
  (1304, 370, NULL, 370, TRUE),
  -- #371 Bagon
  (1304, 371, NULL, 371, TRUE),
  -- #372 Shelgon
  (1304, 372, NULL, 372, TRUE),
  -- #373 Salamence
  (1304, 373, NULL, 373, TRUE),
  -- #374 Beldum
  (1304, 374, NULL, 374, TRUE),
  -- #375 Metang
  (1304, 375, NULL, 375, TRUE),
  -- #376 Metagross
  (1304, 376, NULL, 376, TRUE),
  -- #377 Regirock
  (1304, 377, NULL, 377, TRUE),
  -- #378 Regice
  (1304, 378, NULL, 378, TRUE),
  -- #379 Registeel
  (1304, 379, NULL, 379, TRUE),
  -- #380 Latias
  (1304, 380, NULL, 380, TRUE),
  -- #381 Latios
  (1304, 381, NULL, 381, TRUE),
  -- #382 Kyogre
  (1304, 382, NULL, 382, TRUE),
  -- #383 Groudon
  (1304, 383, NULL, 383, TRUE),
  -- #384 Rayquaza
  (1304, 384, NULL, 384, TRUE),
  -- #385 Jirachi
  (1304, 385, NULL, 385, FALSE),
  -- #386 Deoxys
  (1304, 386, NULL, 386, FALSE),
  -- #387 Turtwig
  (1304, 387, NULL, 387, TRUE),
  -- #388 Grotle
  (1304, 388, NULL, 388, TRUE),
  -- #389 Torterra
  (1304, 389, NULL, 389, TRUE),
  -- #390 Chimchar
  (1304, 390, NULL, 390, TRUE),
  -- #391 Monferno
  (1304, 391, NULL, 391, TRUE),
  -- #392 Infernape
  (1304, 392, NULL, 392, TRUE),
  -- #393 Piplup
  (1304, 393, NULL, 393, TRUE),
  -- #394 Prinplup
  (1304, 394, NULL, 394, TRUE),
  -- #395 Empoleon
  (1304, 395, NULL, 395, TRUE),
  -- #396 Starly
  (1304, 396, NULL, 396, TRUE),
  -- #397 Staravia
  (1304, 397, NULL, 397, TRUE),
  -- #398 Staraptor
  (1304, 398, NULL, 398, TRUE),
  -- #399 Bidoof
  (1304, 399, NULL, 399, TRUE),
  -- #400 Bibarel
  (1304, 400, NULL, 400, TRUE),
  -- #401 Kricketot
  (1304, 401, NULL, 401, TRUE),
  -- #402 Kricketune
  (1304, 402, NULL, 402, TRUE),
  -- #403 Shinx
  (1304, 403, NULL, 403, TRUE),
  -- #404 Luxio
  (1304, 404, NULL, 404, TRUE),
  -- #405 Luxray
  (1304, 405, NULL, 405, TRUE),
  -- #406 Budew
  (1304, 406, NULL, 406, TRUE),
  -- #407 Roserade
  (1304, 407, NULL, 407, TRUE),
  -- #408 Cranidos
  (1304, 408, NULL, 408, TRUE),
  -- #409 Rampardos
  (1304, 409, NULL, 409, TRUE),
  -- #410 Shieldon
  (1304, 410, NULL, 410, TRUE),
  -- #411 Bastiodon
  (1304, 411, NULL, 411, TRUE),
  -- #412 Burmy
  (1304, 412, NULL, 412, TRUE),
  -- #413 Wormadam
  (1304, 413, NULL, 413, TRUE),
  -- #414 Mothim
  (1304, 414, NULL, 414, TRUE),
  -- #415 Combee
  (1304, 415, NULL, 415, TRUE),
  -- #416 Vespiquen
  (1304, 416, NULL, 416, TRUE),
  -- #417 Pachirisu
  (1304, 417, NULL, 417, TRUE),
  -- #418 Buizel
  (1304, 418, NULL, 418, TRUE),
  -- #419 Floatzel
  (1304, 419, NULL, 419, TRUE),
  -- #420 Cherubi
  (1304, 420, NULL, 420, TRUE),
  -- #421 Cherrim
  (1304, 421, NULL, 421, TRUE),
  -- #422 Shellos
  (1304, 422, NULL, 422, TRUE),
  -- #423 Gastrodon
  (1304, 423, NULL, 423, TRUE),
  -- #424 Ambipom
  (1304, 424, NULL, 424, TRUE),
  -- #425 Drifloon
  (1304, 425, NULL, 425, TRUE),
  -- #426 Drifblim
  (1304, 426, NULL, 426, TRUE),
  -- #427 Buneary
  (1304, 427, NULL, 427, TRUE),
  -- #428 Lopunny
  (1304, 428, NULL, 428, TRUE),
  -- #429 Mismagius
  (1304, 429, NULL, 429, TRUE),
  -- #430 Honchkrow
  (1304, 430, NULL, 430, TRUE),
  -- #431 Glameow
  (1304, 431, NULL, 431, TRUE),
  -- #432 Purugly
  (1304, 432, NULL, 432, TRUE),
  -- #433 Chingling
  (1304, 433, NULL, 433, TRUE),
  -- #434 Stunky
  (1304, 434, NULL, 434, TRUE),
  -- #435 Skuntank
  (1304, 435, NULL, 435, TRUE),
  -- #436 Bronzor
  (1304, 436, NULL, 436, TRUE),
  -- #437 Bronzong
  (1304, 437, NULL, 437, TRUE),
  -- #438 Bonsly
  (1304, 438, NULL, 438, TRUE),
  -- #439 Mime Jr.
  (1304, 439, NULL, 439, TRUE),
  -- #440 Happiny
  (1304, 440, NULL, 440, TRUE),
  -- #441 Chatot
  (1304, 441, NULL, 441, TRUE),
  -- #442 Spiritomb
  (1304, 442, NULL, 442, TRUE),
  -- #443 Gible
  (1304, 443, NULL, 443, TRUE),
  -- #444 Gabite
  (1304, 444, NULL, 444, TRUE),
  -- #445 Garchomp
  (1304, 445, NULL, 445, TRUE),
  -- #446 Munchlax
  (1304, 446, NULL, 446, TRUE),
  -- #447 Riolu
  (1304, 447, NULL, 447, TRUE),
  -- #448 Lucario
  (1304, 448, NULL, 448, TRUE),
  -- #449 Hippopotas
  (1304, 449, NULL, 449, TRUE),
  -- #450 Hippowdon
  (1304, 450, NULL, 450, TRUE),
  -- #451 Skorupi
  (1304, 451, NULL, 451, TRUE),
  -- #452 Drapion
  (1304, 452, NULL, 452, TRUE),
  -- #453 Croagunk
  (1304, 453, NULL, 453, TRUE),
  -- #454 Toxicroak
  (1304, 454, NULL, 454, TRUE),
  -- #455 Carnivine
  (1304, 455, NULL, 455, TRUE),
  -- #456 Finneon
  (1304, 456, NULL, 456, TRUE),
  -- #457 Lumineon
  (1304, 457, NULL, 457, TRUE),
  -- #458 Mantyke
  (1304, 458, NULL, 458, TRUE),
  -- #459 Snover
  (1304, 459, NULL, 459, TRUE),
  -- #460 Abomasnow
  (1304, 460, NULL, 460, TRUE),
  -- #461 Weavile
  (1304, 461, NULL, 461, TRUE),
  -- #462 Magnezone
  (1304, 462, NULL, 462, TRUE),
  -- #463 Lickilicky
  (1304, 463, NULL, 463, TRUE),
  -- #464 Rhyperior
  (1304, 464, NULL, 464, TRUE),
  -- #465 Tangrowth
  (1304, 465, NULL, 465, TRUE),
  -- #466 Electivire
  (1304, 466, NULL, 466, TRUE),
  -- #467 Magmortar
  (1304, 467, NULL, 467, TRUE),
  -- #468 Togekiss
  (1304, 468, NULL, 468, TRUE),
  -- #469 Yanmega
  (1304, 469, NULL, 469, TRUE),
  -- #470 Leafeon
  (1304, 470, NULL, 470, TRUE),
  -- #471 Glaceon
  (1304, 471, NULL, 471, TRUE),
  -- #472 Gliscor
  (1304, 472, NULL, 472, TRUE),
  -- #473 Mamoswine
  (1304, 473, NULL, 473, TRUE),
  -- #474 Porygon-Z
  (1304, 474, NULL, 474, TRUE),
  -- #475 Gallade
  (1304, 475, NULL, 475, TRUE),
  -- #476 Probopass
  (1304, 476, NULL, 476, TRUE),
  -- #477 Dusknoir
  (1304, 477, NULL, 477, TRUE),
  -- #478 Froslass
  (1304, 478, NULL, 478, TRUE),
  -- #479 Rotom
  (1304, 479, NULL, 479, TRUE),
  -- #480 Uxie
  (1304, 480, NULL, 480, TRUE),
  -- #481 Mesprit
  (1304, 481, NULL, 481, TRUE),
  -- #482 Azelf
  (1304, 482, NULL, 482, TRUE),
  -- #483 Dialga
  (1304, 483, NULL, 483, TRUE),
  -- #484 Palkia
  (1304, 484, NULL, 484, TRUE),
  -- #485 Heatran
  (1304, 485, NULL, 485, TRUE),
  -- #486 Regigigas
  (1304, 486, NULL, 486, TRUE),
  -- #487 Giratina
  (1304, 487, NULL, 487, TRUE),
  -- #488 Cresselia
  (1304, 488, NULL, 488, TRUE),
  -- #489 Phione
  (1304, 489, NULL, 489, FALSE),
  -- #490 Manaphy
  (1304, 490, NULL, 490, FALSE),
  -- #491 Darkrai
  (1304, 491, NULL, 491, FALSE),
  -- #492 Shaymin
  (1304, 492, NULL, 492, FALSE),
  -- #493 Arceus
  (1304, 493, NULL, 493, FALSE),
  -- #494 Victini
  (1304, 494, NULL, 494, FALSE),
  -- #495 Snivy
  (1304, 495, NULL, 495, TRUE),
  -- #496 Servine
  (1304, 496, NULL, 496, TRUE),
  -- #497 Serperior
  (1304, 497, NULL, 497, TRUE),
  -- #498 Tepig
  (1304, 498, NULL, 498, TRUE),
  -- #499 Pignite
  (1304, 499, NULL, 499, TRUE),
  -- #500 Emboar
  (1304, 500, NULL, 500, TRUE),
  -- #501 Oshawott
  (1304, 501, NULL, 501, TRUE),
  -- #502 Dewott
  (1304, 502, NULL, 502, TRUE),
  -- #503 Samurott
  (1304, 503, NULL, 503, TRUE),
  -- #504 Patrat
  (1304, 504, NULL, 504, TRUE),
  -- #505 Watchog
  (1304, 505, NULL, 505, TRUE),
  -- #506 Lillipup
  (1304, 506, NULL, 506, TRUE),
  -- #507 Herdier
  (1304, 507, NULL, 507, TRUE),
  -- #508 Stoutland
  (1304, 508, NULL, 508, TRUE),
  -- #509 Purrloin
  (1304, 509, NULL, 509, TRUE),
  -- #510 Liepard
  (1304, 510, NULL, 510, TRUE),
  -- #511 Pansage
  (1304, 511, NULL, 511, TRUE),
  -- #512 Simisage
  (1304, 512, NULL, 512, TRUE),
  -- #513 Pansear
  (1304, 513, NULL, 513, TRUE),
  -- #514 Simisear
  (1304, 514, NULL, 514, TRUE),
  -- #515 Panpour
  (1304, 515, NULL, 515, TRUE),
  -- #516 Simipour
  (1304, 516, NULL, 516, TRUE),
  -- #517 Munna
  (1304, 517, NULL, 517, TRUE),
  -- #518 Musharna
  (1304, 518, NULL, 518, TRUE),
  -- #519 Pidove
  (1304, 519, NULL, 519, TRUE),
  -- #520 Tranquill
  (1304, 520, NULL, 520, TRUE),
  -- #521 Unfezant
  (1304, 521, NULL, 521, TRUE),
  -- #522 Blitzle
  (1304, 522, NULL, 522, TRUE),
  -- #523 Zebstrika
  (1304, 523, NULL, 523, TRUE),
  -- #524 Roggenrola
  (1304, 524, NULL, 524, TRUE),
  -- #525 Boldore
  (1304, 525, NULL, 525, TRUE),
  -- #526 Gigalith
  (1304, 526, NULL, 526, TRUE),
  -- #527 Woobat
  (1304, 527, NULL, 527, TRUE),
  -- #528 Swoobat
  (1304, 528, NULL, 528, TRUE),
  -- #529 Drilbur
  (1304, 529, NULL, 529, TRUE),
  -- #530 Excadrill
  (1304, 530, NULL, 530, TRUE),
  -- #531 Audino
  (1304, 531, NULL, 531, TRUE),
  -- #532 Timburr
  (1304, 532, NULL, 532, TRUE),
  -- #533 Gurdurr
  (1304, 533, NULL, 533, TRUE),
  -- #534 Conkeldurr
  (1304, 534, NULL, 534, TRUE),
  -- #535 Tympole
  (1304, 535, NULL, 535, TRUE),
  -- #536 Palpitoad
  (1304, 536, NULL, 536, TRUE),
  -- #537 Seismitoad
  (1304, 537, NULL, 537, TRUE),
  -- #538 Throh
  (1304, 538, NULL, 538, TRUE),
  -- #539 Sawk
  (1304, 539, NULL, 539, TRUE),
  -- #540 Sewaddle
  (1304, 540, NULL, 540, TRUE),
  -- #541 Swadloon
  (1304, 541, NULL, 541, TRUE),
  -- #542 Leavanny
  (1304, 542, NULL, 542, TRUE),
  -- #543 Venipede
  (1304, 543, NULL, 543, TRUE),
  -- #544 Whirlipede
  (1304, 544, NULL, 544, TRUE),
  -- #545 Scolipede
  (1304, 545, NULL, 545, TRUE),
  -- #546 Cottonee
  (1304, 546, NULL, 546, TRUE),
  -- #547 Whimsicott
  (1304, 547, NULL, 547, TRUE),
  -- #548 Petilil
  (1304, 548, NULL, 548, TRUE),
  -- #549 Lilligant
  (1304, 549, NULL, 549, TRUE),
  -- #550 Basculin
  (1304, 550, NULL, 550, TRUE),
  -- #551 Sandile
  (1304, 551, NULL, 551, TRUE),
  -- #552 Krokorok
  (1304, 552, NULL, 552, TRUE),
  -- #553 Krookodile
  (1304, 553, NULL, 553, TRUE),
  -- #554 Darumaka
  (1304, 554, NULL, 554, TRUE),
  -- #555 Darmanitan
  (1304, 555, NULL, 555, TRUE),
  -- #556 Maractus
  (1304, 556, NULL, 556, TRUE),
  -- #557 Dwebble
  (1304, 557, NULL, 557, TRUE),
  -- #558 Crustle
  (1304, 558, NULL, 558, TRUE),
  -- #559 Scraggy
  (1304, 559, NULL, 559, TRUE),
  -- #560 Scrafty
  (1304, 560, NULL, 560, TRUE),
  -- #561 Sigilyph
  (1304, 561, NULL, 561, TRUE),
  -- #562 Yamask
  (1304, 562, NULL, 562, TRUE),
  -- #563 Cofagrigus
  (1304, 563, NULL, 563, TRUE),
  -- #564 Tirtouga
  (1304, 564, NULL, 564, TRUE),
  -- #565 Carracosta
  (1304, 565, NULL, 565, TRUE),
  -- #566 Archen
  (1304, 566, NULL, 566, TRUE),
  -- #567 Archeops
  (1304, 567, NULL, 567, TRUE),
  -- #568 Trubbish
  (1304, 568, NULL, 568, TRUE),
  -- #569 Garbodor
  (1304, 569, NULL, 569, TRUE),
  -- #570 Zorua
  (1304, 570, NULL, 570, TRUE),
  -- #571 Zoroark
  (1304, 571, NULL, 571, TRUE),
  -- #572 Minccino
  (1304, 572, NULL, 572, TRUE),
  -- #573 Cinccino
  (1304, 573, NULL, 573, TRUE),
  -- #574 Gothita
  (1304, 574, NULL, 574, TRUE),
  -- #575 Gothorita
  (1304, 575, NULL, 575, TRUE),
  -- #576 Gothitelle
  (1304, 576, NULL, 576, TRUE),
  -- #577 Solosis
  (1304, 577, NULL, 577, TRUE),
  -- #578 Duosion
  (1304, 578, NULL, 578, TRUE),
  -- #579 Reuniclus
  (1304, 579, NULL, 579, TRUE),
  -- #580 Ducklett
  (1304, 580, NULL, 580, TRUE),
  -- #581 Swanna
  (1304, 581, NULL, 581, TRUE),
  -- #582 Vanillite
  (1304, 582, NULL, 582, TRUE),
  -- #583 Vanillish
  (1304, 583, NULL, 583, TRUE),
  -- #584 Vanilluxe
  (1304, 584, NULL, 584, TRUE),
  -- #585 Deerling
  (1304, 585, NULL, 585, TRUE),
  -- #586 Sawsbuck
  (1304, 586, NULL, 586, TRUE),
  -- #587 Emolga
  (1304, 587, NULL, 587, TRUE),
  -- #588 Karrablast
  (1304, 588, NULL, 588, TRUE),
  -- #589 Escavalier
  (1304, 589, NULL, 589, TRUE),
  -- #590 Foongus
  (1304, 590, NULL, 590, TRUE),
  -- #591 Amoonguss
  (1304, 591, NULL, 591, TRUE),
  -- #592 Frillish
  (1304, 592, NULL, 592, TRUE),
  -- #593 Jellicent
  (1304, 593, NULL, 593, TRUE),
  -- #594 Alomomola
  (1304, 594, NULL, 594, TRUE),
  -- #595 Joltik
  (1304, 595, NULL, 595, TRUE),
  -- #596 Galvantula
  (1304, 596, NULL, 596, TRUE),
  -- #597 Ferroseed
  (1304, 597, NULL, 597, TRUE),
  -- #598 Ferrothorn
  (1304, 598, NULL, 598, TRUE),
  -- #599 Klink
  (1304, 599, NULL, 599, TRUE),
  -- #600 Klang
  (1304, 600, NULL, 600, TRUE),
  -- #601 Klinklang
  (1304, 601, NULL, 601, TRUE),
  -- #602 Tynamo
  (1304, 602, NULL, 602, TRUE),
  -- #603 Eelektrik
  (1304, 603, NULL, 603, TRUE),
  -- #604 Eelektross
  (1304, 604, NULL, 604, TRUE),
  -- #605 Elgyem
  (1304, 605, NULL, 605, TRUE),
  -- #606 Beheeyem
  (1304, 606, NULL, 606, TRUE),
  -- #607 Litwick
  (1304, 607, NULL, 607, TRUE),
  -- #608 Lampent
  (1304, 608, NULL, 608, TRUE),
  -- #609 Chandelure
  (1304, 609, NULL, 609, TRUE),
  -- #610 Axew
  (1304, 610, NULL, 610, TRUE),
  -- #611 Fraxure
  (1304, 611, NULL, 611, TRUE),
  -- #612 Haxorus
  (1304, 612, NULL, 612, TRUE),
  -- #613 Cubchoo
  (1304, 613, NULL, 613, TRUE),
  -- #614 Beartic
  (1304, 614, NULL, 614, TRUE),
  -- #615 Cryogonal
  (1304, 615, NULL, 615, TRUE),
  -- #616 Shelmet
  (1304, 616, NULL, 616, TRUE),
  -- #617 Accelgor
  (1304, 617, NULL, 617, TRUE),
  -- #618 Stunfisk
  (1304, 618, NULL, 618, TRUE),
  -- #619 Mienfoo
  (1304, 619, NULL, 619, TRUE),
  -- #620 Mienshao
  (1304, 620, NULL, 620, TRUE),
  -- #621 Druddigon
  (1304, 621, NULL, 621, TRUE),
  -- #622 Golett
  (1304, 622, NULL, 622, TRUE),
  -- #623 Golurk
  (1304, 623, NULL, 623, TRUE),
  -- #624 Pawniard
  (1304, 624, NULL, 624, TRUE),
  -- #625 Bisharp
  (1304, 625, NULL, 625, TRUE),
  -- #626 Bouffalant
  (1304, 626, NULL, 626, TRUE),
  -- #627 Rufflet
  (1304, 627, NULL, 627, TRUE),
  -- #628 Braviary
  (1304, 628, NULL, 628, TRUE),
  -- #629 Vullaby
  (1304, 629, NULL, 629, TRUE),
  -- #630 Mandibuzz
  (1304, 630, NULL, 630, TRUE),
  -- #631 Heatmor
  (1304, 631, NULL, 631, TRUE),
  -- #632 Durant
  (1304, 632, NULL, 632, TRUE),
  -- #633 Deino
  (1304, 633, NULL, 633, TRUE),
  -- #634 Zweilous
  (1304, 634, NULL, 634, TRUE),
  -- #635 Hydreigon
  (1304, 635, NULL, 635, TRUE),
  -- #636 Larvesta
  (1304, 636, NULL, 636, TRUE),
  -- #637 Volcarona
  (1304, 637, NULL, 637, TRUE),
  -- #638 Cobalion
  (1304, 638, NULL, 638, TRUE),
  -- #639 Terrakion
  (1304, 639, NULL, 639, TRUE),
  -- #640 Virizion
  (1304, 640, NULL, 640, TRUE),
  -- #641 Tornadus
  (1304, 641, NULL, 641, TRUE),
  -- #642 Thundurus
  (1304, 642, NULL, 642, TRUE),
  -- #643 Reshiram
  (1304, 643, NULL, 643, TRUE),
  -- #644 Zekrom
  (1304, 644, NULL, 644, TRUE),
  -- #645 Landorus
  (1304, 645, NULL, 645, TRUE),
  -- #646 Kyurem
  (1304, 646, NULL, 646, TRUE),
  -- #647 Keldeo
  (1304, 647, NULL, 647, FALSE),
  -- #648 Meloetta
  (1304, 648, NULL, 648, FALSE),
  -- #649 Genesect
  (1304, 649, NULL, 649, FALSE),
  -- #650 Chespin
  (1304, 650, NULL, 650, TRUE),
  -- #651 Quilladin
  (1304, 651, NULL, 651, TRUE),
  -- #652 Chesnaught
  (1304, 652, NULL, 652, TRUE),
  -- #653 Fennekin
  (1304, 653, NULL, 653, TRUE),
  -- #654 Braixen
  (1304, 654, NULL, 654, TRUE),
  -- #655 Delphox
  (1304, 655, NULL, 655, TRUE),
  -- #656 Froakie
  (1304, 656, NULL, 656, TRUE),
  -- #657 Frogadier
  (1304, 657, NULL, 657, TRUE),
  -- #658 Greninja
  (1304, 658, NULL, 658, TRUE),
  -- #659 Bunnelby
  (1304, 659, NULL, 659, TRUE),
  -- #660 Diggersby
  (1304, 660, NULL, 660, TRUE),
  -- #661 Fletchling
  (1304, 661, NULL, 661, TRUE),
  -- #662 Fletchinder
  (1304, 662, NULL, 662, TRUE),
  -- #663 Talonflame
  (1304, 663, NULL, 663, TRUE),
  -- #664 Scatterbug
  (1304, 664, NULL, 664, TRUE),
  -- #665 Spewpa
  (1304, 665, NULL, 665, TRUE),
  -- #666 Vivillon
  (1304, 666, NULL, 666, TRUE),
  -- #667 Litleo
  (1304, 667, NULL, 667, TRUE),
  -- #668 Pyroar
  (1304, 668, NULL, 668, TRUE),
  -- #669 Flabebe
  (1304, 669, NULL, 669, TRUE),
  -- #670 Floette
  (1304, 670, NULL, 670, TRUE),
  -- #671 Florges
  (1304, 671, NULL, 671, TRUE),
  -- #672 Skiddo
  (1304, 672, NULL, 672, TRUE),
  -- #673 Gogoat
  (1304, 673, NULL, 673, TRUE),
  -- #674 Pancham
  (1304, 674, NULL, 674, TRUE),
  -- #675 Pangoro
  (1304, 675, NULL, 675, TRUE),
  -- #676 Furfrou
  (1304, 676, NULL, 676, TRUE),
  -- #677 Espurr
  (1304, 677, NULL, 677, TRUE),
  -- #678 Meowstic
  (1304, 678, NULL, 678, TRUE),
  -- #679 Honedge
  (1304, 679, NULL, 679, TRUE),
  -- #680 Doublade
  (1304, 680, NULL, 680, TRUE),
  -- #681 Aegislash
  (1304, 681, NULL, 681, TRUE),
  -- #682 Spritzee
  (1304, 682, NULL, 682, TRUE),
  -- #683 Aromatisse
  (1304, 683, NULL, 683, TRUE),
  -- #684 Swirlix
  (1304, 684, NULL, 684, TRUE),
  -- #685 Slurpuff
  (1304, 685, NULL, 685, TRUE),
  -- #686 Inkay
  (1304, 686, NULL, 686, TRUE),
  -- #687 Malamar
  (1304, 687, NULL, 687, TRUE),
  -- #688 Binacle
  (1304, 688, NULL, 688, TRUE),
  -- #689 Barbaracle
  (1304, 689, NULL, 689, TRUE),
  -- #690 Skrelp
  (1304, 690, NULL, 690, TRUE),
  -- #691 Dragalge
  (1304, 691, NULL, 691, TRUE),
  -- #692 Clauncher
  (1304, 692, NULL, 692, TRUE),
  -- #693 Clawitzer
  (1304, 693, NULL, 693, TRUE),
  -- #694 Helioptile
  (1304, 694, NULL, 694, TRUE),
  -- #695 Heliolisk
  (1304, 695, NULL, 695, TRUE),
  -- #696 Tyrunt
  (1304, 696, NULL, 696, TRUE),
  -- #697 Tyrantrum
  (1304, 697, NULL, 697, TRUE),
  -- #698 Amaura
  (1304, 698, NULL, 698, TRUE),
  -- #699 Aurorus
  (1304, 699, NULL, 699, TRUE),
  -- #700 Sylveon
  (1304, 700, NULL, 700, TRUE),
  -- #701 Hawlucha
  (1304, 701, NULL, 701, TRUE),
  -- #702 Dedenne
  (1304, 702, NULL, 702, TRUE),
  -- #703 Carbink
  (1304, 703, NULL, 703, TRUE),
  -- #704 Goomy
  (1304, 704, NULL, 704, TRUE),
  -- #705 Sliggoo
  (1304, 705, NULL, 705, TRUE),
  -- #706 Goodra
  (1304, 706, NULL, 706, TRUE),
  -- #707 Klefki
  (1304, 707, NULL, 707, TRUE),
  -- #708 Phantump
  (1304, 708, NULL, 708, TRUE),
  -- #709 Trevenant
  (1304, 709, NULL, 709, TRUE),
  -- #710 Pumpkaboo
  (1304, 710, NULL, 710, TRUE),
  -- #711 Gourgeist
  (1304, 711, NULL, 711, TRUE),
  -- #712 Bergmite
  (1304, 712, NULL, 712, TRUE),
  -- #713 Avalugg
  (1304, 713, NULL, 713, TRUE),
  -- #714 Noibat
  (1304, 714, NULL, 714, TRUE),
  -- #715 Noivern
  (1304, 715, NULL, 715, TRUE),
  -- #716 Xerneas
  (1304, 716, NULL, 716, TRUE),
  -- #717 Yveltal
  (1304, 717, NULL, 717, TRUE),
  -- #718 Zygarde
  (1304, 718, NULL, 718, TRUE),
  -- #719 Diancie
  (1304, 719, NULL, 719, FALSE),
  -- #720 Hoopa
  (1304, 720, NULL, 720, FALSE),
  -- #721 Volcanion
  (1304, 721, NULL, 721, FALSE);
