-- ============================================================================
-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia evolution method and Pokémon species pages.
-- Cross-check: Serebii evolution pages and PokemonDB evolution chains.
-- Machine-readable sanity: PokeAPI evolution-chain detail fields.
-- Scope note: official core-series Pokémon evolution edges through Generation IX.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation 1 evolution edge rows grouped by when the edge/form/method
-- entered the source model.
-- Table: reference.pokemon_evolution_edges
-- ============================================================================

INSERT INTO reference.pokemon_evolution_edges (from_species_id, from_form_id, to_species_id, to_form_id, version_group_id, introduced_generation_id, evolution_method_id, minimum_level, item_id, held_item_id, known_move_id, known_type_id, gender, time_of_day, location_label, condition_summary, condition_data, sort_order)
VALUES
  -- Bulbasaur -> Ivysaur
  (1, 100, 2, 200, NULL, 1, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 16', '{"source_trigger":"level-up"}', 1),
  -- Ivysaur -> Venusaur
  (2, 200, 3, 300, NULL, 1, 1, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 32', '{"source_trigger":"level-up"}', 2),
  -- Charmander -> Charmeleon
  (4, 400, 5, 500, NULL, 1, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 16', '{"source_trigger":"level-up"}', 3),
  -- Charmeleon -> Charizard
  (5, 500, 6, 600, NULL, 1, 1, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 36', '{"source_trigger":"level-up"}', 4),
  -- Squirtle -> Wartortle
  (7, 700, 8, 800, NULL, 1, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 16', '{"source_trigger":"level-up"}', 5),
  -- Wartortle -> Blastoise
  (8, 800, 9, 900, NULL, 1, 1, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 36', '{"source_trigger":"level-up"}', 6),
  -- Caterpie -> Metapod
  (10, 1000, 11, 1100, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 7', '{"source_trigger":"level-up"}', 7),
  -- Metapod -> Butterfree
  (11, 1100, 12, 1200, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 10', '{"source_trigger":"level-up"}', 8),
  -- Weedle -> Kakuna
  (13, 1300, 14, 1400, NULL, 1, 1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 7', '{"source_trigger":"level-up"}', 9),
  -- Kakuna -> Beedrill
  (14, 1400, 15, 1500, NULL, 1, 1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 10', '{"source_trigger":"level-up"}', 10),
  -- Pidgey -> Pidgeotto
  (16, 1600, 17, 1700, NULL, 1, 1, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 18', '{"source_trigger":"level-up"}', 11),
  -- Pidgeotto -> Pidgeot
  (17, 1700, 18, 1800, NULL, 1, 1, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 36', '{"source_trigger":"level-up"}', 12),
  -- Rattata -> Raticate
  (19, 1900, 20, 2000, NULL, 1, 1, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 20', '{"source_trigger":"level-up"}', 13),
  -- Spearow -> Fearow
  (21, 2100, 22, 2200, NULL, 1, 1, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 20', '{"source_trigger":"level-up"}', 14),
  -- Ekans -> Arbok
  (23, 2300, 24, 2400, NULL, 1, 1, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 22', '{"source_trigger":"level-up"}', 15),
  -- Pikachu -> Raichu
  (25, 2500, 26, 2600, NULL, 1, 2, NULL, 65, NULL, NULL, NULL, NULL, NULL, NULL, 'use Thunder Stone', '{"source_trigger":"use-item","item":"thunder-stone"}', 16),
  -- Sandshrew -> Sandslash
  (27, 2700, 28, 2800, NULL, 1, 1, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 22', '{"source_trigger":"level-up"}', 17),
  -- Nidoran F -> Nidorina
  (29, 2900, 30, 3000, NULL, 1, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 16', '{"source_trigger":"level-up"}', 18),
  -- Nidorina -> Nidoqueen
  (30, 3000, 31, 3100, NULL, 1, 2, NULL, 63, NULL, NULL, NULL, NULL, NULL, NULL, 'use Moon Stone', '{"source_trigger":"use-item","item":"moon-stone"}', 19),
  -- Nidoran M -> Nidorino
  (32, 3200, 33, 3300, NULL, 1, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 16', '{"source_trigger":"level-up"}', 20),
  -- Nidorino -> Nidoking
  (33, 3300, 34, 3400, NULL, 1, 2, NULL, 63, NULL, NULL, NULL, NULL, NULL, NULL, 'use Moon Stone', '{"source_trigger":"use-item","item":"moon-stone"}', 21),
  -- Clefairy -> Clefable
  (35, 3500, 36, 3600, NULL, 1, 2, NULL, 63, NULL, NULL, NULL, NULL, NULL, NULL, 'use Moon Stone', '{"source_trigger":"use-item","item":"moon-stone"}', 22),
  -- Vulpix -> Ninetales
  (37, 3700, 38, 3800, NULL, 1, 2, NULL, 64, NULL, NULL, NULL, NULL, NULL, NULL, 'use Fire Stone', '{"source_trigger":"use-item","item":"fire-stone"}', 23),
  -- Jigglypuff -> Wigglytuff
  (39, 3900, 40, 4000, NULL, 1, 2, NULL, 63, NULL, NULL, NULL, NULL, NULL, NULL, 'use Moon Stone', '{"source_trigger":"use-item","item":"moon-stone"}', 24),
  -- Zubat -> Golbat
  (41, 4100, 42, 4200, NULL, 1, 1, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 22', '{"source_trigger":"level-up"}', 25),
  -- Oddish -> Gloom
  (43, 4300, 44, 4400, NULL, 1, 1, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 21', '{"source_trigger":"level-up"}', 26),
  -- Gloom -> Vileplume
  (44, 4400, 45, 4500, NULL, 1, 2, NULL, 67, NULL, NULL, NULL, NULL, NULL, NULL, 'use Leaf Stone', '{"source_trigger":"use-item","item":"leaf-stone"}', 27),
  -- Paras -> Parasect
  (46, 4600, 47, 4700, NULL, 1, 1, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 24', '{"source_trigger":"level-up"}', 28),
  -- Venonat -> Venomoth
  (48, 4800, 49, 4900, NULL, 1, 1, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 31', '{"source_trigger":"level-up"}', 29),
  -- Diglett -> Dugtrio
  (50, 5000, 51, 5100, NULL, 1, 1, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 26', '{"source_trigger":"level-up"}', 30),
  -- Meowth -> Persian
  (52, 5200, 53, 5300, NULL, 1, 1, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 28', '{"source_trigger":"level-up"}', 31),
  -- Psyduck -> Golduck
  (54, 5400, 55, 5500, NULL, 1, 1, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 33', '{"source_trigger":"level-up"}', 32),
  -- Mankey -> Primeape
  (56, 5600, 57, 5700, NULL, 1, 1, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 28', '{"source_trigger":"level-up"}', 33),
  -- Growlithe -> Arcanine
  (58, 5800, 59, 5900, NULL, 1, 2, NULL, 64, NULL, NULL, NULL, NULL, NULL, NULL, 'use Fire Stone', '{"source_trigger":"use-item","item":"fire-stone"}', 34),
  -- Poliwag -> Poliwhirl
  (60, 6000, 61, 6100, NULL, 1, 1, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 25', '{"source_trigger":"level-up"}', 35),
  -- Poliwhirl -> Poliwrath
  (61, 6100, 62, 6200, NULL, 1, 2, NULL, 66, NULL, NULL, NULL, NULL, NULL, NULL, 'use Water Stone', '{"source_trigger":"use-item","item":"water-stone"}', 36),
  -- Abra -> Kadabra
  (63, 6300, 64, 6400, NULL, 1, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 16', '{"source_trigger":"level-up"}', 37),
  -- Kadabra -> Alakazam
  (64, 6400, 65, 6500, NULL, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"source_trigger":"trade"}', 38),
  -- Machop -> Machoke
  (66, 6600, 67, 6700, NULL, 1, 1, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 28', '{"source_trigger":"level-up"}', 39),
  -- Machoke -> Machamp
  (67, 6700, 68, 6800, NULL, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"source_trigger":"trade"}', 40),
  -- Bellsprout -> Weepinbell
  (69, 6900, 70, 7000, NULL, 1, 1, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 21', '{"source_trigger":"level-up"}', 41),
  -- Weepinbell -> Victreebel
  (70, 7000, 71, 7100, NULL, 1, 2, NULL, 67, NULL, NULL, NULL, NULL, NULL, NULL, 'use Leaf Stone', '{"source_trigger":"use-item","item":"leaf-stone"}', 42),
  -- Tentacool -> Tentacruel
  (72, 7200, 73, 7300, NULL, 1, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 30', '{"source_trigger":"level-up"}', 43),
  -- Geodude -> Graveler
  (74, 7400, 75, 7500, NULL, 1, 1, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 25', '{"source_trigger":"level-up"}', 44),
  -- Graveler -> Golem
  (75, 7500, 76, 7600, NULL, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"source_trigger":"trade"}', 45),
  -- Ponyta -> Rapidash
  (77, 7700, 78, 7800, NULL, 1, 1, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 40', '{"source_trigger":"level-up"}', 46),
  -- Slowpoke -> Slowbro
  (79, 7900, 80, 8000, NULL, 1, 1, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 37', '{"source_trigger":"level-up"}', 47),
  -- Magnemite -> Magneton
  (81, 8100, 82, 8200, NULL, 1, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 30', '{"source_trigger":"level-up"}', 48),
  -- Doduo -> Dodrio
  (84, 8400, 85, 8500, NULL, 1, 1, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 31', '{"source_trigger":"level-up"}', 49),
  -- Seel -> Dewgong
  (86, 8600, 87, 8700, NULL, 1, 1, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 34', '{"source_trigger":"level-up"}', 50),
  -- Grimer -> Muk
  (88, 8800, 89, 8900, NULL, 1, 1, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 38', '{"source_trigger":"level-up"}', 51),
  -- Shellder -> Cloyster
  (90, 9000, 91, 9100, NULL, 1, 2, NULL, 66, NULL, NULL, NULL, NULL, NULL, NULL, 'use Water Stone', '{"source_trigger":"use-item","item":"water-stone"}', 52),
  -- Gastly -> Haunter
  (92, 9200, 93, 9300, NULL, 1, 1, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 25', '{"source_trigger":"level-up"}', 53),
  -- Haunter -> Gengar
  (93, 9300, 94, 9400, NULL, 1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"source_trigger":"trade"}', 54),
  -- Drowzee -> Hypno
  (96, 9600, 97, 9700, NULL, 1, 1, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 26', '{"source_trigger":"level-up"}', 55),
  -- Krabby -> Kingler
  (98, 9800, 99, 9900, NULL, 1, 1, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 28', '{"source_trigger":"level-up"}', 56),
  -- Voltorb -> Electrode
  (100, 10000, 101, 10100, NULL, 1, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 30', '{"source_trigger":"level-up"}', 57),
  -- Exeggcute -> Exeggutor
  (102, 10200, 103, 10300, NULL, 1, 2, NULL, 67, NULL, NULL, NULL, NULL, NULL, NULL, 'use Leaf Stone', '{"source_trigger":"use-item","item":"leaf-stone"}', 58),
  -- Cubone -> Marowak
  (104, 10400, 105, 10500, NULL, 1, 1, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 28', '{"source_trigger":"level-up"}', 59),
  -- Koffing -> Weezing
  (109, 10900, 110, 11000, NULL, 1, 1, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 35', '{"source_trigger":"level-up"}', 60),
  -- Rhyhorn -> Rhydon
  (111, 11100, 112, 11200, NULL, 1, 1, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 42', '{"source_trigger":"level-up"}', 61),
  -- Horsea -> Seadra
  (116, 11600, 117, 11700, NULL, 1, 1, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 32', '{"source_trigger":"level-up"}', 62),
  -- Goldeen -> Seaking
  (118, 11800, 119, 11900, NULL, 1, 1, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 33', '{"source_trigger":"level-up"}', 63),
  -- Staryu -> Starmie
  (120, 12000, 121, 12100, NULL, 1, 2, NULL, 66, NULL, NULL, NULL, NULL, NULL, NULL, 'use Water Stone', '{"source_trigger":"use-item","item":"water-stone"}', 64),
  -- Magikarp -> Gyarados
  (129, 12900, 130, 13000, NULL, 1, 1, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 20', '{"source_trigger":"level-up"}', 65),
  -- Eevee -> Vaporeon
  (133, 13300, 134, 13400, NULL, 1, 2, NULL, 66, NULL, NULL, NULL, NULL, NULL, NULL, 'use Water Stone', '{"source_trigger":"use-item","item":"water-stone"}', 66),
  -- Eevee -> Jolteon
  (133, 13300, 135, 13500, NULL, 1, 2, NULL, 65, NULL, NULL, NULL, NULL, NULL, NULL, 'use Thunder Stone', '{"source_trigger":"use-item","item":"thunder-stone"}', 67),
  -- Eevee -> Flareon
  (133, 13300, 136, 13600, NULL, 1, 2, NULL, 64, NULL, NULL, NULL, NULL, NULL, NULL, 'use Fire Stone', '{"source_trigger":"use-item","item":"fire-stone"}', 68),
  -- Omanyte -> Omastar
  (138, 13800, 139, 13900, NULL, 1, 1, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 40', '{"source_trigger":"level-up"}', 69),
  -- Kabuto -> Kabutops
  (140, 14000, 141, 14100, NULL, 1, 1, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 40', '{"source_trigger":"level-up"}', 70),
  -- Dratini -> Dragonair
  (147, 14700, 148, 14800, NULL, 1, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 30', '{"source_trigger":"level-up"}', 71),
  -- Dragonair -> Dragonite
  (148, 14800, 149, 14900, NULL, 1, 1, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 55', '{"source_trigger":"level-up"}', 72);

-- ============================================================================
