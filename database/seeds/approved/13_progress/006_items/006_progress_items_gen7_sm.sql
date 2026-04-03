-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.items
-- Scope: version-group-specific (sm, VG 15)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Version Group: 15 (Sun / Moon)
-- Trial system replaces gyms. No gym badges.
-- Island challenge: 6 trial captains + 4 grand trials (kahunas).
-- No Mina trial in SM (she appears but has no trial).
-- Kukui is the champion battle (not Hau like USUM).
-- Box legendary: Solgaleo (Sun, game 25) / Lunala (Moon, game 26).
-- Zygarde Cells are the main collectible (100 total).
INSERT INTO
    progress.items (id, version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story (Island Challenge)
    (1270, 15, NULL, 1, 2, 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Kukui.', 1, FALSE),
    (1271, 15, NULL, 1, 1, 'ilima-trial', 'Ilima''s Trial', 'Complete Ilima''s Normal-type trial in Verdant Cavern.', 2, FALSE),
    (1272, 15, NULL, 1, 1, 'grand-trial-hala', 'Grand Trial: Hala', 'Defeat Kahuna Hala on Melemele Island.', 3, FALSE),
    (1273, 15, NULL, 1, 1, 'lana-trial', 'Lana''s Trial', 'Complete Lana''s Water-type trial in Brooklet Hill.', 4, FALSE),
    (1274, 15, NULL, 1, 1, 'kiawe-trial', 'Kiawe''s Trial', 'Complete Kiawe''s Fire-type trial in Wela Volcano Park.', 5, FALSE),
    (1275, 15, NULL, 1, 1, 'mallow-trial', 'Mallow''s Trial', 'Complete Mallow''s Grass-type trial in Lush Jungle.', 6, FALSE),
    (1276, 15, NULL, 1, 1, 'grand-trial-olivia', 'Grand Trial: Olivia', 'Defeat Kahuna Olivia on Akala Island.', 7, FALSE),
    (1277, 15, NULL, 1, 1, 'sophocles-trial', 'Sophocles''s Trial', 'Complete Sophocles''s Electric-type trial in Hokulani Observatory.', 8, FALSE),
    (1278, 15, NULL, 1, 1, 'acerola-trial', 'Acerola''s Trial', 'Complete Acerola''s Ghost-type trial in the Thrifty Megamart.', 9, FALSE),
    (1279, 15, NULL, 1, 1, 'grand-trial-nanu', 'Grand Trial: Nanu', 'Defeat Kahuna Nanu on Ula''ula Island.', 10, FALSE),
    (1280, 15, NULL, 1, 2, 'vast-poni-canyon-trial', 'Vast Poni Canyon Trial', 'Complete the Dragon-type trial in Vast Poni Canyon.', 11, FALSE),
    (1281, 15, NULL, 1, 1, 'grand-trial-hapu', 'Grand Trial: Hapu', 'Defeat Kahuna Hapu on Poni Island.', 12, FALSE),
    -- Main Story (Pokémon League)
    (1282, 15, NULL, 1, 1, 'elite-four-hala', 'Elite Four Hala', 'Defeat Hala of the Elite Four.', 13, FALSE),
    (1283, 15, NULL, 1, 1, 'elite-four-olivia', 'Elite Four Olivia', 'Defeat Olivia of the Elite Four.', 14, FALSE),
    (1284, 15, NULL, 1, 1, 'elite-four-acerola', 'Elite Four Acerola', 'Defeat Acerola of the Elite Four.', 15, FALSE),
    (1285, 15, NULL, 1, 1, 'elite-four-kahili', 'Elite Four Kahili', 'Defeat Kahili of the Elite Four.', 16, FALSE),
    (1286, 15, NULL, 1, 1, 'champion-kukui', 'Champion Kukui', 'Defeat Professor Kukui in the first title defense.', 17, FALSE),
    -- Post Game
    (1287, 15, NULL, 2, 2, 'ultra-beast-missions', 'Ultra Beast Missions', 'Complete the Ultra Beast missions for the International Police.', 1, TRUE),
    -- Pokémon (game-specific box legendaries)
    (1288, 15, 25, 3, 3, 'solgaleo', 'Solgaleo', 'Encounter Solgaleo at the Altar of the Sunne.', 1, TRUE),
    (1289, 15, 26, 3, 3, 'lunala', 'Lunala', 'Encounter Lunala at the Altar of the Moone.', 1, TRUE),
    -- Pokémon (shared)
    (1290, 15, NULL, 3, 3, 'necrozma', 'Necrozma', 'Encounter Necrozma in Ten Carat Hill.', 2, TRUE),
    (1291, 15, NULL, 3, 3, 'tapu-koko', 'Tapu Koko', 'Encounter Tapu Koko at the Ruins of Conflict.', 3, TRUE),
    -- Collectibles
    (1292, 15, NULL, 4, 4, 'zygarde-cells', 'Zygarde Cells', 'Collect all 100 Zygarde Cells and Cores across Alola.', 1, TRUE),
    -- Choices
    (1293, 15, NULL, 5, 5, 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE);