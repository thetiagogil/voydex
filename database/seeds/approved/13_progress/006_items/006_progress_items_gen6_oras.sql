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
    progress.items (version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story
    (14, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-checkpoint'), 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Birch.', 1, FALSE),
    (14, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'stone-badge', 'Stone Badge', 'Defeat Roxanne in Rustboro City Gym.', 2, FALSE),
    (14, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'knuckle-badge', 'Knuckle Badge', 'Defeat Brawly in Dewford Town Gym.', 3, FALSE),
    (14, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'dynamo-badge', 'Dynamo Badge', 'Defeat Wattson in Mauville City Gym.', 4, FALSE),
    (14, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'heat-badge', 'Heat Badge', 'Defeat Flannery in Lavaridge Town Gym.', 5, FALSE),
    (14, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'balance-badge', 'Balance Badge', 'Defeat Norman in Petalburg City Gym.', 6, FALSE),
    (14, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'feather-badge', 'Feather Badge', 'Defeat Winona in Fortree City Gym.', 7, FALSE),
    (14, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'mind-badge', 'Mind Badge', 'Defeat Tate & Liza in Mossdeep City Gym.', 8, FALSE),
    (14, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'rain-badge', 'Rain Badge', 'Defeat Wallace in Sootopolis City Gym.', 9, FALSE),
    (14, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'elite-four-sidney', 'Elite Four Sidney', 'Defeat Sidney of the Elite Four.', 10, FALSE),
    (14, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'elite-four-phoebe', 'Elite Four Phoebe', 'Defeat Phoebe of the Elite Four.', 11, FALSE),
    (14, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'elite-four-glacia', 'Elite Four Glacia', 'Defeat Glacia of the Elite Four.', 12, FALSE),
    (14, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'elite-four-drake', 'Elite Four Drake', 'Defeat Drake of the Elite Four.', 13, FALSE),
    (14, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'champion-steven', 'Champion Steven', 'Defeat Champion Steven.', 14, FALSE),
    -- Post Game
    (14, NULL, (SELECT id FROM progress.categories WHERE slug = 'post-game'), (SELECT id FROM progress.item_types WHERE slug = 'story-checkpoint'), 'delta-episode', 'Delta Episode', 'Complete the Delta Episode.', 1, FALSE),
    -- Pokémon (game-specific box legendaries)
    (14, 23, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'groudon', 'Groudon', 'Encounter Primal Groudon in the Cave of Origin.', 1, TRUE),
    (14, 24, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'kyogre', 'Kyogre', 'Encounter Primal Kyogre in the Cave of Origin.', 1, TRUE),
    -- Pokémon (shared)
    (14, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'rayquaza', 'Rayquaza', 'Encounter Rayquaza at the Sky Pillar.', 2, TRUE),
    (14, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'deoxys', 'Deoxys', 'Encounter Deoxys during the Delta Episode.', 3, TRUE),
    -- Choices
    (14, NULL, (SELECT id FROM progress.categories WHERE slug = 'choices'), (SELECT id FROM progress.item_types WHERE slug = 'critical-choice'), 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE);