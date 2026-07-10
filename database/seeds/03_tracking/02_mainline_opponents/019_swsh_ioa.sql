-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia The Isle of Armor, Kubfu, Urshifu, and Gift Pokémon pages.
-- Scope: Pokémon The Isle of Armor major opponent data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for The Isle of Armor major fights. Game-specific rows are scoped where the source game changes the opponent.
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
  -- Klara / Avery
  (19001, 19, NULL, 'klara-avery', 'Klara / Avery', 'rival', NULL, NULL, 'klara-avery', 1),
  -- Mustard
  (19002, 19, NULL, 'mustard', 'Mustard', 'boss', NULL, NULL, 'mustard', 2);
