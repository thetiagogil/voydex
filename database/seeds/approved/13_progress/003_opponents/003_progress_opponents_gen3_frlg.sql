-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (frlg, VG 7)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- FireRed/LeafGreen: Same Kanto gym structure as RB.
INSERT INTO
    progress.opponents (id, version_group_id, game_id, slug, name, opponent_role, sprite_url, sort_order)
VALUES
    (226, 7, NULL, 'brock', 'Brock', 'gym-leader', NULL, 1),
    (227, 7, NULL, 'misty', 'Misty', 'gym-leader', NULL, 2),
    (228, 7, NULL, 'lt-surge', 'Lt. Surge', 'gym-leader', NULL, 3),
    (229, 7, NULL, 'erika', 'Erika', 'gym-leader', NULL, 4),
    (230, 7, NULL, 'koga', 'Koga', 'gym-leader', NULL, 5),
    (231, 7, NULL, 'sabrina', 'Sabrina', 'gym-leader', NULL, 6),
    (232, 7, NULL, 'blaine', 'Blaine', 'gym-leader', NULL, 7),
    (233, 7, NULL, 'giovanni', 'Giovanni', 'gym-leader', NULL, 8),
    (234, 7, NULL, 'lorelei', 'Lorelei', 'elite-four', NULL, 9),
    (235, 7, NULL, 'bruno', 'Bruno', 'elite-four', NULL, 10),
    (236, 7, NULL, 'agatha', 'Agatha', 'elite-four', NULL, 11),
    (237, 7, NULL, 'lance', 'Lance', 'elite-four', NULL, 12),
    (238, 7, NULL, 'blue', 'Blue', 'champion', NULL, 13);