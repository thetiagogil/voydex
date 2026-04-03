-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (swsh-ioa, VG 19)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Isle of Armor DLC. Mustard is the dojo master.
-- Klara (Sword) / Avery (Shield) are version-exclusive rivals.
INSERT INTO
    progress.opponents (id, version_group_id, game_id, slug, name, opponent_role, sprite_url, sort_order)
VALUES
    (461, 19, NULL, 'mustard', 'Mustard', 'story-boss', NULL, 1),
    (462, 19, 31, 'klara', 'Klara', 'story-boss', NULL, 2),
    (463, 19, 32, 'avery', 'Avery', 'story-boss', NULL, 2);