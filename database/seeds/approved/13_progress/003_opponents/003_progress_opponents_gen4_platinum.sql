-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (platinum, VG 9)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Platinum gym order: Roark, Gardenia, Maylene, Wake, Fantina, Byron, Candice, Volkner.
INSERT INTO
    progress.opponents (id, version_group_id, game_id, slug, name, opponent_role, sprite_url, sort_order)
VALUES
    (250, 9, NULL, 'roark', 'Roark', 'gym-leader', NULL, 1),
    (251, 9, NULL, 'gardenia', 'Gardenia', 'gym-leader', NULL, 2),
    (252, 9, NULL, 'maylene', 'Maylene', 'gym-leader', NULL, 3),
    (253, 9, NULL, 'crasher-wake', 'Crasher Wake', 'gym-leader', NULL, 4),
    (254, 9, NULL, 'fantina', 'Fantina', 'gym-leader', NULL, 5),
    (255, 9, NULL, 'byron', 'Byron', 'gym-leader', NULL, 6),
    (256, 9, NULL, 'candice', 'Candice', 'gym-leader', NULL, 7),
    (257, 9, NULL, 'volkner', 'Volkner', 'gym-leader', NULL, 8),
    (258, 9, NULL, 'aaron', 'Aaron', 'elite-four', NULL, 9),
    (259, 9, NULL, 'bertha', 'Bertha', 'elite-four', NULL, 10),
    (260, 9, NULL, 'flint', 'Flint', 'elite-four', NULL, 11),
    (261, 9, NULL, 'lucian', 'Lucian', 'elite-four', NULL, 12),
    (262, 9, NULL, 'cynthia', 'Cynthia', 'champion', NULL, 13);