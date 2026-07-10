-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Alola Pokedex number in Pokémon Sun and Moon.
-- Cross-check: PokemonDB Sun / Moon Akala Island Pokedex section.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Akala Pokedex entries for Sun / Moon.
-- Akala is a browse/filter section; overall Alola remains the completion-counting Pokedex.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Pikipek
  (1503, 731, NULL, 1, TRUE),
  -- #002 Trumbeak
  (1503, 732, NULL, 2, TRUE),
  -- #003 Toucannon
  (1503, 733, NULL, 3, TRUE),
  -- #004 Yungoos
  (1503, 734, NULL, 4, TRUE),
  -- #005 Gumshoos
  (1503, 735, NULL, 5, TRUE),
  -- #006 Rattata
  (1503, 19, NULL, 6, TRUE),
  -- #007 Raticate
  (1503, 20, NULL, 7, TRUE),
  -- #008 Caterpie
  (1503, 10, NULL, 8, TRUE),
  -- #009 Metapod
  (1503, 11, NULL, 9, TRUE),
  -- #010 Butterfree
  (1503, 12, NULL, 10, TRUE),
  -- #011 Grubbin
  (1503, 736, NULL, 11, TRUE),
  -- #012 Charjabug
  (1503, 737, NULL, 12, TRUE),
  -- #013 Vikavolt
  (1503, 738, NULL, 13, TRUE),
  -- #014 Bonsly
  (1503, 438, NULL, 14, TRUE),
  -- #015 Sudowoodo
  (1503, 185, NULL, 15, TRUE),
  -- #016 Happiny
  (1503, 440, NULL, 16, TRUE),
  -- #017 Chansey
  (1503, 113, NULL, 17, TRUE),
  -- #018 Blissey
  (1503, 242, NULL, 18, TRUE),
  -- #019 Wingull
  (1503, 278, NULL, 19, TRUE),
  -- #020 Pelipper
  (1503, 279, NULL, 20, TRUE),
  -- #021 Crabrawler
  (1503, 739, NULL, 21, TRUE),
  -- #022 Crabominable
  (1503, 740, NULL, 22, TRUE),
  -- #023 Gastly
  (1503, 92, NULL, 23, TRUE),
  -- #024 Haunter
  (1503, 93, NULL, 24, TRUE),
  -- #025 Gengar
  (1503, 94, NULL, 25, TRUE),
  -- #026 Zubat
  (1503, 41, NULL, 26, TRUE),
  -- #027 Golbat
  (1503, 42, NULL, 27, TRUE),
  -- #028 Crobat
  (1503, 169, NULL, 28, TRUE),
  -- #029 Diglett
  (1503, 50, NULL, 29, TRUE),
  -- #030 Dugtrio
  (1503, 51, NULL, 30, TRUE),
  -- #031 Oricorio
  (1503, 741, NULL, 31, TRUE),
  -- #032 Psyduck
  (1503, 54, NULL, 32, TRUE),
  -- #033 Golduck
  (1503, 55, NULL, 33, TRUE),
  -- #034 Magikarp
  (1503, 129, NULL, 34, TRUE),
  -- #035 Gyarados
  (1503, 130, NULL, 35, TRUE),
  -- #036 Barboach
  (1503, 339, NULL, 36, TRUE),
  -- #037 Whiscash
  (1503, 340, NULL, 37, TRUE),
  -- #038 Tentacool
  (1503, 72, NULL, 38, TRUE),
  -- #039 Tentacruel
  (1503, 73, NULL, 39, TRUE),
  -- #040 Finneon
  (1503, 456, NULL, 40, TRUE),
  -- #041 Lumineon
  (1503, 457, NULL, 41, TRUE),
  -- #042 Wishiwashi
  (1503, 746, NULL, 42, TRUE),
  -- #043 Luvdisc
  (1503, 370, NULL, 43, TRUE),
  -- #044 Corsola
  (1503, 222, NULL, 44, TRUE),
  -- #045 Mareanie
  (1503, 747, NULL, 45, TRUE),
  -- #046 Toxapex
  (1503, 748, NULL, 46, TRUE),
  -- #047 Lillipup
  (1503, 506, NULL, 47, TRUE),
  -- #048 Herdier
  (1503, 507, NULL, 48, TRUE),
  -- #049 Stoutland
  (1503, 508, NULL, 49, TRUE),
  -- #050 Eevee
  (1503, 133, NULL, 50, TRUE),
  -- #051 Vaporeon
  (1503, 134, NULL, 51, TRUE),
  -- #052 Jolteon
  (1503, 135, NULL, 52, TRUE),
  -- #053 Flareon
  (1503, 136, NULL, 53, TRUE),
  -- #054 Espeon
  (1503, 196, NULL, 54, TRUE),
  -- #055 Umbreon
  (1503, 197, NULL, 55, TRUE),
  -- #056 Leafeon
  (1503, 470, NULL, 56, TRUE),
  -- #057 Glaceon
  (1503, 471, NULL, 57, TRUE),
  -- #058 Sylveon
  (1503, 700, NULL, 58, TRUE),
  -- #059 Mudbray
  (1503, 749, NULL, 59, TRUE),
  -- #060 Mudsdale
  (1503, 750, NULL, 60, TRUE),
  -- #061 Igglybuff
  (1503, 174, NULL, 61, TRUE),
  -- #062 Jigglypuff
  (1503, 39, NULL, 62, TRUE),
  -- #063 Wigglytuff
  (1503, 40, NULL, 63, TRUE),
  -- #064 Tauros
  (1503, 128, NULL, 64, TRUE),
  -- #065 Miltank
  (1503, 241, NULL, 65, TRUE),
  -- #066 Surskit
  (1503, 283, NULL, 66, TRUE),
  -- #067 Masquerain
  (1503, 284, NULL, 67, TRUE),
  -- #068 Dewpider
  (1503, 751, NULL, 68, TRUE),
  -- #069 Araquanid
  (1503, 752, NULL, 69, TRUE),
  -- #070 Fomantis
  (1503, 753, NULL, 70, TRUE),
  -- #071 Lurantis
  (1503, 754, NULL, 71, TRUE),
  -- #072 Morelull
  (1503, 755, NULL, 72, TRUE),
  -- #073 Shiinotic
  (1503, 756, NULL, 73, TRUE),
  -- #074 Paras
  (1503, 46, NULL, 74, TRUE),
  -- #075 Parasect
  (1503, 47, NULL, 75, TRUE),
  -- #076 Poliwag
  (1503, 60, NULL, 76, TRUE),
  -- #077 Poliwhirl
  (1503, 61, NULL, 77, TRUE),
  -- #078 Poliwrath
  (1503, 62, NULL, 78, TRUE),
  -- #079 Politoed
  (1503, 186, NULL, 79, TRUE),
  -- #080 Goldeen
  (1503, 118, NULL, 80, TRUE),
  -- #081 Seaking
  (1503, 119, NULL, 81, TRUE),
  -- #082 Feebas
  (1503, 349, NULL, 82, TRUE),
  -- #083 Milotic
  (1503, 350, NULL, 83, TRUE),
  -- #084 Alomomola
  (1503, 594, NULL, 84, TRUE),
  -- #085 Fletchling
  (1503, 661, NULL, 85, TRUE),
  -- #086 Fletchinder
  (1503, 662, NULL, 86, TRUE),
  -- #087 Talonflame
  (1503, 663, NULL, 87, TRUE),
  -- #088 Salandit
  (1503, 757, NULL, 88, TRUE),
  -- #089 Salazzle
  (1503, 758, NULL, 89, TRUE),
  -- #090 Cubone
  (1503, 104, NULL, 90, TRUE),
  -- #091 Marowak
  (1503, 105, NULL, 91, TRUE),
  -- #092 Kangaskhan
  (1503, 115, NULL, 92, TRUE),
  -- #093 Magby
  (1503, 240, NULL, 93, TRUE),
  -- #094 Magmar
  (1503, 126, NULL, 94, TRUE),
  -- #095 Magmortar
  (1503, 467, NULL, 95, TRUE),
  -- #096 Stufful
  (1503, 759, NULL, 96, TRUE),
  -- #097 Bewear
  (1503, 760, NULL, 97, TRUE),
  -- #098 Bounsweet
  (1503, 761, NULL, 98, TRUE),
  -- #099 Steenee
  (1503, 762, NULL, 99, TRUE),
  -- #100 Tsareena
  (1503, 763, NULL, 100, TRUE),
  -- #101 Comfey
  (1503, 764, NULL, 101, TRUE),
  -- #102 Pinsir
  (1503, 127, NULL, 102, TRUE),
  -- #103 Oranguru
  (1503, 765, NULL, 103, TRUE),
  -- #104 Passimian
  (1503, 766, NULL, 104, TRUE),
  -- #105 Goomy
  (1503, 704, NULL, 105, TRUE),
  -- #106 Sliggoo
  (1503, 705, NULL, 106, TRUE),
  -- #107 Goodra
  (1503, 706, NULL, 107, TRUE),
  -- #108 Castform
  (1503, 351, NULL, 108, TRUE),
  -- #109 Wimpod
  (1503, 767, NULL, 109, TRUE),
  -- #110 Golisopod
  (1503, 768, NULL, 110, TRUE),
  -- #111 Staryu
  (1503, 120, NULL, 111, TRUE),
  -- #112 Starmie
  (1503, 121, NULL, 112, TRUE),
  -- #113 Sandygast
  (1503, 769, NULL, 113, TRUE),
  -- #114 Palossand
  (1503, 770, NULL, 114, TRUE),
  -- #115 Cranidos
  (1503, 408, NULL, 115, TRUE),
  -- #116 Rampardos
  (1503, 409, NULL, 116, TRUE),
  -- #117 Shieldon
  (1503, 410, NULL, 117, TRUE),
  -- #118 Bastiodon
  (1503, 411, NULL, 118, TRUE),
  -- #119 Archen
  (1503, 566, NULL, 119, TRUE),
  -- #120 Archeops
  (1503, 567, NULL, 120, TRUE),
  -- #121 Tirtouga
  (1503, 564, NULL, 121, TRUE),
  -- #122 Carracosta
  (1503, 565, NULL, 122, TRUE),
  -- #123 Phantump
  (1503, 708, NULL, 123, TRUE),
  -- #124 Trevenant
  (1503, 709, NULL, 124, TRUE),
  -- #125 Nosepass
  (1503, 299, NULL, 125, TRUE),
  -- #126 Probopass
  (1503, 476, NULL, 126, TRUE),
  -- #127 Pyukumuku
  (1503, 771, NULL, 127, TRUE),
  -- #128 Chinchou
  (1503, 170, NULL, 128, TRUE),
  -- #129 Lanturn
  (1503, 171, NULL, 129, TRUE),
  -- #130 Tapu Lele
  (1503, 786, NULL, 130, TRUE);
