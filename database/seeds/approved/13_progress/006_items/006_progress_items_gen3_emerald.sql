-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.items
-- Scope: version-group-specific (emerald, VG 6)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Version Group: 6 (Emerald)
-- Juan is 8th gym (replaces Wallace from RS). Wallace is champion.
-- Latias/Latios: one roams (player chooses which via lati-choice).
INSERT INTO
    progress.items (version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story
    (6, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-checkpoint'), 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Birch.', 1, FALSE),
    (6, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'stone-badge', 'Stone Badge', 'Defeat Roxanne in Rustboro City Gym.', 2, FALSE),
    (6, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'knuckle-badge', 'Knuckle Badge', 'Defeat Brawly in Dewford Town Gym.', 3, FALSE),
    (6, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'dynamo-badge', 'Dynamo Badge', 'Defeat Wattson in Mauville City Gym.', 4, FALSE),
    (6, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'heat-badge', 'Heat Badge', 'Defeat Flannery in Lavaridge Town Gym.', 5, FALSE),
    (6, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'balance-badge', 'Balance Badge', 'Defeat Norman in Petalburg City Gym.', 6, FALSE),
    (6, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'feather-badge', 'Feather Badge', 'Defeat Winona in Fortree City Gym.', 7, FALSE),
    (6, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'mind-badge', 'Mind Badge', 'Defeat Tate & Liza in Mossdeep City Gym.', 8, FALSE),
    (6, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'rain-badge', 'Rain Badge', 'Defeat Juan in Sootopolis City Gym.', 9, FALSE),
    (6, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'elite-four-sidney', 'Elite Four Sidney', 'Defeat Sidney of the Elite Four.', 10, FALSE),
    (6, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'elite-four-phoebe', 'Elite Four Phoebe', 'Defeat Phoebe of the Elite Four.', 11, FALSE),
    (6, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'elite-four-glacia', 'Elite Four Glacia', 'Defeat Glacia of the Elite Four.', 12, FALSE),
    (6, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'elite-four-drake', 'Elite Four Drake', 'Defeat Drake of the Elite Four.', 13, FALSE),
    (6, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'champion-wallace', 'Champion Wallace', 'Defeat Champion Wallace.', 14, FALSE),
    -- Post Game
    (6, NULL, (SELECT id FROM progress.categories WHERE slug = 'post-game'), (SELECT id FROM progress.item_types WHERE slug = 'story-checkpoint'), 'battle-frontier', 'Battle Frontier', 'Gain access to the Battle Frontier.', 1, TRUE),
    -- Pokémon
    (6, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'rayquaza', 'Rayquaza', 'Encounter Rayquaza at the Sky Pillar.', 1, TRUE),
    (6, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'groudon', 'Groudon', 'Encounter Groudon in the Terra Cave.', 2, TRUE),
    (6, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'kyogre', 'Kyogre', 'Encounter Kyogre in the Marine Cave.', 3, TRUE),
    (6, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'regirock', 'Regirock', 'Encounter Regirock in the Desert Ruins.', 4, TRUE),
    (6, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'regice', 'Regice', 'Encounter Regice in the Island Cave.', 5, TRUE),
    (6, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'registeel', 'Registeel', 'Encounter Registeel in the Ancient Tomb.', 6, TRUE),
    -- Choices
    (6, NULL, (SELECT id FROM progress.categories WHERE slug = 'choices'), (SELECT id FROM progress.item_types WHERE slug = 'critical-choice'), 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE),
    (6, NULL, (SELECT id FROM progress.categories WHERE slug = 'choices'), (SELECT id FROM progress.item_types WHERE slug = 'critical-choice'), 'lati-choice', 'Lati Choice', 'Choose which Lati roams Hoenn.', 2, FALSE);