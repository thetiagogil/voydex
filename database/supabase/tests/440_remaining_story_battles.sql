CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- The forced Story battles seeded last: Yellow's Jessie & James, the Gold /
-- Silver / Crystal Rocket Executives, the Ruby / Sapphire / Emerald admins,
-- the FireRed / LeafGreen Rocket Warehouse admins, Dulse and Soliera's first
-- two fights, N after the credits and the Dragon's Den Multi Battle, pinned on
-- their beats with the teams the games give them.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (16);
-- Who you fight at each Story point, in order.
SELECT
    results_eq ($$
        SELECT
            refs.milestone_id, opponents.slug, refs.sort_order FROM tracking.mainline_milestone_opponent_refs AS refs
            JOIN tracking.mainline_opponents AS opponents ON opponents.id = refs.opponent_id
            WHERE
                refs.version_group_id = 2
                AND refs.milestone_id IN (20004, 20020, 20021, 20022)
            ORDER BY refs.milestone_id, refs.sort_order $$, $$
            VALUES (20004, 'jessie-james', 1), (20020, 'jessie-james', 1), (20020, 'giovanni-boss', 2), (20021, 'blue-rival', 1), (20021, 'jessie-james', 2), (20022, 'blue-rival', 1), (20022, 'jessie-james', 2), (20022, 'giovanni-boss', 3) $$, 'Yellow: Jessie & James at Mt. Moon, the Rocket Hideout, the Pokemon Tower and Silph Co.');
SELECT
    results_eq ($$
        SELECT
            refs.milestone_id, opponents.slug, refs.sort_order FROM tracking.mainline_milestone_opponent_refs AS refs
            JOIN tracking.mainline_opponents AS opponents ON opponents.id = refs.opponent_id
            WHERE
                refs.version_group_id = 3
                AND refs.milestone_id IN (30009, 30027)
            ORDER BY refs.milestone_id, refs.sort_order $$, $$
            VALUES (30009, 'petrel', 1), (30009, 'ariana', 2), (30009, 'pryce', 3), (30027, 'petrel', 1), (30027, 'silver', 2), (30027, 'proton', 3), (30027, 'ariana', 4), (30027, 'archer', 5) $$, 'Gold / Silver: the Executives at the Rocket HQ and the Radio Tower');
SELECT
    results_eq ($$
        SELECT
            refs.milestone_id, opponents.slug, refs.sort_order FROM tracking.mainline_milestone_opponent_refs AS refs
            JOIN tracking.mainline_opponents AS opponents ON opponents.id = refs.opponent_id
            WHERE
                refs.version_group_id = 4
                AND refs.milestone_id IN (40009, 40027)
            ORDER BY refs.milestone_id, refs.sort_order $$, $$
            VALUES (40009, 'petrel', 1), (40009, 'ariana', 2), (40009, 'pryce', 3), (40027, 'petrel', 1), (40027, 'silver', 2), (40027, 'proton', 3), (40027, 'ariana', 4), (40027, 'archer', 5) $$, 'Crystal: the same Executives in the same order');
SELECT
    results_eq ($$
        SELECT
            refs.milestone_id, opponents.slug, refs.sort_order FROM tracking.mainline_milestone_opponent_refs AS refs
            JOIN tracking.mainline_opponents AS opponents ON opponents.id = refs.opponent_id
            WHERE
                refs.version_group_id = 5
                AND refs.milestone_id IN (50018, 50009, 50010, 50019)
            ORDER BY refs.milestone_id, refs.sort_order $$, $$
            VALUES (50009, 'courtney', 1), (50009, 'shelly', 2), (50009, 'may-brendan', 3), (50009, 'winona', 4), (50010, 'may-brendan', 1), (50010, 'tabitha', 2), (50010, 'matt', 3), (50010, 'tate-liza', 4), (50018, 'tabitha', 1), (50018, 'maxie', 2), (50018, 'matt', 3), (50018, 'archie', 4), (50019, 'courtney', 1), (50019, 'maxie', 2), (50019, 'shelly', 3), (50019, 'archie', 4) $$, 'Ruby / Sapphire: an admin before each leader, the hideout before the Mind Badge');
SELECT
    results_eq ($$
        SELECT
            refs.milestone_id, opponents.slug, refs.sort_order FROM tracking.mainline_milestone_opponent_refs AS refs
            JOIN tracking.mainline_opponents AS opponents ON opponents.id = refs.opponent_id
            WHERE
                refs.version_group_id = 7
                AND refs.milestone_id IN (70020, 70009, 70021, 70010, 70022)
            ORDER BY refs.milestone_id, refs.sort_order $$, $$
            VALUES (70009, 'shelly', 1), (70009, 'may-brendan', 2), (70009, 'winona', 3), (70010, 'may-brendan', 1), (70010, 'matt', 2), (70010, 'tate-liza', 3), (70020, 'tabitha', 1), (70020, 'maxie', 2), (70021, 'tabitha', 1), (70021, 'maxie', 2), (70022, 'shelly', 1), (70022, 'archie', 2) $$, 'Emerald: Tabitha twice before Maxie, Shelly and Matt on their beats');
SELECT
    results_eq ($$
        SELECT
            opponents.slug, refs.sort_order FROM tracking.mainline_milestone_opponent_refs AS refs
            JOIN tracking.mainline_opponents AS opponents ON opponents.id = refs.opponent_id
            WHERE
                refs.milestone_id = 60029 ORDER BY refs.sort_order $$, $$
            VALUES ('rocket-admin-muk', 1), ('rocket-admin-golbat', 2), ('mewtwo', 3) $$, 'FireRed / LeafGreen: the Rocket Warehouse admins on the way to Cerulean Cave');
SELECT
    results_eq ($$
        SELECT
            opponents.slug, refs.sort_order FROM tracking.mainline_milestone_opponent_refs AS refs
            JOIN tracking.mainline_opponents AS opponents ON opponents.id = refs.opponent_id
            WHERE
                refs.milestone_id = 120022 ORDER BY refs.sort_order $$, $$
            VALUES ('n', 1), ('zekrom', 2), ('reshiram', 3) $$, 'Black 2 / White 2: N at his castle before Dragonspiral Tower');
SELECT
    results_eq ($$
        SELECT
            refs.milestone_id, opponents.slug, refs.sort_order FROM tracking.mainline_milestone_opponent_refs AS refs
            JOIN tracking.mainline_opponents AS opponents ON opponents.id = refs.opponent_id
            WHERE
                refs.version_group_id = 16
                AND refs.milestone_id IN (160004, 160005)
            ORDER BY refs.milestone_id, refs.sort_order $$, $$
            VALUES (160004, 'hau-rival', 1), (160004, 'dulse', 2), (160004, 'soliera', 3), (160004, 'hala', 4), (160005, 'hau-rival', 1), (160005, 'dulse', 2), (160005, 'soliera', 3), (160005, 'gladion', 4), (160005, 'totem-araquanid', 5) $$, 'Ultra Sun / Ultra Moon: Dulse and Soliera at Seaward Cave and Paniola Ranch');
-- The Dragon's Den is its own side-content beat, open after the Boulder Badge.
SELECT
    results_eq ($$
        SELECT
            milestones.category_id, milestones.is_required_for_completion, prerequisites.prerequisite_milestone_id, prerequisites.prerequisite_kind_id
            FROM tracking.mainline_milestones AS milestones
            JOIN tracking.mainline_milestone_prerequisites AS prerequisites ON prerequisites.milestone_id = milestones.id
            WHERE
                milestones.slug = 'dragons-den' AND milestones.version_group_id = 10 $$, $$
            VALUES (1004, FALSE, 100017, 4) $$, 'HeartGold / SoulSilver: the Dragon''s Den hangs off the Boulder Badge and never counts');
SELECT
    results_eq ($$
        SELECT
            opponents.slug, refs.notes FROM tracking.mainline_milestone_opponent_refs AS refs
            JOIN tracking.mainline_opponents AS opponents ON opponents.id = refs.opponent_id
            WHERE
                refs.milestone_id = 100041 $$, $$
            VALUES ('clair-lance', 'Dragon''s Den, Blackthorn City (with Silver). You can skip this battle.') $$, 'HeartGold / SoulSilver: Clair & Lance together in the Dragon''s Den');
-- Every new battle has its full team.
SELECT
    results_eq ($$
        SELECT
            members.version_group_id, opponents.slug, COUNT(*)::integer FROM tracking.mainline_opponent_team_members AS members
            JOIN tracking.mainline_opponents AS opponents ON opponents.id = members.opponent_id
            WHERE
                members.ally_opponent_id IS NULL
                AND (members.version_group_id, opponents.slug) IN ((2, 'jessie-james'), (3, 'petrel'), (3, 'ariana'), (3, 'archer'), (3, 'proton'), (4, 'petrel'), (4, 'ariana'), (4, 'archer'), (4, 'proton'), (5, 'tabitha'), (5, 'courtney'), (5, 'matt'), (5, 'shelly'), (6, 'rocket-admin-muk'), (6, 'rocket-admin-golbat'), (7, 'tabitha'), (7, 'shelly'), (7, 'matt'), (10, 'clair-lance'), (12, 'n'))
            GROUP BY members.version_group_id, opponents.slug ORDER BY members.version_group_id, opponents.slug $$, $$
            VALUES (2, 'jessie-james', 12), (3, 'archer', 3), (3, 'ariana', 6), (3, 'petrel', 9), (3, 'proton', 1), (4, 'archer', 3), (4, 'ariana', 6), (4, 'petrel', 9), (4, 'proton', 1), (5, 'courtney', 4), (5, 'matt', 6), (5, 'shelly', 4), (5, 'tabitha', 6), (6, 'rocket-admin-golbat', 3), (6, 'rocket-admin-muk', 3), (7, 'matt', 2), (7, 'shelly', 4), (7, 'tabitha', 8), (10, 'clair-lance', 6), (12, 'n', 2) $$, 'each new battle carries its whole party');
SELECT
    results_eq ($$
        SELECT
            opponents.slug, members.milestone_id, COUNT(*)::integer FROM tracking.mainline_opponent_team_members AS members
            JOIN tracking.mainline_opponents AS opponents ON opponents.id = members.opponent_id
            WHERE
                members.version_group_id = 16
                AND opponents.slug IN ('dulse', 'soliera')
                AND members.milestone_id IN (160004, 160005)
            GROUP BY opponents.slug, members.milestone_id ORDER BY opponents.slug, members.milestone_id $$, $$
            VALUES ('dulse', 160004, 1), ('dulse', 160005, 1), ('soliera', 160004, 1), ('soliera', 160005, 1) $$, 'Dulse and Soliera bring one Pokemon to each of their first two fights');
-- N brings the dragon of your game; Silver brings the starter that beats yours.
SELECT
    results_eq ($$
        SELECT
            game_id, species_id, level FROM tracking.mainline_opponent_team_members
            WHERE
                milestone_id = 120022
                AND opponent_id = 12039 ORDER BY game_id $$, $$
            VALUES (19, 644, 70), (20, 643, 70) $$, 'N has Zekrom in Black 2 and Reshiram in White 2');
SELECT
    results_eq ($$
        SELECT
            decision_option_slug, species_id, level FROM tracking.mainline_opponent_team_members
            WHERE
                milestone_id = 100041
                AND ally_opponent_id = 10023
                AND slot = 1 ORDER BY decision_option_slug $$, $$
            VALUES ('chikorita'::text, 157, 60), ('cyndaquil', 160, 60), ('totodile', 154, 60) $$, 'Silver leads with the starter that beats yours in the Dragon''s Den');
-- A party with no set moves gets the game's default, in the game's order.
SELECT
    results_eq ($$
        SELECT
            members.milestone_id, array_agg(move_id ORDER BY member_moves.slot)
            FROM tracking.mainline_opponent_team_members AS members
            JOIN tracking.mainline_opponent_team_member_moves AS member_moves ON member_moves.team_member_id = members.id
            WHERE
                (members.milestone_id, members.opponent_id, members.slot) IN ((20022, 2020, 2), (30009, 3031, 2), (50018, 5026, 2))
            GROUP BY members.milestone_id ORDER BY members.milestone_id $$, $$
            VALUES (20022, ARRAY[43, 40, 44, 137]), (30009, ARRAY[39, 98, 158, 184]), (50018, ARRAY[336, 28, 44, 316]) $$, 'Jessie & James''s Arbok, Petrel''s Raticate and Tabitha''s Poochyena know the game''s default moves');
-- Set moves keep the game's order.
SELECT
    results_eq ($$
        SELECT
            array_agg(move_id ORDER BY member_moves.slot)
            FROM tracking.mainline_opponent_team_members AS members
            JOIN tracking.mainline_opponent_team_member_moves AS member_moves ON member_moves.team_member_id = members.id
            WHERE
                members.milestone_id = 60029
                AND members.opponent_id = 6028
                AND members.slot = 3 $$, $$
            VALUES (ARRAY[53, 242, 231, 247]) $$, 'the second Rocket Admin''s Houndoom knows Flamethrower, Crunch, Iron Tail and Shadow Ball');
SELECT
    *
FROM
    finish ();
ROLLBACK;
