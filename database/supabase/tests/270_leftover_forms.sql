CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Cosplay Pikachu, Minior colours and Battle Bond Greninja: stored forms are
-- variants, Ash-Greninja is only taken in battle.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (5);
SELECT
    results_eq ($$
        SELECT
            count(*)::int FROM reference.pokemon_form_rules
            JOIN reference.pokemon_forms ON pokemon_forms.id = pokemon_form_rules.form_id
            WHERE
                form_class = 'variant'
                AND is_cosmetic
                AND (pokemon_forms.slug LIKE 'pikachu-%'
                    AND pokemon_forms.id BETWEEN 2511 AND 2516
                    OR pokemon_forms.slug LIKE 'minior-%'
                    AND pokemon_forms.id BETWEEN 77402 AND 77407) $$, $$
            VALUES (12) $$, 'six Cosplay Pikachu and six Minior colours are cosmetic variants');
SELECT
    results_eq ($$
        SELECT
            form_class, is_battle_only, is_team_selectable FROM reference.pokemon_form_rules
            WHERE
                form_id IN (65802, 65803)
            ORDER BY form_id $$, $$
            VALUES ('variant'::text, FALSE, TRUE), ('battle', TRUE, FALSE) $$, 'Battle Bond Greninja is kept, Ash-Greninja is battle only');
SELECT
    results_eq ($$
        SELECT
            primary_ability_id FROM reference.pokemon_attributes
            WHERE
                form_id IN (65802, 65803)
            ORDER BY form_id $$, $$
            VALUES (210), (210) $$, 'both carry Battle Bond');
SELECT
    results_eq ($$
        SELECT
            version_group_id::int FROM reference.pokemon_availability
            WHERE
                form_id = 65802 ORDER BY version_group_id $$, $$
            VALUES (15), (16) $$, 'Battle Bond Greninja is in Sun / Moon and Ultra Sun / Ultra Moon');
SELECT
    results_eq ($$ SELECT DISTINCT
            version_group_id::int FROM reference.pokemon_availability
            WHERE
                form_id BETWEEN 2511 AND 2516 $$, $$
            VALUES (14) $$, 'Cosplay Pikachu is only in Omega Ruby / Alpha Sapphire');
SELECT
    *
FROM
    finish ();
ROLLBACK;
