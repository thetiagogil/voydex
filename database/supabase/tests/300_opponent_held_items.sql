CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- What opponents' Pokémon hold in each game, beyond the items a battle
-- mechanic needs: berries, herbs and other held items, from each game's own
-- data. Gen 1, Let's Go and Legends: Arceus have no held items.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (17);
SELECT
    is_empty ($$
        SELECT
            id FROM tracking.mainline_opponent_team_members
            WHERE
                held_item_id IS NOT NULL
                AND version_group_id IN (1, 2, 17, 22) $$, 'Red / Blue, Yellow, Let''s Go and Legends: Arceus opponents hold nothing');
SELECT
    is_empty ($$
        SELECT
            mainline_opponent_team_members.id FROM tracking.mainline_opponent_team_members
            JOIN reference.version_groups ON version_groups.id = mainline_opponent_team_members.version_group_id
            JOIN reference.items ON items.id = mainline_opponent_team_members.held_item_id
            WHERE
                items.introduced_generation_id > version_groups.generation_id $$, 'no opponent holds an item from a later generation');
-- How many opponent Pokémon hold an item, per game (allies' teams aside).
SELECT
    results_eq ($$
        SELECT
            version_group_id, COUNT(*)::integer FROM tracking.mainline_opponent_team_members
            WHERE
                held_item_id IS NOT NULL
                AND ally_opponent_id IS NULL
                AND version_group_id <= 10 GROUP BY version_group_id ORDER BY version_group_id $$, $$
            VALUES (3, 2), (4, 1), (5, 5), (6, 7), (7, 15), (8, 14), (9, 17), (10, 26) $$, 'Gen 2-4 opponents hold the items their games give them');
SELECT
    results_eq ($$
        SELECT
            version_group_id, COUNT(*)::integer FROM tracking.mainline_opponent_team_members
            WHERE
                held_item_id IS NOT NULL
                AND ally_opponent_id IS NULL
                AND version_group_id BETWEEN 11 AND 14 GROUP BY version_group_id ORDER BY version_group_id $$, $$
            VALUES (11, 39), (12, 58), (13, 8), (14, 9) $$, 'Gen 5-6 opponents hold the items their games give them');
-- Cheren's last Black / White battle: a lens, a berry, a booster and Leftovers.
SELECT
    results_eq ($$
        SELECT
            pokemon_forms.slug, items.slug FROM tracking.mainline_opponent_team_members
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            JOIN reference.pokemon_forms ON pokemon_forms.id = mainline_opponent_team_members.form_id
            JOIN reference.items ON items.id = mainline_opponent_team_members.held_item_id
            WHERE
                mainline_opponent_team_members.version_group_id = 11
                AND mainline_opponents.slug = 'cheren'
                AND mainline_opponent_team_members.decision_option_slug = 'tepig'
                AND mainline_opponent_team_members.level >= 43 ORDER BY mainline_opponent_team_members.slot $$, $$
            VALUES ('unfezant'::text, 'scope-lens'::text), ('liepard'::text, 'sitrus-berry'::text), ('simisear'::text, 'charcoal'::text), ('samurott'::text, 'leftovers'::text) $$, 'Cheren''s last Black / White team holds its items');
-- Bulbapedia overrules PokéWiki on Elesa's Emolga and Shauntal's Drifblim.
SELECT
    is_empty ($$
        SELECT
            mainline_opponent_team_members.id FROM tracking.mainline_opponent_team_members
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            WHERE
                mainline_opponent_team_members.version_group_id = 12
                AND mainline_opponent_team_members.held_item_id IS NOT NULL
                AND ((mainline_opponents.slug = 'elesa'
                    AND mainline_opponent_team_members.species_id = 587)
                OR (mainline_opponents.slug = 'shauntal'
                    AND mainline_opponent_team_members.species_id = 426)) $$, 'Elesa''s Emolga and Shauntal''s Drifblim hold nothing in Black 2 / White 2');
SELECT
    results_eq ($$
        SELECT
            version_group_id, COUNT(*)::integer FROM tracking.mainline_opponent_team_members
            WHERE
                held_item_id IS NOT NULL
                AND ally_opponent_id IS NULL
                AND version_group_id IN (15, 16, 21)
            GROUP BY version_group_id ORDER BY version_group_id $$, $$
            VALUES (15, 37), (16, 44), (21, 100) $$, 'Gen 7 and Brilliant Diamond / Shining Pearl opponents hold the items their games give them');
-- Each Ultra Sun / Ultra Moon totem holds one item; its allies hold nothing.
SELECT
    results_eq ($$
        SELECT
            mainline_opponents.slug, pokemon_forms.slug, items.slug FROM tracking.mainline_opponent_team_members
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            JOIN reference.pokemon_forms ON pokemon_forms.id = mainline_opponent_team_members.form_id
            LEFT JOIN reference.items ON items.id = mainline_opponent_team_members.held_item_id
            WHERE
                mainline_opponent_team_members.version_group_id = 16
                AND mainline_opponents.opponent_role IN ('trial-captain', 'totem')
                AND mainline_opponent_team_members.slot = 1
                AND mainline_opponent_team_members.level < 60 ORDER BY mainline_opponent_team_members.milestone_id, mainline_opponent_team_members.game_id $$, $$
            VALUES ('ilima'::text, 'gumshoos'::text, 'pecha-berry'::text), ('ilima'::text, 'alolan-raticate'::text, 'pecha-berry'::text), ('lana'::text, 'araquanid'::text, 'wacan-berry'::text), ('kiawe'::text, 'alolan-marowak'::text, 'thick-club'::text), ('mallow'::text, 'lurantis'::text, 'power-herb'::text), ('sophocles'::text, 'togedemaru'::text, 'sitrus-berry'::text), ('acerola'::text, 'mimikyu'::text, 'lum-berry'::text), ('mina'::text, 'ribombee'::text, 'occa-berry'::text), ('totem-kommo-o'::text, 'kommo-o'::text, 'roseli-berry'::text) $$, 'each Ultra Sun / Ultra Moon totem holds its item');
SELECT
    is_empty ($$
        SELECT
            mainline_opponent_team_members.id FROM tracking.mainline_opponent_team_members
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            WHERE
                mainline_opponent_team_members.version_group_id IN (15, 16)
                AND mainline_opponents.opponent_role IN ('trial-captain', 'totem')
                AND mainline_opponent_team_members.slot > 1
                AND mainline_opponent_team_members.held_item_id IS NOT NULL $$, 'totem allies hold nothing');
SELECT
    results_eq ($$
        SELECT
            version_group_id, COUNT(*)::integer FROM tracking.mainline_opponent_team_members
            WHERE
                held_item_id IS NOT NULL
                AND ally_opponent_id IS NULL
                AND version_group_id IN (18, 19, 20, 23, 24, 25, 26, 27)
            GROUP BY version_group_id ORDER BY version_group_id $$, $$
            VALUES (18, 6), (20, 1), (23, 6), (24, 17), (25, 31), (26, 19) $$, 'Gen 8-9 opponents hold the items their games give them');
-- Koraidon and Miraidon bring their own weather and terrain items.
SELECT
    results_eq ($$ SELECT DISTINCT
            mainline_opponent_team_members.species_id, items.slug FROM tracking.mainline_opponent_team_members
            JOIN reference.items ON items.id = mainline_opponent_team_members.held_item_id
            WHERE
                mainline_opponent_team_members.version_group_id = 23
                AND mainline_opponent_team_members.species_id IN (1007, 1008)
            ORDER BY mainline_opponent_team_members.species_id $$, $$
            VALUES (1007, 'heat-rock'::text), (1008, 'terrain-extender'::text) $$, 'Koraidon holds a Heat Rock and Miraidon a Terrain Extender');
-- Only the Titanic Okidogi after The Way Home holds an item among the Loyal Three.
SELECT
    results_eq ($$
        SELECT
            mainline_opponent_team_members.species_id, mainline_opponent_team_members.level, items.slug FROM tracking.mainline_opponent_team_members
            JOIN reference.items ON items.id = mainline_opponent_team_members.held_item_id
            WHERE
                mainline_opponent_team_members.version_group_id = 24
                AND mainline_opponent_team_members.species_id IN (1014, 1015, 1016) $$, $$
            VALUES (1014, 85, 'liechi-berry'::text) $$, 'the Titanic Okidogi holds a Liechi Berry after The Way Home');
-- Emerald's gym leaders gained items Ruby / Sapphire's never had.
SELECT
    results_eq ($$
        SELECT
            mainline_opponent_team_members.version_group_id, items.slug FROM tracking.mainline_opponent_team_members
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            LEFT JOIN reference.items ON items.id = mainline_opponent_team_members.held_item_id
            WHERE
                mainline_opponents.slug = 'flannery'
                AND mainline_opponent_team_members.species_id = 324
                AND mainline_opponent_team_members.version_group_id IN (5, 7)
            ORDER BY mainline_opponent_team_members.version_group_id $$, $$
            VALUES (5, NULL::text), (7, 'white-herb'::text) $$, 'Flannery''s Torkoal holds nothing in Ruby / Sapphire and a White Herb in Emerald');
SELECT
    results_eq ($$
        SELECT
            items.slug FROM tracking.mainline_opponent_team_members
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            JOIN reference.items ON items.id = mainline_opponent_team_members.held_item_id
            WHERE
                mainline_opponent_team_members.version_group_id = 7
                AND mainline_opponents.slug = 'roxanne'         $$, $$
            VALUES ('oran-berry'::text) $$, 'Roxanne''s Nosepass holds an Oran Berry in Emerald');
SELECT
    results_eq ($$
        SELECT
            items.slug FROM tracking.mainline_opponent_team_members
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            JOIN reference.items ON items.id = mainline_opponent_team_members.held_item_id
            WHERE
                mainline_opponent_team_members.version_group_id = 9
                AND mainline_opponents.slug = 'cynthia'         $$, $$
            VALUES ('sitrus-berry'::text) $$, 'Cynthia''s Garchomp holds a Sitrus Berry in Platinum');
-- Wild Ho-Oh carries Sacred Ash in Gen 2 and HeartGold / SoulSilver, not in
-- FireRed / LeafGreen.
-- Omega Ruby / Alpha Sapphire gives it Sacred Ash too.
SELECT
    results_eq ($$
        SELECT
            mainline_opponent_team_members.version_group_id, mainline_opponent_team_members.level, items.slug FROM tracking.mainline_opponent_team_members
        LEFT JOIN reference.items ON items.id = mainline_opponent_team_members.held_item_id
        WHERE
            mainline_opponent_team_members.species_id = 250
            AND mainline_opponent_team_members.version_group_id <= 10 ORDER BY mainline_opponent_team_members.version_group_id, mainline_opponent_team_members.level $$, $$
        VALUES (3, 40, 'sacred-ash'::text), (3, 70, 'sacred-ash'::text), (4, 60, 'sacred-ash'::text), (6, 70, NULL::text), (10, 45, 'sacred-ash'::text), (10, 70, 'sacred-ash'::text) $$, 'wild Ho-Oh holds Sacred Ash where its game data gives it one');
-- Gen 2 trainers hold nothing in Story battles.
SELECT
    is_empty ($$
        SELECT
            mainline_opponent_team_members.id FROM tracking.mainline_opponent_team_members
            WHERE
                version_group_id IN (3, 4)
                AND held_item_id IS NOT NULL
                AND species_id <> 250 $$, 'Gold / Silver and Crystal opponents hold nothing but Ho-Oh''s Sacred Ash');
SELECT
    *
FROM
    finish ();
ROLLBACK;
