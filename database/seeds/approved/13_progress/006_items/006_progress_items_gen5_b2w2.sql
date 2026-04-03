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
            (12, NULL::INTEGER, 'main-story', 'story-checkpoint', 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Juniper.', 1, FALSE::BOOLEAN),
            (12, NULL, 'main-story', 'story-battle', 'basic-badge', 'Basic Badge', 'Defeat Cheren in Aspertia City Gym.', 2, FALSE),
            (12, NULL, 'main-story', 'story-battle', 'toxic-badge', 'Toxic Badge', 'Defeat Roxie in Virbank City Gym.', 3, FALSE),
            (12, NULL, 'main-story', 'story-battle', 'insect-badge', 'Insect Badge', 'Defeat Burgh in Castelia City Gym.', 4, FALSE),
            (12, NULL, 'main-story', 'story-battle', 'bolt-badge', 'Bolt Badge', 'Defeat Elesa in Nimbasa City Gym.', 5, FALSE),
            (12, NULL, 'main-story', 'story-battle', 'quake-badge', 'Quake Badge', 'Defeat Clay in Driftveil City Gym.', 6, FALSE),
            (12, NULL, 'main-story', 'story-battle', 'jet-badge', 'Jet Badge', 'Defeat Skyla in Mistralton City Gym.', 7, FALSE),
            (12, NULL, 'main-story', 'story-battle', 'legend-badge', 'Legend Badge', 'Defeat Drayden in Opelucid City Gym.', 8, FALSE),
            (12, NULL, 'main-story', 'story-battle', 'wave-badge', 'Wave Badge', 'Defeat Marlon in Humilau City Gym.', 9, FALSE),
            (12, NULL, 'main-story', 'story-battle', 'colress-battle', 'Colress', 'Defeat Colress on the Plasma Frigate.', 10, FALSE),
            (12, NULL, 'main-story', 'story-battle', 'ghetsis-battle', 'Ghetsis', 'Defeat Ghetsis on the Plasma Frigate.', 11, FALSE),
            (12, NULL, 'main-story', 'story-battle', 'elite-four-shauntal', 'Elite Four Shauntal', 'Defeat Shauntal of the Elite Four.', 12, FALSE),
            (12, NULL, 'main-story', 'story-battle', 'elite-four-grimsley', 'Elite Four Grimsley', 'Defeat Grimsley of the Elite Four.', 13, FALSE),
            (12, NULL, 'main-story', 'story-battle', 'elite-four-caitlin', 'Elite Four Caitlin', 'Defeat Caitlin of the Elite Four.', 14, FALSE),
            (12, NULL, 'main-story', 'story-battle', 'elite-four-marshal', 'Elite Four Marshal', 'Defeat Marshal of the Elite Four.', 15, FALSE),
            (12, NULL, 'main-story', 'story-battle', 'champion-iris', 'Champion Iris', 'Defeat Champion Iris.', 16, FALSE),
            (12, NULL, 'post-game', 'story-checkpoint', 'pokemon-world-tournament', 'Pokémon World Tournament', 'Gain access to the Pokémon World Tournament.', 1, TRUE),
            (12, 19, 'pokemon', 'pokemon-milestone', 'black-kyurem', 'Black Kyurem', 'Encounter Black Kyurem in the Giant Chasm.', 1, TRUE),
            (12, 20, 'pokemon', 'pokemon-milestone', 'white-kyurem', 'White Kyurem', 'Encounter White Kyurem in the Giant Chasm.', 1, TRUE),
            (12, NULL, 'pokemon', 'pokemon-milestone', 'cobalion', 'Cobalion', 'Encounter Cobalion on Route 13.', 2, TRUE),
            (12, NULL, 'pokemon', 'pokemon-milestone', 'terrakion', 'Terrakion', 'Encounter Terrakion on Route 22.', 3, TRUE),
            (12, NULL, 'pokemon', 'pokemon-milestone', 'virizion', 'Virizion', 'Encounter Virizion on Route 11.', 4, TRUE),
            (12, NULL, 'pokemon', 'pokemon-milestone', 'heatran', 'Heatran', 'Encounter Heatran in Reversal Mountain.', 5, TRUE),
            (12, NULL, 'pokemon', 'pokemon-milestone', 'cresselia', 'Cresselia', 'Encounter the roaming Cresselia.', 6, TRUE),
            (12, NULL, 'choices', 'critical-choice', 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE)
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
