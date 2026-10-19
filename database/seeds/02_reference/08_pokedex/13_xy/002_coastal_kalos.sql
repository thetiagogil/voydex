-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Coastal Kalos Pokedex number.
-- Cross-check: PokemonDB X / Y Pokedex and legacy Voydex Coastal Kalos Pokedex entry seed.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Coastal Kalos Pokedex entries for X / Y.
-- Coastal Kalos contains 153 species; Articuno, Zapdos, and Moltres are source-visible but not required for regional completion.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Drifloon
  (1302, 425, NULL, 1, TRUE),
  -- #002 Drifblim
  (1302, 426, NULL, 2, TRUE),
  -- #003 Mienfoo
  (1302, 619, NULL, 3, TRUE),
  -- #004 Mienshao
  (1302, 620, NULL, 4, TRUE),
  -- #005 Zangoose
  (1302, 335, NULL, 5, TRUE),
  -- #006 Seviper
  (1302, 336, NULL, 6, TRUE),
  -- #007 Spoink
  (1302, 325, NULL, 7, TRUE),
  -- #008 Grumpig
  (1302, 326, NULL, 8, TRUE),
  -- #009 Absol
  (1302, 359, NULL, 9, TRUE),
  -- #010 Inkay
  (1302, 686, NULL, 10, TRUE),
  -- #011 Malamar
  (1302, 687, NULL, 11, TRUE),
  -- #012 Lunatone
  (1302, 337, NULL, 12, TRUE),
  -- #013 Solrock
  (1302, 338, NULL, 13, TRUE),
  -- #014 Bagon
  (1302, 371, NULL, 14, TRUE),
  -- #015 Shelgon
  (1302, 372, NULL, 15, TRUE),
  -- #016 Salamence
  (1302, 373, NULL, 16, TRUE),
  -- #017 Wingull
  (1302, 278, NULL, 17, TRUE),
  -- #018 Pelipper
  (1302, 279, NULL, 18, TRUE),
  -- #019 Taillow
  (1302, 276, NULL, 19, TRUE),
  -- #020 Swellow
  (1302, 277, NULL, 20, TRUE),
  -- #021 Binacle
  (1302, 688, NULL, 21, TRUE),
  -- #022 Barbaracle
  (1302, 689, NULL, 22, TRUE),
  -- #023 Dwebble
  (1302, 557, NULL, 23, TRUE),
  -- #024 Crustle
  (1302, 558, NULL, 24, TRUE),
  -- #025 Tentacool
  (1302, 72, NULL, 25, TRUE),
  -- #026 Tentacruel
  (1302, 73, NULL, 26, TRUE),
  -- #027 Wailmer
  (1302, 320, NULL, 27, TRUE),
  -- #028 Wailord
  (1302, 321, NULL, 28, TRUE),
  -- #029 Luvdisc
  (1302, 370, NULL, 29, TRUE),
  -- #030 Skrelp
  (1302, 690, NULL, 30, TRUE),
  -- #031 Dragalge
  (1302, 691, NULL, 31, TRUE),
  -- #032 Clauncher
  (1302, 692, NULL, 32, TRUE),
  -- #033 Clawitzer
  (1302, 693, NULL, 33, TRUE),
  -- #034 Staryu
  (1302, 120, NULL, 34, TRUE),
  -- #035 Starmie
  (1302, 121, NULL, 35, TRUE),
  -- #036 Shellder
  (1302, 90, NULL, 36, TRUE),
  -- #037 Cloyster
  (1302, 91, NULL, 37, TRUE),
  -- #038 Qwilfish
  (1302, 211, NULL, 38, TRUE),
  -- #039 Horsea
  (1302, 116, NULL, 39, TRUE),
  -- #040 Seadra
  (1302, 117, NULL, 40, TRUE),
  -- #041 Kingdra
  (1302, 230, NULL, 41, TRUE),
  -- #042 Relicanth
  (1302, 369, NULL, 42, TRUE),
  -- #043 Sandile
  (1302, 551, NULL, 43, TRUE),
  -- #044 Krokorok
  (1302, 552, NULL, 44, TRUE),
  -- #045 Krookodile
  (1302, 553, NULL, 45, TRUE),
  -- #046 Helioptile
  (1302, 694, NULL, 46, TRUE),
  -- #047 Heliolisk
  (1302, 695, NULL, 47, TRUE),
  -- #048 Hippopotas
  (1302, 449, NULL, 48, TRUE),
  -- #049 Hippowdon
  (1302, 450, NULL, 49, TRUE),
  -- #050 Rhyhorn
  (1302, 111, NULL, 50, TRUE),
  -- #051 Rhydon
  (1302, 112, NULL, 51, TRUE),
  -- #052 Rhyperior
  (1302, 464, NULL, 52, TRUE),
  -- #053 Onix
  (1302, 95, NULL, 53, TRUE),
  -- #054 Steelix
  (1302, 208, NULL, 54, TRUE),
  -- #055 Woobat
  (1302, 527, NULL, 55, TRUE),
  -- #056 Swoobat
  (1302, 528, NULL, 56, TRUE),
  -- #057 Machop
  (1302, 66, NULL, 57, TRUE),
  -- #058 Machoke
  (1302, 67, NULL, 58, TRUE),
  -- #059 Machamp
  (1302, 68, NULL, 59, TRUE),
  -- #060 Cubone
  (1302, 104, NULL, 60, TRUE),
  -- #061 Marowak
  (1302, 105, NULL, 61, TRUE),
  -- #062 Kangaskhan
  (1302, 115, NULL, 62, TRUE),
  -- #063 Mawile
  (1302, 303, NULL, 63, TRUE),
  -- #064 Tyrunt
  (1302, 696, NULL, 64, TRUE),
  -- #065 Tyrantrum
  (1302, 697, NULL, 65, TRUE),
  -- #066 Amaura
  (1302, 698, NULL, 66, TRUE),
  -- #067 Aurorus
  (1302, 699, NULL, 67, TRUE),
  -- #068 Aerodactyl
  (1302, 142, NULL, 68, TRUE),
  -- #069 Ferroseed
  (1302, 597, NULL, 69, TRUE),
  -- #070 Ferrothorn
  (1302, 598, NULL, 70, TRUE),
  -- #071 Snubbull
  (1302, 209, NULL, 71, TRUE),
  -- #072 Granbull
  (1302, 210, NULL, 72, TRUE),
  -- #073 Electrike
  (1302, 309, NULL, 73, TRUE),
  -- #074 Manectric
  (1302, 310, NULL, 74, TRUE),
  -- #075 Houndour
  (1302, 228, NULL, 75, TRUE),
  -- #076 Houndoom
  (1302, 229, NULL, 76, TRUE),
  -- #077 Eevee
  (1302, 133, NULL, 77, TRUE),
  -- #078 Vaporeon
  (1302, 134, NULL, 78, TRUE),
  -- #079 Jolteon
  (1302, 135, NULL, 79, TRUE),
  -- #080 Flareon
  (1302, 136, NULL, 80, TRUE),
  -- #081 Espeon
  (1302, 196, NULL, 81, TRUE),
  -- #082 Umbreon
  (1302, 197, NULL, 82, TRUE),
  -- #083 Leafeon
  (1302, 470, NULL, 83, TRUE),
  -- #084 Glaceon
  (1302, 471, NULL, 84, TRUE),
  -- #085 Sylveon
  (1302, 700, NULL, 85, TRUE),
  -- #086 Emolga
  (1302, 587, NULL, 86, TRUE),
  -- #087 Yanma
  (1302, 193, NULL, 87, TRUE),
  -- #088 Yanmega
  (1302, 469, NULL, 88, TRUE),
  -- #089 Hawlucha
  (1302, 701, NULL, 89, TRUE),
  -- #090 Sigilyph
  (1302, 561, NULL, 90, TRUE),
  -- #091 Golett
  (1302, 622, NULL, 91, TRUE),
  -- #092 Golurk
  (1302, 623, NULL, 92, TRUE),
  -- #093 Nosepass
  (1302, 299, NULL, 93, TRUE),
  -- #094 Probopass
  (1302, 476, NULL, 94, TRUE),
  -- #095 Makuhita
  (1302, 296, NULL, 95, TRUE),
  -- #096 Hariyama
  (1302, 297, NULL, 96, TRUE),
  -- #097 Throh
  (1302, 538, NULL, 97, TRUE),
  -- #098 Sawk
  (1302, 539, NULL, 98, TRUE),
  -- #099 Starly
  (1302, 396, NULL, 99, TRUE),
  -- #100 Staravia
  (1302, 397, NULL, 100, TRUE),
  -- #101 Staraptor
  (1302, 398, NULL, 101, TRUE),
  -- #102 Stunky
  (1302, 434, NULL, 102, TRUE),
  -- #103 Skuntank
  (1302, 435, NULL, 103, TRUE),
  -- #104 Nidoran F
  (1302, 29, NULL, 104, TRUE),
  -- #105 Nidorina
  (1302, 30, NULL, 105, TRUE),
  -- #106 Nidoqueen
  (1302, 31, NULL, 106, TRUE),
  -- #107 Nidoran M
  (1302, 32, NULL, 107, TRUE),
  -- #108 Nidorino
  (1302, 33, NULL, 108, TRUE),
  -- #109 Nidoking
  (1302, 34, NULL, 109, TRUE),
  -- #110 Dedenne
  (1302, 702, NULL, 110, TRUE),
  -- #111 Chingling
  (1302, 433, NULL, 111, TRUE),
  -- #112 Chimecho
  (1302, 358, NULL, 112, TRUE),
  -- #113 Mime Jr.
  (1302, 439, NULL, 113, TRUE),
  -- #114 Mr. Mime
  (1302, 122, NULL, 114, TRUE),
  -- #115 Solosis
  (1302, 577, NULL, 115, TRUE),
  -- #116 Duosion
  (1302, 578, NULL, 116, TRUE),
  -- #117 Reuniclus
  (1302, 579, NULL, 117, TRUE),
  -- #118 Wynaut
  (1302, 360, NULL, 118, TRUE),
  -- #119 Wobbuffet
  (1302, 202, NULL, 119, TRUE),
  -- #120 Roggenrola
  (1302, 524, NULL, 120, TRUE),
  -- #121 Boldore
  (1302, 525, NULL, 121, TRUE),
  -- #122 Gigalith
  (1302, 526, NULL, 122, TRUE),
  -- #123 Sableye
  (1302, 302, NULL, 123, TRUE),
  -- #124 Carbink
  (1302, 703, NULL, 124, TRUE),
  -- #125 Tauros
  (1302, 128, NULL, 125, TRUE),
  -- #126 Miltank
  (1302, 241, NULL, 126, TRUE),
  -- #127 Mareep
  (1302, 179, NULL, 127, TRUE),
  -- #128 Flaaffy
  (1302, 180, NULL, 128, TRUE),
  -- #129 Ampharos
  (1302, 181, NULL, 129, TRUE),
  -- #130 Pinsir
  (1302, 127, NULL, 130, TRUE),
  -- #131 Heracross
  (1302, 214, NULL, 131, TRUE),
  -- #132 Pachirisu
  (1302, 417, NULL, 132, TRUE),
  -- #133 Slowpoke
  (1302, 79, NULL, 133, TRUE),
  -- #134 Slowbro
  (1302, 80, NULL, 134, TRUE),
  -- #135 Slowking
  (1302, 199, NULL, 135, TRUE),
  -- #136 Exeggcute
  (1302, 102, NULL, 136, TRUE),
  -- #137 Exeggutor
  (1302, 103, NULL, 137, TRUE),
  -- #138 Chatot
  (1302, 441, NULL, 138, TRUE),
  -- #139 Mantyke
  (1302, 458, NULL, 139, TRUE),
  -- #140 Mantine
  (1302, 226, NULL, 140, TRUE),
  -- #141 Clamperl
  (1302, 366, NULL, 141, TRUE),
  -- #142 Huntail
  (1302, 367, NULL, 142, TRUE),
  -- #143 Gorebyss
  (1302, 368, NULL, 143, TRUE),
  -- #144 Remoraid
  (1302, 223, NULL, 144, TRUE),
  -- #145 Octillery
  (1302, 224, NULL, 145, TRUE),
  -- #146 Corsola
  (1302, 222, NULL, 146, TRUE),
  -- #147 Chinchou
  (1302, 170, NULL, 147, TRUE),
  -- #148 Lanturn
  (1302, 171, NULL, 148, TRUE),
  -- #149 Alomomola
  (1302, 594, NULL, 149, TRUE),
  -- #150 Lapras
  (1302, 131, NULL, 150, TRUE),
  -- #151 Articuno
  (1302, 144, NULL, 151, FALSE),
  -- #152 Zapdos
  (1302, 145, NULL, 152, FALSE),
  -- #153 Moltres
  (1302, 146, NULL, 153, FALSE);
