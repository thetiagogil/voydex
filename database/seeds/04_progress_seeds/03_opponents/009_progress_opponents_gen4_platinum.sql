-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (platinum, VG 9)
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
            (9, NULL::INTEGER, 'roark', 'Roark', 'gym_leader', 13, NULL::INTEGER, NULL::TEXT, 1),
            (9, NULL, 'gardenia', 'Gardenia', 'gym_leader', 5, NULL, NULL, 2),
            (9, NULL, 'maylene', 'Maylene', 'gym_leader', 7, NULL, NULL, 3),
            (9, NULL, 'crasher-wake', 'Crasher Wake', 'gym_leader', 3, NULL, NULL, 4),
            (9, NULL, 'fantina', 'Fantina', 'gym_leader', 14, NULL, NULL, 5),
            (9, NULL, 'byron', 'Byron', 'gym_leader', 17, NULL, NULL, 6),
            (9, NULL, 'candice', 'Candice', 'gym_leader', 6, NULL, NULL, 7),
            (9, NULL, 'volkner', 'Volkner', 'gym_leader', 4, NULL, NULL, 8),
            (9, NULL, 'aaron', 'Aaron', 'elite_four', 12, NULL, NULL, 9),
            (9, NULL, 'bertha', 'Bertha', 'elite_four', 9, NULL, NULL, 10),
            (9, NULL, 'flint', 'Flint', 'elite_four', 2, NULL, NULL, 11),
            (9, NULL, 'lucian', 'Lucian', 'elite_four', 11, NULL, NULL, 12),
            (9, NULL, 'cynthia', 'Cynthia', 'champion', NULL, NULL, NULL, 13)
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
