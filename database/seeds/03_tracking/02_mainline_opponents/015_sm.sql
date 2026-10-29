-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Sun / Moon, Island challenge, Elite Four, Champion, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and Pokémon Database.
-- Scope: Pokémon Sun / Moon major opponent data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for Sun / Moon major fights. Game-specific rows are scoped where the source game changes the opponent.
-- Totems are their own opponents; a trial captain appears only where they battle you. An opponent fought twice on one Story point has one row per battle (Faba).
-- ============================================================================

INSERT INTO tracking.mainline_opponents (
  id,
  version_group_id,
  game_id,
  slug,
  name,
  opponent_role,
  primary_type_id,
  secondary_type_id,
  sprite_slug,
  sort_order
) VALUES
  -- Ilima
  (15001, 15, NULL, 'ilima', 'Ilima', 'trial-captain', 1, NULL, 'ilima', 1),
  -- Hala
  (15002, 15, NULL, 'hala', 'Hala', 'kahuna', 7, NULL, 'hala', 2),
  -- Olivia
  (15006, 15, NULL, 'olivia', 'Olivia', 'kahuna', 13, NULL, 'olivia', 6),
  -- Nanu
  (15009, 15, NULL, 'nanu', 'Nanu', 'kahuna', 16, NULL, 'nanu', 9),
  -- Hapu
  (15010, 15, NULL, 'hapu', 'Hapu', 'kahuna', 9, NULL, 'hapu', 10),
  -- Hala
  (15011, 15, NULL, 'hala-e4', 'Hala', 'elite-four', 7, NULL, 'hala-e4', 11),
  -- Olivia
  (15012, 15, NULL, 'olivia-e4', 'Olivia', 'elite-four', 13, NULL, 'olivia-e4', 12),
  -- Acerola
  (15013, 15, NULL, 'acerola-e4', 'Acerola', 'elite-four', 14, NULL, 'acerola-e4', 13),
  -- Kahili
  (15014, 15, NULL, 'kahili', 'Kahili', 'elite-four', 10, NULL, 'kahili', 14),
  -- Professor Kukui
  (15015, 15, NULL, 'kukui', 'Professor Kukui', 'champion', NULL, NULL, 'kukui', 15),
  -- Hau (rival)
  (15016, 15, NULL, 'hau', 'Hau', 'rival', NULL, NULL, 'hau', 16),
  -- Gladion (rival)
  (15017, 15, NULL, 'gladion', 'Gladion', 'rival', NULL, NULL, 'gladion', 17),
  -- Hau, Gladion and the Masked Royal (rival; the Battle Royal)
  (15018, 15, NULL, 'battle-royal', 'Hau, Gladion & the Masked Royal', 'rival', NULL, NULL, 'hau', 18),
  -- Guzma (boss)
  (15019, 15, NULL, 'guzma', 'Guzma', 'boss', NULL, NULL, 'guzma', 19),
  -- Lusamine (boss)
  (15020, 15, NULL, 'lusamine', 'Lusamine', 'boss', NULL, NULL, 'lusamine', 20),
  -- Nihilego (boss)
  (15021, 15, NULL, 'nihilego', 'Nihilego', 'boss', 13, 8, 'nihilego', 21),
  -- Solgaleo (boss, sun)
  (15022, 15, 25, 'solgaleo', 'Solgaleo', 'boss', 11, 17, 'solgaleo', 1),
  -- Lunala (boss, moon)
  (15023, 15, 26, 'lunala', 'Lunala', 'boss', 11, 14, 'lunala', 1),
  -- Tapu Koko (boss)
  (15024, 15, NULL, 'tapu-koko', 'Tapu Koko', 'boss', 4, 18, 'tapu-koko', 22),
  -- Buzzwole (boss, sun)
  (15025, 15, 25, 'buzzwole', 'Buzzwole', 'boss', 12, 7, 'buzzwole', 2),
  -- Pheromosa (boss, moon)
  (15026, 15, 26, 'pheromosa', 'Pheromosa', 'boss', 12, 7, 'pheromosa', 2),
  -- Xurkitree (boss)
  (15027, 15, NULL, 'xurkitree', 'Xurkitree', 'boss', 4, NULL, 'xurkitree', 23),
  -- Kartana (boss, sun)
  (15028, 15, 25, 'kartana', 'Kartana', 'boss', 5, 17, 'kartana', 3),
  -- Celesteela (boss, moon)
  (15029, 15, 26, 'celesteela', 'Celesteela', 'boss', 17, 10, 'celesteela', 3),
  -- Guzzlord (boss)
  (15030, 15, NULL, 'guzzlord', 'Guzzlord', 'boss', 16, 15, 'guzzlord', 24),
  -- Tapu Lele (boss)
  (15031, 15, NULL, 'tapu-lele', 'Tapu Lele', 'boss', 11, 18, 'tapu-lele', 25),
  -- Tapu Bulu (boss)
  (15032, 15, NULL, 'tapu-bulu', 'Tapu Bulu', 'boss', 5, 18, 'tapu-bulu', 26),
  -- Tapu Fini (boss)
  (15033, 15, NULL, 'tapu-fini', 'Tapu Fini', 'boss', 3, 18, 'tapu-fini', 27),
  -- Necrozma (boss)
  (15034, 15, NULL, 'necrozma', 'Necrozma', 'boss', 11, NULL, 'necrozma', 28),
  -- Totem Kommo-o (totem, Vast Poni Canyon has no captain)
  (15035, 15, NULL, 'totem-kommo-o', 'Totem Kommo-o', 'totem', 15, 7, 'kommo-o', 29),
  -- Totem Gumshoos (totem, sun)
  (15036, 15, 25, 'totem-gumshoos', 'Totem Gumshoos', 'totem', 1, NULL, 'gumshoos', 4),
  -- Totem Raticate (totem, moon)
  (15037, 15, 26, 'totem-raticate', 'Totem Raticate', 'totem', 16, 1, 'alolan-raticate', 4),
  -- Totem Wishiwashi (totem)
  (15038, 15, NULL, 'totem-wishiwashi', 'Totem Wishiwashi', 'totem', 3, NULL, 'wishiwashi', 30),
  -- Totem Salazzle (totem)
  (15039, 15, NULL, 'totem-salazzle', 'Totem Salazzle', 'totem', 8, 2, 'salazzle', 31),
  -- Totem Lurantis (totem)
  (15040, 15, NULL, 'totem-lurantis', 'Totem Lurantis', 'totem', 5, NULL, 'lurantis', 32),
  -- Totem Vikavolt (totem)
  (15041, 15, NULL, 'totem-vikavolt', 'Totem Vikavolt', 'totem', 12, 4, 'vikavolt', 33),
  -- Totem Mimikyu (totem)
  (15042, 15, NULL, 'totem-mimikyu', 'Totem Mimikyu', 'totem', 14, 18, 'mimikyu', 34),
  -- Faba (boss; Aether Paradise entrance)
  (15043, 15, NULL, 'faba', 'Faba', 'boss', NULL, NULL, 'faba', 35),
  -- Plumeria (boss)
  (15044, 15, NULL, 'plumeria', 'Plumeria', 'boss', NULL, NULL, 'plumeria', 36),
  -- Molayne (boss; Mount Hokulani)
  (15045, 15, NULL, 'molayne', 'Molayne', 'boss', NULL, NULL, 'molayne', 37),
  -- Faba (boss; Aether Paradise labs, second battle)
  (15046, 15, NULL, 'faba-labs', 'Faba', 'boss', NULL, NULL, 'faba', 38);
