-- ============================================================================
-- Table: progress.item_opponent_refs
-- Scope: version-group-specific (sv, VG 23)
-- ============================================================================
INSERT INTO
    progress.item_opponent_refs (progress_item_id, opponent_id)
VALUES
    -- Victory Road gyms
    ((SELECT id FROM progress.items WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'bug-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'katy')), -- bug-badge → Katy
    ((SELECT id FROM progress.items WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'grass-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'brassius')), -- grass-badge → Brassius
    ((SELECT id FROM progress.items WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'electric-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'iono')), -- electric-badge → Iono
    ((SELECT id FROM progress.items WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'water-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'kofu')), -- water-badge → Kofu
    ((SELECT id FROM progress.items WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'normal-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'larry')), -- normal-badge → Larry
    ((SELECT id FROM progress.items WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'ghost-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'ryme')), -- ghost-badge → Ryme
    ((SELECT id FROM progress.items WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'psychic-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'tulip')), -- psychic-badge → Tulip
    ((SELECT id FROM progress.items WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'ice-badge'), (SELECT id FROM progress.opponents WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'grusha')), -- ice-badge → Grusha
    -- Starfall Street bosses
    ((SELECT id FROM progress.items WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'dark-star'), (SELECT id FROM progress.opponents WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'giacomo')), -- dark-star → Giacomo
    ((SELECT id FROM progress.items WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'fire-star'), (SELECT id FROM progress.opponents WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'mela')), -- fire-star → Mela
    ((SELECT id FROM progress.items WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'poison-star'), (SELECT id FROM progress.opponents WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'atticus')), -- poison-star → Atticus
    ((SELECT id FROM progress.items WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'fairy-star'), (SELECT id FROM progress.opponents WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'ortega')), -- fairy-star → Ortega
    ((SELECT id FROM progress.items WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'fighting-star'), (SELECT id FROM progress.opponents WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'eri')), -- fighting-star → Eri
    -- Elite Four + Champions
    ((SELECT id FROM progress.items WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'elite-four-rika'), (SELECT id FROM progress.opponents WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'rika')), -- elite-four-rika → Rika
    ((SELECT id FROM progress.items WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'elite-four-poppy'), (SELECT id FROM progress.opponents WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'poppy')), -- elite-four-poppy → Poppy
    ((SELECT id FROM progress.items WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'elite-four-larry'), (SELECT id FROM progress.opponents WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'larry-e4')), -- elite-four-larry → Larry (E4)
    ((SELECT id FROM progress.items WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'elite-four-hassel'), (SELECT id FROM progress.opponents WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'hassel')), -- elite-four-hassel → Hassel
    ((SELECT id FROM progress.items WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'top-champion-geeta'), (SELECT id FROM progress.opponents WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'geeta')), -- top-champion-geeta → Geeta
    ((SELECT id FROM progress.items WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'champion-nemona'), (SELECT id FROM progress.opponents WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'nemona')), -- champion-nemona → Nemona
    ((SELECT id FROM progress.items WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'professor-ai'), (SELECT id FROM progress.opponents WHERE version_group_id = 23 AND game_id IS NULL AND slug = 'professor-ai'));

-- professor-ai → Professor AI