-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia
-- Secondary: Serebii
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: meta.games
-- Scope: global
--
-- Dex counts are NOT stored here.
-- They are derived from meta.dexes + meta.dex_entries.
--
-- DLC content is modeled as version groups, not as separate games.
--
-- Legends: Arceus is classified as type_id=1 (main series). It introduces
-- a novel region (Hisui) and new gameplay mechanics; it is not a remake,
-- enhanced version, or sequel.
--
-- Legends: Z-A is included. Classification as type_id=1 (main series),
-- Gen 9, region Kalos. Release year 2025.
INSERT INTO
    meta.games (id, slug, name, generation_id, region_id, version_group_id, type_id, release_year)
VALUES
    -- Gen 1
    (1, 'red', 'Pokémon Red', 1, 1, 1, 1, 1996),
    (2, 'blue', 'Pokémon Blue', 1, 1, 1, 1, 1996),
    (3, 'yellow', 'Pokémon Yellow', 1, 1, 2, 2, 1998),
    -- Gen 2
    (4, 'gold', 'Pokémon Gold', 2, 2, 3, 1, 1999),
    (5, 'silver', 'Pokémon Silver', 2, 2, 3, 1, 1999),
    (6, 'crystal', 'Pokémon Crystal', 2, 2, 4, 2, 2000),
    -- Gen 3
    (7, 'ruby', 'Pokémon Ruby', 3, 3, 5, 1, 2002),
    (8, 'sapphire', 'Pokémon Sapphire', 3, 3, 5, 1, 2002),
    (9, 'emerald', 'Pokémon Emerald', 3, 3, 6, 2, 2004),
    (10, 'firered', 'Pokémon FireRed', 3, 1, 7, 3, 2004),
    (11, 'leafgreen', 'Pokémon LeafGreen', 3, 1, 7, 3, 2004),
    -- Gen 4
    (12, 'diamond', 'Pokémon Diamond', 4, 4, 8, 1, 2006),
    (13, 'pearl', 'Pokémon Pearl', 4, 4, 8, 1, 2006),
    (14, 'platinum', 'Pokémon Platinum', 4, 4, 9, 2, 2008),
    (15, 'heartgold', 'Pokémon HeartGold', 4, 2, 10, 3, 2009),
    (16, 'soulsilver', 'Pokémon SoulSilver', 4, 2, 10, 3, 2009),
    -- Gen 5
    (17, 'black', 'Pokémon Black', 5, 5, 11, 1, 2010),
    (18, 'white', 'Pokémon White', 5, 5, 11, 1, 2010),
    (19, 'black-2', 'Pokémon Black 2', 5, 5, 12, 4, 2012),
    (20, 'white-2', 'Pokémon White 2', 5, 5, 12, 4, 2012),
    -- Gen 6
    (21, 'x', 'Pokémon X', 6, 6, 13, 1, 2013),
    (22, 'y', 'Pokémon Y', 6, 6, 13, 1, 2013),
    (23, 'omega-ruby', 'Pokémon Omega Ruby', 6, 3, 14, 3, 2014),
    (24, 'alpha-sapphire', 'Pokémon Alpha Sapphire', 6, 3, 14, 3, 2014),
    -- Gen 7
    (25, 'sun', 'Pokémon Sun', 7, 7, 15, 1, 2016),
    (26, 'moon', 'Pokémon Moon', 7, 7, 15, 1, 2016),
    (27, 'ultra-sun', 'Pokémon Ultra Sun', 7, 7, 16, 2, 2017),
    (28, 'ultra-moon', 'Pokémon Ultra Moon', 7, 7, 16, 2, 2017),
    (29, 'lets-go-pikachu', 'Pokémon Let''s Go, Pikachu!', 7, 1, 17, 5, 2018),
    (30, 'lets-go-eevee', 'Pokémon Let''s Go, Eevee!', 7, 1, 17, 5, 2018),
    -- Gen 8
    (31, 'sword', 'Pokémon Sword', 8, 8, 18, 1, 2019),
    (32, 'shield', 'Pokémon Shield', 8, 8, 18, 1, 2019),
    (33, 'brilliant-diamond', 'Pokémon Brilliant Diamond', 8, 4, 21, 3, 2021),
    (34, 'shining-pearl', 'Pokémon Shining Pearl', 8, 4, 21, 3, 2021),
    -- Legends: Arceus — other, Gen 8, Hisui (region 10)
    (35, 'legends-arceus', 'Pokémon Legends: Arceus', 8, 10, 22, 5, 2022),
    -- Gen 9
    (36, 'scarlet', 'Pokémon Scarlet', 9, 9, 23, 1, 2022),
    (37, 'violet', 'Pokémon Violet', 9, 9, 23, 1, 2022),
    -- Legends: Z-A — other, Gen 9, Kalos (region 6)
    (38, 'legends-za', 'Pokémon Legends: Z-A', 9, 6, 27, 5, 2025);