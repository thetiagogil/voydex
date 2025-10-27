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
                    (16, 'soulsilver', 'Pokémon SoulSilver', 'generation-iv', 'johto', 'hgss', 'remake', 251, 493, 2010)
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