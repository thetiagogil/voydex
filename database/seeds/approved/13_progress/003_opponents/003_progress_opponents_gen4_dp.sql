-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (dp, VG 8)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Diamond/Pearl: Gym order differs from Platinum.
-- DP order: Roark, Gardenia, Fantina, Maylene, Wake, Byron, Candice, Volkner.
INSERT INTO
    progress.opponents (id, version_group_id, game_id, slug, name, opponent_role, sprite_url, sort_order)
VALUES
    (263, 8, NULL, 'roark', 'Roark', 'gym-leader', NULL, 1),
    (264, 8, NULL, 'gardenia', 'Gardenia', 'gym-leader', NULL, 2),
    (265, 8, NULL, 'fantina', 'Fantina', 'gym-leader', NULL, 3),
    (266, 8, NULL, 'maylene', 'Maylene', 'gym-leader', NULL, 4),
    (267, 8, NULL, 'crasher-wake', 'Crasher Wake', 'gym-leader', NULL, 5),
    (268, 8, NULL, 'byron', 'Byron', 'gym-leader', NULL, 6),
    (269, 8, NULL, 'candice', 'Candice', 'gym-leader', NULL, 7),
    (270, 8, NULL, 'volkner', 'Volkner', 'gym-leader', NULL, 8),
    (271, 8, NULL, 'aaron', 'Aaron', 'elite-four', NULL, 9),
    (272, 8, NULL, 'bertha', 'Bertha', 'elite-four', NULL, 10),
    (273, 8, NULL, 'flint', 'Flint', 'elite-four', NULL, 11),
    (274, 8, NULL, 'lucian', 'Lucian', 'elite-four', NULL, 12),
    (275, 8, NULL, 'cynthia', 'Cynthia', 'champion', NULL, 13);