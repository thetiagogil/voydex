-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Alola Pokedex number in Pokémon Sun and Moon.
-- Cross-check: PokemonDB Sun / Moon Poni Island Pokedex section.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Poni Pokedex entries for Sun / Moon.
-- Poni is a browse/filter section; overall Alola remains the completion-counting Pokedex.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Pikipek
  (1505, 731, NULL, 1, TRUE),
  -- #002 Trumbeak
  (1505, 732, NULL, 2, TRUE),
  -- #003 Toucannon
  (1505, 733, NULL, 3, TRUE),
  -- #004 Yungoos
  (1505, 734, NULL, 4, TRUE),
  -- #005 Gumshoos
  (1505, 735, NULL, 5, TRUE),
  -- #006 Rattata
  (1505, 19, NULL, 6, TRUE),
  -- #007 Raticate
  (1505, 20, NULL, 7, TRUE),
  -- #008 Happiny
  (1505, 440, NULL, 8, TRUE),
  -- #009 Chansey
  (1505, 113, NULL, 9, TRUE),
  -- #010 Blissey
  (1505, 242, NULL, 10, TRUE),
  -- #011 Wingull
  (1505, 278, NULL, 11, TRUE),
  -- #012 Pelipper
  (1505, 279, NULL, 12, TRUE),
  -- #013 Drowzee
  (1505, 96, NULL, 13, TRUE),
  -- #014 Hypno
  (1505, 97, NULL, 14, TRUE),
  -- #015 Makuhita
  (1505, 296, NULL, 15, TRUE),
  -- #016 Hariyama
  (1505, 297, NULL, 16, TRUE),
  -- #017 Crabrawler
  (1505, 739, NULL, 17, TRUE),
  -- #018 Crabominable
  (1505, 740, NULL, 18, TRUE),
  -- #019 Zubat
  (1505, 41, NULL, 19, TRUE),
  -- #020 Golbat
  (1505, 42, NULL, 20, TRUE),
  -- #021 Crobat
  (1505, 169, NULL, 21, TRUE),
  -- #022 Diglett
  (1505, 50, NULL, 22, TRUE),
  -- #023 Dugtrio
  (1505, 51, NULL, 23, TRUE),
  -- #024 Spearow
  (1505, 21, NULL, 24, TRUE),
  -- #025 Fearow
  (1505, 22, NULL, 25, TRUE),
  -- #026 Rufflet
  (1505, 627, NULL, 26, TRUE),
  -- #027 Braviary
  (1505, 628, NULL, 27, TRUE),
  -- #028 Vullaby
  (1505, 629, NULL, 28, TRUE),
  -- #029 Mandibuzz
  (1505, 630, NULL, 29, TRUE),
  -- #030 Mankey
  (1505, 56, NULL, 30, TRUE),
  -- #031 Primeape
  (1505, 57, NULL, 31, TRUE),
  -- #032 Oricorio
  (1505, 741, NULL, 32, TRUE),
  -- #033 Cutiefly
  (1505, 742, NULL, 33, TRUE),
  -- #034 Ribombee
  (1505, 743, NULL, 34, TRUE),
  -- #035 Petilil
  (1505, 548, NULL, 35, TRUE),
  -- #036 Lilligant
  (1505, 549, NULL, 36, TRUE),
  -- #037 Cottonee
  (1505, 546, NULL, 37, TRUE),
  -- #038 Whimsicott
  (1505, 547, NULL, 38, TRUE),
  -- #039 Psyduck
  (1505, 54, NULL, 39, TRUE),
  -- #040 Golduck
  (1505, 55, NULL, 40, TRUE),
  -- #041 Magikarp
  (1505, 129, NULL, 41, TRUE),
  -- #042 Gyarados
  (1505, 130, NULL, 42, TRUE),
  -- #043 Barboach
  (1505, 339, NULL, 43, TRUE),
  -- #044 Whiscash
  (1505, 340, NULL, 44, TRUE),
  -- #045 Machop
  (1505, 66, NULL, 45, TRUE),
  -- #046 Machoke
  (1505, 67, NULL, 46, TRUE),
  -- #047 Machamp
  (1505, 68, NULL, 47, TRUE),
  -- #048 Roggenrola
  (1505, 524, NULL, 48, TRUE),
  -- #049 Boldore
  (1505, 525, NULL, 49, TRUE),
  -- #050 Gigalith
  (1505, 526, NULL, 50, TRUE),
  -- #051 Carbink
  (1505, 703, NULL, 51, TRUE),
  -- #052 Sableye
  (1505, 302, NULL, 52, TRUE),
  -- #053 Rockruff
  (1505, 744, NULL, 53, TRUE),
  -- #054 Lycanroc
  (1505, 745, NULL, 54, TRUE),
  -- #055 Tentacool
  (1505, 72, NULL, 55, TRUE),
  -- #056 Tentacruel
  (1505, 73, NULL, 56, TRUE),
  -- #057 Finneon
  (1505, 456, NULL, 57, TRUE),
  -- #058 Lumineon
  (1505, 457, NULL, 58, TRUE),
  -- #059 Mudbray
  (1505, 749, NULL, 59, TRUE),
  -- #060 Mudsdale
  (1505, 750, NULL, 60, TRUE),
  -- #061 Tauros
  (1505, 128, NULL, 61, TRUE),
  -- #062 Miltank
  (1505, 241, NULL, 62, TRUE),
  -- #063 Stufful
  (1505, 759, NULL, 63, TRUE),
  -- #064 Bewear
  (1505, 760, NULL, 64, TRUE),
  -- #065 Pinsir
  (1505, 127, NULL, 65, TRUE),
  -- #066 Goomy
  (1505, 704, NULL, 66, TRUE),
  -- #067 Sliggoo
  (1505, 705, NULL, 67, TRUE),
  -- #068 Goodra
  (1505, 706, NULL, 68, TRUE),
  -- #069 Castform
  (1505, 351, NULL, 69, TRUE),
  -- #070 Wimpod
  (1505, 767, NULL, 70, TRUE),
  -- #071 Golisopod
  (1505, 768, NULL, 71, TRUE),
  -- #072 Skarmory
  (1505, 227, NULL, 72, TRUE),
  -- #073 Snubbull
  (1505, 209, NULL, 73, TRUE),
  -- #074 Granbull
  (1505, 210, NULL, 74, TRUE),
  -- #075 Shellos
  (1505, 422, NULL, 75, TRUE),
  -- #076 Gastrodon
  (1505, 423, NULL, 76, TRUE),
  -- #077 Relicanth
  (1505, 369, NULL, 77, TRUE),
  -- #078 Dhelmise
  (1505, 781, NULL, 78, TRUE),
  -- #079 Carvanha
  (1505, 318, NULL, 79, TRUE),
  -- #080 Sharpedo
  (1505, 319, NULL, 80, TRUE),
  -- #081 Wailmer
  (1505, 320, NULL, 81, TRUE),
  -- #082 Wailord
  (1505, 321, NULL, 82, TRUE),
  -- #083 Lapras
  (1505, 131, NULL, 83, TRUE),
  -- #084 Exeggcute
  (1505, 102, NULL, 84, TRUE),
  -- #085 Exeggutor
  (1505, 103, NULL, 85, TRUE),
  -- #086 Jangmo-o
  (1505, 782, NULL, 86, TRUE),
  -- #087 Hakamo-o
  (1505, 783, NULL, 87, TRUE),
  -- #088 Kommo-o
  (1505, 784, NULL, 88, TRUE),
  -- #089 Emolga
  (1505, 587, NULL, 89, TRUE),
  -- #090 Scyther
  (1505, 123, NULL, 90, TRUE),
  -- #091 Scizor
  (1505, 212, NULL, 91, TRUE),
  -- #092 Murkrow
  (1505, 198, NULL, 92, TRUE),
  -- #093 Honchkrow
  (1505, 430, NULL, 93, TRUE),
  -- #094 Riolu
  (1505, 447, NULL, 94, TRUE),
  -- #095 Lucario
  (1505, 448, NULL, 95, TRUE),
  -- #096 Dratini
  (1505, 147, NULL, 96, TRUE),
  -- #097 Dragonair
  (1505, 148, NULL, 97, TRUE),
  -- #098 Dragonite
  (1505, 149, NULL, 98, TRUE),
  -- #099 Aerodactyl
  (1505, 142, NULL, 99, TRUE),
  -- #100 Tapu Fini
  (1505, 788, NULL, 100, TRUE);
