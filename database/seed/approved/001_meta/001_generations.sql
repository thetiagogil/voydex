INSERT INTO
    meta.generations (slug, name, start_year)
VALUES
    ('generation-i', 'Generation I', 1998),
    ('generation-ii', 'Generation II', 2000),
    ('generation-iii', 'Generation III', 2003),
    ('generation-iv', 'Generation IV', 2007),
    ('generation-v', 'Generation V', 2010),
    ('generation-vi', 'Generation VI', 2013),
    ('generation-vii', 'Generation VII', 2016),
    ('generation-viii', 'Generation VIII', 2019),
    ('generation-ix', 'Generation IX', 2022) ON CONFLICT (slug) DO NOTHING;