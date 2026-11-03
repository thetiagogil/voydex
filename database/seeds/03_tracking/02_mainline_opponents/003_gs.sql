-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Lance, and Red pages.
-- Cross-check: Pokémon Gold / Silver source pages.
-- Legendary encounters: Bulbapedia, cross-checked with the pret disassemblies.
-- Rocket Executives: the pret pokegold and pokecrystal disassemblies' trainer parties
-- and set moves, cross-checked with Bulbapedia's Petrel, Ariana, Archer and Proton
-- pages. The games call them Executive; the names are the ones HeartGold / SoulSilver
-- gave them, which Bulbapedia applies back to these battles. The Rocket HQ Executive
-- (Petrel) has no set moves and gets the game's default. Move order follows the game.
-- The Slowpoke Well is led by a Grunt in these games, so it has no Executive battle.
-- Scope: Pokémon Gold / Silver major opponent data.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Version-group-wide opponent definitions for Gold / Silver major fights.
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
  place,
  sort_order
) VALUES
  -- Falkner
  (3001, 3, NULL, 'falkner', 'Falkner', 'gym-leader', 10, NULL, 'falkner', 'Violet City', 1),
  -- Bugsy
  (3002, 3, NULL, 'bugsy', 'Bugsy', 'gym-leader', 12, NULL, 'bugsy', 'Azalea Town', 2),
  -- Whitney
  (3003, 3, NULL, 'whitney', 'Whitney', 'gym-leader', 1, NULL, 'whitney', 'Goldenrod City', 3),
  -- Morty
  (3004, 3, NULL, 'morty', 'Morty', 'gym-leader', 14, NULL, 'morty', 'Ecruteak City', 4),
  -- Chuck
  (3005, 3, NULL, 'chuck', 'Chuck', 'gym-leader', 7, NULL, 'chuck', 'Cianwood City', 5),
  -- Jasmine
  (3006, 3, NULL, 'jasmine', 'Jasmine', 'gym-leader', 17, NULL, 'jasmine', 'Olivine City', 6),
  -- Pryce
  (3007, 3, NULL, 'pryce', 'Pryce', 'gym-leader', 6, NULL, 'pryce', 'Mahogany Town', 7),
  -- Clair
  (3008, 3, NULL, 'clair', 'Clair', 'gym-leader', 15, NULL, 'clair', 'Blackthorn City', 8),
  -- Will
  (3009, 3, NULL, 'will', 'Will', 'elite-four', 11, NULL, 'will', NULL, 9),
  -- Koga
  (3010, 3, NULL, 'koga', 'Koga', 'elite-four', 8, NULL, 'koga', NULL, 10),
  -- Bruno
  (3011, 3, NULL, 'bruno', 'Bruno', 'elite-four', 7, NULL, 'bruno', NULL, 11),
  -- Karen
  (3012, 3, NULL, 'karen', 'Karen', 'elite-four', 16, NULL, 'karen', NULL, 12),
  -- Lance
  (3013, 3, NULL, 'lance', 'Lance', 'champion', 15, NULL, 'lance', 'Indigo Plateau', 13),
  -- Brock
  (3014, 3, NULL, 'brock', 'Brock', 'gym-leader', 13, NULL, 'brock', 'Pewter City', 14),
  -- Misty
  (3015, 3, NULL, 'misty', 'Misty', 'gym-leader', 3, NULL, 'misty', 'Cerulean City', 15),
  -- Lt. Surge
  (3016, 3, NULL, 'lt-surge', 'Lt. Surge', 'gym-leader', 4, NULL, 'lt-surge', 'Vermilion City', 16),
  -- Erika
  (3017, 3, NULL, 'erika', 'Erika', 'gym-leader', 5, NULL, 'erika', 'Celadon City', 17),
  -- Janine
  (3018, 3, NULL, 'janine', 'Janine', 'gym-leader', 8, NULL, 'janine', 'Fuchsia City', 18),
  -- Sabrina
  (3019, 3, NULL, 'sabrina', 'Sabrina', 'gym-leader', 11, NULL, 'sabrina', 'Saffron City', 19),
  -- Blaine
  (3020, 3, NULL, 'blaine', 'Blaine', 'gym-leader', 2, NULL, 'blaine', 'Seafoam Islands', 20),
  -- Blue
  (3021, 3, NULL, 'blue', 'Blue', 'gym-leader', NULL, NULL, 'blue', 'Viridian City', 21),
  -- Red
  (3022, 3, NULL, 'red', 'Red', 'boss', NULL, NULL, 'red', NULL, 22),
  -- Silver (rival)
  (3023, 3, NULL, 'silver', 'Silver', 'rival', NULL, NULL, 'silver', NULL, 23),
  -- Raikou (boss)
  (3024, 3, NULL, 'raikou', 'Raikou', 'boss', 4, NULL, 'raikou', NULL, 24),
  -- Entei (boss)
  (3025, 3, NULL, 'entei', 'Entei', 'boss', 2, NULL, 'entei', NULL, 25),
  -- Suicune (boss)
  (3026, 3, NULL, 'suicune', 'Suicune', 'boss', 3, NULL, 'suicune', NULL, 26),
  -- Ho-Oh (boss, gold)
  (3027, 3, 4, 'ho-oh', 'Ho-Oh', 'boss', 2, 10, 'ho-oh', NULL, 1),
  -- Ho-Oh (boss, silver)
  (3028, 3, 5, 'ho-oh-silver', 'Ho-Oh', 'boss', 2, 10, 'ho-oh', NULL, 1),
  -- Lugia (boss, silver)
  (3029, 3, 5, 'lugia', 'Lugia', 'boss', 11, 10, 'lugia', NULL, 2),
  -- Lugia (boss, gold)
  (3030, 3, 4, 'lugia-gold', 'Lugia', 'boss', 11, 10, 'lugia', NULL, 2),
  -- Petrel (boss; Team Rocket Executive)
  (3031, 3, NULL, 'petrel', 'Petrel', 'boss', NULL, NULL, 'petrel', NULL, 27),
  -- Ariana (boss; Team Rocket Executive)
  (3032, 3, NULL, 'ariana', 'Ariana', 'boss', NULL, NULL, 'ariana', NULL, 28),
  -- Archer (boss; Team Rocket Executive)
  (3033, 3, NULL, 'archer', 'Archer', 'boss', NULL, NULL, 'archer', NULL, 29),
  -- Proton (boss; Team Rocket Executive)
  (3034, 3, NULL, 'proton', 'Proton', 'boss', NULL, NULL, 'proton', NULL, 30);
