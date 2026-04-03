-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (crystal, VG 4)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Crystal: Johto + Kanto + Mt. Silver. Same as GS plus Suicune event.
INSERT INTO
    progress.opponents (id, version_group_id, game_id, slug, name, opponent_role, sprite_url, sort_order)
VALUES
    -- Johto gym leaders
    (150, 4, NULL, 'falkner', 'Falkner', 'gym-leader', NULL, 1),
    (151, 4, NULL, 'bugsy', 'Bugsy', 'gym-leader', NULL, 2),
    (152, 4, NULL, 'whitney', 'Whitney', 'gym-leader', NULL, 3),
    (153, 4, NULL, 'morty', 'Morty', 'gym-leader', NULL, 4),
    (154, 4, NULL, 'chuck', 'Chuck', 'gym-leader', NULL, 5),
    (155, 4, NULL, 'jasmine', 'Jasmine', 'gym-leader', NULL, 6),
    (156, 4, NULL, 'pryce', 'Pryce', 'gym-leader', NULL, 7),
    (157, 4, NULL, 'clair', 'Clair', 'gym-leader', NULL, 8),
    -- Johto Elite Four
    (158, 4, NULL, 'will', 'Will', 'elite-four', NULL, 9),
    (159, 4, NULL, 'koga', 'Koga', 'elite-four', NULL, 10),
    (160, 4, NULL, 'bruno', 'Bruno', 'elite-four', NULL, 11),
    (161, 4, NULL, 'karen', 'Karen', 'elite-four', NULL, 12),
    (162, 4, NULL, 'lance', 'Lance', 'champion', NULL, 13),
    -- Kanto gym leaders (post-game)
    (163, 4, NULL, 'lt-surge-kanto', 'Lt. Surge', 'gym-leader', NULL, 14),
    (164, 4, NULL, 'sabrina-kanto', 'Sabrina', 'gym-leader', NULL, 15),
    (165, 4, NULL, 'erika-kanto', 'Erika', 'gym-leader', NULL, 16),
    (166, 4, NULL, 'janine', 'Janine', 'gym-leader', NULL, 17),
    (167, 4, NULL, 'misty-kanto', 'Misty', 'gym-leader', NULL, 18),
    (168, 4, NULL, 'brock-kanto', 'Brock', 'gym-leader', NULL, 19),
    (169, 4, NULL, 'blaine-kanto', 'Blaine', 'gym-leader', NULL, 20),
    (170, 4, NULL, 'blue-kanto', 'Blue', 'gym-leader', NULL, 21),
    -- Mt. Silver
    (171, 4, NULL, 'red', 'Red', 'champion', NULL, 22);