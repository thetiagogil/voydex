-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Regional Pokedex.
-- Cross-check: linked Bulbapedia regional, local, and DLC Pokedex pages.
-- ============================================================================
-- File Scope
-- ============================================================================
-- In-game Pokedex definition scopes by version group.
-- Species-entry membership is seeded separately after row-level source review.
-- ============================================================================
INSERT INTO reference.pokedex (id, version_group_id, slug, name, pokedex_kind, is_completion_relevant, sort_order)
VALUES
  -- Red / Blue - Kanto Pokedex
  (101, 1, 'kanto', 'Kanto Pokedex', 'regional', true, 1),
  -- Yellow - Kanto Pokedex
  (201, 2, 'kanto', 'Kanto Pokedex', 'regional', true, 1),
  -- Gold / Silver - New Pokedex
  (301, 3, 'new', 'New Pokedex', 'regional', true, 1),
  -- Crystal - New Pokedex
  (401, 4, 'new', 'New Pokedex', 'regional', true, 1),
  -- Ruby / Sapphire - Hoenn Pokedex
  (501, 5, 'hoenn', 'Hoenn Pokedex', 'regional', true, 1),
  -- Ruby / Sapphire - National Pokedex
  (502, 5, 'national', 'National Pokedex', 'national', true, 2),
  -- FireRed / LeafGreen - Kanto Pokedex
  (601, 6, 'kanto', 'Kanto Pokedex', 'regional', true, 1),
  -- FireRed / LeafGreen - National Pokedex
  (602, 6, 'national', 'National Pokedex', 'national', true, 2),
  -- Emerald - Hoenn Pokedex
  (701, 7, 'hoenn', 'Hoenn Pokedex', 'regional', true, 1),
  -- Emerald - National Pokedex
  (702, 7, 'national', 'National Pokedex', 'national', true, 2),

  -- Diamond / Pearl - Sinnoh Pokedex
  (801, 8, 'sinnoh', 'Sinnoh Pokedex', 'regional', true, 1),
  -- Diamond / Pearl - National Pokedex
  (802, 8, 'national', 'National Pokedex', 'national', true, 2),
  -- Platinum - Enhanced Sinnoh Pokedex
  (901, 9, 'enhanced-sinnoh', 'Enhanced Sinnoh Pokedex', 'regional', true, 1),
  -- Platinum - National Pokedex
  (902, 9, 'national', 'National Pokedex', 'national', true, 2),
  -- HeartGold / SoulSilver - Johto Pokedex
  (1001, 10, 'johto', 'Johto Pokedex', 'regional', true, 1),
  -- HeartGold / SoulSilver - National Pokedex
  (1002, 10, 'national', 'National Pokedex', 'national', true, 2),
  -- Black / White - Unova Pokedex
  (1101, 11, 'unova', 'Unova Pokedex', 'regional', true, 1),
  -- Black / White - National Pokedex
  (1102, 11, 'national', 'National Pokedex', 'national', true, 2),
  -- Black 2 / White 2 - Unova Pokedex
  (1201, 12, 'unova', 'Unova Pokedex', 'regional', true, 1),
  -- Black 2 / White 2 - National Pokedex
  (1202, 12, 'national', 'National Pokedex', 'national', true, 2),
  -- X / Y - Central Kalos Pokedex
  (1301, 13, 'central-kalos', 'Central Kalos Pokedex', 'local', true, 1),
  -- X / Y - Coastal Kalos Pokedex
  (1302, 13, 'coastal-kalos', 'Coastal Kalos Pokedex', 'local', true, 2),
  -- X / Y - Mountain Kalos Pokedex
  (1303, 13, 'mountain-kalos', 'Mountain Kalos Pokedex', 'local', true, 3),
  -- X / Y - National Pokedex
  (1304, 13, 'national', 'National Pokedex', 'national', true, 4),
  -- Omega Ruby / Alpha Sapphire - Hoenn Pokedex
  (1401, 14, 'hoenn', 'Hoenn Pokedex', 'regional', true, 1),
  -- Omega Ruby / Alpha Sapphire - National Pokedex
  (1402, 14, 'national', 'National Pokedex', 'national', true, 2),
  -- Sun / Moon - Alola Pokedex
  (1501, 15, 'alola', 'Alola Pokedex', 'regional', true, 1),
  -- Sun / Moon - Melemele Pokedex
  (1502, 15, 'melemele', 'Melemele Pokedex', 'local', false, 2),
  -- Sun / Moon - Akala Pokedex
  (1503, 15, 'akala', 'Akala Pokedex', 'local', false, 3),
  -- Sun / Moon - Ulaula Pokedex
  (1504, 15, 'ulaula', 'Ulaula Pokedex', 'local', false, 4),
  -- Sun / Moon - Poni Pokedex
  (1505, 15, 'poni', 'Poni Pokedex', 'local', false, 5),
  -- Ultra Sun / Ultra Moon - Alola Pokedex
  (1601, 16, 'alola', 'Alola Pokedex', 'regional', true, 1),
  -- Ultra Sun / Ultra Moon - Melemele Pokedex
  (1602, 16, 'melemele', 'Melemele Pokedex', 'local', false, 2),
  -- Ultra Sun / Ultra Moon - Akala Pokedex
  (1603, 16, 'akala', 'Akala Pokedex', 'local', false, 3),
  -- Ultra Sun / Ultra Moon - Ulaula Pokedex
  (1604, 16, 'ulaula', 'Ulaula Pokedex', 'local', false, 4),
  -- Ultra Sun / Ultra Moon - Poni Pokedex
  (1605, 16, 'poni', 'Poni Pokedex', 'local', false, 5),
  -- Let's Go, Pikachu! / Let's Go, Eevee! - Kanto Pokedex
  (1701, 17, 'kanto', 'Kanto Pokedex', 'regional', true, 1),
  -- Sword / Shield - Galar Pokedex
  (1801, 18, 'galar', 'Galar Pokedex', 'regional', true, 1),
  -- The Isle of Armor - Isle of Armor Pokedex
  (1901, 19, 'isle-of-armor', 'Isle of Armor Pokedex', 'dlc', true, 1),
  -- The Crown Tundra - Crown Tundra Pokedex
  (2001, 20, 'crown-tundra', 'Crown Tundra Pokedex', 'dlc', true, 1),
  -- Brilliant Diamond / Shining Pearl - Sinnoh Pokedex
  (2101, 21, 'sinnoh', 'Sinnoh Pokedex', 'regional', true, 1),
  -- Brilliant Diamond / Shining Pearl - National Pokedex
  (2102, 21, 'national', 'National Pokedex', 'national', true, 2),
  -- Pokémon Legends: Arceus - Hisui Pokedex
  (2201, 22, 'hisui', 'Hisui Pokedex', 'regional', true, 1),
  -- Scarlet / Violet - Paldea Pokedex
  (2301, 23, 'paldea', 'Paldea Pokedex', 'regional', true, 1),
  -- The Teal Mask - Kitakami Pokedex
  (2401, 24, 'kitakami', 'Kitakami Pokedex', 'dlc', true, 1),
  -- The Indigo Disk - Blueberry Pokedex
  (2501, 25, 'blueberry', 'Blueberry Pokedex', 'dlc', true, 1),
  -- Pokémon Legends: Z-A - Lumiose Pokedex
  (2601, 26, 'lumiose', 'Lumiose Pokedex', 'regional', true, 1),
  -- Mega Dimension - Hyperspace Pokedex
  (2701, 27, 'hyperspace', 'Hyperspace Pokedex', 'dlc', true, 1);
