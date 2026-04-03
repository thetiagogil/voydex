-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (b2w2, VG 12)
-- ============================================================================
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
            (12, NULL::INTEGER, 'cheren', 'Cheren', 'gym_leader', 1, NULL::INTEGER, NULL::TEXT, 1),
            (12, NULL, 'roxie', 'Roxie', 'gym_leader', 8, NULL, NULL, 2),
            (12, NULL, 'burgh', 'Burgh', 'gym_leader', 12, NULL, NULL, 3),
            (12, NULL, 'elesa', 'Elesa', 'gym_leader', 4, NULL, NULL, 4),
            (12, NULL, 'clay', 'Clay', 'gym_leader', 9, NULL, NULL, 5),
            (12, NULL, 'skyla', 'Skyla', 'gym_leader', 10, NULL, NULL, 6),
            (12, NULL, 'drayden', 'Drayden', 'gym_leader', 15, NULL, NULL, 7),
            (12, NULL, 'marlon', 'Marlon', 'gym_leader', 3, NULL, NULL, 8),
            (12, NULL, 'shauntal', 'Shauntal', 'elite_four', 14, NULL, NULL, 9),
            (12, NULL, 'grimsley', 'Grimsley', 'elite_four', 16, NULL, NULL, 10),
            (12, NULL, 'caitlin', 'Caitlin', 'elite_four', 11, NULL, NULL, 11),
            (12, NULL, 'marshal', 'Marshal', 'elite_four', 7, NULL, NULL, 12),
            (12, NULL, 'iris', 'Iris', 'champion', 15, NULL, NULL, 13),
            (12, NULL, 'colress', 'Colress', 'story_boss', 17, NULL, NULL, 14),
            (12, NULL, 'ghetsis', 'Ghetsis', 'story_boss', NULL, NULL, NULL, 15)
    )
INSERT INTO
    progress.opponents (
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
    opponent_role,
    specialty_type_1_id,
    specialty_type_2_id,
    sprite_url,
    sort_order
FROM
    seed_data;
