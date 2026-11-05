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
  place,
  sort_order
) VALUES
  -- Falkner
  (10001, 10, NULL, 'falkner', 'Falkner', 'gym-leader', 10, NULL, 'falkner', 'Violet City', 1),
  -- Bugsy
  (10002, 10, NULL, 'bugsy', 'Bugsy', 'gym-leader', 12, NULL, 'bugsy', 'Azalea Town', 2),
  -- Whitney
  (10003, 10, NULL, 'whitney', 'Whitney', 'gym-leader', 1, NULL, 'whitney', 'Goldenrod City', 3),
  -- Morty
  (10004, 10, NULL, 'morty', 'Morty', 'gym-leader', 14, NULL, 'morty', 'Ecruteak City', 4),
  -- Chuck
  (10005, 10, NULL, 'chuck', 'Chuck', 'gym-leader', 7, NULL, 'chuck', 'Cianwood City', 5),
  -- Jasmine
  (10006, 10, NULL, 'jasmine', 'Jasmine', 'gym-leader', 17, NULL, 'jasmine', 'Olivine City', 6),
  -- Pryce
  (10007, 10, NULL, 'pryce', 'Pryce', 'gym-leader', 6, NULL, 'pryce', 'Mahogany Town', 7),
  -- Clair
  (10008, 10, NULL, 'clair', 'Clair', 'gym-leader', 15, NULL, 'clair', 'Blackthorn City', 8),
  -- Will
  (10009, 10, NULL, 'will', 'Will', 'elite-four', 11, NULL, 'will', NULL, 9),
  -- Koga
  (10010, 10, NULL, 'koga', 'Koga', 'elite-four', 8, NULL, 'koga', NULL, 10),
  -- Bruno
  (10011, 10, NULL, 'bruno', 'Bruno', 'elite-four', 7, NULL, 'bruno', NULL, 11),
  -- Karen
  (10012, 10, NULL, 'karen', 'Karen', 'elite-four', 16, NULL, 'karen', NULL, 12),
  -- Lance
  (10013, 10, NULL, 'lance', 'Lance', 'champion', 15, NULL, 'lance', 'Indigo Plateau', 13),
  -- Brock
  (10014, 10, NULL, 'brock', 'Brock', 'gym-leader', 13, NULL, 'brock', 'Pewter City', 14),
  -- Misty
  (10015, 10, NULL, 'misty', 'Misty', 'gym-leader', 3, NULL, 'misty', 'Cerulean City', 15),
  -- Lt. Surge
  (10016, 10, NULL, 'lt-surge', 'Lt. Surge', 'gym-leader', 4, NULL, 'lt-surge', 'Vermilion City', 16),
  -- Erika
  (10017, 10, NULL, 'erika', 'Erika', 'gym-leader', 5, NULL, 'erika', 'Celadon City', 17),
  -- Janine
  (10018, 10, NULL, 'janine', 'Janine', 'gym-leader', 8, NULL, 'janine', 'Fuchsia City', 18),
  -- Sabrina
  (10019, 10, NULL, 'sabrina', 'Sabrina', 'gym-leader', 11, NULL, 'sabrina', 'Saffron City', 19),
  -- Blaine
  (10020, 10, NULL, 'blaine', 'Blaine', 'gym-leader', 2, NULL, 'blaine', 'Seafoam Islands', 20),
  -- Blue
  (10021, 10, NULL, 'blue', 'Blue', 'gym-leader', NULL, NULL, 'blue', 'Viridian City', 21),
  -- Red
  (10022, 10, NULL, 'red', 'Red', 'boss', NULL, NULL, 'red', NULL, 22),
  -- Silver (rival)
  (10023, 10, NULL, 'silver', 'Silver', 'rival', NULL, NULL, 'silver', NULL, 23),
  -- Ho-Oh (boss, heartgold)
  (10024, 10, 15, 'ho-oh', 'Ho-Oh', 'boss', 2, 10, NULL, NULL, 1),
  -- Lugia (boss, soulsilver)
  (10025, 10, 16, 'lugia', 'Lugia', 'boss', 11, 10, NULL, NULL, 1),
  -- Raikou (boss)
  (10026, 10, NULL, 'raikou', 'Raikou', 'boss', 4, NULL, NULL, NULL, 24),
  -- Entei (boss)
  (10027, 10, NULL, 'entei', 'Entei', 'boss', 2, NULL, NULL, NULL, 25),
  -- Latias (boss, heartgold)
  (10028, 10, 15, 'latias', 'Latias', 'boss', 15, 11, NULL, NULL, 2),
  -- Latios (boss, soulsilver)
  (10029, 10, 16, 'latios', 'Latios', 'boss', 15, 11, NULL, NULL, 2),
  -- Suicune (boss)
  (10030, 10, NULL, 'suicune', 'Suicune', 'boss', 3, NULL, NULL, NULL, 26),
  -- Zapdos (boss)
  (10031, 10, NULL, 'zapdos', 'Zapdos', 'boss', 4, 10, NULL, NULL, 27),
  -- Articuno (boss)
  (10032, 10, NULL, 'articuno', 'Articuno', 'boss', 6, 10, NULL, NULL, 28),
  -- Moltres (boss)
  (10033, 10, NULL, 'moltres', 'Moltres', 'boss', 2, 10, NULL, NULL, 29),
  -- Mewtwo (boss)
  (10034, 10, NULL, 'mewtwo', 'Mewtwo', 'boss', 11, NULL, NULL, NULL, 30),
  -- Lugia (boss, heartgold)
  (10035, 10, 15, 'lugia-heartgold', 'Lugia', 'boss', 11, 10, NULL, NULL, 3),
  -- Ho-Oh (boss, soulsilver)
  (10036, 10, 16, 'ho-oh-soulsilver', 'Ho-Oh', 'boss', 2, 10, NULL, NULL, 3),
  -- Kyogre (boss, heartgold)
  (10037, 10, 15, 'kyogre', 'Kyogre', 'boss', 3, NULL, NULL, NULL, 4),
  -- Groudon (boss, soulsilver)
  (10038, 10, 16, 'groudon', 'Groudon', 'boss', 9, NULL, NULL, NULL, 4),
  -- Rayquaza (boss)
  (10039, 10, NULL, 'rayquaza', 'Rayquaza', 'boss', 15, 10, NULL, NULL, 31),
  -- Proton (boss; Team Rocket Executive)
  (10040, 10, NULL, 'proton', 'Proton', 'boss', NULL, NULL, 'proton', NULL, 32),
  -- Petrel (boss; Team Rocket Executive)
  (10041, 10, NULL, 'petrel', 'Petrel', 'boss', NULL, NULL, 'petrel', NULL, 33),
  -- Ariana (boss; Team Rocket Executive)
  (10042, 10, NULL, 'ariana', 'Ariana', 'boss', NULL, NULL, 'ariana', NULL, 34),
  -- Ariana & Grunt (boss; the Double Battle with Lance at the Team Rocket HQ)
  (10043, 10, NULL, 'ariana-grunt', 'Ariana & Grunt', 'boss', NULL, NULL, 'ariana-grunt', NULL, 35),
  -- Archer (boss; Team Rocket Executive)
  (10044, 10, NULL, 'archer', 'Archer', 'boss', NULL, NULL, 'archer', NULL, 36),
  -- Clair & Lance (boss; the Dragon's Den Multi Battle with Silver at your side)
  (10045, 10, NULL, 'clair-lance', 'Clair & Lance', 'boss', 15, NULL, 'clair-lance', NULL, 37);
