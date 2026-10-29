CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Opponents' battle mechanics: what each opponent's Pokémon holds, whether it
-- Terastallizes or Dynamaxes, and the battle form it fights in, each only in
-- the games that have the mechanic.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (16);
-- Each mechanic stays in the games that have it.
SELECT
    is_empty ($$
        SELECT
            id FROM tracking.mainline_opponent_team_members
            WHERE
                tera_type_id IS NOT NULL
                AND version_group_id NOT IN (23, 24, 25) $$, 'only Scarlet / Violet opponents Terastallize');
SELECT
    is_empty ($$
        SELECT
            id FROM tracking.mainline_opponent_team_members
            WHERE
                dynamaxes
                AND version_group_id NOT IN (18, 19, 20) $$, 'only Sword / Shield opponents Dynamax');
SELECT
    is_empty ($$
        SELECT
            mainline_opponent_team_members.id FROM tracking.mainline_opponent_team_members
            JOIN reference.items ON items.id = mainline_opponent_team_members.held_item_id
            JOIN reference.item_categories ON item_categories.id = items.primary_category_id
            WHERE
                item_categories.slug = 'z_crystal'
                AND mainline_opponent_team_members.version_group_id NOT IN (15, 16) $$, 'only Sun / Moon and Ultra Sun / Ultra Moon opponents hold Z-Crystals');
SELECT
    is_empty ($$
        SELECT
            id FROM tracking.mainline_opponent_team_members
            WHERE
                held_item_id IS NOT NULL
                AND version_group_id IN (17, 22) $$, 'Let''s Go and Legends: Arceus opponents hold nothing');
-- A Gigantamax form always Dynamaxes.
SELECT
    is_empty ($$
        SELECT
            mainline_opponent_team_members.id FROM tracking.mainline_opponent_team_members
            JOIN reference.pokemon_form_rules ON pokemon_form_rules.form_id = mainline_opponent_team_members.form_id
            WHERE
                pokemon_form_rules.battle_mechanic = 'dynamax'
                AND NOT mainline_opponent_team_members.dynamaxes $$, 'every Gigantamax opponent Dynamaxes');
-- A trainer's Mega holds the Mega Stone that reaches it.
SELECT
    is_empty ($$
        SELECT
            mainline_opponent_team_members.id FROM tracking.mainline_opponent_team_members
            JOIN reference.pokemon_form_rules ON pokemon_form_rules.form_id = mainline_opponent_team_members.form_id
            WHERE
                pokemon_form_rules.battle_mechanic = 'mega-evolution'
                AND mainline_opponent_team_members.held_item_id IS NOT NULL
                AND NOT EXISTS (
                    SELECT
                        1
                    FROM reference.pokemon_form_item_requirements
                    WHERE
                        pokemon_form_item_requirements.form_id = mainline_opponent_team_members.form_id
                        AND pokemon_form_item_requirements.item_id = mainline_opponent_team_members.held_item_id) $$, 'every Mega holds its own Mega Stone');
SELECT
    results_eq ($$
        SELECT
            pokemon_forms.slug, items.slug FROM tracking.mainline_opponent_team_members
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            JOIN reference.pokemon_forms ON pokemon_forms.id = mainline_opponent_team_members.form_id
            JOIN reference.items ON items.id = mainline_opponent_team_members.held_item_id
            WHERE
                mainline_opponent_team_members.version_group_id = 13
                AND mainline_opponents.slug = 'diantha' ORDER BY pokemon_forms.slug $$, $$
            VALUES ('mega-gardevoir'::text, 'gardevoirite'::text) $$, 'Diantha''s Gardevoir holds Gardevoirite');
-- Giovanni's Mewtwo Mega Evolves into X in Ultra Sun and Y in Ultra Moon.
SELECT
    results_eq ($$
        SELECT
            games.slug, pokemon_forms.slug, items.slug FROM tracking.mainline_opponent_team_members
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            JOIN reference.games ON games.id = mainline_opponent_team_members.game_id
            JOIN reference.pokemon_forms ON pokemon_forms.id = mainline_opponent_team_members.form_id
            JOIN reference.items ON items.id = mainline_opponent_team_members.held_item_id
            WHERE
                mainline_opponents.slug = 'giovanni'
                AND mainline_opponent_team_members.version_group_id = 16
                AND mainline_opponent_team_members.species_id = 150 ORDER BY games.id $$, $$
            VALUES ('ultra-sun'::text, 'mega-mewtwo-x'::text, 'mewtwonite-x'::text), ('ultra-moon'::text, 'mega-mewtwo-y'::text, 'mewtwonite-y'::text) $$, 'Giovanni''s Mewtwo is Mega Mewtwo X in Ultra Sun and Y in Ultra Moon');
-- Kukui's ace holds the Z-Crystal of its type, by your starter.
SELECT
    results_eq ($$
        SELECT
            mainline_opponent_team_members.decision_option_slug, pokemon_forms.slug, items.slug FROM tracking.mainline_opponent_team_members
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            JOIN reference.pokemon_forms ON pokemon_forms.id = mainline_opponent_team_members.form_id
            JOIN reference.items ON items.id = mainline_opponent_team_members.held_item_id
            WHERE
                mainline_opponent_team_members.version_group_id = 15
                AND mainline_opponents.name = 'Professor Kukui' ORDER BY mainline_opponent_team_members.decision_option_slug $$, $$
            VALUES ('litten'::text, 'primarina'::text, 'waterium-z'::text), ('popplio'::text, 'decidueye'::text, 'grassium-z'::text), ('rowlet'::text, 'incineroar'::text, 'firium-z'::text) $$, 'Kukui''s ace holds the Z-Crystal of its type');
-- Leon's Charizard Gigantamaxes; Nessa's Drednaw only Dynamaxes at her Gym.
SELECT
    results_eq ($$ SELECT DISTINCT
            mainline_opponents.slug, pokemon_forms.slug, mainline_opponent_team_members.dynamaxes FROM tracking.mainline_opponent_team_members
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            JOIN reference.pokemon_forms ON pokemon_forms.id = mainline_opponent_team_members.form_id
            WHERE
                mainline_opponent_team_members.version_group_id = 18
                AND mainline_opponents.slug IN ('leon', 'nessa')
                AND mainline_opponent_team_members.species_id IN (6, 834)
            ORDER BY mainline_opponents.slug, pokemon_forms.slug $$, $$
            VALUES ('leon'::text, 'gigantamax-charizard'::text, TRUE), ('nessa'::text, 'drednaw'::text, TRUE), ('nessa'::text, 'gigantamax-drednaw'::text, TRUE) $$, 'Leon''s Charizard Gigantamaxes; Nessa''s Drednaw Dynamaxes at her Gym and Gigantamaxes in the finals');
-- Geeta's Glimmora Terastallizes into Rock, and Ogerpon into each mask's type.
SELECT
    results_eq ($$
        SELECT
            pokemon_forms.slug, tera_types.slug FROM tracking.mainline_opponent_team_members
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            JOIN reference.pokemon_forms ON pokemon_forms.id = mainline_opponent_team_members.form_id
            JOIN reference.tera_types ON tera_types.id = mainline_opponent_team_members.tera_type_id
            WHERE
                mainline_opponents.slug = 'geeta' ORDER BY pokemon_forms.slug $$, $$
            VALUES ('glimmora'::text, 'rock'::text) $$, 'Geeta''s Glimmora Terastallizes into Rock');
SELECT
    results_eq ($$ SELECT DISTINCT
            pokemon_forms.slug, tera_types.slug, items.slug FROM tracking.mainline_opponent_team_members
            JOIN reference.pokemon_forms ON pokemon_forms.id = mainline_opponent_team_members.form_id
            JOIN reference.tera_types ON tera_types.id = mainline_opponent_team_members.tera_type_id
            LEFT JOIN reference.items ON items.id = mainline_opponent_team_members.held_item_id
            WHERE
                mainline_opponent_team_members.version_group_id = 24
                AND mainline_opponent_team_members.species_id = 1017 ORDER BY pokemon_forms.slug $$, $$
            VALUES ('ogerpon'::text, 'grass'::text, NULL::text), ('ogerpon-cornerstone'::text, 'rock'::text, 'cornerstone-mask'::text), ('ogerpon-hearthflame'::text, 'fire'::text, 'hearthflame-mask'::text), ('ogerpon-wellspring'::text, 'water'::text, 'wellspring-mask'::text) $$, 'Ogerpon Terastallizes into each mask''s type, holding the mask');
-- Kieran's Terapagos doesn't Terastallize in his battle; the Stellar Form boss does.
SELECT
    results_eq ($$
        SELECT
            pokemon_forms.slug, tera_types.slug FROM tracking.mainline_opponent_team_members
            JOIN reference.pokemon_forms ON pokemon_forms.id = mainline_opponent_team_members.form_id
            LEFT JOIN reference.tera_types ON tera_types.id = mainline_opponent_team_members.tera_type_id
            WHERE
                mainline_opponent_team_members.species_id = 1024 ORDER BY pokemon_forms.id $$, $$
            VALUES ('terapagos-terastal'::text, NULL::text), ('terapagos-stellar'::text, 'stellar'::text) $$, 'only the Stellar Form Terapagos Terastallizes');
-- The table refuses what no battle allows.
SELECT
    throws_ok ($$ UPDATE
            tracking.mainline_opponent_team_members
        SET
            tera_type_id = 13
            WHERE
                version_group_id = 18
                AND dynamaxes $$, '23514', NULL, 'a Pokémon cannot both Dynamax and Terastallize');
SELECT
    throws_ok ($$ INSERT INTO tracking.mainline_opponent_team_members (milestone_id, opponent_id, version_group_id, slot, species_id, form_id, level, tera_type_id)
        SELECT
            milestone_id, opponent_id, version_group_id, 6, 1017, 101701, 70, 1 FROM tracking.mainline_opponent_team_members
            WHERE
                version_group_id = 24 LIMIT 1 $$, '23514', NULL, 'a Wellspring Mask Ogerpon cannot take a Tera Type other than Water');
SELECT
    lives_ok ($$ UPDATE
            tracking.mainline_opponent_team_members
        SET
            held_item_id = NULL
            WHERE
                version_group_id = 13 $$, 'held items can be left out');
SELECT
    *
FROM
    finish ();
ROLLBACK;
