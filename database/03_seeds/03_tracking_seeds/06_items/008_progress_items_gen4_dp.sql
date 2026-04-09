-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.items
-- Scope: version-group-specific (dp, VG 8)
-- Version Group: 8 (Diamond / Pearl)
-- Gym order: Roark, Gardenia, Fantina, Maylene, Wake, Byron, Candice, Volkner.
-- Box legendary game-specific: Dialga (Diamond, game 12), Palkia (Pearl, game 13).
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
            (8, NULL::INTEGER, 'main-story', 'checkpoint', 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Rowan.', 1, FALSE),
            (8, NULL, 'main-story', 'battle', 'coal-badge', 'Coal Badge', 'Defeat Roark in Oreburgh City Gym.', 2, FALSE),
            (8, NULL, 'main-story', 'battle', 'forest-badge', 'Forest Badge', 'Defeat Gardenia in Eterna City Gym.', 3, FALSE),
            (8, NULL, 'main-story', 'battle', 'relic-badge', 'Relic Badge', 'Defeat Fantina in Hearthome City Gym.', 4, FALSE),
            (8, NULL, 'main-story', 'battle', 'cobble-badge', 'Cobble Badge', 'Defeat Maylene in Veilstone City Gym.', 5, FALSE),
            (8, NULL, 'main-story', 'battle', 'fen-badge', 'Fen Badge', 'Defeat Crasher Wake in Pastoria City Gym.', 6, FALSE),
            (8, NULL, 'main-story', 'battle', 'mine-badge', 'Mine Badge', 'Defeat Byron in Canalave City Gym.', 7, FALSE),
            (8, NULL, 'main-story', 'battle', 'icicle-badge', 'Icicle Badge', 'Defeat Candice in Snowpoint City Gym.', 8, FALSE),
            (8, NULL, 'main-story', 'battle', 'beacon-badge', 'Beacon Badge', 'Defeat Volkner in Sunyshore City Gym.', 9, FALSE),
            (8, NULL, 'main-story', 'battle', 'elite-four-aaron', 'Elite Four Aaron', 'Defeat Aaron of the Elite Four.', 10, FALSE),
            (8, NULL, 'main-story', 'battle', 'elite-four-bertha', 'Elite Four Bertha', 'Defeat Bertha of the Elite Four.', 11, FALSE),
            (8, NULL, 'main-story', 'battle', 'elite-four-flint', 'Elite Four Flint', 'Defeat Flint of the Elite Four.', 12, FALSE),
            (8, NULL, 'main-story', 'battle', 'elite-four-lucian', 'Elite Four Lucian', 'Defeat Lucian of the Elite Four.', 13, FALSE),
            (8, NULL, 'main-story', 'battle', 'champion-cynthia', 'Champion Cynthia', 'Defeat Champion Cynthia.', 14, FALSE),
            (8, 12, 'side-content', 'pokemon-milestone', 'dialga', 'Dialga', 'Encounter Dialga at the Spear Pillar.', 1, TRUE),
            (8, 13, 'side-content', 'pokemon-milestone', 'palkia', 'Palkia', 'Encounter Palkia at the Spear Pillar.', 1, TRUE),
            (8, NULL, 'side-content', 'pokemon-milestone', 'heatran', 'Heatran', 'Encounter Heatran at Stark Mountain.', 2, TRUE),
            (8, NULL, 'side-content', 'pokemon-milestone', 'giratina', 'Giratina', 'Encounter Giratina in Turnback Cave.', 3, TRUE),
            (8, NULL, 'side-content', 'pokemon-milestone', 'cresselia', 'Cresselia', 'Encounter the roaming Cresselia.', 4, TRUE),
            (8, NULL, 'main-story', 'decision', 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE)
    )
INSERT INTO
    tracking.items (
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
    JOIN tracking.categories c ON c.slug = s.category_slug
    JOIN tracking.item_types t ON t.slug = s.item_type_slug;
