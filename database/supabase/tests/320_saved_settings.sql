CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Saved settings: New Play defaults and motion on user_preferences, the
-- per-Play tracking switches, create_mainline_play's fallback to the defaults,
-- and completion that leaves Story and collectibles out without losing progress.
BEGIN;
SET LOCAL search_path = extensions, public;
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000f1', 'authenticated', 'authenticated', 'settings-a@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW()), ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000f2', 'authenticated', 'authenticated', 'settings-b@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW());
SELECT
    plan (37);
-- Defaults of a new account
SELECT
    results_eq ($$
        SELECT
            default_track_story, default_pokedex_mode, default_track_collectibles, motion FROM public.user_preferences
            WHERE
                user_id = '00000000-0000-0000-0000-0000000000f1' ORDER BY user_id $$, $$
            VALUES (TRUE, 'caught_and_seen', TRUE, 'system') $$, 'a new account tracks everything, caught and seen, and follows the device motion setting');
SELECT
    col_not_null ('public', 'user_preferences', 'motion', 'motion is never empty');
SELECT
    col_not_null ('public', 'user_preferences', 'default_pokedex_mode', 'the default Pokédex mode is never empty');
SELECT
    col_not_null ('gameplay', 'mainline_play_settings', 'pokedex_mode', 'a Play always has a Pokédex mode');
-- Owner access and enum checks
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000f1', TRUE);
SET LOCAL ROLE authenticated;
SELECT
    lives_ok ($$ INSERT INTO public.user_preferences (user_id, default_track_story, default_pokedex_mode, default_track_collectibles, motion)
            VALUES ('00000000-0000-0000-0000-0000000000f1', FALSE, 'caught_only', FALSE, 'reduced') ON CONFLICT (user_id)
            DO UPDATE SET
                default_track_story = EXCLUDED.default_track_story, default_pokedex_mode = EXCLUDED.default_pokedex_mode, default_track_collectibles = EXCLUDED.default_track_collectibles, motion = EXCLUDED.motion $$, 'an owner can save their settings with an upsert');
SELECT
    results_eq ($$
        SELECT
            default_track_story, default_pokedex_mode, default_track_collectibles, motion FROM public.user_preferences $$, $$
        VALUES (FALSE, 'caught_only', FALSE, 'reduced') $$, 'the owner reads the saved settings back');
SELECT
    throws_ok ($$ UPDATE
            public.user_preferences
        SET
            default_pokedex_mode = 'everything' $$, '23514', NULL, 'the default Pokédex mode must be caught_only or caught_and_seen');
SELECT
    throws_ok ($$ UPDATE
            public.user_preferences
        SET
            motion = 'fast' $$, '23514', NULL, 'motion must be full, reduced or system');
SELECT
    lives_ok ($$ UPDATE
            public.user_preferences
        SET
            motion = 'full' $$, 'the owner can change motion');
SELECT
    throws_ok ($$ UPDATE
            public.user_preferences
        SET
            default_track_story = NULL $$, '23502', NULL, 'a default switch is never empty');
-- Another trainer's settings stay private
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000f2', TRUE);
SELECT
    is_empty ($$
        SELECT
            1 FROM public.user_preferences
            WHERE
                user_id = '00000000-0000-0000-0000-0000000000f1' $$, 'another trainer cannot read my settings');
UPDATE
    public.user_preferences
SET
    motion = 'reduced',
    default_track_story = TRUE
WHERE
    user_id = '00000000-0000-0000-0000-0000000000f1';
SELECT
    throws_ok ($$ INSERT INTO public.user_preferences (user_id)
            VALUES ('00000000-0000-0000-0000-0000000000f1') ON CONFLICT (user_id)
            DO UPDATE SET
                motion = 'reduced' $$, '42501', NULL, 'another trainer cannot upsert over my settings');
RESET ROLE;
SELECT
    results_eq ($$
        SELECT
            default_track_story, motion FROM public.user_preferences
            WHERE
                user_id = '00000000-0000-0000-0000-0000000000f1' ORDER BY user_id $$, $$
            VALUES (FALSE, 'full') $$, 'another trainer''s update did not change my settings');
-- Starting a Play with explicit choices
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000f1', TRUE);
SET LOCAL ROLE authenticated;
CREATE TEMPORARY TABLE started_explicit ON COMMIT DROP AS
SELECT
    *
FROM
    gameplay.create_mainline_play (p_game_id => 25, p_name => 'Explicit', p_track_story => TRUE, p_pokedex_mode => 'caught_and_seen', p_track_collectibles => TRUE);
SELECT
    results_eq ($$
        SELECT
            story_tracking_enabled, pokedex_mode, collectibles_tracking_enabled, include_collectibles_in_completion FROM gameplay.mainline_play_settings
            WHERE
                play_id = (
                    SELECT
                        result_play_id
                    FROM started_explicit) $$, $$
        VALUES (TRUE, 'caught_and_seen', TRUE, TRUE) $$, 'explicit choices beat the saved defaults');
CREATE TEMPORARY TABLE started_off ON COMMIT DROP AS
SELECT
    *
FROM
    gameplay.create_mainline_play (p_game_id => 25, p_name => 'Explicit off', p_track_story => FALSE, p_pokedex_mode => 'caught_only', p_track_collectibles => FALSE);
SELECT
    results_eq ($$
        SELECT
            story_tracking_enabled, pokedex_mode, collectibles_tracking_enabled, include_collectibles_in_completion FROM gameplay.mainline_play_settings
            WHERE
                play_id = (
                    SELECT
                        result_play_id
                    FROM started_off) $$, $$
        VALUES (FALSE, 'caught_only', FALSE, FALSE) $$, 'explicit off choices are stored and collectibles leave completion');
-- Choices left out follow the saved defaults
CREATE TEMPORARY TABLE started_saved ON COMMIT DROP AS
SELECT
    *
FROM
    gameplay.create_mainline_play (p_game_id => 25, p_name => 'Saved defaults');
SELECT
    results_eq ($$
        SELECT
            story_tracking_enabled, pokedex_mode, collectibles_tracking_enabled, include_collectibles_in_completion FROM gameplay.mainline_play_settings
            WHERE
                play_id = (
                    SELECT
                        result_play_id
                    FROM started_saved) $$, $$
        VALUES (FALSE, 'caught_only', FALSE, FALSE) $$, 'choices left out come from the saved New Play defaults');
CREATE TEMPORARY TABLE started_mixed ON COMMIT DROP AS
SELECT
    *
FROM
    gameplay.create_mainline_play (p_game_id => 25, p_name => 'Mixed', p_track_story => TRUE);
SELECT
    results_eq ($$
        SELECT
            story_tracking_enabled, pokedex_mode, collectibles_tracking_enabled FROM gameplay.mainline_play_settings
            WHERE
                play_id = (
                    SELECT
                        result_play_id
                    FROM started_mixed) $$, $$
        VALUES (TRUE, 'caught_only', FALSE) $$, 'one explicit choice does not hide the other saved defaults');
-- No saved row: everything on
DELETE FROM public.user_preferences;
SELECT
    is_empty ($$
        SELECT
            1 FROM public.user_preferences $$, 'the owner removed their saved settings row');
CREATE TEMPORARY TABLE started_bare ON COMMIT DROP AS
SELECT
    *
FROM
    gameplay.create_mainline_play (p_game_id => 25, p_name => 'No saved row');
SELECT
    results_eq ($$
        SELECT
            story_tracking_enabled, pokedex_mode, collectibles_tracking_enabled, include_collectibles_in_completion FROM gameplay.mainline_play_settings
            WHERE
                play_id = (
                    SELECT
                        result_play_id
                    FROM started_bare) $$, $$
        VALUES (TRUE, 'caught_and_seen', TRUE, TRUE) $$, 'without a saved row a Play tracks everything, caught and seen');
SELECT
    throws_ok ($$
        SELECT
            * FROM gameplay.create_mainline_play (p_game_id => 25, p_name => 'Bad mode', p_pokedex_mode => 'everything') $$, '22023', 'pokedex_mode must be caught_only or caught_and_seen', 'an unknown Pokédex mode is refused');
SELECT
    is_empty ($$
        SELECT
            1 FROM gameplay.mainline_plays
            WHERE
                name = 'Bad mode' $$, 'a refused start leaves no Play behind');
-- Play settings constraints
SELECT
    throws_ok ($$ UPDATE
            gameplay.mainline_play_settings
        SET
            pokedex_mode = 'everything'
            WHERE
                play_id = (
                    SELECT
                        result_play_id
                    FROM started_bare) $$, '23514', NULL, 'a Play''s Pokédex mode must be caught_only or caught_and_seen');
SELECT
    throws_ok ($$ UPDATE
            gameplay.mainline_play_settings
        SET
            collectibles_tracking_enabled = FALSE
            WHERE
                play_id = (
                    SELECT
                        result_play_id
                    FROM started_bare) $$, '23514', NULL, 'collectibles cannot count toward completion while their tracking is off');
-- Completion follows the switches and keeps recorded progress
INSERT INTO gameplay.mainline_play_milestone_progress (play_id, milestone_id, completed_at)
SELECT
    (
        SELECT
            result_play_id
        FROM
            started_bare),
    mainline_milestones.id,
    NOW()
FROM
    tracking.mainline_milestones
WHERE
    mainline_milestones.version_group_id = 15
    AND mainline_milestones.is_required_for_completion
ORDER BY
    mainline_milestones.id
LIMIT 3;
INSERT INTO gameplay.mainline_play_collectible_entry_progress (play_id, collectible_entry_id, collected_at)
SELECT
    (
        SELECT
            result_play_id
        FROM
            started_bare),
    mainline_collectible_entries.id,
    NOW()
FROM
    tracking.mainline_collectible_entries
    JOIN tracking.mainline_collectibles ON mainline_collectibles.id = mainline_collectible_entries.collectible_id
WHERE
    mainline_collectibles.version_group_id = 15
    AND mainline_collectibles.is_required_for_completion
ORDER BY
    mainline_collectible_entries.id
LIMIT 4;
CREATE TEMPORARY TABLE completion_on ON COMMIT DROP AS
SELECT
    *
FROM
    views.mainline_play_completion_summary
WHERE
    play_id = (
        SELECT
            result_play_id
        FROM
            started_bare);
SELECT
    results_eq ($$
        SELECT
            required_milestone_count, completed_required_milestone_count, required_collectible_entry_count, collected_required_collectible_entry_count FROM completion_on $$, $$
        VALUES (21::bigint, 3::bigint, 100::bigint, 4::bigint) $$, 'with everything on, Story and collectibles count');
SELECT
    ok ((
            SELECT
                total_completion_unit_count = required_milestone_count + required_collectible_entry_count + required_pokedex_species_count
                AND completed_completion_unit_count = completed_required_milestone_count + collected_required_collectible_entry_count + caught_required_pokedex_species_count
            FROM
                completion_on),
            'the unit totals add up Story, collectibles and the Pokédex');
UPDATE
    gameplay.mainline_play_settings
SET
    story_tracking_enabled = FALSE
WHERE
    play_id = (
        SELECT
            result_play_id
        FROM
            started_bare);
SELECT
    results_eq ($$
        SELECT
            required_milestone_count, completed_required_milestone_count, milestone_completion_percent, required_collectible_entry_count FROM views.mainline_play_completion_summary
            WHERE
                play_id = (
                    SELECT
                        result_play_id
                    FROM started_bare) $$, $$
        VALUES (0::bigint, 0::bigint, 0::numeric, 100::bigint) $$, 'with Story off, milestones leave the counts and collectibles stay');
SELECT
    ok ((
            SELECT
                total_completion_unit_count = (
                    SELECT
                        total_completion_unit_count - 21
                    FROM
                        completion_on)
                    AND completed_completion_unit_count = (
                        SELECT
                            completed_completion_unit_count - 3
                        FROM
                            completion_on)
                    FROM
                        views.mainline_play_completion_summary
                    WHERE
                        play_id = (
                            SELECT
                                result_play_id
                            FROM
                                started_bare)),
                        'turning Story off takes its milestones out of the unit totals');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                views.mainline_play_milestone_detail
            WHERE
                play_id = (
                    SELECT
                        result_play_id
                    FROM
                        started_bare)
                    AND is_included_in_completion),
                0::bigint,
                'the milestone list marks no milestone as counting while Story is off');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_milestone_progress
            WHERE
                play_id = (
                    SELECT
                        result_play_id
                    FROM
                        started_bare)),
                3::bigint,
                'recorded milestones are kept while Story is off');
UPDATE
    gameplay.mainline_play_settings
SET
    collectibles_tracking_enabled = FALSE,
    include_collectibles_in_completion = FALSE
WHERE
    play_id = (
        SELECT
            result_play_id
        FROM
            started_bare);
SELECT
    results_eq ($$
        SELECT
            required_milestone_count, required_collectible_entry_count, collected_required_collectible_entry_count FROM views.mainline_play_completion_summary
            WHERE
                play_id = (
                    SELECT
                        result_play_id
                    FROM started_bare) $$, $$
        VALUES (0::bigint, 0::bigint, 0::bigint) $$, 'with collectibles off, their entries leave the counts');
SELECT
    results_eq ($$
        SELECT
            collectibles_tracking_enabled, BOOL_OR(is_included_in_completion), COUNT(*) FILTER (WHERE is_collected)
            FROM views.mainline_play_collectible_detail
            WHERE
                play_id = (
                    SELECT
                        result_play_id
                    FROM started_bare)
        GROUP BY collectibles_tracking_enabled $$, $$
        VALUES (FALSE, FALSE, 4::bigint) $$, 'the collectible list shows tracking off, none counting, and the 4 collected entries kept');
SELECT
    results_eq ($$
        SELECT
            story_tracking_enabled, pokedex_mode, collectibles_tracking_enabled FROM views.mainline_play_overview
            WHERE
                play_id = (
                    SELECT
                        result_play_id
                    FROM started_bare) $$, $$
        VALUES (FALSE, 'caught_and_seen', FALSE) $$, 'the Play overview exposes the three settings');
UPDATE
    gameplay.mainline_play_settings
SET
    story_tracking_enabled = TRUE,
    collectibles_tracking_enabled = TRUE,
    include_collectibles_in_completion = TRUE
WHERE
    play_id = (
        SELECT
            result_play_id
        FROM
            started_bare);
SELECT
    results_eq ($$
        SELECT
            required_milestone_count, completed_required_milestone_count, required_collectible_entry_count, collected_required_collectible_entry_count FROM views.mainline_play_completion_summary
            WHERE
                play_id = (
                    SELECT
                        result_play_id
                    FROM started_bare) $$, $$
        VALUES (21::bigint, 3::bigint, 100::bigint, 4::bigint) $$, 'switching both back on restores the counts with the progress untouched');
SELECT
    ok ((
            SELECT
                completed_completion_unit_count = (
                    SELECT
                        completed_completion_unit_count
                    FROM
                        completion_on)
                    AND total_completion_unit_count = (
                        SELECT
                            total_completion_unit_count
                        FROM
                            completion_on)
                    FROM
                        views.mainline_play_completion_summary
                    WHERE
                        play_id = (
                            SELECT
                                result_play_id
                            FROM
                                started_bare)),
                        'the unit totals return to what they were');
SELECT
    results_eq ($$
        SELECT
            pokedex_mode FROM views.mainline_play_pokedex_detail
            WHERE
                play_id = (
                    SELECT
                        result_play_id
                    FROM started_bare)
        LIMIT 1 $$, $$
    VALUES ('caught_and_seen') $$, 'the Pokédex list carries the Play''s mode');
-- Another trainer cannot read or change the Play's settings
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000f2', TRUE);
SELECT
    is_empty ($$
        SELECT
            1 FROM gameplay.mainline_play_settings
            WHERE
                play_id = (
                    SELECT
                        result_play_id
                    FROM started_bare) $$, 'another trainer cannot read my Play settings');
UPDATE
    gameplay.mainline_play_settings
SET
    story_tracking_enabled = FALSE
WHERE
    play_id = (
        SELECT
            result_play_id
        FROM
            started_bare);
RESET ROLE;
SELECT
    IS ((
            SELECT
                story_tracking_enabled
            FROM
                gameplay.mainline_play_settings
            WHERE
                play_id = (
                    SELECT
                        result_play_id
                    FROM
                        started_bare)),
                TRUE,
                'another trainer cannot switch off my Story tracking');
SELECT
    *
FROM
    finish ();
ROLLBACK;
