-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge and Elite Four pages.
-- Cross-check: legacy Voydex Red / Blue tracking seeds.
-- Scope: Pokémon Red / Blue shared story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Red / Blue story, decision, badge, league, champion, and completion milestones.
-- Dense optional walkthrough beats are intentionally excluded from this first
-- tracking seed batch.
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
  (10001, 1, NULL, 101, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Choose Bulbasaur, Charmander, or Squirtle as the first partner Pokémon.', 1, true),
  -- Receive Pokedex
  (10002, 1, NULL, 101, 1, 1, NULL, 'receive-pokedex', 'Receive Pokedex', 'Receive the Pokedex and begin the main adventure record.', 2, true),
  -- Boulder Badge
  (10003, 1, NULL, 101, 2, 2, NULL, 'boulder-badge', 'Boulder Badge', 'Defeat Brock at Pewter Gym and receive the Boulder Badge.', 3, true),
  -- Fossil Choice: counts toward the story (Mt. Moon's fossil is on the path); the pick itself can stay unrecorded
  (10004, 1, NULL, 101, 12, 1, NULL, 'fossil-choice', 'Fossil Choice', 'Choose the Helix Fossil or Dome Fossil at Mt. Moon.', 4, true),
  -- Cascade Badge
  (10005, 1, NULL, 101, 2, 2, NULL, 'cascade-badge', 'Cascade Badge', 'Defeat Misty at Cerulean Gym and receive the Cascade Badge.', 5, true),
  -- Thunder Badge
  (10006, 1, NULL, 101, 2, 2, NULL, 'thunder-badge', 'Thunder Badge', 'Defeat Lt. Surge at Vermilion Gym and receive the Thunder Badge.', 6, true),
  -- Rainbow Badge
  (10007, 1, NULL, 101, 2, 2, NULL, 'rainbow-badge', 'Rainbow Badge', 'Defeat Erika at Celadon Gym and receive the Rainbow Badge.', 7, true),
  -- Soul Badge
  (10008, 1, NULL, 101, 2, 2, NULL, 'soul-badge', 'Soul Badge', 'Defeat Koga at Fuchsia Gym and receive the Soul Badge.', 8, true),
  -- Marsh Badge
  (10009, 1, NULL, 101, 2, 2, NULL, 'marsh-badge', 'Marsh Badge', 'Defeat Sabrina at Saffron Gym and receive the Marsh Badge.', 9, true),
  -- Fighting Dojo Choice
  (10010, 1, NULL, 104, 12, 1, NULL, 'fighting-dojo-choice', 'Fighting Dojo Choice', 'Choose Hitmonlee or Hitmonchan after defeating the Fighting Dojo master.', 1, false),
  -- Volcano Badge
  (10011, 1, NULL, 101, 2, 2, NULL, 'volcano-badge', 'Volcano Badge', 'Defeat Blaine at Cinnabar Gym and receive the Volcano Badge.', 10, true),
  -- Earth Badge
  (10012, 1, NULL, 101, 2, 2, NULL, 'earth-badge', 'Earth Badge', 'Defeat Giovanni at Viridian Gym and receive the Earth Badge.', 11, true),
  -- Elite Four Lorelei
  (10013, 1, NULL, 102, 7, 2, NULL, 'elite-four-lorelei', 'Elite Four Lorelei', 'Defeat Lorelei at the Indigo Plateau.', 1, true),
  -- Elite Four Bruno
  (10014, 1, NULL, 102, 7, 2, NULL, 'elite-four-bruno', 'Elite Four Bruno', 'Defeat Bruno at the Indigo Plateau.', 2, true),
  -- Elite Four Agatha
  (10015, 1, NULL, 102, 7, 2, NULL, 'elite-four-agatha', 'Elite Four Agatha', 'Defeat Agatha at the Indigo Plateau.', 3, true),
  -- Elite Four Lance
  (10016, 1, NULL, 102, 7, 2, NULL, 'elite-four-lance', 'Elite Four Lance', 'Defeat Lance at the Indigo Plateau.', 4, true),
  -- Champion Blue
  (10017, 1, NULL, 102, 8, 2, NULL, 'champion-blue', 'Champion Blue', 'Defeat Champion Blue at the Indigo Plateau.', 5, true),
  -- Hall of Fame
  (10018, 1, NULL, 102, 13, 3, NULL, 'hall-of-fame', 'Hall of Fame', 'Enter the Hall of Fame after becoming Champion.', 6, true);
