-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (sm, VG 15)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- SM: Trial system. Champion battle is Kukui (not Hau like in USUM).
-- No Ultra Necrozma fight.
INSERT INTO
    progress.opponents (id, version_group_id, game_id, slug, name, opponent_role, sprite_url, sort_order)
VALUES
    -- Trial Captains
    (417, 15, NULL, 'ilima', 'Ilima', 'trial-captain', NULL, 1),
    (418, 15, NULL, 'lana', 'Lana', 'trial-captain', NULL, 2),
    (419, 15, NULL, 'kiawe', 'Kiawe', 'trial-captain', NULL, 3),
    (420, 15, NULL, 'mallow', 'Mallow', 'trial-captain', NULL, 4),
    (421, 15, NULL, 'sophocles', 'Sophocles', 'trial-captain', NULL, 5),
    (422, 15, NULL, 'acerola', 'Acerola', 'trial-captain', NULL, 6),
    -- Kahunas
    (423, 15, NULL, 'hala', 'Hala', 'kahuna', NULL, 7),
    (424, 15, NULL, 'olivia', 'Olivia', 'kahuna', NULL, 8),
    (425, 15, NULL, 'nanu', 'Nanu', 'kahuna', NULL, 9),
    (426, 15, NULL, 'hapu', 'Hapu', 'kahuna', NULL, 10),
    -- Elite Four
    (427, 15, NULL, 'hala-e4', 'Hala', 'elite-four', NULL, 11),
    (428, 15, NULL, 'olivia-e4', 'Olivia', 'elite-four', NULL, 12),
    (429, 15, NULL, 'acerola-e4', 'Acerola', 'elite-four', NULL, 13),
    (430, 15, NULL, 'kahili', 'Kahili', 'elite-four', NULL, 14),
    -- Champion
    (431, 15, NULL, 'kukui', 'Professor Kukui', 'champion', NULL, 15);