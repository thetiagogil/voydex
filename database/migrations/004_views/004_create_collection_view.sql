-- =============================================================================
-- VIEW: user_pokemon_collection
-- All pokemon from team across all user's plays
-- Used for the Collection page
-- =============================================================================
CREATE
OR REPLACE VIEW views.user_pokemon_collection AS
SELECT
    t.id AS pokemon_id,
    t.play_id,
    p.user_id,
    'team' AS source,
    -- Pokemon info
    t.nickname,
    t.level,
    t.gender,
    t.is_shiny,
    t.position,
    t.created_at,
    t.updated_at,
    -- Play info
    p.name AS play_name,
    ps.slug AS play_status,
    -- Game info
    g.id AS game_id,
    g.slug AS game_slug,
    g.name AS game_name,
    -- Generation info
    gen.id AS generation_id,
    gen.slug AS generation_slug,
    gen.name AS generation_name,
    -- Species info
    sp.id AS species_id,
    sp.slug AS species_slug,
    sp.name AS species_name,
    sp.national_number,
    sp.is_legendary,
    sp.is_mythical,
    -- Form info
    f.id AS form_id,
    f.slug AS form_slug,
    f.name AS form_name,
    f.sprite_url,
    -- Types from attributes (for the generation of the game)
    t1.id AS type1_id,
    t1.slug AS type1_slug,
    t1.name AS type1_name,
    t2.id AS type2_id,
    t2.slug AS type2_slug,
    t2.name AS type2_name,
    -- Additional team details
    t.ability_id,
    ab.slug AS ability_slug,
    ab.name AS ability_name,
    t.nature_id,
    n.slug AS nature_slug,
    n.name AS nature_name
FROM
    gameplay.pokemon_team t
    JOIN gameplay.plays p ON t.play_id = p.id
    JOIN gameplay.play_statuses ps ON p.status_id = ps.id
    JOIN meta.games g ON p.game_id = g.id
    JOIN meta.generations gen ON g.generation_id = gen.id
    JOIN meta.pokemon_species sp ON t.species_id = sp.id
    JOIN meta.pokemon_forms f ON t.form_id = f.id
    -- Get attributes for types (use latest available for the game's generation)
    LEFT JOIN LATERAL (
        SELECT
            a.type1_id,
            a.type2_id
        FROM
            meta.pokemon_attributes a
        WHERE
            a.form_id = f.id
            AND a.generation_start_id <= g.generation_id
        ORDER BY
            a.generation_start_id DESC
        LIMIT
            1
    ) attrs ON TRUE
    LEFT JOIN meta.types t1 ON attrs.type1_id = t1.id
    LEFT JOIN meta.types t2 ON attrs.type2_id = t2.id
    LEFT JOIN meta.abilities ab ON t.ability_id = ab.id
    LEFT JOIN meta.natures n ON t.nature_id = n.id;