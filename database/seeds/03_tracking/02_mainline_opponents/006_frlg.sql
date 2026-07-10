-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, and FireRed / LeafGreen pages.
-- Cross-check: Pokémon FireRed / LeafGreen source pages.
-- Scope: Pokémon FireRed / LeafGreen major opponent data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for FireRed / LeafGreen major fights.
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
  (6001, 6, NULL, 'brock', 'Brock', 'gym-leader', 13, NULL, 'brock', 1),
  -- Misty
  (6002, 6, NULL, 'misty', 'Misty', 'gym-leader', 3, NULL, 'misty', 2),
  -- Lt. Surge
  (6003, 6, NULL, 'lt-surge', 'Lt. Surge', 'gym-leader', 4, NULL, 'lt-surge', 3),
  -- Erika
  (6004, 6, NULL, 'erika', 'Erika', 'gym-leader', 5, NULL, 'erika', 4),
  -- Koga
  (6005, 6, NULL, 'koga', 'Koga', 'gym-leader', 8, NULL, 'koga', 5),
  -- Sabrina
  (6006, 6, NULL, 'sabrina', 'Sabrina', 'gym-leader', 11, NULL, 'sabrina', 6),
  -- Blaine
  (6007, 6, NULL, 'blaine', 'Blaine', 'gym-leader', 2, NULL, 'blaine', 7),
  -- Giovanni
  (6008, 6, NULL, 'giovanni', 'Giovanni', 'gym-leader', 9, NULL, 'giovanni', 8),
  -- Lorelei
  (6009, 6, NULL, 'lorelei', 'Lorelei', 'elite-four', 6, NULL, 'lorelei', 9),
  -- Bruno
  (6010, 6, NULL, 'bruno', 'Bruno', 'elite-four', 7, NULL, 'bruno', 10),
  -- Agatha
  (6011, 6, NULL, 'agatha', 'Agatha', 'elite-four', 14, NULL, 'agatha', 11),
  -- Lance
  (6012, 6, NULL, 'lance', 'Lance', 'elite-four', 15, NULL, 'lance', 12),
  -- Blue
  (6013, 6, NULL, 'blue', 'Blue', 'champion', NULL, NULL, 'blue', 13);
