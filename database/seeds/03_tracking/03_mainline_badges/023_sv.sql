-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Scarlet / Violet, Gym Leader, Elite Four, Champion, Team Star, Titan Pokémon, The Way Home, and First partner Pokémon pages.
-- Scope: Pokémon Scarlet / Violet badge data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide badge definitions for Scarlet / Violet. Game-specific rows are scoped where the source game changes the badge.
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
  -- Bug Badge
  (23001, 23, NULL, 'bug-badge', 'Bug Badge', 12, 'bug-badge', 1),
  -- Grass Badge
  (23002, 23, NULL, 'grass-badge', 'Grass Badge', 5, 'grass-badge', 2),
  -- Electric Badge
  (23003, 23, NULL, 'electric-badge', 'Electric Badge', 4, 'electric-badge', 3),
  -- Water Badge
  (23004, 23, NULL, 'water-badge', 'Water Badge', 3, 'water-badge', 4),
  -- Normal Badge
  (23005, 23, NULL, 'normal-badge', 'Normal Badge', 1, 'normal-badge', 5),
  -- Ghost Badge
  (23006, 23, NULL, 'ghost-badge', 'Ghost Badge', 14, 'ghost-badge', 6),
  -- Psychic Badge
  (23007, 23, NULL, 'psychic-badge', 'Psychic Badge', 11, 'psychic-badge', 7),
  -- Ice Badge
  (23008, 23, NULL, 'ice-badge', 'Ice Badge', 6, 'ice-badge', 8);
