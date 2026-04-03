-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.items
-- Scope: version-group-specific (hgss, VG 10)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Version Group: 10 (HeartGold / SoulSilver)
-- Same structure as Crystal. Ho-Oh first in HG (game 15), Lugia first in SS (game 16).
INSERT INTO
    progress.items (id, version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story (Johto)
    (1160, 10, NULL, 1, 2, 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Elm.', 1, FALSE),
    (1161, 10, NULL, 1, 1, 'zephyr-badge', 'Zephyr Badge', 'Defeat Falkner in Violet City Gym.', 2, FALSE),
    (1162, 10, NULL, 1, 1, 'hive-badge', 'Hive Badge', 'Defeat Bugsy in Azalea Town Gym.', 3, FALSE),
    (1163, 10, NULL, 1, 1, 'plain-badge', 'Plain Badge', 'Defeat Whitney in Goldenrod City Gym.', 4, FALSE),
    (1164, 10, NULL, 1, 1, 'fog-badge', 'Fog Badge', 'Defeat Morty in Ecruteak City Gym.', 5, FALSE),
    (1165, 10, NULL, 1, 1, 'storm-badge', 'Storm Badge', 'Defeat Chuck in Cianwood City Gym.', 6, FALSE),
    (1166, 10, NULL, 1, 1, 'mineral-badge', 'Mineral Badge', 'Defeat Jasmine in Olivine City Gym.', 7, FALSE),
    (1167, 10, NULL, 1, 1, 'glacier-badge', 'Glacier Badge', 'Defeat Pryce in Mahogany Town Gym.', 8, FALSE),
    (1168, 10, NULL, 1, 1, 'rising-badge', 'Rising Badge', 'Defeat Clair in Blackthorn City Gym.', 9, FALSE),
    (1169, 10, NULL, 1, 1, 'elite-four-will', 'Elite Four Will', 'Defeat Will of the Elite Four.', 10, FALSE),
    (1170, 10, NULL, 1, 1, 'elite-four-koga', 'Elite Four Koga', 'Defeat Koga of the Elite Four.', 11, FALSE),
    (1171, 10, NULL, 1, 1, 'elite-four-bruno', 'Elite Four Bruno', 'Defeat Bruno of the Elite Four.', 12, FALSE),
    (1172, 10, NULL, 1, 1, 'elite-four-karen', 'Elite Four Karen', 'Defeat Karen of the Elite Four.', 13, FALSE),
    (1173, 10, NULL, 1, 1, 'champion-lance', 'Champion Lance', 'Defeat Champion Lance.', 14, FALSE),
    -- Post Game (Kanto)
    (1174, 10, NULL, 2, 1, 'thunder-badge-kanto', 'Thunder Badge (Kanto)', 'Defeat Lt. Surge in Vermilion City Gym.', 1, FALSE),
    (1175, 10, NULL, 2, 1, 'marsh-badge-kanto', 'Marsh Badge (Kanto)', 'Defeat Sabrina in Saffron City Gym.', 2, FALSE),
    (1176, 10, NULL, 2, 1, 'rainbow-badge-kanto', 'Rainbow Badge (Kanto)', 'Defeat Erika in Celadon City Gym.', 3, FALSE),
    (1177, 10, NULL, 2, 1, 'soul-badge-kanto', 'Soul Badge (Kanto)', 'Defeat Janine in Fuchsia City Gym.', 4, FALSE),
    (1178, 10, NULL, 2, 1, 'cascade-badge-kanto', 'Cascade Badge (Kanto)', 'Defeat Misty in Cerulean City Gym.', 5, FALSE),
    (1179, 10, NULL, 2, 1, 'volcano-badge-kanto', 'Volcano Badge (Kanto)', 'Defeat Blaine on the Seafoam Islands.', 6, FALSE),
    (1180, 10, NULL, 2, 1, 'earth-badge-kanto', 'Earth Badge (Kanto)', 'Defeat Blue in Viridian City Gym.', 7, FALSE),
    (1181, 10, NULL, 2, 1, 'boulder-badge-kanto', 'Boulder Badge (Kanto)', 'Defeat Brock in Pewter City Gym.', 8, FALSE),
    (1182, 10, NULL, 2, 1, 'red', 'Red', 'Defeat Red atop Mt. Silver.', 9, FALSE),
    -- Pokémon
    (1183, 10, 15, 3, 3, 'ho-oh', 'Ho-Oh', 'Encounter Ho-Oh at the Bell Tower.', 1, TRUE),
    (1184, 10, 16, 3, 3, 'lugia', 'Lugia', 'Encounter Lugia in the Whirl Islands.', 1, TRUE),
    (1185, 10, NULL, 3, 3, 'suicune', 'Suicune', 'Encounter Suicune.', 2, TRUE),
    (1186, 10, NULL, 3, 3, 'raikou', 'Raikou', 'Encounter the roaming Raikou.', 3, TRUE),
    (1187, 10, NULL, 3, 3, 'entei', 'Entei', 'Encounter the roaming Entei.', 4, TRUE),
    (1188, 10, NULL, 3, 3, 'red-gyarados', 'Red Gyarados', 'Encounter the Red Gyarados at the Lake of Rage.', 5, TRUE),
    -- Choices
    (1189, 10, NULL, 5, 5, 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE);