-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (swsh-ct, VG 20)
-- ============================================================================
INSERT INTO
    progress.opponents (version_group_id, game_id, slug, name, opponent_role, specialty_type_1_id, sprite_url, sort_order)
VALUES
    (
        20,
        NULL,
        'peony',
        'Peony',
        'story_boss',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'steel'
        ),
        NULL,
        1
    );