CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Story's ranges: recording the milestones before one together, clearing the
-- ones after it, and Undo, on FireRed / LeafGreen (linear, a choice in the
-- way), Let's Go (an optional boss) and Scarlet / Violet (open world).
BEGIN;
SET LOCAL search_path = extensions, public;
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000c1', 'authenticated', 'authenticated', 'range-a@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW()), ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000c2', 'authenticated', 'authenticated', 'range-b@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW());
INSERT INTO gameplay.mainline_plays (id, user_id, game_id, version_group_id, status_id, name)
VALUES
    ('60000000-0000-0000-0000-0000000000c1', '00000000-0000-0000-0000-0000000000c1', 9, 6, 2, 'Range FireRed'),
    ('60000000-0000-0000-0000-0000000000c2', '00000000-0000-0000-0000-0000000000c1', 9, 6, 2, 'Range FireRed Twin'),
    ('60000000-0000-0000-0000-0000000000c3', '00000000-0000-0000-0000-0000000000c1', 29, 17, 2, 'Range Lets Go'),
    ('60000000-0000-0000-0000-0000000000c4', '00000000-0000-0000-0000-0000000000c1', 36, 23, 2, 'Range Scarlet'),
    ('60000000-0000-0000-0000-0000000000c5', '00000000-0000-0000-0000-0000000000c1', 31, 18, 2, 'Range Sword');
SELECT
    plan (24);
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000c1', TRUE);
SET LOCAL ROLE authenticated;
-- The view tells Story which journeys are open world.
SELECT
    results_eq ($$ SELECT DISTINCT
            is_open_world FROM views.mainline_play_milestone_category_summary
            WHERE
                play_id IN ('60000000-0000-0000-0000-0000000000c1', '60000000-0000-0000-0000-0000000000c4')
            ORDER BY is_open_world $$, $$
            VALUES (FALSE), (TRUE) $$, 'the category summary says FireRed is linear and Scarlet is open world');
-- Choose Starter is already recorded, on its own day.
SELECT
    lives_ok ($$
        SELECT
            gameplay.complete_mainline_play_milestone (p_play_id => '60000000-0000-0000-0000-0000000000c1', p_milestone_id => 60001, p_completed_at => '2020-01-02T00:00:00Z') $$, 'one milestone records on its own');
SELECT
    lives_ok ($$
        SELECT
            gameplay.complete_mainline_play_milestone (p_play_id => '60000000-0000-0000-0000-0000000000c2', p_milestone_id => 60001) $$, 'the twin Play records its own starter');
SELECT
    throws_ok ($$
        SELECT
            gameplay.complete_mainline_play_milestone (p_play_id => '60000000-0000-0000-0000-0000000000c1', p_milestone_id => 60005, p_record_earlier_milestone_ids => ARRAY[60004, 60006]) $$, '23514', 'Milestones {60006} are not required milestones or choices before milestone 60005', 'a later milestone is never recorded as an earlier one');
SELECT
    throws_ok ($$
        SELECT
            gameplay.complete_mainline_play_milestone (p_play_id => '60000000-0000-0000-0000-0000000000c1', p_milestone_id => 60005, p_record_earlier_milestone_ids => ARRAY[150001]) $$, '23514', 'Milestones {150001} are not required milestones or choices before milestone 60005', 'a milestone of another game is never recorded with this one');
SELECT
    throws_ok ($$
        SELECT
            gameplay.complete_mainline_play_milestone (p_play_id => '60000000-0000-0000-0000-0000000000c1', p_milestone_id => 60005, p_record_earlier_milestone_ids => ARRAY[999999]) $$, '23514', 'Milestones {999999} are not required milestones or choices before milestone 60005', 'an unknown milestone is refused');
SELECT
    throws_ok ($$
        SELECT
            gameplay.complete_mainline_play_milestone (p_play_id => '60000000-0000-0000-0000-0000000000c3', p_milestone_id => 170019, p_record_earlier_milestone_ids => ARRAY[170018]) $$, '23514', 'Milestones {170018} are not required milestones or choices before milestone 170019', 'an optional milestone that is not a choice is never recorded with a later one');
SELECT
    throws_ok ($$
        SELECT
            gameplay.complete_mainline_play_milestone (p_play_id => '60000000-0000-0000-0000-0000000000c4', p_milestone_id => 230002, p_record_earlier_milestone_ids => ARRAY[230001]) $$, '23514', 'Milestone 230002 is in an open-world story, so earlier milestones are recorded one by one', 'an open-world story never records earlier milestones together');
-- Sword's own gyms only: Shield's Ghost Badge is never part of a Sword run.
SELECT
    throws_ok ($$
        SELECT
            gameplay.complete_mainline_play_milestone (p_play_id => '60000000-0000-0000-0000-0000000000c5', p_milestone_id => 180007, p_record_earlier_milestone_ids => ARRAY[183106, 183206]) $$, '23514', 'Milestones {183206} are not required milestones or choices before milestone 180007', 'the other version''s milestone is never recorded with this one');
-- Cascade Badge with everything before it: the starter is already recorded.
CREATE TEMPORARY TABLE range_record ON COMMIT DROP AS
SELECT
    *
FROM
    gameplay.complete_mainline_play_milestone (p_play_id => '60000000-0000-0000-0000-0000000000c1', p_milestone_id => 60005, p_completed_at => '2026-10-19T12:00:00Z', p_record_earlier_milestone_ids => ARRAY[60001, 60002, 60003, 60004], p_create_event => TRUE);
SELECT
    IS ((
            SELECT
                completed_milestone_ids
            FROM
                range_record),
            ARRAY[60002, 60003, 60004, 60005]::integer[],
            'the range records what was still open and returns it');
SELECT
    IS ((
            SELECT
                completed_at
            FROM
                gameplay.mainline_play_milestone_progress
            WHERE
                play_id = '60000000-0000-0000-0000-0000000000c1'
                AND milestone_id = 60001),
            '2020-01-02T00:00:00Z'::timestamptz,
            'a milestone already recorded keeps its own day');
SELECT
    IS ((
            SELECT
                COUNT(DISTINCT completed_at)
            FROM
                gameplay.mainline_play_milestone_progress
            WHERE
                play_id = '60000000-0000-0000-0000-0000000000c1'
                AND milestone_id BETWEEN 60002 AND 60005),
            1::bigint,
            'the milestones recorded together share one day');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_events
            WHERE
                play_id = '60000000-0000-0000-0000-0000000000c1'
                AND milestone_id IS NOT NULL),
            1::bigint,
            'only the milestone you recorded becomes a moment');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_milestone_decisions
            WHERE
                play_id = '60000000-0000-0000-0000-0000000000c1'), 0::bigint, 'a choice recorded with a later milestone keeps its decision unrecorded');
-- Clearing the ones after it checks the reviewed list first.
SELECT
    throws_ok ($$
        SELECT
            gameplay.mark_mainline_play_milestone_incomplete (p_play_id => '60000000-0000-0000-0000-0000000000c1', p_milestone_id => 60003, p_expected_affected_milestone_ids => ARRAY[60003, 60004], p_also_clear_milestone_ids => ARRAY[60004, 60005]) $$, '40001', 'Milestone correction impact changed; review the updated milestone list', 'a stale list of the ones after it clears nothing');
SELECT
    throws_ok ($$
        SELECT
            gameplay.mark_mainline_play_milestone_incomplete (p_play_id => '60000000-0000-0000-0000-0000000000c1', p_milestone_id => 60003, p_expected_affected_milestone_ids => ARRAY[60003, 60006], p_also_clear_milestone_ids => ARRAY[60006]) $$, '40001', 'Milestone correction impact changed; review the updated milestone list', 'a milestone that is not recorded is never cleared');
SELECT
    lives_ok ($$
        SELECT
            gameplay.mark_mainline_play_milestone_incomplete (p_play_id => '60000000-0000-0000-0000-0000000000c1', p_milestone_id => 60003, p_expected_affected_milestone_ids => ARRAY[60003, 60004, 60005], p_also_clear_milestone_ids => ARRAY[60004, 60005]) $$, 'a milestone clears with the ones after it in one call');
SELECT
    results_eq ($$
        SELECT
            milestone_id FROM gameplay.mainline_play_milestone_progress
            WHERE
                play_id = '60000000-0000-0000-0000-0000000000c1' ORDER BY milestone_id $$, $$
            VALUES (60001), (60002) $$, 'the ones before it stay recorded');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_events
            WHERE
                play_id = '60000000-0000-0000-0000-0000000000c1'
                AND milestone_id IS NOT NULL),
            0::bigint,
            'clearing takes the moment of the milestone recorded with them');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_milestone_progress
            WHERE
                play_id = '60000000-0000-0000-0000-0000000000c2'), 1::bigint, 'another Play of the same game keeps its own record');
-- Clearing reaches only this Play: the twin's own record of Boulder Badge stays.
SELECT
    lives_ok ($$
        SELECT
            gameplay.complete_mainline_play_milestone (p_play_id => '60000000-0000-0000-0000-0000000000c2', p_milestone_id => 60003) $$, 'the twin Play records Boulder Badge');
SELECT
    throws_ok ($$
        SELECT
            gameplay.mark_mainline_play_milestone_incomplete (p_play_id => '60000000-0000-0000-0000-0000000000c1', p_milestone_id => 60002, p_expected_affected_milestone_ids => ARRAY[60002, 60003], p_also_clear_milestone_ids => ARRAY[60003]) $$, '40001', 'Milestone correction impact changed; review the updated milestone list', 'a milestone recorded only in another Play is never cleared from this one');
-- Another trainer can't reach this Play's Story.
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000c2', TRUE);
SELECT
    throws_ok ($$
        SELECT
            gameplay.complete_mainline_play_milestone (p_play_id => '60000000-0000-0000-0000-0000000000c1', p_milestone_id => 60005, p_record_earlier_milestone_ids => ARRAY[60003, 60004]) $$, '23503', 'Unknown or unavailable play_id 60000000-0000-0000-0000-0000000000c1', 'another trainer cannot record a range in the Play');
SELECT
    throws_ok ($$
        SELECT
            gameplay.mark_mainline_play_milestone_incomplete (p_play_id => '60000000-0000-0000-0000-0000000000c1', p_milestone_id => 60001, p_expected_affected_milestone_ids => ARRAY[60001, 60002], p_also_clear_milestone_ids => ARRAY[60002]) $$, '23503', 'Unknown or unavailable play_id 60000000-0000-0000-0000-0000000000c1', 'another trainer cannot clear a range in the Play');
RESET ROLE;
SELECT
    *
FROM
    finish ();
ROLLBACK;
