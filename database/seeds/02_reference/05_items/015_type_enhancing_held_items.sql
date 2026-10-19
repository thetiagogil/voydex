-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii ItemDex held item index and individual item pages.
-- Cross-check: Bulbapedia held item, type-enhancing item, incense, gem, and item pages.
-- Machine-readable sanity: PokeAPI item IDs where available.
-- Scope note: reduced held-item catalog for Pokémon team planning, biography, and future filters.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.items
-- Scope: type-enhancing held items catalog rows.
INSERT INTO reference.items (id, slug, name, primary_category_id, introduced_generation_id, external_id, sort_order)
VALUES
  -- Black Belt
  (310, 'black-belt', 'Black Belt', 9, 2, 218, 310),
  -- Black Glasses
  (311, 'black-glasses', 'Black Glasses', 9, 2, 217, 311),
  -- Charcoal
  (312, 'charcoal', 'Charcoal', 9, 2, 226, 312),
  -- Dragon Fang
  (313, 'dragon-fang', 'Dragon Fang', 9, 2, 227, 313),
  -- Fairy Feather
  (314, 'fairy-feather', 'Fairy Feather', 9, 9, 2105, 314),
  -- Hard Stone
  (315, 'hard-stone', 'Hard Stone', 9, 2, 215, 315),
  -- Magnet
  (316, 'magnet', 'Magnet', 9, 2, 219, 316),
  -- Miracle Seed
  (317, 'miracle-seed', 'Miracle Seed', 9, 2, 216, 317),
  -- Mystic Water
  (318, 'mystic-water', 'Mystic Water', 9, 2, 220, 318),
  -- Never-Melt Ice
  (319, 'never-melt-ice', 'Never-Melt Ice', 9, 2, 223, 319),
  -- Pink Bow
  (320, 'pink-bow', 'Pink Bow', 9, 2, NULL, 320),
  -- Poison Barb
  (321, 'poison-barb', 'Poison Barb', 9, 2, 222, 321),
  -- Polkadot Bow
  (322, 'polkadot-bow', 'Polkadot Bow', 9, 2, NULL, 322),
  -- Sharp Beak
  (323, 'sharp-beak', 'Sharp Beak', 9, 2, 221, 323),
  -- Silk Scarf
  (324, 'silk-scarf', 'Silk Scarf', 9, 3, 228, 324),
  -- Silver Powder
  (325, 'silver-powder', 'Silver Powder', 9, 2, 199, 325),
  -- Soft Sand
  (326, 'soft-sand', 'Soft Sand', 9, 2, 214, 326),
  -- Spell Tag
  (327, 'spell-tag', 'Spell Tag', 9, 2, 224, 327),
  -- Twisted Spoon
  (328, 'twisted-spoon', 'Twisted Spoon', 9, 2, 225, 328);
