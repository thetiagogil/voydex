WITH
    pf AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('wormadam-sandy', 'Wormadam Sandy', 'wormadam', 'generation-iv', 5, 65, FALSE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10004.png'),
                    ('wormadam-trash', 'Wormadam Trash', 'wormadam', 'generation-iv', 5, 65, FALSE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10005.png'),
                    ('rotom-heat', 'Rotom Heat', 'rotom', 'generation-iv', 3, 3, FALSE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10008.png'),
                    ('rotom-wash', 'Rotom Wash', 'rotom', 'generation-iv', 3, 3, FALSE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10009.png'),
                    ('rotom-frost', 'Rotom Frost', 'rotom', 'generation-iv', 3, 3, FALSE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10010.png'),
                    ('rotom-fan', 'Rotom Fan', 'rotom', 'generation-iv', 3, 3, FALSE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10011.png'),
                    ('rotom-mow', 'Rotom Mow', 'rotom', 'generation-iv', 3, 3, FALSE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10012.png'),
                    ('giratina-origin', 'Giratina Origin', 'giratina', 'generation-iv', 45, 7500, FALSE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10007.png'),
                    ('shaymin-sky', 'Shaymin Sky', 'shaymin', 'generation-iv', 2, 21, FALSE, 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10006.png')
            ) AS pf (slug, name, species_slug, introduced_generation_slug, height, weight, is_default, sprite_url)
    )
INSERT INTO
    dex.pokemon_forms (slug, name, species_id, introduced_generation_id, height, weight, is_default, sprite_url, created_at)
SELECT
    pf.slug,
    pf.name,
    ps.id,
    gen.id,
    pf.height,
    pf.weight,
    pf.is_default,
    pf.sprite_url,
    now ()
FROM
    pf
    LEFT JOIN dex.pokemon_species ps ON ps.slug = pf.species_slug
    LEFT JOIN meta.generations gen ON gen.slug = pf.introduced_generation_slug ON CONFLICT (species_id, slug) DO NOTHING;