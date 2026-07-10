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
-- Scope: species-specific held items catalog rows.
INSERT INTO reference.items (id, slug, name, primary_category_id, introduced_generation_id, external_id, sort_order)
VALUES
  -- Adamant Orb
  (356, 'adamant-orb', 'Adamant Orb', 15, 4, 112, 356),
  -- Lustrous Orb
  (357, 'lustrous-orb', 'Lustrous Orb', 15, 4, 113, 357),
  -- Soul Dew
  (358, 'soul-dew', 'Soul Dew', 15, 3, 202, 358),
  -- Red Orb
  (359, 'red-orb', 'Red Orb', 15, 3, 467, 359),
  -- Blue Orb
  (360, 'blue-orb', 'Blue Orb', 15, 3, 468, 360),
  -- Rusted Sword
  (361, 'rusted-sword', 'Rusted Sword', 15, 8, 1161, 361),
  -- Rusted Shield
  (362, 'rusted-shield', 'Rusted Shield', 15, 8, 1162, 362),
  -- Leek
  (363, 'leek', 'Leek', 15, 2, 236, 363),
  -- Light Ball
  (364, 'light-ball', 'Light Ball', 15, 2, 213, 364),
  -- Lucky Punch
  (365, 'lucky-punch', 'Lucky Punch', 15, 2, 233, 365),
  -- Metal Powder
  (366, 'metal-powder', 'Metal Powder', 15, 2, 234, 366),
  -- Quick Powder
  (367, 'quick-powder', 'Quick Powder', 15, 4, 251, 367),
  -- Thick Club
  (368, 'thick-club', 'Thick Club', 15, 2, 235, 368),
  -- Booster Energy
  (369, 'booster-energy', 'Booster Energy', 15, 9, 1696, 369);
