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
-- Version Group: Ruby / Sapphire
-- Scope: items available in this game/content scope for forms, evolutions, planning, and Pokémon biography.
-- ============================================================================
INSERT INTO reference.item_availability (item_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- Evolution Stones And Direct Items
  -- Moon Stone
  (63, 5, NULL, NULL, NULL),
  -- Fire Stone
  (64, 5, NULL, NULL, NULL),
  -- Thunder Stone
  (65, 5, NULL, NULL, NULL),
  -- Water Stone
  (66, 5, NULL, NULL, NULL),
  -- Leaf Stone
  (67, 5, NULL, NULL, NULL),
  -- Sun Stone
  (68, 5, NULL, NULL, NULL),
  -- Held And Trade Evolution Items
  -- King's Rock
  (69, 5, NULL, NULL, NULL),
  -- Metal Coat
  (70, 5, NULL, NULL, NULL),
  -- Dragon Scale
  (71, 5, NULL, NULL, NULL),
  -- Up-Grade -> external trade
  (72, 5, NULL, 12, 'Up-Grade is listed for this scope through trade only; modeled as external_trade rather than native item acquisition.'),
  -- Deep Sea Tooth
  (73, 5, NULL, NULL, 'Deep Sea Tooth is obtainable in this scope and can be held for Clamperl trade evolution.'),
  -- Deep Sea Scale
  (74, 5, NULL, NULL, 'Deep Sea Scale is obtainable in this scope and can be held for Clamperl trade evolution.'),
  -- Poke Balls
  -- Poke Ball
  (117, 5, NULL, NULL, 'Poke Ball is available through shop, gift, reward, pickup, or printer acquisition in this scope.'),
  -- Great Ball
  (118, 5, NULL, NULL, 'Great Ball is available through shop, gift, reward, pickup, or printer acquisition in this scope.'),
  -- Ultra Ball
  (119, 5, NULL, NULL, 'Ultra Ball is available through shop, gift, reward, pickup, or printer acquisition in this scope.'),
  -- Master Ball
  (120, 5, NULL, NULL, 'Master Ball is available through one-off, prize, lottery, or special reward acquisition in this scope.'),
  -- Safari Ball
  (121, 5, NULL, NULL, 'Safari Ball is available through Safari Game, Great Marsh, special reward, event, or printer acquisition in this scope.'),
  -- Net Ball
  (130, 5, NULL, NULL, 'Net Ball is available through shop, gift, reward, pickup, or printer acquisition in this scope.'),
  -- Dive Ball
  (131, 5, NULL, NULL, 'Dive Ball is available through shop, gift, reward, pickup, or printer acquisition in this scope.'),
  -- Nest Ball
  (132, 5, NULL, NULL, 'Nest Ball is available through shop, gift, reward, pickup, or printer acquisition in this scope.'),
  -- Repeat Ball
  (133, 5, NULL, NULL, 'Repeat Ball is available through shop, gift, reward, pickup, or printer acquisition in this scope.'),
  -- Timer Ball
  (134, 5, NULL, NULL, 'Timer Ball is available through shop, gift, reward, pickup, or printer acquisition in this scope.'),
  -- Luxury Ball
  (135, 5, NULL, NULL, 'Luxury Ball is available through shop, gift, reward, pickup, or printer acquisition in this scope.'),
  -- Premier Ball
  (136, 5, NULL, NULL, 'Premier Ball is available through shop, gift, reward, pickup, or printer acquisition in this scope.'),
  -- Fossils
  -- Root Fossil
  (156, 5, NULL, NULL, 'Fossil item is obtainable through fossil choice, museum, underground, shop, or special fossil method in this scope.'),
  -- Claw Fossil
  (157, 5, NULL, NULL, 'Fossil item is obtainable through fossil choice, museum, underground, shop, or special fossil method in this scope.'),
  -- Modern Berries
  -- Cheri Berry
  (178, 5, NULL, NULL, NULL),
  -- Chesto Berry
  (179, 5, NULL, NULL, NULL),
  -- Pecha Berry
  (180, 5, NULL, NULL, NULL),
  -- Rawst Berry
  (181, 5, NULL, NULL, NULL),
  -- Aspear Berry
  (182, 5, NULL, NULL, NULL),
  -- Leppa Berry
  (183, 5, NULL, NULL, NULL),
  -- Oran Berry
  (184, 5, NULL, NULL, NULL),
  -- Persim Berry
  (185, 5, NULL, NULL, NULL),
  -- Lum Berry
  (186, 5, NULL, NULL, NULL),
  -- Sitrus Berry
  (187, 5, NULL, NULL, NULL),
  -- Figy Berry
  (188, 5, NULL, NULL, NULL),
  -- Wiki Berry
  (189, 5, NULL, NULL, NULL),
  -- Mago Berry
  (190, 5, NULL, NULL, NULL),
  -- Aguav Berry
  (191, 5, NULL, NULL, NULL),
  -- Iapapa Berry
  (192, 5, NULL, NULL, NULL),
  -- Razz Berry
  (193, 5, NULL, NULL, NULL),
  -- Bluk Berry
  (194, 5, NULL, NULL, NULL),
  -- Nanab Berry
  (195, 5, NULL, NULL, NULL),
  -- Wepear Berry
  (196, 5, NULL, NULL, NULL),
  -- Pinap Berry
  (197, 5, NULL, NULL, NULL),
  -- Pomeg Berry
  (198, 5, NULL, NULL, NULL),
  -- Kelpsy Berry
  (199, 5, NULL, NULL, NULL),
  -- Qualot Berry
  (200, 5, NULL, NULL, NULL),
  -- Hondew Berry
  (201, 5, NULL, NULL, NULL),
  -- Grepa Berry
  (202, 5, NULL, NULL, NULL),
  -- Tamato Berry
  (203, 5, NULL, NULL, NULL),
  -- Cornn Berry
  (204, 5, NULL, NULL, NULL),
  -- Magost Berry
  (205, 5, NULL, NULL, NULL),
  -- Rabuta Berry
  (206, 5, NULL, NULL, NULL),
  -- Nomel Berry
  (207, 5, NULL, NULL, NULL),
  -- Spelon Berry
  (208, 5, NULL, NULL, NULL),
  -- Pamtre Berry
  (209, 5, NULL, NULL, NULL),
  -- Watmel Berry
  (210, 5, NULL, NULL, NULL),
  -- Durin Berry
  (211, 5, NULL, NULL, NULL),
  -- Belue Berry
  (212, 5, NULL, NULL, NULL),
  -- Liechi Berry
  (230, 5, NULL, NULL, NULL),
  -- General Held Items
  -- Black Belt
  (310, 5, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Black Glasses
  (311, 5, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Charcoal
  (312, 5, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Dragon Fang
  (313, 5, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Hard Stone
  (315, 5, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Magnet
  (316, 5, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Miracle Seed
  (317, 5, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Never-Melt Ice
  (319, 5, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Silk Scarf
  (324, 5, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Silver Powder
  (325, 5, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Soft Sand
  (326, 5, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Spell Tag
  (327, 5, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Sea Incense
  (347, 5, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Lax Incense
  (348, 5, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Soul Dew
  (358, 5, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Bright Powder
  (379, 5, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Choice Band
  (381, 5, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Focus Band
  (394, 5, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Leftovers
  (403, 5, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Mental Herb
  (408, 5, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Quick Claw
  (417, 5, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Scope Lens
  (423, 5, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- White Herb
  (434, 5, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Macho Brace
  (438, 5, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Exp. Share
  (445, 5, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Amulet Coin
  (447, 5, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Cleanse Tag
  (448, 5, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Everstone
  (449, 5, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Soothe Bell
  (450, 5, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Smoke Ball
  (451, 5, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.');
