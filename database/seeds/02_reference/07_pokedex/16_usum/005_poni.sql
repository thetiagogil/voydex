-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Alola Pokedex number in Pokémon Ultra Sun and Ultra Moon.
-- Cross-check: PokemonDB Ultra Sun / Ultra Moon Poni Island Pokedex section.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Poni Pokedex entries for Ultra Sun / Ultra Moon.
-- Poni is a browse/filter section; overall Alola remains the completion-counting Pokedex.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Pikipek
  (1605, 731, NULL, 1, TRUE),
  -- #002 Trumbeak
  (1605, 732, NULL, 2, TRUE),
  -- #003 Toucannon
  (1605, 733, NULL, 3, TRUE),
  -- #004 Yungoos
  (1605, 734, NULL, 4, TRUE),
  -- #005 Gumshoos
  (1605, 735, NULL, 5, TRUE),
  -- #006 Rattata
  (1605, 19, NULL, 6, TRUE),
  -- #007 Raticate
  (1605, 20, NULL, 7, TRUE),
  -- #008 Buneary
  (1605, 427, NULL, 8, TRUE),
  -- #009 Lopunny
  (1605, 428, NULL, 9, TRUE),
  -- #010 Inkay
  (1605, 686, NULL, 10, TRUE),
  -- #011 Malamar
  (1605, 687, NULL, 11, TRUE),
  -- #012 Zorua
  (1605, 570, NULL, 12, TRUE),
  -- #013 Zoroark
  (1605, 571, NULL, 13, TRUE),
  -- #014 Furfrou
  (1605, 676, NULL, 14, TRUE),
  -- #015 Happiny
  (1605, 440, NULL, 15, TRUE),
  -- #016 Chansey
  (1605, 113, NULL, 16, TRUE),
  -- #017 Blissey
  (1605, 242, NULL, 17, TRUE),
  -- #018 Wingull
  (1605, 278, NULL, 18, TRUE),
  -- #019 Pelipper
  (1605, 279, NULL, 19, TRUE),
  -- #020 Drowzee
  (1605, 96, NULL, 20, TRUE),
  -- #021 Hypno
  (1605, 97, NULL, 21, TRUE),
  -- #022 Makuhita
  (1605, 296, NULL, 22, TRUE),
  -- #023 Hariyama
  (1605, 297, NULL, 23, TRUE),
  -- #024 Crabrawler
  (1605, 739, NULL, 24, TRUE),
  -- #025 Crabominable
  (1605, 740, NULL, 25, TRUE),
  -- #026 Zubat
  (1605, 41, NULL, 26, TRUE),
  -- #027 Golbat
  (1605, 42, NULL, 27, TRUE),
  -- #028 Crobat
  (1605, 169, NULL, 28, TRUE),
  -- #029 Noibat
  (1605, 714, NULL, 29, TRUE),
  -- #030 Noivern
  (1605, 715, NULL, 30, TRUE),
  -- #031 Diglett
  (1605, 50, NULL, 31, TRUE),
  -- #032 Dugtrio
  (1605, 51, NULL, 32, TRUE),
  -- #033 Spearow
  (1605, 21, NULL, 33, TRUE),
  -- #034 Fearow
  (1605, 22, NULL, 34, TRUE),
  -- #035 Rufflet
  (1605, 627, NULL, 35, TRUE),
  -- #036 Braviary
  (1605, 628, NULL, 36, TRUE),
  -- #037 Vullaby
  (1605, 629, NULL, 37, TRUE),
  -- #038 Mandibuzz
  (1605, 630, NULL, 38, TRUE),
  -- #039 Mankey
  (1605, 56, NULL, 39, TRUE),
  -- #040 Primeape
  (1605, 57, NULL, 40, TRUE),
  -- #041 Oricorio
  (1605, 741, NULL, 41, TRUE),
  -- #042 Cutiefly
  (1605, 742, NULL, 42, TRUE),
  -- #043 Ribombee
  (1605, 743, NULL, 43, TRUE),
  -- #044 Flabebe
  (1605, 669, NULL, 44, TRUE),
  -- #045 Floette
  (1605, 670, NULL, 45, TRUE),
  -- #046 Florges
  (1605, 671, NULL, 46, TRUE),
  -- #047 Petilil
  (1605, 548, NULL, 47, TRUE),
  -- #048 Lilligant
  (1605, 549, NULL, 48, TRUE),
  -- #049 Cottonee
  (1605, 546, NULL, 49, TRUE),
  -- #050 Whimsicott
  (1605, 547, NULL, 50, TRUE),
  -- #051 Psyduck
  (1605, 54, NULL, 51, TRUE),
  -- #052 Golduck
  (1605, 55, NULL, 52, TRUE),
  -- #053 Magikarp
  (1605, 129, NULL, 53, TRUE),
  -- #054 Gyarados
  (1605, 130, NULL, 54, TRUE),
  -- #055 Barboach
  (1605, 339, NULL, 55, TRUE),
  -- #056 Whiscash
  (1605, 340, NULL, 56, TRUE),
  -- #057 Machop
  (1605, 66, NULL, 57, TRUE),
  -- #058 Machoke
  (1605, 67, NULL, 58, TRUE),
  -- #059 Machamp
  (1605, 68, NULL, 59, TRUE),
  -- #060 Roggenrola
  (1605, 524, NULL, 60, TRUE),
  -- #061 Boldore
  (1605, 525, NULL, 61, TRUE),
  -- #062 Gigalith
  (1605, 526, NULL, 62, TRUE),
  -- #063 Carbink
  (1605, 703, NULL, 63, TRUE),
  -- #064 Sableye
  (1605, 302, NULL, 64, TRUE),
  -- #065 Rockruff
  (1605, 744, NULL, 65, TRUE),
  -- #066 Lycanroc
  (1605, 745, NULL, 66, TRUE),
  -- #067 Tentacool
  (1605, 72, NULL, 67, TRUE),
  -- #068 Tentacruel
  (1605, 73, NULL, 68, TRUE),
  -- #069 Finneon
  (1605, 456, NULL, 69, TRUE),
  -- #070 Lumineon
  (1605, 457, NULL, 70, TRUE),
  -- #071 Mudbray
  (1605, 749, NULL, 71, TRUE),
  -- #072 Mudsdale
  (1605, 750, NULL, 72, TRUE),
  -- #073 Tauros
  (1605, 128, NULL, 73, TRUE),
  -- #074 Miltank
  (1605, 241, NULL, 74, TRUE),
  -- #075 Basculin
  (1605, 550, NULL, 75, TRUE),
  -- #076 Stufful
  (1605, 759, NULL, 76, TRUE),
  -- #077 Bewear
  (1605, 760, NULL, 77, TRUE),
  -- #078 Pinsir
  (1605, 127, NULL, 78, TRUE),
  -- #079 Goomy
  (1605, 704, NULL, 79, TRUE),
  -- #080 Sliggoo
  (1605, 705, NULL, 80, TRUE),
  -- #081 Goodra
  (1605, 706, NULL, 81, TRUE),
  -- #082 Castform
  (1605, 351, NULL, 82, TRUE),
  -- #083 Wimpod
  (1605, 767, NULL, 83, TRUE),
  -- #084 Golisopod
  (1605, 768, NULL, 84, TRUE),
  -- #085 Skarmory
  (1605, 227, NULL, 85, TRUE),
  -- #086 Snubbull
  (1605, 209, NULL, 86, TRUE),
  -- #087 Granbull
  (1605, 210, NULL, 87, TRUE),
  -- #088 Shellos
  (1605, 422, NULL, 88, TRUE),
  -- #089 Gastrodon
  (1605, 423, NULL, 89, TRUE),
  -- #090 Relicanth
  (1605, 369, NULL, 90, TRUE),
  -- #091 Dhelmise
  (1605, 781, NULL, 91, TRUE),
  -- #092 Carvanha
  (1605, 318, NULL, 92, TRUE),
  -- #093 Sharpedo
  (1605, 319, NULL, 93, TRUE),
  -- #094 Skrelp
  (1605, 690, NULL, 94, TRUE),
  -- #095 Dragalge
  (1605, 691, NULL, 95, TRUE),
  -- #096 Clauncher
  (1605, 692, NULL, 96, TRUE),
  -- #097 Clawitzer
  (1605, 693, NULL, 97, TRUE),
  -- #098 Wailmer
  (1605, 320, NULL, 98, TRUE),
  -- #099 Wailord
  (1605, 321, NULL, 99, TRUE),
  -- #100 Lapras
  (1605, 131, NULL, 100, TRUE),
  -- #101 Tropius
  (1605, 357, NULL, 101, TRUE),
  -- #102 Exeggcute
  (1605, 102, NULL, 102, TRUE),
  -- #103 Exeggutor
  (1605, 103, NULL, 103, TRUE),
  -- #104 Corphish
  (1605, 341, NULL, 104, TRUE),
  -- #105 Crawdaunt
  (1605, 342, NULL, 105, TRUE),
  -- #106 Mienfoo
  (1605, 619, NULL, 106, TRUE),
  -- #107 Mienshao
  (1605, 620, NULL, 107, TRUE),
  -- #108 Jangmo-o
  (1605, 782, NULL, 108, TRUE),
  -- #109 Hakamo-o
  (1605, 783, NULL, 109, TRUE),
  -- #110 Kommo-o
  (1605, 784, NULL, 110, TRUE),
  -- #111 Emolga
  (1605, 587, NULL, 111, TRUE),
  -- #112 Scyther
  (1605, 123, NULL, 112, TRUE),
  -- #113 Scizor
  (1605, 212, NULL, 113, TRUE),
  -- #114 Heracross
  (1605, 214, NULL, 114, TRUE),
  -- #115 Aipom
  (1605, 190, NULL, 115, TRUE),
  -- #116 Ambipom
  (1605, 424, NULL, 116, TRUE),
  -- #117 Litleo
  (1605, 667, NULL, 117, TRUE),
  -- #118 Pyroar
  (1605, 668, NULL, 118, TRUE),
  -- #119 Misdreavus
  (1605, 200, NULL, 119, TRUE),
  -- #120 Mismagius
  (1605, 429, NULL, 120, TRUE),
  -- #121 Druddigon
  (1605, 621, NULL, 121, TRUE),
  -- #122 Lickitung
  (1605, 108, NULL, 122, TRUE),
  -- #123 Lickilicky
  (1605, 463, NULL, 123, TRUE),
  -- #124 Riolu
  (1605, 447, NULL, 124, TRUE),
  -- #125 Lucario
  (1605, 448, NULL, 125, TRUE),
  -- #126 Dratini
  (1605, 147, NULL, 126, TRUE),
  -- #127 Dragonair
  (1605, 148, NULL, 127, TRUE),
  -- #128 Dragonite
  (1605, 149, NULL, 128, TRUE),
  -- #129 Aerodactyl
  (1605, 142, NULL, 129, TRUE),
  -- #130 Tapu Fini
  (1605, 788, NULL, 130, TRUE);
