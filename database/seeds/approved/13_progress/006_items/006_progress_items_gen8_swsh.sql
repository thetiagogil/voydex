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
    progress.items (id, version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story
    (800, 18, NULL, 1, 2, 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex.', 1, FALSE),
    (801, 18, NULL, 1, 1, 'grass-badge', 'Grass Badge', 'Defeat Milo in Turffield Stadium.', 2, FALSE),
    (802, 18, NULL, 1, 1, 'water-badge', 'Water Badge', 'Defeat Nessa in Hulbury Stadium.', 3, FALSE),
    (803, 18, NULL, 1, 1, 'fire-badge', 'Fire Badge', 'Defeat Kabu in Motostoke Stadium.', 4, FALSE),
    -- Version-exclusive 4th gym
    (804, 18, 31, 1, 1, 'fighting-badge', 'Fighting Badge', 'Defeat Bea in Stow-on-Side Stadium.', 5, FALSE),
    (805, 18, 32, 1, 1, 'ghost-badge', 'Ghost Badge', 'Defeat Allister in Stow-on-Side Stadium.', 5, FALSE),
    (806, 18, NULL, 1, 1, 'fairy-badge', 'Fairy Badge', 'Defeat Opal in Ballonlea Stadium.', 6, FALSE),
    -- Version-exclusive 6th gym
    (807, 18, 31, 1, 1, 'rock-badge', 'Rock Badge', 'Defeat Gordie in Circhester Stadium.', 7, FALSE),
    (808, 18, 32, 1, 1, 'ice-badge', 'Ice Badge', 'Defeat Melony in Circhester Stadium.', 7, FALSE),
    (809, 18, NULL, 1, 1, 'dark-badge', 'Dark Badge', 'Defeat Piers in Spikemuth.', 8, FALSE),
    (810, 18, NULL, 1, 1, 'dragon-badge', 'Dragon Badge', 'Defeat Raihan in Hammerlocke Stadium.', 9, FALSE),
    (811, 18, NULL, 1, 1, 'champion-leon', 'Champion Leon', 'Defeat Champion Leon in the Champion Cup Finals.', 10, FALSE),
    -- Post Game
    (812, 18, NULL, 2, 2, 'post-game-episode', 'Post-Game Episode', 'Complete the Darkest Day post-game episode.', 1, FALSE),
    -- Pokémon (game-specific box legendaries)
    (813, 18, 31, 3, 3, 'zacian', 'Zacian', 'Encounter Zacian at the Slumbering Weald.', 1, TRUE),
    (814, 18, 32, 3, 3, 'zamazenta', 'Zamazenta', 'Encounter Zamazenta at the Slumbering Weald.', 1, TRUE),
    -- Pokémon (shared)
    (815, 18, NULL, 3, 3, 'eternatus', 'Eternatus', 'Encounter Eternatus at the Energy Plant.', 2, TRUE),
    -- Choices
    (816, 18, NULL, 5, 5, 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE);