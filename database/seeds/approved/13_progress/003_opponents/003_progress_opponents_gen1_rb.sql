-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (rb, VG 1)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- opponent_role values: gym-leader, elite-four, champion.
-- game_id NULL = shared across version group.
INSERT INTO
    progress.opponents (id, version_group_id, game_id, slug, name, opponent_role, sprite_url, sort_order)
VALUES
    (100, 1, NULL, 'brock', 'Brock', 'gym-leader', NULL, 1),
    (101, 1, NULL, 'misty', 'Misty', 'gym-leader', NULL, 2),
    (102, 1, NULL, 'lt-surge', 'Lt. Surge', 'gym-leader', NULL, 3),
    (103, 1, NULL, 'erika', 'Erika', 'gym-leader', NULL, 4),
    (104, 1, NULL, 'koga', 'Koga', 'gym-leader', NULL, 5),
    (105, 1, NULL, 'sabrina', 'Sabrina', 'gym-leader', NULL, 6),
    (106, 1, NULL, 'blaine', 'Blaine', 'gym-leader', NULL, 7),
    (107, 1, NULL, 'giovanni', 'Giovanni', 'gym-leader', NULL, 8),
    (108, 1, NULL, 'lorelei', 'Lorelei', 'elite-four', NULL, 9),
    (109, 1, NULL, 'bruno', 'Bruno', 'elite-four', NULL, 10),
    (110, 1, NULL, 'agatha', 'Agatha', 'elite-four', NULL, 11),
    (111, 1, NULL, 'lance', 'Lance', 'elite-four', NULL, 12),
    (112, 1, NULL, 'blue', 'Blue', 'champion', NULL, 13);