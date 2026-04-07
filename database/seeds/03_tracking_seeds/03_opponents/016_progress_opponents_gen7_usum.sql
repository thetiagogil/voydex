-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.opponents
-- Scope: version-group-specific (usum, VG 16)
WITH
    seed_data (
        version_group_id,
        game_id,
        slug,
        name,
        opponent_role,
        specialty_type_1_id,
        specialty_type_2_id,
        sprite_url,
        sort_order
    ) AS (
        VALUES
            (16, NULL::INTEGER, 'ilima', 'Ilima', 'trial_captain', 1, NULL::INTEGER, NULL::TEXT, 1),
            (16, NULL, 'lana', 'Lana', 'trial_captain', 3, NULL, NULL, 2),
            (16, NULL, 'kiawe', 'Kiawe', 'trial_captain', 2, NULL, NULL, 3),
            (16, NULL, 'mallow', 'Mallow', 'trial_captain', 5, NULL, NULL, 4),
            (16, NULL, 'sophocles', 'Sophocles', 'trial_captain', 4, NULL, NULL, 5),
            (16, NULL, 'acerola', 'Acerola', 'trial_captain', 14, NULL, NULL, 6),
            (16, NULL, 'mina', 'Mina', 'trial_captain', 18, NULL, NULL, 7),
            (16, NULL, 'hala', 'Hala', 'kahuna', 7, NULL, NULL, 8),
            (16, NULL, 'olivia', 'Olivia', 'kahuna', 13, NULL, NULL, 9),
            (16, NULL, 'nanu', 'Nanu', 'kahuna', 16, NULL, NULL, 10),
            (16, NULL, 'hapu', 'Hapu', 'kahuna', 9, NULL, NULL, 11),
            (16, NULL, 'molayne', 'Molayne', 'elite_four', 17, NULL, NULL, 12),
            (16, NULL, 'olivia-e4', 'Olivia', 'elite_four', 13, NULL, NULL, 13),
            (16, NULL, 'acerola-e4', 'Acerola', 'elite_four', 14, NULL, NULL, 14),
            (16, NULL, 'kahili', 'Kahili', 'elite_four', 10, NULL, NULL, 15),
            (16, NULL, 'hau', 'Hau', 'champion', NULL, NULL, NULL, 16),
            (16, NULL, 'ultra-necrozma', 'Ultra Necrozma', 'story_boss', 11, NULL, NULL, 17)
    )
INSERT INTO
    tracking.opponents (
        version_group_id,
        game_id,
        slug,
        name,
        opponent_role,
        specialty_type_1_id,
        specialty_type_2_id,
        sprite_url,
        sort_order
    )
SELECT
    version_group_id,
    game_id,
    slug,
    name,
    opponent_role::tracking.opponent_role,
    specialty_type_1_id,
    specialty_type_2_id,
    sprite_url,
    sort_order
FROM
    seed_data;
