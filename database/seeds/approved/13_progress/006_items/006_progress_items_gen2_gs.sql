-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.items
-- Scope: version-group-specific (gs, VG 3)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Version Group: 3 (Gold / Silver)
-- Same structure as Crystal minus Crystal-exclusive Suicune event.
-- Ho-Oh (Gold first) / Lugia (Silver first) are game-specific in access order.
INSERT INTO
    progress.items (version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story (Johto)
    (3, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-checkpoint'), 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Elm.', 1, FALSE),
    (3, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'zephyr-badge', 'Zephyr Badge', 'Defeat Falkner in Violet City Gym.', 2, FALSE),
    (3, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'hive-badge', 'Hive Badge', 'Defeat Bugsy in Azalea Town Gym.', 3, FALSE),
    (3, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'plain-badge', 'Plain Badge', 'Defeat Whitney in Goldenrod City Gym.', 4, FALSE),
    (3, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'fog-badge', 'Fog Badge', 'Defeat Morty in Ecruteak City Gym.', 5, FALSE),
    (3, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'storm-badge', 'Storm Badge', 'Defeat Chuck in Cianwood City Gym.', 6, FALSE),
    (3, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'mineral-badge', 'Mineral Badge', 'Defeat Jasmine in Olivine City Gym.', 7, FALSE),
    (3, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'glacier-badge', 'Glacier Badge', 'Defeat Pryce in Mahogany Town Gym.', 8, FALSE),
    (3, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'rising-badge', 'Rising Badge', 'Defeat Clair in Blackthorn City Gym.', 9, FALSE),
    (3, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'elite-four-will', 'Elite Four Will', 'Defeat Will of the Elite Four.', 10, FALSE),
    (3, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'elite-four-koga', 'Elite Four Koga', 'Defeat Koga of the Elite Four.', 11, FALSE),
    (3, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'elite-four-bruno', 'Elite Four Bruno', 'Defeat Bruno of the Elite Four.', 12, FALSE),
    (3, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'elite-four-karen', 'Elite Four Karen', 'Defeat Karen of the Elite Four.', 13, FALSE),
    (3, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'champion-lance', 'Champion Lance', 'Defeat Champion Lance.', 14, FALSE),
    -- Post Game (Kanto)
    (3, NULL, (SELECT id FROM progress.categories WHERE slug = 'post-game'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'thunder-badge-kanto', 'Thunder Badge (Kanto)', 'Defeat Lt. Surge in Vermilion City Gym.', 1, FALSE),
    (3, NULL, (SELECT id FROM progress.categories WHERE slug = 'post-game'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'marsh-badge-kanto', 'Marsh Badge (Kanto)', 'Defeat Sabrina in Saffron City Gym.', 2, FALSE),
    (3, NULL, (SELECT id FROM progress.categories WHERE slug = 'post-game'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'rainbow-badge-kanto', 'Rainbow Badge (Kanto)', 'Defeat Erika in Celadon City Gym.', 3, FALSE),
    (3, NULL, (SELECT id FROM progress.categories WHERE slug = 'post-game'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'soul-badge-kanto', 'Soul Badge (Kanto)', 'Defeat Janine in Fuchsia City Gym.', 4, FALSE),
    (3, NULL, (SELECT id FROM progress.categories WHERE slug = 'post-game'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'cascade-badge-kanto', 'Cascade Badge (Kanto)', 'Defeat Misty in Cerulean City Gym.', 5, FALSE),
    (3, NULL, (SELECT id FROM progress.categories WHERE slug = 'post-game'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'volcano-badge-kanto', 'Volcano Badge (Kanto)', 'Defeat Blaine on the Seafoam Islands.', 6, FALSE),
    (3, NULL, (SELECT id FROM progress.categories WHERE slug = 'post-game'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'earth-badge-kanto', 'Earth Badge (Kanto)', 'Defeat Blue in Viridian City Gym.', 7, FALSE),
    (3, NULL, (SELECT id FROM progress.categories WHERE slug = 'post-game'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'boulder-badge-kanto', 'Boulder Badge (Kanto)', 'Defeat Brock in Pewter City Gym.', 8, FALSE),
    (3, NULL, (SELECT id FROM progress.categories WHERE slug = 'post-game'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'red', 'Red', 'Defeat Red atop Mt. Silver.', 9, FALSE),
    -- Pokémon
    (3, 4, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'ho-oh', 'Ho-Oh', 'Encounter Ho-Oh at the Tin Tower.', 1, TRUE),
    (3, 5, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'lugia', 'Lugia', 'Encounter Lugia in the Whirl Islands.', 2, TRUE),
    (3, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'raikou', 'Raikou', 'Encounter the roaming Raikou.', 3, TRUE),
    (3, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'entei', 'Entei', 'Encounter the roaming Entei.', 4, TRUE),
    (3, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'suicune', 'Suicune', 'Encounter the roaming Suicune.', 5, TRUE),
    -- Choices
    (3, NULL, (SELECT id FROM progress.categories WHERE slug = 'choices'), (SELECT id FROM progress.item_types WHERE slug = 'critical-choice'), 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE);