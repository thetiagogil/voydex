WITH
    pa AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('wormadam', 'wormadam-sandy', 'generation-iv', 'bug', 'ground', 'anticipation', 'overcoat', NULL, 'bug', NULL, 60, 79, 105, 59, 85, 36, NULL),
                    ('wormadam', 'wormadam-trash', 'generation-iv', 'bug', 'steel', 'anticipation', 'overcoat', NULL, 'bug', NULL, 60, 69, 95, 69, 95, 36, NULL),
                    ('rotom', 'rotom-heat', 'generation-iv', 'electric', 'fire', 'levitate', NULL, NULL, 'amorphous', NULL, 50, 65, 107, 105, 107, 86, NULL),
                    ('rotom', 'rotom-wash', 'generation-iv', 'electric', 'water', 'levitate', NULL, NULL, 'amorphous', NULL, 50, 65, 107, 105, 107, 86, NULL),
                    ('rotom', 'rotom-frost', 'generation-iv', 'electric', 'ice', 'levitate', NULL, NULL, 'amorphous', NULL, 50, 65, 107, 105, 107, 86, NULL),
                    ('rotom', 'rotom-fan', 'generation-iv', 'electric', 'flying', 'levitate', NULL, NULL, 'amorphous', NULL, 50, 65, 107, 105, 107, 86, NULL),
                    ('rotom', 'rotom-mow', 'generation-iv', 'electric', 'grass', 'levitate', NULL, NULL, 'amorphous', NULL, 50, 65, 107, 105, 107, 86, NULL),
                    ('giratina', 'giratina-origin', 'generation-iv', 'ghost', 'dragon', 'levitate', NULL, NULL, 'no-eggs-discovered', NULL, 150, 120, 100, 120, 100, 90, NULL),
                    ('shaymin', 'shaymin-sky', 'generation-iv', 'grass', 'flying', 'serene-grace', NULL, NULL, 'no-eggs-discovered', NULL, 100, 103, 75, 120, 75, 127, NULL)
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