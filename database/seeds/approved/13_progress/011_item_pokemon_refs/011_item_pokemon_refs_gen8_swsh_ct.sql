-- ============================================================================
-- Table: progress.item_pokemon_refs
-- Scope: version-group-specific (swsh-ct, VG 20)
-- ============================================================================
INSERT INTO
    progress.item_pokemon_refs (progress_item_id, species_id, form_id)
VALUES
    ((SELECT id FROM progress.items WHERE version_group_id = 20 AND game_id IS NULL AND slug = 'calyrex'), 898, 89800), -- calyrex → Calyrex
    ((SELECT id FROM progress.items WHERE version_group_id = 20 AND game_id IS NULL AND slug = 'regieleki-regidrago'), 894, 89400), -- regieleki-regidrago → Regieleki
    ((SELECT id FROM progress.items WHERE version_group_id = 20 AND game_id IS NULL AND slug = 'regieleki-regidrago'), 895, 89500), -- regieleki-regidrago → Regidrago
    ((SELECT id FROM progress.items WHERE version_group_id = 20 AND game_id IS NULL AND slug = 'galarian-articuno'), 144, 14401), -- galarian-articuno → Articuno (Galar)
    ((SELECT id FROM progress.items WHERE version_group_id = 20 AND game_id IS NULL AND slug = 'galarian-zapdos'), 145, 14501), -- galarian-zapdos → Zapdos (Galar)
    ((SELECT id FROM progress.items WHERE version_group_id = 20 AND game_id IS NULL AND slug = 'galarian-moltres'), 146, 14601);

-- galarian-moltres → Moltres (Galar)