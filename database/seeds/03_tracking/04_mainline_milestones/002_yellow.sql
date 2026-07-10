-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, and Pokémon Yellow pages.
-- Cross-check: Red / Blue tracking seed structure.
-- Scope: Pokémon Yellow story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Yellow story, decision, badge, league, champion, and completion milestones.
-- Dense optional walkthrough beats are intentionally excluded from this tracking
-- seed batch.
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
  -- Receive Pikachu
  (20001, 2, NULL, 201, 1, 1, NULL, 'receive-pikachu', 'Receive Pikachu', 'Receive Pikachu from Professor Oak as the first partner Pokémon.', 1, true),
  -- Receive Pokedex
  (20002, 2, NULL, 201, 1, 1, NULL, 'receive-pokedex', 'Receive Pokedex', 'Receive the Pokedex and begin the main adventure record.', 2, true),
  -- Boulder Badge
  (20003, 2, NULL, 201, 2, 2, NULL, 'boulder-badge', 'Boulder Badge', 'Defeat Brock at Pewter Gym and receive the Boulder Badge.', 3, true),
  -- Fossil Choice
  (20004, 2, NULL, 201, 12, 1, NULL, 'fossil-choice', 'Fossil Choice', 'Choose the Helix Fossil or Dome Fossil at Mt. Moon.', 4, false),
  -- Cascade Badge
  (20005, 2, NULL, 201, 2, 2, NULL, 'cascade-badge', 'Cascade Badge', 'Defeat Misty at Cerulean Gym and receive the Cascade Badge.', 5, true),
  -- Thunder Badge
  (20006, 2, NULL, 201, 2, 2, NULL, 'thunder-badge', 'Thunder Badge', 'Defeat Lt. Surge at Vermilion Gym and receive the Thunder Badge.', 6, true),
  -- Rainbow Badge
  (20007, 2, NULL, 201, 2, 2, NULL, 'rainbow-badge', 'Rainbow Badge', 'Defeat Erika at Celadon Gym and receive the Rainbow Badge.', 7, true),
  -- Soul Badge
  (20008, 2, NULL, 201, 2, 2, NULL, 'soul-badge', 'Soul Badge', 'Defeat Koga at Fuchsia Gym and receive the Soul Badge.', 8, true),
  -- Marsh Badge
  (20009, 2, NULL, 201, 2, 2, NULL, 'marsh-badge', 'Marsh Badge', 'Defeat Sabrina at Saffron Gym and receive the Marsh Badge.', 9, true),
  -- Fighting Dojo Choice
  (20010, 2, NULL, 204, 12, 1, NULL, 'fighting-dojo-choice', 'Fighting Dojo Choice', 'Choose Hitmonlee or Hitmonchan after defeating the Fighting Dojo master.', 1, false),
  -- Volcano Badge
  (20011, 2, NULL, 201, 2, 2, NULL, 'volcano-badge', 'Volcano Badge', 'Defeat Blaine at Cinnabar Gym and receive the Volcano Badge.', 10, true),
  -- Earth Badge
  (20012, 2, NULL, 201, 2, 2, NULL, 'earth-badge', 'Earth Badge', 'Defeat Giovanni at Viridian Gym and receive the Earth Badge.', 11, true),
  -- Elite Four Lorelei
  (20013, 2, NULL, 202, 7, 2, NULL, 'elite-four-lorelei', 'Elite Four Lorelei', 'Defeat Lorelei at the Indigo Plateau.', 1, true),
  -- Elite Four Bruno
  (20014, 2, NULL, 202, 7, 2, NULL, 'elite-four-bruno', 'Elite Four Bruno', 'Defeat Bruno at the Indigo Plateau.', 2, true),
  -- Elite Four Agatha
  (20015, 2, NULL, 202, 7, 2, NULL, 'elite-four-agatha', 'Elite Four Agatha', 'Defeat Agatha at the Indigo Plateau.', 3, true),
  -- Elite Four Lance
  (20016, 2, NULL, 202, 7, 2, NULL, 'elite-four-lance', 'Elite Four Lance', 'Defeat Lance at the Indigo Plateau.', 4, true),
  -- Champion Blue
  (20017, 2, NULL, 202, 8, 2, NULL, 'champion-blue', 'Champion Blue', 'Defeat Champion Blue at the Indigo Plateau.', 5, true),
  -- Hall of Fame
  (20018, 2, NULL, 202, 13, 3, NULL, 'hall-of-fame', 'Hall of Fame', 'Enter the Hall of Fame after becoming Champion.', 6, true);
