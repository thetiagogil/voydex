-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Alola Pokedex number in Pokémon Ultra Sun and Ultra Moon.
-- Cross-check: PokemonDB Ultra Sun / Ultra Moon Melemele Island Pokedex section.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Melemele Pokedex entries for Ultra Sun / Ultra Moon.
-- Melemele is a browse/filter section; overall Alola remains the completion-counting Pokedex.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Rowlet
  (1602, 722, NULL, 1, TRUE),
  -- #002 Dartrix
  (1602, 723, NULL, 2, TRUE),
  -- #003 Decidueye
  (1602, 724, NULL, 3, TRUE),
  -- #004 Litten
  (1602, 725, NULL, 4, TRUE),
  -- #005 Torracat
  (1602, 726, NULL, 5, TRUE),
  -- #006 Incineroar
  (1602, 727, NULL, 6, TRUE),
  -- #007 Popplio
  (1602, 728, NULL, 7, TRUE),
  -- #008 Brionne
  (1602, 729, NULL, 8, TRUE),
  -- #009 Primarina
  (1602, 730, NULL, 9, TRUE),
  -- #010 Pikipek
  (1602, 731, NULL, 10, TRUE),
  -- #011 Trumbeak
  (1602, 732, NULL, 11, TRUE),
  -- #012 Toucannon
  (1602, 733, NULL, 12, TRUE),
  -- #013 Yungoos
  (1602, 734, NULL, 13, TRUE),
  -- #014 Gumshoos
  (1602, 735, NULL, 14, TRUE),
  -- #015 Rattata
  (1602, 19, NULL, 15, TRUE),
  -- #016 Raticate
  (1602, 20, NULL, 16, TRUE),
  -- #017 Caterpie
  (1602, 10, NULL, 17, TRUE),
  -- #018 Metapod
  (1602, 11, NULL, 18, TRUE),
  -- #019 Butterfree
  (1602, 12, NULL, 19, TRUE),
  -- #020 Ledyba
  (1602, 165, NULL, 20, TRUE),
  -- #021 Ledian
  (1602, 166, NULL, 21, TRUE),
  -- #022 Spinarak
  (1602, 167, NULL, 22, TRUE),
  -- #023 Ariados
  (1602, 168, NULL, 23, TRUE),
  -- #024 Buneary
  (1602, 427, NULL, 24, TRUE),
  -- #025 Lopunny
  (1602, 428, NULL, 25, TRUE),
  -- #026 Inkay
  (1602, 686, NULL, 26, TRUE),
  -- #027 Malamar
  (1602, 687, NULL, 27, TRUE),
  -- #028 Zorua
  (1602, 570, NULL, 28, TRUE),
  -- #029 Zoroark
  (1602, 571, NULL, 29, TRUE),
  -- #030 Furfrou
  (1602, 676, NULL, 30, TRUE),
  -- #031 Pichu
  (1602, 172, NULL, 31, TRUE),
  -- #032 Pikachu
  (1602, 25, NULL, 32, TRUE),
  -- #033 Raichu
  (1602, 26, NULL, 33, TRUE),
  -- #034 Grubbin
  (1602, 736, NULL, 34, TRUE),
  -- #035 Charjabug
  (1602, 737, NULL, 35, TRUE),
  -- #036 Vikavolt
  (1602, 738, NULL, 36, TRUE),
  -- #037 Bonsly
  (1602, 438, NULL, 37, TRUE),
  -- #038 Sudowoodo
  (1602, 185, NULL, 38, TRUE),
  -- #039 Happiny
  (1602, 440, NULL, 39, TRUE),
  -- #040 Chansey
  (1602, 113, NULL, 40, TRUE),
  -- #041 Blissey
  (1602, 242, NULL, 41, TRUE),
  -- #042 Munchlax
  (1602, 446, NULL, 42, TRUE),
  -- #043 Snorlax
  (1602, 143, NULL, 43, TRUE),
  -- #044 Slowpoke
  (1602, 79, NULL, 44, TRUE),
  -- #045 Slowbro
  (1602, 80, NULL, 45, TRUE),
  -- #046 Slowking
  (1602, 199, NULL, 46, TRUE),
  -- #047 Wingull
  (1602, 278, NULL, 47, TRUE),
  -- #048 Pelipper
  (1602, 279, NULL, 48, TRUE),
  -- #049 Abra
  (1602, 63, NULL, 49, TRUE),
  -- #050 Kadabra
  (1602, 64, NULL, 50, TRUE),
  -- #051 Alakazam
  (1602, 65, NULL, 51, TRUE),
  -- #052 Meowth
  (1602, 52, NULL, 52, TRUE),
  -- #053 Persian
  (1602, 53, NULL, 53, TRUE),
  -- #054 Magnemite
  (1602, 81, NULL, 54, TRUE),
  -- #055 Magneton
  (1602, 82, NULL, 55, TRUE),
  -- #056 Magnezone
  (1602, 462, NULL, 56, TRUE),
  -- #057 Grimer
  (1602, 88, NULL, 57, TRUE),
  -- #058 Muk
  (1602, 89, NULL, 58, TRUE),
  -- #059 Mime Jr.
  (1602, 439, NULL, 59, TRUE),
  -- #060 Mr. Mime
  (1602, 122, NULL, 60, TRUE),
  -- #061 Ekans
  (1602, 23, NULL, 61, TRUE),
  -- #062 Arbok
  (1602, 24, NULL, 62, TRUE),
  -- #063 Dunsparce
  (1602, 206, NULL, 63, TRUE),
  -- #064 Growlithe
  (1602, 58, NULL, 64, TRUE),
  -- #065 Arcanine
  (1602, 59, NULL, 65, TRUE),
  -- #066 Drowzee
  (1602, 96, NULL, 66, TRUE),
  -- #067 Hypno
  (1602, 97, NULL, 67, TRUE),
  -- #068 Makuhita
  (1602, 296, NULL, 68, TRUE),
  -- #069 Hariyama
  (1602, 297, NULL, 69, TRUE),
  -- #070 Smeargle
  (1602, 235, NULL, 70, TRUE),
  -- #071 Crabrawler
  (1602, 739, NULL, 71, TRUE),
  -- #072 Crabominable
  (1602, 740, NULL, 72, TRUE),
  -- #073 Gastly
  (1602, 92, NULL, 73, TRUE),
  -- #074 Haunter
  (1602, 93, NULL, 74, TRUE),
  -- #075 Gengar
  (1602, 94, NULL, 75, TRUE),
  -- #076 Drifloon
  (1602, 425, NULL, 76, TRUE),
  -- #077 Drifblim
  (1602, 426, NULL, 77, TRUE),
  -- #078 Murkrow
  (1602, 198, NULL, 78, TRUE),
  -- #079 Honchkrow
  (1602, 430, NULL, 79, TRUE),
  -- #080 Zubat
  (1602, 41, NULL, 80, TRUE),
  -- #081 Golbat
  (1602, 42, NULL, 81, TRUE),
  -- #082 Crobat
  (1602, 169, NULL, 82, TRUE),
  -- #083 Noibat
  (1602, 714, NULL, 83, TRUE),
  -- #084 Noivern
  (1602, 715, NULL, 84, TRUE),
  -- #085 Diglett
  (1602, 50, NULL, 85, TRUE),
  -- #086 Dugtrio
  (1602, 51, NULL, 86, TRUE),
  -- #087 Spearow
  (1602, 21, NULL, 87, TRUE),
  -- #088 Fearow
  (1602, 22, NULL, 88, TRUE),
  -- #089 Rufflet
  (1602, 627, NULL, 89, TRUE),
  -- #090 Braviary
  (1602, 628, NULL, 90, TRUE),
  -- #091 Vullaby
  (1602, 629, NULL, 91, TRUE),
  -- #092 Mandibuzz
  (1602, 630, NULL, 92, TRUE),
  -- #093 Mankey
  (1602, 56, NULL, 93, TRUE),
  -- #094 Primeape
  (1602, 57, NULL, 94, TRUE),
  -- #095 Delibird
  (1602, 225, NULL, 95, TRUE),
  -- #096 Hawlucha
  (1602, 701, NULL, 96, TRUE),
  -- #097 Oricorio
  (1602, 741, NULL, 97, TRUE),
  -- #098 Cutiefly
  (1602, 742, NULL, 98, TRUE),
  -- #099 Ribombee
  (1602, 743, NULL, 99, TRUE),
  -- #100 Flabebe
  (1602, 669, NULL, 100, TRUE),
  -- #101 Floette
  (1602, 670, NULL, 101, TRUE),
  -- #102 Florges
  (1602, 671, NULL, 102, TRUE),
  -- #103 Petilil
  (1602, 548, NULL, 103, TRUE),
  -- #104 Lilligant
  (1602, 549, NULL, 104, TRUE),
  -- #105 Cottonee
  (1602, 546, NULL, 105, TRUE),
  -- #106 Whimsicott
  (1602, 547, NULL, 106, TRUE),
  -- #107 Psyduck
  (1602, 54, NULL, 107, TRUE),
  -- #108 Golduck
  (1602, 55, NULL, 108, TRUE),
  -- #109 Smoochum
  (1602, 238, NULL, 109, TRUE),
  -- #110 Jynx
  (1602, 124, NULL, 110, TRUE),
  -- #111 Magikarp
  (1602, 129, NULL, 111, TRUE),
  -- #112 Gyarados
  (1602, 130, NULL, 112, TRUE),
  -- #113 Barboach
  (1602, 339, NULL, 113, TRUE),
  -- #114 Whiscash
  (1602, 340, NULL, 114, TRUE),
  -- #115 Seel
  (1602, 86, NULL, 115, TRUE),
  -- #116 Dewgong
  (1602, 87, NULL, 116, TRUE),
  -- #117 Machop
  (1602, 66, NULL, 117, TRUE),
  -- #118 Machoke
  (1602, 67, NULL, 118, TRUE),
  -- #119 Machamp
  (1602, 68, NULL, 119, TRUE),
  -- #120 Roggenrola
  (1602, 524, NULL, 120, TRUE),
  -- #121 Boldore
  (1602, 525, NULL, 121, TRUE),
  -- #122 Gigalith
  (1602, 526, NULL, 122, TRUE),
  -- #123 Carbink
  (1602, 703, NULL, 123, TRUE),
  -- #124 Sableye
  (1602, 302, NULL, 124, TRUE),
  -- #125 Mawile
  (1602, 303, NULL, 125, TRUE),
  -- #126 Rockruff
  (1602, 744, NULL, 126, TRUE),
  -- #127 Lycanroc
  (1602, 745, NULL, 127, TRUE),
  -- #128 Spinda
  (1602, 327, NULL, 128, TRUE),
  -- #129 Tentacool
  (1602, 72, NULL, 129, TRUE),
  -- #130 Tentacruel
  (1602, 73, NULL, 130, TRUE),
  -- #131 Finneon
  (1602, 456, NULL, 131, TRUE),
  -- #132 Lumineon
  (1602, 457, NULL, 132, TRUE),
  -- #133 Wishiwashi
  (1602, 746, NULL, 133, TRUE),
  -- #134 Luvdisc
  (1602, 370, NULL, 134, TRUE),
  -- #135 Corsola
  (1602, 222, NULL, 135, TRUE),
  -- #136 Mareanie
  (1602, 747, NULL, 136, TRUE),
  -- #137 Toxapex
  (1602, 748, NULL, 137, TRUE),
  -- #138 Shellder
  (1602, 90, NULL, 138, TRUE),
  -- #139 Cloyster
  (1602, 91, NULL, 139, TRUE),
  -- #140 Clamperl
  (1602, 366, NULL, 140, TRUE),
  -- #141 Huntail
  (1602, 367, NULL, 141, TRUE),
  -- #142 Gorebyss
  (1602, 368, NULL, 142, TRUE),
  -- #143 Remoraid
  (1602, 223, NULL, 143, TRUE),
  -- #144 Octillery
  (1602, 224, NULL, 144, TRUE),
  -- #145 Mantyke
  (1602, 458, NULL, 145, TRUE),
  -- #146 Mantine
  (1602, 226, NULL, 146, TRUE),
  -- #147 Bagon
  (1602, 371, NULL, 147, TRUE),
  -- #148 Shelgon
  (1602, 372, NULL, 148, TRUE),
  -- #149 Salamence
  (1602, 373, NULL, 149, TRUE),
  -- #150 Tapu Koko
  (1602, 785, NULL, 150, TRUE);
