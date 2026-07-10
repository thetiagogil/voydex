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
-- Version Group: FireRed / LeafGreen
-- Scope: items available in this game/content scope for forms, evolutions, planning, and Pokémon biography.
-- ============================================================================
INSERT INTO reference.item_availability (item_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- Evolution Stones And Direct Items
  -- Moon Stone
  (63, 6, NULL, NULL, NULL),
  -- Fire Stone
  (64, 6, NULL, NULL, NULL),
  -- Thunder Stone
  (65, 6, NULL, NULL, NULL),
  -- Water Stone
  (66, 6, NULL, NULL, NULL),
  -- Leaf Stone
  (67, 6, NULL, NULL, NULL),
  -- Sun Stone
  (68, 6, NULL, NULL, NULL),
  -- Held And Trade Evolution Items
  -- King's Rock
  (69, 6, NULL, NULL, NULL),
  -- Metal Coat
  (70, 6, NULL, NULL, NULL),
  -- Dragon Scale
  (71, 6, NULL, NULL, NULL),
  -- Up-Grade
  (72, 6, NULL, NULL, NULL),
  -- Deep Sea Tooth -> external trade
  (73, 6, NULL, 12, 'Deep Sea Tooth is listed for FireRed/LeafGreen through trade only; modeled as external_trade rather than native item acquisition.'),
  -- Deep Sea Scale -> external trade
  (74, 6, NULL, 12, 'Deep Sea Scale is listed for FireRed/LeafGreen through trade only; modeled as external_trade rather than native item acquisition.'),
  -- Poke Balls
  -- Poke Ball
  (117, 6, NULL, NULL, 'Poke Ball is available through shop, gift, reward, pickup, or printer acquisition in this scope.'),
  -- Great Ball
  (118, 6, NULL, NULL, 'Great Ball is available through shop, gift, reward, pickup, or printer acquisition in this scope.'),
  -- Ultra Ball
  (119, 6, NULL, NULL, 'Ultra Ball is available through shop, gift, reward, pickup, or printer acquisition in this scope.'),
  -- Master Ball
  (120, 6, NULL, NULL, 'Master Ball is available through one-off, prize, lottery, or special reward acquisition in this scope.'),
  -- Safari Ball
  (121, 6, NULL, NULL, 'Safari Ball is available through Safari Game, Great Marsh, special reward, event, or printer acquisition in this scope.'),
  -- Net Ball
  (130, 6, NULL, NULL, 'Net Ball is available through shop, gift, reward, pickup, or printer acquisition in this scope.'),
  -- Dive Ball
  (131, 6, NULL, NULL, 'Dive Ball is available through shop, gift, reward, pickup, or printer acquisition in this scope.'),
  -- Nest Ball
  (132, 6, NULL, NULL, 'Nest Ball is available through shop, gift, reward, pickup, or printer acquisition in this scope.'),
  -- Repeat Ball
  (133, 6, NULL, NULL, 'Repeat Ball is available through shop, gift, reward, pickup, or printer acquisition in this scope.'),
  -- Timer Ball
  (134, 6, NULL, NULL, 'Timer Ball is available through shop, gift, reward, pickup, or printer acquisition in this scope.'),
  -- Luxury Ball
  (135, 6, NULL, NULL, 'Luxury Ball is available through shop, gift, reward, pickup, or printer acquisition in this scope.'),
  -- Premier Ball
  (136, 6, NULL, NULL, 'Premier Ball is available through shop, gift, reward, pickup, or printer acquisition in this scope.'),
  -- Fossils
  -- Helix Fossil
  (153, 6, NULL, NULL, 'Fossil item is obtainable through fossil choice, museum, underground, shop, or special fossil method in this scope.'),
  -- Dome Fossil
  (154, 6, NULL, NULL, 'Fossil item is obtainable through fossil choice, museum, underground, shop, or special fossil method in this scope.'),
  -- Old Amber
  (155, 6, NULL, NULL, 'Fossil item is obtainable through fossil choice, museum, underground, shop, or special fossil method in this scope.'),
  -- Modern Berries
  -- Cheri Berry
  (178, 6, NULL, NULL, 'Modern berry item is obtainable through hidden berry, Berry Forest, Trainer Tower, Pickup, or Sevii Islands berry locations in this scope.'),
  -- Chesto Berry
  (179, 6, NULL, NULL, 'Modern berry item is obtainable through hidden berry, Berry Forest, Trainer Tower, Pickup, or Sevii Islands berry locations in this scope.'),
  -- Pecha Berry
  (180, 6, NULL, NULL, 'Modern berry item is obtainable through hidden berry, Berry Forest, Trainer Tower, Pickup, or Sevii Islands berry locations in this scope.'),
  -- Rawst Berry
  (181, 6, NULL, NULL, 'Modern berry item is obtainable through hidden berry, Berry Forest, Trainer Tower, Pickup, or Sevii Islands berry locations in this scope.'),
  -- Aspear Berry
  (182, 6, NULL, NULL, 'Modern berry item is obtainable through hidden berry, Berry Forest, Trainer Tower, Pickup, or Sevii Islands berry locations in this scope.'),
  -- Leppa Berry
  (183, 6, NULL, NULL, 'Modern berry item is obtainable through hidden berry, Berry Forest, Trainer Tower, Pickup, or Sevii Islands berry locations in this scope.'),
  -- Oran Berry
  (184, 6, NULL, NULL, 'Modern berry item is obtainable through hidden berry, Berry Forest, Trainer Tower, Pickup, or Sevii Islands berry locations in this scope.'),
  -- Persim Berry
  (185, 6, NULL, NULL, 'Modern berry item is obtainable through hidden berry, Berry Forest, Trainer Tower, Pickup, or Sevii Islands berry locations in this scope.'),
  -- Lum Berry
  (186, 6, NULL, NULL, 'Modern berry item is obtainable through hidden berry, Berry Forest, Trainer Tower, Pickup, or Sevii Islands berry locations in this scope.'),
  -- Sitrus Berry
  (187, 6, NULL, NULL, 'Modern berry item is obtainable through hidden berry, Berry Forest, Trainer Tower, Pickup, or Sevii Islands berry locations in this scope.'),
  -- Iapapa Berry
  (192, 6, NULL, NULL, 'Modern berry item is obtainable through hidden berry, Berry Forest, Trainer Tower, Pickup, or Sevii Islands berry locations in this scope.'),
  -- Razz Berry
  (193, 6, NULL, NULL, 'Modern berry item is obtainable through hidden berry, Berry Forest, Trainer Tower, Pickup, or Sevii Islands berry locations in this scope.'),
  -- Bluk Berry
  (194, 6, NULL, NULL, 'Modern berry item is obtainable through hidden berry, Berry Forest, Trainer Tower, Pickup, or Sevii Islands berry locations in this scope.'),
  -- Nanab Berry
  (195, 6, NULL, NULL, 'Modern berry item is obtainable through hidden berry, Berry Forest, Trainer Tower, Pickup, or Sevii Islands berry locations in this scope.'),
  -- Wepear Berry
  (196, 6, NULL, NULL, 'Modern berry item is obtainable through hidden berry, Berry Forest, Trainer Tower, Pickup, or Sevii Islands berry locations in this scope.'),
  -- Pinap Berry
  (197, 6, NULL, NULL, 'Modern berry item is obtainable through hidden berry, Berry Forest, Trainer Tower, Pickup, or Sevii Islands berry locations in this scope.'),
  -- Spelon Berry
  (208, 6, NULL, NULL, 'Modern berry item is obtainable through hidden berry, Berry Forest, Trainer Tower, Pickup, or Sevii Islands berry locations in this scope.'),
  -- Pamtre Berry
  (209, 6, NULL, NULL, 'Modern berry item is obtainable through hidden berry, Berry Forest, Trainer Tower, Pickup, or Sevii Islands berry locations in this scope.'),
  -- Watmel Berry
  (210, 6, NULL, NULL, 'Modern berry item is obtainable through hidden berry, Berry Forest, Trainer Tower, Pickup, or Sevii Islands berry locations in this scope.'),
  -- Durin Berry
  (211, 6, NULL, NULL, 'Modern berry item is obtainable through hidden berry, Berry Forest, Trainer Tower, Pickup, or Sevii Islands berry locations in this scope.'),
  -- Belue Berry
  (212, 6, NULL, NULL, 'Modern berry item is obtainable through hidden berry, Berry Forest, Trainer Tower, Pickup, or Sevii Islands berry locations in this scope.'),
  -- General Held Items
  -- Black Glasses
  (311, 6, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Never-Melt Ice
  (319, 6, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Silk Scarf
  (324, 6, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Sea Incense
  (347, 6, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Lax Incense
  (348, 6, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Lucky Punch
  (365, 6, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Leftovers
  (403, 6, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Quick Claw
  (417, 6, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Macho Brace
  (438, 6, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Exp. Share
  (445, 6, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Amulet Coin
  (447, 6, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Cleanse Tag
  (448, 6, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.'),
  -- Soothe Bell
  (450, 6, NULL, NULL, 'Obtainable in this scope for Pokémon-held item use.');
