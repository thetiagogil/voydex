-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: progress.items
-- Scope: version-group-specific (bw, VG 11)
-- ============================================================================
-- Important Notes
-- ============================================================================
-- Version Group: 11 (Black / White)
-- Unique story: N becomes champion, then you fight N + Ghetsis.
-- Alder is the intended champion but only available post-game.
-- Box legendary is game-specific: Reshiram (Black, game 17) / Zekrom (White, game 18).
-- Drayden is the 8th gym leader (Iris in White gives the same badge).
INSERT INTO
    progress.items (version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story
    (11, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-checkpoint'), 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Juniper.', 1, FALSE),
    (11, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'trio-badge', 'Trio Badge', 'Defeat the Striaton City Gym Leaders.', 2, FALSE),
    (11, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'basic-badge', 'Basic Badge', 'Defeat Lenora in Nacrene City Gym.', 3, FALSE),
    (11, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'insect-badge', 'Insect Badge', 'Defeat Burgh in Castelia City Gym.', 4, FALSE),
    (11, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'bolt-badge', 'Bolt Badge', 'Defeat Elesa in Nimbasa City Gym.', 5, FALSE),
    (11, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'quake-badge', 'Quake Badge', 'Defeat Clay in Driftveil City Gym.', 6, FALSE),
    (11, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'jet-badge', 'Jet Badge', 'Defeat Skyla in Mistralton City Gym.', 7, FALSE),
    (11, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'freeze-badge', 'Freeze Badge', 'Defeat Brycen in Icirrus City Gym.', 8, FALSE),
    (11, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'legend-badge', 'Legend Badge', 'Defeat Drayden in Opelucid City Gym.', 9, FALSE),
    (11, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'elite-four-shauntal', 'Elite Four Shauntal', 'Defeat Shauntal of the Elite Four.', 10, FALSE),
    (11, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'elite-four-grimsley', 'Elite Four Grimsley', 'Defeat Grimsley of the Elite Four.', 11, FALSE),
    (11, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'elite-four-caitlin', 'Elite Four Caitlin', 'Defeat Caitlin of the Elite Four.', 12, FALSE),
    (11, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'elite-four-marshal', 'Elite Four Marshal', 'Defeat Marshal of the Elite Four.', 13, FALSE),
    (11, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'n-battle', 'N', 'Defeat N in his castle.', 14, FALSE),
    (11, NULL, (SELECT id FROM progress.categories WHERE slug = 'main-story'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'ghetsis-battle', 'Ghetsis', 'Defeat Ghetsis in N''s Castle.', 15, FALSE),
    -- Post Game
    (11, NULL, (SELECT id FROM progress.categories WHERE slug = 'post-game'), (SELECT id FROM progress.item_types WHERE slug = 'story-battle'), 'champion-alder', 'Champion Alder', 'Defeat Champion Alder.', 1, FALSE),
    -- Pokémon (game-specific box legendaries)
    (11, 17, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'reshiram', 'Reshiram', 'Encounter Reshiram in N''s Castle.', 1, TRUE),
    (11, 18, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'zekrom', 'Zekrom', 'Encounter Zekrom in N''s Castle.', 1, TRUE),
    -- Pokémon (shared)
    (11, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'kyurem', 'Kyurem', 'Encounter Kyurem in the Giant Chasm.', 2, TRUE),
    (11, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'cobalion', 'Cobalion', 'Encounter Cobalion in Mistralton Cave.', 3, TRUE),
    (11, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'terrakion', 'Terrakion', 'Encounter Terrakion in Victory Road.', 4, TRUE),
    (11, NULL, (SELECT id FROM progress.categories WHERE slug = 'pokemon'), (SELECT id FROM progress.item_types WHERE slug = 'pokemon-milestone'), 'virizion', 'Virizion', 'Encounter Virizion in Pinwheel Forest.', 5, TRUE),
    -- Choices
    (11, NULL, (SELECT id FROM progress.categories WHERE slug = 'choices'), (SELECT id FROM progress.item_types WHERE slug = 'critical-choice'), 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE);