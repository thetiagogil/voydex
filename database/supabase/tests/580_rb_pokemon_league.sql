CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Red / Blue's Pokémon League is one milestone at the end of Main Story: the
-- Elite Four and Champion Blue are fought back to back and the team enters
-- the Hall of Fame, so the journey has no League chapter and no separate
-- Elite Four or Hall of Fame milestones. Every battle and team moved onto it.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (11);
-- Red / Blue has no Pokémon League chapter.
SELECT
    is_empty ($$
        SELECT
            slug FROM tracking.mainline_categories
            WHERE
                version_group_id = 1
                AND slug = 'pokemon-league' $$, 'Red / Blue has no Pokémon League chapter');
SELECT
    results_eq ($$
        SELECT
            slug, chapter_kind, sort_order FROM tracking.mainline_categories
            WHERE
                version_group_id = 1 ORDER BY sort_order $$, $$
            VALUES ('main-story'::text, 'main-story'::text, 1), ('post-game', 'post-game', 2), ('side-content', 'side-content', 3) $$, 'Red / Blue''s chapters are Main Story, Post Game and Side Content');
-- The League is Main Story's last milestone: a required Champion beat at the Indigo Plateau that recommends a snapshot.
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, mainline_milestones.name, mainline_milestone_types.slug, mainline_snapshot_policies.slug, mainline_milestones.is_required_for_completion, locations.name FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN tracking.mainline_milestone_types ON mainline_milestone_types.id = mainline_milestones.milestone_type_id
            JOIN tracking.mainline_snapshot_policies ON mainline_snapshot_policies.id = mainline_milestones.snapshot_policy_id
            JOIN reference.locations ON locations.id = mainline_milestones.location_id
            WHERE
                mainline_milestones.version_group_id = 1
                AND mainline_categories.slug = 'main-story' ORDER BY mainline_milestones.sort_order DESC LIMIT 1 $$, $$
        VALUES ('pokemon-league'::text, 'Pokémon League'::text, 'champion'::text, 'recommended'::text, TRUE, 'Indigo Plateau'::text) $$, 'the Pokémon League is Red / Blue''s last Main Story milestone, a Champion beat at the Indigo Plateau');
-- No Elite Four or Hall of Fame milestone is left, and the old ones are gone.
SELECT
    is_empty ($$
        SELECT
            mainline_milestones.slug FROM tracking.mainline_milestones
            JOIN tracking.mainline_milestone_types ON mainline_milestone_types.id = mainline_milestones.milestone_type_id
            WHERE
                mainline_milestones.version_group_id = 1
                AND mainline_milestone_types.slug IN ('elite-four', 'hall-of-fame') $$, 'Red / Blue has no Elite Four or Hall of Fame milestone');
SELECT
    is_empty ($$
        SELECT
            id FROM tracking.mainline_milestones
            WHERE
                id IN (10013, 10014, 10015, 10016, 10018) $$, 'the four Elite Four milestones and the Hall of Fame milestone are gone');
-- The League holds its six battles in the order they are fought, the first on Route 22.
SELECT
    results_eq ($$
        SELECT
            mainline_milestone_opponent_refs.sort_order, mainline_opponents.slug, mainline_opponents.opponent_role, mainline_milestone_opponent_refs.location_id, mainline_milestone_opponent_refs.notes, mainline_milestone_opponent_refs.player_side, mainline_milestone_opponent_refs.team_size_limit FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            WHERE
                mainline_milestones.version_group_id = 1
                AND mainline_milestones.slug = 'pokemon-league' ORDER BY mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES (1, 'blue-rival'::text, 'rival'::text, 52, NULL::text, 'own-team'::text, NULL::integer), (2, 'lorelei', 'elite-four', NULL, NULL, 'own-team', NULL), (3, 'bruno', 'elite-four', NULL, NULL, 'own-team', NULL), (4, 'agatha', 'elite-four', NULL, NULL, 'own-team', NULL), (5, 'lance', 'elite-four', NULL, NULL, 'own-team', NULL), (6, 'blue', 'champion', NULL, NULL, 'own-team', NULL) $$, 'the Pokémon League fights Blue on Route 22, the Elite Four, then Champion Blue');
-- Every team moved with its battle: Blue's two by starter, the Elite Four's one each.
SELECT
    results_eq ($$
        SELECT
            mainline_opponents.slug, COUNT(*)::integer FROM tracking.mainline_opponent_team_members
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_opponent_team_members.milestone_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            JOIN tracking.mainline_milestone_opponent_refs ON mainline_milestone_opponent_refs.milestone_id = mainline_opponent_team_members.milestone_id
                AND mainline_milestone_opponent_refs.opponent_id = mainline_opponent_team_members.opponent_id
            WHERE
                mainline_milestones.version_group_id = 1
                AND mainline_milestones.slug = 'pokemon-league'
                AND mainline_opponent_team_members.ally_opponent_id IS NULL GROUP BY mainline_opponents.slug, mainline_milestone_opponent_refs.sort_order ORDER BY mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES ('blue-rival'::text, 18), ('lorelei', 5), ('bruno', 5), ('agatha', 5), ('lance', 5), ('blue', 18) $$, 'every League team kept its Pokémon');
SELECT
    is_empty ($$
        SELECT
            mainline_opponent_team_members.id FROM tracking.mainline_opponent_team_members
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_opponent_team_members.milestone_id
            WHERE
                mainline_milestones.slug = 'pokemon-league'
                AND mainline_milestones.version_group_id = 1
                AND NOT EXISTS (
                    SELECT
                        1
                    FROM tracking.mainline_opponent_team_member_moves
                    WHERE
                        mainline_opponent_team_member_moves.team_member_id = mainline_opponent_team_members.id) $$, 'every League Pokémon kept its moves');
-- Every Red / Blue team row belongs to a battle that still exists.
SELECT
    is_empty ($$
        SELECT
            mainline_opponent_team_members.id FROM tracking.mainline_opponent_team_members
            WHERE
                mainline_opponent_team_members.version_group_id = 1
                AND NOT EXISTS (
                    SELECT
                        1
                    FROM tracking.mainline_milestone_opponent_refs
                    WHERE
                        mainline_milestone_opponent_refs.milestone_id = mainline_opponent_team_members.milestone_id
                        AND mainline_milestone_opponent_refs.opponent_id = mainline_opponent_team_members.opponent_id
                        AND mainline_milestone_opponent_refs.version_group_id = 1) $$, 'every Red / Blue team row points at an existing battle');
-- The League suggests the Earth Badge, and Cerulean Cave suggests the League.
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, prerequisite_milestones.slug, mainline_milestone_prerequisite_kinds.slug FROM tracking.mainline_milestone_prerequisites
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_prerequisites.milestone_id
            JOIN tracking.mainline_milestones AS prerequisite_milestones ON prerequisite_milestones.id = mainline_milestone_prerequisites.prerequisite_milestone_id
            JOIN tracking.mainline_milestone_prerequisite_kinds ON mainline_milestone_prerequisite_kinds.id = mainline_milestone_prerequisites.prerequisite_kind_id
            WHERE
                mainline_milestone_prerequisites.version_group_id = 1
                AND 'pokemon-league' IN (mainline_milestones.slug, prerequisite_milestones.slug)
            ORDER BY mainline_milestones.slug $$, $$
            VALUES ('cerulean-cave'::text, 'pokemon-league'::text, 'suggested'::text), ('pokemon-league', 'earth-badge', 'suggested') $$, 'the League follows the Earth Badge and opens onto Cerulean Cave');
-- The League is one step on the roadmap.
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                tracking.mainline_roadmap_steps
                JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_roadmap_steps.milestone_id
            WHERE
                mainline_roadmap_steps.version_group_id = 1
                AND mainline_milestones.slug = 'pokemon-league'),
            1,
            'the Pokémon League is one roadmap step');
SELECT
    *
FROM
    finish ();
ROLLBACK;
