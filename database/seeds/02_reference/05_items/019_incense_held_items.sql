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
-- Scope: incense held items catalog rows.
INSERT INTO reference.items (id, slug, name, primary_category_id, introduced_generation_id, external_id, sort_order)
VALUES
  -- Sea Incense
  (347, 'sea-incense', 'Sea Incense', 17, 3, 231, 347),
  -- Lax Incense
  (348, 'lax-incense', 'Lax Incense', 17, 3, 232, 348),
  -- Rose Incense
  (349, 'rose-incense', 'Rose Incense', 17, 3, 295, 349),
  -- Pure Incense
  (350, 'pure-incense', 'Pure Incense', 17, 3, 297, 350),
  -- Full Incense
  (351, 'full-incense', 'Full Incense', 17, 4, 293, 351),
  -- Luck Incense
  (352, 'luck-incense', 'Luck Incense', 17, 4, 296, 352),
  -- Odd Incense
  (353, 'odd-incense', 'Odd Incense', 17, 4, 291, 353),
  -- Rock Incense
  (354, 'rock-incense', 'Rock Incense', 17, 4, 292, 354),
  -- Wave Incense
  (355, 'wave-incense', 'Wave Incense', 17, 4, 294, 355);
