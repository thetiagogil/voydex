CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Form classes: every non-default form is a variant (caught and kept), a
-- form (switched on a Play) or a battle form (only in battle). A form driven
-- by a held item follows it when a member's details are saved.
BEGIN;
SET LOCAL search_path = extensions, public;
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000f2', 'authenticated', 'authenticated', 'form-classes@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW());
INSERT INTO gameplay.mainline_plays (id, user_id, game_id, version_group_id, status_id, name)
    VALUES ('76000000-0000-0000-0000-0000000000b0', '00000000-0000-0000-0000-0000000000f2', 14, 9, 2, 'Form Class Play');
INSERT INTO gameplay.mainline_play_pokemon (id, play_id, roster_state_id, slot, species_id, form_id, nickname)
VALUES
    ('77000000-0000-0000-0000-0000000000b1', '76000000-0000-0000-0000-0000000000b0', 1, 1, 493, 49300, 'Judge'),
    ('77000000-0000-0000-0000-0000000000b2', '76000000-0000-0000-0000-0000000000b0', 1, 2, 479, 47901, 'Oven'),
    ('77000000-0000-0000-0000-0000000000b3', '76000000-0000-0000-0000-0000000000b0', 1, 3, 493, 49310, 'Tide');
SELECT
    plan (9);
-- Every non-default form has a rule, so a class.
SELECT
    is_empty ($$
        SELECT
            id FROM reference.pokemon_forms
            WHERE
                NOT is_default
                AND id NOT IN (
                    SELECT
                        form_id
                    FROM reference.pokemon_form_rules) $$, 'every non-default form has a class');
-- Regional forms are variants.
SELECT
    is_empty ($$
        SELECT
            form_id FROM reference.pokemon_form_rules
            WHERE
                is_regional
                AND form_class <> 'variant' $$, 'regional forms are variants');
-- A class outside the three is refused.
SELECT
    throws_ok ($$ UPDATE
            reference.pokemon_form_rules
        SET
            form_class = 'regional'
            WHERE
                form_id = 5901 $$, '23514', NULL, 'only variant, form and battle are classes');
-- Only battle forms are battle-only.
SELECT
    throws_ok ($$ UPDATE
            reference.pokemon_form_rules
        SET
            form_class = 'battle'
            WHERE
                form_id = 47901 $$, '23514', NULL, 'a battle class needs a battle-only form');
SELECT
    results_eq ($$
        SELECT
            pokemon_forms.slug, form_class FROM reference.pokemon_form_rules
            JOIN reference.pokemon_forms ON pokemon_forms.id = pokemon_form_rules.form_id
            WHERE
                pokemon_forms.slug IN ('hisuian-arcanine', 'rotom-heat', 'arceus-fire', 'lycanroc-dusk', 'tornadus-therian', 'mega-charizard-x')
            ORDER BY pokemon_forms.id $$, $$
            VALUES ('mega-charizard-x'::text, 'battle'::text), ('hisuian-arcanine', 'variant'), ('rotom-heat', 'form'), ('arceus-fire', 'form'), ('tornadus-therian', 'form'), ('lycanroc-dusk', 'variant') $$, 'Hisuian Arcanine and Dusk Lycanroc are variants, Rotom, Therian and Arceus forms switch, Mega is in battle');
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000f2', TRUE);
SET LOCAL ROLE authenticated;
-- Arceus takes the type of the Plate it holds, and goes back without one.
SELECT
    gameplay.update_mainline_play_pokemon (p_play_pokemon_id => '77000000-0000-0000-0000-0000000000b1', p_held_item_id => 2);
SELECT
    IS ((
            SELECT
                form_id
            FROM
                gameplay.mainline_play_pokemon
            WHERE
                id = '77000000-0000-0000-0000-0000000000b1'), 49309, 'Arceus holding the Flame Plate becomes Fire');
SELECT
    gameplay.update_mainline_play_pokemon (p_play_pokemon_id => '77000000-0000-0000-0000-0000000000b1');
SELECT
    IS ((
            SELECT
                form_id
            FROM
                gameplay.mainline_play_pokemon
            WHERE
                id = '77000000-0000-0000-0000-0000000000b1'), 49300, 'Arceus without a Plate is back to Normal');
-- A form recorded with no item (a game without held items) keeps its form.
SELECT
    gameplay.update_mainline_play_pokemon (p_play_pokemon_id => '77000000-0000-0000-0000-0000000000b3', p_nickname => 'Tide');
SELECT
    IS ((
            SELECT
                form_id
            FROM
                gameplay.mainline_play_pokemon
            WHERE
                id = '77000000-0000-0000-0000-0000000000b3'), 49310, 'Water Arceus recorded without a Plate stays Water');
-- A form no item drives keeps its form whatever it holds.
SELECT
    gameplay.update_mainline_play_pokemon (p_play_pokemon_id => '77000000-0000-0000-0000-0000000000b2', p_held_item_id => 3);
SELECT
    IS ((
            SELECT
                form_id
            FROM
                gameplay.mainline_play_pokemon
            WHERE
                id = '77000000-0000-0000-0000-0000000000b2'), 47901, 'Heat Rotom stays Heat Rotom');
SELECT
    *
FROM
    finish ();
ROLLBACK;
