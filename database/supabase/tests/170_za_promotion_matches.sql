CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Legends: Z-A's promotion matches: ten Story battles from Rank Z to Rank A,
-- in the game's order between the Rogue Mega missions, each with its trainer
-- and team, and Jacinthe's tournament as one story point.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (8);
-- Vinnie's special match jumps from Rank V to F; Jacinthe's is Rank B and Grisham's Rank A.
SELECT
    results_eq ($$
        SELECT
            mainline_milestones.name FROM tracking.mainline_milestones
            JOIN tracking.mainline_milestone_types ON mainline_milestone_types.id = mainline_milestones.milestone_type_id
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            WHERE
                mainline_milestones.version_group_id = 26
                AND mainline_milestone_types.slug = 'promotion-match' ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order $$, $$
            VALUES ('Reach Rank Y'::text), ('Reach Rank X'), ('Reach Rank W'), ('Reach Rank V'), ('Reach Rank F'), ('Reach Rank E'), ('Reach Rank D'), ('Reach Rank C'), ('Reach Rank B'), ('Reach Rank A') $$, 'Z-A has ten promotion matches in Story order');
-- Each match ends with its Z-A Royale trainer, whose ace sets the level to beat.
SELECT
    results_eq ($$ SELECT DISTINCT ON (mainline_categories.sort_order, mainline_milestones.sort_order)
            mainline_milestones.slug, mainline_opponents.name, mainline_opponents.opponent_role, (
                SELECT
                    MAX(mainline_opponent_team_members.level)
                FROM tracking.mainline_opponent_team_members
                WHERE
                    mainline_opponent_team_members.milestone_id = mainline_milestones.id
                    AND mainline_opponent_team_members.opponent_id = mainline_opponents.id)
                FROM tracking.mainline_milestones
                JOIN tracking.mainline_milestone_types ON mainline_milestone_types.id = mainline_milestones.milestone_type_id
                JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
                JOIN tracking.mainline_milestone_opponent_refs ON mainline_milestone_opponent_refs.milestone_id = mainline_milestones.id
                JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
                WHERE
                    mainline_milestones.version_group_id = 26
                    AND mainline_milestone_types.slug = 'promotion-match' ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order, mainline_milestone_opponent_refs.sort_order DESC $$, $$
                VALUES ('reach-rank-y'::text, 'Zach'::text, 'za-royale'::text, 9), ('reach-rank-x', 'Yvon', 'za-royale', 16), ('reach-rank-w', 'Xavi', 'za-royale', 21), ('reach-rank-v', 'Rintaro', 'za-royale', 24), ('reach-rank-f', 'Vinnie', 'za-royale', 32), ('reach-rank-e', 'Canari', 'za-royale', 39), ('reach-rank-d', 'Ivor', 'za-royale', 47), ('reach-rank-c', 'Corbeau', 'za-royale', 52), ('reach-rank-b', 'Jacinthe', 'za-royale', 59), ('reach-rank-a', 'Grisham', 'za-royale', 63) $$, 'each promotion match ends with its trainer and their team');
-- Story reads Z-A in the game's order: the Royale's early ranks, then Mega
-- Evolution with ranks F to B, then Lysandre Labs, Rank A and the Ange crisis.
SELECT
    results_eq ($$
        SELECT
            mainline_categories.slug, mainline_milestones.slug FROM tracking.mainline_milestones
            JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
            WHERE
                mainline_milestones.version_group_id = 26
                AND mainline_milestones.is_required_for_completion ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order $$, $$
            VALUES ('main-story'::text, 'choose-starter'::text), ('main-story', 'arrive-lumiose-city'), ('main-story', 'join-team-mz'), ('za-royale', 'enter-za-royale'), ('za-royale', 'reach-rank-y'), ('za-royale', 'reach-rank-x'), ('za-royale', 'reach-rank-w'), ('za-royale', 'reach-rank-v'), ('rogue-mega-evolution', 'unlock-mega-evolution'), ('rogue-mega-evolution', 'reach-rank-f'), ('rogue-mega-evolution', 'reach-rank-e'), ('rogue-mega-evolution', 'reach-rank-d'), ('rogue-mega-evolution', 'reach-rank-c'), ('rogue-mega-evolution', 'reach-rank-b'), ('finale', 'explore-lysandre-labs'), ('finale', 'reach-rank-a'), ('finale', 'stop-ange-crisis') $$, 'Z-A''s Story follows the game''s order');
-- Each required Z-A milestone's previous step is the one before it in Story.
SELECT
    is_empty ($$ WITH ordered AS (
            SELECT
                mainline_milestones.id, LAG(mainline_milestones.id) OVER (ORDER BY mainline_categories.sort_order, mainline_milestones.sort_order) AS previous_id FROM tracking.mainline_milestones
                JOIN tracking.mainline_categories ON mainline_categories.id = mainline_milestones.category_id
                WHERE
                    mainline_milestones.version_group_id = 26
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
                                mainline_milestone_prerequisites.milestone_id = ordered.id) IS DISTINCT FROM ARRAY[ordered.previous_id] $$, 'each required Z-A milestone follows the one before it');
-- Jacinthe's tournament: three rounds, L brings Zygarde, then the final.
SELECT
    results_eq ($$
        SELECT
            mainline_opponents.name FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            WHERE
                mainline_milestone_opponent_refs.milestone_id = 260006 ORDER BY mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES ('Canari'::text), ('Ivor'), ('Corbeau'), ('Zygarde'), ('Jacinthe') $$, 'Jacinthe''s tournament holds its rounds, Zygarde and the final in order');
-- Canari, Ivor and Corbeau field stronger teams in the tournament than in their own promotion matches.
SELECT
    results_eq ($$
        SELECT
            mainline_opponents.name, mainline_milestones.slug, MAX(mainline_opponent_team_members.level)
            FROM tracking.mainline_opponent_team_members
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            JOIN tracking.mainline_milestones ON mainline_milestones.id = mainline_opponent_team_members.milestone_id
            WHERE
                mainline_opponents.slug IN ('canari', 'ivor', 'corbeau')
                AND mainline_opponents.version_group_id = 26 GROUP BY mainline_opponents.name, mainline_opponents.sort_order, mainline_milestones.slug, mainline_milestones.id ORDER BY mainline_opponents.sort_order, mainline_milestones.id DESC $$, $$
            VALUES ('Canari'::text, 'reach-rank-e'::text, 39), ('Canari', 'reach-rank-b', 55), ('Ivor', 'reach-rank-d', 47), ('Ivor', 'reach-rank-b', 55), ('Corbeau', 'reach-rank-c', 52), ('Corbeau', 'reach-rank-b', 56) $$, 'a tournament round has its own team, apart from the promotion match');
-- Zygarde (10% Forme) waits at Hotel Z after the Rogue Megas, before Canari's match.
SELECT
    results_eq ($$
        SELECT
            mainline_opponents.name FROM tracking.mainline_milestone_opponent_refs
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_milestone_opponent_refs.opponent_id
            WHERE
                mainline_milestone_opponent_refs.milestone_id = 260018 ORDER BY mainline_milestone_opponent_refs.sort_order $$, $$
            VALUES ('Zygarde'::text), ('Canari') $$, 'Zygarde comes before Canari on the way to Rank E');
-- Grisham fields a full team, Charizard last.
SELECT
    results_eq ($$
        SELECT
            slot, species_id, level FROM tracking.mainline_opponent_team_members
            WHERE
                milestone_id = 260021
                AND opponent_id = 26016 ORDER BY slot $$, $$
            VALUES (1, 675, 61), (2, 687, 61), (3, 668, 61), (4, 248, 62), (5, 373, 62), (6, 6, 63) $$, 'Grisham fields six Pokemon for Rank A');
SELECT
    *
FROM
    finish ();
ROLLBACK;
