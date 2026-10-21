-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, and Pokémon Yellow pages.
-- Cross-check: Red / Blue tracking seed structure.
-- Scope: Pokémon Yellow Gym Leader, Elite Four, and Champion data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for Yellow major required fights.
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
  (2001, 2, NULL, 'brock', 'Brock', 'gym-leader', 13, NULL, 'brock', 1),
  -- Misty
  (2002, 2, NULL, 'misty', 'Misty', 'gym-leader', 3, NULL, 'misty', 2),
  -- Lt. Surge
  (2003, 2, NULL, 'lt-surge', 'Lt. Surge', 'gym-leader', 4, NULL, 'lt-surge', 3),
  -- Erika
  (2004, 2, NULL, 'erika', 'Erika', 'gym-leader', 5, NULL, 'erika', 4),
  -- Koga
  (2005, 2, NULL, 'koga', 'Koga', 'gym-leader', 8, NULL, 'koga', 5),
  -- Sabrina
  (2006, 2, NULL, 'sabrina', 'Sabrina', 'gym-leader', 11, NULL, 'sabrina', 6),
  -- Blaine
  (2007, 2, NULL, 'blaine', 'Blaine', 'gym-leader', 2, NULL, 'blaine', 7),
  -- Giovanni
  (2008, 2, NULL, 'giovanni', 'Giovanni', 'gym-leader', 9, NULL, 'giovanni', 8),
  -- Lorelei
  (2009, 2, NULL, 'lorelei', 'Lorelei', 'elite-four', 6, NULL, 'lorelei', 9),
  -- Bruno
  (2010, 2, NULL, 'bruno', 'Bruno', 'elite-four', 7, NULL, 'bruno', 10),
  -- Agatha
  (2011, 2, NULL, 'agatha', 'Agatha', 'elite-four', 14, NULL, 'agatha', 11),
  -- Lance
  (2012, 2, NULL, 'lance', 'Lance', 'elite-four', 15, NULL, 'lance', 12),
  -- Blue
  (2013, 2, NULL, 'blue', 'Blue', 'champion', NULL, NULL, 'blue', 13),
  -- Blue (rival)
  (2014, 2, NULL, 'blue-rival', 'Blue', 'rival', NULL, NULL, 'blue', 14),
  -- Giovanni (boss)
  (2015, 2, NULL, 'giovanni-boss', 'Giovanni', 'boss', NULL, NULL, 'giovanni', 15);
