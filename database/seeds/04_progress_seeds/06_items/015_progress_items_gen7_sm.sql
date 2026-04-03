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
WITH
    seed_data (
        version_group_id,
        game_id,
        category_slug,
        item_type_slug,
        slug,
        name,
        description,
        sort_order,
        is_optional
    ) AS (
        VALUES
            (15, NULL::INTEGER, 'main-story', 'story-checkpoint', 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Kukui.', 1, FALSE),
            (15, NULL, 'main-story', 'story-battle', 'ilima-trial', 'Ilima''''s Trial', 'Complete Ilima''''s Normal-type trial in Verdant Cavern.', 2, FALSE),
            (15, NULL, 'main-story', 'story-battle', 'grand-trial-hala', 'Grand Trial: Hala', 'Defeat Kahuna Hala on Melemele Island.', 3, FALSE),
            (15, NULL, 'main-story', 'story-battle', 'lana-trial', 'Lana''''s Trial', 'Complete Lana''''s Water-type trial in Brooklet Hill.', 4, FALSE),
            (15, NULL, 'main-story', 'story-battle', 'kiawe-trial', 'Kiawe''''s Trial', 'Complete Kiawe''''s Fire-type trial in Wela Volcano Park.', 5, FALSE),
            (15, NULL, 'main-story', 'story-battle', 'mallow-trial', 'Mallow''''s Trial', 'Complete Mallow''''s Grass-type trial in Lush Jungle.', 6, FALSE),
            (15, NULL, 'main-story', 'story-battle', 'grand-trial-olivia', 'Grand Trial: Olivia', 'Defeat Kahuna Olivia on Akala Island.', 7, FALSE),
            (15, NULL, 'main-story', 'story-battle', 'sophocles-trial', 'Sophocles''''s Trial', 'Complete Sophocles''''s Electric-type trial in Hokulani Observatory.', 8, FALSE),
            (15, NULL, 'main-story', 'story-battle', 'acerola-trial', 'Acerola''''s Trial', 'Complete Acerola''''s Ghost-type trial in the Thrifty Megamart.', 9, FALSE),
            (15, NULL, 'main-story', 'story-battle', 'grand-trial-nanu', 'Grand Trial: Nanu', 'Defeat Kahuna Nanu on Ula''''ula Island.', 10, FALSE),
            (15, NULL, 'main-story', 'story-checkpoint', 'vast-poni-canyon-trial', 'Vast Poni Canyon Trial', 'Complete the Dragon-type trial in Vast Poni Canyon.', 11, FALSE),
            (15, NULL, 'main-story', 'story-battle', 'grand-trial-hapu', 'Grand Trial: Hapu', 'Defeat Kahuna Hapu on Poni Island.', 12, FALSE),
            (15, NULL, 'main-story', 'story-battle', 'elite-four-hala', 'Elite Four Hala', 'Defeat Hala of the Elite Four.', 13, FALSE),
            (15, NULL, 'main-story', 'story-battle', 'elite-four-olivia', 'Elite Four Olivia', 'Defeat Olivia of the Elite Four.', 14, FALSE),
            (15, NULL, 'main-story', 'story-battle', 'elite-four-acerola', 'Elite Four Acerola', 'Defeat Acerola of the Elite Four.', 15, FALSE),
            (15, NULL, 'main-story', 'story-battle', 'elite-four-kahili', 'Elite Four Kahili', 'Defeat Kahili of the Elite Four.', 16, FALSE),
            (15, NULL, 'main-story', 'story-battle', 'champion-kukui', 'Champion Kukui', 'Defeat Professor Kukui in the first title defense.', 17, FALSE),
            (15, NULL, 'post-game', 'story-checkpoint', 'ultra-beast-missions', 'Ultra Beast Missions', 'Complete the Ultra Beast missions for the International Police.', 1, TRUE),
            (15, 25, 'pokemon', 'pokemon-milestone', 'solgaleo', 'Solgaleo', 'Encounter Solgaleo at the Altar of the Sunne.', 1, TRUE),
            (15, 26, 'pokemon', 'pokemon-milestone', 'lunala', 'Lunala', 'Encounter Lunala at the Altar of the Moone.', 1, TRUE),
            (15, NULL, 'pokemon', 'pokemon-milestone', 'necrozma', 'Necrozma', 'Encounter Necrozma in Ten Carat Hill.', 2, TRUE),
            (15, NULL, 'pokemon', 'pokemon-milestone', 'tapu-koko', 'Tapu Koko', 'Encounter Tapu Koko at the Ruins of Conflict.', 3, TRUE),
            (15, NULL, 'collectibles', 'collectible', 'zygarde-cells', 'Zygarde Cells', 'Collect all 100 Zygarde Cells and Cores across Alola.', 1, TRUE),
            (15, NULL, 'choices', 'critical-choice', 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE)
    )
INSERT INTO
    progress.items (
        version_group_id,
        game_id,
        category_id,
        item_type_id,
        slug,
        name,
        description,
        sort_order,
        is_optional
    )
SELECT
    s.version_group_id,
    s.game_id,
    c.id,
    t.id,
    s.slug,
    s.name,
    s.description,
    s.sort_order,
    s.is_optional
FROM
    seed_data s
    JOIN progress.categories c ON c.slug = s.category_slug
    JOIN progress.item_types t ON t.slug = s.item_type_slug;
