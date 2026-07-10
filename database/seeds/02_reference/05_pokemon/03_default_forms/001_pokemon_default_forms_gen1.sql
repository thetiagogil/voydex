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
INSERT INTO reference.pokemon_forms (id, species_id, slug, name, introduced_generation_id, is_default, form_order, height_decimeters, weight_hectograms, sprite_slug)
VALUES
  -- Bulbasaur
  (100, 1, 'bulbasaur', 'Bulbasaur', 1, TRUE, 1, NULL, NULL, 'bulbasaur'),
  -- Ivysaur
  (200, 2, 'ivysaur', 'Ivysaur', 1, TRUE, 1, NULL, NULL, 'ivysaur'),
  -- Venusaur
  (300, 3, 'venusaur', 'Venusaur', 1, TRUE, 1, NULL, NULL, 'venusaur'),
  -- Charmander
  (400, 4, 'charmander', 'Charmander', 1, TRUE, 1, NULL, NULL, 'charmander'),
  -- Charmeleon
  (500, 5, 'charmeleon', 'Charmeleon', 1, TRUE, 1, NULL, NULL, 'charmeleon'),
  -- Charizard
  (600, 6, 'charizard', 'Charizard', 1, TRUE, 1, NULL, NULL, 'charizard'),
  -- Squirtle
  (700, 7, 'squirtle', 'Squirtle', 1, TRUE, 1, NULL, NULL, 'squirtle'),
  -- Wartortle
  (800, 8, 'wartortle', 'Wartortle', 1, TRUE, 1, NULL, NULL, 'wartortle'),
  -- Blastoise
  (900, 9, 'blastoise', 'Blastoise', 1, TRUE, 1, NULL, NULL, 'blastoise'),
  -- Caterpie
  (1000, 10, 'caterpie', 'Caterpie', 1, TRUE, 1, NULL, NULL, 'caterpie'),
  -- Metapod
  (1100, 11, 'metapod', 'Metapod', 1, TRUE, 1, NULL, NULL, 'metapod'),
  -- Butterfree
  (1200, 12, 'butterfree', 'Butterfree', 1, TRUE, 1, NULL, NULL, 'butterfree'),
  -- Weedle
  (1300, 13, 'weedle', 'Weedle', 1, TRUE, 1, NULL, NULL, 'weedle'),
  -- Kakuna
  (1400, 14, 'kakuna', 'Kakuna', 1, TRUE, 1, NULL, NULL, 'kakuna'),
  -- Beedrill
  (1500, 15, 'beedrill', 'Beedrill', 1, TRUE, 1, NULL, NULL, 'beedrill'),
  -- Pidgey
  (1600, 16, 'pidgey', 'Pidgey', 1, TRUE, 1, NULL, NULL, 'pidgey'),
  -- Pidgeotto
  (1700, 17, 'pidgeotto', 'Pidgeotto', 1, TRUE, 1, NULL, NULL, 'pidgeotto'),
  -- Pidgeot
  (1800, 18, 'pidgeot', 'Pidgeot', 1, TRUE, 1, NULL, NULL, 'pidgeot'),
  -- Rattata
  (1900, 19, 'rattata', 'Rattata', 1, TRUE, 1, NULL, NULL, 'rattata'),
  -- Raticate
  (2000, 20, 'raticate', 'Raticate', 1, TRUE, 1, NULL, NULL, 'raticate'),
  -- Spearow
  (2100, 21, 'spearow', 'Spearow', 1, TRUE, 1, NULL, NULL, 'spearow'),
  -- Fearow
  (2200, 22, 'fearow', 'Fearow', 1, TRUE, 1, NULL, NULL, 'fearow'),
  -- Ekans
  (2300, 23, 'ekans', 'Ekans', 1, TRUE, 1, NULL, NULL, 'ekans'),
  -- Arbok
  (2400, 24, 'arbok', 'Arbok', 1, TRUE, 1, NULL, NULL, 'arbok'),
  -- Pikachu
  (2500, 25, 'pikachu', 'Pikachu', 1, TRUE, 1, NULL, NULL, 'pikachu'),
  -- Raichu
  (2600, 26, 'raichu', 'Raichu', 1, TRUE, 1, NULL, NULL, 'raichu'),
  -- Sandshrew
  (2700, 27, 'sandshrew', 'Sandshrew', 1, TRUE, 1, NULL, NULL, 'sandshrew'),
  -- Sandslash
  (2800, 28, 'sandslash', 'Sandslash', 1, TRUE, 1, NULL, NULL, 'sandslash'),
  -- Nidoran F
  (2900, 29, 'nidoran-f', 'Nidoran F', 1, TRUE, 1, NULL, NULL, 'nidoran-f'),
  -- Nidorina
  (3000, 30, 'nidorina', 'Nidorina', 1, TRUE, 1, NULL, NULL, 'nidorina'),
  -- Nidoqueen
  (3100, 31, 'nidoqueen', 'Nidoqueen', 1, TRUE, 1, NULL, NULL, 'nidoqueen'),
  -- Nidoran M
  (3200, 32, 'nidoran-m', 'Nidoran M', 1, TRUE, 1, NULL, NULL, 'nidoran-m'),
  -- Nidorino
  (3300, 33, 'nidorino', 'Nidorino', 1, TRUE, 1, NULL, NULL, 'nidorino'),
  -- Nidoking
  (3400, 34, 'nidoking', 'Nidoking', 1, TRUE, 1, NULL, NULL, 'nidoking'),
  -- Clefairy
  (3500, 35, 'clefairy', 'Clefairy', 1, TRUE, 1, NULL, NULL, 'clefairy'),
  -- Clefable
  (3600, 36, 'clefable', 'Clefable', 1, TRUE, 1, NULL, NULL, 'clefable'),
  -- Vulpix
  (3700, 37, 'vulpix', 'Vulpix', 1, TRUE, 1, NULL, NULL, 'vulpix'),
  -- Ninetales
  (3800, 38, 'ninetales', 'Ninetales', 1, TRUE, 1, NULL, NULL, 'ninetales'),
  -- Jigglypuff
  (3900, 39, 'jigglypuff', 'Jigglypuff', 1, TRUE, 1, NULL, NULL, 'jigglypuff'),
  -- Wigglytuff
  (4000, 40, 'wigglytuff', 'Wigglytuff', 1, TRUE, 1, NULL, NULL, 'wigglytuff'),
  -- Zubat
  (4100, 41, 'zubat', 'Zubat', 1, TRUE, 1, NULL, NULL, 'zubat'),
  -- Golbat
  (4200, 42, 'golbat', 'Golbat', 1, TRUE, 1, NULL, NULL, 'golbat'),
  -- Oddish
  (4300, 43, 'oddish', 'Oddish', 1, TRUE, 1, NULL, NULL, 'oddish'),
  -- Gloom
  (4400, 44, 'gloom', 'Gloom', 1, TRUE, 1, NULL, NULL, 'gloom'),
  -- Vileplume
  (4500, 45, 'vileplume', 'Vileplume', 1, TRUE, 1, NULL, NULL, 'vileplume'),
  -- Paras
  (4600, 46, 'paras', 'Paras', 1, TRUE, 1, NULL, NULL, 'paras'),
  -- Parasect
  (4700, 47, 'parasect', 'Parasect', 1, TRUE, 1, NULL, NULL, 'parasect'),
  -- Venonat
  (4800, 48, 'venonat', 'Venonat', 1, TRUE, 1, NULL, NULL, 'venonat'),
  -- Venomoth
  (4900, 49, 'venomoth', 'Venomoth', 1, TRUE, 1, NULL, NULL, 'venomoth'),
  -- Diglett
  (5000, 50, 'diglett', 'Diglett', 1, TRUE, 1, NULL, NULL, 'diglett'),
  -- Dugtrio
  (5100, 51, 'dugtrio', 'Dugtrio', 1, TRUE, 1, NULL, NULL, 'dugtrio'),
  -- Meowth
  (5200, 52, 'meowth', 'Meowth', 1, TRUE, 1, NULL, NULL, 'meowth'),
  -- Persian
  (5300, 53, 'persian', 'Persian', 1, TRUE, 1, NULL, NULL, 'persian'),
  -- Psyduck
  (5400, 54, 'psyduck', 'Psyduck', 1, TRUE, 1, NULL, NULL, 'psyduck'),
  -- Golduck
  (5500, 55, 'golduck', 'Golduck', 1, TRUE, 1, NULL, NULL, 'golduck'),
  -- Mankey
  (5600, 56, 'mankey', 'Mankey', 1, TRUE, 1, NULL, NULL, 'mankey'),
  -- Primeape
  (5700, 57, 'primeape', 'Primeape', 1, TRUE, 1, NULL, NULL, 'primeape'),
  -- Growlithe
  (5800, 58, 'growlithe', 'Growlithe', 1, TRUE, 1, NULL, NULL, 'growlithe'),
  -- Arcanine
  (5900, 59, 'arcanine', 'Arcanine', 1, TRUE, 1, NULL, NULL, 'arcanine'),
  -- Poliwag
  (6000, 60, 'poliwag', 'Poliwag', 1, TRUE, 1, NULL, NULL, 'poliwag'),
  -- Poliwhirl
  (6100, 61, 'poliwhirl', 'Poliwhirl', 1, TRUE, 1, NULL, NULL, 'poliwhirl'),
  -- Poliwrath
  (6200, 62, 'poliwrath', 'Poliwrath', 1, TRUE, 1, NULL, NULL, 'poliwrath'),
  -- Abra
  (6300, 63, 'abra', 'Abra', 1, TRUE, 1, NULL, NULL, 'abra'),
  -- Kadabra
  (6400, 64, 'kadabra', 'Kadabra', 1, TRUE, 1, NULL, NULL, 'kadabra'),
  -- Alakazam
  (6500, 65, 'alakazam', 'Alakazam', 1, TRUE, 1, NULL, NULL, 'alakazam'),
  -- Machop
  (6600, 66, 'machop', 'Machop', 1, TRUE, 1, NULL, NULL, 'machop'),
  -- Machoke
  (6700, 67, 'machoke', 'Machoke', 1, TRUE, 1, NULL, NULL, 'machoke'),
  -- Machamp
  (6800, 68, 'machamp', 'Machamp', 1, TRUE, 1, NULL, NULL, 'machamp'),
  -- Bellsprout
  (6900, 69, 'bellsprout', 'Bellsprout', 1, TRUE, 1, NULL, NULL, 'bellsprout'),
  -- Weepinbell
  (7000, 70, 'weepinbell', 'Weepinbell', 1, TRUE, 1, NULL, NULL, 'weepinbell'),
  -- Victreebel
  (7100, 71, 'victreebel', 'Victreebel', 1, TRUE, 1, NULL, NULL, 'victreebel'),
  -- Tentacool
  (7200, 72, 'tentacool', 'Tentacool', 1, TRUE, 1, NULL, NULL, 'tentacool'),
  -- Tentacruel
  (7300, 73, 'tentacruel', 'Tentacruel', 1, TRUE, 1, NULL, NULL, 'tentacruel'),
  -- Geodude
  (7400, 74, 'geodude', 'Geodude', 1, TRUE, 1, NULL, NULL, 'geodude'),
  -- Graveler
  (7500, 75, 'graveler', 'Graveler', 1, TRUE, 1, NULL, NULL, 'graveler'),
  -- Golem
  (7600, 76, 'golem', 'Golem', 1, TRUE, 1, NULL, NULL, 'golem'),
  -- Ponyta
  (7700, 77, 'ponyta', 'Ponyta', 1, TRUE, 1, NULL, NULL, 'ponyta'),
  -- Rapidash
  (7800, 78, 'rapidash', 'Rapidash', 1, TRUE, 1, NULL, NULL, 'rapidash'),
  -- Slowpoke
  (7900, 79, 'slowpoke', 'Slowpoke', 1, TRUE, 1, NULL, NULL, 'slowpoke'),
  -- Slowbro
  (8000, 80, 'slowbro', 'Slowbro', 1, TRUE, 1, NULL, NULL, 'slowbro'),
  -- Magnemite
  (8100, 81, 'magnemite', 'Magnemite', 1, TRUE, 1, NULL, NULL, 'magnemite'),
  -- Magneton
  (8200, 82, 'magneton', 'Magneton', 1, TRUE, 1, NULL, NULL, 'magneton'),
  -- Farfetch'd
  (8300, 83, 'farfetchd', 'Farfetch''d', 1, TRUE, 1, NULL, NULL, 'farfetchd'),
  -- Doduo
  (8400, 84, 'doduo', 'Doduo', 1, TRUE, 1, NULL, NULL, 'doduo'),
  -- Dodrio
  (8500, 85, 'dodrio', 'Dodrio', 1, TRUE, 1, NULL, NULL, 'dodrio'),
  -- Seel
  (8600, 86, 'seel', 'Seel', 1, TRUE, 1, NULL, NULL, 'seel'),
  -- Dewgong
  (8700, 87, 'dewgong', 'Dewgong', 1, TRUE, 1, NULL, NULL, 'dewgong'),
  -- Grimer
  (8800, 88, 'grimer', 'Grimer', 1, TRUE, 1, NULL, NULL, 'grimer'),
  -- Muk
  (8900, 89, 'muk', 'Muk', 1, TRUE, 1, NULL, NULL, 'muk'),
  -- Shellder
  (9000, 90, 'shellder', 'Shellder', 1, TRUE, 1, NULL, NULL, 'shellder'),
  -- Cloyster
  (9100, 91, 'cloyster', 'Cloyster', 1, TRUE, 1, NULL, NULL, 'cloyster'),
  -- Gastly
  (9200, 92, 'gastly', 'Gastly', 1, TRUE, 1, NULL, NULL, 'gastly'),
  -- Haunter
  (9300, 93, 'haunter', 'Haunter', 1, TRUE, 1, NULL, NULL, 'haunter'),
  -- Gengar
  (9400, 94, 'gengar', 'Gengar', 1, TRUE, 1, NULL, NULL, 'gengar'),
  -- Onix
  (9500, 95, 'onix', 'Onix', 1, TRUE, 1, NULL, NULL, 'onix'),
  -- Drowzee
  (9600, 96, 'drowzee', 'Drowzee', 1, TRUE, 1, NULL, NULL, 'drowzee'),
  -- Hypno
  (9700, 97, 'hypno', 'Hypno', 1, TRUE, 1, NULL, NULL, 'hypno'),
  -- Krabby
  (9800, 98, 'krabby', 'Krabby', 1, TRUE, 1, NULL, NULL, 'krabby'),
  -- Kingler
  (9900, 99, 'kingler', 'Kingler', 1, TRUE, 1, NULL, NULL, 'kingler'),
  -- Voltorb
  (10000, 100, 'voltorb', 'Voltorb', 1, TRUE, 1, NULL, NULL, 'voltorb'),
  -- Electrode
  (10100, 101, 'electrode', 'Electrode', 1, TRUE, 1, NULL, NULL, 'electrode'),
  -- Exeggcute
  (10200, 102, 'exeggcute', 'Exeggcute', 1, TRUE, 1, NULL, NULL, 'exeggcute'),
  -- Exeggutor
  (10300, 103, 'exeggutor', 'Exeggutor', 1, TRUE, 1, NULL, NULL, 'exeggutor'),
  -- Cubone
  (10400, 104, 'cubone', 'Cubone', 1, TRUE, 1, NULL, NULL, 'cubone'),
  -- Marowak
  (10500, 105, 'marowak', 'Marowak', 1, TRUE, 1, NULL, NULL, 'marowak'),
  -- Hitmonlee
  (10600, 106, 'hitmonlee', 'Hitmonlee', 1, TRUE, 1, NULL, NULL, 'hitmonlee'),
  -- Hitmonchan
  (10700, 107, 'hitmonchan', 'Hitmonchan', 1, TRUE, 1, NULL, NULL, 'hitmonchan'),
  -- Lickitung
  (10800, 108, 'lickitung', 'Lickitung', 1, TRUE, 1, NULL, NULL, 'lickitung'),
  -- Koffing
  (10900, 109, 'koffing', 'Koffing', 1, TRUE, 1, NULL, NULL, 'koffing'),
  -- Weezing
  (11000, 110, 'weezing', 'Weezing', 1, TRUE, 1, NULL, NULL, 'weezing'),
  -- Rhyhorn
  (11100, 111, 'rhyhorn', 'Rhyhorn', 1, TRUE, 1, NULL, NULL, 'rhyhorn'),
  -- Rhydon
  (11200, 112, 'rhydon', 'Rhydon', 1, TRUE, 1, NULL, NULL, 'rhydon'),
  -- Chansey
  (11300, 113, 'chansey', 'Chansey', 1, TRUE, 1, NULL, NULL, 'chansey'),
  -- Tangela
  (11400, 114, 'tangela', 'Tangela', 1, TRUE, 1, NULL, NULL, 'tangela'),
  -- Kangaskhan
  (11500, 115, 'kangaskhan', 'Kangaskhan', 1, TRUE, 1, NULL, NULL, 'kangaskhan'),
  -- Horsea
  (11600, 116, 'horsea', 'Horsea', 1, TRUE, 1, NULL, NULL, 'horsea'),
  -- Seadra
  (11700, 117, 'seadra', 'Seadra', 1, TRUE, 1, NULL, NULL, 'seadra'),
  -- Goldeen
  (11800, 118, 'goldeen', 'Goldeen', 1, TRUE, 1, NULL, NULL, 'goldeen'),
  -- Seaking
  (11900, 119, 'seaking', 'Seaking', 1, TRUE, 1, NULL, NULL, 'seaking'),
  -- Staryu
  (12000, 120, 'staryu', 'Staryu', 1, TRUE, 1, NULL, NULL, 'staryu'),
  -- Starmie
  (12100, 121, 'starmie', 'Starmie', 1, TRUE, 1, NULL, NULL, 'starmie'),
  -- Mr. Mime
  (12200, 122, 'mr-mime', 'Mr. Mime', 1, TRUE, 1, NULL, NULL, 'mr-mime'),
  -- Scyther
  (12300, 123, 'scyther', 'Scyther', 1, TRUE, 1, NULL, NULL, 'scyther'),
  -- Jynx
  (12400, 124, 'jynx', 'Jynx', 1, TRUE, 1, NULL, NULL, 'jynx'),
  -- Electabuzz
  (12500, 125, 'electabuzz', 'Electabuzz', 1, TRUE, 1, NULL, NULL, 'electabuzz'),
  -- Magmar
  (12600, 126, 'magmar', 'Magmar', 1, TRUE, 1, NULL, NULL, 'magmar'),
  -- Pinsir
  (12700, 127, 'pinsir', 'Pinsir', 1, TRUE, 1, NULL, NULL, 'pinsir'),
  -- Tauros
  (12800, 128, 'tauros', 'Tauros', 1, TRUE, 1, NULL, NULL, 'tauros'),
  -- Magikarp
  (12900, 129, 'magikarp', 'Magikarp', 1, TRUE, 1, NULL, NULL, 'magikarp'),
  -- Gyarados
  (13000, 130, 'gyarados', 'Gyarados', 1, TRUE, 1, NULL, NULL, 'gyarados'),
  -- Lapras
  (13100, 131, 'lapras', 'Lapras', 1, TRUE, 1, NULL, NULL, 'lapras'),
  -- Ditto
  (13200, 132, 'ditto', 'Ditto', 1, TRUE, 1, NULL, NULL, 'ditto'),
  -- Eevee
  (13300, 133, 'eevee', 'Eevee', 1, TRUE, 1, NULL, NULL, 'eevee'),
  -- Vaporeon
  (13400, 134, 'vaporeon', 'Vaporeon', 1, TRUE, 1, NULL, NULL, 'vaporeon'),
  -- Jolteon
  (13500, 135, 'jolteon', 'Jolteon', 1, TRUE, 1, NULL, NULL, 'jolteon'),
  -- Flareon
  (13600, 136, 'flareon', 'Flareon', 1, TRUE, 1, NULL, NULL, 'flareon'),
  -- Porygon
  (13700, 137, 'porygon', 'Porygon', 1, TRUE, 1, NULL, NULL, 'porygon'),
  -- Omanyte
  (13800, 138, 'omanyte', 'Omanyte', 1, TRUE, 1, NULL, NULL, 'omanyte'),
  -- Omastar
  (13900, 139, 'omastar', 'Omastar', 1, TRUE, 1, NULL, NULL, 'omastar'),
  -- Kabuto
  (14000, 140, 'kabuto', 'Kabuto', 1, TRUE, 1, NULL, NULL, 'kabuto'),
  -- Kabutops
  (14100, 141, 'kabutops', 'Kabutops', 1, TRUE, 1, NULL, NULL, 'kabutops'),
  -- Aerodactyl
  (14200, 142, 'aerodactyl', 'Aerodactyl', 1, TRUE, 1, NULL, NULL, 'aerodactyl'),
  -- Snorlax
  (14300, 143, 'snorlax', 'Snorlax', 1, TRUE, 1, NULL, NULL, 'snorlax'),
  -- Articuno
  (14400, 144, 'articuno', 'Articuno', 1, TRUE, 1, NULL, NULL, 'articuno'),
  -- Zapdos
  (14500, 145, 'zapdos', 'Zapdos', 1, TRUE, 1, NULL, NULL, 'zapdos'),
  -- Moltres
  (14600, 146, 'moltres', 'Moltres', 1, TRUE, 1, NULL, NULL, 'moltres'),
  -- Dratini
  (14700, 147, 'dratini', 'Dratini', 1, TRUE, 1, NULL, NULL, 'dratini'),
  -- Dragonair
  (14800, 148, 'dragonair', 'Dragonair', 1, TRUE, 1, NULL, NULL, 'dragonair'),
  -- Dragonite
  (14900, 149, 'dragonite', 'Dragonite', 1, TRUE, 1, NULL, NULL, 'dragonite'),
  -- Mewtwo
  (15000, 150, 'mewtwo', 'Mewtwo', 1, TRUE, 1, NULL, NULL, 'mewtwo'),
  -- Mew
  (15100, 151, 'mew', 'Mew', 1, TRUE, 1, NULL, NULL, 'mew');
