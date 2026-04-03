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
INSERT INTO
    progress.items (id, version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story
    (1300, 17, NULL, 1, 2, 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Oak.', 1, FALSE),
    (1301, 17, NULL, 1, 1, 'boulder-badge', 'Boulder Badge', 'Defeat Brock in Pewter City Gym.', 2, FALSE),
    (1302, 17, NULL, 1, 1, 'cascade-badge', 'Cascade Badge', 'Defeat Misty in Cerulean City Gym.', 3, FALSE),
    (1303, 17, NULL, 1, 1, 'thunder-badge', 'Thunder Badge', 'Defeat Lt. Surge in Vermilion City Gym.', 4, FALSE),
    (1304, 17, NULL, 1, 1, 'rainbow-badge', 'Rainbow Badge', 'Defeat Erika in Celadon City Gym.', 5, FALSE),
    (1305, 17, NULL, 1, 2, 'snorlax', 'Snorlax', 'Wake and confront the sleeping Snorlax.', 6, FALSE),
    (1306, 17, NULL, 1, 1, 'soul-badge', 'Soul Badge', 'Defeat Koga in Fuchsia City Gym.', 7, FALSE),
    (1307, 17, NULL, 1, 1, 'marsh-badge', 'Marsh Badge', 'Defeat Sabrina in Saffron City Gym.', 8, FALSE),
    (1308, 17, NULL, 1, 1, 'volcano-badge', 'Volcano Badge', 'Defeat Blaine in Cinnabar Island Gym.', 9, FALSE),
    (1309, 17, NULL, 1, 1, 'earth-badge', 'Earth Badge', 'Defeat Giovanni in Viridian City Gym.', 10, FALSE),
    (1310, 17, NULL, 1, 1, 'elite-four-lorelei', 'Elite Four Lorelei', 'Defeat Lorelei of the Elite Four.', 11, FALSE),
    (1311, 17, NULL, 1, 1, 'elite-four-bruno', 'Elite Four Bruno', 'Defeat Bruno of the Elite Four.', 12, FALSE),
    (1312, 17, NULL, 1, 1, 'elite-four-agatha', 'Elite Four Agatha', 'Defeat Agatha of the Elite Four.', 13, FALSE),
    (1313, 17, NULL, 1, 1, 'elite-four-lance', 'Elite Four Lance', 'Defeat Lance of the Elite Four.', 14, FALSE),
    (1314, 17, NULL, 1, 1, 'champion-rival', 'Champion Rival', 'Defeat your Rival in the Champion battle.', 15, FALSE),
    -- Post Game
    (1315, 17, NULL, 2, 1, 'blue-battle', 'Blue', 'Defeat Blue as a post-game boss.', 1, FALSE),
    (1316, 17, NULL, 2, 1, 'green-battle', 'Green', 'Defeat Green as a post-game boss.', 2, TRUE),
    -- Pokémon
    (1317, 17, NULL, 3, 3, 'mewtwo', 'Mewtwo', 'Encounter Mewtwo in Cerulean Cave.', 1, TRUE),
    (1318, 17, NULL, 3, 3, 'articuno', 'Articuno', 'Encounter Articuno in the Seafoam Islands.', 2, TRUE),
    (1319, 17, NULL, 3, 3, 'zapdos', 'Zapdos', 'Encounter Zapdos in the Power Plant.', 3, TRUE),
    (1320, 17, NULL, 3, 3, 'moltres', 'Moltres', 'Encounter Moltres on Victory Road.', 4, TRUE);