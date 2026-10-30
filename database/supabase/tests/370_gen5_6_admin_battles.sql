CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- The evil-team admin battles the story forces in Black 2 / White 2, X / Y
-- and Omega Ruby / Alpha Sapphire: Zinzolin and the Shadow Triad, the Team
-- Flare scientists, and the Magma and Aqua Admins, pinned so they stay as
-- the games have them.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (9);
-- Who you fight at each Story point, in order.
SELECT
    results_eq ($$
        SELECT
            refs.milestone_id, opponents.slug, refs.sort_order FROM tracking.mainline_milestone_opponent_refs AS refs
            JOIN tracking.mainline_opponents AS opponents ON opponents.id = refs.opponent_id
            WHERE
                refs.milestone_id IN (120009, 120010, 120011, 120012)
            ORDER BY refs.milestone_id, refs.sort_order $$, $$
            VALUES (120009, 'hugh', 1), (120009, 'zinzolin-grunt', 2), (120009, 'drayden', 3), (120010, 'zinzolin', 1), (120010, 'shadow-absol', 2), (120010, 'marlon', 3), (120011, 'zinzolin-grunt', 1), (120011, 'zinzolin', 2), (120011, 'colress', 3), (120012, 'shadow-absol', 1), (120012, 'shadow-banette', 2), (120012, 'shadow-accelgor', 3), (120012, 'kyurem', 4), (120012, 'ghetsis', 5), (120012, 'hugh', 6) $$, 'Black 2 / White 2: Zinzolin at Lacunosa, Opelucid and the Plasma Frigate, the Shadows before Ghetsis');
SELECT
    results_eq ($$
        SELECT
            refs.milestone_id, opponents.slug, refs.sort_order FROM tracking.mainline_milestone_opponent_refs AS refs
            JOIN tracking.mainline_opponents AS opponents ON opponents.id = refs.opponent_id
            WHERE
                refs.milestone_id IN (130009, 130011, 130021)
            ORDER BY refs.milestone_id, refs.sort_order $$, $$
            VALUES (130009, 'aliana', 1), (130009, 'clemont', 2), (130011, 'celosia-bryony', 1), (130011, 'mable', 2), (130011, 'serena-calem', 3), (130011, 'olympia', 4), (130021, 'lysandre', 1), (130021, 'aliana', 2), (130021, 'celosia', 3), (130021, 'bryony', 4), (130021, 'mable', 5), (130021, 'xerosic', 6) $$, 'X / Y: the Team Flare scientists at the Power Plant, the Poké Ball Factory, Frost Cavern and Lysandre Labs');
SELECT
    results_eq ($$
        SELECT
            refs.milestone_id, opponents.slug, opponents.game_id, refs.sort_order FROM tracking.mainline_milestone_opponent_refs AS refs
            JOIN tracking.mainline_opponents AS opponents ON opponents.id = refs.opponent_id
            WHERE
                refs.milestone_id IN (140019, 140009, 140010, 140018)
                AND opponents.slug ~ '^(tabitha|courtney|shelly|matt)' ORDER BY refs.milestone_id, refs.sort_order $$, $$
            VALUES (140009, 'courtney-grunt', 23, 1), (140009, 'matt-grunt', 24, 2), (140009, 'tabitha', 23, 3), (140009, 'shelly', 24, 4), (140010, 'courtney', 23, 1), (140010, 'matt', 24, 2), (140010, 'courtney-magma-hideout', 23, 4), (140010, 'matt-aqua-hideout', 24, 5), (140018, 'courtney', 23, 1), (140018, 'matt', 24, 2), (140018, 'courtney-grunt', 23, 4), (140018, 'matt-grunt', 24, 5), (140019, 'tabitha-grunt', 23, 1), (140019, 'shelly-grunt', 24, 2), (140019, 'tabitha', 23, 3), (140019, 'shelly', 24, 4) $$, 'Omega Ruby / Alpha Sapphire: each game''s own Admins, in Story order');
-- Every new battle has its full team.
SELECT
    results_eq ($$
        SELECT
            opponent_id, COUNT(*)::integer FROM tracking.mainline_opponent_team_members
            WHERE (opponent_id BETWEEN 12034 AND 12038
                OR opponent_id BETWEEN 13030 AND 13035
                OR opponent_id BETWEEN 14051 AND 14060)
            AND ally_opponent_id IS NULL GROUP BY opponent_id ORDER BY opponent_id $$, $$
        VALUES (12034, 6), (12035, 10), (12036, 6), (12037, 3), (12038, 3), (13030, 3), (13031, 2), (13032, 2), (13033, 2), (13034, 3), (13035, 2), (14051, 3), (14052, 3), (14053, 5), (14054, 2), (14055, 1), (14056, 3), (14057, 3), (14058, 5), (14059, 2), (14060, 1) $$, 'each admin battle carries its whole party');
-- A Grunt beside Zinzolin fights at the game's Normal Mode level.
SELECT
    results_eq ($$
        SELECT
            species_id, level FROM tracking.mainline_opponent_team_members
            WHERE
                milestone_id = 120009
                AND opponent_id = 12035
                AND ally_opponent_id IS NULL ORDER BY slot $$, $$
            VALUES (615, 42), (215, 44), (42, 39), (569, 39) $$, 'Zinzolin and his Grunt at Lacunosa Town');
-- The Space Center Admins Mega Evolve; Steven beside you holds his stone.
SELECT
    results_eq ($$
        SELECT
            members.opponent_id, forms.slug, items.slug FROM tracking.mainline_opponent_team_members AS members
            JOIN reference.pokemon_forms AS forms ON forms.id = members.form_id
            JOIN reference.items AS items ON items.id = members.held_item_id
            WHERE
                members.milestone_id = 140018
                AND members.opponent_id IN (14053, 14058)
                AND members.ally_opponent_id IS NULL ORDER BY members.opponent_id $$, $$
            VALUES (14053, 'mega-camerupt', 'cameruptite'), (14058, 'mega-sharpedo', 'sharpedonite') $$, 'Courtney''s Camerupt and Matt''s Sharpedo Mega Evolve at the Space Center');
SELECT
    results_eq ($$ SELECT DISTINCT
            forms.slug, items.slug FROM tracking.mainline_opponent_team_members AS members
            JOIN reference.pokemon_forms AS forms ON forms.id = members.form_id
            JOIN reference.items AS items ON items.id = members.held_item_id
            WHERE
                members.milestone_id = 140018
                AND members.ally_opponent_id = 14013 $$, $$
            VALUES ('metagross'::text, 'metagrossite'::text) $$, 'Steven''s Metagross is sent out holding its Mega Stone');
-- Partners follow your starter.
SELECT
    results_eq ($$
        SELECT
            members.milestone_id, members.decision_option_slug, species.slug FROM tracking.mainline_opponent_team_members AS members
            JOIN reference.pokemon_species AS species ON species.id = members.species_id
            WHERE
                members.ally_opponent_id IN (12016, 13018, 14015)
                AND members.milestone_id IN (120009, 130011, 140019)
                AND species.slug IN ('emboar', 'samurott', 'serperior', 'delphox', 'greninja', 'chesnaught', 'combusken', 'marshtomp', 'grovyle')
                AND members.opponent_id <> 14056 ORDER BY members.milestone_id, members.decision_option_slug $$, $$
            VALUES (120009, 'oshawott'::text, 'serperior'::text), (120009, 'snivy', 'emboar'), (120009, 'tepig', 'samurott'), (130011, 'chespin', 'delphox'), (130011, 'fennekin', 'greninja'), (130011, 'froakie', 'chesnaught'), (140019, 'mudkip', 'grovyle'), (140019, 'torchic', 'marshtomp'), (140019, 'treecko', 'combusken') $$, 'Hugh, Serena / Calem and Brendan / May bring the starter that beats yours');
SELECT
    results_eq ($$
        SELECT
            COUNT(DISTINCT (milestone_id, opponent_id, ally_opponent_id))::integer FROM tracking.mainline_opponent_team_members
            WHERE
                ally_opponent_id IS NOT NULL
                AND version_group_id IN (12, 13, 14)
                AND milestone_id <> 130005 $$, $$
            VALUES (9) $$, 'nine of these admin battles have someone fighting beside you');
SELECT
    *
FROM
    finish ();
ROLLBACK;
