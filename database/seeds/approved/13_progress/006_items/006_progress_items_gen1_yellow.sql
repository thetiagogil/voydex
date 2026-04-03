-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.items
-- Scope: version-group-specific (yellow, VG 2)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Version Group: 2 (Yellow)
-- Pikachu is given to you (no starter choice). Fossils and Fighting Dojo remain.
INSERT INTO
    progress.items (id, version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story
    (1000, 2, NULL, 1, 2, 'receive-pikachu', 'Receive Pikachu', 'Receive Pikachu from Professor Oak.', 1, FALSE),
    (1001, 2, NULL, 1, 2, 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Oak.', 2, FALSE),
    (1002, 2, NULL, 1, 1, 'boulder-badge', 'Boulder Badge', 'Defeat Brock in Pewter City Gym.', 3, FALSE),
    (1003, 2, NULL, 1, 1, 'cascade-badge', 'Cascade Badge', 'Defeat Misty in Cerulean City Gym.', 4, FALSE),
    (1004, 2, NULL, 1, 1, 'thunder-badge', 'Thunder Badge', 'Defeat Lt. Surge in Vermilion City Gym.', 5, FALSE),
    (1005, 2, NULL, 1, 1, 'rainbow-badge', 'Rainbow Badge', 'Defeat Erika in Celadon City Gym.', 6, FALSE),
    (1006, 2, NULL, 1, 1, 'soul-badge', 'Soul Badge', 'Defeat Koga in Fuchsia City Gym.', 7, FALSE),
    (1007, 2, NULL, 1, 1, 'marsh-badge', 'Marsh Badge', 'Defeat Sabrina in Saffron City Gym.', 8, FALSE),
    (1008, 2, NULL, 1, 1, 'volcano-badge', 'Volcano Badge', 'Defeat Blaine in Cinnabar Island Gym.', 9, FALSE),
    (1009, 2, NULL, 1, 1, 'earth-badge', 'Earth Badge', 'Defeat Giovanni in Viridian City Gym.', 10, FALSE),
    (1010, 2, NULL, 1, 2, 'snorlax', 'Snorlax', 'Wake and confront the sleeping Snorlax.', 11, FALSE),
    (1011, 2, NULL, 1, 1, 'elite-four-lorelei', 'Elite Four Lorelei', 'Defeat Lorelei of the Elite Four.', 12, FALSE),
    (1012, 2, NULL, 1, 1, 'elite-four-bruno', 'Elite Four Bruno', 'Defeat Bruno of the Elite Four.', 13, FALSE),
    (1013, 2, NULL, 1, 1, 'elite-four-agatha', 'Elite Four Agatha', 'Defeat Agatha of the Elite Four.', 14, FALSE),
    (1014, 2, NULL, 1, 1, 'elite-four-lance', 'Elite Four Lance', 'Defeat Lance of the Elite Four.', 15, FALSE),
    (1015, 2, NULL, 1, 1, 'champion-blue', 'Champion Blue', 'Defeat Champion Blue.', 16, FALSE),
    -- Post Game
    (1016, 2, NULL, 2, 2, 'cerulean-cave', 'Cerulean Cave', 'Gain access to Cerulean Cave.', 1, FALSE),
    -- Pokémon
    (1017, 2, NULL, 3, 3, 'articuno', 'Articuno', 'Encounter Articuno in Seafoam Islands.', 1, TRUE),
    (1018, 2, NULL, 3, 3, 'zapdos', 'Zapdos', 'Encounter Zapdos in the Power Plant.', 2, TRUE),
    (1019, 2, NULL, 3, 3, 'moltres', 'Moltres', 'Encounter Moltres in Victory Road.', 3, TRUE),
    (1020, 2, NULL, 3, 3, 'mewtwo', 'Mewtwo', 'Encounter Mewtwo in Cerulean Cave.', 4, TRUE),
    -- Choices
    (1021, 2, NULL, 5, 5, 'fossil-choice', 'Fossil Choice', 'Choose a fossil on Mt. Moon.', 1, FALSE),
    (1022, 2, NULL, 5, 5, 'fighting-dojo-choice', 'Fighting Dojo Choice', 'Choose a fighting Pokémon from the Fighting Dojo.', 2, FALSE);