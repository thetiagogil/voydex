-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.items
-- Scope: version-group-specific (oras, VG 14)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Version Group: 14 (Omega Ruby / Alpha Sapphire)
-- Remake of RS. Wallace is 8th gym, Steven is champion.
-- Delta Episode post-game with Deoxys.
-- Box legendary: Groudon (OR, game 23) / Kyogre (AS, game 24).
-- Lati@s given during story (opposite of box legendary).
INSERT INTO
    progress.items (id, version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story
    (1240, 14, NULL, 1, 2, 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Birch.', 1, FALSE),
    (1241, 14, NULL, 1, 1, 'stone-badge', 'Stone Badge', 'Defeat Roxanne in Rustboro City Gym.', 2, FALSE),
    (1242, 14, NULL, 1, 1, 'knuckle-badge', 'Knuckle Badge', 'Defeat Brawly in Dewford Town Gym.', 3, FALSE),
    (1243, 14, NULL, 1, 1, 'dynamo-badge', 'Dynamo Badge', 'Defeat Wattson in Mauville City Gym.', 4, FALSE),
    (1244, 14, NULL, 1, 1, 'heat-badge', 'Heat Badge', 'Defeat Flannery in Lavaridge Town Gym.', 5, FALSE),
    (1245, 14, NULL, 1, 1, 'balance-badge', 'Balance Badge', 'Defeat Norman in Petalburg City Gym.', 6, FALSE),
    (1246, 14, NULL, 1, 1, 'feather-badge', 'Feather Badge', 'Defeat Winona in Fortree City Gym.', 7, FALSE),
    (1247, 14, NULL, 1, 1, 'mind-badge', 'Mind Badge', 'Defeat Tate & Liza in Mossdeep City Gym.', 8, FALSE),
    (1248, 14, NULL, 1, 1, 'rain-badge', 'Rain Badge', 'Defeat Wallace in Sootopolis City Gym.', 9, FALSE),
    (1249, 14, NULL, 1, 1, 'elite-four-sidney', 'Elite Four Sidney', 'Defeat Sidney of the Elite Four.', 10, FALSE),
    (1250, 14, NULL, 1, 1, 'elite-four-phoebe', 'Elite Four Phoebe', 'Defeat Phoebe of the Elite Four.', 11, FALSE),
    (1251, 14, NULL, 1, 1, 'elite-four-glacia', 'Elite Four Glacia', 'Defeat Glacia of the Elite Four.', 12, FALSE),
    (1252, 14, NULL, 1, 1, 'elite-four-drake', 'Elite Four Drake', 'Defeat Drake of the Elite Four.', 13, FALSE),
    (1253, 14, NULL, 1, 1, 'champion-steven', 'Champion Steven', 'Defeat Champion Steven.', 14, FALSE),
    -- Post Game
    (1254, 14, NULL, 2, 2, 'delta-episode', 'Delta Episode', 'Complete the Delta Episode.', 1, FALSE),
    -- Pokémon (game-specific box legendaries)
    (1255, 14, 23, 3, 3, 'groudon', 'Groudon', 'Encounter Primal Groudon in the Cave of Origin.', 1, TRUE),
    (1256, 14, 24, 3, 3, 'kyogre', 'Kyogre', 'Encounter Primal Kyogre in the Cave of Origin.', 1, TRUE),
    -- Pokémon (shared)
    (1257, 14, NULL, 3, 3, 'rayquaza', 'Rayquaza', 'Encounter Rayquaza at the Sky Pillar.', 2, TRUE),
    (1258, 14, NULL, 3, 3, 'deoxys', 'Deoxys', 'Encounter Deoxys during the Delta Episode.', 3, TRUE),
    -- Choices
    (1259, 14, NULL, 5, 5, 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE);