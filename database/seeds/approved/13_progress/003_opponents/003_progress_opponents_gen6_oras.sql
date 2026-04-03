-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (oras, VG 14)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- ORAS: Remake of RS. Wallace is 8th gym, Steven is champion.
INSERT INTO
    progress.opponents (id, version_group_id, game_id, slug, name, opponent_role, sprite_url, sort_order)
VALUES
    (363, 14, NULL, 'roxanne', 'Roxanne', 'gym-leader', NULL, 1),
    (364, 14, NULL, 'brawly', 'Brawly', 'gym-leader', NULL, 2),
    (365, 14, NULL, 'wattson', 'Wattson', 'gym-leader', NULL, 3),
    (366, 14, NULL, 'flannery', 'Flannery', 'gym-leader', NULL, 4),
    (367, 14, NULL, 'norman', 'Norman', 'gym-leader', NULL, 5),
    (368, 14, NULL, 'winona', 'Winona', 'gym-leader', NULL, 6),
    (369, 14, NULL, 'tate-and-liza', 'Tate & Liza', 'gym-leader', NULL, 7),
    (370, 14, NULL, 'wallace', 'Wallace', 'gym-leader', NULL, 8),
    (371, 14, NULL, 'sidney', 'Sidney', 'elite-four', NULL, 9),
    (372, 14, NULL, 'phoebe', 'Phoebe', 'elite-four', NULL, 10),
    (373, 14, NULL, 'glacia', 'Glacia', 'elite-four', NULL, 11),
    (374, 14, NULL, 'drake', 'Drake', 'elite-four', NULL, 12),
    (375, 14, NULL, 'steven', 'Steven', 'champion', NULL, 13);