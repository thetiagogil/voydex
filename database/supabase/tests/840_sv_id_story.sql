CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- The Indigo Disk's Story in the pattern: every beat at its place, on the
-- roadmap once, with the academy's places between them.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (4);
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, locations.name FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN reference.locations ON locations.id = mainline_milestones.location_id
            WHERE
                mainline_milestones.version_group_id = 25
                AND mainline_categories.slug = 'dlc-story' ORDER BY mainline_milestones.sort_order, mainline_milestones.id $$, $$
            VALUES ('arrive-blueberry-academy'::text, 'Blueberry Academy'::text), ('bb-elite-four-crispin', 'Savanna Biome'), ('bb-elite-four-amarys', 'Canyon Biome'), ('bb-elite-four-lacey', 'Coastal Biome'), ('bb-elite-four-drayton', 'Polar Biome'), ('bb-champion-kieran', 'Blueberry Academy'), ('terapagos-battle', 'Area Zero Underdepths') $$, 'The Indigo Disk''s Main Story follows its walkthrough, each beat at its place, and in order');
SELECT
    results_eq ($$
        SELECT
            mainline_categories.slug, mainline_milestones.slug, locations.name FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN reference.locations ON locations.id = mainline_milestones.location_id
            WHERE
                mainline_milestones.version_group_id = 25
                AND mainline_categories.slug <> 'dlc-story' ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order, mainline_milestones.id $$, $$
            VALUES ('side-content'::text, 'mochi-mayhem'::text, 'Mossui Town'::text), ('side-content', 'coastal-biome', 'Coastal Biome'), ('side-content', 'perrins-paradox-photos', 'Area Zero'), ('side-content', 'snacksworth-legendary-treats', 'Blueberry Academy') $$, 'The Indigo Disk''s optional beats sit in their chapters, each at its place');
SELECT
    results_eq ($$
        SELECT
            mainline_milestone_opponent_refs.sort_order, mainline_opponents.slug, mainline_milestone_opponent_refs.location_id, (
                SELECT
                    COUNT(*)::integer FROM tracking.mainline_opponent_team_members
                WHERE
                    mainline_opponent_team_members.milestone_id = mainline_milestone_opponent_refs.milestone_id
                    AND mainline_opponent_team_members.opponent_id = mainline_milestone_opponent_refs.opponent_id)
                FROM tracking.mainline_milestone_opponent_refs
                JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
                JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
                WHERE
                    mainline_milestones.version_group_id = 25
                    AND mainline_milestones.slug = 'bb-champion-kieran' ORDER BY mainline_milestone_opponent_refs.sort_order $$, $$
                VALUES (1, 'kieran'::text, NULL::integer, 6) $$, 'The Indigo Disk''s closing milestone holds its battles in order, each with its team');
SELECT
    results_eq ($$
        SELECT
            COUNT(*)::integer, COUNT(location_id)::integer, COUNT(milestone_id)::integer FROM tracking.mainline_roadmap_steps
            WHERE
                version_group_id = 25 $$, $$
            VALUES (25, 14, 11) $$, 'The Indigo Disk''s roadmap has 25 steps: 14 places and its 11 milestones');
SELECT
    *
FROM
    finish ();
ROLLBACK;
