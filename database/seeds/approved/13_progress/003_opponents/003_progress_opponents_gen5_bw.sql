-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (bw, VG 11)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- BW unique story: N becomes champion, then player fights N + Ghetsis.
-- Alder is battled post-game. Iris is gym leader in White only (same badge).
INSERT INTO
    progress.opponents (id, version_group_id, game_id, slug, name, opponent_role, sprite_url, sort_order)
VALUES
    (300, 11, NULL, 'cilan-chili-cress', 'Cilan / Chili / Cress', 'gym-leader', NULL, 1),
    (301, 11, NULL, 'lenora', 'Lenora', 'gym-leader', NULL, 2),
    (302, 11, NULL, 'burgh', 'Burgh', 'gym-leader', NULL, 3),
    (303, 11, NULL, 'elesa', 'Elesa', 'gym-leader', NULL, 4),
    (304, 11, NULL, 'clay', 'Clay', 'gym-leader', NULL, 5),
    (305, 11, NULL, 'skyla', 'Skyla', 'gym-leader', NULL, 6),
    (306, 11, NULL, 'brycen', 'Brycen', 'gym-leader', NULL, 7),
    (307, 11, NULL, 'drayden', 'Drayden', 'gym-leader', NULL, 8),
    (308, 11, NULL, 'shauntal', 'Shauntal', 'elite-four', NULL, 9),
    (309, 11, NULL, 'grimsley', 'Grimsley', 'elite-four', NULL, 10),
    (310, 11, NULL, 'caitlin', 'Caitlin', 'elite-four', NULL, 11),
    (311, 11, NULL, 'marshal', 'Marshal', 'elite-four', NULL, 12),
    (312, 11, NULL, 'n', 'N', 'story-boss', NULL, 13),
    (313, 11, NULL, 'ghetsis', 'Ghetsis', 'story-boss', NULL, 14),
    (314, 11, NULL, 'alder', 'Alder', 'champion', NULL, 15);