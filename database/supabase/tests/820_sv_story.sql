CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Scarlet / Violet's Story in the pattern: every beat at its place and on the
-- roadmap once, each badge at its Gym, and the Pokémon League as one
-- milestone, with the three stories kept as chapters.
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
                mainline_milestones.version_group_id = 23
                AND mainline_categories.slug = 'main-story' ORDER BY mainline_milestones.sort_order, mainline_milestones.id $$, $$
            VALUES ('choose-starter'::text, 'Cabo Poco'::text), ('treasure-hunt', 'Mesagoza'), ('bug-badge', 'Cortondo Gym'), ('stony-cliff-titan', 'South Province (Area Three)'), ('grass-badge', 'Artazon Gym'), ('open-sky-titan', 'West Province (Area One)'), ('dark-crew', 'Team Star''s Dark Crew Base'), ('electric-badge', 'Levincia Gym'), ('fire-crew', 'Team Star''s Fire Crew Base'), ('lurking-steel-titan', 'East Province (Area Three)'), ('water-badge', 'Cascarrafa Gym'), ('poison-crew', 'Team Star''s Poison Crew Base'), ('normal-badge', 'Medali Gym'), ('ghost-badge', 'Montenevera Gym'), ('quaking-earth-titan', 'Asado Desert'), ('psychic-badge', 'Alfornada Gym'), ('ice-badge', 'Glaseado Gym'), ('fairy-crew', 'Team Star''s Fairy Crew Base'), ('false-dragon-titan', 'Casseroya Lake'), ('fighting-crew', 'Team Star''s Fighting Crew Base'), ('pokemon-league', 'Pokémon League'), ('defeat-arven', 'Poco Path Lighthouse'), ('defeat-penny', 'Mesagoza'), ('area-zero', 'Area Zero'), ('defeat-ai-professor', 'Zero Lab') $$, 'Scarlet / Violet''s Main Story follows its walkthrough, each beat at its place, and ends at the Pokémon League');
SELECT
    results_eq ($$
        SELECT
            mainline_categories.slug, mainline_milestones.slug, locations.name FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN reference.locations ON locations.id = mainline_milestones.location_id
            WHERE
                mainline_milestones.version_group_id = 23
                AND mainline_categories.slug <> 'main-story' ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order, mainline_milestones.id $$, $$
            VALUES ('post-game'::text, 'academy-ace-tournament'::text, 'Mesagoza'::text), ('side-content', 'icerend-shrine', 'West Province (Area One)'), ('side-content', 'grasswither-shrine', 'South Province (Area One)'), ('side-content', 'groundblight-shrine', 'Socarrat Trail'), ('side-content', 'firescourge-shrine', 'North Province (Area Two)'), ('side-content', 'area-zero-depths', 'Area Zero') $$, 'Scarlet / Violet''s optional beats sit in their chapters, each at its place');
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
                    mainline_milestones.version_group_id = 23
                    AND mainline_milestones.slug = 'pokemon-league' ORDER BY mainline_milestone_opponent_refs.sort_order $$, $$
                VALUES (1, 'rika'::text, NULL::integer, 5), (2, 'poppy', NULL, 5), (3, 'larry-e4', NULL, 5), (4, 'hassel', NULL, 5), (5, 'geeta', NULL, 6), (6, 'nemona', NULL, 18) $$, 'Scarlet / Violet''s closing milestone holds its battles in order, each with its team');
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, mainline_opponents.slug, locations.name FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            JOIN reference.locations ON locations.id = mainline_milestone_opponent_refs.location_id
            WHERE
                mainline_milestones.version_group_id = 23 ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order, mainline_milestones.id, mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES ('treasure-hunt'::text, 'arven'::text, 'Poco Path Lighthouse'::text), ('treasure-hunt', 'nemona-rival', 'South Province (Area One)') $$, 'Scarlet / Violet''s battles fought away from their beat name their places');
SELECT
    results_eq ($$
        SELECT
            COUNT(*)::integer, COUNT(location_id)::integer, COUNT(milestone_id)::integer FROM tracking.mainline_roadmap_steps
            WHERE
                version_group_id = 23 $$, $$
            VALUES (75, 44, 31) $$, 'Scarlet / Violet''s roadmap has 75 steps: 44 places and its 31 milestones');
SELECT
    *
FROM
    finish ();
ROLLBACK;
