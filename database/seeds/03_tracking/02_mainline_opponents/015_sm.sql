-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Sun / Moon, Island challenge, Elite Four, Champion, and First partner Pokémon pages.
-- Scope: Pokémon Sun / Moon major opponent data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for Sun / Moon major fights. Game-specific rows are scoped where the source game changes the opponent.
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
  -- Lana
  (15003, 15, NULL, 'lana', 'Lana', 'trial-captain', 3, NULL, 'lana', 3),
  -- Kiawe
  (15004, 15, NULL, 'kiawe', 'Kiawe', 'trial-captain', 2, NULL, 'kiawe', 4),
  -- Mallow
  (15005, 15, NULL, 'mallow', 'Mallow', 'trial-captain', 5, NULL, 'mallow', 5),
  -- Olivia
  (15006, 15, NULL, 'olivia', 'Olivia', 'kahuna', 13, NULL, 'olivia', 6),
  -- Sophocles
  (15007, 15, NULL, 'sophocles', 'Sophocles', 'trial-captain', 4, NULL, 'sophocles', 7),
  -- Acerola
  (15008, 15, NULL, 'acerola', 'Acerola', 'trial-captain', 14, NULL, 'acerola', 8),
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
  -- Hau & Gladion (rival)
  (15018, 15, NULL, 'hau-gladion', 'Hau & Gladion', 'rival', NULL, NULL, 'hau', 18),
  -- Guzma (boss)
  (15019, 15, NULL, 'guzma', 'Guzma', 'boss', NULL, NULL, 'guzma', 19),
  -- Lusamine (boss)
  (15020, 15, NULL, 'lusamine', 'Lusamine', 'boss', NULL, NULL, 'lusamine', 20);
