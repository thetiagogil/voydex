-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia evolutionary-line convention; PokemonDB and Serebii Pokedex pages for species identity cross-checks.
-- Construction aid: PokeAPI pokemon_species CSV, restricted to National Dex 1-1025, used only to build connected components from explicit evolves_from_species_id edges.
-- Curated rule: breeding-only relationships are not evolution families; only explicit evolution relationships group species.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Generation: 1
-- Table: reference.evolution_families
-- Scope: evolution families anchored by generation 1 species
INSERT INTO reference.evolution_families (id, slug, name, sort_order)
VALUES
  -- Bulbasaur Family
  (1, 'bulbasaur-family', 'Bulbasaur Family', 1),
  -- Charmander Family
  (4, 'charmander-family', 'Charmander Family', 2),
  -- Squirtle Family
  (7, 'squirtle-family', 'Squirtle Family', 3),
  -- Caterpie Family
  (10, 'caterpie-family', 'Caterpie Family', 4),
  -- Weedle Family
  (13, 'weedle-family', 'Weedle Family', 5),
  -- Pidgey Family
  (16, 'pidgey-family', 'Pidgey Family', 6),
  -- Rattata Family
  (19, 'rattata-family', 'Rattata Family', 7),
  -- Spearow Family
  (21, 'spearow-family', 'Spearow Family', 8),
  -- Ekans Family
  (23, 'ekans-family', 'Ekans Family', 9),
  -- Pikachu Family
  (25, 'pikachu-family', 'Pikachu Family', 10),
  -- Sandshrew Family
  (27, 'sandshrew-family', 'Sandshrew Family', 11),
  -- Nidoran F Family
  (29, 'nidoran-f-family', 'Nidoran F Family', 12),
  -- Nidoran M Family
  (32, 'nidoran-m-family', 'Nidoran M Family', 13),
  -- Clefairy Family
  (35, 'clefairy-family', 'Clefairy Family', 14),
  -- Vulpix Family
  (37, 'vulpix-family', 'Vulpix Family', 15),
  -- Jigglypuff Family
  (39, 'jigglypuff-family', 'Jigglypuff Family', 16),
  -- Zubat Family
  (41, 'zubat-family', 'Zubat Family', 17),
  -- Oddish Family
  (43, 'oddish-family', 'Oddish Family', 18),
  -- Paras Family
  (46, 'paras-family', 'Paras Family', 19),
  -- Venonat Family
  (48, 'venonat-family', 'Venonat Family', 20),
  -- Diglett Family
  (50, 'diglett-family', 'Diglett Family', 21),
  -- Meowth Family
  (52, 'meowth-family', 'Meowth Family', 22),
  -- Psyduck Family
  (54, 'psyduck-family', 'Psyduck Family', 23),
  -- Mankey Family
  (56, 'mankey-family', 'Mankey Family', 24),
  -- Growlithe Family
  (58, 'growlithe-family', 'Growlithe Family', 25),
  -- Poliwag Family
  (60, 'poliwag-family', 'Poliwag Family', 26),
  -- Abra Family
  (63, 'abra-family', 'Abra Family', 27),
  -- Machop Family
  (66, 'machop-family', 'Machop Family', 28),
  -- Bellsprout Family
  (69, 'bellsprout-family', 'Bellsprout Family', 29),
  -- Tentacool Family
  (72, 'tentacool-family', 'Tentacool Family', 30),
  -- Geodude Family
  (74, 'geodude-family', 'Geodude Family', 31),
  -- Ponyta Family
  (77, 'ponyta-family', 'Ponyta Family', 32),
  -- Slowpoke Family
  (79, 'slowpoke-family', 'Slowpoke Family', 33),
  -- Magnemite Family
  (81, 'magnemite-family', 'Magnemite Family', 34),
  -- Farfetch'd Family
  (83, 'farfetchd-family', 'Farfetch''d Family', 35),
  -- Doduo Family
  (84, 'doduo-family', 'Doduo Family', 36),
  -- Seel Family
  (86, 'seel-family', 'Seel Family', 37),
  -- Grimer Family
  (88, 'grimer-family', 'Grimer Family', 38),
  -- Shellder Family
  (90, 'shellder-family', 'Shellder Family', 39),
  -- Gastly Family
  (92, 'gastly-family', 'Gastly Family', 40),
  -- Onix Family
  (95, 'onix-family', 'Onix Family', 41),
  -- Drowzee Family
  (96, 'drowzee-family', 'Drowzee Family', 42),
  -- Krabby Family
  (98, 'krabby-family', 'Krabby Family', 43),
  -- Voltorb Family
  (100, 'voltorb-family', 'Voltorb Family', 44),
  -- Exeggcute Family
  (102, 'exeggcute-family', 'Exeggcute Family', 45),
  -- Cubone Family
  (104, 'cubone-family', 'Cubone Family', 46),
  -- Hitmonlee Family
  (106, 'hitmonlee-family', 'Hitmonlee Family', 47),
  -- Lickitung Family
  (108, 'lickitung-family', 'Lickitung Family', 48),
  -- Koffing Family
  (109, 'koffing-family', 'Koffing Family', 49),
  -- Rhyhorn Family
  (111, 'rhyhorn-family', 'Rhyhorn Family', 50),
  -- Chansey Family
  (113, 'chansey-family', 'Chansey Family', 51),
  -- Tangela Family
  (114, 'tangela-family', 'Tangela Family', 52),
  -- Kangaskhan Family
  (115, 'kangaskhan-family', 'Kangaskhan Family', 53),
  -- Horsea Family
  (116, 'horsea-family', 'Horsea Family', 54),
  -- Goldeen Family
  (118, 'goldeen-family', 'Goldeen Family', 55),
  -- Staryu Family
  (120, 'staryu-family', 'Staryu Family', 56),
  -- Mr. Mime Family
  (122, 'mr-mime-family', 'Mr. Mime Family', 57),
  -- Scyther Family
  (123, 'scyther-family', 'Scyther Family', 58),
  -- Jynx Family
  (124, 'jynx-family', 'Jynx Family', 59),
  -- Electabuzz Family
  (125, 'electabuzz-family', 'Electabuzz Family', 60),
  -- Magmar Family
  (126, 'magmar-family', 'Magmar Family', 61),
  -- Pinsir Family
  (127, 'pinsir-family', 'Pinsir Family', 62),
  -- Tauros Family
  (128, 'tauros-family', 'Tauros Family', 63),
  -- Magikarp Family
  (129, 'magikarp-family', 'Magikarp Family', 64),
  -- Lapras Family
  (131, 'lapras-family', 'Lapras Family', 65),
  -- Ditto Family
  (132, 'ditto-family', 'Ditto Family', 66),
  -- Eevee Family
  (133, 'eevee-family', 'Eevee Family', 67),
  -- Porygon Family
  (137, 'porygon-family', 'Porygon Family', 68),
  -- Omanyte Family
  (138, 'omanyte-family', 'Omanyte Family', 69),
  -- Kabuto Family
  (140, 'kabuto-family', 'Kabuto Family', 70),
  -- Aerodactyl Family
  (142, 'aerodactyl-family', 'Aerodactyl Family', 71),
  -- Snorlax Family
  (143, 'snorlax-family', 'Snorlax Family', 72),
  -- Articuno Family
  (144, 'articuno-family', 'Articuno Family', 73),
  -- Zapdos Family
  (145, 'zapdos-family', 'Zapdos Family', 74),
  -- Moltres Family
  (146, 'moltres-family', 'Moltres Family', 75),
  -- Dratini Family
  (147, 'dratini-family', 'Dratini Family', 76),
  -- Mewtwo Family
  (150, 'mewtwo-family', 'Mewtwo Family', 77),
  -- Mew Family
  (151, 'mew-family', 'Mew Family', 78);
