WITH
    xxx AS (
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
                    (9, 'fire-red', 'Pokémon FireRed', 'generation-iii', 'kanto', 'frlg', 'remake', 151, 386, 2004),
                    (10, 'leaf-green', 'Pokémon LeafGreen', 'generation-iii', 'kanto', 'frlg', 'remake', 151, 386, 2004),
                    (11, 'emerald', 'Pokémon Emerald', 'generation-iii', 'hoenn', 'e', 'enhanced', 202, 386, 2005),
                    (12, 'diamond', 'Pokémon Diamond', 'generation-iv', 'sinnoh', 'dp', 'main', 151, 493, 2007),
                    (13, 'pearl', 'Pokémon Pearl', 'generation-iv', 'sinnoh', 'dp', 'main', 151, 493, 2007),
                    (14, 'platinum', 'Pokémon Platinum', 'generation-iv', 'sinnoh', 'pt', 'enhanced', 210, 493, 2009),
                    (15, 'heart-gold', 'Pokémon HeartGold', 'generation-iv', 'johto', 'hgss', 'remake', 251, 493, 2010),
                    (16, 'soul-silver', 'Pokémon SoulSilver', 'generation-iv', 'johto', 'hgss', 'remake', 251, 493, 2010)
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