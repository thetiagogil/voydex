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
-- Scope: gem held items category memberships.
INSERT INTO reference.item_category_memberships (item_id, category_id)
VALUES
  -- Normal Gem -> Held Items
  (329, 2),
  -- Normal Gem -> Type-Enhancing Items
  (329, 9),
  -- Normal Gem -> Gems
  (329, 16),
  -- Fire Gem -> Held Items
  (330, 2),
  -- Fire Gem -> Type-Enhancing Items
  (330, 9),
  -- Fire Gem -> Gems
  (330, 16),
  -- Water Gem -> Held Items
  (331, 2),
  -- Water Gem -> Type-Enhancing Items
  (331, 9),
  -- Water Gem -> Gems
  (331, 16),
  -- Electric Gem -> Held Items
  (332, 2),
  -- Electric Gem -> Type-Enhancing Items
  (332, 9),
  -- Electric Gem -> Gems
  (332, 16),
  -- Grass Gem -> Held Items
  (333, 2),
  -- Grass Gem -> Type-Enhancing Items
  (333, 9),
  -- Grass Gem -> Gems
  (333, 16),
  -- Ice Gem -> Held Items
  (334, 2),
  -- Ice Gem -> Type-Enhancing Items
  (334, 9),
  -- Ice Gem -> Gems
  (334, 16),
  -- Fighting Gem -> Held Items
  (335, 2),
  -- Fighting Gem -> Type-Enhancing Items
  (335, 9),
  -- Fighting Gem -> Gems
  (335, 16),
  -- Poison Gem -> Held Items
  (336, 2),
  -- Poison Gem -> Type-Enhancing Items
  (336, 9),
  -- Poison Gem -> Gems
  (336, 16),
  -- Ground Gem -> Held Items
  (337, 2),
  -- Ground Gem -> Type-Enhancing Items
  (337, 9),
  -- Ground Gem -> Gems
  (337, 16),
  -- Flying Gem -> Held Items
  (338, 2),
  -- Flying Gem -> Type-Enhancing Items
  (338, 9),
  -- Flying Gem -> Gems
  (338, 16),
  -- Psychic Gem -> Held Items
  (339, 2),
  -- Psychic Gem -> Type-Enhancing Items
  (339, 9),
  -- Psychic Gem -> Gems
  (339, 16),
  -- Bug Gem -> Held Items
  (340, 2),
  -- Bug Gem -> Type-Enhancing Items
  (340, 9),
  -- Bug Gem -> Gems
  (340, 16),
  -- Rock Gem -> Held Items
  (341, 2),
  -- Rock Gem -> Type-Enhancing Items
  (341, 9),
  -- Rock Gem -> Gems
  (341, 16),
  -- Ghost Gem -> Held Items
  (342, 2),
  -- Ghost Gem -> Type-Enhancing Items
  (342, 9),
  -- Ghost Gem -> Gems
  (342, 16),
  -- Dragon Gem -> Held Items
  (343, 2),
  -- Dragon Gem -> Type-Enhancing Items
  (343, 9),
  -- Dragon Gem -> Gems
  (343, 16),
  -- Dark Gem -> Held Items
  (344, 2),
  -- Dark Gem -> Type-Enhancing Items
  (344, 9),
  -- Dark Gem -> Gems
  (344, 16),
  -- Steel Gem -> Held Items
  (345, 2),
  -- Steel Gem -> Type-Enhancing Items
  (345, 9),
  -- Steel Gem -> Gems
  (345, 16),
  -- Fairy Gem -> Held Items
  (346, 2),
  -- Fairy Gem -> Type-Enhancing Items
  (346, 9),
  -- Fairy Gem -> Gems
  (346, 16);
