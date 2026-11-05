CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Egg groups for every form: each form has attribute rows from the generation
-- it arrives in, every row from Generation II carries its primary egg group,
-- a form keeps the groups the games give it (a Mega or Gigantamax form its
-- species', Primal Groudon Undiscovered) and a change of groups is read from
-- the generation that made it.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (6);
SELECT
    is_empty ($$
        SELECT
            f.slug FROM reference.pokemon_forms f
            WHERE
                NOT EXISTS (
                    SELECT
                        1
                    FROM reference.pokemon_attributes a
                    WHERE
                        a.species_id = f.species_id
                        AND a.form_id = f.id
                        AND a.generation_start_id <= f.introduced_generation_id) $$, 'every form has attribute rows from the generation it arrives in');
SELECT
    is_empty ($$
        SELECT
            species_id, form_id, generation_start_id FROM reference.pokemon_attributes
            WHERE
                generation_start_id >= 2
                AND primary_egg_group_id IS NULL $$, 'every row from Generation II carries a primary egg group');
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                reference.pokemon_forms),
            1456,
            'the 1456 forms are all read');
SELECT
    results_eq ($$
        SELECT
            f.slug, a.generation_start_id, p.slug, s.slug FROM reference.pokemon_attributes a
            JOIN reference.pokemon_forms f ON f.species_id = a.species_id
                AND f.id = a.form_id
            JOIN reference.egg_groups p ON p.id = a.primary_egg_group_id
            LEFT JOIN reference.egg_groups s ON s.id = a.secondary_egg_group_id
            WHERE
                f.slug IN ('mega-charizard-x', 'gigantamax-charizard', 'alolan-raichu', 'primal-groudon')
            ORDER BY f.id $$, $$
            VALUES ('mega-charizard-x', 6, 'monster', 'dragon'), ('gigantamax-charizard', 8, 'monster', 'dragon'), ('alolan-raichu', 7, 'field', 'fairy'), ('primal-groudon', 6, 'undiscovered', NULL::text) $$, 'a form reads the groups the games give it, battle forms included');
SELECT
    results_eq ($$
        SELECT
            f.slug, a.generation_start_id, p.slug, s.slug FROM reference.pokemon_attributes a
            JOIN reference.pokemon_forms f ON f.species_id = a.species_id
                AND f.id = a.form_id
            JOIN reference.egg_groups p ON p.id = a.primary_egg_group_id
            LEFT JOIN reference.egg_groups s ON s.id = a.secondary_egg_group_id
            WHERE
                f.slug IN ('ralts', 'flygon', 'hawlucha')
                AND a.generation_start_id >= 6 ORDER BY f.id, a.generation_start_id $$, $$
            VALUES ('ralts', 6, 'amorphous', NULL::text), ('ralts', 8, 'human-like', 'amorphous'), ('flygon', 8, 'bug', 'dragon'), ('hawlucha', 6, 'human-like', NULL::text), ('hawlucha', 8, 'flying', 'human-like') $$, 'Sword / Shield gave Ralts, Flygon and Hawlucha a second group');
SELECT
    throws_ok ($$ UPDATE
            reference.pokemon_attributes
        SET
            primary_egg_group_id = NULL, secondary_egg_group_id = NULL
            WHERE
                form_id = (
                    SELECT
                        id
                    FROM reference.pokemon_forms
                    WHERE
                        slug = 'ralts')
                AND generation_start_id = 8 $$, '23514', NULL, 'a row from Generation II without a primary egg group is refused');
SELECT
    *
FROM
    finish ();
ROLLBACK;
