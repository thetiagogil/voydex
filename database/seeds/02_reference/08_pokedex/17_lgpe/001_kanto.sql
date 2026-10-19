-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Kanto Pokedex number.
-- Cross-check: Serebii Let's Go Pokedex and legacy Voydex Pokedex entry seed.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Kanto Pokedex entries for Let's Go, Pikachu! / Let's Go, Eevee!.
-- Let's Go uses Kanto #001-#151 and adds Meltan #152 and Melmetal #153.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Bulbasaur
  (1701, 1, NULL, 1, TRUE),
  -- #002 Ivysaur
  (1701, 2, NULL, 2, TRUE),
  -- #003 Venusaur
  (1701, 3, NULL, 3, TRUE),
  -- #004 Charmander
  (1701, 4, NULL, 4, TRUE),
  -- #005 Charmeleon
  (1701, 5, NULL, 5, TRUE),
  -- #006 Charizard
  (1701, 6, NULL, 6, TRUE),
  -- #007 Squirtle
  (1701, 7, NULL, 7, TRUE),
  -- #008 Wartortle
  (1701, 8, NULL, 8, TRUE),
  -- #009 Blastoise
  (1701, 9, NULL, 9, TRUE),
  -- #010 Caterpie
  (1701, 10, NULL, 10, TRUE),
  -- #011 Metapod
  (1701, 11, NULL, 11, TRUE),
  -- #012 Butterfree
  (1701, 12, NULL, 12, TRUE),
  -- #013 Weedle
  (1701, 13, NULL, 13, TRUE),
  -- #014 Kakuna
  (1701, 14, NULL, 14, TRUE),
  -- #015 Beedrill
  (1701, 15, NULL, 15, TRUE),
  -- #016 Pidgey
  (1701, 16, NULL, 16, TRUE),
  -- #017 Pidgeotto
  (1701, 17, NULL, 17, TRUE),
  -- #018 Pidgeot
  (1701, 18, NULL, 18, TRUE),
  -- #019 Rattata
  (1701, 19, NULL, 19, TRUE),
  -- #020 Raticate
  (1701, 20, NULL, 20, TRUE),
  -- #021 Spearow
  (1701, 21, NULL, 21, TRUE),
  -- #022 Fearow
  (1701, 22, NULL, 22, TRUE),
  -- #023 Ekans
  (1701, 23, NULL, 23, TRUE),
  -- #024 Arbok
  (1701, 24, NULL, 24, TRUE),
  -- #025 Pikachu
  (1701, 25, NULL, 25, TRUE),
  -- #026 Raichu
  (1701, 26, NULL, 26, TRUE),
  -- #027 Sandshrew
  (1701, 27, NULL, 27, TRUE),
  -- #028 Sandslash
  (1701, 28, NULL, 28, TRUE),
  -- #029 Nidoran F
  (1701, 29, NULL, 29, TRUE),
  -- #030 Nidorina
  (1701, 30, NULL, 30, TRUE),
  -- #031 Nidoqueen
  (1701, 31, NULL, 31, TRUE),
  -- #032 Nidoran M
  (1701, 32, NULL, 32, TRUE),
  -- #033 Nidorino
  (1701, 33, NULL, 33, TRUE),
  -- #034 Nidoking
  (1701, 34, NULL, 34, TRUE),
  -- #035 Clefairy
  (1701, 35, NULL, 35, TRUE),
  -- #036 Clefable
  (1701, 36, NULL, 36, TRUE),
  -- #037 Vulpix
  (1701, 37, NULL, 37, TRUE),
  -- #038 Ninetales
  (1701, 38, NULL, 38, TRUE),
  -- #039 Jigglypuff
  (1701, 39, NULL, 39, TRUE),
  -- #040 Wigglytuff
  (1701, 40, NULL, 40, TRUE),
  -- #041 Zubat
  (1701, 41, NULL, 41, TRUE),
  -- #042 Golbat
  (1701, 42, NULL, 42, TRUE),
  -- #043 Oddish
  (1701, 43, NULL, 43, TRUE),
  -- #044 Gloom
  (1701, 44, NULL, 44, TRUE),
  -- #045 Vileplume
  (1701, 45, NULL, 45, TRUE),
  -- #046 Paras
  (1701, 46, NULL, 46, TRUE),
  -- #047 Parasect
  (1701, 47, NULL, 47, TRUE),
  -- #048 Venonat
  (1701, 48, NULL, 48, TRUE),
  -- #049 Venomoth
  (1701, 49, NULL, 49, TRUE),
  -- #050 Diglett
  (1701, 50, NULL, 50, TRUE),
  -- #051 Dugtrio
  (1701, 51, NULL, 51, TRUE),
  -- #052 Meowth
  (1701, 52, NULL, 52, TRUE),
  -- #053 Persian
  (1701, 53, NULL, 53, TRUE),
  -- #054 Psyduck
  (1701, 54, NULL, 54, TRUE),
  -- #055 Golduck
  (1701, 55, NULL, 55, TRUE),
  -- #056 Mankey
  (1701, 56, NULL, 56, TRUE),
  -- #057 Primeape
  (1701, 57, NULL, 57, TRUE),
  -- #058 Growlithe
  (1701, 58, NULL, 58, TRUE),
  -- #059 Arcanine
  (1701, 59, NULL, 59, TRUE),
  -- #060 Poliwag
  (1701, 60, NULL, 60, TRUE),
  -- #061 Poliwhirl
  (1701, 61, NULL, 61, TRUE),
  -- #062 Poliwrath
  (1701, 62, NULL, 62, TRUE),
  -- #063 Abra
  (1701, 63, NULL, 63, TRUE),
  -- #064 Kadabra
  (1701, 64, NULL, 64, TRUE),
  -- #065 Alakazam
  (1701, 65, NULL, 65, TRUE),
  -- #066 Machop
  (1701, 66, NULL, 66, TRUE),
  -- #067 Machoke
  (1701, 67, NULL, 67, TRUE),
  -- #068 Machamp
  (1701, 68, NULL, 68, TRUE),
  -- #069 Bellsprout
  (1701, 69, NULL, 69, TRUE),
  -- #070 Weepinbell
  (1701, 70, NULL, 70, TRUE),
  -- #071 Victreebel
  (1701, 71, NULL, 71, TRUE),
  -- #072 Tentacool
  (1701, 72, NULL, 72, TRUE),
  -- #073 Tentacruel
  (1701, 73, NULL, 73, TRUE),
  -- #074 Geodude
  (1701, 74, NULL, 74, TRUE),
  -- #075 Graveler
  (1701, 75, NULL, 75, TRUE),
  -- #076 Golem
  (1701, 76, NULL, 76, TRUE),
  -- #077 Ponyta
  (1701, 77, NULL, 77, TRUE),
  -- #078 Rapidash
  (1701, 78, NULL, 78, TRUE),
  -- #079 Slowpoke
  (1701, 79, NULL, 79, TRUE),
  -- #080 Slowbro
  (1701, 80, NULL, 80, TRUE),
  -- #081 Magnemite
  (1701, 81, NULL, 81, TRUE),
  -- #082 Magneton
  (1701, 82, NULL, 82, TRUE),
  -- #083 Farfetch'd
  (1701, 83, NULL, 83, TRUE),
  -- #084 Doduo
  (1701, 84, NULL, 84, TRUE),
  -- #085 Dodrio
  (1701, 85, NULL, 85, TRUE),
  -- #086 Seel
  (1701, 86, NULL, 86, TRUE),
  -- #087 Dewgong
  (1701, 87, NULL, 87, TRUE),
  -- #088 Grimer
  (1701, 88, NULL, 88, TRUE),
  -- #089 Muk
  (1701, 89, NULL, 89, TRUE),
  -- #090 Shellder
  (1701, 90, NULL, 90, TRUE),
  -- #091 Cloyster
  (1701, 91, NULL, 91, TRUE),
  -- #092 Gastly
  (1701, 92, NULL, 92, TRUE),
  -- #093 Haunter
  (1701, 93, NULL, 93, TRUE),
  -- #094 Gengar
  (1701, 94, NULL, 94, TRUE),
  -- #095 Onix
  (1701, 95, NULL, 95, TRUE),
  -- #096 Drowzee
  (1701, 96, NULL, 96, TRUE),
  -- #097 Hypno
  (1701, 97, NULL, 97, TRUE),
  -- #098 Krabby
  (1701, 98, NULL, 98, TRUE),
  -- #099 Kingler
  (1701, 99, NULL, 99, TRUE),
  -- #100 Voltorb
  (1701, 100, NULL, 100, TRUE),
  -- #101 Electrode
  (1701, 101, NULL, 101, TRUE),
  -- #102 Exeggcute
  (1701, 102, NULL, 102, TRUE),
  -- #103 Exeggutor
  (1701, 103, NULL, 103, TRUE),
  -- #104 Cubone
  (1701, 104, NULL, 104, TRUE),
  -- #105 Marowak
  (1701, 105, NULL, 105, TRUE),
  -- #106 Hitmonlee
  (1701, 106, NULL, 106, TRUE),
  -- #107 Hitmonchan
  (1701, 107, NULL, 107, TRUE),
  -- #108 Lickitung
  (1701, 108, NULL, 108, TRUE),
  -- #109 Koffing
  (1701, 109, NULL, 109, TRUE),
  -- #110 Weezing
  (1701, 110, NULL, 110, TRUE),
  -- #111 Rhyhorn
  (1701, 111, NULL, 111, TRUE),
  -- #112 Rhydon
  (1701, 112, NULL, 112, TRUE),
  -- #113 Chansey
  (1701, 113, NULL, 113, TRUE),
  -- #114 Tangela
  (1701, 114, NULL, 114, TRUE),
  -- #115 Kangaskhan
  (1701, 115, NULL, 115, TRUE),
  -- #116 Horsea
  (1701, 116, NULL, 116, TRUE),
  -- #117 Seadra
  (1701, 117, NULL, 117, TRUE),
  -- #118 Goldeen
  (1701, 118, NULL, 118, TRUE),
  -- #119 Seaking
  (1701, 119, NULL, 119, TRUE),
  -- #120 Staryu
  (1701, 120, NULL, 120, TRUE),
  -- #121 Starmie
  (1701, 121, NULL, 121, TRUE),
  -- #122 Mr. Mime
  (1701, 122, NULL, 122, TRUE),
  -- #123 Scyther
  (1701, 123, NULL, 123, TRUE),
  -- #124 Jynx
  (1701, 124, NULL, 124, TRUE),
  -- #125 Electabuzz
  (1701, 125, NULL, 125, TRUE),
  -- #126 Magmar
  (1701, 126, NULL, 126, TRUE),
  -- #127 Pinsir
  (1701, 127, NULL, 127, TRUE),
  -- #128 Tauros
  (1701, 128, NULL, 128, TRUE),
  -- #129 Magikarp
  (1701, 129, NULL, 129, TRUE),
  -- #130 Gyarados
  (1701, 130, NULL, 130, TRUE),
  -- #131 Lapras
  (1701, 131, NULL, 131, TRUE),
  -- #132 Ditto
  (1701, 132, NULL, 132, TRUE),
  -- #133 Eevee
  (1701, 133, NULL, 133, TRUE),
  -- #134 Vaporeon
  (1701, 134, NULL, 134, TRUE),
  -- #135 Jolteon
  (1701, 135, NULL, 135, TRUE),
  -- #136 Flareon
  (1701, 136, NULL, 136, TRUE),
  -- #137 Porygon
  (1701, 137, NULL, 137, TRUE),
  -- #138 Omanyte
  (1701, 138, NULL, 138, TRUE),
  -- #139 Omastar
  (1701, 139, NULL, 139, TRUE),
  -- #140 Kabuto
  (1701, 140, NULL, 140, TRUE),
  -- #141 Kabutops
  (1701, 141, NULL, 141, TRUE),
  -- #142 Aerodactyl
  (1701, 142, NULL, 142, TRUE),
  -- #143 Snorlax
  (1701, 143, NULL, 143, TRUE),
  -- #144 Articuno
  (1701, 144, NULL, 144, TRUE),
  -- #145 Zapdos
  (1701, 145, NULL, 145, TRUE),
  -- #146 Moltres
  (1701, 146, NULL, 146, TRUE),
  -- #147 Dratini
  (1701, 147, NULL, 147, TRUE),
  -- #148 Dragonair
  (1701, 148, NULL, 148, TRUE),
  -- #149 Dragonite
  (1701, 149, NULL, 149, TRUE),
  -- #150 Mewtwo
  (1701, 150, NULL, 150, TRUE),
  -- #151 Mew
  (1701, 151, NULL, 151, FALSE),
  -- #152 Meltan
  (1701, 808, NULL, 152, FALSE),
  -- #153 Melmetal
  (1701, 809, NULL, 153, FALSE);
