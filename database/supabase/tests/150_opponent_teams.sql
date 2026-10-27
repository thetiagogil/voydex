CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Opponent teams: read-only for signed-in users, every row belongs to one
-- Story battle of its opponent, and stays in its version group and game.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (18);
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
-- Hop's Stow-on-Side battle is Sword's (its Gym is), so its team cannot be Shield's.
SELECT
    throws_ok ($$ INSERT INTO tracking.mainline_opponent_team_members (milestone_id, opponent_id, version_group_id, game_id, variant_slug, variant_label, slot, species_id, form_id, level)
            VALUES (183106, 18013, 18, 32, 'pgtap', 'pgTAP', 1, 832, 83200, 30) $$, '23514', NULL, 'a team names its Story battle''s game');
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
-- Every Story battle, bosses and rivals included, has its opponent's team.
SELECT
    is_empty ($$
        SELECT
            mainline_milestone_opponent_refs.id FROM tracking.mainline_milestone_opponent_refs
            WHERE
                NOT EXISTS (
                    SELECT
                        1
                    FROM tracking.mainline_opponent_team_members
                    WHERE
                        mainline_opponent_team_members.milestone_id = mainline_milestone_opponent_refs.milestone_id
                        AND mainline_opponent_team_members.opponent_id = mainline_milestone_opponent_refs.opponent_id) $$, 'every Story battle has a team');
-- X / Y: Lysandre fights at the Team Flare Secret HQ before and after Xerneas / Yveltal.
SELECT
    results_eq ($$
        SELECT
            mainline_opponents.name, mainline_milestone_opponent_refs.sort_order FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            WHERE
                mainline_milestone_opponent_refs.milestone_id = 130022 ORDER BY mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES ('Lysandre'::text, 1), ('Xerneas', 2), ('Yveltal', 3), ('Lysandre', 4) $$, 'Lysandre battles twice at the Team Flare Secret HQ, around the legendary');
-- Vast Poni Canyon has no captain: Totem Kommo-o calls its allies in this order.
SELECT
    results_eq ($$
        SELECT
            mainline_opponent_team_members.milestone_id, mainline_opponent_team_members.species_id, mainline_opponent_team_members.level FROM tracking.mainline_opponent_team_members
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            WHERE
                mainline_opponents.slug = 'totem-kommo-o' ORDER BY mainline_opponent_team_members.milestone_id, mainline_opponent_team_members.slot $$, $$
            VALUES (150012, 784, 45), (150012, 783, 32), (150012, 212, 32), (160013, 784, 49), (160013, 715, 48), (160013, 212, 46) $$, 'Totem Kommo-o battles in Vast Poni Canyon with its allies');
-- Ultra Sun / Ultra Moon: Ilima's bonus trial is the Lv. 60 totem of each game.
SELECT
    results_eq ($$
        SELECT
            game_id, slot, species_id, form_id, level FROM tracking.mainline_opponent_team_members
            WHERE
                milestone_id = 160032
                AND opponent_id = 16001 ORDER BY game_id, slot $$, $$
            VALUES (27, 1, 735, 73500, 60), (27, 2, 734, 73400, 58), (28, 1, 20, 2001, 60), (28, 2, 19, 1901, 58) $$, 'Ilima''s bonus trial has each game''s totem and ally');
-- Every Pokémon in both new trials knows its four moves.
SELECT
    is_empty ($$
        SELECT
            mainline_opponent_team_members.id FROM tracking.mainline_opponent_team_members
        LEFT JOIN tracking.mainline_opponent_team_member_moves ON mainline_opponent_team_member_moves.team_member_id = mainline_opponent_team_members.id
        WHERE
            mainline_opponent_team_members.milestone_id IN (150012, 160013, 160032)
        GROUP BY mainline_opponent_team_members.id
        HAVING
            COUNT(mainline_opponent_team_member_moves.move_id) <> 4 $$, 'Totem Kommo-o and Ilima''s bonus trial know four moves each');
SELECT
    *
FROM
    finish ();
ROLLBACK;
