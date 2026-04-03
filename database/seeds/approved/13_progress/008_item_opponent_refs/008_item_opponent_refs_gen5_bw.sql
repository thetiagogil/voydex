-- ============================================================================
-- Table: progress.item_opponent_refs
-- Scope: version-group-specific (bw, VG 11)
-- ============================================================================
INSERT INTO
    progress.item_opponent_refs (progress_item_id, opponent_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'trio-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'cilan-chili-cress')), -- trio-badge → Cilan/Chili/Cress
    ((SELECT id FROM progress.items WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'basic-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'lenora')), -- basic-badge → Lenora
    ((SELECT id FROM progress.items WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'insect-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'burgh')), -- insect-badge → Burgh
    ((SELECT id FROM progress.items WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'bolt-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'elesa')), -- bolt-badge → Elesa
    ((SELECT id FROM progress.items WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'quake-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'clay')), -- quake-badge → Clay
    ((SELECT id FROM progress.items WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'jet-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'skyla')), -- jet-badge → Skyla
    ((SELECT id FROM progress.items WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'freeze-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'brycen')), -- freeze-badge → Brycen
    ((SELECT id FROM progress.items WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'legend-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'drayden')), -- legend-badge → Drayden
    ((SELECT id FROM progress.items WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'elite-four-shauntal'), (SELECT id FROM progress.opponents WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'shauntal')), -- elite-four-shauntal → Shauntal
    ((SELECT id FROM progress.items WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'elite-four-grimsley'), (SELECT id FROM progress.opponents WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'grimsley')), -- elite-four-grimsley → Grimsley
    ((SELECT id FROM progress.items WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'elite-four-caitlin'), (SELECT id FROM progress.opponents WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'caitlin')), -- elite-four-caitlin → Caitlin
    ((SELECT id FROM progress.items WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'elite-four-marshal'), (SELECT id FROM progress.opponents WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'marshal')), -- elite-four-marshal → Marshal
    ((SELECT id FROM progress.items WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'n-battle'), (SELECT id FROM progress.opponents WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'n')), -- n-battle → N
    ((SELECT id FROM progress.items WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'ghetsis-battle'), (SELECT id FROM progress.opponents WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'ghetsis')), -- ghetsis-battle → Ghetsis
    ((SELECT id FROM progress.items WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'champion-alder'), (SELECT id FROM progress.opponents WHERE version_group_id = 11 AND game_id IS NULL AND slug = 'alder'));

-- champion-alder → Alder