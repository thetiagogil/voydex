-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Totem Sticker.
-- Cross-check: Serebii Ultra Sun/Ultra Moon Totem Stickers and legacy Voydex seed.
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
  sort_order,
  is_required_for_completion
)
VALUES
  -- Totem Stickers
  (16001, 16, NULL, 2, 'totem-stickers', 'Totem Stickers', 100, 'totem-sticker', 1, true);
