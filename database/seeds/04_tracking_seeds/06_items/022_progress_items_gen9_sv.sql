-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.items
-- Scope: version-group-specific (sv, VG 23)
-- Version Group: 23 (Scarlet / Violet)
-- Three parallel story paths converge before the finale:
--   Victory Road (gyms), Starfall Street (Team Star), Path of Legends (titans).
-- Box legendary: Koraidon (Scarlet, game 36) / Miraidon (Violet, game 37).
-- Professor AI: Sada (Scarlet) / Turo (Violet) — modeled as shared milestone.
-- Titan encounters are story checkpoints (wild Pokémon, not trainer battles).
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
            (23, NULL::INTEGER, 'main-story', 'story-checkpoint', 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Clavell.', 1, FALSE),
            (23, NULL, 'main-story', 'story-battle', 'bug-badge', 'Bug Badge', 'Defeat Katy in Cortondo Gym.', 2, FALSE),
            (23, NULL, 'main-story', 'story-battle', 'grass-badge', 'Grass Badge', 'Defeat Brassius in Artazon Gym.', 3, FALSE),
            (23, NULL, 'main-story', 'story-battle', 'electric-badge', 'Electric Badge', 'Defeat Iono in Levincia Gym.', 4, FALSE),
            (23, NULL, 'main-story', 'story-battle', 'water-badge', 'Water Badge', 'Defeat Kofu in Cascarrafa Gym.', 5, FALSE),
            (23, NULL, 'main-story', 'story-battle', 'normal-badge', 'Normal Badge', 'Defeat Larry in Medali Gym.', 6, FALSE),
            (23, NULL, 'main-story', 'story-battle', 'ghost-badge', 'Ghost Badge', 'Defeat Ryme in Montenevera Gym.', 7, FALSE),
            (23, NULL, 'main-story', 'story-battle', 'psychic-badge', 'Psychic Badge', 'Defeat Tulip in Alfornada Gym.', 8, FALSE),
            (23, NULL, 'main-story', 'story-battle', 'ice-badge', 'Ice Badge', 'Defeat Grusha in Glaseado Gym.', 9, FALSE),
            (23, NULL, 'main-story', 'story-battle', 'dark-star', 'Dark Star', 'Defeat Giacomo, the Dark-type Team Star Boss.', 10, FALSE),
            (23, NULL, 'main-story', 'story-battle', 'fire-star', 'Fire Star', 'Defeat Mela, the Fire-type Team Star Boss.', 11, FALSE),
            (23, NULL, 'main-story', 'story-battle', 'poison-star', 'Poison Star', 'Defeat Atticus, the Poison-type Team Star Boss.', 12, FALSE),
            (23, NULL, 'main-story', 'story-battle', 'fairy-star', 'Fairy Star', 'Defeat Ortega, the Fairy-type Team Star Boss.', 13, FALSE),
            (23, NULL, 'main-story', 'story-battle', 'fighting-star', 'Fighting Star', 'Defeat Eri, the Fighting-type Team Star Boss.', 14, FALSE),
            (23, NULL, 'main-story', 'story-checkpoint', 'stony-cliff-titan', 'Stony Cliff Titan', 'Defeat the Stony Cliff Titan.', 15, FALSE),
            (23, NULL, 'main-story', 'story-checkpoint', 'open-sky-titan', 'Open Sky Titan', 'Defeat the Open Sky Titan.', 16, FALSE),
            (23, NULL, 'main-story', 'story-checkpoint', 'lurking-steel-titan', 'Lurking Steel Titan', 'Defeat the Lurking Steel Titan.', 17, FALSE),
            (23, NULL, 'main-story', 'story-checkpoint', 'quaking-earth-titan', 'Quaking Earth Titan', 'Defeat the Quaking Earth Titan.', 18, FALSE),
            (23, NULL, 'main-story', 'story-checkpoint', 'false-dragon-titan', 'False Dragon Titan', 'Defeat the False Dragon Titan.', 19, FALSE),
            (23, NULL, 'main-story', 'story-battle', 'elite-four-rika', 'Elite Four Rika', 'Defeat Rika of the Elite Four.', 20, FALSE),
            (23, NULL, 'main-story', 'story-battle', 'elite-four-poppy', 'Elite Four Poppy', 'Defeat Poppy of the Elite Four.', 21, FALSE),
            (23, NULL, 'main-story', 'story-battle', 'elite-four-larry', 'Elite Four Larry', 'Defeat Larry of the Elite Four.', 22, FALSE),
            (23, NULL, 'main-story', 'story-battle', 'elite-four-hassel', 'Elite Four Hassel', 'Defeat Hassel of the Elite Four.', 23, FALSE),
            (23, NULL, 'main-story', 'story-battle', 'top-champion-geeta', 'Top Champion Geeta', 'Defeat Top Champion Geeta.', 24, FALSE),
            (23, NULL, 'main-story', 'story-battle', 'champion-nemona', 'Champion Nemona', 'Defeat Nemona in the champion battle.', 25, FALSE),
            (23, NULL, 'main-story', 'story-checkpoint', 'area-zero', 'Area Zero', 'Reach the depths of Area Zero.', 26, FALSE),
            (23, NULL, 'main-story', 'story-battle', 'professor-ai', 'Professor AI', 'Defeat the Professor AI in Area Zero.', 27, FALSE),
            (23, NULL, 'post-game', 'story-checkpoint', 'academy-ace-tournament', 'Academy Ace Tournament', 'Participate in the Academy Ace Tournament.', 1, TRUE),
            (23, 36, 'pokemon', 'pokemon-milestone', 'koraidon', 'Koraidon', 'Encounter Koraidon.', 1, TRUE),
            (23, 37, 'pokemon', 'pokemon-milestone', 'miraidon', 'Miraidon', 'Encounter Miraidon.', 1, TRUE),
            (23, NULL, 'collectibles', 'collectible', 'purple-stakes', 'Purple Ominous Stakes', 'Pull all 8 purple stakes to unseal the Grasswither Shrine.', 1, TRUE),
            (23, NULL, 'collectibles', 'collectible', 'yellow-stakes', 'Yellow Ominous Stakes', 'Pull all 8 yellow stakes to unseal the Groundblight Shrine.', 2, TRUE),
            (23, NULL, 'collectibles', 'collectible', 'green-stakes', 'Green Ominous Stakes', 'Pull all 8 green stakes to unseal the Firescourge Shrine.', 3, TRUE),
            (23, NULL, 'collectibles', 'collectible', 'blue-stakes', 'Blue Ominous Stakes', 'Pull all 8 blue stakes to unseal the Icerend Shrine.', 4, TRUE),
            (23, NULL, 'choices', 'decision', 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE)
    )
INSERT INTO
    tracking.items (
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
    JOIN tracking.categories c ON c.slug = s.category_slug
    JOIN tracking.item_types t ON t.slug = s.item_type_slug;
