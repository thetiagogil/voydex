WITH
    xxx AS (
        SELECT
            *
        FROM
            (
                VALUES
                    (1, 'normal', 'Normal', 'generation-i'),
                    (2, 'fighting', 'Fighting', 'generation-i'),
                    (3, 'flying', 'Flying', 'generation-i'),
                    (4, 'poison', 'Poison', 'generation-i'),
                    (5, 'ground', 'Ground', 'generation-i'),
                    (6, 'rock', 'Rock', 'generation-i'),
                    (7, 'bug', 'Bug', 'generation-i'),
                    (8, 'ghost', 'Ghost', 'generation-i'),
                    (9, 'steel', 'Steel', 'generation-ii'),
                    (10, 'fire', 'Fire', 'generation-i'),
                    (11, 'water', 'Water', 'generation-i'),
                    (12, 'grass', 'Grass', 'generation-i'),
                    (13, 'electric', 'Electric', 'generation-i'),
                    (14, 'psychic', 'Psychic', 'generation-i'),
                    (15, 'ice', 'Ice', 'generation-i'),
                    (16, 'dragon', 'Dragon', 'generation-i'),
                    (17, 'dark', 'Dark', 'generation-ii')
            ) AS xxx (id, slug, name, generation_slug)
    )
INSERT INTO
    dex.types (id, slug, name, generation_introduced_id)
SELECT
    xxx.id,
    xxx.slug,
    xxx.name,
    gen.id
FROM
    xxx
    JOIN meta.generations gen ON gen.slug = xxx.generation_slug ON CONFLICT (slug) DO NOTHING;