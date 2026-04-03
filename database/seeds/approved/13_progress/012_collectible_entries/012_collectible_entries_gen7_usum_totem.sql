-- ============================================================================
-- Table: progress.collectible_entries
-- Scope: Totem Stickers (USUM, VG 16)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- 100 Totem Stickers are scattered across Alola in Ultra Sun/Ultra Moon.
-- Each sticker is found in a specific location. Collecting enough stickers
-- allows the player to obtain Totem-sized Pokémon from Samson Oak.
-- The collectible_id references the 'totem-stickers' collectible.
-- Full location data should be populated from Bulbapedia / Serebii sources.
INSERT INTO
    progress.collectible_entries (collectible_id, slug, name, location_name, sub_location_name, description, sort_order)
VALUES
    (
        (
            SELECT
                id
            FROM
                progress.collectibles
            WHERE
                version_group_id = 16
                AND slug = 'totem-stickers'
        ),
        'sticker-01',
        'Totem Sticker #1',
        'Route 1',
        'Trainers'' School',
        NULL,
        1
    ),
    (
        (
            SELECT
                id
            FROM
                progress.collectibles
            WHERE
                version_group_id = 16
                AND slug = 'totem-stickers'
        ),
        'sticker-02',
        'Totem Sticker #2',
        'Route 1',
        'Trainers'' School',
        NULL,
        2
    ),
    (
        (
            SELECT
                id
            FROM
                progress.collectibles
            WHERE
                version_group_id = 16
                AND slug = 'totem-stickers'
        ),
        'sticker-03',
        'Totem Sticker #3',
        'Hau''oli City',
        'Shopping District',
        NULL,
        3
    ),
    (
        (
            SELECT
                id
            FROM
                progress.collectibles
            WHERE
                version_group_id = 16
                AND slug = 'totem-stickers'
        ),
        'sticker-04',
        'Totem Sticker #4',
        'Hau''oli City',
        'Shopping District',
        NULL,
        4
    ),
    (
        (
            SELECT
                id
            FROM
                progress.collectibles
            WHERE
                version_group_id = 16
                AND slug = 'totem-stickers'
        ),
        'sticker-05',
        'Totem Sticker #5',
        'Hau''oli City',
        'Marina',
        NULL,
        5
    ),
    (
        (
            SELECT
                id
            FROM
                progress.collectibles
            WHERE
                version_group_id = 16
                AND slug = 'totem-stickers'
        ),
        'sticker-06',
        'Totem Sticker #6',
        'Route 2',
        'Pokémon Center',
        NULL,
        6
    ),
    (
        (
            SELECT
                id
            FROM
                progress.collectibles
            WHERE
                version_group_id = 16
                AND slug = 'totem-stickers'
        ),
        'sticker-07',
        'Totem Sticker #7',
        'Route 2',
        NULL,
        NULL,
        7
    ),
    (
        (
            SELECT
                id
            FROM
                progress.collectibles
            WHERE
                version_group_id = 16
                AND slug = 'totem-stickers'
        ),
        'sticker-08',
        'Totem Sticker #8',
        'Verdant Cavern',
        NULL,
        NULL,
        8
    ),
    (
        (
            SELECT
                id
            FROM
                progress.collectibles
            WHERE
                version_group_id = 16
                AND slug = 'totem-stickers'
        ),
        'sticker-09',
        'Totem Sticker #9',
        'Hau''oli City',
        'Beachfront',
        NULL,
        9
    ),
    (
        (
            SELECT
                id
            FROM
                progress.collectibles
            WHERE
                version_group_id = 16
                AND slug = 'totem-stickers'
        ),
        'sticker-10',
        'Totem Sticker #10',
        'Route 3',
        NULL,
        NULL,
        10
    );

-- NOTE: This is a partial seed with 10 of 100 entries. Full data set should
-- be populated from official location guides (Bulbapedia / Serebii).