WITH
    xxx AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('hoppip', 'hoppip', 'generation-iv', 'grass', 'flying', 'chlorophyll', 'leaf-guard', NULL, 'fairy', 'grass', 35, 35, 40, 35, 55, 50, NULL),
                    ('skiploom', 'skiploom', 'generation-iv', 'grass', 'flying', 'chlorophyll', 'leaf-guard', NULL, 'fairy', 'grass', 55, 45, 50, 45, 65, 80, NULL),
                    ('jumpluff', 'jumpluff', 'generation-iv', 'grass', 'flying', 'chlorophyll', 'leaf-guard', NULL, 'fairy', 'grass', 75, 55, 70, 55, 85, 110, NULL),
                    ('sunkern', 'sunkern', 'generation-iv', 'grass', NULL, 'chlorophyll', 'solar-power', NULL, 'grass', NULL, 30, 30, 30, 30, 30, 30, NULL),
                    ('sunflora', 'sunflora', 'generation-iv', 'grass', NULL, 'chlorophyll', 'solar-power', NULL, 'grass', NULL, 75, 75, 55, 105, 85, 30, NULL),
                    ('murkrow', 'murkrow', 'generation-iv', 'dark', 'flying', 'insomnia', 'super-luck', NULL, 'flying', NULL, 60, 85, 42, 85, 42, 91, NULL),
                    ('granbull', 'granbull', 'generation-iv', 'fairy', NULL, 'intimidate', 'quick-feet', NULL, 'field', 'fairy', 90, 120, 75, 60, 60, 45, NULL),
                    ('scizor', 'scizor', 'generation-iv', 'bug', 'steel', 'swarm', 'technician', NULL, 'bug', NULL, 70, 130, 100, 55, 80, 65, NULL),
                    ('shuckle', 'shuckle', 'generation-iv', 'bug', 'rock', 'sturdy', 'gluttony', NULL, 'bug', NULL, 20, 10, 230, 10, 230, 5, NULL),
                    ('teddiursa', 'teddiursa', 'generation-iv', 'normal', NULL, 'pickup', 'quick-feet', NULL, 'field', NULL, 60, 80, 50, 50, 50, 40, NULL),
                    ('ursaring', 'ursaring', 'generation-iv', 'normal', NULL, 'guts', 'quick-feet', NULL, 'field', NULL, 90, 130, 75, 75, 75, 55, NULL),
                    ('swinub', 'swinub', 'generation-iv', 'ice', 'ground', 'oblivious', 'snow-cloak', NULL, 'field', NULL, 50, 50, 40, 30, 30, 50, NULL),
                    ('piloswine', 'piloswine', 'generation-iv', 'ice', 'ground', 'oblivious', 'snow-cloak', NULL, 'field', NULL, 100, 100, 80, 60, 60, 50, NULL),
                    ('remoraid', 'remoraid', 'generation-iv', 'water', NULL, 'hustle', 'sniper', NULL, 'water-1', 'water-2', 35, 65, 35, 65, 35, 65, NULL),
                    ('octillery', 'octillery', 'generation-iv', 'water', NULL, 'suction-cups', 'sniper', NULL, 'water-1', 'water-2', 75, 105, 75, 105, 75, 45, NULL),
                    ('kingdra', 'kingdra', 'generation-iv', 'water', 'dragon', 'swift-swim', 'sniper', NULL, 'water-1', 'dragon', 75, 95, 95, 95, 95, 85, NULL),
                    ('porygon2', 'porygon2', 'generation-iv', 'normal', NULL, 'trace', 'download', NULL, 'mineral', NULL, 85, 80, 90, 105, 95, 60, NULL),
                    ('stantler', 'stantler', 'generation-iv', 'normal', NULL, 'intimidate', 'frisk', NULL, 'field', NULL, 73, 95, 62, 85, 65, 85, NULL),
                    ('smeargle', 'smeargle', 'generation-iv', 'normal', NULL, 'own-tempo', 'technician', NULL, 'field', NULL, 55, 20, 35, 20, 45, 75, NULL),
                    ('tyrogue', 'tyrogue', 'generation-iv', 'fighting', NULL, 'guts', 'steadfast', NULL, 'no-eggs-discovered', NULL, 35, 35, 35, 35, 35, 35, NULL),
                    ('hitmontop', 'hitmontop', 'generation-iv', 'fighting', NULL, 'intimidate', 'technician', NULL, 'human-like', NULL, 50, 95, 95, 35, 110, 70, NULL),
                    ('smoochum', 'smoochum', 'generation-iv', 'ice', 'psychic', 'oblivious', 'forewarn', NULL, 'no-eggs-discovered', NULL, 45, 30, 15, 85, 65, 65, NULL),
                    ('miltank', 'miltank', 'generation-iv', 'normal', NULL, 'thick-fat', 'scrappy', NULL, 'field', NULL, 95, 80, 105, 40, 70, 100, NULL)
            ) AS xxx (species_slug, form_slug, generation_start_slug, type1_slug, type2_slug, ability1_slug, ability2_slug, hidden_ability_slug, egg_group1_slug, egg_group2_slug, hp, attack, defense, special_attack, special_defense, speed, special)
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
    xxx.hp,
    xxx.attack,
    xxx.defense,
    xxx.special_attack::int,
    xxx.special_defense::int,
    xxx.speed,
    xxx.special::int
FROM
    xxx
    JOIN dex.pokemon_species ps ON ps.slug = xxx.species_slug
    JOIN dex.pokemon_forms pf ON pf.slug = xxx.form_slug
    JOIN meta.generations gen ON gen.slug = xxx.generation_start_slug
    JOIN dex.types typ1 ON typ1.slug = xxx.type1_slug
    LEFT JOIN dex.types typ2 ON typ2.slug = xxx.type2_slug
    LEFT JOIN dex.abilities abi1 ON abi1.slug = xxx.ability1_slug
    LEFT JOIN dex.abilities abi2 ON abi2.slug = xxx.ability2_slug
    LEFT JOIN dex.abilities abih ON abih.slug = xxx.hidden_ability_slug
    LEFT JOIN dex.egg_groups eg1 ON eg1.slug = xxx.egg_group1_slug
    LEFT JOIN dex.egg_groups eg2 ON eg2.slug = xxx.egg_group2_slug ON CONFLICT (species_id, form_id, generation_start_id) DO NOTHING;