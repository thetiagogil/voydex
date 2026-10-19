-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Alola Pokedex number in Pokémon Ultra Sun and Ultra Moon.
-- Cross-check: PokemonDB Ultra Sun / Ultra Moon Ulaula Island Pokedex section.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Ulaula Pokedex entries for Ultra Sun / Ultra Moon.
-- Ulaula is a browse/filter section; overall Alola remains the completion-counting Pokedex.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Pikipek
  (1604, 731, NULL, 1, TRUE),
  -- #002 Trumbeak
  (1604, 732, NULL, 2, TRUE),
  -- #003 Toucannon
  (1604, 733, NULL, 3, TRUE),
  -- #004 Yungoos
  (1604, 734, NULL, 4, TRUE),
  -- #005 Gumshoos
  (1604, 735, NULL, 5, TRUE),
  -- #006 Rattata
  (1604, 19, NULL, 6, TRUE),
  -- #007 Raticate
  (1604, 20, NULL, 7, TRUE),
  -- #008 Ledyba
  (1604, 165, NULL, 8, TRUE),
  -- #009 Ledian
  (1604, 166, NULL, 9, TRUE),
  -- #010 Spinarak
  (1604, 167, NULL, 10, TRUE),
  -- #011 Ariados
  (1604, 168, NULL, 11, TRUE),
  -- #012 Grubbin
  (1604, 736, NULL, 12, TRUE),
  -- #013 Charjabug
  (1604, 737, NULL, 13, TRUE),
  -- #014 Vikavolt
  (1604, 738, NULL, 14, TRUE),
  -- #015 Happiny
  (1604, 440, NULL, 15, TRUE),
  -- #016 Chansey
  (1604, 113, NULL, 16, TRUE),
  -- #017 Blissey
  (1604, 242, NULL, 17, TRUE),
  -- #018 Slowpoke
  (1604, 79, NULL, 18, TRUE),
  -- #019 Slowbro
  (1604, 80, NULL, 19, TRUE),
  -- #020 Slowking
  (1604, 199, NULL, 20, TRUE),
  -- #021 Wingull
  (1604, 278, NULL, 21, TRUE),
  -- #022 Pelipper
  (1604, 279, NULL, 22, TRUE),
  -- #023 Meowth
  (1604, 52, NULL, 23, TRUE),
  -- #024 Persian
  (1604, 53, NULL, 24, TRUE),
  -- #025 Magnemite
  (1604, 81, NULL, 25, TRUE),
  -- #026 Magneton
  (1604, 82, NULL, 26, TRUE),
  -- #027 Magnezone
  (1604, 462, NULL, 27, TRUE),
  -- #028 Grimer
  (1604, 88, NULL, 28, TRUE),
  -- #029 Muk
  (1604, 89, NULL, 29, TRUE),
  -- #030 Crabrawler
  (1604, 739, NULL, 30, TRUE),
  -- #031 Crabominable
  (1604, 740, NULL, 31, TRUE),
  -- #032 Gastly
  (1604, 92, NULL, 32, TRUE),
  -- #033 Haunter
  (1604, 93, NULL, 33, TRUE),
  -- #034 Gengar
  (1604, 94, NULL, 34, TRUE),
  -- #035 Zubat
  (1604, 41, NULL, 35, TRUE),
  -- #036 Golbat
  (1604, 42, NULL, 36, TRUE),
  -- #037 Crobat
  (1604, 169, NULL, 37, TRUE),
  -- #038 Diglett
  (1604, 50, NULL, 38, TRUE),
  -- #039 Dugtrio
  (1604, 51, NULL, 39, TRUE),
  -- #040 Spearow
  (1604, 21, NULL, 40, TRUE),
  -- #041 Fearow
  (1604, 22, NULL, 41, TRUE),
  -- #042 Oricorio
  (1604, 741, NULL, 42, TRUE),
  -- #043 Cutiefly
  (1604, 742, NULL, 43, TRUE),
  -- #044 Ribombee
  (1604, 743, NULL, 44, TRUE),
  -- #045 Flabebe
  (1604, 669, NULL, 45, TRUE),
  -- #046 Floette
  (1604, 670, NULL, 46, TRUE),
  -- #047 Florges
  (1604, 671, NULL, 47, TRUE),
  -- #048 Petilil
  (1604, 548, NULL, 48, TRUE),
  -- #049 Lilligant
  (1604, 549, NULL, 49, TRUE),
  -- #050 Cottonee
  (1604, 546, NULL, 50, TRUE),
  -- #051 Whimsicott
  (1604, 547, NULL, 51, TRUE),
  -- #052 Psyduck
  (1604, 54, NULL, 52, TRUE),
  -- #053 Golduck
  (1604, 55, NULL, 53, TRUE),
  -- #054 Magikarp
  (1604, 129, NULL, 54, TRUE),
  -- #055 Gyarados
  (1604, 130, NULL, 55, TRUE),
  -- #056 Tentacool
  (1604, 72, NULL, 56, TRUE),
  -- #057 Tentacruel
  (1604, 73, NULL, 57, TRUE),
  -- #058 Finneon
  (1604, 456, NULL, 58, TRUE),
  -- #059 Lumineon
  (1604, 457, NULL, 59, TRUE),
  -- #060 Wishiwashi
  (1604, 746, NULL, 60, TRUE),
  -- #061 Clamperl
  (1604, 366, NULL, 61, TRUE),
  -- #062 Huntail
  (1604, 367, NULL, 62, TRUE),
  -- #063 Gorebyss
  (1604, 368, NULL, 63, TRUE),
  -- #064 Mudbray
  (1604, 749, NULL, 64, TRUE),
  -- #065 Mudsdale
  (1604, 750, NULL, 65, TRUE),
  -- #066 Surskit
  (1604, 283, NULL, 66, TRUE),
  -- #067 Masquerain
  (1604, 284, NULL, 67, TRUE),
  -- #068 Dewpider
  (1604, 751, NULL, 68, TRUE),
  -- #069 Araquanid
  (1604, 752, NULL, 69, TRUE),
  -- #070 Morelull
  (1604, 755, NULL, 70, TRUE),
  -- #071 Shiinotic
  (1604, 756, NULL, 71, TRUE),
  -- #072 Paras
  (1604, 46, NULL, 72, TRUE),
  -- #073 Parasect
  (1604, 47, NULL, 73, TRUE),
  -- #074 Poliwag
  (1604, 60, NULL, 74, TRUE),
  -- #075 Poliwhirl
  (1604, 61, NULL, 75, TRUE),
  -- #076 Poliwrath
  (1604, 62, NULL, 76, TRUE),
  -- #077 Politoed
  (1604, 186, NULL, 77, TRUE),
  -- #078 Goldeen
  (1604, 118, NULL, 78, TRUE),
  -- #079 Seaking
  (1604, 119, NULL, 79, TRUE),
  -- #080 Basculin
  (1604, 550, NULL, 80, TRUE),
  -- #081 Goomy
  (1604, 704, NULL, 81, TRUE),
  -- #082 Sliggoo
  (1604, 705, NULL, 82, TRUE),
  -- #083 Goodra
  (1604, 706, NULL, 83, TRUE),
  -- #084 Castform
  (1604, 351, NULL, 84, TRUE),
  -- #085 Trubbish
  (1604, 568, NULL, 85, TRUE),
  -- #086 Garbodor
  (1604, 569, NULL, 86, TRUE),
  -- #087 Minccino
  (1604, 572, NULL, 87, TRUE),
  -- #088 Cinccino
  (1604, 573, NULL, 88, TRUE),
  -- #089 Pineco
  (1604, 204, NULL, 89, TRUE),
  -- #090 Forretress
  (1604, 205, NULL, 90, TRUE),
  -- #091 Skarmory
  (1604, 227, NULL, 91, TRUE),
  -- #092 Ditto
  (1604, 132, NULL, 92, TRUE),
  -- #093 Cleffa
  (1604, 173, NULL, 93, TRUE),
  -- #094 Clefairy
  (1604, 35, NULL, 94, TRUE),
  -- #095 Clefable
  (1604, 36, NULL, 95, TRUE),
  -- #096 Elgyem
  (1604, 605, NULL, 96, TRUE),
  -- #097 Beheeyem
  (1604, 606, NULL, 97, TRUE),
  -- #098 Minior
  (1604, 774, NULL, 98, TRUE),
  -- #099 Beldum
  (1604, 374, NULL, 99, TRUE),
  -- #100 Metang
  (1604, 375, NULL, 100, TRUE),
  -- #101 Metagross
  (1604, 376, NULL, 101, TRUE),
  -- #102 Porygon
  (1604, 137, NULL, 102, TRUE),
  -- #103 Porygon2
  (1604, 233, NULL, 103, TRUE),
  -- #104 Porygon-Z
  (1604, 474, NULL, 104, TRUE),
  -- #105 Pancham
  (1604, 674, NULL, 105, TRUE),
  -- #106 Pangoro
  (1604, 675, NULL, 106, TRUE),
  -- #107 Komala
  (1604, 775, NULL, 107, TRUE),
  -- #108 Torkoal
  (1604, 324, NULL, 108, TRUE),
  -- #109 Turtonator
  (1604, 776, NULL, 109, TRUE),
  -- #110 Houndour
  (1604, 228, NULL, 110, TRUE),
  -- #111 Houndoom
  (1604, 229, NULL, 111, TRUE),
  -- #112 Dedenne
  (1604, 702, NULL, 112, TRUE),
  -- #113 Togedemaru
  (1604, 777, NULL, 113, TRUE),
  -- #114 Electrike
  (1604, 309, NULL, 114, TRUE),
  -- #115 Manectric
  (1604, 310, NULL, 115, TRUE),
  -- #116 Elekid
  (1604, 239, NULL, 116, TRUE),
  -- #117 Electabuzz
  (1604, 125, NULL, 117, TRUE),
  -- #118 Electivire
  (1604, 466, NULL, 118, TRUE),
  -- #119 Geodude
  (1604, 74, NULL, 119, TRUE),
  -- #120 Graveler
  (1604, 75, NULL, 120, TRUE),
  -- #121 Golem
  (1604, 76, NULL, 121, TRUE),
  -- #122 Sandile
  (1604, 551, NULL, 122, TRUE),
  -- #123 Krokorok
  (1604, 552, NULL, 123, TRUE),
  -- #124 Krookodile
  (1604, 553, NULL, 124, TRUE),
  -- #125 Trapinch
  (1604, 328, NULL, 125, TRUE),
  -- #126 Vibrava
  (1604, 329, NULL, 126, TRUE),
  -- #127 Flygon
  (1604, 330, NULL, 127, TRUE),
  -- #128 Gible
  (1604, 443, NULL, 128, TRUE),
  -- #129 Gabite
  (1604, 444, NULL, 129, TRUE),
  -- #130 Garchomp
  (1604, 445, NULL, 130, TRUE),
  -- #131 Baltoy
  (1604, 343, NULL, 131, TRUE),
  -- #132 Claydol
  (1604, 344, NULL, 132, TRUE),
  -- #133 Golett
  (1604, 622, NULL, 133, TRUE),
  -- #134 Golurk
  (1604, 623, NULL, 134, TRUE),
  -- #135 Klefki
  (1604, 707, NULL, 135, TRUE),
  -- #136 Mimikyu
  (1604, 778, NULL, 136, TRUE),
  -- #137 Shuppet
  (1604, 353, NULL, 137, TRUE),
  -- #138 Banette
  (1604, 354, NULL, 138, TRUE),
  -- #139 Frillish
  (1604, 592, NULL, 139, TRUE),
  -- #140 Jellicent
  (1604, 593, NULL, 140, TRUE),
  -- #141 Bruxish
  (1604, 779, NULL, 141, TRUE),
  -- #142 Drampa
  (1604, 780, NULL, 142, TRUE),
  -- #143 Absol
  (1604, 359, NULL, 143, TRUE),
  -- #144 Snorunt
  (1604, 361, NULL, 144, TRUE),
  -- #145 Glalie
  (1604, 362, NULL, 145, TRUE),
  -- #146 Froslass
  (1604, 478, NULL, 146, TRUE),
  -- #147 Sneasel
  (1604, 215, NULL, 147, TRUE),
  -- #148 Weavile
  (1604, 461, NULL, 148, TRUE),
  -- #149 Sandshrew
  (1604, 27, NULL, 149, TRUE),
  -- #150 Sandslash
  (1604, 28, NULL, 150, TRUE),
  -- #151 Vulpix
  (1604, 37, NULL, 151, TRUE),
  -- #152 Ninetales
  (1604, 38, NULL, 152, TRUE),
  -- #153 Vanillite
  (1604, 582, NULL, 153, TRUE),
  -- #154 Vanillish
  (1604, 583, NULL, 154, TRUE),
  -- #155 Vanilluxe
  (1604, 584, NULL, 155, TRUE),
  -- #156 Scraggy
  (1604, 559, NULL, 156, TRUE),
  -- #157 Scrafty
  (1604, 560, NULL, 157, TRUE),
  -- #158 Pawniard
  (1604, 624, NULL, 158, TRUE),
  -- #159 Bisharp
  (1604, 625, NULL, 159, TRUE),
  -- #160 Tapu Bulu
  (1604, 787, NULL, 160, TRUE);
