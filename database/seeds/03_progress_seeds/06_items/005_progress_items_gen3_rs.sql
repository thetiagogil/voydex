-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.items
-- Scope: version-group-specific (rs, VG 5)
-- Version Group: 5 (Ruby / Sapphire)
-- Wallace is 8th gym, Steven is champion (differs from Emerald).
-- Box legendary game-specific: Groudon (Ruby, game 7), Kyogre (Sapphire, game 8).
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
            (5, NULL::INTEGER, 'main-story', 'story-checkpoint', 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Birch.', 1, FALSE),
            (5, NULL, 'main-story', 'story-battle', 'stone-badge', 'Stone Badge', 'Defeat Roxanne in Rustboro City Gym.', 2, FALSE),
            (5, NULL, 'main-story', 'story-battle', 'knuckle-badge', 'Knuckle Badge', 'Defeat Brawly in Dewford Town Gym.', 3, FALSE),
            (5, NULL, 'main-story', 'story-battle', 'dynamo-badge', 'Dynamo Badge', 'Defeat Wattson in Mauville City Gym.', 4, FALSE),
            (5, NULL, 'main-story', 'story-battle', 'heat-badge', 'Heat Badge', 'Defeat Flannery in Lavaridge Town Gym.', 5, FALSE),
            (5, NULL, 'main-story', 'story-battle', 'balance-badge', 'Balance Badge', 'Defeat Norman in Petalburg City Gym.', 6, FALSE),
            (5, NULL, 'main-story', 'story-battle', 'feather-badge', 'Feather Badge', 'Defeat Winona in Fortree City Gym.', 7, FALSE),
            (5, NULL, 'main-story', 'story-battle', 'mind-badge', 'Mind Badge', 'Defeat Tate & Liza in Mossdeep City Gym.', 8, FALSE),
            (5, NULL, 'main-story', 'story-battle', 'rain-badge', 'Rain Badge', 'Defeat Wallace in Sootopolis City Gym.', 9, FALSE),
            (5, NULL, 'main-story', 'story-battle', 'elite-four-sidney', 'Elite Four Sidney', 'Defeat Sidney of the Elite Four.', 10, FALSE),
            (5, NULL, 'main-story', 'story-battle', 'elite-four-phoebe', 'Elite Four Phoebe', 'Defeat Phoebe of the Elite Four.', 11, FALSE),
            (5, NULL, 'main-story', 'story-battle', 'elite-four-glacia', 'Elite Four Glacia', 'Defeat Glacia of the Elite Four.', 12, FALSE),
            (5, NULL, 'main-story', 'story-battle', 'elite-four-drake', 'Elite Four Drake', 'Defeat Drake of the Elite Four.', 13, FALSE),
            (5, NULL, 'main-story', 'story-battle', 'champion-steven', 'Champion Steven', 'Defeat Champion Steven.', 14, FALSE),
            (5, 7, 'pokemon', 'pokemon-milestone', 'groudon', 'Groudon', 'Encounter Groudon in the Cave of Origin.', 1, TRUE),
            (5, 8, 'pokemon', 'pokemon-milestone', 'kyogre', 'Kyogre', 'Encounter Kyogre in the Cave of Origin.', 1, TRUE),
            (5, NULL, 'pokemon', 'pokemon-milestone', 'rayquaza', 'Rayquaza', 'Encounter Rayquaza at the Sky Pillar.', 2, TRUE),
            (5, NULL, 'pokemon', 'pokemon-milestone', 'regirock', 'Regirock', 'Encounter Regirock in the Desert Ruins.', 3, TRUE),
            (5, NULL, 'pokemon', 'pokemon-milestone', 'regice', 'Regice', 'Encounter Regice in the Island Cave.', 4, TRUE),
            (5, NULL, 'pokemon', 'pokemon-milestone', 'registeel', 'Registeel', 'Encounter Registeel in the Ancient Tomb.', 5, TRUE),
            (5, NULL, 'choices', 'critical-choice', 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE)
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
