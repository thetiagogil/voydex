-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.items
-- Scope: version-group-specific (platinum, VG 9)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Version Group: 9 (Platinum)
-- Gym order: Roark, Gardenia, Maylene, Wake, Fantina, Byron, Candice, Volkner.
-- Giratina is main-story (Distortion World). Dialga/Palkia are post-game.
INSERT INTO
    progress.items (id, version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story
    (400, 9, NULL, 1, 2, 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Rowan.', 1, FALSE),
    (401, 9, NULL, 1, 1, 'coal-badge', 'Coal Badge', 'Defeat Roark in Oreburgh City Gym.', 2, FALSE),
    (402, 9, NULL, 1, 1, 'forest-badge', 'Forest Badge', 'Defeat Gardenia in Eterna City Gym.', 3, FALSE),
    (403, 9, NULL, 1, 1, 'cobble-badge', 'Cobble Badge', 'Defeat Maylene in Veilstone City Gym.', 4, FALSE),
    (404, 9, NULL, 1, 1, 'fen-badge', 'Fen Badge', 'Defeat Crasher Wake in Pastoria City Gym.', 5, FALSE),
    (405, 9, NULL, 1, 1, 'relic-badge', 'Relic Badge', 'Defeat Fantina in Hearthome City Gym.', 6, FALSE),
    (406, 9, NULL, 1, 1, 'mine-badge', 'Mine Badge', 'Defeat Byron in Canalave City Gym.', 7, FALSE),
    (407, 9, NULL, 1, 1, 'icicle-badge', 'Icicle Badge', 'Defeat Candice in Snowpoint City Gym.', 8, FALSE),
    (408, 9, NULL, 1, 1, 'beacon-badge', 'Beacon Badge', 'Defeat Volkner in Sunyshore City Gym.', 9, FALSE),
    (409, 9, NULL, 1, 1, 'elite-four-aaron', 'Elite Four Aaron', 'Defeat Aaron of the Elite Four.', 10, FALSE),
    (410, 9, NULL, 1, 1, 'elite-four-bertha', 'Elite Four Bertha', 'Defeat Bertha of the Elite Four.', 11, FALSE),
    (411, 9, NULL, 1, 1, 'elite-four-flint', 'Elite Four Flint', 'Defeat Flint of the Elite Four.', 12, FALSE),
    (412, 9, NULL, 1, 1, 'elite-four-lucian', 'Elite Four Lucian', 'Defeat Lucian of the Elite Four.', 13, FALSE),
    (413, 9, NULL, 1, 1, 'champion-cynthia', 'Champion Cynthia', 'Defeat Champion Cynthia.', 14, FALSE),
    -- Post Game
    (414, 9, NULL, 2, 2, 'battle-frontier', 'Battle Frontier', 'Gain access to the Battle Frontier.', 1, TRUE),
    -- Pokémon
    (415, 9, NULL, 3, 3, 'giratina', 'Giratina', 'Encounter Giratina in the Distortion World.', 1, TRUE),
    (416, 9, NULL, 3, 3, 'dialga', 'Dialga', 'Encounter Dialga at the Spear Pillar.', 2, TRUE),
    (417, 9, NULL, 3, 3, 'palkia', 'Palkia', 'Encounter Palkia at the Spear Pillar.', 3, TRUE),
    (418, 9, NULL, 3, 3, 'heatran', 'Heatran', 'Encounter Heatran at Stark Mountain.', 4, TRUE),
    (419, 9, NULL, 3, 3, 'regigigas', 'Regigigas', 'Encounter Regigigas in the Snowpoint Temple.', 5, TRUE),
    (420, 9, NULL, 3, 3, 'cresselia', 'Cresselia', 'Encounter the roaming Cresselia.', 6, TRUE),
    -- Choices
    (421, 9, NULL, 5, 5, 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE);