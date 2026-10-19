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
-- Generation 2 evolution edge rows grouped by when the edge/form/method
-- entered the source model.
-- Table: reference.pokemon_evolution_edges
-- ============================================================================

INSERT INTO reference.pokemon_evolution_edges (from_species_id, from_form_id, to_species_id, to_form_id, version_group_id, introduced_generation_id, evolution_method_id, minimum_level, item_id, held_item_id, known_move_id, known_type_id, gender, time_of_day, location_label, condition_summary, condition_data, sort_order)
VALUES
  -- Golbat -> Crobat
  (42, 4200, 169, 16900, NULL, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'friendship 220+', '{"source_trigger":"level-up","min_happiness":220}', 73),
  -- Gloom -> Bellossom
  (44, 4400, 182, 18200, NULL, 2, 2, NULL, 68, NULL, NULL, NULL, NULL, NULL, NULL, 'use Sun Stone', '{"source_trigger":"use-item","item":"sun-stone"}', 74),
  -- Poliwhirl -> Politoed
  (61, 6100, 186, 18600, NULL, 2, 3, NULL, NULL, 69, NULL, NULL, NULL, NULL, NULL, 'trade holding Kings Rock', '{"source_trigger":"trade","held_item":"kings-rock"}', 75),
  -- Slowpoke -> Slowking
  (79, 7900, 199, 19900, NULL, 2, 3, NULL, NULL, 69, NULL, NULL, NULL, NULL, NULL, 'trade holding Kings Rock', '{"source_trigger":"trade","held_item":"kings-rock"}', 76),
  -- Onix -> Steelix
  (95, 9500, 208, 20800, NULL, 2, 3, NULL, NULL, 70, NULL, NULL, NULL, NULL, NULL, 'trade holding Metal Coat', '{"source_trigger":"trade","held_item":"metal-coat"}', 77),
  -- Chansey -> Blissey
  (113, 11300, 242, 24200, NULL, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'friendship 220+', '{"source_trigger":"level-up","min_happiness":220}', 78),
  -- Seadra -> Kingdra
  (117, 11700, 230, 23000, NULL, 2, 3, NULL, NULL, 71, NULL, NULL, NULL, NULL, NULL, 'trade holding Dragon Scale', '{"source_trigger":"trade","held_item":"dragon-scale"}', 79),
  -- Scyther -> Scizor
  (123, 12300, 212, 21200, NULL, 2, 3, NULL, NULL, 70, NULL, NULL, NULL, NULL, NULL, 'trade holding Metal Coat', '{"source_trigger":"trade","held_item":"metal-coat"}', 80),
  -- Eevee -> Espeon
  (133, 13300, 196, 19600, NULL, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'day', NULL, 'friendship 220+; during day', '{"source_trigger":"level-up","min_happiness":220}', 81),
  -- Eevee -> Umbreon
  (133, 13300, 197, 19700, NULL, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, 'night', NULL, 'friendship 220+; during night', '{"source_trigger":"level-up","min_happiness":220}', 82),
  -- Porygon -> Porygon2
  (137, 13700, 233, 23300, NULL, 2, 3, NULL, NULL, 72, NULL, NULL, NULL, NULL, NULL, 'trade holding Up Grade', '{"source_trigger":"trade","held_item":"up-grade"}', 83),
  -- Chikorita -> Bayleef
  (152, 15200, 153, 15300, NULL, 2, 1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 16', '{"source_trigger":"level-up"}', 84),
  -- Bayleef -> Meganium
  (153, 15300, 154, 15400, NULL, 2, 1, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 32', '{"source_trigger":"level-up"}', 85),
  -- Cyndaquil -> Quilava
  (155, 15500, 156, 15600, NULL, 2, 1, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 14', '{"source_trigger":"level-up"}', 86),
  -- Quilava -> Typhlosion
  (156, 15600, 157, 15700, NULL, 2, 1, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 36', '{"source_trigger":"level-up"}', 87),
  -- Totodile -> Croconaw
  (158, 15800, 159, 15900, NULL, 2, 1, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 18', '{"source_trigger":"level-up"}', 88),
  -- Croconaw -> Feraligatr
  (159, 15900, 160, 16000, NULL, 2, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 30', '{"source_trigger":"level-up"}', 89),
  -- Sentret -> Furret
  (161, 16100, 162, 16200, NULL, 2, 1, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 15', '{"source_trigger":"level-up"}', 90),
  -- Hoothoot -> Noctowl
  (163, 16300, 164, 16400, NULL, 2, 1, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 20', '{"source_trigger":"level-up"}', 91),
  -- Ledyba -> Ledian
  (165, 16500, 166, 16600, NULL, 2, 1, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 18', '{"source_trigger":"level-up"}', 92),
  -- Spinarak -> Ariados
  (167, 16700, 168, 16800, NULL, 2, 1, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 22', '{"source_trigger":"level-up"}', 93),
  -- Chinchou -> Lanturn
  (170, 17000, 171, 17100, NULL, 2, 1, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 27', '{"source_trigger":"level-up"}', 94),
  -- Pichu -> Pikachu
  (172, 17200, 25, 2500, NULL, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'friendship 220+', '{"source_trigger":"level-up","min_happiness":220}', 95),
  -- Cleffa -> Clefairy
  (173, 17300, 35, 3500, NULL, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'friendship 220+', '{"source_trigger":"level-up","min_happiness":220}', 96),
  -- Igglybuff -> Jigglypuff
  (174, 17400, 39, 3900, NULL, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'friendship 220+', '{"source_trigger":"level-up","min_happiness":220}', 97),
  -- Togepi -> Togetic
  (175, 17500, 176, 17600, NULL, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'friendship 220+', '{"source_trigger":"level-up","min_happiness":220}', 98),
  -- Natu -> Xatu
  (177, 17700, 178, 17800, NULL, 2, 1, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 25', '{"source_trigger":"level-up"}', 99),
  -- Mareep -> Flaaffy
  (179, 17900, 180, 18000, NULL, 2, 1, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 15', '{"source_trigger":"level-up"}', 100),
  -- Flaaffy -> Ampharos
  (180, 18000, 181, 18100, NULL, 2, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 30', '{"source_trigger":"level-up"}', 101),
  -- Marill -> Azumarill
  (183, 18300, 184, 18400, NULL, 2, 1, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 18', '{"source_trigger":"level-up"}', 102),
  -- Hoppip -> Skiploom
  (187, 18700, 188, 18800, NULL, 2, 1, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 18', '{"source_trigger":"level-up"}', 103),
  -- Skiploom -> Jumpluff
  (188, 18800, 189, 18900, NULL, 2, 1, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 27', '{"source_trigger":"level-up"}', 104),
  -- Sunkern -> Sunflora
  (191, 19100, 192, 19200, NULL, 2, 2, NULL, 68, NULL, NULL, NULL, NULL, NULL, NULL, 'use Sun Stone', '{"source_trigger":"use-item","item":"sun-stone"}', 105),
  -- Wooper -> Quagsire
  (194, 19400, 195, 19500, NULL, 2, 1, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 20', '{"source_trigger":"level-up"}', 106),
  -- Pineco -> Forretress
  (204, 20400, 205, 20500, NULL, 2, 1, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 31', '{"source_trigger":"level-up"}', 107),
  -- Snubbull -> Granbull
  (209, 20900, 210, 21000, NULL, 2, 1, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 23', '{"source_trigger":"level-up"}', 108),
  -- Teddiursa -> Ursaring
  (216, 21600, 217, 21700, NULL, 2, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 30', '{"source_trigger":"level-up"}', 109),
  -- Slugma -> Magcargo
  (218, 21800, 219, 21900, NULL, 2, 1, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 38', '{"source_trigger":"level-up"}', 110),
  -- Swinub -> Piloswine
  (220, 22000, 221, 22100, NULL, 2, 1, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 33', '{"source_trigger":"level-up"}', 111),
  -- Remoraid -> Octillery
  (223, 22300, 224, 22400, NULL, 2, 1, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 25', '{"source_trigger":"level-up"}', 112),
  -- Houndour -> Houndoom
  (228, 22800, 229, 22900, NULL, 2, 1, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 24', '{"source_trigger":"level-up"}', 113),
  -- Phanpy -> Donphan
  (231, 23100, 232, 23200, NULL, 2, 1, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 25', '{"source_trigger":"level-up"}', 114),
  -- Tyrogue -> Hitmonlee
  (236, 23600, 106, 10600, NULL, 2, 9, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 20; Attack greater than Defense', '{"source_trigger":"level-up","relative_physical_stats":1}', 115),
  -- Tyrogue -> Hitmonchan
  (236, 23600, 107, 10700, NULL, 2, 9, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 20; Attack less than Defense', '{"source_trigger":"level-up","relative_physical_stats":-1}', 116),
  -- Tyrogue -> Hitmontop
  (236, 23600, 237, 23700, NULL, 2, 9, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 20; Attack equal to Defense', '{"source_trigger":"level-up","relative_physical_stats":0}', 117),
  -- Smoochum -> Jynx
  (238, 23800, 124, 12400, NULL, 2, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 30', '{"source_trigger":"level-up"}', 118),
  -- Elekid -> Electabuzz
  (239, 23900, 125, 12500, NULL, 2, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 30', '{"source_trigger":"level-up"}', 119),
  -- Magby -> Magmar
  (240, 24000, 126, 12600, NULL, 2, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 30', '{"source_trigger":"level-up"}', 120),
  -- Larvitar -> Pupitar
  (246, 24600, 247, 24700, NULL, 2, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 30', '{"source_trigger":"level-up"}', 121),
  -- Pupitar -> Tyranitar
  (247, 24700, 248, 24800, NULL, 2, 1, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 55', '{"source_trigger":"level-up"}', 122);

-- ============================================================================
