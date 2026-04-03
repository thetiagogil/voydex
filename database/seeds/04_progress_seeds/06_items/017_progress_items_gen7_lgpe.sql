-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.items
-- Scope: version-group-specific (lgpe, VG 17)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Version Group: 17 (Let's Go, Pikachu! / Let's Go, Eevee!)
-- Kanto remake. No starter choice — partner is Pikachu (game 29) or Eevee (game 30).
-- Snorlax is a story checkpoint (blocking Route 12/16).
-- Blue appears as a story boss. Green (Leaf) is a post-game boss.
-- Mewtwo is the main post-game legendary.
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
            (17, NULL::INTEGER, 'main-story', 'story-checkpoint', 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Oak.', 1, FALSE),
            (17, NULL, 'main-story', 'story-battle', 'boulder-badge', 'Boulder Badge', 'Defeat Brock in Pewter City Gym.', 2, FALSE),
            (17, NULL, 'main-story', 'story-battle', 'cascade-badge', 'Cascade Badge', 'Defeat Misty in Cerulean City Gym.', 3, FALSE),
            (17, NULL, 'main-story', 'story-battle', 'thunder-badge', 'Thunder Badge', 'Defeat Lt. Surge in Vermilion City Gym.', 4, FALSE),
            (17, NULL, 'main-story', 'story-battle', 'rainbow-badge', 'Rainbow Badge', 'Defeat Erika in Celadon City Gym.', 5, FALSE),
            (17, NULL, 'main-story', 'story-checkpoint', 'snorlax', 'Snorlax', 'Wake and confront the sleeping Snorlax.', 6, FALSE),
            (17, NULL, 'main-story', 'story-battle', 'soul-badge', 'Soul Badge', 'Defeat Koga in Fuchsia City Gym.', 7, FALSE),
            (17, NULL, 'main-story', 'story-battle', 'marsh-badge', 'Marsh Badge', 'Defeat Sabrina in Saffron City Gym.', 8, FALSE),
            (17, NULL, 'main-story', 'story-battle', 'volcano-badge', 'Volcano Badge', 'Defeat Blaine in Cinnabar Island Gym.', 9, FALSE),
            (17, NULL, 'main-story', 'story-battle', 'earth-badge', 'Earth Badge', 'Defeat Giovanni in Viridian City Gym.', 10, FALSE),
            (17, NULL, 'main-story', 'story-battle', 'elite-four-lorelei', 'Elite Four Lorelei', 'Defeat Lorelei of the Elite Four.', 11, FALSE),
            (17, NULL, 'main-story', 'story-battle', 'elite-four-bruno', 'Elite Four Bruno', 'Defeat Bruno of the Elite Four.', 12, FALSE),
            (17, NULL, 'main-story', 'story-battle', 'elite-four-agatha', 'Elite Four Agatha', 'Defeat Agatha of the Elite Four.', 13, FALSE),
            (17, NULL, 'main-story', 'story-battle', 'elite-four-lance', 'Elite Four Lance', 'Defeat Lance of the Elite Four.', 14, FALSE),
            (17, NULL, 'main-story', 'story-battle', 'champion-rival', 'Champion Rival', 'Defeat your Rival in the Champion battle.', 15, FALSE),
            (17, NULL, 'post-game', 'story-battle', 'blue-battle', 'Blue', 'Defeat Blue as a post-game boss.', 1, FALSE),
            (17, NULL, 'post-game', 'story-battle', 'green-battle', 'Green', 'Defeat Green as a post-game boss.', 2, TRUE),
            (17, NULL, 'pokemon', 'pokemon-milestone', 'mewtwo', 'Mewtwo', 'Encounter Mewtwo in Cerulean Cave.', 1, TRUE),
            (17, NULL, 'pokemon', 'pokemon-milestone', 'articuno', 'Articuno', 'Encounter Articuno in the Seafoam Islands.', 2, TRUE),
            (17, NULL, 'pokemon', 'pokemon-milestone', 'zapdos', 'Zapdos', 'Encounter Zapdos in the Power Plant.', 3, TRUE),
            (17, NULL, 'pokemon', 'pokemon-milestone', 'moltres', 'Moltres', 'Encounter Moltres on Victory Road.', 4, TRUE)
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
