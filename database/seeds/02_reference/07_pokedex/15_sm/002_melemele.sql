-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Alola Pokedex number in Pokémon Sun and Moon.
-- Cross-check: PokemonDB Sun / Moon Melemele Island Pokedex section.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Melemele Pokedex entries for Sun / Moon.
-- Melemele is a browse/filter section; overall Alola remains the completion-counting Pokedex.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Rowlet
  (1502, 722, NULL, 1, TRUE),
  -- #002 Dartrix
  (1502, 723, NULL, 2, TRUE),
  -- #003 Decidueye
  (1502, 724, NULL, 3, TRUE),
  -- #004 Litten
  (1502, 725, NULL, 4, TRUE),
  -- #005 Torracat
  (1502, 726, NULL, 5, TRUE),
  -- #006 Incineroar
  (1502, 727, NULL, 6, TRUE),
  -- #007 Popplio
  (1502, 728, NULL, 7, TRUE),
  -- #008 Brionne
  (1502, 729, NULL, 8, TRUE),
  -- #009 Primarina
  (1502, 730, NULL, 9, TRUE),
  -- #010 Pikipek
  (1502, 731, NULL, 10, TRUE),
  -- #011 Trumbeak
  (1502, 732, NULL, 11, TRUE),
  -- #012 Toucannon
  (1502, 733, NULL, 12, TRUE),
  -- #013 Yungoos
  (1502, 734, NULL, 13, TRUE),
  -- #014 Gumshoos
  (1502, 735, NULL, 14, TRUE),
  -- #015 Rattata
  (1502, 19, NULL, 15, TRUE),
  -- #016 Raticate
  (1502, 20, NULL, 16, TRUE),
  -- #017 Caterpie
  (1502, 10, NULL, 17, TRUE),
  -- #018 Metapod
  (1502, 11, NULL, 18, TRUE),
  -- #019 Butterfree
  (1502, 12, NULL, 19, TRUE),
  -- #020 Ledyba
  (1502, 165, NULL, 20, TRUE),
  -- #021 Ledian
  (1502, 166, NULL, 21, TRUE),
  -- #022 Spinarak
  (1502, 167, NULL, 22, TRUE),
  -- #023 Ariados
  (1502, 168, NULL, 23, TRUE),
  -- #024 Pichu
  (1502, 172, NULL, 24, TRUE),
  -- #025 Pikachu
  (1502, 25, NULL, 25, TRUE),
  -- #026 Raichu
  (1502, 26, NULL, 26, TRUE),
  -- #027 Grubbin
  (1502, 736, NULL, 27, TRUE),
  -- #028 Charjabug
  (1502, 737, NULL, 28, TRUE),
  -- #029 Vikavolt
  (1502, 738, NULL, 29, TRUE),
  -- #030 Bonsly
  (1502, 438, NULL, 30, TRUE),
  -- #031 Sudowoodo
  (1502, 185, NULL, 31, TRUE),
  -- #032 Happiny
  (1502, 440, NULL, 32, TRUE),
  -- #033 Chansey
  (1502, 113, NULL, 33, TRUE),
  -- #034 Blissey
  (1502, 242, NULL, 34, TRUE),
  -- #035 Munchlax
  (1502, 446, NULL, 35, TRUE),
  -- #036 Snorlax
  (1502, 143, NULL, 36, TRUE),
  -- #037 Slowpoke
  (1502, 79, NULL, 37, TRUE),
  -- #038 Slowbro
  (1502, 80, NULL, 38, TRUE),
  -- #039 Slowking
  (1502, 199, NULL, 39, TRUE),
  -- #040 Wingull
  (1502, 278, NULL, 40, TRUE),
  -- #041 Pelipper
  (1502, 279, NULL, 41, TRUE),
  -- #042 Abra
  (1502, 63, NULL, 42, TRUE),
  -- #043 Kadabra
  (1502, 64, NULL, 43, TRUE),
  -- #044 Alakazam
  (1502, 65, NULL, 44, TRUE),
  -- #045 Meowth
  (1502, 52, NULL, 45, TRUE),
  -- #046 Persian
  (1502, 53, NULL, 46, TRUE),
  -- #047 Magnemite
  (1502, 81, NULL, 47, TRUE),
  -- #048 Magneton
  (1502, 82, NULL, 48, TRUE),
  -- #049 Magnezone
  (1502, 462, NULL, 49, TRUE),
  -- #050 Grimer
  (1502, 88, NULL, 50, TRUE),
  -- #051 Muk
  (1502, 89, NULL, 51, TRUE),
  -- #052 Growlithe
  (1502, 58, NULL, 52, TRUE),
  -- #053 Arcanine
  (1502, 59, NULL, 53, TRUE),
  -- #054 Drowzee
  (1502, 96, NULL, 54, TRUE),
  -- #055 Hypno
  (1502, 97, NULL, 55, TRUE),
  -- #056 Makuhita
  (1502, 296, NULL, 56, TRUE),
  -- #057 Hariyama
  (1502, 297, NULL, 57, TRUE),
  -- #058 Smeargle
  (1502, 235, NULL, 58, TRUE),
  -- #059 Crabrawler
  (1502, 739, NULL, 59, TRUE),
  -- #060 Crabominable
  (1502, 740, NULL, 60, TRUE),
  -- #061 Gastly
  (1502, 92, NULL, 61, TRUE),
  -- #062 Haunter
  (1502, 93, NULL, 62, TRUE),
  -- #063 Gengar
  (1502, 94, NULL, 63, TRUE),
  -- #064 Drifloon
  (1502, 425, NULL, 64, TRUE),
  -- #065 Drifblim
  (1502, 426, NULL, 65, TRUE),
  -- #066 Misdreavus
  (1502, 200, NULL, 66, TRUE),
  -- #067 Mismagius
  (1502, 429, NULL, 67, TRUE),
  -- #068 Zubat
  (1502, 41, NULL, 68, TRUE),
  -- #069 Golbat
  (1502, 42, NULL, 69, TRUE),
  -- #070 Crobat
  (1502, 169, NULL, 70, TRUE),
  -- #071 Diglett
  (1502, 50, NULL, 71, TRUE),
  -- #072 Dugtrio
  (1502, 51, NULL, 72, TRUE),
  -- #073 Spearow
  (1502, 21, NULL, 73, TRUE),
  -- #074 Fearow
  (1502, 22, NULL, 74, TRUE),
  -- #075 Rufflet
  (1502, 627, NULL, 75, TRUE),
  -- #076 Braviary
  (1502, 628, NULL, 76, TRUE),
  -- #077 Vullaby
  (1502, 629, NULL, 77, TRUE),
  -- #078 Mandibuzz
  (1502, 630, NULL, 78, TRUE),
  -- #079 Mankey
  (1502, 56, NULL, 79, TRUE),
  -- #080 Primeape
  (1502, 57, NULL, 80, TRUE),
  -- #081 Delibird
  (1502, 225, NULL, 81, TRUE),
  -- #082 Oricorio
  (1502, 741, NULL, 82, TRUE),
  -- #083 Cutiefly
  (1502, 742, NULL, 83, TRUE),
  -- #084 Ribombee
  (1502, 743, NULL, 84, TRUE),
  -- #085 Petilil
  (1502, 548, NULL, 85, TRUE),
  -- #086 Lilligant
  (1502, 549, NULL, 86, TRUE),
  -- #087 Cottonee
  (1502, 546, NULL, 87, TRUE),
  -- #088 Whimsicott
  (1502, 547, NULL, 88, TRUE),
  -- #089 Psyduck
  (1502, 54, NULL, 89, TRUE),
  -- #090 Golduck
  (1502, 55, NULL, 90, TRUE),
  -- #091 Magikarp
  (1502, 129, NULL, 91, TRUE),
  -- #092 Gyarados
  (1502, 130, NULL, 92, TRUE),
  -- #093 Barboach
  (1502, 339, NULL, 93, TRUE),
  -- #094 Whiscash
  (1502, 340, NULL, 94, TRUE),
  -- #095 Machop
  (1502, 66, NULL, 95, TRUE),
  -- #096 Machoke
  (1502, 67, NULL, 96, TRUE),
  -- #097 Machamp
  (1502, 68, NULL, 97, TRUE),
  -- #098 Roggenrola
  (1502, 524, NULL, 98, TRUE),
  -- #099 Boldore
  (1502, 525, NULL, 99, TRUE),
  -- #100 Gigalith
  (1502, 526, NULL, 100, TRUE),
  -- #101 Carbink
  (1502, 703, NULL, 101, TRUE),
  -- #102 Sableye
  (1502, 302, NULL, 102, TRUE),
  -- #103 Rockruff
  (1502, 744, NULL, 103, TRUE),
  -- #104 Lycanroc
  (1502, 745, NULL, 104, TRUE),
  -- #105 Spinda
  (1502, 327, NULL, 105, TRUE),
  -- #106 Tentacool
  (1502, 72, NULL, 106, TRUE),
  -- #107 Tentacruel
  (1502, 73, NULL, 107, TRUE),
  -- #108 Finneon
  (1502, 456, NULL, 108, TRUE),
  -- #109 Lumineon
  (1502, 457, NULL, 109, TRUE),
  -- #110 Wishiwashi
  (1502, 746, NULL, 110, TRUE),
  -- #111 Luvdisc
  (1502, 370, NULL, 111, TRUE),
  -- #112 Corsola
  (1502, 222, NULL, 112, TRUE),
  -- #113 Mareanie
  (1502, 747, NULL, 113, TRUE),
  -- #114 Toxapex
  (1502, 748, NULL, 114, TRUE),
  -- #115 Shellder
  (1502, 90, NULL, 115, TRUE),
  -- #116 Cloyster
  (1502, 91, NULL, 116, TRUE),
  -- #117 Bagon
  (1502, 371, NULL, 117, TRUE),
  -- #118 Shelgon
  (1502, 372, NULL, 118, TRUE),
  -- #119 Salamence
  (1502, 373, NULL, 119, TRUE),
  -- #120 Tapu Koko
  (1502, 785, NULL, 120, TRUE);
