-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokemonDB National Pokedex, Bulbapedia species pages, and Serebii Pokedex pages.
-- Migration source: legacy Voydex species seeds, normalized to clean schema columns and ASCII code-facing names.
-- Construction aid: PokeAPI pokemon_species CSV, restricted to National Dex 1-1025, used only for mechanical sanity checks.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 1
-- Table: reference.pokemon_species
-- Scope: National Dex #0001-0151
INSERT INTO reference.pokemon_species (id, national_number, slug, name, introduced_generation_id, evolution_family_id, color, is_baby, is_legendary, is_mythical)
VALUES
  -- Bulbasaur
  (1, 1, 'bulbasaur', 'Bulbasaur', 1, 1, 'green', FALSE, FALSE, FALSE),
  -- Ivysaur
  (2, 2, 'ivysaur', 'Ivysaur', 1, 1, 'green', FALSE, FALSE, FALSE),
  -- Venusaur
  (3, 3, 'venusaur', 'Venusaur', 1, 1, 'green', FALSE, FALSE, FALSE),
  -- Charmander
  (4, 4, 'charmander', 'Charmander', 1, 4, 'red', FALSE, FALSE, FALSE),
  -- Charmeleon
  (5, 5, 'charmeleon', 'Charmeleon', 1, 4, 'red', FALSE, FALSE, FALSE),
  -- Charizard
  (6, 6, 'charizard', 'Charizard', 1, 4, 'red', FALSE, FALSE, FALSE),
  -- Squirtle
  (7, 7, 'squirtle', 'Squirtle', 1, 7, 'blue', FALSE, FALSE, FALSE),
  -- Wartortle
  (8, 8, 'wartortle', 'Wartortle', 1, 7, 'blue', FALSE, FALSE, FALSE),
  -- Blastoise
  (9, 9, 'blastoise', 'Blastoise', 1, 7, 'blue', FALSE, FALSE, FALSE),
  -- Caterpie
  (10, 10, 'caterpie', 'Caterpie', 1, 10, 'green', FALSE, FALSE, FALSE),
  -- Metapod
  (11, 11, 'metapod', 'Metapod', 1, 10, 'green', FALSE, FALSE, FALSE),
  -- Butterfree
  (12, 12, 'butterfree', 'Butterfree', 1, 10, 'white', FALSE, FALSE, FALSE),
  -- Weedle
  (13, 13, 'weedle', 'Weedle', 1, 13, 'brown', FALSE, FALSE, FALSE),
  -- Kakuna
  (14, 14, 'kakuna', 'Kakuna', 1, 13, 'yellow', FALSE, FALSE, FALSE),
  -- Beedrill
  (15, 15, 'beedrill', 'Beedrill', 1, 13, 'yellow', FALSE, FALSE, FALSE),
  -- Pidgey
  (16, 16, 'pidgey', 'Pidgey', 1, 16, 'brown', FALSE, FALSE, FALSE),
  -- Pidgeotto
  (17, 17, 'pidgeotto', 'Pidgeotto', 1, 16, 'brown', FALSE, FALSE, FALSE),
  -- Pidgeot
  (18, 18, 'pidgeot', 'Pidgeot', 1, 16, 'brown', FALSE, FALSE, FALSE),
  -- Rattata
  (19, 19, 'rattata', 'Rattata', 1, 19, 'purple', FALSE, FALSE, FALSE),
  -- Raticate
  (20, 20, 'raticate', 'Raticate', 1, 19, 'brown', FALSE, FALSE, FALSE),
  -- Spearow
  (21, 21, 'spearow', 'Spearow', 1, 21, 'brown', FALSE, FALSE, FALSE),
  -- Fearow
  (22, 22, 'fearow', 'Fearow', 1, 21, 'brown', FALSE, FALSE, FALSE),
  -- Ekans
  (23, 23, 'ekans', 'Ekans', 1, 23, 'purple', FALSE, FALSE, FALSE),
  -- Arbok
  (24, 24, 'arbok', 'Arbok', 1, 23, 'purple', FALSE, FALSE, FALSE),
  -- Pikachu
  (25, 25, 'pikachu', 'Pikachu', 1, 25, 'yellow', FALSE, FALSE, FALSE),
  -- Raichu
  (26, 26, 'raichu', 'Raichu', 1, 25, 'yellow', FALSE, FALSE, FALSE),
  -- Sandshrew
  (27, 27, 'sandshrew', 'Sandshrew', 1, 27, 'yellow', FALSE, FALSE, FALSE),
  -- Sandslash
  (28, 28, 'sandslash', 'Sandslash', 1, 27, 'yellow', FALSE, FALSE, FALSE),
  -- Nidoran F
  (29, 29, 'nidoran-f', 'Nidoran F', 1, 29, 'blue', FALSE, FALSE, FALSE),
  -- Nidorina
  (30, 30, 'nidorina', 'Nidorina', 1, 29, 'blue', FALSE, FALSE, FALSE),
  -- Nidoqueen
  (31, 31, 'nidoqueen', 'Nidoqueen', 1, 29, 'blue', FALSE, FALSE, FALSE),
  -- Nidoran M
  (32, 32, 'nidoran-m', 'Nidoran M', 1, 32, 'purple', FALSE, FALSE, FALSE),
  -- Nidorino
  (33, 33, 'nidorino', 'Nidorino', 1, 32, 'purple', FALSE, FALSE, FALSE),
  -- Nidoking
  (34, 34, 'nidoking', 'Nidoking', 1, 32, 'purple', FALSE, FALSE, FALSE),
  -- Clefairy
  (35, 35, 'clefairy', 'Clefairy', 1, 35, 'pink', FALSE, FALSE, FALSE),
  -- Clefable
  (36, 36, 'clefable', 'Clefable', 1, 35, 'pink', FALSE, FALSE, FALSE),
  -- Vulpix
  (37, 37, 'vulpix', 'Vulpix', 1, 37, 'brown', FALSE, FALSE, FALSE),
  -- Ninetales
  (38, 38, 'ninetales', 'Ninetales', 1, 37, 'yellow', FALSE, FALSE, FALSE),
  -- Jigglypuff
  (39, 39, 'jigglypuff', 'Jigglypuff', 1, 39, 'pink', FALSE, FALSE, FALSE),
  -- Wigglytuff
  (40, 40, 'wigglytuff', 'Wigglytuff', 1, 39, 'pink', FALSE, FALSE, FALSE),
  -- Zubat
  (41, 41, 'zubat', 'Zubat', 1, 41, 'purple', FALSE, FALSE, FALSE),
  -- Golbat
  (42, 42, 'golbat', 'Golbat', 1, 41, 'purple', FALSE, FALSE, FALSE),
  -- Oddish
  (43, 43, 'oddish', 'Oddish', 1, 43, 'blue', FALSE, FALSE, FALSE),
  -- Gloom
  (44, 44, 'gloom', 'Gloom', 1, 43, 'blue', FALSE, FALSE, FALSE),
  -- Vileplume
  (45, 45, 'vileplume', 'Vileplume', 1, 43, 'red', FALSE, FALSE, FALSE),
  -- Paras
  (46, 46, 'paras', 'Paras', 1, 46, 'red', FALSE, FALSE, FALSE),
  -- Parasect
  (47, 47, 'parasect', 'Parasect', 1, 46, 'red', FALSE, FALSE, FALSE),
  -- Venonat
  (48, 48, 'venonat', 'Venonat', 1, 48, 'purple', FALSE, FALSE, FALSE),
  -- Venomoth
  (49, 49, 'venomoth', 'Venomoth', 1, 48, 'purple', FALSE, FALSE, FALSE),
  -- Diglett
  (50, 50, 'diglett', 'Diglett', 1, 50, 'brown', FALSE, FALSE, FALSE),
  -- Dugtrio
  (51, 51, 'dugtrio', 'Dugtrio', 1, 50, 'brown', FALSE, FALSE, FALSE),
  -- Meowth
  (52, 52, 'meowth', 'Meowth', 1, 52, 'yellow', FALSE, FALSE, FALSE),
  -- Persian
  (53, 53, 'persian', 'Persian', 1, 52, 'yellow', FALSE, FALSE, FALSE),
  -- Psyduck
  (54, 54, 'psyduck', 'Psyduck', 1, 54, 'yellow', FALSE, FALSE, FALSE),
  -- Golduck
  (55, 55, 'golduck', 'Golduck', 1, 54, 'blue', FALSE, FALSE, FALSE),
  -- Mankey
  (56, 56, 'mankey', 'Mankey', 1, 56, 'brown', FALSE, FALSE, FALSE),
  -- Primeape
  (57, 57, 'primeape', 'Primeape', 1, 56, 'brown', FALSE, FALSE, FALSE),
  -- Growlithe
  (58, 58, 'growlithe', 'Growlithe', 1, 58, 'brown', FALSE, FALSE, FALSE),
  -- Arcanine
  (59, 59, 'arcanine', 'Arcanine', 1, 58, 'brown', FALSE, FALSE, FALSE),
  -- Poliwag
  (60, 60, 'poliwag', 'Poliwag', 1, 60, 'blue', FALSE, FALSE, FALSE),
  -- Poliwhirl
  (61, 61, 'poliwhirl', 'Poliwhirl', 1, 60, 'blue', FALSE, FALSE, FALSE),
  -- Poliwrath
  (62, 62, 'poliwrath', 'Poliwrath', 1, 60, 'blue', FALSE, FALSE, FALSE),
  -- Abra
  (63, 63, 'abra', 'Abra', 1, 63, 'brown', FALSE, FALSE, FALSE),
  -- Kadabra
  (64, 64, 'kadabra', 'Kadabra', 1, 63, 'brown', FALSE, FALSE, FALSE),
  -- Alakazam
  (65, 65, 'alakazam', 'Alakazam', 1, 63, 'brown', FALSE, FALSE, FALSE),
  -- Machop
  (66, 66, 'machop', 'Machop', 1, 66, 'gray', FALSE, FALSE, FALSE),
  -- Machoke
  (67, 67, 'machoke', 'Machoke', 1, 66, 'gray', FALSE, FALSE, FALSE),
  -- Machamp
  (68, 68, 'machamp', 'Machamp', 1, 66, 'gray', FALSE, FALSE, FALSE),
  -- Bellsprout
  (69, 69, 'bellsprout', 'Bellsprout', 1, 69, 'green', FALSE, FALSE, FALSE),
  -- Weepinbell
  (70, 70, 'weepinbell', 'Weepinbell', 1, 69, 'green', FALSE, FALSE, FALSE),
  -- Victreebel
  (71, 71, 'victreebel', 'Victreebel', 1, 69, 'green', FALSE, FALSE, FALSE),
  -- Tentacool
  (72, 72, 'tentacool', 'Tentacool', 1, 72, 'blue', FALSE, FALSE, FALSE),
  -- Tentacruel
  (73, 73, 'tentacruel', 'Tentacruel', 1, 72, 'blue', FALSE, FALSE, FALSE),
  -- Geodude
  (74, 74, 'geodude', 'Geodude', 1, 74, 'brown', FALSE, FALSE, FALSE),
  -- Graveler
  (75, 75, 'graveler', 'Graveler', 1, 74, 'brown', FALSE, FALSE, FALSE),
  -- Golem
  (76, 76, 'golem', 'Golem', 1, 74, 'brown', FALSE, FALSE, FALSE),
  -- Ponyta
  (77, 77, 'ponyta', 'Ponyta', 1, 77, 'yellow', FALSE, FALSE, FALSE),
  -- Rapidash
  (78, 78, 'rapidash', 'Rapidash', 1, 77, 'yellow', FALSE, FALSE, FALSE),
  -- Slowpoke
  (79, 79, 'slowpoke', 'Slowpoke', 1, 79, 'pink', FALSE, FALSE, FALSE),
  -- Slowbro
  (80, 80, 'slowbro', 'Slowbro', 1, 79, 'pink', FALSE, FALSE, FALSE),
  -- Magnemite
  (81, 81, 'magnemite', 'Magnemite', 1, 81, 'gray', FALSE, FALSE, FALSE),
  -- Magneton
  (82, 82, 'magneton', 'Magneton', 1, 81, 'gray', FALSE, FALSE, FALSE),
  -- Farfetch'd
  (83, 83, 'farfetchd', 'Farfetch''d', 1, 83, 'brown', FALSE, FALSE, FALSE),
  -- Doduo
  (84, 84, 'doduo', 'Doduo', 1, 84, 'brown', FALSE, FALSE, FALSE),
  -- Dodrio
  (85, 85, 'dodrio', 'Dodrio', 1, 84, 'brown', FALSE, FALSE, FALSE),
  -- Seel
  (86, 86, 'seel', 'Seel', 1, 86, 'white', FALSE, FALSE, FALSE),
  -- Dewgong
  (87, 87, 'dewgong', 'Dewgong', 1, 86, 'white', FALSE, FALSE, FALSE),
  -- Grimer
  (88, 88, 'grimer', 'Grimer', 1, 88, 'purple', FALSE, FALSE, FALSE),
  -- Muk
  (89, 89, 'muk', 'Muk', 1, 88, 'purple', FALSE, FALSE, FALSE),
  -- Shellder
  (90, 90, 'shellder', 'Shellder', 1, 90, 'purple', FALSE, FALSE, FALSE),
  -- Cloyster
  (91, 91, 'cloyster', 'Cloyster', 1, 90, 'purple', FALSE, FALSE, FALSE),
  -- Gastly
  (92, 92, 'gastly', 'Gastly', 1, 92, 'purple', FALSE, FALSE, FALSE),
  -- Haunter
  (93, 93, 'haunter', 'Haunter', 1, 92, 'purple', FALSE, FALSE, FALSE),
  -- Gengar
  (94, 94, 'gengar', 'Gengar', 1, 92, 'purple', FALSE, FALSE, FALSE),
  -- Onix
  (95, 95, 'onix', 'Onix', 1, 95, 'gray', FALSE, FALSE, FALSE),
  -- Drowzee
  (96, 96, 'drowzee', 'Drowzee', 1, 96, 'yellow', FALSE, FALSE, FALSE),
  -- Hypno
  (97, 97, 'hypno', 'Hypno', 1, 96, 'yellow', FALSE, FALSE, FALSE),
  -- Krabby
  (98, 98, 'krabby', 'Krabby', 1, 98, 'red', FALSE, FALSE, FALSE),
  -- Kingler
  (99, 99, 'kingler', 'Kingler', 1, 98, 'red', FALSE, FALSE, FALSE),
  -- Voltorb
  (100, 100, 'voltorb', 'Voltorb', 1, 100, 'red', FALSE, FALSE, FALSE),
  -- Electrode
  (101, 101, 'electrode', 'Electrode', 1, 100, 'red', FALSE, FALSE, FALSE),
  -- Exeggcute
  (102, 102, 'exeggcute', 'Exeggcute', 1, 102, 'pink', FALSE, FALSE, FALSE),
  -- Exeggutor
  (103, 103, 'exeggutor', 'Exeggutor', 1, 102, 'yellow', FALSE, FALSE, FALSE),
  -- Cubone
  (104, 104, 'cubone', 'Cubone', 1, 104, 'brown', FALSE, FALSE, FALSE),
  -- Marowak
  (105, 105, 'marowak', 'Marowak', 1, 104, 'brown', FALSE, FALSE, FALSE),
  -- Hitmonlee
  (106, 106, 'hitmonlee', 'Hitmonlee', 1, 106, 'brown', FALSE, FALSE, FALSE),
  -- Hitmonchan
  (107, 107, 'hitmonchan', 'Hitmonchan', 1, 106, 'brown', FALSE, FALSE, FALSE),
  -- Lickitung
  (108, 108, 'lickitung', 'Lickitung', 1, 108, 'pink', FALSE, FALSE, FALSE),
  -- Koffing
  (109, 109, 'koffing', 'Koffing', 1, 109, 'purple', FALSE, FALSE, FALSE),
  -- Weezing
  (110, 110, 'weezing', 'Weezing', 1, 109, 'purple', FALSE, FALSE, FALSE),
  -- Rhyhorn
  (111, 111, 'rhyhorn', 'Rhyhorn', 1, 111, 'gray', FALSE, FALSE, FALSE),
  -- Rhydon
  (112, 112, 'rhydon', 'Rhydon', 1, 111, 'gray', FALSE, FALSE, FALSE),
  -- Chansey
  (113, 113, 'chansey', 'Chansey', 1, 113, 'pink', FALSE, FALSE, FALSE),
  -- Tangela
  (114, 114, 'tangela', 'Tangela', 1, 114, 'blue', FALSE, FALSE, FALSE),
  -- Kangaskhan
  (115, 115, 'kangaskhan', 'Kangaskhan', 1, 115, 'brown', FALSE, FALSE, FALSE),
  -- Horsea
  (116, 116, 'horsea', 'Horsea', 1, 116, 'blue', FALSE, FALSE, FALSE),
  -- Seadra
  (117, 117, 'seadra', 'Seadra', 1, 116, 'blue', FALSE, FALSE, FALSE),
  -- Goldeen
  (118, 118, 'goldeen', 'Goldeen', 1, 118, 'red', FALSE, FALSE, FALSE),
  -- Seaking
  (119, 119, 'seaking', 'Seaking', 1, 118, 'red', FALSE, FALSE, FALSE),
  -- Staryu
  (120, 120, 'staryu', 'Staryu', 1, 120, 'brown', FALSE, FALSE, FALSE),
  -- Starmie
  (121, 121, 'starmie', 'Starmie', 1, 120, 'purple', FALSE, FALSE, FALSE),
  -- Mr. Mime
  (122, 122, 'mr-mime', 'Mr. Mime', 1, 122, 'pink', FALSE, FALSE, FALSE),
  -- Scyther
  (123, 123, 'scyther', 'Scyther', 1, 123, 'green', FALSE, FALSE, FALSE),
  -- Jynx
  (124, 124, 'jynx', 'Jynx', 1, 124, 'red', FALSE, FALSE, FALSE),
  -- Electabuzz
  (125, 125, 'electabuzz', 'Electabuzz', 1, 125, 'yellow', FALSE, FALSE, FALSE),
  -- Magmar
  (126, 126, 'magmar', 'Magmar', 1, 126, 'red', FALSE, FALSE, FALSE),
  -- Pinsir
  (127, 127, 'pinsir', 'Pinsir', 1, 127, 'brown', FALSE, FALSE, FALSE),
  -- Tauros
  (128, 128, 'tauros', 'Tauros', 1, 128, 'brown', FALSE, FALSE, FALSE),
  -- Magikarp
  (129, 129, 'magikarp', 'Magikarp', 1, 129, 'red', FALSE, FALSE, FALSE),
  -- Gyarados
  (130, 130, 'gyarados', 'Gyarados', 1, 129, 'blue', FALSE, FALSE, FALSE),
  -- Lapras
  (131, 131, 'lapras', 'Lapras', 1, 131, 'blue', FALSE, FALSE, FALSE),
  -- Ditto
  (132, 132, 'ditto', 'Ditto', 1, 132, 'purple', FALSE, FALSE, FALSE),
  -- Eevee
  (133, 133, 'eevee', 'Eevee', 1, 133, 'brown', FALSE, FALSE, FALSE),
  -- Vaporeon
  (134, 134, 'vaporeon', 'Vaporeon', 1, 133, 'blue', FALSE, FALSE, FALSE),
  -- Jolteon
  (135, 135, 'jolteon', 'Jolteon', 1, 133, 'yellow', FALSE, FALSE, FALSE),
  -- Flareon
  (136, 136, 'flareon', 'Flareon', 1, 133, 'red', FALSE, FALSE, FALSE),
  -- Porygon
  (137, 137, 'porygon', 'Porygon', 1, 137, 'pink', FALSE, FALSE, FALSE),
  -- Omanyte
  (138, 138, 'omanyte', 'Omanyte', 1, 138, 'blue', FALSE, FALSE, FALSE),
  -- Omastar
  (139, 139, 'omastar', 'Omastar', 1, 138, 'blue', FALSE, FALSE, FALSE),
  -- Kabuto
  (140, 140, 'kabuto', 'Kabuto', 1, 140, 'brown', FALSE, FALSE, FALSE),
  -- Kabutops
  (141, 141, 'kabutops', 'Kabutops', 1, 140, 'brown', FALSE, FALSE, FALSE),
  -- Aerodactyl
  (142, 142, 'aerodactyl', 'Aerodactyl', 1, 142, 'purple', FALSE, FALSE, FALSE),
  -- Snorlax
  (143, 143, 'snorlax', 'Snorlax', 1, 143, 'black', FALSE, FALSE, FALSE),
  -- Articuno
  (144, 144, 'articuno', 'Articuno', 1, 144, 'blue', FALSE, TRUE, FALSE),
  -- Zapdos
  (145, 145, 'zapdos', 'Zapdos', 1, 145, 'yellow', FALSE, TRUE, FALSE),
  -- Moltres
  (146, 146, 'moltres', 'Moltres', 1, 146, 'yellow', FALSE, TRUE, FALSE),
  -- Dratini
  (147, 147, 'dratini', 'Dratini', 1, 147, 'blue', FALSE, FALSE, FALSE),
  -- Dragonair
  (148, 148, 'dragonair', 'Dragonair', 1, 147, 'blue', FALSE, FALSE, FALSE),
  -- Dragonite
  (149, 149, 'dragonite', 'Dragonite', 1, 147, 'brown', FALSE, FALSE, FALSE),
  -- Mewtwo
  (150, 150, 'mewtwo', 'Mewtwo', 1, 150, 'purple', FALSE, TRUE, FALSE),
  -- Mew
  (151, 151, 'mew', 'Mew', 1, 151, 'pink', FALSE, FALSE, TRUE);
