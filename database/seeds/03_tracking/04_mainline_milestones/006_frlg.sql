-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, and FireRed / LeafGreen pages.
-- Cross-check: Pokémon FireRed / LeafGreen source pages.
-- Scope: Pokémon FireRed / LeafGreen major story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- FireRed / LeafGreen starter, fossil, Fighting Dojo, badge, league, champion,
-- and Hall of Fame milestones. Sevii Islands post-game network restoration and
-- dense Rocket/rival beats are deferred to the denser story-boss pass.
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
  (60001, 6, NULL, 601, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Choose Bulbasaur, Charmander, or Squirtle as the first partner Pokémon.', 1, true),
  -- Receive Pokedex
  (60002, 6, NULL, 601, 1, 1, NULL, 'receive-pokedex', 'Receive Pokedex', 'Receive the Pokedex and begin the Kanto adventure record.', 2, true),
  -- Boulder Badge
  (60003, 6, NULL, 601, 2, 2, NULL, 'boulder-badge', 'Boulder Badge', 'Defeat Brock at Pewter Gym and receive the Boulder Badge.', 3, true),
  -- Fossil Choice: counts toward the story (Mt. Moon's fossil is on the path); the pick itself can stay unrecorded
  (60004, 6, NULL, 601, 12, 1, NULL, 'fossil-choice', 'Fossil Choice', 'Choose the Helix Fossil or Dome Fossil at Mt. Moon.', 4, true),
  -- Cascade Badge
  (60005, 6, NULL, 601, 2, 2, NULL, 'cascade-badge', 'Cascade Badge', 'Defeat Misty at Cerulean Gym and receive the Cascade Badge.', 5, true),
  -- Thunder Badge
  (60006, 6, NULL, 601, 2, 2, NULL, 'thunder-badge', 'Thunder Badge', 'Defeat Lt. Surge at Vermilion Gym and receive the Thunder Badge.', 6, true),
  -- Rainbow Badge
  (60007, 6, NULL, 601, 2, 2, NULL, 'rainbow-badge', 'Rainbow Badge', 'Defeat Erika at Celadon Gym and receive the Rainbow Badge.', 7, true),
  -- Soul Badge
  (60008, 6, NULL, 601, 2, 2, NULL, 'soul-badge', 'Soul Badge', 'Defeat Koga at Fuchsia Gym and receive the Soul Badge.', 8, true),
  -- Marsh Badge
  (60009, 6, NULL, 601, 2, 2, NULL, 'marsh-badge', 'Marsh Badge', 'Defeat Sabrina at Saffron Gym and receive the Marsh Badge.', 9, true),
  -- Fighting Dojo Choice
  (60010, 6, NULL, 604, 12, 1, NULL, 'fighting-dojo-choice', 'Fighting Dojo Choice', 'Choose Hitmonlee or Hitmonchan after defeating the Fighting Dojo master.', 1, false),
  -- Volcano Badge
  (60011, 6, NULL, 601, 2, 2, NULL, 'volcano-badge', 'Volcano Badge', 'Defeat Blaine at Cinnabar Gym and receive the Volcano Badge.', 10, true),
  -- Earth Badge
  (60012, 6, NULL, 601, 2, 2, NULL, 'earth-badge', 'Earth Badge', 'Defeat Giovanni at Viridian Gym and receive the Earth Badge.', 11, true),
  -- Elite Four Lorelei
  (60013, 6, NULL, 602, 7, 2, NULL, 'elite-four-lorelei', 'Elite Four Lorelei', 'Defeat Lorelei at the Indigo Plateau.', 1, true),
  -- Elite Four Bruno
  (60014, 6, NULL, 602, 7, 2, NULL, 'elite-four-bruno', 'Elite Four Bruno', 'Defeat Bruno at the Indigo Plateau.', 2, true),
  -- Elite Four Agatha
  (60015, 6, NULL, 602, 7, 2, NULL, 'elite-four-agatha', 'Elite Four Agatha', 'Defeat Agatha at the Indigo Plateau.', 3, true),
  -- Elite Four Lance
  (60016, 6, NULL, 602, 7, 2, NULL, 'elite-four-lance', 'Elite Four Lance', 'Defeat Lance at the Indigo Plateau.', 4, true),
  -- Champion Blue
  (60017, 6, NULL, 602, 8, 2, NULL, 'champion-blue', 'Champion Blue', 'Defeat Champion Blue at the Indigo Plateau.', 5, true),
  -- Hall of Fame
  (60018, 6, NULL, 602, 13, 3, NULL, 'hall-of-fame', 'Hall of Fame', 'Enter the Hall of Fame after becoming Champion.', 6, true);
