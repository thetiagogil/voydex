CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Platinum's Story in the pattern: Diamond / Pearl's route in Platinum's own
-- order (Fantina third), with Barry's first battle on Route 201, Cyrus in
-- Celestic Town and the Distortion World in place of the Spear Pillar's
-- battle with Dialga or Palkia.
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
                mainline_milestones.version_group_id = 9
                AND mainline_categories.slug = 'main-story' ORDER BY mainline_milestones.sort_order $$, $$
            VALUES ('choose-starter'::text, 'Route 201'::text), ('receive-pokedex', 'Professor Rowan''s Laboratory'), ('coal-badge', 'Oreburgh Gym'), ('valley-windworks', 'Valley Windworks'), ('forest-badge', 'Eterna Gym'), ('galactic-eterna-building', 'Team Galactic Eterna Building'), ('relic-badge', 'Hearthome Gym'), ('cobble-badge', 'Veilstone Gym'), ('fen-badge', 'Pastoria Gym'), ('celestic-town', 'Celestic Town'), ('mine-badge', 'Canalave Gym'), ('lake-valor', 'Lake Valor'), ('lake-verity', 'Lake Verity'), ('icicle-badge', 'Snowpoint Gym'), ('galactic-hq', 'Team Galactic HQ'), ('distortion-world', 'Distortion World'), ('beacon-badge', 'Sunyshore Gym'), ('pokemon-league', 'Pokémon League') $$, 'Platinum''s Main Story follows its walkthrough, each beat at its place, and ends at the Pokémon League');
SELECT
    results_eq ($$
        SELECT
            mainline_categories.slug, mainline_milestones.slug, locations.name FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN reference.locations ON locations.id = mainline_milestones.location_id
            WHERE
                mainline_milestones.version_group_id = 9
                AND mainline_categories.slug <> 'main-story' ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order $$, $$
            VALUES ('post-game'::text, 'stark-mountain'::text, 'Stark Mountain'::text), ('side-content', 'lake-guardians', 'Lake Valor'), ('side-content', 'roaming-mesprit', 'Lake Verity'), ('side-content', 'roaming-cresselia', 'Fullmoon Island'), ('side-content', 'snowpoint-temple', 'Snowpoint Temple'), ('side-content', 'spear-pillar', 'Spear Pillar'), ('side-content', 'roaming-articuno', 'Eterna City'), ('side-content', 'roaming-zapdos', 'Eterna City'), ('side-content', 'roaming-moltres', 'Eterna City') $$, 'Platinum''s optional beats sit in their chapters, each at its place');
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
                    mainline_milestones.version_group_id = 9
                    AND mainline_milestones.slug = 'pokemon-league' ORDER BY mainline_milestone_opponent_refs.sort_order $$, $$
                VALUES (1, 'barry'::text, NULL::integer, 18), (2, 'aaron', NULL, 5), (3, 'bertha', NULL, 5), (4, 'flint', NULL, 5), (5, 'lucian', NULL, 5), (6, 'cynthia', NULL, 6) $$, 'Platinum''s Pokémon League holds its battles in order, each with its team');
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, mainline_opponents.slug, locations.name FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            JOIN reference.locations ON locations.id = mainline_milestone_opponent_refs.location_id
            WHERE
                mainline_milestones.version_group_id = 9 ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order, mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES ('coal-badge'::text, 'barry'::text, 'Route 203'::text), ('cobble-badge', 'barry', 'Hearthome City'), ('fen-badge', 'barry', 'Pastoria City'), ('mine-badge', 'barry', 'Canalave City'), ('distortion-world', 'mars-jupiter', 'Spear Pillar') $$, 'Platinum''s battles fought away from their beat name their places');
SELECT
    results_eq ($$
        SELECT
            COUNT(*)::integer, COUNT(location_id)::integer, COUNT(milestone_id)::integer FROM tracking.mainline_roadmap_steps
            WHERE
                version_group_id = 9 $$, $$
            VALUES (130, 103, 27) $$, 'Platinum''s roadmap has 130 steps: 103 places and its 27 milestones');
SELECT
    *
FROM
    finish ();
ROLLBACK;
