INSERT INTO
    meta.generations (id, slug, name, start_year)
VALUES
    (1, 'generation-i', 'Generation I', 1998),
    (2, 'generation-ii', 'Generation II', 2000),
    (3, 'generation-iii', 'Generation III', 2003),
    (4, 'generation-iv', 'Generation IV', 2007),
    (5, 'generation-v', 'Generation V', 2010),
    (6, 'generation-vi', 'Generation VI', 2013),
    (7, 'generation-vii', 'Generation VII', 2016),
    (8, 'generation-viii', 'Generation VIII', 2019),
    (9, 'generation-ix', 'Generation IX', 2022) ON CONFLICT (slug) DO NOTHING;