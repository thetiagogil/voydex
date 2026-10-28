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
-- Scope: utility, contest, and breeding held items category memberships.
INSERT INTO reference.item_category_memberships (item_id, category_id)
VALUES
  -- Amulet Coin -> Held Items
  (447, 2),
  -- Amulet Coin -> Utility Held Items
  (447, 18),
  -- Cleanse Tag -> Held Items
  (448, 2),
  -- Cleanse Tag -> Utility Held Items
  (448, 18),
  -- Everstone -> Held Items
  (449, 2),
  -- Everstone -> Breeding Items
  (449, 13),
  -- Everstone -> Utility Held Items
  (449, 18),
  -- Soothe Bell -> Held Items
  (450, 2),
  -- Soothe Bell -> Utility Held Items
  (450, 18),
  -- Smoke Ball -> Held Items
  (451, 2),
  -- Smoke Ball -> Utility Held Items
  (451, 18),
  -- Destiny Knot -> Held Items
  (452, 2),
  -- Destiny Knot -> Battle-Effect Items
  (452, 10),
  -- Destiny Knot -> Breeding Items
  (452, 13),
  -- Destiny Knot -> Utility Held Items
  (452, 18),
  -- Blue Scarf -> Held Items
  (453, 2),
  -- Blue Scarf -> Contest Items
  (453, 14),
  -- Blue Scarf -> Utility Held Items
  (453, 18),
  -- Green Scarf -> Held Items
  (454, 2),
  -- Green Scarf -> Contest Items
  (454, 14),
  -- Green Scarf -> Utility Held Items
  (454, 18),
  -- Pink Scarf -> Held Items
  (455, 2),
  -- Pink Scarf -> Contest Items
  (455, 14),
  -- Pink Scarf -> Utility Held Items
  (455, 18),
  -- Red Scarf -> Held Items
  (456, 2),
  -- Red Scarf -> Contest Items
  (456, 14),
  -- Red Scarf -> Utility Held Items
  (456, 18),
  -- Yellow Scarf -> Held Items
  (457, 2),
  -- Yellow Scarf -> Contest Items
  (457, 14),
  -- Yellow Scarf -> Utility Held Items
  (457, 18),
  -- Sacred Ash -> Held Items
  (503, 2),
  -- Sacred Ash -> Utility Held Items
  (503, 18);
