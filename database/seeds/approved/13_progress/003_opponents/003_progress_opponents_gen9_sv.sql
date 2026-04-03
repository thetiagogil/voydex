-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (sv, VG 23)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Three story paths + convergence. Titan fights are checkpoints, not opponents.
INSERT INTO
    progress.opponents (id, version_group_id, game_id, slug, name, opponent_role, sprite_url, sort_order)
VALUES
    -- Victory Road gym leaders
    (500, 23, NULL, 'katy', 'Katy', 'gym-leader', NULL, 1),
    (501, 23, NULL, 'brassius', 'Brassius', 'gym-leader', NULL, 2),
    (502, 23, NULL, 'iono', 'Iono', 'gym-leader', NULL, 3),
    (503, 23, NULL, 'kofu', 'Kofu', 'gym-leader', NULL, 4),
    (504, 23, NULL, 'larry', 'Larry', 'gym-leader', NULL, 5),
    (505, 23, NULL, 'ryme', 'Ryme', 'gym-leader', NULL, 6),
    (506, 23, NULL, 'tulip', 'Tulip', 'gym-leader', NULL, 7),
    (507, 23, NULL, 'grusha', 'Grusha', 'gym-leader', NULL, 8),
    -- Starfall Street bosses
    (508, 23, NULL, 'giacomo', 'Giacomo', 'team-star-boss', NULL, 9),
    (509, 23, NULL, 'mela', 'Mela', 'team-star-boss', NULL, 10),
    (510, 23, NULL, 'atticus', 'Atticus', 'team-star-boss', NULL, 11),
    (511, 23, NULL, 'ortega', 'Ortega', 'team-star-boss', NULL, 12),
    (512, 23, NULL, 'eri', 'Eri', 'team-star-boss', NULL, 13),
    -- Elite Four
    (513, 23, NULL, 'rika', 'Rika', 'elite-four', NULL, 14),
    (514, 23, NULL, 'poppy', 'Poppy', 'elite-four', NULL, 15),
    (515, 23, NULL, 'larry-e4', 'Larry', 'elite-four', NULL, 16),
    (516, 23, NULL, 'hassel', 'Hassel', 'elite-four', NULL, 17),
    -- Champions
    (517, 23, NULL, 'geeta', 'Geeta', 'champion', NULL, 18),
    (518, 23, NULL, 'nemona', 'Nemona', 'champion', NULL, 19),
    -- Story boss
    (519, 23, NULL, 'professor-ai', 'Professor AI', 'story-boss', NULL, 20);