CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- What the player battles with in each Story battle: their own team, except
-- a lent Pokémon, their one ride legendary, or a frenzy that is mostly balms.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (5);
SELECT
    col_default_is ('tracking', 'mainline_milestone_opponent_refs', 'player_side', 'own-team'::text, 'a battle is fought with your own team unless a seed says otherwise');
SELECT
    throws_ok ($$ UPDATE
            tracking.mainline_milestone_opponent_refs
        SET
            player_side = 'borrowed'
            WHERE
                milestone_id = 260005
                AND opponent_id = 26002 $$, '23514', NULL, 'player_side takes only the four known values');
SELECT
    results_eq ($$
        SELECT
            player_side FROM tracking.mainline_milestone_opponent_refs
            WHERE
                milestone_id = 260005
                AND opponent_id = 26002 $$, $$
            VALUES ('lent-pokemon'::text) $$, 'Rogue Mega Absol is fought with AZ''s Lucario');
SELECT
    results_eq ($$
        SELECT
            COUNT(*)::integer FROM tracking.mainline_milestone_opponent_refs
            WHERE
                milestone_id = 230031
                AND player_side = 'one-own-pokemon'   $$, $$
            VALUES (2) $$, 'the Zero Lab Koraidon and Miraidon are fought by your ride legendary alone');
SELECT
    results_eq ($$
        SELECT
            COUNT(*)::integer FROM tracking.mainline_milestone_opponent_refs
            WHERE
                version_group_id = 22
                AND player_side = 'not-a-battle'   $$, $$
            VALUES (7) $$, 'the five nobles, Origin Dialga / Palkia and Arceus are frenzies, not battles with your team');
SELECT
    *
FROM
    finish ();
ROLLBACK;
