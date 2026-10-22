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
-- Scope: training and experience held items catalog rows.
INSERT INTO reference.items (id, slug, name, primary_category_id, introduced_generation_id, external_id, sort_order, effect_summary)
VALUES
  -- Macho Brace
  (438, 'macho-brace', 'Macho Brace', 11, 3, 192, 438, 'Doubles the EVs the holder earns but halves its Speed.'),
  -- Power Weight
  (439, 'power-weight', 'Power Weight', 11, 4, 271, 439, 'Gives 8 extra HP EVs per battle but halves Speed; a parent holding it passes on its HP IV.'),
  -- Power Bracer
  (440, 'power-bracer', 'Power Bracer', 11, 4, 266, 440, 'Gives 8 extra Attack EVs per battle but halves Speed; a parent holding it passes on its Attack IV.'),
  -- Power Belt
  (441, 'power-belt', 'Power Belt', 11, 4, 267, 441, 'Gives 8 extra Defense EVs per battle but halves Speed; a parent holding it passes on its Defense IV.'),
  -- Power Lens
  (442, 'power-lens', 'Power Lens', 11, 4, 268, 442, 'Gives 8 extra Sp. Atk EVs per battle but halves Speed; a parent holding it passes on its Sp. Atk IV.'),
  -- Power Band
  (443, 'power-band', 'Power Band', 11, 4, 269, 443, 'Gives 8 extra Sp. Def EVs per battle but halves Speed; a parent holding it passes on its Sp. Def IV.'),
  -- Power Anklet
  (444, 'power-anklet', 'Power Anklet', 11, 4, 270, 444, 'Gives 8 extra Speed EVs per battle but halves Speed; a parent holding it passes on its Speed IV.'),
  -- Exp. Share
  (445, 'exp-share', 'Exp. Share', 11, 2, 193, 445, 'Gives the holder a share of battle experience without battling. From Gen 6 a team-wide key item replaced it.'),
  -- Lucky Egg
  (446, 'lucky-egg', 'Lucky Egg', 11, 2, 208, 446, 'Raises the experience the holder earns by 50%.');
