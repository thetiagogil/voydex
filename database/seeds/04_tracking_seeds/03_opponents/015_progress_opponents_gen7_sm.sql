-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.opponents
-- Scope: version-group-specific (sm, VG 15)
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
            (15, NULL::INTEGER, 'ilima', 'Ilima', 'trial_captain', 1, NULL::INTEGER, NULL::TEXT, 1),
            (15, NULL, 'lana', 'Lana', 'trial_captain', 3, NULL, NULL, 2),
            (15, NULL, 'kiawe', 'Kiawe', 'trial_captain', 2, NULL, NULL, 3),
            (15, NULL, 'mallow', 'Mallow', 'trial_captain', 5, NULL, NULL, 4),
            (15, NULL, 'sophocles', 'Sophocles', 'trial_captain', 4, NULL, NULL, 5),
            (15, NULL, 'acerola', 'Acerola', 'trial_captain', 14, NULL, NULL, 6),
            (15, NULL, 'hala', 'Hala', 'kahuna', 7, NULL, NULL, 7),
            (15, NULL, 'olivia', 'Olivia', 'kahuna', 13, NULL, NULL, 8),
            (15, NULL, 'nanu', 'Nanu', 'kahuna', 16, NULL, NULL, 9),
            (15, NULL, 'hapu', 'Hapu', 'kahuna', 9, NULL, NULL, 10),
            (15, NULL, 'hala-e4', 'Hala', 'elite_four', 7, NULL, NULL, 11),
            (15, NULL, 'olivia-e4', 'Olivia', 'elite_four', 13, NULL, NULL, 12),
            (15, NULL, 'acerola-e4', 'Acerola', 'elite_four', 14, NULL, NULL, 13),
            (15, NULL, 'kahili', 'Kahili', 'elite_four', 10, NULL, NULL, 14),
            (15, NULL, 'kukui', 'Professor Kukui', 'champion', NULL, NULL, NULL, 15)
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
