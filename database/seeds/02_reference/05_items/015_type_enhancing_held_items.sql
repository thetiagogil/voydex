-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii ItemDex held item index and individual item pages.
-- Cross-check: Bulbapedia held item, type-enhancing item, incense, gem, and item pages.
-- Machine-readable sanity: PokeAPI item IDs where available.
-- Scope note: reduced held-item catalog for Pokémon team planning, biography, and future filters.
-- Effect summaries: own-words summaries of each held item's behaviour in recent games, checked against Bulbapedia and Serebii item pages.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.items
-- Scope: type-enhancing held items catalog rows.
INSERT INTO reference.items (id, slug, name, primary_category_id, introduced_generation_id, external_id, sort_order, effect_summary)
VALUES
  -- Black Belt
  (310, 'black-belt', 'Black Belt', 9, 2, 218, 310, 'Raises the power of Fighting-type moves by 20%.'),
  -- Black Glasses
  (311, 'black-glasses', 'Black Glasses', 9, 2, 217, 311, 'Raises the power of Dark-type moves by 20%.'),
  -- Charcoal
  (312, 'charcoal', 'Charcoal', 9, 2, 226, 312, 'Raises the power of Fire-type moves by 20%.'),
  -- Dragon Fang
  (313, 'dragon-fang', 'Dragon Fang', 9, 2, 227, 313, 'Raises the power of Dragon-type moves by 20%.'),
  -- Fairy Feather
  (314, 'fairy-feather', 'Fairy Feather', 9, 9, 2105, 314, 'Raises the power of Fairy-type moves by 20%.'),
  -- Hard Stone
  (315, 'hard-stone', 'Hard Stone', 9, 2, 215, 315, 'Raises the power of Rock-type moves by 20%.'),
  -- Magnet
  (316, 'magnet', 'Magnet', 9, 2, 219, 316, 'Raises the power of Electric-type moves by 20%.'),
  -- Miracle Seed
  (317, 'miracle-seed', 'Miracle Seed', 9, 2, 216, 317, 'Raises the power of Grass-type moves by 20%.'),
  -- Mystic Water
  (318, 'mystic-water', 'Mystic Water', 9, 2, 220, 318, 'Raises the power of Water-type moves by 20%.'),
  -- Never-Melt Ice
  (319, 'never-melt-ice', 'Never-Melt Ice', 9, 2, 223, 319, 'Raises the power of Ice-type moves by 20%.'),
  -- Pink Bow
  (320, 'pink-bow', 'Pink Bow', 9, 2, NULL, 320, 'Raises the power of Normal-type moves by 10%.'),
  -- Poison Barb
  (321, 'poison-barb', 'Poison Barb', 9, 2, 222, 321, 'Raises the power of Poison-type moves by 20%.'),
  -- Polkadot Bow
  (322, 'polkadot-bow', 'Polkadot Bow', 9, 2, NULL, 322, 'Raises the power of Normal-type moves by 10%.'),
  -- Sharp Beak
  (323, 'sharp-beak', 'Sharp Beak', 9, 2, 221, 323, 'Raises the power of Flying-type moves by 20%.'),
  -- Silk Scarf
  (324, 'silk-scarf', 'Silk Scarf', 9, 3, 228, 324, 'Raises the power of Normal-type moves by 20%.'),
  -- Silver Powder
  (325, 'silver-powder', 'Silver Powder', 9, 2, 199, 325, 'Raises the power of Bug-type moves by 20%.'),
  -- Soft Sand
  (326, 'soft-sand', 'Soft Sand', 9, 2, 214, 326, 'Raises the power of Ground-type moves by 20%.'),
  -- Spell Tag
  (327, 'spell-tag', 'Spell Tag', 9, 2, 224, 327, 'Raises the power of Ghost-type moves by 20%.'),
  -- Twisted Spoon
  (328, 'twisted-spoon', 'Twisted Spoon', 9, 2, 225, 328, 'Raises the power of Psychic-type moves by 20%.');
