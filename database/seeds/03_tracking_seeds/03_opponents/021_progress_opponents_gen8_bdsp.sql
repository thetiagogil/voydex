-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.opponents
-- Scope: version-group-specific (bdsp, VG 21)
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
            (21, NULL::INTEGER, 'roark', 'Roark', 'gym_leader', 13, NULL::INTEGER, NULL::TEXT, 1),
            (21, NULL, 'gardenia', 'Gardenia', 'gym_leader', 5, NULL, NULL, 2),
            (21, NULL, 'maylene', 'Maylene', 'gym_leader', 7, NULL, NULL, 3),
            (21, NULL, 'crasher-wake', 'Crasher Wake', 'gym_leader', 3, NULL, NULL, 4),
            (21, NULL, 'fantina', 'Fantina', 'gym_leader', 14, NULL, NULL, 5),
            (21, NULL, 'byron', 'Byron', 'gym_leader', 17, NULL, NULL, 6),
            (21, NULL, 'candice', 'Candice', 'gym_leader', 6, NULL, NULL, 7),
            (21, NULL, 'volkner', 'Volkner', 'gym_leader', 4, NULL, NULL, 8),
            (21, NULL, 'aaron', 'Aaron', 'elite_four', 12, NULL, NULL, 9),
            (21, NULL, 'bertha', 'Bertha', 'elite_four', 9, NULL, NULL, 10),
            (21, NULL, 'flint', 'Flint', 'elite_four', 2, NULL, NULL, 11),
            (21, NULL, 'lucian', 'Lucian', 'elite_four', 11, NULL, NULL, 12),
            (21, NULL, 'cynthia', 'Cynthia', 'champion', NULL, NULL, NULL, 13)
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
