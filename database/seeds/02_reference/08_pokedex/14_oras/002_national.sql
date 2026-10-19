-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by National Pokedex number.
-- Cross-check: Bulbapedia National Pokedex page, Serebii National Pokedex, and PokemonDB National Pokedex.
-- ============================================================================
-- File Scope
-- ============================================================================
-- National Pokedex entries for Omega Ruby / Alpha Sapphire.
-- National Pokedex contains 721 species for this version group; Mythical species are source-visible but not required for default completion.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Bulbasaur
  (1402, 1, NULL, 1, TRUE),
  -- #002 Ivysaur
  (1402, 2, NULL, 2, TRUE),
  -- #003 Venusaur
  (1402, 3, NULL, 3, TRUE),
  -- #004 Charmander
  (1402, 4, NULL, 4, TRUE),
  -- #005 Charmeleon
  (1402, 5, NULL, 5, TRUE),
  -- #006 Charizard
  (1402, 6, NULL, 6, TRUE),
  -- #007 Squirtle
  (1402, 7, NULL, 7, TRUE),
  -- #008 Wartortle
  (1402, 8, NULL, 8, TRUE),
  -- #009 Blastoise
  (1402, 9, NULL, 9, TRUE),
  -- #010 Caterpie
  (1402, 10, NULL, 10, TRUE),
  -- #011 Metapod
  (1402, 11, NULL, 11, TRUE),
  -- #012 Butterfree
  (1402, 12, NULL, 12, TRUE),
  -- #013 Weedle
  (1402, 13, NULL, 13, TRUE),
  -- #014 Kakuna
  (1402, 14, NULL, 14, TRUE),
  -- #015 Beedrill
  (1402, 15, NULL, 15, TRUE),
  -- #016 Pidgey
  (1402, 16, NULL, 16, TRUE),
  -- #017 Pidgeotto
  (1402, 17, NULL, 17, TRUE),
  -- #018 Pidgeot
  (1402, 18, NULL, 18, TRUE),
  -- #019 Rattata
  (1402, 19, NULL, 19, TRUE),
  -- #020 Raticate
  (1402, 20, NULL, 20, TRUE),
  -- #021 Spearow
  (1402, 21, NULL, 21, TRUE),
  -- #022 Fearow
  (1402, 22, NULL, 22, TRUE),
  -- #023 Ekans
  (1402, 23, NULL, 23, TRUE),
  -- #024 Arbok
  (1402, 24, NULL, 24, TRUE),
  -- #025 Pikachu
  (1402, 25, NULL, 25, TRUE),
  -- #026 Raichu
  (1402, 26, NULL, 26, TRUE),
  -- #027 Sandshrew
  (1402, 27, NULL, 27, TRUE),
  -- #028 Sandslash
  (1402, 28, NULL, 28, TRUE),
  -- #029 Nidoran F
  (1402, 29, NULL, 29, TRUE),
  -- #030 Nidorina
  (1402, 30, NULL, 30, TRUE),
  -- #031 Nidoqueen
  (1402, 31, NULL, 31, TRUE),
  -- #032 Nidoran M
  (1402, 32, NULL, 32, TRUE),
  -- #033 Nidorino
  (1402, 33, NULL, 33, TRUE),
  -- #034 Nidoking
  (1402, 34, NULL, 34, TRUE),
  -- #035 Clefairy
  (1402, 35, NULL, 35, TRUE),
  -- #036 Clefable
  (1402, 36, NULL, 36, TRUE),
  -- #037 Vulpix
  (1402, 37, NULL, 37, TRUE),
  -- #038 Ninetales
  (1402, 38, NULL, 38, TRUE),
  -- #039 Jigglypuff
  (1402, 39, NULL, 39, TRUE),
  -- #040 Wigglytuff
  (1402, 40, NULL, 40, TRUE),
  -- #041 Zubat
  (1402, 41, NULL, 41, TRUE),
  -- #042 Golbat
  (1402, 42, NULL, 42, TRUE),
  -- #043 Oddish
  (1402, 43, NULL, 43, TRUE),
  -- #044 Gloom
  (1402, 44, NULL, 44, TRUE),
  -- #045 Vileplume
  (1402, 45, NULL, 45, TRUE),
  -- #046 Paras
  (1402, 46, NULL, 46, TRUE),
  -- #047 Parasect
  (1402, 47, NULL, 47, TRUE),
  -- #048 Venonat
  (1402, 48, NULL, 48, TRUE),
  -- #049 Venomoth
  (1402, 49, NULL, 49, TRUE),
  -- #050 Diglett
  (1402, 50, NULL, 50, TRUE),
  -- #051 Dugtrio
  (1402, 51, NULL, 51, TRUE),
  -- #052 Meowth
  (1402, 52, NULL, 52, TRUE),
  -- #053 Persian
  (1402, 53, NULL, 53, TRUE),
  -- #054 Psyduck
  (1402, 54, NULL, 54, TRUE),
  -- #055 Golduck
  (1402, 55, NULL, 55, TRUE),
  -- #056 Mankey
  (1402, 56, NULL, 56, TRUE),
  -- #057 Primeape
  (1402, 57, NULL, 57, TRUE),
  -- #058 Growlithe
  (1402, 58, NULL, 58, TRUE),
  -- #059 Arcanine
  (1402, 59, NULL, 59, TRUE),
  -- #060 Poliwag
  (1402, 60, NULL, 60, TRUE),
  -- #061 Poliwhirl
  (1402, 61, NULL, 61, TRUE),
  -- #062 Poliwrath
  (1402, 62, NULL, 62, TRUE),
  -- #063 Abra
  (1402, 63, NULL, 63, TRUE),
  -- #064 Kadabra
  (1402, 64, NULL, 64, TRUE),
  -- #065 Alakazam
  (1402, 65, NULL, 65, TRUE),
  -- #066 Machop
  (1402, 66, NULL, 66, TRUE),
  -- #067 Machoke
  (1402, 67, NULL, 67, TRUE),
  -- #068 Machamp
  (1402, 68, NULL, 68, TRUE),
  -- #069 Bellsprout
  (1402, 69, NULL, 69, TRUE),
  -- #070 Weepinbell
  (1402, 70, NULL, 70, TRUE),
  -- #071 Victreebel
  (1402, 71, NULL, 71, TRUE),
  -- #072 Tentacool
  (1402, 72, NULL, 72, TRUE),
  -- #073 Tentacruel
  (1402, 73, NULL, 73, TRUE),
  -- #074 Geodude
  (1402, 74, NULL, 74, TRUE),
  -- #075 Graveler
  (1402, 75, NULL, 75, TRUE),
  -- #076 Golem
  (1402, 76, NULL, 76, TRUE),
  -- #077 Ponyta
  (1402, 77, NULL, 77, TRUE),
  -- #078 Rapidash
  (1402, 78, NULL, 78, TRUE),
  -- #079 Slowpoke
  (1402, 79, NULL, 79, TRUE),
  -- #080 Slowbro
  (1402, 80, NULL, 80, TRUE),
  -- #081 Magnemite
  (1402, 81, NULL, 81, TRUE),
  -- #082 Magneton
  (1402, 82, NULL, 82, TRUE),
  -- #083 Farfetch'd
  (1402, 83, NULL, 83, TRUE),
  -- #084 Doduo
  (1402, 84, NULL, 84, TRUE),
  -- #085 Dodrio
  (1402, 85, NULL, 85, TRUE),
  -- #086 Seel
  (1402, 86, NULL, 86, TRUE),
  -- #087 Dewgong
  (1402, 87, NULL, 87, TRUE),
  -- #088 Grimer
  (1402, 88, NULL, 88, TRUE),
  -- #089 Muk
  (1402, 89, NULL, 89, TRUE),
  -- #090 Shellder
  (1402, 90, NULL, 90, TRUE),
  -- #091 Cloyster
  (1402, 91, NULL, 91, TRUE),
  -- #092 Gastly
  (1402, 92, NULL, 92, TRUE),
  -- #093 Haunter
  (1402, 93, NULL, 93, TRUE),
  -- #094 Gengar
  (1402, 94, NULL, 94, TRUE),
  -- #095 Onix
  (1402, 95, NULL, 95, TRUE),
  -- #096 Drowzee
  (1402, 96, NULL, 96, TRUE),
  -- #097 Hypno
  (1402, 97, NULL, 97, TRUE),
  -- #098 Krabby
  (1402, 98, NULL, 98, TRUE),
  -- #099 Kingler
  (1402, 99, NULL, 99, TRUE),
  -- #100 Voltorb
  (1402, 100, NULL, 100, TRUE),
  -- #101 Electrode
  (1402, 101, NULL, 101, TRUE),
  -- #102 Exeggcute
  (1402, 102, NULL, 102, TRUE),
  -- #103 Exeggutor
  (1402, 103, NULL, 103, TRUE),
  -- #104 Cubone
  (1402, 104, NULL, 104, TRUE),
  -- #105 Marowak
  (1402, 105, NULL, 105, TRUE),
  -- #106 Hitmonlee
  (1402, 106, NULL, 106, TRUE),
  -- #107 Hitmonchan
  (1402, 107, NULL, 107, TRUE),
  -- #108 Lickitung
  (1402, 108, NULL, 108, TRUE),
  -- #109 Koffing
  (1402, 109, NULL, 109, TRUE),
  -- #110 Weezing
  (1402, 110, NULL, 110, TRUE),
  -- #111 Rhyhorn
  (1402, 111, NULL, 111, TRUE),
  -- #112 Rhydon
  (1402, 112, NULL, 112, TRUE),
  -- #113 Chansey
  (1402, 113, NULL, 113, TRUE),
  -- #114 Tangela
  (1402, 114, NULL, 114, TRUE),
  -- #115 Kangaskhan
  (1402, 115, NULL, 115, TRUE),
  -- #116 Horsea
  (1402, 116, NULL, 116, TRUE),
  -- #117 Seadra
  (1402, 117, NULL, 117, TRUE),
  -- #118 Goldeen
  (1402, 118, NULL, 118, TRUE),
  -- #119 Seaking
  (1402, 119, NULL, 119, TRUE),
  -- #120 Staryu
  (1402, 120, NULL, 120, TRUE),
  -- #121 Starmie
  (1402, 121, NULL, 121, TRUE),
  -- #122 Mr. Mime
  (1402, 122, NULL, 122, TRUE),
  -- #123 Scyther
  (1402, 123, NULL, 123, TRUE),
  -- #124 Jynx
  (1402, 124, NULL, 124, TRUE),
  -- #125 Electabuzz
  (1402, 125, NULL, 125, TRUE),
  -- #126 Magmar
  (1402, 126, NULL, 126, TRUE),
  -- #127 Pinsir
  (1402, 127, NULL, 127, TRUE),
  -- #128 Tauros
  (1402, 128, NULL, 128, TRUE),
  -- #129 Magikarp
  (1402, 129, NULL, 129, TRUE),
  -- #130 Gyarados
  (1402, 130, NULL, 130, TRUE),
  -- #131 Lapras
  (1402, 131, NULL, 131, TRUE),
  -- #132 Ditto
  (1402, 132, NULL, 132, TRUE),
  -- #133 Eevee
  (1402, 133, NULL, 133, TRUE),
  -- #134 Vaporeon
  (1402, 134, NULL, 134, TRUE),
  -- #135 Jolteon
  (1402, 135, NULL, 135, TRUE),
  -- #136 Flareon
  (1402, 136, NULL, 136, TRUE),
  -- #137 Porygon
  (1402, 137, NULL, 137, TRUE),
  -- #138 Omanyte
  (1402, 138, NULL, 138, TRUE),
  -- #139 Omastar
  (1402, 139, NULL, 139, TRUE),
  -- #140 Kabuto
  (1402, 140, NULL, 140, TRUE),
  -- #141 Kabutops
  (1402, 141, NULL, 141, TRUE),
  -- #142 Aerodactyl
  (1402, 142, NULL, 142, TRUE),
  -- #143 Snorlax
  (1402, 143, NULL, 143, TRUE),
  -- #144 Articuno
  (1402, 144, NULL, 144, TRUE),
  -- #145 Zapdos
  (1402, 145, NULL, 145, TRUE),
  -- #146 Moltres
  (1402, 146, NULL, 146, TRUE),
  -- #147 Dratini
  (1402, 147, NULL, 147, TRUE),
  -- #148 Dragonair
  (1402, 148, NULL, 148, TRUE),
  -- #149 Dragonite
  (1402, 149, NULL, 149, TRUE),
  -- #150 Mewtwo
  (1402, 150, NULL, 150, TRUE),
  -- #151 Mew
  (1402, 151, NULL, 151, FALSE),
  -- #152 Chikorita
  (1402, 152, NULL, 152, TRUE),
  -- #153 Bayleef
  (1402, 153, NULL, 153, TRUE),
  -- #154 Meganium
  (1402, 154, NULL, 154, TRUE),
  -- #155 Cyndaquil
  (1402, 155, NULL, 155, TRUE),
  -- #156 Quilava
  (1402, 156, NULL, 156, TRUE),
  -- #157 Typhlosion
  (1402, 157, NULL, 157, TRUE),
  -- #158 Totodile
  (1402, 158, NULL, 158, TRUE),
  -- #159 Croconaw
  (1402, 159, NULL, 159, TRUE),
  -- #160 Feraligatr
  (1402, 160, NULL, 160, TRUE),
  -- #161 Sentret
  (1402, 161, NULL, 161, TRUE),
  -- #162 Furret
  (1402, 162, NULL, 162, TRUE),
  -- #163 Hoothoot
  (1402, 163, NULL, 163, TRUE),
  -- #164 Noctowl
  (1402, 164, NULL, 164, TRUE),
  -- #165 Ledyba
  (1402, 165, NULL, 165, TRUE),
  -- #166 Ledian
  (1402, 166, NULL, 166, TRUE),
  -- #167 Spinarak
  (1402, 167, NULL, 167, TRUE),
  -- #168 Ariados
  (1402, 168, NULL, 168, TRUE),
  -- #169 Crobat
  (1402, 169, NULL, 169, TRUE),
  -- #170 Chinchou
  (1402, 170, NULL, 170, TRUE),
  -- #171 Lanturn
  (1402, 171, NULL, 171, TRUE),
  -- #172 Pichu
  (1402, 172, NULL, 172, TRUE),
  -- #173 Cleffa
  (1402, 173, NULL, 173, TRUE),
  -- #174 Igglybuff
  (1402, 174, NULL, 174, TRUE),
  -- #175 Togepi
  (1402, 175, NULL, 175, TRUE),
  -- #176 Togetic
  (1402, 176, NULL, 176, TRUE),
  -- #177 Natu
  (1402, 177, NULL, 177, TRUE),
  -- #178 Xatu
  (1402, 178, NULL, 178, TRUE),
  -- #179 Mareep
  (1402, 179, NULL, 179, TRUE),
  -- #180 Flaaffy
  (1402, 180, NULL, 180, TRUE),
  -- #181 Ampharos
  (1402, 181, NULL, 181, TRUE),
  -- #182 Bellossom
  (1402, 182, NULL, 182, TRUE),
  -- #183 Marill
  (1402, 183, NULL, 183, TRUE),
  -- #184 Azumarill
  (1402, 184, NULL, 184, TRUE),
  -- #185 Sudowoodo
  (1402, 185, NULL, 185, TRUE),
  -- #186 Politoed
  (1402, 186, NULL, 186, TRUE),
  -- #187 Hoppip
  (1402, 187, NULL, 187, TRUE),
  -- #188 Skiploom
  (1402, 188, NULL, 188, TRUE),
  -- #189 Jumpluff
  (1402, 189, NULL, 189, TRUE),
  -- #190 Aipom
  (1402, 190, NULL, 190, TRUE),
  -- #191 Sunkern
  (1402, 191, NULL, 191, TRUE),
  -- #192 Sunflora
  (1402, 192, NULL, 192, TRUE),
  -- #193 Yanma
  (1402, 193, NULL, 193, TRUE),
  -- #194 Wooper
  (1402, 194, NULL, 194, TRUE),
  -- #195 Quagsire
  (1402, 195, NULL, 195, TRUE),
  -- #196 Espeon
  (1402, 196, NULL, 196, TRUE),
  -- #197 Umbreon
  (1402, 197, NULL, 197, TRUE),
  -- #198 Murkrow
  (1402, 198, NULL, 198, TRUE),
  -- #199 Slowking
  (1402, 199, NULL, 199, TRUE),
  -- #200 Misdreavus
  (1402, 200, NULL, 200, TRUE),
  -- #201 Unown
  (1402, 201, NULL, 201, TRUE),
  -- #202 Wobbuffet
  (1402, 202, NULL, 202, TRUE),
  -- #203 Girafarig
  (1402, 203, NULL, 203, TRUE),
  -- #204 Pineco
  (1402, 204, NULL, 204, TRUE),
  -- #205 Forretress
  (1402, 205, NULL, 205, TRUE),
  -- #206 Dunsparce
  (1402, 206, NULL, 206, TRUE),
  -- #207 Gligar
  (1402, 207, NULL, 207, TRUE),
  -- #208 Steelix
  (1402, 208, NULL, 208, TRUE),
  -- #209 Snubbull
  (1402, 209, NULL, 209, TRUE),
  -- #210 Granbull
  (1402, 210, NULL, 210, TRUE),
  -- #211 Qwilfish
  (1402, 211, NULL, 211, TRUE),
  -- #212 Scizor
  (1402, 212, NULL, 212, TRUE),
  -- #213 Shuckle
  (1402, 213, NULL, 213, TRUE),
  -- #214 Heracross
  (1402, 214, NULL, 214, TRUE),
  -- #215 Sneasel
  (1402, 215, NULL, 215, TRUE),
  -- #216 Teddiursa
  (1402, 216, NULL, 216, TRUE),
  -- #217 Ursaring
  (1402, 217, NULL, 217, TRUE),
  -- #218 Slugma
  (1402, 218, NULL, 218, TRUE),
  -- #219 Magcargo
  (1402, 219, NULL, 219, TRUE),
  -- #220 Swinub
  (1402, 220, NULL, 220, TRUE),
  -- #221 Piloswine
  (1402, 221, NULL, 221, TRUE),
  -- #222 Corsola
  (1402, 222, NULL, 222, TRUE),
  -- #223 Remoraid
  (1402, 223, NULL, 223, TRUE),
  -- #224 Octillery
  (1402, 224, NULL, 224, TRUE),
  -- #225 Delibird
  (1402, 225, NULL, 225, TRUE),
  -- #226 Mantine
  (1402, 226, NULL, 226, TRUE),
  -- #227 Skarmory
  (1402, 227, NULL, 227, TRUE),
  -- #228 Houndour
  (1402, 228, NULL, 228, TRUE),
  -- #229 Houndoom
  (1402, 229, NULL, 229, TRUE),
  -- #230 Kingdra
  (1402, 230, NULL, 230, TRUE),
  -- #231 Phanpy
  (1402, 231, NULL, 231, TRUE),
  -- #232 Donphan
  (1402, 232, NULL, 232, TRUE),
  -- #233 Porygon2
  (1402, 233, NULL, 233, TRUE),
  -- #234 Stantler
  (1402, 234, NULL, 234, TRUE),
  -- #235 Smeargle
  (1402, 235, NULL, 235, TRUE),
  -- #236 Tyrogue
  (1402, 236, NULL, 236, TRUE),
  -- #237 Hitmontop
  (1402, 237, NULL, 237, TRUE),
  -- #238 Smoochum
  (1402, 238, NULL, 238, TRUE),
  -- #239 Elekid
  (1402, 239, NULL, 239, TRUE),
  -- #240 Magby
  (1402, 240, NULL, 240, TRUE),
  -- #241 Miltank
  (1402, 241, NULL, 241, TRUE),
  -- #242 Blissey
  (1402, 242, NULL, 242, TRUE),
  -- #243 Raikou
  (1402, 243, NULL, 243, TRUE),
  -- #244 Entei
  (1402, 244, NULL, 244, TRUE),
  -- #245 Suicune
  (1402, 245, NULL, 245, TRUE),
  -- #246 Larvitar
  (1402, 246, NULL, 246, TRUE),
  -- #247 Pupitar
  (1402, 247, NULL, 247, TRUE),
  -- #248 Tyranitar
  (1402, 248, NULL, 248, TRUE),
  -- #249 Lugia
  (1402, 249, NULL, 249, TRUE),
  -- #250 Ho-Oh
  (1402, 250, NULL, 250, TRUE),
  -- #251 Celebi
  (1402, 251, NULL, 251, FALSE),
  -- #252 Treecko
  (1402, 252, NULL, 252, TRUE),
  -- #253 Grovyle
  (1402, 253, NULL, 253, TRUE),
  -- #254 Sceptile
  (1402, 254, NULL, 254, TRUE),
  -- #255 Torchic
  (1402, 255, NULL, 255, TRUE),
  -- #256 Combusken
  (1402, 256, NULL, 256, TRUE),
  -- #257 Blaziken
  (1402, 257, NULL, 257, TRUE),
  -- #258 Mudkip
  (1402, 258, NULL, 258, TRUE),
  -- #259 Marshtomp
  (1402, 259, NULL, 259, TRUE),
  -- #260 Swampert
  (1402, 260, NULL, 260, TRUE),
  -- #261 Poochyena
  (1402, 261, NULL, 261, TRUE),
  -- #262 Mightyena
  (1402, 262, NULL, 262, TRUE),
  -- #263 Zigzagoon
  (1402, 263, NULL, 263, TRUE),
  -- #264 Linoone
  (1402, 264, NULL, 264, TRUE),
  -- #265 Wurmple
  (1402, 265, NULL, 265, TRUE),
  -- #266 Silcoon
  (1402, 266, NULL, 266, TRUE),
  -- #267 Beautifly
  (1402, 267, NULL, 267, TRUE),
  -- #268 Cascoon
  (1402, 268, NULL, 268, TRUE),
  -- #269 Dustox
  (1402, 269, NULL, 269, TRUE),
  -- #270 Lotad
  (1402, 270, NULL, 270, TRUE),
  -- #271 Lombre
  (1402, 271, NULL, 271, TRUE),
  -- #272 Ludicolo
  (1402, 272, NULL, 272, TRUE),
  -- #273 Seedot
  (1402, 273, NULL, 273, TRUE),
  -- #274 Nuzleaf
  (1402, 274, NULL, 274, TRUE),
  -- #275 Shiftry
  (1402, 275, NULL, 275, TRUE),
  -- #276 Taillow
  (1402, 276, NULL, 276, TRUE),
  -- #277 Swellow
  (1402, 277, NULL, 277, TRUE),
  -- #278 Wingull
  (1402, 278, NULL, 278, TRUE),
  -- #279 Pelipper
  (1402, 279, NULL, 279, TRUE),
  -- #280 Ralts
  (1402, 280, NULL, 280, TRUE),
  -- #281 Kirlia
  (1402, 281, NULL, 281, TRUE),
  -- #282 Gardevoir
  (1402, 282, NULL, 282, TRUE),
  -- #283 Surskit
  (1402, 283, NULL, 283, TRUE),
  -- #284 Masquerain
  (1402, 284, NULL, 284, TRUE),
  -- #285 Shroomish
  (1402, 285, NULL, 285, TRUE),
  -- #286 Breloom
  (1402, 286, NULL, 286, TRUE),
  -- #287 Slakoth
  (1402, 287, NULL, 287, TRUE),
  -- #288 Vigoroth
  (1402, 288, NULL, 288, TRUE),
  -- #289 Slaking
  (1402, 289, NULL, 289, TRUE),
  -- #290 Nincada
  (1402, 290, NULL, 290, TRUE),
  -- #291 Ninjask
  (1402, 291, NULL, 291, TRUE),
  -- #292 Shedinja
  (1402, 292, NULL, 292, TRUE),
  -- #293 Whismur
  (1402, 293, NULL, 293, TRUE),
  -- #294 Loudred
  (1402, 294, NULL, 294, TRUE),
  -- #295 Exploud
  (1402, 295, NULL, 295, TRUE),
  -- #296 Makuhita
  (1402, 296, NULL, 296, TRUE),
  -- #297 Hariyama
  (1402, 297, NULL, 297, TRUE),
  -- #298 Azurill
  (1402, 298, NULL, 298, TRUE),
  -- #299 Nosepass
  (1402, 299, NULL, 299, TRUE),
  -- #300 Skitty
  (1402, 300, NULL, 300, TRUE),
  -- #301 Delcatty
  (1402, 301, NULL, 301, TRUE),
  -- #302 Sableye
  (1402, 302, NULL, 302, TRUE),
  -- #303 Mawile
  (1402, 303, NULL, 303, TRUE),
  -- #304 Aron
  (1402, 304, NULL, 304, TRUE),
  -- #305 Lairon
  (1402, 305, NULL, 305, TRUE),
  -- #306 Aggron
  (1402, 306, NULL, 306, TRUE),
  -- #307 Meditite
  (1402, 307, NULL, 307, TRUE),
  -- #308 Medicham
  (1402, 308, NULL, 308, TRUE),
  -- #309 Electrike
  (1402, 309, NULL, 309, TRUE),
  -- #310 Manectric
  (1402, 310, NULL, 310, TRUE),
  -- #311 Plusle
  (1402, 311, NULL, 311, TRUE),
  -- #312 Minun
  (1402, 312, NULL, 312, TRUE),
  -- #313 Volbeat
  (1402, 313, NULL, 313, TRUE),
  -- #314 Illumise
  (1402, 314, NULL, 314, TRUE),
  -- #315 Roselia
  (1402, 315, NULL, 315, TRUE),
  -- #316 Gulpin
  (1402, 316, NULL, 316, TRUE),
  -- #317 Swalot
  (1402, 317, NULL, 317, TRUE),
  -- #318 Carvanha
  (1402, 318, NULL, 318, TRUE),
  -- #319 Sharpedo
  (1402, 319, NULL, 319, TRUE),
  -- #320 Wailmer
  (1402, 320, NULL, 320, TRUE),
  -- #321 Wailord
  (1402, 321, NULL, 321, TRUE),
  -- #322 Numel
  (1402, 322, NULL, 322, TRUE),
  -- #323 Camerupt
  (1402, 323, NULL, 323, TRUE),
  -- #324 Torkoal
  (1402, 324, NULL, 324, TRUE),
  -- #325 Spoink
  (1402, 325, NULL, 325, TRUE),
  -- #326 Grumpig
  (1402, 326, NULL, 326, TRUE),
  -- #327 Spinda
  (1402, 327, NULL, 327, TRUE),
  -- #328 Trapinch
  (1402, 328, NULL, 328, TRUE),
  -- #329 Vibrava
  (1402, 329, NULL, 329, TRUE),
  -- #330 Flygon
  (1402, 330, NULL, 330, TRUE),
  -- #331 Cacnea
  (1402, 331, NULL, 331, TRUE),
  -- #332 Cacturne
  (1402, 332, NULL, 332, TRUE),
  -- #333 Swablu
  (1402, 333, NULL, 333, TRUE),
  -- #334 Altaria
  (1402, 334, NULL, 334, TRUE),
  -- #335 Zangoose
  (1402, 335, NULL, 335, TRUE),
  -- #336 Seviper
  (1402, 336, NULL, 336, TRUE),
  -- #337 Lunatone
  (1402, 337, NULL, 337, TRUE),
  -- #338 Solrock
  (1402, 338, NULL, 338, TRUE),
  -- #339 Barboach
  (1402, 339, NULL, 339, TRUE),
  -- #340 Whiscash
  (1402, 340, NULL, 340, TRUE),
  -- #341 Corphish
  (1402, 341, NULL, 341, TRUE),
  -- #342 Crawdaunt
  (1402, 342, NULL, 342, TRUE),
  -- #343 Baltoy
  (1402, 343, NULL, 343, TRUE),
  -- #344 Claydol
  (1402, 344, NULL, 344, TRUE),
  -- #345 Lileep
  (1402, 345, NULL, 345, TRUE),
  -- #346 Cradily
  (1402, 346, NULL, 346, TRUE),
  -- #347 Anorith
  (1402, 347, NULL, 347, TRUE),
  -- #348 Armaldo
  (1402, 348, NULL, 348, TRUE),
  -- #349 Feebas
  (1402, 349, NULL, 349, TRUE),
  -- #350 Milotic
  (1402, 350, NULL, 350, TRUE),
  -- #351 Castform
  (1402, 351, NULL, 351, TRUE),
  -- #352 Kecleon
  (1402, 352, NULL, 352, TRUE),
  -- #353 Shuppet
  (1402, 353, NULL, 353, TRUE),
  -- #354 Banette
  (1402, 354, NULL, 354, TRUE),
  -- #355 Duskull
  (1402, 355, NULL, 355, TRUE),
  -- #356 Dusclops
  (1402, 356, NULL, 356, TRUE),
  -- #357 Tropius
  (1402, 357, NULL, 357, TRUE),
  -- #358 Chimecho
  (1402, 358, NULL, 358, TRUE),
  -- #359 Absol
  (1402, 359, NULL, 359, TRUE),
  -- #360 Wynaut
  (1402, 360, NULL, 360, TRUE),
  -- #361 Snorunt
  (1402, 361, NULL, 361, TRUE),
  -- #362 Glalie
  (1402, 362, NULL, 362, TRUE),
  -- #363 Spheal
  (1402, 363, NULL, 363, TRUE),
  -- #364 Sealeo
  (1402, 364, NULL, 364, TRUE),
  -- #365 Walrein
  (1402, 365, NULL, 365, TRUE),
  -- #366 Clamperl
  (1402, 366, NULL, 366, TRUE),
  -- #367 Huntail
  (1402, 367, NULL, 367, TRUE),
  -- #368 Gorebyss
  (1402, 368, NULL, 368, TRUE),
  -- #369 Relicanth
  (1402, 369, NULL, 369, TRUE),
  -- #370 Luvdisc
  (1402, 370, NULL, 370, TRUE),
  -- #371 Bagon
  (1402, 371, NULL, 371, TRUE),
  -- #372 Shelgon
  (1402, 372, NULL, 372, TRUE),
  -- #373 Salamence
  (1402, 373, NULL, 373, TRUE),
  -- #374 Beldum
  (1402, 374, NULL, 374, TRUE),
  -- #375 Metang
  (1402, 375, NULL, 375, TRUE),
  -- #376 Metagross
  (1402, 376, NULL, 376, TRUE),
  -- #377 Regirock
  (1402, 377, NULL, 377, TRUE),
  -- #378 Regice
  (1402, 378, NULL, 378, TRUE),
  -- #379 Registeel
  (1402, 379, NULL, 379, TRUE),
  -- #380 Latias
  (1402, 380, NULL, 380, TRUE),
  -- #381 Latios
  (1402, 381, NULL, 381, TRUE),
  -- #382 Kyogre
  (1402, 382, NULL, 382, TRUE),
  -- #383 Groudon
  (1402, 383, NULL, 383, TRUE),
  -- #384 Rayquaza
  (1402, 384, NULL, 384, TRUE),
  -- #385 Jirachi
  (1402, 385, NULL, 385, FALSE),
  -- #386 Deoxys
  (1402, 386, NULL, 386, FALSE),
  -- #387 Turtwig
  (1402, 387, NULL, 387, TRUE),
  -- #388 Grotle
  (1402, 388, NULL, 388, TRUE),
  -- #389 Torterra
  (1402, 389, NULL, 389, TRUE),
  -- #390 Chimchar
  (1402, 390, NULL, 390, TRUE),
  -- #391 Monferno
  (1402, 391, NULL, 391, TRUE),
  -- #392 Infernape
  (1402, 392, NULL, 392, TRUE),
  -- #393 Piplup
  (1402, 393, NULL, 393, TRUE),
  -- #394 Prinplup
  (1402, 394, NULL, 394, TRUE),
  -- #395 Empoleon
  (1402, 395, NULL, 395, TRUE),
  -- #396 Starly
  (1402, 396, NULL, 396, TRUE),
  -- #397 Staravia
  (1402, 397, NULL, 397, TRUE),
  -- #398 Staraptor
  (1402, 398, NULL, 398, TRUE),
  -- #399 Bidoof
  (1402, 399, NULL, 399, TRUE),
  -- #400 Bibarel
  (1402, 400, NULL, 400, TRUE),
  -- #401 Kricketot
  (1402, 401, NULL, 401, TRUE),
  -- #402 Kricketune
  (1402, 402, NULL, 402, TRUE),
  -- #403 Shinx
  (1402, 403, NULL, 403, TRUE),
  -- #404 Luxio
  (1402, 404, NULL, 404, TRUE),
  -- #405 Luxray
  (1402, 405, NULL, 405, TRUE),
  -- #406 Budew
  (1402, 406, NULL, 406, TRUE),
  -- #407 Roserade
  (1402, 407, NULL, 407, TRUE),
  -- #408 Cranidos
  (1402, 408, NULL, 408, TRUE),
  -- #409 Rampardos
  (1402, 409, NULL, 409, TRUE),
  -- #410 Shieldon
  (1402, 410, NULL, 410, TRUE),
  -- #411 Bastiodon
  (1402, 411, NULL, 411, TRUE),
  -- #412 Burmy
  (1402, 412, NULL, 412, TRUE),
  -- #413 Wormadam
  (1402, 413, NULL, 413, TRUE),
  -- #414 Mothim
  (1402, 414, NULL, 414, TRUE),
  -- #415 Combee
  (1402, 415, NULL, 415, TRUE),
  -- #416 Vespiquen
  (1402, 416, NULL, 416, TRUE),
  -- #417 Pachirisu
  (1402, 417, NULL, 417, TRUE),
  -- #418 Buizel
  (1402, 418, NULL, 418, TRUE),
  -- #419 Floatzel
  (1402, 419, NULL, 419, TRUE),
  -- #420 Cherubi
  (1402, 420, NULL, 420, TRUE),
  -- #421 Cherrim
  (1402, 421, NULL, 421, TRUE),
  -- #422 Shellos
  (1402, 422, NULL, 422, TRUE),
  -- #423 Gastrodon
  (1402, 423, NULL, 423, TRUE),
  -- #424 Ambipom
  (1402, 424, NULL, 424, TRUE),
  -- #425 Drifloon
  (1402, 425, NULL, 425, TRUE),
  -- #426 Drifblim
  (1402, 426, NULL, 426, TRUE),
  -- #427 Buneary
  (1402, 427, NULL, 427, TRUE),
  -- #428 Lopunny
  (1402, 428, NULL, 428, TRUE),
  -- #429 Mismagius
  (1402, 429, NULL, 429, TRUE),
  -- #430 Honchkrow
  (1402, 430, NULL, 430, TRUE),
  -- #431 Glameow
  (1402, 431, NULL, 431, TRUE),
  -- #432 Purugly
  (1402, 432, NULL, 432, TRUE),
  -- #433 Chingling
  (1402, 433, NULL, 433, TRUE),
  -- #434 Stunky
  (1402, 434, NULL, 434, TRUE),
  -- #435 Skuntank
  (1402, 435, NULL, 435, TRUE),
  -- #436 Bronzor
  (1402, 436, NULL, 436, TRUE),
  -- #437 Bronzong
  (1402, 437, NULL, 437, TRUE),
  -- #438 Bonsly
  (1402, 438, NULL, 438, TRUE),
  -- #439 Mime Jr.
  (1402, 439, NULL, 439, TRUE),
  -- #440 Happiny
  (1402, 440, NULL, 440, TRUE),
  -- #441 Chatot
  (1402, 441, NULL, 441, TRUE),
  -- #442 Spiritomb
  (1402, 442, NULL, 442, TRUE),
  -- #443 Gible
  (1402, 443, NULL, 443, TRUE),
  -- #444 Gabite
  (1402, 444, NULL, 444, TRUE),
  -- #445 Garchomp
  (1402, 445, NULL, 445, TRUE),
  -- #446 Munchlax
  (1402, 446, NULL, 446, TRUE),
  -- #447 Riolu
  (1402, 447, NULL, 447, TRUE),
  -- #448 Lucario
  (1402, 448, NULL, 448, TRUE),
  -- #449 Hippopotas
  (1402, 449, NULL, 449, TRUE),
  -- #450 Hippowdon
  (1402, 450, NULL, 450, TRUE),
  -- #451 Skorupi
  (1402, 451, NULL, 451, TRUE),
  -- #452 Drapion
  (1402, 452, NULL, 452, TRUE),
  -- #453 Croagunk
  (1402, 453, NULL, 453, TRUE),
  -- #454 Toxicroak
  (1402, 454, NULL, 454, TRUE),
  -- #455 Carnivine
  (1402, 455, NULL, 455, TRUE),
  -- #456 Finneon
  (1402, 456, NULL, 456, TRUE),
  -- #457 Lumineon
  (1402, 457, NULL, 457, TRUE),
  -- #458 Mantyke
  (1402, 458, NULL, 458, TRUE),
  -- #459 Snover
  (1402, 459, NULL, 459, TRUE),
  -- #460 Abomasnow
  (1402, 460, NULL, 460, TRUE),
  -- #461 Weavile
  (1402, 461, NULL, 461, TRUE),
  -- #462 Magnezone
  (1402, 462, NULL, 462, TRUE),
  -- #463 Lickilicky
  (1402, 463, NULL, 463, TRUE),
  -- #464 Rhyperior
  (1402, 464, NULL, 464, TRUE),
  -- #465 Tangrowth
  (1402, 465, NULL, 465, TRUE),
  -- #466 Electivire
  (1402, 466, NULL, 466, TRUE),
  -- #467 Magmortar
  (1402, 467, NULL, 467, TRUE),
  -- #468 Togekiss
  (1402, 468, NULL, 468, TRUE),
  -- #469 Yanmega
  (1402, 469, NULL, 469, TRUE),
  -- #470 Leafeon
  (1402, 470, NULL, 470, TRUE),
  -- #471 Glaceon
  (1402, 471, NULL, 471, TRUE),
  -- #472 Gliscor
  (1402, 472, NULL, 472, TRUE),
  -- #473 Mamoswine
  (1402, 473, NULL, 473, TRUE),
  -- #474 Porygon-Z
  (1402, 474, NULL, 474, TRUE),
  -- #475 Gallade
  (1402, 475, NULL, 475, TRUE),
  -- #476 Probopass
  (1402, 476, NULL, 476, TRUE),
  -- #477 Dusknoir
  (1402, 477, NULL, 477, TRUE),
  -- #478 Froslass
  (1402, 478, NULL, 478, TRUE),
  -- #479 Rotom
  (1402, 479, NULL, 479, TRUE),
  -- #480 Uxie
  (1402, 480, NULL, 480, TRUE),
  -- #481 Mesprit
  (1402, 481, NULL, 481, TRUE),
  -- #482 Azelf
  (1402, 482, NULL, 482, TRUE),
  -- #483 Dialga
  (1402, 483, NULL, 483, TRUE),
  -- #484 Palkia
  (1402, 484, NULL, 484, TRUE),
  -- #485 Heatran
  (1402, 485, NULL, 485, TRUE),
  -- #486 Regigigas
  (1402, 486, NULL, 486, TRUE),
  -- #487 Giratina
  (1402, 487, NULL, 487, TRUE),
  -- #488 Cresselia
  (1402, 488, NULL, 488, TRUE),
  -- #489 Phione
  (1402, 489, NULL, 489, FALSE),
  -- #490 Manaphy
  (1402, 490, NULL, 490, FALSE),
  -- #491 Darkrai
  (1402, 491, NULL, 491, FALSE),
  -- #492 Shaymin
  (1402, 492, NULL, 492, FALSE),
  -- #493 Arceus
  (1402, 493, NULL, 493, FALSE),
  -- #494 Victini
  (1402, 494, NULL, 494, FALSE),
  -- #495 Snivy
  (1402, 495, NULL, 495, TRUE),
  -- #496 Servine
  (1402, 496, NULL, 496, TRUE),
  -- #497 Serperior
  (1402, 497, NULL, 497, TRUE),
  -- #498 Tepig
  (1402, 498, NULL, 498, TRUE),
  -- #499 Pignite
  (1402, 499, NULL, 499, TRUE),
  -- #500 Emboar
  (1402, 500, NULL, 500, TRUE),
  -- #501 Oshawott
  (1402, 501, NULL, 501, TRUE),
  -- #502 Dewott
  (1402, 502, NULL, 502, TRUE),
  -- #503 Samurott
  (1402, 503, NULL, 503, TRUE),
  -- #504 Patrat
  (1402, 504, NULL, 504, TRUE),
  -- #505 Watchog
  (1402, 505, NULL, 505, TRUE),
  -- #506 Lillipup
  (1402, 506, NULL, 506, TRUE),
  -- #507 Herdier
  (1402, 507, NULL, 507, TRUE),
  -- #508 Stoutland
  (1402, 508, NULL, 508, TRUE),
  -- #509 Purrloin
  (1402, 509, NULL, 509, TRUE),
  -- #510 Liepard
  (1402, 510, NULL, 510, TRUE),
  -- #511 Pansage
  (1402, 511, NULL, 511, TRUE),
  -- #512 Simisage
  (1402, 512, NULL, 512, TRUE),
  -- #513 Pansear
  (1402, 513, NULL, 513, TRUE),
  -- #514 Simisear
  (1402, 514, NULL, 514, TRUE),
  -- #515 Panpour
  (1402, 515, NULL, 515, TRUE),
  -- #516 Simipour
  (1402, 516, NULL, 516, TRUE),
  -- #517 Munna
  (1402, 517, NULL, 517, TRUE),
  -- #518 Musharna
  (1402, 518, NULL, 518, TRUE),
  -- #519 Pidove
  (1402, 519, NULL, 519, TRUE),
  -- #520 Tranquill
  (1402, 520, NULL, 520, TRUE),
  -- #521 Unfezant
  (1402, 521, NULL, 521, TRUE),
  -- #522 Blitzle
  (1402, 522, NULL, 522, TRUE),
  -- #523 Zebstrika
  (1402, 523, NULL, 523, TRUE),
  -- #524 Roggenrola
  (1402, 524, NULL, 524, TRUE),
  -- #525 Boldore
  (1402, 525, NULL, 525, TRUE),
  -- #526 Gigalith
  (1402, 526, NULL, 526, TRUE),
  -- #527 Woobat
  (1402, 527, NULL, 527, TRUE),
  -- #528 Swoobat
  (1402, 528, NULL, 528, TRUE),
  -- #529 Drilbur
  (1402, 529, NULL, 529, TRUE),
  -- #530 Excadrill
  (1402, 530, NULL, 530, TRUE),
  -- #531 Audino
  (1402, 531, NULL, 531, TRUE),
  -- #532 Timburr
  (1402, 532, NULL, 532, TRUE),
  -- #533 Gurdurr
  (1402, 533, NULL, 533, TRUE),
  -- #534 Conkeldurr
  (1402, 534, NULL, 534, TRUE),
  -- #535 Tympole
  (1402, 535, NULL, 535, TRUE),
  -- #536 Palpitoad
  (1402, 536, NULL, 536, TRUE),
  -- #537 Seismitoad
  (1402, 537, NULL, 537, TRUE),
  -- #538 Throh
  (1402, 538, NULL, 538, TRUE),
  -- #539 Sawk
  (1402, 539, NULL, 539, TRUE),
  -- #540 Sewaddle
  (1402, 540, NULL, 540, TRUE),
  -- #541 Swadloon
  (1402, 541, NULL, 541, TRUE),
  -- #542 Leavanny
  (1402, 542, NULL, 542, TRUE),
  -- #543 Venipede
  (1402, 543, NULL, 543, TRUE),
  -- #544 Whirlipede
  (1402, 544, NULL, 544, TRUE),
  -- #545 Scolipede
  (1402, 545, NULL, 545, TRUE),
  -- #546 Cottonee
  (1402, 546, NULL, 546, TRUE),
  -- #547 Whimsicott
  (1402, 547, NULL, 547, TRUE),
  -- #548 Petilil
  (1402, 548, NULL, 548, TRUE),
  -- #549 Lilligant
  (1402, 549, NULL, 549, TRUE),
  -- #550 Basculin
  (1402, 550, NULL, 550, TRUE),
  -- #551 Sandile
  (1402, 551, NULL, 551, TRUE),
  -- #552 Krokorok
  (1402, 552, NULL, 552, TRUE),
  -- #553 Krookodile
  (1402, 553, NULL, 553, TRUE),
  -- #554 Darumaka
  (1402, 554, NULL, 554, TRUE),
  -- #555 Darmanitan
  (1402, 555, NULL, 555, TRUE),
  -- #556 Maractus
  (1402, 556, NULL, 556, TRUE),
  -- #557 Dwebble
  (1402, 557, NULL, 557, TRUE),
  -- #558 Crustle
  (1402, 558, NULL, 558, TRUE),
  -- #559 Scraggy
  (1402, 559, NULL, 559, TRUE),
  -- #560 Scrafty
  (1402, 560, NULL, 560, TRUE),
  -- #561 Sigilyph
  (1402, 561, NULL, 561, TRUE),
  -- #562 Yamask
  (1402, 562, NULL, 562, TRUE),
  -- #563 Cofagrigus
  (1402, 563, NULL, 563, TRUE),
  -- #564 Tirtouga
  (1402, 564, NULL, 564, TRUE),
  -- #565 Carracosta
  (1402, 565, NULL, 565, TRUE),
  -- #566 Archen
  (1402, 566, NULL, 566, TRUE),
  -- #567 Archeops
  (1402, 567, NULL, 567, TRUE),
  -- #568 Trubbish
  (1402, 568, NULL, 568, TRUE),
  -- #569 Garbodor
  (1402, 569, NULL, 569, TRUE),
  -- #570 Zorua
  (1402, 570, NULL, 570, TRUE),
  -- #571 Zoroark
  (1402, 571, NULL, 571, TRUE),
  -- #572 Minccino
  (1402, 572, NULL, 572, TRUE),
  -- #573 Cinccino
  (1402, 573, NULL, 573, TRUE),
  -- #574 Gothita
  (1402, 574, NULL, 574, TRUE),
  -- #575 Gothorita
  (1402, 575, NULL, 575, TRUE),
  -- #576 Gothitelle
  (1402, 576, NULL, 576, TRUE),
  -- #577 Solosis
  (1402, 577, NULL, 577, TRUE),
  -- #578 Duosion
  (1402, 578, NULL, 578, TRUE),
  -- #579 Reuniclus
  (1402, 579, NULL, 579, TRUE),
  -- #580 Ducklett
  (1402, 580, NULL, 580, TRUE),
  -- #581 Swanna
  (1402, 581, NULL, 581, TRUE),
  -- #582 Vanillite
  (1402, 582, NULL, 582, TRUE),
  -- #583 Vanillish
  (1402, 583, NULL, 583, TRUE),
  -- #584 Vanilluxe
  (1402, 584, NULL, 584, TRUE),
  -- #585 Deerling
  (1402, 585, NULL, 585, TRUE),
  -- #586 Sawsbuck
  (1402, 586, NULL, 586, TRUE),
  -- #587 Emolga
  (1402, 587, NULL, 587, TRUE),
  -- #588 Karrablast
  (1402, 588, NULL, 588, TRUE),
  -- #589 Escavalier
  (1402, 589, NULL, 589, TRUE),
  -- #590 Foongus
  (1402, 590, NULL, 590, TRUE),
  -- #591 Amoonguss
  (1402, 591, NULL, 591, TRUE),
  -- #592 Frillish
  (1402, 592, NULL, 592, TRUE),
  -- #593 Jellicent
  (1402, 593, NULL, 593, TRUE),
  -- #594 Alomomola
  (1402, 594, NULL, 594, TRUE),
  -- #595 Joltik
  (1402, 595, NULL, 595, TRUE),
  -- #596 Galvantula
  (1402, 596, NULL, 596, TRUE),
  -- #597 Ferroseed
  (1402, 597, NULL, 597, TRUE),
  -- #598 Ferrothorn
  (1402, 598, NULL, 598, TRUE),
  -- #599 Klink
  (1402, 599, NULL, 599, TRUE),
  -- #600 Klang
  (1402, 600, NULL, 600, TRUE),
  -- #601 Klinklang
  (1402, 601, NULL, 601, TRUE),
  -- #602 Tynamo
  (1402, 602, NULL, 602, TRUE),
  -- #603 Eelektrik
  (1402, 603, NULL, 603, TRUE),
  -- #604 Eelektross
  (1402, 604, NULL, 604, TRUE),
  -- #605 Elgyem
  (1402, 605, NULL, 605, TRUE),
  -- #606 Beheeyem
  (1402, 606, NULL, 606, TRUE),
  -- #607 Litwick
  (1402, 607, NULL, 607, TRUE),
  -- #608 Lampent
  (1402, 608, NULL, 608, TRUE),
  -- #609 Chandelure
  (1402, 609, NULL, 609, TRUE),
  -- #610 Axew
  (1402, 610, NULL, 610, TRUE),
  -- #611 Fraxure
  (1402, 611, NULL, 611, TRUE),
  -- #612 Haxorus
  (1402, 612, NULL, 612, TRUE),
  -- #613 Cubchoo
  (1402, 613, NULL, 613, TRUE),
  -- #614 Beartic
  (1402, 614, NULL, 614, TRUE),
  -- #615 Cryogonal
  (1402, 615, NULL, 615, TRUE),
  -- #616 Shelmet
  (1402, 616, NULL, 616, TRUE),
  -- #617 Accelgor
  (1402, 617, NULL, 617, TRUE),
  -- #618 Stunfisk
  (1402, 618, NULL, 618, TRUE),
  -- #619 Mienfoo
  (1402, 619, NULL, 619, TRUE),
  -- #620 Mienshao
  (1402, 620, NULL, 620, TRUE),
  -- #621 Druddigon
  (1402, 621, NULL, 621, TRUE),
  -- #622 Golett
  (1402, 622, NULL, 622, TRUE),
  -- #623 Golurk
  (1402, 623, NULL, 623, TRUE),
  -- #624 Pawniard
  (1402, 624, NULL, 624, TRUE),
  -- #625 Bisharp
  (1402, 625, NULL, 625, TRUE),
  -- #626 Bouffalant
  (1402, 626, NULL, 626, TRUE),
  -- #627 Rufflet
  (1402, 627, NULL, 627, TRUE),
  -- #628 Braviary
  (1402, 628, NULL, 628, TRUE),
  -- #629 Vullaby
  (1402, 629, NULL, 629, TRUE),
  -- #630 Mandibuzz
  (1402, 630, NULL, 630, TRUE),
  -- #631 Heatmor
  (1402, 631, NULL, 631, TRUE),
  -- #632 Durant
  (1402, 632, NULL, 632, TRUE),
  -- #633 Deino
  (1402, 633, NULL, 633, TRUE),
  -- #634 Zweilous
  (1402, 634, NULL, 634, TRUE),
  -- #635 Hydreigon
  (1402, 635, NULL, 635, TRUE),
  -- #636 Larvesta
  (1402, 636, NULL, 636, TRUE),
  -- #637 Volcarona
  (1402, 637, NULL, 637, TRUE),
  -- #638 Cobalion
  (1402, 638, NULL, 638, TRUE),
  -- #639 Terrakion
  (1402, 639, NULL, 639, TRUE),
  -- #640 Virizion
  (1402, 640, NULL, 640, TRUE),
  -- #641 Tornadus
  (1402, 641, NULL, 641, TRUE),
  -- #642 Thundurus
  (1402, 642, NULL, 642, TRUE),
  -- #643 Reshiram
  (1402, 643, NULL, 643, TRUE),
  -- #644 Zekrom
  (1402, 644, NULL, 644, TRUE),
  -- #645 Landorus
  (1402, 645, NULL, 645, TRUE),
  -- #646 Kyurem
  (1402, 646, NULL, 646, TRUE),
  -- #647 Keldeo
  (1402, 647, NULL, 647, FALSE),
  -- #648 Meloetta
  (1402, 648, NULL, 648, FALSE),
  -- #649 Genesect
  (1402, 649, NULL, 649, FALSE),
  -- #650 Chespin
  (1402, 650, NULL, 650, TRUE),
  -- #651 Quilladin
  (1402, 651, NULL, 651, TRUE),
  -- #652 Chesnaught
  (1402, 652, NULL, 652, TRUE),
  -- #653 Fennekin
  (1402, 653, NULL, 653, TRUE),
  -- #654 Braixen
  (1402, 654, NULL, 654, TRUE),
  -- #655 Delphox
  (1402, 655, NULL, 655, TRUE),
  -- #656 Froakie
  (1402, 656, NULL, 656, TRUE),
  -- #657 Frogadier
  (1402, 657, NULL, 657, TRUE),
  -- #658 Greninja
  (1402, 658, NULL, 658, TRUE),
  -- #659 Bunnelby
  (1402, 659, NULL, 659, TRUE),
  -- #660 Diggersby
  (1402, 660, NULL, 660, TRUE),
  -- #661 Fletchling
  (1402, 661, NULL, 661, TRUE),
  -- #662 Fletchinder
  (1402, 662, NULL, 662, TRUE),
  -- #663 Talonflame
  (1402, 663, NULL, 663, TRUE),
  -- #664 Scatterbug
  (1402, 664, NULL, 664, TRUE),
  -- #665 Spewpa
  (1402, 665, NULL, 665, TRUE),
  -- #666 Vivillon
  (1402, 666, NULL, 666, TRUE),
  -- #667 Litleo
  (1402, 667, NULL, 667, TRUE),
  -- #668 Pyroar
  (1402, 668, NULL, 668, TRUE),
  -- #669 Flabebe
  (1402, 669, NULL, 669, TRUE),
  -- #670 Floette
  (1402, 670, NULL, 670, TRUE),
  -- #671 Florges
  (1402, 671, NULL, 671, TRUE),
  -- #672 Skiddo
  (1402, 672, NULL, 672, TRUE),
  -- #673 Gogoat
  (1402, 673, NULL, 673, TRUE),
  -- #674 Pancham
  (1402, 674, NULL, 674, TRUE),
  -- #675 Pangoro
  (1402, 675, NULL, 675, TRUE),
  -- #676 Furfrou
  (1402, 676, NULL, 676, TRUE),
  -- #677 Espurr
  (1402, 677, NULL, 677, TRUE),
  -- #678 Meowstic
  (1402, 678, NULL, 678, TRUE),
  -- #679 Honedge
  (1402, 679, NULL, 679, TRUE),
  -- #680 Doublade
  (1402, 680, NULL, 680, TRUE),
  -- #681 Aegislash
  (1402, 681, NULL, 681, TRUE),
  -- #682 Spritzee
  (1402, 682, NULL, 682, TRUE),
  -- #683 Aromatisse
  (1402, 683, NULL, 683, TRUE),
  -- #684 Swirlix
  (1402, 684, NULL, 684, TRUE),
  -- #685 Slurpuff
  (1402, 685, NULL, 685, TRUE),
  -- #686 Inkay
  (1402, 686, NULL, 686, TRUE),
  -- #687 Malamar
  (1402, 687, NULL, 687, TRUE),
  -- #688 Binacle
  (1402, 688, NULL, 688, TRUE),
  -- #689 Barbaracle
  (1402, 689, NULL, 689, TRUE),
  -- #690 Skrelp
  (1402, 690, NULL, 690, TRUE),
  -- #691 Dragalge
  (1402, 691, NULL, 691, TRUE),
  -- #692 Clauncher
  (1402, 692, NULL, 692, TRUE),
  -- #693 Clawitzer
  (1402, 693, NULL, 693, TRUE),
  -- #694 Helioptile
  (1402, 694, NULL, 694, TRUE),
  -- #695 Heliolisk
  (1402, 695, NULL, 695, TRUE),
  -- #696 Tyrunt
  (1402, 696, NULL, 696, TRUE),
  -- #697 Tyrantrum
  (1402, 697, NULL, 697, TRUE),
  -- #698 Amaura
  (1402, 698, NULL, 698, TRUE),
  -- #699 Aurorus
  (1402, 699, NULL, 699, TRUE),
  -- #700 Sylveon
  (1402, 700, NULL, 700, TRUE),
  -- #701 Hawlucha
  (1402, 701, NULL, 701, TRUE),
  -- #702 Dedenne
  (1402, 702, NULL, 702, TRUE),
  -- #703 Carbink
  (1402, 703, NULL, 703, TRUE),
  -- #704 Goomy
  (1402, 704, NULL, 704, TRUE),
  -- #705 Sliggoo
  (1402, 705, NULL, 705, TRUE),
  -- #706 Goodra
  (1402, 706, NULL, 706, TRUE),
  -- #707 Klefki
  (1402, 707, NULL, 707, TRUE),
  -- #708 Phantump
  (1402, 708, NULL, 708, TRUE),
  -- #709 Trevenant
  (1402, 709, NULL, 709, TRUE),
  -- #710 Pumpkaboo
  (1402, 710, NULL, 710, TRUE),
  -- #711 Gourgeist
  (1402, 711, NULL, 711, TRUE),
  -- #712 Bergmite
  (1402, 712, NULL, 712, TRUE),
  -- #713 Avalugg
  (1402, 713, NULL, 713, TRUE),
  -- #714 Noibat
  (1402, 714, NULL, 714, TRUE),
  -- #715 Noivern
  (1402, 715, NULL, 715, TRUE),
  -- #716 Xerneas
  (1402, 716, NULL, 716, TRUE),
  -- #717 Yveltal
  (1402, 717, NULL, 717, TRUE),
  -- #718 Zygarde
  (1402, 718, NULL, 718, TRUE),
  -- #719 Diancie
  (1402, 719, NULL, 719, FALSE),
  -- #720 Hoopa
  (1402, 720, NULL, 720, FALSE),
  -- #721 Volcanion
  (1402, 721, NULL, 721, FALSE);
