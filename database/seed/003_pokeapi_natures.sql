-- Generated from PokeAPI (/nature)
-- Skipped slugs: unknown, stellar
-- Generated at: 2025-10-18T15:07:27.888Z

INSERT INTO dex.natures (id, slug, name, generation_introduced_id, increased_stat, decreased_stat, liked_flavor, disliked_flavor) VALUES
(1, 'hardy', 'Hardy', 3, NULL, NULL, NULL, NULL),
(2, 'bold', 'Bold', 3, 'defense', 'attack', 'sour', NULL),
(3, 'modest', 'Modest', 3, 'special-attack', 'attack', 'dry', NULL),
(4, 'calm', 'Calm', 3, 'special-defense', 'attack', 'bitter', NULL),
(5, 'timid', 'Timid', 3, 'speed', 'attack', 'sweet', NULL),
(6, 'lonely', 'Lonely', 3, 'attack', 'defense', 'spicy', NULL),
(7, 'docile', 'Docile', 3, NULL, NULL, NULL, NULL),
(8, 'mild', 'Mild', 3, 'special-attack', 'defense', 'dry', NULL),
(9, 'gentle', 'Gentle', 3, 'special-defense', 'defense', 'bitter', NULL),
(10, 'hasty', 'Hasty', 3, 'speed', 'defense', 'sweet', NULL),
(11, 'adamant', 'Adamant', 3, 'attack', 'special-attack', 'spicy', NULL),
(12, 'impish', 'Impish', 3, 'defense', 'special-attack', 'sour', NULL),
(13, 'bashful', 'Bashful', 3, NULL, NULL, NULL, NULL),
(14, 'careful', 'Careful', 3, 'special-defense', 'special-attack', 'bitter', NULL),
(15, 'rash', 'Rash', 3, 'special-attack', 'special-defense', 'dry', NULL),
(16, 'jolly', 'Jolly', 3, 'speed', 'special-attack', 'sweet', NULL),
(17, 'naughty', 'Naughty', 3, 'attack', 'special-defense', 'spicy', NULL),
(18, 'lax', 'Lax', 3, 'defense', 'special-defense', 'sour', NULL),
(19, 'quirky', 'Quirky', 3, NULL, NULL, NULL, NULL),
(20, 'naive', 'Naive', 3, 'speed', 'special-defense', 'sweet', NULL),
(21, 'brave', 'Brave', 3, 'attack', 'speed', 'spicy', NULL),
(22, 'relaxed', 'Relaxed', 3, 'defense', 'speed', 'sour', NULL),
(23, 'quiet', 'Quiet', 3, 'special-attack', 'speed', 'dry', NULL),
(24, 'sassy', 'Sassy', 3, 'special-defense', 'speed', 'bitter', NULL),
(25, 'serious', 'Serious', 3, NULL, NULL, NULL, NULL)
ON CONFLICT (id) DO NOTHING;
