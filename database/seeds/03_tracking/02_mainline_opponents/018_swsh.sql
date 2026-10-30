-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Sword / Shield, Badge, Gym Leader, Champion Cup, Legendary Pokémon, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and GamerGuides.
-- Scope: Pokémon Sword / Shield major opponent data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for Sword / Shield major fights. Game-specific rows are scoped where the source game changes the opponent.
-- ============================================================================

INSERT INTO tracking.mainline_opponents (
  id,
  version_group_id,
  game_id,
  slug,
  name,
  opponent_role,
  primary_type_id,
  secondary_type_id,
  sprite_slug,
  sort_order
) VALUES
  -- Milo
  (18001, 18, NULL, 'milo', 'Milo', 'gym-leader', 5, NULL, 'milo', 1),
  -- Nessa
  (18002, 18, NULL, 'nessa', 'Nessa', 'gym-leader', 3, NULL, 'nessa', 2),
  -- Kabu
  (18003, 18, NULL, 'kabu', 'Kabu', 'gym-leader', 2, NULL, 'kabu', 3),
  -- Bea
  (18004, 18, 31, 'bea', 'Bea', 'gym-leader', 7, NULL, 'bea', 4),
  -- Allister
  (18005, 18, 32, 'allister', 'Allister', 'gym-leader', 14, NULL, 'allister', 4),
  -- Opal
  (18006, 18, NULL, 'opal', 'Opal', 'gym-leader', 18, NULL, 'opal', 5),
  -- Gordie
  (18007, 18, 31, 'gordie', 'Gordie', 'gym-leader', 13, NULL, 'gordie', 6),
  -- Melony
  (18008, 18, 32, 'melony', 'Melony', 'gym-leader', 6, NULL, 'melony', 6),
  -- Piers
  (18009, 18, NULL, 'piers', 'Piers', 'gym-leader', 16, NULL, 'piers', 7),
  -- Raihan
  (18010, 18, NULL, 'raihan', 'Raihan', 'gym-leader', 15, NULL, 'raihan', 8),
  -- Eternatus
  (18011, 18, NULL, 'eternatus', 'Eternatus', 'boss', 8, 15, 'eternatus', 9),
  -- Leon
  (18012, 18, NULL, 'leon', 'Leon', 'champion', NULL, NULL, 'leon', 10),
  -- Hop (rival)
  (18013, 18, NULL, 'hop', 'Hop', 'rival', NULL, NULL, 'hop', 11),
  -- Bede (rival)
  (18014, 18, NULL, 'bede', 'Bede', 'rival', NULL, NULL, 'bede', 12),
  -- Marnie (rival)
  (18015, 18, NULL, 'marnie', 'Marnie', 'rival', NULL, NULL, 'marnie', 13),
  -- Rose (boss)
  (18016, 18, NULL, 'rose', 'Rose', 'boss', NULL, NULL, 'rose', 14),
  -- Zamazenta (boss, sword)
  (18017, 18, 31, 'zamazenta', 'Zamazenta', 'boss', 7, NULL, 'zamazenta', 7),
  -- Zacian (boss, shield)
  (18018, 18, 32, 'zacian', 'Zacian', 'boss', 18, NULL, 'zacian', 7),
  -- Zacian (boss, sword)
  (18019, 18, 31, 'zacian-sword', 'Zacian', 'boss', 18, NULL, 'zacian', 8),
  -- Zamazenta (boss, shield)
  (18020, 18, 32, 'zamazenta-shield', 'Zamazenta', 'boss', 7, NULL, 'zamazenta', 8),
  -- Oleana (boss; Rose Tower)
  (18021, 18, NULL, 'oleana', 'Oleana', 'boss', NULL, NULL, 'oleana', 15),
  -- Sordward (boss, sword; Slumbering Weald)
  (18022, 18, 31, 'sordward', 'Sordward', 'boss', NULL, NULL, 'sordward', 9),
  -- Shielbert (boss, shield; Slumbering Weald)
  (18023, 18, 32, 'shielbert', 'Shielbert', 'boss', NULL, NULL, 'shielbert', 9),
  -- Sordward & Shielbert (boss; the Multi Battle with Hop)
  (18024, 18, NULL, 'sordward-shielbert', 'Sordward & Shielbert', 'boss', NULL, NULL, 'sordward', 16),
  -- Hop (rival; first post-game visit to the Slumbering Weald)
  (18025, 18, NULL, 'hop-weald', 'Hop', 'rival', NULL, NULL, 'hop', 17),
  -- Sordward (boss, sword; Energy Plant)
  (18026, 18, 31, 'sordward-tower', 'Sordward', 'boss', NULL, NULL, 'sordward', 10),
  -- Shielbert (boss, shield; Energy Plant)
  (18027, 18, 32, 'shielbert-tower', 'Shielbert', 'boss', NULL, NULL, 'shielbert', 10),
  -- Hop (rival; the Route 2 battle, outside Professor Magnolia's house)
  (18028, 18, NULL, 'hop-route-2', 'Hop', 'rival', NULL, NULL, 'hop', 28);
