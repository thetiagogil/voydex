-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Mega Dimension, Hyperspace Lumiose, Darkrai, Groudon, Kyogre, and Rayquaza pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Rogue Megas of Hyperspace Missions 1, 3, 6 and 8: Bulbapedia Rogue Mega Evolution page,
-- cross-checked with the game's data-mined encounter table. Types are the Mega form's.
-- Scope: Pokémon Mega Dimension major opponent data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for Mega Dimension major fights. Game-specific rows are scoped where the source game changes the opponent.
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
  -- Darkrai
  (27001, 27, NULL, 'darkrai', 'Darkrai', 'boss', 16, NULL, 'darkrai', 1),
  -- Groudon
  (27002, 27, NULL, 'groudon', 'Groudon', 'boss', 9, NULL, 'groudon', 2),
  -- Kyogre
  (27003, 27, NULL, 'kyogre', 'Kyogre', 'boss', 3, NULL, 'kyogre', 3),
  -- Rayquaza
  (27004, 27, NULL, 'rayquaza', 'Rayquaza', 'boss', 15, 10, 'rayquaza', 4),
  -- Heatran (boss)
  (27005, 27, NULL, 'heatran', 'Heatran', 'boss', 2, 17, 'heatran', 5),
  -- Genesect (boss)
  (27006, 27, NULL, 'genesect', 'Genesect', 'boss', 12, 17, 'genesect', 6),
  -- Marshadow (boss)
  (27007, 27, NULL, 'marshadow', 'Marshadow', 'boss', 7, 14, 'marshadow', 7),
  -- Meltan (boss)
  (27008, 27, NULL, 'meltan', 'Meltan', 'boss', 17, NULL, 'meltan', 8),
  -- Volcanion (boss)
  (27009, 27, NULL, 'volcanion', 'Volcanion', 'boss', 2, 3, 'volcanion', 9),
  -- Hoopa (boss)
  (27010, 27, NULL, 'hoopa', 'Hoopa', 'boss', 11, 16, 'hoopa', 10),
  -- Rogue Mega Absol Z
  (27011, 27, NULL, 'rogue-mega-absol-z', 'Rogue Mega Absol Z', 'boss', 16, 14, 'rogue-mega-absol-z', 11),
  -- Rogue Mega Staraptor
  (27012, 27, NULL, 'rogue-mega-staraptor', 'Rogue Mega Staraptor', 'boss', 7, 10, 'rogue-mega-staraptor', 12),
  -- Rogue Mega Tatsugiri
  (27013, 27, NULL, 'rogue-mega-tatsugiri', 'Rogue Mega Tatsugiri', 'boss', 15, 3, 'rogue-mega-tatsugiri', 13),
  -- Rogue Mega Meowstic
  (27014, 27, NULL, 'rogue-mega-meowstic', 'Rogue Mega Meowstic', 'boss', 11, NULL, 'rogue-mega-meowstic', 14),
  -- Taunie / Urbain (fights beside you against Hyperspace rogue Megas)
  (27015, 27, NULL, 'taunie-urbain', 'Taunie / Urbain', 'ally', NULL, NULL, 'taunie-urbain', 15),
  -- Korrina (fights beside you against Hyperspace rogue Megas)
  (27016, 27, NULL, 'korrina', 'Korrina', 'ally', NULL, NULL, 'korrina', 16);
