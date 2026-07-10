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
-- Version Group: Crystal
-- Scope: items available in this game/content scope for forms, evolutions, planning, and Pokémon biography.
-- ============================================================================
INSERT INTO reference.item_availability (item_id, version_group_id, game_id, availability_method_id, notes)
VALUES
  -- Evolution Stones And Direct Items
  -- Moon Stone
  (63, 4, NULL, NULL, NULL),
  -- Fire Stone
  (64, 4, NULL, NULL, NULL),
  -- Thunder Stone
  (65, 4, NULL, NULL, NULL),
  -- Water Stone
  (66, 4, NULL, NULL, NULL),
  -- Leaf Stone
  (67, 4, NULL, NULL, NULL),
  -- Sun Stone
  (68, 4, NULL, NULL, NULL),
  -- Held And Trade Evolution Items
  -- King's Rock
  (69, 4, NULL, NULL, NULL),
  -- Metal Coat
  (70, 4, NULL, NULL, NULL),
  -- Dragon Scale
  (71, 4, NULL, NULL, NULL),
  -- Up-Grade
  (72, 4, NULL, NULL, NULL),
  -- Poke Balls
  -- Poke Ball
  (117, 4, NULL, NULL, NULL),
  -- Great Ball
  (118, 4, NULL, NULL, NULL),
  -- Ultra Ball
  (119, 4, NULL, NULL, NULL),
  -- Master Ball
  (120, 4, NULL, NULL, NULL),
  -- Fast Ball
  (122, 4, NULL, NULL, NULL),
  -- Level Ball
  (123, 4, NULL, NULL, NULL),
  -- Lure Ball
  (124, 4, NULL, NULL, NULL),
  -- Heavy Ball
  (125, 4, NULL, NULL, NULL),
  -- Love Ball
  (126, 4, NULL, NULL, NULL),
  -- Friend Ball
  (127, 4, NULL, NULL, NULL),
  -- Moon Ball
  (128, 4, NULL, NULL, NULL),
  -- Sport Ball
  (129, 4, NULL, NULL, NULL),
  -- Berries
  -- Berry (Gen II)
  (168, 4, NULL, NULL, NULL),
  -- Gold Berry
  (169, 4, NULL, NULL, NULL),
  -- PRZCureBerry
  (170, 4, NULL, NULL, NULL),
  -- PSNCureBerry
  (171, 4, NULL, NULL, NULL),
  -- Burnt Berry
  (172, 4, NULL, NULL, NULL),
  -- Ice Berry
  (173, 4, NULL, NULL, NULL),
  -- Mint Berry
  (174, 4, NULL, NULL, NULL),
  -- Bitter Berry
  (175, 4, NULL, NULL, NULL),
  -- MiracleBerry
  (176, 4, NULL, NULL, NULL),
  -- MysteryBerry
  (177, 4, NULL, NULL, NULL),
  -- General Held Items
  -- Black Belt
  (310, 4, NULL, NULL, NULL),
  -- Black Glasses
  (311, 4, NULL, NULL, NULL),
  -- Charcoal
  (312, 4, NULL, NULL, NULL),
  -- Dragon Fang
  (313, 4, NULL, NULL, NULL),
  -- Hard Stone
  (315, 4, NULL, NULL, NULL),
  -- Magnet
  (316, 4, NULL, NULL, NULL),
  -- Miracle Seed
  (317, 4, NULL, NULL, NULL),
  -- Mystic Water
  (318, 4, NULL, NULL, NULL),
  -- Never-Melt Ice
  (319, 4, NULL, NULL, NULL),
  -- Pink Bow
  (320, 4, NULL, NULL, NULL),
  -- Poison Barb
  (321, 4, NULL, NULL, NULL),
  -- Polkadot Bow
  (322, 4, NULL, 13, 'Requires a Pokémon traded from Generation I through the Time Capsule while holding this item.'),
  -- Sharp Beak
  (323, 4, NULL, NULL, NULL),
  -- Spell Tag
  (327, 4, NULL, NULL, NULL),
  -- Berserk Gene
  (374, 4, NULL, NULL, NULL),
  -- Focus Band
  (394, 4, NULL, NULL, NULL),
  -- Leftovers
  (403, 4, NULL, NULL, NULL),
  -- Quick Claw
  (417, 4, NULL, NULL, NULL),
  -- Exp. Share
  (445, 4, NULL, NULL, NULL),
  -- Amulet Coin
  (447, 4, NULL, NULL, NULL),
  -- Cleanse Tag
  (448, 4, NULL, NULL, NULL),
  -- Everstone
  (449, 4, NULL, NULL, NULL),
  -- Smoke Ball
  (451, 4, NULL, NULL, NULL);
