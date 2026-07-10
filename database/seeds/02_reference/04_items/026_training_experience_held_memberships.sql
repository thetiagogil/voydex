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
-- Scope: training and experience held items category memberships.
INSERT INTO reference.item_category_memberships (item_id, category_id)
VALUES
  -- Macho Brace -> Held Items
  (438, 2),
  -- Macho Brace -> Training Items
  (438, 11),
  -- Power Weight -> Held Items
  (439, 2),
  -- Power Weight -> Training Items
  (439, 11),
  -- Power Weight -> Breeding Items
  (439, 13),
  -- Power Bracer -> Held Items
  (440, 2),
  -- Power Bracer -> Training Items
  (440, 11),
  -- Power Bracer -> Breeding Items
  (440, 13),
  -- Power Belt -> Held Items
  (441, 2),
  -- Power Belt -> Training Items
  (441, 11),
  -- Power Belt -> Breeding Items
  (441, 13),
  -- Power Lens -> Held Items
  (442, 2),
  -- Power Lens -> Training Items
  (442, 11),
  -- Power Lens -> Breeding Items
  (442, 13),
  -- Power Band -> Held Items
  (443, 2),
  -- Power Band -> Training Items
  (443, 11),
  -- Power Band -> Breeding Items
  (443, 13),
  -- Power Anklet -> Held Items
  (444, 2),
  -- Power Anklet -> Training Items
  (444, 11),
  -- Power Anklet -> Breeding Items
  (444, 13),
  -- Exp. Share -> Held Items
  (445, 2),
  -- Exp. Share -> Training Items
  (445, 11),
  -- Exp. Share -> Experience Items
  (445, 12),
  -- Lucky Egg -> Held Items
  (446, 2),
  -- Lucky Egg -> Training Items
  (446, 11),
  -- Lucky Egg -> Experience Items
  (446, 12);
