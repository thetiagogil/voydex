CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Tera Types (the 18 types and Stellar), fixed Tera Types, and the battle
-- form gaps: Primal orbs and Ultranecrozium Z only where a player uses them,
-- the Mega Stones of Let's Go and X / Y, Eternal Flower Floette and Original
-- Color Magearna.
BEGIN;
SET LOCAL search_path = extensions, public;
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000f4', 'authenticated', 'authenticated', 'tera-types@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW()), ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000f5', 'authenticated', 'authenticated', 'tera-types-other@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW());
INSERT INTO gameplay.mainline_plays (id, user_id, game_id, version_group_id, status_id, name)
VALUES
    ('7b000000-0000-0000-0000-0000000000a0', '00000000-0000-0000-0000-0000000000f4', 36, 23, 2, 'Paldea Run'),
    ('7b000000-0000-0000-0000-0000000000b0', '00000000-0000-0000-0000-0000000000f4', 38, 26, 2, 'Lumiose Run');
INSERT INTO gameplay.mainline_play_pokemon (id, play_id, roster_state_id, slot, species_id, form_id, nickname)
VALUES
    ('7c000000-0000-0000-0000-0000000000a1', '7b000000-0000-0000-0000-0000000000a0', 1, 1, 849, 84900, 'Volt'),
    ('7c000000-0000-0000-0000-0000000000a2', '7b000000-0000-0000-0000-0000000000a0', 1, 2, 1017, 101701, 'Spring'),
    ('7c000000-0000-0000-0000-0000000000a3', '7b000000-0000-0000-0000-0000000000a0', 1, 3, 1024, 102400, 'Crown');
SELECT
    plan (33);
-- Tera Types: every type from Scarlet / Violet with its own id, and Stellar
-- from The Indigo Disk with no type.
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                reference.tera_types),
            19,
            'there are 19 Tera Types');
SELECT
    results_eq ($$
        SELECT
            slug, name, type_id, introduced_version_group_id FROM reference.tera_types
            WHERE
                id = 19 $$, $$
            VALUES ('stellar'::text, 'Stellar'::text, NULL::integer, 25) $$, 'Stellar has no type and arrives with The Indigo Disk');
SELECT
    is_empty ($$
        SELECT
            tera_types.id FROM reference.tera_types
        LEFT JOIN reference.types ON types.id = tera_types.type_id
        WHERE
            tera_types.id <> 19
            AND (tera_types.type_id IS DISTINCT FROM tera_types.id
                OR types.slug IS DISTINCT FROM tera_types.slug
                OR tera_types.introduced_version_group_id <> 23) $$, 'each type''s Tera Type shares its id and slug and starts in Scarlet / Violet');
-- Fixed Tera Types: each Ogerpon mask and Terapagos.
SET LOCAL ROLE anon;
SELECT
    results_eq ($$
        SELECT
            pokemon_forms.slug, tera_types.slug FROM reference.pokemon_fixed_tera_types
            JOIN reference.pokemon_forms ON pokemon_forms.id = pokemon_fixed_tera_types.form_id
            JOIN reference.tera_types ON tera_types.id = pokemon_fixed_tera_types.tera_type_id ORDER BY pokemon_forms.id $$, $$
        VALUES ('ogerpon'::text, 'grass'::text), ('ogerpon-wellspring', 'water'), ('ogerpon-hearthflame', 'fire'), ('ogerpon-cornerstone', 'rock'), ('terapagos', 'stellar') $$, 'anyone reads the fixed Tera Types of Ogerpon and Terapagos');
SELECT
    throws_ok ($$ INSERT INTO reference.tera_types (id, slug, name, type_id, introduced_version_group_id, sort_order)
            VALUES (20, 'shadow', 'Shadow', NULL, 25, 20) $$, '42501', NULL, 'clients cannot add a Tera Type');
RESET ROLE;
-- The fixed Tera Type is enforced on a member's row.
SELECT
    throws_ok ($$ UPDATE
            gameplay.mainline_play_pokemon
        SET
            tera_type_id = 5
            WHERE
                id = '7c000000-0000-0000-0000-0000000000a2'::uuid $$, '23514', NULL, 'Wellspring Mask Ogerpon cannot be Tera Grass');
SELECT
    lives_ok ($$ UPDATE
            gameplay.mainline_play_pokemon
        SET
            tera_type_id = 3
            WHERE
                id = '7c000000-0000-0000-0000-0000000000a2'::uuid $$, 'Wellspring Mask Ogerpon can be Tera Water');
SELECT
    throws_ok ($$ UPDATE
            gameplay.mainline_play_pokemon
        SET
            form_id = 101702
            WHERE
                id = '7c000000-0000-0000-0000-0000000000a2'::uuid $$, '23514', NULL, 'a mask change that keeps Tera Water is refused');
SELECT
    lives_ok ($$ UPDATE
            gameplay.mainline_play_pokemon
        SET
            tera_type_id = NULL
            WHERE
                id = '7c000000-0000-0000-0000-0000000000a2'::uuid $$, 'a fixed form can have no Tera Type recorded');
SELECT
    throws_ok ($$ UPDATE
            gameplay.mainline_play_pokemon
        SET
            tera_type_id = 1
            WHERE
                id = '7c000000-0000-0000-0000-0000000000a3'::uuid $$, '23514', NULL, 'Terapagos cannot be Tera Normal');
-- The owner saves Tera Types through the editor's one call.
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000f4', TRUE);
SET LOCAL ROLE authenticated;
SELECT
    lives_ok ($$
        SELECT
            gameplay.update_mainline_play_pokemon ('7c000000-0000-0000-0000-0000000000a1', p_nickname => 'Volt', p_tera_type_id => 19) $$, 'a member can be Tera Stellar');
SELECT
    results_eq ($$
        SELECT
            tera_type_id, tera_type_slug, tera_type_name, fixed_tera_type_id FROM views.mainline_play_team_detail
            WHERE
                play_pokemon_id = '7c000000-0000-0000-0000-0000000000a1'::uuid $$, $$
            VALUES (19, 'stellar'::text, 'Stellar'::text, NULL::integer) $$, 'the team view reads Stellar, and a form with no fixed Tera Type has none');
SELECT
    throws_ok ($$
        SELECT
            gameplay.update_mainline_play_pokemon ('7c000000-0000-0000-0000-0000000000a2', p_nickname => 'Spring', p_held_item_id => 60, p_tera_type_id => 5) $$, '23514', NULL, 'the editor cannot save Tera Grass on Wellspring Mask Ogerpon');
SELECT
    lives_ok ($$
        SELECT
            gameplay.update_mainline_play_pokemon ('7c000000-0000-0000-0000-0000000000a2', p_nickname => 'Spring', p_held_item_id => 60, p_tera_type_id => 3) $$, 'the editor saves Tera Water on Wellspring Mask Ogerpon');
SELECT
    results_eq ($$
        SELECT
            tera_type_slug, fixed_tera_type_id, fixed_tera_type_slug, fixed_tera_type_name FROM views.mainline_play_team_detail
            WHERE
                play_pokemon_id = '7c000000-0000-0000-0000-0000000000a2'::uuid $$, $$
            VALUES ('water'::text, 3, 'water'::text, 'Water'::text) $$, 'the team view reads the fixed Tera Type');
-- Changing the mask changes a recorded Tera Type with it.
SELECT
    lives_ok ($$
        SELECT
            gameplay.change_mainline_play_pokemon_form ('7c000000-0000-0000-0000-0000000000a2', 101702) $$, 'Wellspring Ogerpon with Tera Water can change to the Hearthflame Mask');
SELECT
    results_eq ($$
        SELECT
            form_id, tera_type_slug FROM views.mainline_play_team_detail
            WHERE
                play_pokemon_id = '7c000000-0000-0000-0000-0000000000a2'::uuid $$, $$
            VALUES (101702, 'fire'::text) $$, 'its recorded Tera Type follows the mask to Fire');
SELECT
    lives_ok ($$
        SELECT
            gameplay.update_mainline_play_pokemon ('7c000000-0000-0000-0000-0000000000a3', p_nickname => 'Crown', p_tera_type_id => 19) $$, 'Terapagos saves Tera Stellar');
-- Another trainer sees none of it.
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000f5', TRUE);
SELECT
    is_empty ($$
        SELECT
            play_pokemon_id FROM views.mainline_play_team_detail
            WHERE
                play_id = '7b000000-0000-0000-0000-0000000000a0'::uuid $$, 'another trainer cannot read the team or its Tera Types');
RESET ROLE;
-- Primal orbs apply from Omega Ruby / Alpha Sapphire to Ultra Sun / Ultra
-- Moon and in Mega Dimension, never in Sword / Shield or base Z-A.
SELECT
    results_eq ($$ SELECT DISTINCT
            version_groups.id FROM reference.pokemon_form_item_requirements
            JOIN reference.pokemon_forms ON pokemon_forms.id = pokemon_form_item_requirements.form_id
            JOIN reference.version_groups ON version_groups.generation_id >= pokemon_form_item_requirements.generation_start_id
                AND (pokemon_form_item_requirements.generation_end_id IS NULL
                    OR version_groups.generation_id <= pokemon_form_item_requirements.generation_end_id)
                AND (pokemon_form_item_requirements.version_group_start_id IS NULL
                    OR version_groups.id >= pokemon_form_item_requirements.version_group_start_id)
                AND (pokemon_form_item_requirements.version_group_end_id IS NULL
                    OR version_groups.id <= pokemon_form_item_requirements.version_group_end_id)
            WHERE
                pokemon_forms.slug IN ('primal-kyogre', 'primal-groudon')
            ORDER BY version_groups.id $$, $$
            VALUES (14), (15), (16), (27) $$, 'the Primal orbs apply only from Omega Ruby / Alpha Sapphire to Ultra Sun / Ultra Moon and in Mega Dimension');
SELECT
    results_eq ($$ SELECT DISTINCT
            version_groups.id FROM reference.pokemon_form_item_requirements
            JOIN reference.pokemon_forms ON pokemon_forms.id = pokemon_form_item_requirements.form_id
            JOIN reference.version_groups ON version_groups.generation_id >= pokemon_form_item_requirements.generation_start_id
                AND (pokemon_form_item_requirements.generation_end_id IS NULL
                    OR version_groups.generation_id <= pokemon_form_item_requirements.generation_end_id)
                AND (pokemon_form_item_requirements.version_group_start_id IS NULL
                    OR version_groups.id >= pokemon_form_item_requirements.version_group_start_id)
                AND (pokemon_form_item_requirements.version_group_end_id IS NULL
                    OR version_groups.id <= pokemon_form_item_requirements.version_group_end_id)
            WHERE
                pokemon_forms.slug = 'ultra-necrozma' ORDER BY version_groups.id $$, $$
            VALUES (16) $$, 'Ultranecrozium Z applies only in Ultra Sun / Ultra Moon');
SELECT
    results_eq ($$
        SELECT
            items.slug, item_availability.version_group_id FROM reference.item_availability
            JOIN reference.items ON items.id = item_availability.item_id
            WHERE
                items.slug IN ('red-orb', 'blue-orb')
                AND item_availability.version_group_id IN (26, 27)
            ORDER BY items.slug $$, $$
            VALUES ('blue-orb'::text, 27), ('red-orb'::text, 27) $$, 'the Red and Blue Orbs come from Mega Dimension, not base Z-A');
-- Mega Stones of Let's Go and X / Y.
SELECT
    results_eq ($$
        SELECT
            items.slug FROM reference.item_availability
            JOIN reference.items ON items.id = item_availability.item_id
            JOIN reference.item_categories ON item_categories.id = items.primary_category_id
            WHERE
                item_categories.slug = 'mega_stone'
                AND item_availability.version_group_id = 17 ORDER BY items.id $$, $$
            VALUES ('venusaurite'::text), ('charizardite-x'), ('charizardite-y'), ('blastoisinite'), ('beedrillite'), ('pidgeotite'), ('alakazite'), ('slowbronite'), ('gengarite'), ('kangaskhanite'), ('pinsirite'), ('gyaradosite'), ('aerodactylite'), ('mewtwonite-x'), ('mewtwonite-y') $$, 'Let''s Go has its 15 Mega Stones');
SELECT
    results_eq ($$
        SELECT
            items.slug, item_availability.availability_method_id FROM reference.item_availability
            JOIN reference.items ON items.id = item_availability.item_id
            WHERE
                items.slug IN ('lucarionite', 'gardevoirite')
                AND item_availability.version_group_id = 13 ORDER BY items.slug $$, $$
            VALUES ('gardevoirite'::text, 5), ('lucarionite'::text, 4) $$, 'X / Y has Gardevoirite from a trade and Lucarionite from a gift');
-- Eternal Flower Floette: a stored form, a Z-A reward, and Mega Floette's base.
SELECT
    lives_ok ($$ INSERT INTO gameplay.mainline_play_pokemon (play_id, roster_state_id, slot, species_id, form_id)
            VALUES ('7b000000-0000-0000-0000-0000000000b0', 1, 1, 670, 67002) $$, 'Eternal Flower Floette can be a member''s stored form');
SELECT
    results_eq ($$
        SELECT
            primary_type_id, secondary_type_id, base_hp, base_attack, base_defense, base_special_attack, base_special_defense, base_speed FROM reference.pokemon_attributes
            WHERE
                form_id = 67002 $$, $$
            VALUES (18, NULL::integer, 74, 65, 67, 125, 128, 92) $$, 'Eternal Flower Floette is Fairy with its own stats');
SELECT
    results_eq ($$
        SELECT
            availability_methods.slug FROM reference.pokemon_availability
            JOIN reference.availability_methods ON availability_methods.id = pokemon_availability.availability_method_id
            WHERE
                pokemon_availability.form_id = 67002
                AND pokemon_availability.version_group_id = 26 $$, $$
            VALUES ('gift'::text) $$, 'Eternal Flower Floette is a Legends: Z-A gift');
SELECT
    results_eq ($$
        SELECT
            battle_forms.slug, base_forms.slug FROM reference.pokemon_battle_form_bases
            JOIN reference.pokemon_forms AS battle_forms ON battle_forms.id = pokemon_battle_form_bases.battle_form_id
            JOIN reference.pokemon_forms AS base_forms ON base_forms.id = pokemon_battle_form_bases.base_form_id
            WHERE
                battle_forms.species_id IN (670, 801)
            ORDER BY battle_forms.slug $$, $$
            VALUES ('mega-floette'::text, 'floette-eternal-flower'::text), ('mega-magearna', 'magearna'), ('mega-magearna-original-color', 'magearna-original-color') $$, 'Eternal Flower Floette reaches Mega Floette and each Magearna its own Mega');
-- Original Color Magearna: stored, and its Mega needs Magearnite like Magearna's.
SELECT
    lives_ok ($$ INSERT INTO gameplay.mainline_play_pokemon (play_id, roster_state_id, slot, species_id, form_id)
            VALUES ('7b000000-0000-0000-0000-0000000000a0', 1, 4, 801, 80102) $$, 'Original Color Magearna can be a member''s stored form');
SELECT
    throws_ok ($$ INSERT INTO gameplay.mainline_play_pokemon (play_id, roster_state_id, slot, species_id, form_id)
            VALUES ('7b000000-0000-0000-0000-0000000000a0', 1, 5, 801, 80103) $$, '23514', NULL, 'Mega Magearna (Original Color) is a battle form');
SELECT
    results_eq ($$
        SELECT
            items.slug, pokemon_form_rules.battle_mechanic FROM reference.pokemon_form_item_requirements
            JOIN reference.items ON items.id = pokemon_form_item_requirements.item_id
            JOIN reference.pokemon_form_rules ON pokemon_form_rules.form_id = pokemon_form_item_requirements.form_id
            WHERE
                pokemon_form_item_requirements.form_id = 80103 $$, $$
            VALUES ('magearnite'::text, 'mega-evolution'::text) $$, 'Mega Magearna (Original Color) Mega Evolves with Magearnite');
SELECT
    results_eq ($$
        SELECT
            form_id, primary_type_id, secondary_type_id, primary_ability_id, base_special_attack FROM reference.pokemon_attributes
            WHERE
                form_id IN (80102, 80103)
            ORDER BY form_id $$, $$
            VALUES (80102, 17, 18, 220, 130), (80103, 17, 18, NULL::integer, 170) $$, 'Original Color Magearna and its Mega share Magearna''s types and stats');
SELECT
    results_eq ($$
        SELECT
            version_group_id FROM reference.pokemon_availability
            WHERE
                form_id = 80102 ORDER BY version_group_id $$, $$
            VALUES (18), (23) $$, 'Original Color Magearna moves into Sword / Shield and Scarlet / Violet through HOME');
SELECT
    *
FROM
    finish ();
ROLLBACK;
