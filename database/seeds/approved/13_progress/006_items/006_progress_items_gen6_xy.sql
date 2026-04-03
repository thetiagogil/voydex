-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.items
-- Scope: version-group-specific (xy, VG 13)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Version Group: 13 (X / Y)
-- Box legendary is game-specific: Xerneas (X, game 21) / Yveltal (Y, game 22).
-- Player receives a Kanto starter from Professor Sycamore.
-- Fossil choice between Jaw Fossil (Tyrunt) and Sail Fossil (Amaura).
INSERT INTO
    progress.items (version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story
    (13, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-checkpoint'), 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Sycamore.', 1, FALSE),
    (13, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'bug-badge', 'Bug Badge', 'Defeat Viola in Santalune City Gym.', 2, FALSE),
    (13, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'cliff-badge', 'Cliff Badge', 'Defeat Grant in Cyllage City Gym.', 3, FALSE),
    (13, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'rumble-badge', 'Rumble Badge', 'Defeat Korrina in Shalour City Gym.', 4, FALSE),
    (13, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'plant-badge', 'Plant Badge', 'Defeat Ramos in Coumarine City Gym.', 5, FALSE),
    (13, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'voltage-badge', 'Voltage Badge', 'Defeat Clemont in Lumiose City Gym.', 6, FALSE),
    (13, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'fairy-badge', 'Fairy Badge', 'Defeat Valerie in Laverre City Gym.', 7, FALSE),
    (13, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'psychic-badge', 'Psychic Badge', 'Defeat Olympia in Anistar City Gym.', 8, FALSE),
    (13, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'iceberg-badge', 'Iceberg Badge', 'Defeat Wulfric in Snowbelle City Gym.', 9, FALSE),
    (13, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'elite-four-malva', 'Elite Four Malva', 'Defeat Malva of the Elite Four.', 10, FALSE),
    (13, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'elite-four-siebold', 'Elite Four Siebold', 'Defeat Siebold of the Elite Four.', 11, FALSE),
    (13, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'elite-four-wikstrom', 'Elite Four Wikstrom', 'Defeat Wikstrom of the Elite Four.', 12, FALSE),
    (13, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'elite-four-drasna', 'Elite Four Drasna', 'Defeat Drasna of the Elite Four.', 13, FALSE),
    (13, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'champion-diantha', 'Champion Diantha', 'Defeat Champion Diantha.', 14, FALSE),
    -- Post Game
    (13, NULL, (SELECT id FROM progress.categories WHERE slug = 'post-game'), (SELECT id FROM progress.item_types WHERE slug = 'story-checkpoint'), 'looker-bureau', 'Looker Bureau', 'Complete the Looker Bureau quest in Lumiose City.', 1, TRUE),
    -- Pokémon (game-specific box legendaries)
    (13, 21, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'xerneas', 'Xerneas', 'Encounter Xerneas in the Team Flare Secret HQ.', 1, TRUE),
    (13, 22, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'yveltal', 'Yveltal', 'Encounter Yveltal in the Team Flare Secret HQ.', 1, TRUE),
    -- Pokémon (shared)
    (13, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'zygarde', 'Zygarde', 'Encounter Zygarde in Terminus Cave.', 2, TRUE),
    (13, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'mewtwo', 'Mewtwo', 'Encounter Mewtwo in the Pokémon Village.', 3, TRUE),
    -- Choices
    (13, NULL, (SELECT id FROM progress.categories WHERE slug = 'choices'), (SELECT id FROM progress.item_types WHERE slug = 'critical-choice'), 'starter-choice', 'Starter Choice', 'Choose your Kalos starter Pokémon.', 1, FALSE),
    (13, NULL, (SELECT id FROM progress.categories WHERE slug = 'choices'), (SELECT id FROM progress.item_types WHERE slug = 'critical-choice'), 'kanto-starter-choice', 'Kanto Starter Choice', 'Choose a Kanto starter from Professor Sycamore.', 2, FALSE),
    (13, NULL, (SELECT id FROM progress.categories WHERE slug = 'choices'), (SELECT id FROM progress.item_types WHERE slug = 'critical-choice'), 'fossil-choice', 'Fossil Choice', 'Choose between Jaw Fossil and Sail Fossil.', 3, FALSE);