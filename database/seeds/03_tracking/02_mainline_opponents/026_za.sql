-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Pokémon Legends: Z-A, Z-A Royale, Rogue Mega Evolution, Zygarde, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Zygarde's story levels: 10% Forme Lv. 33 is confirmed by one source only; Lv. 57 at Jacinthe's tournament is cross-checked with Thonky.
-- Promotion match trainers: Bulbapedia Z-A Royale and trainer pages, cross-checked with Serebii, Thonky and Nintendo Life.
-- Rogue Megas of Main Missions 11 to 34: Bulbapedia Rogue Mega Evolution page; places cross-checked
-- with Serebii's Mega Stone locations. Types are the Mega form's.
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
  (26016, 26, NULL, 'grisham', 'Grisham', 'za-royale', NULL, NULL, 'grisham', 16),
  -- Rogue Mega Slowbro
  (26017, 26, NULL, 'rogue-mega-slowbro', 'Rogue Mega Slowbro', 'boss', 3, 11, 'rogue-mega-slowbro', 17),
  -- Rogue Mega Camerupt
  (26018, 26, NULL, 'rogue-mega-camerupt', 'Rogue Mega Camerupt', 'boss', 2, 9, 'rogue-mega-camerupt', 18),
  -- Rogue Mega Victreebel
  (26019, 26, NULL, 'rogue-mega-victreebel', 'Rogue Mega Victreebel', 'boss', 5, 8, 'rogue-mega-victreebel', 19),
  -- Rogue Mega Beedrill
  (26020, 26, NULL, 'rogue-mega-beedrill', 'Rogue Mega Beedrill', 'boss', 12, 8, 'rogue-mega-beedrill', 20),
  -- Rogue Mega Hawlucha
  (26021, 26, NULL, 'rogue-mega-hawlucha', 'Rogue Mega Hawlucha', 'boss', 7, 10, 'rogue-mega-hawlucha', 21),
  -- Rogue Mega Banette
  (26022, 26, NULL, 'rogue-mega-banette', 'Rogue Mega Banette', 'boss', 14, NULL, 'rogue-mega-banette', 22),
  -- Rogue Mega Mawile
  (26023, 26, NULL, 'rogue-mega-mawile', 'Rogue Mega Mawile', 'boss', 17, 18, 'rogue-mega-mawile', 23),
  -- Rogue Mega Barbaracle
  (26024, 26, NULL, 'rogue-mega-barbaracle', 'Rogue Mega Barbaracle', 'boss', 13, 7, 'rogue-mega-barbaracle', 24),
  -- Rogue Mega Ampharos
  (26025, 26, NULL, 'rogue-mega-ampharos', 'Rogue Mega Ampharos', 'boss', 4, 15, 'rogue-mega-ampharos', 25),
  -- Rogue Mega Froslass
  (26026, 26, NULL, 'rogue-mega-froslass', 'Rogue Mega Froslass', 'boss', 6, 14, 'rogue-mega-froslass', 26),
  -- Rogue Mega Altaria
  (26027, 26, NULL, 'rogue-mega-altaria', 'Rogue Mega Altaria', 'boss', 15, 18, 'rogue-mega-altaria', 27),
  -- Rogue Mega Venusaur
  (26028, 26, NULL, 'rogue-mega-venusaur', 'Rogue Mega Venusaur', 'boss', 5, 8, 'rogue-mega-venusaur', 28),
  -- Rogue Mega Dragonite
  (26029, 26, NULL, 'rogue-mega-dragonite', 'Rogue Mega Dragonite', 'boss', 15, 10, 'rogue-mega-dragonite', 29),
  -- Rogue Mega Tyranitar
  (26030, 26, NULL, 'rogue-mega-tyranitar', 'Rogue Mega Tyranitar', 'boss', 13, 16, 'rogue-mega-tyranitar', 30),
  -- Rogue Mega Starmie
  (26031, 26, NULL, 'rogue-mega-starmie', 'Rogue Mega Starmie', 'boss', 3, 11, 'rogue-mega-starmie', 31),
  -- Lida (fights beside you against rogue Megas)
  (26032, 26, NULL, 'lida', 'Lida', 'ally', NULL, NULL, 'lida', 32),
  -- Naveen (fights beside you against rogue Megas)
  (26033, 26, NULL, 'naveen', 'Naveen', 'ally', NULL, NULL, 'naveen', 33);
