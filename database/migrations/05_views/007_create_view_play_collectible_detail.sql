-- ============================================================================
-- View: views.play_collectible_detail
-- Collectible entries for a play with collection state.
-- Shows all collectible entries for collectibles in the play's version group.
-- ============================================================================
CREATE
OR REPLACE VIEW views.play_collectible_detail AS
SELECT
    p.id AS play_id,
    p.user_id,
    c.id AS collectible_id,
    c.slug AS collectible_slug,
    c.name AS collectible_name,
    c.collectible_type,
    c.total_count,
    c.sprite_url AS collectible_sprite_url,
    ce.id AS collectible_entry_id,
    ce.slug AS entry_slug,
    ce.name AS entry_name,
    ce.location_name,
    ce.sub_location_name,
    ce.description AS entry_description,
    ce.sort_order AS entry_sort_order,
    CASE
        WHEN pce.play_id IS NOT NULL THEN TRUE
        ELSE FALSE
    END AS is_collected,
    c.version_group_id,
    vg.name AS version_group_name,
    vg.parent_version_group_id
FROM
    gameplay.plays p
    JOIN tracking.collectibles c ON c.version_group_id IN (
        SELECT
            gameplay.get_effective_version_group_ids (p.id)
    )
    AND (
        c.game_id IS NULL
        OR c.game_id = p.game_id
    )
    JOIN tracking.collectible_entries ce ON ce.collectible_id = c.id
    JOIN reference.version_groups vg ON c.version_group_id = vg.id
    LEFT JOIN gameplay.play_collectible_entries pce ON pce.play_id = p.id
    AND pce.collectible_entry_id = ce.id
ORDER BY
    vg.id,
    c.id,
    ce.sort_order;

COMMENT ON VIEW views.play_collectible_detail IS 'Collectible entries for a play with collected state. DLC-aware via get_effective_version_group_ids(). Inherits RLS from gameplay.plays.';