-- View: Playthrough List
-- Purpose: List user's playthroughs with game context and summary stats
-- Used in: /adventures, /adventures/gen/[genSlug]/game/[gameSlug]
CREATE
OR REPLACE VIEW gameplay.playthrough_list AS
SELECT
    p.id,
    p.user_id,
    p.name,
    p.status,
    p.notes,
    p.created_at,
    p.updated_at,
    p.include_unique_pokemon,
    p.include_regional_dex,
    p.include_national_dex,
    p.include_mythical_pokemon,
    -- Game info
    gm.id AS game_id,
    gm.slug AS game_slug,
    gm.name AS game_name,
    gm.type AS game_type,
    gm.release_year AS game_year,
    gen.id AS generation_id,
    gen.slug AS generation_slug,
    gen.name AS generation_name,
    r.name AS region_name,
    vg.id AS version_group_id,
    vg.slug AS version_group_slug,
    -- Progress summary
    COUNT(DISTINCT prog.id) AS progress_completed_count,
    COUNT(
        DISTINCT CASE
            WHEN pc_cat.type = 'main-story' THEN prog.id
        END
    ) AS badges_earned,
    COUNT(DISTINCT tp.id) AS team_size,
    COUNT(DISTINCT pc.species_id) AS pokemon_caught_count
FROM
    gameplay.plays p
    JOIN meta.games gm ON p.game_id = gm.id
    JOIN meta.generations gen ON gm.generation_id = gen.id
    JOIN meta.regions r ON gm.region_id = r.id
    JOIN meta.version_groups vg ON gm.version_group_id = vg.id
    LEFT JOIN gameplay.progress prog ON p.id = prog.play_id
    LEFT JOIN meta.progress_items pi ON prog.progress_item_id = pi.id
    LEFT JOIN meta.progress_categories pc_cat ON pi.progress_category_id = pc_cat.id
    LEFT JOIN gameplay.team_pokemon tp ON p.id = tp.play_id
    LEFT JOIN gameplay.pokemon_caught pc ON p.id = pc.play_id
GROUP BY
    p.id,
    gm.id,
    gen.id,
    r.name,
    vg.id,
    vg.slug;

-- Grant permissions
GRANT
SELECT
    ON gameplay.playthrough_list TO authenticated;