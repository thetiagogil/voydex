-- ================================================================================
-- Seed Data: Gen 1-3 Static Data
-- ================================================================================

-- ================================================================================
-- GENERATIONS
-- ================================================================================
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


-- ================================================================================
-- REGIONS
-- ================================================================================
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

-- ================================================================================
-- VERSION GROUPS
-- ================================================================================
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

-- ================================================================================
-- GAMES
-- ================================================================================
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
(1, 1, 1, 1, 'red', 'Pokémon Red', 'base', 151, 151, 1998),
(2, 1, 1, 1, 'blue', 'Pokémon Blue', 'base', 151, 151, 1998),
(3, 1, 1, 2, 'yellow', 'Pokémon Yellow', 'enhanced', 151, 151, 1999),
-- Generation II
(4, 2, 2, 3, 'gold', 'Pokémon Gold', 'base', 251, 251, 2000),
(5, 2, 2, 3, 'silver', 'Pokémon Silver', 'base', 251, 251, 2000),
(6, 2, 2, 4, 'crystal', 'Pokémon Crystal', 'enhanced', 251, 251, 2001),
-- Generation III
(7, 3, 3, 5, 'ruby', 'Pokémon Ruby', 'base', 202, 386, 2003),
(8, 3, 3, 5, 'sapphire', 'Pokémon Sapphire', 'base', 202, 386, 2003),
(9, 3, 1, 6, 'firered', 'Pokémon FireRed', 'remake', 151, 386, 2004),
(10, 3, 1, 6, 'leafgreen', 'Pokémon LeafGreen', 'remake', 151, 386, 2004),
(11, 3, 3, 7, 'emerald', 'Pokémon Emerald', 'enhanced', 202, 386, 2005),
-- Generation IV
(12, 4, 4, 8, 'diamond', 'Pokémon Diamond', 'base', 151, 493, 2007),
(13, 4, 4, 8, 'pearl', 'Pokémon Pearl', 'base', 151, 493, 2007),
(14, 4, 4, 9, 'platinum', 'Pokémon Platinum', 'enhanced', 210, 493, 2009),
(15, 4, 2, 10, 'heartgold', 'Pokémon HeartGold', 'remake', 251, 493, 2010),
(16, 4, 2, 10, 'soulsilver', 'Pokémon SoulSilver', 'remake', 251, 493, 2010),
-- Generation V
(17, 5, 5, 11, 'black', 'Pokémon Black', 'base', 155, 649, 2011),
(18, 5, 5, 11, 'white', 'Pokémon White', 'base', 155, 649, 2011),
(19, 5, 5, 12, 'black-2', 'Pokémon Black 2', 'base', 300, 649, 2012),
(20, 5, 5, 12, 'white-2', 'Pokémon White 2', 'base', 300, 649, 2012),
-- Generation VI
(21, 6, 6, 13, 'x', 'Pokémon X', 'base', 457, 721, 2013),
(22, 6, 6, 13, 'y', 'Pokémon Y', 'base', 457, 721, 2013),
(23, 6, 3, 14, 'omega-ruby', 'Pokémon Omega Ruby', 'remake', 211, 721, 2014),
(24, 6, 3, 14, 'alpha-sapphire', 'Pokémon Alpha Sapphire', 'remake', 211, 721, 2014),
-- Generation VII
(25, 7, 7, 15, 'sun', 'Pokémon Sun', 'base', 302, 809, 2016),
(26, 7, 7, 15, 'moon', 'Pokémon Moon', 'base', 302, 809, 2016),
(27, 7, 7, 16, 'ultra-sun', 'Pokémon Ultra Sun', 'enhanced', 403, 809, 2017),
(28, 7, 7, 16, 'ultra-moon', 'Pokémon Ultra Moon', 'enhanced', 403, 809, 2017),
(29, 7, 1, 17, 'lets-go-pikachu', 'Pokémon Let''s Go, Pikachu!', 'remake', 153, 809, 2018),
(30, 7, 1, 17, 'lets-go-eevee', 'Pokémon Let''s Go, Eevee!', 'remake', 153, 809, 2018),
-- Generation VIII
(31, 8, 8, 18, 'sword', 'Pokémon Sword', 'base', 403, 905, 2019),
(32, 8, 8, 18, 'shield', 'Pokémon Shield', 'base', 403, 905, 2019),
(33, 8, 4, 19, 'brilliant-diamond', 'Pokémon Brilliant Diamond', 'remake', 151, 905, 2021),
(34, 8, 4, 19, 'shining-pearl', 'Pokémon Shining Pearl', 'remake', 151, 905, 2021),
-- Generation IX
(35, 9, 9, 20, 'scarlet', 'Pokémon Scarlet', 'base', 400, 1025, 2022),
(36, 9, 9, 20, 'violet', 'Pokémon Violet', 'base', 400, 1025, 2022);

-- ================================================================================
-- TYPES
-- ================================================================================
INSERT INTO dex.types (
    id,
    generation_id,
    slug,
    name
) VALUES
-- Gen 1 Types
(1, 1, 'normal', 'Normal'),
(2, 1, 'fighting', 'Fighting'),
(3, 1, 'flying', 'Flying'),
(4, 1, 'poison', 'Poison'),
(5, 1, 'ground', 'Ground'),
(6, 1, 'rock', 'Rock'),
(7, 1, 'bug', 'Bug'),
(8, 1, 'ghost', 'Ghost'),
(9, 2, 'steel', 'Steel'),
(10, 1, 'fire', 'Fire'),
(11, 1, 'water', 'Water'),
(12, 1, 'grass', 'Grass'),
(13, 1, 'electric', 'Electric'),
(14, 1, 'psychic', 'Psychic'),
(15, 1, 'ice', 'Ice'),
(16, 1, 'dragon', 'Dragon'),
(17, 2, 'dark', 'Dark'),
(18, 6, 'fairy', 'Fairy');

-- ================================================================================
-- NATURES
-- ================================================================================
INSERT INTO dex.natures (
    id,
    generation_id,
    slug,
    name,
    increased_stat,
    decreased_stat,
    liked_flavor,
    disliked_flavor
) VALUES
-- Attack-boosting natures
(1, 3, 'hardy', 'Hardy', NULL, NULL, NULL, NULL),
(2, 3, 'lonely', 'Lonely', 'attack', 'defense', 'spicy', 'sour'),
(3, 3, 'brave', 'Brave', 'attack', 'speed', 'spicy', 'sweet'),
(4, 3, 'adamant', 'Adamant', 'attack', 'special-attack', 'spicy', 'dry'),
(5, 3, 'naughty', 'Naughty', 'attack', 'special-defense', 'spicy', 'bitter'),

-- Defense-boosting natures
(6, 3, 'bold', 'Bold', 'defense', 'attack', 'sour', 'spicy'),
(7, 3, 'docile', 'Docile', NULL, NULL, NULL, NULL),
(8, 3, 'relaxed', 'Relaxed', 'defense', 'speed', 'sour', 'sweet'),
(9, 3, 'impish', 'Impish', 'defense', 'special-attack', 'sour', 'dry'),
(10, 3, 'lax', 'Lax', 'defense', 'special-defense', 'sour', 'bitter'),

-- Speed-boosting natures
(11, 3, 'timid', 'Timid', 'speed', 'attack', 'sweet', 'spicy'),
(12, 3, 'hasty', 'Hasty', 'speed', 'defense', 'sweet', 'sour'),
(13, 3, 'serious', 'Serious', NULL, NULL, NULL, NULL),
(14, 3, 'jolly', 'Jolly', 'speed', 'special-attack', 'sweet', 'dry'),
(15, 3, 'naive', 'Naive', 'speed', 'special-defense', 'sweet', 'bitter'),

-- Special Attack-boosting natures
(16, 3, 'modest', 'Modest', 'special-attack', 'attack', 'dry', 'spicy'),
(17, 3, 'mild', 'Mild', 'special-attack', 'defense', 'dry', 'sour'),
(18, 3, 'quiet', 'Quiet', 'special-attack', 'speed', 'dry', 'sweet'),
(19, 3, 'bashful', 'Bashful', NULL, NULL, NULL, NULL),
(20, 3, 'rash', 'Rash', 'special-attack', 'special-defense', 'dry', 'bitter'),

-- Special Defense-boosting natures
(21, 3, 'calm', 'Calm', 'special-defense', 'attack', 'bitter', 'spicy'),
(22, 3, 'gentle', 'Gentle', 'special-defense', 'defense', 'bitter', 'sour'),
(23, 3, 'sassy', 'Sassy', 'special-defense', 'speed', 'bitter', 'sweet'),
(24, 3, 'careful', 'Careful', 'special-defense', 'special-attack', 'bitter', 'dry'),
(25, 3, 'quirky', 'Quirky', NULL, NULL, NULL, NULL);

-- ================================================================================
-- EGG GROUPS
-- ================================================================================
INSERT INTO dex.egg_groups (
    id,
    generation_id,
    slug,
    name
) VALUES
(1, 2, 'mineral', 'Mineral'),
(2, 2, 'amorphous', 'Amorphous'),
(3, 2, 'grass', 'Grass'),
(4, 2, 'water-3', 'Water 3'),
(5, 2, 'water-2', 'Water 2'),
(6, 2, 'water-1', 'Water 1'),
(7, 2, 'bug', 'Bug'),
(8, 2, 'dragon', 'Dragon'),
(9, 2, 'flying', 'Flying'),
(10, 2, 'field', 'Field'),
(11, 2, 'human-like', 'Human-Like'),
(12, 2, 'fairy', 'Fairy'),
(13, 2, 'monster', 'Monster'),
(14, 2, 'ditto', 'Ditto'),
(15, 2, 'no-eggs-discovered', 'No Eggs Discovered');