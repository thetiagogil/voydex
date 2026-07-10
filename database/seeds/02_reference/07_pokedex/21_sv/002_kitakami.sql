-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Kitakami Pokedex number.
-- Cross-check: PokemonDB The Teal Mask Pokedex, Serebii Kitakami Pokedex, and legacy Voydex Kitakami Pokedex entry seed.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Kitakami Pokedex entries for Pokémon Scarlet / Violet: The Teal Mask.
-- Kitakami contains 200 Pokedex species.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Spinarak
  (2401, 167, NULL, 1, TRUE),
  -- #002 Ariados
  (2401, 168, NULL, 2, TRUE),
  -- #003 Yanma
  (2401, 193, NULL, 3, TRUE),
  -- #004 Yanmega
  (2401, 469, NULL, 4, TRUE),
  -- #005 Wooper
  (2401, 194, NULL, 5, TRUE),
  -- #006 Quagsire
  (2401, 195, NULL, 6, TRUE),
  -- #007 Poochyena
  (2401, 261, NULL, 7, TRUE),
  -- #008 Mightyena
  (2401, 262, NULL, 8, TRUE),
  -- #009 Volbeat
  (2401, 313, NULL, 9, TRUE),
  -- #010 Illumise
  (2401, 314, NULL, 10, TRUE),
  -- #011 Corphish
  (2401, 341, NULL, 11, TRUE),
  -- #012 Crawdaunt
  (2401, 342, NULL, 12, TRUE),
  -- #013 Sewaddle
  (2401, 540, NULL, 13, TRUE),
  -- #014 Swadloon
  (2401, 541, NULL, 14, TRUE),
  -- #015 Leavanny
  (2401, 542, NULL, 15, TRUE),
  -- #016 Cutiefly
  (2401, 742, NULL, 16, TRUE),
  -- #017 Ribombee
  (2401, 743, NULL, 17, TRUE),
  -- #018 Ekans
  (2401, 23, NULL, 18, TRUE),
  -- #019 Arbok
  (2401, 24, NULL, 19, TRUE),
  -- #020 Pichu
  (2401, 172, NULL, 20, TRUE),
  -- #021 Pikachu
  (2401, 25, NULL, 21, TRUE),
  -- #022 Raichu
  (2401, 26, NULL, 22, TRUE),
  -- #023 Bellsprout
  (2401, 69, NULL, 23, TRUE),
  -- #024 Weepinbell
  (2401, 70, NULL, 24, TRUE),
  -- #025 Victreebel
  (2401, 71, NULL, 25, TRUE),
  -- #026 Sentret
  (2401, 161, NULL, 26, TRUE),
  -- #027 Furret
  (2401, 162, NULL, 27, TRUE),
  -- #028 Starly
  (2401, 396, NULL, 28, TRUE),
  -- #029 Staravia
  (2401, 397, NULL, 29, TRUE),
  -- #030 Staraptor
  (2401, 398, NULL, 30, TRUE),
  -- #031 Fomantis
  (2401, 753, NULL, 31, TRUE),
  -- #032 Lurantis
  (2401, 754, NULL, 32, TRUE),
  -- #033 Applin
  (2401, 840, NULL, 33, TRUE),
  -- #034 Flapple
  (2401, 841, NULL, 34, TRUE),
  -- #035 Appletun
  (2401, 842, NULL, 35, TRUE),
  -- #036 Dipplin
  (2401, 1011, NULL, 36, TRUE),
  -- #037 Vulpix
  (2401, 37, NULL, 37, TRUE),
  -- #038 Ninetales
  (2401, 38, NULL, 38, TRUE),
  -- #039 Poliwag
  (2401, 60, NULL, 39, TRUE),
  -- #040 Poliwhirl
  (2401, 61, NULL, 40, TRUE),
  -- #041 Poliwrath
  (2401, 62, NULL, 41, TRUE),
  -- #042 Politoed
  (2401, 186, NULL, 42, TRUE),
  -- #043 Magikarp
  (2401, 129, NULL, 43, TRUE),
  -- #044 Gyarados
  (2401, 130, NULL, 44, TRUE),
  -- #045 Hoothoot
  (2401, 163, NULL, 45, TRUE),
  -- #046 Noctowl
  (2401, 164, NULL, 46, TRUE),
  -- #047 Aipom
  (2401, 190, NULL, 47, TRUE),
  -- #048 Ambipom
  (2401, 424, NULL, 48, TRUE),
  -- #049 Heracross
  (2401, 214, NULL, 49, TRUE),
  -- #050 Swinub
  (2401, 220, NULL, 50, TRUE),
  -- #051 Piloswine
  (2401, 221, NULL, 51, TRUE),
  -- #052 Mamoswine
  (2401, 473, NULL, 52, TRUE),
  -- #053 Stantler
  (2401, 234, NULL, 53, TRUE),
  -- #054 Seedot
  (2401, 273, NULL, 54, TRUE),
  -- #055 Nuzleaf
  (2401, 274, NULL, 55, TRUE),
  -- #056 Shiftry
  (2401, 275, NULL, 56, TRUE),
  -- #057 Ralts
  (2401, 280, NULL, 57, TRUE),
  -- #058 Kirlia
  (2401, 281, NULL, 58, TRUE),
  -- #059 Gardevoir
  (2401, 282, NULL, 59, TRUE),
  -- #060 Gallade
  (2401, 475, NULL, 60, TRUE),
  -- #061 Kricketot
  (2401, 401, NULL, 61, TRUE),
  -- #062 Kricketune
  (2401, 402, NULL, 62, TRUE),
  -- #063 Pachirisu
  (2401, 417, NULL, 63, TRUE),
  -- #064 Riolu
  (2401, 447, NULL, 64, TRUE),
  -- #065 Lucario
  (2401, 448, NULL, 65, TRUE),
  -- #066 Petilil
  (2401, 548, NULL, 66, TRUE),
  -- #067 Lilligant
  (2401, 549, NULL, 67, TRUE),
  -- #068 Phantump
  (2401, 708, NULL, 68, TRUE),
  -- #069 Trevenant
  (2401, 709, NULL, 69, TRUE),
  -- #070 Rockruff
  (2401, 744, NULL, 70, TRUE),
  -- #071 Lycanroc
  (2401, 745, NULL, 71, TRUE),
  -- #072 Skwovet
  (2401, 819, NULL, 72, TRUE),
  -- #073 Greedent
  (2401, 820, NULL, 73, TRUE),
  -- #074 Toedscool
  (2401, 948, NULL, 74, TRUE),
  -- #075 Toedscruel
  (2401, 949, NULL, 75, TRUE),
  -- #076 Poltchageist
  (2401, 1012, NULL, 76, TRUE),
  -- #077 Sinistcha
  (2401, 1013, NULL, 77, TRUE),
  -- #078 Growlithe
  (2401, 58, NULL, 78, TRUE),
  -- #079 Arcanine
  (2401, 59, NULL, 79, TRUE),
  -- #080 Geodude
  (2401, 74, NULL, 80, TRUE),
  -- #081 Graveler
  (2401, 75, NULL, 81, TRUE),
  -- #082 Golem
  (2401, 76, NULL, 82, TRUE),
  -- #083 Bonsly
  (2401, 438, NULL, 83, TRUE),
  -- #084 Sudowoodo
  (2401, 185, NULL, 84, TRUE),
  -- #085 Timburr
  (2401, 532, NULL, 85, TRUE),
  -- #086 Gurdurr
  (2401, 533, NULL, 86, TRUE),
  -- #087 Conkeldurr
  (2401, 534, NULL, 87, TRUE),
  -- #088 Noibat
  (2401, 714, NULL, 88, TRUE),
  -- #089 Noivern
  (2401, 715, NULL, 89, TRUE),
  -- #090 Arrokuda
  (2401, 846, NULL, 90, TRUE),
  -- #091 Barraskewda
  (2401, 847, NULL, 91, TRUE),
  -- #092 Hatenna
  (2401, 856, NULL, 92, TRUE),
  -- #093 Hattrem
  (2401, 857, NULL, 93, TRUE),
  -- #094 Hatterene
  (2401, 858, NULL, 94, TRUE),
  -- #095 Morpeko
  (2401, 877, NULL, 95, TRUE),
  -- #096 Orthworm
  (2401, 968, NULL, 96, TRUE),
  -- #097 Tandemaus
  (2401, 924, NULL, 97, TRUE),
  -- #098 Maushold
  (2401, 925, NULL, 98, TRUE),
  -- #099 Mankey
  (2401, 56, NULL, 99, TRUE),
  -- #100 Primeape
  (2401, 57, NULL, 100, TRUE),
  -- #101 Annihilape
  (2401, 979, NULL, 101, TRUE),
  -- #102 Munchlax
  (2401, 446, NULL, 102, TRUE),
  -- #103 Snorlax
  (2401, 143, NULL, 103, TRUE),
  -- #104 Lotad
  (2401, 270, NULL, 104, TRUE),
  -- #105 Lombre
  (2401, 271, NULL, 105, TRUE),
  -- #106 Ludicolo
  (2401, 272, NULL, 106, TRUE),
  -- #107 Nosepass
  (2401, 299, NULL, 107, TRUE),
  -- #108 Probopass
  (2401, 476, NULL, 108, TRUE),
  -- #109 Shinx
  (2401, 403, NULL, 109, TRUE),
  -- #110 Luxio
  (2401, 404, NULL, 110, TRUE),
  -- #111 Luxray
  (2401, 405, NULL, 111, TRUE),
  -- #112 Grubbin
  (2401, 736, NULL, 112, TRUE),
  -- #113 Charjabug
  (2401, 737, NULL, 113, TRUE),
  -- #114 Vikavolt
  (2401, 738, NULL, 114, TRUE),
  -- #115 Oricorio
  (2401, 741, NULL, 115, TRUE),
  -- #116 Sandshrew
  (2401, 27, NULL, 116, TRUE),
  -- #117 Sandslash
  (2401, 28, NULL, 117, TRUE),
  -- #118 Gastly
  (2401, 92, NULL, 118, TRUE),
  -- #119 Haunter
  (2401, 93, NULL, 119, TRUE),
  -- #120 Gengar
  (2401, 94, NULL, 120, TRUE),
  -- #121 Gligar
  (2401, 207, NULL, 121, TRUE),
  -- #122 Gliscor
  (2401, 472, NULL, 122, TRUE),
  -- #123 Houndour
  (2401, 228, NULL, 123, TRUE),
  -- #124 Houndoom
  (2401, 229, NULL, 124, TRUE),
  -- #125 Spoink
  (2401, 325, NULL, 125, TRUE),
  -- #126 Grumpig
  (2401, 326, NULL, 126, TRUE),
  -- #127 Vullaby
  (2401, 629, NULL, 127, TRUE),
  -- #128 Mandibuzz
  (2401, 630, NULL, 128, TRUE),
  -- #129 Mudbray
  (2401, 749, NULL, 129, TRUE),
  -- #130 Mudsdale
  (2401, 750, NULL, 130, TRUE),
  -- #131 Jangmo-o
  (2401, 782, NULL, 131, TRUE),
  -- #132 Hakamo-o
  (2401, 783, NULL, 132, TRUE),
  -- #133 Kommo-o
  (2401, 784, NULL, 133, TRUE),
  -- #134 Bombirdier
  (2401, 962, NULL, 134, TRUE),
  -- #135 Koffing
  (2401, 109, NULL, 135, TRUE),
  -- #136 Weezing
  (2401, 110, NULL, 136, TRUE),
  -- #137 Mienfoo
  (2401, 619, NULL, 137, TRUE),
  -- #138 Mienshao
  (2401, 620, NULL, 138, TRUE),
  -- #139 Duskull
  (2401, 355, NULL, 139, TRUE),
  -- #140 Dusclops
  (2401, 356, NULL, 140, TRUE),
  -- #141 Dusknoir
  (2401, 477, NULL, 141, TRUE),
  -- #142 Chingling
  (2401, 433, NULL, 142, TRUE),
  -- #143 Chimecho
  (2401, 358, NULL, 143, TRUE),
  -- #144 Slugma
  (2401, 218, NULL, 144, TRUE),
  -- #145 Magcargo
  (2401, 219, NULL, 145, TRUE),
  -- #146 Litwick
  (2401, 607, NULL, 146, TRUE),
  -- #147 Lampent
  (2401, 608, NULL, 147, TRUE),
  -- #148 Chandelure
  (2401, 609, NULL, 148, TRUE),
  -- #149 Surskit
  (2401, 283, NULL, 149, TRUE),
  -- #150 Masquerain
  (2401, 284, NULL, 150, TRUE),
  -- #151 Cleffa
  (2401, 173, NULL, 151, TRUE),
  -- #152 Clefairy
  (2401, 35, NULL, 152, TRUE),
  -- #153 Clefable
  (2401, 36, NULL, 153, TRUE),
  -- #154 Bronzor
  (2401, 436, NULL, 154, TRUE),
  -- #155 Bronzong
  (2401, 437, NULL, 155, TRUE),
  -- #156 Glimmet
  (2401, 969, NULL, 156, TRUE),
  -- #157 Glimmora
  (2401, 970, NULL, 157, TRUE),
  -- #158 Feebas
  (2401, 349, NULL, 158, TRUE),
  -- #159 Milotic
  (2401, 350, NULL, 159, TRUE),
  -- #160 Dunsparce
  (2401, 206, NULL, 160, TRUE),
  -- #161 Dudunsparce
  (2401, 982, NULL, 161, TRUE),
  -- #162 Barboach
  (2401, 339, NULL, 162, TRUE),
  -- #163 Whiscash
  (2401, 340, NULL, 163, TRUE),
  -- #164 Gible
  (2401, 443, NULL, 164, TRUE),
  -- #165 Gabite
  (2401, 444, NULL, 165, TRUE),
  -- #166 Garchomp
  (2401, 445, NULL, 166, TRUE),
  -- #167 Carbink
  (2401, 703, NULL, 167, TRUE),
  -- #168 Salandit
  (2401, 757, NULL, 168, TRUE),
  -- #169 Salazzle
  (2401, 758, NULL, 169, TRUE),
  -- #170 Sneasel
  (2401, 215, NULL, 170, TRUE),
  -- #171 Weavile
  (2401, 461, NULL, 171, TRUE),
  -- #172 Snorunt
  (2401, 361, NULL, 172, TRUE),
  -- #173 Glalie
  (2401, 362, NULL, 173, TRUE),
  -- #174 Froslass
  (2401, 478, NULL, 174, TRUE),
  -- #175 Tynamo
  (2401, 602, NULL, 175, TRUE),
  -- #176 Eelektrik
  (2401, 603, NULL, 176, TRUE),
  -- #177 Eelektross
  (2401, 604, NULL, 177, TRUE),
  -- #178 Goomy
  (2401, 704, NULL, 178, TRUE),
  -- #179 Sliggoo
  (2401, 705, NULL, 179, TRUE),
  -- #180 Goodra
  (2401, 706, NULL, 180, TRUE),
  -- #181 Ducklett
  (2401, 580, NULL, 181, TRUE),
  -- #182 Swanna
  (2401, 581, NULL, 182, TRUE),
  -- #183 Chewtle
  (2401, 833, NULL, 183, TRUE),
  -- #184 Drednaw
  (2401, 834, NULL, 184, TRUE),
  -- #185 Cramorant
  (2401, 845, NULL, 185, TRUE),
  -- #186 Pawniard
  (2401, 624, NULL, 186, TRUE),
  -- #187 Bisharp
  (2401, 625, NULL, 187, TRUE),
  -- #188 Kingambit
  (2401, 983, NULL, 188, TRUE),
  -- #189 Mimikyu
  (2401, 778, NULL, 189, TRUE),
  -- #190 Impidimp
  (2401, 859, NULL, 190, TRUE),
  -- #191 Morgrem
  (2401, 860, NULL, 191, TRUE),
  -- #192 Grimmsnarl
  (2401, 861, NULL, 192, TRUE),
  -- #193 Indeedee
  (2401, 876, NULL, 193, TRUE),
  -- #194 Basculin
  (2401, 550, NULL, 194, TRUE),
  -- #195 Basculegion
  (2401, 902, NULL, 195, TRUE),
  -- #196 Ursaluna
  (2401, 901, NULL, 196, TRUE),
  -- #197 Okidogi
  (2401, 1014, NULL, 197, TRUE),
  -- #198 Munkidori
  (2401, 1015, NULL, 198, TRUE),
  -- #199 Fezandipiti
  (2401, 1016, NULL, 199, TRUE),
  -- #200 Ogerpon
  (2401, 1017, NULL, 200, TRUE);
