-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia core-series game pages.
-- Cross-check: Serebii and official Pokémon release history.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Individual mainline product family games. DLC is not seeded as a game.
-- ============================================================================
INSERT INTO reference.games (id, slug, name, product_family_id, generation_id, region_id, version_group_id, game_type_id, release_year, sort_order)
VALUES
  -- Pokémon Red
  (1, 'red', 'Pokémon Red', 1, 1, 1, 1, 1, 1996, 1),
  -- Pokémon Blue
  (2, 'blue', 'Pokémon Blue', 1, 1, 1, 1, 1, 1996, 2),
  -- Pokémon Yellow
  (3, 'yellow', 'Pokémon Yellow', 1, 1, 1, 2, 2, 1998, 1),
  -- Pokémon Gold
  (4, 'gold', 'Pokémon Gold', 1, 2, 2, 3, 1, 1999, 1),
  -- Pokémon Silver
  (5, 'silver', 'Pokémon Silver', 1, 2, 2, 3, 1, 1999, 2),
  -- Pokémon Crystal
  (6, 'crystal', 'Pokémon Crystal', 1, 2, 2, 4, 2, 2000, 1),
  -- Pokémon Ruby
  (7, 'ruby', 'Pokémon Ruby', 1, 3, 3, 5, 1, 2002, 1),
  -- Pokémon Sapphire
  (8, 'sapphire', 'Pokémon Sapphire', 1, 3, 3, 5, 1, 2002, 2),
  -- Pokémon FireRed
  (9, 'firered', 'Pokémon FireRed', 1, 3, 1, 6, 3, 2004, 1),
  -- Pokémon LeafGreen
  (10, 'leafgreen', 'Pokémon LeafGreen', 1, 3, 1, 6, 3, 2004, 2),
  -- Pokémon Emerald
  (11, 'emerald', 'Pokémon Emerald', 1, 3, 3, 7, 2, 2004, 1),

  -- Pokémon Diamond
  (12, 'diamond', 'Pokémon Diamond', 1, 4, 4, 8, 1, 2006, 1),
  -- Pokémon Pearl
  (13, 'pearl', 'Pokémon Pearl', 1, 4, 4, 8, 1, 2006, 2),
  -- Pokémon Platinum
  (14, 'platinum', 'Pokémon Platinum', 1, 4, 4, 9, 2, 2008, 1),
  -- Pokémon HeartGold
  (15, 'heartgold', 'Pokémon HeartGold', 1, 4, 2, 10, 3, 2009, 1),
  -- Pokémon SoulSilver
  (16, 'soulsilver', 'Pokémon SoulSilver', 1, 4, 2, 10, 3, 2009, 2),
  -- Pokémon Black
  (17, 'black', 'Pokémon Black', 1, 5, 5, 11, 1, 2010, 1),
  -- Pokémon White
  (18, 'white', 'Pokémon White', 1, 5, 5, 11, 1, 2010, 2),
  -- Pokémon Black 2
  (19, 'black-2', 'Pokémon Black 2', 1, 5, 5, 12, 4, 2012, 1),
  -- Pokémon White 2
  (20, 'white-2', 'Pokémon White 2', 1, 5, 5, 12, 4, 2012, 2),
  -- Pokémon X
  (21, 'x', 'Pokémon X', 1, 6, 6, 13, 1, 2013, 1),
  -- Pokémon Y
  (22, 'y', 'Pokémon Y', 1, 6, 6, 13, 1, 2013, 2),
  -- Pokémon Omega Ruby
  (23, 'omega-ruby', 'Pokémon Omega Ruby', 1, 6, 3, 14, 3, 2014, 1),
  -- Pokémon Alpha Sapphire
  (24, 'alpha-sapphire', 'Pokémon Alpha Sapphire', 1, 6, 3, 14, 3, 2014, 2),
  -- Pokémon Sun
  (25, 'sun', 'Pokémon Sun', 1, 7, 7, 15, 1, 2016, 1),
  -- Pokémon Moon
  (26, 'moon', 'Pokémon Moon', 1, 7, 7, 15, 1, 2016, 2),
  -- Pokémon Ultra Sun
  (27, 'ultra-sun', 'Pokémon Ultra Sun', 1, 7, 7, 16, 2, 2017, 1),
  -- Pokémon Ultra Moon
  (28, 'ultra-moon', 'Pokémon Ultra Moon', 1, 7, 7, 16, 2, 2017, 2),
  -- Pokémon Let's Go, Pikachu!
  (29, 'lets-go-pikachu', 'Pokémon Let''s Go, Pikachu!', 1, 7, 1, 17, 3, 2018, 1),
  -- Pokémon Let's Go, Eevee!
  (30, 'lets-go-eevee', 'Pokémon Let''s Go, Eevee!', 1, 7, 1, 17, 3, 2018, 2),
  -- Pokémon Sword
  (31, 'sword', 'Pokémon Sword', 1, 8, 8, 18, 1, 2019, 1),
  -- Pokémon Shield
  (32, 'shield', 'Pokémon Shield', 1, 8, 8, 18, 1, 2019, 2),
  -- Pokémon Brilliant Diamond
  (33, 'brilliant-diamond', 'Pokémon Brilliant Diamond', 1, 8, 4, 21, 3, 2021, 1),
  -- Pokémon Shining Pearl
  (34, 'shining-pearl', 'Pokémon Shining Pearl', 1, 8, 4, 21, 3, 2021, 2),
  -- Pokémon Legends: Arceus
  (35, 'legends-arceus', 'Pokémon Legends: Arceus', 1, 8, 9, 22, 1, 2022, 1),
  -- Pokémon Scarlet
  (36, 'scarlet', 'Pokémon Scarlet', 1, 9, 10, 23, 1, 2022, 1),
  -- Pokémon Violet
  (37, 'violet', 'Pokémon Violet', 1, 9, 10, 23, 1, 2022, 2),
  -- Pokémon Legends: Z-A
  (38, 'legends-za', 'Pokémon Legends: Z-A', 1, 9, 6, 26, 1, 2025, 1);
