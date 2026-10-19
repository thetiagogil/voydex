-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by New Pokedex number.
-- Cross-check: legacy Voydex Pokedex entry seed, ported to clean Pokedex IDs and species-level display.
-- ============================================================================
-- File Scope
-- ============================================================================
-- New Pokedex entries for Crystal.
-- Crystal uses the same 251-entry New Pokedex ordering as Gold / Silver.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Chikorita
  (401, 152, NULL, 1, TRUE),
  -- #002 Bayleef
  (401, 153, NULL, 2, TRUE),
  -- #003 Meganium
  (401, 154, NULL, 3, TRUE),
  -- #004 Cyndaquil
  (401, 155, NULL, 4, TRUE),
  -- #005 Quilava
  (401, 156, NULL, 5, TRUE),
  -- #006 Typhlosion
  (401, 157, NULL, 6, TRUE),
  -- #007 Totodile
  (401, 158, NULL, 7, TRUE),
  -- #008 Croconaw
  (401, 159, NULL, 8, TRUE),
  -- #009 Feraligatr
  (401, 160, NULL, 9, TRUE),
  -- #010 Pidgey
  (401, 16, NULL, 10, TRUE),
  -- #011 Pidgeotto
  (401, 17, NULL, 11, TRUE),
  -- #012 Pidgeot
  (401, 18, NULL, 12, TRUE),
  -- #013 Spearow
  (401, 21, NULL, 13, TRUE),
  -- #014 Fearow
  (401, 22, NULL, 14, TRUE),
  -- #015 Hoothoot
  (401, 163, NULL, 15, TRUE),
  -- #016 Noctowl
  (401, 164, NULL, 16, TRUE),
  -- #017 Rattata
  (401, 19, NULL, 17, TRUE),
  -- #018 Raticate
  (401, 20, NULL, 18, TRUE),
  -- #019 Sentret
  (401, 161, NULL, 19, TRUE),
  -- #020 Furret
  (401, 162, NULL, 20, TRUE),
  -- #021 Pichu
  (401, 172, NULL, 21, TRUE),
  -- #022 Pikachu
  (401, 25, NULL, 22, TRUE),
  -- #023 Raichu
  (401, 26, NULL, 23, TRUE),
  -- #024 Caterpie
  (401, 10, NULL, 24, TRUE),
  -- #025 Metapod
  (401, 11, NULL, 25, TRUE),
  -- #026 Butterfree
  (401, 12, NULL, 26, TRUE),
  -- #027 Weedle
  (401, 13, NULL, 27, TRUE),
  -- #028 Kakuna
  (401, 14, NULL, 28, TRUE),
  -- #029 Beedrill
  (401, 15, NULL, 29, TRUE),
  -- #030 Ledyba
  (401, 165, NULL, 30, TRUE),
  -- #031 Ledian
  (401, 166, NULL, 31, TRUE),
  -- #032 Spinarak
  (401, 167, NULL, 32, TRUE),
  -- #033 Ariados
  (401, 168, NULL, 33, TRUE),
  -- #034 Geodude
  (401, 74, NULL, 34, TRUE),
  -- #035 Graveler
  (401, 75, NULL, 35, TRUE),
  -- #036 Golem
  (401, 76, NULL, 36, TRUE),
  -- #037 Zubat
  (401, 41, NULL, 37, TRUE),
  -- #038 Golbat
  (401, 42, NULL, 38, TRUE),
  -- #039 Crobat
  (401, 169, NULL, 39, TRUE),
  -- #040 Cleffa
  (401, 173, NULL, 40, TRUE),
  -- #041 Clefairy
  (401, 35, NULL, 41, TRUE),
  -- #042 Clefable
  (401, 36, NULL, 42, TRUE),
  -- #043 Igglybuff
  (401, 174, NULL, 43, TRUE),
  -- #044 Jigglypuff
  (401, 39, NULL, 44, TRUE),
  -- #045 Wigglytuff
  (401, 40, NULL, 45, TRUE),
  -- #046 Togepi
  (401, 175, NULL, 46, TRUE),
  -- #047 Togetic
  (401, 176, NULL, 47, TRUE),
  -- #048 Sandshrew
  (401, 27, NULL, 48, TRUE),
  -- #049 Sandslash
  (401, 28, NULL, 49, TRUE),
  -- #050 Ekans
  (401, 23, NULL, 50, TRUE),
  -- #051 Arbok
  (401, 24, NULL, 51, TRUE),
  -- #052 Dunsparce
  (401, 206, NULL, 52, TRUE),
  -- #053 Mareep
  (401, 179, NULL, 53, TRUE),
  -- #054 Flaaffy
  (401, 180, NULL, 54, TRUE),
  -- #055 Ampharos
  (401, 181, NULL, 55, TRUE),
  -- #056 Wooper
  (401, 194, NULL, 56, TRUE),
  -- #057 Quagsire
  (401, 195, NULL, 57, TRUE),
  -- #058 Gastly
  (401, 92, NULL, 58, TRUE),
  -- #059 Haunter
  (401, 93, NULL, 59, TRUE),
  -- #060 Gengar
  (401, 94, NULL, 60, TRUE),
  -- #061 Unown
  (401, 201, NULL, 61, TRUE),
  -- #062 Onix
  (401, 95, NULL, 62, TRUE),
  -- #063 Steelix
  (401, 208, NULL, 63, TRUE),
  -- #064 Bellsprout
  (401, 69, NULL, 64, TRUE),
  -- #065 Weepinbell
  (401, 70, NULL, 65, TRUE),
  -- #066 Victreebel
  (401, 71, NULL, 66, TRUE),
  -- #067 Hoppip
  (401, 187, NULL, 67, TRUE),
  -- #068 Skiploom
  (401, 188, NULL, 68, TRUE),
  -- #069 Jumpluff
  (401, 189, NULL, 69, TRUE),
  -- #070 Paras
  (401, 46, NULL, 70, TRUE),
  -- #071 Parasect
  (401, 47, NULL, 71, TRUE),
  -- #072 Poliwag
  (401, 60, NULL, 72, TRUE),
  -- #073 Poliwhirl
  (401, 61, NULL, 73, TRUE),
  -- #074 Poliwrath
  (401, 62, NULL, 74, TRUE),
  -- #075 Politoed
  (401, 186, NULL, 75, TRUE),
  -- #076 Magikarp
  (401, 129, NULL, 76, TRUE),
  -- #077 Gyarados
  (401, 130, NULL, 77, TRUE),
  -- #078 Goldeen
  (401, 118, NULL, 78, TRUE),
  -- #079 Seaking
  (401, 119, NULL, 79, TRUE),
  -- #080 Slowpoke
  (401, 79, NULL, 80, TRUE),
  -- #081 Slowbro
  (401, 80, NULL, 81, TRUE),
  -- #082 Slowking
  (401, 199, NULL, 82, TRUE),
  -- #083 Oddish
  (401, 43, NULL, 83, TRUE),
  -- #084 Gloom
  (401, 44, NULL, 84, TRUE),
  -- #085 Vileplume
  (401, 45, NULL, 85, TRUE),
  -- #086 Bellossom
  (401, 182, NULL, 86, TRUE),
  -- #087 Drowzee
  (401, 96, NULL, 87, TRUE),
  -- #088 Hypno
  (401, 97, NULL, 88, TRUE),
  -- #089 Abra
  (401, 63, NULL, 89, TRUE),
  -- #090 Kadabra
  (401, 64, NULL, 90, TRUE),
  -- #091 Alakazam
  (401, 65, NULL, 91, TRUE),
  -- #092 Ditto
  (401, 132, NULL, 92, TRUE),
  -- #093 Pineco
  (401, 204, NULL, 93, TRUE),
  -- #094 Forretress
  (401, 205, NULL, 94, TRUE),
  -- #095 Nidoran F
  (401, 29, NULL, 95, TRUE),
  -- #096 Nidorina
  (401, 30, NULL, 96, TRUE),
  -- #097 Nidoqueen
  (401, 31, NULL, 97, TRUE),
  -- #098 Nidoran M
  (401, 32, NULL, 98, TRUE),
  -- #099 Nidorino
  (401, 33, NULL, 99, TRUE),
  -- #100 Nidoking
  (401, 34, NULL, 100, TRUE),
  -- #101 Yanma
  (401, 193, NULL, 101, TRUE),
  -- #102 Sunkern
  (401, 191, NULL, 102, TRUE),
  -- #103 Sunflora
  (401, 192, NULL, 103, TRUE),
  -- #104 Exeggcute
  (401, 102, NULL, 104, TRUE),
  -- #105 Exeggutor
  (401, 103, NULL, 105, TRUE),
  -- #106 Sudowoodo
  (401, 185, NULL, 106, TRUE),
  -- #107 Wobbuffet
  (401, 202, NULL, 107, TRUE),
  -- #108 Venonat
  (401, 48, NULL, 108, TRUE),
  -- #109 Venomoth
  (401, 49, NULL, 109, TRUE),
  -- #110 Scyther
  (401, 123, NULL, 110, TRUE),
  -- #111 Scizor
  (401, 212, NULL, 111, TRUE),
  -- #112 Pinsir
  (401, 127, NULL, 112, TRUE),
  -- #113 Heracross
  (401, 214, NULL, 113, TRUE),
  -- #114 Koffing
  (401, 109, NULL, 114, TRUE),
  -- #115 Weezing
  (401, 110, NULL, 115, TRUE),
  -- #116 Grimer
  (401, 88, NULL, 116, TRUE),
  -- #117 Muk
  (401, 89, NULL, 117, TRUE),
  -- #118 Magnemite
  (401, 81, NULL, 118, TRUE),
  -- #119 Magneton
  (401, 82, NULL, 119, TRUE),
  -- #120 Voltorb
  (401, 100, NULL, 120, TRUE),
  -- #121 Electrode
  (401, 101, NULL, 121, TRUE),
  -- #122 Aipom
  (401, 190, NULL, 122, TRUE),
  -- #123 Snubbull
  (401, 209, NULL, 123, TRUE),
  -- #124 Granbull
  (401, 210, NULL, 124, TRUE),
  -- #125 Vulpix
  (401, 37, NULL, 125, TRUE),
  -- #126 Ninetales
  (401, 38, NULL, 126, TRUE),
  -- #127 Growlithe
  (401, 58, NULL, 127, TRUE),
  -- #128 Arcanine
  (401, 59, NULL, 128, TRUE),
  -- #129 Stantler
  (401, 234, NULL, 129, TRUE),
  -- #130 Marill
  (401, 183, NULL, 130, TRUE),
  -- #131 Azumarill
  (401, 184, NULL, 131, TRUE),
  -- #132 Diglett
  (401, 50, NULL, 132, TRUE),
  -- #133 Dugtrio
  (401, 51, NULL, 133, TRUE),
  -- #134 Mankey
  (401, 56, NULL, 134, TRUE),
  -- #135 Primeape
  (401, 57, NULL, 135, TRUE),
  -- #136 Meowth
  (401, 52, NULL, 136, TRUE),
  -- #137 Persian
  (401, 53, NULL, 137, TRUE),
  -- #138 Psyduck
  (401, 54, NULL, 138, TRUE),
  -- #139 Golduck
  (401, 55, NULL, 139, TRUE),
  -- #140 Machop
  (401, 66, NULL, 140, TRUE),
  -- #141 Machoke
  (401, 67, NULL, 141, TRUE),
  -- #142 Machamp
  (401, 68, NULL, 142, TRUE),
  -- #143 Tyrogue
  (401, 236, NULL, 143, TRUE),
  -- #144 Hitmonlee
  (401, 106, NULL, 144, TRUE),
  -- #145 Hitmonchan
  (401, 107, NULL, 145, TRUE),
  -- #146 Hitmontop
  (401, 237, NULL, 146, TRUE),
  -- #147 Girafarig
  (401, 203, NULL, 147, TRUE),
  -- #148 Tauros
  (401, 128, NULL, 148, TRUE),
  -- #149 Miltank
  (401, 241, NULL, 149, TRUE),
  -- #150 Magby
  (401, 240, NULL, 150, TRUE),
  -- #151 Magmar
  (401, 126, NULL, 151, TRUE),
  -- #152 Smoochum
  (401, 238, NULL, 152, TRUE),
  -- #153 Jynx
  (401, 124, NULL, 153, TRUE),
  -- #154 Elekid
  (401, 239, NULL, 154, TRUE),
  -- #155 Electabuzz
  (401, 125, NULL, 155, TRUE),
  -- #156 Mr. Mime
  (401, 122, NULL, 156, TRUE),
  -- #157 Smeargle
  (401, 235, NULL, 157, TRUE),
  -- #158 Farfetch'd
  (401, 83, NULL, 158, TRUE),
  -- #159 Natu
  (401, 177, NULL, 159, TRUE),
  -- #160 Xatu
  (401, 178, NULL, 160, TRUE),
  -- #161 Qwilfish
  (401, 211, NULL, 161, TRUE),
  -- #162 Tentacool
  (401, 72, NULL, 162, TRUE),
  -- #163 Tentacruel
  (401, 73, NULL, 163, TRUE),
  -- #164 Krabby
  (401, 98, NULL, 164, TRUE),
  -- #165 Kingler
  (401, 99, NULL, 165, TRUE),
  -- #166 Shuckle
  (401, 213, NULL, 166, TRUE),
  -- #167 Staryu
  (401, 120, NULL, 167, TRUE),
  -- #168 Starmie
  (401, 121, NULL, 168, TRUE),
  -- #169 Shellder
  (401, 90, NULL, 169, TRUE),
  -- #170 Cloyster
  (401, 91, NULL, 170, TRUE),
  -- #171 Corsola
  (401, 222, NULL, 171, TRUE),
  -- #172 Remoraid
  (401, 223, NULL, 172, TRUE),
  -- #173 Octillery
  (401, 224, NULL, 173, TRUE),
  -- #174 Chinchou
  (401, 170, NULL, 174, TRUE),
  -- #175 Lanturn
  (401, 171, NULL, 175, TRUE),
  -- #176 Seel
  (401, 86, NULL, 176, TRUE),
  -- #177 Dewgong
  (401, 87, NULL, 177, TRUE),
  -- #178 Lickitung
  (401, 108, NULL, 178, TRUE),
  -- #179 Tangela
  (401, 114, NULL, 179, TRUE),
  -- #180 Eevee
  (401, 133, NULL, 180, TRUE),
  -- #181 Vaporeon
  (401, 134, NULL, 181, TRUE),
  -- #182 Jolteon
  (401, 135, NULL, 182, TRUE),
  -- #183 Flareon
  (401, 136, NULL, 183, TRUE),
  -- #184 Espeon
  (401, 196, NULL, 184, TRUE),
  -- #185 Umbreon
  (401, 197, NULL, 185, TRUE),
  -- #186 Horsea
  (401, 116, NULL, 186, TRUE),
  -- #187 Seadra
  (401, 117, NULL, 187, TRUE),
  -- #188 Kingdra
  (401, 230, NULL, 188, TRUE),
  -- #189 Gligar
  (401, 207, NULL, 189, TRUE),
  -- #190 Delibird
  (401, 225, NULL, 190, TRUE),
  -- #191 Swinub
  (401, 220, NULL, 191, TRUE),
  -- #192 Piloswine
  (401, 221, NULL, 192, TRUE),
  -- #193 Teddiursa
  (401, 216, NULL, 193, TRUE),
  -- #194 Ursaring
  (401, 217, NULL, 194, TRUE),
  -- #195 Phanpy
  (401, 231, NULL, 195, TRUE),
  -- #196 Donphan
  (401, 232, NULL, 196, TRUE),
  -- #197 Mantine
  (401, 226, NULL, 197, TRUE),
  -- #198 Skarmory
  (401, 227, NULL, 198, TRUE),
  -- #199 Doduo
  (401, 84, NULL, 199, TRUE),
  -- #200 Dodrio
  (401, 85, NULL, 200, TRUE),
  -- #201 Ponyta
  (401, 77, NULL, 201, TRUE),
  -- #202 Rapidash
  (401, 78, NULL, 202, TRUE),
  -- #203 Cubone
  (401, 104, NULL, 203, TRUE),
  -- #204 Marowak
  (401, 105, NULL, 204, TRUE),
  -- #205 Kangaskhan
  (401, 115, NULL, 205, TRUE),
  -- #206 Rhyhorn
  (401, 111, NULL, 206, TRUE),
  -- #207 Rhydon
  (401, 112, NULL, 207, TRUE),
  -- #208 Murkrow
  (401, 198, NULL, 208, TRUE),
  -- #209 Houndour
  (401, 228, NULL, 209, TRUE),
  -- #210 Houndoom
  (401, 229, NULL, 210, TRUE),
  -- #211 Slugma
  (401, 218, NULL, 211, TRUE),
  -- #212 Magcargo
  (401, 219, NULL, 212, TRUE),
  -- #213 Sneasel
  (401, 215, NULL, 213, TRUE),
  -- #214 Misdreavus
  (401, 200, NULL, 214, TRUE),
  -- #215 Porygon
  (401, 137, NULL, 215, TRUE),
  -- #216 Porygon2
  (401, 233, NULL, 216, TRUE),
  -- #217 Chansey
  (401, 113, NULL, 217, TRUE),
  -- #218 Blissey
  (401, 242, NULL, 218, TRUE),
  -- #219 Lapras
  (401, 131, NULL, 219, TRUE),
  -- #220 Omanyte
  (401, 138, NULL, 220, TRUE),
  -- #221 Omastar
  (401, 139, NULL, 221, TRUE),
  -- #222 Kabuto
  (401, 140, NULL, 222, TRUE),
  -- #223 Kabutops
  (401, 141, NULL, 223, TRUE),
  -- #224 Aerodactyl
  (401, 142, NULL, 224, TRUE),
  -- #225 Snorlax
  (401, 143, NULL, 225, TRUE),
  -- #226 Bulbasaur
  (401, 1, NULL, 226, TRUE),
  -- #227 Ivysaur
  (401, 2, NULL, 227, TRUE),
  -- #228 Venusaur
  (401, 3, NULL, 228, TRUE),
  -- #229 Charmander
  (401, 4, NULL, 229, TRUE),
  -- #230 Charmeleon
  (401, 5, NULL, 230, TRUE),
  -- #231 Charizard
  (401, 6, NULL, 231, TRUE),
  -- #232 Squirtle
  (401, 7, NULL, 232, TRUE),
  -- #233 Wartortle
  (401, 8, NULL, 233, TRUE),
  -- #234 Blastoise
  (401, 9, NULL, 234, TRUE),
  -- #235 Articuno
  (401, 144, NULL, 235, TRUE),
  -- #236 Zapdos
  (401, 145, NULL, 236, TRUE),
  -- #237 Moltres
  (401, 146, NULL, 237, TRUE),
  -- #238 Raikou
  (401, 243, NULL, 238, TRUE),
  -- #239 Entei
  (401, 244, NULL, 239, TRUE),
  -- #240 Suicune
  (401, 245, NULL, 240, TRUE),
  -- #241 Dratini
  (401, 147, NULL, 241, TRUE),
  -- #242 Dragonair
  (401, 148, NULL, 242, TRUE),
  -- #243 Dragonite
  (401, 149, NULL, 243, TRUE),
  -- #244 Larvitar
  (401, 246, NULL, 244, TRUE),
  -- #245 Pupitar
  (401, 247, NULL, 245, TRUE),
  -- #246 Tyranitar
  (401, 248, NULL, 246, TRUE),
  -- #247 Lugia
  (401, 249, NULL, 247, TRUE),
  -- #248 Ho-Oh
  (401, 250, NULL, 248, TRUE),
  -- #249 Mewtwo
  (401, 150, NULL, 249, TRUE),
  -- #250 Mew
  (401, 151, NULL, 250, FALSE),
  -- #251 Celebi
  (401, 251, NULL, 251, FALSE);
