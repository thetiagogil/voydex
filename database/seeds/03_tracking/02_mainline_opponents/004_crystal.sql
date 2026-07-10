-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Lance, and Red pages.
-- Cross-check: Pokémon Crystal source page.
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
  (4022, 4, NULL, 'red', 'Red', 'boss', NULL, NULL, 'red', 22);
