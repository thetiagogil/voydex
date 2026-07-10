-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Alola Pokedex number in Pokémon Sun and Moon.
-- Cross-check: PokemonDB Sun / Moon Ulaula Island Pokedex section.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Ulaula Pokedex entries for Sun / Moon.
-- Ulaula is a browse/filter section; overall Alola remains the completion-counting Pokedex.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Pikipek
  (1504, 731, NULL, 1, TRUE),
  -- #002 Trumbeak
  (1504, 732, NULL, 2, TRUE),
  -- #003 Toucannon
  (1504, 733, NULL, 3, TRUE),
  -- #004 Yungoos
  (1504, 734, NULL, 4, TRUE),
  -- #005 Gumshoos
  (1504, 735, NULL, 5, TRUE),
  -- #006 Rattata
  (1504, 19, NULL, 6, TRUE),
  -- #007 Raticate
  (1504, 20, NULL, 7, TRUE),
  -- #008 Ledyba
  (1504, 165, NULL, 8, TRUE),
  -- #009 Ledian
  (1504, 166, NULL, 9, TRUE),
  -- #010 Spinarak
  (1504, 167, NULL, 10, TRUE),
  -- #011 Ariados
  (1504, 168, NULL, 11, TRUE),
  -- #012 Grubbin
  (1504, 736, NULL, 12, TRUE),
  -- #013 Charjabug
  (1504, 737, NULL, 13, TRUE),
  -- #014 Vikavolt
  (1504, 738, NULL, 14, TRUE),
  -- #015 Happiny
  (1504, 440, NULL, 15, TRUE),
  -- #016 Chansey
  (1504, 113, NULL, 16, TRUE),
  -- #017 Blissey
  (1504, 242, NULL, 17, TRUE),
  -- #018 Slowpoke
  (1504, 79, NULL, 18, TRUE),
  -- #019 Slowbro
  (1504, 80, NULL, 19, TRUE),
  -- #020 Slowking
  (1504, 199, NULL, 20, TRUE),
  -- #021 Wingull
  (1504, 278, NULL, 21, TRUE),
  -- #022 Pelipper
  (1504, 279, NULL, 22, TRUE),
  -- #023 Meowth
  (1504, 52, NULL, 23, TRUE),
  -- #024 Persian
  (1504, 53, NULL, 24, TRUE),
  -- #025 Magnemite
  (1504, 81, NULL, 25, TRUE),
  -- #026 Magneton
  (1504, 82, NULL, 26, TRUE),
  -- #027 Magnezone
  (1504, 462, NULL, 27, TRUE),
  -- #028 Grimer
  (1504, 88, NULL, 28, TRUE),
  -- #029 Muk
  (1504, 89, NULL, 29, TRUE),
  -- #030 Crabrawler
  (1504, 739, NULL, 30, TRUE),
  -- #031 Crabominable
  (1504, 740, NULL, 31, TRUE),
  -- #032 Gastly
  (1504, 92, NULL, 32, TRUE),
  -- #033 Haunter
  (1504, 93, NULL, 33, TRUE),
  -- #034 Gengar
  (1504, 94, NULL, 34, TRUE),
  -- #035 Zubat
  (1504, 41, NULL, 35, TRUE),
  -- #036 Golbat
  (1504, 42, NULL, 36, TRUE),
  -- #037 Crobat
  (1504, 169, NULL, 37, TRUE),
  -- #038 Diglett
  (1504, 50, NULL, 38, TRUE),
  -- #039 Dugtrio
  (1504, 51, NULL, 39, TRUE),
  -- #040 Spearow
  (1504, 21, NULL, 40, TRUE),
  -- #041 Fearow
  (1504, 22, NULL, 41, TRUE),
  -- #042 Oricorio
  (1504, 741, NULL, 42, TRUE),
  -- #043 Cutiefly
  (1504, 742, NULL, 43, TRUE),
  -- #044 Ribombee
  (1504, 743, NULL, 44, TRUE),
  -- #045 Petilil
  (1504, 548, NULL, 45, TRUE),
  -- #046 Lilligant
  (1504, 549, NULL, 46, TRUE),
  -- #047 Cottonee
  (1504, 546, NULL, 47, TRUE),
  -- #048 Whimsicott
  (1504, 547, NULL, 48, TRUE),
  -- #049 Psyduck
  (1504, 54, NULL, 49, TRUE),
  -- #050 Golduck
  (1504, 55, NULL, 50, TRUE),
  -- #051 Magikarp
  (1504, 129, NULL, 51, TRUE),
  -- #052 Gyarados
  (1504, 130, NULL, 52, TRUE),
  -- #053 Tentacool
  (1504, 72, NULL, 53, TRUE),
  -- #054 Tentacruel
  (1504, 73, NULL, 54, TRUE),
  -- #055 Finneon
  (1504, 456, NULL, 55, TRUE),
  -- #056 Lumineon
  (1504, 457, NULL, 56, TRUE),
  -- #057 Wishiwashi
  (1504, 746, NULL, 57, TRUE),
  -- #058 Mudbray
  (1504, 749, NULL, 58, TRUE),
  -- #059 Mudsdale
  (1504, 750, NULL, 59, TRUE),
  -- #060 Surskit
  (1504, 283, NULL, 60, TRUE),
  -- #061 Masquerain
  (1504, 284, NULL, 61, TRUE),
  -- #062 Dewpider
  (1504, 751, NULL, 62, TRUE),
  -- #063 Araquanid
  (1504, 752, NULL, 63, TRUE),
  -- #064 Morelull
  (1504, 755, NULL, 64, TRUE),
  -- #065 Shiinotic
  (1504, 756, NULL, 65, TRUE),
  -- #066 Paras
  (1504, 46, NULL, 66, TRUE),
  -- #067 Parasect
  (1504, 47, NULL, 67, TRUE),
  -- #068 Poliwag
  (1504, 60, NULL, 68, TRUE),
  -- #069 Poliwhirl
  (1504, 61, NULL, 69, TRUE),
  -- #070 Poliwrath
  (1504, 62, NULL, 70, TRUE),
  -- #071 Politoed
  (1504, 186, NULL, 71, TRUE),
  -- #072 Goldeen
  (1504, 118, NULL, 72, TRUE),
  -- #073 Seaking
  (1504, 119, NULL, 73, TRUE),
  -- #074 Goomy
  (1504, 704, NULL, 74, TRUE),
  -- #075 Sliggoo
  (1504, 705, NULL, 75, TRUE),
  -- #076 Goodra
  (1504, 706, NULL, 76, TRUE),
  -- #077 Castform
  (1504, 351, NULL, 77, TRUE),
  -- #078 Trubbish
  (1504, 568, NULL, 78, TRUE),
  -- #079 Garbodor
  (1504, 569, NULL, 79, TRUE),
  -- #080 Skarmory
  (1504, 227, NULL, 80, TRUE),
  -- #081 Ditto
  (1504, 132, NULL, 81, TRUE),
  -- #082 Cleffa
  (1504, 173, NULL, 82, TRUE),
  -- #083 Clefairy
  (1504, 35, NULL, 83, TRUE),
  -- #084 Clefable
  (1504, 36, NULL, 84, TRUE),
  -- #085 Minior
  (1504, 774, NULL, 85, TRUE),
  -- #086 Beldum
  (1504, 374, NULL, 86, TRUE),
  -- #087 Metang
  (1504, 375, NULL, 87, TRUE),
  -- #088 Metagross
  (1504, 376, NULL, 88, TRUE),
  -- #089 Porygon
  (1504, 137, NULL, 89, TRUE),
  -- #090 Porygon2
  (1504, 233, NULL, 90, TRUE),
  -- #091 Porygon-Z
  (1504, 474, NULL, 91, TRUE),
  -- #092 Pancham
  (1504, 674, NULL, 92, TRUE),
  -- #093 Pangoro
  (1504, 675, NULL, 93, TRUE),
  -- #094 Komala
  (1504, 775, NULL, 94, TRUE),
  -- #095 Torkoal
  (1504, 324, NULL, 95, TRUE),
  -- #096 Turtonator
  (1504, 776, NULL, 96, TRUE),
  -- #097 Togedemaru
  (1504, 777, NULL, 97, TRUE),
  -- #098 Elekid
  (1504, 239, NULL, 98, TRUE),
  -- #099 Electabuzz
  (1504, 125, NULL, 99, TRUE),
  -- #100 Electivire
  (1504, 466, NULL, 100, TRUE),
  -- #101 Geodude
  (1504, 74, NULL, 101, TRUE),
  -- #102 Graveler
  (1504, 75, NULL, 102, TRUE),
  -- #103 Golem
  (1504, 76, NULL, 103, TRUE),
  -- #104 Sandile
  (1504, 551, NULL, 104, TRUE),
  -- #105 Krokorok
  (1504, 552, NULL, 105, TRUE),
  -- #106 Krookodile
  (1504, 553, NULL, 106, TRUE),
  -- #107 Trapinch
  (1504, 328, NULL, 107, TRUE),
  -- #108 Vibrava
  (1504, 329, NULL, 108, TRUE),
  -- #109 Flygon
  (1504, 330, NULL, 109, TRUE),
  -- #110 Gible
  (1504, 443, NULL, 110, TRUE),
  -- #111 Gabite
  (1504, 444, NULL, 111, TRUE),
  -- #112 Garchomp
  (1504, 445, NULL, 112, TRUE),
  -- #113 Klefki
  (1504, 707, NULL, 113, TRUE),
  -- #114 Mimikyu
  (1504, 778, NULL, 114, TRUE),
  -- #115 Bruxish
  (1504, 779, NULL, 115, TRUE),
  -- #116 Drampa
  (1504, 780, NULL, 116, TRUE),
  -- #117 Absol
  (1504, 359, NULL, 117, TRUE),
  -- #118 Snorunt
  (1504, 361, NULL, 118, TRUE),
  -- #119 Glalie
  (1504, 362, NULL, 119, TRUE),
  -- #120 Froslass
  (1504, 478, NULL, 120, TRUE),
  -- #121 Sneasel
  (1504, 215, NULL, 121, TRUE),
  -- #122 Weavile
  (1504, 461, NULL, 122, TRUE),
  -- #123 Sandshrew
  (1504, 27, NULL, 123, TRUE),
  -- #124 Sandslash
  (1504, 28, NULL, 124, TRUE),
  -- #125 Vulpix
  (1504, 37, NULL, 125, TRUE),
  -- #126 Ninetales
  (1504, 38, NULL, 126, TRUE),
  -- #127 Vanillite
  (1504, 582, NULL, 127, TRUE),
  -- #128 Vanillish
  (1504, 583, NULL, 128, TRUE),
  -- #129 Vanilluxe
  (1504, 584, NULL, 129, TRUE),
  -- #130 Tapu Bulu
  (1504, 787, NULL, 130, TRUE);
