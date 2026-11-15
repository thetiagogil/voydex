-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's HeartGold / SoulSilver walkthrough (the north chamber
-- wakes ten forms, the southeast five, the west four and the southwest
-- seven, and what each chamber needs), its Ruins of Alph page and its Unown
-- Report page (the ! and ? forms).
-- Scope: Pokémon HeartGold / SoulSilver Unown forms.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_collectible_entries.
-- One entry per Unown form, all caught under the Ruins of Alph, each with the
-- puzzle that wakes it.
-- ============================================================================

INSERT INTO tracking.mainline_collectible_entries (
  id,
  collectible_id,
  slug,
  name,
  location_label,
  sub_location_label,
  description,
  sort_order
)
VALUES
  -- Unown A - Ruins of Alph - After the north chamber's puzzle
  (10001001, 10001, 'unown-a', 'Unown A', 'Ruins of Alph', 'After the north chamber''s puzzle', NULL, 1),
  -- Unown B - Ruins of Alph - After the north chamber's puzzle
  (10001002, 10001, 'unown-b', 'Unown B', 'Ruins of Alph', 'After the north chamber''s puzzle', NULL, 2),
  -- Unown C - Ruins of Alph - After the north chamber's puzzle
  (10001003, 10001, 'unown-c', 'Unown C', 'Ruins of Alph', 'After the north chamber''s puzzle', NULL, 3),
  -- Unown D - Ruins of Alph - After the north chamber's puzzle
  (10001004, 10001, 'unown-d', 'Unown D', 'Ruins of Alph', 'After the north chamber''s puzzle', NULL, 4),
  -- Unown E - Ruins of Alph - After the north chamber's puzzle
  (10001005, 10001, 'unown-e', 'Unown E', 'Ruins of Alph', 'After the north chamber''s puzzle', NULL, 5),
  -- Unown F - Ruins of Alph - After the north chamber's puzzle
  (10001006, 10001, 'unown-f', 'Unown F', 'Ruins of Alph', 'After the north chamber''s puzzle', NULL, 6),
  -- Unown G - Ruins of Alph - After the north chamber's puzzle
  (10001007, 10001, 'unown-g', 'Unown G', 'Ruins of Alph', 'After the north chamber''s puzzle', NULL, 7),
  -- Unown H - Ruins of Alph - After the north chamber's puzzle
  (10001008, 10001, 'unown-h', 'Unown H', 'Ruins of Alph', 'After the north chamber''s puzzle', NULL, 8),
  -- Unown I - Ruins of Alph - After the north chamber's puzzle
  (10001009, 10001, 'unown-i', 'Unown I', 'Ruins of Alph', 'After the north chamber''s puzzle', NULL, 9),
  -- Unown J - Ruins of Alph - After the north chamber's puzzle
  (10001010, 10001, 'unown-j', 'Unown J', 'Ruins of Alph', 'After the north chamber''s puzzle', NULL, 10),
  -- Unown K - Ruins of Alph - After the southwest chamber's puzzle (Surf and Strength, through Union Cave)
  (10001011, 10001, 'unown-k', 'Unown K', 'Ruins of Alph', 'After the southwest chamber''s puzzle (Surf and Strength, through Union Cave)', NULL, 11),
  -- Unown L - Ruins of Alph - After the southwest chamber's puzzle (Surf and Strength, through Union Cave)
  (10001012, 10001, 'unown-l', 'Unown L', 'Ruins of Alph', 'After the southwest chamber''s puzzle (Surf and Strength, through Union Cave)', NULL, 12),
  -- Unown M - Ruins of Alph - After the southwest chamber's puzzle (Surf and Strength, through Union Cave)
  (10001013, 10001, 'unown-m', 'Unown M', 'Ruins of Alph', 'After the southwest chamber''s puzzle (Surf and Strength, through Union Cave)', NULL, 13),
  -- Unown N - Ruins of Alph - After the southwest chamber's puzzle (Surf and Strength, through Union Cave)
  (10001014, 10001, 'unown-n', 'Unown N', 'Ruins of Alph', 'After the southwest chamber''s puzzle (Surf and Strength, through Union Cave)', NULL, 14),
  -- Unown O - Ruins of Alph - After the southwest chamber's puzzle (Surf and Strength, through Union Cave)
  (10001015, 10001, 'unown-o', 'Unown O', 'Ruins of Alph', 'After the southwest chamber''s puzzle (Surf and Strength, through Union Cave)', NULL, 15),
  -- Unown P - Ruins of Alph - After the southwest chamber's puzzle (Surf and Strength, through Union Cave)
  (10001016, 10001, 'unown-p', 'Unown P', 'Ruins of Alph', 'After the southwest chamber''s puzzle (Surf and Strength, through Union Cave)', NULL, 16),
  -- Unown Q - Ruins of Alph - After the southwest chamber's puzzle (Surf and Strength, through Union Cave)
  (10001017, 10001, 'unown-q', 'Unown Q', 'Ruins of Alph', 'After the southwest chamber''s puzzle (Surf and Strength, through Union Cave)', NULL, 17),
  -- Unown R - Ruins of Alph - After the southeast chamber's puzzle (Surf)
  (10001018, 10001, 'unown-r', 'Unown R', 'Ruins of Alph', 'After the southeast chamber''s puzzle (Surf)', NULL, 18),
  -- Unown S - Ruins of Alph - After the southeast chamber's puzzle (Surf)
  (10001019, 10001, 'unown-s', 'Unown S', 'Ruins of Alph', 'After the southeast chamber''s puzzle (Surf)', NULL, 19),
  -- Unown T - Ruins of Alph - After the southeast chamber's puzzle (Surf)
  (10001020, 10001, 'unown-t', 'Unown T', 'Ruins of Alph', 'After the southeast chamber''s puzzle (Surf)', NULL, 20),
  -- Unown U - Ruins of Alph - After the southeast chamber's puzzle (Surf)
  (10001021, 10001, 'unown-u', 'Unown U', 'Ruins of Alph', 'After the southeast chamber''s puzzle (Surf)', NULL, 21),
  -- Unown V - Ruins of Alph - After the southeast chamber's puzzle (Surf)
  (10001022, 10001, 'unown-v', 'Unown V', 'Ruins of Alph', 'After the southeast chamber''s puzzle (Surf)', NULL, 22),
  -- Unown W - Ruins of Alph - After the west chamber's puzzle (Surf, through Union Cave)
  (10001023, 10001, 'unown-w', 'Unown W', 'Ruins of Alph', 'After the west chamber''s puzzle (Surf, through Union Cave)', NULL, 23),
  -- Unown X - Ruins of Alph - After the west chamber's puzzle (Surf, through Union Cave)
  (10001024, 10001, 'unown-x', 'Unown X', 'Ruins of Alph', 'After the west chamber''s puzzle (Surf, through Union Cave)', NULL, 24),
  -- Unown Y - Ruins of Alph - After the west chamber's puzzle (Surf, through Union Cave)
  (10001025, 10001, 'unown-y', 'Unown Y', 'Ruins of Alph', 'After the west chamber''s puzzle (Surf, through Union Cave)', NULL, 25),
  -- Unown Z - Ruins of Alph - After the west chamber's puzzle (Surf, through Union Cave)
  (10001026, 10001, 'unown-z', 'Unown Z', 'Ruins of Alph', 'After the west chamber''s puzzle (Surf, through Union Cave)', NULL, 26),
  -- Unown ! - Ruins of Alph - In the entrance hall, once you have all 26 letters and have opened the four hidden rooms
  (10001027, 10001, 'unown-exclamation', 'Unown !', 'Ruins of Alph', 'In the entrance hall, once you have all 26 letters and have opened the four hidden rooms', NULL, 27),
  -- Unown ? - Ruins of Alph - In the entrance hall, once you have all 26 letters and have opened the four hidden rooms
  (10001028, 10001, 'unown-question', 'Unown ?', 'Ruins of Alph', 'In the entrance hall, once you have all 26 letters and have opened the four hidden rooms', NULL, 28);
