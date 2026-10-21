CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Opponent teams: read-only for signed-in users, every row belongs to one
-- Story battle of its opponent, and stays in its version group and game.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (12);
SET LOCAL ROLE anon;
SELECT
    throws_ok ($$
        SELECT
            id FROM tracking.mainline_opponent_team_members LIMIT 1 $$, '42501', 'permission denied for schema tracking', 'anonymous users cannot read opponent teams');
RESET ROLE;
SET LOCAL ROLE authenticated;
SELECT
    lives_ok ($$
        SELECT
            id FROM tracking.mainline_opponent_team_members LIMIT 1 $$, 'authenticated users can read opponent teams');
SELECT
    throws_ok ($$ INSERT INTO tracking.mainline_opponent_team_members (milestone_id, opponent_id, version_group_id, slot, species_id, form_id, level)
            VALUES (10003, 1001, 1, 6, 74, 7400, 12) $$, '42501', 'permission denied for table mainline_opponent_team_members', 'authenticated users cannot write opponent teams');
RESET ROLE;
-- Brock (Red / Blue) with Geodude in a free slot.
SELECT
    lives_ok ($$ INSERT INTO tracking.mainline_opponent_team_members (milestone_id, opponent_id, version_group_id, variant_slug, variant_label, slot, species_id, form_id, level)
            VALUES (10003, 1001, 1, 'pgtap', 'pgTAP', 1, 74, 7400, 12) $$, 'a team row in its opponent''s version group is accepted');
SELECT
    throws_ok ($$ INSERT INTO tracking.mainline_opponent_team_members (milestone_id, opponent_id, version_group_id, variant_slug, variant_label, slot, species_id, form_id, level)
            VALUES (10003, 1001, 1, 'pgtap', 'pgTAP', 7, 74, 7400, 12) $$, '23514', NULL, 'a team has at most six slots');
SELECT
    throws_ok ($$ INSERT INTO tracking.mainline_opponent_team_members (milestone_id, opponent_id, version_group_id, variant_slug, variant_label, slot, species_id, form_id, level)
            VALUES (10003, 1001, 1, 'pgtap', 'pgTAP', 2, 74, 7400, 101) $$, '23514', NULL, 'a level is at most 100');
SELECT
    throws_ok ($$ INSERT INTO tracking.mainline_opponent_team_members (milestone_id, opponent_id, version_group_id, decision_milestone_id, decision_option_slug, slot, species_id, form_id, level)
            VALUES (10003, 1001, 1, 30001, 'chikorita', 1, 74, 7400, 12) $$, '23514', 'Decision milestone 30001 and opponent 1001 belong to different version groups', 'a team never follows another version group''s choice');
-- Bea is Sword's only, so her team cannot name a game.
SELECT
    throws_ok ($$ INSERT INTO tracking.mainline_opponent_team_members (milestone_id, opponent_id, version_group_id, game_id, slot, species_id, form_id, level)
            VALUES (183106, 18004, 18, 32, 1, 237, 23700, 34) $$, '23514', 'Opponent 18004 already belongs to one game; its team cannot name another', 'a game-only opponent''s team names no game');
SELECT
    throws_ok ($$ INSERT INTO tracking.mainline_opponent_team_members (milestone_id, opponent_id, version_group_id, variant_slug, variant_label, slot, species_id, form_id, level)
            VALUES (10003, 1001, 2, 'pgtap', 'pgTAP', 3, 74, 7400, 12) $$, '23503', NULL, 'a team row stays in its opponent''s version group');
-- Brock's team cannot sit on Misty's battle.
SELECT
    throws_ok ($$ INSERT INTO tracking.mainline_opponent_team_members (milestone_id, opponent_id, version_group_id, variant_slug, variant_label, slot, species_id, form_id, level)
            VALUES (10005, 1001, 1, 'pgtap', 'pgTAP', 1, 74, 7400, 12) $$, '23503', NULL, 'a team row belongs to a Story battle its opponent is in');
-- Kieran (The Teal Mask) battles you again after the Ogerpon story, with his own team then.
SELECT
    isnt_empty ($$
        SELECT
            id FROM tracking.mainline_opponent_team_members
            WHERE
                milestone_id = 240006
                AND opponent_id = 24001 $$, 'a rematch has its own team');
-- Every League battle Story matchups reads has its opponent's team.
SELECT
    is_empty ($$
        SELECT
            mainline_milestone_opponent_refs.id FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            WHERE
                mainline_opponents.opponent_role IN ('gym-leader', 'kahuna', 'elite-four', 'champion')
                AND NOT EXISTS (
                    SELECT
                        1
                    FROM tracking.mainline_opponent_team_members
                    WHERE
                        mainline_opponent_team_members.milestone_id = mainline_milestone_opponent_refs.milestone_id
                        AND mainline_opponent_team_members.opponent_id = mainline_milestone_opponent_refs.opponent_id) $$, 'every Gym Leader, Kahuna, Elite Four and Champion battle has a team');
SELECT
    *
FROM
    finish ();
ROLLBACK;
