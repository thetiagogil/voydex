-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Brock, Badge, and Elite Four pages.
-- Cross-check: legacy Voydex Red / Blue tracking seeds.
-- Scope: Pokémon Red / Blue shared Gym Leader, Elite Four, and Champion data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for Red / Blue major required fights.
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
  (1001, 1, NULL, 'brock', 'Brock', 'gym-leader', 13, NULL, 'brock', 1),
  -- Misty
  (1002, 1, NULL, 'misty', 'Misty', 'gym-leader', 3, NULL, 'misty', 2),
  -- Lt. Surge
  (1003, 1, NULL, 'lt-surge', 'Lt. Surge', 'gym-leader', 4, NULL, 'lt-surge', 3),
  -- Erika
  (1004, 1, NULL, 'erika', 'Erika', 'gym-leader', 5, NULL, 'erika', 4),
  -- Koga
  (1005, 1, NULL, 'koga', 'Koga', 'gym-leader', 8, NULL, 'koga', 5),
  -- Sabrina
  (1006, 1, NULL, 'sabrina', 'Sabrina', 'gym-leader', 11, NULL, 'sabrina', 6),
  -- Blaine
  (1007, 1, NULL, 'blaine', 'Blaine', 'gym-leader', 2, NULL, 'blaine', 7),
  -- Giovanni
  (1008, 1, NULL, 'giovanni', 'Giovanni', 'gym-leader', 9, NULL, 'giovanni', 8),
  -- Lorelei
  (1009, 1, NULL, 'lorelei', 'Lorelei', 'elite-four', 6, NULL, 'lorelei', 9),
  -- Bruno
  (1010, 1, NULL, 'bruno', 'Bruno', 'elite-four', 7, NULL, 'bruno', 10),
  -- Agatha
  (1011, 1, NULL, 'agatha', 'Agatha', 'elite-four', 14, NULL, 'agatha', 11),
  -- Lance
  (1012, 1, NULL, 'lance', 'Lance', 'elite-four', 15, NULL, 'lance', 12),
  -- Blue
  (1013, 1, NULL, 'blue', 'Blue', 'champion', NULL, NULL, 'blue', 13);
