-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.opponents
-- Scope: all seeded version groups
-- ============================================================================
-- Important Notes
-- ============================================================================
-- opponent_role values: gym-leader, elite-four, champion, trial-captain,
-- kahuna, titan, team-star-boss, story-boss.
-- game_id NULL = shared across version group.
-- game_id NOT NULL = game-specific opponent.
INSERT INTO
    progress.opponents (id, version_group_id, game_id, slug, name, opponent_role, sprite_url, sort_order)
VALUES
    -- ========================================================================
    -- Gen 1 — Red / Blue (VG 1)
    -- ========================================================================
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
    (112, 1, NULL, 'blue', 'Blue', 'champion', NULL, 13),
    -- ========================================================================
    -- Gen 2 — Crystal (VG 4)
    -- ========================================================================
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
    (171, 4, NULL, 'red', 'Red', 'champion', NULL, 22),
    -- ========================================================================
    -- Gen 3 — Emerald (VG 6)
    -- ========================================================================
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
    (212, 6, NULL, 'wallace', 'Wallace', 'champion', NULL, 13),
    -- ========================================================================
    -- Gen 4 — Platinum (VG 9)
    -- ========================================================================
    (250, 9, NULL, 'roark', 'Roark', 'gym-leader', NULL, 1),
    (251, 9, NULL, 'gardenia', 'Gardenia', 'gym-leader', NULL, 2),
    (252, 9, NULL, 'maylene', 'Maylene', 'gym-leader', NULL, 3),
    (253, 9, NULL, 'crasher-wake', 'Crasher Wake', 'gym-leader', NULL, 4),
    (254, 9, NULL, 'fantina', 'Fantina', 'gym-leader', NULL, 5),
    (255, 9, NULL, 'byron', 'Byron', 'gym-leader', NULL, 6),
    (256, 9, NULL, 'candice', 'Candice', 'gym-leader', NULL, 7),
    (257, 9, NULL, 'volkner', 'Volkner', 'gym-leader', NULL, 8),
    (258, 9, NULL, 'aaron', 'Aaron', 'elite-four', NULL, 9),
    (259, 9, NULL, 'bertha', 'Bertha', 'elite-four', NULL, 10),
    (260, 9, NULL, 'flint', 'Flint', 'elite-four', NULL, 11),
    (261, 9, NULL, 'lucian', 'Lucian', 'elite-four', NULL, 12),
    (262, 9, NULL, 'cynthia', 'Cynthia', 'champion', NULL, 13),
    -- ========================================================================
    -- Gen 5 — Black / White (VG 11)
    -- ========================================================================
    (300, 11, NULL, 'cilan-chili-cress', 'Cilan / Chili / Cress', 'gym-leader', NULL, 1),
    (301, 11, NULL, 'lenora', 'Lenora', 'gym-leader', NULL, 2),
    (302, 11, NULL, 'burgh', 'Burgh', 'gym-leader', NULL, 3),
    (303, 11, NULL, 'elesa', 'Elesa', 'gym-leader', NULL, 4),
    (304, 11, NULL, 'clay', 'Clay', 'gym-leader', NULL, 5),
    (305, 11, NULL, 'skyla', 'Skyla', 'gym-leader', NULL, 6),
    (306, 11, NULL, 'brycen', 'Brycen', 'gym-leader', NULL, 7),
    (307, 11, NULL, 'drayden', 'Drayden', 'gym-leader', NULL, 8),
    (308, 11, NULL, 'shauntal', 'Shauntal', 'elite-four', NULL, 9),
    (309, 11, NULL, 'grimsley', 'Grimsley', 'elite-four', NULL, 10),
    (310, 11, NULL, 'caitlin', 'Caitlin', 'elite-four', NULL, 11),
    (311, 11, NULL, 'marshal', 'Marshal', 'elite-four', NULL, 12),
    (312, 11, NULL, 'n', 'N', 'story-boss', NULL, 13),
    (313, 11, NULL, 'ghetsis', 'Ghetsis', 'story-boss', NULL, 14),
    (314, 11, NULL, 'alder', 'Alder', 'champion', NULL, 15),
    -- ========================================================================
    -- Gen 6 — X / Y (VG 13)
    -- ========================================================================
    (350, 13, NULL, 'viola', 'Viola', 'gym-leader', NULL, 1),
    (351, 13, NULL, 'grant', 'Grant', 'gym-leader', NULL, 2),
    (352, 13, NULL, 'korrina', 'Korrina', 'gym-leader', NULL, 3),
    (353, 13, NULL, 'ramos', 'Ramos', 'gym-leader', NULL, 4),
    (354, 13, NULL, 'clemont', 'Clemont', 'gym-leader', NULL, 5),
    (355, 13, NULL, 'valerie', 'Valerie', 'gym-leader', NULL, 6),
    (356, 13, NULL, 'olympia', 'Olympia', 'gym-leader', NULL, 7),
    (357, 13, NULL, 'wulfric', 'Wulfric', 'gym-leader', NULL, 8),
    (358, 13, NULL, 'malva', 'Malva', 'elite-four', NULL, 9),
    (359, 13, NULL, 'siebold', 'Siebold', 'elite-four', NULL, 10),
    (360, 13, NULL, 'wikstrom', 'Wikstrom', 'elite-four', NULL, 11),
    (361, 13, NULL, 'drasna', 'Drasna', 'elite-four', NULL, 12),
    (362, 13, NULL, 'diantha', 'Diantha', 'champion', NULL, 13),
    -- ========================================================================
    -- Gen 7 — Ultra Sun / Ultra Moon (VG 16)
    -- ========================================================================
    -- Trial Captains
    (400, 16, NULL, 'ilima', 'Ilima', 'trial-captain', NULL, 1),
    (401, 16, NULL, 'lana', 'Lana', 'trial-captain', NULL, 2),
    (402, 16, NULL, 'kiawe', 'Kiawe', 'trial-captain', NULL, 3),
    (403, 16, NULL, 'mallow', 'Mallow', 'trial-captain', NULL, 4),
    (404, 16, NULL, 'sophocles', 'Sophocles', 'trial-captain', NULL, 5),
    (405, 16, NULL, 'acerola', 'Acerola', 'trial-captain', NULL, 6),
    (406, 16, NULL, 'mina', 'Mina', 'trial-captain', NULL, 7),
    -- Kahunas
    (407, 16, NULL, 'hala', 'Hala', 'kahuna', NULL, 8),
    (408, 16, NULL, 'olivia', 'Olivia', 'kahuna', NULL, 9),
    (409, 16, NULL, 'nanu', 'Nanu', 'kahuna', NULL, 10),
    (410, 16, NULL, 'hapu', 'Hapu', 'kahuna', NULL, 11),
    -- Elite Four
    (411, 16, NULL, 'molayne', 'Molayne', 'elite-four', NULL, 12),
    (412, 16, NULL, 'olivia-e4', 'Olivia', 'elite-four', NULL, 13),
    (413, 16, NULL, 'acerola-e4', 'Acerola', 'elite-four', NULL, 14),
    (414, 16, NULL, 'kahili', 'Kahili', 'elite-four', NULL, 15),
    -- Champion
    (415, 16, NULL, 'hau', 'Hau', 'champion', NULL, 16),
    -- Story boss
    (416, 16, NULL, 'ultra-necrozma', 'Ultra Necrozma', 'story-boss', NULL, 17),
    -- ========================================================================
    -- Gen 8 — Sword / Shield (VG 18)
    -- ========================================================================
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
    (460, 18, NULL, 'leon', 'Leon', 'champion', NULL, 9),
    -- ========================================================================
    -- Gen 9 — Scarlet / Violet (VG 23)
    -- ========================================================================
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