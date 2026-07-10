-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by National Pokedex number.
-- Cross-check: Bulbapedia National Pokedex page, Serebii National Pokedex, and PokemonDB National Pokedex.
-- ============================================================================
-- File Scope
-- ============================================================================
-- National Pokedex entries for Brilliant Diamond / Shining Pearl.
-- National Pokedex contains 493 species for this version group; Mythical species are source-visible but not required for default completion.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Bulbasaur
  (2102, 1, NULL, 1, TRUE),
  -- #002 Ivysaur
  (2102, 2, NULL, 2, TRUE),
  -- #003 Venusaur
  (2102, 3, NULL, 3, TRUE),
  -- #004 Charmander
  (2102, 4, NULL, 4, TRUE),
  -- #005 Charmeleon
  (2102, 5, NULL, 5, TRUE),
  -- #006 Charizard
  (2102, 6, NULL, 6, TRUE),
  -- #007 Squirtle
  (2102, 7, NULL, 7, TRUE),
  -- #008 Wartortle
  (2102, 8, NULL, 8, TRUE),
  -- #009 Blastoise
  (2102, 9, NULL, 9, TRUE),
  -- #010 Caterpie
  (2102, 10, NULL, 10, TRUE),
  -- #011 Metapod
  (2102, 11, NULL, 11, TRUE),
  -- #012 Butterfree
  (2102, 12, NULL, 12, TRUE),
  -- #013 Weedle
  (2102, 13, NULL, 13, TRUE),
  -- #014 Kakuna
  (2102, 14, NULL, 14, TRUE),
  -- #015 Beedrill
  (2102, 15, NULL, 15, TRUE),
  -- #016 Pidgey
  (2102, 16, NULL, 16, TRUE),
  -- #017 Pidgeotto
  (2102, 17, NULL, 17, TRUE),
  -- #018 Pidgeot
  (2102, 18, NULL, 18, TRUE),
  -- #019 Rattata
  (2102, 19, NULL, 19, TRUE),
  -- #020 Raticate
  (2102, 20, NULL, 20, TRUE),
  -- #021 Spearow
  (2102, 21, NULL, 21, TRUE),
  -- #022 Fearow
  (2102, 22, NULL, 22, TRUE),
  -- #023 Ekans
  (2102, 23, NULL, 23, TRUE),
  -- #024 Arbok
  (2102, 24, NULL, 24, TRUE),
  -- #025 Pikachu
  (2102, 25, NULL, 25, TRUE),
  -- #026 Raichu
  (2102, 26, NULL, 26, TRUE),
  -- #027 Sandshrew
  (2102, 27, NULL, 27, TRUE),
  -- #028 Sandslash
  (2102, 28, NULL, 28, TRUE),
  -- #029 Nidoran F
  (2102, 29, NULL, 29, TRUE),
  -- #030 Nidorina
  (2102, 30, NULL, 30, TRUE),
  -- #031 Nidoqueen
  (2102, 31, NULL, 31, TRUE),
  -- #032 Nidoran M
  (2102, 32, NULL, 32, TRUE),
  -- #033 Nidorino
  (2102, 33, NULL, 33, TRUE),
  -- #034 Nidoking
  (2102, 34, NULL, 34, TRUE),
  -- #035 Clefairy
  (2102, 35, NULL, 35, TRUE),
  -- #036 Clefable
  (2102, 36, NULL, 36, TRUE),
  -- #037 Vulpix
  (2102, 37, NULL, 37, TRUE),
  -- #038 Ninetales
  (2102, 38, NULL, 38, TRUE),
  -- #039 Jigglypuff
  (2102, 39, NULL, 39, TRUE),
  -- #040 Wigglytuff
  (2102, 40, NULL, 40, TRUE),
  -- #041 Zubat
  (2102, 41, NULL, 41, TRUE),
  -- #042 Golbat
  (2102, 42, NULL, 42, TRUE),
  -- #043 Oddish
  (2102, 43, NULL, 43, TRUE),
  -- #044 Gloom
  (2102, 44, NULL, 44, TRUE),
  -- #045 Vileplume
  (2102, 45, NULL, 45, TRUE),
  -- #046 Paras
  (2102, 46, NULL, 46, TRUE),
  -- #047 Parasect
  (2102, 47, NULL, 47, TRUE),
  -- #048 Venonat
  (2102, 48, NULL, 48, TRUE),
  -- #049 Venomoth
  (2102, 49, NULL, 49, TRUE),
  -- #050 Diglett
  (2102, 50, NULL, 50, TRUE),
  -- #051 Dugtrio
  (2102, 51, NULL, 51, TRUE),
  -- #052 Meowth
  (2102, 52, NULL, 52, TRUE),
  -- #053 Persian
  (2102, 53, NULL, 53, TRUE),
  -- #054 Psyduck
  (2102, 54, NULL, 54, TRUE),
  -- #055 Golduck
  (2102, 55, NULL, 55, TRUE),
  -- #056 Mankey
  (2102, 56, NULL, 56, TRUE),
  -- #057 Primeape
  (2102, 57, NULL, 57, TRUE),
  -- #058 Growlithe
  (2102, 58, NULL, 58, TRUE),
  -- #059 Arcanine
  (2102, 59, NULL, 59, TRUE),
  -- #060 Poliwag
  (2102, 60, NULL, 60, TRUE),
  -- #061 Poliwhirl
  (2102, 61, NULL, 61, TRUE),
  -- #062 Poliwrath
  (2102, 62, NULL, 62, TRUE),
  -- #063 Abra
  (2102, 63, NULL, 63, TRUE),
  -- #064 Kadabra
  (2102, 64, NULL, 64, TRUE),
  -- #065 Alakazam
  (2102, 65, NULL, 65, TRUE),
  -- #066 Machop
  (2102, 66, NULL, 66, TRUE),
  -- #067 Machoke
  (2102, 67, NULL, 67, TRUE),
  -- #068 Machamp
  (2102, 68, NULL, 68, TRUE),
  -- #069 Bellsprout
  (2102, 69, NULL, 69, TRUE),
  -- #070 Weepinbell
  (2102, 70, NULL, 70, TRUE),
  -- #071 Victreebel
  (2102, 71, NULL, 71, TRUE),
  -- #072 Tentacool
  (2102, 72, NULL, 72, TRUE),
  -- #073 Tentacruel
  (2102, 73, NULL, 73, TRUE),
  -- #074 Geodude
  (2102, 74, NULL, 74, TRUE),
  -- #075 Graveler
  (2102, 75, NULL, 75, TRUE),
  -- #076 Golem
  (2102, 76, NULL, 76, TRUE),
  -- #077 Ponyta
  (2102, 77, NULL, 77, TRUE),
  -- #078 Rapidash
  (2102, 78, NULL, 78, TRUE),
  -- #079 Slowpoke
  (2102, 79, NULL, 79, TRUE),
  -- #080 Slowbro
  (2102, 80, NULL, 80, TRUE),
  -- #081 Magnemite
  (2102, 81, NULL, 81, TRUE),
  -- #082 Magneton
  (2102, 82, NULL, 82, TRUE),
  -- #083 Farfetch'd
  (2102, 83, NULL, 83, TRUE),
  -- #084 Doduo
  (2102, 84, NULL, 84, TRUE),
  -- #085 Dodrio
  (2102, 85, NULL, 85, TRUE),
  -- #086 Seel
  (2102, 86, NULL, 86, TRUE),
  -- #087 Dewgong
  (2102, 87, NULL, 87, TRUE),
  -- #088 Grimer
  (2102, 88, NULL, 88, TRUE),
  -- #089 Muk
  (2102, 89, NULL, 89, TRUE),
  -- #090 Shellder
  (2102, 90, NULL, 90, TRUE),
  -- #091 Cloyster
  (2102, 91, NULL, 91, TRUE),
  -- #092 Gastly
  (2102, 92, NULL, 92, TRUE),
  -- #093 Haunter
  (2102, 93, NULL, 93, TRUE),
  -- #094 Gengar
  (2102, 94, NULL, 94, TRUE),
  -- #095 Onix
  (2102, 95, NULL, 95, TRUE),
  -- #096 Drowzee
  (2102, 96, NULL, 96, TRUE),
  -- #097 Hypno
  (2102, 97, NULL, 97, TRUE),
  -- #098 Krabby
  (2102, 98, NULL, 98, TRUE),
  -- #099 Kingler
  (2102, 99, NULL, 99, TRUE),
  -- #100 Voltorb
  (2102, 100, NULL, 100, TRUE),
  -- #101 Electrode
  (2102, 101, NULL, 101, TRUE),
  -- #102 Exeggcute
  (2102, 102, NULL, 102, TRUE),
  -- #103 Exeggutor
  (2102, 103, NULL, 103, TRUE),
  -- #104 Cubone
  (2102, 104, NULL, 104, TRUE),
  -- #105 Marowak
  (2102, 105, NULL, 105, TRUE),
  -- #106 Hitmonlee
  (2102, 106, NULL, 106, TRUE),
  -- #107 Hitmonchan
  (2102, 107, NULL, 107, TRUE),
  -- #108 Lickitung
  (2102, 108, NULL, 108, TRUE),
  -- #109 Koffing
  (2102, 109, NULL, 109, TRUE),
  -- #110 Weezing
  (2102, 110, NULL, 110, TRUE),
  -- #111 Rhyhorn
  (2102, 111, NULL, 111, TRUE),
  -- #112 Rhydon
  (2102, 112, NULL, 112, TRUE),
  -- #113 Chansey
  (2102, 113, NULL, 113, TRUE),
  -- #114 Tangela
  (2102, 114, NULL, 114, TRUE),
  -- #115 Kangaskhan
  (2102, 115, NULL, 115, TRUE),
  -- #116 Horsea
  (2102, 116, NULL, 116, TRUE),
  -- #117 Seadra
  (2102, 117, NULL, 117, TRUE),
  -- #118 Goldeen
  (2102, 118, NULL, 118, TRUE),
  -- #119 Seaking
  (2102, 119, NULL, 119, TRUE),
  -- #120 Staryu
  (2102, 120, NULL, 120, TRUE),
  -- #121 Starmie
  (2102, 121, NULL, 121, TRUE),
  -- #122 Mr. Mime
  (2102, 122, NULL, 122, TRUE),
  -- #123 Scyther
  (2102, 123, NULL, 123, TRUE),
  -- #124 Jynx
  (2102, 124, NULL, 124, TRUE),
  -- #125 Electabuzz
  (2102, 125, NULL, 125, TRUE),
  -- #126 Magmar
  (2102, 126, NULL, 126, TRUE),
  -- #127 Pinsir
  (2102, 127, NULL, 127, TRUE),
  -- #128 Tauros
  (2102, 128, NULL, 128, TRUE),
  -- #129 Magikarp
  (2102, 129, NULL, 129, TRUE),
  -- #130 Gyarados
  (2102, 130, NULL, 130, TRUE),
  -- #131 Lapras
  (2102, 131, NULL, 131, TRUE),
  -- #132 Ditto
  (2102, 132, NULL, 132, TRUE),
  -- #133 Eevee
  (2102, 133, NULL, 133, TRUE),
  -- #134 Vaporeon
  (2102, 134, NULL, 134, TRUE),
  -- #135 Jolteon
  (2102, 135, NULL, 135, TRUE),
  -- #136 Flareon
  (2102, 136, NULL, 136, TRUE),
  -- #137 Porygon
  (2102, 137, NULL, 137, TRUE),
  -- #138 Omanyte
  (2102, 138, NULL, 138, TRUE),
  -- #139 Omastar
  (2102, 139, NULL, 139, TRUE),
  -- #140 Kabuto
  (2102, 140, NULL, 140, TRUE),
  -- #141 Kabutops
  (2102, 141, NULL, 141, TRUE),
  -- #142 Aerodactyl
  (2102, 142, NULL, 142, TRUE),
  -- #143 Snorlax
  (2102, 143, NULL, 143, TRUE),
  -- #144 Articuno
  (2102, 144, NULL, 144, TRUE),
  -- #145 Zapdos
  (2102, 145, NULL, 145, TRUE),
  -- #146 Moltres
  (2102, 146, NULL, 146, TRUE),
  -- #147 Dratini
  (2102, 147, NULL, 147, TRUE),
  -- #148 Dragonair
  (2102, 148, NULL, 148, TRUE),
  -- #149 Dragonite
  (2102, 149, NULL, 149, TRUE),
  -- #150 Mewtwo
  (2102, 150, NULL, 150, TRUE),
  -- #151 Mew
  (2102, 151, NULL, 151, FALSE),
  -- #152 Chikorita
  (2102, 152, NULL, 152, TRUE),
  -- #153 Bayleef
  (2102, 153, NULL, 153, TRUE),
  -- #154 Meganium
  (2102, 154, NULL, 154, TRUE),
  -- #155 Cyndaquil
  (2102, 155, NULL, 155, TRUE),
  -- #156 Quilava
  (2102, 156, NULL, 156, TRUE),
  -- #157 Typhlosion
  (2102, 157, NULL, 157, TRUE),
  -- #158 Totodile
  (2102, 158, NULL, 158, TRUE),
  -- #159 Croconaw
  (2102, 159, NULL, 159, TRUE),
  -- #160 Feraligatr
  (2102, 160, NULL, 160, TRUE),
  -- #161 Sentret
  (2102, 161, NULL, 161, TRUE),
  -- #162 Furret
  (2102, 162, NULL, 162, TRUE),
  -- #163 Hoothoot
  (2102, 163, NULL, 163, TRUE),
  -- #164 Noctowl
  (2102, 164, NULL, 164, TRUE),
  -- #165 Ledyba
  (2102, 165, NULL, 165, TRUE),
  -- #166 Ledian
  (2102, 166, NULL, 166, TRUE),
  -- #167 Spinarak
  (2102, 167, NULL, 167, TRUE),
  -- #168 Ariados
  (2102, 168, NULL, 168, TRUE),
  -- #169 Crobat
  (2102, 169, NULL, 169, TRUE),
  -- #170 Chinchou
  (2102, 170, NULL, 170, TRUE),
  -- #171 Lanturn
  (2102, 171, NULL, 171, TRUE),
  -- #172 Pichu
  (2102, 172, NULL, 172, TRUE),
  -- #173 Cleffa
  (2102, 173, NULL, 173, TRUE),
  -- #174 Igglybuff
  (2102, 174, NULL, 174, TRUE),
  -- #175 Togepi
  (2102, 175, NULL, 175, TRUE),
  -- #176 Togetic
  (2102, 176, NULL, 176, TRUE),
  -- #177 Natu
  (2102, 177, NULL, 177, TRUE),
  -- #178 Xatu
  (2102, 178, NULL, 178, TRUE),
  -- #179 Mareep
  (2102, 179, NULL, 179, TRUE),
  -- #180 Flaaffy
  (2102, 180, NULL, 180, TRUE),
  -- #181 Ampharos
  (2102, 181, NULL, 181, TRUE),
  -- #182 Bellossom
  (2102, 182, NULL, 182, TRUE),
  -- #183 Marill
  (2102, 183, NULL, 183, TRUE),
  -- #184 Azumarill
  (2102, 184, NULL, 184, TRUE),
  -- #185 Sudowoodo
  (2102, 185, NULL, 185, TRUE),
  -- #186 Politoed
  (2102, 186, NULL, 186, TRUE),
  -- #187 Hoppip
  (2102, 187, NULL, 187, TRUE),
  -- #188 Skiploom
  (2102, 188, NULL, 188, TRUE),
  -- #189 Jumpluff
  (2102, 189, NULL, 189, TRUE),
  -- #190 Aipom
  (2102, 190, NULL, 190, TRUE),
  -- #191 Sunkern
  (2102, 191, NULL, 191, TRUE),
  -- #192 Sunflora
  (2102, 192, NULL, 192, TRUE),
  -- #193 Yanma
  (2102, 193, NULL, 193, TRUE),
  -- #194 Wooper
  (2102, 194, NULL, 194, TRUE),
  -- #195 Quagsire
  (2102, 195, NULL, 195, TRUE),
  -- #196 Espeon
  (2102, 196, NULL, 196, TRUE),
  -- #197 Umbreon
  (2102, 197, NULL, 197, TRUE),
  -- #198 Murkrow
  (2102, 198, NULL, 198, TRUE),
  -- #199 Slowking
  (2102, 199, NULL, 199, TRUE),
  -- #200 Misdreavus
  (2102, 200, NULL, 200, TRUE),
  -- #201 Unown
  (2102, 201, NULL, 201, TRUE),
  -- #202 Wobbuffet
  (2102, 202, NULL, 202, TRUE),
  -- #203 Girafarig
  (2102, 203, NULL, 203, TRUE),
  -- #204 Pineco
  (2102, 204, NULL, 204, TRUE),
  -- #205 Forretress
  (2102, 205, NULL, 205, TRUE),
  -- #206 Dunsparce
  (2102, 206, NULL, 206, TRUE),
  -- #207 Gligar
  (2102, 207, NULL, 207, TRUE),
  -- #208 Steelix
  (2102, 208, NULL, 208, TRUE),
  -- #209 Snubbull
  (2102, 209, NULL, 209, TRUE),
  -- #210 Granbull
  (2102, 210, NULL, 210, TRUE),
  -- #211 Qwilfish
  (2102, 211, NULL, 211, TRUE),
  -- #212 Scizor
  (2102, 212, NULL, 212, TRUE),
  -- #213 Shuckle
  (2102, 213, NULL, 213, TRUE),
  -- #214 Heracross
  (2102, 214, NULL, 214, TRUE),
  -- #215 Sneasel
  (2102, 215, NULL, 215, TRUE),
  -- #216 Teddiursa
  (2102, 216, NULL, 216, TRUE),
  -- #217 Ursaring
  (2102, 217, NULL, 217, TRUE),
  -- #218 Slugma
  (2102, 218, NULL, 218, TRUE),
  -- #219 Magcargo
  (2102, 219, NULL, 219, TRUE),
  -- #220 Swinub
  (2102, 220, NULL, 220, TRUE),
  -- #221 Piloswine
  (2102, 221, NULL, 221, TRUE),
  -- #222 Corsola
  (2102, 222, NULL, 222, TRUE),
  -- #223 Remoraid
  (2102, 223, NULL, 223, TRUE),
  -- #224 Octillery
  (2102, 224, NULL, 224, TRUE),
  -- #225 Delibird
  (2102, 225, NULL, 225, TRUE),
  -- #226 Mantine
  (2102, 226, NULL, 226, TRUE),
  -- #227 Skarmory
  (2102, 227, NULL, 227, TRUE),
  -- #228 Houndour
  (2102, 228, NULL, 228, TRUE),
  -- #229 Houndoom
  (2102, 229, NULL, 229, TRUE),
  -- #230 Kingdra
  (2102, 230, NULL, 230, TRUE),
  -- #231 Phanpy
  (2102, 231, NULL, 231, TRUE),
  -- #232 Donphan
  (2102, 232, NULL, 232, TRUE),
  -- #233 Porygon2
  (2102, 233, NULL, 233, TRUE),
  -- #234 Stantler
  (2102, 234, NULL, 234, TRUE),
  -- #235 Smeargle
  (2102, 235, NULL, 235, TRUE),
  -- #236 Tyrogue
  (2102, 236, NULL, 236, TRUE),
  -- #237 Hitmontop
  (2102, 237, NULL, 237, TRUE),
  -- #238 Smoochum
  (2102, 238, NULL, 238, TRUE),
  -- #239 Elekid
  (2102, 239, NULL, 239, TRUE),
  -- #240 Magby
  (2102, 240, NULL, 240, TRUE),
  -- #241 Miltank
  (2102, 241, NULL, 241, TRUE),
  -- #242 Blissey
  (2102, 242, NULL, 242, TRUE),
  -- #243 Raikou
  (2102, 243, NULL, 243, TRUE),
  -- #244 Entei
  (2102, 244, NULL, 244, TRUE),
  -- #245 Suicune
  (2102, 245, NULL, 245, TRUE),
  -- #246 Larvitar
  (2102, 246, NULL, 246, TRUE),
  -- #247 Pupitar
  (2102, 247, NULL, 247, TRUE),
  -- #248 Tyranitar
  (2102, 248, NULL, 248, TRUE),
  -- #249 Lugia
  (2102, 249, NULL, 249, TRUE),
  -- #250 Ho-Oh
  (2102, 250, NULL, 250, TRUE),
  -- #251 Celebi
  (2102, 251, NULL, 251, FALSE),
  -- #252 Treecko
  (2102, 252, NULL, 252, TRUE),
  -- #253 Grovyle
  (2102, 253, NULL, 253, TRUE),
  -- #254 Sceptile
  (2102, 254, NULL, 254, TRUE),
  -- #255 Torchic
  (2102, 255, NULL, 255, TRUE),
  -- #256 Combusken
  (2102, 256, NULL, 256, TRUE),
  -- #257 Blaziken
  (2102, 257, NULL, 257, TRUE),
  -- #258 Mudkip
  (2102, 258, NULL, 258, TRUE),
  -- #259 Marshtomp
  (2102, 259, NULL, 259, TRUE),
  -- #260 Swampert
  (2102, 260, NULL, 260, TRUE),
  -- #261 Poochyena
  (2102, 261, NULL, 261, TRUE),
  -- #262 Mightyena
  (2102, 262, NULL, 262, TRUE),
  -- #263 Zigzagoon
  (2102, 263, NULL, 263, TRUE),
  -- #264 Linoone
  (2102, 264, NULL, 264, TRUE),
  -- #265 Wurmple
  (2102, 265, NULL, 265, TRUE),
  -- #266 Silcoon
  (2102, 266, NULL, 266, TRUE),
  -- #267 Beautifly
  (2102, 267, NULL, 267, TRUE),
  -- #268 Cascoon
  (2102, 268, NULL, 268, TRUE),
  -- #269 Dustox
  (2102, 269, NULL, 269, TRUE),
  -- #270 Lotad
  (2102, 270, NULL, 270, TRUE),
  -- #271 Lombre
  (2102, 271, NULL, 271, TRUE),
  -- #272 Ludicolo
  (2102, 272, NULL, 272, TRUE),
  -- #273 Seedot
  (2102, 273, NULL, 273, TRUE),
  -- #274 Nuzleaf
  (2102, 274, NULL, 274, TRUE),
  -- #275 Shiftry
  (2102, 275, NULL, 275, TRUE),
  -- #276 Taillow
  (2102, 276, NULL, 276, TRUE),
  -- #277 Swellow
  (2102, 277, NULL, 277, TRUE),
  -- #278 Wingull
  (2102, 278, NULL, 278, TRUE),
  -- #279 Pelipper
  (2102, 279, NULL, 279, TRUE),
  -- #280 Ralts
  (2102, 280, NULL, 280, TRUE),
  -- #281 Kirlia
  (2102, 281, NULL, 281, TRUE),
  -- #282 Gardevoir
  (2102, 282, NULL, 282, TRUE),
  -- #283 Surskit
  (2102, 283, NULL, 283, TRUE),
  -- #284 Masquerain
  (2102, 284, NULL, 284, TRUE),
  -- #285 Shroomish
  (2102, 285, NULL, 285, TRUE),
  -- #286 Breloom
  (2102, 286, NULL, 286, TRUE),
  -- #287 Slakoth
  (2102, 287, NULL, 287, TRUE),
  -- #288 Vigoroth
  (2102, 288, NULL, 288, TRUE),
  -- #289 Slaking
  (2102, 289, NULL, 289, TRUE),
  -- #290 Nincada
  (2102, 290, NULL, 290, TRUE),
  -- #291 Ninjask
  (2102, 291, NULL, 291, TRUE),
  -- #292 Shedinja
  (2102, 292, NULL, 292, TRUE),
  -- #293 Whismur
  (2102, 293, NULL, 293, TRUE),
  -- #294 Loudred
  (2102, 294, NULL, 294, TRUE),
  -- #295 Exploud
  (2102, 295, NULL, 295, TRUE),
  -- #296 Makuhita
  (2102, 296, NULL, 296, TRUE),
  -- #297 Hariyama
  (2102, 297, NULL, 297, TRUE),
  -- #298 Azurill
  (2102, 298, NULL, 298, TRUE),
  -- #299 Nosepass
  (2102, 299, NULL, 299, TRUE),
  -- #300 Skitty
  (2102, 300, NULL, 300, TRUE),
  -- #301 Delcatty
  (2102, 301, NULL, 301, TRUE),
  -- #302 Sableye
  (2102, 302, NULL, 302, TRUE),
  -- #303 Mawile
  (2102, 303, NULL, 303, TRUE),
  -- #304 Aron
  (2102, 304, NULL, 304, TRUE),
  -- #305 Lairon
  (2102, 305, NULL, 305, TRUE),
  -- #306 Aggron
  (2102, 306, NULL, 306, TRUE),
  -- #307 Meditite
  (2102, 307, NULL, 307, TRUE),
  -- #308 Medicham
  (2102, 308, NULL, 308, TRUE),
  -- #309 Electrike
  (2102, 309, NULL, 309, TRUE),
  -- #310 Manectric
  (2102, 310, NULL, 310, TRUE),
  -- #311 Plusle
  (2102, 311, NULL, 311, TRUE),
  -- #312 Minun
  (2102, 312, NULL, 312, TRUE),
  -- #313 Volbeat
  (2102, 313, NULL, 313, TRUE),
  -- #314 Illumise
  (2102, 314, NULL, 314, TRUE),
  -- #315 Roselia
  (2102, 315, NULL, 315, TRUE),
  -- #316 Gulpin
  (2102, 316, NULL, 316, TRUE),
  -- #317 Swalot
  (2102, 317, NULL, 317, TRUE),
  -- #318 Carvanha
  (2102, 318, NULL, 318, TRUE),
  -- #319 Sharpedo
  (2102, 319, NULL, 319, TRUE),
  -- #320 Wailmer
  (2102, 320, NULL, 320, TRUE),
  -- #321 Wailord
  (2102, 321, NULL, 321, TRUE),
  -- #322 Numel
  (2102, 322, NULL, 322, TRUE),
  -- #323 Camerupt
  (2102, 323, NULL, 323, TRUE),
  -- #324 Torkoal
  (2102, 324, NULL, 324, TRUE),
  -- #325 Spoink
  (2102, 325, NULL, 325, TRUE),
  -- #326 Grumpig
  (2102, 326, NULL, 326, TRUE),
  -- #327 Spinda
  (2102, 327, NULL, 327, TRUE),
  -- #328 Trapinch
  (2102, 328, NULL, 328, TRUE),
  -- #329 Vibrava
  (2102, 329, NULL, 329, TRUE),
  -- #330 Flygon
  (2102, 330, NULL, 330, TRUE),
  -- #331 Cacnea
  (2102, 331, NULL, 331, TRUE),
  -- #332 Cacturne
  (2102, 332, NULL, 332, TRUE),
  -- #333 Swablu
  (2102, 333, NULL, 333, TRUE),
  -- #334 Altaria
  (2102, 334, NULL, 334, TRUE),
  -- #335 Zangoose
  (2102, 335, NULL, 335, TRUE),
  -- #336 Seviper
  (2102, 336, NULL, 336, TRUE),
  -- #337 Lunatone
  (2102, 337, NULL, 337, TRUE),
  -- #338 Solrock
  (2102, 338, NULL, 338, TRUE),
  -- #339 Barboach
  (2102, 339, NULL, 339, TRUE),
  -- #340 Whiscash
  (2102, 340, NULL, 340, TRUE),
  -- #341 Corphish
  (2102, 341, NULL, 341, TRUE),
  -- #342 Crawdaunt
  (2102, 342, NULL, 342, TRUE),
  -- #343 Baltoy
  (2102, 343, NULL, 343, TRUE),
  -- #344 Claydol
  (2102, 344, NULL, 344, TRUE),
  -- #345 Lileep
  (2102, 345, NULL, 345, TRUE),
  -- #346 Cradily
  (2102, 346, NULL, 346, TRUE),
  -- #347 Anorith
  (2102, 347, NULL, 347, TRUE),
  -- #348 Armaldo
  (2102, 348, NULL, 348, TRUE),
  -- #349 Feebas
  (2102, 349, NULL, 349, TRUE),
  -- #350 Milotic
  (2102, 350, NULL, 350, TRUE),
  -- #351 Castform
  (2102, 351, NULL, 351, TRUE),
  -- #352 Kecleon
  (2102, 352, NULL, 352, TRUE),
  -- #353 Shuppet
  (2102, 353, NULL, 353, TRUE),
  -- #354 Banette
  (2102, 354, NULL, 354, TRUE),
  -- #355 Duskull
  (2102, 355, NULL, 355, TRUE),
  -- #356 Dusclops
  (2102, 356, NULL, 356, TRUE),
  -- #357 Tropius
  (2102, 357, NULL, 357, TRUE),
  -- #358 Chimecho
  (2102, 358, NULL, 358, TRUE),
  -- #359 Absol
  (2102, 359, NULL, 359, TRUE),
  -- #360 Wynaut
  (2102, 360, NULL, 360, TRUE),
  -- #361 Snorunt
  (2102, 361, NULL, 361, TRUE),
  -- #362 Glalie
  (2102, 362, NULL, 362, TRUE),
  -- #363 Spheal
  (2102, 363, NULL, 363, TRUE),
  -- #364 Sealeo
  (2102, 364, NULL, 364, TRUE),
  -- #365 Walrein
  (2102, 365, NULL, 365, TRUE),
  -- #366 Clamperl
  (2102, 366, NULL, 366, TRUE),
  -- #367 Huntail
  (2102, 367, NULL, 367, TRUE),
  -- #368 Gorebyss
  (2102, 368, NULL, 368, TRUE),
  -- #369 Relicanth
  (2102, 369, NULL, 369, TRUE),
  -- #370 Luvdisc
  (2102, 370, NULL, 370, TRUE),
  -- #371 Bagon
  (2102, 371, NULL, 371, TRUE),
  -- #372 Shelgon
  (2102, 372, NULL, 372, TRUE),
  -- #373 Salamence
  (2102, 373, NULL, 373, TRUE),
  -- #374 Beldum
  (2102, 374, NULL, 374, TRUE),
  -- #375 Metang
  (2102, 375, NULL, 375, TRUE),
  -- #376 Metagross
  (2102, 376, NULL, 376, TRUE),
  -- #377 Regirock
  (2102, 377, NULL, 377, TRUE),
  -- #378 Regice
  (2102, 378, NULL, 378, TRUE),
  -- #379 Registeel
  (2102, 379, NULL, 379, TRUE),
  -- #380 Latias
  (2102, 380, NULL, 380, TRUE),
  -- #381 Latios
  (2102, 381, NULL, 381, TRUE),
  -- #382 Kyogre
  (2102, 382, NULL, 382, TRUE),
  -- #383 Groudon
  (2102, 383, NULL, 383, TRUE),
  -- #384 Rayquaza
  (2102, 384, NULL, 384, TRUE),
  -- #385 Jirachi
  (2102, 385, NULL, 385, FALSE),
  -- #386 Deoxys
  (2102, 386, NULL, 386, FALSE),
  -- #387 Turtwig
  (2102, 387, NULL, 387, TRUE),
  -- #388 Grotle
  (2102, 388, NULL, 388, TRUE),
  -- #389 Torterra
  (2102, 389, NULL, 389, TRUE),
  -- #390 Chimchar
  (2102, 390, NULL, 390, TRUE),
  -- #391 Monferno
  (2102, 391, NULL, 391, TRUE),
  -- #392 Infernape
  (2102, 392, NULL, 392, TRUE),
  -- #393 Piplup
  (2102, 393, NULL, 393, TRUE),
  -- #394 Prinplup
  (2102, 394, NULL, 394, TRUE),
  -- #395 Empoleon
  (2102, 395, NULL, 395, TRUE),
  -- #396 Starly
  (2102, 396, NULL, 396, TRUE),
  -- #397 Staravia
  (2102, 397, NULL, 397, TRUE),
  -- #398 Staraptor
  (2102, 398, NULL, 398, TRUE),
  -- #399 Bidoof
  (2102, 399, NULL, 399, TRUE),
  -- #400 Bibarel
  (2102, 400, NULL, 400, TRUE),
  -- #401 Kricketot
  (2102, 401, NULL, 401, TRUE),
  -- #402 Kricketune
  (2102, 402, NULL, 402, TRUE),
  -- #403 Shinx
  (2102, 403, NULL, 403, TRUE),
  -- #404 Luxio
  (2102, 404, NULL, 404, TRUE),
  -- #405 Luxray
  (2102, 405, NULL, 405, TRUE),
  -- #406 Budew
  (2102, 406, NULL, 406, TRUE),
  -- #407 Roserade
  (2102, 407, NULL, 407, TRUE),
  -- #408 Cranidos
  (2102, 408, NULL, 408, TRUE),
  -- #409 Rampardos
  (2102, 409, NULL, 409, TRUE),
  -- #410 Shieldon
  (2102, 410, NULL, 410, TRUE),
  -- #411 Bastiodon
  (2102, 411, NULL, 411, TRUE),
  -- #412 Burmy
  (2102, 412, NULL, 412, TRUE),
  -- #413 Wormadam
  (2102, 413, NULL, 413, TRUE),
  -- #414 Mothim
  (2102, 414, NULL, 414, TRUE),
  -- #415 Combee
  (2102, 415, NULL, 415, TRUE),
  -- #416 Vespiquen
  (2102, 416, NULL, 416, TRUE),
  -- #417 Pachirisu
  (2102, 417, NULL, 417, TRUE),
  -- #418 Buizel
  (2102, 418, NULL, 418, TRUE),
  -- #419 Floatzel
  (2102, 419, NULL, 419, TRUE),
  -- #420 Cherubi
  (2102, 420, NULL, 420, TRUE),
  -- #421 Cherrim
  (2102, 421, NULL, 421, TRUE),
  -- #422 Shellos
  (2102, 422, NULL, 422, TRUE),
  -- #423 Gastrodon
  (2102, 423, NULL, 423, TRUE),
  -- #424 Ambipom
  (2102, 424, NULL, 424, TRUE),
  -- #425 Drifloon
  (2102, 425, NULL, 425, TRUE),
  -- #426 Drifblim
  (2102, 426, NULL, 426, TRUE),
  -- #427 Buneary
  (2102, 427, NULL, 427, TRUE),
  -- #428 Lopunny
  (2102, 428, NULL, 428, TRUE),
  -- #429 Mismagius
  (2102, 429, NULL, 429, TRUE),
  -- #430 Honchkrow
  (2102, 430, NULL, 430, TRUE),
  -- #431 Glameow
  (2102, 431, NULL, 431, TRUE),
  -- #432 Purugly
  (2102, 432, NULL, 432, TRUE),
  -- #433 Chingling
  (2102, 433, NULL, 433, TRUE),
  -- #434 Stunky
  (2102, 434, NULL, 434, TRUE),
  -- #435 Skuntank
  (2102, 435, NULL, 435, TRUE),
  -- #436 Bronzor
  (2102, 436, NULL, 436, TRUE),
  -- #437 Bronzong
  (2102, 437, NULL, 437, TRUE),
  -- #438 Bonsly
  (2102, 438, NULL, 438, TRUE),
  -- #439 Mime Jr.
  (2102, 439, NULL, 439, TRUE),
  -- #440 Happiny
  (2102, 440, NULL, 440, TRUE),
  -- #441 Chatot
  (2102, 441, NULL, 441, TRUE),
  -- #442 Spiritomb
  (2102, 442, NULL, 442, TRUE),
  -- #443 Gible
  (2102, 443, NULL, 443, TRUE),
  -- #444 Gabite
  (2102, 444, NULL, 444, TRUE),
  -- #445 Garchomp
  (2102, 445, NULL, 445, TRUE),
  -- #446 Munchlax
  (2102, 446, NULL, 446, TRUE),
  -- #447 Riolu
  (2102, 447, NULL, 447, TRUE),
  -- #448 Lucario
  (2102, 448, NULL, 448, TRUE),
  -- #449 Hippopotas
  (2102, 449, NULL, 449, TRUE),
  -- #450 Hippowdon
  (2102, 450, NULL, 450, TRUE),
  -- #451 Skorupi
  (2102, 451, NULL, 451, TRUE),
  -- #452 Drapion
  (2102, 452, NULL, 452, TRUE),
  -- #453 Croagunk
  (2102, 453, NULL, 453, TRUE),
  -- #454 Toxicroak
  (2102, 454, NULL, 454, TRUE),
  -- #455 Carnivine
  (2102, 455, NULL, 455, TRUE),
  -- #456 Finneon
  (2102, 456, NULL, 456, TRUE),
  -- #457 Lumineon
  (2102, 457, NULL, 457, TRUE),
  -- #458 Mantyke
  (2102, 458, NULL, 458, TRUE),
  -- #459 Snover
  (2102, 459, NULL, 459, TRUE),
  -- #460 Abomasnow
  (2102, 460, NULL, 460, TRUE),
  -- #461 Weavile
  (2102, 461, NULL, 461, TRUE),
  -- #462 Magnezone
  (2102, 462, NULL, 462, TRUE),
  -- #463 Lickilicky
  (2102, 463, NULL, 463, TRUE),
  -- #464 Rhyperior
  (2102, 464, NULL, 464, TRUE),
  -- #465 Tangrowth
  (2102, 465, NULL, 465, TRUE),
  -- #466 Electivire
  (2102, 466, NULL, 466, TRUE),
  -- #467 Magmortar
  (2102, 467, NULL, 467, TRUE),
  -- #468 Togekiss
  (2102, 468, NULL, 468, TRUE),
  -- #469 Yanmega
  (2102, 469, NULL, 469, TRUE),
  -- #470 Leafeon
  (2102, 470, NULL, 470, TRUE),
  -- #471 Glaceon
  (2102, 471, NULL, 471, TRUE),
  -- #472 Gliscor
  (2102, 472, NULL, 472, TRUE),
  -- #473 Mamoswine
  (2102, 473, NULL, 473, TRUE),
  -- #474 Porygon-Z
  (2102, 474, NULL, 474, TRUE),
  -- #475 Gallade
  (2102, 475, NULL, 475, TRUE),
  -- #476 Probopass
  (2102, 476, NULL, 476, TRUE),
  -- #477 Dusknoir
  (2102, 477, NULL, 477, TRUE),
  -- #478 Froslass
  (2102, 478, NULL, 478, TRUE),
  -- #479 Rotom
  (2102, 479, NULL, 479, TRUE),
  -- #480 Uxie
  (2102, 480, NULL, 480, TRUE),
  -- #481 Mesprit
  (2102, 481, NULL, 481, TRUE),
  -- #482 Azelf
  (2102, 482, NULL, 482, TRUE),
  -- #483 Dialga
  (2102, 483, NULL, 483, TRUE),
  -- #484 Palkia
  (2102, 484, NULL, 484, TRUE),
  -- #485 Heatran
  (2102, 485, NULL, 485, TRUE),
  -- #486 Regigigas
  (2102, 486, NULL, 486, TRUE),
  -- #487 Giratina
  (2102, 487, NULL, 487, TRUE),
  -- #488 Cresselia
  (2102, 488, NULL, 488, TRUE),
  -- #489 Phione
  (2102, 489, NULL, 489, FALSE),
  -- #490 Manaphy
  (2102, 490, NULL, 490, FALSE),
  -- #491 Darkrai
  (2102, 491, NULL, 491, FALSE),
  -- #492 Shaymin
  (2102, 492, NULL, 492, FALSE),
  -- #493 Arceus
  (2102, 493, NULL, 493, FALSE);
