WITH
    pa AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('castform', 'castform-sunny', 'generation-iii', 'fire', NULL, 'forecast', NULL, NULL, 'fairy', 'amorphous', 70, 70, 70, 70, 70, 70, NULL),
                    ('castform', 'castform-rainy', 'generation-iii', 'water', NULL, 'forecast', NULL, NULL, 'fairy', 'amorphous', 70, 70, 70, 70, 70, 70, NULL),
                    ('castform', 'castform-snowy', 'generation-iii', 'ice', NULL, 'forecast', NULL, NULL, 'fairy', 'amorphous', 70, 70, 70, 70, 70, 70, NULL),
                    ('deoxys', 'deoxys-attack', 'generation-iii', 'psychic', NULL, 'pressure', NULL, NULL, 'no-eggs-discovered', NULL, 50, 180, 20, 180, 20, 150, NULL),
                    ('deoxys', 'deoxys-defense', 'generation-iii', 'psychic', NULL, 'pressure', NULL, NULL, 'no-eggs-discovered', NULL, 50, 70, 160, 70, 160, 90, NULL),
                    ('deoxys', 'deoxys-speed', 'generation-iii', 'psychic', NULL, 'pressure', NULL, NULL, 'no-eggs-discovered', NULL, 50, 95, 90, 95, 90, 180, NULL)
            ) AS pa (species_slug, form_slug, generation_start_slug, type1_slug, type2_slug, ability1_slug, ability2_slug, hidden_ability_slug, egg_group1_slug, egg_group2_slug, hp, attack, defense, special_attack, special_defense, speed, special)
    )
INSERT INTO
    dex.pokemon_attributes (species_id, form_id, generation_start_id, type1_id, type2_id, ability1_id, ability2_id, hidden_ability_id, egg_group1_id, egg_group2_id, hp, attack, defense, special_attack, special_defense, speed, special)
SELECT
    ps.id,
    pf.id,
    gen.id,
    typ1.id,
    typ2.id,
    abi1.id,
    abi2.id,
    abih.id,
    eg1.id,
    eg2.id,
    pa.hp,
    pa.attack,
    pa.defense,
    pa.special_attack::int,
    pa.special_defense::int,
    pa.speed,
    pa.special::int
FROM
    pa
    JOIN dex.pokemon_species ps ON ps.slug = pa.species_slug
    JOIN dex.pokemon_forms pf ON pf.slug = pa.form_slug
    JOIN meta.generations gen ON gen.slug = pa.generation_start_slug
    JOIN dex.types typ1 ON typ1.slug = pa.type1_slug
    LEFT JOIN dex.types typ2 ON typ2.slug = pa.type2_slug
    LEFT JOIN dex.abilities abi1 ON abi1.slug = pa.ability1_slug
    LEFT JOIN dex.abilities abi2 ON abi2.slug = pa.ability2_slug
    LEFT JOIN dex.abilities abih ON abih.slug = pa.hidden_ability_slug
    LEFT JOIN dex.egg_groups eg1 ON eg1.slug = pa.egg_group1_slug
    LEFT JOIN dex.egg_groups eg2 ON eg2.slug = pa.egg_group2_slug ON CONFLICT (species_id, form_id, generation_start_id) DO NOTHING;