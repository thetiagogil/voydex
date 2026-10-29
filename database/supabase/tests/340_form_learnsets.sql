CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- Every form with its own learnset rows follows its game's own data: it has
-- rows in each DLC and method its default has, and keeps only its own TMs.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (9);
CREATE TEMP VIEW machine_moves AS
SELECT
    pokemon_forms.slug AS form,
    pokemon_learnsets.version_group_id,
    moves.slug AS move
FROM
    reference.pokemon_learnsets
    JOIN reference.pokemon_forms ON pokemon_forms.id = pokemon_learnsets.form_id
    JOIN reference.moves ON moves.id = pokemon_learnsets.move_id
WHERE
    pokemon_learnsets.learn_method_id IN (2, 3, 4);
-- Scarlet / Violet forms.
SELECT
    is_empty ($$ WITH pairs (
            form, default_form
) AS (
            VALUES ('rotom-heat', 'rotom'), ('rotom-wash', 'rotom'), ('rotom-frost', 'rotom'), ('rotom-fan', 'rotom'), ('rotom-mow', 'rotom'), ('basculin-blue-striped', 'basculin'), ('oricorio-pom-pom', 'oricorio'), ('oricorio-pau', 'oricorio'), ('oricorio-sensu', 'oricorio'), ('basculegion-female', 'basculegion'), ('oinkologne-female', 'oinkologne'))
            SELECT
                pairs.form, dlc.version_group_id, dlc.move FROM pairs
                JOIN machine_moves AS dlc ON dlc.form = pairs.default_form
                    AND dlc.version_group_id IN (24, 25)
                EXCEPT
                SELECT
                    form, version_group_id, MOVE FROM machine_moves
                WHERE
                    version_group_id IN (24, 25) $$, 'Rotom, Basculin, Oricorio, Basculegion and Oinkologne forms learn their default''s Teal Mask and Indigo Disk TMs');
SELECT
    results_eq ($$
        SELECT
            version_group_id, learn_method_id, count(*)::int FROM reference.pokemon_learnsets
            WHERE
                form_id = 84901
                AND version_group_id IN (23, 24, 25)
                AND learn_method_id IN (2, 5)
            GROUP BY version_group_id, learn_method_id ORDER BY version_group_id, learn_method_id $$, $$
            VALUES (23, 2, 47), (23, 5, 2), (24, 2, 3), (25, 2, 6) $$, 'Low Key Toxtricity has its Scarlet / Violet TMs and egg moves');
SELECT
    is_empty ($$
        SELECT
            form, MOVE FROM machine_moves
            WHERE
                version_group_id = 23
                AND (form, MOVE) IN (('lycanroc', 'fire-punch'), ('lycanroc-dusk', 'thunder-punch'), ('lycanroc-midnight', 'drill-run'), ('ursaluna', 'calm-mind'), ('ursaluna-bloodmoon', 'close-combat'), ('indeedee', 'light-screen'), ('indeedee-female', 'encore'), ('meowstic', 'magical-leaf'), ('meowstic-female', 'misty-terrain'), ('alolan-raichu', 'disarming-voice'), ('basculin-white-striped', 'taunt')) $$, 'Scarlet / Violet forms do not take TMs from a sibling form');
SELECT
    is_empty ($$
        SELECT
            1 FROM machine_moves
            WHERE
                version_group_id = 25
                AND form = 'noibat'
                AND MOVE IN ('double-edge', 'breaking-swipe', 'dragon-cheer', 'psychic-noise') $$, 'Noibat learns none of Noivern''s Indigo Disk TMs');
SELECT
    results_eq ($$
        SELECT
            form, version_group_id FROM machine_moves
            WHERE
                form IN ('meowstic', 'meowstic-female')
                AND MOVE = 'gravity' ORDER BY form $$, $$
            VALUES ('meowstic'::text, 24), ('meowstic-female', 24) $$, 'both Meowstic learn Gravity from the Teal Mask TM');
-- Rules that keep every form whole.
SELECT
    is_empty ($$ WITH own_rows AS ( SELECT DISTINCT
                species_id, form_id, version_group_id FROM reference.pokemon_learnsets)
            SELECT
                pokemon_forms.slug, child_scope.slug FROM own_rows
                JOIN reference.pokemon_forms ON pokemon_forms.id = own_rows.form_id
                JOIN reference.pokemon_forms AS default_form ON default_form.species_id = own_rows.species_id
                    AND default_form.is_default
                JOIN reference.version_groups AS child_scope ON child_scope.parent_version_group_id = own_rows.version_group_id
                WHERE
                    NOT pokemon_forms.is_default
                    AND EXISTS (
                        SELECT
                            1
                        FROM own_rows AS default_rows
                        WHERE
                            default_rows.form_id = default_form.id
                            AND default_rows.version_group_id = child_scope.id)
                    AND NOT EXISTS (
                        SELECT
                            1
                        FROM own_rows AS form_rows
                    WHERE
                        form_rows.form_id = own_rows.form_id
                        AND form_rows.version_group_id = child_scope.id)
                -- The game gives these two nothing in that DLC.
                AND (pokemon_forms.slug, child_scope.slug)
                NOT IN (('alolan-vulpix', 'swsh-ioa'), ('indeedee-female', 'sv-tm')) $$, 'a form with its own moves has rows in every DLC its default has rows in');
SELECT
    is_empty ($$ WITH form_scopes AS (
            SELECT
                form_id, version_group_id, bool_or(learn_method_id IN (1, 7, 8)) AS has_level, bool_or(learn_method_id IN (2, 3, 4)) AS has_machine FROM reference.pokemon_learnsets GROUP BY form_id, version_group_id)
            SELECT
                form_scopes.form_id, form_scopes.version_group_id FROM form_scopes
                JOIN reference.pokemon_forms ON pokemon_forms.id = form_scopes.form_id
                JOIN reference.pokemon_forms AS default_form ON default_form.species_id = pokemon_forms.species_id
                    AND default_form.is_default
                JOIN form_scopes AS default_scopes ON default_scopes.form_id = default_form.id
                    AND default_scopes.version_group_id = form_scopes.version_group_id
                WHERE
                    NOT pokemon_forms.is_default
                    AND ((default_scopes.has_level
                        AND NOT form_scopes.has_level)
                    OR (default_scopes.has_machine
                        AND NOT form_scopes.has_machine)) $$, 'a form with its own rows has level-up and machine rows wherever its default does');
SELECT
    is_empty ($$ WITH machine_counts AS (
            SELECT
                form, version_group_id, count(*) AS machine_count FROM machine_moves GROUP BY form, version_group_id)
            SELECT
                machine_counts.form, machine_counts.version_group_id FROM machine_counts
                JOIN reference.version_groups ON version_groups.id = machine_counts.version_group_id
                    AND version_groups.parent_version_group_id IS NULL
                JOIN reference.pokemon_forms ON pokemon_forms.slug = machine_counts.form
                    AND NOT pokemon_forms.is_default
                JOIN reference.pokemon_forms AS default_form ON default_form.species_id = pokemon_forms.species_id
                    AND default_form.is_default
                JOIN machine_counts AS default_counts ON default_counts.form = default_form.slug
                    AND default_counts.version_group_id = machine_counts.version_group_id
                WHERE
                    machine_counts.machine_count * 2 < default_counts.machine_count $$, 'a form never has under half the TMs of its default in a base game');
SELECT
    results_eq ($$
        SELECT
            count(*)::int FROM reference.pokemon_learnsets
            WHERE (form_id, version_group_id) IN ((3701, 19), (87601, 24)) $$, $$
    VALUES (0) $$, 'Alolan Vulpix has no Isle of Armor tutor and female Indeedee no Teal Mask TM, as in the game');
SELECT
    *
FROM
    finish ();
ROLLBACK;
