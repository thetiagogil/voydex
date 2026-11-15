CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Sword / Shield's Story in the pattern: Main Story follows the walkthrough
-- through Galar, each badge at its Stadium, the rivals' battles on the way
-- name their places, and the Champion Cup, Eternatus and Leon close it.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (5);
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, locations.name FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN reference.locations ON locations.id = mainline_milestones.location_id
            WHERE
                mainline_milestones.version_group_id = 18
                AND mainline_categories.slug = 'main-story' ORDER BY mainline_milestones.sort_order, mainline_milestones.id $$, $$
            VALUES ('choose-starter'::text, 'Postwick'::text), ('receive-pokedex', 'Wedgehurst'), ('grass-badge', 'Turffield Stadium'), ('water-badge', 'Hulbury Stadium'), ('fire-badge', 'Motostoke Stadium'), ('fighting-badge', 'Stow-on-Side Stadium'), ('ghost-badge', 'Stow-on-Side Stadium'), ('fairy-badge', 'Ballonlea Stadium'), ('rock-badge', 'Circhester Stadium'), ('ice-badge', 'Circhester Stadium'), ('dark-badge', 'Spikemuth Gym'), ('dragon-badge', 'Hammerlocke Stadium'), ('champion-cup', 'Wyndon Stadium'), ('defeat-eternatus', 'Energy Plant'), ('champion-leon', 'Wyndon Stadium') $$, 'Sword / Shield''s Main Story follows its walkthrough, each beat at its place, and in order');
SELECT
    results_eq ($$
        SELECT
            mainline_categories.slug, mainline_milestones.slug, locations.name FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN reference.locations ON locations.id = mainline_milestones.location_id
            WHERE
                mainline_milestones.version_group_id = 18
                AND mainline_categories.slug <> 'main-story' ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order, mainline_milestones.id $$, $$
            VALUES ('post-game'::text, 'post-game-episode'::text, 'Slumbering Weald'::text) $$, 'Sword / Shield''s optional beats sit in their chapters, each at its place');
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
                    mainline_milestones.version_group_id = 18
                    AND mainline_milestones.slug = 'champion-leon' ORDER BY mainline_milestone_opponent_refs.sort_order $$, $$
                VALUES (1, 'leon'::text, NULL::integer, 18) $$, 'Sword / Shield''s closing milestone holds its battles in order, each with its team');
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, mainline_opponents.slug, locations.name FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            JOIN reference.locations ON locations.id = mainline_milestone_opponent_refs.location_id
            WHERE
                mainline_milestones.version_group_id = 18 ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order, mainline_milestones.id, mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES ('grass-badge'::text, 'hop-route-2'::text, 'Route 2'::text), ('grass-badge', 'hop', 'Motostoke'), ('grass-badge', 'bede', 'Galar Mine'), ('water-badge', 'hop', 'Route 5'), ('fire-badge', 'bede', 'Galar Mine No. 2'), ('fire-badge', 'marnie', 'Motostoke'), ('fighting-badge', 'hop', 'Stow-on-Side'), ('ghost-badge', 'hop', 'Stow-on-Side'), ('rock-badge', 'hop', 'Route 7'), ('ice-badge', 'hop', 'Route 7'), ('dark-badge', 'hop', 'Circhester'), ('dark-badge', 'marnie', 'Route 9') $$, 'Sword / Shield''s battles fought away from their beat name their places');
SELECT
    results_eq ($$
        SELECT
            COUNT(*)::integer, COUNT(location_id)::integer, COUNT(milestone_id)::integer FROM tracking.mainline_roadmap_steps
            WHERE
                version_group_id = 18 $$, $$
            VALUES (50, 34, 16) $$, 'Sword / Shield''s roadmap has 50 steps: 34 places and its 16 milestones');
SELECT
    *
FROM
    finish ();
ROLLBACK;
