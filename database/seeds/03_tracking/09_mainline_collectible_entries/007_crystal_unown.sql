-- ============================================================================
-- Source
-- ============================================================================
-- Primary: the pret pokecrystal disassembly's unlocked Unown sets (A to K, L to
-- R, S to W, X to Z).
-- Cross-check: Bulbapedia's Crystal walkthrough (the north chamber
-- wakes eleven forms, the southeast five, the west three, the southwest
-- seven, and what each chamber needs).
-- Scope: Pokémon Crystal Unown forms.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_collectible_entries.
-- One entry per Unown form, all caught in the hall under the Ruins of Alph,
-- each with the puzzle that wakes it.
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
  (4001001, 4001, 'unown-a', 'Unown A', 'Ruins of Alph', 'After the north chamber''s puzzle', NULL, 1),
  -- Unown B - Ruins of Alph - After the north chamber's puzzle
  (4001002, 4001, 'unown-b', 'Unown B', 'Ruins of Alph', 'After the north chamber''s puzzle', NULL, 2),
  -- Unown C - Ruins of Alph - After the north chamber's puzzle
  (4001003, 4001, 'unown-c', 'Unown C', 'Ruins of Alph', 'After the north chamber''s puzzle', NULL, 3),
  -- Unown D - Ruins of Alph - After the north chamber's puzzle
  (4001004, 4001, 'unown-d', 'Unown D', 'Ruins of Alph', 'After the north chamber''s puzzle', NULL, 4),
  -- Unown E - Ruins of Alph - After the north chamber's puzzle
  (4001005, 4001, 'unown-e', 'Unown E', 'Ruins of Alph', 'After the north chamber''s puzzle', NULL, 5),
  -- Unown F - Ruins of Alph - After the north chamber's puzzle
  (4001006, 4001, 'unown-f', 'Unown F', 'Ruins of Alph', 'After the north chamber''s puzzle', NULL, 6),
  -- Unown G - Ruins of Alph - After the north chamber's puzzle
  (4001007, 4001, 'unown-g', 'Unown G', 'Ruins of Alph', 'After the north chamber''s puzzle', NULL, 7),
  -- Unown H - Ruins of Alph - After the north chamber's puzzle
  (4001008, 4001, 'unown-h', 'Unown H', 'Ruins of Alph', 'After the north chamber''s puzzle', NULL, 8),
  -- Unown I - Ruins of Alph - After the north chamber's puzzle
  (4001009, 4001, 'unown-i', 'Unown I', 'Ruins of Alph', 'After the north chamber''s puzzle', NULL, 9),
  -- Unown J - Ruins of Alph - After the north chamber's puzzle
  (4001010, 4001, 'unown-j', 'Unown J', 'Ruins of Alph', 'After the north chamber''s puzzle', NULL, 10),
  -- Unown K - Ruins of Alph - After the north chamber's puzzle
  (4001011, 4001, 'unown-k', 'Unown K', 'Ruins of Alph', 'After the north chamber''s puzzle', NULL, 11),
  -- Unown L - Ruins of Alph - After the southwest chamber's puzzle (Surf and Strength)
  (4001012, 4001, 'unown-l', 'Unown L', 'Ruins of Alph', 'After the southwest chamber''s puzzle (Surf and Strength)', NULL, 12),
  -- Unown M - Ruins of Alph - After the southwest chamber's puzzle (Surf and Strength)
  (4001013, 4001, 'unown-m', 'Unown M', 'Ruins of Alph', 'After the southwest chamber''s puzzle (Surf and Strength)', NULL, 13),
  -- Unown N - Ruins of Alph - After the southwest chamber's puzzle (Surf and Strength)
  (4001014, 4001, 'unown-n', 'Unown N', 'Ruins of Alph', 'After the southwest chamber''s puzzle (Surf and Strength)', NULL, 14),
  -- Unown O - Ruins of Alph - After the southwest chamber's puzzle (Surf and Strength)
  (4001015, 4001, 'unown-o', 'Unown O', 'Ruins of Alph', 'After the southwest chamber''s puzzle (Surf and Strength)', NULL, 15),
  -- Unown P - Ruins of Alph - After the southwest chamber's puzzle (Surf and Strength)
  (4001016, 4001, 'unown-p', 'Unown P', 'Ruins of Alph', 'After the southwest chamber''s puzzle (Surf and Strength)', NULL, 16),
  -- Unown Q - Ruins of Alph - After the southwest chamber's puzzle (Surf and Strength)
  (4001017, 4001, 'unown-q', 'Unown Q', 'Ruins of Alph', 'After the southwest chamber''s puzzle (Surf and Strength)', NULL, 17),
  -- Unown R - Ruins of Alph - After the southwest chamber's puzzle (Surf and Strength)
  (4001018, 4001, 'unown-r', 'Unown R', 'Ruins of Alph', 'After the southwest chamber''s puzzle (Surf and Strength)', NULL, 18),
  -- Unown S - Ruins of Alph - After the southeast chamber's puzzle (Surf)
  (4001019, 4001, 'unown-s', 'Unown S', 'Ruins of Alph', 'After the southeast chamber''s puzzle (Surf)', NULL, 19),
  -- Unown T - Ruins of Alph - After the southeast chamber's puzzle (Surf)
  (4001020, 4001, 'unown-t', 'Unown T', 'Ruins of Alph', 'After the southeast chamber''s puzzle (Surf)', NULL, 20),
  -- Unown U - Ruins of Alph - After the southeast chamber's puzzle (Surf)
  (4001021, 4001, 'unown-u', 'Unown U', 'Ruins of Alph', 'After the southeast chamber''s puzzle (Surf)', NULL, 21),
  -- Unown V - Ruins of Alph - After the southeast chamber's puzzle (Surf)
  (4001022, 4001, 'unown-v', 'Unown V', 'Ruins of Alph', 'After the southeast chamber''s puzzle (Surf)', NULL, 22),
  -- Unown W - Ruins of Alph - After the southeast chamber's puzzle (Surf)
  (4001023, 4001, 'unown-w', 'Unown W', 'Ruins of Alph', 'After the southeast chamber''s puzzle (Surf)', NULL, 23),
  -- Unown X - Ruins of Alph - After the west chamber's puzzle (Surf)
  (4001024, 4001, 'unown-x', 'Unown X', 'Ruins of Alph', 'After the west chamber''s puzzle (Surf)', NULL, 24),
  -- Unown Y - Ruins of Alph - After the west chamber's puzzle (Surf)
  (4001025, 4001, 'unown-y', 'Unown Y', 'Ruins of Alph', 'After the west chamber''s puzzle (Surf)', NULL, 25),
  -- Unown Z - Ruins of Alph - After the west chamber's puzzle (Surf)
  (4001026, 4001, 'unown-z', 'Unown Z', 'Ruins of Alph', 'After the west chamber''s puzzle (Surf)', NULL, 26);
