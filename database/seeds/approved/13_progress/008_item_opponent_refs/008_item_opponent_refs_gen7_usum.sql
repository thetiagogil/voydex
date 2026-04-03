-- ============================================================================
-- Table: progress.item_opponent_refs
-- Scope: version-group-specific (usum, VG 16)
-- ============================================================================
INSERT INTO
    progress.item_opponent_refs (progress_item_id, opponent_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'ilima-trial'), (SELECT id FROM progress.opponents WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'ilima')), -- ilima-trial → Ilima
    ((SELECT id FROM progress.items WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'grand-trial-hala'), (SELECT id FROM progress.opponents WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'hala')), -- grand-trial-hala → Hala
    ((SELECT id FROM progress.items WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'lana-trial'), (SELECT id FROM progress.opponents WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'lana')), -- lana-trial → Lana
    ((SELECT id FROM progress.items WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'kiawe-trial'), (SELECT id FROM progress.opponents WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'kiawe')), -- kiawe-trial → Kiawe
    ((SELECT id FROM progress.items WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'mallow-trial'), (SELECT id FROM progress.opponents WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'mallow')), -- mallow-trial → Mallow
    ((SELECT id FROM progress.items WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'grand-trial-olivia'), (SELECT id FROM progress.opponents WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'olivia')), -- grand-trial-olivia → Olivia
    ((SELECT id FROM progress.items WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'sophocles-trial'), (SELECT id FROM progress.opponents WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'sophocles')), -- sophocles-trial → Sophocles
    ((SELECT id FROM progress.items WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'acerola-trial'), (SELECT id FROM progress.opponents WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'acerola')), -- acerola-trial → Acerola
    ((SELECT id FROM progress.items WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'grand-trial-nanu'), (SELECT id FROM progress.opponents WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'nanu')), -- grand-trial-nanu → Nanu
    ((SELECT id FROM progress.items WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'mina-trial'), (SELECT id FROM progress.opponents WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'mina')), -- mina-trial → Mina
    ((SELECT id FROM progress.items WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'grand-trial-hapu'), (SELECT id FROM progress.opponents WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'hapu')), -- grand-trial-hapu → Hapu
    ((SELECT id FROM progress.items WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'ultra-necrozma'), (SELECT id FROM progress.opponents WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'ultra-necrozma')), -- ultra-necrozma → Ultra Necrozma
    ((SELECT id FROM progress.items WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'elite-four-molayne'), (SELECT id FROM progress.opponents WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'molayne')), -- elite-four-molayne → Molayne
    ((SELECT id FROM progress.items WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'elite-four-olivia'), (SELECT id FROM progress.opponents WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'olivia-e4')), -- elite-four-olivia → Olivia (E4)
    ((SELECT id FROM progress.items WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'elite-four-acerola'), (SELECT id FROM progress.opponents WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'acerola-e4')), -- elite-four-acerola → Acerola (E4)
    ((SELECT id FROM progress.items WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'elite-four-kahili'), (SELECT id FROM progress.opponents WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'kahili')), -- elite-four-kahili → Kahili
    ((SELECT id FROM progress.items WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'champion-hau'), (SELECT id FROM progress.opponents WHERE version_group_id = 16 AND game_id IS NULL AND slug = 'hau'));

-- champion-hau → Hau