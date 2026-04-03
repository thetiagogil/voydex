-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (yellow, VG 2)
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
            (2, NULL::INTEGER, 'brock', 'Brock', 'gym_leader'::progress.opponent_role, 13::INTEGER, NULL::INTEGER, NULL::TEXT, 1),
            (2, NULL, 'misty', 'Misty', 'gym_leader', 3, NULL, NULL, 2),
            (2, NULL, 'lt-surge', 'Lt. Surge', 'gym_leader', 4, NULL, NULL, 3),
            (2, NULL, 'erika', 'Erika', 'gym_leader', 5, NULL, NULL, 4),
            (2, NULL, 'koga', 'Koga', 'gym_leader', 8, NULL, NULL, 5),
            (2, NULL, 'sabrina', 'Sabrina', 'gym_leader', 11, NULL, NULL, 6),
            (2, NULL, 'blaine', 'Blaine', 'gym_leader', 2, NULL, NULL, 7),
            (2, NULL, 'giovanni', 'Giovanni', 'gym_leader', 9, NULL, NULL, 8),
            (2, NULL, 'lorelei', 'Lorelei', 'elite_four', 6, NULL, NULL, 9),
            (2, NULL, 'bruno', 'Bruno', 'elite_four', 7, NULL, NULL, 10),
            (2, NULL, 'agatha', 'Agatha', 'elite_four', 14, NULL, NULL, 11),
            (2, NULL, 'lance', 'Lance', 'elite_four', 15, NULL, NULL, 12),
            (2, NULL, 'blue', 'Blue', 'champion', NULL, NULL, NULL, 13)
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
