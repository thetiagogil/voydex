-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Lumiose Pokedex number.
-- Cross-check: PokemonDB Pokémon Legends: Z-A Pokedex and Serebii Lumiose Pokedex.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Lumiose Pokedex entries for Pokémon Legends: Z-A.
-- Lumiose contains 232 Pokedex species; Diancie and Mewtwo are source-visible but not required.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Chikorita
  (2601, 152, NULL, 1, TRUE),
  -- #002 Bayleef
  (2601, 153, NULL, 2, TRUE),
  -- #003 Meganium
  (2601, 154, NULL, 3, TRUE),
  -- #004 Tepig
  (2601, 498, NULL, 4, TRUE),
  -- #005 Pignite
  (2601, 499, NULL, 5, TRUE),
  -- #006 Emboar
  (2601, 500, NULL, 6, TRUE),
  -- #007 Totodile
  (2601, 158, NULL, 7, TRUE),
  -- #008 Croconaw
  (2601, 159, NULL, 8, TRUE),
  -- #009 Feraligatr
  (2601, 160, NULL, 9, TRUE),
  -- #010 Fletchling
  (2601, 661, NULL, 10, TRUE),
  -- #011 Fletchinder
  (2601, 662, NULL, 11, TRUE),
  -- #012 Talonflame
  (2601, 663, NULL, 12, TRUE),
  -- #013 Bunnelby
  (2601, 659, NULL, 13, TRUE),
  -- #014 Diggersby
  (2601, 660, NULL, 14, TRUE),
  -- #015 Scatterbug
  (2601, 664, NULL, 15, TRUE),
  -- #016 Spewpa
  (2601, 665, NULL, 16, TRUE),
  -- #017 Vivillon
  (2601, 666, NULL, 17, TRUE),
  -- #018 Weedle
  (2601, 13, NULL, 18, TRUE),
  -- #019 Kakuna
  (2601, 14, NULL, 19, TRUE),
  -- #020 Beedrill
  (2601, 15, NULL, 20, TRUE),
  -- #021 Pidgey
  (2601, 16, NULL, 21, TRUE),
  -- #022 Pidgeotto
  (2601, 17, NULL, 22, TRUE),
  -- #023 Pidgeot
  (2601, 18, NULL, 23, TRUE),
  -- #024 Mareep
  (2601, 179, NULL, 24, TRUE),
  -- #025 Flaaffy
  (2601, 180, NULL, 25, TRUE),
  -- #026 Ampharos
  (2601, 181, NULL, 26, TRUE),
  -- #027 Patrat
  (2601, 504, NULL, 27, TRUE),
  -- #028 Watchog
  (2601, 505, NULL, 28, TRUE),
  -- #029 Budew
  (2601, 406, NULL, 29, TRUE),
  -- #030 Roselia
  (2601, 315, NULL, 30, TRUE),
  -- #031 Roserade
  (2601, 407, NULL, 31, TRUE),
  -- #032 Magikarp
  (2601, 129, NULL, 32, TRUE),
  -- #033 Gyarados
  (2601, 130, NULL, 33, TRUE),
  -- #034 Binacle
  (2601, 688, NULL, 34, TRUE),
  -- #035 Barbaracle
  (2601, 689, NULL, 35, TRUE),
  -- #036 Staryu
  (2601, 120, NULL, 36, TRUE),
  -- #037 Starmie
  (2601, 121, NULL, 37, TRUE),
  -- #038 Flabebe
  (2601, 669, NULL, 38, TRUE),
  -- #039 Floette
  (2601, 670, NULL, 39, TRUE),
  -- #040 Florges
  (2601, 671, NULL, 40, TRUE),
  -- #041 Skiddo
  (2601, 672, NULL, 41, TRUE),
  -- #042 Gogoat
  (2601, 673, NULL, 42, TRUE),
  -- #043 Espurr
  (2601, 677, NULL, 43, TRUE),
  -- #044 Meowstic
  (2601, 678, NULL, 44, TRUE),
  -- #045 Litleo
  (2601, 667, NULL, 45, TRUE),
  -- #046 Pyroar
  (2601, 668, NULL, 46, TRUE),
  -- #047 Pancham
  (2601, 674, NULL, 47, TRUE),
  -- #048 Pangoro
  (2601, 675, NULL, 48, TRUE),
  -- #049 Trubbish
  (2601, 568, NULL, 49, TRUE),
  -- #050 Garbodor
  (2601, 569, NULL, 50, TRUE),
  -- #051 Dedenne
  (2601, 702, NULL, 51, TRUE),
  -- #052 Pichu
  (2601, 172, NULL, 52, TRUE),
  -- #053 Pikachu
  (2601, 25, NULL, 53, TRUE),
  -- #054 Raichu
  (2601, 26, NULL, 54, TRUE),
  -- #055 Cleffa
  (2601, 173, NULL, 55, TRUE),
  -- #056 Clefairy
  (2601, 35, NULL, 56, TRUE),
  -- #057 Clefable
  (2601, 36, NULL, 57, TRUE),
  -- #058 Spinarak
  (2601, 167, NULL, 58, TRUE),
  -- #059 Ariados
  (2601, 168, NULL, 59, TRUE),
  -- #060 Ekans
  (2601, 23, NULL, 60, TRUE),
  -- #061 Arbok
  (2601, 24, NULL, 61, TRUE),
  -- #062 Abra
  (2601, 63, NULL, 62, TRUE),
  -- #063 Kadabra
  (2601, 64, NULL, 63, TRUE),
  -- #064 Alakazam
  (2601, 65, NULL, 64, TRUE),
  -- #065 Gastly
  (2601, 92, NULL, 65, TRUE),
  -- #066 Haunter
  (2601, 93, NULL, 66, TRUE),
  -- #067 Gengar
  (2601, 94, NULL, 67, TRUE),
  -- #068 Venipede
  (2601, 543, NULL, 68, TRUE),
  -- #069 Whirlipede
  (2601, 544, NULL, 69, TRUE),
  -- #070 Scolipede
  (2601, 545, NULL, 70, TRUE),
  -- #071 Honedge
  (2601, 679, NULL, 71, TRUE),
  -- #072 Doublade
  (2601, 680, NULL, 72, TRUE),
  -- #073 Aegislash
  (2601, 681, NULL, 73, TRUE),
  -- #074 Bellsprout
  (2601, 69, NULL, 74, TRUE),
  -- #075 Weepinbell
  (2601, 70, NULL, 75, TRUE),
  -- #076 Victreebel
  (2601, 71, NULL, 76, TRUE),
  -- #077 Pansage
  (2601, 511, NULL, 77, TRUE),
  -- #078 Simisage
  (2601, 512, NULL, 78, TRUE),
  -- #079 Pansear
  (2601, 513, NULL, 79, TRUE),
  -- #080 Simisear
  (2601, 514, NULL, 80, TRUE),
  -- #081 Panpour
  (2601, 515, NULL, 81, TRUE),
  -- #082 Simipour
  (2601, 516, NULL, 82, TRUE),
  -- #083 Meditite
  (2601, 307, NULL, 83, TRUE),
  -- #084 Medicham
  (2601, 308, NULL, 84, TRUE),
  -- #085 Electrike
  (2601, 309, NULL, 85, TRUE),
  -- #086 Manectric
  (2601, 310, NULL, 86, TRUE),
  -- #087 Ralts
  (2601, 280, NULL, 87, TRUE),
  -- #088 Kirlia
  (2601, 281, NULL, 88, TRUE),
  -- #089 Gardevoir
  (2601, 282, NULL, 89, TRUE),
  -- #090 Gallade
  (2601, 475, NULL, 90, TRUE),
  -- #091 Houndour
  (2601, 228, NULL, 91, TRUE),
  -- #092 Houndoom
  (2601, 229, NULL, 92, TRUE),
  -- #093 Swablu
  (2601, 333, NULL, 93, TRUE),
  -- #094 Altaria
  (2601, 334, NULL, 94, TRUE),
  -- #095 Audino
  (2601, 531, NULL, 95, TRUE),
  -- #096 Spritzee
  (2601, 682, NULL, 96, TRUE),
  -- #097 Aromatisse
  (2601, 683, NULL, 97, TRUE),
  -- #098 Swirlix
  (2601, 684, NULL, 98, TRUE),
  -- #099 Slurpuff
  (2601, 685, NULL, 99, TRUE),
  -- #100 Eevee
  (2601, 133, NULL, 100, TRUE),
  -- #101 Vaporeon
  (2601, 134, NULL, 101, TRUE),
  -- #102 Jolteon
  (2601, 135, NULL, 102, TRUE),
  -- #103 Flareon
  (2601, 136, NULL, 103, TRUE),
  -- #104 Espeon
  (2601, 196, NULL, 104, TRUE),
  -- #105 Umbreon
  (2601, 197, NULL, 105, TRUE),
  -- #106 Leafeon
  (2601, 470, NULL, 106, TRUE),
  -- #107 Glaceon
  (2601, 471, NULL, 107, TRUE),
  -- #108 Sylveon
  (2601, 700, NULL, 108, TRUE),
  -- #109 Buneary
  (2601, 427, NULL, 109, TRUE),
  -- #110 Lopunny
  (2601, 428, NULL, 110, TRUE),
  -- #111 Shuppet
  (2601, 353, NULL, 111, TRUE),
  -- #112 Banette
  (2601, 354, NULL, 112, TRUE),
  -- #113 Vanillite
  (2601, 582, NULL, 113, TRUE),
  -- #114 Vanillish
  (2601, 583, NULL, 114, TRUE),
  -- #115 Vanilluxe
  (2601, 584, NULL, 115, TRUE),
  -- #116 Numel
  (2601, 322, NULL, 116, TRUE),
  -- #117 Camerupt
  (2601, 323, NULL, 117, TRUE),
  -- #118 Hippopotas
  (2601, 449, NULL, 118, TRUE),
  -- #119 Hippowdon
  (2601, 450, NULL, 119, TRUE),
  -- #120 Drilbur
  (2601, 529, NULL, 120, TRUE),
  -- #121 Excadrill
  (2601, 530, NULL, 121, TRUE),
  -- #122 Sandile
  (2601, 551, NULL, 122, TRUE),
  -- #123 Krokorok
  (2601, 552, NULL, 123, TRUE),
  -- #124 Krookodile
  (2601, 553, NULL, 124, TRUE),
  -- #125 Machop
  (2601, 66, NULL, 125, TRUE),
  -- #126 Machoke
  (2601, 67, NULL, 126, TRUE),
  -- #127 Machamp
  (2601, 68, NULL, 127, TRUE),
  -- #128 Gible
  (2601, 443, NULL, 128, TRUE),
  -- #129 Gabite
  (2601, 444, NULL, 129, TRUE),
  -- #130 Garchomp
  (2601, 445, NULL, 130, TRUE),
  -- #131 Carbink
  (2601, 703, NULL, 131, TRUE),
  -- #132 Sableye
  (2601, 302, NULL, 132, TRUE),
  -- #133 Mawile
  (2601, 303, NULL, 133, TRUE),
  -- #134 Absol
  (2601, 359, NULL, 134, TRUE),
  -- #135 Riolu
  (2601, 447, NULL, 135, TRUE),
  -- #136 Lucario
  (2601, 448, NULL, 136, TRUE),
  -- #137 Slowpoke
  (2601, 79, NULL, 137, TRUE),
  -- #138 Slowbro
  (2601, 80, NULL, 138, TRUE),
  -- #139 Slowking
  (2601, 199, NULL, 139, TRUE),
  -- #140 Carvanha
  (2601, 318, NULL, 140, TRUE),
  -- #141 Sharpedo
  (2601, 319, NULL, 141, TRUE),
  -- #142 Tynamo
  (2601, 602, NULL, 142, TRUE),
  -- #143 Eelektrik
  (2601, 603, NULL, 143, TRUE),
  -- #144 Eelektross
  (2601, 604, NULL, 144, TRUE),
  -- #145 Dratini
  (2601, 147, NULL, 145, TRUE),
  -- #146 Dragonair
  (2601, 148, NULL, 146, TRUE),
  -- #147 Dragonite
  (2601, 149, NULL, 147, TRUE),
  -- #148 Bulbasaur
  (2601, 1, NULL, 148, TRUE),
  -- #149 Ivysaur
  (2601, 2, NULL, 149, TRUE),
  -- #150 Venusaur
  (2601, 3, NULL, 150, TRUE),
  -- #151 Charmander
  (2601, 4, NULL, 151, TRUE),
  -- #152 Charmeleon
  (2601, 5, NULL, 152, TRUE),
  -- #153 Charizard
  (2601, 6, NULL, 153, TRUE),
  -- #154 Squirtle
  (2601, 7, NULL, 154, TRUE),
  -- #155 Wartortle
  (2601, 8, NULL, 155, TRUE),
  -- #156 Blastoise
  (2601, 9, NULL, 156, TRUE),
  -- #157 Stunfisk
  (2601, 618, NULL, 157, TRUE),
  -- #158 Furfrou
  (2601, 676, NULL, 158, TRUE),
  -- #159 Inkay
  (2601, 686, NULL, 159, TRUE),
  -- #160 Malamar
  (2601, 687, NULL, 160, TRUE),
  -- #161 Skrelp
  (2601, 690, NULL, 161, TRUE),
  -- #162 Dragalge
  (2601, 691, NULL, 162, TRUE),
  -- #163 Clauncher
  (2601, 692, NULL, 163, TRUE),
  -- #164 Clawitzer
  (2601, 693, NULL, 164, TRUE),
  -- #165 Goomy
  (2601, 704, NULL, 165, TRUE),
  -- #166 Sliggoo
  (2601, 705, NULL, 166, TRUE),
  -- #167 Goodra
  (2601, 706, NULL, 167, TRUE),
  -- #168 Delibird
  (2601, 225, NULL, 168, TRUE),
  -- #169 Snorunt
  (2601, 361, NULL, 169, TRUE),
  -- #170 Glalie
  (2601, 362, NULL, 170, TRUE),
  -- #171 Froslass
  (2601, 478, NULL, 171, TRUE),
  -- #172 Snover
  (2601, 459, NULL, 172, TRUE),
  -- #173 Abomasnow
  (2601, 460, NULL, 173, TRUE),
  -- #174 Bergmite
  (2601, 712, NULL, 174, TRUE),
  -- #175 Avalugg
  (2601, 713, NULL, 175, TRUE),
  -- #176 Scyther
  (2601, 123, NULL, 176, TRUE),
  -- #177 Scizor
  (2601, 212, NULL, 177, TRUE),
  -- #178 Pinsir
  (2601, 127, NULL, 178, TRUE),
  -- #179 Heracross
  (2601, 214, NULL, 179, TRUE),
  -- #180 Emolga
  (2601, 587, NULL, 180, TRUE),
  -- #181 Hawlucha
  (2601, 701, NULL, 181, TRUE),
  -- #182 Phantump
  (2601, 708, NULL, 182, TRUE),
  -- #183 Trevenant
  (2601, 709, NULL, 183, TRUE),
  -- #184 Scraggy
  (2601, 559, NULL, 184, TRUE),
  -- #185 Scrafty
  (2601, 560, NULL, 185, TRUE),
  -- #186 Noibat
  (2601, 714, NULL, 186, TRUE),
  -- #187 Noivern
  (2601, 715, NULL, 187, TRUE),
  -- #188 Klefki
  (2601, 707, NULL, 188, TRUE),
  -- #189 Litwick
  (2601, 607, NULL, 189, TRUE),
  -- #190 Lampent
  (2601, 608, NULL, 190, TRUE),
  -- #191 Chandelure
  (2601, 609, NULL, 191, TRUE),
  -- #192 Aerodactyl
  (2601, 142, NULL, 192, TRUE),
  -- #193 Tyrunt
  (2601, 696, NULL, 193, TRUE),
  -- #194 Tyrantrum
  (2601, 697, NULL, 194, TRUE),
  -- #195 Amaura
  (2601, 698, NULL, 195, TRUE),
  -- #196 Aurorus
  (2601, 699, NULL, 196, TRUE),
  -- #197 Onix
  (2601, 95, NULL, 197, TRUE),
  -- #198 Steelix
  (2601, 208, NULL, 198, TRUE),
  -- #199 Aron
  (2601, 304, NULL, 199, TRUE),
  -- #200 Lairon
  (2601, 305, NULL, 200, TRUE),
  -- #201 Aggron
  (2601, 306, NULL, 201, TRUE),
  -- #202 Helioptile
  (2601, 694, NULL, 202, TRUE),
  -- #203 Heliolisk
  (2601, 695, NULL, 203, TRUE),
  -- #204 Pumpkaboo
  (2601, 710, NULL, 204, TRUE),
  -- #205 Gourgeist
  (2601, 711, NULL, 205, TRUE),
  -- #206 Larvitar
  (2601, 246, NULL, 206, TRUE),
  -- #207 Pupitar
  (2601, 247, NULL, 207, TRUE),
  -- #208 Tyranitar
  (2601, 248, NULL, 208, TRUE),
  -- #209 Froakie
  (2601, 656, NULL, 209, TRUE),
  -- #210 Frogadier
  (2601, 657, NULL, 210, TRUE),
  -- #211 Greninja
  (2601, 658, NULL, 211, TRUE),
  -- #212 Falinks
  (2601, 870, NULL, 212, TRUE),
  -- #213 Chespin
  (2601, 650, NULL, 213, TRUE),
  -- #214 Quilladin
  (2601, 651, NULL, 214, TRUE),
  -- #215 Chesnaught
  (2601, 652, NULL, 215, TRUE),
  -- #216 Skarmory
  (2601, 227, NULL, 216, TRUE),
  -- #217 Fennekin
  (2601, 653, NULL, 217, TRUE),
  -- #218 Braixen
  (2601, 654, NULL, 218, TRUE),
  -- #219 Delphox
  (2601, 655, NULL, 219, TRUE),
  -- #220 Bagon
  (2601, 371, NULL, 220, TRUE),
  -- #221 Shelgon
  (2601, 372, NULL, 221, TRUE),
  -- #222 Salamence
  (2601, 373, NULL, 222, TRUE),
  -- #223 Kangaskhan
  (2601, 115, NULL, 223, TRUE),
  -- #224 Drampa
  (2601, 780, NULL, 224, TRUE),
  -- #225 Beldum
  (2601, 374, NULL, 225, TRUE),
  -- #226 Metang
  (2601, 375, NULL, 226, TRUE),
  -- #227 Metagross
  (2601, 376, NULL, 227, TRUE),
  -- #228 Xerneas
  (2601, 716, NULL, 228, TRUE),
  -- #229 Yveltal
  (2601, 717, NULL, 229, TRUE),
  -- #230 Zygarde
  (2601, 718, NULL, 230, TRUE),
  -- #231 Diancie
  (2601, 719, NULL, 231, FALSE),
  -- #232 Mewtwo
  (2601, 150, NULL, 232, FALSE);
