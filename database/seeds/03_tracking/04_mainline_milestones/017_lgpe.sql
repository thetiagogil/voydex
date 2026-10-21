-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Let's Go, Pikachu! / Let's Go, Eevee!, Badge, Elite Four, and Gift Pokémon pages.
-- Scope: Pokémon Let's Go, Pikachu! / Let's Go, Eevee! major story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Let's Go, Pikachu! / Let's Go, Eevee! mainline progression milestones. Dense rival, evil-team, rematch, and route-level story beats outside these anchors remain part of the later story-boss pass.
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
  -- Receive Partner Pokémon
  (170001, 17, NULL, 1701, 1, 1, NULL, 'receive-partner-pokemon', 'Receive Partner Pokémon', 'Receive the version partner Pokémon at the start of the adventure.', 1, true),
  -- Receive Pokedex
  (170002, 17, NULL, 1701, 1, 1, NULL, 'receive-pokedex', 'Receive Pokedex', 'Receive the Pokedex and begin the Kanto adventure record.', 2, true),
  -- Boulder Badge
  (170003, 17, NULL, 1701, 2, 2, NULL, 'boulder-badge', 'Boulder Badge', 'Defeat Brock at Pewter Gym and receive the Boulder Badge.', 3, true),
  -- Cascade Badge
  (170004, 17, NULL, 1701, 2, 2, NULL, 'cascade-badge', 'Cascade Badge', 'Defeat Misty at Cerulean Gym and receive the Cascade Badge.', 4, true),
  -- S.S. Anne
  (170020, 17, NULL, 1701, 1, 2, NULL, 'ss-anne', 'S.S. Anne', 'Board the S.S. Anne in Vermilion City and help the seasick captain to get HM01 Cut.', 5, true),
  -- Thunder Badge
  (170005, 17, NULL, 1701, 2, 2, NULL, 'thunder-badge', 'Thunder Badge', 'Defeat Lt. Surge at Vermilion Gym and receive the Thunder Badge.', 6, true),
  -- Rainbow Badge
  (170006, 17, NULL, 1701, 2, 2, NULL, 'rainbow-badge', 'Rainbow Badge', 'Defeat Erika at Celadon Gym and receive the Rainbow Badge.', 7, true),
  -- Rocket Hideout
  (170021, 17, NULL, 1701, 1, 2, NULL, 'rocket-hideout', 'Rocket Hideout', 'Raid Team Rocket''s hideout under the Celadon Game Corner and defeat Giovanni to get the Silph Scope.', 8, true),
  -- Silph Co.
  (170022, 17, NULL, 1701, 1, 2, NULL, 'silph-co', 'Silph Co.', 'Free Silph Co. in Saffron City from Team Rocket and defeat Giovanni.', 9, true),
  -- Snorlax Encounter
  (170007, 17, NULL, 1701, 1, 1, NULL, 'snorlax-encounter', 'Snorlax Encounter', 'Wake the sleeping Snorlax blocking the road.', 10, true),
  -- Soul Badge
  (170008, 17, NULL, 1701, 2, 2, NULL, 'soul-badge', 'Soul Badge', 'Defeat Koga at Fuchsia Gym and receive the Soul Badge.', 11, true),
  -- Marsh Badge
  (170009, 17, NULL, 1701, 2, 2, NULL, 'marsh-badge', 'Marsh Badge', 'Defeat Sabrina at Saffron Gym and receive the Marsh Badge.', 12, true),
  -- Volcano Badge
  (170010, 17, NULL, 1701, 2, 2, NULL, 'volcano-badge', 'Volcano Badge', 'Defeat Blaine at Cinnabar Gym and receive the Volcano Badge.', 13, true),
  -- Earth Badge
  (170011, 17, NULL, 1701, 2, 2, NULL, 'earth-badge', 'Earth Badge', 'Defeat Giovanni at Viridian Gym and receive the Earth Badge.', 14, true),
  -- Elite Four Lorelei
  (170012, 17, NULL, 1702, 7, 2, NULL, 'elite-four-lorelei', 'Elite Four Lorelei', 'Defeat Lorelei at Indigo Plateau.', 1, true),
  -- Elite Four Bruno
  (170013, 17, NULL, 1702, 7, 2, NULL, 'elite-four-bruno', 'Elite Four Bruno', 'Defeat Bruno at Indigo Plateau.', 2, true),
  -- Elite Four Agatha
  (170014, 17, NULL, 1702, 7, 2, NULL, 'elite-four-agatha', 'Elite Four Agatha', 'Defeat Agatha at Indigo Plateau.', 3, true),
  -- Elite Four Lance
  (170015, 17, NULL, 1702, 7, 2, NULL, 'elite-four-lance', 'Elite Four Lance', 'Defeat Lance at Indigo Plateau.', 4, true),
  -- Champion Rival
  (170016, 17, NULL, 1702, 8, 2, NULL, 'champion-rival', 'Champion Rival', 'Defeat the rival Champion at Indigo Plateau.', 5, true),
  -- Hall of Fame
  (170017, 17, NULL, 1702, 13, 3, NULL, 'hall-of-fame', 'Hall of Fame', 'Enter the Hall of Fame after becoming Champion.', 6, true),
  -- Battle Blue
  (170018, 17, NULL, 1703, 6, 2, NULL, 'blue-battle', 'Battle Blue', 'Battle Blue at Viridian Gym after becoming Champion.', 1, false),
  -- Battle Green
  (170019, 17, NULL, 1703, 6, 2, NULL, 'green-battle', 'Battle Green', 'Battle Green after catching Mewtwo.', 2, false);
