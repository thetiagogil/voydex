-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Sword / Shield, Badge, Gym Leader, Champion Cup, Legendary Pokémon, and First partner Pokémon pages.
-- Scope: Pokémon Sword / Shield badge data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide badge definitions for Sword / Shield. Game-specific rows are scoped where the source game changes the badge.
-- ============================================================================

INSERT INTO tracking.mainline_badges (
  id,
  version_group_id,
  game_id,
  slug,
  name,
  type_id,
  sprite_slug,
  sort_order
) VALUES
  -- Grass Badge
  (18001, 18, NULL, 'grass-badge', 'Grass Badge', 5, 'grass-badge', 1),
  -- Water Badge
  (18002, 18, NULL, 'water-badge', 'Water Badge', 3, 'water-badge', 2),
  -- Fire Badge
  (18003, 18, NULL, 'fire-badge', 'Fire Badge', 2, 'fire-badge', 3),
  -- Fighting Badge
  (18004, 18, 31, 'fighting-badge', 'Fighting Badge', 7, 'fighting-badge', 4),
  -- Ghost Badge
  (18005, 18, 32, 'ghost-badge', 'Ghost Badge', 14, 'ghost-badge', 4),
  -- Fairy Badge
  (18006, 18, NULL, 'fairy-badge', 'Fairy Badge', 18, 'fairy-badge', 5),
  -- Rock Badge
  (18007, 18, 31, 'rock-badge', 'Rock Badge', 13, 'rock-badge', 6),
  -- Ice Badge
  (18008, 18, 32, 'ice-badge', 'Ice Badge', 6, 'ice-badge', 6),
  -- Dark Badge
  (18009, 18, NULL, 'dark-badge', 'Dark Badge', 16, 'dark-badge', 7),
  -- Dragon Badge
  (18010, 18, NULL, 'dragon-badge', 'Dragon Badge', 15, 'dragon-badge', 8);
