INSERT INTO
    meta.generations (id, slug, name, start_year)
VALUES
    (1, 'generation-i', 'Generation I', 1998),
    (2, 'generation-ii', 'Generation II', 2000),
    (3, 'generation-iii', 'Generation III', 2003),
    (4, 'generation-iv', 'Generation IV', 2007) ON CONFLICT (slug) DO NOTHING;