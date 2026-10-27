-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Ultra Sun / Ultra Moon, Island challenge, Elite Four, Champion, Team Rainbow Rocket, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and Pokémon Database.
-- When Solgaleo / Lunala can be caught on Mahalo Trail is confirmed by one source only.
-- Scope: Pokémon Ultra Sun / Ultra Moon major opponent data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for Ultra Sun / Ultra Moon major fights. Game-specific rows are scoped where the source game changes the opponent.
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
  (16001, 16, NULL, 'ilima', 'Ilima', 'trial-captain', 1, NULL, 'ilima', 1),
  -- Hala
  (16002, 16, NULL, 'hala', 'Hala', 'kahuna', 7, NULL, 'hala', 2),
  -- Lana
  (16003, 16, NULL, 'lana', 'Lana', 'trial-captain', 3, NULL, 'lana', 3),
  -- Kiawe
  (16004, 16, NULL, 'kiawe', 'Kiawe', 'trial-captain', 2, NULL, 'kiawe', 4),
  -- Mallow
  (16005, 16, NULL, 'mallow', 'Mallow', 'trial-captain', 5, NULL, 'mallow', 5),
  -- Olivia
  (16006, 16, NULL, 'olivia', 'Olivia', 'kahuna', 13, NULL, 'olivia', 6),
  -- Sophocles
  (16007, 16, NULL, 'sophocles', 'Sophocles', 'trial-captain', 4, NULL, 'sophocles', 7),
  -- Acerola
  (16008, 16, NULL, 'acerola', 'Acerola', 'trial-captain', 14, NULL, 'acerola', 8),
  -- Nanu
  (16009, 16, NULL, 'nanu', 'Nanu', 'kahuna', 16, NULL, 'nanu', 9),
  -- Mina
  (16010, 16, NULL, 'mina', 'Mina', 'trial-captain', 18, NULL, 'mina', 10),
  -- Hapu
  (16011, 16, NULL, 'hapu', 'Hapu', 'kahuna', 9, NULL, 'hapu', 11),
  -- Ultra Necrozma
  (16012, 16, NULL, 'ultra-necrozma', 'Ultra Necrozma', 'boss', 11, 15, 'ultra-necrozma', 12),
  -- Molayne
  (16013, 16, NULL, 'molayne', 'Molayne', 'elite-four', 17, NULL, 'molayne', 13),
  -- Olivia
  (16014, 16, NULL, 'olivia-e4', 'Olivia', 'elite-four', 13, NULL, 'olivia-e4', 14),
  -- Acerola
  (16015, 16, NULL, 'acerola-e4', 'Acerola', 'elite-four', 14, NULL, 'acerola-e4', 15),
  -- Kahili
  (16016, 16, NULL, 'kahili', 'Kahili', 'elite-four', 10, NULL, 'kahili', 16),
  -- Hau
  (16017, 16, NULL, 'hau', 'Hau', 'champion', NULL, NULL, 'hau', 17),
  -- Giovanni
  (16018, 16, NULL, 'giovanni', 'Giovanni', 'boss', 9, NULL, 'giovanni', 18),
  -- Hau (rival)
  (16019, 16, NULL, 'hau-rival', 'Hau', 'rival', NULL, NULL, 'hau', 19),
  -- Gladion (rival)
  (16020, 16, NULL, 'gladion', 'Gladion', 'rival', NULL, NULL, 'gladion', 20),
  -- Hau & Gladion (rival)
  (16021, 16, NULL, 'hau-gladion', 'Hau & Gladion', 'rival', NULL, NULL, 'hau', 21),
  -- Guzma (boss)
  (16022, 16, NULL, 'guzma', 'Guzma', 'boss', NULL, NULL, 'guzma', 22),
  -- Lusamine (boss)
  (16023, 16, NULL, 'lusamine', 'Lusamine', 'boss', NULL, NULL, 'lusamine', 23),
  -- Nihilego (boss)
  (16024, 16, NULL, 'nihilego', 'Nihilego', 'boss', 13, 8, 'nihilego', 24),
  -- Necrozma (boss, ultra-sun)
  (16025, 16, 27, 'necrozma-dusk-mane', 'Necrozma', 'boss', 11, 17, 'necrozma', 1),
  -- Necrozma (boss, ultra-moon)
  (16026, 16, 28, 'necrozma-dawn-wings', 'Necrozma', 'boss', 11, 14, 'necrozma', 1),
  -- Solgaleo (boss, ultra-sun)
  (16027, 16, 27, 'solgaleo', 'Solgaleo', 'boss', 11, 17, 'solgaleo', 2),
  -- Lunala (boss, ultra-moon)
  (16028, 16, 28, 'lunala', 'Lunala', 'boss', 11, 14, 'lunala', 2),
  -- Necrozma (boss)
  (16029, 16, NULL, 'necrozma', 'Necrozma', 'boss', 11, NULL, 'necrozma', 25),
  -- Tapu Koko (boss)
  (16030, 16, NULL, 'tapu-koko', 'Tapu Koko', 'boss', 4, 18, 'tapu-koko', 26),
  -- Tapu Lele (boss)
  (16031, 16, NULL, 'tapu-lele', 'Tapu Lele', 'boss', 11, 18, 'tapu-lele', 27),
  -- Tapu Bulu (boss)
  (16032, 16, NULL, 'tapu-bulu', 'Tapu Bulu', 'boss', 5, 18, 'tapu-bulu', 28),
  -- Tapu Fini (boss)
  (16033, 16, NULL, 'tapu-fini', 'Tapu Fini', 'boss', 3, 18, 'tapu-fini', 29),
  -- Zygarde (boss)
  (16034, 16, NULL, 'zygarde', 'Zygarde', 'boss', 15, 9, 'zygarde', 30),
  -- Blacephalon (boss, ultra-sun)
  (16035, 16, 27, 'blacephalon', 'Blacephalon', 'boss', 2, 14, 'blacephalon', 3),
  -- Stakataka (boss, ultra-moon)
  (16036, 16, 28, 'stakataka', 'Stakataka', 'boss', 13, 17, 'stakataka', 3),
  -- Totem Kommo-o (totem, Vast Poni Canyon has no captain)
  (16037, 16, NULL, 'totem-kommo-o', 'Totem Kommo-o', 'totem', 15, 7, 'kommo-o', 31);
