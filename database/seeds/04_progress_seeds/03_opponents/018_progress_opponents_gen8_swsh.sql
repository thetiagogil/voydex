-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (swsh, VG 18)
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
            (18, NULL::INTEGER, 'milo', 'Milo', 'gym_leader'::progress.opponent_role, 5::INTEGER, NULL::INTEGER, NULL::TEXT, 1),
            (18, NULL, 'nessa', 'Nessa', 'gym_leader', 3, NULL, NULL, 2),
            (18, NULL, 'kabu', 'Kabu', 'gym_leader', 2, NULL, NULL, 3),
            (18, 31, 'bea', 'Bea', 'gym_leader', 7, NULL, NULL, 4),
            (18, 32, 'allister', 'Allister', 'gym_leader', 14, NULL, NULL, 4),
            (18, NULL, 'opal', 'Opal', 'gym_leader', 18, NULL, NULL, 5),
            (18, 31, 'gordie', 'Gordie', 'gym_leader', 13, NULL, NULL, 6),
            (18, 32, 'melony', 'Melony', 'gym_leader', 6, NULL, NULL, 6),
            (18, NULL, 'piers', 'Piers', 'gym_leader', 16, NULL, NULL, 7),
            (18, NULL, 'raihan', 'Raihan', 'gym_leader', 15, NULL, NULL, 8),
            (18, NULL, 'leon', 'Leon', 'champion', NULL, NULL, NULL, 9)
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
