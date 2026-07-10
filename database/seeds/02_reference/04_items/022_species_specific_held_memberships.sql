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
-- Scope: species-specific held items category memberships.
INSERT INTO reference.item_category_memberships (item_id, category_id)
VALUES
  -- Adamant Orb -> Held Items
  (356, 2),
  -- Adamant Orb -> Type-Enhancing Items
  (356, 9),
  -- Adamant Orb -> Battle-Effect Items
  (356, 10),
  -- Adamant Orb -> Species-Specific Items
  (356, 15),
  -- Lustrous Orb -> Held Items
  (357, 2),
  -- Lustrous Orb -> Type-Enhancing Items
  (357, 9),
  -- Lustrous Orb -> Battle-Effect Items
  (357, 10),
  -- Lustrous Orb -> Species-Specific Items
  (357, 15),
  -- Soul Dew -> Held Items
  (358, 2),
  -- Soul Dew -> Type-Enhancing Items
  (358, 9),
  -- Soul Dew -> Battle-Effect Items
  (358, 10),
  -- Soul Dew -> Species-Specific Items
  (358, 15),
  -- Red Orb -> Held Items
  (359, 2),
  -- Red Orb -> Battle-Effect Items
  (359, 10),
  -- Red Orb -> Species-Specific Items
  (359, 15),
  -- Blue Orb -> Held Items
  (360, 2),
  -- Blue Orb -> Battle-Effect Items
  (360, 10),
  -- Blue Orb -> Species-Specific Items
  (360, 15),
  -- Rusted Sword -> Held Items
  (361, 2),
  -- Rusted Sword -> Battle-Effect Items
  (361, 10),
  -- Rusted Sword -> Species-Specific Items
  (361, 15),
  -- Rusted Shield -> Held Items
  (362, 2),
  -- Rusted Shield -> Battle-Effect Items
  (362, 10),
  -- Rusted Shield -> Species-Specific Items
  (362, 15),
  -- Leek -> Held Items
  (363, 2),
  -- Leek -> Battle-Effect Items
  (363, 10),
  -- Leek -> Species-Specific Items
  (363, 15),
  -- Light Ball -> Held Items
  (364, 2),
  -- Light Ball -> Battle-Effect Items
  (364, 10),
  -- Light Ball -> Breeding Items
  (364, 13),
  -- Light Ball -> Species-Specific Items
  (364, 15),
  -- Lucky Punch -> Held Items
  (365, 2),
  -- Lucky Punch -> Battle-Effect Items
  (365, 10),
  -- Lucky Punch -> Species-Specific Items
  (365, 15),
  -- Metal Powder -> Held Items
  (366, 2),
  -- Metal Powder -> Battle-Effect Items
  (366, 10),
  -- Metal Powder -> Species-Specific Items
  (366, 15),
  -- Quick Powder -> Held Items
  (367, 2),
  -- Quick Powder -> Battle-Effect Items
  (367, 10),
  -- Quick Powder -> Species-Specific Items
  (367, 15),
  -- Thick Club -> Held Items
  (368, 2),
  -- Thick Club -> Battle-Effect Items
  (368, 10),
  -- Thick Club -> Species-Specific Items
  (368, 15),
  -- Booster Energy -> Held Items
  (369, 2),
  -- Booster Energy -> Battle-Effect Items
  (369, 10),
  -- Booster Energy -> Species-Specific Items
  (369, 15);
