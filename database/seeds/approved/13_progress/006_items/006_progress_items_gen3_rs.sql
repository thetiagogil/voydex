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
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Version Group: 5 (Ruby / Sapphire)
-- Wallace is 8th gym, Steven is champion (differs from Emerald).
-- Box legendary game-specific: Groudon (Ruby, game 7), Kyogre (Sapphire, game 8).
INSERT INTO
    progress.items (id, version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story
    (1070, 5, NULL, 1, 2, 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Birch.', 1, FALSE),
    (1071, 5, NULL, 1, 1, 'stone-badge', 'Stone Badge', 'Defeat Roxanne in Rustboro City Gym.', 2, FALSE),
    (1072, 5, NULL, 1, 1, 'knuckle-badge', 'Knuckle Badge', 'Defeat Brawly in Dewford Town Gym.', 3, FALSE),
    (1073, 5, NULL, 1, 1, 'dynamo-badge', 'Dynamo Badge', 'Defeat Wattson in Mauville City Gym.', 4, FALSE),
    (1074, 5, NULL, 1, 1, 'heat-badge', 'Heat Badge', 'Defeat Flannery in Lavaridge Town Gym.', 5, FALSE),
    (1075, 5, NULL, 1, 1, 'balance-badge', 'Balance Badge', 'Defeat Norman in Petalburg City Gym.', 6, FALSE),
    (1076, 5, NULL, 1, 1, 'feather-badge', 'Feather Badge', 'Defeat Winona in Fortree City Gym.', 7, FALSE),
    (1077, 5, NULL, 1, 1, 'mind-badge', 'Mind Badge', 'Defeat Tate & Liza in Mossdeep City Gym.', 8, FALSE),
    (1078, 5, NULL, 1, 1, 'rain-badge', 'Rain Badge', 'Defeat Wallace in Sootopolis City Gym.', 9, FALSE),
    (1079, 5, NULL, 1, 1, 'elite-four-sidney', 'Elite Four Sidney', 'Defeat Sidney of the Elite Four.', 10, FALSE),
    (1080, 5, NULL, 1, 1, 'elite-four-phoebe', 'Elite Four Phoebe', 'Defeat Phoebe of the Elite Four.', 11, FALSE),
    (1081, 5, NULL, 1, 1, 'elite-four-glacia', 'Elite Four Glacia', 'Defeat Glacia of the Elite Four.', 12, FALSE),
    (1082, 5, NULL, 1, 1, 'elite-four-drake', 'Elite Four Drake', 'Defeat Drake of the Elite Four.', 13, FALSE),
    (1083, 5, NULL, 1, 1, 'champion-steven', 'Champion Steven', 'Defeat Champion Steven.', 14, FALSE),
    -- Pokémon (game-specific box legendaries)
    (1084, 5, 7, 3, 3, 'groudon', 'Groudon', 'Encounter Groudon in the Cave of Origin.', 1, TRUE),
    (1085, 5, 8, 3, 3, 'kyogre', 'Kyogre', 'Encounter Kyogre in the Cave of Origin.', 1, TRUE),
    -- Pokémon (shared)
    (1086, 5, NULL, 3, 3, 'rayquaza', 'Rayquaza', 'Encounter Rayquaza at the Sky Pillar.', 2, TRUE),
    (1087, 5, NULL, 3, 3, 'regirock', 'Regirock', 'Encounter Regirock in the Desert Ruins.', 3, TRUE),
    (1088, 5, NULL, 3, 3, 'regice', 'Regice', 'Encounter Regice in the Island Cave.', 4, TRUE),
    (1089, 5, NULL, 3, 3, 'registeel', 'Registeel', 'Encounter Registeel in the Ancient Tomb.', 5, TRUE),
    -- Choices
    (1090, 5, NULL, 5, 5, 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE);