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
    progress.items (version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story
    (12, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-checkpoint'), 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Juniper.', 1, FALSE),
    (12, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'basic-badge', 'Basic Badge', 'Defeat Cheren in Aspertia City Gym.', 2, FALSE),
    (12, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'toxic-badge', 'Toxic Badge', 'Defeat Roxie in Virbank City Gym.', 3, FALSE),
    (12, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'insect-badge', 'Insect Badge', 'Defeat Burgh in Castelia City Gym.', 4, FALSE),
    (12, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'bolt-badge', 'Bolt Badge', 'Defeat Elesa in Nimbasa City Gym.', 5, FALSE),
    (12, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'quake-badge', 'Quake Badge', 'Defeat Clay in Driftveil City Gym.', 6, FALSE),
    (12, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'jet-badge', 'Jet Badge', 'Defeat Skyla in Mistralton City Gym.', 7, FALSE),
    (12, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'legend-badge', 'Legend Badge', 'Defeat Drayden in Opelucid City Gym.', 8, FALSE),
    (12, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'wave-badge', 'Wave Badge', 'Defeat Marlon in Humilau City Gym.', 9, FALSE),
    (12, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'colress-battle', 'Colress', 'Defeat Colress on the Plasma Frigate.', 10, FALSE),
    (12, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'ghetsis-battle', 'Ghetsis', 'Defeat Ghetsis on the Plasma Frigate.', 11, FALSE),
    (12, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'elite-four-shauntal', 'Elite Four Shauntal', 'Defeat Shauntal of the Elite Four.', 12, FALSE),
    (12, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'elite-four-grimsley', 'Elite Four Grimsley', 'Defeat Grimsley of the Elite Four.', 13, FALSE),
    (12, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'elite-four-caitlin', 'Elite Four Caitlin', 'Defeat Caitlin of the Elite Four.', 14, FALSE),
    (12, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'elite-four-marshal', 'Elite Four Marshal', 'Defeat Marshal of the Elite Four.', 15, FALSE),
    (12, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'champion-iris', 'Champion Iris', 'Defeat Champion Iris.', 16, FALSE),
    -- Post Game
    (12, NULL, (SELECT id FROM progress.categories WHERE slug = 'post-game'), (SELECT id FROM progress.item_types WHERE slug = 'story-checkpoint'), 'pokemon-world-tournament', 'Pokémon World Tournament', 'Gain access to the Pokémon World Tournament.', 1, TRUE),
    -- Pokémon (game-specific box legendaries)
    (12, 19, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'black-kyurem', 'Black Kyurem', 'Encounter Black Kyurem in the Giant Chasm.', 1, TRUE),
    (12, 20, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'white-kyurem', 'White Kyurem', 'Encounter White Kyurem in the Giant Chasm.', 1, TRUE),
    -- Pokémon (shared)
    (12, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'cobalion', 'Cobalion', 'Encounter Cobalion on Route 13.', 2, TRUE),
    (12, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'terrakion', 'Terrakion', 'Encounter Terrakion on Route 22.', 3, TRUE),
    (12, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'virizion', 'Virizion', 'Encounter Virizion on Route 11.', 4, TRUE),
    (12, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'heatran', 'Heatran', 'Encounter Heatran in Reversal Mountain.', 5, TRUE),
    (12, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'cresselia', 'Cresselia', 'Encounter the roaming Cresselia.', 6, TRUE),
    -- Choices
    (12, NULL, (SELECT id FROM progress.categories WHERE slug = 'choices'), (SELECT id FROM progress.item_types WHERE slug = 'critical-choice'), 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE);