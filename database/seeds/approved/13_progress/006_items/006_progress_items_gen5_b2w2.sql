-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.items
-- Scope: version-group-specific (b2w2, VG 12)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Version Group: 12 (Black 2 / White 2)
-- New gym leaders: Cheren (1st), Roxie (2nd), Marlon (8th).
-- Iris is champion. Colress and Ghetsis are story bosses.
-- Box legendary: Black Kyurem (Black 2, game 19) / White Kyurem (White 2, game 20).
INSERT INTO
    progress.items (id, version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story
    (1200, 12, NULL, 1, 2, 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Juniper.', 1, FALSE),
    (1201, 12, NULL, 1, 1, 'basic-badge', 'Basic Badge', 'Defeat Cheren in Aspertia City Gym.', 2, FALSE),
    (1202, 12, NULL, 1, 1, 'toxic-badge', 'Toxic Badge', 'Defeat Roxie in Virbank City Gym.', 3, FALSE),
    (1203, 12, NULL, 1, 1, 'insect-badge', 'Insect Badge', 'Defeat Burgh in Castelia City Gym.', 4, FALSE),
    (1204, 12, NULL, 1, 1, 'bolt-badge', 'Bolt Badge', 'Defeat Elesa in Nimbasa City Gym.', 5, FALSE),
    (1205, 12, NULL, 1, 1, 'quake-badge', 'Quake Badge', 'Defeat Clay in Driftveil City Gym.', 6, FALSE),
    (1206, 12, NULL, 1, 1, 'jet-badge', 'Jet Badge', 'Defeat Skyla in Mistralton City Gym.', 7, FALSE),
    (1207, 12, NULL, 1, 1, 'legend-badge', 'Legend Badge', 'Defeat Drayden in Opelucid City Gym.', 8, FALSE),
    (1208, 12, NULL, 1, 1, 'wave-badge', 'Wave Badge', 'Defeat Marlon in Humilau City Gym.', 9, FALSE),
    (1209, 12, NULL, 1, 1, 'colress-battle', 'Colress', 'Defeat Colress on the Plasma Frigate.', 10, FALSE),
    (1210, 12, NULL, 1, 1, 'ghetsis-battle', 'Ghetsis', 'Defeat Ghetsis on the Plasma Frigate.', 11, FALSE),
    (1211, 12, NULL, 1, 1, 'elite-four-shauntal', 'Elite Four Shauntal', 'Defeat Shauntal of the Elite Four.', 12, FALSE),
    (1212, 12, NULL, 1, 1, 'elite-four-grimsley', 'Elite Four Grimsley', 'Defeat Grimsley of the Elite Four.', 13, FALSE),
    (1213, 12, NULL, 1, 1, 'elite-four-caitlin', 'Elite Four Caitlin', 'Defeat Caitlin of the Elite Four.', 14, FALSE),
    (1214, 12, NULL, 1, 1, 'elite-four-marshal', 'Elite Four Marshal', 'Defeat Marshal of the Elite Four.', 15, FALSE),
    (1215, 12, NULL, 1, 1, 'champion-iris', 'Champion Iris', 'Defeat Champion Iris.', 16, FALSE),
    -- Post Game
    (1216, 12, NULL, 2, 2, 'pokemon-world-tournament', 'Pokémon World Tournament', 'Gain access to the Pokémon World Tournament.', 1, TRUE),
    -- Pokémon (game-specific box legendaries)
    (1217, 12, 19, 3, 3, 'black-kyurem', 'Black Kyurem', 'Encounter Black Kyurem in the Giant Chasm.', 1, TRUE),
    (1218, 12, 20, 3, 3, 'white-kyurem', 'White Kyurem', 'Encounter White Kyurem in the Giant Chasm.', 1, TRUE),
    -- Pokémon (shared)
    (1219, 12, NULL, 3, 3, 'cobalion', 'Cobalion', 'Encounter Cobalion on Route 13.', 2, TRUE),
    (1220, 12, NULL, 3, 3, 'terrakion', 'Terrakion', 'Encounter Terrakion on Route 22.', 3, TRUE),
    (1221, 12, NULL, 3, 3, 'virizion', 'Virizion', 'Encounter Virizion on Route 11.', 4, TRUE),
    (1222, 12, NULL, 3, 3, 'heatran', 'Heatran', 'Encounter Heatran in Reversal Mountain.', 5, TRUE),
    (1223, 12, NULL, 3, 3, 'cresselia', 'Cresselia', 'Encounter the roaming Cresselia.', 6, TRUE),
    -- Choices
    (1224, 12, NULL, 5, 5, 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE);