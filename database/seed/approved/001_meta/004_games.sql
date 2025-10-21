WITH
    g AS (
        SELECT
            *
        FROM
            (
                VALUES
                    ('red', 'Pokémon Red', 'generation-i', 'kanto', 'rb', 'main', 151, 151, 1998),
                    ('blue', 'Pokémon Blue', 'generation-i', 'kanto', 'rb', 'main', 151, 151, 1998),
                    ('yellow', 'Pokémon Yellow', 'generation-i', 'kanto', 'y', 'enhanced', 151, 151, 1999),
                    ('gold', 'Pokémon Gold', 'generation-ii', 'johto', 'gs', 'main', 251, 251, 2000),
                    ('silver', 'Pokémon Silver', 'generation-ii', 'johto', 'gs', 'main', 251, 251, 2000),
                    ('crystal', 'Pokémon Crystal', 'generation-ii', 'johto', 'c', 'enhanced', 251, 251, 2001),
                    ('ruby', 'Pokémon Ruby', 'generation-iii', 'hoenn', 'rs', 'main', 202, 386, 2003),
                    ('sapphire', 'Pokémon Sapphire', 'generation-iii', 'hoenn', 'rs', 'main', 202, 386, 2003),
                    ('firered', 'Pokémon FireRed', 'generation-iii', 'kanto', 'frlg', 'remake', 151, 386, 2004),
                    ('leafgreen', 'Pokémon LeafGreen', 'generation-iii', 'kanto', 'frlg', 'remake', 151, 386, 2004),
                    ('emerald', 'Pokémon Emerald', 'generation-iii', 'hoenn', 'e', 'enhanced', 202, 386, 2005),
                    ('diamond', 'Pokémon Diamond', 'generation-iv', 'sinnoh', 'dp', 'main', 151, 493, 2007),
                    ('pearl', 'Pokémon Pearl', 'generation-iv', 'sinnoh', 'dp', 'main', 151, 493, 2007),
                    ('platinum', 'Pokémon Platinum', 'generation-iv', 'sinnoh', 'p', 'enhanced', 210, 493, 2009),
                    ('heartgold', 'Pokémon HeartGold', 'generation-iv', 'johto', 'hgss', 'remake', 251, 493, 2010),
                    ('soulsilver', 'Pokémon SoulSilver', 'generation-iv', 'johto', 'hgss', 'remake', 251, 493, 2010),
                    ('black', 'Pokémon Black', 'generation-v', 'unova', 'bw', 'main', 155, 649, 2011),
                    ('white', 'Pokémon White', 'generation-v', 'unova', 'bw', 'main', 155, 649, 2011),
                    ('black-2', 'Pokémon Black 2', 'generation-v', 'unova', 'bw', 'main', 300, 649, 2012),
                    ('white-2', 'Pokémon White 2', 'generation-v', 'unova', 'bw', 'main', 300, 649, 2012),
                    ('x', 'Pokémon X', 'generation-vi', 'kalos', 'xy', 'main', 457, 721, 2013),
                    ('y', 'Pokémon Y', 'generation-vi', 'kalos', 'xy', 'main', 457, 721, 2013),
                    ('omega-ruby', 'Pokémon Omega Ruby', 'generation-vi', 'kalos', 'oras', 'remake', 211, 721, 2014),
                    ('alpha-sapphire', 'Pokémon Alpha Sapphire', 'generation-vi', 'kalos', 'oras', 'remake', 211, 721, 2014),
                    ('sun', 'Pokémon Sun', 'generation-vii', 'alola', 'sm', 'main', 302, 809, 2016),
                    ('moon', 'Pokémon Moon', 'generation-vii', 'alola', 'sm', 'main', 302, 809, 2016),
                    ('ultra-sun', 'Pokémon Ultra Sun', 'generation-vii', 'alola', 'usum', 'enhanced', 403, 809, 2017),
                    ('ultra-moon', 'Pokémon Ultra Moon', 'generation-vii', 'alola', 'usum', 'enhanced', 403, 809, 2017),
                    ('lets-go-pikachu', 'Pokémon Let''s Go, Pikachu!', 'generation-vii', 'alola', 'lgpe', 'spin-off', 153, 809, 2018),
                    ('lets-go-eevee', 'Pokémon Let''s Go, Eevee!', 'generation-vii', 'alola', 'lgpe', 'spin-off', 153, 809, 2018),
                    ('sword', 'Pokémon Sword', 'generation-viii', 'galar', 'swsh', 'main', 403, 905, 2019),
                    ('shield', 'Pokémon Shield', 'generation-viii', 'galar', 'swsh', 'main', 403, 905, 2019),
                    ('brilliant-diamond', 'Pokémon Brilliant Diamond', 'generation-viii', 'galar', 'bdsp', 'remake', 151, 905, 2021),
                    ('shining-pearl', 'Pokémon Shining Pearl', 'generation-viii', 'galar', 'bdsp', 'remake', 151, 905, 2021),
                    ('scarlet', 'Pokémon Scarlet', 'generation-ix', 'paldea', 'sv', 'main', 400, 1025, 2022),
                    ('violet', 'Pokémon Violet', 'generation-ix', 'paldea', 'sv', 'main', 400, 1025, 2022)
            ) AS t (slug, name, generation_slug, region_slug, version_group_slug, type, regional_dex_count, national_dex_count, release_year)
    )
INSERT INTO
    meta.games (slug, name, generation_id, region_id, version_group_id, type, regional_dex_count, national_dex_count, release_year)
SELECT
    g.slug,
    g.name,
    gen.id,
    reg.id,
    vg.id,
    CASE
        WHEN g.type IS NULL THEN NULL
        ELSE CAST(g.type AS meta.game_type)
    END,
    g.regional_dex_count,
    g.national_dex_count,
    g.release_year
FROM
    g
    JOIN meta.generations gen ON gen.slug = g.generation_slug
    LEFT JOIN meta.regions reg ON reg.slug = g.region_slug
    LEFT JOIN meta.version_groups vg ON vg.slug = g.version_group_slug ON CONFLICT (slug) DO NOTHING;