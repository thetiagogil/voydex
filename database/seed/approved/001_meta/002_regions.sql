WITH
    r AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('kanto', 'Kanto', 'generation-i'),
                    ('johto', 'Johto', 'generation-ii'),
                    ('hoenn', 'Hoenn', 'generation-iii'),
                    ('sinnoh', 'Sinnoh', 'generation-iv'),
                    ('unova', 'Unova', 'generation-v'),
                    ('kalos', 'Kalos', 'generation-vi'),
                    ('alola', 'Alola', 'generation-vii'),
                    ('galar', 'Galar', 'generation-viii'),
                    ('paldea', 'Paldea', 'generation-ix')
            ) AS t (slug, name, generation_slug)
    )
INSERT INTO
    meta.regions (slug, name, generation_id)
SELECT
    r.slug,
    r.name,
    gen.id
FROM
    r
    JOIN meta.generations gen ON gen.slug = r.generation_slug ON CONFLICT (slug) DO NOTHING;