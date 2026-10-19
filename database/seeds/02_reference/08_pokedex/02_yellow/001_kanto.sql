-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Kanto Pokedex number.
-- Cross-check: PokemonDB Yellow Pokedex and legacy Voydex Pokedex entry seed.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Kanto Pokedex entries for Yellow.
-- Yellow uses the original 151-entry Kanto Pokedex.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Bulbasaur
  (201, 1, NULL, 1, TRUE),
  -- #002 Ivysaur
  (201, 2, NULL, 2, TRUE),
  -- #003 Venusaur
  (201, 3, NULL, 3, TRUE),
  -- #004 Charmander
  (201, 4, NULL, 4, TRUE),
  -- #005 Charmeleon
  (201, 5, NULL, 5, TRUE),
  -- #006 Charizard
  (201, 6, NULL, 6, TRUE),
  -- #007 Squirtle
  (201, 7, NULL, 7, TRUE),
  -- #008 Wartortle
  (201, 8, NULL, 8, TRUE),
  -- #009 Blastoise
  (201, 9, NULL, 9, TRUE),
  -- #010 Caterpie
  (201, 10, NULL, 10, TRUE),
  -- #011 Metapod
  (201, 11, NULL, 11, TRUE),
  -- #012 Butterfree
  (201, 12, NULL, 12, TRUE),
  -- #013 Weedle
  (201, 13, NULL, 13, TRUE),
  -- #014 Kakuna
  (201, 14, NULL, 14, TRUE),
  -- #015 Beedrill
  (201, 15, NULL, 15, TRUE),
  -- #016 Pidgey
  (201, 16, NULL, 16, TRUE),
  -- #017 Pidgeotto
  (201, 17, NULL, 17, TRUE),
  -- #018 Pidgeot
  (201, 18, NULL, 18, TRUE),
  -- #019 Rattata
  (201, 19, NULL, 19, TRUE),
  -- #020 Raticate
  (201, 20, NULL, 20, TRUE),
  -- #021 Spearow
  (201, 21, NULL, 21, TRUE),
  -- #022 Fearow
  (201, 22, NULL, 22, TRUE),
  -- #023 Ekans
  (201, 23, NULL, 23, TRUE),
  -- #024 Arbok
  (201, 24, NULL, 24, TRUE),
  -- #025 Pikachu
  (201, 25, NULL, 25, TRUE),
  -- #026 Raichu
  (201, 26, NULL, 26, TRUE),
  -- #027 Sandshrew
  (201, 27, NULL, 27, TRUE),
  -- #028 Sandslash
  (201, 28, NULL, 28, TRUE),
  -- #029 Nidoran F
  (201, 29, NULL, 29, TRUE),
  -- #030 Nidorina
  (201, 30, NULL, 30, TRUE),
  -- #031 Nidoqueen
  (201, 31, NULL, 31, TRUE),
  -- #032 Nidoran M
  (201, 32, NULL, 32, TRUE),
  -- #033 Nidorino
  (201, 33, NULL, 33, TRUE),
  -- #034 Nidoking
  (201, 34, NULL, 34, TRUE),
  -- #035 Clefairy
  (201, 35, NULL, 35, TRUE),
  -- #036 Clefable
  (201, 36, NULL, 36, TRUE),
  -- #037 Vulpix
  (201, 37, NULL, 37, TRUE),
  -- #038 Ninetales
  (201, 38, NULL, 38, TRUE),
  -- #039 Jigglypuff
  (201, 39, NULL, 39, TRUE),
  -- #040 Wigglytuff
  (201, 40, NULL, 40, TRUE),
  -- #041 Zubat
  (201, 41, NULL, 41, TRUE),
  -- #042 Golbat
  (201, 42, NULL, 42, TRUE),
  -- #043 Oddish
  (201, 43, NULL, 43, TRUE),
  -- #044 Gloom
  (201, 44, NULL, 44, TRUE),
  -- #045 Vileplume
  (201, 45, NULL, 45, TRUE),
  -- #046 Paras
  (201, 46, NULL, 46, TRUE),
  -- #047 Parasect
  (201, 47, NULL, 47, TRUE),
  -- #048 Venonat
  (201, 48, NULL, 48, TRUE),
  -- #049 Venomoth
  (201, 49, NULL, 49, TRUE),
  -- #050 Diglett
  (201, 50, NULL, 50, TRUE),
  -- #051 Dugtrio
  (201, 51, NULL, 51, TRUE),
  -- #052 Meowth
  (201, 52, NULL, 52, TRUE),
  -- #053 Persian
  (201, 53, NULL, 53, TRUE),
  -- #054 Psyduck
  (201, 54, NULL, 54, TRUE),
  -- #055 Golduck
  (201, 55, NULL, 55, TRUE),
  -- #056 Mankey
  (201, 56, NULL, 56, TRUE),
  -- #057 Primeape
  (201, 57, NULL, 57, TRUE),
  -- #058 Growlithe
  (201, 58, NULL, 58, TRUE),
  -- #059 Arcanine
  (201, 59, NULL, 59, TRUE),
  -- #060 Poliwag
  (201, 60, NULL, 60, TRUE),
  -- #061 Poliwhirl
  (201, 61, NULL, 61, TRUE),
  -- #062 Poliwrath
  (201, 62, NULL, 62, TRUE),
  -- #063 Abra
  (201, 63, NULL, 63, TRUE),
  -- #064 Kadabra
  (201, 64, NULL, 64, TRUE),
  -- #065 Alakazam
  (201, 65, NULL, 65, TRUE),
  -- #066 Machop
  (201, 66, NULL, 66, TRUE),
  -- #067 Machoke
  (201, 67, NULL, 67, TRUE),
  -- #068 Machamp
  (201, 68, NULL, 68, TRUE),
  -- #069 Bellsprout
  (201, 69, NULL, 69, TRUE),
  -- #070 Weepinbell
  (201, 70, NULL, 70, TRUE),
  -- #071 Victreebel
  (201, 71, NULL, 71, TRUE),
  -- #072 Tentacool
  (201, 72, NULL, 72, TRUE),
  -- #073 Tentacruel
  (201, 73, NULL, 73, TRUE),
  -- #074 Geodude
  (201, 74, NULL, 74, TRUE),
  -- #075 Graveler
  (201, 75, NULL, 75, TRUE),
  -- #076 Golem
  (201, 76, NULL, 76, TRUE),
  -- #077 Ponyta
  (201, 77, NULL, 77, TRUE),
  -- #078 Rapidash
  (201, 78, NULL, 78, TRUE),
  -- #079 Slowpoke
  (201, 79, NULL, 79, TRUE),
  -- #080 Slowbro
  (201, 80, NULL, 80, TRUE),
  -- #081 Magnemite
  (201, 81, NULL, 81, TRUE),
  -- #082 Magneton
  (201, 82, NULL, 82, TRUE),
  -- #083 Farfetch'd
  (201, 83, NULL, 83, TRUE),
  -- #084 Doduo
  (201, 84, NULL, 84, TRUE),
  -- #085 Dodrio
  (201, 85, NULL, 85, TRUE),
  -- #086 Seel
  (201, 86, NULL, 86, TRUE),
  -- #087 Dewgong
  (201, 87, NULL, 87, TRUE),
  -- #088 Grimer
  (201, 88, NULL, 88, TRUE),
  -- #089 Muk
  (201, 89, NULL, 89, TRUE),
  -- #090 Shellder
  (201, 90, NULL, 90, TRUE),
  -- #091 Cloyster
  (201, 91, NULL, 91, TRUE),
  -- #092 Gastly
  (201, 92, NULL, 92, TRUE),
  -- #093 Haunter
  (201, 93, NULL, 93, TRUE),
  -- #094 Gengar
  (201, 94, NULL, 94, TRUE),
  -- #095 Onix
  (201, 95, NULL, 95, TRUE),
  -- #096 Drowzee
  (201, 96, NULL, 96, TRUE),
  -- #097 Hypno
  (201, 97, NULL, 97, TRUE),
  -- #098 Krabby
  (201, 98, NULL, 98, TRUE),
  -- #099 Kingler
  (201, 99, NULL, 99, TRUE),
  -- #100 Voltorb
  (201, 100, NULL, 100, TRUE),
  -- #101 Electrode
  (201, 101, NULL, 101, TRUE),
  -- #102 Exeggcute
  (201, 102, NULL, 102, TRUE),
  -- #103 Exeggutor
  (201, 103, NULL, 103, TRUE),
  -- #104 Cubone
  (201, 104, NULL, 104, TRUE),
  -- #105 Marowak
  (201, 105, NULL, 105, TRUE),
  -- #106 Hitmonlee
  (201, 106, NULL, 106, TRUE),
  -- #107 Hitmonchan
  (201, 107, NULL, 107, TRUE),
  -- #108 Lickitung
  (201, 108, NULL, 108, TRUE),
  -- #109 Koffing
  (201, 109, NULL, 109, TRUE),
  -- #110 Weezing
  (201, 110, NULL, 110, TRUE),
  -- #111 Rhyhorn
  (201, 111, NULL, 111, TRUE),
  -- #112 Rhydon
  (201, 112, NULL, 112, TRUE),
  -- #113 Chansey
  (201, 113, NULL, 113, TRUE),
  -- #114 Tangela
  (201, 114, NULL, 114, TRUE),
  -- #115 Kangaskhan
  (201, 115, NULL, 115, TRUE),
  -- #116 Horsea
  (201, 116, NULL, 116, TRUE),
  -- #117 Seadra
  (201, 117, NULL, 117, TRUE),
  -- #118 Goldeen
  (201, 118, NULL, 118, TRUE),
  -- #119 Seaking
  (201, 119, NULL, 119, TRUE),
  -- #120 Staryu
  (201, 120, NULL, 120, TRUE),
  -- #121 Starmie
  (201, 121, NULL, 121, TRUE),
  -- #122 Mr. Mime
  (201, 122, NULL, 122, TRUE),
  -- #123 Scyther
  (201, 123, NULL, 123, TRUE),
  -- #124 Jynx
  (201, 124, NULL, 124, TRUE),
  -- #125 Electabuzz
  (201, 125, NULL, 125, TRUE),
  -- #126 Magmar
  (201, 126, NULL, 126, TRUE),
  -- #127 Pinsir
  (201, 127, NULL, 127, TRUE),
  -- #128 Tauros
  (201, 128, NULL, 128, TRUE),
  -- #129 Magikarp
  (201, 129, NULL, 129, TRUE),
  -- #130 Gyarados
  (201, 130, NULL, 130, TRUE),
  -- #131 Lapras
  (201, 131, NULL, 131, TRUE),
  -- #132 Ditto
  (201, 132, NULL, 132, TRUE),
  -- #133 Eevee
  (201, 133, NULL, 133, TRUE),
  -- #134 Vaporeon
  (201, 134, NULL, 134, TRUE),
  -- #135 Jolteon
  (201, 135, NULL, 135, TRUE),
  -- #136 Flareon
  (201, 136, NULL, 136, TRUE),
  -- #137 Porygon
  (201, 137, NULL, 137, TRUE),
  -- #138 Omanyte
  (201, 138, NULL, 138, TRUE),
  -- #139 Omastar
  (201, 139, NULL, 139, TRUE),
  -- #140 Kabuto
  (201, 140, NULL, 140, TRUE),
  -- #141 Kabutops
  (201, 141, NULL, 141, TRUE),
  -- #142 Aerodactyl
  (201, 142, NULL, 142, TRUE),
  -- #143 Snorlax
  (201, 143, NULL, 143, TRUE),
  -- #144 Articuno
  (201, 144, NULL, 144, TRUE),
  -- #145 Zapdos
  (201, 145, NULL, 145, TRUE),
  -- #146 Moltres
  (201, 146, NULL, 146, TRUE),
  -- #147 Dratini
  (201, 147, NULL, 147, TRUE),
  -- #148 Dragonair
  (201, 148, NULL, 148, TRUE),
  -- #149 Dragonite
  (201, 149, NULL, 149, TRUE),
  -- #150 Mewtwo
  (201, 150, NULL, 150, TRUE),
  -- #151 Mew
  (201, 151, NULL, 151, FALSE);
