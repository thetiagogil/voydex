-- View: Game Detail
-- Purpose: Game page - complete game info with generation and region data
-- Used in: /adventures/gen/[genSlug]/game/[gameSlug]
CREATE
OR REPLACE VIEW meta.game_detail AS
SELECT
    gm.id,
    gm.slug,
    gm.name,
    gm.type,
    gm.release_year,
    gm.regional_dex_count,
    gm.national_dex_count,
    gen.id AS generation_id,
    gen.slug AS generation_slug,
    gen.name AS generation_name,
    r.id AS region_id,
    r.slug AS region_slug,
    r.name AS region_name,
    vg.id AS version_group_id,
    vg.slug AS version_group_slug,
    vg.name AS version_group_name
FROM
    meta.games gm
    JOIN meta.generations gen ON gm.generation_id = gen.id
    JOIN meta.regions r ON gm.region_id = r.id
    JOIN meta.version_groups vg ON gm.version_group_id = vg.id;

-- Grant permissions
GRANT
SELECT
    ON meta.game_detail TO authenticated,
    anon;