-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Lance, and Red pages.
-- Cross-check: Pokémon Gold / Silver source pages.
-- Story points with rival battles: Bulbapedia walkthrough pages and the pret pokegold map scripts.
-- Scope: Pokémon Gold / Silver major story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Required Gold / Silver starter, badge, league, champion, post-game Kanto badge,
-- and Red milestones. Kanto badge order follows display order; Generation II
-- allows broad post-game badge ordering.
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
  (30001, 3, NULL, 301, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Choose Chikorita, Cyndaquil, or Totodile as the first partner Pokémon.', 1, true),
  -- Receive Pokedex
  (30002, 3, NULL, 301, 1, 1, NULL, 'receive-pokedex', 'Receive Pokedex', 'Receive the Pokedex and begin the Johto adventure record.', 2, true),
  -- Zephyr Badge
  (30003, 3, NULL, 301, 2, 2, NULL, 'zephyr-badge', 'Zephyr Badge', 'Defeat Falkner at Violet Gym and receive the Zephyr Badge.', 3, true),
  -- Hive Badge
  (30004, 3, NULL, 301, 2, 2, NULL, 'hive-badge', 'Hive Badge', 'Defeat Bugsy at Azalea Gym and receive the Hive Badge.', 4, true),
  -- Plain Badge
  (30005, 3, NULL, 301, 2, 2, NULL, 'plain-badge', 'Plain Badge', 'Defeat Whitney at Goldenrod Gym and receive the Plain Badge.', 5, true),
  -- Burned Tower
  (30026, 3, NULL, 301, 1, 2, NULL, 'burned-tower', 'Burned Tower', 'Explore the Burned Tower in Ecruteak City, battle your rival on the way in, and watch Raikou, Entei and Suicune flee.', 6, false),
  -- Fog Badge
  (30006, 3, NULL, 301, 2, 2, NULL, 'fog-badge', 'Fog Badge', 'Defeat Morty at Ecruteak Gym and receive the Fog Badge.', 7, true),
  -- Storm Badge
  (30007, 3, NULL, 301, 2, 2, NULL, 'storm-badge', 'Storm Badge', 'Defeat Chuck at Cianwood Gym and receive the Storm Badge.', 8, true),
  -- Mineral Badge
  (30008, 3, NULL, 301, 2, 2, NULL, 'mineral-badge', 'Mineral Badge', 'Defeat Jasmine at Olivine Gym and receive the Mineral Badge.', 9, true),
  -- Glacier Badge
  (30009, 3, NULL, 301, 2, 2, NULL, 'glacier-badge', 'Glacier Badge', 'Defeat Pryce at Mahogany Gym and receive the Glacier Badge.', 10, true),
  -- Radio Tower
  (30027, 3, NULL, 301, 1, 2, NULL, 'radio-tower', 'Radio Tower', 'Free the Goldenrod Radio Tower from Team Rocket, going through the underground to rescue the Director.', 11, true),
  -- Rising Badge
  (30010, 3, NULL, 301, 2, 2, NULL, 'rising-badge', 'Rising Badge', 'Defeat Clair at Blackthorn Gym and receive the Rising Badge.', 12, true),
  -- Elite Four Will
  (30011, 3, NULL, 302, 7, 2, NULL, 'elite-four-will', 'Elite Four Will', 'Defeat Will at the Indigo Plateau.', 1, true),
  -- Elite Four Koga
  (30012, 3, NULL, 302, 7, 2, NULL, 'elite-four-koga', 'Elite Four Koga', 'Defeat Koga at the Indigo Plateau.', 2, true),
  -- Elite Four Bruno
  (30013, 3, NULL, 302, 7, 2, NULL, 'elite-four-bruno', 'Elite Four Bruno', 'Defeat Bruno at the Indigo Plateau.', 3, true),
  -- Elite Four Karen
  (30014, 3, NULL, 302, 7, 2, NULL, 'elite-four-karen', 'Elite Four Karen', 'Defeat Karen at the Indigo Plateau.', 4, true),
  -- Champion Lance
  (30015, 3, NULL, 302, 8, 2, NULL, 'champion-lance', 'Champion Lance', 'Defeat Champion Lance at the Indigo Plateau.', 5, true),
  -- Hall of Fame
  (30016, 3, NULL, 302, 13, 3, NULL, 'hall-of-fame', 'Hall of Fame', 'Enter the Hall of Fame after becoming Champion.', 6, true),
  -- Boulder Badge
  (30017, 3, NULL, 303, 2, 2, NULL, 'boulder-badge', 'Boulder Badge', 'Defeat Brock at Pewter Gym and receive the Boulder Badge.', 1, true),
  -- Cascade Badge
  (30018, 3, NULL, 303, 2, 2, NULL, 'cascade-badge', 'Cascade Badge', 'Defeat Misty at Cerulean Gym and receive the Cascade Badge.', 2, true),
  -- Thunder Badge
  (30019, 3, NULL, 303, 2, 2, NULL, 'thunder-badge', 'Thunder Badge', 'Defeat Lt. Surge at Vermilion Gym and receive the Thunder Badge.', 3, true),
  -- Rainbow Badge
  (30020, 3, NULL, 303, 2, 2, NULL, 'rainbow-badge', 'Rainbow Badge', 'Defeat Erika at Celadon Gym and receive the Rainbow Badge.', 4, true),
  -- Soul Badge
  (30021, 3, NULL, 303, 2, 2, NULL, 'soul-badge', 'Soul Badge', 'Defeat Janine at Fuchsia Gym and receive the Soul Badge.', 5, true),
  -- Marsh Badge
  (30022, 3, NULL, 303, 2, 2, NULL, 'marsh-badge', 'Marsh Badge', 'Defeat Sabrina at Saffron Gym and receive the Marsh Badge.', 6, true),
  -- Volcano Badge
  (30023, 3, NULL, 303, 2, 2, NULL, 'volcano-badge', 'Volcano Badge', 'Defeat Blaine at the Seafoam Islands Gym and receive the Volcano Badge.', 7, true),
  -- Earth Badge
  (30024, 3, NULL, 303, 2, 2, NULL, 'earth-badge', 'Earth Badge', 'Defeat Blue at Viridian Gym and receive the Earth Badge.', 8, true),
  -- Red
  (30025, 3, NULL, 303, 6, 3, NULL, 'defeat-red', 'Defeat Red', 'Defeat Red at Mt. Silver.', 9, true);
