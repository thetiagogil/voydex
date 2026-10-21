-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, HeartGold / SoulSilver, Gift Pokémon,
-- and First partner Pokémon pages.
-- Cross-check: Pokémon HeartGold / SoulSilver source page.
-- Story points with rival battles: Bulbapedia walkthrough pages and the pret pokeheartgold scripts.
-- Scope: Pokémon HeartGold / SoulSilver major story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- HeartGold / SoulSilver Johto starter, Johto badges, league, Hall of Fame,
-- Kanto badges, Red, and post-Red starter-choice milestones. Rival, Team Rocket,
-- legendary, and route-level story beats are deferred to the denser story-boss
-- pass.
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
  -- Choose Johto Starter
  (100001, 10, NULL, 1001, 12, 1, NULL, 'choose-johto-starter', 'Choose Johto Starter', 'Choose Chikorita, Cyndaquil, or Totodile as the first partner Pokémon.', 1, true),
  -- Receive Pokedex
  (100002, 10, NULL, 1001, 1, 1, NULL, 'receive-pokedex', 'Receive Pokedex', 'Receive the Pokedex and begin the Johto adventure record.', 2, true),
  -- Zephyr Badge
  (100003, 10, NULL, 1001, 2, 2, NULL, 'zephyr-badge', 'Zephyr Badge', 'Defeat Falkner at Violet Gym and receive the Zephyr Badge.', 3, true),
  -- Hive Badge
  (100004, 10, NULL, 1001, 2, 2, NULL, 'hive-badge', 'Hive Badge', 'Defeat Bugsy at Azalea Gym and receive the Hive Badge.', 4, true),
  -- Plain Badge
  (100005, 10, NULL, 1001, 2, 2, NULL, 'plain-badge', 'Plain Badge', 'Defeat Whitney at Goldenrod Gym and receive the Plain Badge.', 5, true),
  -- Burned Tower
  (100028, 10, NULL, 1001, 1, 2, NULL, 'burned-tower', 'Burned Tower', 'Meet Eusine and Morty in the Burned Tower, battle your rival, and watch Raikou, Entei and Suicune flee.', 6, true),
  -- Fog Badge
  (100006, 10, NULL, 1001, 2, 2, NULL, 'fog-badge', 'Fog Badge', 'Defeat Morty at Ecruteak Gym and receive the Fog Badge.', 7, true),
  -- Storm Badge
  (100007, 10, NULL, 1001, 2, 2, NULL, 'storm-badge', 'Storm Badge', 'Defeat Chuck at Cianwood Gym and receive the Storm Badge.', 8, true),
  -- Mineral Badge
  (100008, 10, NULL, 1001, 2, 2, NULL, 'mineral-badge', 'Mineral Badge', 'Defeat Jasmine at Olivine Gym and receive the Mineral Badge.', 9, true),
  -- Glacier Badge
  (100009, 10, NULL, 1001, 2, 2, NULL, 'glacier-badge', 'Glacier Badge', 'Defeat Pryce at Mahogany Gym and receive the Glacier Badge.', 10, true),
  -- Radio Tower
  (100029, 10, NULL, 1001, 1, 2, NULL, 'radio-tower', 'Radio Tower', 'Free the Goldenrod Radio Tower from Team Rocket, going through Goldenrod Tunnel to rescue the Director.', 11, true),
  -- Rising Badge
  (100010, 10, NULL, 1001, 2, 2, NULL, 'rising-badge', 'Rising Badge', 'Defeat Clair at Blackthorn Gym and receive the Rising Badge.', 12, true),
  -- Elite Four Will
  (100011, 10, NULL, 1002, 7, 2, NULL, 'elite-four-will', 'Elite Four Will', 'Defeat Will at Indigo Plateau.', 1, true),
  -- Elite Four Koga
  (100012, 10, NULL, 1002, 7, 2, NULL, 'elite-four-koga', 'Elite Four Koga', 'Defeat Koga at Indigo Plateau.', 2, true),
  -- Elite Four Bruno
  (100013, 10, NULL, 1002, 7, 2, NULL, 'elite-four-bruno', 'Elite Four Bruno', 'Defeat Bruno at Indigo Plateau.', 3, true),
  -- Elite Four Karen
  (100014, 10, NULL, 1002, 7, 2, NULL, 'elite-four-karen', 'Elite Four Karen', 'Defeat Karen at Indigo Plateau.', 4, true),
  -- Champion Lance
  (100015, 10, NULL, 1002, 8, 2, NULL, 'champion-lance', 'Champion Lance', 'Defeat Champion Lance at Indigo Plateau.', 5, true),
  -- Hall of Fame
  (100016, 10, NULL, 1002, 13, 3, NULL, 'hall-of-fame', 'Hall of Fame', 'Enter the Hall of Fame after becoming Champion.', 6, true),
  -- Boulder Badge
  (100017, 10, NULL, 1003, 2, 2, NULL, 'boulder-badge', 'Boulder Badge', 'Defeat Brock at Pewter Gym and receive the Boulder Badge.', 1, true),
  -- Cascade Badge
  (100018, 10, NULL, 1003, 2, 2, NULL, 'cascade-badge', 'Cascade Badge', 'Defeat Misty at Cerulean Gym and receive the Cascade Badge.', 2, true),
  -- Thunder Badge
  (100019, 10, NULL, 1003, 2, 2, NULL, 'thunder-badge', 'Thunder Badge', 'Defeat Lt. Surge at Vermilion Gym and receive the Thunder Badge.', 3, true),
  -- Rainbow Badge
  (100020, 10, NULL, 1003, 2, 2, NULL, 'rainbow-badge', 'Rainbow Badge', 'Defeat Erika at Celadon Gym and receive the Rainbow Badge.', 4, true),
  -- Soul Badge
  (100021, 10, NULL, 1003, 2, 2, NULL, 'soul-badge', 'Soul Badge', 'Defeat Janine at Fuchsia Gym and receive the Soul Badge.', 5, true),
  -- Marsh Badge
  (100022, 10, NULL, 1003, 2, 2, NULL, 'marsh-badge', 'Marsh Badge', 'Defeat Sabrina at Saffron Gym and receive the Marsh Badge.', 6, true),
  -- Volcano Badge
  (100023, 10, NULL, 1003, 2, 2, NULL, 'volcano-badge', 'Volcano Badge', 'Defeat Blaine at Seafoam Islands Gym and receive the Volcano Badge.', 7, true),
  -- Earth Badge
  (100024, 10, NULL, 1003, 2, 2, NULL, 'earth-badge', 'Earth Badge', 'Defeat Blue at Viridian Gym and receive the Earth Badge.', 8, true),
  -- Defeat Red
  (100025, 10, NULL, 1003, 6, 3, NULL, 'defeat-red', 'Defeat Red', 'Defeat Red at Mt. Silver.', 9, true),
  -- Choose Kanto Starter
  (100026, 10, NULL, 1003, 12, 1, NULL, 'choose-kanto-starter', 'Choose Kanto Starter', 'Choose Bulbasaur, Charmander, or Squirtle from Professor Oak after defeating Red.', 10, false),
  -- Choose Hoenn Starter
  (100027, 10, NULL, 1003, 12, 1, NULL, 'choose-hoenn-starter', 'Choose Hoenn Starter', 'Choose Treecko, Torchic, or Mudkip from Steven Stone after defeating Red.', 11, false);
