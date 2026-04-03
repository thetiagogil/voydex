-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (yellow, VG 2)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Same gym structure as RB. Identical leaders and E4.
INSERT INTO
    progress.opponents (id, version_group_id, game_id, slug, name, opponent_role, sprite_url, sort_order)
VALUES
    (115, 2, NULL, 'brock', 'Brock', 'gym-leader', NULL, 1),
    (116, 2, NULL, 'misty', 'Misty', 'gym-leader', NULL, 2),
    (117, 2, NULL, 'lt-surge', 'Lt. Surge', 'gym-leader', NULL, 3),
    (118, 2, NULL, 'erika', 'Erika', 'gym-leader', NULL, 4),
    (119, 2, NULL, 'koga', 'Koga', 'gym-leader', NULL, 5),
    (120, 2, NULL, 'sabrina', 'Sabrina', 'gym-leader', NULL, 6),
    (121, 2, NULL, 'blaine', 'Blaine', 'gym-leader', NULL, 7),
    (122, 2, NULL, 'giovanni', 'Giovanni', 'gym-leader', NULL, 8),
    (123, 2, NULL, 'lorelei', 'Lorelei', 'elite-four', NULL, 9),
    (124, 2, NULL, 'bruno', 'Bruno', 'elite-four', NULL, 10),
    (125, 2, NULL, 'agatha', 'Agatha', 'elite-four', NULL, 11),
    (126, 2, NULL, 'lance', 'Lance', 'elite-four', NULL, 12),
    (127, 2, NULL, 'blue', 'Blue', 'champion', NULL, 13);