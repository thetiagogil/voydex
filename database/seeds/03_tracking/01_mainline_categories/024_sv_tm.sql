-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Voydex mainline module product taxonomy.
-- Scope: Pokémon The Teal Mask tracking categories.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide categories for The Teal Mask story and optional progression.
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
  (2401, 24, 'dlc-story', 'DLC Story', 'story', 'main-story', false, 1),
  -- Side Content
  (2402, 24, 'side-content', 'Side Content', 'story', 'side-content', false, 2);
