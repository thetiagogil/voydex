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
-- Generation: 2
-- Version Group: Gold / Silver
-- Scope: items available in this game/content scope for forms, evolutions, planning, and Pokémon biography.
-- ============================================================================
INSERT INTO reference.item_availability (item_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- Evolution Stones And Direct Items
  -- Moon Stone
  (63, 3, NULL, NULL, NULL),
  -- Fire Stone
  (64, 3, NULL, NULL, NULL),
  -- Thunder Stone
  (65, 3, NULL, NULL, NULL),
  -- Water Stone
  (66, 3, NULL, NULL, NULL),
  -- Leaf Stone
  (67, 3, NULL, NULL, NULL),
  -- Sun Stone
  (68, 3, NULL, NULL, NULL),
  -- Held And Trade Evolution Items
  -- King's Rock
  (69, 3, NULL, NULL, NULL),
  -- Metal Coat
  (70, 3, NULL, NULL, NULL),
  -- Dragon Scale
  (71, 3, NULL, NULL, NULL),
  -- Up-Grade
  (72, 3, NULL, NULL, NULL),
  -- Poke Balls
  -- Poke Ball
  (117, 3, NULL, NULL, NULL),
  -- Great Ball
  (118, 3, NULL, NULL, NULL),
  -- Ultra Ball
  (119, 3, NULL, NULL, NULL),
  -- Master Ball
  (120, 3, NULL, NULL, NULL),
  -- Fast Ball
  (122, 3, NULL, NULL, NULL),
  -- Level Ball
  (123, 3, NULL, NULL, NULL),
  -- Lure Ball
  (124, 3, NULL, NULL, NULL),
  -- Heavy Ball
  (125, 3, NULL, NULL, NULL),
  -- Love Ball
  (126, 3, NULL, NULL, NULL),
  -- Friend Ball
  (127, 3, NULL, NULL, NULL),
  -- Moon Ball
  (128, 3, NULL, NULL, NULL),
  -- Sport Ball
  (129, 3, NULL, NULL, NULL),
  -- Berries
  -- Berry (Gen II)
  (168, 3, NULL, NULL, NULL),
  -- Gold Berry
  (169, 3, NULL, NULL, NULL),
  -- PRZCureBerry
  (170, 3, NULL, NULL, NULL),
  -- PSNCureBerry
  (171, 3, NULL, NULL, NULL),
  -- Burnt Berry
  (172, 3, NULL, NULL, NULL),
  -- Ice Berry
  (173, 3, NULL, NULL, NULL),
  -- Mint Berry
  (174, 3, NULL, NULL, NULL),
  -- Bitter Berry
  (175, 3, NULL, NULL, NULL),
  -- MiracleBerry
  (176, 3, NULL, NULL, NULL),
  -- MysteryBerry
  (177, 3, NULL, NULL, NULL),
  -- General Held Items
  -- Black Belt
  (310, 3, NULL, NULL, NULL),
  -- Black Glasses
  (311, 3, NULL, NULL, NULL),
  -- Charcoal
  (312, 3, NULL, NULL, NULL),
  -- Dragon Fang
  (313, 3, NULL, NULL, NULL),
  -- Hard Stone
  (315, 3, NULL, NULL, NULL),
  -- Magnet
  (316, 3, NULL, NULL, NULL),
  -- Miracle Seed
  (317, 3, NULL, NULL, NULL),
  -- Mystic Water
  (318, 3, NULL, NULL, NULL),
  -- Never-Melt Ice
  (319, 3, NULL, NULL, NULL),
  -- Pink Bow
  (320, 3, NULL, NULL, NULL),
  -- Poison Barb
  (321, 3, NULL, NULL, NULL),
  -- Polkadot Bow
  (322, 3, NULL, 13, 'Requires a Pokémon traded from Generation I through the Time Capsule while holding this item.'),
  -- Sharp Beak
  (323, 3, NULL, NULL, NULL),
  -- Spell Tag
  (327, 3, NULL, NULL, NULL),
  -- Berserk Gene
  (374, 3, NULL, NULL, NULL),
  -- Focus Band
  (394, 3, NULL, NULL, NULL),
  -- Leftovers
  (403, 3, NULL, NULL, NULL),
  -- Quick Claw
  (417, 3, NULL, NULL, NULL),
  -- Exp. Share
  (445, 3, NULL, NULL, NULL),
  -- Amulet Coin
  (447, 3, NULL, NULL, NULL),
  -- Cleanse Tag
  (448, 3, NULL, NULL, NULL),
  -- Everstone
  (449, 3, NULL, NULL, NULL),
  -- Smoke Ball
  (451, 3, NULL, NULL, NULL);
