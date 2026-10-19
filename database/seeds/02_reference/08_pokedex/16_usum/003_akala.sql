-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Alola Pokedex number in Pokémon Ultra Sun and Ultra Moon.
-- Cross-check: PokemonDB Ultra Sun / Ultra Moon Akala Island Pokedex section.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Akala Pokedex entries for Ultra Sun / Ultra Moon.
-- Akala is a browse/filter section; overall Alola remains the completion-counting Pokedex.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Pikipek
  (1603, 731, NULL, 1, TRUE),
  -- #002 Trumbeak
  (1603, 732, NULL, 2, TRUE),
  -- #003 Toucannon
  (1603, 733, NULL, 3, TRUE),
  -- #004 Yungoos
  (1603, 734, NULL, 4, TRUE),
  -- #005 Gumshoos
  (1603, 735, NULL, 5, TRUE),
  -- #006 Rattata
  (1603, 19, NULL, 6, TRUE),
  -- #007 Raticate
  (1603, 20, NULL, 7, TRUE),
  -- #008 Caterpie
  (1603, 10, NULL, 8, TRUE),
  -- #009 Metapod
  (1603, 11, NULL, 9, TRUE),
  -- #010 Butterfree
  (1603, 12, NULL, 10, TRUE),
  -- #011 Grubbin
  (1603, 736, NULL, 11, TRUE),
  -- #012 Charjabug
  (1603, 737, NULL, 12, TRUE),
  -- #013 Vikavolt
  (1603, 738, NULL, 13, TRUE),
  -- #014 Bonsly
  (1603, 438, NULL, 14, TRUE),
  -- #015 Sudowoodo
  (1603, 185, NULL, 15, TRUE),
  -- #016 Happiny
  (1603, 440, NULL, 16, TRUE),
  -- #017 Chansey
  (1603, 113, NULL, 17, TRUE),
  -- #018 Blissey
  (1603, 242, NULL, 18, TRUE),
  -- #019 Wingull
  (1603, 278, NULL, 19, TRUE),
  -- #020 Pelipper
  (1603, 279, NULL, 20, TRUE),
  -- #021 Crabrawler
  (1603, 739, NULL, 21, TRUE),
  -- #022 Crabominable
  (1603, 740, NULL, 22, TRUE),
  -- #023 Gastly
  (1603, 92, NULL, 23, TRUE),
  -- #024 Haunter
  (1603, 93, NULL, 24, TRUE),
  -- #025 Gengar
  (1603, 94, NULL, 25, TRUE),
  -- #026 Zubat
  (1603, 41, NULL, 26, TRUE),
  -- #027 Golbat
  (1603, 42, NULL, 27, TRUE),
  -- #028 Crobat
  (1603, 169, NULL, 28, TRUE),
  -- #029 Diglett
  (1603, 50, NULL, 29, TRUE),
  -- #030 Dugtrio
  (1603, 51, NULL, 30, TRUE),
  -- #031 Oricorio
  (1603, 741, NULL, 31, TRUE),
  -- #032 Psyduck
  (1603, 54, NULL, 32, TRUE),
  -- #033 Golduck
  (1603, 55, NULL, 33, TRUE),
  -- #034 Magikarp
  (1603, 129, NULL, 34, TRUE),
  -- #035 Gyarados
  (1603, 130, NULL, 35, TRUE),
  -- #036 Barboach
  (1603, 339, NULL, 36, TRUE),
  -- #037 Whiscash
  (1603, 340, NULL, 37, TRUE),
  -- #038 Tentacool
  (1603, 72, NULL, 38, TRUE),
  -- #039 Tentacruel
  (1603, 73, NULL, 39, TRUE),
  -- #040 Finneon
  (1603, 456, NULL, 40, TRUE),
  -- #041 Lumineon
  (1603, 457, NULL, 41, TRUE),
  -- #042 Wishiwashi
  (1603, 746, NULL, 42, TRUE),
  -- #043 Luvdisc
  (1603, 370, NULL, 43, TRUE),
  -- #044 Corsola
  (1603, 222, NULL, 44, TRUE),
  -- #045 Mareanie
  (1603, 747, NULL, 45, TRUE),
  -- #046 Toxapex
  (1603, 748, NULL, 46, TRUE),
  -- #047 Remoraid
  (1603, 223, NULL, 47, TRUE),
  -- #048 Octillery
  (1603, 224, NULL, 48, TRUE),
  -- #049 Mantyke
  (1603, 458, NULL, 49, TRUE),
  -- #050 Mantine
  (1603, 226, NULL, 50, TRUE),
  -- #051 Lillipup
  (1603, 506, NULL, 51, TRUE),
  -- #052 Herdier
  (1603, 507, NULL, 52, TRUE),
  -- #053 Stoutland
  (1603, 508, NULL, 53, TRUE),
  -- #054 Eevee
  (1603, 133, NULL, 54, TRUE),
  -- #055 Vaporeon
  (1603, 134, NULL, 55, TRUE),
  -- #056 Jolteon
  (1603, 135, NULL, 56, TRUE),
  -- #057 Flareon
  (1603, 136, NULL, 57, TRUE),
  -- #058 Espeon
  (1603, 196, NULL, 58, TRUE),
  -- #059 Umbreon
  (1603, 197, NULL, 59, TRUE),
  -- #060 Leafeon
  (1603, 470, NULL, 60, TRUE),
  -- #061 Glaceon
  (1603, 471, NULL, 61, TRUE),
  -- #062 Sylveon
  (1603, 700, NULL, 62, TRUE),
  -- #063 Mareep
  (1603, 179, NULL, 63, TRUE),
  -- #064 Flaaffy
  (1603, 180, NULL, 64, TRUE),
  -- #065 Ampharos
  (1603, 181, NULL, 65, TRUE),
  -- #066 Mudbray
  (1603, 749, NULL, 66, TRUE),
  -- #067 Mudsdale
  (1603, 750, NULL, 67, TRUE),
  -- #068 Igglybuff
  (1603, 174, NULL, 68, TRUE),
  -- #069 Jigglypuff
  (1603, 39, NULL, 69, TRUE),
  -- #070 Wigglytuff
  (1603, 40, NULL, 70, TRUE),
  -- #071 Tauros
  (1603, 128, NULL, 71, TRUE),
  -- #072 Miltank
  (1603, 241, NULL, 72, TRUE),
  -- #073 Surskit
  (1603, 283, NULL, 73, TRUE),
  -- #074 Masquerain
  (1603, 284, NULL, 74, TRUE),
  -- #075 Dewpider
  (1603, 751, NULL, 75, TRUE),
  -- #076 Araquanid
  (1603, 752, NULL, 76, TRUE),
  -- #077 Fomantis
  (1603, 753, NULL, 77, TRUE),
  -- #078 Lurantis
  (1603, 754, NULL, 78, TRUE),
  -- #079 Morelull
  (1603, 755, NULL, 79, TRUE),
  -- #080 Shiinotic
  (1603, 756, NULL, 80, TRUE),
  -- #081 Paras
  (1603, 46, NULL, 81, TRUE),
  -- #082 Parasect
  (1603, 47, NULL, 82, TRUE),
  -- #083 Poliwag
  (1603, 60, NULL, 83, TRUE),
  -- #084 Poliwhirl
  (1603, 61, NULL, 84, TRUE),
  -- #085 Poliwrath
  (1603, 62, NULL, 85, TRUE),
  -- #086 Politoed
  (1603, 186, NULL, 86, TRUE),
  -- #087 Goldeen
  (1603, 118, NULL, 87, TRUE),
  -- #088 Seaking
  (1603, 119, NULL, 88, TRUE),
  -- #089 Basculin
  (1603, 550, NULL, 89, TRUE),
  -- #090 Feebas
  (1603, 349, NULL, 90, TRUE),
  -- #091 Milotic
  (1603, 350, NULL, 91, TRUE),
  -- #092 Alomomola
  (1603, 594, NULL, 92, TRUE),
  -- #093 Fletchling
  (1603, 661, NULL, 93, TRUE),
  -- #094 Fletchinder
  (1603, 662, NULL, 94, TRUE),
  -- #095 Talonflame
  (1603, 663, NULL, 95, TRUE),
  -- #096 Salandit
  (1603, 757, NULL, 96, TRUE),
  -- #097 Salazzle
  (1603, 758, NULL, 97, TRUE),
  -- #098 Cubone
  (1603, 104, NULL, 98, TRUE),
  -- #099 Marowak
  (1603, 105, NULL, 99, TRUE),
  -- #100 Kangaskhan
  (1603, 115, NULL, 100, TRUE),
  -- #101 Magby
  (1603, 240, NULL, 101, TRUE),
  -- #102 Magmar
  (1603, 126, NULL, 102, TRUE),
  -- #103 Magmortar
  (1603, 467, NULL, 103, TRUE),
  -- #104 Larvesta
  (1603, 636, NULL, 104, TRUE),
  -- #105 Volcarona
  (1603, 637, NULL, 105, TRUE),
  -- #106 Stufful
  (1603, 759, NULL, 106, TRUE),
  -- #107 Bewear
  (1603, 760, NULL, 107, TRUE),
  -- #108 Bounsweet
  (1603, 761, NULL, 108, TRUE),
  -- #109 Steenee
  (1603, 762, NULL, 109, TRUE),
  -- #110 Tsareena
  (1603, 763, NULL, 110, TRUE),
  -- #111 Comfey
  (1603, 764, NULL, 111, TRUE),
  -- #112 Pinsir
  (1603, 127, NULL, 112, TRUE),
  -- #113 Hoothoot
  (1603, 163, NULL, 113, TRUE),
  -- #114 Noctowl
  (1603, 164, NULL, 114, TRUE),
  -- #115 Kecleon
  (1603, 352, NULL, 115, TRUE),
  -- #116 Oranguru
  (1603, 765, NULL, 116, TRUE),
  -- #117 Passimian
  (1603, 766, NULL, 117, TRUE),
  -- #118 Goomy
  (1603, 704, NULL, 118, TRUE),
  -- #119 Sliggoo
  (1603, 705, NULL, 119, TRUE),
  -- #120 Goodra
  (1603, 706, NULL, 120, TRUE),
  -- #121 Castform
  (1603, 351, NULL, 121, TRUE),
  -- #122 Wimpod
  (1603, 767, NULL, 122, TRUE),
  -- #123 Golisopod
  (1603, 768, NULL, 123, TRUE),
  -- #124 Staryu
  (1603, 120, NULL, 124, TRUE),
  -- #125 Starmie
  (1603, 121, NULL, 125, TRUE),
  -- #126 Sandygast
  (1603, 769, NULL, 126, TRUE),
  -- #127 Palossand
  (1603, 770, NULL, 127, TRUE),
  -- #128 Omanyte
  (1603, 138, NULL, 128, TRUE),
  -- #129 Omastar
  (1603, 139, NULL, 129, TRUE),
  -- #130 Kabuto
  (1603, 140, NULL, 130, TRUE),
  -- #131 Kabutops
  (1603, 141, NULL, 131, TRUE),
  -- #132 Lileep
  (1603, 345, NULL, 132, TRUE),
  -- #133 Cradily
  (1603, 346, NULL, 133, TRUE),
  -- #134 Anorith
  (1603, 347, NULL, 134, TRUE),
  -- #135 Armaldo
  (1603, 348, NULL, 135, TRUE),
  -- #136 Cranidos
  (1603, 408, NULL, 136, TRUE),
  -- #137 Rampardos
  (1603, 409, NULL, 137, TRUE),
  -- #138 Shieldon
  (1603, 410, NULL, 138, TRUE),
  -- #139 Bastiodon
  (1603, 411, NULL, 139, TRUE),
  -- #140 Archen
  (1603, 566, NULL, 140, TRUE),
  -- #141 Archeops
  (1603, 567, NULL, 141, TRUE),
  -- #142 Tirtouga
  (1603, 564, NULL, 142, TRUE),
  -- #143 Carracosta
  (1603, 565, NULL, 143, TRUE),
  -- #144 Tyrunt
  (1603, 696, NULL, 144, TRUE),
  -- #145 Tyrantrum
  (1603, 697, NULL, 145, TRUE),
  -- #146 Amaura
  (1603, 698, NULL, 146, TRUE),
  -- #147 Aurorus
  (1603, 699, NULL, 147, TRUE),
  -- #148 Larvitar
  (1603, 246, NULL, 148, TRUE),
  -- #149 Pupitar
  (1603, 247, NULL, 149, TRUE),
  -- #150 Tyranitar
  (1603, 248, NULL, 150, TRUE),
  -- #151 Phantump
  (1603, 708, NULL, 151, TRUE),
  -- #152 Trevenant
  (1603, 709, NULL, 152, TRUE),
  -- #153 Natu
  (1603, 177, NULL, 153, TRUE),
  -- #154 Xatu
  (1603, 178, NULL, 154, TRUE),
  -- #155 Nosepass
  (1603, 299, NULL, 155, TRUE),
  -- #156 Probopass
  (1603, 476, NULL, 156, TRUE),
  -- #157 Pyukumuku
  (1603, 771, NULL, 157, TRUE),
  -- #158 Chinchou
  (1603, 170, NULL, 158, TRUE),
  -- #159 Lanturn
  (1603, 171, NULL, 159, TRUE),
  -- #160 Tapu Lele
  (1603, 786, NULL, 160, TRUE);
