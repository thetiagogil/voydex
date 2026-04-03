-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (swsh-ioa, VG 19)
-- ============================================================================
INSERT INTO
    progress.opponents (version_group_id, game_id, slug, name, opponent_role, specialty_type_1_id, sprite_url, sort_order)
VALUES
    (
        19,
        NULL,
        'mustard',
        'Mustard',
        'story_boss',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'fighting'
        ),
        NULL,
        1
    ),
    (
        19,
        31,
        'klara',
        'Klara',
        'story_boss',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'poison'
        ),
        NULL,
        2
    ),
    (
        19,
        32,
        'avery',
        'Avery',
        'story_boss',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'psychic'
        ),
        NULL,
        2
    );