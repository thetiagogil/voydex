-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (sv, VG 23)
-- ============================================================================
INSERT INTO
    progress.opponents (version_group_id, game_id, slug, name, opponent_role, specialty_type_1_id, sprite_url, sort_order)
VALUES
    -- Gym Leaders
    (
        23,
        NULL,
        'katy',
        'Katy',
        'gym_leader',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'bug'
        ),
        NULL,
        1
    ),
    (
        23,
        NULL,
        'brassius',
        'Brassius',
        'gym_leader',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'grass'
        ),
        NULL,
        2
    ),
    (
        23,
        NULL,
        'iono',
        'Iono',
        'gym_leader',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'electric'
        ),
        NULL,
        3
    ),
    (
        23,
        NULL,
        'kofu',
        'Kofu',
        'gym_leader',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'water'
        ),
        NULL,
        4
    ),
    (
        23,
        NULL,
        'larry',
        'Larry',
        'gym_leader',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'normal'
        ),
        NULL,
        5
    ),
    (
        23,
        NULL,
        'ryme',
        'Ryme',
        'gym_leader',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'ghost'
        ),
        NULL,
        6
    ),
    (
        23,
        NULL,
        'tulip',
        'Tulip',
        'gym_leader',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'psychic'
        ),
        NULL,
        7
    ),
    (
        23,
        NULL,
        'grusha',
        'Grusha',
        'gym_leader',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'ice'
        ),
        NULL,
        8
    ),
    -- Team Star Bosses
    (
        23,
        NULL,
        'giacomo',
        'Giacomo',
        'team_star_boss',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'dark'
        ),
        NULL,
        9
    ),
    (
        23,
        NULL,
        'mela',
        'Mela',
        'team_star_boss',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'fire'
        ),
        NULL,
        10
    ),
    (
        23,
        NULL,
        'atticus',
        'Atticus',
        'team_star_boss',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'poison'
        ),
        NULL,
        11
    ),
    (
        23,
        NULL,
        'ortega',
        'Ortega',
        'team_star_boss',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'fairy'
        ),
        NULL,
        12
    ),
    (
        23,
        NULL,
        'eri',
        'Eri',
        'team_star_boss',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'fighting'
        ),
        NULL,
        13
    ),
    -- Titan path (story bosses)
    -- (Titans are Pokemon, tracked separately via pokemon refs)
    -- Elite Four
    (
        23,
        NULL,
        'rika',
        'Rika',
        'elite_four',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'ground'
        ),
        NULL,
        14
    ),
    (
        23,
        NULL,
        'poppy',
        'Poppy',
        'elite_four',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'steel'
        ),
        NULL,
        15
    ),
    (
        23,
        NULL,
        'larry-e4',
        'Larry',
        'elite_four',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'flying'
        ),
        NULL,
        16
    ),
    (
        23,
        NULL,
        'hassel',
        'Hassel',
        'elite_four',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'dragon'
        ),
        NULL,
        17
    ),
    -- Champions / Story Bosses
    (23, NULL, 'geeta', 'Geeta', 'champion', NULL, NULL, 18),
    (23, NULL, 'nemona', 'Nemona', 'champion', NULL, NULL, 19),
    (23, NULL, 'professor-ai', 'The Professor', 'story_boss', NULL, NULL, 20);