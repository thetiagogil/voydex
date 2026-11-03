CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

-- The Codex entry's facts: every species has its Pokédex category, egg
-- cycles and gender ratio (genderless as NULL), every form its height and
-- weight (only where the games give none is one missing), a form whose
-- category differs from its species' carries its own, and a form that is
-- always one gender says which.
BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (15);
SELECT
    col_not_null ('reference', 'pokemon_species', 'category', 'every species has a Pokédex category');
SELECT
    col_not_null ('reference', 'pokemon_species', 'egg_cycles', 'every species has its egg cycles');
SELECT
    results_eq ($$
        SELECT
            slug, category, female_ratio_eighths, egg_cycles FROM reference.pokemon_species
            WHERE
                slug IN ('charizard', 'pikachu', 'articuno', 'tatsugiri', 'nidoking', 'chansey', 'oinkologne')
            ORDER BY national_number $$, $$
            VALUES ('charizard', 'Flame', 1, 20), ('pikachu', 'Mouse', 4, 10), ('nidoking', 'Drill', 0, 20), ('chansey', 'Egg', 8, 40), ('articuno', 'Freeze', NULL::integer, 80), ('oinkologne', 'Hog', 4, 15), ('tatsugiri', 'Mimicry', 4, 35) $$, 'categories, gender ratios in eighths and egg cycles match the games');
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                reference.pokemon_species
            WHERE
                female_ratio_eighths IS NULL), 155, 'the 155 genderless species have no ratio');
SELECT
    is_empty ($$
        SELECT
            slug FROM reference.pokemon_forms
            WHERE
                height_decimeters IS NULL
                AND slug NOT LIKE '%-starmobile'
                AND slug <> 'mega-greninja' $$, 'every form but the Starmobiles and Mega Greninja has a height');
SELECT
    results_eq ($$
        SELECT
            slug FROM reference.pokemon_forms
            WHERE
                weight_hectograms IS NULL
                AND slug NOT LIKE 'gigantamax-%'
                AND slug <> 'mega-greninja' ORDER BY id $$, $$
            VALUES ('eternamax-eternatus'), ('segin-starmobile'), ('schedar-starmobile'), ('navi-starmobile'), ('ruchbah-starmobile'), ('caph-starmobile') $$, 'beyond the Gigantamax forms, only Eternamax Eternatus and the Starmobiles have no weight, as in the games');
SELECT
    is_empty ($$
        SELECT
            slug FROM reference.pokemon_forms
            WHERE
                slug LIKE 'gigantamax-%'
                AND weight_hectograms IS NOT NULL $$, 'no Gigantamax form has a weight: the games give none');
SELECT
    results_eq ($$
        SELECT
            slug, height_decimeters, weight_hectograms FROM reference.pokemon_forms
            WHERE
                slug IN ('charizard', 'mega-charizard-x', 'alolan-raichu', 'mega-raichu-x', 'mega-lucario-z', 'mega-meowstic', 'mega-tatsugiri', 'ursaluna-bloodmoon')
            ORDER BY id $$, $$
            VALUES ('charizard', 17, 905), ('mega-charizard-x', 17, 1105), ('alolan-raichu', 7, 210), ('mega-raichu-x', 12, 380), ('mega-lucario-z', 13, 494), ('mega-meowstic', 8, 101), ('ursaluna-bloodmoon', 27, 3330), ('mega-tatsugiri', 6, 240) $$, 'a form keeps its own size, Megas and Bloodmoon Ursaluna included');
SELECT
    IS ((
            SELECT
                COUNT(*)::integer
            FROM
                reference.pokemon_forms
            WHERE
                category IS NOT NULL), 30, 'the 30 forms whose category differs from their species carry their own');
SELECT
    results_eq ($$
        SELECT
            slug, category FROM reference.pokemon_forms
            WHERE
                slug IN ('hisuian-growlithe', 'mega-darkrai', 'paldea-wooper', 'galarian-articuno', 'galarian-darmanitan-zen')
            ORDER BY id $$, $$
            VALUES ('hisuian-growlithe', 'Scout'), ('galarian-articuno', 'Cruel'), ('paldea-wooper', 'Poison Fish'), ('mega-darkrai', 'Bad Dreams'), ('galarian-darmanitan-zen', 'Zen Charm') $$, 'a form''s own category, Galarian Darmanitan in both modes');
SELECT
    is_empty ($$
        SELECT
            f.slug FROM reference.pokemon_forms f
            JOIN reference.pokemon_species s ON s.id = f.species_id
            WHERE
                f.category = s.category $$, 'a form never repeats its species'' category');
SELECT
    results_eq ($$
        SELECT
            slug, gender FROM reference.pokemon_forms
            WHERE
                slug IN ('meowstic', 'meowstic-female', 'pikachu-original-cap', 'pikachu-cosplay', 'greninja-battle-bond', 'pikachu')
            ORDER BY id $$, $$
            VALUES ('pikachu', NULL::text), ('pikachu-original-cap', 'male'), ('pikachu-cosplay', 'female'), ('greninja-battle-bond', 'male'), ('meowstic', 'male'), ('meowstic-female', 'female') $$, 'a form that is always one gender says which');
SELECT
    throws_ok ($$ UPDATE
            reference.pokemon_forms
        SET
            gender = 'both'
            WHERE
                slug = 'pikachu' $$, '23514', NULL, 'a form''s gender is male or female');
SELECT
    throws_ok ($$ UPDATE
            reference.pokemon_species
        SET
            female_ratio_eighths = 9
            WHERE
                slug = 'pikachu' $$, '23514', NULL, 'a gender ratio stays within eight eighths');
SELECT
    throws_ok ($$ UPDATE
            reference.pokemon_species
        SET
            category = '  '
            WHERE
                slug = 'pikachu' $$, '23514', NULL, 'a blank category is refused');
SELECT
    *
FROM
    finish ();
ROLLBACK;
