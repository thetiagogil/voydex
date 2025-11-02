-- View: Team Builder Pokemon
-- Purpose: Pokemon selection for team building in specific games
-- Used in: Team builder components, Add to team dialogs
CREATE
OR REPLACE VIEW dex.team_builder_pokemon AS
SELECT
    rp.*,
    n.id AS nature_id,
    n.name AS nature_name,
    n.increased_stat,
    n.decreased_stat
FROM
    dex.regional_pokedex rp
    CROSS JOIN dex.natures n
WHERE
    rp.is_default_form = TRUE;

-- Grant permissions
GRANT
SELECT
    ON dex.team_builder_pokemon TO authenticated,
    anon;