-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (swsh, VG 18)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Version-exclusive gyms: Bea/Gordie (Sword) vs Allister/Melony (Shield).
-- No traditional E4 — Champion Cup leads to Leon.
INSERT INTO
    progress.opponents (id, version_group_id, game_id, slug, name, opponent_role, sprite_url, sort_order)
VALUES
    -- Shared gym leaders
    (450, 18, NULL, 'milo', 'Milo', 'gym-leader', NULL, 1),
    (451, 18, NULL, 'nessa', 'Nessa', 'gym-leader', NULL, 2),
    (452, 18, NULL, 'kabu', 'Kabu', 'gym-leader', NULL, 3),
    (453, 18, NULL, 'opal', 'Opal', 'gym-leader', NULL, 5),
    (454, 18, NULL, 'piers', 'Piers', 'gym-leader', NULL, 7),
    (455, 18, NULL, 'raihan', 'Raihan', 'gym-leader', NULL, 8),
    -- Sword-exclusive gym leaders
    (456, 18, 31, 'bea', 'Bea', 'gym-leader', NULL, 4),
    (457, 18, 31, 'gordie', 'Gordie', 'gym-leader', NULL, 6),
    -- Shield-exclusive gym leaders
    (458, 18, 32, 'allister', 'Allister', 'gym-leader', NULL, 4),
    (459, 18, 32, 'melony', 'Melony', 'gym-leader', NULL, 6),
    -- Champion
    (460, 18, NULL, 'leon', 'Leon', 'champion', NULL, 9);