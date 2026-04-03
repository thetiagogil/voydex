-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (gs, VG 3)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Gold/Silver: same Johto+Kanto gym structure as Crystal.
-- No Crystal-exclusive Suicune event. Eusine not a required battle.
INSERT INTO
    progress.opponents (id, version_group_id, game_id, slug, name, opponent_role, sprite_url, sort_order)
VALUES
    -- Johto gym leaders
    (128, 3, NULL, 'falkner', 'Falkner', 'gym-leader', NULL, 1),
    (129, 3, NULL, 'bugsy', 'Bugsy', 'gym-leader', NULL, 2),
    (130, 3, NULL, 'whitney', 'Whitney', 'gym-leader', NULL, 3),
    (131, 3, NULL, 'morty', 'Morty', 'gym-leader', NULL, 4),
    (132, 3, NULL, 'chuck', 'Chuck', 'gym-leader', NULL, 5),
    (133, 3, NULL, 'jasmine', 'Jasmine', 'gym-leader', NULL, 6),
    (134, 3, NULL, 'pryce', 'Pryce', 'gym-leader', NULL, 7),
    (135, 3, NULL, 'clair', 'Clair', 'gym-leader', NULL, 8),
    -- Elite Four
    (136, 3, NULL, 'will', 'Will', 'elite-four', NULL, 9),
    (137, 3, NULL, 'koga', 'Koga', 'elite-four', NULL, 10),
    (138, 3, NULL, 'bruno', 'Bruno', 'elite-four', NULL, 11),
    (139, 3, NULL, 'karen', 'Karen', 'elite-four', NULL, 12),
    (140, 3, NULL, 'lance', 'Lance', 'champion', NULL, 13),
    -- Kanto gym leaders (post-game)
    (141, 3, NULL, 'lt-surge-kanto', 'Lt. Surge', 'gym-leader', NULL, 14),
    (142, 3, NULL, 'sabrina-kanto', 'Sabrina', 'gym-leader', NULL, 15),
    (143, 3, NULL, 'erika-kanto', 'Erika', 'gym-leader', NULL, 16),
    (144, 3, NULL, 'janine', 'Janine', 'gym-leader', NULL, 17),
    (145, 3, NULL, 'misty-kanto', 'Misty', 'gym-leader', NULL, 18),
    (146, 3, NULL, 'brock-kanto', 'Brock', 'gym-leader', NULL, 19),
    (147, 3, NULL, 'blaine-kanto', 'Blaine', 'gym-leader', NULL, 20),
    (148, 3, NULL, 'blue-kanto', 'Blue', 'gym-leader', NULL, 21),
    -- Mt. Silver
    (149, 3, NULL, 'red', 'Red', 'champion', NULL, 22);