-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, and FireRed / LeafGreen pages.
-- Cross-check: Pokémon FireRed / LeafGreen source pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii, Pokémon Database and the pret disassemblies.
-- Navel Rock and Birth Island: event-only on the original cartridges; the 2026 Switch release hands out their tickets after the Hall of Fame.
-- Rocket Warehouse Admins: the pret pokefirered decompilation's trainer parties and
-- set moves, cross-checked with Bulbapedia's Rocket Warehouse page. The game calls
-- both Admin and names neither, so each is told apart by its lead Pokémon.
-- Move order follows the game.
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
  (6013, 6, NULL, 'blue', 'Blue', 'champion', NULL, NULL, 'blue', 13),
  -- Blue (rival)
  (6014, 6, NULL, 'blue-rival', 'Blue', 'rival', NULL, NULL, 'blue', 14),
  -- Giovanni (boss)
  (6015, 6, NULL, 'giovanni-boss', 'Giovanni', 'boss', NULL, NULL, 'giovanni', 15),
  -- Zapdos (boss)
  (6016, 6, NULL, 'zapdos', 'Zapdos', 'boss', 4, 10, 'zapdos', 16),
  -- Articuno (boss)
  (6017, 6, NULL, 'articuno', 'Articuno', 'boss', 6, 10, 'articuno', 17),
  -- Moltres (boss)
  (6018, 6, NULL, 'moltres', 'Moltres', 'boss', 2, 10, 'moltres', 18),
  -- Ho-Oh (boss)
  (6019, 6, NULL, 'ho-oh', 'Ho-Oh', 'boss', 2, 10, 'ho-oh', 19),
  -- Lugia (boss)
  (6020, 6, NULL, 'lugia', 'Lugia', 'boss', 11, 10, 'lugia', 20),
  -- Deoxys (boss, firered)
  (6021, 6, 9, 'deoxys', 'Deoxys', 'boss', 11, NULL, 'deoxys', 1),
  -- Deoxys (boss, leafgreen)
  (6022, 6, 10, 'deoxys-leafgreen', 'Deoxys', 'boss', 11, NULL, 'deoxys', 1),
  -- Raikou (boss)
  (6023, 6, NULL, 'raikou', 'Raikou', 'boss', 4, NULL, 'raikou', 21),
  -- Entei (boss)
  (6024, 6, NULL, 'entei', 'Entei', 'boss', 2, NULL, 'entei', 22),
  -- Suicune (boss)
  (6025, 6, NULL, 'suicune', 'Suicune', 'boss', 3, NULL, 'suicune', 23),
  -- Mewtwo (boss)
  (6026, 6, NULL, 'mewtwo', 'Mewtwo', 'boss', 11, NULL, 'mewtwo', 24),
  -- Rocket Admin (Muk) (boss; Rocket Warehouse)
  (6027, 6, NULL, 'rocket-admin-muk', 'Rocket Admin (Muk)', 'boss', NULL, NULL, 'rocket-admin', 25),
  -- Rocket Admin (Golbat) (boss; Rocket Warehouse)
  (6028, 6, NULL, 'rocket-admin-golbat', 'Rocket Admin (Golbat)', 'boss', NULL, NULL, 'rocket-admin', 26);
