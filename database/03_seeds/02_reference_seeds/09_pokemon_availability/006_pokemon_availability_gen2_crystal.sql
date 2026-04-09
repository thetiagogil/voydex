-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: PokeAPI (dex cross-reference)
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 2
-- Table: reference.pokemon_availability
-- Scope: version-group-specific (crystal)
-- Pokemon: 251 (VG-wide)
INSERT INTO
    reference.pokemon_availability (id, species_id, form_id, version_group_id, game_id, availability_context)
VALUES
    -- #001 Bulbasaur
    (554, 1, 100, 4, NULL, 'native'),
    -- #002 Ivysaur
    (555, 2, 200, 4, NULL, 'native'),
    -- #003 Venusaur
    (556, 3, 300, 4, NULL, 'native'),
    -- #004 Charmander
    (557, 4, 400, 4, NULL, 'native'),
    -- #005 Charmeleon
    (558, 5, 500, 4, NULL, 'native'),
    -- #006 Charizard
    (559, 6, 600, 4, NULL, 'native'),
    -- #007 Squirtle
    (560, 7, 700, 4, NULL, 'native'),
    -- #008 Wartortle
    (561, 8, 800, 4, NULL, 'native'),
    -- #009 Blastoise
    (562, 9, 900, 4, NULL, 'native'),
    -- #010 Caterpie
    (563, 10, 1000, 4, NULL, 'native'),
    -- #011 Metapod
    (564, 11, 1100, 4, NULL, 'native'),
    -- #012 Butterfree
    (565, 12, 1200, 4, NULL, 'native'),
    -- #013 Weedle
    (566, 13, 1300, 4, NULL, 'native'),
    -- #014 Kakuna
    (567, 14, 1400, 4, NULL, 'native'),
    -- #015 Beedrill
    (568, 15, 1500, 4, NULL, 'native'),
    -- #016 Pidgey
    (569, 16, 1600, 4, NULL, 'native'),
    -- #017 Pidgeotto
    (570, 17, 1700, 4, NULL, 'native'),
    -- #018 Pidgeot
    (571, 18, 1800, 4, NULL, 'native'),
    -- #019 Rattata
    (572, 19, 1900, 4, NULL, 'native'),
    -- #020 Raticate
    (573, 20, 2000, 4, NULL, 'native'),
    -- #021 Spearow
    (574, 21, 2100, 4, NULL, 'native'),
    -- #022 Fearow
    (575, 22, 2200, 4, NULL, 'native'),
    -- #023 Ekans
    (576, 23, 2300, 4, NULL, 'native'),
    -- #024 Arbok
    (577, 24, 2400, 4, NULL, 'native'),
    -- #025 Pikachu
    (578, 25, 2500, 4, NULL, 'native'),
    -- #026 Raichu
    (579, 26, 2600, 4, NULL, 'native'),
    -- #027 Sandshrew
    (580, 27, 2700, 4, NULL, 'native'),
    -- #028 Sandslash
    (581, 28, 2800, 4, NULL, 'native'),
    -- #029 Nidoran♀
    (582, 29, 2900, 4, NULL, 'native'),
    -- #030 Nidorina
    (583, 30, 3000, 4, NULL, 'native'),
    -- #031 Nidoqueen
    (584, 31, 3100, 4, NULL, 'native'),
    -- #032 Nidoran♂
    (585, 32, 3200, 4, NULL, 'native'),
    -- #033 Nidorino
    (586, 33, 3300, 4, NULL, 'native'),
    -- #034 Nidoking
    (587, 34, 3400, 4, NULL, 'native'),
    -- #035 Clefairy
    (588, 35, 3500, 4, NULL, 'native'),
    -- #036 Clefable
    (589, 36, 3600, 4, NULL, 'native'),
    -- #037 Vulpix
    (590, 37, 3700, 4, NULL, 'native'),
    -- #038 Ninetales
    (591, 38, 3800, 4, NULL, 'native'),
    -- #039 Jigglypuff
    (592, 39, 3900, 4, NULL, 'native'),
    -- #040 Wigglytuff
    (593, 40, 4000, 4, NULL, 'native'),
    -- #041 Zubat
    (594, 41, 4100, 4, NULL, 'native'),
    -- #042 Golbat
    (595, 42, 4200, 4, NULL, 'native'),
    -- #043 Oddish
    (596, 43, 4300, 4, NULL, 'native'),
    -- #044 Gloom
    (597, 44, 4400, 4, NULL, 'native'),
    -- #045 Vileplume
    (598, 45, 4500, 4, NULL, 'native'),
    -- #046 Paras
    (599, 46, 4600, 4, NULL, 'native'),
    -- #047 Parasect
    (600, 47, 4700, 4, NULL, 'native'),
    -- #048 Venonat
    (601, 48, 4800, 4, NULL, 'native'),
    -- #049 Venomoth
    (602, 49, 4900, 4, NULL, 'native'),
    -- #050 Diglett
    (603, 50, 5000, 4, NULL, 'native'),
    -- #051 Dugtrio
    (604, 51, 5100, 4, NULL, 'native'),
    -- #052 Meowth
    (605, 52, 5200, 4, NULL, 'native'),
    -- #053 Persian
    (606, 53, 5300, 4, NULL, 'native'),
    -- #054 Psyduck
    (607, 54, 5400, 4, NULL, 'native'),
    -- #055 Golduck
    (608, 55, 5500, 4, NULL, 'native'),
    -- #056 Mankey
    (609, 56, 5600, 4, NULL, 'native'),
    -- #057 Primeape
    (610, 57, 5700, 4, NULL, 'native'),
    -- #058 Growlithe
    (611, 58, 5800, 4, NULL, 'native'),
    -- #059 Arcanine
    (612, 59, 5900, 4, NULL, 'native'),
    -- #060 Poliwag
    (613, 60, 6000, 4, NULL, 'native'),
    -- #061 Poliwhirl
    (614, 61, 6100, 4, NULL, 'native'),
    -- #062 Poliwrath
    (615, 62, 6200, 4, NULL, 'native'),
    -- #063 Abra
    (616, 63, 6300, 4, NULL, 'native'),
    -- #064 Kadabra
    (617, 64, 6400, 4, NULL, 'native'),
    -- #065 Alakazam
    (618, 65, 6500, 4, NULL, 'native'),
    -- #066 Machop
    (619, 66, 6600, 4, NULL, 'native'),
    -- #067 Machoke
    (620, 67, 6700, 4, NULL, 'native'),
    -- #068 Machamp
    (621, 68, 6800, 4, NULL, 'native'),
    -- #069 Bellsprout
    (622, 69, 6900, 4, NULL, 'native'),
    -- #070 Weepinbell
    (623, 70, 7000, 4, NULL, 'native'),
    -- #071 Victreebel
    (624, 71, 7100, 4, NULL, 'native'),
    -- #072 Tentacool
    (625, 72, 7200, 4, NULL, 'native'),
    -- #073 Tentacruel
    (626, 73, 7300, 4, NULL, 'native'),
    -- #074 Geodude
    (627, 74, 7400, 4, NULL, 'native'),
    -- #075 Graveler
    (628, 75, 7500, 4, NULL, 'native'),
    -- #076 Golem
    (629, 76, 7600, 4, NULL, 'native'),
    -- #077 Ponyta
    (630, 77, 7700, 4, NULL, 'native'),
    -- #078 Rapidash
    (631, 78, 7800, 4, NULL, 'native'),
    -- #079 Slowpoke
    (632, 79, 7900, 4, NULL, 'native'),
    -- #080 Slowbro
    (633, 80, 8000, 4, NULL, 'native'),
    -- #081 Magnemite
    (634, 81, 8100, 4, NULL, 'native'),
    -- #082 Magneton
    (635, 82, 8200, 4, NULL, 'native'),
    -- #083 Farfetch
    (636, 83, 8300, 4, NULL, 'native'),
    -- #084 Doduo
    (637, 84, 8400, 4, NULL, 'native'),
    -- #085 Dodrio
    (638, 85, 8500, 4, NULL, 'native'),
    -- #086 Seel
    (639, 86, 8600, 4, NULL, 'native'),
    -- #087 Dewgong
    (640, 87, 8700, 4, NULL, 'native'),
    -- #088 Grimer
    (641, 88, 8800, 4, NULL, 'native'),
    -- #089 Muk
    (642, 89, 8900, 4, NULL, 'native'),
    -- #090 Shellder
    (643, 90, 9000, 4, NULL, 'native'),
    -- #091 Cloyster
    (644, 91, 9100, 4, NULL, 'native'),
    -- #092 Gastly
    (645, 92, 9200, 4, NULL, 'native'),
    -- #093 Haunter
    (646, 93, 9300, 4, NULL, 'native'),
    -- #094 Gengar
    (647, 94, 9400, 4, NULL, 'native'),
    -- #095 Onix
    (648, 95, 9500, 4, NULL, 'native'),
    -- #096 Drowzee
    (649, 96, 9600, 4, NULL, 'native'),
    -- #097 Hypno
    (650, 97, 9700, 4, NULL, 'native'),
    -- #098 Krabby
    (651, 98, 9800, 4, NULL, 'native'),
    -- #099 Kingler
    (652, 99, 9900, 4, NULL, 'native'),
    -- #100 Voltorb
    (653, 100, 10000, 4, NULL, 'native'),
    -- #101 Electrode
    (654, 101, 10100, 4, NULL, 'native'),
    -- #102 Exeggcute
    (655, 102, 10200, 4, NULL, 'native'),
    -- #103 Exeggutor
    (656, 103, 10300, 4, NULL, 'native'),
    -- #104 Cubone
    (657, 104, 10400, 4, NULL, 'native'),
    -- #105 Marowak
    (658, 105, 10500, 4, NULL, 'native'),
    -- #106 Hitmonlee
    (659, 106, 10600, 4, NULL, 'native'),
    -- #107 Hitmonchan
    (660, 107, 10700, 4, NULL, 'native'),
    -- #108 Lickitung
    (661, 108, 10800, 4, NULL, 'native'),
    -- #109 Koffing
    (662, 109, 10900, 4, NULL, 'native'),
    -- #110 Weezing
    (663, 110, 11000, 4, NULL, 'native'),
    -- #111 Rhyhorn
    (664, 111, 11100, 4, NULL, 'native'),
    -- #112 Rhydon
    (665, 112, 11200, 4, NULL, 'native'),
    -- #113 Chansey
    (666, 113, 11300, 4, NULL, 'native'),
    -- #114 Tangela
    (667, 114, 11400, 4, NULL, 'native'),
    -- #115 Kangaskhan
    (668, 115, 11500, 4, NULL, 'native'),
    -- #116 Horsea
    (669, 116, 11600, 4, NULL, 'native'),
    -- #117 Seadra
    (670, 117, 11700, 4, NULL, 'native'),
    -- #118 Goldeen
    (671, 118, 11800, 4, NULL, 'native'),
    -- #119 Seaking
    (672, 119, 11900, 4, NULL, 'native'),
    -- #120 Staryu
    (673, 120, 12000, 4, NULL, 'native'),
    -- #121 Starmie
    (674, 121, 12100, 4, NULL, 'native'),
    -- #122 Mr. Mime
    (675, 122, 12200, 4, NULL, 'native'),
    -- #123 Scyther
    (676, 123, 12300, 4, NULL, 'native'),
    -- #124 Jynx
    (677, 124, 12400, 4, NULL, 'native'),
    -- #125 Electabuzz
    (678, 125, 12500, 4, NULL, 'native'),
    -- #126 Magmar
    (679, 126, 12600, 4, NULL, 'native'),
    -- #127 Pinsir
    (680, 127, 12700, 4, NULL, 'native'),
    -- #128 Tauros
    (681, 128, 12800, 4, NULL, 'native'),
    -- #129 Magikarp
    (682, 129, 12900, 4, NULL, 'native'),
    -- #130 Gyarados
    (683, 130, 13000, 4, NULL, 'native'),
    -- #131 Lapras
    (684, 131, 13100, 4, NULL, 'native'),
    -- #132 Ditto
    (685, 132, 13200, 4, NULL, 'native'),
    -- #133 Eevee
    (686, 133, 13300, 4, NULL, 'native'),
    -- #134 Vaporeon
    (687, 134, 13400, 4, NULL, 'native'),
    -- #135 Jolteon
    (688, 135, 13500, 4, NULL, 'native'),
    -- #136 Flareon
    (689, 136, 13600, 4, NULL, 'native'),
    -- #137 Porygon
    (690, 137, 13700, 4, NULL, 'native'),
    -- #138 Omanyte
    (691, 138, 13800, 4, NULL, 'native'),
    -- #139 Omastar
    (692, 139, 13900, 4, NULL, 'native'),
    -- #140 Kabuto
    (693, 140, 14000, 4, NULL, 'native'),
    -- #141 Kabutops
    (694, 141, 14100, 4, NULL, 'native'),
    -- #142 Aerodactyl
    (695, 142, 14200, 4, NULL, 'native'),
    -- #143 Snorlax
    (696, 143, 14300, 4, NULL, 'native'),
    -- #144 Articuno
    (697, 144, 14400, 4, NULL, 'native'),
    -- #145 Zapdos
    (698, 145, 14500, 4, NULL, 'native'),
    -- #146 Moltres
    (699, 146, 14600, 4, NULL, 'native'),
    -- #147 Dratini
    (700, 147, 14700, 4, NULL, 'native'),
    -- #148 Dragonair
    (701, 148, 14800, 4, NULL, 'native'),
    -- #149 Dragonite
    (702, 149, 14900, 4, NULL, 'native'),
    -- #150 Mewtwo
    (703, 150, 15000, 4, NULL, 'native'),
    -- #151 Mew
    (704, 151, 15100, 4, NULL, 'native'),
    -- #152 Chikorita
    (705, 152, 15200, 4, NULL, 'native'),
    -- #153 Bayleef
    (706, 153, 15300, 4, NULL, 'native'),
    -- #154 Meganium
    (707, 154, 15400, 4, NULL, 'native'),
    -- #155 Cyndaquil
    (708, 155, 15500, 4, NULL, 'native'),
    -- #156 Quilava
    (709, 156, 15600, 4, NULL, 'native'),
    -- #157 Typhlosion
    (710, 157, 15700, 4, NULL, 'native'),
    -- #158 Totodile
    (711, 158, 15800, 4, NULL, 'native'),
    -- #159 Croconaw
    (712, 159, 15900, 4, NULL, 'native'),
    -- #160 Feraligatr
    (713, 160, 16000, 4, NULL, 'native'),
    -- #161 Sentret
    (714, 161, 16100, 4, NULL, 'native'),
    -- #162 Furret
    (715, 162, 16200, 4, NULL, 'native'),
    -- #163 Hoothoot
    (716, 163, 16300, 4, NULL, 'native'),
    -- #164 Noctowl
    (717, 164, 16400, 4, NULL, 'native'),
    -- #165 Ledyba
    (718, 165, 16500, 4, NULL, 'native'),
    -- #166 Ledian
    (719, 166, 16600, 4, NULL, 'native'),
    -- #167 Spinarak
    (720, 167, 16700, 4, NULL, 'native'),
    -- #168 Ariados
    (721, 168, 16800, 4, NULL, 'native'),
    -- #169 Crobat
    (722, 169, 16900, 4, NULL, 'native'),
    -- #170 Chinchou
    (723, 170, 17000, 4, NULL, 'native'),
    -- #171 Lanturn
    (724, 171, 17100, 4, NULL, 'native'),
    -- #172 Pichu
    (725, 172, 17200, 4, NULL, 'native'),
    -- #173 Cleffa
    (726, 173, 17300, 4, NULL, 'native'),
    -- #174 Igglybuff
    (727, 174, 17400, 4, NULL, 'native'),
    -- #175 Togepi
    (728, 175, 17500, 4, NULL, 'native'),
    -- #176 Togetic
    (729, 176, 17600, 4, NULL, 'native'),
    -- #177 Natu
    (730, 177, 17700, 4, NULL, 'native'),
    -- #178 Xatu
    (731, 178, 17800, 4, NULL, 'native'),
    -- #179 Mareep
    (732, 179, 17900, 4, NULL, 'native'),
    -- #180 Flaaffy
    (733, 180, 18000, 4, NULL, 'native'),
    -- #181 Ampharos
    (734, 181, 18100, 4, NULL, 'native'),
    -- #182 Bellossom
    (735, 182, 18200, 4, NULL, 'native'),
    -- #183 Marill
    (736, 183, 18300, 4, NULL, 'native'),
    -- #184 Azumarill
    (737, 184, 18400, 4, NULL, 'native'),
    -- #185 Sudowoodo
    (738, 185, 18500, 4, NULL, 'native'),
    -- #186 Politoed
    (739, 186, 18600, 4, NULL, 'native'),
    -- #187 Hoppip
    (740, 187, 18700, 4, NULL, 'native'),
    -- #188 Skiploom
    (741, 188, 18800, 4, NULL, 'native'),
    -- #189 Jumpluff
    (742, 189, 18900, 4, NULL, 'native'),
    -- #190 Aipom
    (743, 190, 19000, 4, NULL, 'native'),
    -- #191 Sunkern
    (744, 191, 19100, 4, NULL, 'native'),
    -- #192 Sunflora
    (745, 192, 19200, 4, NULL, 'native'),
    -- #193 Yanma
    (746, 193, 19300, 4, NULL, 'native'),
    -- #194 Wooper
    (747, 194, 19400, 4, NULL, 'native'),
    -- #195 Quagsire
    (748, 195, 19500, 4, NULL, 'native'),
    -- #196 Espeon
    (749, 196, 19600, 4, NULL, 'native'),
    -- #197 Umbreon
    (750, 197, 19700, 4, NULL, 'native'),
    -- #198 Murkrow
    (751, 198, 19800, 4, NULL, 'native'),
    -- #199 Slowking
    (752, 199, 19900, 4, NULL, 'native'),
    -- #200 Misdreavus
    (753, 200, 20000, 4, NULL, 'native'),
    -- #201 Unown
    (754, 201, 20100, 4, NULL, 'native'),
    -- #202 Wobbuffet
    (755, 202, 20200, 4, NULL, 'native'),
    -- #203 Girafarig
    (756, 203, 20300, 4, NULL, 'native'),
    -- #204 Pineco
    (757, 204, 20400, 4, NULL, 'native'),
    -- #205 Forretress
    (758, 205, 20500, 4, NULL, 'native'),
    -- #206 Dunsparce
    (759, 206, 20600, 4, NULL, 'native'),
    -- #207 Gligar
    (760, 207, 20700, 4, NULL, 'native'),
    -- #208 Steelix
    (761, 208, 20800, 4, NULL, 'native'),
    -- #209 Snubbull
    (762, 209, 20900, 4, NULL, 'native'),
    -- #210 Granbull
    (763, 210, 21000, 4, NULL, 'native'),
    -- #211 Qwilfish
    (764, 211, 21100, 4, NULL, 'native'),
    -- #212 Scizor
    (765, 212, 21200, 4, NULL, 'native'),
    -- #213 Shuckle
    (766, 213, 21300, 4, NULL, 'native'),
    -- #214 Heracross
    (767, 214, 21400, 4, NULL, 'native'),
    -- #215 Sneasel
    (768, 215, 21500, 4, NULL, 'native'),
    -- #216 Teddiursa
    (769, 216, 21600, 4, NULL, 'native'),
    -- #217 Ursaring
    (770, 217, 21700, 4, NULL, 'native'),
    -- #218 Slugma
    (771, 218, 21800, 4, NULL, 'native'),
    -- #219 Magcargo
    (772, 219, 21900, 4, NULL, 'native'),
    -- #220 Swinub
    (773, 220, 22000, 4, NULL, 'native'),
    -- #221 Piloswine
    (774, 221, 22100, 4, NULL, 'native'),
    -- #222 Corsola
    (775, 222, 22200, 4, NULL, 'native'),
    -- #223 Remoraid
    (776, 223, 22300, 4, NULL, 'native'),
    -- #224 Octillery
    (777, 224, 22400, 4, NULL, 'native'),
    -- #225 Delibird
    (778, 225, 22500, 4, NULL, 'native'),
    -- #226 Mantine
    (779, 226, 22600, 4, NULL, 'native'),
    -- #227 Skarmory
    (780, 227, 22700, 4, NULL, 'native'),
    -- #228 Houndour
    (781, 228, 22800, 4, NULL, 'native'),
    -- #229 Houndoom
    (782, 229, 22900, 4, NULL, 'native'),
    -- #230 Kingdra
    (783, 230, 23000, 4, NULL, 'native'),
    -- #231 Phanpy
    (784, 231, 23100, 4, NULL, 'native'),
    -- #232 Donphan
    (785, 232, 23200, 4, NULL, 'native'),
    -- #233 Porygon2
    (786, 233, 23300, 4, NULL, 'native'),
    -- #234 Stantler
    (787, 234, 23400, 4, NULL, 'native'),
    -- #235 Smeargle
    (788, 235, 23500, 4, NULL, 'native'),
    -- #236 Tyrogue
    (789, 236, 23600, 4, NULL, 'native'),
    -- #237 Hitmontop
    (790, 237, 23700, 4, NULL, 'native'),
    -- #238 Smoochum
    (791, 238, 23800, 4, NULL, 'native'),
    -- #239 Elekid
    (792, 239, 23900, 4, NULL, 'native'),
    -- #240 Magby
    (793, 240, 24000, 4, NULL, 'native'),
    -- #241 Miltank
    (794, 241, 24100, 4, NULL, 'native'),
    -- #242 Blissey
    (795, 242, 24200, 4, NULL, 'native'),
    -- #243 Raikou
    (796, 243, 24300, 4, NULL, 'native'),
    -- #244 Entei
    (797, 244, 24400, 4, NULL, 'native'),
    -- #245 Suicune
    (798, 245, 24500, 4, NULL, 'native'),
    -- #246 Larvitar
    (799, 246, 24600, 4, NULL, 'native'),
    -- #247 Pupitar
    (800, 247, 24700, 4, NULL, 'native'),
    -- #248 Tyranitar
    (801, 248, 24800, 4, NULL, 'native'),
    -- #249 Lugia
    (802, 249, 24900, 4, NULL, 'native'),
    -- #250 Ho-Oh
    (803, 250, 25000, 4, NULL, 'native'),
    -- #251 Celebi
    (804, 251, 25100, 4, NULL, 'native');