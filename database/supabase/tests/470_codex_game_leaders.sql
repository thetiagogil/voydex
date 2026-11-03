CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- The Codex game page, signed out: every Gym Leader, kahuna and Champion
-- names where it is fought, every region and version group has a
-- description, and anonymous visitors can read the opponents and their
-- teams (for each leader's ace) but still nothing else of tracking.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (14);
SELECT
    has_column ('tracking', 'mainline_opponents', 'place', 'an opponent can name where it is fought');
SELECT
    is_empty ($$
        SELECT
            id FROM tracking.mainline_opponents
            WHERE
                opponent_role IN ('gym-leader', 'kahuna', 'champion')
                AND place IS NULL $$, 'every Gym Leader, kahuna and Champion names its place');
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                tracking.mainline_opponents
            WHERE
                place IS NOT NULL), 203, 'the 172 Gym Leaders, 9 kahunas and 22 Champions carry a place, and nobody else');
SELECT
    results_eq ($$
        SELECT
            id, place FROM tracking.mainline_opponents
            WHERE
                id IN (1001, 10020, 15009, 16052, 18012, 23014, 25005, 14050)
            ORDER BY id $$, $$
            VALUES (1001, 'Pewter City'), (10020, 'Seafoam Islands'), (14050, 'Sky Pillar'), (15009, 'Malie City'), (16052, 'Aether House'), (18012, 'Wyndon'), (23014, 'Mesagoza'), (25005, 'Blueberry Academy') $$, 'places follow each game: Blaine moved to the Seafoam Islands, Nanu holds his grand trial in Malie City and stands in at the Aether House, Nemona battles in Mesagoza');
SELECT
    throws_ok ($$ UPDATE
            tracking.mainline_opponents
        SET
            place = '   '
            WHERE
                id = 1001 $$, '23514', NULL, 'a blank place is refused');
SELECT
    col_not_null ('reference', 'regions', 'description', 'every region has a description');
SELECT
    col_not_null ('reference', 'version_groups', 'description', 'every version group has a description');
SELECT
    is_empty ($$
        SELECT
            id FROM reference.regions
            WHERE
                CHAR_LENGTH(BTRIM(description)) < 40 $$, 'no region description is a stub');
SELECT
    is_empty ($$
        SELECT
            id FROM reference.version_groups
            WHERE
                CHAR_LENGTH(BTRIM(description)) < 40 $$, 'no version group description is a stub');
SELECT
    throws_ok ($$ UPDATE
            reference.version_groups
        SET
            description = REPEAT('x', 601)
            WHERE
                id = 1 $$, '23514', NULL, 'a description stays short');
SET LOCAL ROLE anon;
SELECT
    isnt_empty ($$
        SELECT
            id FROM tracking.mainline_opponents
            WHERE
                place IS NOT NULL $$, 'anonymous visitors read the opponents, for the Codex game page');
SELECT
    isnt_empty ($$
        SELECT
            id FROM tracking.mainline_opponent_team_members $$, 'anonymous visitors read the opponents'' teams, for each leader''s ace');
SELECT
    throws_ok ($$
        SELECT
            id FROM tracking.mainline_milestones LIMIT 1 $$, '42501', 'permission denied for table mainline_milestones', 'anonymous visitors still cannot read milestones');
SELECT
    throws_ok ($$ UPDATE
            tracking.mainline_opponents
        SET
            place = 'Nowhere'
            WHERE
                id = 1001 $$, '42501', 'permission denied for table mainline_opponents', 'anonymous visitors cannot change an opponent');
RESET ROLE;
SELECT
    *
FROM
    finish ();
ROLLBACK;
