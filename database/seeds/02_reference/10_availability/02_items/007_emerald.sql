-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia individual item, evolution item, form item, and game item pages.
-- Cross-check: Serebii item location pages and PokemonDB item pages where available.
-- Scope note: curated Pokémon-relevant item availability, not a full item encyclopedia.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.item_availability
-- Generation: 3
-- Version Group: Emerald
-- Scope: items available in this game/content scope for forms, evolutions, planning, and Pokémon biography.
-- ============================================================================
INSERT INTO reference.item_availability (item_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- Evolution Stones And Direct Items
  -- Moon Stone
  (63, 7, NULL, NULL, NULL),
  -- Fire Stone
  (64, 7, NULL, NULL, NULL),
  -- Thunder Stone
  (65, 7, NULL, NULL, NULL),
  -- Water Stone
  (66, 7, NULL, NULL, NULL),
  -- Leaf Stone
  (67, 7, NULL, NULL, NULL),
  -- Sun Stone
  (68, 7, NULL, NULL, NULL),
  -- Held And Trade Evolution Items
  -- King's Rock
  (69, 7, NULL, NULL, NULL),
  -- Metal Coat
  (70, 7, NULL, NULL, NULL),
  -- Dragon Scale
  (71, 7, NULL, NULL, NULL),
  -- Up-Grade -> external trade
  (72, 7, NULL, 12, 'Up-Grade is listed for this scope through trade only; modeled as external_trade rather than native item acquisition.'),
  -- Deep Sea Tooth
  (73, 7, NULL, NULL, 'Deep Sea Tooth is obtainable in this scope and can be held for Clamperl trade evolution.'),
  -- Deep Sea Scale
  (74, 7, NULL, NULL, 'Deep Sea Scale is obtainable in this scope and can be held for Clamperl trade evolution.'),
  -- Poke Balls
  -- Poke Ball
  (117, 7, NULL, NULL, 'Poke Ball is available through shop, gift, reward, pickup, or printer acquisition in this scope.'),
  -- Great Ball
  (118, 7, NULL, NULL, 'Great Ball is available through shop, gift, reward, pickup, or printer acquisition in this scope.'),
  -- Ultra Ball
  (119, 7, NULL, NULL, 'Ultra Ball is available through shop, gift, reward, pickup, or printer acquisition in this scope.'),
  -- Master Ball
  (120, 7, NULL, NULL, 'Master Ball is available through one-off, prize, lottery, or special reward acquisition in this scope.'),
  -- Safari Ball
  (121, 7, NULL, NULL, 'Safari Ball is available through Safari Game, Great Marsh, special reward, event, or printer acquisition in this scope.'),
  -- Net Ball
  (130, 7, NULL, NULL, 'Net Ball is available through shop, gift, reward, pickup, or printer acquisition in this scope.'),
  -- Dive Ball
  (131, 7, NULL, NULL, 'Dive Ball is available through shop, gift, reward, pickup, or printer acquisition in this scope.'),
  -- Nest Ball
  (132, 7, NULL, NULL, 'Nest Ball is available through shop, gift, reward, pickup, or printer acquisition in this scope.'),
  -- Repeat Ball
  (133, 7, NULL, NULL, 'Repeat Ball is available through shop, gift, reward, pickup, or printer acquisition in this scope.'),
  -- Timer Ball
  (134, 7, NULL, NULL, 'Timer Ball is available through shop, gift, reward, pickup, or printer acquisition in this scope.'),
  -- Luxury Ball
  (135, 7, NULL, NULL, 'Luxury Ball is available through shop, gift, reward, pickup, or printer acquisition in this scope.'),
  -- Premier Ball
  (136, 7, NULL, NULL, 'Premier Ball is available through shop, gift, reward, pickup, or printer acquisition in this scope.'),
  -- Fossils
  -- Root Fossil
  (156, 7, NULL, NULL, 'Fossil item is obtainable through Mirage Tower/desert fossil methods in this scope.'),
  -- Claw Fossil
  (157, 7, NULL, NULL, 'Fossil item is obtainable through Mirage Tower/desert fossil methods in this scope.'),
  -- Modern Berries
  -- Cheri Berry
  (178, 7, NULL, NULL, NULL),
  -- Chesto Berry
  (179, 7, NULL, NULL, NULL),
  -- Pecha Berry
  (180, 7, NULL, NULL, NULL),
  -- Rawst Berry
  (181, 7, NULL, NULL, NULL),
  -- Aspear Berry
  (182, 7, NULL, NULL, NULL),
  -- Leppa Berry
  (183, 7, NULL, NULL, NULL),
  -- Oran Berry
  (184, 7, NULL, NULL, NULL),
  -- Persim Berry
  (185, 7, NULL, NULL, NULL),
  -- Lum Berry
  (186, 7, NULL, NULL, NULL),
  -- Sitrus Berry
  (187, 7, NULL, NULL, NULL),
  -- Figy Berry
  (188, 7, NULL, NULL, NULL),
  -- Wiki Berry
  (189, 7, NULL, NULL, NULL),
  -- Mago Berry
  (190, 7, NULL, NULL, NULL),
  -- Aguav Berry
  (191, 7, NULL, NULL, NULL),
  -- Iapapa Berry
  (192, 7, NULL, NULL, NULL),
  -- Razz Berry
  (193, 7, NULL, NULL, NULL),
  -- Bluk Berry
  (194, 7, NULL, NULL, NULL),
  -- Nanab Berry
  (195, 7, NULL, NULL, NULL),
  -- Wepear Berry
  (196, 7, NULL, NULL, NULL),
  -- Pinap Berry
  (197, 7, NULL, NULL, NULL),
  -- Pomeg Berry
  (198, 7, NULL, NULL, NULL),
  -- Kelpsy Berry
  (199, 7, NULL, NULL, NULL),
  -- Qualot Berry
  (200, 7, NULL, NULL, NULL),
  -- Hondew Berry
  (201, 7, NULL, NULL, NULL),
  -- Grepa Berry
  (202, 7, NULL, NULL, NULL),
  -- Tamato Berry
  (203, 7, NULL, NULL, NULL),
  -- Cornn Berry
  (204, 7, NULL, NULL, NULL),
  -- Magost Berry
  (205, 7, NULL, NULL, NULL),
  -- Rabuta Berry
  (206, 7, NULL, NULL, NULL),
  -- Nomel Berry
  (207, 7, NULL, NULL, NULL),
  -- Spelon Berry
  (208, 7, NULL, NULL, NULL),
  -- Pamtre Berry
  (209, 7, NULL, NULL, NULL),
  -- Watmel Berry
  (210, 7, NULL, NULL, NULL),
  -- Durin Berry
  (211, 7, NULL, NULL, NULL),
  -- Belue Berry
  (212, 7, NULL, NULL, NULL),
  -- Liechi Berry
  (230, 7, NULL, NULL, NULL),
  -- Lansat Berry
  (235, 7, NULL, NULL, NULL),
  -- Starf Berry
  (236, 7, NULL, NULL, NULL),
  -- General Held Items
  -- Black Belt
  (310, 7, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Black Glasses
  (311, 7, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Charcoal
  (312, 7, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Dragon Fang
  (313, 7, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Hard Stone
  (315, 7, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Magnet
  (316, 7, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Miracle Seed
  (317, 7, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Never-Melt Ice
  (319, 7, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Silk Scarf
  (324, 7, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Silver Powder
  (325, 7, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Soft Sand
  (326, 7, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Spell Tag
  (327, 7, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Sea Incense
  (347, 7, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Lax Incense
  (348, 7, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Soul Dew
  (358, 7, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Bright Powder
  (379, 7, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Choice Band
  (381, 7, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Focus Band
  (394, 7, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Leftovers
  (403, 7, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Mental Herb
  (408, 7, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Quick Claw
  (417, 7, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Scope Lens
  (423, 7, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- White Herb
  (434, 7, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Macho Brace
  (438, 7, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Exp. Share
  (445, 7, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Amulet Coin
  (447, 7, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Cleanse Tag
  (448, 7, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Everstone
  (449, 7, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Soothe Bell
  (450, 7, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Smoke Ball
  (451, 7, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.');
