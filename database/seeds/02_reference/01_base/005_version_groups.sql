-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia core-series game and DLC pages.
-- Cross-check: Nintendo and official Pokémon DLC pages for current Switch DLC.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group content scopes. DLC is modeled as optional child version groups.
-- is_open_world: the story can be played in any order (Scarlet / Violet), so
-- Story never treats an earlier milestone as done before a later one.
-- ============================================================================
INSERT INTO reference.version_groups (id, slug, name, generation_id, parent_version_group_id, sort_order, is_open_world)
VALUES
  -- Red / Blue
  (1, 'rb', 'Red / Blue', 1, NULL, 1, FALSE),
  -- Yellow
  (2, 'yellow', 'Yellow', 1, NULL, 2, FALSE),
  -- Gold / Silver
  (3, 'gs', 'Gold / Silver', 2, NULL, 1, FALSE),
  -- Crystal
  (4, 'crystal', 'Crystal', 2, NULL, 2, FALSE),
  -- Ruby / Sapphire
  (5, 'rs', 'Ruby / Sapphire', 3, NULL, 1, FALSE),
  -- FireRed / LeafGreen
  (6, 'frlg', 'FireRed / LeafGreen', 3, NULL, 2, FALSE),
  -- Emerald
  (7, 'emerald', 'Emerald', 3, NULL, 3, FALSE),

  -- Diamond / Pearl
  (8, 'dp', 'Diamond / Pearl', 4, NULL, 1, FALSE),
  -- Platinum
  (9, 'platinum', 'Platinum', 4, NULL, 2, FALSE),
  -- HeartGold / SoulSilver
  (10, 'hgss', 'HeartGold / SoulSilver', 4, NULL, 3, FALSE),
  -- Black / White
  (11, 'bw', 'Black / White', 5, NULL, 1, FALSE),
  -- Black 2 / White 2
  (12, 'b2w2', 'Black 2 / White 2', 5, NULL, 2, FALSE),
  -- X / Y
  (13, 'xy', 'X / Y', 6, NULL, 1, FALSE),
  -- Omega Ruby / Alpha Sapphire
  (14, 'oras', 'Omega Ruby / Alpha Sapphire', 6, NULL, 2, FALSE),
  -- Sun / Moon
  (15, 'sm', 'Sun / Moon', 7, NULL, 1, FALSE),
  -- Ultra Sun / Ultra Moon
  (16, 'usum', 'Ultra Sun / Ultra Moon', 7, NULL, 2, FALSE),
  -- Let's Go, Pikachu! / Let's Go, Eevee!
  (17, 'lgpe', 'Let''s Go, Pikachu! / Let''s Go, Eevee!', 7, NULL, 3, FALSE),
  -- Sword / Shield
  (18, 'swsh', 'Sword / Shield', 8, NULL, 1, FALSE),
  -- The Isle of Armor
  (19, 'swsh-ioa', 'The Isle of Armor', 8, 18, 2, FALSE),
  -- The Crown Tundra
  (20, 'swsh-ct', 'The Crown Tundra', 8, 18, 3, FALSE),
  -- Brilliant Diamond / Shining Pearl
  (21, 'bdsp', 'Brilliant Diamond / Shining Pearl', 8, NULL, 4, FALSE),
  -- Pokémon Legends: Arceus
  (22, 'pla', 'Pokémon Legends: Arceus', 8, NULL, 5, FALSE),
  -- Scarlet / Violet
  (23, 'sv', 'Scarlet / Violet', 9, NULL, 1, TRUE),
  -- The Teal Mask
  (24, 'sv-tm', 'The Teal Mask', 9, 23, 2, FALSE),
  -- The Indigo Disk
  (25, 'sv-id', 'The Indigo Disk', 9, 23, 3, FALSE),
  -- Pokémon Legends: Z-A
  (26, 'za', 'Pokémon Legends: Z-A', 9, NULL, 4, FALSE),
  -- Mega Dimension
  (27, 'za-md', 'Mega Dimension', 9, 26, 5, FALSE);
