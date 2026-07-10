-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, X / Y, Gift Pokémon, Fossil, and First partner Pokémon pages.
-- Scope: Pokémon X / Y badge data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide badge definitions for X / Y. Game-specific rows are scoped where the source game changes the badge.
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
  (13001, 13, NULL, 'bug-badge', 'Bug Badge', 12, 'bug-badge', 1),
  -- Cliff Badge
  (13002, 13, NULL, 'cliff-badge', 'Cliff Badge', 13, 'cliff-badge', 2),
  -- Rumble Badge
  (13003, 13, NULL, 'rumble-badge', 'Rumble Badge', 7, 'rumble-badge', 3),
  -- Plant Badge
  (13004, 13, NULL, 'plant-badge', 'Plant Badge', 5, 'plant-badge', 4),
  -- Voltage Badge
  (13005, 13, NULL, 'voltage-badge', 'Voltage Badge', 4, 'voltage-badge', 5),
  -- Fairy Badge
  (13006, 13, NULL, 'fairy-badge', 'Fairy Badge', 18, 'fairy-badge', 6),
  -- Psychic Badge
  (13007, 13, NULL, 'psychic-badge', 'Psychic Badge', 11, 'psychic-badge', 7),
  -- Iceberg Badge
  (13008, 13, NULL, 'iceberg-badge', 'Iceberg Badge', 6, 'iceberg-badge', 8);
