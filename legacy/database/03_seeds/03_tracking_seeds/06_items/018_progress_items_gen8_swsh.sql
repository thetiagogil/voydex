-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.items
-- Scope: version-group-specific (swsh, VG 18)
-- Version Group: 18 (Sword / Shield)
-- Some gym leaders are version-exclusive:
--   Gym 4: Bea (Sword, game 31) / Allister (Shield, game 32)
--   Gym 6: Gordie (Sword, game 31) / Melony (Shield, game 32)
-- No traditional Elite Four — Champion Cup tournament leads to Leon.
-- Box legendary: Zacian (Sword, game 31) / Zamazenta (Shield, game 32).
-- Eternatus is a mandatory story encounter.
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
            (18, NULL::INTEGER, 'main-story', 'checkpoint', 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex.', 1, FALSE),
            (18, NULL, 'main-story', 'battle', 'grass-badge', 'Grass Badge', 'Defeat Milo in Turffield Stadium.', 2, FALSE),
            (18, NULL, 'main-story', 'battle', 'water-badge', 'Water Badge', 'Defeat Nessa in Hulbury Stadium.', 3, FALSE),
            (18, NULL, 'main-story', 'battle', 'fire-badge', 'Fire Badge', 'Defeat Kabu in Motostoke Stadium.', 4, FALSE),
            (18, 31, 'main-story', 'battle', 'fighting-badge', 'Fighting Badge', 'Defeat Bea in Stow-on-Side Stadium.', 5, FALSE),
            (18, 32, 'main-story', 'battle', 'ghost-badge', 'Ghost Badge', 'Defeat Allister in Stow-on-Side Stadium.', 5, FALSE),
            (18, NULL, 'main-story', 'battle', 'fairy-badge', 'Fairy Badge', 'Defeat Opal in Ballonlea Stadium.', 6, FALSE),
            (18, 31, 'main-story', 'battle', 'rock-badge', 'Rock Badge', 'Defeat Gordie in Circhester Stadium.', 7, FALSE),
            (18, 32, 'main-story', 'battle', 'ice-badge', 'Ice Badge', 'Defeat Melony in Circhester Stadium.', 7, FALSE),
            (18, NULL, 'main-story', 'battle', 'dark-badge', 'Dark Badge', 'Defeat Piers in Spikemuth.', 8, FALSE),
            (18, NULL, 'main-story', 'battle', 'dragon-badge', 'Dragon Badge', 'Defeat Raihan in Hammerlocke Stadium.', 9, FALSE),
            (18, NULL, 'main-story', 'battle', 'champion-leon', 'Champion Leon', 'Defeat Champion Leon in the Champion Cup Finals.', 10, FALSE),
            (18, NULL, 'post-game', 'checkpoint', 'post-game-episode', 'Post-Game Episode', 'Complete the Darkest Day post-game episode.', 1, FALSE),
            (18, 31, 'side-content', 'pokemon-milestone', 'zacian', 'Zacian', 'Encounter Zacian at the Slumbering Weald.', 1, TRUE),
            (18, 32, 'side-content', 'pokemon-milestone', 'zamazenta', 'Zamazenta', 'Encounter Zamazenta at the Slumbering Weald.', 1, TRUE),
            (18, NULL, 'side-content', 'pokemon-milestone', 'eternatus', 'Eternatus', 'Encounter Eternatus at the Energy Plant.', 2, TRUE),
            (18, NULL, 'main-story', 'decision', 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE)
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
