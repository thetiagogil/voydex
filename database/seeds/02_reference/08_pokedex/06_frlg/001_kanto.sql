-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Kanto Pokedex number.
-- Cross-check: PokemonDB FireRed / LeafGreen Pokedex and legacy Voydex Pokedex entry seed.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Kanto Pokedex entries for FireRed / LeafGreen.
-- FireRed / LeafGreen use the original 151-entry Kanto Pokedex.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Bulbasaur
  (601, 1, NULL, 1, TRUE),
  -- #002 Ivysaur
  (601, 2, NULL, 2, TRUE),
  -- #003 Venusaur
  (601, 3, NULL, 3, TRUE),
  -- #004 Charmander
  (601, 4, NULL, 4, TRUE),
  -- #005 Charmeleon
  (601, 5, NULL, 5, TRUE),
  -- #006 Charizard
  (601, 6, NULL, 6, TRUE),
  -- #007 Squirtle
  (601, 7, NULL, 7, TRUE),
  -- #008 Wartortle
  (601, 8, NULL, 8, TRUE),
  -- #009 Blastoise
  (601, 9, NULL, 9, TRUE),
  -- #010 Caterpie
  (601, 10, NULL, 10, TRUE),
  -- #011 Metapod
  (601, 11, NULL, 11, TRUE),
  -- #012 Butterfree
  (601, 12, NULL, 12, TRUE),
  -- #013 Weedle
  (601, 13, NULL, 13, TRUE),
  -- #014 Kakuna
  (601, 14, NULL, 14, TRUE),
  -- #015 Beedrill
  (601, 15, NULL, 15, TRUE),
  -- #016 Pidgey
  (601, 16, NULL, 16, TRUE),
  -- #017 Pidgeotto
  (601, 17, NULL, 17, TRUE),
  -- #018 Pidgeot
  (601, 18, NULL, 18, TRUE),
  -- #019 Rattata
  (601, 19, NULL, 19, TRUE),
  -- #020 Raticate
  (601, 20, NULL, 20, TRUE),
  -- #021 Spearow
  (601, 21, NULL, 21, TRUE),
  -- #022 Fearow
  (601, 22, NULL, 22, TRUE),
  -- #023 Ekans
  (601, 23, NULL, 23, TRUE),
  -- #024 Arbok
  (601, 24, NULL, 24, TRUE),
  -- #025 Pikachu
  (601, 25, NULL, 25, TRUE),
  -- #026 Raichu
  (601, 26, NULL, 26, TRUE),
  -- #027 Sandshrew
  (601, 27, NULL, 27, TRUE),
  -- #028 Sandslash
  (601, 28, NULL, 28, TRUE),
  -- #029 Nidoran F
  (601, 29, NULL, 29, TRUE),
  -- #030 Nidorina
  (601, 30, NULL, 30, TRUE),
  -- #031 Nidoqueen
  (601, 31, NULL, 31, TRUE),
  -- #032 Nidoran M
  (601, 32, NULL, 32, TRUE),
  -- #033 Nidorino
  (601, 33, NULL, 33, TRUE),
  -- #034 Nidoking
  (601, 34, NULL, 34, TRUE),
  -- #035 Clefairy
  (601, 35, NULL, 35, TRUE),
  -- #036 Clefable
  (601, 36, NULL, 36, TRUE),
  -- #037 Vulpix
  (601, 37, NULL, 37, TRUE),
  -- #038 Ninetales
  (601, 38, NULL, 38, TRUE),
  -- #039 Jigglypuff
  (601, 39, NULL, 39, TRUE),
  -- #040 Wigglytuff
  (601, 40, NULL, 40, TRUE),
  -- #041 Zubat
  (601, 41, NULL, 41, TRUE),
  -- #042 Golbat
  (601, 42, NULL, 42, TRUE),
  -- #043 Oddish
  (601, 43, NULL, 43, TRUE),
  -- #044 Gloom
  (601, 44, NULL, 44, TRUE),
  -- #045 Vileplume
  (601, 45, NULL, 45, TRUE),
  -- #046 Paras
  (601, 46, NULL, 46, TRUE),
  -- #047 Parasect
  (601, 47, NULL, 47, TRUE),
  -- #048 Venonat
  (601, 48, NULL, 48, TRUE),
  -- #049 Venomoth
  (601, 49, NULL, 49, TRUE),
  -- #050 Diglett
  (601, 50, NULL, 50, TRUE),
  -- #051 Dugtrio
  (601, 51, NULL, 51, TRUE),
  -- #052 Meowth
  (601, 52, NULL, 52, TRUE),
  -- #053 Persian
  (601, 53, NULL, 53, TRUE),
  -- #054 Psyduck
  (601, 54, NULL, 54, TRUE),
  -- #055 Golduck
  (601, 55, NULL, 55, TRUE),
  -- #056 Mankey
  (601, 56, NULL, 56, TRUE),
  -- #057 Primeape
  (601, 57, NULL, 57, TRUE),
  -- #058 Growlithe
  (601, 58, NULL, 58, TRUE),
  -- #059 Arcanine
  (601, 59, NULL, 59, TRUE),
  -- #060 Poliwag
  (601, 60, NULL, 60, TRUE),
  -- #061 Poliwhirl
  (601, 61, NULL, 61, TRUE),
  -- #062 Poliwrath
  (601, 62, NULL, 62, TRUE),
  -- #063 Abra
  (601, 63, NULL, 63, TRUE),
  -- #064 Kadabra
  (601, 64, NULL, 64, TRUE),
  -- #065 Alakazam
  (601, 65, NULL, 65, TRUE),
  -- #066 Machop
  (601, 66, NULL, 66, TRUE),
  -- #067 Machoke
  (601, 67, NULL, 67, TRUE),
  -- #068 Machamp
  (601, 68, NULL, 68, TRUE),
  -- #069 Bellsprout
  (601, 69, NULL, 69, TRUE),
  -- #070 Weepinbell
  (601, 70, NULL, 70, TRUE),
  -- #071 Victreebel
  (601, 71, NULL, 71, TRUE),
  -- #072 Tentacool
  (601, 72, NULL, 72, TRUE),
  -- #073 Tentacruel
  (601, 73, NULL, 73, TRUE),
  -- #074 Geodude
  (601, 74, NULL, 74, TRUE),
  -- #075 Graveler
  (601, 75, NULL, 75, TRUE),
  -- #076 Golem
  (601, 76, NULL, 76, TRUE),
  -- #077 Ponyta
  (601, 77, NULL, 77, TRUE),
  -- #078 Rapidash
  (601, 78, NULL, 78, TRUE),
  -- #079 Slowpoke
  (601, 79, NULL, 79, TRUE),
  -- #080 Slowbro
  (601, 80, NULL, 80, TRUE),
  -- #081 Magnemite
  (601, 81, NULL, 81, TRUE),
  -- #082 Magneton
  (601, 82, NULL, 82, TRUE),
  -- #083 Farfetch'd
  (601, 83, NULL, 83, TRUE),
  -- #084 Doduo
  (601, 84, NULL, 84, TRUE),
  -- #085 Dodrio
  (601, 85, NULL, 85, TRUE),
  -- #086 Seel
  (601, 86, NULL, 86, TRUE),
  -- #087 Dewgong
  (601, 87, NULL, 87, TRUE),
  -- #088 Grimer
  (601, 88, NULL, 88, TRUE),
  -- #089 Muk
  (601, 89, NULL, 89, TRUE),
  -- #090 Shellder
  (601, 90, NULL, 90, TRUE),
  -- #091 Cloyster
  (601, 91, NULL, 91, TRUE),
  -- #092 Gastly
  (601, 92, NULL, 92, TRUE),
  -- #093 Haunter
  (601, 93, NULL, 93, TRUE),
  -- #094 Gengar
  (601, 94, NULL, 94, TRUE),
  -- #095 Onix
  (601, 95, NULL, 95, TRUE),
  -- #096 Drowzee
  (601, 96, NULL, 96, TRUE),
  -- #097 Hypno
  (601, 97, NULL, 97, TRUE),
  -- #098 Krabby
  (601, 98, NULL, 98, TRUE),
  -- #099 Kingler
  (601, 99, NULL, 99, TRUE),
  -- #100 Voltorb
  (601, 100, NULL, 100, TRUE),
  -- #101 Electrode
  (601, 101, NULL, 101, TRUE),
  -- #102 Exeggcute
  (601, 102, NULL, 102, TRUE),
  -- #103 Exeggutor
  (601, 103, NULL, 103, TRUE),
  -- #104 Cubone
  (601, 104, NULL, 104, TRUE),
  -- #105 Marowak
  (601, 105, NULL, 105, TRUE),
  -- #106 Hitmonlee
  (601, 106, NULL, 106, TRUE),
  -- #107 Hitmonchan
  (601, 107, NULL, 107, TRUE),
  -- #108 Lickitung
  (601, 108, NULL, 108, TRUE),
  -- #109 Koffing
  (601, 109, NULL, 109, TRUE),
  -- #110 Weezing
  (601, 110, NULL, 110, TRUE),
  -- #111 Rhyhorn
  (601, 111, NULL, 111, TRUE),
  -- #112 Rhydon
  (601, 112, NULL, 112, TRUE),
  -- #113 Chansey
  (601, 113, NULL, 113, TRUE),
  -- #114 Tangela
  (601, 114, NULL, 114, TRUE),
  -- #115 Kangaskhan
  (601, 115, NULL, 115, TRUE),
  -- #116 Horsea
  (601, 116, NULL, 116, TRUE),
  -- #117 Seadra
  (601, 117, NULL, 117, TRUE),
  -- #118 Goldeen
  (601, 118, NULL, 118, TRUE),
  -- #119 Seaking
  (601, 119, NULL, 119, TRUE),
  -- #120 Staryu
  (601, 120, NULL, 120, TRUE),
  -- #121 Starmie
  (601, 121, NULL, 121, TRUE),
  -- #122 Mr. Mime
  (601, 122, NULL, 122, TRUE),
  -- #123 Scyther
  (601, 123, NULL, 123, TRUE),
  -- #124 Jynx
  (601, 124, NULL, 124, TRUE),
  -- #125 Electabuzz
  (601, 125, NULL, 125, TRUE),
  -- #126 Magmar
  (601, 126, NULL, 126, TRUE),
  -- #127 Pinsir
  (601, 127, NULL, 127, TRUE),
  -- #128 Tauros
  (601, 128, NULL, 128, TRUE),
  -- #129 Magikarp
  (601, 129, NULL, 129, TRUE),
  -- #130 Gyarados
  (601, 130, NULL, 130, TRUE),
  -- #131 Lapras
  (601, 131, NULL, 131, TRUE),
  -- #132 Ditto
  (601, 132, NULL, 132, TRUE),
  -- #133 Eevee
  (601, 133, NULL, 133, TRUE),
  -- #134 Vaporeon
  (601, 134, NULL, 134, TRUE),
  -- #135 Jolteon
  (601, 135, NULL, 135, TRUE),
  -- #136 Flareon
  (601, 136, NULL, 136, TRUE),
  -- #137 Porygon
  (601, 137, NULL, 137, TRUE),
  -- #138 Omanyte
  (601, 138, NULL, 138, TRUE),
  -- #139 Omastar
  (601, 139, NULL, 139, TRUE),
  -- #140 Kabuto
  (601, 140, NULL, 140, TRUE),
  -- #141 Kabutops
  (601, 141, NULL, 141, TRUE),
  -- #142 Aerodactyl
  (601, 142, NULL, 142, TRUE),
  -- #143 Snorlax
  (601, 143, NULL, 143, TRUE),
  -- #144 Articuno
  (601, 144, NULL, 144, TRUE),
  -- #145 Zapdos
  (601, 145, NULL, 145, TRUE),
  -- #146 Moltres
  (601, 146, NULL, 146, TRUE),
  -- #147 Dratini
  (601, 147, NULL, 147, TRUE),
  -- #148 Dragonair
  (601, 148, NULL, 148, TRUE),
  -- #149 Dragonite
  (601, 149, NULL, 149, TRUE),
  -- #150 Mewtwo
  (601, 150, NULL, 150, TRUE),
  -- #151 Mew
  (601, 151, NULL, 151, FALSE);
