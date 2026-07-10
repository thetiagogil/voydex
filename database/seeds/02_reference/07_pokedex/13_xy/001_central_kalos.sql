-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Central Kalos Pokedex number.
-- Cross-check: PokemonDB X / Y Pokedex and legacy Voydex Central Kalos Pokedex entry seed.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Central Kalos Pokedex entries for X / Y.
-- Central Kalos contains 153 species; Diancie, Hoopa, and Volcanion are source-visible but not required for regional completion.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Chespin
  (1301, 650, NULL, 1, TRUE),
  -- #002 Quilladin
  (1301, 651, NULL, 2, TRUE),
  -- #003 Chesnaught
  (1301, 652, NULL, 3, TRUE),
  -- #004 Fennekin
  (1301, 653, NULL, 4, TRUE),
  -- #005 Braixen
  (1301, 654, NULL, 5, TRUE),
  -- #006 Delphox
  (1301, 655, NULL, 6, TRUE),
  -- #007 Froakie
  (1301, 656, NULL, 7, TRUE),
  -- #008 Frogadier
  (1301, 657, NULL, 8, TRUE),
  -- #009 Greninja
  (1301, 658, NULL, 9, TRUE),
  -- #010 Bunnelby
  (1301, 659, NULL, 10, TRUE),
  -- #011 Diggersby
  (1301, 660, NULL, 11, TRUE),
  -- #012 Zigzagoon
  (1301, 263, NULL, 12, TRUE),
  -- #013 Linoone
  (1301, 264, NULL, 13, TRUE),
  -- #014 Fletchling
  (1301, 661, NULL, 14, TRUE),
  -- #015 Fletchinder
  (1301, 662, NULL, 15, TRUE),
  -- #016 Talonflame
  (1301, 663, NULL, 16, TRUE),
  -- #017 Pidgey
  (1301, 16, NULL, 17, TRUE),
  -- #018 Pidgeotto
  (1301, 17, NULL, 18, TRUE),
  -- #019 Pidgeot
  (1301, 18, NULL, 19, TRUE),
  -- #020 Scatterbug
  (1301, 664, NULL, 20, TRUE),
  -- #021 Spewpa
  (1301, 665, NULL, 21, TRUE),
  -- #022 Vivillon
  (1301, 666, NULL, 22, TRUE),
  -- #023 Caterpie
  (1301, 10, NULL, 23, TRUE),
  -- #024 Metapod
  (1301, 11, NULL, 24, TRUE),
  -- #025 Butterfree
  (1301, 12, NULL, 25, TRUE),
  -- #026 Weedle
  (1301, 13, NULL, 26, TRUE),
  -- #027 Kakuna
  (1301, 14, NULL, 27, TRUE),
  -- #028 Beedrill
  (1301, 15, NULL, 28, TRUE),
  -- #029 Pansage
  (1301, 511, NULL, 29, TRUE),
  -- #030 Simisage
  (1301, 512, NULL, 30, TRUE),
  -- #031 Pansear
  (1301, 513, NULL, 31, TRUE),
  -- #032 Simisear
  (1301, 514, NULL, 32, TRUE),
  -- #033 Panpour
  (1301, 515, NULL, 33, TRUE),
  -- #034 Simipour
  (1301, 516, NULL, 34, TRUE),
  -- #035 Pichu
  (1301, 172, NULL, 35, TRUE),
  -- #036 Pikachu
  (1301, 25, NULL, 36, TRUE),
  -- #037 Raichu
  (1301, 26, NULL, 37, TRUE),
  -- #038 Bidoof
  (1301, 399, NULL, 38, TRUE),
  -- #039 Bibarel
  (1301, 400, NULL, 39, TRUE),
  -- #040 Dunsparce
  (1301, 206, NULL, 40, TRUE),
  -- #041 Azurill
  (1301, 298, NULL, 41, TRUE),
  -- #042 Marill
  (1301, 183, NULL, 42, TRUE),
  -- #043 Azumarill
  (1301, 184, NULL, 43, TRUE),
  -- #044 Burmy
  (1301, 412, NULL, 44, TRUE),
  -- #045 Wormadam
  (1301, 413, NULL, 45, TRUE),
  -- #046 Mothim
  (1301, 414, NULL, 46, TRUE),
  -- #047 Surskit
  (1301, 283, NULL, 47, TRUE),
  -- #048 Masquerain
  (1301, 284, NULL, 48, TRUE),
  -- #049 Magikarp
  (1301, 129, NULL, 49, TRUE),
  -- #050 Gyarados
  (1301, 130, NULL, 50, TRUE),
  -- #051 Corphish
  (1301, 341, NULL, 51, TRUE),
  -- #052 Crawdaunt
  (1301, 342, NULL, 52, TRUE),
  -- #053 Goldeen
  (1301, 118, NULL, 53, TRUE),
  -- #054 Seaking
  (1301, 119, NULL, 54, TRUE),
  -- #055 Carvanha
  (1301, 318, NULL, 55, TRUE),
  -- #056 Sharpedo
  (1301, 319, NULL, 56, TRUE),
  -- #057 Litleo
  (1301, 667, NULL, 57, TRUE),
  -- #058 Pyroar
  (1301, 668, NULL, 58, TRUE),
  -- #059 Psyduck
  (1301, 54, NULL, 59, TRUE),
  -- #060 Golduck
  (1301, 55, NULL, 60, TRUE),
  -- #061 Farfetch'd
  (1301, 83, NULL, 61, TRUE),
  -- #062 Riolu
  (1301, 447, NULL, 62, TRUE),
  -- #063 Lucario
  (1301, 448, NULL, 63, TRUE),
  -- #064 Ralts
  (1301, 280, NULL, 64, TRUE),
  -- #065 Kirlia
  (1301, 281, NULL, 65, TRUE),
  -- #066 Gardevoir
  (1301, 282, NULL, 66, TRUE),
  -- #067 Gallade
  (1301, 475, NULL, 67, TRUE),
  -- #068 Flabebe
  (1301, 669, NULL, 68, TRUE),
  -- #069 Floette
  (1301, 670, NULL, 69, TRUE),
  -- #070 Florges
  (1301, 671, NULL, 70, TRUE),
  -- #071 Budew
  (1301, 406, NULL, 71, TRUE),
  -- #072 Roselia
  (1301, 315, NULL, 72, TRUE),
  -- #073 Roserade
  (1301, 407, NULL, 73, TRUE),
  -- #074 Ledyba
  (1301, 165, NULL, 74, TRUE),
  -- #075 Ledian
  (1301, 166, NULL, 75, TRUE),
  -- #076 Combee
  (1301, 415, NULL, 76, TRUE),
  -- #077 Vespiquen
  (1301, 416, NULL, 77, TRUE),
  -- #078 Skitty
  (1301, 300, NULL, 78, TRUE),
  -- #079 Delcatty
  (1301, 301, NULL, 79, TRUE),
  -- #080 Bulbasaur
  (1301, 1, NULL, 80, TRUE),
  -- #081 Ivysaur
  (1301, 2, NULL, 81, TRUE),
  -- #082 Venusaur
  (1301, 3, NULL, 82, TRUE),
  -- #083 Charmander
  (1301, 4, NULL, 83, TRUE),
  -- #084 Charmeleon
  (1301, 5, NULL, 84, TRUE),
  -- #085 Charizard
  (1301, 6, NULL, 85, TRUE),
  -- #086 Squirtle
  (1301, 7, NULL, 86, TRUE),
  -- #087 Wartortle
  (1301, 8, NULL, 87, TRUE),
  -- #088 Blastoise
  (1301, 9, NULL, 88, TRUE),
  -- #089 Skiddo
  (1301, 672, NULL, 89, TRUE),
  -- #090 Gogoat
  (1301, 673, NULL, 90, TRUE),
  -- #091 Pancham
  (1301, 674, NULL, 91, TRUE),
  -- #092 Pangoro
  (1301, 675, NULL, 92, TRUE),
  -- #093 Furfrou
  (1301, 676, NULL, 93, TRUE),
  -- #094 Doduo
  (1301, 84, NULL, 94, TRUE),
  -- #095 Dodrio
  (1301, 85, NULL, 95, TRUE),
  -- #096 Plusle
  (1301, 311, NULL, 96, TRUE),
  -- #097 Minun
  (1301, 312, NULL, 97, TRUE),
  -- #098 Gulpin
  (1301, 316, NULL, 98, TRUE),
  -- #099 Swalot
  (1301, 317, NULL, 99, TRUE),
  -- #100 Scraggy
  (1301, 559, NULL, 100, TRUE),
  -- #101 Scrafty
  (1301, 560, NULL, 101, TRUE),
  -- #102 Abra
  (1301, 63, NULL, 102, TRUE),
  -- #103 Kadabra
  (1301, 64, NULL, 103, TRUE),
  -- #104 Alakazam
  (1301, 65, NULL, 104, TRUE),
  -- #105 Oddish
  (1301, 43, NULL, 105, TRUE),
  -- #106 Gloom
  (1301, 44, NULL, 106, TRUE),
  -- #107 Vileplume
  (1301, 45, NULL, 107, TRUE),
  -- #108 Bellossom
  (1301, 182, NULL, 108, TRUE),
  -- #109 Sentret
  (1301, 161, NULL, 109, TRUE),
  -- #110 Furret
  (1301, 162, NULL, 110, TRUE),
  -- #111 Nincada
  (1301, 290, NULL, 111, TRUE),
  -- #112 Ninjask
  (1301, 291, NULL, 112, TRUE),
  -- #113 Shedinja
  (1301, 292, NULL, 113, TRUE),
  -- #114 Espurr
  (1301, 677, NULL, 114, TRUE),
  -- #115 Meowstic
  (1301, 678, NULL, 115, TRUE),
  -- #116 Kecleon
  (1301, 352, NULL, 116, TRUE),
  -- #117 Honedge
  (1301, 679, NULL, 117, TRUE),
  -- #118 Doublade
  (1301, 680, NULL, 118, TRUE),
  -- #119 Aegislash
  (1301, 681, NULL, 119, TRUE),
  -- #120 Venipede
  (1301, 543, NULL, 120, TRUE),
  -- #121 Whirlipede
  (1301, 544, NULL, 121, TRUE),
  -- #122 Scolipede
  (1301, 545, NULL, 122, TRUE),
  -- #123 Audino
  (1301, 531, NULL, 123, TRUE),
  -- #124 Smeargle
  (1301, 235, NULL, 124, TRUE),
  -- #125 Croagunk
  (1301, 453, NULL, 125, TRUE),
  -- #126 Toxicroak
  (1301, 454, NULL, 126, TRUE),
  -- #127 Ducklett
  (1301, 580, NULL, 127, TRUE),
  -- #128 Swanna
  (1301, 581, NULL, 128, TRUE),
  -- #129 Spritzee
  (1301, 682, NULL, 129, TRUE),
  -- #130 Aromatisse
  (1301, 683, NULL, 130, TRUE),
  -- #131 Swirlix
  (1301, 684, NULL, 131, TRUE),
  -- #132 Slurpuff
  (1301, 685, NULL, 132, TRUE),
  -- #133 Volbeat
  (1301, 313, NULL, 133, TRUE),
  -- #134 Illumise
  (1301, 314, NULL, 134, TRUE),
  -- #135 Hoppip
  (1301, 187, NULL, 135, TRUE),
  -- #136 Skiploom
  (1301, 188, NULL, 136, TRUE),
  -- #137 Jumpluff
  (1301, 189, NULL, 137, TRUE),
  -- #138 Munchlax
  (1301, 446, NULL, 138, TRUE),
  -- #139 Snorlax
  (1301, 143, NULL, 139, TRUE),
  -- #140 Whismur
  (1301, 293, NULL, 140, TRUE),
  -- #141 Loudred
  (1301, 294, NULL, 141, TRUE),
  -- #142 Exploud
  (1301, 295, NULL, 142, TRUE),
  -- #143 Meditite
  (1301, 307, NULL, 143, TRUE),
  -- #144 Medicham
  (1301, 308, NULL, 144, TRUE),
  -- #145 Zubat
  (1301, 41, NULL, 145, TRUE),
  -- #146 Golbat
  (1301, 42, NULL, 146, TRUE),
  -- #147 Crobat
  (1301, 169, NULL, 147, TRUE),
  -- #148 Axew
  (1301, 610, NULL, 148, TRUE),
  -- #149 Fraxure
  (1301, 611, NULL, 149, TRUE),
  -- #150 Haxorus
  (1301, 612, NULL, 150, TRUE),
  -- #151 Diancie
  (1301, 719, NULL, 151, FALSE),
  -- #152 Hoopa
  (1301, 720, NULL, 152, FALSE),
  -- #153 Volcanion
  (1301, 721, NULL, 153, FALSE);
