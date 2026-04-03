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
    progress.items (version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story — Victory Road (gyms)
    (23, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-checkpoint'), 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Clavell.', 1, FALSE),
    (23, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'bug-badge', 'Bug Badge', 'Defeat Katy in Cortondo Gym.', 2, FALSE),
    (23, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'grass-badge', 'Grass Badge', 'Defeat Brassius in Artazon Gym.', 3, FALSE),
    (23, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'electric-badge', 'Electric Badge', 'Defeat Iono in Levincia Gym.', 4, FALSE),
    (23, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'water-badge', 'Water Badge', 'Defeat Kofu in Cascarrafa Gym.', 5, FALSE),
    (23, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'normal-badge', 'Normal Badge', 'Defeat Larry in Medali Gym.', 6, FALSE),
    (23, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'ghost-badge', 'Ghost Badge', 'Defeat Ryme in Montenevera Gym.', 7, FALSE),
    (23, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'psychic-badge', 'Psychic Badge', 'Defeat Tulip in Alfornada Gym.', 8, FALSE),
    (23, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'ice-badge', 'Ice Badge', 'Defeat Grusha in Glaseado Gym.', 9, FALSE),
    -- Main Story — Starfall Street (Team Star)
    (23, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'dark-star', 'Dark Star', 'Defeat Giacomo, the Dark-type Team Star Boss.', 10, FALSE),
    (23, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'fire-star', 'Fire Star', 'Defeat Mela, the Fire-type Team Star Boss.', 11, FALSE),
    (23, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'poison-star', 'Poison Star', 'Defeat Atticus, the Poison-type Team Star Boss.', 12, FALSE),
    (23, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'fairy-star', 'Fairy Star', 'Defeat Ortega, the Fairy-type Team Star Boss.', 13, FALSE),
    (23, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'fighting-star', 'Fighting Star', 'Defeat Eri, the Fighting-type Team Star Boss.', 14, FALSE),
    -- Main Story — Path of Legends (titans)
    (23, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-checkpoint'), 'stony-cliff-titan', 'Stony Cliff Titan', 'Defeat the Stony Cliff Titan.', 15, FALSE),
    (23, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-checkpoint'), 'open-sky-titan', 'Open Sky Titan', 'Defeat the Open Sky Titan.', 16, FALSE),
    (23, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-checkpoint'), 'lurking-steel-titan', 'Lurking Steel Titan', 'Defeat the Lurking Steel Titan.', 17, FALSE),
    (23, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-checkpoint'), 'quaking-earth-titan', 'Quaking Earth Titan', 'Defeat the Quaking Earth Titan.', 18, FALSE),
    (23, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-checkpoint'), 'false-dragon-titan', 'False Dragon Titan', 'Defeat the False Dragon Titan.', 19, FALSE),
    -- Main Story — Convergence (Pokémon League + The Way Home)
    (23, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'elite-four-rika', 'Elite Four Rika', 'Defeat Rika of the Elite Four.', 20, FALSE),
    (23, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'elite-four-poppy', 'Elite Four Poppy', 'Defeat Poppy of the Elite Four.', 21, FALSE),
    (23, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'elite-four-larry', 'Elite Four Larry', 'Defeat Larry of the Elite Four.', 22, FALSE),
    (23, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'elite-four-hassel', 'Elite Four Hassel', 'Defeat Hassel of the Elite Four.', 23, FALSE),
    (23, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'top-champion-geeta', 'Top Champion Geeta', 'Defeat Top Champion Geeta.', 24, FALSE),
    (23, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'champion-nemona', 'Champion Nemona', 'Defeat Nemona in the champion battle.', 25, FALSE),
    (23, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-checkpoint'), 'area-zero', 'Area Zero', 'Reach the depths of Area Zero.', 26, FALSE),
    (23, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'professor-ai', 'Professor AI', 'Defeat the Professor AI in Area Zero.', 27, FALSE),
    -- Post Game
    (23, NULL, (SELECT id FROM progress.categories WHERE slug = 'post-game'), (SELECT id FROM progress.item_types WHERE slug = 'story-checkpoint'), 'academy-ace-tournament', 'Academy Ace Tournament', 'Participate in the Academy Ace Tournament.', 1, TRUE),
    -- Pokémon (game-specific box legendaries)
    (23, 36, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'koraidon', 'Koraidon', 'Encounter Koraidon.', 1, TRUE),
    (23, 37, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'miraidon', 'Miraidon', 'Encounter Miraidon.', 1, TRUE),
    -- Choices
    (23, NULL, (SELECT id FROM progress.categories WHERE slug = 'choices'), (SELECT id FROM progress.item_types WHERE slug = 'critical-choice'), 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE);