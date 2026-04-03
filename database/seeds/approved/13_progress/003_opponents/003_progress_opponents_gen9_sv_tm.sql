-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (sv-tm, VG 24)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Teal Mask DLC. Kitakami storyline with Kieran and Carmine.
INSERT INTO
    progress.opponents (id, version_group_id, game_id, slug, name, opponent_role, sprite_url, sort_order)
VALUES
    (520, 24, NULL, 'kieran', 'Kieran', 'story-boss', NULL, 1),
    (521, 24, NULL, 'carmine', 'Carmine', 'story-boss', NULL, 2);