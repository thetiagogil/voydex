-- ============================================================================
-- Source
-- ============================================================================
-- Primary: PokemonDB National Pokedex, Bulbapedia species pages, and Serebii Pokedex pages.
-- Migration source: legacy Voydex default-form seeds, normalized to clean schema columns and ASCII code-facing names.
-- Scope note: default forms only; regional, alternate, held-item, cosmetic, and battle forms are seeded in later reviewed batches.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 1
-- Table: reference.pokemon_forms
-- Scope: default forms for National Dex #0001-0151
INSERT INTO reference.pokemon_forms (id, species_id, slug, name, introduced_generation_id, is_default, form_order, height_decimeters, weight_hectograms)
VALUES
  -- Bulbasaur
  (100, 1, 'bulbasaur', 'Bulbasaur', 1, TRUE, 1, NULL, NULL),
  -- Ivysaur
  (200, 2, 'ivysaur', 'Ivysaur', 1, TRUE, 1, NULL, NULL),
  -- Venusaur
  (300, 3, 'venusaur', 'Venusaur', 1, TRUE, 1, NULL, NULL),
  -- Charmander
  (400, 4, 'charmander', 'Charmander', 1, TRUE, 1, NULL, NULL),
  -- Charmeleon
  (500, 5, 'charmeleon', 'Charmeleon', 1, TRUE, 1, NULL, NULL),
  -- Charizard
  (600, 6, 'charizard', 'Charizard', 1, TRUE, 1, NULL, NULL),
  -- Squirtle
  (700, 7, 'squirtle', 'Squirtle', 1, TRUE, 1, NULL, NULL),
  -- Wartortle
  (800, 8, 'wartortle', 'Wartortle', 1, TRUE, 1, NULL, NULL),
  -- Blastoise
  (900, 9, 'blastoise', 'Blastoise', 1, TRUE, 1, NULL, NULL),
  -- Caterpie
  (1000, 10, 'caterpie', 'Caterpie', 1, TRUE, 1, NULL, NULL),
  -- Metapod
  (1100, 11, 'metapod', 'Metapod', 1, TRUE, 1, NULL, NULL),
  -- Butterfree
  (1200, 12, 'butterfree', 'Butterfree', 1, TRUE, 1, NULL, NULL),
  -- Weedle
  (1300, 13, 'weedle', 'Weedle', 1, TRUE, 1, NULL, NULL),
  -- Kakuna
  (1400, 14, 'kakuna', 'Kakuna', 1, TRUE, 1, NULL, NULL),
  -- Beedrill
  (1500, 15, 'beedrill', 'Beedrill', 1, TRUE, 1, NULL, NULL),
  -- Pidgey
  (1600, 16, 'pidgey', 'Pidgey', 1, TRUE, 1, NULL, NULL),
  -- Pidgeotto
  (1700, 17, 'pidgeotto', 'Pidgeotto', 1, TRUE, 1, NULL, NULL),
  -- Pidgeot
  (1800, 18, 'pidgeot', 'Pidgeot', 1, TRUE, 1, NULL, NULL),
  -- Rattata
  (1900, 19, 'rattata', 'Rattata', 1, TRUE, 1, NULL, NULL),
  -- Raticate
  (2000, 20, 'raticate', 'Raticate', 1, TRUE, 1, NULL, NULL),
  -- Spearow
  (2100, 21, 'spearow', 'Spearow', 1, TRUE, 1, NULL, NULL),
  -- Fearow
  (2200, 22, 'fearow', 'Fearow', 1, TRUE, 1, NULL, NULL),
  -- Ekans
  (2300, 23, 'ekans', 'Ekans', 1, TRUE, 1, NULL, NULL),
  -- Arbok
  (2400, 24, 'arbok', 'Arbok', 1, TRUE, 1, NULL, NULL),
  -- Pikachu
  (2500, 25, 'pikachu', 'Pikachu', 1, TRUE, 1, NULL, NULL),
  -- Raichu
  (2600, 26, 'raichu', 'Raichu', 1, TRUE, 1, NULL, NULL),
  -- Sandshrew
  (2700, 27, 'sandshrew', 'Sandshrew', 1, TRUE, 1, NULL, NULL),
  -- Sandslash
  (2800, 28, 'sandslash', 'Sandslash', 1, TRUE, 1, NULL, NULL),
  -- Nidoran F
  (2900, 29, 'nidoran-f', 'Nidoran F', 1, TRUE, 1, NULL, NULL),
  -- Nidorina
  (3000, 30, 'nidorina', 'Nidorina', 1, TRUE, 1, NULL, NULL),
  -- Nidoqueen
  (3100, 31, 'nidoqueen', 'Nidoqueen', 1, TRUE, 1, NULL, NULL),
  -- Nidoran M
  (3200, 32, 'nidoran-m', 'Nidoran M', 1, TRUE, 1, NULL, NULL),
  -- Nidorino
  (3300, 33, 'nidorino', 'Nidorino', 1, TRUE, 1, NULL, NULL),
  -- Nidoking
  (3400, 34, 'nidoking', 'Nidoking', 1, TRUE, 1, NULL, NULL),
  -- Clefairy
  (3500, 35, 'clefairy', 'Clefairy', 1, TRUE, 1, NULL, NULL),
  -- Clefable
  (3600, 36, 'clefable', 'Clefable', 1, TRUE, 1, NULL, NULL),
  -- Vulpix
  (3700, 37, 'vulpix', 'Vulpix', 1, TRUE, 1, NULL, NULL),
  -- Ninetales
  (3800, 38, 'ninetales', 'Ninetales', 1, TRUE, 1, NULL, NULL),
  -- Jigglypuff
  (3900, 39, 'jigglypuff', 'Jigglypuff', 1, TRUE, 1, NULL, NULL),
  -- Wigglytuff
  (4000, 40, 'wigglytuff', 'Wigglytuff', 1, TRUE, 1, NULL, NULL),
  -- Zubat
  (4100, 41, 'zubat', 'Zubat', 1, TRUE, 1, NULL, NULL),
  -- Golbat
  (4200, 42, 'golbat', 'Golbat', 1, TRUE, 1, NULL, NULL),
  -- Oddish
  (4300, 43, 'oddish', 'Oddish', 1, TRUE, 1, NULL, NULL),
  -- Gloom
  (4400, 44, 'gloom', 'Gloom', 1, TRUE, 1, NULL, NULL),
  -- Vileplume
  (4500, 45, 'vileplume', 'Vileplume', 1, TRUE, 1, NULL, NULL),
  -- Paras
  (4600, 46, 'paras', 'Paras', 1, TRUE, 1, NULL, NULL),
  -- Parasect
  (4700, 47, 'parasect', 'Parasect', 1, TRUE, 1, NULL, NULL),
  -- Venonat
  (4800, 48, 'venonat', 'Venonat', 1, TRUE, 1, NULL, NULL),
  -- Venomoth
  (4900, 49, 'venomoth', 'Venomoth', 1, TRUE, 1, NULL, NULL),
  -- Diglett
  (5000, 50, 'diglett', 'Diglett', 1, TRUE, 1, NULL, NULL),
  -- Dugtrio
  (5100, 51, 'dugtrio', 'Dugtrio', 1, TRUE, 1, NULL, NULL),
  -- Meowth
  (5200, 52, 'meowth', 'Meowth', 1, TRUE, 1, NULL, NULL),
  -- Persian
  (5300, 53, 'persian', 'Persian', 1, TRUE, 1, NULL, NULL),
  -- Psyduck
  (5400, 54, 'psyduck', 'Psyduck', 1, TRUE, 1, NULL, NULL),
  -- Golduck
  (5500, 55, 'golduck', 'Golduck', 1, TRUE, 1, NULL, NULL),
  -- Mankey
  (5600, 56, 'mankey', 'Mankey', 1, TRUE, 1, NULL, NULL),
  -- Primeape
  (5700, 57, 'primeape', 'Primeape', 1, TRUE, 1, NULL, NULL),
  -- Growlithe
  (5800, 58, 'growlithe', 'Growlithe', 1, TRUE, 1, NULL, NULL),
  -- Arcanine
  (5900, 59, 'arcanine', 'Arcanine', 1, TRUE, 1, NULL, NULL),
  -- Poliwag
  (6000, 60, 'poliwag', 'Poliwag', 1, TRUE, 1, NULL, NULL),
  -- Poliwhirl
  (6100, 61, 'poliwhirl', 'Poliwhirl', 1, TRUE, 1, NULL, NULL),
  -- Poliwrath
  (6200, 62, 'poliwrath', 'Poliwrath', 1, TRUE, 1, NULL, NULL),
  -- Abra
  (6300, 63, 'abra', 'Abra', 1, TRUE, 1, NULL, NULL),
  -- Kadabra
  (6400, 64, 'kadabra', 'Kadabra', 1, TRUE, 1, NULL, NULL),
  -- Alakazam
  (6500, 65, 'alakazam', 'Alakazam', 1, TRUE, 1, NULL, NULL),
  -- Machop
  (6600, 66, 'machop', 'Machop', 1, TRUE, 1, NULL, NULL),
  -- Machoke
  (6700, 67, 'machoke', 'Machoke', 1, TRUE, 1, NULL, NULL),
  -- Machamp
  (6800, 68, 'machamp', 'Machamp', 1, TRUE, 1, NULL, NULL),
  -- Bellsprout
  (6900, 69, 'bellsprout', 'Bellsprout', 1, TRUE, 1, NULL, NULL),
  -- Weepinbell
  (7000, 70, 'weepinbell', 'Weepinbell', 1, TRUE, 1, NULL, NULL),
  -- Victreebel
  (7100, 71, 'victreebel', 'Victreebel', 1, TRUE, 1, NULL, NULL),
  -- Tentacool
  (7200, 72, 'tentacool', 'Tentacool', 1, TRUE, 1, NULL, NULL),
  -- Tentacruel
  (7300, 73, 'tentacruel', 'Tentacruel', 1, TRUE, 1, NULL, NULL),
  -- Geodude
  (7400, 74, 'geodude', 'Geodude', 1, TRUE, 1, NULL, NULL),
  -- Graveler
  (7500, 75, 'graveler', 'Graveler', 1, TRUE, 1, NULL, NULL),
  -- Golem
  (7600, 76, 'golem', 'Golem', 1, TRUE, 1, NULL, NULL),
  -- Ponyta
  (7700, 77, 'ponyta', 'Ponyta', 1, TRUE, 1, NULL, NULL),
  -- Rapidash
  (7800, 78, 'rapidash', 'Rapidash', 1, TRUE, 1, NULL, NULL),
  -- Slowpoke
  (7900, 79, 'slowpoke', 'Slowpoke', 1, TRUE, 1, NULL, NULL),
  -- Slowbro
  (8000, 80, 'slowbro', 'Slowbro', 1, TRUE, 1, NULL, NULL),
  -- Magnemite
  (8100, 81, 'magnemite', 'Magnemite', 1, TRUE, 1, NULL, NULL),
  -- Magneton
  (8200, 82, 'magneton', 'Magneton', 1, TRUE, 1, NULL, NULL),
  -- Farfetch'd
  (8300, 83, 'farfetchd', 'Farfetch''d', 1, TRUE, 1, NULL, NULL),
  -- Doduo
  (8400, 84, 'doduo', 'Doduo', 1, TRUE, 1, NULL, NULL),
  -- Dodrio
  (8500, 85, 'dodrio', 'Dodrio', 1, TRUE, 1, NULL, NULL),
  -- Seel
  (8600, 86, 'seel', 'Seel', 1, TRUE, 1, NULL, NULL),
  -- Dewgong
  (8700, 87, 'dewgong', 'Dewgong', 1, TRUE, 1, NULL, NULL),
  -- Grimer
  (8800, 88, 'grimer', 'Grimer', 1, TRUE, 1, NULL, NULL),
  -- Muk
  (8900, 89, 'muk', 'Muk', 1, TRUE, 1, NULL, NULL),
  -- Shellder
  (9000, 90, 'shellder', 'Shellder', 1, TRUE, 1, NULL, NULL),
  -- Cloyster
  (9100, 91, 'cloyster', 'Cloyster', 1, TRUE, 1, NULL, NULL),
  -- Gastly
  (9200, 92, 'gastly', 'Gastly', 1, TRUE, 1, NULL, NULL),
  -- Haunter
  (9300, 93, 'haunter', 'Haunter', 1, TRUE, 1, NULL, NULL),
  -- Gengar
  (9400, 94, 'gengar', 'Gengar', 1, TRUE, 1, NULL, NULL),
  -- Onix
  (9500, 95, 'onix', 'Onix', 1, TRUE, 1, NULL, NULL),
  -- Drowzee
  (9600, 96, 'drowzee', 'Drowzee', 1, TRUE, 1, NULL, NULL),
  -- Hypno
  (9700, 97, 'hypno', 'Hypno', 1, TRUE, 1, NULL, NULL),
  -- Krabby
  (9800, 98, 'krabby', 'Krabby', 1, TRUE, 1, NULL, NULL),
  -- Kingler
  (9900, 99, 'kingler', 'Kingler', 1, TRUE, 1, NULL, NULL),
  -- Voltorb
  (10000, 100, 'voltorb', 'Voltorb', 1, TRUE, 1, NULL, NULL),
  -- Electrode
  (10100, 101, 'electrode', 'Electrode', 1, TRUE, 1, NULL, NULL),
  -- Exeggcute
  (10200, 102, 'exeggcute', 'Exeggcute', 1, TRUE, 1, NULL, NULL),
  -- Exeggutor
  (10300, 103, 'exeggutor', 'Exeggutor', 1, TRUE, 1, NULL, NULL),
  -- Cubone
  (10400, 104, 'cubone', 'Cubone', 1, TRUE, 1, NULL, NULL),
  -- Marowak
  (10500, 105, 'marowak', 'Marowak', 1, TRUE, 1, NULL, NULL),
  -- Hitmonlee
  (10600, 106, 'hitmonlee', 'Hitmonlee', 1, TRUE, 1, NULL, NULL),
  -- Hitmonchan
  (10700, 107, 'hitmonchan', 'Hitmonchan', 1, TRUE, 1, NULL, NULL),
  -- Lickitung
  (10800, 108, 'lickitung', 'Lickitung', 1, TRUE, 1, NULL, NULL),
  -- Koffing
  (10900, 109, 'koffing', 'Koffing', 1, TRUE, 1, NULL, NULL),
  -- Weezing
  (11000, 110, 'weezing', 'Weezing', 1, TRUE, 1, NULL, NULL),
  -- Rhyhorn
  (11100, 111, 'rhyhorn', 'Rhyhorn', 1, TRUE, 1, NULL, NULL),
  -- Rhydon
  (11200, 112, 'rhydon', 'Rhydon', 1, TRUE, 1, NULL, NULL),
  -- Chansey
  (11300, 113, 'chansey', 'Chansey', 1, TRUE, 1, NULL, NULL),
  -- Tangela
  (11400, 114, 'tangela', 'Tangela', 1, TRUE, 1, NULL, NULL),
  -- Kangaskhan
  (11500, 115, 'kangaskhan', 'Kangaskhan', 1, TRUE, 1, NULL, NULL),
  -- Horsea
  (11600, 116, 'horsea', 'Horsea', 1, TRUE, 1, NULL, NULL),
  -- Seadra
  (11700, 117, 'seadra', 'Seadra', 1, TRUE, 1, NULL, NULL),
  -- Goldeen
  (11800, 118, 'goldeen', 'Goldeen', 1, TRUE, 1, NULL, NULL),
  -- Seaking
  (11900, 119, 'seaking', 'Seaking', 1, TRUE, 1, NULL, NULL),
  -- Staryu
  (12000, 120, 'staryu', 'Staryu', 1, TRUE, 1, NULL, NULL),
  -- Starmie
  (12100, 121, 'starmie', 'Starmie', 1, TRUE, 1, NULL, NULL),
  -- Mr. Mime
  (12200, 122, 'mr-mime', 'Mr. Mime', 1, TRUE, 1, NULL, NULL),
  -- Scyther
  (12300, 123, 'scyther', 'Scyther', 1, TRUE, 1, NULL, NULL),
  -- Jynx
  (12400, 124, 'jynx', 'Jynx', 1, TRUE, 1, NULL, NULL),
  -- Electabuzz
  (12500, 125, 'electabuzz', 'Electabuzz', 1, TRUE, 1, NULL, NULL),
  -- Magmar
  (12600, 126, 'magmar', 'Magmar', 1, TRUE, 1, NULL, NULL),
  -- Pinsir
  (12700, 127, 'pinsir', 'Pinsir', 1, TRUE, 1, NULL, NULL),
  -- Tauros
  (12800, 128, 'tauros', 'Tauros', 1, TRUE, 1, NULL, NULL),
  -- Magikarp
  (12900, 129, 'magikarp', 'Magikarp', 1, TRUE, 1, NULL, NULL),
  -- Gyarados
  (13000, 130, 'gyarados', 'Gyarados', 1, TRUE, 1, NULL, NULL),
  -- Lapras
  (13100, 131, 'lapras', 'Lapras', 1, TRUE, 1, NULL, NULL),
  -- Ditto
  (13200, 132, 'ditto', 'Ditto', 1, TRUE, 1, NULL, NULL),
  -- Eevee
  (13300, 133, 'eevee', 'Eevee', 1, TRUE, 1, NULL, NULL),
  -- Vaporeon
  (13400, 134, 'vaporeon', 'Vaporeon', 1, TRUE, 1, NULL, NULL),
  -- Jolteon
  (13500, 135, 'jolteon', 'Jolteon', 1, TRUE, 1, NULL, NULL),
  -- Flareon
  (13600, 136, 'flareon', 'Flareon', 1, TRUE, 1, NULL, NULL),
  -- Porygon
  (13700, 137, 'porygon', 'Porygon', 1, TRUE, 1, NULL, NULL),
  -- Omanyte
  (13800, 138, 'omanyte', 'Omanyte', 1, TRUE, 1, NULL, NULL),
  -- Omastar
  (13900, 139, 'omastar', 'Omastar', 1, TRUE, 1, NULL, NULL),
  -- Kabuto
  (14000, 140, 'kabuto', 'Kabuto', 1, TRUE, 1, NULL, NULL),
  -- Kabutops
  (14100, 141, 'kabutops', 'Kabutops', 1, TRUE, 1, NULL, NULL),
  -- Aerodactyl
  (14200, 142, 'aerodactyl', 'Aerodactyl', 1, TRUE, 1, NULL, NULL),
  -- Snorlax
  (14300, 143, 'snorlax', 'Snorlax', 1, TRUE, 1, NULL, NULL),
  -- Articuno
  (14400, 144, 'articuno', 'Articuno', 1, TRUE, 1, NULL, NULL),
  -- Zapdos
  (14500, 145, 'zapdos', 'Zapdos', 1, TRUE, 1, NULL, NULL),
  -- Moltres
  (14600, 146, 'moltres', 'Moltres', 1, TRUE, 1, NULL, NULL),
  -- Dratini
  (14700, 147, 'dratini', 'Dratini', 1, TRUE, 1, NULL, NULL),
  -- Dragonair
  (14800, 148, 'dragonair', 'Dragonair', 1, TRUE, 1, NULL, NULL),
  -- Dragonite
  (14900, 149, 'dragonite', 'Dragonite', 1, TRUE, 1, NULL, NULL),
  -- Mewtwo
  (15000, 150, 'mewtwo', 'Mewtwo', 1, TRUE, 1, NULL, NULL),
  -- Mew
  (15100, 151, 'mew', 'Mew', 1, TRUE, 1, NULL, NULL);
