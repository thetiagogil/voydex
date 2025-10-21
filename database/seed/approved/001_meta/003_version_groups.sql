WITH
    v AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('rb', 'Red/Blue', 'generation-i'),
                    ('y', 'Yellow', 'generation-i'),
                    ('gs', 'Gold/Silver', 'generation-ii'),
                    ('c', 'Crystal', 'generation-ii'),
                    ('rs', 'Ruby/Sapphire', 'generation-iii'),
                    ('frlg', 'FireRed/LeafGreen', 'generation-iii'),
                    ('e', 'Emerald', 'generation-iii'),
                    ('dp', 'Diamond/Pearl', 'generation-iv'),
                    ('p', 'Platinum', 'generation-iv'),
                    ('hgss', 'HeartGold/SoulSilver', 'generation-iv'),
                    ('bw', 'Black/White', 'generation-v'),
                    ('b2w2', 'Black 2/White 2', 'generation-v'),
                    ('xy', 'X/Y', 'generation-vi'),
                    ('oras', 'Omega Ruby/Alpha Sapphire', 'generation-vi'),
                    ('sm', 'Sun/Moon', 'generation-vii'),
                    ('usum', 'Ultra Sun/Ultra Moon', 'generation-vii'),
                    ('lgpe', 'Let''s Go, Pikachu!/Let''s Go, Eevee!', 'generation-viii'),
                    ('swsh', 'Sword/Shield', 'generation-viii'),
                    ('bdsp', 'Brilliant Diamond/Shining Pearl', 'generation-viii'),
                    ('sv', 'Scarlet/Violet', 'generation-ix')
            ) AS t (slug, name, generation_slug)
    )
INSERT INTO
    meta.version_groups (slug, name, generation_id)
SELECT
    v.slug,
    v.name,
    gen.id
FROM
    v
    JOIN meta.generations gen ON gen.slug = v.generation_slug ON CONFLICT (slug) DO NOTHING;