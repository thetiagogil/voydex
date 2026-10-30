CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- The per-game Story audit of Diamond / Pearl to Omega Ruby / Alpha Sapphire:
-- the rows it corrected and the battles it added, pinned so they stay as the
-- games have them.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (9);
-- Bianca's monkey on Route 8 (Black / White) uses the move its species learns.
SELECT
    results_eq ($$
        SELECT
            array_agg(move_id ORDER BY member_moves.slot)
            FROM tracking.mainline_opponent_team_members AS members
            JOIN tracking.mainline_opponent_team_member_moves AS member_moves ON member_moves.team_member_id = members.id
            WHERE
                members.milestone_id = 110010
                AND members.opponent_id = 11016
                AND members.decision_option_slug = 'tepig'
                AND members.slot = 2 $$, $$
            VALUES (ARRAY[43, 122, 154, 503]) $$, 'Bianca''s Simipour on Route 8 knows Scald');
SELECT
    results_eq ($$
        SELECT
            array_agg(move_id ORDER BY member_moves.slot)
            FROM tracking.mainline_opponent_team_members AS members
            JOIN tracking.mainline_opponent_team_member_moves AS member_moves ON member_moves.team_member_id = members.id
            WHERE
                members.milestone_id = 110010
                AND members.opponent_id = 11016
                AND members.decision_option_slug = 'oshawott'
                AND members.slot = 2 $$, $$
            VALUES (ARRAY[43, 122, 154, 402]) $$, 'Bianca''s Simisage on Route 8 knows Seed Bomb');
-- Black 2 / White 2: Burgh's Swadloon has its fourth move, Hugh's Samurott in
-- Undella Town has Encore.
SELECT
    results_eq ($$
        SELECT
            array_agg(move_id ORDER BY member_moves.slot)
            FROM tracking.mainline_opponent_team_members AS members
            JOIN tracking.mainline_opponent_team_member_moves AS member_moves ON member_moves.team_member_id = members.id
            WHERE
                members.milestone_id = 120005
                AND members.opponent_id = 12003
                AND members.slot = 1 $$, $$
            VALUES (ARRAY[522, 75, 81, 182]) $$, 'Burgh''s Swadloon knows Protect');
SELECT
    results_eq ($$
        SELECT
            array_agg(move_id ORDER BY member_moves.slot)
            FROM tracking.mainline_opponent_team_members AS members
            JOIN tracking.mainline_opponent_team_member_moves AS member_moves ON member_moves.team_member_id = members.id
            WHERE
                members.milestone_id = 120009
                AND members.opponent_id = 12016
                AND members.decision_option_slug = 'tepig'
                AND members.slot = 3 $$, $$
            VALUES (ARRAY[227, 453, 279, 163]) $$, 'Hugh''s Samurott in Undella Town knows Encore');
-- Omega Ruby / Alpha Sapphire: the Seafloor Cavern teams use Haze, not Mist.
SELECT
    is_empty ($$
        SELECT
            members.id FROM tracking.mainline_opponent_team_members AS members
            JOIN tracking.mainline_opponent_team_member_moves AS member_moves ON member_moves.team_member_id = members.id
            WHERE
                members.milestone_id = 140020
                AND member_moves.move_id = 54 $$, 'nobody in the Seafloor Cavern knows Mist');
SELECT
    results_eq ($$
        SELECT
            array_agg(move_id ORDER BY member_moves.slot)
            FROM tracking.mainline_opponent_team_members AS members
            JOIN tracking.mainline_opponent_team_member_moves AS member_moves ON member_moves.team_member_id = members.id
            WHERE
                members.milestone_id = 140020
                AND members.opponent_id = 14017
                AND members.slot = 2 $$, $$
            VALUES (ARRAY[114, 458, 188, 153]) $$, 'Maxie''s Weezing knows Haze');
-- X / Y: Korrina's Geosenge Town battle belongs to the Rumble Badge.
SELECT
    results_eq ($$
        SELECT
            species_id, level FROM tracking.mainline_opponent_team_members
            WHERE
                milestone_id = 130007
                AND opponent_id = 13029 ORDER BY slot $$, $$
            VALUES (448, 25), (448, 25) $$, 'Korrina fights with two Lucario in Geosenge Town');
-- Omega Ruby / Alpha Sapphire: the Delta Episode runs Zinnia (Granite Cave),
-- Wallace, Rayquaza, Zinnia (Sky Pillar), Deoxys, then Brendan / May on Route 103.
SELECT
    results_eq ($$
        SELECT
            opponent_id FROM tracking.mainline_milestone_opponent_refs
            WHERE
                milestone_id = 140018 ORDER BY sort_order $$, $$
            VALUES (14054), (14059), (14049), (14053), (14058), (14050), (14021), (14014), (14022), (14015) $$, 'the Delta Episode battles come in story order, the rival''s last battle after it');
SELECT
    results_eq ($$
        SELECT
            opponent_id, COUNT(*)::integer FROM tracking.mainline_opponent_team_members
            WHERE
                opponent_id IN (14049, 14050)
            GROUP BY opponent_id ORDER BY opponent_id $$, $$
            VALUES (14049, 3), (14050, 6) $$, 'Zinnia brings three Pokémon to Granite Cave and Wallace six to the Sky Pillar');
SELECT
    *
FROM
    finish ();
ROLLBACK;
