-- ============================================================================
-- Table: progress.item_opponent_refs
-- Scope: version-group-specific (usum, VG 16)
-- ============================================================================
WITH
    seed_data (item_vg, item_game_id, item_slug, opp_game_id, opp_slug) AS (
        VALUES
            (16, NULL::INTEGER, 'ilima-trial', NULL::INTEGER, 'ilima'),
            (16, NULL, 'grand-trial-hala', NULL, 'hala'),
            (16, NULL, 'lana-trial', NULL, 'lana'),
            (16, NULL, 'kiawe-trial', NULL, 'kiawe'),
            (16, NULL, 'mallow-trial', NULL, 'mallow'),
            (16, NULL, 'grand-trial-olivia', NULL, 'olivia'),
            (16, NULL, 'sophocles-trial', NULL, 'sophocles'),
            (16, NULL, 'acerola-trial', NULL, 'acerola'),
            (16, NULL, 'grand-trial-nanu', NULL, 'nanu'),
            (16, NULL, 'mina-trial', NULL, 'mina'),
            (16, NULL, 'grand-trial-hapu', NULL, 'hapu'),
            (16, NULL, 'ultra-necrozma', NULL, 'ultra-necrozma'),
            (16, NULL, 'elite-four-molayne', NULL, 'molayne'),
            (16, NULL, 'elite-four-olivia', NULL, 'olivia-e4'),
            (16, NULL, 'elite-four-acerola', NULL, 'acerola-e4'),
            (16, NULL, 'elite-four-kahili', NULL, 'kahili'),
            (16, NULL, 'champion-hau', NULL, 'hau')
    )
INSERT INTO
    progress.item_opponent_refs (progress_item_id, opponent_id)
SELECT
    i.id,
    o.id
FROM
    seed_data s
    JOIN progress.items i ON i.version_group_id = s.item_vg
        AND i.game_id IS NOT DISTINCT FROM s.item_game_id
        AND i.slug = s.item_slug
    JOIN progress.opponents o ON o.version_group_id = s.item_vg
        AND o.game_id IS NOT DISTINCT FROM s.opp_game_id
        AND o.slug = s.opp_slug;
