INSERT INTO
    meta.generations (id, slug, name, start_year, end_year, new_pokemon_count, total_pokemon_count)
VALUES
    (1, 'generation-i', 'Generation I', 1996, 2000, 151, 151),
    (2, 'generation-ii', 'Generation II', 2000, 2002, 100, 251),
    (3, 'generation-iii', 'Generation III', 2002, 2006, 135, 386),
    (4, 'generation-iv', 'Generation IV', 2006, 2010, 107, 493) ON CONFLICT (slug) DO NOTHING;