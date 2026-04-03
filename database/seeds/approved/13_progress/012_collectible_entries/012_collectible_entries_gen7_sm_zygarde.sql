-- ============================================================================
-- Table: progress.collectible_entries
-- Scope: Zygarde Cells / Cores (SM, VG 15)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- 100 Zygarde Cells + Cores are scattered across Alola in Sun/Moon.
-- Each cell/core has a specific location. Some are only available during
-- day or night. The collectible_id references the 'zygarde-cells' collectible.
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
                version_group_id = 15
                AND slug = 'zygarde-cells'
        ),
        'cell-01',
        'Zygarde Cell #1',
        'Route 1',
        'Trainers'' School 1F',
        'Available during daytime.',
        1
    ),
    (
        (
            SELECT
                id
            FROM
                progress.collectibles
            WHERE
                version_group_id = 15
                AND slug = 'zygarde-cells'
        ),
        'cell-02',
        'Zygarde Cell #2',
        'Route 1',
        'Trainers'' School 2F',
        'Available during nighttime.',
        2
    ),
    (
        (
            SELECT
                id
            FROM
                progress.collectibles
            WHERE
                version_group_id = 15
                AND slug = 'zygarde-cells'
        ),
        'cell-03',
        'Zygarde Cell #3',
        'Route 1',
        'Professor Kukui''s Lab',
        'Available during nighttime.',
        3
    ),
    (
        (
            SELECT
                id
            FROM
                progress.collectibles
            WHERE
                version_group_id = 15
                AND slug = 'zygarde-cells'
        ),
        'cell-04',
        'Zygarde Cell #4',
        'Route 1',
        NULL,
        'Available during daytime.',
        4
    ),
    (
        (
            SELECT
                id
            FROM
                progress.collectibles
            WHERE
                version_group_id = 15
                AND slug = 'zygarde-cells'
        ),
        'cell-05',
        'Zygarde Cell #5',
        'Route 3',
        NULL,
        'Available during daytime.',
        5
    ),
    (
        (
            SELECT
                id
            FROM
                progress.collectibles
            WHERE
                version_group_id = 15
                AND slug = 'zygarde-cells'
        ),
        'core-01',
        'Zygarde Core #1',
        'Iki Town',
        NULL,
        'Power of the Land.',
        6
    ),
    (
        (
            SELECT
                id
            FROM
                progress.collectibles
            WHERE
                version_group_id = 15
                AND slug = 'zygarde-cells'
        ),
        'cell-06',
        'Zygarde Cell #6',
        'Hau''oli City',
        'Shopping District',
        'Available during daytime.',
        7
    ),
    (
        (
            SELECT
                id
            FROM
                progress.collectibles
            WHERE
                version_group_id = 15
                AND slug = 'zygarde-cells'
        ),
        'cell-07',
        'Zygarde Cell #7',
        'Hau''oli City',
        'Beachfront',
        'Available during nighttime.',
        8
    ),
    (
        (
            SELECT
                id
            FROM
                progress.collectibles
            WHERE
                version_group_id = 15
                AND slug = 'zygarde-cells'
        ),
        'cell-08',
        'Zygarde Cell #8',
        'Hau''oli City',
        'Marina',
        'Available during daytime.',
        9
    ),
    (
        (
            SELECT
                id
            FROM
                progress.collectibles
            WHERE
                version_group_id = 15
                AND slug = 'zygarde-cells'
        ),
        'cell-09',
        'Zygarde Cell #9',
        'Hau''oli Cemetery',
        NULL,
        'Available during nighttime.',
        10
    );

-- NOTE: This is a partial seed with 10 of 100 entries. Full data set should
-- be populated from official location guides (Bulbapedia / Serebii).