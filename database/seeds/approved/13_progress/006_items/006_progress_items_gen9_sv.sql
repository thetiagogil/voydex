-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.items
-- Scope: version-group-specific (sv, VG 23)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Version Group: 23 (Scarlet / Violet)
-- Three parallel story paths converge before the finale:
--   Victory Road (gyms), Starfall Street (Team Star), Path of Legends (titans).
-- Box legendary: Koraidon (Scarlet, game 36) / Miraidon (Violet, game 37).
-- Professor AI: Sada (Scarlet) / Turo (Violet) — modeled as shared milestone.
-- Titan encounters are story checkpoints (wild Pokémon, not trainer battles).
INSERT INTO
    progress.items (id, version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story — Victory Road (gyms)
    (900, 23, NULL, 1, 2, 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Clavell.', 1, FALSE),
    (901, 23, NULL, 1, 1, 'bug-badge', 'Bug Badge', 'Defeat Katy in Cortondo Gym.', 2, FALSE),
    (902, 23, NULL, 1, 1, 'grass-badge', 'Grass Badge', 'Defeat Brassius in Artazon Gym.', 3, FALSE),
    (903, 23, NULL, 1, 1, 'electric-badge', 'Electric Badge', 'Defeat Iono in Levincia Gym.', 4, FALSE),
    (904, 23, NULL, 1, 1, 'water-badge', 'Water Badge', 'Defeat Kofu in Cascarrafa Gym.', 5, FALSE),
    (905, 23, NULL, 1, 1, 'normal-badge', 'Normal Badge', 'Defeat Larry in Medali Gym.', 6, FALSE),
    (906, 23, NULL, 1, 1, 'ghost-badge', 'Ghost Badge', 'Defeat Ryme in Montenevera Gym.', 7, FALSE),
    (907, 23, NULL, 1, 1, 'psychic-badge', 'Psychic Badge', 'Defeat Tulip in Alfornada Gym.', 8, FALSE),
    (908, 23, NULL, 1, 1, 'ice-badge', 'Ice Badge', 'Defeat Grusha in Glaseado Gym.', 9, FALSE),
    -- Main Story — Starfall Street (Team Star)
    (909, 23, NULL, 1, 1, 'dark-star', 'Dark Star', 'Defeat Giacomo, the Dark-type Team Star Boss.', 10, FALSE),
    (910, 23, NULL, 1, 1, 'fire-star', 'Fire Star', 'Defeat Mela, the Fire-type Team Star Boss.', 11, FALSE),
    (911, 23, NULL, 1, 1, 'poison-star', 'Poison Star', 'Defeat Atticus, the Poison-type Team Star Boss.', 12, FALSE),
    (912, 23, NULL, 1, 1, 'fairy-star', 'Fairy Star', 'Defeat Ortega, the Fairy-type Team Star Boss.', 13, FALSE),
    (913, 23, NULL, 1, 1, 'fighting-star', 'Fighting Star', 'Defeat Eri, the Fighting-type Team Star Boss.', 14, FALSE),
    -- Main Story — Path of Legends (titans)
    (914, 23, NULL, 1, 2, 'stony-cliff-titan', 'Stony Cliff Titan', 'Defeat the Stony Cliff Titan.', 15, FALSE),
    (915, 23, NULL, 1, 2, 'open-sky-titan', 'Open Sky Titan', 'Defeat the Open Sky Titan.', 16, FALSE),
    (916, 23, NULL, 1, 2, 'lurking-steel-titan', 'Lurking Steel Titan', 'Defeat the Lurking Steel Titan.', 17, FALSE),
    (917, 23, NULL, 1, 2, 'quaking-earth-titan', 'Quaking Earth Titan', 'Defeat the Quaking Earth Titan.', 18, FALSE),
    (918, 23, NULL, 1, 2, 'false-dragon-titan', 'False Dragon Titan', 'Defeat the False Dragon Titan.', 19, FALSE),
    -- Main Story — Convergence (Pokémon League + The Way Home)
    (919, 23, NULL, 1, 1, 'elite-four-rika', 'Elite Four Rika', 'Defeat Rika of the Elite Four.', 20, FALSE),
    (920, 23, NULL, 1, 1, 'elite-four-poppy', 'Elite Four Poppy', 'Defeat Poppy of the Elite Four.', 21, FALSE),
    (921, 23, NULL, 1, 1, 'elite-four-larry', 'Elite Four Larry', 'Defeat Larry of the Elite Four.', 22, FALSE),
    (922, 23, NULL, 1, 1, 'elite-four-hassel', 'Elite Four Hassel', 'Defeat Hassel of the Elite Four.', 23, FALSE),
    (923, 23, NULL, 1, 1, 'top-champion-geeta', 'Top Champion Geeta', 'Defeat Top Champion Geeta.', 24, FALSE),
    (924, 23, NULL, 1, 1, 'champion-nemona', 'Champion Nemona', 'Defeat Nemona in the champion battle.', 25, FALSE),
    (925, 23, NULL, 1, 2, 'area-zero', 'Area Zero', 'Reach the depths of Area Zero.', 26, FALSE),
    (926, 23, NULL, 1, 1, 'professor-ai', 'Professor AI', 'Defeat the Professor AI in Area Zero.', 27, FALSE),
    -- Post Game
    (927, 23, NULL, 2, 2, 'academy-ace-tournament', 'Academy Ace Tournament', 'Participate in the Academy Ace Tournament.', 1, TRUE),
    -- Pokémon (game-specific box legendaries)
    (928, 23, 36, 3, 3, 'koraidon', 'Koraidon', 'Encounter Koraidon.', 1, TRUE),
    (929, 23, 37, 3, 3, 'miraidon', 'Miraidon', 'Encounter Miraidon.', 1, TRUE),
    -- Choices
    (930, 23, NULL, 5, 5, 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE);