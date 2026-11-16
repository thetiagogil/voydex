-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon Black / White shared tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for Black / White story and optional progression.
-- The Pokémon League is one milestone at the end of Main Story (the Elite Four,
-- then N and Ghetsis in N's Castle, back to back), so it has no chapter.
-- Champion Alder is Post Game.
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
  (1101, 11, 'main-story', 'Main Story', 'story', 'main-story', false, 1),
  -- Post Game
  (1103, 11, 'post-game', 'Post Game', 'story', 'post-game', false, 2),
  -- Side Content
  (1104, 11, 'side-content', 'Side Content', 'story', 'side-content', false, 3);
