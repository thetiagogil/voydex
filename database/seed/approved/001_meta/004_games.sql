WITH
    g AS (
        SELECT
            *
        FROM
            (
                VALUES
                    (1, 'red', 'Pokémon Red', 'generation-i', 'kanto', 'rb', 'main', 151, 151, 1998),
                    (2, 'blue', 'Pokémon Blue', 'generation-i', 'kanto', 'rb', 'main', 151, 151, 1998),
                    (3, 'yellow', 'Pokémon Yellow', 'generation-i', 'kanto', 'y', 'enhanced', 151, 151, 1999),
                    (4, 'gold', 'Pokémon Gold', 'generation-ii', 'johto', 'gs', 'main', 251, 251, 2000),
                    (5, 'silver', 'Pokémon Silver', 'generation-ii', 'johto', 'gs', 'main', 251, 251, 2000),
                    (6, 'crystal', 'Pokémon Crystal', 'generation-ii', 'johto', 'c', 'enhanced', 251, 251, 2001),
                    (7, 'ruby', 'Pokémon Ruby', 'generation-iii', 'hoenn', 'rs', 'main', 202, 386, 2003),
                    (8, 'sapphire', 'Pokémon Sapphire', 'generation-iii', 'hoenn', 'rs', 'main', 202, 386, 2003),
                    (9, 'firered', 'Pokémon FireRed', 'generation-iii', 'kanto', 'frlg', 'remake', 151, 386, 2004),
                    (10, 'leafgreen', 'Pokémon LeafGreen', 'generation-iii', 'kanto', 'frlg', 'remake', 151, 386, 2004),
                    (11, 'emerald', 'Pokémon Emerald', 'generation-iii', 'hoenn', 'e', 'enhanced', 202, 386, 2005),
                    (12, 'diamond', 'Pokémon Diamond', 'generation-iv', 'sinnoh', 'dp', 'main', 151, 493, 2007),
                    (13, 'pearl', 'Pokémon Pearl', 'generation-iv', 'sinnoh', 'dp', 'main', 151, 493, 2007),
                    (14, 'platinum', 'Pokémon Platinum', 'generation-iv', 'sinnoh', 'p', 'enhanced', 210, 493, 2009),
                    (15, 'heartgold', 'Pokémon HeartGold', 'generation-iv', 'johto', 'hgss', 'remake', 251, 493, 2010),
                    (16, 'soulsilver', 'Pokémon SoulSilver', 'generation-iv', 'johto', 'hgss', 'remake', 251, 493, 2010),
                    (17, 'black', 'Pokémon Black', 'generation-v', 'unova', 'bw', 'main', 155, 649, 2011),
                    (18, 'white', 'Pokémon White', 'generation-v', 'unova', 'bw', 'main', 155, 649, 2011),
                    (19, 'black-2', 'Pokémon Black 2', 'generation-v', 'unova', 'bw', 'main', 300, 649, 2012),
                    (20, 'white-2', 'Pokémon White 2', 'generation-v', 'unova', 'bw', 'main', 300, 649, 2012),
                    (21, 'x', 'Pokémon X', 'generation-vi', 'kalos', 'xy', 'main', 457, 721, 2013),
                    (22, 'y', 'Pokémon Y', 'generation-vi', 'kalos', 'xy', 'main', 457, 721, 2013),
                    (23, 'omega-ruby', 'Pokémon Omega Ruby', 'generation-vi', 'kalos', 'oras', 'remake', 211, 721, 2014),
                    (24, 'alpha-sapphire', 'Pokémon Alpha Sapphire', 'generation-vi', 'kalos', 'oras', 'remake', 211, 721, 2014),
                    (25, 'sun', 'Pokémon Sun', 'generation-vii', 'alola', 'sm', 'main', 302, 809, 2016),
                    (26, 'moon', 'Pokémon Moon', 'generation-vii', 'alola', 'sm', 'main', 302, 809, 2016),
                    (27, 'ultra-sun', 'Pokémon Ultra Sun', 'generation-vii', 'alola', 'usum', 'enhanced', 403, 809, 2017),
                    (28, 'ultra-moon', 'Pokémon Ultra Moon', 'generation-vii', 'alola', 'usum', 'enhanced', 403, 809, 2017),
                    (29, 'lets-go-pikachu', 'Pokémon Let''s Go, Pikachu!', 'generation-vii', 'alola', 'lgpe', 'spin-off', 153, 809, 2018),
                    (30, 'lets-go-eevee', 'Pokémon Let''s Go, Eevee!', 'generation-vii', 'alola', 'lgpe', 'spin-off', 153, 809, 2018),
                    (31, 'sword', 'Pokémon Sword', 'generation-viii', 'galar', 'swsh', 'main', 403, 905, 2019),
                    (32, 'shield', 'Pokémon Shield', 'generation-viii', 'galar', 'swsh', 'main', 403, 905, 2019),
                    (33, 'brilliant-diamond', 'Pokémon Brilliant Diamond', 'generation-viii', 'galar', 'bdsp', 'remake', 151, 905, 2021),
                    (34, 'shining-pearl', 'Pokémon Shining Pearl', 'generation-viii', 'galar', 'bdsp', 'remake', 151, 905, 2021),
                    (35, 'scarlet', 'Pokémon Scarlet', 'generation-ix', 'paldea', 'sv', 'main', 400, 1025, 2022),
                    (36, 'violet', 'Pokémon Violet', 'generation-ix', 'paldea', 'sv', 'main', 400, 1025, 2022)
            ) AS t (id, slug, name, generation_slug, region_slug, version_group_slug, type, regional_dex_count, national_dex_count, release_year)
    )
INSERT INTO
    meta.games (id, slug, name, generation_id, region_id, version_group_id, type, regional_dex_count, national_dex_count, release_year)
SELECT
    g.id,
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