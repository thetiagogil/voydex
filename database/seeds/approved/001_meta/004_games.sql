WITH
    xxx AS (
        SELECT
            *
        FROM
            (
                VALUES
                    (1, 'red', 'Pokémon Red', 'generation-i', 'kanto', 'rb', 'main', 151, null, 1998),
                    (2, 'blue', 'Pokémon Blue', 'generation-i', 'kanto', 'rb', 'main', 151, null, 1998),
                    (3, 'yellow', 'Pokémon Yellow', 'generation-i', 'kanto', 'y', 'enhanced', null, 151, 1999),
                    (4, 'gold', 'Pokémon Gold', 'generation-ii', 'johto', 'gs', 'main', 251, null, 2000),
                    (5, 'silver', 'Pokémon Silver', 'generation-ii', 'johto', 'gs', 'main', 251, null, 2000),
                    (6, 'crystal', 'Pokémon Crystal', 'generation-ii', 'johto', 'c', 'enhanced', 251, null, 2001),
                    (7, 'ruby', 'Pokémon Ruby', 'generation-iii', 'hoenn', 'rs', 'main', 202, null, 2003),
                    (8, 'sapphire', 'Pokémon Sapphire', 'generation-iii', 'hoenn', 'rs', 'main', 202, null, 2003),
                    (9, 'fire-red', 'Pokémon FireRed', 'generation-iii', 'kanto', 'frlg', 'remake', 151, null, 2004),
                    (10, 'leaf-green', 'Pokémon LeafGreen', 'generation-iii', 'kanto', 'frlg', 'remake', 151, null, 2004),
                    (11, 'emerald', 'Pokémon Emerald', 'generation-iii', 'hoenn', 'e', 'enhanced', 202, null, 2005),
                    (12, 'diamond', 'Pokémon Diamond', 'generation-iv', 'sinnoh', 'dp', 'main', 151, null, 2007),
                    (13, 'pearl', 'Pokémon Pearl', 'generation-iv', 'sinnoh', 'dp', 'main', 151, null, 2007),
                    (14, 'platinum', 'Pokémon Platinum', 'generation-iv', 'sinnoh', 'pt', 'enhanced', 210, null, 2009),
                    (15, 'heart-gold', 'Pokémon HeartGold', 'generation-iv', 'johto', 'hgss', 'remake', 251, null, 2010),
                    (16, 'soul-silver', 'Pokémon SoulSilver', 'generation-iv', 'johto', 'hgss', 'remake', 251, null, 2010),
                    (17, 'black', 'Pokémon Black', 'generation-v', 'unova', 'bw', 'main', 155, null, 2011),
                    (18, 'white', 'Pokémon White', 'generation-v', 'unova', 'bw', 'main', 155, null, 2011),
                    (19, 'black-2', 'Pokémon Black 2', 'generation-v', 'unova', 'bw2', 'enhanced', 300, null, 2012),
                    (20, 'white-2', 'Pokémon White 2', 'generation-v', 'unova', 'bw2', 'enhanced', 300, null, 2012),
                    (21, 'x', 'Pokémon X', 'generation-vi', 'kalos', 'xy', 'main', 457, null, 2013),
                    (22, 'y', 'Pokémon Y', 'generation-vi', 'kalos', 'xy', 'main', 457, null, 2013),
                    (23, 'omega-ruby', 'Pokémon Omega Ruby', 'generation-vi', 'hoenn', 'oras', 'remake', 211, null, 2014),
                    (24, 'alpha-sapphire', 'Pokémon Alpha Sapphire', 'generation-vi', 'hoenn', 'oras', 'remake', 211, null, 2014),
                    (25, 'sun', 'Pokémon Sun', 'generation-vii', 'alola', 'sm', 'main', 302, null, 2016),
                    (26, 'moon', 'Pokémon Moon', 'generation-vii', 'alola', 'sm', 'main', 302, null, 2016),
                    (27, 'ultra-sun', 'Pokémon Ultra Sun', 'generation-vii', 'alola', 'usum', 'enhanced', 403, null, 2017),
                    (28, 'ultra-moon', 'Pokémon Ultra Moon', 'generation-vii', 'alola', 'usum', 'enhanced', 403, null, 2017),
                    (29, 'lets-go-pikachu', 'Pokémon: Let''s Go, Pikachu!', 'generation-vii', 'kanto', 'lgpe', 'remake', 153, null, 2018),
                    (30, 'lets-go-eevee', 'Pokémon: Let''s Go, Eevee!', 'generation-vii', 'kanto', 'lgpe', 'remake', 153, null, 2018),
                    (31, 'sword', 'Pokémon Sword', 'generation-viii', 'galar', 'swsh', 'main', 400, null, 2019),
                    (32, 'shield', 'Pokémon Shield', 'generation-viii', 'galar', 'swsh', 'main', 400, null, 2019),
                    (33, 'brilliant-diamond', 'Pokémon Brilliant Diamond', 'generation-viii', 'sinnoh', 'bdsp', 'remake', 151, null, 2021),
                    (34, 'shining-pearl', 'Pokémon Shining Pearl', 'generation-viii', 'sinnoh', 'bdsp', 'remake', 151, null, 2021),
                    (35, 'legends-arceus', 'Pokémon Legends: Arceus', 'generation-viii', 'hisui', 'la', 'spin-off', 242, null, 2022),
                    (36, 'scarlet', 'Pokémon Scarlet', 'generation-ix', 'paldea', 'sv', 'main', 400, null, 2022),
                    (37, 'violet', 'Pokémon Violet', 'generation-ix', 'paldea', 'sv', 'main', 400, null, 2022),
                    (38, 'legends-za', 'Pokémon Legends: Z-A', 'generation-ix', 'kalos', 'lza', 'spin-off', 232, null, 2025)
            ) AS t (id, slug, name, generation_slug, region_slug, version_group_slug, type_slug, regional_dex_count, national_dex_count, release_year)
    )
INSERT INTO
    meta.games (id, slug, name, generation_id, region_id, version_group_id, type_id, regional_dex_count, national_dex_count, release_year)
SELECT
    xxx.id,
    xxx.slug,
    xxx.name,
    gen.id,
    reg.id,
    vg.id,
    gt.id,
    xxx.regional_dex_count,
    xxx.national_dex_count,
    xxx.release_year
FROM
    xxx
    JOIN meta.generations gen ON gen.slug = xxx.generation_slug
    LEFT JOIN meta.regions reg ON reg.slug = xxx.region_slug
    LEFT JOIN meta.version_groups vg ON vg.slug = xxx.version_group_slug
    LEFT JOIN meta.game_types gt ON gt.slug = xxx.type_slug ON CONFLICT (slug) DO NOTHING;