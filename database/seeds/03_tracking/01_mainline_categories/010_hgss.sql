-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon HeartGold / SoulSilver shared tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for HeartGold / SoulSilver story and optional progression.
-- The Pokémon League is one milestone at the end of Main Story (the Elite Four,
-- Champion Lance and the Hall of Fame back to back), so it has no chapter.
-- Kanto and Red on Mt. Silver are Post Game.
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
  -- Post Game
  (1003, 10, 'post-game', 'Post Game', 'story', 'post-game', false, 2),
  -- Side Content
  (1004, 10, 'side-content', 'Side Content', 'story', 'side-content', false, 3);
