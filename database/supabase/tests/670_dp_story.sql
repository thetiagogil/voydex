CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Diamond / Pearl's Story in the pattern: Main Story follows the walkthrough
-- through Sinnoh with the beats the game forces between badges and ends at
-- one Pokémon League milestone, each Commander sits on the beat where she or
-- he is fought, and Barry's battles on the way name their places.
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
                mainline_milestones.version_group_id = 8
                AND mainline_categories.slug = 'main-story' ORDER BY mainline_milestones.sort_order $$, $$
            VALUES ('choose-starter'::text, 'Lake Verity'::text), ('receive-pokedex', 'Professor Rowan''s Laboratory'), ('coal-badge', 'Oreburgh Gym'), ('valley-windworks', 'Valley Windworks'), ('forest-badge', 'Eterna Gym'), ('galactic-eterna-building', 'Team Galactic Eterna Building'), ('cobble-badge', 'Veilstone Gym'), ('fen-badge', 'Pastoria Gym'), ('celestic-town', 'Celestic Town'), ('relic-badge', 'Hearthome Gym'), ('mine-badge', 'Canalave Gym'), ('lake-valor', 'Lake Valor'), ('lake-verity', 'Lake Verity'), ('icicle-badge', 'Snowpoint Gym'), ('galactic-hq', 'Team Galactic HQ'), ('spear-pillar', 'Spear Pillar'), ('beacon-badge', 'Sunyshore Gym'), ('pokemon-league', 'Pokémon League') $$, 'Diamond / Pearl''s Main Story follows its walkthrough, each beat at its place, and ends at the Pokémon League');
SELECT
    results_eq ($$
        SELECT
            mainline_categories.slug, mainline_milestones.slug, locations.name FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN reference.locations ON locations.id = mainline_milestones.location_id
            WHERE
                mainline_milestones.version_group_id = 8
                AND mainline_categories.slug <> 'main-story' ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order $$, $$
            VALUES ('post-game'::text, 'fight-area'::text, 'Fight Area'::text), ('post-game', 'stark-mountain', 'Stark Mountain'), ('side-content', 'lake-guardians', 'Lake Verity'), ('side-content', 'turnback-cave', 'Turnback Cave'), ('side-content', 'roaming-cresselia', 'Fullmoon Island'), ('side-content', 'snowpoint-temple', 'Snowpoint Temple') $$, 'Diamond / Pearl''s optional beats sit in their chapters, each at its place');
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
                    mainline_milestones.version_group_id = 8
                    AND mainline_milestones.slug = 'pokemon-league' ORDER BY mainline_milestone_opponent_refs.sort_order $$, $$
                VALUES (1, 'barry'::text, NULL::integer, 18), (2, 'aaron', NULL, 5), (3, 'bertha', NULL, 5), (4, 'flint', NULL, 5), (5, 'lucian', NULL, 5), (6, 'cynthia', NULL, 6) $$, 'Diamond / Pearl''s Pokémon League holds its battles in order, each with its team');
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, mainline_opponents.slug, locations.name FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            JOIN reference.locations ON locations.id = mainline_milestone_opponent_refs.location_id
            WHERE
                mainline_milestones.version_group_id = 8 ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order, mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES ('coal-badge'::text, 'barry'::text, 'Route 203'::text), ('cobble-badge', 'barry', 'Hearthome City'), ('celestic-town', 'barry', 'Pastoria City'), ('mine-badge', 'barry', 'Canalave City') $$, 'Diamond / Pearl''s battles fought away from their beat name their places');
SELECT
    results_eq ($$
        SELECT
            COUNT(*)::integer, COUNT(location_id)::integer, COUNT(milestone_id)::integer FROM tracking.mainline_roadmap_steps
            WHERE
                version_group_id = 8 $$, $$
            VALUES (98, 74, 24) $$, 'Diamond / Pearl''s roadmap has 98 steps: 74 places and its 24 milestones');
SELECT
    *
FROM
    finish ();
ROLLBACK;
