-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia List of Pokémon by Kanto Pokedex number.
-- Cross-check: PokemonDB Red / Blue Pokedex and legacy Voydex Pokedex entry seed.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Kanto Pokedex entries for Red / Blue.
-- Red / Blue use the original 151-entry Kanto Pokedex.
-- ============================================================================
-- Source-required flag follows in-game/source completion rules; source-visible optional entries remain seeded.
INSERT INTO reference.pokedex_entries (pokedex_id, species_id, display_form_id, pokedex_number, is_source_required_for_completion)
VALUES
  -- #001 Bulbasaur
  (101, 1, NULL, 1, TRUE),
  -- #002 Ivysaur
  (101, 2, NULL, 2, TRUE),
  -- #003 Venusaur
  (101, 3, NULL, 3, TRUE),
  -- #004 Charmander
  (101, 4, NULL, 4, TRUE),
  -- #005 Charmeleon
  (101, 5, NULL, 5, TRUE),
  -- #006 Charizard
  (101, 6, NULL, 6, TRUE),
  -- #007 Squirtle
  (101, 7, NULL, 7, TRUE),
  -- #008 Wartortle
  (101, 8, NULL, 8, TRUE),
  -- #009 Blastoise
  (101, 9, NULL, 9, TRUE),
  -- #010 Caterpie
  (101, 10, NULL, 10, TRUE),
  -- #011 Metapod
  (101, 11, NULL, 11, TRUE),
  -- #012 Butterfree
  (101, 12, NULL, 12, TRUE),
  -- #013 Weedle
  (101, 13, NULL, 13, TRUE),
  -- #014 Kakuna
  (101, 14, NULL, 14, TRUE),
  -- #015 Beedrill
  (101, 15, NULL, 15, TRUE),
  -- #016 Pidgey
  (101, 16, NULL, 16, TRUE),
  -- #017 Pidgeotto
  (101, 17, NULL, 17, TRUE),
  -- #018 Pidgeot
  (101, 18, NULL, 18, TRUE),
  -- #019 Rattata
  (101, 19, NULL, 19, TRUE),
  -- #020 Raticate
  (101, 20, NULL, 20, TRUE),
  -- #021 Spearow
  (101, 21, NULL, 21, TRUE),
  -- #022 Fearow
  (101, 22, NULL, 22, TRUE),
  -- #023 Ekans
  (101, 23, NULL, 23, TRUE),
  -- #024 Arbok
  (101, 24, NULL, 24, TRUE),
  -- #025 Pikachu
  (101, 25, NULL, 25, TRUE),
  -- #026 Raichu
  (101, 26, NULL, 26, TRUE),
  -- #027 Sandshrew
  (101, 27, NULL, 27, TRUE),
  -- #028 Sandslash
  (101, 28, NULL, 28, TRUE),
  -- #029 Nidoran F
  (101, 29, NULL, 29, TRUE),
  -- #030 Nidorina
  (101, 30, NULL, 30, TRUE),
  -- #031 Nidoqueen
  (101, 31, NULL, 31, TRUE),
  -- #032 Nidoran M
  (101, 32, NULL, 32, TRUE),
  -- #033 Nidorino
  (101, 33, NULL, 33, TRUE),
  -- #034 Nidoking
  (101, 34, NULL, 34, TRUE),
  -- #035 Clefairy
  (101, 35, NULL, 35, TRUE),
  -- #036 Clefable
  (101, 36, NULL, 36, TRUE),
  -- #037 Vulpix
  (101, 37, NULL, 37, TRUE),
  -- #038 Ninetales
  (101, 38, NULL, 38, TRUE),
  -- #039 Jigglypuff
  (101, 39, NULL, 39, TRUE),
  -- #040 Wigglytuff
  (101, 40, NULL, 40, TRUE),
  -- #041 Zubat
  (101, 41, NULL, 41, TRUE),
  -- #042 Golbat
  (101, 42, NULL, 42, TRUE),
  -- #043 Oddish
  (101, 43, NULL, 43, TRUE),
  -- #044 Gloom
  (101, 44, NULL, 44, TRUE),
  -- #045 Vileplume
  (101, 45, NULL, 45, TRUE),
  -- #046 Paras
  (101, 46, NULL, 46, TRUE),
  -- #047 Parasect
  (101, 47, NULL, 47, TRUE),
  -- #048 Venonat
  (101, 48, NULL, 48, TRUE),
  -- #049 Venomoth
  (101, 49, NULL, 49, TRUE),
  -- #050 Diglett
  (101, 50, NULL, 50, TRUE),
  -- #051 Dugtrio
  (101, 51, NULL, 51, TRUE),
  -- #052 Meowth
  (101, 52, NULL, 52, TRUE),
  -- #053 Persian
  (101, 53, NULL, 53, TRUE),
  -- #054 Psyduck
  (101, 54, NULL, 54, TRUE),
  -- #055 Golduck
  (101, 55, NULL, 55, TRUE),
  -- #056 Mankey
  (101, 56, NULL, 56, TRUE),
  -- #057 Primeape
  (101, 57, NULL, 57, TRUE),
  -- #058 Growlithe
  (101, 58, NULL, 58, TRUE),
  -- #059 Arcanine
  (101, 59, NULL, 59, TRUE),
  -- #060 Poliwag
  (101, 60, NULL, 60, TRUE),
  -- #061 Poliwhirl
  (101, 61, NULL, 61, TRUE),
  -- #062 Poliwrath
  (101, 62, NULL, 62, TRUE),
  -- #063 Abra
  (101, 63, NULL, 63, TRUE),
  -- #064 Kadabra
  (101, 64, NULL, 64, TRUE),
  -- #065 Alakazam
  (101, 65, NULL, 65, TRUE),
  -- #066 Machop
  (101, 66, NULL, 66, TRUE),
  -- #067 Machoke
  (101, 67, NULL, 67, TRUE),
  -- #068 Machamp
  (101, 68, NULL, 68, TRUE),
  -- #069 Bellsprout
  (101, 69, NULL, 69, TRUE),
  -- #070 Weepinbell
  (101, 70, NULL, 70, TRUE),
  -- #071 Victreebel
  (101, 71, NULL, 71, TRUE),
  -- #072 Tentacool
  (101, 72, NULL, 72, TRUE),
  -- #073 Tentacruel
  (101, 73, NULL, 73, TRUE),
  -- #074 Geodude
  (101, 74, NULL, 74, TRUE),
  -- #075 Graveler
  (101, 75, NULL, 75, TRUE),
  -- #076 Golem
  (101, 76, NULL, 76, TRUE),
  -- #077 Ponyta
  (101, 77, NULL, 77, TRUE),
  -- #078 Rapidash
  (101, 78, NULL, 78, TRUE),
  -- #079 Slowpoke
  (101, 79, NULL, 79, TRUE),
  -- #080 Slowbro
  (101, 80, NULL, 80, TRUE),
  -- #081 Magnemite
  (101, 81, NULL, 81, TRUE),
  -- #082 Magneton
  (101, 82, NULL, 82, TRUE),
  -- #083 Farfetch'd
  (101, 83, NULL, 83, TRUE),
  -- #084 Doduo
  (101, 84, NULL, 84, TRUE),
  -- #085 Dodrio
  (101, 85, NULL, 85, TRUE),
  -- #086 Seel
  (101, 86, NULL, 86, TRUE),
  -- #087 Dewgong
  (101, 87, NULL, 87, TRUE),
  -- #088 Grimer
  (101, 88, NULL, 88, TRUE),
  -- #089 Muk
  (101, 89, NULL, 89, TRUE),
  -- #090 Shellder
  (101, 90, NULL, 90, TRUE),
  -- #091 Cloyster
  (101, 91, NULL, 91, TRUE),
  -- #092 Gastly
  (101, 92, NULL, 92, TRUE),
  -- #093 Haunter
  (101, 93, NULL, 93, TRUE),
  -- #094 Gengar
  (101, 94, NULL, 94, TRUE),
  -- #095 Onix
  (101, 95, NULL, 95, TRUE),
  -- #096 Drowzee
  (101, 96, NULL, 96, TRUE),
  -- #097 Hypno
  (101, 97, NULL, 97, TRUE),
  -- #098 Krabby
  (101, 98, NULL, 98, TRUE),
  -- #099 Kingler
  (101, 99, NULL, 99, TRUE),
  -- #100 Voltorb
  (101, 100, NULL, 100, TRUE),
  -- #101 Electrode
  (101, 101, NULL, 101, TRUE),
  -- #102 Exeggcute
  (101, 102, NULL, 102, TRUE),
  -- #103 Exeggutor
  (101, 103, NULL, 103, TRUE),
  -- #104 Cubone
  (101, 104, NULL, 104, TRUE),
  -- #105 Marowak
  (101, 105, NULL, 105, TRUE),
  -- #106 Hitmonlee
  (101, 106, NULL, 106, TRUE),
  -- #107 Hitmonchan
  (101, 107, NULL, 107, TRUE),
  -- #108 Lickitung
  (101, 108, NULL, 108, TRUE),
  -- #109 Koffing
  (101, 109, NULL, 109, TRUE),
  -- #110 Weezing
  (101, 110, NULL, 110, TRUE),
  -- #111 Rhyhorn
  (101, 111, NULL, 111, TRUE),
  -- #112 Rhydon
  (101, 112, NULL, 112, TRUE),
  -- #113 Chansey
  (101, 113, NULL, 113, TRUE),
  -- #114 Tangela
  (101, 114, NULL, 114, TRUE),
  -- #115 Kangaskhan
  (101, 115, NULL, 115, TRUE),
  -- #116 Horsea
  (101, 116, NULL, 116, TRUE),
  -- #117 Seadra
  (101, 117, NULL, 117, TRUE),
  -- #118 Goldeen
  (101, 118, NULL, 118, TRUE),
  -- #119 Seaking
  (101, 119, NULL, 119, TRUE),
  -- #120 Staryu
  (101, 120, NULL, 120, TRUE),
  -- #121 Starmie
  (101, 121, NULL, 121, TRUE),
  -- #122 Mr. Mime
  (101, 122, NULL, 122, TRUE),
  -- #123 Scyther
  (101, 123, NULL, 123, TRUE),
  -- #124 Jynx
  (101, 124, NULL, 124, TRUE),
  -- #125 Electabuzz
  (101, 125, NULL, 125, TRUE),
  -- #126 Magmar
  (101, 126, NULL, 126, TRUE),
  -- #127 Pinsir
  (101, 127, NULL, 127, TRUE),
  -- #128 Tauros
  (101, 128, NULL, 128, TRUE),
  -- #129 Magikarp
  (101, 129, NULL, 129, TRUE),
  -- #130 Gyarados
  (101, 130, NULL, 130, TRUE),
  -- #131 Lapras
  (101, 131, NULL, 131, TRUE),
  -- #132 Ditto
  (101, 132, NULL, 132, TRUE),
  -- #133 Eevee
  (101, 133, NULL, 133, TRUE),
  -- #134 Vaporeon
  (101, 134, NULL, 134, TRUE),
  -- #135 Jolteon
  (101, 135, NULL, 135, TRUE),
  -- #136 Flareon
  (101, 136, NULL, 136, TRUE),
  -- #137 Porygon
  (101, 137, NULL, 137, TRUE),
  -- #138 Omanyte
  (101, 138, NULL, 138, TRUE),
  -- #139 Omastar
  (101, 139, NULL, 139, TRUE),
  -- #140 Kabuto
  (101, 140, NULL, 140, TRUE),
  -- #141 Kabutops
  (101, 141, NULL, 141, TRUE),
  -- #142 Aerodactyl
  (101, 142, NULL, 142, TRUE),
  -- #143 Snorlax
  (101, 143, NULL, 143, TRUE),
  -- #144 Articuno
  (101, 144, NULL, 144, TRUE),
  -- #145 Zapdos
  (101, 145, NULL, 145, TRUE),
  -- #146 Moltres
  (101, 146, NULL, 146, TRUE),
  -- #147 Dratini
  (101, 147, NULL, 147, TRUE),
  -- #148 Dragonair
  (101, 148, NULL, 148, TRUE),
  -- #149 Dragonite
  (101, 149, NULL, 149, TRUE),
  -- #150 Mewtwo
  (101, 150, NULL, 150, TRUE),
  -- #151 Mew
  (101, 151, NULL, 151, FALSE);
