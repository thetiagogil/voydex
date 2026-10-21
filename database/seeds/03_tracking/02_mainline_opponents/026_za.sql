-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Z-A, Z-A Royale, Rogue Mega Evolution, Zygarde, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Zygarde's story levels (10% Forme Lv. 33, 50% Forme Lv. 57) are confirmed by one source only.
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
  (26004, 26, NULL, 'zygarde', 'Zygarde', 'boss', 15, 9, 'zygarde', 4),
  -- Xerneas (boss)
  (26005, 26, NULL, 'xerneas', 'Xerneas', 'boss', 18, NULL, 'xerneas', 5),
  -- Yveltal (boss)
  (26006, 26, NULL, 'yveltal', 'Yveltal', 'boss', 16, 10, 'yveltal', 6);
