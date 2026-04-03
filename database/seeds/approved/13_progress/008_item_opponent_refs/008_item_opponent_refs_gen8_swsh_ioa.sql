-- ============================================================================
-- Table: progress.item_opponent_refs
-- Scope: version-group-specific (swsh-ioa, VG 19)
-- ============================================================================
INSERT INTO
    progress.item_opponent_refs (progress_item_id, opponent_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 19 AND game_id IS NULL AND slug = 'mustard-battle-1'), (SELECT id FROM progress.opponents WHERE version_group_id = 19 AND game_id IS NULL AND slug = 'mustard')), -- mustard-battle-1 → Mustard
    ((SELECT id FROM progress.items WHERE version_group_id = 19 AND game_id IS NULL AND slug = 'mustard-battle-2'), (SELECT id FROM progress.opponents WHERE version_group_id = 19 AND game_id IS NULL AND slug = 'mustard'));

-- mustard-battle-2 → Mustard