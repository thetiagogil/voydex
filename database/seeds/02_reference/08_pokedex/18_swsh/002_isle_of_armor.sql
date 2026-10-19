-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Isle of Armor Pokedex number.
-- Cross-check: PokemonDB Isle of Armor Pokedex and legacy Voydex Isle of Armor Pokedex entry seed.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Isle of Armor Pokedex entries for Sword / Shield Expansion Pass.
-- Isle of Armor contains 211 Pokedex species; Zarude is source-visible but not required for Pokedex completion.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Slowpoke
  (1901, 79, NULL, 1, TRUE),
  -- #002 Slowbro
  (1901, 80, NULL, 2, TRUE),
  -- #003 Slowking
  (1901, 199, NULL, 3, TRUE),
  -- #004 Buneary
  (1901, 427, NULL, 4, TRUE),
  -- #005 Lopunny
  (1901, 428, NULL, 5, TRUE),
  -- #006 Happiny
  (1901, 440, NULL, 6, TRUE),
  -- #007 Chansey
  (1901, 113, NULL, 7, TRUE),
  -- #008 Blissey
  (1901, 242, NULL, 8, TRUE),
  -- #009 Skwovet
  (1901, 819, NULL, 9, TRUE),
  -- #010 Greedent
  (1901, 820, NULL, 10, TRUE),
  -- #011 Igglybuff
  (1901, 174, NULL, 11, TRUE),
  -- #012 Jigglypuff
  (1901, 39, NULL, 12, TRUE),
  -- #013 Wigglytuff
  (1901, 40, NULL, 13, TRUE),
  -- #014 Blipbug
  (1901, 824, NULL, 14, TRUE),
  -- #015 Dottler
  (1901, 825, NULL, 15, TRUE),
  -- #016 Orbeetle
  (1901, 826, NULL, 16, TRUE),
  -- #017 Fomantis
  (1901, 753, NULL, 17, TRUE),
  -- #018 Lurantis
  (1901, 754, NULL, 18, TRUE),
  -- #019 Applin
  (1901, 840, NULL, 19, TRUE),
  -- #020 Flapple
  (1901, 841, NULL, 20, TRUE),
  -- #021 Appletun
  (1901, 842, NULL, 21, TRUE),
  -- #022 Fletchling
  (1901, 661, NULL, 22, TRUE),
  -- #023 Fletchinder
  (1901, 662, NULL, 23, TRUE),
  -- #024 Talonflame
  (1901, 663, NULL, 24, TRUE),
  -- #025 Shinx
  (1901, 403, NULL, 25, TRUE),
  -- #026 Luxio
  (1901, 404, NULL, 26, TRUE),
  -- #027 Luxray
  (1901, 405, NULL, 27, TRUE),
  -- #028 Klefki
  (1901, 707, NULL, 28, TRUE),
  -- #029 Pawniard
  (1901, 624, NULL, 29, TRUE),
  -- #030 Bisharp
  (1901, 625, NULL, 30, TRUE),
  -- #031 Abra
  (1901, 63, NULL, 31, TRUE),
  -- #032 Kadabra
  (1901, 64, NULL, 32, TRUE),
  -- #033 Alakazam
  (1901, 65, NULL, 33, TRUE),
  -- #034 Ralts
  (1901, 280, NULL, 34, TRUE),
  -- #035 Kirlia
  (1901, 281, NULL, 35, TRUE),
  -- #036 Gardevoir
  (1901, 282, NULL, 36, TRUE),
  -- #037 Gallade
  (1901, 475, NULL, 37, TRUE),
  -- #038 Krabby
  (1901, 98, NULL, 38, TRUE),
  -- #039 Kingler
  (1901, 99, NULL, 39, TRUE),
  -- #040 Tentacool
  (1901, 72, NULL, 40, TRUE),
  -- #041 Tentacruel
  (1901, 73, NULL, 41, TRUE),
  -- #042 Magikarp
  (1901, 129, NULL, 42, TRUE),
  -- #043 Gyarados
  (1901, 130, NULL, 43, TRUE),
  -- #044 Remoraid
  (1901, 223, NULL, 44, TRUE),
  -- #045 Octillery
  (1901, 224, NULL, 45, TRUE),
  -- #046 Mantyke
  (1901, 458, NULL, 46, TRUE),
  -- #047 Mantine
  (1901, 226, NULL, 47, TRUE),
  -- #048 Wingull
  (1901, 278, NULL, 48, TRUE),
  -- #049 Pelipper
  (1901, 279, NULL, 49, TRUE),
  -- #050 Skorupi
  (1901, 451, NULL, 50, TRUE),
  -- #051 Drapion
  (1901, 452, NULL, 51, TRUE),
  -- #052 Dunsparce
  (1901, 206, NULL, 52, TRUE),
  -- #053 Bouffalant
  (1901, 626, NULL, 53, TRUE),
  -- #054 Lickitung
  (1901, 108, NULL, 54, TRUE),
  -- #055 Lickilicky
  (1901, 463, NULL, 55, TRUE),
  -- #056 Chewtle
  (1901, 833, NULL, 56, TRUE),
  -- #057 Drednaw
  (1901, 834, NULL, 57, TRUE),
  -- #058 Wooper
  (1901, 194, NULL, 58, TRUE),
  -- #059 Quagsire
  (1901, 195, NULL, 59, TRUE),
  -- #060 Goomy
  (1901, 704, NULL, 60, TRUE),
  -- #061 Sliggoo
  (1901, 705, NULL, 61, TRUE),
  -- #062 Goodra
  (1901, 706, NULL, 62, TRUE),
  -- #063 Druddigon
  (1901, 621, NULL, 63, TRUE),
  -- #064 Shelmet
  (1901, 616, NULL, 64, TRUE),
  -- #065 Accelgor
  (1901, 617, NULL, 65, TRUE),
  -- #066 Karrablast
  (1901, 588, NULL, 66, TRUE),
  -- #067 Escavalier
  (1901, 589, NULL, 67, TRUE),
  -- #068 Bulbasaur
  (1901, 1, NULL, 68, TRUE),
  -- #069 Ivysaur
  (1901, 2, NULL, 69, TRUE),
  -- #070 Venusaur
  (1901, 3, NULL, 70, TRUE),
  -- #071 Squirtle
  (1901, 7, NULL, 71, TRUE),
  -- #072 Wartortle
  (1901, 8, NULL, 72, TRUE),
  -- #073 Blastoise
  (1901, 9, NULL, 73, TRUE),
  -- #074 Venipede
  (1901, 543, NULL, 74, TRUE),
  -- #075 Whirlipede
  (1901, 544, NULL, 75, TRUE),
  -- #076 Scolipede
  (1901, 545, NULL, 76, TRUE),
  -- #077 Foongus
  (1901, 590, NULL, 77, TRUE),
  -- #078 Amoonguss
  (1901, 591, NULL, 78, TRUE),
  -- #079 Comfey
  (1901, 764, NULL, 79, TRUE),
  -- #080 Tangela
  (1901, 114, NULL, 80, TRUE),
  -- #081 Tangrowth
  (1901, 465, NULL, 81, TRUE),
  -- #082 Croagunk
  (1901, 453, NULL, 82, TRUE),
  -- #083 Toxicroak
  (1901, 454, NULL, 83, TRUE),
  -- #084 Pichu
  (1901, 172, NULL, 84, TRUE),
  -- #085 Pikachu
  (1901, 25, NULL, 85, TRUE),
  -- #086 Raichu
  (1901, 26, NULL, 86, TRUE),
  -- #087 Zorua
  (1901, 570, NULL, 87, TRUE),
  -- #088 Zoroark
  (1901, 571, NULL, 88, TRUE),
  -- #089 Oranguru
  (1901, 765, NULL, 89, TRUE),
  -- #090 Passimian
  (1901, 766, NULL, 90, TRUE),
  -- #091 Corphish
  (1901, 341, NULL, 91, TRUE),
  -- #092 Crawdaunt
  (1901, 342, NULL, 92, TRUE),
  -- #093 Cramorant
  (1901, 845, NULL, 93, TRUE),
  -- #094 Goldeen
  (1901, 118, NULL, 94, TRUE),
  -- #095 Seaking
  (1901, 119, NULL, 95, TRUE),
  -- #096 Arrokuda
  (1901, 846, NULL, 96, TRUE),
  -- #097 Barraskewda
  (1901, 847, NULL, 97, TRUE),
  -- #098 Staryu
  (1901, 120, NULL, 98, TRUE),
  -- #099 Starmie
  (1901, 121, NULL, 99, TRUE),
  -- #100 Kubfu
  (1901, 891, NULL, 100, TRUE),
  -- #101 Urshifu
  (1901, 892, NULL, 101, TRUE),
  -- #102 Emolga
  (1901, 587, NULL, 102, TRUE),
  -- #103 Dedenne
  (1901, 702, NULL, 103, TRUE),
  -- #104 Morpeko
  (1901, 877, NULL, 104, TRUE),
  -- #105 Magnemite
  (1901, 81, NULL, 105, TRUE),
  -- #106 Magneton
  (1901, 82, NULL, 106, TRUE),
  -- #107 Magnezone
  (1901, 462, NULL, 107, TRUE),
  -- #108 Inkay
  (1901, 686, NULL, 108, TRUE),
  -- #109 Malamar
  (1901, 687, NULL, 109, TRUE),
  -- #110 Wishiwashi
  (1901, 746, NULL, 110, TRUE),
  -- #111 Carvanha
  (1901, 318, NULL, 111, TRUE),
  -- #112 Sharpedo
  (1901, 319, NULL, 112, TRUE),
  -- #113 Lillipup
  (1901, 506, NULL, 113, TRUE),
  -- #114 Herdier
  (1901, 507, NULL, 114, TRUE),
  -- #115 Stoutland
  (1901, 508, NULL, 115, TRUE),
  -- #116 Tauros
  (1901, 128, NULL, 116, TRUE),
  -- #117 Miltank
  (1901, 241, NULL, 117, TRUE),
  -- #118 Scyther
  (1901, 123, NULL, 118, TRUE),
  -- #119 Scizor
  (1901, 212, NULL, 119, TRUE),
  -- #120 Pinsir
  (1901, 127, NULL, 120, TRUE),
  -- #121 Heracross
  (1901, 214, NULL, 121, TRUE),
  -- #122 Dwebble
  (1901, 557, NULL, 122, TRUE),
  -- #123 Crustle
  (1901, 558, NULL, 123, TRUE),
  -- #124 Wimpod
  (1901, 767, NULL, 124, TRUE),
  -- #125 Golisopod
  (1901, 768, NULL, 125, TRUE),
  -- #126 Pincurchin
  (1901, 871, NULL, 126, TRUE),
  -- #127 Mareanie
  (1901, 747, NULL, 127, TRUE),
  -- #128 Toxapex
  (1901, 748, NULL, 128, TRUE),
  -- #129 Clobbopus
  (1901, 852, NULL, 129, TRUE),
  -- #130 Grapploct
  (1901, 853, NULL, 130, TRUE),
  -- #131 Shellder
  (1901, 90, NULL, 131, TRUE),
  -- #132 Cloyster
  (1901, 91, NULL, 132, TRUE),
  -- #133 Sandygast
  (1901, 769, NULL, 133, TRUE),
  -- #134 Palossand
  (1901, 770, NULL, 134, TRUE),
  -- #135 Drifloon
  (1901, 425, NULL, 135, TRUE),
  -- #136 Drifblim
  (1901, 426, NULL, 136, TRUE),
  -- #137 Barboach
  (1901, 339, NULL, 137, TRUE),
  -- #138 Whiscash
  (1901, 340, NULL, 138, TRUE),
  -- #139 Azurill
  (1901, 298, NULL, 139, TRUE),
  -- #140 Marill
  (1901, 183, NULL, 140, TRUE),
  -- #141 Azumarill
  (1901, 184, NULL, 141, TRUE),
  -- #142 Poliwag
  (1901, 60, NULL, 142, TRUE),
  -- #143 Poliwhirl
  (1901, 61, NULL, 143, TRUE),
  -- #144 Poliwrath
  (1901, 62, NULL, 144, TRUE),
  -- #145 Politoed
  (1901, 186, NULL, 145, TRUE),
  -- #146 Psyduck
  (1901, 54, NULL, 146, TRUE),
  -- #147 Golduck
  (1901, 55, NULL, 147, TRUE),
  -- #148 Whismur
  (1901, 293, NULL, 148, TRUE),
  -- #149 Loudred
  (1901, 294, NULL, 149, TRUE),
  -- #150 Exploud
  (1901, 295, NULL, 150, TRUE),
  -- #151 Woobat
  (1901, 527, NULL, 151, TRUE),
  -- #152 Swoobat
  (1901, 528, NULL, 152, TRUE),
  -- #153 Skarmory
  (1901, 227, NULL, 153, TRUE),
  -- #154 Roggenrola
  (1901, 524, NULL, 154, TRUE),
  -- #155 Boldore
  (1901, 525, NULL, 155, TRUE),
  -- #156 Gigalith
  (1901, 526, NULL, 156, TRUE),
  -- #157 Rockruff
  (1901, 744, NULL, 157, TRUE),
  -- #158 Lycanroc
  (1901, 745, NULL, 158, TRUE),
  -- #159 Salandit
  (1901, 757, NULL, 159, TRUE),
  -- #160 Salazzle
  (1901, 758, NULL, 160, TRUE),
  -- #161 Scraggy
  (1901, 559, NULL, 161, TRUE),
  -- #162 Scrafty
  (1901, 560, NULL, 162, TRUE),
  -- #163 Mienfoo
  (1901, 619, NULL, 163, TRUE),
  -- #164 Mienshao
  (1901, 620, NULL, 164, TRUE),
  -- #165 Jangmo-o
  (1901, 782, NULL, 165, TRUE),
  -- #166 Hakamo-o
  (1901, 783, NULL, 166, TRUE),
  -- #167 Kommo-o
  (1901, 784, NULL, 167, TRUE),
  -- #168 Sandshrew
  (1901, 27, NULL, 168, TRUE),
  -- #169 Sandslash
  (1901, 28, NULL, 169, TRUE),
  -- #170 Cubone
  (1901, 104, NULL, 170, TRUE),
  -- #171 Marowak
  (1901, 105, NULL, 171, TRUE),
  -- #172 Kangaskhan
  (1901, 115, NULL, 172, TRUE),
  -- #173 Torkoal
  (1901, 324, NULL, 173, TRUE),
  -- #174 Silicobra
  (1901, 843, NULL, 174, TRUE),
  -- #175 Sandaconda
  (1901, 844, NULL, 175, TRUE),
  -- #176 Sandile
  (1901, 551, NULL, 176, TRUE),
  -- #177 Krokorok
  (1901, 552, NULL, 177, TRUE),
  -- #178 Krookodile
  (1901, 553, NULL, 178, TRUE),
  -- #179 Rufflet
  (1901, 627, NULL, 179, TRUE),
  -- #180 Braviary
  (1901, 628, NULL, 180, TRUE),
  -- #181 Vullaby
  (1901, 629, NULL, 181, TRUE),
  -- #182 Mandibuzz
  (1901, 630, NULL, 182, TRUE),
  -- #183 Rhyhorn
  (1901, 111, NULL, 183, TRUE),
  -- #184 Rhydon
  (1901, 112, NULL, 184, TRUE),
  -- #185 Rhyperior
  (1901, 464, NULL, 185, TRUE),
  -- #186 Larvesta
  (1901, 636, NULL, 186, TRUE),
  -- #187 Volcarona
  (1901, 637, NULL, 187, TRUE),
  -- #188 Chinchou
  (1901, 170, NULL, 188, TRUE),
  -- #189 Lanturn
  (1901, 171, NULL, 189, TRUE),
  -- #190 Wailmer
  (1901, 320, NULL, 190, TRUE),
  -- #191 Wailord
  (1901, 321, NULL, 191, TRUE),
  -- #192 Frillish
  (1901, 592, NULL, 192, TRUE),
  -- #193 Jellicent
  (1901, 593, NULL, 193, TRUE),
  -- #194 Skrelp
  (1901, 690, NULL, 194, TRUE),
  -- #195 Dragalge
  (1901, 691, NULL, 195, TRUE),
  -- #196 Clauncher
  (1901, 692, NULL, 196, TRUE),
  -- #197 Clawitzer
  (1901, 693, NULL, 197, TRUE),
  -- #198 Horsea
  (1901, 116, NULL, 198, TRUE),
  -- #199 Seadra
  (1901, 117, NULL, 199, TRUE),
  -- #200 Kingdra
  (1901, 230, NULL, 200, TRUE),
  -- #201 Petilil
  (1901, 548, NULL, 201, TRUE),
  -- #202 Lilligant
  (1901, 549, NULL, 202, TRUE),
  -- #203 Combee
  (1901, 415, NULL, 203, TRUE),
  -- #204 Vespiquen
  (1901, 416, NULL, 204, TRUE),
  -- #205 Exeggcute
  (1901, 102, NULL, 205, TRUE),
  -- #206 Exeggutor
  (1901, 103, NULL, 206, TRUE),
  -- #207 Ditto
  (1901, 132, NULL, 207, TRUE),
  -- #208 Porygon
  (1901, 137, NULL, 208, TRUE),
  -- #209 Porygon2
  (1901, 233, NULL, 209, TRUE),
  -- #210 Porygon-Z
  (1901, 474, NULL, 210, TRUE),
  -- #211 Zarude
  (1901, 893, NULL, 211, FALSE);
