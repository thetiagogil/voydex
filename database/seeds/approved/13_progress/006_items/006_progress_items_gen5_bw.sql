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
    progress.items (id, version_group_id, game_id, category_id, item_type_id, slug, name, description, sort_order, is_optional)
VALUES
    -- Main Story
    (500, 11, NULL, 1, 2, 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Juniper.', 1, FALSE),
    (501, 11, NULL, 1, 1, 'trio-badge', 'Trio Badge', 'Defeat the Striaton City Gym Leaders.', 2, FALSE),
    (502, 11, NULL, 1, 1, 'basic-badge', 'Basic Badge', 'Defeat Lenora in Nacrene City Gym.', 3, FALSE),
    (503, 11, NULL, 1, 1, 'insect-badge', 'Insect Badge', 'Defeat Burgh in Castelia City Gym.', 4, FALSE),
    (504, 11, NULL, 1, 1, 'bolt-badge', 'Bolt Badge', 'Defeat Elesa in Nimbasa City Gym.', 5, FALSE),
    (505, 11, NULL, 1, 1, 'quake-badge', 'Quake Badge', 'Defeat Clay in Driftveil City Gym.', 6, FALSE),
    (506, 11, NULL, 1, 1, 'jet-badge', 'Jet Badge', 'Defeat Skyla in Mistralton City Gym.', 7, FALSE),
    (507, 11, NULL, 1, 1, 'freeze-badge', 'Freeze Badge', 'Defeat Brycen in Icirrus City Gym.', 8, FALSE),
    (508, 11, NULL, 1, 1, 'legend-badge', 'Legend Badge', 'Defeat Drayden in Opelucid City Gym.', 9, FALSE),
    (509, 11, NULL, 1, 1, 'elite-four-shauntal', 'Elite Four Shauntal', 'Defeat Shauntal of the Elite Four.', 10, FALSE),
    (510, 11, NULL, 1, 1, 'elite-four-grimsley', 'Elite Four Grimsley', 'Defeat Grimsley of the Elite Four.', 11, FALSE),
    (511, 11, NULL, 1, 1, 'elite-four-caitlin', 'Elite Four Caitlin', 'Defeat Caitlin of the Elite Four.', 12, FALSE),
    (512, 11, NULL, 1, 1, 'elite-four-marshal', 'Elite Four Marshal', 'Defeat Marshal of the Elite Four.', 13, FALSE),
    (513, 11, NULL, 1, 1, 'n-battle', 'N', 'Defeat N in his castle.', 14, FALSE),
    (514, 11, NULL, 1, 1, 'ghetsis-battle', 'Ghetsis', 'Defeat Ghetsis in N''s Castle.', 15, FALSE),
    -- Post Game
    (515, 11, NULL, 2, 1, 'champion-alder', 'Champion Alder', 'Defeat Champion Alder.', 1, FALSE),
    -- Pokémon (game-specific box legendaries)
    (516, 11, 17, 3, 3, 'reshiram', 'Reshiram', 'Encounter Reshiram in N''s Castle.', 1, TRUE),
    (517, 11, 18, 3, 3, 'zekrom', 'Zekrom', 'Encounter Zekrom in N''s Castle.', 1, TRUE),
    -- Pokémon (shared)
    (518, 11, NULL, 3, 3, 'kyurem', 'Kyurem', 'Encounter Kyurem in the Giant Chasm.', 2, TRUE),
    (519, 11, NULL, 3, 3, 'cobalion', 'Cobalion', 'Encounter Cobalion in Mistralton Cave.', 3, TRUE),
    (520, 11, NULL, 3, 3, 'terrakion', 'Terrakion', 'Encounter Terrakion in Victory Road.', 4, TRUE),
    (521, 11, NULL, 3, 3, 'virizion', 'Virizion', 'Encounter Virizion in Pinwheel Forest.', 5, TRUE),
    -- Choices
    (522, 11, NULL, 5, 5, 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE);