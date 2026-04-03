-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.items
-- Scope: version-group-specific (bdsp, VG 21)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Version Group: 21 (Brilliant Diamond / Shining Pearl)
-- Faithful remake of DP. Fantina is 3rd gym (same as DP, not Platinum).
-- Gym order: Roark, Gardenia, Fantina, Maylene, Wake, Byron, Candice, Volkner.
-- Box legendary: Dialga (BD, game 33) / Palkia (SP, game 34).
INSERT INTO
    progress.items (id, version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story
    (1370, 21, NULL, 1, 2, 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Rowan.', 1, FALSE),
    (1371, 21, NULL, 1, 1, 'coal-badge', 'Coal Badge', 'Defeat Roark in Oreburgh City Gym.', 2, FALSE),
    (1372, 21, NULL, 1, 1, 'forest-badge', 'Forest Badge', 'Defeat Gardenia in Eterna City Gym.', 3, FALSE),
    (1373, 21, NULL, 1, 1, 'relic-badge', 'Relic Badge', 'Defeat Fantina in Hearthome City Gym.', 4, FALSE),
    (1374, 21, NULL, 1, 1, 'cobble-badge', 'Cobble Badge', 'Defeat Maylene in Veilstone City Gym.', 5, FALSE),
    (1375, 21, NULL, 1, 1, 'fen-badge', 'Fen Badge', 'Defeat Crasher Wake in Pastoria City Gym.', 6, FALSE),
    (1376, 21, NULL, 1, 1, 'mine-badge', 'Mine Badge', 'Defeat Byron in Canalave City Gym.', 7, FALSE),
    (1377, 21, NULL, 1, 1, 'icicle-badge', 'Icicle Badge', 'Defeat Candice in Snowpoint City Gym.', 8, FALSE),
    (1378, 21, NULL, 1, 1, 'beacon-badge', 'Beacon Badge', 'Defeat Volkner in Sunyshore City Gym.', 9, FALSE),
    (1379, 21, NULL, 1, 1, 'elite-four-aaron', 'Elite Four Aaron', 'Defeat Aaron of the Elite Four.', 10, FALSE),
    (1380, 21, NULL, 1, 1, 'elite-four-bertha', 'Elite Four Bertha', 'Defeat Bertha of the Elite Four.', 11, FALSE),
    (1381, 21, NULL, 1, 1, 'elite-four-flint', 'Elite Four Flint', 'Defeat Flint of the Elite Four.', 12, FALSE),
    (1382, 21, NULL, 1, 1, 'elite-four-lucian', 'Elite Four Lucian', 'Defeat Lucian of the Elite Four.', 13, FALSE),
    (1383, 21, NULL, 1, 1, 'champion-cynthia', 'Champion Cynthia', 'Defeat Champion Cynthia.', 14, FALSE),
    -- Post Game
    (1384, 21, NULL, 2, 2, 'ramanas-park', 'Ramanas Park', 'Gain access to Ramanas Park.', 1, TRUE),
    -- Pokémon (game-specific box legendaries)
    (1385, 21, 33, 3, 3, 'dialga', 'Dialga', 'Encounter Dialga at the Spear Pillar.', 1, TRUE),
    (1386, 21, 34, 3, 3, 'palkia', 'Palkia', 'Encounter Palkia at the Spear Pillar.', 1, TRUE),
    -- Pokémon (shared)
    (1387, 21, NULL, 3, 3, 'heatran', 'Heatran', 'Encounter Heatran at Stark Mountain.', 2, TRUE),
    (1388, 21, NULL, 3, 3, 'giratina', 'Giratina', 'Encounter Giratina in Turnback Cave.', 3, TRUE),
    (1389, 21, NULL, 3, 3, 'regigigas', 'Regigigas', 'Encounter Regigigas in the Snowpoint Temple.', 4, TRUE),
    (1390, 21, NULL, 3, 3, 'cresselia', 'Cresselia', 'Encounter the roaming Cresselia.', 5, TRUE),
    -- Choices
    (1391, 21, NULL, 5, 5, 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE);