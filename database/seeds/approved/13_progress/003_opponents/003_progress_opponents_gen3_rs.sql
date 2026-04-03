-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (rs, VG 5)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Ruby/Sapphire: Wallace is 8th gym leader, Steven is champion.
-- (Differs from Emerald where Juan is 8th gym, Wallace is champion.)
INSERT INTO
    progress.opponents (id, version_group_id, game_id, slug, name, opponent_role, sprite_url, sort_order)
VALUES
    (213, 5, NULL, 'roxanne', 'Roxanne', 'gym-leader', NULL, 1),
    (214, 5, NULL, 'brawly', 'Brawly', 'gym-leader', NULL, 2),
    (215, 5, NULL, 'wattson', 'Wattson', 'gym-leader', NULL, 3),
    (216, 5, NULL, 'flannery', 'Flannery', 'gym-leader', NULL, 4),
    (217, 5, NULL, 'norman', 'Norman', 'gym-leader', NULL, 5),
    (218, 5, NULL, 'winona', 'Winona', 'gym-leader', NULL, 6),
    (219, 5, NULL, 'tate-and-liza', 'Tate & Liza', 'gym-leader', NULL, 7),
    (220, 5, NULL, 'wallace', 'Wallace', 'gym-leader', NULL, 8),
    (221, 5, NULL, 'sidney', 'Sidney', 'elite-four', NULL, 9),
    (222, 5, NULL, 'phoebe', 'Phoebe', 'elite-four', NULL, 10),
    (223, 5, NULL, 'glacia', 'Glacia', 'elite-four', NULL, 11),
    (224, 5, NULL, 'drake', 'Drake', 'elite-four', NULL, 12),
    (225, 5, NULL, 'steven', 'Steven', 'champion', NULL, 13);