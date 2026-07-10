-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Z-A, Z-A Royale, Rogue Mega Evolution, Zygarde, and First partner Pokémon pages.
-- Scope: Pokémon Legends: Z-A major opponent data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for Pokémon Legends: Z-A major fights. Game-specific rows are scoped where the source game changes the opponent.
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
  -- Taunie / Urbain
  (26001, 26, NULL, 'taunie-urbain', 'Taunie / Urbain', 'rival', NULL, NULL, 'taunie-urbain', 1),
  -- Rogue Mega Absol
  (26002, 26, NULL, 'rogue-mega-absol', 'Rogue Mega Absol', 'boss', 16, NULL, 'rogue-mega-absol', 2),
  -- Lysandre
  (26003, 26, NULL, 'lysandre', 'Lysandre', 'boss', NULL, NULL, 'lysandre', 3),
  -- Zygarde
  (26004, 26, NULL, 'zygarde', 'Zygarde', 'boss', 15, 9, 'zygarde', 4);
