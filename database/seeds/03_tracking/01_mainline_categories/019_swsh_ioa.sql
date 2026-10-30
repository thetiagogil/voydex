-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon The Isle of Armor tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for The Isle of Armor story and optional progression.
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
  (1901, 19, 'dlc-story', 'DLC Story', 'story', 'main-story', false, 1),
  -- Side Content
  (1902, 19, 'side-content', 'Side Content', 'story', 'side-content', false, 2);
