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
-- Generation 7 evolution edge rows grouped by when the edge/form/method
-- entered the source model.
-- Table: reference.pokemon_evolution_edges
-- ============================================================================

INSERT INTO reference.pokemon_evolution_edges (from_species_id, from_form_id, to_species_id, to_form_id, version_group_id, introduced_generation_id, evolution_method_id, minimum_level, item_id, held_item_id, known_move_id, known_type_id, gender, time_of_day, location_label, condition_summary, condition_data, sort_order)
VALUES
  -- Magneton -> Magnezone
  (82, 8200, 462, 46200, NULL, 7, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Blush Mountain', 'at Blush Mountain', '{"source_trigger":"level-up","location":"blush-mountain"}', 376),
  -- Magneton -> Magnezone
  (82, 8200, 462, 46200, NULL, 7, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vast Poni Canyon', 'at Vast Poni Canyon', '{"source_trigger":"level-up","location":"vast-poni-canyon"}', 377),
  -- Eevee -> Leafeon
  (133, 13300, 470, 47000, NULL, 7, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Lush Jungle', 'at Lush Jungle', '{"source_trigger":"level-up","location":"lush-jungle"}', 378),
  -- Eevee -> Glaceon
  (133, 13300, 471, 47100, NULL, 7, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mount Lanakila', 'at Mount Lanakila', '{"source_trigger":"level-up","location":"mount-lanakila"}', 379),
  -- Nosepass -> Probopass
  (299, 29900, 476, 47600, NULL, 7, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Blush Mountain', 'at Blush Mountain', '{"source_trigger":"level-up","location":"blush-mountain"}', 380),
  -- Nosepass -> Probopass
  (299, 29900, 476, 47600, NULL, 7, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vast Poni Canyon', 'at Vast Poni Canyon', '{"source_trigger":"level-up","location":"vast-poni-canyon"}', 381),
  -- Alolan Rattata -> Alolan Raticate
  (19, 1901, 20, 2001, NULL, 7, 7, 20, NULL, NULL, NULL, NULL, NULL, 'night', NULL, 'Level 20; during night', '{"source_trigger":"level-up"}', 382),
  -- Pikachu -> Alolan Raichu
  (25, 2500, 26, 2601, NULL, 7, 2, NULL, 65, NULL, NULL, NULL, NULL, NULL, NULL, 'use Thunder Stone', '{"source_trigger":"use-item","item":"thunder-stone","region":"alola"}', 383),
  -- Alolan Sandshrew -> Alolan Sandslash
  (27, 2701, 28, 2801, NULL, 7, 2, NULL, 89, NULL, NULL, NULL, NULL, NULL, NULL, 'use Ice Stone', '{"source_trigger":"use-item","item":"ice-stone"}', 384),
  -- Alolan Vulpix -> Alolan Ninetales
  (37, 3701, 38, 3801, NULL, 7, 2, NULL, 89, NULL, NULL, NULL, NULL, NULL, NULL, 'use Ice Stone', '{"source_trigger":"use-item","item":"ice-stone"}', 385),
  -- Alolan Diglett -> Alolan Dugtrio
  (50, 5001, 51, 5101, NULL, 7, 1, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 26', '{"source_trigger":"level-up"}', 386),
  -- Alolan Meowth -> Alolan Persian
  (52, 5201, 53, 5301, NULL, 7, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'friendship 220+', '{"source_trigger":"level-up","min_happiness":220}', 387),
  -- Alolan Geodude -> Alolan Graveler
  (74, 7401, 75, 7501, NULL, 7, 1, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 25', '{"source_trigger":"level-up"}', 388),
  -- Alolan Graveler -> Alolan Golem
  (75, 7501, 76, 7601, NULL, 7, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{"source_trigger":"trade"}', 389),
  -- Alolan Grimer -> Alolan Muk
  (88, 8801, 89, 8901, NULL, 7, 1, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 38', '{"source_trigger":"level-up"}', 390),
  -- Exeggcute -> Alolan Exeggutor
  (102, 10200, 103, 10301, NULL, 7, 2, NULL, 67, NULL, NULL, NULL, NULL, NULL, NULL, 'use Leaf Stone', '{"source_trigger":"use-item","item":"leaf-stone","region":"alola"}', 391),
  -- Cubone -> Alolan Marowak
  (104, 10400, 105, 10501, NULL, 7, 7, 28, NULL, NULL, NULL, NULL, NULL, 'night', NULL, 'Level 28; during night', '{"source_trigger":"level-up","region":"alola"}', 392),
  -- Rowlet -> Dartrix
  (722, 72200, 723, 72300, NULL, 7, 1, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 17', '{"source_trigger":"level-up"}', 393),
  -- Dartrix -> Decidueye
  (723, 72300, 724, 72400, NULL, 7, 1, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 34', '{"source_trigger":"level-up"}', 394),
  -- Litten -> Torracat
  (725, 72500, 726, 72600, NULL, 7, 1, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 17', '{"source_trigger":"level-up"}', 395),
  -- Torracat -> Incineroar
  (726, 72600, 727, 72700, NULL, 7, 1, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 34', '{"source_trigger":"level-up"}', 396),
  -- Popplio -> Brionne
  (728, 72800, 729, 72900, NULL, 7, 1, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 17', '{"source_trigger":"level-up"}', 397),
  -- Brionne -> Primarina
  (729, 72900, 730, 73000, NULL, 7, 1, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 34', '{"source_trigger":"level-up"}', 398),
  -- Pikipek -> Trumbeak
  (731, 73100, 732, 73200, NULL, 7, 1, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 14', '{"source_trigger":"level-up"}', 399),
  -- Trumbeak -> Toucannon
  (732, 73200, 733, 73300, NULL, 7, 1, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 28', '{"source_trigger":"level-up"}', 400),
  -- Yungoos -> Gumshoos
  (734, 73400, 735, 73500, NULL, 7, 7, 20, NULL, NULL, NULL, NULL, NULL, 'day', NULL, 'Level 20; during day', '{"source_trigger":"level-up"}', 401),
  -- Grubbin -> Charjabug
  (736, 73600, 737, 73700, NULL, 7, 1, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 20', '{"source_trigger":"level-up"}', 402),
  -- Charjabug -> Vikavolt
  (737, 73700, 738, 73800, NULL, 7, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Blush Mountain', 'at Blush Mountain', '{"source_trigger":"level-up","location":"blush-mountain"}', 403),
  -- Charjabug -> Vikavolt
  (737, 73700, 738, 73800, NULL, 7, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Vast Poni Canyon', 'at Vast Poni Canyon', '{"source_trigger":"level-up","location":"vast-poni-canyon"}', 404),
  -- Crabrawler -> Crabominable
  (739, 73900, 740, 74000, NULL, 7, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mount Lanakila', 'at Mount Lanakila', '{"source_trigger":"level-up","location":"mount-lanakila"}', 405),
  -- Cutiefly -> Ribombee
  (742, 74200, 743, 74300, NULL, 7, 1, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 25', '{"source_trigger":"level-up"}', 406),
  -- Rockruff -> Lycanroc
  (744, 74400, 745, 74500, NULL, 7, 7, 25, NULL, NULL, NULL, NULL, NULL, 'day', NULL, 'Level 25; during day; Sun-family games in Generation VII', '{"source_trigger":"level-up","generation_7_version_family":"sun"}', 407),
  -- Rockruff -> Lycanroc (Midnight)
  (744, 74400, 745, 74501, NULL, 7, 7, 25, NULL, NULL, NULL, NULL, NULL, 'night', NULL, 'Level 25; during night; Moon-family games in Generation VII', '{"source_trigger":"level-up","generation_7_version_family":"moon"}', 408),
  -- Rockruff (Own Tempo) -> Lycanroc (Dusk)
  (744, 74401, 745, 74502, NULL, 7, 7, 25, NULL, NULL, NULL, NULL, NULL, 'dusk', NULL, 'Level 25; during dusk; Own Tempo Rockruff', '{"source_trigger":"level-up","required_form":"own-tempo"}', 409),
  -- Mareanie -> Toxapex
  (747, 74700, 748, 74800, NULL, 7, 1, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 38', '{"source_trigger":"level-up"}', 410),
  -- Mudbray -> Mudsdale
  (749, 74900, 750, 75000, NULL, 7, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 30', '{"source_trigger":"level-up"}', 411),
  -- Dewpider -> Araquanid
  (751, 75100, 752, 75200, NULL, 7, 1, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 22', '{"source_trigger":"level-up"}', 412),
  -- Fomantis -> Lurantis
  (753, 75300, 754, 75400, NULL, 7, 7, 34, NULL, NULL, NULL, NULL, NULL, 'day', NULL, 'Level 34; during day', '{"source_trigger":"level-up"}', 413),
  -- Morelull -> Shiinotic
  (755, 75500, 756, 75600, NULL, 7, 1, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 24', '{"source_trigger":"level-up"}', 414),
  -- Salandit -> Salazzle
  (757, 75700, 758, 75800, NULL, 7, 8, 33, NULL, NULL, NULL, NULL, 'female', NULL, NULL, 'Level 33; female only', '{"source_trigger":"level-up"}', 415),
  -- Stufful -> Bewear
  (759, 75900, 760, 76000, NULL, 7, 1, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 27', '{"source_trigger":"level-up"}', 416),
  -- Bounsweet -> Steenee
  (761, 76100, 762, 76200, NULL, 7, 1, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 18', '{"source_trigger":"level-up"}', 417),
  -- Steenee -> Tsareena
  (762, 76200, 763, 76300, NULL, 7, 5, NULL, NULL, NULL, 23, NULL, NULL, NULL, NULL, 'knows Stomp', '{"source_trigger":"level-up","known_move":"stomp"}', 418),
  -- Wimpod -> Golisopod
  (767, 76700, 768, 76800, NULL, 7, 1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 30', '{"source_trigger":"level-up"}', 419),
  -- Sandygast -> Palossand
  (769, 76900, 770, 77000, NULL, 7, 1, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 42', '{"source_trigger":"level-up"}', 420),
  -- Type: Null -> Silvally
  (772, 77200, 773, 77300, NULL, 7, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'friendship 220+', '{"source_trigger":"level-up","min_happiness":220}', 421),
  -- Jangmo-o -> Hakamo-o
  (782, 78200, 783, 78300, NULL, 7, 1, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 35', '{"source_trigger":"level-up"}', 422),
  -- Hakamo-o -> Kommo-o
  (783, 78300, 784, 78400, NULL, 7, 1, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 45', '{"source_trigger":"level-up"}', 423),
  -- Cosmog -> Cosmoem
  (789, 78900, 790, 79000, NULL, 7, 1, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 43', '{"source_trigger":"level-up"}', 424),
  -- Cosmoem -> Solgaleo
  (790, 79000, 791, 79100, NULL, 7, 1, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 53; Sun-family games', '{"source_trigger":"level-up","version_family":"sun"}', 425),
  -- Cosmoem -> Lunala
  (790, 79000, 792, 79200, NULL, 7, 1, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Level 53; Moon-family games', '{"source_trigger":"level-up","version_family":"moon"}', 426),
  -- Poipole -> Naganadel
  (803, 80300, 804, 80400, NULL, 7, 5, NULL, NULL, NULL, 406, NULL, NULL, NULL, NULL, 'knows Dragon Pulse', '{"source_trigger":"level-up","known_move":"dragon-pulse"}', 427);

-- ============================================================================
