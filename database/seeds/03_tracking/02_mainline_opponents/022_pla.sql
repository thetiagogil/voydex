-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Arceus, Noble Pokémon, Volo, Arceus, and First partner Pokémon pages.
-- Scope: Pokémon Legends: Arceus major opponent data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for Pokémon Legends: Arceus major fights. Game-specific rows are scoped where the source game changes the opponent.
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
  -- Kleavor
  (22001, 22, NULL, 'kleavor', 'Kleavor', 'noble', 12, 13, 'kleavor', 1),
  -- Hisuian Lilligant
  (22002, 22, NULL, 'hisuian-lilligant', 'Hisuian Lilligant', 'noble', 5, 7, 'hisuian-lilligant', 2),
  -- Hisuian Arcanine
  (22003, 22, NULL, 'hisuian-arcanine', 'Hisuian Arcanine', 'noble', 2, 13, 'hisuian-arcanine', 3),
  -- Hisuian Electrode
  (22004, 22, NULL, 'hisuian-electrode', 'Hisuian Electrode', 'noble', 4, 5, 'hisuian-electrode', 4),
  -- Hisuian Avalugg
  (22005, 22, NULL, 'hisuian-avalugg', 'Hisuian Avalugg', 'noble', 6, 13, 'hisuian-avalugg', 5),
  -- Commander Kamado
  (22006, 22, NULL, 'commander-kamado', 'Commander Kamado', 'boss', NULL, NULL, 'commander-kamado', 6),
  -- Origin Dialga / Origin Palkia
  (22007, 22, NULL, 'origin-pokemon', 'Origin Dialga / Origin Palkia', 'boss', 15, NULL, 'origin-pokemon', 7),
  -- Volo
  (22008, 22, NULL, 'volo', 'Volo', 'boss', NULL, NULL, 'volo', 8),
  -- Arceus
  (22009, 22, NULL, 'arceus', 'Arceus', 'boss', 1, NULL, 'arceus', 9);
