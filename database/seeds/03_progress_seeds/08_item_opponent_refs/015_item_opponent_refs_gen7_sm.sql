-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.item_opponent_refs
-- Scope: version-group-specific (sm, VG 15)
WITH
    seed_data (item_vg, item_game_id, item_slug, opp_game_id, opp_slug) AS (
        VALUES
            (15, NULL::INTEGER, 'ilima-trial', NULL::INTEGER, 'ilima'),
            (15, NULL, 'grand-trial-hala', NULL, 'hala'),
            (15, NULL, 'lana-trial', NULL, 'lana'),
            (15, NULL, 'kiawe-trial', NULL, 'kiawe'),
            (15, NULL, 'mallow-trial', NULL, 'mallow'),
            (15, NULL, 'grand-trial-olivia', NULL, 'olivia'),
            (15, NULL, 'sophocles-trial', NULL, 'sophocles'),
            (15, NULL, 'acerola-trial', NULL, 'acerola'),
            (15, NULL, 'grand-trial-nanu', NULL, 'nanu'),
            (15, NULL, 'grand-trial-hapu', NULL, 'hapu'),
            (15, NULL, 'elite-four-hala', NULL, 'hala-e4'),
            (15, NULL, 'elite-four-olivia', NULL, 'olivia-e4'),
            (15, NULL, 'elite-four-acerola', NULL, 'acerola-e4'),
            (15, NULL, 'elite-four-kahili', NULL, 'kahili'),
            (15, NULL, 'champion-kukui', NULL, 'kukui')
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
