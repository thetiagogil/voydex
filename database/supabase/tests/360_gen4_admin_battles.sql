CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- The evil-team admin battles the story forces in Diamond / Pearl, Platinum
-- and HeartGold / SoulSilver: the Galactic Commanders and the Rocket
-- Executives, pinned so they stay as the games have them.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (11);
-- Who you fight at each Story point, in order.
SELECT
    results_eq ($$
        SELECT
            refs.milestone_id, opponents.slug, refs.sort_order FROM tracking.mainline_milestone_opponent_refs AS refs
            JOIN tracking.mainline_opponents AS opponents ON opponents.id = refs.opponent_id
            WHERE
                refs.version_group_id = 8
                AND refs.milestone_id IN (80004, 80009, 80017, 80018)
            ORDER BY refs.milestone_id, refs.sort_order $$, $$
            VALUES (80004, 'mars', 1), (80004, 'gardenia', 2), (80004, 'jupiter', 3), (80009, 'saturn', 1), (80009, 'mars', 2), (80009, 'candice', 3), (80017, 'cyrus', 1), (80017, 'saturn', 2), (80018, 'mars-jupiter', 1), (80018, 'cyrus', 2), (80018, 'dialga', 3), (80018, 'palkia', 4) $$, 'Diamond / Pearl: the Commanders in Story order, Saturn after Cyrus at the HQ');
SELECT
    results_eq ($$
        SELECT
            refs.milestone_id, opponents.slug, refs.sort_order FROM tracking.mainline_milestone_opponent_refs AS refs
            JOIN tracking.mainline_opponents AS opponents ON opponents.id = refs.opponent_id
            WHERE
                refs.version_group_id = 9
                AND refs.milestone_id IN (90004, 90009, 90018, 90019, 90020)
            ORDER BY refs.milestone_id, refs.sort_order $$, $$
            VALUES (90004, 'mars', 1), (90004, 'gardenia', 2), (90004, 'jupiter', 3), (90009, 'saturn', 1), (90009, 'mars', 2), (90009, 'candice', 3), (90018, 'cyrus', 1), (90018, 'saturn', 2), (90019, 'mars-jupiter', 1), (90019, 'cyrus', 2), (90019, 'giratina', 3), (90020, 'barry', 1), (90020, 'mars', 2), (90020, 'jupiter', 3), (90020, 'heatran', 4) $$, 'Platinum: the Commanders, Spear Pillar before the Distortion World, and both again at Stark Mountain');
SELECT
    results_eq ($$
        SELECT
            refs.milestone_id, opponents.slug, refs.sort_order FROM tracking.mainline_milestone_opponent_refs AS refs
            JOIN tracking.mainline_opponents AS opponents ON opponents.id = refs.opponent_id
            WHERE
                refs.version_group_id = 10
                AND refs.milestone_id IN (100004, 100009, 100029)
            ORDER BY refs.milestone_id, refs.sort_order $$, $$
            VALUES (100004, 'proton', 1), (100004, 'bugsy', 2), (100004, 'silver', 3), (100009, 'petrel', 1), (100009, 'ariana-grunt', 2), (100009, 'pryce', 3), (100029, 'petrel', 1), (100029, 'silver', 2), (100029, 'proton', 3), (100029, 'ariana', 4), (100029, 'archer', 5) $$, 'HeartGold / SoulSilver: the Executives at the Slowpoke Well, the Rocket HQ and the Radio Tower');
-- Brilliant Diamond / Shining Pearl keep the same HQ order: Cyrus, then Saturn.
SELECT
    results_eq ($$
        SELECT
            opponents.slug, refs.sort_order FROM tracking.mainline_milestone_opponent_refs AS refs
            JOIN tracking.mainline_opponents AS opponents ON opponents.id = refs.opponent_id
            WHERE
                refs.milestone_id = 210018 ORDER BY refs.sort_order $$, $$
            VALUES ('cyrus', 1), ('saturn', 2) $$, 'Brilliant Diamond / Shining Pearl: Saturn after Cyrus at the HQ');
-- Every new battle has its full team.
SELECT
    results_eq ($$
        SELECT
            opponents.slug, COUNT(*)::integer FROM tracking.mainline_opponent_team_members AS members
            JOIN tracking.mainline_opponents AS opponents ON opponents.id = members.opponent_id
            WHERE
                members.version_group_id IN (8, 9, 10)
                AND members.ally_opponent_id IS NULL
                AND opponents.slug IN ('mars', 'jupiter', 'saturn', 'mars-jupiter', 'proton', 'petrel', 'ariana', 'ariana-grunt', 'archer')
            GROUP BY opponents.slug ORDER BY opponents.slug $$, $$
            VALUES ('archer', 3), ('ariana', 3), ('ariana-grunt', 5), ('jupiter', 7), ('mars', 13), ('mars-jupiter', 12), ('petrel', 9), ('proton', 4), ('saturn', 12) $$, 'each Commander and Executive battle carries its whole party');
SELECT
    results_eq ($$
        SELECT
            species_id, level, held_item_id FROM tracking.mainline_opponent_team_members
            WHERE
                milestone_id = 80018
                AND opponent_id = 8028
                AND ally_opponent_id IS NULL ORDER BY slot $$, $$
            VALUES (436, 41, NULL::integer), (42, 42, NULL), (432, 45, 187), (436, 41, NULL), (42, 41, NULL), (435, 46, 187) $$, 'Mars & Jupiter at Spear Pillar (Diamond / Pearl): Mars''s three, then Jupiter''s');
-- The ally beside you follows your starter (Barry) or is Lance.
SELECT
    results_eq ($$
        SELECT
            decision_option_slug, species_id, level FROM tracking.mainline_opponent_team_members
            WHERE
                milestone_id IN (80018, 90019)
                AND ally_opponent_id IS NOT NULL
                AND slot = 6 ORDER BY milestone_id, decision_option_slug $$, $$
            VALUES ('chimchar'::text, 395, 43), ('piplup', 389, 43), ('turtwig', 392, 43), ('chimchar', 395, 44), ('piplup', 389, 44), ('turtwig', 392, 44) $$, 'Barry brings the starter that beats yours to Spear Pillar');
SELECT
    results_eq ($$
        SELECT
            ally_opponent_id, species_id, level FROM tracking.mainline_opponent_team_members
            WHERE
                milestone_id = 100009
                AND opponent_id = 10043
                AND ally_opponent_id IS NOT NULL $$, $$
            VALUES (10013, 149, 40) $$, 'Lance fights beside you at the Rocket HQ with his Dragonite');
-- Moves where the game and the reference site differ: the game wins.
SELECT
    results_eq ($$
        SELECT
            array_agg(move_id ORDER BY member_moves.slot)
            FROM tracking.mainline_opponent_team_members AS members
            JOIN tracking.mainline_opponent_team_member_moves AS member_moves ON member_moves.team_member_id = members.id
            WHERE
                members.milestone_id = 100029
                AND members.opponent_id = 10041
                AND members.slot = 6 $$, $$
            VALUES (ARRAY[33, 123, 124, 108]) $$, 'Petrel''s last Koffing in the Radio Tower knows Smog');
SELECT
    results_eq ($$
        SELECT
            array_agg(move_id ORDER BY member_moves.slot)
            FROM tracking.mainline_opponent_team_members AS members
            JOIN tracking.mainline_opponent_team_member_moves AS member_moves ON member_moves.team_member_id = members.id
            WHERE
                members.milestone_id = 100009
                AND members.opponent_id = 10043
                AND members.ally_opponent_id IS NULL
                AND members.slot = 4 $$, $$
            VALUES (ARRAY[95, 50, 93, 29]) $$, 'the Grunt''s Drowzee beside Ariana knows Hypnosis');
-- A party with no set moves gets the game's default: Proton's Zubat at level 8.
SELECT
    results_eq ($$
        SELECT
            array_agg(move_id ORDER BY member_moves.slot)
            FROM tracking.mainline_opponent_team_members AS members
            JOIN tracking.mainline_opponent_team_member_moves AS member_moves ON member_moves.team_member_id = members.id
            WHERE
                members.milestone_id = 100004
                AND members.opponent_id = 10040
                AND members.slot = 1 $$, $$
            VALUES (ARRAY[141, 48]) $$, 'Proton''s Zubat in the Slowpoke Well knows Leech Life and Supersonic');
SELECT
    *
FROM
    finish ();
ROLLBACK;
