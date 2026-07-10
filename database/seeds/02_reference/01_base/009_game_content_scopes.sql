-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia core-series game and DLC pages.
-- Cross-check: Nintendo and official Pokémon DLC pages for current Switch DLC.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Maps each game to base and optional content scopes.
-- ============================================================================
INSERT INTO reference.game_content_scopes (game_id, version_group_id, is_base_scope, sort_order)
VALUES
  -- Pokémon Red -> Red / Blue base
  (1, 1, true, 1),
  -- Pokémon Blue -> Red / Blue base
  (2, 1, true, 1),
  -- Pokémon Yellow -> Yellow base
  (3, 2, true, 1),
  -- Pokémon Gold -> Gold / Silver base
  (4, 3, true, 1),
  -- Pokémon Silver -> Gold / Silver base
  (5, 3, true, 1),
  -- Pokémon Crystal -> Crystal base
  (6, 4, true, 1),
  -- Pokémon Ruby -> Ruby / Sapphire base
  (7, 5, true, 1),
  -- Pokémon Sapphire -> Ruby / Sapphire base
  (8, 5, true, 1),
  -- Pokémon FireRed -> FireRed / LeafGreen base
  (9, 6, true, 1),
  -- Pokémon LeafGreen -> FireRed / LeafGreen base
  (10, 6, true, 1),
  -- Pokémon Emerald -> Emerald base
  (11, 7, true, 1),

  -- Pokémon Diamond -> Diamond / Pearl base
  (12, 8, true, 1),
  -- Pokémon Pearl -> Diamond / Pearl base
  (13, 8, true, 1),
  -- Pokémon Platinum -> Platinum base
  (14, 9, true, 1),
  -- Pokémon HeartGold -> HeartGold / SoulSilver base
  (15, 10, true, 1),
  -- Pokémon SoulSilver -> HeartGold / SoulSilver base
  (16, 10, true, 1),
  -- Pokémon Black -> Black / White base
  (17, 11, true, 1),
  -- Pokémon White -> Black / White base
  (18, 11, true, 1),
  -- Pokémon Black 2 -> Black 2 / White 2 base
  (19, 12, true, 1),
  -- Pokémon White 2 -> Black 2 / White 2 base
  (20, 12, true, 1),
  -- Pokémon X -> X / Y base
  (21, 13, true, 1),
  -- Pokémon Y -> X / Y base
  (22, 13, true, 1),
  -- Pokémon Omega Ruby -> Omega Ruby / Alpha Sapphire base
  (23, 14, true, 1),
  -- Pokémon Alpha Sapphire -> Omega Ruby / Alpha Sapphire base
  (24, 14, true, 1),
  -- Pokémon Sun -> Sun / Moon base
  (25, 15, true, 1),
  -- Pokémon Moon -> Sun / Moon base
  (26, 15, true, 1),
  -- Pokémon Ultra Sun -> Ultra Sun / Ultra Moon base
  (27, 16, true, 1),
  -- Pokémon Ultra Moon -> Ultra Sun / Ultra Moon base
  (28, 16, true, 1),
  -- Pokémon Let's Go, Pikachu! -> Let's Go, Pikachu! / Let's Go, Eevee! base
  (29, 17, true, 1),
  -- Pokémon Let's Go, Eevee! -> Let's Go, Pikachu! / Let's Go, Eevee! base
  (30, 17, true, 1),
  -- Pokémon Sword -> Sword / Shield base
  (31, 18, true, 1),
  -- Pokémon Sword -> The Isle of Armor optional
  (31, 19, false, 2),
  -- Pokémon Sword -> The Crown Tundra optional
  (31, 20, false, 3),
  -- Pokémon Shield -> Sword / Shield base
  (32, 18, true, 1),
  -- Pokémon Shield -> The Isle of Armor optional
  (32, 19, false, 2),
  -- Pokémon Shield -> The Crown Tundra optional
  (32, 20, false, 3),
  -- Pokémon Brilliant Diamond -> Brilliant Diamond / Shining Pearl base
  (33, 21, true, 1),
  -- Pokémon Shining Pearl -> Brilliant Diamond / Shining Pearl base
  (34, 21, true, 1),
  -- Pokémon Legends: Arceus -> Pokémon Legends: Arceus base
  (35, 22, true, 1),
  -- Pokémon Scarlet -> Scarlet / Violet base
  (36, 23, true, 1),
  -- Pokémon Scarlet -> The Teal Mask optional
  (36, 24, false, 2),
  -- Pokémon Scarlet -> The Indigo Disk optional
  (36, 25, false, 3),
  -- Pokémon Violet -> Scarlet / Violet base
  (37, 23, true, 1),
  -- Pokémon Violet -> The Teal Mask optional
  (37, 24, false, 2),
  -- Pokémon Violet -> The Indigo Disk optional
  (37, 25, false, 3),
  -- Pokémon Legends: Z-A -> Pokémon Legends: Z-A base
  (38, 26, true, 1),
  -- Pokémon Legends: Z-A -> Mega Dimension optional
  (38, 27, false, 2);
