CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- What raising a Pokémon gives, by the games that changed it: EV yield,
-- catch rate, base friendship, base experience and growth rate, from each
-- game's own data, one row per form at every version group that moved a
-- value.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (10);
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                reference.pokemon_training_attributes),
            5708,
            'every form has its training rows, one per change');
SELECT
    is_empty ($$
        SELECT
            f.slug FROM reference.pokemon_forms f
            WHERE
                NOT EXISTS (
                    SELECT
                        1
                    FROM reference.pokemon_training_attributes t
                    WHERE
                        t.form_id = f.id) $$, 'no form is without training values');
SELECT
    results_eq ($$
        SELECT
            version_group_start_id, ev_speed, catch_rate, base_friendship, base_experience, growth_rate_id FROM reference.pokemon_training_attributes
            WHERE
                form_id = 2500 ORDER BY version_group_start_id $$, $$
            VALUES (1, NULL::integer, 190, NULL::integer, 82, 3), (2, NULL::integer, 163, NULL::integer, 82, 3), (3, NULL::integer, 190, 70, 82, 3), (5, 2, 190, 70, 82, 3), (11, 2, 190, 70, 105, 3), (13, 2, 190, 70, 112, 3), (17, NULL::integer, 190, 70, 64, 3), (18, 2, 190, 50, 112, 3), (22, NULL::integer, 145, 50, 112, 3), (23, 2, 190, 50, 112, 3) $$, 'Pikachu: Yellow''s catch rate, Black / White''s and X / Y''s base experience, Let''s Go''s lower one, Sword / Shield''s friendship, Legends: Arceus''s catch rate');
SELECT
    is_empty ($$
        SELECT
            form_id FROM reference.pokemon_training_attributes
            WHERE
                version_group_start_id IN (1, 2, 3, 4, 17, 22)
                AND ev_hp IS NOT NULL $$, 'no EV yield in Generation I and II, Let''s Go or Legends: Arceus');
SELECT
    is_empty ($$
        SELECT
            form_id FROM reference.pokemon_training_attributes
            WHERE
                version_group_start_id NOT IN (1, 2, 3, 4, 17, 22)
                AND ev_hp IS NULL $$, 'every other row has its EV yield');
SELECT
    is_empty ($$
        SELECT
            form_id FROM reference.pokemon_training_attributes
            WHERE (version_group_start_id IN (1, 2)) <> (base_friendship IS NULL) $$, 'base friendship is missing in Generation I alone');
SELECT
    results_eq ($$
        SELECT
            f.slug, t.version_group_start_id, t.base_experience FROM reference.pokemon_training_attributes t
            JOIN reference.pokemon_forms f ON f.id = t.form_id
            WHERE
                f.slug IN ('charizard', 'mega-charizard-x')
                AND t.version_group_start_id IN (11, 13)
            ORDER BY f.slug, t.version_group_start_id $$, $$
            VALUES ('charizard', 11, 240), ('mega-charizard-x', 13, 285) $$, 'Charizard''s base experience changed in Black / White and its Mega has its own from X / Y');
SELECT
    throws_ok ($$ UPDATE
            reference.pokemon_training_attributes
        SET
            ev_hp = 3, ev_attack = 3
            WHERE
                form_id = 2500
                AND version_group_start_id = 5 $$, '23514', NULL, 'an EV yield never exceeds three in all');
SELECT
    throws_ok ($$ UPDATE
            reference.pokemon_training_attributes
        SET
            ev_hp = NULL
            WHERE
                form_id = 2500
                AND version_group_start_id = 5 $$, '23514', NULL, 'an EV yield is a whole set or none');
SELECT
    results_eq ($$
        SELECT
            slug, level_100_experience FROM reference.growth_rates ORDER BY sort_order $$, $$
        VALUES ('erratic', 600000), ('fast', 800000), ('medium', 1000000), ('medium-slow', 1059860), ('slow', 1250000), ('fluctuating', 1640000) $$, 'the six growth rates and their level 100 totals');
SELECT
    *
FROM
    finish ();
ROLLBACK;
