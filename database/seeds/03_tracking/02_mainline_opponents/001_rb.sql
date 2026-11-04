-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Brock, Badge, and Elite Four pages.
-- Cross-check: legacy Voydex Red / Blue tracking seeds.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii, Pokémon Database and the pret disassemblies.
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
  place,
  sort_order
) VALUES
  -- Brock
  (1001, 1, NULL, 'brock', 'Brock', 'gym-leader', 13, NULL, 'brock', 'Pewter City', 1),
  -- Misty
  (1002, 1, NULL, 'misty', 'Misty', 'gym-leader', 3, NULL, 'misty', 'Cerulean City', 2),
  -- Lt. Surge
  (1003, 1, NULL, 'lt-surge', 'Lt. Surge', 'gym-leader', 4, NULL, 'lt-surge', 'Vermilion City', 3),
  -- Erika
  (1004, 1, NULL, 'erika', 'Erika', 'gym-leader', 5, NULL, 'erika', 'Celadon City', 4),
  -- Koga
  (1005, 1, NULL, 'koga', 'Koga', 'gym-leader', 8, NULL, 'koga', 'Fuchsia City', 5),
  -- Sabrina
  (1006, 1, NULL, 'sabrina', 'Sabrina', 'gym-leader', 11, NULL, 'sabrina', 'Saffron City', 6),
  -- Blaine
  (1007, 1, NULL, 'blaine', 'Blaine', 'gym-leader', 2, NULL, 'blaine', 'Cinnabar Island', 7),
  -- Giovanni
  (1008, 1, NULL, 'giovanni', 'Giovanni', 'gym-leader', 9, NULL, 'giovanni', 'Viridian City', 8),
  -- Lorelei
  (1009, 1, NULL, 'lorelei', 'Lorelei', 'elite-four', 6, NULL, 'lorelei', NULL, 9),
  -- Bruno
  (1010, 1, NULL, 'bruno', 'Bruno', 'elite-four', 7, NULL, 'bruno', NULL, 10),
  -- Agatha
  (1011, 1, NULL, 'agatha', 'Agatha', 'elite-four', 14, NULL, 'agatha', NULL, 11),
  -- Lance
  (1012, 1, NULL, 'lance', 'Lance', 'elite-four', 15, NULL, 'lance', NULL, 12),
  -- Blue
  (1013, 1, NULL, 'blue', 'Blue', 'champion', NULL, NULL, 'blue', 'Indigo Plateau', 13),
  -- Blue (rival)
  (1014, 1, NULL, 'blue-rival', 'Blue', 'rival', NULL, NULL, 'blue', NULL, 14),
  -- Giovanni (boss)
  (1015, 1, NULL, 'giovanni-boss', 'Giovanni', 'boss', NULL, NULL, 'giovanni', NULL, 15),
  -- Zapdos (boss)
  (1016, 1, NULL, 'zapdos', 'Zapdos', 'boss', 4, 10, NULL, NULL, 16),
  -- Articuno (boss)
  (1017, 1, NULL, 'articuno', 'Articuno', 'boss', 6, 10, NULL, NULL, 17),
  -- Moltres (boss)
  (1018, 1, NULL, 'moltres', 'Moltres', 'boss', 2, 10, NULL, NULL, 18),
  -- Mewtwo (boss)
  (1019, 1, NULL, 'mewtwo', 'Mewtwo', 'boss', 11, NULL, NULL, NULL, 19);
