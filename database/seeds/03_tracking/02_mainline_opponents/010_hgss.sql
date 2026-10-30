-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, and HeartGold / SoulSilver pages.
-- Cross-check: Pokémon HeartGold / SoulSilver source page.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii, Pokémon Database and the pret disassemblies.
-- Rocket Executives (Proton, Petrel, Ariana, Archer): the pret pokeheartgold trainer
-- data, cross-checked with Bulbapedia's trainer and Goldenrod Radio Tower pages.
-- Where the two differ the game wins: the Grunt beside Ariana has Hypnosis on Drowzee,
-- Petrel's last Koffing in the Radio Tower has Smog, and move order follows the game.
-- Proton's and Petrel's first teams have no set moves; they get the game's default.
-- Dragon's Den Multi Battle (Clair & Lance, Silver beside you): Bulbapedia's Dragon's
-- Den page; it opens after Silver's rematch at Mt. Moon and can be skipped.
-- Scope: Pokémon HeartGold / SoulSilver major opponent data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for HeartGold / SoulSilver major
-- fights.
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
  -- Falkner
  (10001, 10, NULL, 'falkner', 'Falkner', 'gym-leader', 10, NULL, 'falkner', 1),
  -- Bugsy
  (10002, 10, NULL, 'bugsy', 'Bugsy', 'gym-leader', 12, NULL, 'bugsy', 2),
  -- Whitney
  (10003, 10, NULL, 'whitney', 'Whitney', 'gym-leader', 1, NULL, 'whitney', 3),
  -- Morty
  (10004, 10, NULL, 'morty', 'Morty', 'gym-leader', 14, NULL, 'morty', 4),
  -- Chuck
  (10005, 10, NULL, 'chuck', 'Chuck', 'gym-leader', 7, NULL, 'chuck', 5),
  -- Jasmine
  (10006, 10, NULL, 'jasmine', 'Jasmine', 'gym-leader', 17, NULL, 'jasmine', 6),
  -- Pryce
  (10007, 10, NULL, 'pryce', 'Pryce', 'gym-leader', 6, NULL, 'pryce', 7),
  -- Clair
  (10008, 10, NULL, 'clair', 'Clair', 'gym-leader', 15, NULL, 'clair', 8),
  -- Will
  (10009, 10, NULL, 'will', 'Will', 'elite-four', 11, NULL, 'will', 9),
  -- Koga
  (10010, 10, NULL, 'koga', 'Koga', 'elite-four', 8, NULL, 'koga', 10),
  -- Bruno
  (10011, 10, NULL, 'bruno', 'Bruno', 'elite-four', 7, NULL, 'bruno', 11),
  -- Karen
  (10012, 10, NULL, 'karen', 'Karen', 'elite-four', 16, NULL, 'karen', 12),
  -- Lance
  (10013, 10, NULL, 'lance', 'Lance', 'champion', 15, NULL, 'lance', 13),
  -- Brock
  (10014, 10, NULL, 'brock', 'Brock', 'gym-leader', 13, NULL, 'brock', 14),
  -- Misty
  (10015, 10, NULL, 'misty', 'Misty', 'gym-leader', 3, NULL, 'misty', 15),
  -- Lt. Surge
  (10016, 10, NULL, 'lt-surge', 'Lt. Surge', 'gym-leader', 4, NULL, 'lt-surge', 16),
  -- Erika
  (10017, 10, NULL, 'erika', 'Erika', 'gym-leader', 5, NULL, 'erika', 17),
  -- Janine
  (10018, 10, NULL, 'janine', 'Janine', 'gym-leader', 8, NULL, 'janine', 18),
  -- Sabrina
  (10019, 10, NULL, 'sabrina', 'Sabrina', 'gym-leader', 11, NULL, 'sabrina', 19),
  -- Blaine
  (10020, 10, NULL, 'blaine', 'Blaine', 'gym-leader', 2, NULL, 'blaine', 20),
  -- Blue
  (10021, 10, NULL, 'blue', 'Blue', 'gym-leader', NULL, NULL, 'blue', 21),
  -- Red
  (10022, 10, NULL, 'red', 'Red', 'boss', NULL, NULL, 'red', 22),
  -- Silver (rival)
  (10023, 10, NULL, 'silver', 'Silver', 'rival', NULL, NULL, 'silver', 23),
  -- Ho-Oh (boss, heartgold)
  (10024, 10, 15, 'ho-oh', 'Ho-Oh', 'boss', 2, 10, 'ho-oh', 1),
  -- Lugia (boss, soulsilver)
  (10025, 10, 16, 'lugia', 'Lugia', 'boss', 11, 10, 'lugia', 1),
  -- Raikou (boss)
  (10026, 10, NULL, 'raikou', 'Raikou', 'boss', 4, NULL, 'raikou', 24),
  -- Entei (boss)
  (10027, 10, NULL, 'entei', 'Entei', 'boss', 2, NULL, 'entei', 25),
  -- Latias (boss, heartgold)
  (10028, 10, 15, 'latias', 'Latias', 'boss', 15, 11, 'latias', 2),
  -- Latios (boss, soulsilver)
  (10029, 10, 16, 'latios', 'Latios', 'boss', 15, 11, 'latios', 2),
  -- Suicune (boss)
  (10030, 10, NULL, 'suicune', 'Suicune', 'boss', 3, NULL, 'suicune', 26),
  -- Zapdos (boss)
  (10031, 10, NULL, 'zapdos', 'Zapdos', 'boss', 4, 10, 'zapdos', 27),
  -- Articuno (boss)
  (10032, 10, NULL, 'articuno', 'Articuno', 'boss', 6, 10, 'articuno', 28),
  -- Moltres (boss)
  (10033, 10, NULL, 'moltres', 'Moltres', 'boss', 2, 10, 'moltres', 29),
  -- Mewtwo (boss)
  (10034, 10, NULL, 'mewtwo', 'Mewtwo', 'boss', 11, NULL, 'mewtwo', 30),
  -- Lugia (boss, heartgold)
  (10035, 10, 15, 'lugia-heartgold', 'Lugia', 'boss', 11, 10, 'lugia', 3),
  -- Ho-Oh (boss, soulsilver)
  (10036, 10, 16, 'ho-oh-soulsilver', 'Ho-Oh', 'boss', 2, 10, 'ho-oh', 3),
  -- Kyogre (boss, heartgold)
  (10037, 10, 15, 'kyogre', 'Kyogre', 'boss', 3, NULL, 'kyogre', 4),
  -- Groudon (boss, soulsilver)
  (10038, 10, 16, 'groudon', 'Groudon', 'boss', 9, NULL, 'groudon', 4),
  -- Rayquaza (boss)
  (10039, 10, NULL, 'rayquaza', 'Rayquaza', 'boss', 15, 10, 'rayquaza', 31),
  -- Proton (boss; Team Rocket Executive)
  (10040, 10, NULL, 'proton', 'Proton', 'boss', NULL, NULL, 'proton', 32),
  -- Petrel (boss; Team Rocket Executive)
  (10041, 10, NULL, 'petrel', 'Petrel', 'boss', NULL, NULL, 'petrel', 33),
  -- Ariana (boss; Team Rocket Executive)
  (10042, 10, NULL, 'ariana', 'Ariana', 'boss', NULL, NULL, 'ariana', 34),
  -- Ariana & Grunt (boss; the Double Battle with Lance at the Team Rocket HQ)
  (10043, 10, NULL, 'ariana-grunt', 'Ariana & Grunt', 'boss', NULL, NULL, 'ariana', 35),
  -- Archer (boss; Team Rocket Executive)
  (10044, 10, NULL, 'archer', 'Archer', 'boss', NULL, NULL, 'archer', 36),
  -- Clair & Lance (boss; the Dragon's Den Multi Battle with Silver at your side)
  (10045, 10, NULL, 'clair-lance', 'Clair & Lance', 'boss', 15, NULL, 'clair', 37);
