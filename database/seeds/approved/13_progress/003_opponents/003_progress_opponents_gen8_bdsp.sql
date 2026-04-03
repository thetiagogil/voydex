-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (bdsp, VG 21)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- BDSP: Faithful DP remakes. Same gym order as DP (Fantina 3rd).
INSERT INTO
    progress.opponents (id, version_group_id, game_id, slug, name, opponent_role, sprite_url, sort_order)
VALUES
    (480, 21, NULL, 'roark', 'Roark', 'gym-leader', NULL, 1),
    (481, 21, NULL, 'gardenia', 'Gardenia', 'gym-leader', NULL, 2),
    (482, 21, NULL, 'fantina', 'Fantina', 'gym-leader', NULL, 3),
    (483, 21, NULL, 'maylene', 'Maylene', 'gym-leader', NULL, 4),
    (484, 21, NULL, 'crasher-wake', 'Crasher Wake', 'gym-leader', NULL, 5),
    (485, 21, NULL, 'byron', 'Byron', 'gym-leader', NULL, 6),
    (486, 21, NULL, 'candice', 'Candice', 'gym-leader', NULL, 7),
    (487, 21, NULL, 'volkner', 'Volkner', 'gym-leader', NULL, 8),
    (488, 21, NULL, 'aaron', 'Aaron', 'elite-four', NULL, 9),
    (489, 21, NULL, 'bertha', 'Bertha', 'elite-four', NULL, 10),
    (490, 21, NULL, 'flint', 'Flint', 'elite-four', NULL, 11),
    (491, 21, NULL, 'lucian', 'Lucian', 'elite-four', NULL, 12),
    (492, 21, NULL, 'cynthia', 'Cynthia', 'champion', NULL, 13);