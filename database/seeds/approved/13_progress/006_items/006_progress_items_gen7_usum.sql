-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.items
-- Scope: version-group-specific (usum, VG 16)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Version Group: 16 (Ultra Sun / Ultra Moon)
-- Trial system replaces gyms. No gym badges.
-- Island challenge: 7 trial captains (includes Mina) + 4 grand trials (kahunas).
-- Ultra Necrozma battle before Pokémon League.
-- Hau is the champion battle (not Kukui like SM).
-- Box legendary: Solgaleo (US, game 27) / Lunala (UM, game 28).
-- Totem Stickers are the main collectible (100 total).
INSERT INTO
    progress.items (id, version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story (Island Challenge)
    (700, 16, NULL, 1, 2, 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Kukui.', 1, FALSE),
    (701, 16, NULL, 1, 1, 'ilima-trial', 'Ilima''s Trial', 'Complete Ilima''s Normal-type trial in Verdant Cavern.', 2, FALSE),
    (702, 16, NULL, 1, 1, 'grand-trial-hala', 'Grand Trial: Hala', 'Defeat Kahuna Hala on Melemele Island.', 3, FALSE),
    (703, 16, NULL, 1, 1, 'lana-trial', 'Lana''s Trial', 'Complete Lana''s Water-type trial in Brooklet Hill.', 4, FALSE),
    (704, 16, NULL, 1, 1, 'kiawe-trial', 'Kiawe''s Trial', 'Complete Kiawe''s Fire-type trial in Wela Volcano Park.', 5, FALSE),
    (705, 16, NULL, 1, 1, 'mallow-trial', 'Mallow''s Trial', 'Complete Mallow''s Grass-type trial in Lush Jungle.', 6, FALSE),
    (706, 16, NULL, 1, 1, 'grand-trial-olivia', 'Grand Trial: Olivia', 'Defeat Kahuna Olivia on Akala Island.', 7, FALSE),
    (707, 16, NULL, 1, 1, 'sophocles-trial', 'Sophocles''s Trial', 'Complete Sophocles''s Electric-type trial in Hokulani Observatory.', 8, FALSE),
    (708, 16, NULL, 1, 1, 'acerola-trial', 'Acerola''s Trial', 'Complete Acerola''s Ghost-type trial in the Thrifty Megamart.', 9, FALSE),
    (709, 16, NULL, 1, 1, 'grand-trial-nanu', 'Grand Trial: Nanu', 'Defeat Kahuna Nanu on Ula''ula Island.', 10, FALSE),
    (710, 16, NULL, 1, 1, 'mina-trial', 'Mina''s Trial', 'Complete Mina''s Fairy-type trial.', 11, FALSE),
    (711, 16, NULL, 1, 2, 'vast-poni-canyon-trial', 'Vast Poni Canyon Trial', 'Complete the Dragon-type trial in Vast Poni Canyon.', 12, FALSE),
    (712, 16, NULL, 1, 1, 'grand-trial-hapu', 'Grand Trial: Hapu', 'Defeat Kahuna Hapu on Poni Island.', 13, FALSE),
    (713, 16, NULL, 1, 1, 'ultra-necrozma', 'Ultra Necrozma', 'Defeat Ultra Necrozma at Ultra Megalopolis.', 14, FALSE),
    -- Main Story (Pokémon League)
    (714, 16, NULL, 1, 1, 'elite-four-molayne', 'Elite Four Molayne', 'Defeat Molayne of the Elite Four.', 15, FALSE),
    (715, 16, NULL, 1, 1, 'elite-four-olivia', 'Elite Four Olivia', 'Defeat Olivia of the Elite Four.', 16, FALSE),
    (716, 16, NULL, 1, 1, 'elite-four-acerola', 'Elite Four Acerola', 'Defeat Acerola of the Elite Four.', 17, FALSE),
    (717, 16, NULL, 1, 1, 'elite-four-kahili', 'Elite Four Kahili', 'Defeat Kahili of the Elite Four.', 18, FALSE),
    (718, 16, NULL, 1, 1, 'champion-hau', 'Champion Hau', 'Defeat Hau in the first title defense.', 19, FALSE),
    -- Post Game
    (719, 16, NULL, 2, 2, 'team-rainbow-rocket', 'Team Rainbow Rocket', 'Complete the Team Rainbow Rocket episode.', 1, TRUE),
    -- Pokémon (game-specific box legendaries)
    (720, 16, 27, 3, 3, 'solgaleo', 'Solgaleo', 'Encounter Solgaleo at the Altar of the Sunne.', 1, TRUE),
    (721, 16, 28, 3, 3, 'lunala', 'Lunala', 'Encounter Lunala at the Altar of the Moone.', 1, TRUE),
    -- Pokémon (shared)
    (722, 16, NULL, 3, 3, 'necrozma', 'Necrozma', 'Encounter Necrozma at Mount Lanakila.', 2, TRUE),
    -- Collectibles
    (723, 16, NULL, 4, 4, 'totem-stickers', 'Totem Stickers', 'Collect all 100 Totem Stickers across Alola.', 1, TRUE),
    -- Choices
    (724, 16, NULL, 5, 5, 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE);