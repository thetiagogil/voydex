-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (b2w2, VG 12)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- BW2: Different gym leaders from BW. Iris is champion. Colress is story boss.
-- Gym 1: Cheren (Normal), Gym 2: Roxie (Poison), Gym 8: Marlon (Water).
INSERT INTO
    progress.opponents (id, version_group_id, game_id, slug, name, opponent_role, sprite_url, sort_order)
VALUES
    (315, 12, NULL, 'cheren', 'Cheren', 'gym-leader', NULL, 1),
    (316, 12, NULL, 'roxie', 'Roxie', 'gym-leader', NULL, 2),
    (317, 12, NULL, 'burgh', 'Burgh', 'gym-leader', NULL, 3),
    (318, 12, NULL, 'elesa', 'Elesa', 'gym-leader', NULL, 4),
    (319, 12, NULL, 'clay', 'Clay', 'gym-leader', NULL, 5),
    (320, 12, NULL, 'skyla', 'Skyla', 'gym-leader', NULL, 6),
    (321, 12, NULL, 'drayden', 'Drayden', 'gym-leader', NULL, 7),
    (322, 12, NULL, 'marlon', 'Marlon', 'gym-leader', NULL, 8),
    (323, 12, NULL, 'shauntal', 'Shauntal', 'elite-four', NULL, 9),
    (324, 12, NULL, 'grimsley', 'Grimsley', 'elite-four', NULL, 10),
    (325, 12, NULL, 'caitlin', 'Caitlin', 'elite-four', NULL, 11),
    (326, 12, NULL, 'marshal', 'Marshal', 'elite-four', NULL, 12),
    (327, 12, NULL, 'iris', 'Iris', 'champion', NULL, 13),
    (328, 12, NULL, 'colress', 'Colress', 'story-boss', NULL, 14),
    (329, 12, NULL, 'ghetsis', 'Ghetsis', 'story-boss', NULL, 15);