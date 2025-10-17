-- ========================================
-- Seed Meta Data
-- ========================================

-- ========================================
-- GENERATIONS
-- ========================================
INSERT INTO meta.generations (
    id,
    slug,
    name,
    start_year
) VALUES
(1, 'generation-i', 'Generation I', 1998),
(2, 'generation-ii', 'Generation II', 2000),
(3, 'generation-iii', 'Generation III', 2003),
(4, 'generation-iv', 'Generation IV', 2007),
(5, 'generation-v', 'Generation V', 2010),
(6, 'generation-vi', 'Generation VI', 2013),
(7, 'generation-vii', 'Generation VII', 2016),
(8, 'generation-viii', 'Generation VIII', 2019),
(9, 'generation-ix', 'Generation IX', 2022);


-- ========================================
-- REGIONS
-- ========================================
INSERT INTO meta.regions (
    id,
    generation_id,
    slug,
    name
) VALUES
(1, 1, 'kanto', 'Kanto'),
(2, 2, 'johto', 'Johto'),
(3, 3, 'hoenn', 'Hoenn'),
(4, 4, 'sinnoh', 'Sinnoh'),
(5, 5, 'unova', 'Unova'),
(6, 6, 'kalos', 'Kalos'),
(7, 7, 'alola', 'Alola'),
(8, 8, 'galar', 'Galar'),
(9, 9, 'paldea', 'Paldea');

-- ========================================
-- VERSION GROUPS
-- ========================================
INSERT INTO meta.version_groups (
    id,
    generation_id,
    slug,
    name
) VALUES
-- Generation I
(1, 1, 'rb', 'Red/Blue'),
(2, 1, 'y', 'Yellow'),
-- Generation II  
(3, 2, 'gs', 'Gold/Silver'),
(4, 2, 'c', 'Crystal'),
-- Generation III
(5, 3, 'rs', 'Ruby/Sapphire'),
(6, 3, 'frlg', 'FireRed/LeafGreen'),
(7, 3, 'e', 'Emerald'),
-- Generation IV
(8, 4, 'dp', 'Diamond/Pearl'),
(9, 4, 'p', 'Platinum'),
(10, 4, 'hgss', 'HeartGold/SoulSilver'),
-- Generation V
(11, 5, 'bw', 'Black/White'),
(12, 5, 'b2w2', 'Black 2/White 2'),
-- Generation VI
(13, 6, 'xy', 'X/Y'),
(14, 6, 'oras', 'Omega Ruby/Alpha Sapphire'),
-- Generation VII
(15, 7, 'sm', 'Sun/Moon'),
(16, 7, 'usum', 'Ultra Sun/Ultra Moon'),
(17, 7, 'lgpe', 'Let''s Go, Pikachu!/Let''s Go, Eevee!'),
-- Generation VIII
(18, 8, 'swsh', 'Sword/Shield'),
(19, 8, 'bdsp', 'Brilliant Diamond/Shining Pearl'),
-- Generation IX
(20, 9, 'sv', 'Scarlet/Violet');

-- ========================================
-- GAMES
-- ========================================
INSERT INTO meta.games (
    id,
    generation_id,
    region_id,
    version_group_id,
    slug,
    name,
    type,
    regional_dex_count,
    national_dex_count,
    release_year
) VALUES
-- Generation I
(1, 1, 1, 1, 'red', 'Pokémon Red', 'main', 151, 151, 1998),
(2, 1, 1, 1, 'blue', 'Pokémon Blue', 'main', 151, 151, 1998),
(3, 1, 1, 2, 'yellow', 'Pokémon Yellow', 'enhanced', 151, 151, 1999),
-- Generation II
(4, 2, 2, 3, 'gold', 'Pokémon Gold', 'main', 251, 251, 2000),
(5, 2, 2, 3, 'silver', 'Pokémon Silver', 'main', 251, 251, 2000),
(6, 2, 2, 4, 'crystal', 'Pokémon Crystal', 'enhanced', 251, 251, 2001),
-- Generation III
(7, 3, 3, 5, 'ruby', 'Pokémon Ruby', 'main', 202, 386, 2003),
(8, 3, 3, 5, 'sapphire', 'Pokémon Sapphire', 'main', 202, 386, 2003),
(9, 3, 1, 6, 'firered', 'Pokémon FireRed', 'remake', 151, 386, 2004),
(10, 3, 1, 6, 'leafgreen', 'Pokémon LeafGreen', 'remake', 151, 386, 2004),
(11, 3, 3, 7, 'emerald', 'Pokémon Emerald', 'enhanced', 202, 386, 2005),
-- Generation IV
(12, 4, 4, 8, 'diamond', 'Pokémon Diamond', 'main', 151, 493, 2007),
(13, 4, 4, 8, 'pearl', 'Pokémon Pearl', 'main', 151, 493, 2007),
(14, 4, 4, 9, 'platinum', 'Pokémon Platinum', 'enhanced', 210, 493, 2009),
(15, 4, 2, 10, 'heartgold', 'Pokémon HeartGold', 'remake', 251, 493, 2010),
(16, 4, 2, 10, 'soulsilver', 'Pokémon SoulSilver', 'remake', 251, 493, 2010),
-- Generation V
(17, 5, 5, 11, 'black', 'Pokémon Black', 'main', 155, 649, 2011),
(18, 5, 5, 11, 'white', 'Pokémon White', 'main', 155, 649, 2011),
(19, 5, 5, 12, 'black-2', 'Pokémon Black 2', 'main', 300, 649, 2012),
(20, 5, 5, 12, 'white-2', 'Pokémon White 2', 'main', 300, 649, 2012),
-- Generation VI
(21, 6, 6, 13, 'x', 'Pokémon X', 'main', 457, 721, 2013),
(22, 6, 6, 13, 'y', 'Pokémon Y', 'main', 457, 721, 2013),
(23, 6, 3, 14, 'omega-ruby', 'Pokémon Omega Ruby', 'remake', 211, 721, 2014),
(24, 6, 3, 14, 'alpha-sapphire', 'Pokémon Alpha Sapphire', 'remake', 211, 721, 2014),
-- Generation VII
(25, 7, 7, 15, 'sun', 'Pokémon Sun', 'main', 302, 809, 2016),
(26, 7, 7, 15, 'moon', 'Pokémon Moon', 'main', 302, 809, 2016),
(27, 7, 7, 16, 'ultra-sun', 'Pokémon Ultra Sun', 'enhanced', 403, 809, 2017),
(28, 7, 7, 16, 'ultra-moon', 'Pokémon Ultra Moon', 'enhanced', 403, 809, 2017),
(29, 7, 1, 17, 'lets-go-pikachu', 'Pokémon Let''s Go, Pikachu!', 'spin-off', 153, 809, 2018),
(30, 7, 1, 17, 'lets-go-eevee', 'Pokémon Let''s Go, Eevee!', 'spin-off', 153, 809, 2018),
-- Generation VIII
(31, 8, 8, 18, 'sword', 'Pokémon Sword', 'main', 403, 905, 2019),
(32, 8, 8, 18, 'shield', 'Pokémon Shield', 'main', 403, 905, 2019),
(33, 8, 4, 19, 'brilliant-diamond', 'Pokémon Brilliant Diamond', 'remake', 151, 905, 2021),
(34, 8, 4, 19, 'shining-pearl', 'Pokémon Shining Pearl', 'remake', 151, 905, 2021),
-- Generation IX
(35, 9, 9, 20, 'scarlet', 'Pokémon Scarlet', 'main', 400, 1025, 2022),
(36, 9, 9, 20, 'violet', 'Pokémon Violet', 'main', 400, 1025, 2022);


-- ========================================
-- VALIDATION QUERIES
-- ========================================
-- 1) Version group gen must match game gen (informational; all should be 0 rows)
SELECT g.id, g.slug, g.generation_id AS game_gen, vg.generation_id AS vg_gen
FROM meta.games g
JOIN meta.version_groups vg ON vg.id = g.version_group_id
WHERE g.generation_id <> vg.generation_id;

-- 2) Regions exist and are consistent FKs (should be 0 rows)
SELECT g.id, g.slug, r.slug AS region_slug
FROM meta.games g
LEFT JOIN meta.regions r ON r.id = g.region_id
WHERE r.id IS NULL;

-- 3) Uniqueness sanity (should be 0 rows)
SELECT slug FROM meta.generations GROUP BY slug HAVING COUNT(*) > 1;
SELECT slug FROM meta.regions GROUP BY slug HAVING COUNT(*) > 1;
SELECT slug FROM meta.version_groups GROUP BY slug HAVING COUNT(*) > 1;
SELECT slug FROM meta.games GROUP BY slug HAVING COUNT(*) > 1;

-- 4) Optional: see remakes pointing to older regions (informational)
SELECT g.slug AS game, g.generation_id AS game_gen, r.slug AS region, r.generation_id AS region_gen
FROM meta.games g
JOIN meta.regions r ON r.id = g.region_id
WHERE r.generation_id <> g.generation_id
ORDER BY g.id;