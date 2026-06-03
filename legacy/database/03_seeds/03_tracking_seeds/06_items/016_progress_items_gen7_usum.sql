-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.items
-- Scope: version-group-specific (usum, VG 16)
-- Version Group: 16 (Ultra Sun / Ultra Moon)
-- Trial system replaces gyms. No gym badges.
-- Island challenge: 7 trial captains (includes Mina) + 4 grand trials (kahunas).
-- Ultra Necrozma battle before Pokémon League.
-- Hau is the champion battle (not Kukui like SM).
-- Box legendary: Solgaleo (US, game 27) / Lunala (UM, game 28).
-- Totem Stickers are tracked via collectibles tables (not tracking items).
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
            (16, NULL::INTEGER, 'main-story', 'checkpoint', 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Kukui.', 1, FALSE),
            (16, NULL, 'main-story', 'battle', 'ilima-trial', 'Ilima''''s Trial', 'Complete Ilima''''s Normal-type trial in Verdant Cavern.', 2, FALSE),
            (16, NULL, 'main-story', 'battle', 'grand-trial-hala', 'Grand Trial: Hala', 'Defeat Kahuna Hala on Melemele Island.', 3, FALSE),
            (16, NULL, 'main-story', 'battle', 'lana-trial', 'Lana''''s Trial', 'Complete Lana''''s Water-type trial in Brooklet Hill.', 4, FALSE),
            (16, NULL, 'main-story', 'battle', 'kiawe-trial', 'Kiawe''''s Trial', 'Complete Kiawe''''s Fire-type trial in Wela Volcano Park.', 5, FALSE),
            (16, NULL, 'main-story', 'battle', 'mallow-trial', 'Mallow''''s Trial', 'Complete Mallow''''s Grass-type trial in Lush Jungle.', 6, FALSE),
            (16, NULL, 'main-story', 'battle', 'grand-trial-olivia', 'Grand Trial: Olivia', 'Defeat Kahuna Olivia on Akala Island.', 7, FALSE),
            (16, NULL, 'main-story', 'battle', 'sophocles-trial', 'Sophocles''''s Trial', 'Complete Sophocles''''s Electric-type trial in Hokulani Observatory.', 8, FALSE),
            (16, NULL, 'main-story', 'battle', 'acerola-trial', 'Acerola''''s Trial', 'Complete Acerola''''s Ghost-type trial in the Thrifty Megamart.', 9, FALSE),
            (16, NULL, 'main-story', 'battle', 'grand-trial-nanu', 'Grand Trial: Nanu', 'Defeat Kahuna Nanu on Ula''''ula Island.', 10, FALSE),
            (16, NULL, 'main-story', 'battle', 'mina-trial', 'Mina''''s Trial', 'Complete Mina''''s Fairy-type trial.', 11, FALSE),
            (16, NULL, 'main-story', 'checkpoint', 'vast-poni-canyon-trial', 'Vast Poni Canyon Trial', 'Complete the Dragon-type trial in Vast Poni Canyon.', 12, FALSE),
            (16, NULL, 'main-story', 'battle', 'grand-trial-hapu', 'Grand Trial: Hapu', 'Defeat Kahuna Hapu on Poni Island.', 13, FALSE),
            (16, NULL, 'main-story', 'battle', 'ultra-necrozma', 'Ultra Necrozma', 'Defeat Ultra Necrozma at Ultra Megalopolis.', 14, FALSE),
            (16, NULL, 'main-story', 'battle', 'elite-four-molayne', 'Elite Four Molayne', 'Defeat Molayne of the Elite Four.', 15, FALSE),
            (16, NULL, 'main-story', 'battle', 'elite-four-olivia', 'Elite Four Olivia', 'Defeat Olivia of the Elite Four.', 16, FALSE),
            (16, NULL, 'main-story', 'battle', 'elite-four-acerola', 'Elite Four Acerola', 'Defeat Acerola of the Elite Four.', 17, FALSE),
            (16, NULL, 'main-story', 'battle', 'elite-four-kahili', 'Elite Four Kahili', 'Defeat Kahili of the Elite Four.', 18, FALSE),
            (16, NULL, 'main-story', 'battle', 'champion-hau', 'Champion Hau', 'Defeat Hau in the first title defense.', 19, FALSE),
            (16, NULL, 'post-game', 'checkpoint', 'team-rainbow-rocket', 'Team Rainbow Rocket', 'Complete the Team Rainbow Rocket episode.', 1, TRUE),
            (16, 27, 'side-content', 'pokemon-milestone', 'solgaleo', 'Solgaleo', 'Encounter Solgaleo at the Altar of the Sunne.', 1, TRUE),
            (16, 28, 'side-content', 'pokemon-milestone', 'lunala', 'Lunala', 'Encounter Lunala at the Altar of the Moone.', 1, TRUE),
            (16, NULL, 'side-content', 'pokemon-milestone', 'necrozma', 'Necrozma', 'Encounter Necrozma at Mount Lanakila.', 2, TRUE),
            (16, NULL, 'main-story', 'decision', 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE)
    )
INSERT INTO
    tracking.items (
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
    JOIN tracking.categories c ON c.slug = s.category_slug
    JOIN tracking.item_types t ON t.slug = s.item_type_slug;
