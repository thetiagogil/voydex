CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (13);
SELECT
    has_schema ('reference', 'reference schema exists');
SELECT
    has_schema ('tracking', 'tracking schema exists');
SELECT
    has_schema ('gameplay', 'gameplay schema exists');
SELECT
    has_schema ('planning', 'planning schema exists');
SELECT
    has_schema ('views', 'views schema exists');
SELECT
    has_table ('public', 'profiles', 'profiles table exists');
SELECT
    has_table ('gameplay', 'mainline_plays', 'mainline plays table exists');
SELECT
    has_table ('planning', 'mainline_team_plans', 'mainline team plans table exists');
SELECT
    has_view ('views', 'mainline_play_overview', 'mainline play overview view exists');
SELECT
    ok (NOT EXISTS (
            SELECT
                1
            FROM
                pg_catalog.pg_class AS relation
                INNER JOIN pg_catalog.pg_namespace AS namespace ON namespace.oid = relation.relnamespace
            WHERE
                relation.relkind = 'r'
                AND namespace.nspname IN ('public', 'reference', 'tracking', 'gameplay', 'planning')
                AND NOT relation.relrowsecurity),
            'all exposed Voydex tables have row-level security enabled');
SELECT
    ok (NOT EXISTS (
            SELECT
                1
            FROM
                pg_catalog.pg_class AS relation
                INNER JOIN pg_catalog.pg_namespace AS namespace ON namespace.oid = relation.relnamespace
                CROSS JOIN (
                    VALUES ('anon'),
                        ('authenticated')) AS app_roles (role_name)
                    CROSS JOIN (
                        VALUES ('INSERT'), ('UPDATE'), ('DELETE'), ('TRUNCATE')) AS write_privileges (privilege_name)
                    WHERE
                        relation.relkind = 'r'
                            AND namespace.nspname IN ('reference', 'tracking')
                            AND has_table_privilege(app_roles.role_name, relation.oid, write_privileges.privilege_name)),
                        'client roles have no write privileges on reference or tracking tables');
SELECT
    ok (NOT EXISTS (
            SELECT
                1
            FROM
                pg_catalog.pg_class AS relation
                INNER JOIN pg_catalog.pg_namespace AS namespace ON namespace.oid = relation.relnamespace
            WHERE
                relation.relkind = 'v'
                AND namespace.nspname = 'views'
                AND NOT coalesce(relation.reloptions @> ARRAY['security_invoker=true'], FALSE)),
            'all app-facing views use security_invoker');
SELECT
    ok (NOT EXISTS (
            SELECT
                1
            FROM
                pg_catalog.pg_proc AS routine
                INNER JOIN pg_catalog.pg_namespace AS namespace ON namespace.oid = routine.pronamespace
            WHERE
                namespace.nspname IN ('gameplay', 'planning')
                AND has_function_privilege('anon', routine.oid, 'EXECUTE')),
            'anonymous users cannot execute gameplay or planning functions');
SELECT
    *
FROM
    finish ();
ROLLBACK;
