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
-- Scope: incense held items category memberships.
INSERT INTO reference.item_category_memberships (item_id, category_id)
VALUES
  -- Sea Incense -> Held Items
  (347, 2),
  -- Sea Incense -> Type-Enhancing Items
  (347, 9),
  -- Sea Incense -> Breeding Items
  (347, 13),
  -- Sea Incense -> Incenses
  (347, 17),
  -- Lax Incense -> Held Items
  (348, 2),
  -- Lax Incense -> Battle-Effect Items
  (348, 10),
  -- Lax Incense -> Breeding Items
  (348, 13),
  -- Lax Incense -> Incenses
  (348, 17),
  -- Rose Incense -> Held Items
  (349, 2),
  -- Rose Incense -> Type-Enhancing Items
  (349, 9),
  -- Rose Incense -> Breeding Items
  (349, 13),
  -- Rose Incense -> Incenses
  (349, 17),
  -- Pure Incense -> Held Items
  (350, 2),
  -- Pure Incense -> Breeding Items
  (350, 13),
  -- Pure Incense -> Incenses
  (350, 17),
  -- Pure Incense -> Utility Held Items
  (350, 18),
  -- Full Incense -> Held Items
  (351, 2),
  -- Full Incense -> Battle-Effect Items
  (351, 10),
  -- Full Incense -> Breeding Items
  (351, 13),
  -- Full Incense -> Incenses
  (351, 17),
  -- Luck Incense -> Held Items
  (352, 2),
  -- Luck Incense -> Breeding Items
  (352, 13),
  -- Luck Incense -> Incenses
  (352, 17),
  -- Luck Incense -> Utility Held Items
  (352, 18),
  -- Odd Incense -> Held Items
  (353, 2),
  -- Odd Incense -> Type-Enhancing Items
  (353, 9),
  -- Odd Incense -> Breeding Items
  (353, 13),
  -- Odd Incense -> Incenses
  (353, 17),
  -- Rock Incense -> Held Items
  (354, 2),
  -- Rock Incense -> Type-Enhancing Items
  (354, 9),
  -- Rock Incense -> Breeding Items
  (354, 13),
  -- Rock Incense -> Incenses
  (354, 17),
  -- Wave Incense -> Held Items
  (355, 2),
  -- Wave Incense -> Type-Enhancing Items
  (355, 9),
  -- Wave Incense -> Breeding Items
  (355, 13),
  -- Wave Incense -> Incenses
  (355, 17);
