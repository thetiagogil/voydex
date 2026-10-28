CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Allies in Story battles: the Pokémon of someone fighting beside the player
-- (a Multi Battle partner) are stored as team rows of that battle with
-- ally_opponent_id set, apart from the opponent's own team.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (14);
SELECT
    col_is_null ('tracking', 'mainline_opponent_team_members', 'ally_opponent_id', 'a team row is the opponent''s own unless it names an ally');
SELECT
    IS ((
            SELECT
                COUNT(DISTINCT (milestone_id, opponent_id))::integer
            FROM
                tracking.mainline_opponent_team_members
            WHERE
                ally_opponent_id IS NOT NULL), 31, '31 Story battles have an ally beside the player');
SELECT
    IS ((
            SELECT
                COUNT(DISTINCT (milestone_id, opponent_id, ally_opponent_id))::integer
            FROM
                tracking.mainline_opponent_team_members
            WHERE
                ally_opponent_id IS NOT NULL), 36, 'the Hyperspace rogue Megas and Stellar Terapagos each have two allies');
SELECT
    IS ((
            SELECT
                string_agg(species.name || ' ' || members.level, ', ' ORDER BY members.slot)
            FROM
                tracking.mainline_opponent_team_members AS members
                JOIN reference.pokemon_species AS species ON species.id = members.species_id
            WHERE
                members.milestone_id = 70010
                AND members.opponent_id = 7018
                AND members.ally_opponent_id = 7014),
            'Metang 42, Skarmory 43, Aggron 44',
            'Steven brings Metang, Skarmory and Aggron against Maxie and Tabitha in Emerald');
SELECT
    IS ((
            SELECT
                string_agg(moves.name, ', ' ORDER BY member_moves.slot)
            FROM
                tracking.mainline_opponent_team_members AS members
                JOIN tracking.mainline_opponent_team_member_moves AS member_moves ON member_moves.team_member_id = members.id
                JOIN reference.moves AS moves ON moves.id = member_moves.move_id
            WHERE
                members.milestone_id = 70010
                AND members.opponent_id = 7018
                AND members.ally_opponent_id = 7014
                AND members.slot = 1),
            'Light Screen, Psychic, Reflect, Metal Claw',
            'Steven''s Metang has the game''s own moves');
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                tracking.mainline_opponent_team_members AS members
            WHERE
                members.ally_opponent_id IS NOT NULL
                AND NOT EXISTS (
                    SELECT
                        1
                    FROM
                        tracking.mainline_opponent_team_member_moves AS member_moves
                    WHERE
                        member_moves.team_member_id = members.id)),
                0,
                'every ally Pokemon has its moves');
SELECT
    IS ((
            SELECT
                string_agg(moves.name, ', ' ORDER BY member_moves.slot)
            FROM
                tracking.mainline_opponent_team_members AS members
                JOIN tracking.mainline_opponent_team_member_moves AS member_moves ON member_moves.team_member_id = members.id
                JOIN reference.moves AS moves ON moves.id = member_moves.move_id
            WHERE
                members.milestone_id = 240004
                AND members.opponent_id = 24007
                AND members.ally_opponent_id = 24005
                AND members.variant_slug = 'before-the-way-home'
                AND members.slot = 1),
            'Thunder Shock, Power Trip, Bite, Leer',
            'Carmine''s Morpeko has its own moves, not Okidogi''s');
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM (
                SELECT
                    team_member_id
                FROM
                    tracking.mainline_opponent_team_member_moves
                GROUP BY
                    team_member_id
                HAVING
                    COUNT(*) > 4) AS crowded),
            0,
            'no team row, an opponent''s or an ally''s, has more than four moves');
SELECT
    bag_eq ($$
        SELECT
            decision_option_slug::text FROM tracking.mainline_opponent_team_members
            WHERE
                milestone_id = 130005
                AND opponent_id = 13017
                AND ally_opponent_id = 13018
                AND slot = 1 $$, $$
            VALUES ('chespin'), ('fennekin'), ('froakie') $$, 'Calem / Serena''s team on Route 7 follows each starter');
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                tracking.mainline_milestone_opponent_refs AS refs
                JOIN tracking.mainline_opponents AS opponents ON opponents.id = refs.opponent_id
            WHERE
                opponents.opponent_role = 'ally'), 0, 'an opponent that only fights beside the player is never a battle of its own');
SELECT
    throws_ok ($$ UPDATE
            tracking.mainline_opponent_team_members
        SET
            ally_opponent_id = opponent_id
            WHERE
                milestone_id = 70010
                AND ally_opponent_id = 7014
                AND slot = 1 $$, '23514', NULL, 'an opponent cannot fight beside the player against itself');
SELECT
    throws_ok ($$ UPDATE
            tracking.mainline_opponent_team_members
        SET
            ally_opponent_id = 26032
            WHERE
                milestone_id = 70010
                AND ally_opponent_id = 7014
                AND slot = 1 $$, '23503', NULL, 'an ally belongs to the battle''s version group');
SELECT
    throws_ok ($$ INSERT INTO tracking.mainline_opponent_team_members (milestone_id, opponent_id, ally_opponent_id, version_group_id, slot, species_id, form_id, level)
            VALUES (183106, 18004, 18005, 18, 1, 25, 2500, 50) $$, '23514', NULL, 'a Shield-only ally cannot fight beside the player in a Sword battle');
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                tracking.mainline_opponent_team_members
            WHERE
                milestone_id = 240004
                AND opponent_id = 24007
                AND variant_slug = 'before-the-way-home'
                AND slot = 1),
            2,
            'the opponent''s slot 1 and the ally''s slot 1 are separate rows');
SELECT
    *
FROM
    finish ();
ROLLBACK;
