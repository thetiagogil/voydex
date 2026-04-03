-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.items
-- Scope: version-group-specific (frlg, VG 7)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Version Group: 7 (FireRed / LeafGreen)
-- Same Kanto structure as RB. Sevii Islands post-game.
-- Snorlax blocks routes. Three birds + Mewtwo.
INSERT INTO
    progress.items (id, version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story
    (1100, 7, NULL, 1, 2, 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Oak.', 1, FALSE),
    (1101, 7, NULL, 1, 1, 'boulder-badge', 'Boulder Badge', 'Defeat Brock in Pewter City Gym.', 2, FALSE),
    (1102, 7, NULL, 1, 1, 'cascade-badge', 'Cascade Badge', 'Defeat Misty in Cerulean City Gym.', 3, FALSE),
    (1103, 7, NULL, 1, 1, 'thunder-badge', 'Thunder Badge', 'Defeat Lt. Surge in Vermilion City Gym.', 4, FALSE),
    (1104, 7, NULL, 1, 1, 'rainbow-badge', 'Rainbow Badge', 'Defeat Erika in Celadon City Gym.', 5, FALSE),
    (1105, 7, NULL, 1, 1, 'soul-badge', 'Soul Badge', 'Defeat Koga in Fuchsia City Gym.', 6, FALSE),
    (1106, 7, NULL, 1, 1, 'marsh-badge', 'Marsh Badge', 'Defeat Sabrina in Saffron City Gym.', 7, FALSE),
    (1107, 7, NULL, 1, 1, 'volcano-badge', 'Volcano Badge', 'Defeat Blaine in Cinnabar Island Gym.', 8, FALSE),
    (1108, 7, NULL, 1, 1, 'earth-badge', 'Earth Badge', 'Defeat Giovanni in Viridian City Gym.', 9, FALSE),
    (1109, 7, NULL, 1, 2, 'snorlax', 'Snorlax', 'Wake and confront the sleeping Snorlax.', 10, FALSE),
    (1110, 7, NULL, 1, 1, 'elite-four-lorelei', 'Elite Four Lorelei', 'Defeat Lorelei of the Elite Four.', 11, FALSE),
    (1111, 7, NULL, 1, 1, 'elite-four-bruno', 'Elite Four Bruno', 'Defeat Bruno of the Elite Four.', 12, FALSE),
    (1112, 7, NULL, 1, 1, 'elite-four-agatha', 'Elite Four Agatha', 'Defeat Agatha of the Elite Four.', 13, FALSE),
    (1113, 7, NULL, 1, 1, 'elite-four-lance', 'Elite Four Lance', 'Defeat Lance of the Elite Four.', 14, FALSE),
    (1114, 7, NULL, 1, 1, 'champion-blue', 'Champion Blue', 'Defeat Champion Blue.', 15, FALSE),
    -- Post Game
    (1115, 7, NULL, 2, 2, 'sevii-islands', 'Sevii Islands', 'Gain access to the Sevii Islands.', 1, FALSE),
    (1116, 7, NULL, 2, 2, 'cerulean-cave', 'Cerulean Cave', 'Gain access to Cerulean Cave.', 2, FALSE),
    -- Pokémon
    (1117, 7, NULL, 3, 3, 'articuno', 'Articuno', 'Encounter Articuno in Seafoam Islands.', 1, TRUE),
    (1118, 7, NULL, 3, 3, 'zapdos', 'Zapdos', 'Encounter Zapdos in the Power Plant.', 2, TRUE),
    (1119, 7, NULL, 3, 3, 'moltres', 'Moltres', 'Encounter Moltres at Mt. Ember.', 3, TRUE),
    (1120, 7, NULL, 3, 3, 'mewtwo', 'Mewtwo', 'Encounter Mewtwo in Cerulean Cave.', 4, TRUE),
    -- Choices
    (1121, 7, NULL, 5, 5, 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE),
    (1122, 7, NULL, 5, 5, 'fossil-choice', 'Fossil Choice', 'Choose a fossil on Mt. Moon.', 2, FALSE),
    (1123, 7, NULL, 5, 5, 'fighting-dojo-choice', 'Fighting Dojo Choice', 'Choose a fighting Pokémon from the Fighting Dojo.', 3, FALSE);