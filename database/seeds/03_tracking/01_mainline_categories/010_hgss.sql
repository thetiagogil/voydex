-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon HeartGold / SoulSilver tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for HeartGold / SoulSilver story and optional
-- progression.
-- ============================================================================

INSERT INTO tracking.mainline_categories (
  id,
  version_group_id,
  slug,
  name,
  category_kind,
  chapter_kind,
  plays_in_any_order,
  sort_order
) VALUES
  -- Main Story
  (1001, 10, 'main-story', 'Main Story', 'story', 'main-story', false, 1),
  -- Pokémon League
  (1002, 10, 'pokemon-league', 'Pokémon League', 'story', 'main-story', false, 2),
  -- Post Game
  (1003, 10, 'post-game', 'Post Game', 'story', 'post-game', false, 3),
  -- Side Content
  (1004, 10, 'side-content', 'Side Content', 'story', 'side-content', false, 4);
