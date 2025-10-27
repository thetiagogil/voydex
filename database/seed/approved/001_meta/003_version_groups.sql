WITH
    v AS (
        SELECT
            *
        FROM
            (
                VALUES
                    (1, 'rb', 'Red/Blue', 'generation-i'),
                    (2, 'y', 'Yellow', 'generation-i'),
                    (3, 'gs', 'Gold/Silver', 'generation-ii'),
                    (4, 'c', 'Crystal', 'generation-ii'),
                    (5, 'rs', 'Ruby/Sapphire', 'generation-iii'),
                    (6, 'frlg', 'FireRed/LeafGreen', 'generation-iii'),
                    (7, 'e', 'Emerald', 'generation-iii'),
                    (8, 'dp', 'Diamond/Pearl', 'generation-iv'),
                    (9, 'p', 'Platinum', 'generation-iv'),
                    (10, 'hgss', 'HeartGold/SoulSilver', 'generation-iv')
            ) AS t (id, slug, name, generation_slug)
    )
INSERT INTO
    meta.version_groups (id, slug, name, generation_id)
SELECT
    v.id,
    v.slug,
    v.name,
    gen.id
FROM
    v
    JOIN meta.generations gen ON gen.slug = v.generation_slug ON CONFLICT (slug) DO NOTHING;