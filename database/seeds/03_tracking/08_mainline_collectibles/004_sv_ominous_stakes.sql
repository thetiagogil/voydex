-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Scarlet/Violet Ominous Stakes.
-- Cross-check: Bulbapedia Treasures of Ruin item/species pages and legacy Voydex seed.
-- Scope: Pokémon Scarlet/Violet Ominous Stakes.
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
  -- Purple Ominous Stakes
  (23001, 23, NULL, 5, 'purple-stakes', 'Purple Ominous Stakes', 8, 'purple-stake', 1, true),
  -- Yellow Ominous Stakes
  (23002, 23, NULL, 5, 'yellow-stakes', 'Yellow Ominous Stakes', 8, 'yellow-stake', 2, true),
  -- Green Ominous Stakes
  (23003, 23, NULL, 5, 'green-stakes', 'Green Ominous Stakes', 8, 'green-stake', 3, true),
  -- Blue Ominous Stakes
  (23004, 23, NULL, 5, 'blue-stakes', 'Blue Ominous Stakes', 8, 'blue-stake', 4, true);
