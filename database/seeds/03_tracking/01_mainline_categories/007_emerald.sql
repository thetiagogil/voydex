-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon Emerald tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for Emerald story and optional progression.
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
  (701, 7, 'main-story', 'Main Story', 'story', 'main-story', false, 1),
  -- Pokémon League
  (702, 7, 'pokemon-league', 'Pokémon League', 'story', 'main-story', false, 2),
  -- Post Game
  (703, 7, 'post-game', 'Post Game', 'story', 'post-game', false, 3),
  -- Side Content
  (704, 7, 'side-content', 'Side Content', 'story', 'side-content', false, 4);
