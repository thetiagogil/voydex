-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Hisui Pokedex number.
-- Cross-check: PokemonDB Legends: Arceus Pokedex, Serebii Hisui Pokedex, and legacy Voydex Hisui Pokedex entry seed.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Hisui Pokedex entries for Pokémon Legends: Arceus.
-- Hisui contains 242 Pokedex species; Phione, Manaphy, Shaymin, and Darkrai are source-visible but not required for completion.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Rowlet
  (2201, 722, NULL, 1, TRUE),
  -- #002 Dartrix
  (2201, 723, NULL, 2, TRUE),
  -- #003 Decidueye
  (2201, 724, NULL, 3, TRUE),
  -- #004 Cyndaquil
  (2201, 155, NULL, 4, TRUE),
  -- #005 Quilava
  (2201, 156, NULL, 5, TRUE),
  -- #006 Typhlosion
  (2201, 157, NULL, 6, TRUE),
  -- #007 Oshawott
  (2201, 501, NULL, 7, TRUE),
  -- #008 Dewott
  (2201, 502, NULL, 8, TRUE),
  -- #009 Samurott
  (2201, 503, NULL, 9, TRUE),
  -- #010 Bidoof
  (2201, 399, NULL, 10, TRUE),
  -- #011 Bibarel
  (2201, 400, NULL, 11, TRUE),
  -- #012 Starly
  (2201, 396, NULL, 12, TRUE),
  -- #013 Staravia
  (2201, 397, NULL, 13, TRUE),
  -- #014 Staraptor
  (2201, 398, NULL, 14, TRUE),
  -- #015 Shinx
  (2201, 403, NULL, 15, TRUE),
  -- #016 Luxio
  (2201, 404, NULL, 16, TRUE),
  -- #017 Luxray
  (2201, 405, NULL, 17, TRUE),
  -- #018 Wurmple
  (2201, 265, NULL, 18, TRUE),
  -- #019 Silcoon
  (2201, 266, NULL, 19, TRUE),
  -- #020 Beautifly
  (2201, 267, NULL, 20, TRUE),
  -- #021 Cascoon
  (2201, 268, NULL, 21, TRUE),
  -- #022 Dustox
  (2201, 269, NULL, 22, TRUE),
  -- #023 Ponyta
  (2201, 77, NULL, 23, TRUE),
  -- #024 Rapidash
  (2201, 78, NULL, 24, TRUE),
  -- #025 Eevee
  (2201, 133, NULL, 25, TRUE),
  -- #026 Vaporeon
  (2201, 134, NULL, 26, TRUE),
  -- #027 Jolteon
  (2201, 135, NULL, 27, TRUE),
  -- #028 Flareon
  (2201, 136, NULL, 28, TRUE),
  -- #029 Espeon
  (2201, 196, NULL, 29, TRUE),
  -- #030 Umbreon
  (2201, 197, NULL, 30, TRUE),
  -- #031 Leafeon
  (2201, 470, NULL, 31, TRUE),
  -- #032 Glaceon
  (2201, 471, NULL, 32, TRUE),
  -- #033 Sylveon
  (2201, 700, NULL, 33, TRUE),
  -- #034 Zubat
  (2201, 41, NULL, 34, TRUE),
  -- #035 Golbat
  (2201, 42, NULL, 35, TRUE),
  -- #036 Crobat
  (2201, 169, NULL, 36, TRUE),
  -- #037 Drifloon
  (2201, 425, NULL, 37, TRUE),
  -- #038 Drifblim
  (2201, 426, NULL, 38, TRUE),
  -- #039 Kricketot
  (2201, 401, NULL, 39, TRUE),
  -- #040 Kricketune
  (2201, 402, NULL, 40, TRUE),
  -- #041 Buizel
  (2201, 418, NULL, 41, TRUE),
  -- #042 Floatzel
  (2201, 419, NULL, 42, TRUE),
  -- #043 Burmy
  (2201, 412, NULL, 43, TRUE),
  -- #044 Wormadam
  (2201, 413, NULL, 44, TRUE),
  -- #045 Mothim
  (2201, 414, NULL, 45, TRUE),
  -- #046 Geodude
  (2201, 74, NULL, 46, TRUE),
  -- #047 Graveler
  (2201, 75, NULL, 47, TRUE),
  -- #048 Golem
  (2201, 76, NULL, 48, TRUE),
  -- #049 Stantler
  (2201, 234, NULL, 49, TRUE),
  -- #050 Wyrdeer
  (2201, 899, NULL, 50, TRUE),
  -- #051 Munchlax
  (2201, 446, NULL, 51, TRUE),
  -- #052 Snorlax
  (2201, 143, NULL, 52, TRUE),
  -- #053 Paras
  (2201, 46, NULL, 53, TRUE),
  -- #054 Parasect
  (2201, 47, NULL, 54, TRUE),
  -- #055 Pichu
  (2201, 172, NULL, 55, TRUE),
  -- #056 Pikachu
  (2201, 25, NULL, 56, TRUE),
  -- #057 Raichu
  (2201, 26, NULL, 57, TRUE),
  -- #058 Abra
  (2201, 63, NULL, 58, TRUE),
  -- #059 Kadabra
  (2201, 64, NULL, 59, TRUE),
  -- #060 Alakazam
  (2201, 65, NULL, 60, TRUE),
  -- #061 Chimchar
  (2201, 390, NULL, 61, TRUE),
  -- #062 Monferno
  (2201, 391, NULL, 62, TRUE),
  -- #063 Infernape
  (2201, 392, NULL, 63, TRUE),
  -- #064 Buneary
  (2201, 427, NULL, 64, TRUE),
  -- #065 Lopunny
  (2201, 428, NULL, 65, TRUE),
  -- #066 Cherubi
  (2201, 420, NULL, 66, TRUE),
  -- #067 Cherrim
  (2201, 421, NULL, 67, TRUE),
  -- #068 Psyduck
  (2201, 54, NULL, 68, TRUE),
  -- #069 Golduck
  (2201, 55, NULL, 69, TRUE),
  -- #070 Combee
  (2201, 415, NULL, 70, TRUE),
  -- #071 Vespiquen
  (2201, 416, NULL, 71, TRUE),
  -- #072 Scyther
  (2201, 123, NULL, 72, TRUE),
  -- #073 Kleavor
  (2201, 900, NULL, 73, TRUE),
  -- #074 Scizor
  (2201, 212, NULL, 74, TRUE),
  -- #075 Heracross
  (2201, 214, NULL, 75, TRUE),
  -- #076 Mime Jr.
  (2201, 439, NULL, 76, TRUE),
  -- #077 Mr. Mime
  (2201, 122, NULL, 77, TRUE),
  -- #078 Aipom
  (2201, 190, NULL, 78, TRUE),
  -- #079 Ambipom
  (2201, 424, NULL, 79, TRUE),
  -- #080 Magikarp
  (2201, 129, NULL, 80, TRUE),
  -- #081 Gyarados
  (2201, 130, NULL, 81, TRUE),
  -- #082 Shellos
  (2201, 422, NULL, 82, TRUE),
  -- #083 Gastrodon
  (2201, 423, NULL, 83, TRUE),
  -- #084 Qwilfish
  (2201, 211, NULL, 84, TRUE),
  -- #085 Overqwil
  (2201, 904, NULL, 85, TRUE),
  -- #086 Happiny
  (2201, 440, NULL, 86, TRUE),
  -- #087 Chansey
  (2201, 113, NULL, 87, TRUE),
  -- #088 Blissey
  (2201, 242, NULL, 88, TRUE),
  -- #089 Budew
  (2201, 406, NULL, 89, TRUE),
  -- #090 Roselia
  (2201, 315, NULL, 90, TRUE),
  -- #091 Roserade
  (2201, 407, NULL, 91, TRUE),
  -- #092 Carnivine
  (2201, 455, NULL, 92, TRUE),
  -- #093 Petilil
  (2201, 548, NULL, 93, TRUE),
  -- #094 Lilligant
  (2201, 549, NULL, 94, TRUE),
  -- #095 Tangela
  (2201, 114, NULL, 95, TRUE),
  -- #096 Tangrowth
  (2201, 465, NULL, 96, TRUE),
  -- #097 Barboach
  (2201, 339, NULL, 97, TRUE),
  -- #098 Whiscash
  (2201, 340, NULL, 98, TRUE),
  -- #099 Croagunk
  (2201, 453, NULL, 99, TRUE),
  -- #100 Toxicroak
  (2201, 454, NULL, 100, TRUE),
  -- #101 Ralts
  (2201, 280, NULL, 101, TRUE),
  -- #102 Kirlia
  (2201, 281, NULL, 102, TRUE),
  -- #103 Gardevoir
  (2201, 282, NULL, 103, TRUE),
  -- #104 Gallade
  (2201, 475, NULL, 104, TRUE),
  -- #105 Yanma
  (2201, 193, NULL, 105, TRUE),
  -- #106 Yanmega
  (2201, 469, NULL, 106, TRUE),
  -- #107 Hippopotas
  (2201, 449, NULL, 107, TRUE),
  -- #108 Hippowdon
  (2201, 450, NULL, 108, TRUE),
  -- #109 Pachirisu
  (2201, 417, NULL, 109, TRUE),
  -- #110 Stunky
  (2201, 434, NULL, 110, TRUE),
  -- #111 Skuntank
  (2201, 435, NULL, 111, TRUE),
  -- #112 Teddiursa
  (2201, 216, NULL, 112, TRUE),
  -- #113 Ursaring
  (2201, 217, NULL, 113, TRUE),
  -- #114 Ursaluna
  (2201, 901, NULL, 114, TRUE),
  -- #115 Goomy
  (2201, 704, NULL, 115, TRUE),
  -- #116 Sliggoo
  (2201, 705, NULL, 116, TRUE),
  -- #117 Goodra
  (2201, 706, NULL, 117, TRUE),
  -- #118 Onix
  (2201, 95, NULL, 118, TRUE),
  -- #119 Steelix
  (2201, 208, NULL, 119, TRUE),
  -- #120 Rhyhorn
  (2201, 111, NULL, 120, TRUE),
  -- #121 Rhydon
  (2201, 112, NULL, 121, TRUE),
  -- #122 Rhyperior
  (2201, 464, NULL, 122, TRUE),
  -- #123 Bonsly
  (2201, 438, NULL, 123, TRUE),
  -- #124 Sudowoodo
  (2201, 185, NULL, 124, TRUE),
  -- #125 Lickitung
  (2201, 108, NULL, 125, TRUE),
  -- #126 Lickilicky
  (2201, 463, NULL, 126, TRUE),
  -- #127 Togepi
  (2201, 175, NULL, 127, TRUE),
  -- #128 Togetic
  (2201, 176, NULL, 128, TRUE),
  -- #129 Togekiss
  (2201, 468, NULL, 129, TRUE),
  -- #130 Turtwig
  (2201, 387, NULL, 130, TRUE),
  -- #131 Grotle
  (2201, 388, NULL, 131, TRUE),
  -- #132 Torterra
  (2201, 389, NULL, 132, TRUE),
  -- #133 Porygon
  (2201, 137, NULL, 133, TRUE),
  -- #134 Porygon2
  (2201, 233, NULL, 134, TRUE),
  -- #135 Porygon-Z
  (2201, 474, NULL, 135, TRUE),
  -- #136 Gastly
  (2201, 92, NULL, 136, TRUE),
  -- #137 Haunter
  (2201, 93, NULL, 137, TRUE),
  -- #138 Gengar
  (2201, 94, NULL, 138, TRUE),
  -- #139 Spiritomb
  (2201, 442, NULL, 139, TRUE),
  -- #140 Murkrow
  (2201, 198, NULL, 140, TRUE),
  -- #141 Honchkrow
  (2201, 430, NULL, 141, TRUE),
  -- #142 Unown
  (2201, 201, NULL, 142, TRUE),
  -- #143 Spheal
  (2201, 363, NULL, 143, TRUE),
  -- #144 Sealeo
  (2201, 364, NULL, 144, TRUE),
  -- #145 Walrein
  (2201, 365, NULL, 145, TRUE),
  -- #146 Remoraid
  (2201, 223, NULL, 146, TRUE),
  -- #147 Octillery
  (2201, 224, NULL, 147, TRUE),
  -- #148 Skorupi
  (2201, 451, NULL, 148, TRUE),
  -- #149 Drapion
  (2201, 452, NULL, 149, TRUE),
  -- #150 Growlithe
  (2201, 58, NULL, 150, TRUE),
  -- #151 Arcanine
  (2201, 59, NULL, 151, TRUE),
  -- #152 Glameow
  (2201, 431, NULL, 152, TRUE),
  -- #153 Purugly
  (2201, 432, NULL, 153, TRUE),
  -- #154 Machop
  (2201, 66, NULL, 154, TRUE),
  -- #155 Machoke
  (2201, 67, NULL, 155, TRUE),
  -- #156 Machamp
  (2201, 68, NULL, 156, TRUE),
  -- #157 Chatot
  (2201, 441, NULL, 157, TRUE),
  -- #158 Duskull
  (2201, 355, NULL, 158, TRUE),
  -- #159 Dusclops
  (2201, 356, NULL, 159, TRUE),
  -- #160 Dusknoir
  (2201, 477, NULL, 160, TRUE),
  -- #161 Piplup
  (2201, 393, NULL, 161, TRUE),
  -- #162 Prinplup
  (2201, 394, NULL, 162, TRUE),
  -- #163 Empoleon
  (2201, 395, NULL, 163, TRUE),
  -- #164 Mantyke
  (2201, 458, NULL, 164, TRUE),
  -- #165 Mantine
  (2201, 226, NULL, 165, TRUE),
  -- #166 Basculin
  (2201, 550, NULL, 166, TRUE),
  -- #167 Basculegion
  (2201, 902, NULL, 167, TRUE),
  -- #168 Vulpix
  (2201, 37, NULL, 168, TRUE),
  -- #169 Ninetales
  (2201, 38, NULL, 169, TRUE),
  -- #170 Tentacool
  (2201, 72, NULL, 170, TRUE),
  -- #171 Tentacruel
  (2201, 73, NULL, 171, TRUE),
  -- #172 Finneon
  (2201, 456, NULL, 172, TRUE),
  -- #173 Lumineon
  (2201, 457, NULL, 173, TRUE),
  -- #174 Magby
  (2201, 240, NULL, 174, TRUE),
  -- #175 Magmar
  (2201, 126, NULL, 175, TRUE),
  -- #176 Magmortar
  (2201, 467, NULL, 176, TRUE),
  -- #177 Magnemite
  (2201, 81, NULL, 177, TRUE),
  -- #178 Magneton
  (2201, 82, NULL, 178, TRUE),
  -- #179 Magnezone
  (2201, 462, NULL, 179, TRUE),
  -- #180 Bronzor
  (2201, 436, NULL, 180, TRUE),
  -- #181 Bronzong
  (2201, 437, NULL, 181, TRUE),
  -- #182 Elekid
  (2201, 239, NULL, 182, TRUE),
  -- #183 Electabuzz
  (2201, 125, NULL, 183, TRUE),
  -- #184 Electivire
  (2201, 466, NULL, 184, TRUE),
  -- #185 Gligar
  (2201, 207, NULL, 185, TRUE),
  -- #186 Gliscor
  (2201, 472, NULL, 186, TRUE),
  -- #187 Gible
  (2201, 443, NULL, 187, TRUE),
  -- #188 Gabite
  (2201, 444, NULL, 188, TRUE),
  -- #189 Garchomp
  (2201, 445, NULL, 189, TRUE),
  -- #190 Nosepass
  (2201, 299, NULL, 190, TRUE),
  -- #191 Probopass
  (2201, 476, NULL, 191, TRUE),
  -- #192 Voltorb
  (2201, 100, NULL, 192, TRUE),
  -- #193 Electrode
  (2201, 101, NULL, 193, TRUE),
  -- #194 Rotom
  (2201, 479, NULL, 194, TRUE),
  -- #195 Chingling
  (2201, 433, NULL, 195, TRUE),
  -- #196 Chimecho
  (2201, 358, NULL, 196, TRUE),
  -- #197 Misdreavus
  (2201, 200, NULL, 197, TRUE),
  -- #198 Mismagius
  (2201, 429, NULL, 198, TRUE),
  -- #199 Cleffa
  (2201, 173, NULL, 199, TRUE),
  -- #200 Clefairy
  (2201, 35, NULL, 200, TRUE),
  -- #201 Clefable
  (2201, 36, NULL, 201, TRUE),
  -- #202 Sneasel
  (2201, 215, NULL, 202, TRUE),
  -- #203 Sneasler
  (2201, 903, NULL, 203, TRUE),
  -- #204 Weavile
  (2201, 461, NULL, 204, TRUE),
  -- #205 Snorunt
  (2201, 361, NULL, 205, TRUE),
  -- #206 Glalie
  (2201, 362, NULL, 206, TRUE),
  -- #207 Froslass
  (2201, 478, NULL, 207, TRUE),
  -- #208 Cranidos
  (2201, 408, NULL, 208, TRUE),
  -- #209 Rampardos
  (2201, 409, NULL, 209, TRUE),
  -- #210 Shieldon
  (2201, 410, NULL, 210, TRUE),
  -- #211 Bastiodon
  (2201, 411, NULL, 211, TRUE),
  -- #212 Swinub
  (2201, 220, NULL, 212, TRUE),
  -- #213 Piloswine
  (2201, 221, NULL, 213, TRUE),
  -- #214 Mamoswine
  (2201, 473, NULL, 214, TRUE),
  -- #215 Bergmite
  (2201, 712, NULL, 215, TRUE),
  -- #216 Avalugg
  (2201, 713, NULL, 216, TRUE),
  -- #217 Snover
  (2201, 459, NULL, 217, TRUE),
  -- #218 Abomasnow
  (2201, 460, NULL, 218, TRUE),
  -- #219 Zorua
  (2201, 570, NULL, 219, TRUE),
  -- #220 Zoroark
  (2201, 571, NULL, 220, TRUE),
  -- #221 Rufflet
  (2201, 627, NULL, 221, TRUE),
  -- #222 Braviary
  (2201, 628, NULL, 222, TRUE),
  -- #223 Riolu
  (2201, 447, NULL, 223, TRUE),
  -- #224 Lucario
  (2201, 448, NULL, 224, TRUE),
  -- #225 Uxie
  (2201, 480, NULL, 225, TRUE),
  -- #226 Mesprit
  (2201, 481, NULL, 226, TRUE),
  -- #227 Azelf
  (2201, 482, NULL, 227, TRUE),
  -- #228 Heatran
  (2201, 485, NULL, 228, TRUE),
  -- #229 Regigigas
  (2201, 486, NULL, 229, TRUE),
  -- #230 Cresselia
  (2201, 488, NULL, 230, TRUE),
  -- #231 Tornadus
  (2201, 641, NULL, 231, TRUE),
  -- #232 Thundurus
  (2201, 642, NULL, 232, TRUE),
  -- #233 Landorus
  (2201, 645, NULL, 233, TRUE),
  -- #234 Enamorus
  (2201, 905, NULL, 234, TRUE),
  -- #235 Dialga
  (2201, 483, NULL, 235, TRUE),
  -- #236 Palkia
  (2201, 484, NULL, 236, TRUE),
  -- #237 Giratina
  (2201, 487, NULL, 237, TRUE),
  -- #238 Arceus
  (2201, 493, NULL, 238, TRUE),
  -- #239 Phione
  (2201, 489, NULL, 239, FALSE),
  -- #240 Manaphy
  (2201, 490, NULL, 240, FALSE),
  -- #241 Shaymin
  (2201, 492, NULL, 241, FALSE),
  -- #242 Darkrai
  (2201, 491, NULL, 242, FALSE);
