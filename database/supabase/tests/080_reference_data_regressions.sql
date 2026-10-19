CREATE EXTENSION IF NOT EXISTS pgtap WITH SCHEMA extensions;

BEGIN;
SET LOCAL search_path = extensions, public;
SELECT
    plan (19);
-- Move change rows start in the first generation that has the new value.
SELECT
    IS ((
            SELECT
                power
            FROM
                reference.move_attributes
                JOIN reference.moves ON moves.id = move_attributes.move_id
            WHERE
                moves.slug = 'flamethrower'
                AND generation_start_id <= 5
            ORDER BY
                generation_start_id DESC
            LIMIT 1),
        95,
        'Flamethrower is 95 power in Generation V');
SELECT
    IS ((
            SELECT
                power
            FROM
                reference.move_attributes
                JOIN reference.moves ON moves.id = move_attributes.move_id
            WHERE
                moves.slug = 'flamethrower'
                AND generation_start_id <= 6
            ORDER BY
                generation_start_id DESC
            LIMIT 1),
        90,
        'Flamethrower is 90 power from Generation VI');
SELECT
    IS ((
            SELECT
                power
            FROM
                reference.move_attributes
                JOIN reference.moves ON moves.id = move_attributes.move_id
            WHERE
                moves.slug = 'tackle'
                AND generation_start_id <= 5
            ORDER BY
                generation_start_id DESC
            LIMIT 1),
        50,
        'Tackle is 50 power in Generation V');
SELECT
    IS ((
            SELECT
                power
            FROM
                reference.move_attributes
                JOIN reference.moves ON moves.id = move_attributes.move_id
            WHERE
                moves.slug = 'tackle'
                AND generation_start_id <= 7
            ORDER BY
                generation_start_id DESC
            LIMIT 1),
        40,
        'Tackle is 40 power from Generation VII');
SELECT
    IS ((
            SELECT
                types.slug
            FROM
                reference.move_attributes
                JOIN reference.moves ON moves.id = move_attributes.move_id
                JOIN reference.types ON types.id = move_attributes.type_id
            WHERE
                moves.slug = 'charm'
                AND generation_start_id <= 6
            ORDER BY
                generation_start_id DESC
            LIMIT 1),
        'fairy',
        'Charm is Fairy type from Generation VI');
-- Version groups that play a move differently override their generation row.
SELECT
    IS ((
            SELECT
                accuracy
            FROM
                reference.move_attributes
                JOIN reference.moves ON moves.id = move_attributes.move_id
            WHERE
                moves.slug = 'hypnosis'
                AND generation_start_id <= 4
            ORDER BY
                generation_start_id DESC
            LIMIT 1),
        60,
        'Hypnosis is 60% accurate in Generation IV outside Diamond and Pearl');
SELECT
    IS ((
            SELECT
                accuracy
            FROM
                reference.move_version_group_attributes
                JOIN reference.moves ON moves.id = move_version_group_attributes.move_id
                JOIN reference.version_groups ON version_groups.id = move_version_group_attributes.version_group_id
            WHERE
                moves.slug = 'hypnosis'
                AND version_groups.slug = 'dp'),
            70,
            'Hypnosis is 70% accurate in Diamond and Pearl');
SELECT
    IS ((
            SELECT
                power
            FROM
                reference.move_attributes
                JOIN reference.moves ON moves.id = move_attributes.move_id
            WHERE
                moves.slug = 'absorb'
                AND generation_start_id <= 8
            ORDER BY
                generation_start_id DESC
            LIMIT 1),
        20,
        'Absorb stays 20 power in Generation VIII games');
SELECT
    IS ((
            SELECT
                power
            FROM
                reference.move_version_group_attributes
                JOIN reference.moves ON moves.id = move_version_group_attributes.move_id
                JOIN reference.version_groups ON version_groups.id = move_version_group_attributes.version_group_id
            WHERE
                moves.slug = 'absorb'
                AND version_groups.slug = 'lgpe'),
            40,
            'Absorb is 40 power in Let''s Go');
-- Type chart.
SELECT
    is_empty ($$
        SELECT
            1 FROM reference.type_matchups
            JOIN reference.types attacking ON attacking.id = type_matchups.attacking_type_id
            JOIN reference.types defending ON defending.id = type_matchups.defending_type_id
            WHERE
                attacking.slug = 'ice'
                AND defending.slug = 'fairy' $$, 'Ice is neutral against Fairy');
-- Pokémon attributes.
SELECT
    IS ((
            SELECT
                base_special_defense
            FROM
                reference.pokemon_attributes
                JOIN reference.pokemon_forms ON pokemon_forms.id = pokemon_attributes.form_id
            WHERE
                pokemon_forms.slug = 'staraptor'
                AND generation_start_id <= 5
            ORDER BY
                generation_start_id DESC
            LIMIT 1),
        50,
        'Staraptor has 50 Sp. Def before Generation VI');
SELECT
    IS ((
            SELECT
                base_special_defense
            FROM
                reference.pokemon_attributes
                JOIN reference.pokemon_forms ON pokemon_forms.id = pokemon_attributes.form_id
            WHERE
                pokemon_forms.slug = 'staraptor'
                AND generation_start_id <= 6
            ORDER BY
                generation_start_id DESC
            LIMIT 1),
        60,
        'Staraptor has 60 Sp. Def from Generation VI');
SELECT
    IS ((
            SELECT
                base_attack
            FROM
                reference.pokemon_attributes
                JOIN reference.pokemon_forms ON pokemon_forms.id = pokemon_attributes.form_id
            WHERE
                pokemon_forms.slug = 'kleavor'
            ORDER BY
                generation_start_id DESC
            LIMIT 1),
        135,
        'Kleavor has 135 Attack');
SELECT
    IS ((
            SELECT
                abilities.slug
            FROM
                reference.pokemon_attributes
                JOIN reference.pokemon_forms ON pokemon_forms.id = pokemon_attributes.form_id
                JOIN reference.abilities ON abilities.id = pokemon_attributes.primary_ability_id
            WHERE
                pokemon_forms.slug = 'meowstic-female'
            ORDER BY
                generation_start_id DESC
            LIMIT 1),
        'keen-eye',
        'female Meowstic has Keen Eye');
SELECT
    IS ((
            SELECT
                abilities.slug
            FROM
                reference.pokemon_attributes
                JOIN reference.pokemon_forms ON pokemon_forms.id = pokemon_attributes.form_id
                JOIN reference.abilities ON abilities.id = pokemon_attributes.hidden_ability_id
            WHERE
                pokemon_forms.slug = 'raikou'
                AND generation_start_id <= 5
            ORDER BY
                generation_start_id DESC
            LIMIT 1),
        'volt-absorb',
        'Raikou has Volt Absorb as its Generation V hidden ability');
-- Regional evolutions only happen in their own games.
SELECT
    set_eq ($$
        SELECT
            version_groups.slug FROM reference.pokemon_evolution_edges
            JOIN reference.pokemon_forms ON pokemon_forms.id = pokemon_evolution_edges.to_form_id
            JOIN reference.version_groups ON version_groups.id = pokemon_evolution_edges.version_group_id
            WHERE
                pokemon_forms.slug = 'alolan-raichu' $$, ARRAY['sm', 'usum'], 'Pikachu only evolves into Alolan Raichu in Sun/Moon and Ultra Sun/Ultra Moon');
SELECT
    is_empty ($$
        SELECT
            1 FROM reference.pokemon_evolution_edges
            JOIN reference.pokemon_forms ON pokemon_forms.id = pokemon_evolution_edges.to_form_id
            WHERE
                pokemon_forms.slug IN ('alolan-raichu', 'alolan-exeggutor', 'alolan-marowak', 'galarian-weezing', 'galarian-mr-mime')
                AND pokemon_evolution_edges.version_group_id IS NULL $$, 'no regional evolution applies to every game');
-- Machines belong to the scope that adds them.
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                reference.move_machines
                JOIN reference.version_groups ON version_groups.id = move_machines.version_group_id
            WHERE
                version_groups.slug = 'za'), 107::bigint, 'base Legends: Z-A has 107 TMs');
SELECT
    IS ((
            SELECT
                COUNT(*)
            FROM
                reference.move_machines
                JOIN reference.version_groups ON version_groups.id = move_machines.version_group_id
            WHERE
                version_groups.slug = 'za-md'), 53::bigint, 'Mega Dimension adds TM108 to TM160');
SELECT
    *
FROM
    finish ();
ROLLBACK;
