-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (hgss, VG 10)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- HeartGold/SoulSilver: Same as Crystal structure. Johto + Kanto + Red.
INSERT INTO
    progress.opponents (id, version_group_id, game_id, slug, name, opponent_role, sprite_url, sort_order)
VALUES
    -- Johto gym leaders
    (276, 10, NULL, 'falkner', 'Falkner', 'gym-leader', NULL, 1),
    (277, 10, NULL, 'bugsy', 'Bugsy', 'gym-leader', NULL, 2),
    (278, 10, NULL, 'whitney', 'Whitney', 'gym-leader', NULL, 3),
    (279, 10, NULL, 'morty', 'Morty', 'gym-leader', NULL, 4),
    (280, 10, NULL, 'chuck', 'Chuck', 'gym-leader', NULL, 5),
    (281, 10, NULL, 'jasmine', 'Jasmine', 'gym-leader', NULL, 6),
    (282, 10, NULL, 'pryce', 'Pryce', 'gym-leader', NULL, 7),
    (283, 10, NULL, 'clair', 'Clair', 'gym-leader', NULL, 8),
    -- Elite Four
    (284, 10, NULL, 'will', 'Will', 'elite-four', NULL, 9),
    (285, 10, NULL, 'koga', 'Koga', 'elite-four', NULL, 10),
    (286, 10, NULL, 'bruno', 'Bruno', 'elite-four', NULL, 11),
    (287, 10, NULL, 'karen', 'Karen', 'elite-four', NULL, 12),
    (288, 10, NULL, 'lance', 'Lance', 'champion', NULL, 13),
    -- Kanto gym leaders (post-game)
    (289, 10, NULL, 'lt-surge-kanto', 'Lt. Surge', 'gym-leader', NULL, 14),
    (290, 10, NULL, 'sabrina-kanto', 'Sabrina', 'gym-leader', NULL, 15),
    (291, 10, NULL, 'erika-kanto', 'Erika', 'gym-leader', NULL, 16),
    (292, 10, NULL, 'janine', 'Janine', 'gym-leader', NULL, 17),
    (293, 10, NULL, 'misty-kanto', 'Misty', 'gym-leader', NULL, 18),
    (294, 10, NULL, 'brock-kanto', 'Brock', 'gym-leader', NULL, 19),
    (295, 10, NULL, 'blaine-kanto', 'Blaine', 'gym-leader', NULL, 20),
    (296, 10, NULL, 'blue-kanto', 'Blue', 'gym-leader', NULL, 21),
    -- Mt. Silver
    (297, 10, NULL, 'red', 'Red', 'champion', NULL, 22);