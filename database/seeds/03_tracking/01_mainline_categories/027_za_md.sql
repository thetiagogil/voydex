-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon Mega Dimension tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for Mega Dimension story and optional progression.
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
  -- DLC Story
  (2701, 27, 'dlc-story', 'DLC Story', 'story', 'main-story', false, 1),
  -- Side Content
  (2702, 27, 'side-content', 'Side Content', 'story', 'side-content', false, 2);
