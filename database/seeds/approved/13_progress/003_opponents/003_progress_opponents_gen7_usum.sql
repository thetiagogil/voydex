-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (usum, VG 16)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- USUM: Mina trial added. Champion is Hau. Ultra Necrozma is story boss.
INSERT INTO
    progress.opponents (id, version_group_id, game_id, slug, name, opponent_role, sprite_url, sort_order)
VALUES
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
    (416, 16, NULL, 'ultra-necrozma', 'Ultra Necrozma', 'story-boss', NULL, 17);