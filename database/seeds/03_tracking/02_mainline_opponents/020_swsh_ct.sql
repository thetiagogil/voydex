-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia The Crown Tundra, Crown Tundra expedition, Calyrex, and Legendary clue pages.
-- Scope: Pokémon The Crown Tundra major opponent data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for The Crown Tundra major fights. Game-specific rows are scoped where the source game changes the opponent.
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
  -- Peony
  (20001, 20, NULL, 'peony', 'Peony', 'boss', 17, NULL, 'peony', 1),
  -- Calyrex
  (20002, 20, NULL, 'calyrex', 'Calyrex', 'boss', 11, 5, 'calyrex', 2);
