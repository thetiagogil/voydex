CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Story places: a milestone happens at one of its version group's places,
-- which pins it on the Story roadmap, and a battle fought away from that
-- place names its own (Red / Blue's Route 22 rival fights). Red / Blue is
-- the first journey placed, in the order its story reaches each beat.
BEGIN;
SET LOCAL search_path = extensions, public;
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000e1', 'authenticated', 'authenticated', 'story-places@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW()), ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000e2', 'authenticated', 'authenticated', 'story-places-other@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW());
INSERT INTO gameplay.mainline_plays (id, user_id, game_id, version_group_id, status_id, name)
    VALUES ('60000000-0000-0000-0000-0000000000e1', '00000000-0000-0000-0000-0000000000e1', 1, 1, 2, 'Places Red');
SELECT
    plan (16);
SELECT
    has_column ('tracking', 'mainline_milestones', 'location_id', 'a milestone has a place');
SELECT
    has_column ('tracking', 'mainline_milestone_opponent_refs', 'location_id', 'a Story battle can have its own place');
-- Every Red / Blue milestone has a place.
SELECT
    is_empty ($$
        SELECT
            slug FROM tracking.mainline_milestones
            WHERE
                version_group_id = 1
                AND location_id IS NULL $$, 'every Red / Blue milestone has a place');
-- A place must be one of the milestone's version group's places: Route 26 is Johto's, not Red / Blue's.
SELECT
    throws_ok ($$ UPDATE
            tracking.mainline_milestones
        SET
            location_id = 107
            WHERE
                id = 10001 $$, '23503', NULL, 'a milestone cannot sit at a place its version group does not have');
SELECT
    throws_ok ($$ UPDATE
            tracking.mainline_milestone_opponent_refs
        SET
            location_id = 107
            WHERE
                milestone_id = 10003
                AND opponent_id = 1014 $$, '23503', NULL, 'a battle cannot be fought at a place its version group does not have');
-- The two rival battles on Route 22 carry Route 22; every other Red / Blue battle is at its milestone's place.
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, locations.name, mainline_milestone_opponent_refs.notes FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN reference.locations ON locations.id = mainline_milestone_opponent_refs.location_id
            WHERE
                mainline_milestone_opponent_refs.version_group_id = 1
                AND mainline_milestone_opponent_refs.opponent_id = 1014 ORDER BY mainline_milestones.category_id, mainline_milestones.sort_order $$, $$
            VALUES ('boulder-badge', 'Route 22', 'You can skip this battle.'), ('elite-four-lorelei', 'Route 22', NULL::text) $$, 'Blue''s Route 22 battles before the Boulder Badge and before Victory Road are on Route 22');
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                tracking.mainline_milestone_opponent_refs
            WHERE
                version_group_id = 1
                AND location_id IS NOT NULL),
            2,
            'only the two Route 22 battles have their own place in Red / Blue');
-- Red / Blue's Main Story in the order the story reaches each beat, each at its place.
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, locations.name FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN reference.locations ON locations.id = mainline_milestones.location_id
            WHERE
                mainline_milestones.version_group_id = 1
                AND mainline_categories.slug = 'main-story' ORDER BY mainline_milestones.sort_order $$, $$
            VALUES ('choose-starter', 'Professor Oak''s Laboratory'), ('receive-pokedex', 'Pallet Town'), ('boulder-badge', 'Pewter City'), ('fossil-choice', 'Mt. Moon'), ('cascade-badge', 'Cerulean Gym'), ('bills-sea-cottage', 'Route 25'), ('ss-anne', 'S.S. Anne'), ('thunder-badge', 'Vermilion City'), ('rainbow-badge', 'Celadon City'), ('rocket-hideout', 'Rocket Hideout'), ('pokemon-tower', 'Pokémon Tower'), ('soul-badge', 'Fuchsia City'), ('safari-zone', 'Safari Zone'), ('silph-co', 'Silph Co.'), ('marsh-badge', 'Saffron City'), ('pokemon-mansion', 'Pokémon Mansion'), ('volcano-badge', 'Cinnabar Island'), ('earth-badge', 'Viridian City') $$, 'Red / Blue''s Main Story runs in story order, each beat at its place');
-- Each Main Story and League beat after the first suggests the one before it.
SELECT
    is_empty ($$ WITH ordered AS (
            SELECT
                mainline_milestones.id, LAG(mainline_milestones.id) OVER (ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order) AS previous_id FROM tracking.mainline_milestones
                JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
                WHERE
                    mainline_milestones.version_group_id = 1
                    AND mainline_categories.slug IN ('main-story', 'pokemon-league'))
                SELECT
                    ordered.id FROM ordered
                    WHERE
                        ordered.previous_id IS NOT NULL
                        AND NOT EXISTS (
                            SELECT
                                1
                            FROM tracking.mainline_milestone_prerequisites
                            JOIN tracking.mainline_milestone_prerequisite_kinds ON mainline_milestone_prerequisite_kinds.id = mainline_milestone_prerequisites.prerequisite_kind_id
                            WHERE
                                mainline_milestone_prerequisites.milestone_id = ordered.id
                                AND mainline_milestone_prerequisites.prerequisite_milestone_id = ordered.previous_id
                                AND mainline_milestone_prerequisite_kinds.slug = 'suggested') $$, 'each Red / Blue Story beat follows the one before it');
-- Red / Blue's places run in story order, with the towns and Story places that have no wild Pokémon.
SELECT
    results_eq ($$
        SELECT
            locations.name FROM reference.location_version_groups
            JOIN reference.locations ON locations.id = location_version_groups.location_id
            WHERE
                location_version_groups.version_group_id = 1
                AND location_version_groups.sort_order BETWEEN 18 AND 34 ORDER BY location_version_groups.sort_order $$, $$
            VALUES ('Route 6'), ('Vermilion City'), ('S.S. Anne'), ('Route 11'), ('Diglett''s Cave'), ('Route 9'), ('Route 10'), ('Rock Tunnel'), ('Lavender Town'), ('Route 8'), ('Route 7'), ('Celadon City'), ('Celadon Condominiums'), ('Rocket Hideout'), ('Pokémon Tower'), ('Route 12'), ('Route 13') $$, 'Red / Blue''s places from Route 6 to Route 13 follow the story');
-- Cerulean Cave is post-game, optional, after the Hall of Fame.
SELECT
    results_eq ($$
        SELECT
            mainline_categories.chapter_kind, mainline_milestones.is_required_for_completion, prerequisite_milestones.slug FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN tracking.mainline_milestone_prerequisites ON mainline_milestone_prerequisites.milestone_id = mainline_milestones.id
            JOIN tracking.mainline_milestones AS prerequisite_milestones ON prerequisite_milestones.id = mainline_milestone_prerequisites.prerequisite_milestone_id
            WHERE
                mainline_milestones.version_group_id = 1
                AND mainline_milestones.slug = 'cerulean-cave' ORDER BY prerequisite_milestones.slug $$, $$
            VALUES ('post-game'::text, FALSE, 'hall-of-fame'::text) $$, 'Red / Blue''s Cerulean Cave is optional post-game after the Hall of Fame');
-- Any of the version group's own places is accepted.
SELECT
    lives_ok ($$ UPDATE
            tracking.mainline_milestone_opponent_refs
        SET
            location_id = 38
            WHERE
                milestone_id = 10003
                AND opponent_id = 1014 $$, 'a battle can move to another of its version group''s places');
-- The milestone detail view gives each milestone and battle its place, to the Play's owner only.
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000e1', TRUE);
SET LOCAL ROLE authenticated;
SELECT
    results_eq ($$
        SELECT
            location_id, location_name FROM views.mainline_play_milestone_detail
            WHERE
                play_id = '60000000-0000-0000-0000-0000000000e1'
                AND milestone_slug = 'ss-anne' ORDER BY location_id $$, $$
            VALUES (807, 'S.S. Anne'::text) $$, 'the view names a milestone''s place');
SELECT
    results_eq ($$
        SELECT
            opponent_ref ->> 'slug', (opponent_ref ->> 'location_id')::integer, opponent_ref ->> 'location_name' FROM views.mainline_play_milestone_detail
        CROSS JOIN LATERAL jsonb_array_elements(opponent_refs) AS opponent_ref
        WHERE
            play_id = '60000000-0000-0000-0000-0000000000e1'
            AND milestone_slug = 'elite-four-lorelei' ORDER BY (opponent_ref ->> 'sort_order')::integer $$, $$
        VALUES ('blue-rival'::text, 52, 'Route 22'::text), ('lorelei'::text, NULL::integer, NULL::text) $$, 'the view names a battle''s own place and leaves the rest at the milestone''s');
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000e2', TRUE);
SELECT
    is_empty ($$
        SELECT
            milestone_id FROM views.mainline_play_milestone_detail
            WHERE
                play_id = '60000000-0000-0000-0000-0000000000e1' $$, 'another trainer cannot read the Play''s milestones or their places');
SELECT
    throws_ok ($$ UPDATE
            tracking.mainline_milestones
        SET
            location_id = 30
            WHERE
                id = 10001 $$, '42501', NULL, 'a signed-in trainer cannot move a milestone''s place');
RESET ROLE;
SELECT
    *
FROM
    finish ();
ROLLBACK;
