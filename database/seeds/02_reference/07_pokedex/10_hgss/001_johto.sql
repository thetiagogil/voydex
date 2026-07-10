-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Johto Pokedex number.
-- Cross-check: PokemonDB HeartGold / SoulSilver Pokedex, Serebii HeartGold / SoulSilver Johto Pokedex, and legacy Voydex Pokedex entry seed.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Johto Pokedex entries for HeartGold / SoulSilver.
-- HeartGold / SoulSilver adds Yanmega, Ambipom, Lickilicky, Tangrowth, and Mamoswine for 256 entries.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Chikorita
  (1001, 152, NULL, 1, TRUE),
  -- #002 Bayleef
  (1001, 153, NULL, 2, TRUE),
  -- #003 Meganium
  (1001, 154, NULL, 3, TRUE),
  -- #004 Cyndaquil
  (1001, 155, NULL, 4, TRUE),
  -- #005 Quilava
  (1001, 156, NULL, 5, TRUE),
  -- #006 Typhlosion
  (1001, 157, NULL, 6, TRUE),
  -- #007 Totodile
  (1001, 158, NULL, 7, TRUE),
  -- #008 Croconaw
  (1001, 159, NULL, 8, TRUE),
  -- #009 Feraligatr
  (1001, 160, NULL, 9, TRUE),
  -- #010 Pidgey
  (1001, 16, NULL, 10, TRUE),
  -- #011 Pidgeotto
  (1001, 17, NULL, 11, TRUE),
  -- #012 Pidgeot
  (1001, 18, NULL, 12, TRUE),
  -- #013 Spearow
  (1001, 21, NULL, 13, TRUE),
  -- #014 Fearow
  (1001, 22, NULL, 14, TRUE),
  -- #015 Hoothoot
  (1001, 163, NULL, 15, TRUE),
  -- #016 Noctowl
  (1001, 164, NULL, 16, TRUE),
  -- #017 Rattata
  (1001, 19, NULL, 17, TRUE),
  -- #018 Raticate
  (1001, 20, NULL, 18, TRUE),
  -- #019 Sentret
  (1001, 161, NULL, 19, TRUE),
  -- #020 Furret
  (1001, 162, NULL, 20, TRUE),
  -- #021 Pichu
  (1001, 172, NULL, 21, TRUE),
  -- #022 Pikachu
  (1001, 25, NULL, 22, TRUE),
  -- #023 Raichu
  (1001, 26, NULL, 23, TRUE),
  -- #024 Caterpie
  (1001, 10, NULL, 24, TRUE),
  -- #025 Metapod
  (1001, 11, NULL, 25, TRUE),
  -- #026 Butterfree
  (1001, 12, NULL, 26, TRUE),
  -- #027 Weedle
  (1001, 13, NULL, 27, TRUE),
  -- #028 Kakuna
  (1001, 14, NULL, 28, TRUE),
  -- #029 Beedrill
  (1001, 15, NULL, 29, TRUE),
  -- #030 Ledyba
  (1001, 165, NULL, 30, TRUE),
  -- #031 Ledian
  (1001, 166, NULL, 31, TRUE),
  -- #032 Spinarak
  (1001, 167, NULL, 32, TRUE),
  -- #033 Ariados
  (1001, 168, NULL, 33, TRUE),
  -- #034 Geodude
  (1001, 74, NULL, 34, TRUE),
  -- #035 Graveler
  (1001, 75, NULL, 35, TRUE),
  -- #036 Golem
  (1001, 76, NULL, 36, TRUE),
  -- #037 Zubat
  (1001, 41, NULL, 37, TRUE),
  -- #038 Golbat
  (1001, 42, NULL, 38, TRUE),
  -- #039 Crobat
  (1001, 169, NULL, 39, TRUE),
  -- #040 Cleffa
  (1001, 173, NULL, 40, TRUE),
  -- #041 Clefairy
  (1001, 35, NULL, 41, TRUE),
  -- #042 Clefable
  (1001, 36, NULL, 42, TRUE),
  -- #043 Igglybuff
  (1001, 174, NULL, 43, TRUE),
  -- #044 Jigglypuff
  (1001, 39, NULL, 44, TRUE),
  -- #045 Wigglytuff
  (1001, 40, NULL, 45, TRUE),
  -- #046 Togepi
  (1001, 175, NULL, 46, TRUE),
  -- #047 Togetic
  (1001, 176, NULL, 47, TRUE),
  -- #048 Sandshrew
  (1001, 27, NULL, 48, TRUE),
  -- #049 Sandslash
  (1001, 28, NULL, 49, TRUE),
  -- #050 Ekans
  (1001, 23, NULL, 50, TRUE),
  -- #051 Arbok
  (1001, 24, NULL, 51, TRUE),
  -- #052 Dunsparce
  (1001, 206, NULL, 52, TRUE),
  -- #053 Mareep
  (1001, 179, NULL, 53, TRUE),
  -- #054 Flaaffy
  (1001, 180, NULL, 54, TRUE),
  -- #055 Ampharos
  (1001, 181, NULL, 55, TRUE),
  -- #056 Wooper
  (1001, 194, NULL, 56, TRUE),
  -- #057 Quagsire
  (1001, 195, NULL, 57, TRUE),
  -- #058 Gastly
  (1001, 92, NULL, 58, TRUE),
  -- #059 Haunter
  (1001, 93, NULL, 59, TRUE),
  -- #060 Gengar
  (1001, 94, NULL, 60, TRUE),
  -- #061 Unown
  (1001, 201, NULL, 61, TRUE),
  -- #062 Onix
  (1001, 95, NULL, 62, TRUE),
  -- #063 Steelix
  (1001, 208, NULL, 63, TRUE),
  -- #064 Bellsprout
  (1001, 69, NULL, 64, TRUE),
  -- #065 Weepinbell
  (1001, 70, NULL, 65, TRUE),
  -- #066 Victreebel
  (1001, 71, NULL, 66, TRUE),
  -- #067 Hoppip
  (1001, 187, NULL, 67, TRUE),
  -- #068 Skiploom
  (1001, 188, NULL, 68, TRUE),
  -- #069 Jumpluff
  (1001, 189, NULL, 69, TRUE),
  -- #070 Paras
  (1001, 46, NULL, 70, TRUE),
  -- #071 Parasect
  (1001, 47, NULL, 71, TRUE),
  -- #072 Poliwag
  (1001, 60, NULL, 72, TRUE),
  -- #073 Poliwhirl
  (1001, 61, NULL, 73, TRUE),
  -- #074 Poliwrath
  (1001, 62, NULL, 74, TRUE),
  -- #075 Politoed
  (1001, 186, NULL, 75, TRUE),
  -- #076 Magikarp
  (1001, 129, NULL, 76, TRUE),
  -- #077 Gyarados
  (1001, 130, NULL, 77, TRUE),
  -- #078 Goldeen
  (1001, 118, NULL, 78, TRUE),
  -- #079 Seaking
  (1001, 119, NULL, 79, TRUE),
  -- #080 Slowpoke
  (1001, 79, NULL, 80, TRUE),
  -- #081 Slowbro
  (1001, 80, NULL, 81, TRUE),
  -- #082 Slowking
  (1001, 199, NULL, 82, TRUE),
  -- #083 Oddish
  (1001, 43, NULL, 83, TRUE),
  -- #084 Gloom
  (1001, 44, NULL, 84, TRUE),
  -- #085 Vileplume
  (1001, 45, NULL, 85, TRUE),
  -- #086 Bellossom
  (1001, 182, NULL, 86, TRUE),
  -- #087 Drowzee
  (1001, 96, NULL, 87, TRUE),
  -- #088 Hypno
  (1001, 97, NULL, 88, TRUE),
  -- #089 Abra
  (1001, 63, NULL, 89, TRUE),
  -- #090 Kadabra
  (1001, 64, NULL, 90, TRUE),
  -- #091 Alakazam
  (1001, 65, NULL, 91, TRUE),
  -- #092 Ditto
  (1001, 132, NULL, 92, TRUE),
  -- #093 Pineco
  (1001, 204, NULL, 93, TRUE),
  -- #094 Forretress
  (1001, 205, NULL, 94, TRUE),
  -- #095 Nidoran F
  (1001, 29, NULL, 95, TRUE),
  -- #096 Nidorina
  (1001, 30, NULL, 96, TRUE),
  -- #097 Nidoqueen
  (1001, 31, NULL, 97, TRUE),
  -- #098 Nidoran M
  (1001, 32, NULL, 98, TRUE),
  -- #099 Nidorino
  (1001, 33, NULL, 99, TRUE),
  -- #100 Nidoking
  (1001, 34, NULL, 100, TRUE),
  -- #101 Yanma
  (1001, 193, NULL, 101, TRUE),
  -- #102 Yanmega
  (1001, 469, NULL, 102, TRUE),
  -- #103 Sunkern
  (1001, 191, NULL, 103, TRUE),
  -- #104 Sunflora
  (1001, 192, NULL, 104, TRUE),
  -- #105 Exeggcute
  (1001, 102, NULL, 105, TRUE),
  -- #106 Exeggutor
  (1001, 103, NULL, 106, TRUE),
  -- #107 Sudowoodo
  (1001, 185, NULL, 107, TRUE),
  -- #108 Wobbuffet
  (1001, 202, NULL, 108, TRUE),
  -- #109 Venonat
  (1001, 48, NULL, 109, TRUE),
  -- #110 Venomoth
  (1001, 49, NULL, 110, TRUE),
  -- #111 Scyther
  (1001, 123, NULL, 111, TRUE),
  -- #112 Scizor
  (1001, 212, NULL, 112, TRUE),
  -- #113 Pinsir
  (1001, 127, NULL, 113, TRUE),
  -- #114 Heracross
  (1001, 214, NULL, 114, TRUE),
  -- #115 Koffing
  (1001, 109, NULL, 115, TRUE),
  -- #116 Weezing
  (1001, 110, NULL, 116, TRUE),
  -- #117 Grimer
  (1001, 88, NULL, 117, TRUE),
  -- #118 Muk
  (1001, 89, NULL, 118, TRUE),
  -- #119 Magnemite
  (1001, 81, NULL, 119, TRUE),
  -- #120 Magneton
  (1001, 82, NULL, 120, TRUE),
  -- #121 Voltorb
  (1001, 100, NULL, 121, TRUE),
  -- #122 Electrode
  (1001, 101, NULL, 122, TRUE),
  -- #123 Aipom
  (1001, 190, NULL, 123, TRUE),
  -- #124 Ambipom
  (1001, 424, NULL, 124, TRUE),
  -- #125 Snubbull
  (1001, 209, NULL, 125, TRUE),
  -- #126 Granbull
  (1001, 210, NULL, 126, TRUE),
  -- #127 Vulpix
  (1001, 37, NULL, 127, TRUE),
  -- #128 Ninetales
  (1001, 38, NULL, 128, TRUE),
  -- #129 Growlithe
  (1001, 58, NULL, 129, TRUE),
  -- #130 Arcanine
  (1001, 59, NULL, 130, TRUE),
  -- #131 Stantler
  (1001, 234, NULL, 131, TRUE),
  -- #132 Marill
  (1001, 183, NULL, 132, TRUE),
  -- #133 Azumarill
  (1001, 184, NULL, 133, TRUE),
  -- #134 Diglett
  (1001, 50, NULL, 134, TRUE),
  -- #135 Dugtrio
  (1001, 51, NULL, 135, TRUE),
  -- #136 Mankey
  (1001, 56, NULL, 136, TRUE),
  -- #137 Primeape
  (1001, 57, NULL, 137, TRUE),
  -- #138 Meowth
  (1001, 52, NULL, 138, TRUE),
  -- #139 Persian
  (1001, 53, NULL, 139, TRUE),
  -- #140 Psyduck
  (1001, 54, NULL, 140, TRUE),
  -- #141 Golduck
  (1001, 55, NULL, 141, TRUE),
  -- #142 Machop
  (1001, 66, NULL, 142, TRUE),
  -- #143 Machoke
  (1001, 67, NULL, 143, TRUE),
  -- #144 Machamp
  (1001, 68, NULL, 144, TRUE),
  -- #145 Tyrogue
  (1001, 236, NULL, 145, TRUE),
  -- #146 Hitmonlee
  (1001, 106, NULL, 146, TRUE),
  -- #147 Hitmonchan
  (1001, 107, NULL, 147, TRUE),
  -- #148 Hitmontop
  (1001, 237, NULL, 148, TRUE),
  -- #149 Girafarig
  (1001, 203, NULL, 149, TRUE),
  -- #150 Tauros
  (1001, 128, NULL, 150, TRUE),
  -- #151 Miltank
  (1001, 241, NULL, 151, TRUE),
  -- #152 Magby
  (1001, 240, NULL, 152, TRUE),
  -- #153 Magmar
  (1001, 126, NULL, 153, TRUE),
  -- #154 Smoochum
  (1001, 238, NULL, 154, TRUE),
  -- #155 Jynx
  (1001, 124, NULL, 155, TRUE),
  -- #156 Elekid
  (1001, 239, NULL, 156, TRUE),
  -- #157 Electabuzz
  (1001, 125, NULL, 157, TRUE),
  -- #158 Mr. Mime
  (1001, 122, NULL, 158, TRUE),
  -- #159 Smeargle
  (1001, 235, NULL, 159, TRUE),
  -- #160 Farfetch'd
  (1001, 83, NULL, 160, TRUE),
  -- #161 Natu
  (1001, 177, NULL, 161, TRUE),
  -- #162 Xatu
  (1001, 178, NULL, 162, TRUE),
  -- #163 Qwilfish
  (1001, 211, NULL, 163, TRUE),
  -- #164 Tentacool
  (1001, 72, NULL, 164, TRUE),
  -- #165 Tentacruel
  (1001, 73, NULL, 165, TRUE),
  -- #166 Krabby
  (1001, 98, NULL, 166, TRUE),
  -- #167 Kingler
  (1001, 99, NULL, 167, TRUE),
  -- #168 Shuckle
  (1001, 213, NULL, 168, TRUE),
  -- #169 Staryu
  (1001, 120, NULL, 169, TRUE),
  -- #170 Starmie
  (1001, 121, NULL, 170, TRUE),
  -- #171 Shellder
  (1001, 90, NULL, 171, TRUE),
  -- #172 Cloyster
  (1001, 91, NULL, 172, TRUE),
  -- #173 Corsola
  (1001, 222, NULL, 173, TRUE),
  -- #174 Remoraid
  (1001, 223, NULL, 174, TRUE),
  -- #175 Octillery
  (1001, 224, NULL, 175, TRUE),
  -- #176 Chinchou
  (1001, 170, NULL, 176, TRUE),
  -- #177 Lanturn
  (1001, 171, NULL, 177, TRUE),
  -- #178 Seel
  (1001, 86, NULL, 178, TRUE),
  -- #179 Dewgong
  (1001, 87, NULL, 179, TRUE),
  -- #180 Lickitung
  (1001, 108, NULL, 180, TRUE),
  -- #181 Lickilicky
  (1001, 463, NULL, 181, TRUE),
  -- #182 Tangela
  (1001, 114, NULL, 182, TRUE),
  -- #183 Tangrowth
  (1001, 465, NULL, 183, TRUE),
  -- #184 Eevee
  (1001, 133, NULL, 184, TRUE),
  -- #185 Vaporeon
  (1001, 134, NULL, 185, TRUE),
  -- #186 Jolteon
  (1001, 135, NULL, 186, TRUE),
  -- #187 Flareon
  (1001, 136, NULL, 187, TRUE),
  -- #188 Espeon
  (1001, 196, NULL, 188, TRUE),
  -- #189 Umbreon
  (1001, 197, NULL, 189, TRUE),
  -- #190 Horsea
  (1001, 116, NULL, 190, TRUE),
  -- #191 Seadra
  (1001, 117, NULL, 191, TRUE),
  -- #192 Kingdra
  (1001, 230, NULL, 192, TRUE),
  -- #193 Gligar
  (1001, 207, NULL, 193, TRUE),
  -- #194 Delibird
  (1001, 225, NULL, 194, TRUE),
  -- #195 Swinub
  (1001, 220, NULL, 195, TRUE),
  -- #196 Piloswine
  (1001, 221, NULL, 196, TRUE),
  -- #197 Mamoswine
  (1001, 473, NULL, 197, TRUE),
  -- #198 Teddiursa
  (1001, 216, NULL, 198, TRUE),
  -- #199 Ursaring
  (1001, 217, NULL, 199, TRUE),
  -- #200 Phanpy
  (1001, 231, NULL, 200, TRUE),
  -- #201 Donphan
  (1001, 232, NULL, 201, TRUE),
  -- #202 Mantine
  (1001, 226, NULL, 202, TRUE),
  -- #203 Skarmory
  (1001, 227, NULL, 203, TRUE),
  -- #204 Doduo
  (1001, 84, NULL, 204, TRUE),
  -- #205 Dodrio
  (1001, 85, NULL, 205, TRUE),
  -- #206 Ponyta
  (1001, 77, NULL, 206, TRUE),
  -- #207 Rapidash
  (1001, 78, NULL, 207, TRUE),
  -- #208 Cubone
  (1001, 104, NULL, 208, TRUE),
  -- #209 Marowak
  (1001, 105, NULL, 209, TRUE),
  -- #210 Kangaskhan
  (1001, 115, NULL, 210, TRUE),
  -- #211 Rhyhorn
  (1001, 111, NULL, 211, TRUE),
  -- #212 Rhydon
  (1001, 112, NULL, 212, TRUE),
  -- #213 Murkrow
  (1001, 198, NULL, 213, TRUE),
  -- #214 Houndour
  (1001, 228, NULL, 214, TRUE),
  -- #215 Houndoom
  (1001, 229, NULL, 215, TRUE),
  -- #216 Slugma
  (1001, 218, NULL, 216, TRUE),
  -- #217 Magcargo
  (1001, 219, NULL, 217, TRUE),
  -- #218 Sneasel
  (1001, 215, NULL, 218, TRUE),
  -- #219 Misdreavus
  (1001, 200, NULL, 219, TRUE),
  -- #220 Porygon
  (1001, 137, NULL, 220, TRUE),
  -- #221 Porygon2
  (1001, 233, NULL, 221, TRUE),
  -- #222 Chansey
  (1001, 113, NULL, 222, TRUE),
  -- #223 Blissey
  (1001, 242, NULL, 223, TRUE),
  -- #224 Lapras
  (1001, 131, NULL, 224, TRUE),
  -- #225 Omanyte
  (1001, 138, NULL, 225, TRUE),
  -- #226 Omastar
  (1001, 139, NULL, 226, TRUE),
  -- #227 Kabuto
  (1001, 140, NULL, 227, TRUE),
  -- #228 Kabutops
  (1001, 141, NULL, 228, TRUE),
  -- #229 Aerodactyl
  (1001, 142, NULL, 229, TRUE),
  -- #230 Snorlax
  (1001, 143, NULL, 230, TRUE),
  -- #231 Bulbasaur
  (1001, 1, NULL, 231, TRUE),
  -- #232 Ivysaur
  (1001, 2, NULL, 232, TRUE),
  -- #233 Venusaur
  (1001, 3, NULL, 233, TRUE),
  -- #234 Charmander
  (1001, 4, NULL, 234, TRUE),
  -- #235 Charmeleon
  (1001, 5, NULL, 235, TRUE),
  -- #236 Charizard
  (1001, 6, NULL, 236, TRUE),
  -- #237 Squirtle
  (1001, 7, NULL, 237, TRUE),
  -- #238 Wartortle
  (1001, 8, NULL, 238, TRUE),
  -- #239 Blastoise
  (1001, 9, NULL, 239, TRUE),
  -- #240 Articuno
  (1001, 144, NULL, 240, TRUE),
  -- #241 Zapdos
  (1001, 145, NULL, 241, TRUE),
  -- #242 Moltres
  (1001, 146, NULL, 242, TRUE),
  -- #243 Raikou
  (1001, 243, NULL, 243, TRUE),
  -- #244 Entei
  (1001, 244, NULL, 244, TRUE),
  -- #245 Suicune
  (1001, 245, NULL, 245, TRUE),
  -- #246 Dratini
  (1001, 147, NULL, 246, TRUE),
  -- #247 Dragonair
  (1001, 148, NULL, 247, TRUE),
  -- #248 Dragonite
  (1001, 149, NULL, 248, TRUE),
  -- #249 Larvitar
  (1001, 246, NULL, 249, TRUE),
  -- #250 Pupitar
  (1001, 247, NULL, 250, TRUE),
  -- #251 Tyranitar
  (1001, 248, NULL, 251, TRUE),
  -- #252 Lugia
  (1001, 249, NULL, 252, TRUE),
  -- #253 Ho-Oh
  (1001, 250, NULL, 253, TRUE),
  -- #254 Mewtwo
  (1001, 150, NULL, 254, TRUE),
  -- #255 Mew
  (1001, 151, NULL, 255, FALSE),
  -- #256 Celebi
  (1001, 251, NULL, 256, FALSE);
