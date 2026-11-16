CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- FireRed / LeafGreen's Story in the pattern: Red / Blue's Main Story in this
-- walkthrough's order with the first Sevii Islands errand, one Pokémon League
-- milestone, the Sevii Islands quest for Celio as the Post Game that counts,
-- and the two battles the remake adds (the ghost Marowak and Gideon).
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
                mainline_milestones.version_group_id = 6
                AND mainline_categories.slug = 'main-story' ORDER BY mainline_milestones.sort_order $$, $$
            VALUES ('choose-starter', 'Professor Oak''s Laboratory'), ('receive-pokedex', 'Professor Oak''s Laboratory'), ('boulder-badge', 'Pewter Gym'), ('fossil-choice', 'Mt. Moon'), ('cascade-badge', 'Cerulean Gym'), ('bills-sea-cottage', 'Route 25'), ('ss-anne', 'S.S. Anne'), ('thunder-badge', 'Vermilion Gym'), ('rainbow-badge', 'Celadon Gym'), ('rocket-hideout', 'Rocket Hideout'), ('pokemon-tower', 'Pokémon Tower'), ('soul-badge', 'Fuchsia Gym'), ('safari-zone', 'Safari Zone'), ('silph-co', 'Silph Co.'), ('marsh-badge', 'Saffron Gym'), ('pokemon-mansion', 'Pokémon Mansion'), ('volcano-badge', 'Cinnabar Gym'), ('berry-forest', 'Berry Forest'), ('earth-badge', 'Viridian Gym'), ('pokemon-league', 'Indigo Plateau') $$, 'FireRed / LeafGreen''s Main Story follows its walkthrough, each beat at its place, and ends at the Pokémon League');
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, mainline_milestones.is_required_for_completion FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            WHERE
                mainline_milestones.version_group_id = 6
                AND mainline_categories.slug = 'post-game' ORDER BY mainline_milestones.sort_order $$, $$
            VALUES ('ruby-path'::text, TRUE), ('icefall-cave', TRUE), ('dotted-hole', TRUE), ('rocket-warehouse', TRUE), ('lost-cave', FALSE), ('trainer-tower', FALSE), ('tanoby-chambers', FALSE), ('cerulean-cave', FALSE), ('roaming-legendary-beast', FALSE) $$, 'the Sevii Islands quest counts, and what it opens is optional');
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, mainline_opponents.slug, pokemon_species.slug, mainline_opponent_team_members.level, (
                SELECT
                    string_agg(moves.slug, ', ' ORDER BY mainline_opponent_team_member_moves.slot)
                FROM tracking.mainline_opponent_team_member_moves
                JOIN reference.moves ON moves.id = mainline_opponent_team_member_moves.move_id
                WHERE
                    mainline_opponent_team_member_moves.team_member_id = mainline_opponent_team_members.id)
                FROM tracking.mainline_opponent_team_members
                JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
                JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_opponent_team_members.milestone_id
                JOIN reference.pokemon_species ON pokemon_species.id = mainline_opponent_team_members.species_id
                WHERE
                    mainline_opponents.slug IN ('marowak', 'gideon')
                    AND mainline_opponent_team_members.version_group_id = 6 ORDER BY mainline_opponents.slug DESC, mainline_opponent_team_members.slot $$, $$
                VALUES ('pokemon-tower'::text, 'marowak'::text, 'marowak'::text, 30, 'headbutt, leer, focus-energy, bonemerang'::text), ('rocket-warehouse', 'gideon', 'voltorb', 46, 'swift, screech, spark, sonic-boom'), ('rocket-warehouse', 'gideon', 'electrode', 46, 'spark, sonic-boom, screech, charge'), ('rocket-warehouse', 'gideon', 'magnemite', 46, 'screech, swift, spark, thunder-wave'), ('rocket-warehouse', 'gideon', 'magneton', 46, 'tri-attack, spark, thunder-wave, sonic-boom'), ('rocket-warehouse', 'gideon', 'porygon', 46, 'tri-attack, conversion, recover, psybeam') $$, 'the ghost Marowak and Gideon have the teams and moves the game gives them');
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
                    mainline_milestones.version_group_id = 6
                    AND mainline_milestones.slug = 'pokemon-league' ORDER BY mainline_milestone_opponent_refs.sort_order $$, $$
                VALUES (1, 'blue-rival'::text, 52, 18), (2, 'lorelei', NULL, 5), (3, 'bruno', NULL, 5), (4, 'agatha', NULL, 5), (5, 'lance', NULL, 5), (6, 'blue', NULL, 18) $$, 'FireRed / LeafGreen''s Pokémon League holds its six battles and their teams');
SELECT
    results_eq ($$
        SELECT
            COUNT(*)::integer, COUNT(location_id)::integer, COUNT(milestone_id)::integer FROM tracking.mainline_roadmap_steps
            WHERE
                version_group_id = 6 $$, $$
            VALUES (134, 99, 35) $$, 'FireRed / LeafGreen''s roadmap has 134 steps: 99 places and its 35 milestones');
SELECT
    *
FROM
    finish ();
ROLLBACK;
