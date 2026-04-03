-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (swsh-ioa, VG 19)
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
            (19, NULL::INTEGER, 'mustard', 'Mustard', 'story_boss'::progress.opponent_role, 7::INTEGER, NULL::INTEGER, NULL::TEXT, 1),
            (19, 31, 'klara', 'Klara', 'story_boss', 8, NULL, NULL, 2),
            (19, 32, 'avery', 'Avery', 'story_boss', 11, NULL, NULL, 2)
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
