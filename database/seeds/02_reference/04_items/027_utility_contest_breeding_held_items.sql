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
-- Scope: utility, contest, and breeding held items catalog rows.
INSERT INTO reference.items (id, slug, name, primary_category_id, introduced_generation_id, external_id, sort_order)
VALUES
  -- Amulet Coin
  (447, 'amulet-coin', 'Amulet Coin', 18, 2, 200, 447),
  -- Cleanse Tag
  (448, 'cleanse-tag', 'Cleanse Tag', 18, 2, 201, 448),
  -- Everstone
  (449, 'everstone', 'Everstone', 18, 2, 206, 449),
  -- Soothe Bell
  (450, 'soothe-bell', 'Soothe Bell', 18, 3, 195, 450),
  -- Smoke Ball
  (451, 'smoke-ball', 'Smoke Ball', 18, 2, 205, 451),
  -- Destiny Knot
  (452, 'destiny-knot', 'Destiny Knot', 18, 4, 257, 452),
  -- Blue Scarf
  (453, 'blue-scarf', 'Blue Scarf', 18, 3, 238, 453),
  -- Green Scarf
  (454, 'green-scarf', 'Green Scarf', 18, 3, 240, 454),
  -- Pink Scarf
  (455, 'pink-scarf', 'Pink Scarf', 18, 3, 239, 455),
  -- Red Scarf
  (456, 'red-scarf', 'Red Scarf', 18, 3, 237, 456),
  -- Yellow Scarf
  (457, 'yellow-scarf', 'Yellow Scarf', 18, 3, 241, 457);
