-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by National Pokedex number.
-- Cross-check: Bulbapedia National Pokedex page, Serebii National Pokedex, and PokemonDB National Pokedex.
-- ============================================================================
-- File Scope
-- ============================================================================
-- National Pokedex entries for Black / White.
-- National Pokedex contains 649 species for this version group; Mythical species are source-visible but not required for default completion.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Bulbasaur
  (1102, 1, NULL, 1, TRUE),
  -- #002 Ivysaur
  (1102, 2, NULL, 2, TRUE),
  -- #003 Venusaur
  (1102, 3, NULL, 3, TRUE),
  -- #004 Charmander
  (1102, 4, NULL, 4, TRUE),
  -- #005 Charmeleon
  (1102, 5, NULL, 5, TRUE),
  -- #006 Charizard
  (1102, 6, NULL, 6, TRUE),
  -- #007 Squirtle
  (1102, 7, NULL, 7, TRUE),
  -- #008 Wartortle
  (1102, 8, NULL, 8, TRUE),
  -- #009 Blastoise
  (1102, 9, NULL, 9, TRUE),
  -- #010 Caterpie
  (1102, 10, NULL, 10, TRUE),
  -- #011 Metapod
  (1102, 11, NULL, 11, TRUE),
  -- #012 Butterfree
  (1102, 12, NULL, 12, TRUE),
  -- #013 Weedle
  (1102, 13, NULL, 13, TRUE),
  -- #014 Kakuna
  (1102, 14, NULL, 14, TRUE),
  -- #015 Beedrill
  (1102, 15, NULL, 15, TRUE),
  -- #016 Pidgey
  (1102, 16, NULL, 16, TRUE),
  -- #017 Pidgeotto
  (1102, 17, NULL, 17, TRUE),
  -- #018 Pidgeot
  (1102, 18, NULL, 18, TRUE),
  -- #019 Rattata
  (1102, 19, NULL, 19, TRUE),
  -- #020 Raticate
  (1102, 20, NULL, 20, TRUE),
  -- #021 Spearow
  (1102, 21, NULL, 21, TRUE),
  -- #022 Fearow
  (1102, 22, NULL, 22, TRUE),
  -- #023 Ekans
  (1102, 23, NULL, 23, TRUE),
  -- #024 Arbok
  (1102, 24, NULL, 24, TRUE),
  -- #025 Pikachu
  (1102, 25, NULL, 25, TRUE),
  -- #026 Raichu
  (1102, 26, NULL, 26, TRUE),
  -- #027 Sandshrew
  (1102, 27, NULL, 27, TRUE),
  -- #028 Sandslash
  (1102, 28, NULL, 28, TRUE),
  -- #029 Nidoran F
  (1102, 29, NULL, 29, TRUE),
  -- #030 Nidorina
  (1102, 30, NULL, 30, TRUE),
  -- #031 Nidoqueen
  (1102, 31, NULL, 31, TRUE),
  -- #032 Nidoran M
  (1102, 32, NULL, 32, TRUE),
  -- #033 Nidorino
  (1102, 33, NULL, 33, TRUE),
  -- #034 Nidoking
  (1102, 34, NULL, 34, TRUE),
  -- #035 Clefairy
  (1102, 35, NULL, 35, TRUE),
  -- #036 Clefable
  (1102, 36, NULL, 36, TRUE),
  -- #037 Vulpix
  (1102, 37, NULL, 37, TRUE),
  -- #038 Ninetales
  (1102, 38, NULL, 38, TRUE),
  -- #039 Jigglypuff
  (1102, 39, NULL, 39, TRUE),
  -- #040 Wigglytuff
  (1102, 40, NULL, 40, TRUE),
  -- #041 Zubat
  (1102, 41, NULL, 41, TRUE),
  -- #042 Golbat
  (1102, 42, NULL, 42, TRUE),
  -- #043 Oddish
  (1102, 43, NULL, 43, TRUE),
  -- #044 Gloom
  (1102, 44, NULL, 44, TRUE),
  -- #045 Vileplume
  (1102, 45, NULL, 45, TRUE),
  -- #046 Paras
  (1102, 46, NULL, 46, TRUE),
  -- #047 Parasect
  (1102, 47, NULL, 47, TRUE),
  -- #048 Venonat
  (1102, 48, NULL, 48, TRUE),
  -- #049 Venomoth
  (1102, 49, NULL, 49, TRUE),
  -- #050 Diglett
  (1102, 50, NULL, 50, TRUE),
  -- #051 Dugtrio
  (1102, 51, NULL, 51, TRUE),
  -- #052 Meowth
  (1102, 52, NULL, 52, TRUE),
  -- #053 Persian
  (1102, 53, NULL, 53, TRUE),
  -- #054 Psyduck
  (1102, 54, NULL, 54, TRUE),
  -- #055 Golduck
  (1102, 55, NULL, 55, TRUE),
  -- #056 Mankey
  (1102, 56, NULL, 56, TRUE),
  -- #057 Primeape
  (1102, 57, NULL, 57, TRUE),
  -- #058 Growlithe
  (1102, 58, NULL, 58, TRUE),
  -- #059 Arcanine
  (1102, 59, NULL, 59, TRUE),
  -- #060 Poliwag
  (1102, 60, NULL, 60, TRUE),
  -- #061 Poliwhirl
  (1102, 61, NULL, 61, TRUE),
  -- #062 Poliwrath
  (1102, 62, NULL, 62, TRUE),
  -- #063 Abra
  (1102, 63, NULL, 63, TRUE),
  -- #064 Kadabra
  (1102, 64, NULL, 64, TRUE),
  -- #065 Alakazam
  (1102, 65, NULL, 65, TRUE),
  -- #066 Machop
  (1102, 66, NULL, 66, TRUE),
  -- #067 Machoke
  (1102, 67, NULL, 67, TRUE),
  -- #068 Machamp
  (1102, 68, NULL, 68, TRUE),
  -- #069 Bellsprout
  (1102, 69, NULL, 69, TRUE),
  -- #070 Weepinbell
  (1102, 70, NULL, 70, TRUE),
  -- #071 Victreebel
  (1102, 71, NULL, 71, TRUE),
  -- #072 Tentacool
  (1102, 72, NULL, 72, TRUE),
  -- #073 Tentacruel
  (1102, 73, NULL, 73, TRUE),
  -- #074 Geodude
  (1102, 74, NULL, 74, TRUE),
  -- #075 Graveler
  (1102, 75, NULL, 75, TRUE),
  -- #076 Golem
  (1102, 76, NULL, 76, TRUE),
  -- #077 Ponyta
  (1102, 77, NULL, 77, TRUE),
  -- #078 Rapidash
  (1102, 78, NULL, 78, TRUE),
  -- #079 Slowpoke
  (1102, 79, NULL, 79, TRUE),
  -- #080 Slowbro
  (1102, 80, NULL, 80, TRUE),
  -- #081 Magnemite
  (1102, 81, NULL, 81, TRUE),
  -- #082 Magneton
  (1102, 82, NULL, 82, TRUE),
  -- #083 Farfetch'd
  (1102, 83, NULL, 83, TRUE),
  -- #084 Doduo
  (1102, 84, NULL, 84, TRUE),
  -- #085 Dodrio
  (1102, 85, NULL, 85, TRUE),
  -- #086 Seel
  (1102, 86, NULL, 86, TRUE),
  -- #087 Dewgong
  (1102, 87, NULL, 87, TRUE),
  -- #088 Grimer
  (1102, 88, NULL, 88, TRUE),
  -- #089 Muk
  (1102, 89, NULL, 89, TRUE),
  -- #090 Shellder
  (1102, 90, NULL, 90, TRUE),
  -- #091 Cloyster
  (1102, 91, NULL, 91, TRUE),
  -- #092 Gastly
  (1102, 92, NULL, 92, TRUE),
  -- #093 Haunter
  (1102, 93, NULL, 93, TRUE),
  -- #094 Gengar
  (1102, 94, NULL, 94, TRUE),
  -- #095 Onix
  (1102, 95, NULL, 95, TRUE),
  -- #096 Drowzee
  (1102, 96, NULL, 96, TRUE),
  -- #097 Hypno
  (1102, 97, NULL, 97, TRUE),
  -- #098 Krabby
  (1102, 98, NULL, 98, TRUE),
  -- #099 Kingler
  (1102, 99, NULL, 99, TRUE),
  -- #100 Voltorb
  (1102, 100, NULL, 100, TRUE),
  -- #101 Electrode
  (1102, 101, NULL, 101, TRUE),
  -- #102 Exeggcute
  (1102, 102, NULL, 102, TRUE),
  -- #103 Exeggutor
  (1102, 103, NULL, 103, TRUE),
  -- #104 Cubone
  (1102, 104, NULL, 104, TRUE),
  -- #105 Marowak
  (1102, 105, NULL, 105, TRUE),
  -- #106 Hitmonlee
  (1102, 106, NULL, 106, TRUE),
  -- #107 Hitmonchan
  (1102, 107, NULL, 107, TRUE),
  -- #108 Lickitung
  (1102, 108, NULL, 108, TRUE),
  -- #109 Koffing
  (1102, 109, NULL, 109, TRUE),
  -- #110 Weezing
  (1102, 110, NULL, 110, TRUE),
  -- #111 Rhyhorn
  (1102, 111, NULL, 111, TRUE),
  -- #112 Rhydon
  (1102, 112, NULL, 112, TRUE),
  -- #113 Chansey
  (1102, 113, NULL, 113, TRUE),
  -- #114 Tangela
  (1102, 114, NULL, 114, TRUE),
  -- #115 Kangaskhan
  (1102, 115, NULL, 115, TRUE),
  -- #116 Horsea
  (1102, 116, NULL, 116, TRUE),
  -- #117 Seadra
  (1102, 117, NULL, 117, TRUE),
  -- #118 Goldeen
  (1102, 118, NULL, 118, TRUE),
  -- #119 Seaking
  (1102, 119, NULL, 119, TRUE),
  -- #120 Staryu
  (1102, 120, NULL, 120, TRUE),
  -- #121 Starmie
  (1102, 121, NULL, 121, TRUE),
  -- #122 Mr. Mime
  (1102, 122, NULL, 122, TRUE),
  -- #123 Scyther
  (1102, 123, NULL, 123, TRUE),
  -- #124 Jynx
  (1102, 124, NULL, 124, TRUE),
  -- #125 Electabuzz
  (1102, 125, NULL, 125, TRUE),
  -- #126 Magmar
  (1102, 126, NULL, 126, TRUE),
  -- #127 Pinsir
  (1102, 127, NULL, 127, TRUE),
  -- #128 Tauros
  (1102, 128, NULL, 128, TRUE),
  -- #129 Magikarp
  (1102, 129, NULL, 129, TRUE),
  -- #130 Gyarados
  (1102, 130, NULL, 130, TRUE),
  -- #131 Lapras
  (1102, 131, NULL, 131, TRUE),
  -- #132 Ditto
  (1102, 132, NULL, 132, TRUE),
  -- #133 Eevee
  (1102, 133, NULL, 133, TRUE),
  -- #134 Vaporeon
  (1102, 134, NULL, 134, TRUE),
  -- #135 Jolteon
  (1102, 135, NULL, 135, TRUE),
  -- #136 Flareon
  (1102, 136, NULL, 136, TRUE),
  -- #137 Porygon
  (1102, 137, NULL, 137, TRUE),
  -- #138 Omanyte
  (1102, 138, NULL, 138, TRUE),
  -- #139 Omastar
  (1102, 139, NULL, 139, TRUE),
  -- #140 Kabuto
  (1102, 140, NULL, 140, TRUE),
  -- #141 Kabutops
  (1102, 141, NULL, 141, TRUE),
  -- #142 Aerodactyl
  (1102, 142, NULL, 142, TRUE),
  -- #143 Snorlax
  (1102, 143, NULL, 143, TRUE),
  -- #144 Articuno
  (1102, 144, NULL, 144, TRUE),
  -- #145 Zapdos
  (1102, 145, NULL, 145, TRUE),
  -- #146 Moltres
  (1102, 146, NULL, 146, TRUE),
  -- #147 Dratini
  (1102, 147, NULL, 147, TRUE),
  -- #148 Dragonair
  (1102, 148, NULL, 148, TRUE),
  -- #149 Dragonite
  (1102, 149, NULL, 149, TRUE),
  -- #150 Mewtwo
  (1102, 150, NULL, 150, TRUE),
  -- #151 Mew
  (1102, 151, NULL, 151, FALSE),
  -- #152 Chikorita
  (1102, 152, NULL, 152, TRUE),
  -- #153 Bayleef
  (1102, 153, NULL, 153, TRUE),
  -- #154 Meganium
  (1102, 154, NULL, 154, TRUE),
  -- #155 Cyndaquil
  (1102, 155, NULL, 155, TRUE),
  -- #156 Quilava
  (1102, 156, NULL, 156, TRUE),
  -- #157 Typhlosion
  (1102, 157, NULL, 157, TRUE),
  -- #158 Totodile
  (1102, 158, NULL, 158, TRUE),
  -- #159 Croconaw
  (1102, 159, NULL, 159, TRUE),
  -- #160 Feraligatr
  (1102, 160, NULL, 160, TRUE),
  -- #161 Sentret
  (1102, 161, NULL, 161, TRUE),
  -- #162 Furret
  (1102, 162, NULL, 162, TRUE),
  -- #163 Hoothoot
  (1102, 163, NULL, 163, TRUE),
  -- #164 Noctowl
  (1102, 164, NULL, 164, TRUE),
  -- #165 Ledyba
  (1102, 165, NULL, 165, TRUE),
  -- #166 Ledian
  (1102, 166, NULL, 166, TRUE),
  -- #167 Spinarak
  (1102, 167, NULL, 167, TRUE),
  -- #168 Ariados
  (1102, 168, NULL, 168, TRUE),
  -- #169 Crobat
  (1102, 169, NULL, 169, TRUE),
  -- #170 Chinchou
  (1102, 170, NULL, 170, TRUE),
  -- #171 Lanturn
  (1102, 171, NULL, 171, TRUE),
  -- #172 Pichu
  (1102, 172, NULL, 172, TRUE),
  -- #173 Cleffa
  (1102, 173, NULL, 173, TRUE),
  -- #174 Igglybuff
  (1102, 174, NULL, 174, TRUE),
  -- #175 Togepi
  (1102, 175, NULL, 175, TRUE),
  -- #176 Togetic
  (1102, 176, NULL, 176, TRUE),
  -- #177 Natu
  (1102, 177, NULL, 177, TRUE),
  -- #178 Xatu
  (1102, 178, NULL, 178, TRUE),
  -- #179 Mareep
  (1102, 179, NULL, 179, TRUE),
  -- #180 Flaaffy
  (1102, 180, NULL, 180, TRUE),
  -- #181 Ampharos
  (1102, 181, NULL, 181, TRUE),
  -- #182 Bellossom
  (1102, 182, NULL, 182, TRUE),
  -- #183 Marill
  (1102, 183, NULL, 183, TRUE),
  -- #184 Azumarill
  (1102, 184, NULL, 184, TRUE),
  -- #185 Sudowoodo
  (1102, 185, NULL, 185, TRUE),
  -- #186 Politoed
  (1102, 186, NULL, 186, TRUE),
  -- #187 Hoppip
  (1102, 187, NULL, 187, TRUE),
  -- #188 Skiploom
  (1102, 188, NULL, 188, TRUE),
  -- #189 Jumpluff
  (1102, 189, NULL, 189, TRUE),
  -- #190 Aipom
  (1102, 190, NULL, 190, TRUE),
  -- #191 Sunkern
  (1102, 191, NULL, 191, TRUE),
  -- #192 Sunflora
  (1102, 192, NULL, 192, TRUE),
  -- #193 Yanma
  (1102, 193, NULL, 193, TRUE),
  -- #194 Wooper
  (1102, 194, NULL, 194, TRUE),
  -- #195 Quagsire
  (1102, 195, NULL, 195, TRUE),
  -- #196 Espeon
  (1102, 196, NULL, 196, TRUE),
  -- #197 Umbreon
  (1102, 197, NULL, 197, TRUE),
  -- #198 Murkrow
  (1102, 198, NULL, 198, TRUE),
  -- #199 Slowking
  (1102, 199, NULL, 199, TRUE),
  -- #200 Misdreavus
  (1102, 200, NULL, 200, TRUE),
  -- #201 Unown
  (1102, 201, NULL, 201, TRUE),
  -- #202 Wobbuffet
  (1102, 202, NULL, 202, TRUE),
  -- #203 Girafarig
  (1102, 203, NULL, 203, TRUE),
  -- #204 Pineco
  (1102, 204, NULL, 204, TRUE),
  -- #205 Forretress
  (1102, 205, NULL, 205, TRUE),
  -- #206 Dunsparce
  (1102, 206, NULL, 206, TRUE),
  -- #207 Gligar
  (1102, 207, NULL, 207, TRUE),
  -- #208 Steelix
  (1102, 208, NULL, 208, TRUE),
  -- #209 Snubbull
  (1102, 209, NULL, 209, TRUE),
  -- #210 Granbull
  (1102, 210, NULL, 210, TRUE),
  -- #211 Qwilfish
  (1102, 211, NULL, 211, TRUE),
  -- #212 Scizor
  (1102, 212, NULL, 212, TRUE),
  -- #213 Shuckle
  (1102, 213, NULL, 213, TRUE),
  -- #214 Heracross
  (1102, 214, NULL, 214, TRUE),
  -- #215 Sneasel
  (1102, 215, NULL, 215, TRUE),
  -- #216 Teddiursa
  (1102, 216, NULL, 216, TRUE),
  -- #217 Ursaring
  (1102, 217, NULL, 217, TRUE),
  -- #218 Slugma
  (1102, 218, NULL, 218, TRUE),
  -- #219 Magcargo
  (1102, 219, NULL, 219, TRUE),
  -- #220 Swinub
  (1102, 220, NULL, 220, TRUE),
  -- #221 Piloswine
  (1102, 221, NULL, 221, TRUE),
  -- #222 Corsola
  (1102, 222, NULL, 222, TRUE),
  -- #223 Remoraid
  (1102, 223, NULL, 223, TRUE),
  -- #224 Octillery
  (1102, 224, NULL, 224, TRUE),
  -- #225 Delibird
  (1102, 225, NULL, 225, TRUE),
  -- #226 Mantine
  (1102, 226, NULL, 226, TRUE),
  -- #227 Skarmory
  (1102, 227, NULL, 227, TRUE),
  -- #228 Houndour
  (1102, 228, NULL, 228, TRUE),
  -- #229 Houndoom
  (1102, 229, NULL, 229, TRUE),
  -- #230 Kingdra
  (1102, 230, NULL, 230, TRUE),
  -- #231 Phanpy
  (1102, 231, NULL, 231, TRUE),
  -- #232 Donphan
  (1102, 232, NULL, 232, TRUE),
  -- #233 Porygon2
  (1102, 233, NULL, 233, TRUE),
  -- #234 Stantler
  (1102, 234, NULL, 234, TRUE),
  -- #235 Smeargle
  (1102, 235, NULL, 235, TRUE),
  -- #236 Tyrogue
  (1102, 236, NULL, 236, TRUE),
  -- #237 Hitmontop
  (1102, 237, NULL, 237, TRUE),
  -- #238 Smoochum
  (1102, 238, NULL, 238, TRUE),
  -- #239 Elekid
  (1102, 239, NULL, 239, TRUE),
  -- #240 Magby
  (1102, 240, NULL, 240, TRUE),
  -- #241 Miltank
  (1102, 241, NULL, 241, TRUE),
  -- #242 Blissey
  (1102, 242, NULL, 242, TRUE),
  -- #243 Raikou
  (1102, 243, NULL, 243, TRUE),
  -- #244 Entei
  (1102, 244, NULL, 244, TRUE),
  -- #245 Suicune
  (1102, 245, NULL, 245, TRUE),
  -- #246 Larvitar
  (1102, 246, NULL, 246, TRUE),
  -- #247 Pupitar
  (1102, 247, NULL, 247, TRUE),
  -- #248 Tyranitar
  (1102, 248, NULL, 248, TRUE),
  -- #249 Lugia
  (1102, 249, NULL, 249, TRUE),
  -- #250 Ho-Oh
  (1102, 250, NULL, 250, TRUE),
  -- #251 Celebi
  (1102, 251, NULL, 251, FALSE),
  -- #252 Treecko
  (1102, 252, NULL, 252, TRUE),
  -- #253 Grovyle
  (1102, 253, NULL, 253, TRUE),
  -- #254 Sceptile
  (1102, 254, NULL, 254, TRUE),
  -- #255 Torchic
  (1102, 255, NULL, 255, TRUE),
  -- #256 Combusken
  (1102, 256, NULL, 256, TRUE),
  -- #257 Blaziken
  (1102, 257, NULL, 257, TRUE),
  -- #258 Mudkip
  (1102, 258, NULL, 258, TRUE),
  -- #259 Marshtomp
  (1102, 259, NULL, 259, TRUE),
  -- #260 Swampert
  (1102, 260, NULL, 260, TRUE),
  -- #261 Poochyena
  (1102, 261, NULL, 261, TRUE),
  -- #262 Mightyena
  (1102, 262, NULL, 262, TRUE),
  -- #263 Zigzagoon
  (1102, 263, NULL, 263, TRUE),
  -- #264 Linoone
  (1102, 264, NULL, 264, TRUE),
  -- #265 Wurmple
  (1102, 265, NULL, 265, TRUE),
  -- #266 Silcoon
  (1102, 266, NULL, 266, TRUE),
  -- #267 Beautifly
  (1102, 267, NULL, 267, TRUE),
  -- #268 Cascoon
  (1102, 268, NULL, 268, TRUE),
  -- #269 Dustox
  (1102, 269, NULL, 269, TRUE),
  -- #270 Lotad
  (1102, 270, NULL, 270, TRUE),
  -- #271 Lombre
  (1102, 271, NULL, 271, TRUE),
  -- #272 Ludicolo
  (1102, 272, NULL, 272, TRUE),
  -- #273 Seedot
  (1102, 273, NULL, 273, TRUE),
  -- #274 Nuzleaf
  (1102, 274, NULL, 274, TRUE),
  -- #275 Shiftry
  (1102, 275, NULL, 275, TRUE),
  -- #276 Taillow
  (1102, 276, NULL, 276, TRUE),
  -- #277 Swellow
  (1102, 277, NULL, 277, TRUE),
  -- #278 Wingull
  (1102, 278, NULL, 278, TRUE),
  -- #279 Pelipper
  (1102, 279, NULL, 279, TRUE),
  -- #280 Ralts
  (1102, 280, NULL, 280, TRUE),
  -- #281 Kirlia
  (1102, 281, NULL, 281, TRUE),
  -- #282 Gardevoir
  (1102, 282, NULL, 282, TRUE),
  -- #283 Surskit
  (1102, 283, NULL, 283, TRUE),
  -- #284 Masquerain
  (1102, 284, NULL, 284, TRUE),
  -- #285 Shroomish
  (1102, 285, NULL, 285, TRUE),
  -- #286 Breloom
  (1102, 286, NULL, 286, TRUE),
  -- #287 Slakoth
  (1102, 287, NULL, 287, TRUE),
  -- #288 Vigoroth
  (1102, 288, NULL, 288, TRUE),
  -- #289 Slaking
  (1102, 289, NULL, 289, TRUE),
  -- #290 Nincada
  (1102, 290, NULL, 290, TRUE),
  -- #291 Ninjask
  (1102, 291, NULL, 291, TRUE),
  -- #292 Shedinja
  (1102, 292, NULL, 292, TRUE),
  -- #293 Whismur
  (1102, 293, NULL, 293, TRUE),
  -- #294 Loudred
  (1102, 294, NULL, 294, TRUE),
  -- #295 Exploud
  (1102, 295, NULL, 295, TRUE),
  -- #296 Makuhita
  (1102, 296, NULL, 296, TRUE),
  -- #297 Hariyama
  (1102, 297, NULL, 297, TRUE),
  -- #298 Azurill
  (1102, 298, NULL, 298, TRUE),
  -- #299 Nosepass
  (1102, 299, NULL, 299, TRUE),
  -- #300 Skitty
  (1102, 300, NULL, 300, TRUE),
  -- #301 Delcatty
  (1102, 301, NULL, 301, TRUE),
  -- #302 Sableye
  (1102, 302, NULL, 302, TRUE),
  -- #303 Mawile
  (1102, 303, NULL, 303, TRUE),
  -- #304 Aron
  (1102, 304, NULL, 304, TRUE),
  -- #305 Lairon
  (1102, 305, NULL, 305, TRUE),
  -- #306 Aggron
  (1102, 306, NULL, 306, TRUE),
  -- #307 Meditite
  (1102, 307, NULL, 307, TRUE),
  -- #308 Medicham
  (1102, 308, NULL, 308, TRUE),
  -- #309 Electrike
  (1102, 309, NULL, 309, TRUE),
  -- #310 Manectric
  (1102, 310, NULL, 310, TRUE),
  -- #311 Plusle
  (1102, 311, NULL, 311, TRUE),
  -- #312 Minun
  (1102, 312, NULL, 312, TRUE),
  -- #313 Volbeat
  (1102, 313, NULL, 313, TRUE),
  -- #314 Illumise
  (1102, 314, NULL, 314, TRUE),
  -- #315 Roselia
  (1102, 315, NULL, 315, TRUE),
  -- #316 Gulpin
  (1102, 316, NULL, 316, TRUE),
  -- #317 Swalot
  (1102, 317, NULL, 317, TRUE),
  -- #318 Carvanha
  (1102, 318, NULL, 318, TRUE),
  -- #319 Sharpedo
  (1102, 319, NULL, 319, TRUE),
  -- #320 Wailmer
  (1102, 320, NULL, 320, TRUE),
  -- #321 Wailord
  (1102, 321, NULL, 321, TRUE),
  -- #322 Numel
  (1102, 322, NULL, 322, TRUE),
  -- #323 Camerupt
  (1102, 323, NULL, 323, TRUE),
  -- #324 Torkoal
  (1102, 324, NULL, 324, TRUE),
  -- #325 Spoink
  (1102, 325, NULL, 325, TRUE),
  -- #326 Grumpig
  (1102, 326, NULL, 326, TRUE),
  -- #327 Spinda
  (1102, 327, NULL, 327, TRUE),
  -- #328 Trapinch
  (1102, 328, NULL, 328, TRUE),
  -- #329 Vibrava
  (1102, 329, NULL, 329, TRUE),
  -- #330 Flygon
  (1102, 330, NULL, 330, TRUE),
  -- #331 Cacnea
  (1102, 331, NULL, 331, TRUE),
  -- #332 Cacturne
  (1102, 332, NULL, 332, TRUE),
  -- #333 Swablu
  (1102, 333, NULL, 333, TRUE),
  -- #334 Altaria
  (1102, 334, NULL, 334, TRUE),
  -- #335 Zangoose
  (1102, 335, NULL, 335, TRUE),
  -- #336 Seviper
  (1102, 336, NULL, 336, TRUE),
  -- #337 Lunatone
  (1102, 337, NULL, 337, TRUE),
  -- #338 Solrock
  (1102, 338, NULL, 338, TRUE),
  -- #339 Barboach
  (1102, 339, NULL, 339, TRUE),
  -- #340 Whiscash
  (1102, 340, NULL, 340, TRUE),
  -- #341 Corphish
  (1102, 341, NULL, 341, TRUE),
  -- #342 Crawdaunt
  (1102, 342, NULL, 342, TRUE),
  -- #343 Baltoy
  (1102, 343, NULL, 343, TRUE),
  -- #344 Claydol
  (1102, 344, NULL, 344, TRUE),
  -- #345 Lileep
  (1102, 345, NULL, 345, TRUE),
  -- #346 Cradily
  (1102, 346, NULL, 346, TRUE),
  -- #347 Anorith
  (1102, 347, NULL, 347, TRUE),
  -- #348 Armaldo
  (1102, 348, NULL, 348, TRUE),
  -- #349 Feebas
  (1102, 349, NULL, 349, TRUE),
  -- #350 Milotic
  (1102, 350, NULL, 350, TRUE),
  -- #351 Castform
  (1102, 351, NULL, 351, TRUE),
  -- #352 Kecleon
  (1102, 352, NULL, 352, TRUE),
  -- #353 Shuppet
  (1102, 353, NULL, 353, TRUE),
  -- #354 Banette
  (1102, 354, NULL, 354, TRUE),
  -- #355 Duskull
  (1102, 355, NULL, 355, TRUE),
  -- #356 Dusclops
  (1102, 356, NULL, 356, TRUE),
  -- #357 Tropius
  (1102, 357, NULL, 357, TRUE),
  -- #358 Chimecho
  (1102, 358, NULL, 358, TRUE),
  -- #359 Absol
  (1102, 359, NULL, 359, TRUE),
  -- #360 Wynaut
  (1102, 360, NULL, 360, TRUE),
  -- #361 Snorunt
  (1102, 361, NULL, 361, TRUE),
  -- #362 Glalie
  (1102, 362, NULL, 362, TRUE),
  -- #363 Spheal
  (1102, 363, NULL, 363, TRUE),
  -- #364 Sealeo
  (1102, 364, NULL, 364, TRUE),
  -- #365 Walrein
  (1102, 365, NULL, 365, TRUE),
  -- #366 Clamperl
  (1102, 366, NULL, 366, TRUE),
  -- #367 Huntail
  (1102, 367, NULL, 367, TRUE),
  -- #368 Gorebyss
  (1102, 368, NULL, 368, TRUE),
  -- #369 Relicanth
  (1102, 369, NULL, 369, TRUE),
  -- #370 Luvdisc
  (1102, 370, NULL, 370, TRUE),
  -- #371 Bagon
  (1102, 371, NULL, 371, TRUE),
  -- #372 Shelgon
  (1102, 372, NULL, 372, TRUE),
  -- #373 Salamence
  (1102, 373, NULL, 373, TRUE),
  -- #374 Beldum
  (1102, 374, NULL, 374, TRUE),
  -- #375 Metang
  (1102, 375, NULL, 375, TRUE),
  -- #376 Metagross
  (1102, 376, NULL, 376, TRUE),
  -- #377 Regirock
  (1102, 377, NULL, 377, TRUE),
  -- #378 Regice
  (1102, 378, NULL, 378, TRUE),
  -- #379 Registeel
  (1102, 379, NULL, 379, TRUE),
  -- #380 Latias
  (1102, 380, NULL, 380, TRUE),
  -- #381 Latios
  (1102, 381, NULL, 381, TRUE),
  -- #382 Kyogre
  (1102, 382, NULL, 382, TRUE),
  -- #383 Groudon
  (1102, 383, NULL, 383, TRUE),
  -- #384 Rayquaza
  (1102, 384, NULL, 384, TRUE),
  -- #385 Jirachi
  (1102, 385, NULL, 385, FALSE),
  -- #386 Deoxys
  (1102, 386, NULL, 386, FALSE),
  -- #387 Turtwig
  (1102, 387, NULL, 387, TRUE),
  -- #388 Grotle
  (1102, 388, NULL, 388, TRUE),
  -- #389 Torterra
  (1102, 389, NULL, 389, TRUE),
  -- #390 Chimchar
  (1102, 390, NULL, 390, TRUE),
  -- #391 Monferno
  (1102, 391, NULL, 391, TRUE),
  -- #392 Infernape
  (1102, 392, NULL, 392, TRUE),
  -- #393 Piplup
  (1102, 393, NULL, 393, TRUE),
  -- #394 Prinplup
  (1102, 394, NULL, 394, TRUE),
  -- #395 Empoleon
  (1102, 395, NULL, 395, TRUE),
  -- #396 Starly
  (1102, 396, NULL, 396, TRUE),
  -- #397 Staravia
  (1102, 397, NULL, 397, TRUE),
  -- #398 Staraptor
  (1102, 398, NULL, 398, TRUE),
  -- #399 Bidoof
  (1102, 399, NULL, 399, TRUE),
  -- #400 Bibarel
  (1102, 400, NULL, 400, TRUE),
  -- #401 Kricketot
  (1102, 401, NULL, 401, TRUE),
  -- #402 Kricketune
  (1102, 402, NULL, 402, TRUE),
  -- #403 Shinx
  (1102, 403, NULL, 403, TRUE),
  -- #404 Luxio
  (1102, 404, NULL, 404, TRUE),
  -- #405 Luxray
  (1102, 405, NULL, 405, TRUE),
  -- #406 Budew
  (1102, 406, NULL, 406, TRUE),
  -- #407 Roserade
  (1102, 407, NULL, 407, TRUE),
  -- #408 Cranidos
  (1102, 408, NULL, 408, TRUE),
  -- #409 Rampardos
  (1102, 409, NULL, 409, TRUE),
  -- #410 Shieldon
  (1102, 410, NULL, 410, TRUE),
  -- #411 Bastiodon
  (1102, 411, NULL, 411, TRUE),
  -- #412 Burmy
  (1102, 412, NULL, 412, TRUE),
  -- #413 Wormadam
  (1102, 413, NULL, 413, TRUE),
  -- #414 Mothim
  (1102, 414, NULL, 414, TRUE),
  -- #415 Combee
  (1102, 415, NULL, 415, TRUE),
  -- #416 Vespiquen
  (1102, 416, NULL, 416, TRUE),
  -- #417 Pachirisu
  (1102, 417, NULL, 417, TRUE),
  -- #418 Buizel
  (1102, 418, NULL, 418, TRUE),
  -- #419 Floatzel
  (1102, 419, NULL, 419, TRUE),
  -- #420 Cherubi
  (1102, 420, NULL, 420, TRUE),
  -- #421 Cherrim
  (1102, 421, NULL, 421, TRUE),
  -- #422 Shellos
  (1102, 422, NULL, 422, TRUE),
  -- #423 Gastrodon
  (1102, 423, NULL, 423, TRUE),
  -- #424 Ambipom
  (1102, 424, NULL, 424, TRUE),
  -- #425 Drifloon
  (1102, 425, NULL, 425, TRUE),
  -- #426 Drifblim
  (1102, 426, NULL, 426, TRUE),
  -- #427 Buneary
  (1102, 427, NULL, 427, TRUE),
  -- #428 Lopunny
  (1102, 428, NULL, 428, TRUE),
  -- #429 Mismagius
  (1102, 429, NULL, 429, TRUE),
  -- #430 Honchkrow
  (1102, 430, NULL, 430, TRUE),
  -- #431 Glameow
  (1102, 431, NULL, 431, TRUE),
  -- #432 Purugly
  (1102, 432, NULL, 432, TRUE),
  -- #433 Chingling
  (1102, 433, NULL, 433, TRUE),
  -- #434 Stunky
  (1102, 434, NULL, 434, TRUE),
  -- #435 Skuntank
  (1102, 435, NULL, 435, TRUE),
  -- #436 Bronzor
  (1102, 436, NULL, 436, TRUE),
  -- #437 Bronzong
  (1102, 437, NULL, 437, TRUE),
  -- #438 Bonsly
  (1102, 438, NULL, 438, TRUE),
  -- #439 Mime Jr.
  (1102, 439, NULL, 439, TRUE),
  -- #440 Happiny
  (1102, 440, NULL, 440, TRUE),
  -- #441 Chatot
  (1102, 441, NULL, 441, TRUE),
  -- #442 Spiritomb
  (1102, 442, NULL, 442, TRUE),
  -- #443 Gible
  (1102, 443, NULL, 443, TRUE),
  -- #444 Gabite
  (1102, 444, NULL, 444, TRUE),
  -- #445 Garchomp
  (1102, 445, NULL, 445, TRUE),
  -- #446 Munchlax
  (1102, 446, NULL, 446, TRUE),
  -- #447 Riolu
  (1102, 447, NULL, 447, TRUE),
  -- #448 Lucario
  (1102, 448, NULL, 448, TRUE),
  -- #449 Hippopotas
  (1102, 449, NULL, 449, TRUE),
  -- #450 Hippowdon
  (1102, 450, NULL, 450, TRUE),
  -- #451 Skorupi
  (1102, 451, NULL, 451, TRUE),
  -- #452 Drapion
  (1102, 452, NULL, 452, TRUE),
  -- #453 Croagunk
  (1102, 453, NULL, 453, TRUE),
  -- #454 Toxicroak
  (1102, 454, NULL, 454, TRUE),
  -- #455 Carnivine
  (1102, 455, NULL, 455, TRUE),
  -- #456 Finneon
  (1102, 456, NULL, 456, TRUE),
  -- #457 Lumineon
  (1102, 457, NULL, 457, TRUE),
  -- #458 Mantyke
  (1102, 458, NULL, 458, TRUE),
  -- #459 Snover
  (1102, 459, NULL, 459, TRUE),
  -- #460 Abomasnow
  (1102, 460, NULL, 460, TRUE),
  -- #461 Weavile
  (1102, 461, NULL, 461, TRUE),
  -- #462 Magnezone
  (1102, 462, NULL, 462, TRUE),
  -- #463 Lickilicky
  (1102, 463, NULL, 463, TRUE),
  -- #464 Rhyperior
  (1102, 464, NULL, 464, TRUE),
  -- #465 Tangrowth
  (1102, 465, NULL, 465, TRUE),
  -- #466 Electivire
  (1102, 466, NULL, 466, TRUE),
  -- #467 Magmortar
  (1102, 467, NULL, 467, TRUE),
  -- #468 Togekiss
  (1102, 468, NULL, 468, TRUE),
  -- #469 Yanmega
  (1102, 469, NULL, 469, TRUE),
  -- #470 Leafeon
  (1102, 470, NULL, 470, TRUE),
  -- #471 Glaceon
  (1102, 471, NULL, 471, TRUE),
  -- #472 Gliscor
  (1102, 472, NULL, 472, TRUE),
  -- #473 Mamoswine
  (1102, 473, NULL, 473, TRUE),
  -- #474 Porygon-Z
  (1102, 474, NULL, 474, TRUE),
  -- #475 Gallade
  (1102, 475, NULL, 475, TRUE),
  -- #476 Probopass
  (1102, 476, NULL, 476, TRUE),
  -- #477 Dusknoir
  (1102, 477, NULL, 477, TRUE),
  -- #478 Froslass
  (1102, 478, NULL, 478, TRUE),
  -- #479 Rotom
  (1102, 479, NULL, 479, TRUE),
  -- #480 Uxie
  (1102, 480, NULL, 480, TRUE),
  -- #481 Mesprit
  (1102, 481, NULL, 481, TRUE),
  -- #482 Azelf
  (1102, 482, NULL, 482, TRUE),
  -- #483 Dialga
  (1102, 483, NULL, 483, TRUE),
  -- #484 Palkia
  (1102, 484, NULL, 484, TRUE),
  -- #485 Heatran
  (1102, 485, NULL, 485, TRUE),
  -- #486 Regigigas
  (1102, 486, NULL, 486, TRUE),
  -- #487 Giratina
  (1102, 487, NULL, 487, TRUE),
  -- #488 Cresselia
  (1102, 488, NULL, 488, TRUE),
  -- #489 Phione
  (1102, 489, NULL, 489, FALSE),
  -- #490 Manaphy
  (1102, 490, NULL, 490, FALSE),
  -- #491 Darkrai
  (1102, 491, NULL, 491, FALSE),
  -- #492 Shaymin
  (1102, 492, NULL, 492, FALSE),
  -- #493 Arceus
  (1102, 493, NULL, 493, FALSE),
  -- #494 Victini
  (1102, 494, NULL, 494, FALSE),
  -- #495 Snivy
  (1102, 495, NULL, 495, TRUE),
  -- #496 Servine
  (1102, 496, NULL, 496, TRUE),
  -- #497 Serperior
  (1102, 497, NULL, 497, TRUE),
  -- #498 Tepig
  (1102, 498, NULL, 498, TRUE),
  -- #499 Pignite
  (1102, 499, NULL, 499, TRUE),
  -- #500 Emboar
  (1102, 500, NULL, 500, TRUE),
  -- #501 Oshawott
  (1102, 501, NULL, 501, TRUE),
  -- #502 Dewott
  (1102, 502, NULL, 502, TRUE),
  -- #503 Samurott
  (1102, 503, NULL, 503, TRUE),
  -- #504 Patrat
  (1102, 504, NULL, 504, TRUE),
  -- #505 Watchog
  (1102, 505, NULL, 505, TRUE),
  -- #506 Lillipup
  (1102, 506, NULL, 506, TRUE),
  -- #507 Herdier
  (1102, 507, NULL, 507, TRUE),
  -- #508 Stoutland
  (1102, 508, NULL, 508, TRUE),
  -- #509 Purrloin
  (1102, 509, NULL, 509, TRUE),
  -- #510 Liepard
  (1102, 510, NULL, 510, TRUE),
  -- #511 Pansage
  (1102, 511, NULL, 511, TRUE),
  -- #512 Simisage
  (1102, 512, NULL, 512, TRUE),
  -- #513 Pansear
  (1102, 513, NULL, 513, TRUE),
  -- #514 Simisear
  (1102, 514, NULL, 514, TRUE),
  -- #515 Panpour
  (1102, 515, NULL, 515, TRUE),
  -- #516 Simipour
  (1102, 516, NULL, 516, TRUE),
  -- #517 Munna
  (1102, 517, NULL, 517, TRUE),
  -- #518 Musharna
  (1102, 518, NULL, 518, TRUE),
  -- #519 Pidove
  (1102, 519, NULL, 519, TRUE),
  -- #520 Tranquill
  (1102, 520, NULL, 520, TRUE),
  -- #521 Unfezant
  (1102, 521, NULL, 521, TRUE),
  -- #522 Blitzle
  (1102, 522, NULL, 522, TRUE),
  -- #523 Zebstrika
  (1102, 523, NULL, 523, TRUE),
  -- #524 Roggenrola
  (1102, 524, NULL, 524, TRUE),
  -- #525 Boldore
  (1102, 525, NULL, 525, TRUE),
  -- #526 Gigalith
  (1102, 526, NULL, 526, TRUE),
  -- #527 Woobat
  (1102, 527, NULL, 527, TRUE),
  -- #528 Swoobat
  (1102, 528, NULL, 528, TRUE),
  -- #529 Drilbur
  (1102, 529, NULL, 529, TRUE),
  -- #530 Excadrill
  (1102, 530, NULL, 530, TRUE),
  -- #531 Audino
  (1102, 531, NULL, 531, TRUE),
  -- #532 Timburr
  (1102, 532, NULL, 532, TRUE),
  -- #533 Gurdurr
  (1102, 533, NULL, 533, TRUE),
  -- #534 Conkeldurr
  (1102, 534, NULL, 534, TRUE),
  -- #535 Tympole
  (1102, 535, NULL, 535, TRUE),
  -- #536 Palpitoad
  (1102, 536, NULL, 536, TRUE),
  -- #537 Seismitoad
  (1102, 537, NULL, 537, TRUE),
  -- #538 Throh
  (1102, 538, NULL, 538, TRUE),
  -- #539 Sawk
  (1102, 539, NULL, 539, TRUE),
  -- #540 Sewaddle
  (1102, 540, NULL, 540, TRUE),
  -- #541 Swadloon
  (1102, 541, NULL, 541, TRUE),
  -- #542 Leavanny
  (1102, 542, NULL, 542, TRUE),
  -- #543 Venipede
  (1102, 543, NULL, 543, TRUE),
  -- #544 Whirlipede
  (1102, 544, NULL, 544, TRUE),
  -- #545 Scolipede
  (1102, 545, NULL, 545, TRUE),
  -- #546 Cottonee
  (1102, 546, NULL, 546, TRUE),
  -- #547 Whimsicott
  (1102, 547, NULL, 547, TRUE),
  -- #548 Petilil
  (1102, 548, NULL, 548, TRUE),
  -- #549 Lilligant
  (1102, 549, NULL, 549, TRUE),
  -- #550 Basculin
  (1102, 550, NULL, 550, TRUE),
  -- #551 Sandile
  (1102, 551, NULL, 551, TRUE),
  -- #552 Krokorok
  (1102, 552, NULL, 552, TRUE),
  -- #553 Krookodile
  (1102, 553, NULL, 553, TRUE),
  -- #554 Darumaka
  (1102, 554, NULL, 554, TRUE),
  -- #555 Darmanitan
  (1102, 555, NULL, 555, TRUE),
  -- #556 Maractus
  (1102, 556, NULL, 556, TRUE),
  -- #557 Dwebble
  (1102, 557, NULL, 557, TRUE),
  -- #558 Crustle
  (1102, 558, NULL, 558, TRUE),
  -- #559 Scraggy
  (1102, 559, NULL, 559, TRUE),
  -- #560 Scrafty
  (1102, 560, NULL, 560, TRUE),
  -- #561 Sigilyph
  (1102, 561, NULL, 561, TRUE),
  -- #562 Yamask
  (1102, 562, NULL, 562, TRUE),
  -- #563 Cofagrigus
  (1102, 563, NULL, 563, TRUE),
  -- #564 Tirtouga
  (1102, 564, NULL, 564, TRUE),
  -- #565 Carracosta
  (1102, 565, NULL, 565, TRUE),
  -- #566 Archen
  (1102, 566, NULL, 566, TRUE),
  -- #567 Archeops
  (1102, 567, NULL, 567, TRUE),
  -- #568 Trubbish
  (1102, 568, NULL, 568, TRUE),
  -- #569 Garbodor
  (1102, 569, NULL, 569, TRUE),
  -- #570 Zorua
  (1102, 570, NULL, 570, TRUE),
  -- #571 Zoroark
  (1102, 571, NULL, 571, TRUE),
  -- #572 Minccino
  (1102, 572, NULL, 572, TRUE),
  -- #573 Cinccino
  (1102, 573, NULL, 573, TRUE),
  -- #574 Gothita
  (1102, 574, NULL, 574, TRUE),
  -- #575 Gothorita
  (1102, 575, NULL, 575, TRUE),
  -- #576 Gothitelle
  (1102, 576, NULL, 576, TRUE),
  -- #577 Solosis
  (1102, 577, NULL, 577, TRUE),
  -- #578 Duosion
  (1102, 578, NULL, 578, TRUE),
  -- #579 Reuniclus
  (1102, 579, NULL, 579, TRUE),
  -- #580 Ducklett
  (1102, 580, NULL, 580, TRUE),
  -- #581 Swanna
  (1102, 581, NULL, 581, TRUE),
  -- #582 Vanillite
  (1102, 582, NULL, 582, TRUE),
  -- #583 Vanillish
  (1102, 583, NULL, 583, TRUE),
  -- #584 Vanilluxe
  (1102, 584, NULL, 584, TRUE),
  -- #585 Deerling
  (1102, 585, NULL, 585, TRUE),
  -- #586 Sawsbuck
  (1102, 586, NULL, 586, TRUE),
  -- #587 Emolga
  (1102, 587, NULL, 587, TRUE),
  -- #588 Karrablast
  (1102, 588, NULL, 588, TRUE),
  -- #589 Escavalier
  (1102, 589, NULL, 589, TRUE),
  -- #590 Foongus
  (1102, 590, NULL, 590, TRUE),
  -- #591 Amoonguss
  (1102, 591, NULL, 591, TRUE),
  -- #592 Frillish
  (1102, 592, NULL, 592, TRUE),
  -- #593 Jellicent
  (1102, 593, NULL, 593, TRUE),
  -- #594 Alomomola
  (1102, 594, NULL, 594, TRUE),
  -- #595 Joltik
  (1102, 595, NULL, 595, TRUE),
  -- #596 Galvantula
  (1102, 596, NULL, 596, TRUE),
  -- #597 Ferroseed
  (1102, 597, NULL, 597, TRUE),
  -- #598 Ferrothorn
  (1102, 598, NULL, 598, TRUE),
  -- #599 Klink
  (1102, 599, NULL, 599, TRUE),
  -- #600 Klang
  (1102, 600, NULL, 600, TRUE),
  -- #601 Klinklang
  (1102, 601, NULL, 601, TRUE),
  -- #602 Tynamo
  (1102, 602, NULL, 602, TRUE),
  -- #603 Eelektrik
  (1102, 603, NULL, 603, TRUE),
  -- #604 Eelektross
  (1102, 604, NULL, 604, TRUE),
  -- #605 Elgyem
  (1102, 605, NULL, 605, TRUE),
  -- #606 Beheeyem
  (1102, 606, NULL, 606, TRUE),
  -- #607 Litwick
  (1102, 607, NULL, 607, TRUE),
  -- #608 Lampent
  (1102, 608, NULL, 608, TRUE),
  -- #609 Chandelure
  (1102, 609, NULL, 609, TRUE),
  -- #610 Axew
  (1102, 610, NULL, 610, TRUE),
  -- #611 Fraxure
  (1102, 611, NULL, 611, TRUE),
  -- #612 Haxorus
  (1102, 612, NULL, 612, TRUE),
  -- #613 Cubchoo
  (1102, 613, NULL, 613, TRUE),
  -- #614 Beartic
  (1102, 614, NULL, 614, TRUE),
  -- #615 Cryogonal
  (1102, 615, NULL, 615, TRUE),
  -- #616 Shelmet
  (1102, 616, NULL, 616, TRUE),
  -- #617 Accelgor
  (1102, 617, NULL, 617, TRUE),
  -- #618 Stunfisk
  (1102, 618, NULL, 618, TRUE),
  -- #619 Mienfoo
  (1102, 619, NULL, 619, TRUE),
  -- #620 Mienshao
  (1102, 620, NULL, 620, TRUE),
  -- #621 Druddigon
  (1102, 621, NULL, 621, TRUE),
  -- #622 Golett
  (1102, 622, NULL, 622, TRUE),
  -- #623 Golurk
  (1102, 623, NULL, 623, TRUE),
  -- #624 Pawniard
  (1102, 624, NULL, 624, TRUE),
  -- #625 Bisharp
  (1102, 625, NULL, 625, TRUE),
  -- #626 Bouffalant
  (1102, 626, NULL, 626, TRUE),
  -- #627 Rufflet
  (1102, 627, NULL, 627, TRUE),
  -- #628 Braviary
  (1102, 628, NULL, 628, TRUE),
  -- #629 Vullaby
  (1102, 629, NULL, 629, TRUE),
  -- #630 Mandibuzz
  (1102, 630, NULL, 630, TRUE),
  -- #631 Heatmor
  (1102, 631, NULL, 631, TRUE),
  -- #632 Durant
  (1102, 632, NULL, 632, TRUE),
  -- #633 Deino
  (1102, 633, NULL, 633, TRUE),
  -- #634 Zweilous
  (1102, 634, NULL, 634, TRUE),
  -- #635 Hydreigon
  (1102, 635, NULL, 635, TRUE),
  -- #636 Larvesta
  (1102, 636, NULL, 636, TRUE),
  -- #637 Volcarona
  (1102, 637, NULL, 637, TRUE),
  -- #638 Cobalion
  (1102, 638, NULL, 638, TRUE),
  -- #639 Terrakion
  (1102, 639, NULL, 639, TRUE),
  -- #640 Virizion
  (1102, 640, NULL, 640, TRUE),
  -- #641 Tornadus
  (1102, 641, NULL, 641, TRUE),
  -- #642 Thundurus
  (1102, 642, NULL, 642, TRUE),
  -- #643 Reshiram
  (1102, 643, NULL, 643, TRUE),
  -- #644 Zekrom
  (1102, 644, NULL, 644, TRUE),
  -- #645 Landorus
  (1102, 645, NULL, 645, TRUE),
  -- #646 Kyurem
  (1102, 646, NULL, 646, TRUE),
  -- #647 Keldeo
  (1102, 647, NULL, 647, FALSE),
  -- #648 Meloetta
  (1102, 648, NULL, 648, FALSE),
  -- #649 Genesect
  (1102, 649, NULL, 649, FALSE);
