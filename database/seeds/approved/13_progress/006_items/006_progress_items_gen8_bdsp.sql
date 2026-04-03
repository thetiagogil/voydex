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
    progress.items (version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story
    (21, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-checkpoint'), 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Rowan.', 1, FALSE),
    (21, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'coal-badge', 'Coal Badge', 'Defeat Roark in Oreburgh City Gym.', 2, FALSE),
    (21, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'forest-badge', 'Forest Badge', 'Defeat Gardenia in Eterna City Gym.', 3, FALSE),
    (21, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'relic-badge', 'Relic Badge', 'Defeat Fantina in Hearthome City Gym.', 4, FALSE),
    (21, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'cobble-badge', 'Cobble Badge', 'Defeat Maylene in Veilstone City Gym.', 5, FALSE),
    (21, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'fen-badge', 'Fen Badge', 'Defeat Crasher Wake in Pastoria City Gym.', 6, FALSE),
    (21, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'mine-badge', 'Mine Badge', 'Defeat Byron in Canalave City Gym.', 7, FALSE),
    (21, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'icicle-badge', 'Icicle Badge', 'Defeat Candice in Snowpoint City Gym.', 8, FALSE),
    (21, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'beacon-badge', 'Beacon Badge', 'Defeat Volkner in Sunyshore City Gym.', 9, FALSE),
    (21, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'elite-four-aaron', 'Elite Four Aaron', 'Defeat Aaron of the Elite Four.', 10, FALSE),
    (21, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'elite-four-bertha', 'Elite Four Bertha', 'Defeat Bertha of the Elite Four.', 11, FALSE),
    (21, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'elite-four-flint', 'Elite Four Flint', 'Defeat Flint of the Elite Four.', 12, FALSE),
    (21, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'elite-four-lucian', 'Elite Four Lucian', 'Defeat Lucian of the Elite Four.', 13, FALSE),
    (21, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'champion-cynthia', 'Champion Cynthia', 'Defeat Champion Cynthia.', 14, FALSE),
    -- Post Game
    (21, NULL, (SELECT id FROM progress.categories WHERE slug = 'post-game'), (SELECT id FROM progress.item_types WHERE slug = 'story-checkpoint'), 'ramanas-park', 'Ramanas Park', 'Gain access to Ramanas Park.', 1, TRUE),
    -- Pokémon (game-specific box legendaries)
    (21, 33, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'dialga', 'Dialga', 'Encounter Dialga at the Spear Pillar.', 1, TRUE),
    (21, 34, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'palkia', 'Palkia', 'Encounter Palkia at the Spear Pillar.', 1, TRUE),
    -- Pokémon (shared)
    (21, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'heatran', 'Heatran', 'Encounter Heatran at Stark Mountain.', 2, TRUE),
    (21, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'giratina', 'Giratina', 'Encounter Giratina in Turnback Cave.', 3, TRUE),
    (21, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'regigigas', 'Regigigas', 'Encounter Regigigas in the Snowpoint Temple.', 4, TRUE),
    (21, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'cresselia', 'Cresselia', 'Encounter the roaming Cresselia.', 5, TRUE),
    -- Choices
    (21, NULL, (SELECT id FROM progress.categories WHERE slug = 'choices'), (SELECT id FROM progress.item_types WHERE slug = 'critical-choice'), 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE);