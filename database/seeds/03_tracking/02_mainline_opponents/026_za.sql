-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Z-A, Z-A Royale, Rogue Mega Evolution, Zygarde, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Zygarde's story levels: 10% Forme Lv. 33 is confirmed by one source only; Lv. 57 at Jacinthe's tournament is cross-checked with Thonky.
-- Promotion match trainers: Bulbapedia Z-A Royale and trainer pages, cross-checked with Serebii, Thonky and Nintendo Life.
-- Scope: Pokémon Legends: Z-A major opponent data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for Pokémon Legends: Z-A major fights. Game-specific rows are scoped where the source game changes the opponent.
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
  -- Taunie / Urbain
  (26001, 26, NULL, 'taunie-urbain', 'Taunie / Urbain', 'rival', NULL, NULL, 'taunie-urbain', 1),
  -- Rogue Mega Absol
  (26002, 26, NULL, 'rogue-mega-absol', 'Rogue Mega Absol', 'boss', 16, NULL, 'rogue-mega-absol', 2),
  -- Lysandre
  (26003, 26, NULL, 'lysandre', 'Lysandre', 'boss', NULL, NULL, 'lysandre', 3),
  -- Zygarde
  (26004, 26, NULL, 'zygarde', 'Zygarde', 'boss', 15, 9, 'zygarde', 4),
  -- Xerneas (boss)
  (26005, 26, NULL, 'xerneas', 'Xerneas', 'boss', 18, NULL, 'xerneas', 5),
  -- Yveltal (boss)
  (26006, 26, NULL, 'yveltal', 'Yveltal', 'boss', 16, 10, 'yveltal', 6),
  -- Zach (Z-A Royale, Rank Z to Y)
  (26007, 26, NULL, 'zach', 'Zach', 'za-royale', NULL, NULL, 'zach', 7),
  -- Yvon (Z-A Royale, Rank Y to X)
  (26008, 26, NULL, 'yvon', 'Yvon', 'za-royale', 18, NULL, 'yvon', 8),
  -- Xavi (Z-A Royale, Rank X to W)
  (26009, 26, NULL, 'xavi', 'Xavi', 'za-royale', NULL, NULL, 'xavi', 9),
  -- Rintaro (Z-A Royale, Rank W to V)
  (26010, 26, NULL, 'rintaro', 'Rintaro', 'za-royale', NULL, NULL, 'rintaro', 10),
  -- Vinnie (Z-A Royale, special promotion from Rank V to F)
  (26011, 26, NULL, 'vinnie', 'Vinnie', 'za-royale', NULL, NULL, 'vinnie', 11),
  -- Canari (Z-A Royale, Rank F to E)
  (26012, 26, NULL, 'canari', 'Canari', 'za-royale', 4, NULL, 'canari', 12),
  -- Ivor (Z-A Royale, Rank E to D)
  (26013, 26, NULL, 'ivor', 'Ivor', 'za-royale', 7, NULL, 'ivor', 13),
  -- Corbeau (Z-A Royale, Rank D to C)
  (26014, 26, NULL, 'corbeau', 'Corbeau', 'za-royale', 8, NULL, 'corbeau', 14),
  -- Jacinthe (Z-A Royale, Rank C to B)
  (26015, 26, NULL, 'jacinthe', 'Jacinthe', 'za-royale', 18, NULL, 'jacinthe', 15),
  -- Grisham (Z-A Royale, Rank B to A)
  (26016, 26, NULL, 'grisham', 'Grisham', 'za-royale', NULL, NULL, 'grisham', 16);
