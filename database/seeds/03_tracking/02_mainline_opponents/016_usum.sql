-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Ultra Sun / Ultra Moon, Island challenge, Elite Four, Champion, Team Rainbow Rocket, and First partner Pokémon pages.
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
  (16023, 16, NULL, 'lusamine', 'Lusamine', 'boss', NULL, NULL, 'lusamine', 23);
