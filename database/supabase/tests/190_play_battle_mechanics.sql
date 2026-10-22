CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Battle mechanics on a Play: each member keeps a Tera Type and the
-- Gigantamax Factor, saved by the editor's one call, and every battle form
-- names the stored forms that reach it.
BEGIN;
SET LOCAL search_path = extensions, public;
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000f2', 'authenticated', 'authenticated', 'battle-mechanics@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW()), ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000f3', 'authenticated', 'authenticated', 'battle-mechanics-other@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW());
INSERT INTO gameplay.mainline_plays (id, user_id, game_id, version_group_id, status_id, name)
    VALUES ('79000000-0000-0000-0000-0000000000a0', '00000000-0000-0000-0000-0000000000f2', 31, 18, 2, 'Galar Run');
INSERT INTO gameplay.mainline_play_pokemon (id, play_id, roster_state_id, slot, species_id, form_id, nickname)
    VALUES ('7a000000-0000-0000-0000-0000000000a1', '79000000-0000-0000-0000-0000000000a0', 1, 1, 849, 84901, 'Riff');
SELECT
    plan (13);
-- A new member has no Tera Type and no Gigantamax Factor.
SELECT
    results_eq ($$
        SELECT
            tera_type_id, has_gigantamax_factor FROM gameplay.mainline_play_pokemon
            WHERE
                id = '7a000000-0000-0000-0000-0000000000a1'::uuid $$, $$
            VALUES (NULL::integer, FALSE) $$, 'a member starts with no Tera Type and no Gigantamax Factor');
SELECT
    throws_ok ($$ UPDATE
            gameplay.mainline_play_pokemon
        SET
            tera_type_id = 99
            WHERE
                id = '7a000000-0000-0000-0000-0000000000a1' $$, '23503', NULL, 'a Tera Type must be a real type');
-- The owner saves both through the editor's one call.
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000f2', TRUE);
SET LOCAL ROLE authenticated;
SELECT
    lives_ok ($$
        SELECT
            gameplay.update_mainline_play_pokemon ('7a000000-0000-0000-0000-0000000000a1', p_nickname => 'Riff', p_tera_type_id => 4, p_has_gigantamax_factor => TRUE) $$, 'the owner saves a Tera Type and the Gigantamax Factor');
SELECT
    results_eq ($$
        SELECT
            tera_type_slug, tera_type_name, has_gigantamax_factor FROM views.mainline_play_team_detail
            WHERE
                play_pokemon_id = '7a000000-0000-0000-0000-0000000000a1'::uuid $$, $$
            VALUES ('electric'::text, 'Electric'::text, TRUE) $$, 'the team view reads the Tera Type and the Gigantamax Factor');
SELECT
    lives_ok ($$
        SELECT
            gameplay.update_mainline_play_pokemon ('7a000000-0000-0000-0000-0000000000a1', p_nickname => 'Riff') $$, 'a save without them clears both');
SELECT
    results_eq ($$
        SELECT
            tera_type_id, has_gigantamax_factor FROM views.mainline_play_team_detail
            WHERE
                play_pokemon_id = '7a000000-0000-0000-0000-0000000000a1'::uuid $$, $$
            VALUES (NULL::integer, FALSE) $$, 'an omitted Tera Type and Factor are cleared, as every editor field is');
-- Another trainer can't set them.
SELECT
    set_config('request.jwt.claim.sub', '00000000-0000-0000-0000-0000000000f3', TRUE);
SELECT
    throws_ok ($$
        SELECT
            gameplay.update_mainline_play_pokemon ('7a000000-0000-0000-0000-0000000000a1', p_tera_type_id => 4, p_has_gigantamax_factor => TRUE) $$, '23503', NULL, 'another trainer cannot give the owner''s Pokémon a Tera Type');
-- Anyone reads which form reaches a battle form.
RESET ROLE;
SET LOCAL ROLE anon;
SELECT
    results_eq ($$
        SELECT
            battle_forms.slug, base_forms.slug FROM reference.pokemon_battle_form_bases
            JOIN reference.pokemon_forms AS battle_forms ON battle_forms.id = pokemon_battle_form_bases.battle_form_id
            JOIN reference.pokemon_forms AS base_forms ON base_forms.id = pokemon_battle_form_bases.base_form_id
            WHERE
                battle_forms.slug IN ('gigantamax-toxtricity', 'gigantamax-toxtricity-low-key', 'ultra-necrozma')
            ORDER BY battle_forms.slug, base_forms.slug $$, $$
            VALUES ('gigantamax-toxtricity'::text, 'toxtricity'::text), ('gigantamax-toxtricity-low-key', 'toxtricity-low-key'), ('ultra-necrozma', 'necrozma-dawn-wings'), ('ultra-necrozma', 'necrozma-dusk-mane') $$, 'each Toxtricity reaches its own Gigantamax form, and Ultra Necrozma comes from Dusk Mane or Dawn Wings');
RESET ROLE;
-- A base is always a form a Pokémon can be stored in.
SELECT
    is_empty ($$
        SELECT
            base_form_id FROM reference.pokemon_battle_form_bases
            JOIN reference.pokemon_form_rules ON pokemon_form_rules.form_id = pokemon_battle_form_bases.base_form_id
            WHERE
                NOT pokemon_form_rules.is_team_selectable $$, 'no base is itself a battle form');
-- Every Mega, Primal, Ultra Burst and Gigantamax form has a base, but two
-- no player's Pokémon reaches: Mega Floette (Eternal Flower Floette isn't
-- seeded) and Eternamax Eternatus.
SELECT
    results_eq ($$
        SELECT
            pokemon_forms.slug FROM reference.pokemon_form_rules
            JOIN reference.pokemon_forms ON pokemon_forms.id = pokemon_form_rules.form_id
            WHERE
                pokemon_form_rules.battle_mechanic IN ('mega-evolution', 'primal-reversion', 'ultra-burst', 'dynamax')
                AND NOT EXISTS (
                    SELECT
                        1
                    FROM reference.pokemon_battle_form_bases
                    WHERE
                        pokemon_battle_form_bases.battle_form_id = pokemon_form_rules.form_id)
            ORDER BY pokemon_forms.slug $$, $$
            VALUES ('eternamax-eternatus'::text), ('mega-floette') $$, 'only Eternamax Eternatus and Mega Floette have no base');
-- Regional and Partner forms reach no battle form.
SELECT
    is_empty ($$
        SELECT
            base_forms.slug FROM reference.pokemon_battle_form_bases
            JOIN reference.pokemon_forms AS base_forms ON base_forms.id = pokemon_battle_form_bases.base_form_id
            WHERE
                base_forms.slug IN ('alolan-raichu', 'galarian-slowbro', 'alolan-meowth', 'galarian-meowth', 'pikachu-partner', 'eevee-partner') $$, 'Alolan Raichu, Galarian Slowbro and the Partner forms reach no battle form');
SELECT
    throws_ok ($$ INSERT INTO reference.pokemon_battle_form_bases (battle_form_id, base_form_id, species_id)
            VALUES (601, 900, 6) $$, '23503', NULL, 'a base must be a form of the same species');
SELECT
    throws_ok ($$ INSERT INTO reference.pokemon_battle_form_bases (battle_form_id, base_form_id, species_id)
            VALUES (601, 601, 6) $$, '23514', NULL, 'a battle form is not its own base');
SELECT
    *
FROM
    finish ();
ROLLBACK;
