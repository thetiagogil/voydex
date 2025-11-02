-- View: Generation Overview
-- Purpose: Dashboard page - list all generations with metadata
-- Used in: /dashboard, /gen
CREATE
OR REPLACE VIEW meta.generation_overview AS
SELECT
    g.id,
    g.slug,
    g.name,
    g.start_year,
    COUNT(DISTINCT gm.id) AS game_count,
    COUNT(DISTINCT ps.id) AS pokemon_count,
    STRING_AGG (
        DISTINCT r.name,
        ', '
        ORDER BY
            r.name
    ) AS regions
FROM
    meta.generations g
    LEFT JOIN meta.games gm ON gm.generation_id = g.id
    LEFT JOIN meta.regions r ON r.generation_id = g.id
    LEFT JOIN dex.pokemon_species ps ON ps.introduced_generation_id = g.id
GROUP BY
    g.id,
    g.slug,
    g.name,
    g.start_year
ORDER BY
    g.id;

-- Grant permissions
GRANT
SELECT
    ON meta.generation_overview TO authenticated,
    anon;