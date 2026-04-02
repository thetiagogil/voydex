-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.items
-- Scope: version-group-specific (xy)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Version Group: 13 (X / Y)
-- Box legendary is game-specific: Xerneas (X) / Yveltal (Y).
-- Player receives a Kanto starter from Professor Sycamore.
-- Fossil choice between Jaw Fossil (Tyrunt) and Sail Fossil (Amaura).
INSERT INTO
    progress.items (id, version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story
    (600, 13, NULL, 1, 2, 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Sycamore.', 1, FALSE),
    (601, 13, NULL, 1, 1, 'bug-badge', 'Bug Badge', 'Defeat Viola in Santalune City Gym.', 2, FALSE),
    (602, 13, NULL, 1, 1, 'cliff-badge', 'Cliff Badge', 'Defeat Grant in Cyllage City Gym.', 3, FALSE),
    (603, 13, NULL, 1, 1, 'rumble-badge', 'Rumble Badge', 'Defeat Korrina in Shalour City Gym.', 4, FALSE),
    (604, 13, NULL, 1, 1, 'plant-badge', 'Plant Badge', 'Defeat Ramos in Coumarine City Gym.', 5, FALSE),
    (605, 13, NULL, 1, 1, 'voltage-badge', 'Voltage Badge', 'Defeat Clemont in Lumiose City Gym.', 6, FALSE),
    (606, 13, NULL, 1, 1, 'fairy-badge', 'Fairy Badge', 'Defeat Valerie in Laverre City Gym.', 7, FALSE),
    (607, 13, NULL, 1, 1, 'psychic-badge', 'Psychic Badge', 'Defeat Olympia in Anistar City Gym.', 8, FALSE),
    (608, 13, NULL, 1, 1, 'iceberg-badge', 'Iceberg Badge', 'Defeat Wulfric in Snowbelle City Gym.', 9, FALSE),
    (609, 13, NULL, 1, 1, 'elite-four-malva', 'Elite Four Malva', 'Defeat Malva of the Elite Four.', 10, FALSE),
    (610, 13, NULL, 1, 1, 'elite-four-siebold', 'Elite Four Siebold', 'Defeat Siebold of the Elite Four.', 11, FALSE),
    (611, 13, NULL, 1, 1, 'elite-four-wikstrom', 'Elite Four Wikstrom', 'Defeat Wikstrom of the Elite Four.', 12, FALSE),
    (612, 13, NULL, 1, 1, 'elite-four-drasna', 'Elite Four Drasna', 'Defeat Drasna of the Elite Four.', 13, FALSE),
    (613, 13, NULL, 1, 1, 'champion-diantha', 'Champion Diantha', 'Defeat Champion Diantha.', 14, FALSE),
    (614, 13, NULL, 1, 2, 'hall-of-fame', 'Hall of Fame', 'Enter the Hall of Fame.', 15, FALSE),
    -- Post Game
    (615, 13, NULL, 2, 2, 'looker-bureau', 'Looker Bureau', 'Complete the Looker Bureau quest in Lumiose City.', 1, TRUE),
    -- Pokémon (game-specific box legendaries)
    (616, 13, 21, 3, 3, 'xerneas', 'Xerneas', 'Catch Xerneas in the Team Flare Secret HQ.', 1, TRUE),
    (617, 13, 22, 3, 3, 'yveltal', 'Yveltal', 'Catch Yveltal in the Team Flare Secret HQ.', 1, TRUE),
    -- Pokémon (shared)
    (618, 13, NULL, 3, 3, 'zygarde', 'Zygarde', 'Catch Zygarde in Terminus Cave.', 2, TRUE),
    (619, 13, NULL, 3, 3, 'mewtwo', 'Mewtwo', 'Catch Mewtwo in the Pokémon Village.', 3, TRUE),
    -- Choices
    (620, 13, NULL, 5, 5, 'starter-choice', 'Starter Choice', 'Choose your Kalos starter Pokémon.', 1, FALSE),
    (621, 13, NULL, 5, 5, 'kanto-starter-choice', 'Kanto Starter Choice', 'Choose a Kanto starter from Professor Sycamore.', 2, FALSE),
    (622, 13, NULL, 5, 5, 'fossil-choice', 'Fossil Choice', 'Choose between Jaw Fossil and Sail Fossil.', 3, FALSE);