-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Lance, and Red pages.
-- Cross-check: Pokémon Crystal source page.
-- Scope: Pokémon Crystal major story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Required Crystal starter, badge, league, champion, post-game Kanto badge, and
-- Red milestones. Kanto badge order follows display order; Generation II allows
-- broad post-game badge ordering. Crystal-specific Suicune and Eusine story beats
-- are deferred to the denser story-boss pass.
-- ============================================================================

INSERT INTO tracking.mainline_milestones (
  id,
  version_group_id,
  game_id,
  category_id,
  milestone_type_id,
  snapshot_policy_id,
  parent_milestone_id,
  slug,
  name,
  description,
  sort_order,
  is_required_for_completion
) VALUES
  -- Choose Starter
  (40001, 4, NULL, 401, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Choose Chikorita, Cyndaquil, or Totodile as the first partner Pokémon.', 1, true),
  -- Receive Pokedex
  (40002, 4, NULL, 401, 1, 1, NULL, 'receive-pokedex', 'Receive Pokedex', 'Receive the Pokedex and begin the Johto adventure record.', 2, true),
  -- Zephyr Badge
  (40003, 4, NULL, 401, 2, 2, NULL, 'zephyr-badge', 'Zephyr Badge', 'Defeat Falkner at Violet Gym and receive the Zephyr Badge.', 3, true),
  -- Hive Badge
  (40004, 4, NULL, 401, 2, 2, NULL, 'hive-badge', 'Hive Badge', 'Defeat Bugsy at Azalea Gym and receive the Hive Badge.', 4, true),
  -- Plain Badge
  (40005, 4, NULL, 401, 2, 2, NULL, 'plain-badge', 'Plain Badge', 'Defeat Whitney at Goldenrod Gym and receive the Plain Badge.', 5, true),
  -- Fog Badge
  (40006, 4, NULL, 401, 2, 2, NULL, 'fog-badge', 'Fog Badge', 'Defeat Morty at Ecruteak Gym and receive the Fog Badge.', 6, true),
  -- Storm Badge
  (40007, 4, NULL, 401, 2, 2, NULL, 'storm-badge', 'Storm Badge', 'Defeat Chuck at Cianwood Gym and receive the Storm Badge.', 7, true),
  -- Mineral Badge
  (40008, 4, NULL, 401, 2, 2, NULL, 'mineral-badge', 'Mineral Badge', 'Defeat Jasmine at Olivine Gym and receive the Mineral Badge.', 8, true),
  -- Glacier Badge
  (40009, 4, NULL, 401, 2, 2, NULL, 'glacier-badge', 'Glacier Badge', 'Defeat Pryce at Mahogany Gym and receive the Glacier Badge.', 9, true),
  -- Rising Badge
  (40010, 4, NULL, 401, 2, 2, NULL, 'rising-badge', 'Rising Badge', 'Defeat Clair at Blackthorn Gym and receive the Rising Badge.', 10, true),
  -- Elite Four Will
  (40011, 4, NULL, 402, 7, 2, NULL, 'elite-four-will', 'Elite Four Will', 'Defeat Will at the Indigo Plateau.', 1, true),
  -- Elite Four Koga
  (40012, 4, NULL, 402, 7, 2, NULL, 'elite-four-koga', 'Elite Four Koga', 'Defeat Koga at the Indigo Plateau.', 2, true),
  -- Elite Four Bruno
  (40013, 4, NULL, 402, 7, 2, NULL, 'elite-four-bruno', 'Elite Four Bruno', 'Defeat Bruno at the Indigo Plateau.', 3, true),
  -- Elite Four Karen
  (40014, 4, NULL, 402, 7, 2, NULL, 'elite-four-karen', 'Elite Four Karen', 'Defeat Karen at the Indigo Plateau.', 4, true),
  -- Champion Lance
  (40015, 4, NULL, 402, 8, 2, NULL, 'champion-lance', 'Champion Lance', 'Defeat Champion Lance at the Indigo Plateau.', 5, true),
  -- Hall of Fame
  (40016, 4, NULL, 402, 13, 3, NULL, 'hall-of-fame', 'Hall of Fame', 'Enter the Hall of Fame after becoming Champion.', 6, true),
  -- Boulder Badge
  (40017, 4, NULL, 403, 2, 2, NULL, 'boulder-badge', 'Boulder Badge', 'Defeat Brock at Pewter Gym and receive the Boulder Badge.', 1, true),
  -- Cascade Badge
  (40018, 4, NULL, 403, 2, 2, NULL, 'cascade-badge', 'Cascade Badge', 'Defeat Misty at Cerulean Gym and receive the Cascade Badge.', 2, true),
  -- Thunder Badge
  (40019, 4, NULL, 403, 2, 2, NULL, 'thunder-badge', 'Thunder Badge', 'Defeat Lt. Surge at Vermilion Gym and receive the Thunder Badge.', 3, true),
  -- Rainbow Badge
  (40020, 4, NULL, 403, 2, 2, NULL, 'rainbow-badge', 'Rainbow Badge', 'Defeat Erika at Celadon Gym and receive the Rainbow Badge.', 4, true),
  -- Soul Badge
  (40021, 4, NULL, 403, 2, 2, NULL, 'soul-badge', 'Soul Badge', 'Defeat Janine at Fuchsia Gym and receive the Soul Badge.', 5, true),
  -- Marsh Badge
  (40022, 4, NULL, 403, 2, 2, NULL, 'marsh-badge', 'Marsh Badge', 'Defeat Sabrina at Saffron Gym and receive the Marsh Badge.', 6, true),
  -- Volcano Badge
  (40023, 4, NULL, 403, 2, 2, NULL, 'volcano-badge', 'Volcano Badge', 'Defeat Blaine at the Seafoam Islands Gym and receive the Volcano Badge.', 7, true),
  -- Earth Badge
  (40024, 4, NULL, 403, 2, 2, NULL, 'earth-badge', 'Earth Badge', 'Defeat Blue at Viridian Gym and receive the Earth Badge.', 8, true),
  -- Red
  (40025, 4, NULL, 403, 6, 3, NULL, 'defeat-red', 'Defeat Red', 'Defeat Red at Mt. Silver.', 9, true);
