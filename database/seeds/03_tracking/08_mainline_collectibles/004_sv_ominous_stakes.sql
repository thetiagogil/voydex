-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Serebii Scarlet/Violet Ominous Stakes.
-- Cross-check: Bulbapedia Treasures of Ruin item/species pages and legacy Voydex seed.
-- Rewards: Bulbapedia Grasswither, Icerend, Groundblight and Firescourge Shrine
-- pages (stake colour, shrine and Treasure of Ruin); cross-checked on Serebii
-- Scarlet/Violet Stakes and Pokédex locations (shrine of each Treasure of Ruin).
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
  reward_summary,
  sort_order,
  is_required_for_completion
)
VALUES
  -- Purple Ominous Stakes
  (23001, 23, NULL, 5, 'purple-stakes', 'Purple Ominous Stakes', 8, 'purple-stake', 'Pulling all eight unseals the Grasswither Shrine, where you can catch Wo-Chien.', 1, true),
  -- Yellow Ominous Stakes
  (23002, 23, NULL, 5, 'yellow-stakes', 'Yellow Ominous Stakes', 8, 'yellow-stake', 'Pulling all eight unseals the Icerend Shrine, where you can catch Chien-Pao.', 2, true),
  -- Green Ominous Stakes
  (23003, 23, NULL, 5, 'green-stakes', 'Green Ominous Stakes', 8, 'green-stake', 'Pulling all eight unseals the Groundblight Shrine, where you can catch Ting-Lu.', 3, true),
  -- Blue Ominous Stakes
  (23004, 23, NULL, 5, 'blue-stakes', 'Blue Ominous Stakes', 8, 'blue-stake', 'Pulling all eight unseals the Firescourge Shrine, where you can catch Chi-Yu.', 4, true);
