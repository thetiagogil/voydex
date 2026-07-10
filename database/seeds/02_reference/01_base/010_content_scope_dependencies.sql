-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Official Pokémon DLC progression and packaging requirements.
-- Cross-check: Bulbapedia and Serebii DLC progression summaries.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Ordered optional content dependencies for cumulative reference-data resolution.
-- ============================================================================
INSERT INTO reference.content_scope_dependencies (version_group_id, required_version_group_id, dependency_kind, sort_order)
VALUES
  -- The Crown Tundra is part of the Sword / Shield Expansion Pass package after The Isle of Armor
  (20, 19, 'required', 1),
  -- The Indigo Disk requires The Teal Mask in the canonical Scarlet / Violet DLC progression
  (25, 24, 'required', 1);
