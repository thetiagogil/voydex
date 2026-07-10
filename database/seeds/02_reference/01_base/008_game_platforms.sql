-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia game infobox platform data.
-- Cross-check: Serebii and official Pokémon/Nintendo pages for Switch 2 editions.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Game-to-platform mappings for official native or enhanced release platforms.
-- ============================================================================
INSERT INTO reference.game_platforms (game_id, platform_id, release_kind, sort_order)
VALUES
  -- Pokémon Red -> Game Boy (native)
  (1, 1, 'native', 1),
  -- Pokémon Blue -> Game Boy (native)
  (2, 1, 'native', 1),
  -- Pokémon Yellow -> Game Boy (native)
  (3, 1, 'native', 1),
  -- Pokémon Yellow -> Game Boy Color (enhanced)
  (3, 2, 'enhanced', 2),
  -- Pokémon Gold -> Game Boy (native)
  (4, 1, 'native', 1),
  -- Pokémon Gold -> Game Boy Color (enhanced)
  (4, 2, 'enhanced', 2),
  -- Pokémon Silver -> Game Boy (native)
  (5, 1, 'native', 1),
  -- Pokémon Silver -> Game Boy Color (enhanced)
  (5, 2, 'enhanced', 2),
  -- Pokémon Crystal -> Game Boy Color (native)
  (6, 2, 'native', 1),
  -- Pokémon Ruby -> Game Boy Advance (native)
  (7, 3, 'native', 1),
  -- Pokémon Sapphire -> Game Boy Advance (native)
  (8, 3, 'native', 1),
  -- Pokémon FireRed -> Game Boy Advance (native)
  (9, 3, 'native', 1),
  -- Pokémon LeafGreen -> Game Boy Advance (native)
  (10, 3, 'native', 1),
  -- Pokémon Emerald -> Game Boy Advance (native)
  (11, 3, 'native', 1),

  -- Pokémon Diamond -> Nintendo DS (native)
  (12, 4, 'native', 1),
  -- Pokémon Pearl -> Nintendo DS (native)
  (13, 4, 'native', 1),
  -- Pokémon Platinum -> Nintendo DS (native)
  (14, 4, 'native', 1),
  -- Pokémon HeartGold -> Nintendo DS (native)
  (15, 4, 'native', 1),
  -- Pokémon SoulSilver -> Nintendo DS (native)
  (16, 4, 'native', 1),
  -- Pokémon Black -> Nintendo DS (native)
  (17, 4, 'native', 1),
  -- Pokémon White -> Nintendo DS (native)
  (18, 4, 'native', 1),
  -- Pokémon Black 2 -> Nintendo DS (native)
  (19, 4, 'native', 1),
  -- Pokémon White 2 -> Nintendo DS (native)
  (20, 4, 'native', 1),
  -- Pokémon X -> Nintendo 3DS (native)
  (21, 5, 'native', 1),
  -- Pokémon Y -> Nintendo 3DS (native)
  (22, 5, 'native', 1),
  -- Pokémon Omega Ruby -> Nintendo 3DS (native)
  (23, 5, 'native', 1),
  -- Pokémon Alpha Sapphire -> Nintendo 3DS (native)
  (24, 5, 'native', 1),
  -- Pokémon Sun -> Nintendo 3DS (native)
  (25, 5, 'native', 1),
  -- Pokémon Moon -> Nintendo 3DS (native)
  (26, 5, 'native', 1),
  -- Pokémon Ultra Sun -> Nintendo 3DS (native)
  (27, 5, 'native', 1),
  -- Pokémon Ultra Moon -> Nintendo 3DS (native)
  (28, 5, 'native', 1),
  -- Pokémon Let's Go, Pikachu! -> Nintendo Switch (native)
  (29, 6, 'native', 1),
  -- Pokémon Let's Go, Eevee! -> Nintendo Switch (native)
  (30, 6, 'native', 1),
  -- Pokémon Sword -> Nintendo Switch (native)
  (31, 6, 'native', 1),
  -- Pokémon Shield -> Nintendo Switch (native)
  (32, 6, 'native', 1),
  -- Pokémon Brilliant Diamond -> Nintendo Switch (native)
  (33, 6, 'native', 1),
  -- Pokémon Shining Pearl -> Nintendo Switch (native)
  (34, 6, 'native', 1),
  -- Pokémon Legends: Arceus -> Nintendo Switch (native)
  (35, 6, 'native', 1),
  -- Pokémon Scarlet -> Nintendo Switch (native)
  (36, 6, 'native', 1),
  -- Pokémon Violet -> Nintendo Switch (native)
  (37, 6, 'native', 1),
  -- Pokémon Legends: Z-A -> Nintendo Switch (native)
  (38, 6, 'native', 1),
  -- Pokémon Legends: Z-A -> Nintendo Switch 2 (enhanced)
  (38, 7, 'enhanced', 2);
