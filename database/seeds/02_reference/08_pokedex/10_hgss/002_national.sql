-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by National Pokedex number.
-- Cross-check: Bulbapedia National Pokedex page, Serebii National Pokedex, and PokemonDB National Pokedex.
-- ============================================================================
-- File Scope
-- ============================================================================
-- National Pokedex entries for HeartGold / SoulSilver.
-- National Pokedex contains 493 species for this version group; Mythical species are source-visible but not required for default completion.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Bulbasaur
  (1002, 1, NULL, 1, TRUE),
  -- #002 Ivysaur
  (1002, 2, NULL, 2, TRUE),
  -- #003 Venusaur
  (1002, 3, NULL, 3, TRUE),
  -- #004 Charmander
  (1002, 4, NULL, 4, TRUE),
  -- #005 Charmeleon
  (1002, 5, NULL, 5, TRUE),
  -- #006 Charizard
  (1002, 6, NULL, 6, TRUE),
  -- #007 Squirtle
  (1002, 7, NULL, 7, TRUE),
  -- #008 Wartortle
  (1002, 8, NULL, 8, TRUE),
  -- #009 Blastoise
  (1002, 9, NULL, 9, TRUE),
  -- #010 Caterpie
  (1002, 10, NULL, 10, TRUE),
  -- #011 Metapod
  (1002, 11, NULL, 11, TRUE),
  -- #012 Butterfree
  (1002, 12, NULL, 12, TRUE),
  -- #013 Weedle
  (1002, 13, NULL, 13, TRUE),
  -- #014 Kakuna
  (1002, 14, NULL, 14, TRUE),
  -- #015 Beedrill
  (1002, 15, NULL, 15, TRUE),
  -- #016 Pidgey
  (1002, 16, NULL, 16, TRUE),
  -- #017 Pidgeotto
  (1002, 17, NULL, 17, TRUE),
  -- #018 Pidgeot
  (1002, 18, NULL, 18, TRUE),
  -- #019 Rattata
  (1002, 19, NULL, 19, TRUE),
  -- #020 Raticate
  (1002, 20, NULL, 20, TRUE),
  -- #021 Spearow
  (1002, 21, NULL, 21, TRUE),
  -- #022 Fearow
  (1002, 22, NULL, 22, TRUE),
  -- #023 Ekans
  (1002, 23, NULL, 23, TRUE),
  -- #024 Arbok
  (1002, 24, NULL, 24, TRUE),
  -- #025 Pikachu
  (1002, 25, NULL, 25, TRUE),
  -- #026 Raichu
  (1002, 26, NULL, 26, TRUE),
  -- #027 Sandshrew
  (1002, 27, NULL, 27, TRUE),
  -- #028 Sandslash
  (1002, 28, NULL, 28, TRUE),
  -- #029 Nidoran F
  (1002, 29, NULL, 29, TRUE),
  -- #030 Nidorina
  (1002, 30, NULL, 30, TRUE),
  -- #031 Nidoqueen
  (1002, 31, NULL, 31, TRUE),
  -- #032 Nidoran M
  (1002, 32, NULL, 32, TRUE),
  -- #033 Nidorino
  (1002, 33, NULL, 33, TRUE),
  -- #034 Nidoking
  (1002, 34, NULL, 34, TRUE),
  -- #035 Clefairy
  (1002, 35, NULL, 35, TRUE),
  -- #036 Clefable
  (1002, 36, NULL, 36, TRUE),
  -- #037 Vulpix
  (1002, 37, NULL, 37, TRUE),
  -- #038 Ninetales
  (1002, 38, NULL, 38, TRUE),
  -- #039 Jigglypuff
  (1002, 39, NULL, 39, TRUE),
  -- #040 Wigglytuff
  (1002, 40, NULL, 40, TRUE),
  -- #041 Zubat
  (1002, 41, NULL, 41, TRUE),
  -- #042 Golbat
  (1002, 42, NULL, 42, TRUE),
  -- #043 Oddish
  (1002, 43, NULL, 43, TRUE),
  -- #044 Gloom
  (1002, 44, NULL, 44, TRUE),
  -- #045 Vileplume
  (1002, 45, NULL, 45, TRUE),
  -- #046 Paras
  (1002, 46, NULL, 46, TRUE),
  -- #047 Parasect
  (1002, 47, NULL, 47, TRUE),
  -- #048 Venonat
  (1002, 48, NULL, 48, TRUE),
  -- #049 Venomoth
  (1002, 49, NULL, 49, TRUE),
  -- #050 Diglett
  (1002, 50, NULL, 50, TRUE),
  -- #051 Dugtrio
  (1002, 51, NULL, 51, TRUE),
  -- #052 Meowth
  (1002, 52, NULL, 52, TRUE),
  -- #053 Persian
  (1002, 53, NULL, 53, TRUE),
  -- #054 Psyduck
  (1002, 54, NULL, 54, TRUE),
  -- #055 Golduck
  (1002, 55, NULL, 55, TRUE),
  -- #056 Mankey
  (1002, 56, NULL, 56, TRUE),
  -- #057 Primeape
  (1002, 57, NULL, 57, TRUE),
  -- #058 Growlithe
  (1002, 58, NULL, 58, TRUE),
  -- #059 Arcanine
  (1002, 59, NULL, 59, TRUE),
  -- #060 Poliwag
  (1002, 60, NULL, 60, TRUE),
  -- #061 Poliwhirl
  (1002, 61, NULL, 61, TRUE),
  -- #062 Poliwrath
  (1002, 62, NULL, 62, TRUE),
  -- #063 Abra
  (1002, 63, NULL, 63, TRUE),
  -- #064 Kadabra
  (1002, 64, NULL, 64, TRUE),
  -- #065 Alakazam
  (1002, 65, NULL, 65, TRUE),
  -- #066 Machop
  (1002, 66, NULL, 66, TRUE),
  -- #067 Machoke
  (1002, 67, NULL, 67, TRUE),
  -- #068 Machamp
  (1002, 68, NULL, 68, TRUE),
  -- #069 Bellsprout
  (1002, 69, NULL, 69, TRUE),
  -- #070 Weepinbell
  (1002, 70, NULL, 70, TRUE),
  -- #071 Victreebel
  (1002, 71, NULL, 71, TRUE),
  -- #072 Tentacool
  (1002, 72, NULL, 72, TRUE),
  -- #073 Tentacruel
  (1002, 73, NULL, 73, TRUE),
  -- #074 Geodude
  (1002, 74, NULL, 74, TRUE),
  -- #075 Graveler
  (1002, 75, NULL, 75, TRUE),
  -- #076 Golem
  (1002, 76, NULL, 76, TRUE),
  -- #077 Ponyta
  (1002, 77, NULL, 77, TRUE),
  -- #078 Rapidash
  (1002, 78, NULL, 78, TRUE),
  -- #079 Slowpoke
  (1002, 79, NULL, 79, TRUE),
  -- #080 Slowbro
  (1002, 80, NULL, 80, TRUE),
  -- #081 Magnemite
  (1002, 81, NULL, 81, TRUE),
  -- #082 Magneton
  (1002, 82, NULL, 82, TRUE),
  -- #083 Farfetch'd
  (1002, 83, NULL, 83, TRUE),
  -- #084 Doduo
  (1002, 84, NULL, 84, TRUE),
  -- #085 Dodrio
  (1002, 85, NULL, 85, TRUE),
  -- #086 Seel
  (1002, 86, NULL, 86, TRUE),
  -- #087 Dewgong
  (1002, 87, NULL, 87, TRUE),
  -- #088 Grimer
  (1002, 88, NULL, 88, TRUE),
  -- #089 Muk
  (1002, 89, NULL, 89, TRUE),
  -- #090 Shellder
  (1002, 90, NULL, 90, TRUE),
  -- #091 Cloyster
  (1002, 91, NULL, 91, TRUE),
  -- #092 Gastly
  (1002, 92, NULL, 92, TRUE),
  -- #093 Haunter
  (1002, 93, NULL, 93, TRUE),
  -- #094 Gengar
  (1002, 94, NULL, 94, TRUE),
  -- #095 Onix
  (1002, 95, NULL, 95, TRUE),
  -- #096 Drowzee
  (1002, 96, NULL, 96, TRUE),
  -- #097 Hypno
  (1002, 97, NULL, 97, TRUE),
  -- #098 Krabby
  (1002, 98, NULL, 98, TRUE),
  -- #099 Kingler
  (1002, 99, NULL, 99, TRUE),
  -- #100 Voltorb
  (1002, 100, NULL, 100, TRUE),
  -- #101 Electrode
  (1002, 101, NULL, 101, TRUE),
  -- #102 Exeggcute
  (1002, 102, NULL, 102, TRUE),
  -- #103 Exeggutor
  (1002, 103, NULL, 103, TRUE),
  -- #104 Cubone
  (1002, 104, NULL, 104, TRUE),
  -- #105 Marowak
  (1002, 105, NULL, 105, TRUE),
  -- #106 Hitmonlee
  (1002, 106, NULL, 106, TRUE),
  -- #107 Hitmonchan
  (1002, 107, NULL, 107, TRUE),
  -- #108 Lickitung
  (1002, 108, NULL, 108, TRUE),
  -- #109 Koffing
  (1002, 109, NULL, 109, TRUE),
  -- #110 Weezing
  (1002, 110, NULL, 110, TRUE),
  -- #111 Rhyhorn
  (1002, 111, NULL, 111, TRUE),
  -- #112 Rhydon
  (1002, 112, NULL, 112, TRUE),
  -- #113 Chansey
  (1002, 113, NULL, 113, TRUE),
  -- #114 Tangela
  (1002, 114, NULL, 114, TRUE),
  -- #115 Kangaskhan
  (1002, 115, NULL, 115, TRUE),
  -- #116 Horsea
  (1002, 116, NULL, 116, TRUE),
  -- #117 Seadra
  (1002, 117, NULL, 117, TRUE),
  -- #118 Goldeen
  (1002, 118, NULL, 118, TRUE),
  -- #119 Seaking
  (1002, 119, NULL, 119, TRUE),
  -- #120 Staryu
  (1002, 120, NULL, 120, TRUE),
  -- #121 Starmie
  (1002, 121, NULL, 121, TRUE),
  -- #122 Mr. Mime
  (1002, 122, NULL, 122, TRUE),
  -- #123 Scyther
  (1002, 123, NULL, 123, TRUE),
  -- #124 Jynx
  (1002, 124, NULL, 124, TRUE),
  -- #125 Electabuzz
  (1002, 125, NULL, 125, TRUE),
  -- #126 Magmar
  (1002, 126, NULL, 126, TRUE),
  -- #127 Pinsir
  (1002, 127, NULL, 127, TRUE),
  -- #128 Tauros
  (1002, 128, NULL, 128, TRUE),
  -- #129 Magikarp
  (1002, 129, NULL, 129, TRUE),
  -- #130 Gyarados
  (1002, 130, NULL, 130, TRUE),
  -- #131 Lapras
  (1002, 131, NULL, 131, TRUE),
  -- #132 Ditto
  (1002, 132, NULL, 132, TRUE),
  -- #133 Eevee
  (1002, 133, NULL, 133, TRUE),
  -- #134 Vaporeon
  (1002, 134, NULL, 134, TRUE),
  -- #135 Jolteon
  (1002, 135, NULL, 135, TRUE),
  -- #136 Flareon
  (1002, 136, NULL, 136, TRUE),
  -- #137 Porygon
  (1002, 137, NULL, 137, TRUE),
  -- #138 Omanyte
  (1002, 138, NULL, 138, TRUE),
  -- #139 Omastar
  (1002, 139, NULL, 139, TRUE),
  -- #140 Kabuto
  (1002, 140, NULL, 140, TRUE),
  -- #141 Kabutops
  (1002, 141, NULL, 141, TRUE),
  -- #142 Aerodactyl
  (1002, 142, NULL, 142, TRUE),
  -- #143 Snorlax
  (1002, 143, NULL, 143, TRUE),
  -- #144 Articuno
  (1002, 144, NULL, 144, TRUE),
  -- #145 Zapdos
  (1002, 145, NULL, 145, TRUE),
  -- #146 Moltres
  (1002, 146, NULL, 146, TRUE),
  -- #147 Dratini
  (1002, 147, NULL, 147, TRUE),
  -- #148 Dragonair
  (1002, 148, NULL, 148, TRUE),
  -- #149 Dragonite
  (1002, 149, NULL, 149, TRUE),
  -- #150 Mewtwo
  (1002, 150, NULL, 150, TRUE),
  -- #151 Mew
  (1002, 151, NULL, 151, FALSE),
  -- #152 Chikorita
  (1002, 152, NULL, 152, TRUE),
  -- #153 Bayleef
  (1002, 153, NULL, 153, TRUE),
  -- #154 Meganium
  (1002, 154, NULL, 154, TRUE),
  -- #155 Cyndaquil
  (1002, 155, NULL, 155, TRUE),
  -- #156 Quilava
  (1002, 156, NULL, 156, TRUE),
  -- #157 Typhlosion
  (1002, 157, NULL, 157, TRUE),
  -- #158 Totodile
  (1002, 158, NULL, 158, TRUE),
  -- #159 Croconaw
  (1002, 159, NULL, 159, TRUE),
  -- #160 Feraligatr
  (1002, 160, NULL, 160, TRUE),
  -- #161 Sentret
  (1002, 161, NULL, 161, TRUE),
  -- #162 Furret
  (1002, 162, NULL, 162, TRUE),
  -- #163 Hoothoot
  (1002, 163, NULL, 163, TRUE),
  -- #164 Noctowl
  (1002, 164, NULL, 164, TRUE),
  -- #165 Ledyba
  (1002, 165, NULL, 165, TRUE),
  -- #166 Ledian
  (1002, 166, NULL, 166, TRUE),
  -- #167 Spinarak
  (1002, 167, NULL, 167, TRUE),
  -- #168 Ariados
  (1002, 168, NULL, 168, TRUE),
  -- #169 Crobat
  (1002, 169, NULL, 169, TRUE),
  -- #170 Chinchou
  (1002, 170, NULL, 170, TRUE),
  -- #171 Lanturn
  (1002, 171, NULL, 171, TRUE),
  -- #172 Pichu
  (1002, 172, NULL, 172, TRUE),
  -- #173 Cleffa
  (1002, 173, NULL, 173, TRUE),
  -- #174 Igglybuff
  (1002, 174, NULL, 174, TRUE),
  -- #175 Togepi
  (1002, 175, NULL, 175, TRUE),
  -- #176 Togetic
  (1002, 176, NULL, 176, TRUE),
  -- #177 Natu
  (1002, 177, NULL, 177, TRUE),
  -- #178 Xatu
  (1002, 178, NULL, 178, TRUE),
  -- #179 Mareep
  (1002, 179, NULL, 179, TRUE),
  -- #180 Flaaffy
  (1002, 180, NULL, 180, TRUE),
  -- #181 Ampharos
  (1002, 181, NULL, 181, TRUE),
  -- #182 Bellossom
  (1002, 182, NULL, 182, TRUE),
  -- #183 Marill
  (1002, 183, NULL, 183, TRUE),
  -- #184 Azumarill
  (1002, 184, NULL, 184, TRUE),
  -- #185 Sudowoodo
  (1002, 185, NULL, 185, TRUE),
  -- #186 Politoed
  (1002, 186, NULL, 186, TRUE),
  -- #187 Hoppip
  (1002, 187, NULL, 187, TRUE),
  -- #188 Skiploom
  (1002, 188, NULL, 188, TRUE),
  -- #189 Jumpluff
  (1002, 189, NULL, 189, TRUE),
  -- #190 Aipom
  (1002, 190, NULL, 190, TRUE),
  -- #191 Sunkern
  (1002, 191, NULL, 191, TRUE),
  -- #192 Sunflora
  (1002, 192, NULL, 192, TRUE),
  -- #193 Yanma
  (1002, 193, NULL, 193, TRUE),
  -- #194 Wooper
  (1002, 194, NULL, 194, TRUE),
  -- #195 Quagsire
  (1002, 195, NULL, 195, TRUE),
  -- #196 Espeon
  (1002, 196, NULL, 196, TRUE),
  -- #197 Umbreon
  (1002, 197, NULL, 197, TRUE),
  -- #198 Murkrow
  (1002, 198, NULL, 198, TRUE),
  -- #199 Slowking
  (1002, 199, NULL, 199, TRUE),
  -- #200 Misdreavus
  (1002, 200, NULL, 200, TRUE),
  -- #201 Unown
  (1002, 201, NULL, 201, TRUE),
  -- #202 Wobbuffet
  (1002, 202, NULL, 202, TRUE),
  -- #203 Girafarig
  (1002, 203, NULL, 203, TRUE),
  -- #204 Pineco
  (1002, 204, NULL, 204, TRUE),
  -- #205 Forretress
  (1002, 205, NULL, 205, TRUE),
  -- #206 Dunsparce
  (1002, 206, NULL, 206, TRUE),
  -- #207 Gligar
  (1002, 207, NULL, 207, TRUE),
  -- #208 Steelix
  (1002, 208, NULL, 208, TRUE),
  -- #209 Snubbull
  (1002, 209, NULL, 209, TRUE),
  -- #210 Granbull
  (1002, 210, NULL, 210, TRUE),
  -- #211 Qwilfish
  (1002, 211, NULL, 211, TRUE),
  -- #212 Scizor
  (1002, 212, NULL, 212, TRUE),
  -- #213 Shuckle
  (1002, 213, NULL, 213, TRUE),
  -- #214 Heracross
  (1002, 214, NULL, 214, TRUE),
  -- #215 Sneasel
  (1002, 215, NULL, 215, TRUE),
  -- #216 Teddiursa
  (1002, 216, NULL, 216, TRUE),
  -- #217 Ursaring
  (1002, 217, NULL, 217, TRUE),
  -- #218 Slugma
  (1002, 218, NULL, 218, TRUE),
  -- #219 Magcargo
  (1002, 219, NULL, 219, TRUE),
  -- #220 Swinub
  (1002, 220, NULL, 220, TRUE),
  -- #221 Piloswine
  (1002, 221, NULL, 221, TRUE),
  -- #222 Corsola
  (1002, 222, NULL, 222, TRUE),
  -- #223 Remoraid
  (1002, 223, NULL, 223, TRUE),
  -- #224 Octillery
  (1002, 224, NULL, 224, TRUE),
  -- #225 Delibird
  (1002, 225, NULL, 225, TRUE),
  -- #226 Mantine
  (1002, 226, NULL, 226, TRUE),
  -- #227 Skarmory
  (1002, 227, NULL, 227, TRUE),
  -- #228 Houndour
  (1002, 228, NULL, 228, TRUE),
  -- #229 Houndoom
  (1002, 229, NULL, 229, TRUE),
  -- #230 Kingdra
  (1002, 230, NULL, 230, TRUE),
  -- #231 Phanpy
  (1002, 231, NULL, 231, TRUE),
  -- #232 Donphan
  (1002, 232, NULL, 232, TRUE),
  -- #233 Porygon2
  (1002, 233, NULL, 233, TRUE),
  -- #234 Stantler
  (1002, 234, NULL, 234, TRUE),
  -- #235 Smeargle
  (1002, 235, NULL, 235, TRUE),
  -- #236 Tyrogue
  (1002, 236, NULL, 236, TRUE),
  -- #237 Hitmontop
  (1002, 237, NULL, 237, TRUE),
  -- #238 Smoochum
  (1002, 238, NULL, 238, TRUE),
  -- #239 Elekid
  (1002, 239, NULL, 239, TRUE),
  -- #240 Magby
  (1002, 240, NULL, 240, TRUE),
  -- #241 Miltank
  (1002, 241, NULL, 241, TRUE),
  -- #242 Blissey
  (1002, 242, NULL, 242, TRUE),
  -- #243 Raikou
  (1002, 243, NULL, 243, TRUE),
  -- #244 Entei
  (1002, 244, NULL, 244, TRUE),
  -- #245 Suicune
  (1002, 245, NULL, 245, TRUE),
  -- #246 Larvitar
  (1002, 246, NULL, 246, TRUE),
  -- #247 Pupitar
  (1002, 247, NULL, 247, TRUE),
  -- #248 Tyranitar
  (1002, 248, NULL, 248, TRUE),
  -- #249 Lugia
  (1002, 249, NULL, 249, TRUE),
  -- #250 Ho-Oh
  (1002, 250, NULL, 250, TRUE),
  -- #251 Celebi
  (1002, 251, NULL, 251, FALSE),
  -- #252 Treecko
  (1002, 252, NULL, 252, TRUE),
  -- #253 Grovyle
  (1002, 253, NULL, 253, TRUE),
  -- #254 Sceptile
  (1002, 254, NULL, 254, TRUE),
  -- #255 Torchic
  (1002, 255, NULL, 255, TRUE),
  -- #256 Combusken
  (1002, 256, NULL, 256, TRUE),
  -- #257 Blaziken
  (1002, 257, NULL, 257, TRUE),
  -- #258 Mudkip
  (1002, 258, NULL, 258, TRUE),
  -- #259 Marshtomp
  (1002, 259, NULL, 259, TRUE),
  -- #260 Swampert
  (1002, 260, NULL, 260, TRUE),
  -- #261 Poochyena
  (1002, 261, NULL, 261, TRUE),
  -- #262 Mightyena
  (1002, 262, NULL, 262, TRUE),
  -- #263 Zigzagoon
  (1002, 263, NULL, 263, TRUE),
  -- #264 Linoone
  (1002, 264, NULL, 264, TRUE),
  -- #265 Wurmple
  (1002, 265, NULL, 265, TRUE),
  -- #266 Silcoon
  (1002, 266, NULL, 266, TRUE),
  -- #267 Beautifly
  (1002, 267, NULL, 267, TRUE),
  -- #268 Cascoon
  (1002, 268, NULL, 268, TRUE),
  -- #269 Dustox
  (1002, 269, NULL, 269, TRUE),
  -- #270 Lotad
  (1002, 270, NULL, 270, TRUE),
  -- #271 Lombre
  (1002, 271, NULL, 271, TRUE),
  -- #272 Ludicolo
  (1002, 272, NULL, 272, TRUE),
  -- #273 Seedot
  (1002, 273, NULL, 273, TRUE),
  -- #274 Nuzleaf
  (1002, 274, NULL, 274, TRUE),
  -- #275 Shiftry
  (1002, 275, NULL, 275, TRUE),
  -- #276 Taillow
  (1002, 276, NULL, 276, TRUE),
  -- #277 Swellow
  (1002, 277, NULL, 277, TRUE),
  -- #278 Wingull
  (1002, 278, NULL, 278, TRUE),
  -- #279 Pelipper
  (1002, 279, NULL, 279, TRUE),
  -- #280 Ralts
  (1002, 280, NULL, 280, TRUE),
  -- #281 Kirlia
  (1002, 281, NULL, 281, TRUE),
  -- #282 Gardevoir
  (1002, 282, NULL, 282, TRUE),
  -- #283 Surskit
  (1002, 283, NULL, 283, TRUE),
  -- #284 Masquerain
  (1002, 284, NULL, 284, TRUE),
  -- #285 Shroomish
  (1002, 285, NULL, 285, TRUE),
  -- #286 Breloom
  (1002, 286, NULL, 286, TRUE),
  -- #287 Slakoth
  (1002, 287, NULL, 287, TRUE),
  -- #288 Vigoroth
  (1002, 288, NULL, 288, TRUE),
  -- #289 Slaking
  (1002, 289, NULL, 289, TRUE),
  -- #290 Nincada
  (1002, 290, NULL, 290, TRUE),
  -- #291 Ninjask
  (1002, 291, NULL, 291, TRUE),
  -- #292 Shedinja
  (1002, 292, NULL, 292, TRUE),
  -- #293 Whismur
  (1002, 293, NULL, 293, TRUE),
  -- #294 Loudred
  (1002, 294, NULL, 294, TRUE),
  -- #295 Exploud
  (1002, 295, NULL, 295, TRUE),
  -- #296 Makuhita
  (1002, 296, NULL, 296, TRUE),
  -- #297 Hariyama
  (1002, 297, NULL, 297, TRUE),
  -- #298 Azurill
  (1002, 298, NULL, 298, TRUE),
  -- #299 Nosepass
  (1002, 299, NULL, 299, TRUE),
  -- #300 Skitty
  (1002, 300, NULL, 300, TRUE),
  -- #301 Delcatty
  (1002, 301, NULL, 301, TRUE),
  -- #302 Sableye
  (1002, 302, NULL, 302, TRUE),
  -- #303 Mawile
  (1002, 303, NULL, 303, TRUE),
  -- #304 Aron
  (1002, 304, NULL, 304, TRUE),
  -- #305 Lairon
  (1002, 305, NULL, 305, TRUE),
  -- #306 Aggron
  (1002, 306, NULL, 306, TRUE),
  -- #307 Meditite
  (1002, 307, NULL, 307, TRUE),
  -- #308 Medicham
  (1002, 308, NULL, 308, TRUE),
  -- #309 Electrike
  (1002, 309, NULL, 309, TRUE),
  -- #310 Manectric
  (1002, 310, NULL, 310, TRUE),
  -- #311 Plusle
  (1002, 311, NULL, 311, TRUE),
  -- #312 Minun
  (1002, 312, NULL, 312, TRUE),
  -- #313 Volbeat
  (1002, 313, NULL, 313, TRUE),
  -- #314 Illumise
  (1002, 314, NULL, 314, TRUE),
  -- #315 Roselia
  (1002, 315, NULL, 315, TRUE),
  -- #316 Gulpin
  (1002, 316, NULL, 316, TRUE),
  -- #317 Swalot
  (1002, 317, NULL, 317, TRUE),
  -- #318 Carvanha
  (1002, 318, NULL, 318, TRUE),
  -- #319 Sharpedo
  (1002, 319, NULL, 319, TRUE),
  -- #320 Wailmer
  (1002, 320, NULL, 320, TRUE),
  -- #321 Wailord
  (1002, 321, NULL, 321, TRUE),
  -- #322 Numel
  (1002, 322, NULL, 322, TRUE),
  -- #323 Camerupt
  (1002, 323, NULL, 323, TRUE),
  -- #324 Torkoal
  (1002, 324, NULL, 324, TRUE),
  -- #325 Spoink
  (1002, 325, NULL, 325, TRUE),
  -- #326 Grumpig
  (1002, 326, NULL, 326, TRUE),
  -- #327 Spinda
  (1002, 327, NULL, 327, TRUE),
  -- #328 Trapinch
  (1002, 328, NULL, 328, TRUE),
  -- #329 Vibrava
  (1002, 329, NULL, 329, TRUE),
  -- #330 Flygon
  (1002, 330, NULL, 330, TRUE),
  -- #331 Cacnea
  (1002, 331, NULL, 331, TRUE),
  -- #332 Cacturne
  (1002, 332, NULL, 332, TRUE),
  -- #333 Swablu
  (1002, 333, NULL, 333, TRUE),
  -- #334 Altaria
  (1002, 334, NULL, 334, TRUE),
  -- #335 Zangoose
  (1002, 335, NULL, 335, TRUE),
  -- #336 Seviper
  (1002, 336, NULL, 336, TRUE),
  -- #337 Lunatone
  (1002, 337, NULL, 337, TRUE),
  -- #338 Solrock
  (1002, 338, NULL, 338, TRUE),
  -- #339 Barboach
  (1002, 339, NULL, 339, TRUE),
  -- #340 Whiscash
  (1002, 340, NULL, 340, TRUE),
  -- #341 Corphish
  (1002, 341, NULL, 341, TRUE),
  -- #342 Crawdaunt
  (1002, 342, NULL, 342, TRUE),
  -- #343 Baltoy
  (1002, 343, NULL, 343, TRUE),
  -- #344 Claydol
  (1002, 344, NULL, 344, TRUE),
  -- #345 Lileep
  (1002, 345, NULL, 345, TRUE),
  -- #346 Cradily
  (1002, 346, NULL, 346, TRUE),
  -- #347 Anorith
  (1002, 347, NULL, 347, TRUE),
  -- #348 Armaldo
  (1002, 348, NULL, 348, TRUE),
  -- #349 Feebas
  (1002, 349, NULL, 349, TRUE),
  -- #350 Milotic
  (1002, 350, NULL, 350, TRUE),
  -- #351 Castform
  (1002, 351, NULL, 351, TRUE),
  -- #352 Kecleon
  (1002, 352, NULL, 352, TRUE),
  -- #353 Shuppet
  (1002, 353, NULL, 353, TRUE),
  -- #354 Banette
  (1002, 354, NULL, 354, TRUE),
  -- #355 Duskull
  (1002, 355, NULL, 355, TRUE),
  -- #356 Dusclops
  (1002, 356, NULL, 356, TRUE),
  -- #357 Tropius
  (1002, 357, NULL, 357, TRUE),
  -- #358 Chimecho
  (1002, 358, NULL, 358, TRUE),
  -- #359 Absol
  (1002, 359, NULL, 359, TRUE),
  -- #360 Wynaut
  (1002, 360, NULL, 360, TRUE),
  -- #361 Snorunt
  (1002, 361, NULL, 361, TRUE),
  -- #362 Glalie
  (1002, 362, NULL, 362, TRUE),
  -- #363 Spheal
  (1002, 363, NULL, 363, TRUE),
  -- #364 Sealeo
  (1002, 364, NULL, 364, TRUE),
  -- #365 Walrein
  (1002, 365, NULL, 365, TRUE),
  -- #366 Clamperl
  (1002, 366, NULL, 366, TRUE),
  -- #367 Huntail
  (1002, 367, NULL, 367, TRUE),
  -- #368 Gorebyss
  (1002, 368, NULL, 368, TRUE),
  -- #369 Relicanth
  (1002, 369, NULL, 369, TRUE),
  -- #370 Luvdisc
  (1002, 370, NULL, 370, TRUE),
  -- #371 Bagon
  (1002, 371, NULL, 371, TRUE),
  -- #372 Shelgon
  (1002, 372, NULL, 372, TRUE),
  -- #373 Salamence
  (1002, 373, NULL, 373, TRUE),
  -- #374 Beldum
  (1002, 374, NULL, 374, TRUE),
  -- #375 Metang
  (1002, 375, NULL, 375, TRUE),
  -- #376 Metagross
  (1002, 376, NULL, 376, TRUE),
  -- #377 Regirock
  (1002, 377, NULL, 377, TRUE),
  -- #378 Regice
  (1002, 378, NULL, 378, TRUE),
  -- #379 Registeel
  (1002, 379, NULL, 379, TRUE),
  -- #380 Latias
  (1002, 380, NULL, 380, TRUE),
  -- #381 Latios
  (1002, 381, NULL, 381, TRUE),
  -- #382 Kyogre
  (1002, 382, NULL, 382, TRUE),
  -- #383 Groudon
  (1002, 383, NULL, 383, TRUE),
  -- #384 Rayquaza
  (1002, 384, NULL, 384, TRUE),
  -- #385 Jirachi
  (1002, 385, NULL, 385, FALSE),
  -- #386 Deoxys
  (1002, 386, NULL, 386, FALSE),
  -- #387 Turtwig
  (1002, 387, NULL, 387, TRUE),
  -- #388 Grotle
  (1002, 388, NULL, 388, TRUE),
  -- #389 Torterra
  (1002, 389, NULL, 389, TRUE),
  -- #390 Chimchar
  (1002, 390, NULL, 390, TRUE),
  -- #391 Monferno
  (1002, 391, NULL, 391, TRUE),
  -- #392 Infernape
  (1002, 392, NULL, 392, TRUE),
  -- #393 Piplup
  (1002, 393, NULL, 393, TRUE),
  -- #394 Prinplup
  (1002, 394, NULL, 394, TRUE),
  -- #395 Empoleon
  (1002, 395, NULL, 395, TRUE),
  -- #396 Starly
  (1002, 396, NULL, 396, TRUE),
  -- #397 Staravia
  (1002, 397, NULL, 397, TRUE),
  -- #398 Staraptor
  (1002, 398, NULL, 398, TRUE),
  -- #399 Bidoof
  (1002, 399, NULL, 399, TRUE),
  -- #400 Bibarel
  (1002, 400, NULL, 400, TRUE),
  -- #401 Kricketot
  (1002, 401, NULL, 401, TRUE),
  -- #402 Kricketune
  (1002, 402, NULL, 402, TRUE),
  -- #403 Shinx
  (1002, 403, NULL, 403, TRUE),
  -- #404 Luxio
  (1002, 404, NULL, 404, TRUE),
  -- #405 Luxray
  (1002, 405, NULL, 405, TRUE),
  -- #406 Budew
  (1002, 406, NULL, 406, TRUE),
  -- #407 Roserade
  (1002, 407, NULL, 407, TRUE),
  -- #408 Cranidos
  (1002, 408, NULL, 408, TRUE),
  -- #409 Rampardos
  (1002, 409, NULL, 409, TRUE),
  -- #410 Shieldon
  (1002, 410, NULL, 410, TRUE),
  -- #411 Bastiodon
  (1002, 411, NULL, 411, TRUE),
  -- #412 Burmy
  (1002, 412, NULL, 412, TRUE),
  -- #413 Wormadam
  (1002, 413, NULL, 413, TRUE),
  -- #414 Mothim
  (1002, 414, NULL, 414, TRUE),
  -- #415 Combee
  (1002, 415, NULL, 415, TRUE),
  -- #416 Vespiquen
  (1002, 416, NULL, 416, TRUE),
  -- #417 Pachirisu
  (1002, 417, NULL, 417, TRUE),
  -- #418 Buizel
  (1002, 418, NULL, 418, TRUE),
  -- #419 Floatzel
  (1002, 419, NULL, 419, TRUE),
  -- #420 Cherubi
  (1002, 420, NULL, 420, TRUE),
  -- #421 Cherrim
  (1002, 421, NULL, 421, TRUE),
  -- #422 Shellos
  (1002, 422, NULL, 422, TRUE),
  -- #423 Gastrodon
  (1002, 423, NULL, 423, TRUE),
  -- #424 Ambipom
  (1002, 424, NULL, 424, TRUE),
  -- #425 Drifloon
  (1002, 425, NULL, 425, TRUE),
  -- #426 Drifblim
  (1002, 426, NULL, 426, TRUE),
  -- #427 Buneary
  (1002, 427, NULL, 427, TRUE),
  -- #428 Lopunny
  (1002, 428, NULL, 428, TRUE),
  -- #429 Mismagius
  (1002, 429, NULL, 429, TRUE),
  -- #430 Honchkrow
  (1002, 430, NULL, 430, TRUE),
  -- #431 Glameow
  (1002, 431, NULL, 431, TRUE),
  -- #432 Purugly
  (1002, 432, NULL, 432, TRUE),
  -- #433 Chingling
  (1002, 433, NULL, 433, TRUE),
  -- #434 Stunky
  (1002, 434, NULL, 434, TRUE),
  -- #435 Skuntank
  (1002, 435, NULL, 435, TRUE),
  -- #436 Bronzor
  (1002, 436, NULL, 436, TRUE),
  -- #437 Bronzong
  (1002, 437, NULL, 437, TRUE),
  -- #438 Bonsly
  (1002, 438, NULL, 438, TRUE),
  -- #439 Mime Jr.
  (1002, 439, NULL, 439, TRUE),
  -- #440 Happiny
  (1002, 440, NULL, 440, TRUE),
  -- #441 Chatot
  (1002, 441, NULL, 441, TRUE),
  -- #442 Spiritomb
  (1002, 442, NULL, 442, TRUE),
  -- #443 Gible
  (1002, 443, NULL, 443, TRUE),
  -- #444 Gabite
  (1002, 444, NULL, 444, TRUE),
  -- #445 Garchomp
  (1002, 445, NULL, 445, TRUE),
  -- #446 Munchlax
  (1002, 446, NULL, 446, TRUE),
  -- #447 Riolu
  (1002, 447, NULL, 447, TRUE),
  -- #448 Lucario
  (1002, 448, NULL, 448, TRUE),
  -- #449 Hippopotas
  (1002, 449, NULL, 449, TRUE),
  -- #450 Hippowdon
  (1002, 450, NULL, 450, TRUE),
  -- #451 Skorupi
  (1002, 451, NULL, 451, TRUE),
  -- #452 Drapion
  (1002, 452, NULL, 452, TRUE),
  -- #453 Croagunk
  (1002, 453, NULL, 453, TRUE),
  -- #454 Toxicroak
  (1002, 454, NULL, 454, TRUE),
  -- #455 Carnivine
  (1002, 455, NULL, 455, TRUE),
  -- #456 Finneon
  (1002, 456, NULL, 456, TRUE),
  -- #457 Lumineon
  (1002, 457, NULL, 457, TRUE),
  -- #458 Mantyke
  (1002, 458, NULL, 458, TRUE),
  -- #459 Snover
  (1002, 459, NULL, 459, TRUE),
  -- #460 Abomasnow
  (1002, 460, NULL, 460, TRUE),
  -- #461 Weavile
  (1002, 461, NULL, 461, TRUE),
  -- #462 Magnezone
  (1002, 462, NULL, 462, TRUE),
  -- #463 Lickilicky
  (1002, 463, NULL, 463, TRUE),
  -- #464 Rhyperior
  (1002, 464, NULL, 464, TRUE),
  -- #465 Tangrowth
  (1002, 465, NULL, 465, TRUE),
  -- #466 Electivire
  (1002, 466, NULL, 466, TRUE),
  -- #467 Magmortar
  (1002, 467, NULL, 467, TRUE),
  -- #468 Togekiss
  (1002, 468, NULL, 468, TRUE),
  -- #469 Yanmega
  (1002, 469, NULL, 469, TRUE),
  -- #470 Leafeon
  (1002, 470, NULL, 470, TRUE),
  -- #471 Glaceon
  (1002, 471, NULL, 471, TRUE),
  -- #472 Gliscor
  (1002, 472, NULL, 472, TRUE),
  -- #473 Mamoswine
  (1002, 473, NULL, 473, TRUE),
  -- #474 Porygon-Z
  (1002, 474, NULL, 474, TRUE),
  -- #475 Gallade
  (1002, 475, NULL, 475, TRUE),
  -- #476 Probopass
  (1002, 476, NULL, 476, TRUE),
  -- #477 Dusknoir
  (1002, 477, NULL, 477, TRUE),
  -- #478 Froslass
  (1002, 478, NULL, 478, TRUE),
  -- #479 Rotom
  (1002, 479, NULL, 479, TRUE),
  -- #480 Uxie
  (1002, 480, NULL, 480, TRUE),
  -- #481 Mesprit
  (1002, 481, NULL, 481, TRUE),
  -- #482 Azelf
  (1002, 482, NULL, 482, TRUE),
  -- #483 Dialga
  (1002, 483, NULL, 483, TRUE),
  -- #484 Palkia
  (1002, 484, NULL, 484, TRUE),
  -- #485 Heatran
  (1002, 485, NULL, 485, TRUE),
  -- #486 Regigigas
  (1002, 486, NULL, 486, TRUE),
  -- #487 Giratina
  (1002, 487, NULL, 487, TRUE),
  -- #488 Cresselia
  (1002, 488, NULL, 488, TRUE),
  -- #489 Phione
  (1002, 489, NULL, 489, FALSE),
  -- #490 Manaphy
  (1002, 490, NULL, 490, FALSE),
  -- #491 Darkrai
  (1002, 491, NULL, 491, FALSE),
  -- #492 Shaymin
  (1002, 492, NULL, 492, FALSE),
  -- #493 Arceus
  (1002, 493, NULL, 493, FALSE);
