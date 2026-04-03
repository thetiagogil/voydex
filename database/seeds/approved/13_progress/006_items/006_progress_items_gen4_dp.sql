-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.items
-- Scope: version-group-specific (dp, VG 8)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Version Group: 8 (Diamond / Pearl)
-- Gym order: Roark, Gardenia, Fantina, Maylene, Wake, Byron, Candice, Volkner.
-- Box legendary game-specific: Dialga (Diamond, game 12), Palkia (Pearl, game 13).
INSERT INTO
    progress.items (id, version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story
    (1130, 8, NULL, 1, 2, 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Rowan.', 1, FALSE),
    (1131, 8, NULL, 1, 1, 'coal-badge', 'Coal Badge', 'Defeat Roark in Oreburgh City Gym.', 2, FALSE),
    (1132, 8, NULL, 1, 1, 'forest-badge', 'Forest Badge', 'Defeat Gardenia in Eterna City Gym.', 3, FALSE),
    (1133, 8, NULL, 1, 1, 'relic-badge', 'Relic Badge', 'Defeat Fantina in Hearthome City Gym.', 4, FALSE),
    (1134, 8, NULL, 1, 1, 'cobble-badge', 'Cobble Badge', 'Defeat Maylene in Veilstone City Gym.', 5, FALSE),
    (1135, 8, NULL, 1, 1, 'fen-badge', 'Fen Badge', 'Defeat Crasher Wake in Pastoria City Gym.', 6, FALSE),
    (1136, 8, NULL, 1, 1, 'mine-badge', 'Mine Badge', 'Defeat Byron in Canalave City Gym.', 7, FALSE),
    (1137, 8, NULL, 1, 1, 'icicle-badge', 'Icicle Badge', 'Defeat Candice in Snowpoint City Gym.', 8, FALSE),
    (1138, 8, NULL, 1, 1, 'beacon-badge', 'Beacon Badge', 'Defeat Volkner in Sunyshore City Gym.', 9, FALSE),
    (1139, 8, NULL, 1, 1, 'elite-four-aaron', 'Elite Four Aaron', 'Defeat Aaron of the Elite Four.', 10, FALSE),
    (1140, 8, NULL, 1, 1, 'elite-four-bertha', 'Elite Four Bertha', 'Defeat Bertha of the Elite Four.', 11, FALSE),
    (1141, 8, NULL, 1, 1, 'elite-four-flint', 'Elite Four Flint', 'Defeat Flint of the Elite Four.', 12, FALSE),
    (1142, 8, NULL, 1, 1, 'elite-four-lucian', 'Elite Four Lucian', 'Defeat Lucian of the Elite Four.', 13, FALSE),
    (1143, 8, NULL, 1, 1, 'champion-cynthia', 'Champion Cynthia', 'Defeat Champion Cynthia.', 14, FALSE),
    -- Pokémon (game-specific box legendaries)
    (1144, 8, 12, 3, 3, 'dialga', 'Dialga', 'Encounter Dialga at the Spear Pillar.', 1, TRUE),
    (1145, 8, 13, 3, 3, 'palkia', 'Palkia', 'Encounter Palkia at the Spear Pillar.', 1, TRUE),
    -- Pokémon (shared post-game)
    (1146, 8, NULL, 3, 3, 'heatran', 'Heatran', 'Encounter Heatran at Stark Mountain.', 2, TRUE),
    (1147, 8, NULL, 3, 3, 'giratina', 'Giratina', 'Encounter Giratina in Turnback Cave.', 3, TRUE),
    (1148, 8, NULL, 3, 3, 'cresselia', 'Cresselia', 'Encounter the roaming Cresselia.', 4, TRUE),
    -- Choices
    (1149, 8, NULL, 5, 5, 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE);