-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Lance, and Red pages.
-- Cross-check: Pokémon Crystal source page.
-- Legendary encounters: Bulbapedia, cross-checked with the pret disassemblies.
-- Celebi: event-only on the original cartridge; the 3DS Virtual Console release gives the GS Ball after the Hall of Fame.
-- Rocket Executives: the pret pokegold and pokecrystal disassemblies' trainer parties
-- and set moves, cross-checked with Bulbapedia's Petrel, Ariana, Archer and Proton
-- pages. The games call them Executive; the names are the ones HeartGold / SoulSilver
-- gave them, which Bulbapedia applies back to these battles. The Rocket HQ Executive
-- (Petrel) has no set moves and gets the game's default. Move order follows the game.
-- The Slowpoke Well is led by a Grunt in these games, so it has no Executive battle.
-- Scope: Pokémon Crystal major opponent data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for Crystal major fights.
-- Kanto Gym Leader order follows badge display order, not strict progression.
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
  (4001, 4, NULL, 'falkner', 'Falkner', 'gym-leader', 10, NULL, 'falkner', 1),
  -- Bugsy
  (4002, 4, NULL, 'bugsy', 'Bugsy', 'gym-leader', 12, NULL, 'bugsy', 2),
  -- Whitney
  (4003, 4, NULL, 'whitney', 'Whitney', 'gym-leader', 1, NULL, 'whitney', 3),
  -- Morty
  (4004, 4, NULL, 'morty', 'Morty', 'gym-leader', 14, NULL, 'morty', 4),
  -- Chuck
  (4005, 4, NULL, 'chuck', 'Chuck', 'gym-leader', 7, NULL, 'chuck', 5),
  -- Jasmine
  (4006, 4, NULL, 'jasmine', 'Jasmine', 'gym-leader', 17, NULL, 'jasmine', 6),
  -- Pryce
  (4007, 4, NULL, 'pryce', 'Pryce', 'gym-leader', 6, NULL, 'pryce', 7),
  -- Clair
  (4008, 4, NULL, 'clair', 'Clair', 'gym-leader', 15, NULL, 'clair', 8),
  -- Will
  (4009, 4, NULL, 'will', 'Will', 'elite-four', 11, NULL, 'will', 9),
  -- Koga
  (4010, 4, NULL, 'koga', 'Koga', 'elite-four', 8, NULL, 'koga', 10),
  -- Bruno
  (4011, 4, NULL, 'bruno', 'Bruno', 'elite-four', 7, NULL, 'bruno', 11),
  -- Karen
  (4012, 4, NULL, 'karen', 'Karen', 'elite-four', 16, NULL, 'karen', 12),
  -- Lance
  (4013, 4, NULL, 'lance', 'Lance', 'champion', 15, NULL, 'lance', 13),
  -- Brock
  (4014, 4, NULL, 'brock', 'Brock', 'gym-leader', 13, NULL, 'brock', 14),
  -- Misty
  (4015, 4, NULL, 'misty', 'Misty', 'gym-leader', 3, NULL, 'misty', 15),
  -- Lt. Surge
  (4016, 4, NULL, 'lt-surge', 'Lt. Surge', 'gym-leader', 4, NULL, 'lt-surge', 16),
  -- Erika
  (4017, 4, NULL, 'erika', 'Erika', 'gym-leader', 5, NULL, 'erika', 17),
  -- Janine
  (4018, 4, NULL, 'janine', 'Janine', 'gym-leader', 8, NULL, 'janine', 18),
  -- Sabrina
  (4019, 4, NULL, 'sabrina', 'Sabrina', 'gym-leader', 11, NULL, 'sabrina', 19),
  -- Blaine
  (4020, 4, NULL, 'blaine', 'Blaine', 'gym-leader', 2, NULL, 'blaine', 20),
  -- Blue
  (4021, 4, NULL, 'blue', 'Blue', 'gym-leader', NULL, NULL, 'blue', 21),
  -- Red
  (4022, 4, NULL, 'red', 'Red', 'boss', NULL, NULL, 'red', 22),
  -- Silver (rival)
  (4023, 4, NULL, 'silver', 'Silver', 'rival', NULL, NULL, 'silver', 23),
  -- Raikou (boss)
  (4024, 4, NULL, 'raikou', 'Raikou', 'boss', 4, NULL, 'raikou', 24),
  -- Entei (boss)
  (4025, 4, NULL, 'entei', 'Entei', 'boss', 2, NULL, 'entei', 25),
  -- Suicune (boss)
  (4026, 4, NULL, 'suicune', 'Suicune', 'boss', 3, NULL, 'suicune', 26),
  -- Ho-Oh (boss)
  (4027, 4, NULL, 'ho-oh', 'Ho-Oh', 'boss', 2, 10, 'ho-oh', 27),
  -- Lugia (boss)
  (4028, 4, NULL, 'lugia', 'Lugia', 'boss', 11, 10, 'lugia', 28),
  -- Celebi (boss)
  (4029, 4, NULL, 'celebi', 'Celebi', 'boss', 11, 5, 'celebi', 29),
  -- Petrel (boss; Team Rocket Executive)
  (4030, 4, NULL, 'petrel', 'Petrel', 'boss', NULL, NULL, 'petrel', 30),
  -- Ariana (boss; Team Rocket Executive)
  (4031, 4, NULL, 'ariana', 'Ariana', 'boss', NULL, NULL, 'ariana', 31),
  -- Archer (boss; Team Rocket Executive)
  (4032, 4, NULL, 'archer', 'Archer', 'boss', NULL, NULL, 'archer', 32),
  -- Proton (boss; Team Rocket Executive)
  (4033, 4, NULL, 'proton', 'Proton', 'boss', NULL, NULL, 'proton', 33);
