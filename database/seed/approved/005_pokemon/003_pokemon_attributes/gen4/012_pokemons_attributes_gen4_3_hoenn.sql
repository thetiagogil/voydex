WITH
    xxx AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('poochyena', 'poochyena', 'generation-iv', 'dark', NULL, 'run-away', 'quick-feet', NULL, 'field', NULL, 35, 55, 35, 30, 30, 35, NULL),
                    ('mightyena', 'mightyena', 'generation-iv', 'dark', NULL, 'intimidate', 'quick-feet', NULL, 'field', NULL, 70, 90, 70, 60, 60, 70, NULL),
                    ('zigzagoon', 'zigzagoon', 'generation-iv', 'normal', NULL, 'pickup', 'gluttony', NULL, 'field', NULL, 38, 30, 41, 30, 41, 60, NULL),
                    ('linoone', 'linoone', 'generation-iv', 'normal', NULL, 'pickup', 'gluttony', NULL, 'field', NULL, 78, 70, 61, 50, 61, 100, NULL),
                    ('shroomish', 'shroomish', 'generation-iv', 'grass', NULL, 'effect-spore', 'poison-heal', NULL, 'fairy', 'grass', 60, 40, 60, 40, 60, 35, NULL),
                    ('breloom', 'breloom', 'generation-iv', 'grass', 'fighting', 'effect-spore', 'poison-heal', NULL, 'fairy', 'grass', 60, 130, 80, 60, 60, 70, NULL),
                    ('skitty', 'skitty', 'generation-iv', 'normal', NULL, 'cute-charm', 'normalize', NULL, 'field', 'fairy', 50, 45, 45, 35, 35, 50, NULL),
                    ('delcatty', 'delcatty', 'generation-iv', 'normal', NULL, 'cute-charm', 'normalize', NULL, 'field', 'fairy', 70, 65, 65, 55, 55, 70, NULL),
                    ('sableye', 'sableye', 'generation-iv', 'dark', 'ghost', 'keen-eye', 'stall', NULL, 'human-like', NULL, 50, 75, 75, 65, 65, 50, NULL),
                    ('illumise', 'illumise', 'generation-iv', 'bug', NULL, 'oblivious', 'tinted-lens', NULL, 'bug', 'human-like', 65, 47, 55, 73, 75, 85, NULL),
                    ('numel', 'numel', 'generation-iv', 'fire', 'ground', 'oblivious', 'simple', NULL, 'field', NULL, 60, 60, 40, 65, 45, 35, NULL),
                    ('camerupt', 'camerupt', 'generation-iv', 'fire', 'ground', 'magma-armor', 'solid-rock', NULL, 'field', NULL, 70, 100, 70, 105, 75, 40, NULL),
                    ('spinda', 'spinda', 'generation-iv', 'normal', NULL, 'own-tempo', 'tangled-feet', NULL, 'field', 'human-like', 60, 60, 60, 60, 60, 60, NULL),
                    ('barboach', 'barboach', 'generation-iv', 'water', 'ground', 'oblivious', 'anticipation', NULL, 'water-2', NULL, 50, 48, 43, 46, 41, 60, NULL),
                    ('whiscash', 'whiscash', 'generation-iv', 'water', 'ground', 'oblivious', 'anticipation', NULL, 'water-2', NULL, 110, 78, 73, 76, 71, 60, NULL),
                    ('shuppet', 'shuppet', 'generation-iv', 'ghost', NULL, 'insomnia', 'frisk', NULL, 'amorphous', NULL, 44, 75, 35, 63, 33, 45, NULL),
                    ('banette', 'banette', 'generation-iv', 'ghost', NULL, 'insomnia', 'frisk', NULL, 'amorphous', NULL, 64, 115, 65, 83, 63, 65, NULL),
                    ('tropius', 'tropius', 'generation-iv', 'grass', 'flying', 'chlorophyll', 'solar-power', NULL, 'monster', 'grass', 99, 68, 83, 72, 87, 51, NULL),
                    ('absol', 'absol', 'generation-iv', 'dark', NULL, 'pressure', 'super-luck', NULL, 'field', NULL, 65, 130, 60, 75, 60, 75, NULL),
                    ('snorunt', 'snorunt', 'generation-iv', 'ice', NULL, 'inner-focus', 'ice-body', NULL, 'fairy', 'mineral', 50, 50, 50, 50, 50, 50, NULL),
                    ('glalie', 'glalie', 'generation-iv', 'ice', NULL, 'inner-focus', 'ice-body', NULL, 'fairy', 'mineral', 80, 80, 80, 80, 80, 80, NULL),
                    ('spheal', 'spheal', 'generation-iv', 'ice', 'water', 'thick-fat', 'ice-body', NULL, 'water-1', 'field', 70, 40, 50, 55, 50, 25, NULL),
                    ('sealeo', 'sealeo', 'generation-iv', 'ice', 'water', 'thick-fat', 'ice-body', NULL, 'water-1', 'field', 90, 60, 70, 75, 70, 45, NULL),
                    ('walrein', 'walrein', 'generation-iv', 'ice', 'water', 'thick-fat', 'ice-body', NULL, 'water-1', 'field', 110, 80, 90, 95, 90, 65, NULL)
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