-- ============================================================================
-- View: views.play_summary
-- Play overview with game, generation, region, and status names resolved.
-- Useful for play list screens and dashboard cards.
-- ============================================================================
CREATE
OR REPLACE VIEW views.play_summary AS
SELECT
    p.id AS play_id,
    p.user_id,
    p.name AS play_name,
    p.notes,
    p.game_id,
    g.slug AS game_slug,
    g.name AS game_name,
    g.version_group_id,
    vg.slug AS version_group_slug,
    vg.name AS version_group_name,
    gen.id AS generation_id,
    gen.slug AS generation_slug,
    gen.name AS generation_name,
    r.id AS region_id,
    r.slug AS region_slug,
    r.name AS region_name,
    gt.slug AS game_type_slug,
    gt.name AS game_type_name,
    p.status_id,
    ps.slug AS status_slug,
    ps.name AS status_name,
    ps.is_terminal AS status_is_terminal,
    p.include_unique_pokemon,
    p.include_regional_dex,
    p.include_national_dex,
    p.include_mythical_pokemon,
    p.created_at,
    p.updated_at
FROM
    gameplay.plays p
    JOIN meta.games g ON p.game_id = g.id
    JOIN meta.version_groups vg ON g.version_group_id = vg.id
    JOIN meta.generations gen ON g.generation_id = gen.id
    JOIN meta.regions r ON g.region_id = r.id
    JOIN meta.game_types gt ON g.type_id = gt.id
    JOIN gameplay.play_statuses ps ON p.status_id = ps.id;

COMMENT ON VIEW views.play_summary IS 'Play overview with game, generation, region, status, and version group names resolved. Inherits RLS from gameplay.plays.';