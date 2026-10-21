-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Platinum, Gift Pokémon, and First
-- partner Pokémon pages.
-- Cross-check: Pokémon Platinum source page.
-- Story points with rival and Cyrus battles: Bulbapedia walkthrough pages and the pret pokeplatinum map scripts.
-- Scope: Pokémon Platinum major story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Platinum starter, badge, league, champion, and Hall of Fame milestones.
-- Platinum reorders Fantina, Maylene, and Crasher Wake compared with Diamond /
-- Pearl. Rival, Team Galactic, legendary, and route-level story beats are
-- deferred to the denser story-boss pass.
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
  (90001, 9, NULL, 901, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Choose Turtwig, Chimchar, or Piplup as the first partner Pokémon.', 1, true),
  -- Receive Pokedex
  (90002, 9, NULL, 901, 1, 1, NULL, 'receive-pokedex', 'Receive Pokedex', 'Receive the Pokedex and begin the Sinnoh adventure record.', 2, true),
  -- Coal Badge
  (90003, 9, NULL, 901, 2, 2, NULL, 'coal-badge', 'Coal Badge', 'Defeat Roark at Oreburgh Gym and receive the Coal Badge.', 3, true),
  -- Forest Badge
  (90004, 9, NULL, 901, 2, 2, NULL, 'forest-badge', 'Forest Badge', 'Defeat Gardenia at Eterna Gym and receive the Forest Badge.', 4, true),
  -- Relic Badge
  (90005, 9, NULL, 901, 2, 2, NULL, 'relic-badge', 'Relic Badge', 'Defeat Fantina at Hearthome Gym and receive the Relic Badge.', 5, true),
  -- Cobble Badge
  (90006, 9, NULL, 901, 2, 2, NULL, 'cobble-badge', 'Cobble Badge', 'Defeat Maylene at Veilstone Gym and receive the Cobble Badge.', 6, true),
  -- Fen Badge
  (90007, 9, NULL, 901, 2, 2, NULL, 'fen-badge', 'Fen Badge', 'Defeat Crasher Wake at Pastoria Gym and receive the Fen Badge.', 7, true),
  -- Celestic Town
  (90017, 9, NULL, 901, 1, 2, NULL, 'celestic-town', 'Celestic Town', 'Defeat Cyrus at the Celestic Town ruins to protect the cave painting, and receive HM03 Surf from the elder.', 8, true),
  -- Mine Badge
  (90008, 9, NULL, 901, 2, 2, NULL, 'mine-badge', 'Mine Badge', 'Defeat Byron at Canalave Gym and receive the Mine Badge.', 9, true),
  -- Icicle Badge
  (90009, 9, NULL, 901, 2, 2, NULL, 'icicle-badge', 'Icicle Badge', 'Defeat Candice at Snowpoint Gym and receive the Icicle Badge.', 10, true),
  -- Team Galactic HQ
  (90018, 9, NULL, 901, 1, 2, NULL, 'galactic-hq', 'Team Galactic HQ', 'Raid Team Galactic''s headquarters in Veilstone City, defeat Cyrus and free Uxie, Mesprit and Azelf.', 11, true),
  -- Distortion World
  (90019, 9, NULL, 901, 1, 2, NULL, 'distortion-world', 'Distortion World', 'Follow Cyrus from Spear Pillar into the Distortion World, defeat him and face Giratina.', 12, true),
  -- Beacon Badge
  (90010, 9, NULL, 901, 2, 2, NULL, 'beacon-badge', 'Beacon Badge', 'Defeat Volkner at Sunyshore Gym and receive the Beacon Badge.', 13, true),
  -- Elite Four Aaron
  (90011, 9, NULL, 902, 7, 2, NULL, 'elite-four-aaron', 'Elite Four Aaron', 'Defeat Aaron at the Pokémon League.', 1, true),
  -- Elite Four Bertha
  (90012, 9, NULL, 902, 7, 2, NULL, 'elite-four-bertha', 'Elite Four Bertha', 'Defeat Bertha at the Pokémon League.', 2, true),
  -- Elite Four Flint
  (90013, 9, NULL, 902, 7, 2, NULL, 'elite-four-flint', 'Elite Four Flint', 'Defeat Flint at the Pokémon League.', 3, true),
  -- Elite Four Lucian
  (90014, 9, NULL, 902, 7, 2, NULL, 'elite-four-lucian', 'Elite Four Lucian', 'Defeat Lucian at the Pokémon League.', 4, true),
  -- Champion Cynthia
  (90015, 9, NULL, 902, 8, 2, NULL, 'champion-cynthia', 'Champion Cynthia', 'Defeat Champion Cynthia at the Pokémon League.', 5, true),
  -- Hall of Fame
  (90016, 9, NULL, 902, 13, 3, NULL, 'hall-of-fame', 'Hall of Fame', 'Enter the Hall of Fame after becoming Champion.', 6, true),
  -- Stark Mountain
  (90020, 9, NULL, 903, 1, 2, NULL, 'stark-mountain', 'Stark Mountain', 'Go through Stark Mountain in the Battle Zone with Buck and stop Charon of Team Galactic.', 1, false);
