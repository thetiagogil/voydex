-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Brilliant Diamond / Shining Pearl, Badge, Elite Four, Champion, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Scope: Pokémon Brilliant Diamond / Shining Pearl major story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Brilliant Diamond / Shining Pearl mainline progression milestones. Dense rival, evil-team, rematch, and route-level story beats outside these anchors remain part of the later story-boss pass.
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
  (210001, 21, NULL, 2101, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Choose Turtwig, Chimchar, or Piplup as the first partner Pokémon.', 1, true),
  -- Receive Pokedex
  (210002, 21, NULL, 2101, 1, 1, NULL, 'receive-pokedex', 'Receive Pokedex', 'Receive the Pokedex and begin the Sinnoh adventure record.', 2, true),
  -- Coal Badge
  (210003, 21, NULL, 2101, 2, 2, NULL, 'coal-badge', 'Coal Badge', 'Defeat Roark at Oreburgh Gym and receive the Coal Badge.', 3, true),
  -- Forest Badge
  (210004, 21, NULL, 2101, 2, 2, NULL, 'forest-badge', 'Forest Badge', 'Defeat Gardenia at Eterna Gym and receive the Forest Badge.', 4, true),
  -- Cobble Badge
  (210005, 21, NULL, 2101, 2, 2, NULL, 'cobble-badge', 'Cobble Badge', 'Defeat Maylene at Veilstone Gym and receive the Cobble Badge.', 5, true),
  -- Fen Badge
  (210006, 21, NULL, 2101, 2, 2, NULL, 'fen-badge', 'Fen Badge', 'Defeat Crasher Wake at Pastoria Gym and receive the Fen Badge.', 6, true),
  -- Relic Badge
  (210007, 21, NULL, 2101, 2, 2, NULL, 'relic-badge', 'Relic Badge', 'Defeat Fantina at Hearthome Gym and receive the Relic Badge.', 7, true),
  -- Mine Badge
  (210008, 21, NULL, 2101, 2, 2, NULL, 'mine-badge', 'Mine Badge', 'Defeat Byron at Canalave Gym and receive the Mine Badge.', 8, true),
  -- Icicle Badge
  (210009, 21, NULL, 2101, 2, 2, NULL, 'icicle-badge', 'Icicle Badge', 'Defeat Candice at Snowpoint Gym and receive the Icicle Badge.', 9, true),
  -- Team Galactic HQ
  (210018, 21, NULL, 2101, 1, 2, NULL, 'galactic-hq', 'Team Galactic HQ', 'Raid Team Galactic''s headquarters in Veilstone City, defeat Cyrus and free Uxie, Mesprit and Azelf.', 10, true),
  -- Spear Pillar
  (210019, 21, NULL, 2101, 1, 2, NULL, 'spear-pillar', 'Spear Pillar', 'Climb Mt. Coronet to Spear Pillar, stop Cyrus and face Dialga (Brilliant Diamond) or Palkia (Shining Pearl).', 11, true),
  -- Beacon Badge
  (210010, 21, NULL, 2101, 2, 2, NULL, 'beacon-badge', 'Beacon Badge', 'Defeat Volkner at Sunyshore Gym and receive the Beacon Badge.', 12, true),
  -- Elite Four Aaron
  (210011, 21, NULL, 2102, 7, 2, NULL, 'elite-four-aaron', 'Elite Four Aaron', 'Defeat Aaron at the Pokémon League.', 1, true),
  -- Elite Four Bertha
  (210012, 21, NULL, 2102, 7, 2, NULL, 'elite-four-bertha', 'Elite Four Bertha', 'Defeat Bertha at the Pokémon League.', 2, true),
  -- Elite Four Flint
  (210013, 21, NULL, 2102, 7, 2, NULL, 'elite-four-flint', 'Elite Four Flint', 'Defeat Flint at the Pokémon League.', 3, true),
  -- Elite Four Lucian
  (210014, 21, NULL, 2102, 7, 2, NULL, 'elite-four-lucian', 'Elite Four Lucian', 'Defeat Lucian at the Pokémon League.', 4, true),
  -- Champion Cynthia
  (210015, 21, NULL, 2102, 8, 2, NULL, 'champion-cynthia', 'Champion Cynthia', 'Defeat Champion Cynthia at the Pokémon League.', 5, true),
  -- Hall of Fame
  (210016, 21, NULL, 2102, 13, 3, NULL, 'hall-of-fame', 'Hall of Fame', 'Enter the Hall of Fame after becoming Champion.', 6, true),
  -- Ramanas Park
  (210017, 21, NULL, 2103, 1, 1, NULL, 'ramanas-park', 'Ramanas Park', 'Unlock Ramanas Park after entering the Hall of Fame and completing the Sinnoh Pokedex.', 2, false),
  -- Fight Area
  (210020, 21, NULL, 2103, 1, 2, NULL, 'fight-area', 'Fight Area', 'Take the ship from Snowpoint City to the Fight Area in the Battle Zone.', 1, false),
  -- Lake Guardians
  (210021, 21, NULL, 2104, 6, 2, NULL, 'lake-guardians', 'Lake Guardians', 'After Spear Pillar, find Uxie in Acuity Cavern and Azelf in Valor Cavern, and meet Mesprit at Verity Cavern before it starts roaming Sinnoh.', 1, false),
  -- Turnback Cave
  (210022, 21, NULL, 2104, 6, 2, NULL, 'turnback-cave', 'Turnback Cave', 'After the Hall of Fame and the National Pokédex, find a way through Turnback Cave beyond Sendoff Spring to face Giratina.', 2, false),
  -- Roaming Cresselia
  (210023, 21, NULL, 2104, 6, 2, NULL, 'roaming-cresselia', 'Roaming Cresselia', 'With the National Pokédex, sail to Fullmoon Island to help Sailor Eldritch''s son; Cresselia then roams Sinnoh.', 3, false),
  -- Stark Mountain
  (210024, 21, NULL, 2104, 6, 2, NULL, 'stark-mountain', 'Stark Mountain', 'In the Battle Zone, help Buck through Stark Mountain, then speak to his grandfather in the Survival Area so Heatran appears in the deepest room.', 4, false),
  -- Snowpoint Temple
  (210025, 21, NULL, 2104, 6, 2, NULL, 'snowpoint-temple', 'Snowpoint Temple', 'With the National Pokédex, reach the bottom of Snowpoint Temple with Regirock, Regice and Registeel from Ramanas Park in the party to wake Regigigas.', 5, false);
