CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Availability groups: Pokémon one save hands out only one of, so the
-- Planner's Team check can say a team can't be built in one save.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (6);
SELECT
    has_table ('reference', 'pokemon_availability_groups', 'a reference table holds the one-of groups');
SELECT
    throws_ok ($$ UPDATE
            reference.pokemon_availability_groups
        SET
            kind = 'pick-two'
            WHERE
                id = 19001 $$, '23514', NULL, 'a group is one-per-save or pick-one');
SELECT
    results_eq ($$
        SELECT
            groups.slug, groups.kind, array_agg(forms.slug ORDER BY forms.id)
            FROM reference.pokemon_availability_groups AS groups
            JOIN reference.pokemon_availability_group_members AS members ON members.group_id = groups.id
            JOIN reference.pokemon_forms AS forms ON forms.id = members.form_id GROUP BY groups.slug, groups.kind, groups.sort_order ORDER BY groups.sort_order $$, $$
        VALUES ('kubfu', 'one-per-save', ARRAY['kubfu', 'urshifu', 'urshifu-rapid-strike']), ('calyrex', 'one-per-save', ARRAY['calyrex', 'calyrex-ice-rider', 'calyrex-shadow-rider']), ('calyrex-steed', 'pick-one', ARRAY['glastrier', 'spectrier', 'calyrex-ice-rider', 'calyrex-shadow-rider']), ('regieleki-or-regidrago', 'pick-one', ARRAY['regieleki', 'regidrago']), ('galarian-articuno', 'one-per-save', ARRAY['galarian-articuno']), ('galarian-zapdos', 'one-per-save', ARRAY['galarian-zapdos']), ('galarian-moltres', 'one-per-save', ARRAY['galarian-moltres']) $$, 'Kubfu and both Urshifu, Calyrex, the steeds, the Regis and each Galarian bird');
-- Every member is a form its group's version group hands out.
SELECT
    is_empty ($$
        SELECT
            members.form_id FROM reference.pokemon_availability_group_members AS members
            JOIN reference.pokemon_availability_groups AS groups ON groups.id = members.group_id
            WHERE
                NOT EXISTS (
                    SELECT
                        1
                    FROM reference.pokemon_availability AS availability
                    WHERE
                        availability.version_group_id = groups.version_group_id
                        AND availability.form_id = members.form_id) $$, 'every member is handed out in its group''s version group');
-- Anyone can read the groups, as the rest of the reference catalogue.
SELECT
    ok (has_table_privilege('anon', 'reference.pokemon_availability_groups', 'SELECT'),
        'signed-out visitors read the groups');
SELECT
    ok (NOT has_table_privilege('authenticated', 'reference.pokemon_availability_group_members', 'INSERT'),
        'nobody signed in can write the members');
SELECT
    *
FROM
    finish ();
ROLLBACK;
