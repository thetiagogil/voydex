-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.items
-- Scope: version-group-specific (emerald, VG 6)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Version Group: 6 (Emerald)
-- Juan is 8th gym (replaces Wallace from RS). Wallace is champion.
-- Latias/Latios: one roams (player chooses which via lati-choice).
INSERT INTO
    progress.items (id, version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story
    (300, 6, NULL, 1, 2, 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Birch.', 1, FALSE),
    (301, 6, NULL, 1, 1, 'stone-badge', 'Stone Badge', 'Defeat Roxanne in Rustboro City Gym.', 2, FALSE),
    (302, 6, NULL, 1, 1, 'knuckle-badge', 'Knuckle Badge', 'Defeat Brawly in Dewford Town Gym.', 3, FALSE),
    (303, 6, NULL, 1, 1, 'dynamo-badge', 'Dynamo Badge', 'Defeat Wattson in Mauville City Gym.', 4, FALSE),
    (304, 6, NULL, 1, 1, 'heat-badge', 'Heat Badge', 'Defeat Flannery in Lavaridge Town Gym.', 5, FALSE),
    (305, 6, NULL, 1, 1, 'balance-badge', 'Balance Badge', 'Defeat Norman in Petalburg City Gym.', 6, FALSE),
    (306, 6, NULL, 1, 1, 'feather-badge', 'Feather Badge', 'Defeat Winona in Fortree City Gym.', 7, FALSE),
    (307, 6, NULL, 1, 1, 'mind-badge', 'Mind Badge', 'Defeat Tate & Liza in Mossdeep City Gym.', 8, FALSE),
    (308, 6, NULL, 1, 1, 'rain-badge', 'Rain Badge', 'Defeat Juan in Sootopolis City Gym.', 9, FALSE),
    (309, 6, NULL, 1, 1, 'elite-four-sidney', 'Elite Four Sidney', 'Defeat Sidney of the Elite Four.', 10, FALSE),
    (310, 6, NULL, 1, 1, 'elite-four-phoebe', 'Elite Four Phoebe', 'Defeat Phoebe of the Elite Four.', 11, FALSE),
    (311, 6, NULL, 1, 1, 'elite-four-glacia', 'Elite Four Glacia', 'Defeat Glacia of the Elite Four.', 12, FALSE),
    (312, 6, NULL, 1, 1, 'elite-four-drake', 'Elite Four Drake', 'Defeat Drake of the Elite Four.', 13, FALSE),
    (313, 6, NULL, 1, 1, 'champion-wallace', 'Champion Wallace', 'Defeat Champion Wallace.', 14, FALSE),
    -- Post Game
    (314, 6, NULL, 2, 2, 'battle-frontier', 'Battle Frontier', 'Gain access to the Battle Frontier.', 1, TRUE),
    -- Pokémon
    (315, 6, NULL, 3, 3, 'rayquaza', 'Rayquaza', 'Encounter Rayquaza at the Sky Pillar.', 1, TRUE),
    (316, 6, NULL, 3, 3, 'groudon', 'Groudon', 'Encounter Groudon in the Terra Cave.', 2, TRUE),
    (317, 6, NULL, 3, 3, 'kyogre', 'Kyogre', 'Encounter Kyogre in the Marine Cave.', 3, TRUE),
    (318, 6, NULL, 3, 3, 'regirock', 'Regirock', 'Encounter Regirock in the Desert Ruins.', 4, TRUE),
    (319, 6, NULL, 3, 3, 'regice', 'Regice', 'Encounter Regice in the Island Cave.', 5, TRUE),
    (320, 6, NULL, 3, 3, 'registeel', 'Registeel', 'Encounter Registeel in the Ancient Tomb.', 6, TRUE),
    -- Choices
    (321, 6, NULL, 5, 5, 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE),
    (322, 6, NULL, 5, 5, 'lati-choice', 'Lati Choice', 'Choose which Lati roams Hoenn.', 2, FALSE);