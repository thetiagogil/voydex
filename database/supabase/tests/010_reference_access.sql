CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (6);
SET LOCAL ROLE anon;
SELECT
    lives_ok ($$
        SELECT
            id FROM reference.games LIMIT 1 $$, 'anonymous users can read reference data');
SELECT
    throws_ok ($$ INSERT INTO reference.games (id, slug, name, product_family_id, generation_id, region_id, version_group_id, game_type_id, sort_order)
            VALUES (999999, 'forbidden', 'Forbidden', 1, 1, 1, 1, 1, 999999) $$, '42501', 'permission denied for table games', 'anonymous users cannot insert reference data');
SELECT
    throws_ok ($$ INSERT INTO tracking.mainline_milestone_categories (id, version_group_id, slug, name, sort_order)
            VALUES (999999, 1, 'forbidden', 'Forbidden', 999999) $$, '42501', 'permission denied for schema tracking', 'anonymous users cannot insert tracking data');
RESET ROLE;
SET LOCAL ROLE authenticated;
SELECT
    lives_ok ($$
        SELECT
            id FROM tracking.mainline_milestones LIMIT 1 $$, 'authenticated users can read tracking definitions');
SELECT
    throws_ok ($$ UPDATE
            reference.games
        SET
            name = 'Forbidden'
            WHERE
                id = 1 $$, '42501', 'permission denied for table games', 'authenticated users cannot update reference data');
SELECT
    throws_ok ($$ DELETE FROM tracking.mainline_milestones
        WHERE id = 1 $$, '42501', 'permission denied for table mainline_milestones', 'authenticated users cannot delete tracking data');
RESET ROLE;
SELECT
    *
FROM
    finish ();
ROLLBACK;
