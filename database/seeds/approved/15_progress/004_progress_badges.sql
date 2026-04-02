-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.badges
-- Scope: all seeded version groups
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Gen 7 (USUM) has no gym badges (trial system).
-- game_id NOT NULL = version-exclusive badge (e.g. SwSh Sword/Shield gyms).
INSERT INTO
    progress.badges (id, version_group_id, game_id, slug, name, sprite_url, sort_order)
VALUES
    -- ========================================================================
    -- Gen 1 — Red / Blue (VG 1)
    -- ========================================================================
    (100, 1, NULL, 'boulder-badge', 'Boulder Badge', NULL, 1),
    (101, 1, NULL, 'cascade-badge', 'Cascade Badge', NULL, 2),
    (102, 1, NULL, 'thunder-badge', 'Thunder Badge', NULL, 3),
    (103, 1, NULL, 'rainbow-badge', 'Rainbow Badge', NULL, 4),
    (104, 1, NULL, 'soul-badge', 'Soul Badge', NULL, 5),
    (105, 1, NULL, 'marsh-badge', 'Marsh Badge', NULL, 6),
    (106, 1, NULL, 'volcano-badge', 'Volcano Badge', NULL, 7),
    (107, 1, NULL, 'earth-badge', 'Earth Badge', NULL, 8),
    -- ========================================================================
    -- Gen 2 — Crystal (VG 4)
    -- ========================================================================
    -- Johto badges
    (120, 4, NULL, 'zephyr-badge', 'Zephyr Badge', NULL, 1),
    (121, 4, NULL, 'hive-badge', 'Hive Badge', NULL, 2),
    (122, 4, NULL, 'plain-badge', 'Plain Badge', NULL, 3),
    (123, 4, NULL, 'fog-badge', 'Fog Badge', NULL, 4),
    (124, 4, NULL, 'storm-badge', 'Storm Badge', NULL, 5),
    (125, 4, NULL, 'mineral-badge', 'Mineral Badge', NULL, 6),
    (126, 4, NULL, 'glacier-badge', 'Glacier Badge', NULL, 7),
    (127, 4, NULL, 'rising-badge', 'Rising Badge', NULL, 8),
    -- Kanto badges (post-game)
    (128, 4, NULL, 'boulder-badge-kanto', 'Boulder Badge', NULL, 9),
    (129, 4, NULL, 'cascade-badge-kanto', 'Cascade Badge', NULL, 10),
    (130, 4, NULL, 'thunder-badge-kanto', 'Thunder Badge', NULL, 11),
    (131, 4, NULL, 'rainbow-badge-kanto', 'Rainbow Badge', NULL, 12),
    (132, 4, NULL, 'soul-badge-kanto', 'Soul Badge', NULL, 13),
    (133, 4, NULL, 'marsh-badge-kanto', 'Marsh Badge', NULL, 14),
    (134, 4, NULL, 'volcano-badge-kanto', 'Volcano Badge', NULL, 15),
    (135, 4, NULL, 'earth-badge-kanto', 'Earth Badge', NULL, 16),
    -- ========================================================================
    -- Gen 3 — Emerald (VG 6)
    -- ========================================================================
    (150, 6, NULL, 'stone-badge', 'Stone Badge', NULL, 1),
    (151, 6, NULL, 'knuckle-badge', 'Knuckle Badge', NULL, 2),
    (152, 6, NULL, 'dynamo-badge', 'Dynamo Badge', NULL, 3),
    (153, 6, NULL, 'heat-badge', 'Heat Badge', NULL, 4),
    (154, 6, NULL, 'balance-badge', 'Balance Badge', NULL, 5),
    (155, 6, NULL, 'feather-badge', 'Feather Badge', NULL, 6),
    (156, 6, NULL, 'mind-badge', 'Mind Badge', NULL, 7),
    (157, 6, NULL, 'rain-badge', 'Rain Badge', NULL, 8),
    -- ========================================================================
    -- Gen 4 — Platinum (VG 9)
    -- ========================================================================
    (170, 9, NULL, 'coal-badge', 'Coal Badge', NULL, 1),
    (171, 9, NULL, 'forest-badge', 'Forest Badge', NULL, 2),
    (172, 9, NULL, 'cobble-badge', 'Cobble Badge', NULL, 3),
    (173, 9, NULL, 'fen-badge', 'Fen Badge', NULL, 4),
    (174, 9, NULL, 'relic-badge', 'Relic Badge', NULL, 5),
    (175, 9, NULL, 'mine-badge', 'Mine Badge', NULL, 6),
    (176, 9, NULL, 'icicle-badge', 'Icicle Badge', NULL, 7),
    (177, 9, NULL, 'beacon-badge', 'Beacon Badge', NULL, 8),
    -- ========================================================================
    -- Gen 5 — Black / White (VG 11)
    -- ========================================================================
    (190, 11, NULL, 'trio-badge', 'Trio Badge', NULL, 1),
    (191, 11, NULL, 'basic-badge', 'Basic Badge', NULL, 2),
    (192, 11, NULL, 'insect-badge', 'Insect Badge', NULL, 3),
    (193, 11, NULL, 'bolt-badge', 'Bolt Badge', NULL, 4),
    (194, 11, NULL, 'quake-badge', 'Quake Badge', NULL, 5),
    (195, 11, NULL, 'jet-badge', 'Jet Badge', NULL, 6),
    (196, 11, NULL, 'freeze-badge', 'Freeze Badge', NULL, 7),
    (197, 11, NULL, 'legend-badge', 'Legend Badge', NULL, 8),
    -- ========================================================================
    -- Gen 6 — X / Y (VG 13)
    -- ========================================================================
    (210, 13, NULL, 'bug-badge', 'Bug Badge', NULL, 1),
    (211, 13, NULL, 'cliff-badge', 'Cliff Badge', NULL, 2),
    (212, 13, NULL, 'rumble-badge', 'Rumble Badge', NULL, 3),
    (213, 13, NULL, 'plant-badge', 'Plant Badge', NULL, 4),
    (214, 13, NULL, 'voltage-badge', 'Voltage Badge', NULL, 5),
    (215, 13, NULL, 'fairy-badge', 'Fairy Badge', NULL, 6),
    (216, 13, NULL, 'psychic-badge', 'Psychic Badge', NULL, 7),
    (217, 13, NULL, 'iceberg-badge', 'Iceberg Badge', NULL, 8),
    -- ========================================================================
    -- Gen 8 — Sword / Shield (VG 18)
    -- ========================================================================
    (230, 18, NULL, 'grass-badge', 'Grass Badge', NULL, 1),
    (231, 18, NULL, 'water-badge', 'Water Badge', NULL, 2),
    (232, 18, NULL, 'fire-badge', 'Fire Badge', NULL, 3),
    (233, 18, 31, 'fighting-badge', 'Fighting Badge', NULL, 4),
    (234, 18, NULL, 'fairy-badge', 'Fairy Badge', NULL, 5),
    (235, 18, 31, 'rock-badge', 'Rock Badge', NULL, 6),
    (236, 18, NULL, 'dark-badge', 'Dark Badge', NULL, 7),
    (237, 18, NULL, 'dragon-badge', 'Dragon Badge', NULL, 8),
    (238, 18, 32, 'ghost-badge', 'Ghost Badge', NULL, 4),
    (239, 18, 32, 'ice-badge', 'Ice Badge', NULL, 6),
    -- ========================================================================
    -- Gen 9 — Scarlet / Violet (VG 23)
    -- ========================================================================
    (250, 23, NULL, 'bug-badge', 'Bug Badge', NULL, 1),
    (251, 23, NULL, 'grass-badge', 'Grass Badge', NULL, 2),
    (252, 23, NULL, 'electric-badge', 'Electric Badge', NULL, 3),
    (253, 23, NULL, 'water-badge', 'Water Badge', NULL, 4),
    (254, 23, NULL, 'normal-badge', 'Normal Badge', NULL, 5),
    (255, 23, NULL, 'ghost-badge', 'Ghost Badge', NULL, 6),
    (256, 23, NULL, 'psychic-badge', 'Psychic Badge', NULL, 7),
    (257, 23, NULL, 'ice-badge', 'Ice Badge', NULL, 8);