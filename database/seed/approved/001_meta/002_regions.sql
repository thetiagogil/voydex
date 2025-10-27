WITH
    r AS (
        SELECT
            *
        FROM
            (
                VALUES
                    (1, 'kanto', 'Kanto', 'generation-i'),
                    (2, 'johto', 'Johto', 'generation-ii'),
                    (3, 'hoenn', 'Hoenn', 'generation-iii'),
                    (4, 'sinnoh', 'Sinnoh', 'generation-iv')
            ) AS t (id, slug, name, generation_slug)
    )
INSERT INTO
    meta.regions (id, slug, name, generation_id)
SELECT
    r.id,
    r.slug,
    r.name,
    gen.id
FROM
    r
    JOIN meta.generations gen ON gen.slug = r.generation_slug ON CONFLICT (slug) DO NOTHING;