-- ============================================================================
-- Table: progress.opponents
-- Scope: version-group-specific (usum, VG 16)
-- ============================================================================
INSERT INTO
    progress.opponents (version_group_id, game_id, slug, name, opponent_role, specialty_type_1_id, sprite_url, sort_order)
VALUES
    -- Trial Captains
    (
        16,
        NULL,
        'ilima',
        'Ilima',
        'trial_captain',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'normal'
        ),
        NULL,
        1
    ),
    (
        16,
        NULL,
        'lana',
        'Lana',
        'trial_captain',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'water'
        ),
        NULL,
        2
    ),
    (
        16,
        NULL,
        'kiawe',
        'Kiawe',
        'trial_captain',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'fire'
        ),
        NULL,
        3
    ),
    (
        16,
        NULL,
        'mallow',
        'Mallow',
        'trial_captain',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'grass'
        ),
        NULL,
        4
    ),
    (
        16,
        NULL,
        'sophocles',
        'Sophocles',
        'trial_captain',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'electric'
        ),
        NULL,
        5
    ),
    (
        16,
        NULL,
        'acerola',
        'Acerola',
        'trial_captain',
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
        16,
        NULL,
        'mina',
        'Mina',
        'trial_captain',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'fairy'
        ),
        NULL,
        7
    ),
    -- Kahunas
    (
        16,
        NULL,
        'hala',
        'Hala',
        'kahuna',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'fighting'
        ),
        NULL,
        8
    ),
    (
        16,
        NULL,
        'olivia',
        'Olivia',
        'kahuna',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'rock'
        ),
        NULL,
        9
    ),
    (
        16,
        NULL,
        'nanu',
        'Nanu',
        'kahuna',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'dark'
        ),
        NULL,
        10
    ),
    (
        16,
        NULL,
        'hapu',
        'Hapu',
        'kahuna',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'ground'
        ),
        NULL,
        11
    ),
    -- Elite Four
    (
        16,
        NULL,
        'molayne',
        'Molayne',
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
        12
    ),
    (
        16,
        NULL,
        'olivia-e4',
        'Olivia',
        'elite_four',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'rock'
        ),
        NULL,
        13
    ),
    (
        16,
        NULL,
        'acerola-e4',
        'Acerola',
        'elite_four',
        (
            SELECT
                id
            FROM
                meta.types
            WHERE
                slug = 'ghost'
        ),
        NULL,
        14
    ),
    (
        16,
        NULL,
        'kahili',
        'Kahili',
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
        15
    ),
    -- Champion
    (16, NULL, 'hau', 'Hau', 'champion', NULL, NULL, 16),
    -- Story Boss
    (
        16,
        NULL,
        'ultra-necrozma',
        'Ultra Necrozma',
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
        17
    );