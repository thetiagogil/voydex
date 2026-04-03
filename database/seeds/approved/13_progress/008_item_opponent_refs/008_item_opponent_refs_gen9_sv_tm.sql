-- ============================================================================
-- Table: progress.item_opponent_refs
-- Scope: version-group-specific (sv-tm, VG 24)
-- ============================================================================
INSERT INTO
    progress.item_opponent_refs (progress_item_id, opponent_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 24 AND game_id IS NULL AND slug = 'kieran-battle-1'), (SELECT id FROM progress.opponents WHERE version_group_id = 24 AND game_id IS NULL AND slug = 'kieran')), -- kieran-battle-1 → Kieran
    ((SELECT id FROM progress.items WHERE version_group_id = 24 AND game_id IS NULL AND slug = 'kieran-battle-2'), (SELECT id FROM progress.opponents WHERE version_group_id = 24 AND game_id IS NULL AND slug = 'kieran'));

-- kieran-battle-2 → Kieran