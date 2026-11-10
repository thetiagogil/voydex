CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (8);
-- Your data lives only on the device (ADR 0008): hosted Supabase never
-- serves it, so the API roles reach none of it, and its tables carry no
-- row security of their own.
SELECT
    ok (NOT has_schema_privilege('authenticated', 'gameplay', 'USAGE'),
        'signed-in visitors cannot reach the gameplay schema');
SELECT
    ok (NOT has_schema_privilege('authenticated', 'planning', 'USAGE'),
        'signed-in visitors cannot reach the planning schema');
SELECT
    ok (NOT has_schema_privilege('anon', 'gameplay', 'USAGE')
        AND NOT has_schema_privilege('anon', 'planning', 'USAGE'),
        'signed-out visitors cannot reach the gameplay or planning schemas');
SELECT
    ok (NOT EXISTS (
            SELECT
                1
            FROM
                pg_catalog.pg_class AS relation
                INNER JOIN pg_catalog.pg_namespace AS namespace ON namespace.oid = relation.relnamespace
                CROSS JOIN unnest(ARRAY['anon', 'authenticated']) AS api_role (name)
            WHERE
                relation.relkind = 'r'
                AND namespace.nspname = 'public'
                AND relation.oid <> 'public.user_backups'::regclass
                AND has_table_privilege(api_role.name, relation.oid, 'SELECT, INSERT, UPDATE, DELETE')),
            'the API roles cannot touch any public table but the backups');
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
                AND relation.relname LIKE 'mainline\_%'
                AND (has_table_privilege('anon', relation.oid, 'SELECT')
                    OR has_table_privilege('authenticated', relation.oid, 'SELECT'))),
            'the API roles cannot read the views over your data');
SELECT
    ok (NOT EXISTS (
            SELECT
                1
            FROM
                pg_catalog.pg_proc AS routine
                INNER JOIN pg_catalog.pg_namespace AS namespace ON namespace.oid = routine.pronamespace
            WHERE
                namespace.nspname IN ('gameplay', 'planning')
                AND (has_function_privilege('anon', routine.oid, 'EXECUTE')
                    OR has_function_privilege('authenticated', routine.oid, 'EXECUTE'))),
            'the API roles cannot run the gameplay or planning functions');
SELECT
    ok (NOT EXISTS (
            SELECT
                1
            FROM
                pg_catalog.pg_class AS relation
                INNER JOIN pg_catalog.pg_namespace AS namespace ON namespace.oid = relation.relnamespace
            WHERE
                relation.relkind = 'r'
                AND (namespace.nspname IN ('gameplay', 'planning')
                    OR relation.oid IN ('public.profiles'::regclass, 'public.user_preferences'::regclass, 'public.tags'::regclass))
                AND (relation.relrowsecurity
                    OR EXISTS (
                        SELECT
                            1
                        FROM
                            pg_catalog.pg_policy AS POLICY
                        WHERE
                            policy.polrelid = relation.oid))), 'device-only tables carry no row security or policies');
SELECT
    ok (has_table_privilege('service_role', 'gameplay.mainline_plays', 'SELECT, INSERT, UPDATE, DELETE'),
        'the service role keeps its access for maintenance');
SELECT
    *
FROM
    finish ();
ROLLBACK;
