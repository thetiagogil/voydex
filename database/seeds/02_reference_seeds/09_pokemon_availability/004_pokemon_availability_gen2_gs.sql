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
-- Scope: version-group-specific (gs)
-- Pokemon: 231 (VG-wide)
INSERT INTO
    reference.pokemon_availability (id, species_id, form_id, version_group_id, game_id, availability_context)
VALUES
    -- #001 Bulbasaur
    (303, 1, 100, 3, NULL, 'native'),
    -- #002 Ivysaur
    (304, 2, 200, 3, NULL, 'native'),
    -- #003 Venusaur
    (305, 3, 300, 3, NULL, 'native'),
    -- #004 Charmander
    (306, 4, 400, 3, NULL, 'native'),
    -- #005 Charmeleon
    (307, 5, 500, 3, NULL, 'native'),
    -- #006 Charizard
    (308, 6, 600, 3, NULL, 'native'),
    -- #007 Squirtle
    (309, 7, 700, 3, NULL, 'native'),
    -- #008 Wartortle
    (310, 8, 800, 3, NULL, 'native'),
    -- #009 Blastoise
    (311, 9, 900, 3, NULL, 'native'),
    -- #010 Caterpie
    (312, 10, 1000, 3, NULL, 'native'),
    -- #011 Metapod
    (313, 11, 1100, 3, NULL, 'native'),
    -- #012 Butterfree
    (314, 12, 1200, 3, NULL, 'native'),
    -- #013 Weedle
    (315, 13, 1300, 3, NULL, 'native'),
    -- #014 Kakuna
    (316, 14, 1400, 3, NULL, 'native'),
    -- #015 Beedrill
    (317, 15, 1500, 3, NULL, 'native'),
    -- #016 Pidgey
    (318, 16, 1600, 3, NULL, 'native'),
    -- #017 Pidgeotto
    (319, 17, 1700, 3, NULL, 'native'),
    -- #018 Pidgeot
    (320, 18, 1800, 3, NULL, 'native'),
    -- #019 Rattata
    (321, 19, 1900, 3, NULL, 'native'),
    -- #020 Raticate
    (322, 20, 2000, 3, NULL, 'native'),
    -- #021 Spearow
    (323, 21, 2100, 3, NULL, 'native'),
    -- #022 Fearow
    (324, 22, 2200, 3, NULL, 'native'),
    -- #023 Ekans
    (325, 23, 2300, 3, NULL, 'native'),
    -- #024 Arbok
    (326, 24, 2400, 3, NULL, 'native'),
    -- #025 Pikachu
    (327, 25, 2500, 3, NULL, 'native'),
    -- #026 Raichu
    (328, 26, 2600, 3, NULL, 'native'),
    -- #027 Sandshrew
    (329, 27, 2700, 3, NULL, 'native'),
    -- #028 Sandslash
    (330, 28, 2800, 3, NULL, 'native'),
    -- #029 Nidoran♀
    (331, 29, 2900, 3, NULL, 'native'),
    -- #030 Nidorina
    (332, 30, 3000, 3, NULL, 'native'),
    -- #031 Nidoqueen
    (333, 31, 3100, 3, NULL, 'native'),
    -- #032 Nidoran♂
    (334, 32, 3200, 3, NULL, 'native'),
    -- #033 Nidorino
    (335, 33, 3300, 3, NULL, 'native'),
    -- #034 Nidoking
    (336, 34, 3400, 3, NULL, 'native'),
    -- #035 Clefairy
    (337, 35, 3500, 3, NULL, 'native'),
    -- #036 Clefable
    (338, 36, 3600, 3, NULL, 'native'),
    -- #039 Jigglypuff
    (339, 39, 3900, 3, NULL, 'native'),
    -- #040 Wigglytuff
    (340, 40, 4000, 3, NULL, 'native'),
    -- #041 Zubat
    (341, 41, 4100, 3, NULL, 'native'),
    -- #042 Golbat
    (342, 42, 4200, 3, NULL, 'native'),
    -- #043 Oddish
    (343, 43, 4300, 3, NULL, 'native'),
    -- #044 Gloom
    (344, 44, 4400, 3, NULL, 'native'),
    -- #045 Vileplume
    (345, 45, 4500, 3, NULL, 'native'),
    -- #046 Paras
    (346, 46, 4600, 3, NULL, 'native'),
    -- #047 Parasect
    (347, 47, 4700, 3, NULL, 'native'),
    -- #048 Venonat
    (348, 48, 4800, 3, NULL, 'native'),
    -- #049 Venomoth
    (349, 49, 4900, 3, NULL, 'native'),
    -- #050 Diglett
    (350, 50, 5000, 3, NULL, 'native'),
    -- #051 Dugtrio
    (351, 51, 5100, 3, NULL, 'native'),
    -- #054 Psyduck
    (352, 54, 5400, 3, NULL, 'native'),
    -- #055 Golduck
    (353, 55, 5500, 3, NULL, 'native'),
    -- #060 Poliwag
    (354, 60, 6000, 3, NULL, 'native'),
    -- #061 Poliwhirl
    (355, 61, 6100, 3, NULL, 'native'),
    -- #062 Poliwrath
    (356, 62, 6200, 3, NULL, 'native'),
    -- #063 Abra
    (357, 63, 6300, 3, NULL, 'native'),
    -- #064 Kadabra
    (358, 64, 6400, 3, NULL, 'native'),
    -- #065 Alakazam
    (359, 65, 6500, 3, NULL, 'native'),
    -- #066 Machop
    (360, 66, 6600, 3, NULL, 'native'),
    -- #067 Machoke
    (361, 67, 6700, 3, NULL, 'native'),
    -- #068 Machamp
    (362, 68, 6800, 3, NULL, 'native'),
    -- #069 Bellsprout
    (363, 69, 6900, 3, NULL, 'native'),
    -- #070 Weepinbell
    (364, 70, 7000, 3, NULL, 'native'),
    -- #071 Victreebel
    (365, 71, 7100, 3, NULL, 'native'),
    -- #072 Tentacool
    (366, 72, 7200, 3, NULL, 'native'),
    -- #073 Tentacruel
    (367, 73, 7300, 3, NULL, 'native'),
    -- #074 Geodude
    (368, 74, 7400, 3, NULL, 'native'),
    -- #075 Graveler
    (369, 75, 7500, 3, NULL, 'native'),
    -- #076 Golem
    (370, 76, 7600, 3, NULL, 'native'),
    -- #077 Ponyta
    (371, 77, 7700, 3, NULL, 'native'),
    -- #078 Rapidash
    (372, 78, 7800, 3, NULL, 'native'),
    -- #079 Slowpoke
    (373, 79, 7900, 3, NULL, 'native'),
    -- #080 Slowbro
    (374, 80, 8000, 3, NULL, 'native'),
    -- #081 Magnemite
    (375, 81, 8100, 3, NULL, 'native'),
    -- #082 Magneton
    (376, 82, 8200, 3, NULL, 'native'),
    -- #083 Farfetch
    (377, 83, 8300, 3, NULL, 'native'),
    -- #084 Doduo
    (378, 84, 8400, 3, NULL, 'native'),
    -- #085 Dodrio
    (379, 85, 8500, 3, NULL, 'native'),
    -- #086 Seel
    (380, 86, 8600, 3, NULL, 'native'),
    -- #087 Dewgong
    (381, 87, 8700, 3, NULL, 'native'),
    -- #088 Grimer
    (382, 88, 8800, 3, NULL, 'native'),
    -- #089 Muk
    (383, 89, 8900, 3, NULL, 'native'),
    -- #090 Shellder
    (384, 90, 9000, 3, NULL, 'native'),
    -- #091 Cloyster
    (385, 91, 9100, 3, NULL, 'native'),
    -- #092 Gastly
    (386, 92, 9200, 3, NULL, 'native'),
    -- #093 Haunter
    (387, 93, 9300, 3, NULL, 'native'),
    -- #094 Gengar
    (388, 94, 9400, 3, NULL, 'native'),
    -- #095 Onix
    (389, 95, 9500, 3, NULL, 'native'),
    -- #096 Drowzee
    (390, 96, 9600, 3, NULL, 'native'),
    -- #097 Hypno
    (391, 97, 9700, 3, NULL, 'native'),
    -- #098 Krabby
    (392, 98, 9800, 3, NULL, 'native'),
    -- #099 Kingler
    (393, 99, 9900, 3, NULL, 'native'),
    -- #100 Voltorb
    (394, 100, 10000, 3, NULL, 'native'),
    -- #101 Electrode
    (395, 101, 10100, 3, NULL, 'native'),
    -- #102 Exeggcute
    (396, 102, 10200, 3, NULL, 'native'),
    -- #103 Exeggutor
    (397, 103, 10300, 3, NULL, 'native'),
    -- #104 Cubone
    (398, 104, 10400, 3, NULL, 'native'),
    -- #105 Marowak
    (399, 105, 10500, 3, NULL, 'native'),
    -- #106 Hitmonlee
    (400, 106, 10600, 3, NULL, 'native'),
    -- #107 Hitmonchan
    (401, 107, 10700, 3, NULL, 'native'),
    -- #108 Lickitung
    (402, 108, 10800, 3, NULL, 'native'),
    -- #109 Koffing
    (403, 109, 10900, 3, NULL, 'native'),
    -- #110 Weezing
    (404, 110, 11000, 3, NULL, 'native'),
    -- #111 Rhyhorn
    (405, 111, 11100, 3, NULL, 'native'),
    -- #112 Rhydon
    (406, 112, 11200, 3, NULL, 'native'),
    -- #113 Chansey
    (407, 113, 11300, 3, NULL, 'native'),
    -- #114 Tangela
    (408, 114, 11400, 3, NULL, 'native'),
    -- #115 Kangaskhan
    (409, 115, 11500, 3, NULL, 'native'),
    -- #116 Horsea
    (410, 116, 11600, 3, NULL, 'native'),
    -- #117 Seadra
    (411, 117, 11700, 3, NULL, 'native'),
    -- #118 Goldeen
    (412, 118, 11800, 3, NULL, 'native'),
    -- #119 Seaking
    (413, 119, 11900, 3, NULL, 'native'),
    -- #120 Staryu
    (414, 120, 12000, 3, NULL, 'native'),
    -- #121 Starmie
    (415, 121, 12100, 3, NULL, 'native'),
    -- #122 Mr. Mime
    (416, 122, 12200, 3, NULL, 'native'),
    -- #123 Scyther
    (417, 123, 12300, 3, NULL, 'native'),
    -- #124 Jynx
    (418, 124, 12400, 3, NULL, 'native'),
    -- #125 Electabuzz
    (419, 125, 12500, 3, NULL, 'native'),
    -- #126 Magmar
    (420, 126, 12600, 3, NULL, 'native'),
    -- #128 Tauros
    (421, 128, 12800, 3, NULL, 'native'),
    -- #129 Magikarp
    (422, 129, 12900, 3, NULL, 'native'),
    -- #130 Gyarados
    (423, 130, 13000, 3, NULL, 'native'),
    -- #131 Lapras
    (424, 131, 13100, 3, NULL, 'native'),
    -- #132 Ditto
    (425, 132, 13200, 3, NULL, 'native'),
    -- #133 Eevee
    (426, 133, 13300, 3, NULL, 'native'),
    -- #134 Vaporeon
    (427, 134, 13400, 3, NULL, 'native'),
    -- #135 Jolteon
    (428, 135, 13500, 3, NULL, 'native'),
    -- #136 Flareon
    (429, 136, 13600, 3, NULL, 'native'),
    -- #137 Porygon
    (430, 137, 13700, 3, NULL, 'native'),
    -- #138 Omanyte
    (431, 138, 13800, 3, NULL, 'native'),
    -- #139 Omastar
    (432, 139, 13900, 3, NULL, 'native'),
    -- #140 Kabuto
    (433, 140, 14000, 3, NULL, 'native'),
    -- #141 Kabutops
    (434, 141, 14100, 3, NULL, 'native'),
    -- #142 Aerodactyl
    (435, 142, 14200, 3, NULL, 'native'),
    -- #143 Snorlax
    (436, 143, 14300, 3, NULL, 'native'),
    -- #144 Articuno
    (437, 144, 14400, 3, NULL, 'native'),
    -- #145 Zapdos
    (438, 145, 14500, 3, NULL, 'native'),
    -- #146 Moltres
    (439, 146, 14600, 3, NULL, 'native'),
    -- #147 Dratini
    (440, 147, 14700, 3, NULL, 'native'),
    -- #148 Dragonair
    (441, 148, 14800, 3, NULL, 'native'),
    -- #149 Dragonite
    (442, 149, 14900, 3, NULL, 'native'),
    -- #150 Mewtwo
    (443, 150, 15000, 3, NULL, 'native'),
    -- #151 Mew
    (444, 151, 15100, 3, NULL, 'native'),
    -- #152 Chikorita
    (445, 152, 15200, 3, NULL, 'native'),
    -- #153 Bayleef
    (446, 153, 15300, 3, NULL, 'native'),
    -- #154 Meganium
    (447, 154, 15400, 3, NULL, 'native'),
    -- #155 Cyndaquil
    (448, 155, 15500, 3, NULL, 'native'),
    -- #156 Quilava
    (449, 156, 15600, 3, NULL, 'native'),
    -- #157 Typhlosion
    (450, 157, 15700, 3, NULL, 'native'),
    -- #158 Totodile
    (451, 158, 15800, 3, NULL, 'native'),
    -- #159 Croconaw
    (452, 159, 15900, 3, NULL, 'native'),
    -- #160 Feraligatr
    (453, 160, 16000, 3, NULL, 'native'),
    -- #161 Sentret
    (454, 161, 16100, 3, NULL, 'native'),
    -- #162 Furret
    (455, 162, 16200, 3, NULL, 'native'),
    -- #163 Hoothoot
    (456, 163, 16300, 3, NULL, 'native'),
    -- #164 Noctowl
    (457, 164, 16400, 3, NULL, 'native'),
    -- #169 Crobat
    (458, 169, 16900, 3, NULL, 'native'),
    -- #170 Chinchou
    (459, 170, 17000, 3, NULL, 'native'),
    -- #171 Lanturn
    (460, 171, 17100, 3, NULL, 'native'),
    -- #172 Pichu
    (461, 172, 17200, 3, NULL, 'native'),
    -- #173 Cleffa
    (462, 173, 17300, 3, NULL, 'native'),
    -- #174 Igglybuff
    (463, 174, 17400, 3, NULL, 'native'),
    -- #175 Togepi
    (464, 175, 17500, 3, NULL, 'native'),
    -- #176 Togetic
    (465, 176, 17600, 3, NULL, 'native'),
    -- #177 Natu
    (466, 177, 17700, 3, NULL, 'native'),
    -- #178 Xatu
    (467, 178, 17800, 3, NULL, 'native'),
    -- #179 Mareep
    (468, 179, 17900, 3, NULL, 'native'),
    -- #180 Flaaffy
    (469, 180, 18000, 3, NULL, 'native'),
    -- #181 Ampharos
    (470, 181, 18100, 3, NULL, 'native'),
    -- #182 Bellossom
    (471, 182, 18200, 3, NULL, 'native'),
    -- #183 Marill
    (472, 183, 18300, 3, NULL, 'native'),
    -- #184 Azumarill
    (473, 184, 18400, 3, NULL, 'native'),
    -- #185 Sudowoodo
    (474, 185, 18500, 3, NULL, 'native'),
    -- #186 Politoed
    (475, 186, 18600, 3, NULL, 'native'),
    -- #187 Hoppip
    (476, 187, 18700, 3, NULL, 'native'),
    -- #188 Skiploom
    (477, 188, 18800, 3, NULL, 'native'),
    -- #189 Jumpluff
    (478, 189, 18900, 3, NULL, 'native'),
    -- #190 Aipom
    (479, 190, 19000, 3, NULL, 'native'),
    -- #191 Sunkern
    (480, 191, 19100, 3, NULL, 'native'),
    -- #192 Sunflora
    (481, 192, 19200, 3, NULL, 'native'),
    -- #193 Yanma
    (482, 193, 19300, 3, NULL, 'native'),
    -- #194 Wooper
    (483, 194, 19400, 3, NULL, 'native'),
    -- #195 Quagsire
    (484, 195, 19500, 3, NULL, 'native'),
    -- #196 Espeon
    (485, 196, 19600, 3, NULL, 'native'),
    -- #197 Umbreon
    (486, 197, 19700, 3, NULL, 'native'),
    -- #198 Murkrow
    (487, 198, 19800, 3, NULL, 'native'),
    -- #199 Slowking
    (488, 199, 19900, 3, NULL, 'native'),
    -- #200 Misdreavus
    (489, 200, 20000, 3, NULL, 'native'),
    -- #201 Unown
    (490, 201, 20100, 3, NULL, 'native'),
    -- #202 Wobbuffet
    (491, 202, 20200, 3, NULL, 'native'),
    -- #203 Girafarig
    (492, 203, 20300, 3, NULL, 'native'),
    -- #204 Pineco
    (493, 204, 20400, 3, NULL, 'native'),
    -- #205 Forretress
    (494, 205, 20500, 3, NULL, 'native'),
    -- #206 Dunsparce
    (495, 206, 20600, 3, NULL, 'native'),
    -- #208 Steelix
    (496, 208, 20800, 3, NULL, 'native'),
    -- #209 Snubbull
    (497, 209, 20900, 3, NULL, 'native'),
    -- #210 Granbull
    (498, 210, 21000, 3, NULL, 'native'),
    -- #211 Qwilfish
    (499, 211, 21100, 3, NULL, 'native'),
    -- #212 Scizor
    (500, 212, 21200, 3, NULL, 'native'),
    -- #213 Shuckle
    (501, 213, 21300, 3, NULL, 'native'),
    -- #214 Heracross
    (502, 214, 21400, 3, NULL, 'native'),
    -- #215 Sneasel
    (503, 215, 21500, 3, NULL, 'native'),
    -- #218 Slugma
    (504, 218, 21800, 3, NULL, 'native'),
    -- #219 Magcargo
    (505, 219, 21900, 3, NULL, 'native'),
    -- #220 Swinub
    (506, 220, 22000, 3, NULL, 'native'),
    -- #221 Piloswine
    (507, 221, 22100, 3, NULL, 'native'),
    -- #222 Corsola
    (508, 222, 22200, 3, NULL, 'native'),
    -- #223 Remoraid
    (509, 223, 22300, 3, NULL, 'native'),
    -- #224 Octillery
    (510, 224, 22400, 3, NULL, 'native'),
    -- #227 Skarmory
    (511, 227, 22700, 3, NULL, 'native'),
    -- #228 Houndour
    (512, 228, 22800, 3, NULL, 'native'),
    -- #229 Houndoom
    (513, 229, 22900, 3, NULL, 'native'),
    -- #230 Kingdra
    (514, 230, 23000, 3, NULL, 'native'),
    -- #233 Porygon2
    (515, 233, 23300, 3, NULL, 'native'),
    -- #234 Stantler
    (516, 234, 23400, 3, NULL, 'native'),
    -- #235 Smeargle
    (517, 235, 23500, 3, NULL, 'native'),
    -- #236 Tyrogue
    (518, 236, 23600, 3, NULL, 'native'),
    -- #237 Hitmontop
    (519, 237, 23700, 3, NULL, 'native'),
    -- #238 Smoochum
    (520, 238, 23800, 3, NULL, 'native'),
    -- #239 Elekid
    (521, 239, 23900, 3, NULL, 'native'),
    -- #240 Magby
    (522, 240, 24000, 3, NULL, 'native'),
    -- #241 Miltank
    (523, 241, 24100, 3, NULL, 'native'),
    -- #242 Blissey
    (524, 242, 24200, 3, NULL, 'native'),
    -- #243 Raikou
    (525, 243, 24300, 3, NULL, 'native'),
    -- #244 Entei
    (526, 244, 24400, 3, NULL, 'native'),
    -- #245 Suicune
    (527, 245, 24500, 3, NULL, 'native'),
    -- #246 Larvitar
    (528, 246, 24600, 3, NULL, 'native'),
    -- #247 Pupitar
    (529, 247, 24700, 3, NULL, 'native'),
    -- #248 Tyranitar
    (530, 248, 24800, 3, NULL, 'native'),
    -- #249 Lugia
    (531, 249, 24900, 3, NULL, 'native'),
    -- #250 Ho-Oh
    (532, 250, 25000, 3, NULL, 'native'),
    -- #251 Celebi
    (533, 251, 25100, 3, NULL, 'native');