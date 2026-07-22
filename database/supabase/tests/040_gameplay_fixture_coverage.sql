CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (50);
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                auth.users
            WHERE
                id = '46ba21ff-6955-4252-8913-35b50de51456'), 1::bigint, 'the fixture owner exists');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_plays
            WHERE
                user_id = '46ba21ff-6955-4252-8913-35b50de51456'), 44::bigint, 'the owner has forty-four fixture plays');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM (
                SELECT
                    version_group_id
                FROM
                    gameplay.mainline_plays
                GROUP BY
                    version_group_id
                HAVING
                    COUNT(*) = 2) AS pairs),
            22::bigint,
            'every supported base version group has exactly two plays');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_plays
            WHERE
                id = md5('voydex-fixture:play:data:' || version_group_id)::uuid),
            22::bigint,
            'twenty-two populated plays exist');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_plays
            WHERE
                id = md5('voydex-fixture:play:empty:' || version_group_id)::uuid),
            22::bigint,
            'twenty-two blank plays exist');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_settings
            WHERE
                play_id IN (
                    SELECT
                        id
                    FROM
                        gameplay.mainline_plays
                    WHERE
                        id = md5('voydex-fixture:play:empty:' || version_group_id)::uuid)),
                0::bigint,
                'blank plays have no settings rows');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_pokemon
            WHERE
                play_id IN (
                    SELECT
                        id
                    FROM
                        gameplay.mainline_plays
                    WHERE
                        id = md5('voydex-fixture:play:empty:' || version_group_id)::uuid)),
                0::bigint,
                'blank plays have no Pokemon');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_events
            WHERE
                play_id IN (
                    SELECT
                        id
                    FROM
                        gameplay.mainline_plays
                    WHERE
                        id = md5('voydex-fixture:play:empty:' || version_group_id)::uuid)),
                0::bigint,
                'blank plays have no events');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_milestone_progress
            WHERE
                play_id IN (
                    SELECT
                        id
                    FROM
                        gameplay.mainline_plays
                    WHERE
                        id = md5('voydex-fixture:play:empty:' || version_group_id)::uuid)),
                0::bigint,
                'blank plays have no milestone progress');
SELECT
    IS ((
            SELECT
                COUNT(DISTINCT status_id)
            FROM
                gameplay.mainline_plays),
            5::bigint,
            'all play lifecycle statuses are represented');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_plays
            WHERE
                name LIKE '%Early Journey'), 4::bigint, 'four populated plays are early-game');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_plays
            WHERE
                name LIKE '%Midgame Journey'), 5::bigint, 'five populated plays are midgame');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_plays
            WHERE
                name LIKE '%Late Journey'), 4::bigint, 'four populated plays are late-game');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_plays
            WHERE
                name LIKE '%Story Complete'), 4::bigint, 'four populated plays are story-complete');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_plays
            WHERE
                name LIKE '%Postgame Cleanup'), 4::bigint, 'four populated plays are postgame');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_plays
            WHERE
                name LIKE '%100% Complete'), 1::bigint, 'one populated play is fully complete');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_settings),
            22::bigint,
            'every populated play has explicit completion settings');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_pokemon
            WHERE
                roster_state_id = 1), 132::bigint, 'every populated play has a six-member active team');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM (
                SELECT
                    play_id
                FROM
                    gameplay.mainline_play_pokemon
                WHERE
                    roster_state_id = 1
                GROUP BY
                    play_id
                HAVING
                    COUNT(*) = 6) AS teams),
            22::bigint,
            'all populated plays have exactly six active Pokemon');
SELECT
    IS ((
            SELECT
                COUNT(DISTINCT roster_state_id)
            FROM
                gameplay.mainline_play_pokemon),
            4::bigint,
            'active, reserve, retired, and replaced roster states are represented');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_pokemon_moves),
            544::bigint,
            'all current and historical Pokemon have four moves');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM (
                SELECT
                    play_pokemon_id
                FROM
                    gameplay.mainline_play_pokemon_moves
                GROUP BY
                    play_pokemon_id
                HAVING
                    COUNT(*) = 4) AS complete_movesets),
            136::bigint,
            'every recorded Pokemon has a complete moveset');
SELECT
    IS ((
            SELECT
                COUNT(DISTINCT play_id)
            FROM
                gameplay.mainline_play_milestone_progress),
            22::bigint,
            'every populated play has milestone progress');
SELECT
    IS ((
            SELECT
                COUNT(DISTINCT play_id)
            FROM
                gameplay.mainline_play_pokedex_species_progress),
            22::bigint,
            'every populated play has Pokedex progress');
SELECT
    ok ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_collectible_entry_progress) > 0,
            'supported games include collectible progress');
SELECT
    ok ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_milestone_decisions) > 0,
            'branching milestone decisions are represented');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_optional_content_scopes),
            5::bigint,
            'all five supported optional content scopes are selected');
SELECT
    IS ((
            SELECT
                COUNT(DISTINCT event_type_id)
            FROM
                gameplay.mainline_play_events),
            9::bigint,
            'all timeline event types are represented');
SELECT
    IS ((
            SELECT
                COUNT(DISTINCT event_origin_id)
            FROM
                gameplay.mainline_play_events),
            5::bigint,
            'all timeline event origins are represented');
SELECT
    ok ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_events) > 500,
            'the fixture contains a substantial event history');
SELECT
    ok ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_event_pokemon_refs) > 130,
            'event Pokemon references include current and historical identities');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_event_team_snapshots),
            186::bigint,
            'thirty-one six-member team snapshots exist');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM (
                SELECT
                    event_id
                FROM
                    gameplay.mainline_play_event_team_snapshots
                GROUP BY
                    event_id
                HAVING
                    COUNT(*) = 6) AS complete_snapshots),
            31::bigint,
            'every snapshot captures six team members');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_event_team_snapshot_moves),
            744::bigint,
            'every snapshot member preserves four move slots');
SELECT
    ok ((
            SELECT
                COUNT(*)
            FROM
                gameplay.mainline_play_tags) >= 22,
            'every populated play has stage tags and selected challenge tags');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                gameplay.user_game_library_entries),
            38::bigint,
            'the fixture owner has every supported game in the library');
SELECT
    IS ((
            SELECT
                COUNT(DISTINCT library_status_id)
            FROM
                gameplay.user_game_library_entries),
            5::bigint,
            'all game-library statuses are represented');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                planning.mainline_team_plans),
            22::bigint,
            'every populated play has a reusable team plan');
SELECT
    IS ((
            SELECT
                COUNT(DISTINCT status_id)
            FROM
                planning.mainline_team_plans),
            3::bigint,
            'draft, active, and archived plans are represented');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                planning.mainline_team_plan_members),
            132::bigint,
            'plans contain six ordered members each');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM (
                SELECT
                    team_plan_id
                FROM
                    planning.mainline_team_plan_members
                GROUP BY
                    team_plan_id
                HAVING
                    COUNT(*) = 6
                    AND COUNT(DISTINCT slot) = 6
                    AND MIN(slot) = 1
                    AND MAX(slot) = 6) AS complete_plans),
            22::bigint,
            'every fixture Plan uses one complete ordered slot set');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                planning.mainline_team_plan_member_moves),
            528::bigint,
            'all primary plan members preserve four planned moves');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                planning.mainline_play_plan_links),
            22::bigint,
            'every populated play is linked to one plan');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                views.mainline_play_team_plan_detail
            WHERE
                team_plan_member_id IS NOT NULL), 132::bigint, 'the Play Plan read model exposes every ordered planned member');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                planning.mainline_team_plan_optional_content_scopes),
            5::bigint,
            'plan optional-content scopes mirror their plays');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                views.mainline_play_completion_summary
            WHERE
                overall_completion_percent = 100), 1::bigint, 'exactly one play has 100 percent overall completion');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                views.mainline_play_completion_summary AS completion
                JOIN gameplay.mainline_plays AS plays ON plays.id = completion.play_id
            WHERE
                plays.name LIKE '%Story Complete'
                AND completion.milestone_completion_percent = 100
                AND completion.overall_completion_percent BETWEEN 60 AND 80),
            4::bigint,
            'story-complete plays are not falsely 100 percent overall');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                views.mainline_play_completion_summary AS completion
                JOIN gameplay.mainline_plays AS plays ON plays.id = completion.play_id
            WHERE
                plays.name LIKE '%Postgame Cleanup'
                AND completion.overall_completion_percent BETWEEN 85 AND 99.99),
            4::bigint,
            'postgame plays remain short of full completion');
SELECT
    set_config('request.jwt.claim.sub', '46ba21ff-6955-4252-8913-35b50de51456', TRUE);
SET LOCAL ROLE authenticated;
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                views.mainline_play_summary),
            44::bigint,
            'the authenticated owner can read every play summary');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                views.mainline_team_plan_summary),
            22::bigint,
            'the authenticated owner can read every plan summary');
SELECT
    *
FROM
    finish ();
ROLLBACK;
