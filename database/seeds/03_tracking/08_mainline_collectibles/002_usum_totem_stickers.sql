-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Totem Sticker.
-- Cross-check: Serebii Ultra Sun/Ultra Moon Totem Stickers and legacy Voydex seed.
-- Rewards: Bulbapedia Totem Sticker table, cross-checked on Serebii Ultra Sun/
-- Ultra Moon Totem Stickers (20-100 stickers, Ultra Sun and Ultra Moon columns).
-- Scope: Pokémon Ultra Sun/Ultra Moon Totem Stickers.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_collectibles.
-- ============================================================================

INSERT INTO tracking.mainline_collectibles (
  id,
  version_group_id,
  game_id,
  collectible_type_id,
  slug,
  name,
  total_count,
  sprite_slug,
  reward_summary,
  sort_order,
  is_required_for_completion
)
VALUES
  -- Totem Stickers
  (16001, 16, NULL, 2, 'totem-stickers', 'Totem Stickers', 100, 'totem-sticker', 'Samson Oak gives a Totem-size Pokémon at 20, 40, 50, 70 and 80 stickers; all 100 earn a Totem-size Ribombee in Ultra Sun or Kommo-o in Ultra Moon.', 1, true);
