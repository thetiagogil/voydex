-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.items
-- Scope: version-group-specific (crystal, VG 4)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Version Group: 4 (Crystal)
-- Suicune is a fixed encounter at the Tin Tower (not roaming like GS).
INSERT INTO
    progress.items (id, version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story (Johto)
    (200, 4, NULL, 1, 2, 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Elm.', 1, FALSE),
    (201, 4, NULL, 1, 1, 'zephyr-badge', 'Zephyr Badge', 'Defeat Falkner in Violet City Gym.', 2, FALSE),
    (202, 4, NULL, 1, 1, 'hive-badge', 'Hive Badge', 'Defeat Bugsy in Azalea Town Gym.', 3, FALSE),
    (203, 4, NULL, 1, 1, 'plain-badge', 'Plain Badge', 'Defeat Whitney in Goldenrod City Gym.', 4, FALSE),
    (204, 4, NULL, 1, 1, 'fog-badge', 'Fog Badge', 'Defeat Morty in Ecruteak City Gym.', 5, FALSE),
    (205, 4, NULL, 1, 1, 'storm-badge', 'Storm Badge', 'Defeat Chuck in Cianwood City Gym.', 6, FALSE),
    (206, 4, NULL, 1, 1, 'mineral-badge', 'Mineral Badge', 'Defeat Jasmine in Olivine City Gym.', 7, FALSE),
    (207, 4, NULL, 1, 1, 'glacier-badge', 'Glacier Badge', 'Defeat Pryce in Mahogany Town Gym.', 8, FALSE),
    (208, 4, NULL, 1, 1, 'rising-badge', 'Rising Badge', 'Defeat Clair in Blackthorn City Gym.', 9, FALSE),
    (209, 4, NULL, 1, 1, 'elite-four-will', 'Elite Four Will', 'Defeat Will of the Elite Four.', 10, FALSE),
    (210, 4, NULL, 1, 1, 'elite-four-koga', 'Elite Four Koga', 'Defeat Koga of the Elite Four.', 11, FALSE),
    (211, 4, NULL, 1, 1, 'elite-four-bruno', 'Elite Four Bruno', 'Defeat Bruno of the Elite Four.', 12, FALSE),
    (212, 4, NULL, 1, 1, 'elite-four-karen', 'Elite Four Karen', 'Defeat Karen of the Elite Four.', 13, FALSE),
    (213, 4, NULL, 1, 1, 'champion-lance', 'Champion Lance', 'Defeat Champion Lance.', 14, FALSE),
    -- Post Game (Kanto)
    (214, 4, NULL, 2, 1, 'thunder-badge-kanto', 'Thunder Badge (Kanto)', 'Defeat Lt. Surge in Vermilion City Gym.', 1, FALSE),
    (215, 4, NULL, 2, 1, 'marsh-badge-kanto', 'Marsh Badge (Kanto)', 'Defeat Sabrina in Saffron City Gym.', 2, FALSE),
    (216, 4, NULL, 2, 1, 'rainbow-badge-kanto', 'Rainbow Badge (Kanto)', 'Defeat Erika in Celadon City Gym.', 3, FALSE),
    (217, 4, NULL, 2, 1, 'soul-badge-kanto', 'Soul Badge (Kanto)', 'Defeat Janine in Fuchsia City Gym.', 4, FALSE),
    (218, 4, NULL, 2, 1, 'cascade-badge-kanto', 'Cascade Badge (Kanto)', 'Defeat Misty in Cerulean City Gym.', 5, FALSE),
    (219, 4, NULL, 2, 1, 'volcano-badge-kanto', 'Volcano Badge (Kanto)', 'Defeat Blaine on the Seafoam Islands.', 6, FALSE),
    (220, 4, NULL, 2, 1, 'earth-badge-kanto', 'Earth Badge (Kanto)', 'Defeat Blue in Viridian City Gym.', 7, FALSE),
    (221, 4, NULL, 2, 1, 'boulder-badge-kanto', 'Boulder Badge (Kanto)', 'Defeat Brock in Pewter City Gym.', 8, FALSE),
    (222, 4, NULL, 2, 1, 'red', 'Red', 'Defeat Red atop Mt. Silver.', 9, FALSE),
    -- Pokémon
    (223, 4, NULL, 3, 3, 'suicune', 'Suicune', 'Encounter Suicune at the Tin Tower.', 1, TRUE),
    (224, 4, NULL, 3, 3, 'ho-oh', 'Ho-Oh', 'Encounter Ho-Oh at the Tin Tower.', 2, TRUE),
    (225, 4, NULL, 3, 3, 'lugia', 'Lugia', 'Encounter Lugia in the Whirl Islands.', 3, TRUE),
    (226, 4, NULL, 3, 3, 'raikou', 'Raikou', 'Encounter the roaming Raikou.', 4, TRUE),
    (227, 4, NULL, 3, 3, 'entei', 'Entei', 'Encounter the roaming Entei.', 5, TRUE),
    -- Choices
    (228, 4, NULL, 5, 5, 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE);