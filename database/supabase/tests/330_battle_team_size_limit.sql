CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- How many of their own Pokémon the player may bring to a Story battle:
-- the whole team, unless the game limits it.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (7);
SELECT
    col_is_null ('tracking', 'mainline_milestone_opponent_refs', 'team_size_limit', 'a battle takes your whole team unless a seed limits it');
SELECT
    bag_eq ($$
        SELECT
            milestone_id, opponent_id, team_size_limit FROM tracking.mainline_milestone_opponent_refs
            WHERE
                team_size_limit IS NOT NULL $$, $$
            VALUES (70027, 7018, 3), (150006, 15018, 1), (160006, 16021, 1) $$, 'only Maxie & Tabitha in Emerald and the Battle Royal in Sun / Moon and Ultra Sun / Ultra Moon limit your team');
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                tracking.mainline_opponent_team_members
            WHERE
                milestone_id = 70027
                AND opponent_id = 7018
                AND ally_opponent_id = 7014),
            3,
            'Steven still fights beside the three you bring against Maxie & Tabitha');
SELECT
    throws_ok ($$ UPDATE
            tracking.mainline_milestone_opponent_refs
        SET
            team_size_limit = 0
            WHERE
                milestone_id = 70027
                AND opponent_id = 7018 $$, '23514', NULL, 'you bring at least one Pokémon');
SELECT
    throws_ok ($$ UPDATE
            tracking.mainline_milestone_opponent_refs
        SET
            team_size_limit = 6
            WHERE
                milestone_id = 70027
                AND opponent_id = 7018 $$, '23514', NULL, 'a limit of six is no limit, so it is left empty');
SELECT
    throws_ok ($$ UPDATE
            tracking.mainline_milestone_opponent_refs
        SET
            team_size_limit = 1
            WHERE
                milestone_id = 230031
                AND opponent_id = 23030 $$, '23514', NULL, 'only a battle fought with your own team can limit it');
SELECT
    matches (pg_get_viewdef('views.mainline_play_milestone_detail'::regclass), '''team_size_limit'', mainline_milestone_opponent_refs\.team_size_limit', 'a Play''s Story battles carry their team size limit');
SELECT
    *
FROM
    finish ();
ROLLBACK;
