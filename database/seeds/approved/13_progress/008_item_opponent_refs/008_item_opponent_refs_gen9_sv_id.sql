-- ============================================================================
-- Table: progress.item_opponent_refs
-- Scope: version-group-specific (sv-id, VG 25)
-- ============================================================================
INSERT INTO
    progress.item_opponent_refs (progress_item_id, opponent_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 25 AND game_id IS NULL AND slug = 'bb-elite-four-crispin'), (SELECT id FROM progress.opponents WHERE version_group_id = 25 AND game_id IS NULL AND slug = 'crispin')), -- bb-elite-four-crispin → Crispin
    ((SELECT id FROM progress.items WHERE version_group_id = 25 AND game_id IS NULL AND slug = 'bb-elite-four-amarys'), (SELECT id FROM progress.opponents WHERE version_group_id = 25 AND game_id IS NULL AND slug = 'amarys')), -- bb-elite-four-amarys → Amarys
    ((SELECT id FROM progress.items WHERE version_group_id = 25 AND game_id IS NULL AND slug = 'bb-elite-four-lacey'), (SELECT id FROM progress.opponents WHERE version_group_id = 25 AND game_id IS NULL AND slug = 'lacey')), -- bb-elite-four-lacey → Lacey
    ((SELECT id FROM progress.items WHERE version_group_id = 25 AND game_id IS NULL AND slug = 'bb-elite-four-drayton'), (SELECT id FROM progress.opponents WHERE version_group_id = 25 AND game_id IS NULL AND slug = 'drayton')), -- bb-elite-four-drayton → Drayton
    ((SELECT id FROM progress.items WHERE version_group_id = 25 AND game_id IS NULL AND slug = 'bb-champion-kieran'), (SELECT id FROM progress.opponents WHERE version_group_id = 25 AND game_id IS NULL AND slug = 'kieran'));

-- bb-champion-kieran → Kieran