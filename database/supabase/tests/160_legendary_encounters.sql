CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Legendary encounters: story legendaries are Boss battles on their story
-- point, optional and roaming ones are optional Side Content, and each has
-- its team.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (8);
-- Every battle on a Side Content story point has its opponent's team.
SELECT
    is_empty ($$
        SELECT
            mainline_milestone_opponent_refs.id FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_milestone_opponent_refs.milestone_id
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            WHERE
                mainline_categories.slug = 'side-content'
                AND NOT EXISTS (
                    SELECT
                        1
                    FROM tracking.mainline_opponent_team_members
                    WHERE
                        mainline_opponent_team_members.milestone_id = mainline_milestone_opponent_refs.milestone_id
                        AND mainline_opponent_team_members.opponent_id = mainline_milestone_opponent_refs.opponent_id) $$, 'every Side Content battle has a team');
-- A legendary in Side Content never counts toward completion.
SELECT
    is_empty ($$
        SELECT
            mainline_milestones.id FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            WHERE
                mainline_categories.slug = 'side-content'
                AND mainline_milestones.is_required_for_completion $$, 'Side Content story points are optional');
-- Red / Blue: Cerulean Cave holds the Lv. 70 Mewtwo battle.
SELECT
    results_eq ($$
        SELECT
            mainline_opponents.name, mainline_opponents.opponent_role, mainline_opponent_team_members.level FROM tracking.mainline_opponent_team_members
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_opponent_team_members.milestone_id
            WHERE
                mainline_milestones.slug = 'cerulean-cave'
                AND mainline_milestones.version_group_id = 1 $$, $$
            VALUES ('Mewtwo', 'boss', 70) $$, 'an optional legendary is a Boss battle with its level');
-- Black / White: Reshiram (Black) or Zekrom (White) before N, on N's story point.
SELECT
    results_eq ($$
        SELECT
            mainline_opponents.name, games.slug FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            JOIN reference.games ON games.id = mainline_opponents.game_id
            WHERE
                mainline_milestone_opponent_refs.milestone_id = (
                    SELECT
                        id
                    FROM tracking.mainline_milestones
                    WHERE
                        version_group_id = 11
                        AND slug = 'battle-n')
            ORDER BY mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES ('Reshiram', 'black'), ('Zekrom', 'white') $$, 'a story legendary is its version''s Boss battle on its story point');
-- FireRed / LeafGreen: one roaming beast per save, picked by the starter.
SELECT
    results_eq ($$
        SELECT
            mainline_opponents.name, mainline_opponent_team_members.decision_option_slug FROM tracking.mainline_opponent_team_members
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_opponent_team_members.milestone_id
            WHERE
                mainline_milestones.version_group_id = 6
                AND mainline_milestones.slug = 'roaming-legendary-beast' ORDER BY mainline_opponents.name $$, $$
            VALUES ('Entei', 'bulbasaur'), ('Raikou', 'squirtle'), ('Suicune', 'charmander') $$, 'a roaming legendary your starter picks follows that starter');
-- The Teal Mask: the Loyal Three are three Titan battles on their story point.
SELECT
    results_eq ($$
        SELECT
            mainline_opponents.name FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            WHERE
                mainline_milestone_opponent_refs.milestone_id = 240004
                AND mainline_opponents.opponent_role = 'titan' ORDER BY mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES ('Okidogi'), ('Munkidori'), ('Fezandipiti') $$, 'the Loyal Three are three Titan battles');
SELECT
    is_empty ($$
        SELECT
            id FROM tracking.mainline_opponents
            WHERE
                slug = 'loyal-three' $$, 'the Loyal Three are no longer one opponent');
-- Z-A: Zygarde fights beside you in the Ange crisis, so it is no foe there.
SELECT
    is_empty ($$
        SELECT
            mainline_milestone_opponent_refs.id FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            WHERE
                mainline_milestone_opponent_refs.milestone_id = 260008
                AND mainline_opponents.slug = 'zygarde' $$, 'Zygarde is not a foe in the Ange crisis');
SELECT
    *
FROM
    finish ();
ROLLBACK;
