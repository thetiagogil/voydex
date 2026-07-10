-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by New Pokedex number.
-- Cross-check: legacy Voydex Pokedex entry seed, ported to clean Pokedex IDs and species-level display.
-- ============================================================================
-- File Scope
-- ============================================================================
-- New Pokedex entries for Gold / Silver.
-- Gold / Silver use the 251-entry New Pokedex.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Chikorita
  (301, 152, NULL, 1, TRUE),
  -- #002 Bayleef
  (301, 153, NULL, 2, TRUE),
  -- #003 Meganium
  (301, 154, NULL, 3, TRUE),
  -- #004 Cyndaquil
  (301, 155, NULL, 4, TRUE),
  -- #005 Quilava
  (301, 156, NULL, 5, TRUE),
  -- #006 Typhlosion
  (301, 157, NULL, 6, TRUE),
  -- #007 Totodile
  (301, 158, NULL, 7, TRUE),
  -- #008 Croconaw
  (301, 159, NULL, 8, TRUE),
  -- #009 Feraligatr
  (301, 160, NULL, 9, TRUE),
  -- #010 Pidgey
  (301, 16, NULL, 10, TRUE),
  -- #011 Pidgeotto
  (301, 17, NULL, 11, TRUE),
  -- #012 Pidgeot
  (301, 18, NULL, 12, TRUE),
  -- #013 Spearow
  (301, 21, NULL, 13, TRUE),
  -- #014 Fearow
  (301, 22, NULL, 14, TRUE),
  -- #015 Hoothoot
  (301, 163, NULL, 15, TRUE),
  -- #016 Noctowl
  (301, 164, NULL, 16, TRUE),
  -- #017 Rattata
  (301, 19, NULL, 17, TRUE),
  -- #018 Raticate
  (301, 20, NULL, 18, TRUE),
  -- #019 Sentret
  (301, 161, NULL, 19, TRUE),
  -- #020 Furret
  (301, 162, NULL, 20, TRUE),
  -- #021 Pichu
  (301, 172, NULL, 21, TRUE),
  -- #022 Pikachu
  (301, 25, NULL, 22, TRUE),
  -- #023 Raichu
  (301, 26, NULL, 23, TRUE),
  -- #024 Caterpie
  (301, 10, NULL, 24, TRUE),
  -- #025 Metapod
  (301, 11, NULL, 25, TRUE),
  -- #026 Butterfree
  (301, 12, NULL, 26, TRUE),
  -- #027 Weedle
  (301, 13, NULL, 27, TRUE),
  -- #028 Kakuna
  (301, 14, NULL, 28, TRUE),
  -- #029 Beedrill
  (301, 15, NULL, 29, TRUE),
  -- #030 Ledyba
  (301, 165, NULL, 30, TRUE),
  -- #031 Ledian
  (301, 166, NULL, 31, TRUE),
  -- #032 Spinarak
  (301, 167, NULL, 32, TRUE),
  -- #033 Ariados
  (301, 168, NULL, 33, TRUE),
  -- #034 Geodude
  (301, 74, NULL, 34, TRUE),
  -- #035 Graveler
  (301, 75, NULL, 35, TRUE),
  -- #036 Golem
  (301, 76, NULL, 36, TRUE),
  -- #037 Zubat
  (301, 41, NULL, 37, TRUE),
  -- #038 Golbat
  (301, 42, NULL, 38, TRUE),
  -- #039 Crobat
  (301, 169, NULL, 39, TRUE),
  -- #040 Cleffa
  (301, 173, NULL, 40, TRUE),
  -- #041 Clefairy
  (301, 35, NULL, 41, TRUE),
  -- #042 Clefable
  (301, 36, NULL, 42, TRUE),
  -- #043 Igglybuff
  (301, 174, NULL, 43, TRUE),
  -- #044 Jigglypuff
  (301, 39, NULL, 44, TRUE),
  -- #045 Wigglytuff
  (301, 40, NULL, 45, TRUE),
  -- #046 Togepi
  (301, 175, NULL, 46, TRUE),
  -- #047 Togetic
  (301, 176, NULL, 47, TRUE),
  -- #048 Sandshrew
  (301, 27, NULL, 48, TRUE),
  -- #049 Sandslash
  (301, 28, NULL, 49, TRUE),
  -- #050 Ekans
  (301, 23, NULL, 50, TRUE),
  -- #051 Arbok
  (301, 24, NULL, 51, TRUE),
  -- #052 Dunsparce
  (301, 206, NULL, 52, TRUE),
  -- #053 Mareep
  (301, 179, NULL, 53, TRUE),
  -- #054 Flaaffy
  (301, 180, NULL, 54, TRUE),
  -- #055 Ampharos
  (301, 181, NULL, 55, TRUE),
  -- #056 Wooper
  (301, 194, NULL, 56, TRUE),
  -- #057 Quagsire
  (301, 195, NULL, 57, TRUE),
  -- #058 Gastly
  (301, 92, NULL, 58, TRUE),
  -- #059 Haunter
  (301, 93, NULL, 59, TRUE),
  -- #060 Gengar
  (301, 94, NULL, 60, TRUE),
  -- #061 Unown
  (301, 201, NULL, 61, TRUE),
  -- #062 Onix
  (301, 95, NULL, 62, TRUE),
  -- #063 Steelix
  (301, 208, NULL, 63, TRUE),
  -- #064 Bellsprout
  (301, 69, NULL, 64, TRUE),
  -- #065 Weepinbell
  (301, 70, NULL, 65, TRUE),
  -- #066 Victreebel
  (301, 71, NULL, 66, TRUE),
  -- #067 Hoppip
  (301, 187, NULL, 67, TRUE),
  -- #068 Skiploom
  (301, 188, NULL, 68, TRUE),
  -- #069 Jumpluff
  (301, 189, NULL, 69, TRUE),
  -- #070 Paras
  (301, 46, NULL, 70, TRUE),
  -- #071 Parasect
  (301, 47, NULL, 71, TRUE),
  -- #072 Poliwag
  (301, 60, NULL, 72, TRUE),
  -- #073 Poliwhirl
  (301, 61, NULL, 73, TRUE),
  -- #074 Poliwrath
  (301, 62, NULL, 74, TRUE),
  -- #075 Politoed
  (301, 186, NULL, 75, TRUE),
  -- #076 Magikarp
  (301, 129, NULL, 76, TRUE),
  -- #077 Gyarados
  (301, 130, NULL, 77, TRUE),
  -- #078 Goldeen
  (301, 118, NULL, 78, TRUE),
  -- #079 Seaking
  (301, 119, NULL, 79, TRUE),
  -- #080 Slowpoke
  (301, 79, NULL, 80, TRUE),
  -- #081 Slowbro
  (301, 80, NULL, 81, TRUE),
  -- #082 Slowking
  (301, 199, NULL, 82, TRUE),
  -- #083 Oddish
  (301, 43, NULL, 83, TRUE),
  -- #084 Gloom
  (301, 44, NULL, 84, TRUE),
  -- #085 Vileplume
  (301, 45, NULL, 85, TRUE),
  -- #086 Bellossom
  (301, 182, NULL, 86, TRUE),
  -- #087 Drowzee
  (301, 96, NULL, 87, TRUE),
  -- #088 Hypno
  (301, 97, NULL, 88, TRUE),
  -- #089 Abra
  (301, 63, NULL, 89, TRUE),
  -- #090 Kadabra
  (301, 64, NULL, 90, TRUE),
  -- #091 Alakazam
  (301, 65, NULL, 91, TRUE),
  -- #092 Ditto
  (301, 132, NULL, 92, TRUE),
  -- #093 Pineco
  (301, 204, NULL, 93, TRUE),
  -- #094 Forretress
  (301, 205, NULL, 94, TRUE),
  -- #095 Nidoran F
  (301, 29, NULL, 95, TRUE),
  -- #096 Nidorina
  (301, 30, NULL, 96, TRUE),
  -- #097 Nidoqueen
  (301, 31, NULL, 97, TRUE),
  -- #098 Nidoran M
  (301, 32, NULL, 98, TRUE),
  -- #099 Nidorino
  (301, 33, NULL, 99, TRUE),
  -- #100 Nidoking
  (301, 34, NULL, 100, TRUE),
  -- #101 Yanma
  (301, 193, NULL, 101, TRUE),
  -- #102 Sunkern
  (301, 191, NULL, 102, TRUE),
  -- #103 Sunflora
  (301, 192, NULL, 103, TRUE),
  -- #104 Exeggcute
  (301, 102, NULL, 104, TRUE),
  -- #105 Exeggutor
  (301, 103, NULL, 105, TRUE),
  -- #106 Sudowoodo
  (301, 185, NULL, 106, TRUE),
  -- #107 Wobbuffet
  (301, 202, NULL, 107, TRUE),
  -- #108 Venonat
  (301, 48, NULL, 108, TRUE),
  -- #109 Venomoth
  (301, 49, NULL, 109, TRUE),
  -- #110 Scyther
  (301, 123, NULL, 110, TRUE),
  -- #111 Scizor
  (301, 212, NULL, 111, TRUE),
  -- #112 Pinsir
  (301, 127, NULL, 112, TRUE),
  -- #113 Heracross
  (301, 214, NULL, 113, TRUE),
  -- #114 Koffing
  (301, 109, NULL, 114, TRUE),
  -- #115 Weezing
  (301, 110, NULL, 115, TRUE),
  -- #116 Grimer
  (301, 88, NULL, 116, TRUE),
  -- #117 Muk
  (301, 89, NULL, 117, TRUE),
  -- #118 Magnemite
  (301, 81, NULL, 118, TRUE),
  -- #119 Magneton
  (301, 82, NULL, 119, TRUE),
  -- #120 Voltorb
  (301, 100, NULL, 120, TRUE),
  -- #121 Electrode
  (301, 101, NULL, 121, TRUE),
  -- #122 Aipom
  (301, 190, NULL, 122, TRUE),
  -- #123 Snubbull
  (301, 209, NULL, 123, TRUE),
  -- #124 Granbull
  (301, 210, NULL, 124, TRUE),
  -- #125 Vulpix
  (301, 37, NULL, 125, TRUE),
  -- #126 Ninetales
  (301, 38, NULL, 126, TRUE),
  -- #127 Growlithe
  (301, 58, NULL, 127, TRUE),
  -- #128 Arcanine
  (301, 59, NULL, 128, TRUE),
  -- #129 Stantler
  (301, 234, NULL, 129, TRUE),
  -- #130 Marill
  (301, 183, NULL, 130, TRUE),
  -- #131 Azumarill
  (301, 184, NULL, 131, TRUE),
  -- #132 Diglett
  (301, 50, NULL, 132, TRUE),
  -- #133 Dugtrio
  (301, 51, NULL, 133, TRUE),
  -- #134 Mankey
  (301, 56, NULL, 134, TRUE),
  -- #135 Primeape
  (301, 57, NULL, 135, TRUE),
  -- #136 Meowth
  (301, 52, NULL, 136, TRUE),
  -- #137 Persian
  (301, 53, NULL, 137, TRUE),
  -- #138 Psyduck
  (301, 54, NULL, 138, TRUE),
  -- #139 Golduck
  (301, 55, NULL, 139, TRUE),
  -- #140 Machop
  (301, 66, NULL, 140, TRUE),
  -- #141 Machoke
  (301, 67, NULL, 141, TRUE),
  -- #142 Machamp
  (301, 68, NULL, 142, TRUE),
  -- #143 Tyrogue
  (301, 236, NULL, 143, TRUE),
  -- #144 Hitmonlee
  (301, 106, NULL, 144, TRUE),
  -- #145 Hitmonchan
  (301, 107, NULL, 145, TRUE),
  -- #146 Hitmontop
  (301, 237, NULL, 146, TRUE),
  -- #147 Girafarig
  (301, 203, NULL, 147, TRUE),
  -- #148 Tauros
  (301, 128, NULL, 148, TRUE),
  -- #149 Miltank
  (301, 241, NULL, 149, TRUE),
  -- #150 Magby
  (301, 240, NULL, 150, TRUE),
  -- #151 Magmar
  (301, 126, NULL, 151, TRUE),
  -- #152 Smoochum
  (301, 238, NULL, 152, TRUE),
  -- #153 Jynx
  (301, 124, NULL, 153, TRUE),
  -- #154 Elekid
  (301, 239, NULL, 154, TRUE),
  -- #155 Electabuzz
  (301, 125, NULL, 155, TRUE),
  -- #156 Mr. Mime
  (301, 122, NULL, 156, TRUE),
  -- #157 Smeargle
  (301, 235, NULL, 157, TRUE),
  -- #158 Farfetch'd
  (301, 83, NULL, 158, TRUE),
  -- #159 Natu
  (301, 177, NULL, 159, TRUE),
  -- #160 Xatu
  (301, 178, NULL, 160, TRUE),
  -- #161 Qwilfish
  (301, 211, NULL, 161, TRUE),
  -- #162 Tentacool
  (301, 72, NULL, 162, TRUE),
  -- #163 Tentacruel
  (301, 73, NULL, 163, TRUE),
  -- #164 Krabby
  (301, 98, NULL, 164, TRUE),
  -- #165 Kingler
  (301, 99, NULL, 165, TRUE),
  -- #166 Shuckle
  (301, 213, NULL, 166, TRUE),
  -- #167 Staryu
  (301, 120, NULL, 167, TRUE),
  -- #168 Starmie
  (301, 121, NULL, 168, TRUE),
  -- #169 Shellder
  (301, 90, NULL, 169, TRUE),
  -- #170 Cloyster
  (301, 91, NULL, 170, TRUE),
  -- #171 Corsola
  (301, 222, NULL, 171, TRUE),
  -- #172 Remoraid
  (301, 223, NULL, 172, TRUE),
  -- #173 Octillery
  (301, 224, NULL, 173, TRUE),
  -- #174 Chinchou
  (301, 170, NULL, 174, TRUE),
  -- #175 Lanturn
  (301, 171, NULL, 175, TRUE),
  -- #176 Seel
  (301, 86, NULL, 176, TRUE),
  -- #177 Dewgong
  (301, 87, NULL, 177, TRUE),
  -- #178 Lickitung
  (301, 108, NULL, 178, TRUE),
  -- #179 Tangela
  (301, 114, NULL, 179, TRUE),
  -- #180 Eevee
  (301, 133, NULL, 180, TRUE),
  -- #181 Vaporeon
  (301, 134, NULL, 181, TRUE),
  -- #182 Jolteon
  (301, 135, NULL, 182, TRUE),
  -- #183 Flareon
  (301, 136, NULL, 183, TRUE),
  -- #184 Espeon
  (301, 196, NULL, 184, TRUE),
  -- #185 Umbreon
  (301, 197, NULL, 185, TRUE),
  -- #186 Horsea
  (301, 116, NULL, 186, TRUE),
  -- #187 Seadra
  (301, 117, NULL, 187, TRUE),
  -- #188 Kingdra
  (301, 230, NULL, 188, TRUE),
  -- #189 Gligar
  (301, 207, NULL, 189, TRUE),
  -- #190 Delibird
  (301, 225, NULL, 190, TRUE),
  -- #191 Swinub
  (301, 220, NULL, 191, TRUE),
  -- #192 Piloswine
  (301, 221, NULL, 192, TRUE),
  -- #193 Teddiursa
  (301, 216, NULL, 193, TRUE),
  -- #194 Ursaring
  (301, 217, NULL, 194, TRUE),
  -- #195 Phanpy
  (301, 231, NULL, 195, TRUE),
  -- #196 Donphan
  (301, 232, NULL, 196, TRUE),
  -- #197 Mantine
  (301, 226, NULL, 197, TRUE),
  -- #198 Skarmory
  (301, 227, NULL, 198, TRUE),
  -- #199 Doduo
  (301, 84, NULL, 199, TRUE),
  -- #200 Dodrio
  (301, 85, NULL, 200, TRUE),
  -- #201 Ponyta
  (301, 77, NULL, 201, TRUE),
  -- #202 Rapidash
  (301, 78, NULL, 202, TRUE),
  -- #203 Cubone
  (301, 104, NULL, 203, TRUE),
  -- #204 Marowak
  (301, 105, NULL, 204, TRUE),
  -- #205 Kangaskhan
  (301, 115, NULL, 205, TRUE),
  -- #206 Rhyhorn
  (301, 111, NULL, 206, TRUE),
  -- #207 Rhydon
  (301, 112, NULL, 207, TRUE),
  -- #208 Murkrow
  (301, 198, NULL, 208, TRUE),
  -- #209 Houndour
  (301, 228, NULL, 209, TRUE),
  -- #210 Houndoom
  (301, 229, NULL, 210, TRUE),
  -- #211 Slugma
  (301, 218, NULL, 211, TRUE),
  -- #212 Magcargo
  (301, 219, NULL, 212, TRUE),
  -- #213 Sneasel
  (301, 215, NULL, 213, TRUE),
  -- #214 Misdreavus
  (301, 200, NULL, 214, TRUE),
  -- #215 Porygon
  (301, 137, NULL, 215, TRUE),
  -- #216 Porygon2
  (301, 233, NULL, 216, TRUE),
  -- #217 Chansey
  (301, 113, NULL, 217, TRUE),
  -- #218 Blissey
  (301, 242, NULL, 218, TRUE),
  -- #219 Lapras
  (301, 131, NULL, 219, TRUE),
  -- #220 Omanyte
  (301, 138, NULL, 220, TRUE),
  -- #221 Omastar
  (301, 139, NULL, 221, TRUE),
  -- #222 Kabuto
  (301, 140, NULL, 222, TRUE),
  -- #223 Kabutops
  (301, 141, NULL, 223, TRUE),
  -- #224 Aerodactyl
  (301, 142, NULL, 224, TRUE),
  -- #225 Snorlax
  (301, 143, NULL, 225, TRUE),
  -- #226 Bulbasaur
  (301, 1, NULL, 226, TRUE),
  -- #227 Ivysaur
  (301, 2, NULL, 227, TRUE),
  -- #228 Venusaur
  (301, 3, NULL, 228, TRUE),
  -- #229 Charmander
  (301, 4, NULL, 229, TRUE),
  -- #230 Charmeleon
  (301, 5, NULL, 230, TRUE),
  -- #231 Charizard
  (301, 6, NULL, 231, TRUE),
  -- #232 Squirtle
  (301, 7, NULL, 232, TRUE),
  -- #233 Wartortle
  (301, 8, NULL, 233, TRUE),
  -- #234 Blastoise
  (301, 9, NULL, 234, TRUE),
  -- #235 Articuno
  (301, 144, NULL, 235, TRUE),
  -- #236 Zapdos
  (301, 145, NULL, 236, TRUE),
  -- #237 Moltres
  (301, 146, NULL, 237, TRUE),
  -- #238 Raikou
  (301, 243, NULL, 238, TRUE),
  -- #239 Entei
  (301, 244, NULL, 239, TRUE),
  -- #240 Suicune
  (301, 245, NULL, 240, TRUE),
  -- #241 Dratini
  (301, 147, NULL, 241, TRUE),
  -- #242 Dragonair
  (301, 148, NULL, 242, TRUE),
  -- #243 Dragonite
  (301, 149, NULL, 243, TRUE),
  -- #244 Larvitar
  (301, 246, NULL, 244, TRUE),
  -- #245 Pupitar
  (301, 247, NULL, 245, TRUE),
  -- #246 Tyranitar
  (301, 248, NULL, 246, TRUE),
  -- #247 Lugia
  (301, 249, NULL, 247, TRUE),
  -- #248 Ho-Oh
  (301, 250, NULL, 248, TRUE),
  -- #249 Mewtwo
  (301, 150, NULL, 249, TRUE),
  -- #250 Mew
  (301, 151, NULL, 250, FALSE),
  -- #251 Celebi
  (301, 251, NULL, 251, FALSE);
