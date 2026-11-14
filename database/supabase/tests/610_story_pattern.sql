CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- The Story pattern every reviewed game follows (Red / Blue first, then
-- Yellow): a game with a roadmap has every milestone at a place and on the
-- roadmap once, each badge at its Gym, one Pokémon League milestone closing
-- Main Story with no League chapter, a note on every place step, and plain
-- sentences in its notes and descriptions. Yellow walks the same Kanto as
-- Red / Blue, so its roadmap has the same steps.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (14);
-- The games reviewed so far.
SELECT
    results_eq ($$ SELECT DISTINCT
            version_groups.slug FROM tracking.mainline_roadmap_steps
            JOIN reference.version_groups ON version_groups.id = mainline_roadmap_steps.version_group_id ORDER BY version_groups.slug $$, $$
        VALUES ('rb'::text), ('yellow') $$, 'Red / Blue and Yellow have a Story roadmap');
-- Every milestone of a game with a roadmap happens at a place.
SELECT
    is_empty ($$
        SELECT
            mainline_milestones.id FROM tracking.mainline_milestones
            WHERE
                mainline_milestones.location_id IS NULL
                AND mainline_milestones.version_group_id IN (
                    SELECT
                        version_group_id
                    FROM tracking.mainline_roadmap_steps) $$, 'every milestone of a game with a roadmap has its place');
-- Every milestone of a game with a roadmap is one step.
SELECT
    is_empty ($$
        SELECT
            mainline_milestones.id FROM tracking.mainline_milestones
        LEFT JOIN tracking.mainline_roadmap_steps ON mainline_roadmap_steps.milestone_id = mainline_milestones.id
        WHERE
            mainline_milestones.version_group_id IN (
                SELECT
                    version_group_id
                FROM tracking.mainline_roadmap_steps)
    GROUP BY mainline_milestones.id
    HAVING
        COUNT(mainline_roadmap_steps.id) <> 1 $$, 'every milestone of a game with a roadmap is on it exactly once');
-- A badge is won at its Gym, not in the city.
SELECT
    is_empty ($$
        SELECT
            mainline_milestones.id FROM tracking.mainline_milestones
            JOIN tracking.mainline_milestone_types ON mainline_milestone_types.id = mainline_milestones.milestone_type_id
            JOIN reference.locations ON locations.id = mainline_milestones.location_id
            WHERE
                mainline_milestone_types.slug = 'gym'
                AND locations.name NOT LIKE '% Gym'
                AND mainline_milestones.version_group_id IN (
                    SELECT
                        version_group_id
                    FROM tracking.mainline_roadmap_steps) $$, 'every Gym milestone of a game with a roadmap is at its Gym');
-- The League is one milestone, so there is no League chapter and no Elite Four or Hall of Fame milestone.
SELECT
    is_empty ($$
        SELECT
            mainline_categories.id FROM tracking.mainline_categories
            WHERE
                mainline_categories.slug = 'pokemon-league'
                AND mainline_categories.version_group_id IN (
                    SELECT
                        version_group_id
                    FROM tracking.mainline_roadmap_steps) $$, 'a game with a roadmap has no Pokémon League chapter');
SELECT
    is_empty ($$
        SELECT
            mainline_milestones.id FROM tracking.mainline_milestones
            JOIN tracking.mainline_milestone_types ON mainline_milestone_types.id = mainline_milestones.milestone_type_id
            WHERE
                mainline_milestone_types.slug IN ('elite-four', 'hall-of-fame')
                AND mainline_milestones.version_group_id IN (
                    SELECT
                        version_group_id
                    FROM tracking.mainline_roadmap_steps) $$, 'a game with a roadmap has no Elite Four or Hall of Fame milestone');
-- Every place step says what happens there, in plain sentences.
SELECT
    is_empty ($$
        SELECT
            mainline_roadmap_steps.id FROM tracking.mainline_roadmap_steps
            WHERE
                mainline_roadmap_steps.location_id IS NOT NULL
                AND (mainline_roadmap_steps.note IS NULL
                    OR mainline_roadmap_steps.note LIKE '%;%'
                    OR mainline_roadmap_steps.note NOT LIKE '%.') $$, 'every place step has a note of full sentences, with no semicolon');
SELECT
    is_empty ($$
        SELECT
            mainline_milestones.id FROM tracking.mainline_milestones
            WHERE (mainline_milestones.description IS NULL
                OR mainline_milestones.description LIKE '%;%'
                OR mainline_milestones.description NOT LIKE '%.')
            AND mainline_milestones.version_group_id IN (
                SELECT
                    version_group_id
                FROM tracking.mainline_roadmap_steps) $$, 'every milestone of a game with a roadmap is described in full sentences, with no semicolon');
-- Yellow's chapters and Main Story, in Red / Blue's order, each beat at its place.
SELECT
    results_eq ($$
        SELECT
            slug, chapter_kind, sort_order FROM tracking.mainline_categories
            WHERE
                version_group_id = 2 ORDER BY sort_order $$, $$
            VALUES ('main-story'::text, 'main-story'::text, 1), ('post-game', 'post-game', 2), ('side-content', 'side-content', 3) $$, 'Yellow''s chapters are Main Story, Post Game and Side Content');
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, locations.name FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN reference.locations ON locations.id = mainline_milestones.location_id
            WHERE
                mainline_milestones.version_group_id = 2
                AND mainline_categories.slug = 'main-story' ORDER BY mainline_milestones.sort_order $$, $$
            VALUES ('receive-pikachu', 'Professor Oak''s Laboratory'), ('receive-pokedex', 'Professor Oak''s Laboratory'), ('boulder-badge', 'Pewter Gym'), ('fossil-choice', 'Mt. Moon'), ('cascade-badge', 'Cerulean Gym'), ('bills-sea-cottage', 'Route 25'), ('ss-anne', 'S.S. Anne'), ('thunder-badge', 'Vermilion Gym'), ('rainbow-badge', 'Celadon Gym'), ('rocket-hideout', 'Rocket Hideout'), ('pokemon-tower', 'Pokémon Tower'), ('silph-co', 'Silph Co.'), ('marsh-badge', 'Saffron Gym'), ('soul-badge', 'Fuchsia Gym'), ('safari-zone', 'Safari Zone'), ('pokemon-mansion', 'Pokémon Mansion'), ('volcano-badge', 'Cinnabar Gym'), ('earth-badge', 'Viridian Gym'), ('pokemon-league', 'Indigo Plateau') $$, 'Yellow''s Main Story follows Red / Blue''s order, each beat at its place, and ends at the Pokémon League');
-- Yellow's League fights Blue on Route 22, the Elite Four, then Champion Blue, each with its team.
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
                    mainline_milestones.version_group_id = 2
                    AND mainline_milestones.slug = 'pokemon-league' ORDER BY mainline_milestone_opponent_refs.sort_order $$, $$
                VALUES (1, 'blue-rival'::text, 52, 18), (2, 'lorelei', NULL, 5), (3, 'bruno', NULL, 5), (4, 'agatha', NULL, 5), (5, 'lance', NULL, 5), (6, 'blue', NULL, 18) $$, 'Yellow''s Pokémon League holds its six battles and their teams');
-- Yellow's Pokémon Tower: Blue, the ghost Marowak with the moves Yellow gives it, then Jessie & James.
SELECT
    results_eq ($$
        SELECT
            mainline_milestone_opponent_refs.sort_order, mainline_opponents.slug FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            WHERE
                mainline_milestones.version_group_id = 2
                AND mainline_milestones.slug = 'pokemon-tower' ORDER BY mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES (1, 'blue-rival'::text), (2, 'marowak'), (3, 'jessie-james') $$, 'Yellow''s Pokémon Tower fights Blue, the ghost Marowak, then Jessie & James');
SELECT
    results_eq ($$
        SELECT
            mainline_opponent_team_members.level, string_agg(moves.slug, ', ' ORDER BY mainline_opponent_team_member_moves.slot)
            FROM tracking.mainline_opponent_team_member_moves
            JOIN tracking.mainline_opponent_team_members ON mainline_opponent_team_members.id = mainline_opponent_team_member_moves.team_member_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            JOIN reference.moves ON moves.id = mainline_opponent_team_member_moves.move_id
            WHERE
                mainline_opponents.slug = 'marowak'
                AND mainline_opponent_team_members.version_group_id = 2 GROUP BY mainline_opponent_team_members.level $$, $$
            VALUES (30, 'bone-club, tail-whip, headbutt, leer'::text) $$, 'Yellow''s ghost Marowak is level 30 and knows Bone Club, Tail Whip, Headbutt and Leer');
-- Yellow's roadmap has Red / Blue's steps: the same places and beats in the same order.
SELECT
    results_eq ($$
        SELECT
            mainline_roadmap_steps.sort_order, mainline_roadmap_steps.location_id, REPLACE(mainline_milestones.slug, 'choose-starter', 'receive-pikachu')
            FROM tracking.mainline_roadmap_steps
        LEFT JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_roadmap_steps.milestone_id
        WHERE
            mainline_roadmap_steps.version_group_id = 1 ORDER BY mainline_roadmap_steps.sort_order $$, $$
            SELECT
                mainline_roadmap_steps.sort_order, mainline_roadmap_steps.location_id, mainline_milestones.slug FROM tracking.mainline_roadmap_steps
            LEFT JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_roadmap_steps.milestone_id
            WHERE
                mainline_roadmap_steps.version_group_id = 2 ORDER BY mainline_roadmap_steps.sort_order $$, 'Yellow''s roadmap matches Red / Blue''s step for step');
SELECT
    *
FROM
    finish ();
ROLLBACK;
