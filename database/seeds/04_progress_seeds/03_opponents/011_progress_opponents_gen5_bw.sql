-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (bw, VG 11)
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
            (11, NULL::INTEGER, 'cilan-chili-cress', 'Cilan / Chili / Cress', 'gym_leader', NULL::INTEGER, NULL::INTEGER, NULL::TEXT, 1),
            (11, NULL, 'lenora', 'Lenora', 'gym_leader', 1, NULL, NULL, 2),
            (11, NULL, 'burgh', 'Burgh', 'gym_leader', 12, NULL, NULL, 3),
            (11, NULL, 'elesa', 'Elesa', 'gym_leader', 4, NULL, NULL, 4),
            (11, NULL, 'clay', 'Clay', 'gym_leader', 9, NULL, NULL, 5),
            (11, NULL, 'skyla', 'Skyla', 'gym_leader', 10, NULL, NULL, 6),
            (11, NULL, 'brycen', 'Brycen', 'gym_leader', 6, NULL, NULL, 7),
            (11, NULL, 'drayden', 'Drayden', 'gym_leader', 15, NULL, NULL, 8),
            (11, NULL, 'shauntal', 'Shauntal', 'elite_four', 14, NULL, NULL, 9),
            (11, NULL, 'grimsley', 'Grimsley', 'elite_four', 16, NULL, NULL, 10),
            (11, NULL, 'caitlin', 'Caitlin', 'elite_four', 11, NULL, NULL, 11),
            (11, NULL, 'marshal', 'Marshal', 'elite_four', 7, NULL, NULL, 12),
            (11, NULL, 'n', 'N', 'story_boss', NULL, NULL, NULL, 13),
            (11, NULL, 'ghetsis', 'Ghetsis', 'story_boss', NULL, NULL, NULL, 14),
            (11, NULL, 'alder', 'Alder', 'champion', 12, NULL, NULL, 15)
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
