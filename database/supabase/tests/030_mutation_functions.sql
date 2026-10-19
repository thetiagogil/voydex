CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

BEGIN;
SET LOCAL search_path = extensions, public;
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000a1', 'authenticated', 'authenticated', 'rpc-a@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW()), ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000b2', 'authenticated', 'authenticated', 'rpc-b@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW());
INSERT INTO gameplay.mainline_plays (id, user_id, game_id, version_group_id, status_id, name)
VALUES
    ('40000000-0000-0000-0000-0000000000a1', '00000000-0000-0000-0000-0000000000a1', 25, 15, 2, 'RPC Play'),
    ('40000000-0000-0000-0000-0000000000a2', '00000000-0000-0000-0000-0000000000a1', 36, 23, 2, 'RPC Prerequisite Play'),
    ('40000000-0000-0000-0000-0000000000a3', '00000000-0000-0000-0000-0000000000a1', 9, 6, 2, 'RPC FireRed Play');
INSERT INTO planning.mainline_team_plans (id, user_id, game_id, version_group_id, status_id, name)
    VALUES ('50000000-0000-0000-0000-0000000000a1', '00000000-0000-0000-0000-0000000000a1', 25, 15, 1, 'RPC Plan');
INSERT INTO planning.mainline_team_plan_members (id, team_plan_id, slot, target_species_id, target_form_id, gender, notes)
    VALUES ('51000000-0000-0000-0000-0000000000a1', '50000000-0000-0000-0000-0000000000a1', 1, 722, 72200, 'male', 'Copied member note');
SELECT
    plan (52);
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000a1', TRUE);
SET LOCAL ROLE authenticated;
SELECT
    lives_ok ($$
        SELECT
            gameplay.add_mainline_play_pokemon (p_play_id => '40000000-0000-0000-0000-0000000000a1', p_roster_state_id => 1, p_slot => 1, p_species_id => 722, p_form_id => 72200, p_nickname => 'Leaf', p_create_event => TRUE) $$, 'the owner can add a team member');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_pokemon
            WHERE
                play_id = '40000000-0000-0000-0000-0000000000a1'), 1::bigint, 'team addition creates one play Pokemon row');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_events
            WHERE
                play_id = '40000000-0000-0000-0000-0000000000a1'), 1::bigint, 'team addition creates one timeline event');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_event_pokemon_refs
            WHERE
                play_id = '40000000-0000-0000-0000-0000000000a1'), 1::bigint, 'team addition creates one event-time Pokemon reference');
SELECT
    lives_ok ($$
        SELECT
            gameplay.complete_mainline_play_milestone (p_play_id => '40000000-0000-0000-0000-0000000000a1', p_milestone_id => 150001, p_create_event => FALSE) $$, 'the owner can complete an available milestone');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_milestone_progress
            WHERE
                play_id = '40000000-0000-0000-0000-0000000000a1'
                AND milestone_id = 150001),
            1::bigint,
            'milestone completion creates sparse progress');
SELECT
    lives_ok ($$
        SELECT
            gameplay.complete_mainline_play_milestone (p_play_id => '40000000-0000-0000-0000-0000000000a1', p_milestone_id => 150001, p_progress_notes => 'Temporary milestone note', p_decision_option_id => (
                    SELECT
                        id
                    FROM tracking.mainline_milestone_decision_options
                    WHERE
                        milestone_id = 150001
                        AND slug = 'rowlet'), p_replace_progress_notes => TRUE, p_replace_decision => TRUE) $$, 'the owner can replace milestone note and decision details');
SELECT
    IS ((
            SELECT
                notes
            FROM
                gameplay.mainline_play_milestone_progress
            WHERE
                play_id = '40000000-0000-0000-0000-0000000000a1'
                AND milestone_id = 150001),
            'Temporary milestone note'::text,
            'milestone detail replacement records the submitted note');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_milestone_decisions
            WHERE
                play_id = '40000000-0000-0000-0000-0000000000a1'
                AND milestone_id = 150001),
            1::bigint,
            'milestone detail replacement records the submitted decision');
SELECT
    lives_ok ($$
        SELECT
            gameplay.complete_mainline_play_milestone (p_play_id => '40000000-0000-0000-0000-0000000000a1', p_milestone_id => 150001, p_progress_notes => NULL, p_decision_option_id => NULL, p_replace_progress_notes => TRUE, p_replace_decision => TRUE) $$, 'the owner can clear milestone note and decision details');
SELECT
    IS ((
            SELECT
                notes
            FROM
                gameplay.mainline_play_milestone_progress
            WHERE
                play_id = '40000000-0000-0000-0000-0000000000a1'
                AND milestone_id = 150001),
            NULL::text,
            'explicit note replacement clears the recorded note');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_milestone_decisions
            WHERE
                play_id = '40000000-0000-0000-0000-0000000000a1'
                AND milestone_id = 150001),
            0::bigint,
            'explicit decision replacement clears the recorded decision');
INSERT INTO gameplay.mainline_play_pokemon_moves (play_pokemon_id, slot, move_id)
SELECT
    mainline_play_pokemon.id,
    move_slots.slot,
    move_slots.move_id
FROM
    gameplay.mainline_play_pokemon
    CROSS JOIN (
        VALUES (1, 33),
            (2, 45),
            (3, 75),
            (4, 1)) AS move_slots (slot, move_id)
WHERE
    mainline_play_pokemon.play_id = '40000000-0000-0000-0000-0000000000a1'
    AND mainline_play_pokemon.slot = 1;
SELECT
    lives_ok ($$
        SELECT
            gameplay.complete_mainline_play_milestone (p_play_id => '40000000-0000-0000-0000-0000000000a1', p_milestone_id => 150003, p_record_earlier_milestone_ids => ARRAY[150002], p_create_event => TRUE, p_include_team_snapshot => TRUE) $$, 'the owner can record a milestone team snapshot');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_event_team_snapshots
            WHERE
                play_id = '40000000-0000-0000-0000-0000000000a1'), 1::bigint, 'milestone snapshot records the current active team');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_event_team_snapshot_moves),
            4::bigint,
            'milestone snapshot records move slots through owner RLS');
UPDATE
    gameplay.mainline_play_pokemon
SET
    nickname = 'Updated Leaf'
WHERE
    play_id = '40000000-0000-0000-0000-0000000000a1'
    AND slot = 1;
SELECT
    lives_ok ($$
        SELECT
            gameplay.complete_mainline_play_milestone (p_play_id => '40000000-0000-0000-0000-0000000000a1', p_milestone_id => 150003, p_create_event => TRUE, p_include_team_snapshot => TRUE) $$, 'the owner can replace a recorded milestone team snapshot');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_event_team_snapshots
            WHERE
                play_id = '40000000-0000-0000-0000-0000000000a1'), 1::bigint, 're-recording replaces the milestone snapshot without duplicates');
SELECT
    IS ((
            SELECT
                nickname
            FROM
                gameplay.mainline_play_event_team_snapshots
            WHERE
                play_id = '40000000-0000-0000-0000-0000000000a1'), 'Updated Leaf', 'the replacement snapshot reflects the current active team');
-- The seeded Sun / Moon chain is only suggested; make it a hard chain so the cascade has dependents.
RESET ROLE;
UPDATE
    tracking.mainline_milestone_prerequisites
SET
    prerequisite_kind_id = (
        SELECT
            id
        FROM
            tracking.mainline_milestone_prerequisite_kinds
        WHERE
            slug = 'required')
WHERE
    version_group_id = 15
    AND milestone_id BETWEEN 150002 AND 150006;
SET LOCAL ROLE authenticated;
INSERT INTO gameplay.mainline_play_milestone_progress (play_id, milestone_id, completed_at, notes)
VALUES
    ('40000000-0000-0000-0000-0000000000a1', 150004, NOW(), 'Cascade note'),
    ('40000000-0000-0000-0000-0000000000a1', 150005, NOW(), NULL),
    ('40000000-0000-0000-0000-0000000000a1', 150006, NOW(), NULL);
INSERT INTO gameplay.mainline_play_milestone_decisions (play_id, milestone_id, decision_option_id)
SELECT
    '40000000-0000-0000-0000-0000000000a1',
    150001,
    mainline_milestone_decision_options.id
FROM
    tracking.mainline_milestone_decision_options
WHERE
    mainline_milestone_decision_options.milestone_id = 150001
    AND mainline_milestone_decision_options.slug = 'rowlet';
SELECT
    throws_ok ($$
        SELECT
            gameplay.mark_mainline_play_milestone_incomplete (p_play_id => '40000000-0000-0000-0000-0000000000a1', p_milestone_id => 150001, p_expected_affected_milestone_ids => ARRAY[150001, 150002, 150003]) $$, '40001', 'Milestone correction impact changed; review the updated milestone list', 'a stale correction preview cannot delete newly affected progress');
CREATE TEMPORARY TABLE milestone_incompletion_result ON COMMIT DROP AS
SELECT
    *
FROM
    gameplay.mark_mainline_play_milestone_incomplete (p_play_id => '40000000-0000-0000-0000-0000000000a1', p_milestone_id => 150001, p_expected_affected_milestone_ids => ARRAY[150001, 150002, 150003, 150004, 150005, 150006]);
SELECT
    results_eq ($$
        SELECT
            affected_milestone_ids, affected_milestone_count, removed_note_count, removed_decision_count, removed_history_event_count, removed_team_snapshot_count FROM milestone_incompletion_result $$, $$
        VALUES (ARRAY[150001, 150002, 150003, 150004, 150005, 150006]::integer[], 6, 1, 1, 1, 1) $$, 'correction reports the complete transitive hard-dependency impact');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_milestone_progress
            WHERE
                play_id = '40000000-0000-0000-0000-0000000000a1'
                AND milestone_id = ANY (ARRAY[150001, 150002, 150003, 150004, 150005, 150006])),
            0::bigint,
            'correction removes every completed transitive hard dependent');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_milestone_decisions
            WHERE
                play_id = '40000000-0000-0000-0000-0000000000a1'), 0::bigint, 'correction removes decisions owned by affected milestones');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_events
            WHERE
                play_id = '40000000-0000-0000-0000-0000000000a1'
                AND milestone_id IS NOT NULL),
            0::bigint,
            'correction removes milestone-linked History events');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_events
            WHERE
                play_id = '40000000-0000-0000-0000-0000000000a1'), 1::bigint, 'correction preserves unrelated History events');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_event_team_snapshots
            WHERE
                play_id = '40000000-0000-0000-0000-0000000000a1'), 0::bigint, 'correction removes affected milestone team snapshots');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_event_team_snapshot_moves),
            0::bigint,
            'snapshot removal cascades to its recorded moves');
SELECT
    throws_ok ($$
        SELECT
            gameplay.complete_mainline_play_milestone (p_play_id => '40000000-0000-0000-0000-0000000000a2', p_milestone_id => 230030, p_create_event => FALSE) $$, '23514', 'Milestone 230030 requires completed milestones {230016,230023,230029}', 'hard Story prerequisites cannot be skipped');
SELECT
    throws_ok ($$
        SELECT
            gameplay.complete_mainline_play_milestone (p_play_id => '40000000-0000-0000-0000-0000000000a2', p_milestone_id => 230030, p_record_earlier_milestone_ids => ARRAY[230016, 230023, 230029], p_create_event => FALSE) $$, '23514', 'Milestone 230030 is in an open-world story, so earlier milestones are recorded one by one', 'an open-world story never records earlier milestones together');
-- Sun / Moon is linear: Lana Trial can be recorded with every milestone before it.
SELECT
    throws_ok ($$
        SELECT
            gameplay.complete_mainline_play_milestone (p_play_id => '40000000-0000-0000-0000-0000000000a1', p_milestone_id => 150005, p_record_earlier_milestone_ids => ARRAY[150004, 150006], p_create_event => FALSE) $$, '23514', 'Milestones {150006} are not required milestones before milestone 150005', 'a later milestone cannot be recorded as an earlier one');
SELECT
    throws_ok ($$
        SELECT
            gameplay.complete_mainline_play_milestone (p_play_id => '40000000-0000-0000-0000-0000000000a3', p_milestone_id => 60005, p_record_earlier_milestone_ids => ARRAY[60003, 60004], p_create_event => FALSE) $$, '23514', 'Milestones {60004} are not required milestones before milestone 60005', 'an optional milestone is never recorded with a later one');
CREATE TEMPORARY TABLE milestone_range_result ON COMMIT DROP AS
SELECT
    *
FROM
    gameplay.complete_mainline_play_milestone (p_play_id => '40000000-0000-0000-0000-0000000000a1', p_milestone_id => 150005, p_record_earlier_milestone_ids => ARRAY[150001, 150002, 150003, 150004], p_create_event => TRUE);
SELECT
    IS ((
            SELECT
                completed_milestone_ids
            FROM
                milestone_range_result),
            ARRAY[150001, 150002, 150003, 150004, 150005]::integer[],
            'a milestone is recorded with every milestone before it in one call');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_events
            WHERE
                play_id = '40000000-0000-0000-0000-0000000000a1'
                AND milestone_id IS NOT NULL),
            1::bigint,
            'only the milestone you recorded becomes a moment');
SELECT
    lives_ok ($$
        SELECT
            gameplay.mark_mainline_play_milestone_incomplete (p_play_id => '40000000-0000-0000-0000-0000000000a1', p_milestone_id => 150005, p_expected_affected_milestone_ids => ARRAY[150001, 150002, 150003, 150004, 150005], p_also_clear_milestone_ids => ARRAY[150001, 150002, 150003, 150004]) $$, 'undo clears the milestone and the ones recorded with it in one call');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_milestone_progress
            WHERE
                play_id = '40000000-0000-0000-0000-0000000000a1'), 0::bigint, 'undo leaves none of the range recorded');
SELECT
    lives_ok ($$
        SELECT
            gameplay.set_mainline_play_collectible_entry_progress ('40000000-0000-0000-0000-0000000000a1', 15001001, TRUE) $$, 'the owner can record collectible progress');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_collectible_entry_progress
            WHERE
                play_id = '40000000-0000-0000-0000-0000000000a1'
                AND collectible_entry_id = 15001001),
            1::bigint,
            'collectible mutation creates sparse progress');
SELECT
    lives_ok ($$
        SELECT
            gameplay.set_mainline_play_pokedex_species_progress ('40000000-0000-0000-0000-0000000000a1', 722, FALSE, TRUE) $$, 'the owner can record Pokedex progress');
SELECT
    ok ((
            SELECT
                is_seen
                AND is_caught
            FROM
                gameplay.mainline_play_pokedex_species_progress
            WHERE
                play_id = '40000000-0000-0000-0000-0000000000a1'
                AND species_id = 722),
            'caught Pokedex progress implies seen');
SELECT
    lives_ok ($$
        SELECT
            planning.link_mainline_team_plan_to_play ('40000000-0000-0000-0000-0000000000a1', '50000000-0000-0000-0000-0000000000a1', FALSE) $$, 'the owner can link a matching plan and play');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                planning.mainline_play_plan_links
            WHERE
                play_id = '40000000-0000-0000-0000-0000000000a1'), 1::bigint, 'plan linking creates one relationship');
SELECT
    lives_ok ($$
        SELECT
            planning.clone_mainline_team_plan_for_play ('40000000-0000-0000-0000-0000000000a1', 'RPC Plan copy') $$, 'the owner can clone the linked Plan for this Play');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                planning.mainline_team_plans),
            2::bigint,
            'Play-scoped Plan cloning preserves the source and creates one copy');
SELECT
    IS ((
            SELECT
                mainline_team_plans.name
            FROM
                planning.mainline_play_plan_links
                JOIN planning.mainline_team_plans ON mainline_team_plans.id = mainline_play_plan_links.team_plan_id
            WHERE
                mainline_play_plan_links.play_id = '40000000-0000-0000-0000-0000000000a1'), 'RPC Plan copy', 'Plan cloning atomically relinks only the Play to the copy');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                planning.mainline_team_plan_members
            WHERE
                team_plan_id = (
                    SELECT
                        team_plan_id
                    FROM
                        planning.mainline_play_plan_links
                    WHERE
                        play_id = '40000000-0000-0000-0000-0000000000a1')
                    AND gender = 'male'
                    AND notes = 'Copied member note'),
                1::bigint,
                'Plan cloning copies ordered member preferences');
SELECT
    throws_ok ($$
        SELECT
            gameplay.add_mainline_play_pokemon (p_play_id => '40000000-0000-0000-0000-0000000000a1', p_roster_state_id => 1, p_slot => 2, p_species_id => 725, p_form_id => 72500, p_move_ids => ARRAY[999999]) $$, '23503', 'insert or update on table "mainline_play_pokemon_moves" violates foreign key constraint "mainline_play_pokemon_moves_move_id_fkey"', 'a failed nested move insert aborts the team mutation');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_pokemon
            WHERE
                play_id = '40000000-0000-0000-0000-0000000000a1'), 1::bigint, 'failed team mutation rolls back its parent Pokemon row');
RESET ROLE;
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000b2', TRUE);
SET LOCAL ROLE authenticated;
SELECT
    throws_ok ($$
        SELECT
            gameplay.add_mainline_play_pokemon (p_play_id => '40000000-0000-0000-0000-0000000000a1', p_roster_state_id => 1, p_slot => 2, p_species_id => 725, p_form_id => 72500) $$, '23503', 'Unknown or unavailable play_id 40000000-0000-0000-0000-0000000000a1', 'another user cannot add Pokemon to the owner play');
SELECT
    throws_ok ($$
        SELECT
            gameplay.mark_mainline_play_milestone_incomplete (p_play_id => '40000000-0000-0000-0000-0000000000a1', p_milestone_id => 150001, p_expected_affected_milestone_ids => ARRAY[150001]) $$, '23503', 'Unknown or unavailable play_id 40000000-0000-0000-0000-0000000000a1', 'another user cannot correct the owner milestone progress');
SELECT
    throws_ok ($$
        SELECT
            gameplay.set_mainline_play_pokedex_species_progress ('40000000-0000-0000-0000-0000000000a1', 722, TRUE, TRUE) $$, '23503', 'Unknown or unavailable play_id 40000000-0000-0000-0000-0000000000a1', 'another user cannot update the owner Pokedex progress');
SELECT
    throws_ok ($$
        SELECT
            planning.link_mainline_team_plan_to_play ('40000000-0000-0000-0000-0000000000a1', '50000000-0000-0000-0000-0000000000a1', FALSE) $$, '23503', 'Unknown or unavailable play_id 40000000-0000-0000-0000-0000000000a1', 'another user cannot link the owner plan and play');
SELECT
    throws_ok ($$
        SELECT
            planning.clone_mainline_team_plan_for_play ('40000000-0000-0000-0000-0000000000a1') $$, '23503', 'Unknown or unavailable linked Plan for play_id 40000000-0000-0000-0000-0000000000a1', 'another user cannot clone the owner linked Plan');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_pokemon),
            0::bigint,
            'another user cannot see the owner team rows');
RESET ROLE;
SELECT
    *
FROM
    finish ();
ROLLBACK;
