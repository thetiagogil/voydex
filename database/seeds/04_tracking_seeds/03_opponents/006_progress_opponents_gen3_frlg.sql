-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.opponents
-- Scope: version-group-specific (frlg, VG 7)
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
            (7, NULL::INTEGER, 'brock', 'Brock', 'gym_leader', 13, NULL::INTEGER, NULL::TEXT, 1),
            (7, NULL, 'misty', 'Misty', 'gym_leader', 3, NULL, NULL, 2),
            (7, NULL, 'lt-surge', 'Lt. Surge', 'gym_leader', 4, NULL, NULL, 3),
            (7, NULL, 'erika', 'Erika', 'gym_leader', 5, NULL, NULL, 4),
            (7, NULL, 'koga', 'Koga', 'gym_leader', 8, NULL, NULL, 5),
            (7, NULL, 'sabrina', 'Sabrina', 'gym_leader', 11, NULL, NULL, 6),
            (7, NULL, 'blaine', 'Blaine', 'gym_leader', 2, NULL, NULL, 7),
            (7, NULL, 'giovanni', 'Giovanni', 'gym_leader', 9, NULL, NULL, 8),
            (7, NULL, 'lorelei', 'Lorelei', 'elite_four', 6, NULL, NULL, 9),
            (7, NULL, 'bruno', 'Bruno', 'elite_four', 7, NULL, NULL, 10),
            (7, NULL, 'agatha', 'Agatha', 'elite_four', 14, NULL, NULL, 11),
            (7, NULL, 'lance', 'Lance', 'elite_four', 15, NULL, NULL, 12),
            (7, NULL, 'blue', 'Blue', 'champion', NULL, NULL, NULL, 13)
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
