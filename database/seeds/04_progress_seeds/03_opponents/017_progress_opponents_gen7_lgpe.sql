-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (lgpe, VG 17)
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
            (17, NULL::INTEGER, 'brock', 'Brock', 'gym_leader', 13, NULL::INTEGER, NULL::TEXT, 1),
            (17, NULL, 'misty', 'Misty', 'gym_leader', 3, NULL, NULL, 2),
            (17, NULL, 'lt-surge', 'Lt. Surge', 'gym_leader', 4, NULL, NULL, 3),
            (17, NULL, 'erika', 'Erika', 'gym_leader', 5, NULL, NULL, 4),
            (17, NULL, 'koga', 'Koga', 'gym_leader', 8, NULL, NULL, 5),
            (17, NULL, 'sabrina', 'Sabrina', 'gym_leader', 11, NULL, NULL, 6),
            (17, NULL, 'blaine', 'Blaine', 'gym_leader', 2, NULL, NULL, 7),
            (17, NULL, 'giovanni', 'Giovanni', 'gym_leader', 9, NULL, NULL, 8),
            (17, NULL, 'lorelei', 'Lorelei', 'elite_four', 6, NULL, NULL, 9),
            (17, NULL, 'bruno', 'Bruno', 'elite_four', 7, NULL, NULL, 10),
            (17, NULL, 'agatha', 'Agatha', 'elite_four', 14, NULL, NULL, 11),
            (17, NULL, 'lance', 'Lance', 'elite_four', 15, NULL, NULL, 12),
            (17, NULL, 'rival', 'Trace', 'champion', NULL, NULL, NULL, 13),
            (17, NULL, 'blue', 'Blue', 'story_boss', NULL, NULL, NULL, 14)
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
    opponent_role::progress.opponent_role,
    specialty_type_1_id,
    specialty_type_2_id,
    sprite_url,
    sort_order
FROM
    seed_data;
