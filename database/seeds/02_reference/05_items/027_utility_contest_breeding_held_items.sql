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
-- Scope: utility, contest, and breeding held items catalog rows.
INSERT INTO reference.items (id, slug, name, primary_category_id, introduced_generation_id, external_id, sort_order, effect_summary)
VALUES
  -- Amulet Coin
  (447, 'amulet-coin', 'Amulet Coin', 18, 2, 200, 447, 'Doubles prize money from battles the holder takes part in.'),
  -- Cleanse Tag
  (448, 'cleanse-tag', 'Cleanse Tag', 18, 2, 201, 448, 'Makes wild encounters less likely while the lead Pokémon holds it.'),
  -- Everstone
  (449, 'everstone', 'Everstone', 18, 2, 206, 449, 'Stops the holder from evolving; a parent holding it passes on its nature.'),
  -- Soothe Bell
  (450, 'soothe-bell', 'Soothe Bell', 18, 3, 195, 450, 'Makes the holder''s friendship grow faster.'),
  -- Smoke Ball
  (451, 'smoke-ball', 'Smoke Ball', 18, 2, 205, 451, 'Lets the holder always flee from a wild battle.'),
  -- Destiny Knot
  (452, 'destiny-knot', 'Destiny Knot', 18, 4, 257, 452, 'If the holder becomes infatuated, the Pokémon that caused it is infatuated too; a parent holding it passes on five IVs.'),
  -- Blue Scarf
  (453, 'blue-scarf', 'Blue Scarf', 18, 3, 238, 453, 'Raises the holder''s Beauty condition in Contests.'),
  -- Green Scarf
  (454, 'green-scarf', 'Green Scarf', 18, 3, 240, 454, 'Raises the holder''s Cleverness condition in Contests.'),
  -- Pink Scarf
  (455, 'pink-scarf', 'Pink Scarf', 18, 3, 239, 455, 'Raises the holder''s Cuteness condition in Contests.'),
  -- Red Scarf
  (456, 'red-scarf', 'Red Scarf', 18, 3, 237, 456, 'Raises the holder''s Coolness condition in Contests.'),
  -- Yellow Scarf
  (457, 'yellow-scarf', 'Yellow Scarf', 18, 3, 241, 457, 'Raises the holder''s Toughness condition in Contests.');
