-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii ItemDex held item index and individual item pages.
-- Cross-check: Bulbapedia held item, type-enhancing item, incense, gem, and item pages.
-- Scope note: category memberships for reduced held-item catalog rows.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: reference.item_category_memberships
-- Scope: type-enhancing held items category memberships.
INSERT INTO reference.item_category_memberships (item_id, category_id)
VALUES
  -- Black Belt -> Held Items
  (310, 2),
  -- Black Belt -> Type-Enhancing Items
  (310, 9),
  -- Black Glasses -> Held Items
  (311, 2),
  -- Black Glasses -> Type-Enhancing Items
  (311, 9),
  -- Charcoal -> Held Items
  (312, 2),
  -- Charcoal -> Type-Enhancing Items
  (312, 9),
  -- Dragon Fang -> Held Items
  (313, 2),
  -- Dragon Fang -> Type-Enhancing Items
  (313, 9),
  -- Fairy Feather -> Held Items
  (314, 2),
  -- Fairy Feather -> Type-Enhancing Items
  (314, 9),
  -- Hard Stone -> Held Items
  (315, 2),
  -- Hard Stone -> Type-Enhancing Items
  (315, 9),
  -- Magnet -> Held Items
  (316, 2),
  -- Magnet -> Type-Enhancing Items
  (316, 9),
  -- Miracle Seed -> Held Items
  (317, 2),
  -- Miracle Seed -> Type-Enhancing Items
  (317, 9),
  -- Mystic Water -> Held Items
  (318, 2),
  -- Mystic Water -> Type-Enhancing Items
  (318, 9),
  -- Never-Melt Ice -> Held Items
  (319, 2),
  -- Never-Melt Ice -> Type-Enhancing Items
  (319, 9),
  -- Pink Bow -> Held Items
  (320, 2),
  -- Pink Bow -> Type-Enhancing Items
  (320, 9),
  -- Poison Barb -> Held Items
  (321, 2),
  -- Poison Barb -> Type-Enhancing Items
  (321, 9),
  -- Polkadot Bow -> Held Items
  (322, 2),
  -- Polkadot Bow -> Type-Enhancing Items
  (322, 9),
  -- Sharp Beak -> Held Items
  (323, 2),
  -- Sharp Beak -> Type-Enhancing Items
  (323, 9),
  -- Silk Scarf -> Held Items
  (324, 2),
  -- Silk Scarf -> Type-Enhancing Items
  (324, 9),
  -- Silver Powder -> Held Items
  (325, 2),
  -- Silver Powder -> Type-Enhancing Items
  (325, 9),
  -- Soft Sand -> Held Items
  (326, 2),
  -- Soft Sand -> Type-Enhancing Items
  (326, 9),
  -- Spell Tag -> Held Items
  (327, 2),
  -- Spell Tag -> Type-Enhancing Items
  (327, 9),
  -- Twisted Spoon -> Held Items
  (328, 2),
  -- Twisted Spoon -> Type-Enhancing Items
  (328, 9);
