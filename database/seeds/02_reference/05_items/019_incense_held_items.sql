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
-- Scope: incense held items catalog rows.
INSERT INTO reference.items (id, slug, name, primary_category_id, introduced_generation_id, external_id, sort_order, effect_summary)
VALUES
  -- Sea Incense
  (347, 'sea-incense', 'Sea Incense', 17, 3, 231, 347, 'Raises the power of Water-type moves by 20%; a Marill or Azumarill parent holding it lays an Azurill Egg.'),
  -- Lax Incense
  (348, 'lax-incense', 'Lax Incense', 17, 3, 232, 348, 'Lowers the accuracy of moves used on the holder by 10%; a Wobbuffet parent holding it lays a Wynaut Egg.'),
  -- Rose Incense
  (349, 'rose-incense', 'Rose Incense', 17, 3, 295, 349, 'Raises the power of Grass-type moves by 20%; a Roselia or Roserade parent holding it lays a Budew Egg.'),
  -- Pure Incense
  (350, 'pure-incense', 'Pure Incense', 17, 3, 297, 350, 'Makes wild encounters less likely when the lead holds it; a Chimecho parent holding it lays a Chingling Egg.'),
  -- Full Incense
  (351, 'full-incense', 'Full Incense', 17, 4, 293, 351, 'Makes the holder move last in its priority bracket; a Snorlax parent holding it lays a Munchlax Egg.'),
  -- Luck Incense
  (352, 'luck-incense', 'Luck Incense', 17, 4, 296, 352, 'Doubles prize money from battles the holder joins; a Chansey or Blissey parent holding it lays a Happiny Egg.'),
  -- Odd Incense
  (353, 'odd-incense', 'Odd Incense', 17, 4, 291, 353, 'Raises the power of Psychic-type moves by 20%; a Mr. Mime parent holding it lays a Mime Jr. Egg.'),
  -- Rock Incense
  (354, 'rock-incense', 'Rock Incense', 17, 4, 292, 354, 'Raises the power of Rock-type moves by 20%; a Sudowoodo parent holding it lays a Bonsly Egg.'),
  -- Wave Incense
  (355, 'wave-incense', 'Wave Incense', 17, 4, 294, 355, 'Raises the power of Water-type moves by 20%; a Mantine parent holding it lays a Mantyke Egg.');
