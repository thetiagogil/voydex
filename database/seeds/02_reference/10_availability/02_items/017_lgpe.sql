-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia individual item, evolution item, form item, and game item pages.
-- Cross-check: Serebii item location pages and PokemonDB item pages where available.
-- Scope note: curated Pokémon-relevant item availability, not a full item encyclopedia.
-- Poke Ball rule: a ball is listed when it exists in this game's item data, including event-only (Cherish Ball) and transfer-only balls; checked against Serebii ItemDex per-game ball descriptions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.item_availability
-- Generation: 7
-- Version Group: Let's Go, Pikachu! / Let's Go, Eevee!
-- Scope: items available in this game/content scope for forms, evolutions, planning, and Pokémon biography.
-- ============================================================================
INSERT INTO reference.item_availability (item_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- Evolution Stones And Direct Items
  -- Moon Stone
  (63, 17, NULL, NULL, NULL),
  -- Fire Stone
  (64, 17, NULL, NULL, NULL),
  -- Thunder Stone
  (65, 17, NULL, NULL, NULL),
  -- Water Stone
  (66, 17, NULL, NULL, NULL),
  -- Leaf Stone
  (67, 17, NULL, NULL, NULL),
  -- Ice Stone
  (89, 17, NULL, NULL, NULL),
  -- Poke Balls
  -- Poke Ball
  (117, 17, NULL, NULL, NULL),
  -- Great Ball
  (118, 17, NULL, NULL, NULL),
  -- Ultra Ball
  (119, 17, NULL, NULL, NULL),
  -- Master Ball
  (120, 17, NULL, NULL, NULL),
  -- Premier Ball
  (136, 17, NULL, NULL, NULL),
  -- Cherish Ball
  (140, 17, NULL, NULL, 'Cherish Ball comes only with event Pokémon in this scope; the ball itself cannot be obtained.'),
  -- Fossils
  -- Helix Fossil
  (153, 17, NULL, NULL, NULL),
  -- Dome Fossil
  (154, 17, NULL, NULL, NULL),
  -- Old Amber
  (155, 17, NULL, NULL, NULL),
  -- Modern Berries
  -- Razz Berry
  (193, 17, NULL, NULL, NULL),
  -- Nanab Berry
  (195, 17, NULL, NULL, NULL),
  -- Pinap Berry
  (197, 17, NULL, NULL, NULL),
  -- Mega Stones
  -- Venusaurite
  (263, 17, NULL, NULL, NULL),
  -- Charizardite X
  (264, 17, NULL, NULL, NULL),
  -- Charizardite Y
  (265, 17, NULL, NULL, NULL),
  -- Blastoisinite
  (266, 17, NULL, NULL, NULL),
  -- Beedrillite
  (267, 17, NULL, NULL, NULL),
  -- Pidgeotite
  (268, 17, NULL, NULL, NULL),
  -- Alakazite
  (269, 17, NULL, NULL, NULL),
  -- Slowbronite
  (270, 17, NULL, NULL, NULL),
  -- Gengarite
  (271, 17, NULL, NULL, NULL),
  -- Kangaskhanite
  (272, 17, NULL, NULL, NULL),
  -- Pinsirite
  (273, 17, NULL, NULL, NULL),
  -- Gyaradosite
  (274, 17, NULL, NULL, NULL),
  -- Aerodactylite
  (275, 17, NULL, NULL, NULL),
  -- Mewtwonite X
  (276, 17, NULL, NULL, NULL),
  -- Mewtwonite Y
  (277, 17, NULL, NULL, NULL);
