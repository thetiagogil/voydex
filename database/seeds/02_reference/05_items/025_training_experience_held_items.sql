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
-- Scope: training and experience held items catalog rows.
INSERT INTO reference.items (id, slug, name, primary_category_id, introduced_generation_id, external_id, sort_order)
VALUES
  -- Macho Brace
  (438, 'macho-brace', 'Macho Brace', 11, 3, 192, 438),
  -- Power Weight
  (439, 'power-weight', 'Power Weight', 11, 4, 271, 439),
  -- Power Bracer
  (440, 'power-bracer', 'Power Bracer', 11, 4, 266, 440),
  -- Power Belt
  (441, 'power-belt', 'Power Belt', 11, 4, 267, 441),
  -- Power Lens
  (442, 'power-lens', 'Power Lens', 11, 4, 268, 442),
  -- Power Band
  (443, 'power-band', 'Power Band', 11, 4, 269, 443),
  -- Power Anklet
  (444, 'power-anklet', 'Power Anklet', 11, 4, 270, 444),
  -- Exp. Share
  (445, 'exp-share', 'Exp. Share', 11, 2, 193, 445),
  -- Lucky Egg
  (446, 'lucky-egg', 'Lucky Egg', 11, 2, 208, 446);
