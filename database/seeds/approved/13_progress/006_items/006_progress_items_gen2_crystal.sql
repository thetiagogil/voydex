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
            (4, NULL::INTEGER, 'main-story', 'story-checkpoint', 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Elm.', 1, FALSE::BOOLEAN),
            (4, NULL, 'main-story', 'story-battle', 'zephyr-badge', 'Zephyr Badge', 'Defeat Falkner in Violet City Gym.', 2, FALSE),
            (4, NULL, 'main-story', 'story-battle', 'hive-badge', 'Hive Badge', 'Defeat Bugsy in Azalea Town Gym.', 3, FALSE),
            (4, NULL, 'main-story', 'story-battle', 'plain-badge', 'Plain Badge', 'Defeat Whitney in Goldenrod City Gym.', 4, FALSE),
            (4, NULL, 'main-story', 'story-battle', 'fog-badge', 'Fog Badge', 'Defeat Morty in Ecruteak City Gym.', 5, FALSE),
            (4, NULL, 'main-story', 'story-battle', 'storm-badge', 'Storm Badge', 'Defeat Chuck in Cianwood City Gym.', 6, FALSE),
            (4, NULL, 'main-story', 'story-battle', 'mineral-badge', 'Mineral Badge', 'Defeat Jasmine in Olivine City Gym.', 7, FALSE),
            (4, NULL, 'main-story', 'story-battle', 'glacier-badge', 'Glacier Badge', 'Defeat Pryce in Mahogany Town Gym.', 8, FALSE),
            (4, NULL, 'main-story', 'story-battle', 'rising-badge', 'Rising Badge', 'Defeat Clair in Blackthorn City Gym.', 9, FALSE),
            (4, NULL, 'main-story', 'story-battle', 'elite-four-will', 'Elite Four Will', 'Defeat Will of the Elite Four.', 10, FALSE),
            (4, NULL, 'main-story', 'story-battle', 'elite-four-koga', 'Elite Four Koga', 'Defeat Koga of the Elite Four.', 11, FALSE),
            (4, NULL, 'main-story', 'story-battle', 'elite-four-bruno', 'Elite Four Bruno', 'Defeat Bruno of the Elite Four.', 12, FALSE),
            (4, NULL, 'main-story', 'story-battle', 'elite-four-karen', 'Elite Four Karen', 'Defeat Karen of the Elite Four.', 13, FALSE),
            (4, NULL, 'main-story', 'story-battle', 'champion-lance', 'Champion Lance', 'Defeat Champion Lance.', 14, FALSE),
            (4, NULL, 'post-game', 'story-battle', 'thunder-badge-kanto', 'Thunder Badge (Kanto)', 'Defeat Lt. Surge in Vermilion City Gym.', 1, FALSE),
            (4, NULL, 'post-game', 'story-battle', 'marsh-badge-kanto', 'Marsh Badge (Kanto)', 'Defeat Sabrina in Saffron City Gym.', 2, FALSE),
            (4, NULL, 'post-game', 'story-battle', 'rainbow-badge-kanto', 'Rainbow Badge (Kanto)', 'Defeat Erika in Celadon City Gym.', 3, FALSE),
            (4, NULL, 'post-game', 'story-battle', 'soul-badge-kanto', 'Soul Badge (Kanto)', 'Defeat Janine in Fuchsia City Gym.', 4, FALSE),
            (4, NULL, 'post-game', 'story-battle', 'cascade-badge-kanto', 'Cascade Badge (Kanto)', 'Defeat Misty in Cerulean City Gym.', 5, FALSE),
            (4, NULL, 'post-game', 'story-battle', 'volcano-badge-kanto', 'Volcano Badge (Kanto)', 'Defeat Blaine on the Seafoam Islands.', 6, FALSE),
            (4, NULL, 'post-game', 'story-battle', 'earth-badge-kanto', 'Earth Badge (Kanto)', 'Defeat Blue in Viridian City Gym.', 7, FALSE),
            (4, NULL, 'post-game', 'story-battle', 'boulder-badge-kanto', 'Boulder Badge (Kanto)', 'Defeat Brock in Pewter City Gym.', 8, FALSE),
            (4, NULL, 'post-game', 'story-battle', 'red', 'Red', 'Defeat Red atop Mt. Silver.', 9, FALSE),
            (4, NULL, 'pokemon', 'pokemon-milestone', 'suicune', 'Suicune', 'Encounter Suicune at the Tin Tower.', 1, TRUE),
            (4, NULL, 'pokemon', 'pokemon-milestone', 'ho-oh', 'Ho-Oh', 'Encounter Ho-Oh at the Tin Tower.', 2, TRUE),
            (4, NULL, 'pokemon', 'pokemon-milestone', 'lugia', 'Lugia', 'Encounter Lugia in the Whirl Islands.', 3, TRUE),
            (4, NULL, 'pokemon', 'pokemon-milestone', 'raikou', 'Raikou', 'Encounter the roaming Raikou.', 4, TRUE),
            (4, NULL, 'pokemon', 'pokemon-milestone', 'entei', 'Entei', 'Encounter the roaming Entei.', 5, TRUE),
            (4, NULL, 'choices', 'critical-choice', 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE)
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
