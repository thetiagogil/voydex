CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Legends: Z-A's rogue Mega battles: each is its own Story milestone with one
-- rogue Mega fought in its Mega form, holding no stone, with its moves.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (6);
-- Every rogue Mega after Mega Absol, in mission order, at its batch's level.
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.slug, pokemon_forms.slug, mainline_opponent_team_members.level FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            JOIN tracking.mainline_opponent_team_members ON mainline_opponent_team_members.milestone_id = mainline_milestones.id
            JOIN reference.pokemon_forms ON pokemon_forms.id = mainline_opponent_team_members.form_id
            WHERE
                mainline_milestones.version_group_id IN (26, 27)
                AND mainline_opponent_team_members.ally_opponent_id IS NULL
                AND mainline_milestones.slug LIKE 'rogue-mega-%'
                AND mainline_milestones.slug NOT IN ('rogue-mega-darkrai', 'rogue-mega-rayquaza')
            ORDER BY mainline_milestones.version_group_id, mainline_categories.sort_order, mainline_milestones.sort_order $$, $$
            VALUES ('rogue-mega-slowbro'::text, 'mega-slowbro'::text, 34), ('rogue-mega-camerupt', 'mega-camerupt', 34), ('rogue-mega-victreebel', 'mega-victreebel', 34), ('rogue-mega-beedrill', 'mega-beedrill', 41), ('rogue-mega-hawlucha', 'mega-hawlucha', 41), ('rogue-mega-banette', 'mega-banette', 41), ('rogue-mega-mawile', 'mega-mawile', 48), ('rogue-mega-barbaracle', 'mega-barbaracle', 48), ('rogue-mega-ampharos', 'mega-ampharos', 48), ('rogue-mega-froslass', 'mega-froslass', 53), ('rogue-mega-altaria', 'mega-altaria', 53), ('rogue-mega-venusaur', 'mega-venusaur', 53), ('rogue-mega-dragonite', 'mega-dragonite', 59), ('rogue-mega-tyranitar', 'mega-tyranitar', 59), ('rogue-mega-starmie', 'mega-starmie', 59), ('rogue-mega-absol-z', 'mega-absol-z', 75), ('rogue-mega-staraptor', 'mega-staraptor', 75), ('rogue-mega-tatsugiri', 'mega-tatsugiri', 75), ('rogue-mega-meowstic', 'mega-meowstic', 75) $$, 'the nineteen rogue Mega battles follow the missions at their levels');
-- Each one is a required Boss battle against a single rogue Mega, fought with your own team.
SELECT
    is_empty ($$
        SELECT
            mainline_milestones.slug FROM tracking.mainline_milestones
            JOIN tracking.mainline_milestone_types ON mainline_milestone_types.id = mainline_milestones.milestone_type_id
            WHERE
                mainline_milestones.id BETWEEN 260022 AND 260036
                OR mainline_milestones.id BETWEEN 270012 AND 270015 GROUP BY mainline_milestones.id, mainline_milestones.slug, mainline_milestone_types.slug, mainline_milestones.is_required_for_completion
            HAVING
                mainline_milestone_types.slug <> 'boss'
                OR NOT mainline_milestones.is_required_for_completion
                OR (
                    SELECT
                        COUNT(*)
                    FROM tracking.mainline_milestone_opponent_refs
                    WHERE
                        mainline_milestone_opponent_refs.milestone_id = mainline_milestones.id
                        AND mainline_milestone_opponent_refs.player_side = 'own-team') <> 1
                    OR (
                        SELECT
                            COUNT(*)
                        FROM tracking.mainline_milestone_opponent_refs
                        WHERE
                            mainline_milestone_opponent_refs.milestone_id = mainline_milestones.id) <> 1 $$, 'each rogue Mega is one required Boss battle with your own team');
-- Wild rogue Megas hold no Mega Stone, so their team rows carry none.
SELECT
    is_empty ($$
        SELECT
            mainline_opponent_team_members.id FROM tracking.mainline_opponent_team_members
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            WHERE
                mainline_opponents.slug LIKE 'rogue-mega-%'
                AND mainline_opponent_team_members.ally_opponent_id IS NULL
                AND mainline_opponent_team_members.held_item_id IS NOT NULL $$, 'rogue Megas hold no Mega Stone');
-- Every rogue Mega has at least one move, so Story reads its moves, not only its types.
SELECT
    is_empty ($$
        SELECT
            mainline_opponent_team_members.id FROM tracking.mainline_opponent_team_members
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            WHERE
                mainline_opponents.slug LIKE 'rogue-mega-%'
                AND NOT EXISTS (
                    SELECT
                        1
                    FROM tracking.mainline_opponent_team_member_moves
                    WHERE
                        mainline_opponent_team_member_moves.team_member_id = mainline_opponent_team_members.id) $$, 'every rogue Mega has its moves');
-- The Hyperspace catches keep the moves the game's encounter data gives them.
SELECT
    results_eq ($$
        SELECT
            mainline_opponents.slug, ARRAY_AGG(mainline_opponent_team_member_moves.move_id ORDER BY mainline_opponent_team_member_moves.slot)
            FROM tracking.mainline_opponent_team_member_moves
            JOIN tracking.mainline_opponent_team_members ON mainline_opponent_team_members.id = mainline_opponent_team_member_moves.team_member_id
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            WHERE
                mainline_opponents.id BETWEEN 27011 AND 27014
                AND mainline_opponent_team_members.ally_opponent_id IS NULL GROUP BY mainline_opponents.slug, mainline_opponents.id ORDER BY mainline_opponents.id $$, $$
            VALUES ('rogue-mega-absol-z'::text, ARRAY[282, 400, 555, 425]), ('rogue-mega-staraptor', ARRAY[411, 814, 38, 370]), ('rogue-mega-tatsugiri', ARRAY[127, 58, 407, 250]), ('rogue-mega-meowstic', ARRAY[94, 115, 113, 60]) $$, 'Hyperspace rogue Megas use their encounter movesets');
-- Mega Dimension's Story chains the four surveys' rogue Megas before Darkrai.
SELECT
    is_empty ($$ WITH ordered AS (
            SELECT
                mainline_milestones.id, LAG(mainline_milestones.id) OVER (ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order) AS previous_id FROM tracking.mainline_milestones
                JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
                WHERE
                    mainline_milestones.version_group_id = 27
                    AND mainline_milestones.is_required_for_completion)
                SELECT
                    ordered.id FROM ordered
                    WHERE
                        ordered.previous_id IS NOT NULL
                        AND (
                            SELECT
                                ARRAY_AGG(mainline_milestone_prerequisites.prerequisite_milestone_id)
                            FROM tracking.mainline_milestone_prerequisites
                            WHERE
                                mainline_milestone_prerequisites.milestone_id = ordered.id) IS DISTINCT FROM ARRAY[ordered.previous_id] $$, 'each required Mega Dimension milestone follows the one before it');
SELECT
    *
FROM
    finish ();
ROLLBACK;
