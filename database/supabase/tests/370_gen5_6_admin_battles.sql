CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- The evil-team admin battles the story forces in Black 2 / White 2, X / Y
-- and Omega Ruby / Alpha Sapphire: Zinzolin and the Shadow Triad, the Team
-- Flare scientists, and the Magma and Aqua Admins, pinned so they stay as
-- the games have them.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (10);
-- Who you fight at each Story point, in order.
SELECT
    results_eq ($$
        SELECT
            refs.milestone_id, opponents.slug, refs.sort_order FROM tracking.mainline_milestone_opponent_refs AS refs
            JOIN tracking.mainline_opponents AS opponents ON opponents.id = refs.opponent_id
            WHERE
                refs.milestone_id IN (120009, 120031, 120010, 120011, 120012)
            ORDER BY refs.milestone_id, refs.sort_order $$, $$
            VALUES (120009, 'hugh', 1), (120009, 'zinzolin-grunt', 2), (120009, 'drayden', 3), (120010, 'marlon', 1), (120011, 'zinzolin-grunt', 1), (120011, 'zinzolin', 2), (120011, 'colress', 3), (120012, 'shadow-absol', 1), (120012, 'shadow-banette', 2), (120012, 'shadow-accelgor', 3), (120012, 'kyurem', 4), (120012, 'ghetsis', 5), (120031, 'zinzolin', 1), (120031, 'shadow-absol', 2) $$, 'Black 2 / White 2: Zinzolin at Lacunosa, Opelucid and the Plasma Frigate, the Shadows before Ghetsis');
SELECT
    results_eq ($$
        SELECT
            refs.milestone_id, opponents.slug, refs.sort_order FROM tracking.mainline_milestone_opponent_refs AS refs
            JOIN tracking.mainline_opponents AS opponents ON opponents.id = refs.opponent_id
            WHERE
                refs.milestone_id IN (130027, 130028, 130029, 130021)
            ORDER BY refs.milestone_id, refs.sort_order $$, $$
            VALUES (130021, 'lysandre', 1), (130021, 'aliana', 2), (130021, 'celosia', 3), (130021, 'bryony', 4), (130021, 'mable', 5), (130021, 'xerosic', 6), (130027, 'aliana', 1), (130028, 'celosia-bryony', 1), (130029, 'mable', 1) $$, 'X / Y: the Team Flare scientists at the Power Plant, the Poké Ball Factory, Frost Cavern and Lysandre Labs');
SELECT
    results_eq ($$
        SELECT
            refs.milestone_id, opponents.slug, opponents.game_id, refs.sort_order FROM tracking.mainline_milestone_opponent_refs AS refs
            JOIN tracking.mainline_opponents AS opponents ON opponents.id = refs.opponent_id
            WHERE
                refs.milestone_id IN (140018, 140019, 140036, 140037, 140038, 140039, 140040)
                AND opponents.slug ~ '^(tabitha|courtney|shelly|matt)' ORDER BY refs.milestone_id, refs.sort_order $$, $$
            VALUES (140018, 'courtney', 23, 1), (140018, 'matt', 24, 2), (140018, 'courtney-grunt', 23, 4), (140018, 'matt-grunt', 24, 5), (140019, 'tabitha', 23, 1), (140019, 'shelly', 24, 3), (140036, 'tabitha-grunt', 23, 1), (140036, 'shelly-grunt', 24, 2), (140037, 'courtney-grunt', 23, 1), (140037, 'matt-grunt', 24, 2), (140038, 'tabitha', 23, 1), (140038, 'shelly', 24, 2), (140039, 'courtney', 23, 1), (140039, 'matt', 24, 2), (140040, 'courtney-magma-hideout', 23, 2), (140040, 'matt-aqua-hideout', 24, 3) $$, 'Omega Ruby / Alpha Sapphire: each game''s own Admins, in Story order');
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
            members.milestone_id, CONCAT_WS('-', members.variant_slug, members.decision_option_slug), species.slug FROM tracking.mainline_opponent_team_members AS members
            JOIN reference.pokemon_species AS species ON species.id = members.species_id
            WHERE
                members.ally_opponent_id IN (12016, 13018, 14015)
                AND members.milestone_id IN (120009, 130028, 140036)
                AND species.slug IN ('emboar', 'samurott', 'serperior', 'delphox', 'greninja', 'chesnaught', 'combusken', 'marshtomp', 'grovyle')
                AND members.opponent_id <> 14056 ORDER BY members.milestone_id, 2 $$, $$
            VALUES (120009, 'oshawott'::text, 'serperior'::text), (120009, 'snivy', 'emboar'), (120009, 'tepig', 'samurott'), (130028, 'calem-chespin', 'delphox'), (130028, 'calem-fennekin', 'greninja'), (130028, 'calem-froakie', 'chesnaught'), (130028, 'serena-chespin', 'delphox'), (130028, 'serena-fennekin', 'greninja'), (130028, 'serena-froakie', 'chesnaught'), (140036, 'mudkip', 'grovyle'), (140036, 'torchic', 'marshtomp'), (140036, 'treecko', 'combusken') $$, 'Hugh, Serena / Calem and Brendan / May bring the starter that beats yours');
-- Serena's Meowstic is female, Calem's male.
SELECT
    results_eq ($$ SELECT DISTINCT
            split_part(members.variant_slug, '-', 1), forms.slug FROM tracking.mainline_opponent_team_members AS members
            JOIN reference.pokemon_forms AS forms ON forms.id = members.form_id
            WHERE
                members.milestone_id = 130028
                AND members.ally_opponent_id = 13018
                AND members.species_id = 678 ORDER BY 1 $$, $$
            VALUES ('calem'::text, 'meowstic'::text), ('serena', 'meowstic-female') $$, 'Serena / Calem''s partner Meowstic matches who your partner is');
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
