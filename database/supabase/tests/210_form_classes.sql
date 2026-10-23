CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Form classes: every non-default form is a variant (caught and kept), a
-- form (switched on a Play) or a battle form (only in battle).
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (5);
-- Every non-default form has a rule, so a class.
SELECT
    is_empty ($$
        SELECT
            id FROM reference.pokemon_forms
            WHERE
                NOT is_default
                AND id NOT IN (
                    SELECT
                        form_id FROM reference.pokemon_form_rules) $$, 'every non-default form has a class');
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
    *
FROM
    finish ();
ROLLBACK;
