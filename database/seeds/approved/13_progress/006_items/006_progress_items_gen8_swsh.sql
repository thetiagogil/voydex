-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.items
-- Scope: version-group-specific (swsh, VG 18)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Version Group: 18 (Sword / Shield)
-- Some gym leaders are version-exclusive:
--   Gym 4: Bea (Sword, game 31) / Allister (Shield, game 32)
--   Gym 6: Gordie (Sword, game 31) / Melony (Shield, game 32)
-- No traditional Elite Four — Champion Cup tournament leads to Leon.
-- Box legendary: Zacian (Sword, game 31) / Zamazenta (Shield, game 32).
-- Eternatus is a mandatory story encounter.
INSERT INTO
    progress.items (version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story
    (18, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-checkpoint'), 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex.', 1, FALSE),
    (18, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'grass-badge', 'Grass Badge', 'Defeat Milo in Turffield Stadium.', 2, FALSE),
    (18, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'water-badge', 'Water Badge', 'Defeat Nessa in Hulbury Stadium.', 3, FALSE),
    (18, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'fire-badge', 'Fire Badge', 'Defeat Kabu in Motostoke Stadium.', 4, FALSE),
    -- Version-exclusive 4th gym
    (18, 31, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'fighting-badge', 'Fighting Badge', 'Defeat Bea in Stow-on-Side Stadium.', 5, FALSE),
    (18, 32, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'ghost-badge', 'Ghost Badge', 'Defeat Allister in Stow-on-Side Stadium.', 5, FALSE),
    (18, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'fairy-badge', 'Fairy Badge', 'Defeat Opal in Ballonlea Stadium.', 6, FALSE),
    -- Version-exclusive 6th gym
    (18, 31, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'rock-badge', 'Rock Badge', 'Defeat Gordie in Circhester Stadium.', 7, FALSE),
    (18, 32, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'ice-badge', 'Ice Badge', 'Defeat Melony in Circhester Stadium.', 7, FALSE),
    (18, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'dark-badge', 'Dark Badge', 'Defeat Piers in Spikemuth.', 8, FALSE),
    (18, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'dragon-badge', 'Dragon Badge', 'Defeat Raihan in Hammerlocke Stadium.', 9, FALSE),
    (18, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'champion-leon', 'Champion Leon', 'Defeat Champion Leon in the Champion Cup Finals.', 10, FALSE),
    -- Post Game
    (18, NULL, (SELECT id FROM progress.categories WHERE slug = 'post-game'), (SELECT id FROM progress.item_types WHERE slug = 'story-checkpoint'), 'post-game-episode', 'Post-Game Episode', 'Complete the Darkest Day post-game episode.', 1, FALSE),
    -- Pokémon (game-specific box legendaries)
    (18, 31, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'zacian', 'Zacian', 'Encounter Zacian at the Slumbering Weald.', 1, TRUE),
    (18, 32, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'zamazenta', 'Zamazenta', 'Encounter Zamazenta at the Slumbering Weald.', 1, TRUE),
    -- Pokémon (shared)
    (18, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'eternatus', 'Eternatus', 'Encounter Eternatus at the Energy Plant.', 2, TRUE),
    -- Choices
    (18, NULL, (SELECT id FROM progress.categories WHERE slug = 'choices'), (SELECT id FROM progress.item_types WHERE slug = 'critical-choice'), 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE);