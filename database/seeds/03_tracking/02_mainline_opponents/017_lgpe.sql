-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Let's Go, Pikachu! / Let's Go, Eevee!, Badge, Elite Four, and Gift Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and Pokémon Database.
-- Scope: Pokémon Let's Go, Pikachu! / Let's Go, Eevee! major opponent data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for Let's Go, Pikachu! / Let's Go, Eevee! major fights. Game-specific rows are scoped where the source game changes the opponent.
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
  -- Brock
  (17001, 17, NULL, 'brock', 'Brock', 'gym-leader', 13, NULL, 'brock', 1),
  -- Misty
  (17002, 17, NULL, 'misty', 'Misty', 'gym-leader', 3, NULL, 'misty', 2),
  -- Lt. Surge
  (17003, 17, NULL, 'lt-surge', 'Lt. Surge', 'gym-leader', 4, NULL, 'lt-surge', 3),
  -- Erika
  (17004, 17, NULL, 'erika', 'Erika', 'gym-leader', 5, NULL, 'erika', 4),
  -- Koga
  (17005, 17, NULL, 'koga', 'Koga', 'gym-leader', 8, NULL, 'koga', 5),
  -- Sabrina
  (17006, 17, NULL, 'sabrina', 'Sabrina', 'gym-leader', 11, NULL, 'sabrina', 6),
  -- Blaine
  (17007, 17, NULL, 'blaine', 'Blaine', 'gym-leader', 2, NULL, 'blaine', 7),
  -- Giovanni
  (17008, 17, NULL, 'giovanni', 'Giovanni', 'gym-leader', 9, NULL, 'giovanni', 8),
  -- Lorelei
  (17009, 17, NULL, 'lorelei', 'Lorelei', 'elite-four', 6, NULL, 'lorelei', 9),
  -- Bruno
  (17010, 17, NULL, 'bruno', 'Bruno', 'elite-four', 7, NULL, 'bruno', 10),
  -- Agatha
  (17011, 17, NULL, 'agatha', 'Agatha', 'elite-four', 14, NULL, 'agatha', 11),
  -- Lance
  (17012, 17, NULL, 'lance', 'Lance', 'elite-four', 15, NULL, 'lance', 12),
  -- Rival
  (17013, 17, NULL, 'rival', 'Rival', 'champion', NULL, NULL, 'rival', 13),
  -- Blue
  (17014, 17, NULL, 'blue', 'Blue', 'boss', NULL, NULL, 'blue', 14),
  -- Green
  (17015, 17, NULL, 'green', 'Green', 'boss', NULL, NULL, 'green', 15),
  -- Trace (rival)
  (17016, 17, NULL, 'trace', 'Trace', 'rival', NULL, NULL, 'trace', 16),
  -- Giovanni (boss)
  (17017, 17, NULL, 'giovanni-boss', 'Giovanni', 'boss', NULL, NULL, 'giovanni', 17),
  -- Zapdos (boss)
  (17018, 17, NULL, 'zapdos', 'Zapdos', 'boss', 4, 10, 'zapdos', 18),
  -- Articuno (boss)
  (17019, 17, NULL, 'articuno', 'Articuno', 'boss', 6, 10, 'articuno', 19),
  -- Moltres (boss)
  (17020, 17, NULL, 'moltres', 'Moltres', 'boss', 2, 10, 'moltres', 20),
  -- Mewtwo (boss)
  (17021, 17, NULL, 'mewtwo', 'Mewtwo', 'boss', 11, NULL, 'mewtwo', 21);
