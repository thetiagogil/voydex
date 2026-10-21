-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Diamond / Pearl, Gift Pokémon, and
-- First partner Pokémon pages.
-- Cross-check: Pokémon Diamond / Pearl source page.
-- Story points with rival and Cyrus battles: Bulbapedia walkthrough pages.
-- Scope: Pokémon Diamond / Pearl major story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Diamond / Pearl starter, badge, league, champion, and Hall of Fame milestones.
-- Rival, Team Galactic, legendary, and route-level story beats are deferred to
-- the denser story-boss pass.
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
  (80001, 8, NULL, 801, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Choose Turtwig, Chimchar, or Piplup as the first partner Pokémon.', 1, true),
  -- Receive Pokedex
  (80002, 8, NULL, 801, 1, 1, NULL, 'receive-pokedex', 'Receive Pokedex', 'Receive the Pokedex and begin the Sinnoh adventure record.', 2, true),
  -- Coal Badge
  (80003, 8, NULL, 801, 2, 2, NULL, 'coal-badge', 'Coal Badge', 'Defeat Roark at Oreburgh Gym and receive the Coal Badge.', 3, true),
  -- Forest Badge
  (80004, 8, NULL, 801, 2, 2, NULL, 'forest-badge', 'Forest Badge', 'Defeat Gardenia at Eterna Gym and receive the Forest Badge.', 4, true),
  -- Cobble Badge
  (80005, 8, NULL, 801, 2, 2, NULL, 'cobble-badge', 'Cobble Badge', 'Defeat Maylene at Veilstone Gym and receive the Cobble Badge.', 5, true),
  -- Fen Badge
  (80006, 8, NULL, 801, 2, 2, NULL, 'fen-badge', 'Fen Badge', 'Defeat Crasher Wake at Pastoria Gym and receive the Fen Badge.', 6, true),
  -- Relic Badge
  (80007, 8, NULL, 801, 2, 2, NULL, 'relic-badge', 'Relic Badge', 'Defeat Fantina at Hearthome Gym and receive the Relic Badge.', 7, true),
  -- Mine Badge
  (80008, 8, NULL, 801, 2, 2, NULL, 'mine-badge', 'Mine Badge', 'Defeat Byron at Canalave Gym and receive the Mine Badge.', 8, true),
  -- Icicle Badge
  (80009, 8, NULL, 801, 2, 2, NULL, 'icicle-badge', 'Icicle Badge', 'Defeat Candice at Snowpoint Gym and receive the Icicle Badge.', 9, true),
  -- Team Galactic HQ
  (80017, 8, NULL, 801, 1, 2, NULL, 'galactic-hq', 'Team Galactic HQ', 'Raid Team Galactic''s headquarters in Veilstone City, defeat Cyrus and free Uxie, Mesprit and Azelf.', 10, true),
  -- Spear Pillar
  (80018, 8, NULL, 801, 1, 2, NULL, 'spear-pillar', 'Spear Pillar', 'Climb Mt. Coronet to Spear Pillar, stop Cyrus and face Dialga (Diamond) or Palkia (Pearl).', 11, true),
  -- Beacon Badge
  (80010, 8, NULL, 801, 2, 2, NULL, 'beacon-badge', 'Beacon Badge', 'Defeat Volkner at Sunyshore Gym and receive the Beacon Badge.', 12, true),
  -- Elite Four Aaron
  (80011, 8, NULL, 802, 7, 2, NULL, 'elite-four-aaron', 'Elite Four Aaron', 'Defeat Aaron at the Pokémon League.', 1, true),
  -- Elite Four Bertha
  (80012, 8, NULL, 802, 7, 2, NULL, 'elite-four-bertha', 'Elite Four Bertha', 'Defeat Bertha at the Pokémon League.', 2, true),
  -- Elite Four Flint
  (80013, 8, NULL, 802, 7, 2, NULL, 'elite-four-flint', 'Elite Four Flint', 'Defeat Flint at the Pokémon League.', 3, true),
  -- Elite Four Lucian
  (80014, 8, NULL, 802, 7, 2, NULL, 'elite-four-lucian', 'Elite Four Lucian', 'Defeat Lucian at the Pokémon League.', 4, true),
  -- Champion Cynthia
  (80015, 8, NULL, 802, 8, 2, NULL, 'champion-cynthia', 'Champion Cynthia', 'Defeat Champion Cynthia at the Pokémon League.', 5, true),
  -- Hall of Fame
  (80016, 8, NULL, 802, 13, 3, NULL, 'hall-of-fame', 'Hall of Fame', 'Enter the Hall of Fame after becoming Champion.', 6, true),
  -- Fight Area
  (80019, 8, NULL, 803, 1, 2, NULL, 'fight-area', 'Fight Area', 'With the National Pokédex, take the ship to the Fight Area in the Battle Zone.', 1, false);
