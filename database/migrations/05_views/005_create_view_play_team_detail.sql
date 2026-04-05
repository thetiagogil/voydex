-- ============================================================================
-- View: views.play_team_detail
-- Team Pokémon with species, form, type, nature, ability, and move names.
-- Useful for team display and management screens.
-- ============================================================================
CREATE
OR REPLACE VIEW views.play_team_detail AS
SELECT
    pt.id AS team_pokemon_id,
    pt.play_id,
    pt.position,
    pt.nickname,
    pt.level,
    pt.gender,
    pt.is_shiny,
    -- Species
    pt.species_id,
    sp.slug AS species_slug,
    sp.name AS species_name,
    -- Form
    pt.form_id,
    pf.slug AS form_slug,
    pf.name AS form_name,
    pf.sprite_url,
    -- Types (from pokemon_attributes for the play's generation)
    pa.type1_id,
    t1.slug AS type1_slug,
    t1.name AS type1_name,
    pa.type2_id,
    t2.slug AS type2_slug,
    t2.name AS type2_name,
    -- Nature
    pt.nature_id,
    n.slug AS nature_slug,
    n.name AS nature_name,
    -- Ability
    pt.ability_id,
    ab.slug AS ability_slug,
    ab.name AS ability_name,
    -- Moves
    pt.move1_id,
    m1.slug AS move1_slug,
    m1.name AS move1_name,
    pt.move2_id,
    m2.slug AS move2_slug,
    m2.name AS move2_name,
    pt.move3_id,
    m3.slug AS move3_slug,
    m3.name AS move3_name,
    pt.move4_id,
    m4.slug AS move4_slug,
    m4.name AS move4_name,
    -- Timestamps
    pt.created_at,
    pt.updated_at
FROM
    gameplay.pokemon_team pt
    JOIN meta.pokemon_species sp ON pt.species_id = sp.id
    JOIN meta.pokemon_forms pf ON pt.form_id = pf.id
    -- Get the play's game to determine generation for type lookup
    JOIN gameplay.plays p ON pt.play_id = p.id
    JOIN meta.games g ON p.game_id = g.id
    -- Get pokemon attributes for the correct generation (latest <= game's gen)
    LEFT JOIN LATERAL (
        SELECT
            pa2.type1_id,
            pa2.type2_id
        FROM
            meta.pokemon_attributes pa2
        WHERE
            pa2.species_id = pt.species_id
            AND pa2.form_id = pt.form_id
            AND pa2.generation_start_id <= g.generation_id
        ORDER BY
            pa2.generation_start_id DESC
        LIMIT
            1
    ) pa ON TRUE
    LEFT JOIN meta.types t1 ON pa.type1_id = t1.id
    LEFT JOIN meta.types t2 ON pa.type2_id = t2.id
    LEFT JOIN meta.natures n ON pt.nature_id = n.id
    LEFT JOIN meta.abilities ab ON pt.ability_id = ab.id
    LEFT JOIN meta.moves m1 ON pt.move1_id = m1.id
    LEFT JOIN meta.moves m2 ON pt.move2_id = m2.id
    LEFT JOIN meta.moves m3 ON pt.move3_id = m3.id
    LEFT JOIN meta.moves m4 ON pt.move4_id = m4.id;

COMMENT ON VIEW views.play_team_detail IS 'Team Pokémon with species, form, type, nature, ability, and move names resolved. Types use generation-aware lookup via pokemon_attributes timeline. Inherits RLS from gameplay.pokemon_team.';