CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Crystal's Story in the pattern, on Gold / Silver's route with Crystal's own
-- changes: the Burned Tower is a required Main Story beat, Suicune is its own
-- optional beat at the Tin Tower, Eusine battles you in Cianwood City, and
-- the Tin Tower for Ho-Oh, the Whirl Islands and the Ilex Forest shrine open
-- later.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (6);
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, locations.name FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN reference.locations ON locations.id = mainline_milestones.location_id
            WHERE
                mainline_milestones.version_group_id = 4
                AND mainline_categories.slug = 'main-story' ORDER BY mainline_milestones.sort_order $$, $$
            VALUES ('choose-starter', 'Professor Elm''s Laboratory'), ('receive-pokedex', 'Mr. Pokémon''s House'), ('zephyr-badge', 'Violet Gym'), ('slowpoke-well', 'Slowpoke Well'), ('hive-badge', 'Azalea Gym'), ('ilex-forest', 'Ilex Forest'), ('plain-badge', 'Goldenrod Gym'), ('burned-tower', 'Burned Tower'), ('fog-badge', 'Ecruteak Gym'), ('storm-badge', 'Cianwood Gym'), ('olivine-lighthouse', 'Olivine Lighthouse'), ('mineral-badge', 'Olivine Gym'), ('lake-of-rage', 'Lake of Rage'), ('team-rocket-hq', 'Team Rocket HQ'), ('glacier-badge', 'Mahogany Gym'), ('radio-tower', 'Goldenrod Radio Tower'), ('rising-badge', 'Blackthorn Gym'), ('pokemon-league', 'Indigo Plateau') $$, 'Crystal''s Main Story follows the walkthrough, with the Burned Tower before the Fog Badge, and ends at the Pokémon League');
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, prerequisite_milestones.slug FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN tracking.mainline_milestone_prerequisites ON mainline_milestone_prerequisites.milestone_id = mainline_milestones.id
            JOIN tracking.mainline_milestones AS prerequisite_milestones ON prerequisite_milestones.id = mainline_milestone_prerequisites.prerequisite_milestone_id
            WHERE
                mainline_milestones.version_group_id = 4
                AND mainline_categories.slug = 'side-content' ORDER BY mainline_milestones.sort_order $$, $$
            VALUES ('roaming-raikou'::text, 'burned-tower'::text), ('roaming-entei', 'burned-tower'), ('suicune', 'radio-tower'), ('tin-tower', 'pokemon-league'), ('whirl-islands', 'boulder-badge'), ('ilex-forest-shrine', 'pokemon-league') $$, 'Crystal''s optional beats and the beat that opens each');
-- Eusine's battle sits on Cianwood City, with the team the game gives him.
SELECT
    results_eq ($$
        SELECT
            locations.name, mainline_milestones.slug FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN reference.locations ON locations.id = mainline_milestone_opponent_refs.location_id
            WHERE
                mainline_opponents.slug = 'eusine'
                AND mainline_milestone_opponent_refs.version_group_id = 4 $$, $$
            VALUES ('Cianwood City'::text, 'olivine-lighthouse'::text) $$, 'Eusine is met in Cianwood City, on the way to the Olivine Lighthouse beat');
SELECT
    results_eq ($$
        SELECT
            pokemon_species.slug, mainline_opponent_team_members.level, (
                SELECT
                    string_agg(moves.slug, ', ' ORDER BY mainline_opponent_team_member_moves.slot)
                FROM tracking.mainline_opponent_team_member_moves
                JOIN reference.moves ON moves.id = mainline_opponent_team_member_moves.move_id
                WHERE
                    mainline_opponent_team_member_moves.team_member_id = mainline_opponent_team_members.id)
                FROM tracking.mainline_opponent_team_members
                JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
                JOIN reference.pokemon_species ON pokemon_species.id = mainline_opponent_team_members.species_id
                WHERE
                    mainline_opponents.slug = 'eusine'
                    AND mainline_opponent_team_members.version_group_id = 4 ORDER BY mainline_opponent_team_members.slot $$, $$
                VALUES ('drowzee'::text, 23, 'dream-eater, hypnosis, disable, confusion'::text), ('haunter', 23, 'lick, hypnosis, mean-look, curse'), ('electrode', 25, 'screech, sonic-boom, thunder, rollout') $$, 'Eusine''s team and moves are the game''s');
-- Suicune moved to its own beat with its team.
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, mainline_opponents.slug, (
                SELECT
                    COUNT(*)::integer FROM tracking.mainline_opponent_team_members
                WHERE
                    mainline_opponent_team_members.milestone_id = mainline_milestone_opponent_refs.milestone_id
                    AND mainline_opponent_team_members.opponent_id = mainline_milestone_opponent_refs.opponent_id)
                FROM tracking.mainline_milestone_opponent_refs
                JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
                JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
                WHERE
                    mainline_milestones.version_group_id = 4
                    AND mainline_milestones.slug IN ('suicune', 'tin-tower')
                ORDER BY mainline_milestones.sort_order $$, $$
                VALUES ('suicune'::text, 'suicune'::text, 1), ('tin-tower', 'ho-oh', 1) $$, 'Suicune is its own beat and the Tin Tower beat is Ho-Oh''s');
SELECT
    results_eq ($$
        SELECT
            COUNT(*)::integer, COUNT(location_id)::integer, COUNT(milestone_id)::integer FROM tracking.mainline_roadmap_steps
            WHERE
                version_group_id = 4 $$, $$
            VALUES (140, 106, 34) $$, 'Crystal''s roadmap has 140 steps: 106 places and its 34 milestones');
SELECT
    *
FROM
    finish ();
ROLLBACK;
