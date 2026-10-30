CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Each colour of Ominous Stake sits where its shrine's eight stakes are: the
-- purple ones around South Province, the yellow ones in West Province (Area
-- One) and the south-west, the green ones around Casseroya Lake and the
-- light-blue ones mostly in North Province.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (5);
SELECT
    results_eq ($$
        SELECT
            collectible_id, location_label, COALESCE(sub_location_label, ''), COUNT(*)::integer FROM tracking.mainline_collectible_entries
            WHERE
                collectible_id IN (23001, 23002, 23003, 23004)
            GROUP BY collectible_id, location_label, sub_location_label ORDER BY collectible_id, MIN(sort_order) $$, $$
            VALUES (23001, 'South Province'::text, 'Area One'::text, 1), (23001, 'South Province', 'Area Three', 2), (23001, 'South Province', 'Area Four', 1), (23001, 'South Province', 'Area Five', 4), (23002, 'West Province', 'Area One', 4), (23002, 'Cascarrafa', '', 1), (23002, 'South Province', 'Area Two', 1), (23002, 'South Province', 'Area Six', 2), (23003, 'West Province', 'Area Two', 2), (23003, 'West Province', 'Area Three', 1), (23003, 'Casseroya Lake', '', 5), (23004, 'North Province', 'Area One', 3), (23004, 'North Province', 'Area Two', 3), (23004, 'Glaseado Mountain', '', 1), (23004, 'East Province', 'Area Two', 1) $$, 'each colour''s stakes are in its shrine''s areas');
SELECT
    is_empty ($$
        SELECT
            id FROM tracking.mainline_collectible_entries
            WHERE
                collectible_id = 23002
                AND location_label = 'North Province' $$, 'no yellow stake is in North Province');
SELECT
    is_empty ($$
        SELECT
            id FROM tracking.mainline_collectible_entries
            WHERE
                collectible_id = 23004
                AND location_label = 'West Province' $$, 'no light-blue stake is in West Province');
SELECT
    results_eq ($$
        SELECT
            collectible_id, COUNT(*)::integer FROM tracking.mainline_collectible_entries
            WHERE
                collectible_id IN (23001, 23002, 23003, 23004)
            GROUP BY collectible_id ORDER BY collectible_id $$, $$
            VALUES (23001, 8), (23002, 8), (23003, 8), (23004, 8) $$, 'eight stakes of each colour');
SELECT
    IS ((
            SELECT
                description
            FROM
                tracking.mainline_collectible_entries
            WHERE
                slug = 'purple-stake-8'), 'Where Area Five meets Artazon and East Province (Area One).', 'the corner stake says where it is');
SELECT
    *
FROM
    finish ();
ROLLBACK;
