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
            (2, NULL::INTEGER, 'main-story', 'story-checkpoint', 'receive-pikachu', 'Receive Pikachu', 'Receive Pikachu from Professor Oak.', 1, FALSE::BOOLEAN),
            (2, NULL, 'main-story', 'story-checkpoint', 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Oak.', 2, FALSE),
            (2, NULL, 'main-story', 'story-battle', 'boulder-badge', 'Boulder Badge', 'Defeat Brock in Pewter City Gym.', 3, FALSE),
            (2, NULL, 'main-story', 'story-battle', 'cascade-badge', 'Cascade Badge', 'Defeat Misty in Cerulean City Gym.', 4, FALSE),
            (2, NULL, 'main-story', 'story-battle', 'thunder-badge', 'Thunder Badge', 'Defeat Lt. Surge in Vermilion City Gym.', 5, FALSE),
            (2, NULL, 'main-story', 'story-battle', 'rainbow-badge', 'Rainbow Badge', 'Defeat Erika in Celadon City Gym.', 6, FALSE),
            (2, NULL, 'main-story', 'story-battle', 'soul-badge', 'Soul Badge', 'Defeat Koga in Fuchsia City Gym.', 7, FALSE),
            (2, NULL, 'main-story', 'story-battle', 'marsh-badge', 'Marsh Badge', 'Defeat Sabrina in Saffron City Gym.', 8, FALSE),
            (2, NULL, 'main-story', 'story-battle', 'volcano-badge', 'Volcano Badge', 'Defeat Blaine in Cinnabar Island Gym.', 9, FALSE),
            (2, NULL, 'main-story', 'story-battle', 'earth-badge', 'Earth Badge', 'Defeat Giovanni in Viridian City Gym.', 10, FALSE),
            (2, NULL, 'main-story', 'story-checkpoint', 'snorlax', 'Snorlax', 'Wake and confront the sleeping Snorlax.', 11, FALSE),
            (2, NULL, 'main-story', 'story-battle', 'elite-four-lorelei', 'Elite Four Lorelei', 'Defeat Lorelei of the Elite Four.', 12, FALSE),
            (2, NULL, 'main-story', 'story-battle', 'elite-four-bruno', 'Elite Four Bruno', 'Defeat Bruno of the Elite Four.', 13, FALSE),
            (2, NULL, 'main-story', 'story-battle', 'elite-four-agatha', 'Elite Four Agatha', 'Defeat Agatha of the Elite Four.', 14, FALSE),
            (2, NULL, 'main-story', 'story-battle', 'elite-four-lance', 'Elite Four Lance', 'Defeat Lance of the Elite Four.', 15, FALSE),
            (2, NULL, 'main-story', 'story-battle', 'champion-blue', 'Champion Blue', 'Defeat Champion Blue.', 16, FALSE),
            (2, NULL, 'post-game', 'story-checkpoint', 'cerulean-cave', 'Cerulean Cave', 'Gain access to Cerulean Cave.', 1, FALSE),
            (2, NULL, 'pokemon', 'pokemon-milestone', 'articuno', 'Articuno', 'Encounter Articuno in Seafoam Islands.', 1, TRUE),
            (2, NULL, 'pokemon', 'pokemon-milestone', 'zapdos', 'Zapdos', 'Encounter Zapdos in the Power Plant.', 2, TRUE),
            (2, NULL, 'pokemon', 'pokemon-milestone', 'moltres', 'Moltres', 'Encounter Moltres in Victory Road.', 3, TRUE),
            (2, NULL, 'pokemon', 'pokemon-milestone', 'mewtwo', 'Mewtwo', 'Encounter Mewtwo in Cerulean Cave.', 4, TRUE),
            (2, NULL, 'choices', 'critical-choice', 'fossil-choice', 'Fossil Choice', 'Choose a fossil on Mt. Moon.', 1, FALSE),
            (2, NULL, 'choices', 'critical-choice', 'fighting-dojo-choice', 'Fighting Dojo Choice', 'Choose a fighting Pokémon from the Fighting Dojo.', 2, FALSE)
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
