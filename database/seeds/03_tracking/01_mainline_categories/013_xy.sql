-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon X / Y shared tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for X / Y story and optional progression.
-- The Pokémon League is one milestone at the end of Main Story (the Elite Four,
-- Champion Diantha, the Hall of Fame and AZ at the parade), so it has no
-- chapter.
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
  (1301, 13, 'main-story', 'Main Story', 'story', 'main-story', false, 1),
  -- Post Game
  (1303, 13, 'post-game', 'Post Game', 'story', 'post-game', false, 2),
  -- Side Content
  (1304, 13, 'side-content', 'Side Content', 'story', 'side-content', false, 3);
