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
                    (10, 'hgss', 'HeartGold/SoulSilver', 'generation-iv'),
                    (11, 'bw', 'Black/White', 'generation-v'),
                    (12, 'b2w2', 'Black 2/White 2', 'generation-v'),
                    (13, 'xy', 'X/Y', 'generation-vi'),
                    (14, 'oras', 'Omega Ruby/Alpha Sapphire', 'generation-vi'),
                    (15, 'sm', 'Sun/Moon', 'generation-vii'),
                    (16, 'usum', 'Ultra Sun/Ultra Moon', 'generation-vii'),
                    (17, 'lgpe', 'Let''s Go, Pikachu!/Let''s Go, Eevee!', 'generation-viii'),
                    (18, 'swsh', 'Sword/Shield', 'generation-viii'),
                    (19, 'bdsp', 'Brilliant Diamond/Shining Pearl', 'generation-viii'),
                    (20, 'sv', 'Scarlet/Violet', 'generation-ix')
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