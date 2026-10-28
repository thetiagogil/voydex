CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- What opponents' Pokémon hold in each game, beyond the items a battle
-- mechanic needs: berries, herbs and other held items, from each game's own
-- data. Gen 1, Let's Go and Legends: Arceus have no held items.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (8);
SELECT
    is_empty ($$
        SELECT
            id FROM tracking.mainline_opponent_team_members
            WHERE
                held_item_id IS NOT NULL
                AND version_group_id IN (1, 2, 17, 22) $$, 'Red / Blue, Yellow, Let''s Go and Legends: Arceus opponents hold nothing');
SELECT
    is_empty ($$
        SELECT
            mainline_opponent_team_members.id FROM tracking.mainline_opponent_team_members
            JOIN reference.version_groups ON version_groups.id = mainline_opponent_team_members.version_group_id
            JOIN reference.items ON items.id = mainline_opponent_team_members.held_item_id
            WHERE
                items.introduced_generation_id > version_groups.generation_id $$, 'no opponent holds an item from a later generation');
-- How many opponent Pokémon hold an item, per game.
SELECT
    results_eq ($$
        SELECT
            version_group_id, COUNT(*)::integer FROM tracking.mainline_opponent_team_members
            WHERE
                held_item_id IS NOT NULL
                AND version_group_id <= 10 GROUP BY version_group_id ORDER BY version_group_id $$, $$
            VALUES (3, 2), (4, 1), (5, 5), (6, 7), (7, 15), (8, 14), (9, 17), (10, 26) $$, 'Gen 2-4 opponents hold the items their games give them');
-- Emerald's gym leaders gained items Ruby / Sapphire's never had.
SELECT
    results_eq ($$
        SELECT
            mainline_opponent_team_members.version_group_id, items.slug FROM tracking.mainline_opponent_team_members
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            LEFT JOIN reference.items ON items.id = mainline_opponent_team_members.held_item_id
            WHERE
                mainline_opponents.slug = 'flannery'
                AND mainline_opponent_team_members.species_id = 324
                AND mainline_opponent_team_members.version_group_id IN (5, 7)
            ORDER BY mainline_opponent_team_members.version_group_id $$, $$
            VALUES (5, NULL::text), (7, 'white-herb'::text) $$, 'Flannery''s Torkoal holds nothing in Ruby / Sapphire and a White Herb in Emerald');
SELECT
    results_eq ($$
        SELECT
            items.slug FROM tracking.mainline_opponent_team_members
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            JOIN reference.items ON items.id = mainline_opponent_team_members.held_item_id
            WHERE
                mainline_opponent_team_members.version_group_id = 7
                AND mainline_opponents.slug = 'roxanne'   $$, $$
            VALUES ('oran-berry'::text) $$, 'Roxanne''s Nosepass holds an Oran Berry in Emerald');
SELECT
    results_eq ($$
        SELECT
            items.slug FROM tracking.mainline_opponent_team_members
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            JOIN reference.items ON items.id = mainline_opponent_team_members.held_item_id
            WHERE
                mainline_opponent_team_members.version_group_id = 9
                AND mainline_opponents.slug = 'cynthia'   $$, $$
            VALUES ('sitrus-berry'::text) $$, 'Cynthia''s Garchomp holds a Sitrus Berry in Platinum');
-- Wild Ho-Oh carries Sacred Ash in Gen 2 and HeartGold / SoulSilver, not in
-- FireRed / LeafGreen.
SELECT
    results_eq ($$
        SELECT
            mainline_opponent_team_members.version_group_id, mainline_opponent_team_members.level, items.slug FROM tracking.mainline_opponent_team_members
        LEFT JOIN reference.items ON items.id = mainline_opponent_team_members.held_item_id
        WHERE
            mainline_opponent_team_members.species_id = 250
            AND mainline_opponent_team_members.version_group_id <= 10 ORDER BY mainline_opponent_team_members.version_group_id, mainline_opponent_team_members.level $$, $$
        VALUES (3, 40, 'sacred-ash'::text), (3, 70, 'sacred-ash'::text), (4, 60, 'sacred-ash'::text), (6, 70, NULL::text), (10, 45, 'sacred-ash'::text), (10, 70, 'sacred-ash'::text) $$, 'wild Ho-Oh holds Sacred Ash where its game data gives it one');
-- Gen 2 trainers hold nothing in Story battles.
SELECT
    is_empty ($$
        SELECT
            mainline_opponent_team_members.id FROM tracking.mainline_opponent_team_members
            WHERE
                version_group_id IN (3, 4)
                AND held_item_id IS NOT NULL
                AND species_id <> 250 $$, 'Gold / Silver and Crystal opponents hold nothing but Ho-Oh''s Sacred Ash');
SELECT
    *
FROM
    finish ();
ROLLBACK;
