-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by National Pokedex number.
-- Cross-check: Bulbapedia National Pokedex page, Serebii National Pokedex, and PokemonDB National Pokedex.
-- ============================================================================
-- File Scope
-- ============================================================================
-- National Pokedex entries for Black 2 / White 2.
-- National Pokedex contains 649 species for this version group; Mythical species are source-visible but not required for default completion.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Bulbasaur
  (1202, 1, NULL, 1, TRUE),
  -- #002 Ivysaur
  (1202, 2, NULL, 2, TRUE),
  -- #003 Venusaur
  (1202, 3, NULL, 3, TRUE),
  -- #004 Charmander
  (1202, 4, NULL, 4, TRUE),
  -- #005 Charmeleon
  (1202, 5, NULL, 5, TRUE),
  -- #006 Charizard
  (1202, 6, NULL, 6, TRUE),
  -- #007 Squirtle
  (1202, 7, NULL, 7, TRUE),
  -- #008 Wartortle
  (1202, 8, NULL, 8, TRUE),
  -- #009 Blastoise
  (1202, 9, NULL, 9, TRUE),
  -- #010 Caterpie
  (1202, 10, NULL, 10, TRUE),
  -- #011 Metapod
  (1202, 11, NULL, 11, TRUE),
  -- #012 Butterfree
  (1202, 12, NULL, 12, TRUE),
  -- #013 Weedle
  (1202, 13, NULL, 13, TRUE),
  -- #014 Kakuna
  (1202, 14, NULL, 14, TRUE),
  -- #015 Beedrill
  (1202, 15, NULL, 15, TRUE),
  -- #016 Pidgey
  (1202, 16, NULL, 16, TRUE),
  -- #017 Pidgeotto
  (1202, 17, NULL, 17, TRUE),
  -- #018 Pidgeot
  (1202, 18, NULL, 18, TRUE),
  -- #019 Rattata
  (1202, 19, NULL, 19, TRUE),
  -- #020 Raticate
  (1202, 20, NULL, 20, TRUE),
  -- #021 Spearow
  (1202, 21, NULL, 21, TRUE),
  -- #022 Fearow
  (1202, 22, NULL, 22, TRUE),
  -- #023 Ekans
  (1202, 23, NULL, 23, TRUE),
  -- #024 Arbok
  (1202, 24, NULL, 24, TRUE),
  -- #025 Pikachu
  (1202, 25, NULL, 25, TRUE),
  -- #026 Raichu
  (1202, 26, NULL, 26, TRUE),
  -- #027 Sandshrew
  (1202, 27, NULL, 27, TRUE),
  -- #028 Sandslash
  (1202, 28, NULL, 28, TRUE),
  -- #029 Nidoran F
  (1202, 29, NULL, 29, TRUE),
  -- #030 Nidorina
  (1202, 30, NULL, 30, TRUE),
  -- #031 Nidoqueen
  (1202, 31, NULL, 31, TRUE),
  -- #032 Nidoran M
  (1202, 32, NULL, 32, TRUE),
  -- #033 Nidorino
  (1202, 33, NULL, 33, TRUE),
  -- #034 Nidoking
  (1202, 34, NULL, 34, TRUE),
  -- #035 Clefairy
  (1202, 35, NULL, 35, TRUE),
  -- #036 Clefable
  (1202, 36, NULL, 36, TRUE),
  -- #037 Vulpix
  (1202, 37, NULL, 37, TRUE),
  -- #038 Ninetales
  (1202, 38, NULL, 38, TRUE),
  -- #039 Jigglypuff
  (1202, 39, NULL, 39, TRUE),
  -- #040 Wigglytuff
  (1202, 40, NULL, 40, TRUE),
  -- #041 Zubat
  (1202, 41, NULL, 41, TRUE),
  -- #042 Golbat
  (1202, 42, NULL, 42, TRUE),
  -- #043 Oddish
  (1202, 43, NULL, 43, TRUE),
  -- #044 Gloom
  (1202, 44, NULL, 44, TRUE),
  -- #045 Vileplume
  (1202, 45, NULL, 45, TRUE),
  -- #046 Paras
  (1202, 46, NULL, 46, TRUE),
  -- #047 Parasect
  (1202, 47, NULL, 47, TRUE),
  -- #048 Venonat
  (1202, 48, NULL, 48, TRUE),
  -- #049 Venomoth
  (1202, 49, NULL, 49, TRUE),
  -- #050 Diglett
  (1202, 50, NULL, 50, TRUE),
  -- #051 Dugtrio
  (1202, 51, NULL, 51, TRUE),
  -- #052 Meowth
  (1202, 52, NULL, 52, TRUE),
  -- #053 Persian
  (1202, 53, NULL, 53, TRUE),
  -- #054 Psyduck
  (1202, 54, NULL, 54, TRUE),
  -- #055 Golduck
  (1202, 55, NULL, 55, TRUE),
  -- #056 Mankey
  (1202, 56, NULL, 56, TRUE),
  -- #057 Primeape
  (1202, 57, NULL, 57, TRUE),
  -- #058 Growlithe
  (1202, 58, NULL, 58, TRUE),
  -- #059 Arcanine
  (1202, 59, NULL, 59, TRUE),
  -- #060 Poliwag
  (1202, 60, NULL, 60, TRUE),
  -- #061 Poliwhirl
  (1202, 61, NULL, 61, TRUE),
  -- #062 Poliwrath
  (1202, 62, NULL, 62, TRUE),
  -- #063 Abra
  (1202, 63, NULL, 63, TRUE),
  -- #064 Kadabra
  (1202, 64, NULL, 64, TRUE),
  -- #065 Alakazam
  (1202, 65, NULL, 65, TRUE),
  -- #066 Machop
  (1202, 66, NULL, 66, TRUE),
  -- #067 Machoke
  (1202, 67, NULL, 67, TRUE),
  -- #068 Machamp
  (1202, 68, NULL, 68, TRUE),
  -- #069 Bellsprout
  (1202, 69, NULL, 69, TRUE),
  -- #070 Weepinbell
  (1202, 70, NULL, 70, TRUE),
  -- #071 Victreebel
  (1202, 71, NULL, 71, TRUE),
  -- #072 Tentacool
  (1202, 72, NULL, 72, TRUE),
  -- #073 Tentacruel
  (1202, 73, NULL, 73, TRUE),
  -- #074 Geodude
  (1202, 74, NULL, 74, TRUE),
  -- #075 Graveler
  (1202, 75, NULL, 75, TRUE),
  -- #076 Golem
  (1202, 76, NULL, 76, TRUE),
  -- #077 Ponyta
  (1202, 77, NULL, 77, TRUE),
  -- #078 Rapidash
  (1202, 78, NULL, 78, TRUE),
  -- #079 Slowpoke
  (1202, 79, NULL, 79, TRUE),
  -- #080 Slowbro
  (1202, 80, NULL, 80, TRUE),
  -- #081 Magnemite
  (1202, 81, NULL, 81, TRUE),
  -- #082 Magneton
  (1202, 82, NULL, 82, TRUE),
  -- #083 Farfetch'd
  (1202, 83, NULL, 83, TRUE),
  -- #084 Doduo
  (1202, 84, NULL, 84, TRUE),
  -- #085 Dodrio
  (1202, 85, NULL, 85, TRUE),
  -- #086 Seel
  (1202, 86, NULL, 86, TRUE),
  -- #087 Dewgong
  (1202, 87, NULL, 87, TRUE),
  -- #088 Grimer
  (1202, 88, NULL, 88, TRUE),
  -- #089 Muk
  (1202, 89, NULL, 89, TRUE),
  -- #090 Shellder
  (1202, 90, NULL, 90, TRUE),
  -- #091 Cloyster
  (1202, 91, NULL, 91, TRUE),
  -- #092 Gastly
  (1202, 92, NULL, 92, TRUE),
  -- #093 Haunter
  (1202, 93, NULL, 93, TRUE),
  -- #094 Gengar
  (1202, 94, NULL, 94, TRUE),
  -- #095 Onix
  (1202, 95, NULL, 95, TRUE),
  -- #096 Drowzee
  (1202, 96, NULL, 96, TRUE),
  -- #097 Hypno
  (1202, 97, NULL, 97, TRUE),
  -- #098 Krabby
  (1202, 98, NULL, 98, TRUE),
  -- #099 Kingler
  (1202, 99, NULL, 99, TRUE),
  -- #100 Voltorb
  (1202, 100, NULL, 100, TRUE),
  -- #101 Electrode
  (1202, 101, NULL, 101, TRUE),
  -- #102 Exeggcute
  (1202, 102, NULL, 102, TRUE),
  -- #103 Exeggutor
  (1202, 103, NULL, 103, TRUE),
  -- #104 Cubone
  (1202, 104, NULL, 104, TRUE),
  -- #105 Marowak
  (1202, 105, NULL, 105, TRUE),
  -- #106 Hitmonlee
  (1202, 106, NULL, 106, TRUE),
  -- #107 Hitmonchan
  (1202, 107, NULL, 107, TRUE),
  -- #108 Lickitung
  (1202, 108, NULL, 108, TRUE),
  -- #109 Koffing
  (1202, 109, NULL, 109, TRUE),
  -- #110 Weezing
  (1202, 110, NULL, 110, TRUE),
  -- #111 Rhyhorn
  (1202, 111, NULL, 111, TRUE),
  -- #112 Rhydon
  (1202, 112, NULL, 112, TRUE),
  -- #113 Chansey
  (1202, 113, NULL, 113, TRUE),
  -- #114 Tangela
  (1202, 114, NULL, 114, TRUE),
  -- #115 Kangaskhan
  (1202, 115, NULL, 115, TRUE),
  -- #116 Horsea
  (1202, 116, NULL, 116, TRUE),
  -- #117 Seadra
  (1202, 117, NULL, 117, TRUE),
  -- #118 Goldeen
  (1202, 118, NULL, 118, TRUE),
  -- #119 Seaking
  (1202, 119, NULL, 119, TRUE),
  -- #120 Staryu
  (1202, 120, NULL, 120, TRUE),
  -- #121 Starmie
  (1202, 121, NULL, 121, TRUE),
  -- #122 Mr. Mime
  (1202, 122, NULL, 122, TRUE),
  -- #123 Scyther
  (1202, 123, NULL, 123, TRUE),
  -- #124 Jynx
  (1202, 124, NULL, 124, TRUE),
  -- #125 Electabuzz
  (1202, 125, NULL, 125, TRUE),
  -- #126 Magmar
  (1202, 126, NULL, 126, TRUE),
  -- #127 Pinsir
  (1202, 127, NULL, 127, TRUE),
  -- #128 Tauros
  (1202, 128, NULL, 128, TRUE),
  -- #129 Magikarp
  (1202, 129, NULL, 129, TRUE),
  -- #130 Gyarados
  (1202, 130, NULL, 130, TRUE),
  -- #131 Lapras
  (1202, 131, NULL, 131, TRUE),
  -- #132 Ditto
  (1202, 132, NULL, 132, TRUE),
  -- #133 Eevee
  (1202, 133, NULL, 133, TRUE),
  -- #134 Vaporeon
  (1202, 134, NULL, 134, TRUE),
  -- #135 Jolteon
  (1202, 135, NULL, 135, TRUE),
  -- #136 Flareon
  (1202, 136, NULL, 136, TRUE),
  -- #137 Porygon
  (1202, 137, NULL, 137, TRUE),
  -- #138 Omanyte
  (1202, 138, NULL, 138, TRUE),
  -- #139 Omastar
  (1202, 139, NULL, 139, TRUE),
  -- #140 Kabuto
  (1202, 140, NULL, 140, TRUE),
  -- #141 Kabutops
  (1202, 141, NULL, 141, TRUE),
  -- #142 Aerodactyl
  (1202, 142, NULL, 142, TRUE),
  -- #143 Snorlax
  (1202, 143, NULL, 143, TRUE),
  -- #144 Articuno
  (1202, 144, NULL, 144, TRUE),
  -- #145 Zapdos
  (1202, 145, NULL, 145, TRUE),
  -- #146 Moltres
  (1202, 146, NULL, 146, TRUE),
  -- #147 Dratini
  (1202, 147, NULL, 147, TRUE),
  -- #148 Dragonair
  (1202, 148, NULL, 148, TRUE),
  -- #149 Dragonite
  (1202, 149, NULL, 149, TRUE),
  -- #150 Mewtwo
  (1202, 150, NULL, 150, TRUE),
  -- #151 Mew
  (1202, 151, NULL, 151, FALSE),
  -- #152 Chikorita
  (1202, 152, NULL, 152, TRUE),
  -- #153 Bayleef
  (1202, 153, NULL, 153, TRUE),
  -- #154 Meganium
  (1202, 154, NULL, 154, TRUE),
  -- #155 Cyndaquil
  (1202, 155, NULL, 155, TRUE),
  -- #156 Quilava
  (1202, 156, NULL, 156, TRUE),
  -- #157 Typhlosion
  (1202, 157, NULL, 157, TRUE),
  -- #158 Totodile
  (1202, 158, NULL, 158, TRUE),
  -- #159 Croconaw
  (1202, 159, NULL, 159, TRUE),
  -- #160 Feraligatr
  (1202, 160, NULL, 160, TRUE),
  -- #161 Sentret
  (1202, 161, NULL, 161, TRUE),
  -- #162 Furret
  (1202, 162, NULL, 162, TRUE),
  -- #163 Hoothoot
  (1202, 163, NULL, 163, TRUE),
  -- #164 Noctowl
  (1202, 164, NULL, 164, TRUE),
  -- #165 Ledyba
  (1202, 165, NULL, 165, TRUE),
  -- #166 Ledian
  (1202, 166, NULL, 166, TRUE),
  -- #167 Spinarak
  (1202, 167, NULL, 167, TRUE),
  -- #168 Ariados
  (1202, 168, NULL, 168, TRUE),
  -- #169 Crobat
  (1202, 169, NULL, 169, TRUE),
  -- #170 Chinchou
  (1202, 170, NULL, 170, TRUE),
  -- #171 Lanturn
  (1202, 171, NULL, 171, TRUE),
  -- #172 Pichu
  (1202, 172, NULL, 172, TRUE),
  -- #173 Cleffa
  (1202, 173, NULL, 173, TRUE),
  -- #174 Igglybuff
  (1202, 174, NULL, 174, TRUE),
  -- #175 Togepi
  (1202, 175, NULL, 175, TRUE),
  -- #176 Togetic
  (1202, 176, NULL, 176, TRUE),
  -- #177 Natu
  (1202, 177, NULL, 177, TRUE),
  -- #178 Xatu
  (1202, 178, NULL, 178, TRUE),
  -- #179 Mareep
  (1202, 179, NULL, 179, TRUE),
  -- #180 Flaaffy
  (1202, 180, NULL, 180, TRUE),
  -- #181 Ampharos
  (1202, 181, NULL, 181, TRUE),
  -- #182 Bellossom
  (1202, 182, NULL, 182, TRUE),
  -- #183 Marill
  (1202, 183, NULL, 183, TRUE),
  -- #184 Azumarill
  (1202, 184, NULL, 184, TRUE),
  -- #185 Sudowoodo
  (1202, 185, NULL, 185, TRUE),
  -- #186 Politoed
  (1202, 186, NULL, 186, TRUE),
  -- #187 Hoppip
  (1202, 187, NULL, 187, TRUE),
  -- #188 Skiploom
  (1202, 188, NULL, 188, TRUE),
  -- #189 Jumpluff
  (1202, 189, NULL, 189, TRUE),
  -- #190 Aipom
  (1202, 190, NULL, 190, TRUE),
  -- #191 Sunkern
  (1202, 191, NULL, 191, TRUE),
  -- #192 Sunflora
  (1202, 192, NULL, 192, TRUE),
  -- #193 Yanma
  (1202, 193, NULL, 193, TRUE),
  -- #194 Wooper
  (1202, 194, NULL, 194, TRUE),
  -- #195 Quagsire
  (1202, 195, NULL, 195, TRUE),
  -- #196 Espeon
  (1202, 196, NULL, 196, TRUE),
  -- #197 Umbreon
  (1202, 197, NULL, 197, TRUE),
  -- #198 Murkrow
  (1202, 198, NULL, 198, TRUE),
  -- #199 Slowking
  (1202, 199, NULL, 199, TRUE),
  -- #200 Misdreavus
  (1202, 200, NULL, 200, TRUE),
  -- #201 Unown
  (1202, 201, NULL, 201, TRUE),
  -- #202 Wobbuffet
  (1202, 202, NULL, 202, TRUE),
  -- #203 Girafarig
  (1202, 203, NULL, 203, TRUE),
  -- #204 Pineco
  (1202, 204, NULL, 204, TRUE),
  -- #205 Forretress
  (1202, 205, NULL, 205, TRUE),
  -- #206 Dunsparce
  (1202, 206, NULL, 206, TRUE),
  -- #207 Gligar
  (1202, 207, NULL, 207, TRUE),
  -- #208 Steelix
  (1202, 208, NULL, 208, TRUE),
  -- #209 Snubbull
  (1202, 209, NULL, 209, TRUE),
  -- #210 Granbull
  (1202, 210, NULL, 210, TRUE),
  -- #211 Qwilfish
  (1202, 211, NULL, 211, TRUE),
  -- #212 Scizor
  (1202, 212, NULL, 212, TRUE),
  -- #213 Shuckle
  (1202, 213, NULL, 213, TRUE),
  -- #214 Heracross
  (1202, 214, NULL, 214, TRUE),
  -- #215 Sneasel
  (1202, 215, NULL, 215, TRUE),
  -- #216 Teddiursa
  (1202, 216, NULL, 216, TRUE),
  -- #217 Ursaring
  (1202, 217, NULL, 217, TRUE),
  -- #218 Slugma
  (1202, 218, NULL, 218, TRUE),
  -- #219 Magcargo
  (1202, 219, NULL, 219, TRUE),
  -- #220 Swinub
  (1202, 220, NULL, 220, TRUE),
  -- #221 Piloswine
  (1202, 221, NULL, 221, TRUE),
  -- #222 Corsola
  (1202, 222, NULL, 222, TRUE),
  -- #223 Remoraid
  (1202, 223, NULL, 223, TRUE),
  -- #224 Octillery
  (1202, 224, NULL, 224, TRUE),
  -- #225 Delibird
  (1202, 225, NULL, 225, TRUE),
  -- #226 Mantine
  (1202, 226, NULL, 226, TRUE),
  -- #227 Skarmory
  (1202, 227, NULL, 227, TRUE),
  -- #228 Houndour
  (1202, 228, NULL, 228, TRUE),
  -- #229 Houndoom
  (1202, 229, NULL, 229, TRUE),
  -- #230 Kingdra
  (1202, 230, NULL, 230, TRUE),
  -- #231 Phanpy
  (1202, 231, NULL, 231, TRUE),
  -- #232 Donphan
  (1202, 232, NULL, 232, TRUE),
  -- #233 Porygon2
  (1202, 233, NULL, 233, TRUE),
  -- #234 Stantler
  (1202, 234, NULL, 234, TRUE),
  -- #235 Smeargle
  (1202, 235, NULL, 235, TRUE),
  -- #236 Tyrogue
  (1202, 236, NULL, 236, TRUE),
  -- #237 Hitmontop
  (1202, 237, NULL, 237, TRUE),
  -- #238 Smoochum
  (1202, 238, NULL, 238, TRUE),
  -- #239 Elekid
  (1202, 239, NULL, 239, TRUE),
  -- #240 Magby
  (1202, 240, NULL, 240, TRUE),
  -- #241 Miltank
  (1202, 241, NULL, 241, TRUE),
  -- #242 Blissey
  (1202, 242, NULL, 242, TRUE),
  -- #243 Raikou
  (1202, 243, NULL, 243, TRUE),
  -- #244 Entei
  (1202, 244, NULL, 244, TRUE),
  -- #245 Suicune
  (1202, 245, NULL, 245, TRUE),
  -- #246 Larvitar
  (1202, 246, NULL, 246, TRUE),
  -- #247 Pupitar
  (1202, 247, NULL, 247, TRUE),
  -- #248 Tyranitar
  (1202, 248, NULL, 248, TRUE),
  -- #249 Lugia
  (1202, 249, NULL, 249, TRUE),
  -- #250 Ho-Oh
  (1202, 250, NULL, 250, TRUE),
  -- #251 Celebi
  (1202, 251, NULL, 251, FALSE),
  -- #252 Treecko
  (1202, 252, NULL, 252, TRUE),
  -- #253 Grovyle
  (1202, 253, NULL, 253, TRUE),
  -- #254 Sceptile
  (1202, 254, NULL, 254, TRUE),
  -- #255 Torchic
  (1202, 255, NULL, 255, TRUE),
  -- #256 Combusken
  (1202, 256, NULL, 256, TRUE),
  -- #257 Blaziken
  (1202, 257, NULL, 257, TRUE),
  -- #258 Mudkip
  (1202, 258, NULL, 258, TRUE),
  -- #259 Marshtomp
  (1202, 259, NULL, 259, TRUE),
  -- #260 Swampert
  (1202, 260, NULL, 260, TRUE),
  -- #261 Poochyena
  (1202, 261, NULL, 261, TRUE),
  -- #262 Mightyena
  (1202, 262, NULL, 262, TRUE),
  -- #263 Zigzagoon
  (1202, 263, NULL, 263, TRUE),
  -- #264 Linoone
  (1202, 264, NULL, 264, TRUE),
  -- #265 Wurmple
  (1202, 265, NULL, 265, TRUE),
  -- #266 Silcoon
  (1202, 266, NULL, 266, TRUE),
  -- #267 Beautifly
  (1202, 267, NULL, 267, TRUE),
  -- #268 Cascoon
  (1202, 268, NULL, 268, TRUE),
  -- #269 Dustox
  (1202, 269, NULL, 269, TRUE),
  -- #270 Lotad
  (1202, 270, NULL, 270, TRUE),
  -- #271 Lombre
  (1202, 271, NULL, 271, TRUE),
  -- #272 Ludicolo
  (1202, 272, NULL, 272, TRUE),
  -- #273 Seedot
  (1202, 273, NULL, 273, TRUE),
  -- #274 Nuzleaf
  (1202, 274, NULL, 274, TRUE),
  -- #275 Shiftry
  (1202, 275, NULL, 275, TRUE),
  -- #276 Taillow
  (1202, 276, NULL, 276, TRUE),
  -- #277 Swellow
  (1202, 277, NULL, 277, TRUE),
  -- #278 Wingull
  (1202, 278, NULL, 278, TRUE),
  -- #279 Pelipper
  (1202, 279, NULL, 279, TRUE),
  -- #280 Ralts
  (1202, 280, NULL, 280, TRUE),
  -- #281 Kirlia
  (1202, 281, NULL, 281, TRUE),
  -- #282 Gardevoir
  (1202, 282, NULL, 282, TRUE),
  -- #283 Surskit
  (1202, 283, NULL, 283, TRUE),
  -- #284 Masquerain
  (1202, 284, NULL, 284, TRUE),
  -- #285 Shroomish
  (1202, 285, NULL, 285, TRUE),
  -- #286 Breloom
  (1202, 286, NULL, 286, TRUE),
  -- #287 Slakoth
  (1202, 287, NULL, 287, TRUE),
  -- #288 Vigoroth
  (1202, 288, NULL, 288, TRUE),
  -- #289 Slaking
  (1202, 289, NULL, 289, TRUE),
  -- #290 Nincada
  (1202, 290, NULL, 290, TRUE),
  -- #291 Ninjask
  (1202, 291, NULL, 291, TRUE),
  -- #292 Shedinja
  (1202, 292, NULL, 292, TRUE),
  -- #293 Whismur
  (1202, 293, NULL, 293, TRUE),
  -- #294 Loudred
  (1202, 294, NULL, 294, TRUE),
  -- #295 Exploud
  (1202, 295, NULL, 295, TRUE),
  -- #296 Makuhita
  (1202, 296, NULL, 296, TRUE),
  -- #297 Hariyama
  (1202, 297, NULL, 297, TRUE),
  -- #298 Azurill
  (1202, 298, NULL, 298, TRUE),
  -- #299 Nosepass
  (1202, 299, NULL, 299, TRUE),
  -- #300 Skitty
  (1202, 300, NULL, 300, TRUE),
  -- #301 Delcatty
  (1202, 301, NULL, 301, TRUE),
  -- #302 Sableye
  (1202, 302, NULL, 302, TRUE),
  -- #303 Mawile
  (1202, 303, NULL, 303, TRUE),
  -- #304 Aron
  (1202, 304, NULL, 304, TRUE),
  -- #305 Lairon
  (1202, 305, NULL, 305, TRUE),
  -- #306 Aggron
  (1202, 306, NULL, 306, TRUE),
  -- #307 Meditite
  (1202, 307, NULL, 307, TRUE),
  -- #308 Medicham
  (1202, 308, NULL, 308, TRUE),
  -- #309 Electrike
  (1202, 309, NULL, 309, TRUE),
  -- #310 Manectric
  (1202, 310, NULL, 310, TRUE),
  -- #311 Plusle
  (1202, 311, NULL, 311, TRUE),
  -- #312 Minun
  (1202, 312, NULL, 312, TRUE),
  -- #313 Volbeat
  (1202, 313, NULL, 313, TRUE),
  -- #314 Illumise
  (1202, 314, NULL, 314, TRUE),
  -- #315 Roselia
  (1202, 315, NULL, 315, TRUE),
  -- #316 Gulpin
  (1202, 316, NULL, 316, TRUE),
  -- #317 Swalot
  (1202, 317, NULL, 317, TRUE),
  -- #318 Carvanha
  (1202, 318, NULL, 318, TRUE),
  -- #319 Sharpedo
  (1202, 319, NULL, 319, TRUE),
  -- #320 Wailmer
  (1202, 320, NULL, 320, TRUE),
  -- #321 Wailord
  (1202, 321, NULL, 321, TRUE),
  -- #322 Numel
  (1202, 322, NULL, 322, TRUE),
  -- #323 Camerupt
  (1202, 323, NULL, 323, TRUE),
  -- #324 Torkoal
  (1202, 324, NULL, 324, TRUE),
  -- #325 Spoink
  (1202, 325, NULL, 325, TRUE),
  -- #326 Grumpig
  (1202, 326, NULL, 326, TRUE),
  -- #327 Spinda
  (1202, 327, NULL, 327, TRUE),
  -- #328 Trapinch
  (1202, 328, NULL, 328, TRUE),
  -- #329 Vibrava
  (1202, 329, NULL, 329, TRUE),
  -- #330 Flygon
  (1202, 330, NULL, 330, TRUE),
  -- #331 Cacnea
  (1202, 331, NULL, 331, TRUE),
  -- #332 Cacturne
  (1202, 332, NULL, 332, TRUE),
  -- #333 Swablu
  (1202, 333, NULL, 333, TRUE),
  -- #334 Altaria
  (1202, 334, NULL, 334, TRUE),
  -- #335 Zangoose
  (1202, 335, NULL, 335, TRUE),
  -- #336 Seviper
  (1202, 336, NULL, 336, TRUE),
  -- #337 Lunatone
  (1202, 337, NULL, 337, TRUE),
  -- #338 Solrock
  (1202, 338, NULL, 338, TRUE),
  -- #339 Barboach
  (1202, 339, NULL, 339, TRUE),
  -- #340 Whiscash
  (1202, 340, NULL, 340, TRUE),
  -- #341 Corphish
  (1202, 341, NULL, 341, TRUE),
  -- #342 Crawdaunt
  (1202, 342, NULL, 342, TRUE),
  -- #343 Baltoy
  (1202, 343, NULL, 343, TRUE),
  -- #344 Claydol
  (1202, 344, NULL, 344, TRUE),
  -- #345 Lileep
  (1202, 345, NULL, 345, TRUE),
  -- #346 Cradily
  (1202, 346, NULL, 346, TRUE),
  -- #347 Anorith
  (1202, 347, NULL, 347, TRUE),
  -- #348 Armaldo
  (1202, 348, NULL, 348, TRUE),
  -- #349 Feebas
  (1202, 349, NULL, 349, TRUE),
  -- #350 Milotic
  (1202, 350, NULL, 350, TRUE),
  -- #351 Castform
  (1202, 351, NULL, 351, TRUE),
  -- #352 Kecleon
  (1202, 352, NULL, 352, TRUE),
  -- #353 Shuppet
  (1202, 353, NULL, 353, TRUE),
  -- #354 Banette
  (1202, 354, NULL, 354, TRUE),
  -- #355 Duskull
  (1202, 355, NULL, 355, TRUE),
  -- #356 Dusclops
  (1202, 356, NULL, 356, TRUE),
  -- #357 Tropius
  (1202, 357, NULL, 357, TRUE),
  -- #358 Chimecho
  (1202, 358, NULL, 358, TRUE),
  -- #359 Absol
  (1202, 359, NULL, 359, TRUE),
  -- #360 Wynaut
  (1202, 360, NULL, 360, TRUE),
  -- #361 Snorunt
  (1202, 361, NULL, 361, TRUE),
  -- #362 Glalie
  (1202, 362, NULL, 362, TRUE),
  -- #363 Spheal
  (1202, 363, NULL, 363, TRUE),
  -- #364 Sealeo
  (1202, 364, NULL, 364, TRUE),
  -- #365 Walrein
  (1202, 365, NULL, 365, TRUE),
  -- #366 Clamperl
  (1202, 366, NULL, 366, TRUE),
  -- #367 Huntail
  (1202, 367, NULL, 367, TRUE),
  -- #368 Gorebyss
  (1202, 368, NULL, 368, TRUE),
  -- #369 Relicanth
  (1202, 369, NULL, 369, TRUE),
  -- #370 Luvdisc
  (1202, 370, NULL, 370, TRUE),
  -- #371 Bagon
  (1202, 371, NULL, 371, TRUE),
  -- #372 Shelgon
  (1202, 372, NULL, 372, TRUE),
  -- #373 Salamence
  (1202, 373, NULL, 373, TRUE),
  -- #374 Beldum
  (1202, 374, NULL, 374, TRUE),
  -- #375 Metang
  (1202, 375, NULL, 375, TRUE),
  -- #376 Metagross
  (1202, 376, NULL, 376, TRUE),
  -- #377 Regirock
  (1202, 377, NULL, 377, TRUE),
  -- #378 Regice
  (1202, 378, NULL, 378, TRUE),
  -- #379 Registeel
  (1202, 379, NULL, 379, TRUE),
  -- #380 Latias
  (1202, 380, NULL, 380, TRUE),
  -- #381 Latios
  (1202, 381, NULL, 381, TRUE),
  -- #382 Kyogre
  (1202, 382, NULL, 382, TRUE),
  -- #383 Groudon
  (1202, 383, NULL, 383, TRUE),
  -- #384 Rayquaza
  (1202, 384, NULL, 384, TRUE),
  -- #385 Jirachi
  (1202, 385, NULL, 385, FALSE),
  -- #386 Deoxys
  (1202, 386, NULL, 386, FALSE),
  -- #387 Turtwig
  (1202, 387, NULL, 387, TRUE),
  -- #388 Grotle
  (1202, 388, NULL, 388, TRUE),
  -- #389 Torterra
  (1202, 389, NULL, 389, TRUE),
  -- #390 Chimchar
  (1202, 390, NULL, 390, TRUE),
  -- #391 Monferno
  (1202, 391, NULL, 391, TRUE),
  -- #392 Infernape
  (1202, 392, NULL, 392, TRUE),
  -- #393 Piplup
  (1202, 393, NULL, 393, TRUE),
  -- #394 Prinplup
  (1202, 394, NULL, 394, TRUE),
  -- #395 Empoleon
  (1202, 395, NULL, 395, TRUE),
  -- #396 Starly
  (1202, 396, NULL, 396, TRUE),
  -- #397 Staravia
  (1202, 397, NULL, 397, TRUE),
  -- #398 Staraptor
  (1202, 398, NULL, 398, TRUE),
  -- #399 Bidoof
  (1202, 399, NULL, 399, TRUE),
  -- #400 Bibarel
  (1202, 400, NULL, 400, TRUE),
  -- #401 Kricketot
  (1202, 401, NULL, 401, TRUE),
  -- #402 Kricketune
  (1202, 402, NULL, 402, TRUE),
  -- #403 Shinx
  (1202, 403, NULL, 403, TRUE),
  -- #404 Luxio
  (1202, 404, NULL, 404, TRUE),
  -- #405 Luxray
  (1202, 405, NULL, 405, TRUE),
  -- #406 Budew
  (1202, 406, NULL, 406, TRUE),
  -- #407 Roserade
  (1202, 407, NULL, 407, TRUE),
  -- #408 Cranidos
  (1202, 408, NULL, 408, TRUE),
  -- #409 Rampardos
  (1202, 409, NULL, 409, TRUE),
  -- #410 Shieldon
  (1202, 410, NULL, 410, TRUE),
  -- #411 Bastiodon
  (1202, 411, NULL, 411, TRUE),
  -- #412 Burmy
  (1202, 412, NULL, 412, TRUE),
  -- #413 Wormadam
  (1202, 413, NULL, 413, TRUE),
  -- #414 Mothim
  (1202, 414, NULL, 414, TRUE),
  -- #415 Combee
  (1202, 415, NULL, 415, TRUE),
  -- #416 Vespiquen
  (1202, 416, NULL, 416, TRUE),
  -- #417 Pachirisu
  (1202, 417, NULL, 417, TRUE),
  -- #418 Buizel
  (1202, 418, NULL, 418, TRUE),
  -- #419 Floatzel
  (1202, 419, NULL, 419, TRUE),
  -- #420 Cherubi
  (1202, 420, NULL, 420, TRUE),
  -- #421 Cherrim
  (1202, 421, NULL, 421, TRUE),
  -- #422 Shellos
  (1202, 422, NULL, 422, TRUE),
  -- #423 Gastrodon
  (1202, 423, NULL, 423, TRUE),
  -- #424 Ambipom
  (1202, 424, NULL, 424, TRUE),
  -- #425 Drifloon
  (1202, 425, NULL, 425, TRUE),
  -- #426 Drifblim
  (1202, 426, NULL, 426, TRUE),
  -- #427 Buneary
  (1202, 427, NULL, 427, TRUE),
  -- #428 Lopunny
  (1202, 428, NULL, 428, TRUE),
  -- #429 Mismagius
  (1202, 429, NULL, 429, TRUE),
  -- #430 Honchkrow
  (1202, 430, NULL, 430, TRUE),
  -- #431 Glameow
  (1202, 431, NULL, 431, TRUE),
  -- #432 Purugly
  (1202, 432, NULL, 432, TRUE),
  -- #433 Chingling
  (1202, 433, NULL, 433, TRUE),
  -- #434 Stunky
  (1202, 434, NULL, 434, TRUE),
  -- #435 Skuntank
  (1202, 435, NULL, 435, TRUE),
  -- #436 Bronzor
  (1202, 436, NULL, 436, TRUE),
  -- #437 Bronzong
  (1202, 437, NULL, 437, TRUE),
  -- #438 Bonsly
  (1202, 438, NULL, 438, TRUE),
  -- #439 Mime Jr.
  (1202, 439, NULL, 439, TRUE),
  -- #440 Happiny
  (1202, 440, NULL, 440, TRUE),
  -- #441 Chatot
  (1202, 441, NULL, 441, TRUE),
  -- #442 Spiritomb
  (1202, 442, NULL, 442, TRUE),
  -- #443 Gible
  (1202, 443, NULL, 443, TRUE),
  -- #444 Gabite
  (1202, 444, NULL, 444, TRUE),
  -- #445 Garchomp
  (1202, 445, NULL, 445, TRUE),
  -- #446 Munchlax
  (1202, 446, NULL, 446, TRUE),
  -- #447 Riolu
  (1202, 447, NULL, 447, TRUE),
  -- #448 Lucario
  (1202, 448, NULL, 448, TRUE),
  -- #449 Hippopotas
  (1202, 449, NULL, 449, TRUE),
  -- #450 Hippowdon
  (1202, 450, NULL, 450, TRUE),
  -- #451 Skorupi
  (1202, 451, NULL, 451, TRUE),
  -- #452 Drapion
  (1202, 452, NULL, 452, TRUE),
  -- #453 Croagunk
  (1202, 453, NULL, 453, TRUE),
  -- #454 Toxicroak
  (1202, 454, NULL, 454, TRUE),
  -- #455 Carnivine
  (1202, 455, NULL, 455, TRUE),
  -- #456 Finneon
  (1202, 456, NULL, 456, TRUE),
  -- #457 Lumineon
  (1202, 457, NULL, 457, TRUE),
  -- #458 Mantyke
  (1202, 458, NULL, 458, TRUE),
  -- #459 Snover
  (1202, 459, NULL, 459, TRUE),
  -- #460 Abomasnow
  (1202, 460, NULL, 460, TRUE),
  -- #461 Weavile
  (1202, 461, NULL, 461, TRUE),
  -- #462 Magnezone
  (1202, 462, NULL, 462, TRUE),
  -- #463 Lickilicky
  (1202, 463, NULL, 463, TRUE),
  -- #464 Rhyperior
  (1202, 464, NULL, 464, TRUE),
  -- #465 Tangrowth
  (1202, 465, NULL, 465, TRUE),
  -- #466 Electivire
  (1202, 466, NULL, 466, TRUE),
  -- #467 Magmortar
  (1202, 467, NULL, 467, TRUE),
  -- #468 Togekiss
  (1202, 468, NULL, 468, TRUE),
  -- #469 Yanmega
  (1202, 469, NULL, 469, TRUE),
  -- #470 Leafeon
  (1202, 470, NULL, 470, TRUE),
  -- #471 Glaceon
  (1202, 471, NULL, 471, TRUE),
  -- #472 Gliscor
  (1202, 472, NULL, 472, TRUE),
  -- #473 Mamoswine
  (1202, 473, NULL, 473, TRUE),
  -- #474 Porygon-Z
  (1202, 474, NULL, 474, TRUE),
  -- #475 Gallade
  (1202, 475, NULL, 475, TRUE),
  -- #476 Probopass
  (1202, 476, NULL, 476, TRUE),
  -- #477 Dusknoir
  (1202, 477, NULL, 477, TRUE),
  -- #478 Froslass
  (1202, 478, NULL, 478, TRUE),
  -- #479 Rotom
  (1202, 479, NULL, 479, TRUE),
  -- #480 Uxie
  (1202, 480, NULL, 480, TRUE),
  -- #481 Mesprit
  (1202, 481, NULL, 481, TRUE),
  -- #482 Azelf
  (1202, 482, NULL, 482, TRUE),
  -- #483 Dialga
  (1202, 483, NULL, 483, TRUE),
  -- #484 Palkia
  (1202, 484, NULL, 484, TRUE),
  -- #485 Heatran
  (1202, 485, NULL, 485, TRUE),
  -- #486 Regigigas
  (1202, 486, NULL, 486, TRUE),
  -- #487 Giratina
  (1202, 487, NULL, 487, TRUE),
  -- #488 Cresselia
  (1202, 488, NULL, 488, TRUE),
  -- #489 Phione
  (1202, 489, NULL, 489, FALSE),
  -- #490 Manaphy
  (1202, 490, NULL, 490, FALSE),
  -- #491 Darkrai
  (1202, 491, NULL, 491, FALSE),
  -- #492 Shaymin
  (1202, 492, NULL, 492, FALSE),
  -- #493 Arceus
  (1202, 493, NULL, 493, FALSE),
  -- #494 Victini
  (1202, 494, NULL, 494, FALSE),
  -- #495 Snivy
  (1202, 495, NULL, 495, TRUE),
  -- #496 Servine
  (1202, 496, NULL, 496, TRUE),
  -- #497 Serperior
  (1202, 497, NULL, 497, TRUE),
  -- #498 Tepig
  (1202, 498, NULL, 498, TRUE),
  -- #499 Pignite
  (1202, 499, NULL, 499, TRUE),
  -- #500 Emboar
  (1202, 500, NULL, 500, TRUE),
  -- #501 Oshawott
  (1202, 501, NULL, 501, TRUE),
  -- #502 Dewott
  (1202, 502, NULL, 502, TRUE),
  -- #503 Samurott
  (1202, 503, NULL, 503, TRUE),
  -- #504 Patrat
  (1202, 504, NULL, 504, TRUE),
  -- #505 Watchog
  (1202, 505, NULL, 505, TRUE),
  -- #506 Lillipup
  (1202, 506, NULL, 506, TRUE),
  -- #507 Herdier
  (1202, 507, NULL, 507, TRUE),
  -- #508 Stoutland
  (1202, 508, NULL, 508, TRUE),
  -- #509 Purrloin
  (1202, 509, NULL, 509, TRUE),
  -- #510 Liepard
  (1202, 510, NULL, 510, TRUE),
  -- #511 Pansage
  (1202, 511, NULL, 511, TRUE),
  -- #512 Simisage
  (1202, 512, NULL, 512, TRUE),
  -- #513 Pansear
  (1202, 513, NULL, 513, TRUE),
  -- #514 Simisear
  (1202, 514, NULL, 514, TRUE),
  -- #515 Panpour
  (1202, 515, NULL, 515, TRUE),
  -- #516 Simipour
  (1202, 516, NULL, 516, TRUE),
  -- #517 Munna
  (1202, 517, NULL, 517, TRUE),
  -- #518 Musharna
  (1202, 518, NULL, 518, TRUE),
  -- #519 Pidove
  (1202, 519, NULL, 519, TRUE),
  -- #520 Tranquill
  (1202, 520, NULL, 520, TRUE),
  -- #521 Unfezant
  (1202, 521, NULL, 521, TRUE),
  -- #522 Blitzle
  (1202, 522, NULL, 522, TRUE),
  -- #523 Zebstrika
  (1202, 523, NULL, 523, TRUE),
  -- #524 Roggenrola
  (1202, 524, NULL, 524, TRUE),
  -- #525 Boldore
  (1202, 525, NULL, 525, TRUE),
  -- #526 Gigalith
  (1202, 526, NULL, 526, TRUE),
  -- #527 Woobat
  (1202, 527, NULL, 527, TRUE),
  -- #528 Swoobat
  (1202, 528, NULL, 528, TRUE),
  -- #529 Drilbur
  (1202, 529, NULL, 529, TRUE),
  -- #530 Excadrill
  (1202, 530, NULL, 530, TRUE),
  -- #531 Audino
  (1202, 531, NULL, 531, TRUE),
  -- #532 Timburr
  (1202, 532, NULL, 532, TRUE),
  -- #533 Gurdurr
  (1202, 533, NULL, 533, TRUE),
  -- #534 Conkeldurr
  (1202, 534, NULL, 534, TRUE),
  -- #535 Tympole
  (1202, 535, NULL, 535, TRUE),
  -- #536 Palpitoad
  (1202, 536, NULL, 536, TRUE),
  -- #537 Seismitoad
  (1202, 537, NULL, 537, TRUE),
  -- #538 Throh
  (1202, 538, NULL, 538, TRUE),
  -- #539 Sawk
  (1202, 539, NULL, 539, TRUE),
  -- #540 Sewaddle
  (1202, 540, NULL, 540, TRUE),
  -- #541 Swadloon
  (1202, 541, NULL, 541, TRUE),
  -- #542 Leavanny
  (1202, 542, NULL, 542, TRUE),
  -- #543 Venipede
  (1202, 543, NULL, 543, TRUE),
  -- #544 Whirlipede
  (1202, 544, NULL, 544, TRUE),
  -- #545 Scolipede
  (1202, 545, NULL, 545, TRUE),
  -- #546 Cottonee
  (1202, 546, NULL, 546, TRUE),
  -- #547 Whimsicott
  (1202, 547, NULL, 547, TRUE),
  -- #548 Petilil
  (1202, 548, NULL, 548, TRUE),
  -- #549 Lilligant
  (1202, 549, NULL, 549, TRUE),
  -- #550 Basculin
  (1202, 550, NULL, 550, TRUE),
  -- #551 Sandile
  (1202, 551, NULL, 551, TRUE),
  -- #552 Krokorok
  (1202, 552, NULL, 552, TRUE),
  -- #553 Krookodile
  (1202, 553, NULL, 553, TRUE),
  -- #554 Darumaka
  (1202, 554, NULL, 554, TRUE),
  -- #555 Darmanitan
  (1202, 555, NULL, 555, TRUE),
  -- #556 Maractus
  (1202, 556, NULL, 556, TRUE),
  -- #557 Dwebble
  (1202, 557, NULL, 557, TRUE),
  -- #558 Crustle
  (1202, 558, NULL, 558, TRUE),
  -- #559 Scraggy
  (1202, 559, NULL, 559, TRUE),
  -- #560 Scrafty
  (1202, 560, NULL, 560, TRUE),
  -- #561 Sigilyph
  (1202, 561, NULL, 561, TRUE),
  -- #562 Yamask
  (1202, 562, NULL, 562, TRUE),
  -- #563 Cofagrigus
  (1202, 563, NULL, 563, TRUE),
  -- #564 Tirtouga
  (1202, 564, NULL, 564, TRUE),
  -- #565 Carracosta
  (1202, 565, NULL, 565, TRUE),
  -- #566 Archen
  (1202, 566, NULL, 566, TRUE),
  -- #567 Archeops
  (1202, 567, NULL, 567, TRUE),
  -- #568 Trubbish
  (1202, 568, NULL, 568, TRUE),
  -- #569 Garbodor
  (1202, 569, NULL, 569, TRUE),
  -- #570 Zorua
  (1202, 570, NULL, 570, TRUE),
  -- #571 Zoroark
  (1202, 571, NULL, 571, TRUE),
  -- #572 Minccino
  (1202, 572, NULL, 572, TRUE),
  -- #573 Cinccino
  (1202, 573, NULL, 573, TRUE),
  -- #574 Gothita
  (1202, 574, NULL, 574, TRUE),
  -- #575 Gothorita
  (1202, 575, NULL, 575, TRUE),
  -- #576 Gothitelle
  (1202, 576, NULL, 576, TRUE),
  -- #577 Solosis
  (1202, 577, NULL, 577, TRUE),
  -- #578 Duosion
  (1202, 578, NULL, 578, TRUE),
  -- #579 Reuniclus
  (1202, 579, NULL, 579, TRUE),
  -- #580 Ducklett
  (1202, 580, NULL, 580, TRUE),
  -- #581 Swanna
  (1202, 581, NULL, 581, TRUE),
  -- #582 Vanillite
  (1202, 582, NULL, 582, TRUE),
  -- #583 Vanillish
  (1202, 583, NULL, 583, TRUE),
  -- #584 Vanilluxe
  (1202, 584, NULL, 584, TRUE),
  -- #585 Deerling
  (1202, 585, NULL, 585, TRUE),
  -- #586 Sawsbuck
  (1202, 586, NULL, 586, TRUE),
  -- #587 Emolga
  (1202, 587, NULL, 587, TRUE),
  -- #588 Karrablast
  (1202, 588, NULL, 588, TRUE),
  -- #589 Escavalier
  (1202, 589, NULL, 589, TRUE),
  -- #590 Foongus
  (1202, 590, NULL, 590, TRUE),
  -- #591 Amoonguss
  (1202, 591, NULL, 591, TRUE),
  -- #592 Frillish
  (1202, 592, NULL, 592, TRUE),
  -- #593 Jellicent
  (1202, 593, NULL, 593, TRUE),
  -- #594 Alomomola
  (1202, 594, NULL, 594, TRUE),
  -- #595 Joltik
  (1202, 595, NULL, 595, TRUE),
  -- #596 Galvantula
  (1202, 596, NULL, 596, TRUE),
  -- #597 Ferroseed
  (1202, 597, NULL, 597, TRUE),
  -- #598 Ferrothorn
  (1202, 598, NULL, 598, TRUE),
  -- #599 Klink
  (1202, 599, NULL, 599, TRUE),
  -- #600 Klang
  (1202, 600, NULL, 600, TRUE),
  -- #601 Klinklang
  (1202, 601, NULL, 601, TRUE),
  -- #602 Tynamo
  (1202, 602, NULL, 602, TRUE),
  -- #603 Eelektrik
  (1202, 603, NULL, 603, TRUE),
  -- #604 Eelektross
  (1202, 604, NULL, 604, TRUE),
  -- #605 Elgyem
  (1202, 605, NULL, 605, TRUE),
  -- #606 Beheeyem
  (1202, 606, NULL, 606, TRUE),
  -- #607 Litwick
  (1202, 607, NULL, 607, TRUE),
  -- #608 Lampent
  (1202, 608, NULL, 608, TRUE),
  -- #609 Chandelure
  (1202, 609, NULL, 609, TRUE),
  -- #610 Axew
  (1202, 610, NULL, 610, TRUE),
  -- #611 Fraxure
  (1202, 611, NULL, 611, TRUE),
  -- #612 Haxorus
  (1202, 612, NULL, 612, TRUE),
  -- #613 Cubchoo
  (1202, 613, NULL, 613, TRUE),
  -- #614 Beartic
  (1202, 614, NULL, 614, TRUE),
  -- #615 Cryogonal
  (1202, 615, NULL, 615, TRUE),
  -- #616 Shelmet
  (1202, 616, NULL, 616, TRUE),
  -- #617 Accelgor
  (1202, 617, NULL, 617, TRUE),
  -- #618 Stunfisk
  (1202, 618, NULL, 618, TRUE),
  -- #619 Mienfoo
  (1202, 619, NULL, 619, TRUE),
  -- #620 Mienshao
  (1202, 620, NULL, 620, TRUE),
  -- #621 Druddigon
  (1202, 621, NULL, 621, TRUE),
  -- #622 Golett
  (1202, 622, NULL, 622, TRUE),
  -- #623 Golurk
  (1202, 623, NULL, 623, TRUE),
  -- #624 Pawniard
  (1202, 624, NULL, 624, TRUE),
  -- #625 Bisharp
  (1202, 625, NULL, 625, TRUE),
  -- #626 Bouffalant
  (1202, 626, NULL, 626, TRUE),
  -- #627 Rufflet
  (1202, 627, NULL, 627, TRUE),
  -- #628 Braviary
  (1202, 628, NULL, 628, TRUE),
  -- #629 Vullaby
  (1202, 629, NULL, 629, TRUE),
  -- #630 Mandibuzz
  (1202, 630, NULL, 630, TRUE),
  -- #631 Heatmor
  (1202, 631, NULL, 631, TRUE),
  -- #632 Durant
  (1202, 632, NULL, 632, TRUE),
  -- #633 Deino
  (1202, 633, NULL, 633, TRUE),
  -- #634 Zweilous
  (1202, 634, NULL, 634, TRUE),
  -- #635 Hydreigon
  (1202, 635, NULL, 635, TRUE),
  -- #636 Larvesta
  (1202, 636, NULL, 636, TRUE),
  -- #637 Volcarona
  (1202, 637, NULL, 637, TRUE),
  -- #638 Cobalion
  (1202, 638, NULL, 638, TRUE),
  -- #639 Terrakion
  (1202, 639, NULL, 639, TRUE),
  -- #640 Virizion
  (1202, 640, NULL, 640, TRUE),
  -- #641 Tornadus
  (1202, 641, NULL, 641, TRUE),
  -- #642 Thundurus
  (1202, 642, NULL, 642, TRUE),
  -- #643 Reshiram
  (1202, 643, NULL, 643, TRUE),
  -- #644 Zekrom
  (1202, 644, NULL, 644, TRUE),
  -- #645 Landorus
  (1202, 645, NULL, 645, TRUE),
  -- #646 Kyurem
  (1202, 646, NULL, 646, TRUE),
  -- #647 Keldeo
  (1202, 647, NULL, 647, FALSE),
  -- #648 Meloetta
  (1202, 648, NULL, 648, FALSE),
  -- #649 Genesect
  (1202, 649, NULL, 649, FALSE);
