-- Generated from PokeAPI (/type)
-- Skipped slugs: unknown, stellar
-- Generated at: 2025-10-19T16:12:22.520Z
WITH
    t AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('normal', 'Normal', 'generation-i'),
                    ('fighting', 'Fighting', 'generation-i'),
                    ('flying', 'Flying', 'generation-i'),
                    ('poison', 'Poison', 'generation-i'),
                    ('ground', 'Ground', 'generation-i'),
                    ('rock', 'Rock', 'generation-i'),
                    ('bug', 'Bug', 'generation-i'),
                    ('ghost', 'Ghost', 'generation-i'),
                    ('steel', 'Steel', 'generation-ii'),
                    ('fire', 'Fire', 'generation-i'),
                    ('water', 'Water', 'generation-i'),
                    ('grass', 'Grass', 'generation-i'),
                    ('electric', 'Electric', 'generation-i'),
                    ('psychic', 'Psychic', 'generation-i'),
                    ('ice', 'Ice', 'generation-i'),
                    ('dragon', 'Dragon', 'generation-i'),
                    ('dark', 'Dark', 'generation-ii'),
                    ('fairy', 'Fairy', 'generation-vi')
            ) AS t (slug, name, generation_slug)
    )
INSERT INTO
    dex.types (slug, name, generation_introduced_id)
SELECT
    t.slug,
    t.name,
    gen.id
FROM
    t
    JOIN meta.generations gen ON gen.slug = t.generation_slug ON CONFLICT (slug) DO NOTHING;