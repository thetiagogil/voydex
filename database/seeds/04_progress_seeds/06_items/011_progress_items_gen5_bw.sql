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
WITH
    seed_data (
        version_group_id,
        game_id,
        category_slug,
        item_type_slug,
        slug,
        name,
        description,
        sort_order,
        is_optional
    ) AS (
        VALUES
            (11, NULL::INTEGER, 'main-story', 'story-checkpoint', 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Juniper.', 1, FALSE),
            (11, NULL, 'main-story', 'story-battle', 'trio-badge', 'Trio Badge', 'Defeat the Striaton City Gym Leaders.', 2, FALSE),
            (11, NULL, 'main-story', 'story-battle', 'basic-badge', 'Basic Badge', 'Defeat Lenora in Nacrene City Gym.', 3, FALSE),
            (11, NULL, 'main-story', 'story-battle', 'insect-badge', 'Insect Badge', 'Defeat Burgh in Castelia City Gym.', 4, FALSE),
            (11, NULL, 'main-story', 'story-battle', 'bolt-badge', 'Bolt Badge', 'Defeat Elesa in Nimbasa City Gym.', 5, FALSE),
            (11, NULL, 'main-story', 'story-battle', 'quake-badge', 'Quake Badge', 'Defeat Clay in Driftveil City Gym.', 6, FALSE),
            (11, NULL, 'main-story', 'story-battle', 'jet-badge', 'Jet Badge', 'Defeat Skyla in Mistralton City Gym.', 7, FALSE),
            (11, NULL, 'main-story', 'story-battle', 'freeze-badge', 'Freeze Badge', 'Defeat Brycen in Icirrus City Gym.', 8, FALSE),
            (11, NULL, 'main-story', 'story-battle', 'legend-badge', 'Legend Badge', 'Defeat Drayden in Opelucid City Gym.', 9, FALSE),
            (11, NULL, 'main-story', 'story-battle', 'elite-four-shauntal', 'Elite Four Shauntal', 'Defeat Shauntal of the Elite Four.', 10, FALSE),
            (11, NULL, 'main-story', 'story-battle', 'elite-four-grimsley', 'Elite Four Grimsley', 'Defeat Grimsley of the Elite Four.', 11, FALSE),
            (11, NULL, 'main-story', 'story-battle', 'elite-four-caitlin', 'Elite Four Caitlin', 'Defeat Caitlin of the Elite Four.', 12, FALSE),
            (11, NULL, 'main-story', 'story-battle', 'elite-four-marshal', 'Elite Four Marshal', 'Defeat Marshal of the Elite Four.', 13, FALSE),
            (11, NULL, 'main-story', 'story-battle', 'n-battle', 'N', 'Defeat N in his castle.', 14, FALSE),
            (11, NULL, 'main-story', 'story-battle', 'ghetsis-battle', 'Ghetsis', 'Defeat Ghetsis in N''''s Castle.', 15, FALSE),
            (11, NULL, 'post-game', 'story-battle', 'champion-alder', 'Champion Alder', 'Defeat Champion Alder.', 1, FALSE),
            (11, 17, 'pokemon', 'pokemon-milestone', 'reshiram', 'Reshiram', 'Encounter Reshiram in N''''s Castle.', 1, TRUE),
            (11, 18, 'pokemon', 'pokemon-milestone', 'zekrom', 'Zekrom', 'Encounter Zekrom in N''''s Castle.', 1, TRUE),
            (11, NULL, 'pokemon', 'pokemon-milestone', 'kyurem', 'Kyurem', 'Encounter Kyurem in the Giant Chasm.', 2, TRUE),
            (11, NULL, 'pokemon', 'pokemon-milestone', 'cobalion', 'Cobalion', 'Encounter Cobalion in Mistralton Cave.', 3, TRUE),
            (11, NULL, 'pokemon', 'pokemon-milestone', 'terrakion', 'Terrakion', 'Encounter Terrakion in Victory Road.', 4, TRUE),
            (11, NULL, 'pokemon', 'pokemon-milestone', 'virizion', 'Virizion', 'Encounter Virizion in Pinwheel Forest.', 5, TRUE),
            (11, NULL, 'choices', 'critical-choice', 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE)
    )
INSERT INTO
    progress.items (
        version_group_id,
        game_id,
        category_id,
        item_type_id,
        slug,
        name,
        description,
        sort_order,
        is_optional
    )
SELECT
    s.version_group_id,
    s.game_id,
    c.id,
    t.id,
    s.slug,
    s.name,
    s.description,
    s.sort_order,
    s.is_optional
FROM
    seed_data s
    JOIN progress.categories c ON c.slug = s.category_slug
    JOIN progress.item_types t ON t.slug = s.item_type_slug;
