WITH
    pa AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('pidgey', 'pidgey', 'generation-iv', 'normal', 'flying', 'keen-eye', 'tangled-feet', NULL, 'flying', NULL, 40, 45, 40, 35, 35, 56, NULL),
                    ('pidgeotto', 'pidgeotto', 'generation-iv', 'normal', 'flying', 'keen-eye', 'tangled-feet', NULL, 'flying', NULL, 63, 60, 55, 50, 50, 71, NULL),
                    ('pidgeot', 'pidgeot', 'generation-iv', 'normal', 'flying', 'keen-eye', 'tangled-feet', NULL, 'flying', NULL, 83, 80, 75, 70, 70, 91, NULL),
                    ('nidoran-f', 'nidoran-f', 'generation-iv', 'poison', NULL, 'poison-point', 'rivalry', NULL, 'monster', 'field', 55, 47, 52, 40, 40, 41, NULL),
                    ('nidorina', 'nidorina', 'generation-iv', 'poison', NULL, 'poison-point', 'rivalry', NULL, 'no-eggs-discovered', NULL, 70, 62, 67, 55, 55, 56, NULL),
                    ('nidoqueen', 'nidoqueen', 'generation-iv', 'poison', 'ground', 'poison-point', 'rivalry', NULL, 'no-eggs-discovered', NULL, 90, 82, 87, 75, 85, 76, NULL),
                    ('nidoran-m', 'nidoran-m', 'generation-iv', 'poison', NULL, 'poison-point', 'rivalry', NULL, 'monster', 'field', 46, 57, 40, 40, 40, 50, NULL),
                    ('nidorino', 'nidorino', 'generation-iv', 'poison', NULL, 'poison-point', 'rivalry', NULL, 'monster', 'field', 61, 72, 57, 55, 55, 65, NULL),
                    ('nidoking', 'nidoking', 'generation-iv', 'poison', 'ground', 'poison-point', 'rivalry', NULL, 'monster', 'field', 81, 92, 77, 85, 75, 85, NULL),
                    ('cleffa', 'cleffa', 'generation-iv', 'fairy', NULL, 'cute-charm', 'magic-guard', NULL, 'no-eggs-discovered', NULL, 50, 25, 28, 45, 55, 15, NULL),
                    ('clefairy', 'clefairy', 'generation-iv', 'normal', NULL, 'cute-charm', 'magic-guard', NULL, 'fairy', NULL, 70, 45, 48, 60, 65, 35, NULL),
                    ('clefable', 'clefable', 'generation-iv', 'normal', NULL, 'cute-charm', 'magic-guard', NULL, 'fairy', NULL, 95, 70, 73, 85, 90, 60, NULL),
                    ('paras', 'paras', 'generation-iv', 'bug', 'grass', 'effect-spore', 'dry-skin', NULL, 'bug', 'grass', 35, 70, 55, 45, 55, 25, NULL),
                    ('parasect', 'parasect', 'generation-iv', 'bug', 'grass', 'effect-spore', 'dry-skin', NULL, 'bug', 'grass', 60, 95, 80, 60, 80, 30, NULL),
                    ('venonat', 'venonat', 'generation-iv', 'bug', 'poison', 'compound-eyes', 'tinted-lens', NULL, 'bug', NULL, 60, 55, 50, 40, 55, 45, NULL),
                    ('venomoth', 'venomoth', 'generation-iv', 'bug', 'poison', 'shield-dust', 'tinted-lens', NULL, 'bug', NULL, 70, 65, 60, 90, 75, 90, NULL),
                    ('meowth', 'meowth', 'generation-iv', 'normal', NULL, 'pickup', 'technician', NULL, 'field', NULL, 40, 45, 35, 40, 40, 90, NULL),
                    ('persian', 'persian', 'generation-iv', 'normal', NULL, 'limber', 'technician', NULL, 'field', NULL, 65, 70, 60, 65, 65, 115, NULL),
                    ('mankey', 'mankey', 'generation-iv', 'fighting', NULL, 'vital-spirit', 'anger-point', NULL, 'field', NULL, 40, 80, 35, 35, 45, 70, NULL),
                    ('primeape', 'primeape', 'generation-iv', 'fighting', NULL, 'vital-spirit', 'anger-point', NULL, 'field', NULL, 65, 105, 60, 60, 70, 95, NULL),
                    ('machop', 'machop', 'generation-iv', 'fighting', NULL, 'guts', 'no-guard', NULL, 'human-like', NULL, 70, 80, 50, 35, 35, 35, NULL),
                    ('machoke', 'machoke', 'generation-iv', 'fighting', NULL, 'guts', 'no-guard', NULL, 'human-like', NULL, 80, 100, 70, 50, 60, 45, NULL),
                    ('machamp', 'machamp', 'generation-iv', 'fighting', NULL, 'guts', 'no-guard', NULL, 'human-like', NULL, 90, 130, 80, 65, 85, 55, NULL),
                    ('seel', 'seel', 'generation-iv', 'water', NULL, 'thick-fat', 'hydration', NULL, 'water-1', 'field', 65, 45, 55, 45, 70, 45, NULL),
                    ('dewgong', 'dewgong', 'generation-iv', 'water', 'ice', 'thick-fat', 'hydration', NULL, 'water-1', 'field', 90, 70, 80, 70, 95, 70, NULL),
                    ('shellder', 'shellder', 'generation-iv', 'water', NULL, 'shell-armor', 'skill-link', NULL, 'water-3', NULL, 30, 65, 100, 45, 25, 40, NULL),
                    ('cloyster', 'cloyster', 'generation-iv', 'water', 'ice', 'shell-armor', 'skill-link', NULL, 'water-3', NULL, 50, 95, 180, 85, 45, 70, NULL),
                    ('drowzee', 'drowzee', 'generation-iv', 'psychic', NULL, 'insomnia', 'forewarn', NULL, 'human-like', NULL, 60, 48, 45, 43, 90, 42, NULL),
                    ('hypno', 'hypno', 'generation-iv', 'psychic', NULL, 'insomnia', 'forewarn', NULL, 'human-like', NULL, 85, 73, 70, 73, 115, 67, NULL),
                    ('hitmonlee', 'hitmonlee', 'generation-iv', 'fighting', NULL, 'limber', 'reckless', NULL, 'human-like', NULL, 50, 120, 53, 35, 110, 87, NULL),
                    ('hitmonchan', 'hitmonchan', 'generation-iv', 'fighting', NULL, 'keen-eye', 'iron-fist', NULL, 'human-like', NULL, 50, 105, 79, 35, 110, 76, NULL),
                    ('tangela', 'tangela', 'generation-iv', 'grass', NULL, 'chlorophyll', 'leaf-guard', NULL, 'grass', NULL, 65, 55, 115, 100, 40, 60, NULL),
                    ('kangaskhan', 'kangaskhan', 'generation-iv', 'normal', NULL, 'early-bird', 'scrappy', NULL, 'monster', NULL, 105, 95, 80, 40, 80, 90, NULL),
                    ('horsea', 'horsea', 'generation-iv', 'water', NULL, 'swift-swim', 'sniper', NULL, 'water-1', 'dragon', 30, 40, 70, 70, 25, 60, NULL),
                    ('seadra', 'seadra', 'generation-iv', 'water', NULL, 'poison-point', 'sniper', NULL, 'water-1', 'dragon', 55, 65, 95, 95, 45, 85, NULL),
                    ('mr-mime', 'mr-mime', 'generation-iv', 'psychic', NULL, 'soundproof', 'filter', NULL, 'human-like', NULL, 40, 45, 65, 100, 120, 90, NULL),
                    ('scyther', 'scyther', 'generation-iv', 'bug', 'flying', 'swarm', 'technician', NULL, 'bug', NULL, 70, 110, 80, 55, 80, 105, NULL),
                    ('jynx', 'jynx', 'generation-iv', 'ice', 'psychic', 'oblivious', 'forewarn', NULL, 'human-like', NULL, 65, 50, 35, 115, 95, 95, NULL),
                    ('pinsir', 'pinsir', 'generation-iv', 'bug', NULL, 'hyper-cutter', 'mold-breaker', NULL, 'bug', NULL, 65, 125, 100, 55, 70, 85, NULL),
                    ('tauros', 'tauros', 'generation-iv', 'normal', NULL, 'intimidate', 'anger-point', NULL, 'field', NULL, 75, 100, 95, 40, 70, 110, NULL),
                    ('eevee', 'eevee', 'generation-iv', 'normal', NULL, 'run-away', 'adaptability', NULL, 'field', NULL, 55, 55, 50, 45, 65, 55, NULL),
                    ('porygon', 'porygon', 'generation-iv', 'normal', NULL, 'trace', 'download', NULL, 'mineral', NULL, 65, 60, 70, 85, 75, 40, NULL)
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