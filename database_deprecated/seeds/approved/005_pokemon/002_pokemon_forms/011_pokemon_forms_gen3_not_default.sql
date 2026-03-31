WITH
    xxx AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('castform-sunny', 'Castform Sunny', 'castform', 'generation-iii', 3, 8, FALSE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10013.png'),
                    ('castform-rainy', 'Castform Rainy', 'castform', 'generation-iii', 3, 8, FALSE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10014.png'),
                    ('castform-snowy', 'Castform Snowy', 'castform', 'generation-iii', 3, 8, FALSE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10015.png'),
                    ('deoxys-attack', 'Deoxys Attack', 'deoxys', 'generation-iii', 17, 608, FALSE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10001.png'),
                    ('deoxys-defense', 'Deoxys Defense', 'deoxys', 'generation-iii', 17, 608, FALSE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10002.png'),
                    ('deoxys-speed', 'Deoxys Speed', 'deoxys', 'generation-iii', 17, 608, FALSE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10003.png')
            ) AS xxx (slug, name, species_slug, introduced_generation_slug, height, weight, is_default, sprite_url)
    )
INSERT INTO
    meta.pokemon_forms (slug, name, species_id, introduced_generation_id, height, weight, is_default, sprite_url, created_at)
SELECT
    xxx.slug,
    xxx.name,
    ps.id,
    gen.id,
    xxx.height,
    xxx.weight,
    xxx.is_default,
    xxx.sprite_url,
    now ()
FROM
    xxx
    LEFT JOIN meta.pokemon_species ps ON ps.slug = xxx.species_slug
    LEFT JOIN meta.generations gen ON gen.slug = xxx.introduced_generation_slug ON CONFLICT (species_id, slug) DO NOTHING;