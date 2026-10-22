CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Battle forms: Megas, Primals, Gigantamax and the rest exist with their own
-- types, never become a Play or Plan member's stored form, and name what
-- unlocks them; opponents who battle in one are stored in it.
BEGIN;
SET LOCAL search_path = extensions, public;
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, raw_app_meta_data, raw_user_meta_data, created_at, updated_at)
    VALUES ('00000000-0000-0000-0000-000000000000', '00000000-0000-0000-0000-0000000000f1', 'authenticated', 'authenticated', 'battle-forms@example.test', '', NOW(), '{"provider":"email","providers":["email"]}', '{}', NOW(), NOW());
INSERT INTO gameplay.mainline_plays (id, user_id, game_id, version_group_id, status_id, name)
    VALUES ('76000000-0000-0000-0000-0000000000a0', '00000000-0000-0000-0000-0000000000f1', 25, 15, 2, 'Battle Form Play');
INSERT INTO gameplay.mainline_play_pokemon (id, play_id, roster_state_id, slot, species_id, form_id, nickname)
    VALUES ('77000000-0000-0000-0000-0000000000a1', '76000000-0000-0000-0000-0000000000a0', 1, 1, 6, 600, 'Blaze');
INSERT INTO planning.mainline_team_plans (id, user_id, game_id, version_group_id, status_id, name)
    VALUES ('78000000-0000-0000-0000-0000000000a0', '00000000-0000-0000-0000-0000000000f1', 25, 15, 1, 'Battle Form Plan');
SELECT
    plan (14);
-- Every battle form is battle-only and never team selectable.
SELECT
    is_empty ($$
        SELECT
            form_id FROM reference.pokemon_form_rules
            WHERE (form_kind = 'battle') <> (is_battle_only
                AND NOT is_team_selectable) $$, 'battle forms are exactly the battle-only, non-selectable forms');
-- A Play member is never stored as a battle form.
SELECT
    throws_ok ($$ INSERT INTO gameplay.mainline_play_pokemon (play_id, roster_state_id, slot, species_id, form_id)
            VALUES ('76000000-0000-0000-0000-0000000000a0', 1, 2, 6, 601) $$, '23514', NULL, 'a Play member cannot be added as Mega Charizard X');
SELECT
    throws_ok ($$ UPDATE
            gameplay.mainline_play_pokemon
        SET
            form_id = 603
            WHERE
                id = '77000000-0000-0000-0000-0000000000a1' $$, '23514', NULL, 'a Play member cannot change into Gigantamax Charizard');
SELECT
    lives_ok ($$ UPDATE
            gameplay.mainline_play_pokemon
        SET
            nickname = 'Flare'
            WHERE
                id = '77000000-0000-0000-0000-0000000000a1' $$, 'editing a member that keeps its form still works');
-- A Plan member is never a battle form either.
SELECT
    throws_ok ($$ INSERT INTO planning.mainline_team_plan_members (team_plan_id, slot, target_species_id, target_form_id)
            VALUES ('78000000-0000-0000-0000-0000000000a0', 1, 383, 38301) $$, '23514', NULL, 'a Plan member cannot be Primal Groudon');
SELECT
    lives_ok ($$ INSERT INTO planning.mainline_team_plan_members (team_plan_id, slot, target_species_id, target_form_id)
            VALUES ('78000000-0000-0000-0000-0000000000a0', 1, 383, 38300) $$, 'a Plan member can be Groudon');
-- Battle forms carry their own types.
SELECT
    results_eq ($$
        SELECT
            primary_types.slug, secondary_types.slug FROM reference.pokemon_attributes
            JOIN reference.pokemon_forms ON pokemon_forms.id = pokemon_attributes.form_id
            JOIN reference.types AS primary_types ON primary_types.id = pokemon_attributes.primary_type_id
            LEFT JOIN reference.types AS secondary_types ON secondary_types.id = pokemon_attributes.secondary_type_id
            WHERE
                pokemon_forms.slug IN ('primal-groudon', 'mega-charizard-x', 'ultra-necrozma')
            ORDER BY pokemon_forms.id $$, $$
            VALUES ('fire'::text, 'dragon'::text), ('ground'::text, 'fire'::text), ('psychic'::text, 'dragon'::text) $$, 'Mega Charizard X, Primal Groudon and Ultra Necrozma have their battle types');
-- Every Mega Stone unlocks exactly one Mega form (Tatsugirinite one per Tatsugiri form).
SELECT
    is_empty ($$
        SELECT
            items.slug FROM reference.items
            JOIN reference.item_categories ON item_categories.id = items.primary_category_id
            WHERE
                item_categories.slug = 'mega_stone'
                AND (
                    SELECT
                        COUNT(*)
                    FROM reference.pokemon_form_item_requirements
                    JOIN reference.pokemon_forms ON pokemon_forms.id = pokemon_form_item_requirements.form_id
                    WHERE
                        pokemon_form_item_requirements.item_id = items.id
                        AND pokemon_forms.slug LIKE 'mega-%') <> CASE WHEN items.slug = 'tatsugirinite' THEN
                        3
                    ELSE
                        1
                    END $$, 'every Mega Stone unlocks its Mega');
-- Every Gigantamax form uses exactly one G-Max Move.
SELECT
    is_empty ($$
        SELECT
            pokemon_forms.slug FROM reference.pokemon_forms
            WHERE
                slug LIKE 'gigantamax-%'
                AND NOT EXISTS (
                    SELECT
                        1
                    FROM reference.g_max_move_sources
                    JOIN reference.moves ON moves.id = g_max_move_sources.g_max_move_id
                    JOIN reference.move_kinds ON move_kinds.id = moves.move_kind_id
                    WHERE
                        g_max_move_sources.form_id = pokemon_forms.id
                        AND move_kinds.slug = 'g-max-move') $$, 'every Gigantamax form has its G-Max Move');
SELECT
    IS ((
            SELECT
                moves.slug
            FROM
                reference.g_max_move_sources
                JOIN reference.pokemon_forms ON pokemon_forms.id = g_max_move_sources.form_id
                JOIN reference.moves ON moves.id = g_max_move_sources.g_max_move_id
            WHERE
                pokemon_forms.slug = 'gigantamax-urshifu-rapid-strike'), 'g-max-rapid-flow', 'Rapid Strike Urshifu uses G-Max Rapid Flow');
-- Each type has exactly one Max Move, so a damaging move's Max Move is found by its type.
SELECT
    IS ((
            SELECT
                COUNT(DISTINCT move_attributes.type_id)::integer
            FROM
                reference.moves
                JOIN reference.move_kinds ON move_kinds.id = moves.move_kind_id
                JOIN reference.move_attributes ON move_attributes.move_id = moves.id
            WHERE
                move_kinds.slug = 'max-move'
                AND moves.slug <> 'max-guard'),
            18,
            'every type has a Max Move');
SELECT
    is_empty ($$
        SELECT
            move_attributes.type_id FROM reference.moves
            JOIN reference.move_kinds ON move_kinds.id = moves.move_kind_id
            JOIN reference.move_attributes ON move_attributes.move_id = moves.id
            WHERE
                move_kinds.slug = 'max-move'
                AND moves.slug <> 'max-guard' GROUP BY move_attributes.type_id
            HAVING
                COUNT(DISTINCT moves.id) > 1 $$, 'no type has two Max Moves');
-- Z-Crystals: Firium Z powers Fire moves, and Pikanium Z only Pikachu's Volt Tackle.
SELECT
    results_eq ($$
        SELECT
            items.slug, z_moves.slug, COALESCE(base_moves.slug, types.slug)
            FROM reference.z_move_sources
            JOIN reference.items ON items.id = z_move_sources.item_id
            JOIN reference.moves AS z_moves ON z_moves.id = z_move_sources.z_move_id
            LEFT JOIN reference.moves AS base_moves ON base_moves.id = z_move_sources.base_move_id
            LEFT JOIN reference.types ON types.id = z_move_sources.base_type_id
            WHERE
                items.slug IN ('firium-z', 'pikanium-z')
            ORDER BY items.slug $$, $$
            VALUES ('firium-z'::text, 'inferno-overdrive'::text, 'fire'::text), ('pikanium-z'::text, 'catastropika'::text, 'volt-tackle'::text) $$, 'type and exclusive Z-Crystals point at their Z-Move');
-- Opponents who battle in a battle form are stored in it.
SELECT
    results_eq ($$
        SELECT
            mainline_opponents.name, pokemon_forms.slug FROM tracking.mainline_opponent_team_members
            JOIN tracking.mainline_opponents ON mainline_opponents.id = mainline_opponent_team_members.opponent_id
            JOIN reference.pokemon_forms ON pokemon_forms.id = mainline_opponent_team_members.form_id
            WHERE
                mainline_opponent_team_members.version_group_id = 14
                AND mainline_opponents.slug IN ('steven', 'groudon')
                AND mainline_opponent_team_members.species_id IN (376, 383)
            ORDER BY pokemon_forms.slug $$, $$
            VALUES ('Steven'::text, 'mega-metagross'::text), ('Groudon'::text, 'primal-groudon'::text) $$, 'Steven''s Metagross is Mega and the Cave of Origin Groudon is Primal');
SELECT
    *
FROM
    finish ();
ROLLBACK;
