-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.items
-- Scope: version-group-specific (platinum, VG 9)
-- Version Group: 9 (Platinum)
-- Gym order: Roark, Gardenia, Maylene, Wake, Fantina, Byron, Candice, Volkner.
-- Giratina is main-story (Distortion World). Dialga/Palkia are post-game.
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
            (9, NULL::INTEGER, 'main-story', 'story-checkpoint', 'receive-pokedex', 'Receive Pokédex', 'Receive the Pokédex from Professor Rowan.', 1, FALSE),
            (9, NULL, 'main-story', 'story-battle', 'coal-badge', 'Coal Badge', 'Defeat Roark in Oreburgh City Gym.', 2, FALSE),
            (9, NULL, 'main-story', 'story-battle', 'forest-badge', 'Forest Badge', 'Defeat Gardenia in Eterna City Gym.', 3, FALSE),
            (9, NULL, 'main-story', 'story-battle', 'cobble-badge', 'Cobble Badge', 'Defeat Maylene in Veilstone City Gym.', 4, FALSE),
            (9, NULL, 'main-story', 'story-battle', 'fen-badge', 'Fen Badge', 'Defeat Crasher Wake in Pastoria City Gym.', 5, FALSE),
            (9, NULL, 'main-story', 'story-battle', 'relic-badge', 'Relic Badge', 'Defeat Fantina in Hearthome City Gym.', 6, FALSE),
            (9, NULL, 'main-story', 'story-battle', 'mine-badge', 'Mine Badge', 'Defeat Byron in Canalave City Gym.', 7, FALSE),
            (9, NULL, 'main-story', 'story-battle', 'icicle-badge', 'Icicle Badge', 'Defeat Candice in Snowpoint City Gym.', 8, FALSE),
            (9, NULL, 'main-story', 'story-battle', 'beacon-badge', 'Beacon Badge', 'Defeat Volkner in Sunyshore City Gym.', 9, FALSE),
            (9, NULL, 'main-story', 'story-battle', 'elite-four-aaron', 'Elite Four Aaron', 'Defeat Aaron of the Elite Four.', 10, FALSE),
            (9, NULL, 'main-story', 'story-battle', 'elite-four-bertha', 'Elite Four Bertha', 'Defeat Bertha of the Elite Four.', 11, FALSE),
            (9, NULL, 'main-story', 'story-battle', 'elite-four-flint', 'Elite Four Flint', 'Defeat Flint of the Elite Four.', 12, FALSE),
            (9, NULL, 'main-story', 'story-battle', 'elite-four-lucian', 'Elite Four Lucian', 'Defeat Lucian of the Elite Four.', 13, FALSE),
            (9, NULL, 'main-story', 'story-battle', 'champion-cynthia', 'Champion Cynthia', 'Defeat Champion Cynthia.', 14, FALSE),
            (9, NULL, 'post-game', 'story-checkpoint', 'battle-frontier', 'Battle Frontier', 'Gain access to the Battle Frontier.', 1, TRUE),
            (9, NULL, 'pokemon', 'pokemon-milestone', 'giratina', 'Giratina', 'Encounter Giratina in the Distortion World.', 1, TRUE),
            (9, NULL, 'pokemon', 'pokemon-milestone', 'dialga', 'Dialga', 'Encounter Dialga at the Spear Pillar.', 2, TRUE),
            (9, NULL, 'pokemon', 'pokemon-milestone', 'palkia', 'Palkia', 'Encounter Palkia at the Spear Pillar.', 3, TRUE),
            (9, NULL, 'pokemon', 'pokemon-milestone', 'heatran', 'Heatran', 'Encounter Heatran at Stark Mountain.', 4, TRUE),
            (9, NULL, 'pokemon', 'pokemon-milestone', 'regigigas', 'Regigigas', 'Encounter Regigigas in the Snowpoint Temple.', 5, TRUE),
            (9, NULL, 'pokemon', 'pokemon-milestone', 'cresselia', 'Cresselia', 'Encounter the roaming Cresselia.', 6, TRUE),
            (9, NULL, 'choices', 'decision', 'starter-choice', 'Starter Choice', 'Choose your starter Pokémon.', 1, FALSE)
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
