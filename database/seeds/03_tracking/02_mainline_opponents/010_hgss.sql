-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, and HeartGold / SoulSilver pages.
-- Cross-check: Pokémon HeartGold / SoulSilver source page.
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
  (10022, 10, NULL, 'red', 'Red', 'boss', NULL, NULL, 'red', 22);
