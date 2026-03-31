-- Source: Bulbapedia
-- Generation: 3
-- Scope: base generation seed
-- Table: meta.natures
-- Rows: 25
--
-- introduced_generation_id -> meta.generations(id)
-- All 25 natures were introduced in Gen 3.
-- Neutral natures have NULL for increased/decreased stat and liked/disliked flavor.
-- Stat enums: 'hp', 'attack', 'defense', 'special-attack', 'special-defense', 'speed'
-- Flavor enums: 'spicy', 'dry', 'sweet', 'bitter', 'sour'
INSERT INTO
    meta.natures (id, slug, name, introduced_generation_id, increased_stat, decreased_stat, liked_flavor, disliked_flavor)
VALUES
    -- Row order follows Bulbapedia's nature table
    -- Neutral natures (5): stat-boosting and stat-reducing are the same, stored as NULL
    (1, 'hardy', 'Hardy', 3, NULL, NULL, NULL, NULL),
    (2, 'lonely', 'Lonely', 3, 'attack', 'defense', 'spicy', 'sour'),
    (3, 'brave', 'Brave', 3, 'attack', 'speed', 'spicy', 'sweet'),
    (4, 'adamant', 'Adamant', 3, 'attack', 'special-attack', 'spicy', 'dry'),
    (5, 'naughty', 'Naughty', 3, 'attack', 'special-defense', 'spicy', 'bitter'),
    (6, 'bold', 'Bold', 3, 'defense', 'attack', 'sour', 'spicy'),
    (7, 'docile', 'Docile', 3, NULL, NULL, NULL, NULL),
    (8, 'relaxed', 'Relaxed', 3, 'defense', 'speed', 'sour', 'sweet'),
    (9, 'impish', 'Impish', 3, 'defense', 'special-attack', 'sour', 'dry'),
    (10, 'lax', 'Lax', 3, 'defense', 'special-defense', 'sour', 'bitter'),
    (11, 'timid', 'Timid', 3, 'speed', 'attack', 'sweet', 'spicy'),
    (12, 'hasty', 'Hasty', 3, 'speed', 'defense', 'sweet', 'sour'),
    (13, 'serious', 'Serious', 3, NULL, NULL, NULL, NULL),
    (14, 'jolly', 'Jolly', 3, 'speed', 'special-attack', 'sweet', 'dry'),
    (15, 'naive', 'Naive', 3, 'speed', 'special-defense', 'sweet', 'bitter'),
    (16, 'modest', 'Modest', 3, 'special-attack', 'attack', 'dry', 'spicy'),
    (17, 'mild', 'Mild', 3, 'special-attack', 'defense', 'dry', 'sour'),
    (18, 'quiet', 'Quiet', 3, 'special-attack', 'speed', 'dry', 'sweet'),
    (19, 'bashful', 'Bashful', 3, NULL, NULL, NULL, NULL),
    (20, 'rash', 'Rash', 3, 'special-attack', 'special-defense', 'dry', 'bitter'),
    (21, 'calm', 'Calm', 3, 'special-defense', 'attack', 'bitter', 'spicy'),
    (22, 'gentle', 'Gentle', 3, 'special-defense', 'defense', 'bitter', 'sour'),
    (23, 'sassy', 'Sassy', 3, 'special-defense', 'speed', 'bitter', 'sweet'),
    (24, 'careful', 'Careful', 3, 'special-defense', 'special-attack', 'bitter', 'dry'),
    (25, 'quirky', 'Quirky', 3, NULL, NULL, NULL, NULL);