-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.items
-- Scope: version-group-specific (emerald, VG 6)
-- Version Group: 6 (Emerald)
-- Juan is 8th gym (replaces Wallace from RS). Wallace is champion.
-- Latias/Latios: one roams (player chooses which via lati-choice).
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
            (6, NULL::INTEGER, 'main-story', 'checkpoint', 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Birch.', 1, FALSE),
            (6, NULL, 'main-story', 'battle', 'stone-badge', 'Stone Badge', 'Defeat Roxanne in Rustboro City Gym.', 2, FALSE),
            (6, NULL, 'main-story', 'battle', 'knuckle-badge', 'Knuckle Badge', 'Defeat Brawly in Dewford Town Gym.', 3, FALSE),
            (6, NULL, 'main-story', 'battle', 'dynamo-badge', 'Dynamo Badge', 'Defeat Wattson in Mauville City Gym.', 4, FALSE),
            (6, NULL, 'main-story', 'battle', 'heat-badge', 'Heat Badge', 'Defeat Flannery in Lavaridge Town Gym.', 5, FALSE),
            (6, NULL, 'main-story', 'battle', 'balance-badge', 'Balance Badge', 'Defeat Norman in Petalburg City Gym.', 6, FALSE),
            (6, NULL, 'main-story', 'battle', 'feather-badge', 'Feather Badge', 'Defeat Winona in Fortree City Gym.', 7, FALSE),
            (6, NULL, 'main-story', 'battle', 'mind-badge', 'Mind Badge', 'Defeat Tate & Liza in Mossdeep City Gym.', 8, FALSE),
            (6, NULL, 'main-story', 'battle', 'rain-badge', 'Rain Badge', 'Defeat Juan in Sootopolis City Gym.', 9, FALSE),
            (6, NULL, 'main-story', 'battle', 'elite-four-sidney', 'Elite Four Sidney', 'Defeat Sidney of the Elite Four.', 10, FALSE),
            (6, NULL, 'main-story', 'battle', 'elite-four-phoebe', 'Elite Four Phoebe', 'Defeat Phoebe of the Elite Four.', 11, FALSE),
            (6, NULL, 'main-story', 'battle', 'elite-four-glacia', 'Elite Four Glacia', 'Defeat Glacia of the Elite Four.', 12, FALSE),
            (6, NULL, 'main-story', 'battle', 'elite-four-drake', 'Elite Four Drake', 'Defeat Drake of the Elite Four.', 13, FALSE),
            (6, NULL, 'main-story', 'battle', 'champion-wallace', 'Champion Wallace', 'Defeat Champion Wallace.', 14, FALSE),
            (6, NULL, 'post-game', 'checkpoint', 'battle-frontier', 'Battle Frontier', 'Gain access to the Battle Frontier.', 1, TRUE),
            (6, NULL, 'side-content', 'pokemon-milestone', 'rayquaza', 'Rayquaza', 'Encounter Rayquaza at the Sky Pillar.', 1, TRUE),
            (6, NULL, 'side-content', 'pokemon-milestone', 'groudon', 'Groudon', 'Encounter Groudon in the Terra Cave.', 2, TRUE),
            (6, NULL, 'side-content', 'pokemon-milestone', 'kyogre', 'Kyogre', 'Encounter Kyogre in the Marine Cave.', 3, TRUE),
            (6, NULL, 'side-content', 'pokemon-milestone', 'regirock', 'Regirock', 'Encounter Regirock in the Desert Ruins.', 4, TRUE),
            (6, NULL, 'side-content', 'pokemon-milestone', 'regice', 'Regice', 'Encounter Regice in the Island Cave.', 5, TRUE),
            (6, NULL, 'side-content', 'pokemon-milestone', 'registeel', 'Registeel', 'Encounter Registeel in the Ancient Tomb.', 6, TRUE),
            (6, NULL, 'main-story', 'decision', 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE),
            (6, NULL, 'main-story', 'decision', 'lati-choice', 'Lati Choice', 'Choose which Lati roams Hoenn.', 2, FALSE)
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
