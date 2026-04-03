-- ============================================================================
-- Table: progress.item_opponent_refs
-- Scope: version-group-specific (swsh-ct, VG 20)
-- ============================================================================
INSERT INTO
    progress.item_opponent_refs (progress_item_id, opponent_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 20 AND game_id IS NULL AND slug = 'peony-battle'), (SELECT id FROM progress.opponents WHERE version_group_id = 20 AND game_id IS NULL AND slug = 'peony'));

-- peony-battle → Peony