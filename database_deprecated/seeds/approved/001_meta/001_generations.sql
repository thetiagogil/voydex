INSERT INTO
    meta.generations (id, slug, name, start_year, end_year, new_pokemon_count, total_pokemon_count)
VALUES
    (1, 'generation-i', 'Generation I', 1998, 2000, 151, 151),
    (2, 'generation-ii', 'Generation II', 2000, 2001, 100, 251),
    (3, 'generation-iii', 'Generation III', 2003, 2005, 135, 386),
    (4, 'generation-iv', 'Generation IV', 2007, 2010, 107, 493),
    (5, 'generation-v', 'Generation V', 2010, 2012, 156, 649),
    (6, 'generation-vi', 'Generation VI', 2013, 2014, 72, 721),
    (7, 'generation-vii', 'Generation VII', 2016, 2018, 88, 809),
    (8, 'generation-viii', 'Generation VIII', 2019, 2022, 96, 905),
    (9, 'generation-ix', 'Generation IX', 2022, 2025, 120, 1025) ON CONFLICT (slug) DO NOTHING;