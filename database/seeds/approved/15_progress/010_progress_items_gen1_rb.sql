-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.items
-- Scope: version-group-specific (rb)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Version Group: 1 (Red / Blue)
-- Categories: 1=main-story, 2=post-game, 3=pokemon, 5=choices
-- Item Types: 1=story-battle, 2=story-checkpoint, 3=pokemon-milestone, 5=critical-choice
INSERT INTO
    progress.items (id, version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story
    (100, 1, NULL, 1, 2, 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Oak.', 1, FALSE),
    (101, 1, NULL, 1, 1, 'boulder-badge', 'Boulder Badge', 'Defeat Brock in Pewter City Gym.', 2, FALSE),
    (102, 1, NULL, 1, 1, 'cascade-badge', 'Cascade Badge', 'Defeat Misty in Cerulean City Gym.', 3, FALSE),
    (103, 1, NULL, 1, 1, 'thunder-badge', 'Thunder Badge', 'Defeat Lt. Surge in Vermilion City Gym.', 4, FALSE),
    (104, 1, NULL, 1, 1, 'rainbow-badge', 'Rainbow Badge', 'Defeat Erika in Celadon City Gym.', 5, FALSE),
    (105, 1, NULL, 1, 1, 'soul-badge', 'Soul Badge', 'Defeat Koga in Fuchsia City Gym.', 6, FALSE),
    (106, 1, NULL, 1, 1, 'marsh-badge', 'Marsh Badge', 'Defeat Sabrina in Saffron City Gym.', 7, FALSE),
    (107, 1, NULL, 1, 1, 'volcano-badge', 'Volcano Badge', 'Defeat Blaine in Cinnabar Island Gym.', 8, FALSE),
    (108, 1, NULL, 1, 1, 'earth-badge', 'Earth Badge', 'Defeat Giovanni in Viridian City Gym.', 9, FALSE),
    (109, 1, NULL, 1, 1, 'elite-four-lorelei', 'Elite Four Lorelei', 'Defeat Lorelei of the Elite Four.', 10, FALSE),
    (110, 1, NULL, 1, 1, 'elite-four-bruno', 'Elite Four Bruno', 'Defeat Bruno of the Elite Four.', 11, FALSE),
    (111, 1, NULL, 1, 1, 'elite-four-agatha', 'Elite Four Agatha', 'Defeat Agatha of the Elite Four.', 12, FALSE),
    (112, 1, NULL, 1, 1, 'elite-four-lance', 'Elite Four Lance', 'Defeat Lance of the Elite Four.', 13, FALSE),
    (113, 1, NULL, 1, 1, 'champion-blue', 'Champion Blue', 'Defeat Champion Blue.', 14, FALSE),
    (114, 1, NULL, 1, 2, 'hall-of-fame', 'Hall of Fame', 'Enter the Hall of Fame.', 15, FALSE),
    -- Post Game
    (115, 1, NULL, 2, 2, 'cerulean-cave', 'Cerulean Cave', 'Gain access to Cerulean Cave.', 1, FALSE),
    -- Pokémon
    (116, 1, NULL, 3, 3, 'snorlax', 'Snorlax', 'Encounter Snorlax.', 1, TRUE),
    (117, 1, NULL, 3, 3, 'articuno', 'Articuno', 'Catch Articuno in Seafoam Islands.', 2, TRUE),
    (118, 1, NULL, 3, 3, 'zapdos', 'Zapdos', 'Catch Zapdos in the Power Plant.', 3, TRUE),
    (119, 1, NULL, 3, 3, 'moltres', 'Moltres', 'Catch Moltres in Victory Road.', 4, TRUE),
    (120, 1, NULL, 3, 3, 'mewtwo', 'Mewtwo', 'Catch Mewtwo in Cerulean Cave.', 5, TRUE),
    -- Choices
    (121, 1, NULL, 5, 5, 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE),
    (122, 1, NULL, 5, 5, 'fossil-choice', 'Fossil Choice', 'Choose a fossil on Mt. Moon.', 2, FALSE),
    (123, 1, NULL, 5, 5, 'fighting-dojo-choice', 'Fighting Dojo Choice', 'Choose a fighting Pokémon from the Fighting Dojo.', 3, FALSE);