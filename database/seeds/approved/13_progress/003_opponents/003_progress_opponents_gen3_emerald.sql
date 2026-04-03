-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (emerald, VG 6)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Emerald: Juan replaces Wallace as 8th gym leader. Wallace is champion.
INSERT INTO
    progress.opponents (id, version_group_id, game_id, slug, name, opponent_role, sprite_url, sort_order)
VALUES
    (200, 6, NULL, 'roxanne', 'Roxanne', 'gym-leader', NULL, 1),
    (201, 6, NULL, 'brawly', 'Brawly', 'gym-leader', NULL, 2),
    (202, 6, NULL, 'wattson', 'Wattson', 'gym-leader', NULL, 3),
    (203, 6, NULL, 'flannery', 'Flannery', 'gym-leader', NULL, 4),
    (204, 6, NULL, 'norman', 'Norman', 'gym-leader', NULL, 5),
    (205, 6, NULL, 'winona', 'Winona', 'gym-leader', NULL, 6),
    (206, 6, NULL, 'tate-and-liza', 'Tate & Liza', 'gym-leader', NULL, 7),
    (207, 6, NULL, 'juan', 'Juan', 'gym-leader', NULL, 8),
    (208, 6, NULL, 'sidney', 'Sidney', 'elite-four', NULL, 9),
    (209, 6, NULL, 'phoebe', 'Phoebe', 'elite-four', NULL, 10),
    (210, 6, NULL, 'glacia', 'Glacia', 'elite-four', NULL, 11),
    (211, 6, NULL, 'drake', 'Drake', 'elite-four', NULL, 12),
    (212, 6, NULL, 'wallace', 'Wallace', 'champion', NULL, 13);