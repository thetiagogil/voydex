-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge and Elite Four pages.
-- Cross-check: Pokémon Ruby / Sapphire source pages.
-- Story points with rival and villain battles: Bulbapedia walkthrough pages and the pret pokeruby map scripts.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and the pret disassemblies.
-- Scope: Pokémon Ruby / Sapphire major story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Ruby / Sapphire starter, fossil, badge, league, champion, and Hall of Fame
-- milestones. Team Magma/Aqua, rival, and route-level story beats are deferred
-- to the denser story-boss pass.
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
  (50001, 5, NULL, 501, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Choose Treecko, Torchic, or Mudkip as the first partner Pokémon.', 1, true),
  -- Receive Pokedex
  (50002, 5, NULL, 501, 1, 1, NULL, 'receive-pokedex', 'Receive Pokedex', 'Receive the Pokedex and begin the Hoenn adventure record.', 2, true),
  -- Stone Badge
  (50003, 5, NULL, 501, 2, 2, NULL, 'stone-badge', 'Stone Badge', 'Defeat Roxanne at Rustboro Gym and receive the Stone Badge.', 3, true),
  -- Knuckle Badge
  (50004, 5, NULL, 501, 2, 2, NULL, 'knuckle-badge', 'Knuckle Badge', 'Defeat Brawly at Dewford Gym and receive the Knuckle Badge.', 4, true),
  -- Dynamo Badge
  (50005, 5, NULL, 501, 2, 2, NULL, 'dynamo-badge', 'Dynamo Badge', 'Defeat Wattson at Mauville Gym and receive the Dynamo Badge.', 5, true),
  -- Mt. Chimney
  (50018, 5, NULL, 501, 1, 2, NULL, 'mt-chimney', 'Mt. Chimney', 'Ride the cable car up Mt. Chimney and stop Team Magma (Ruby) or Team Aqua (Sapphire) from using the Meteorite on the volcano.', 6, true),
  -- Fossil Choice
  (50006, 5, NULL, 504, 12, 1, NULL, 'fossil-choice', 'Fossil Choice', 'Choose the Root Fossil or Claw Fossil in the Route 111 desert.', 1, false),
  -- Sealed Chamber
  (50020, 5, NULL, 504, 6, 2, NULL, 'sealed-chamber', 'Sealed Chamber', 'Open the Sealed Chamber with Relicanth first and Wailord last in your party, then solve the Braille puzzles to meet Regirock, Regice and Registeel.', 2, false),
  -- Sky Pillar
  (50021, 5, NULL, 504, 6, 2, NULL, 'sky-pillar', 'Sky Pillar', 'Climb the Sky Pillar after entering the Hall of Fame and catch or defeat Rayquaza at the top.', 3, false),
  -- Roaming Latios or Latias
  (50022, 5, NULL, 504, 6, 2, NULL, 'roaming-lati', 'Roaming Latios or Latias', 'After entering the Hall of Fame, a TV news report sets Latios (Ruby) or Latias (Sapphire) roaming Hoenn.', 4, false),
  -- Heat Badge
  (50007, 5, NULL, 501, 2, 2, NULL, 'heat-badge', 'Heat Badge', 'Defeat Flannery at Lavaridge Gym and receive the Heat Badge.', 7, true),
  -- Balance Badge
  (50008, 5, NULL, 501, 2, 2, NULL, 'balance-badge', 'Balance Badge', 'Defeat Norman at Petalburg Gym and receive the Balance Badge.', 8, true),
  -- Feather Badge
  (50009, 5, NULL, 501, 2, 2, NULL, 'feather-badge', 'Feather Badge', 'Defeat Winona at Fortree Gym and receive the Feather Badge.', 9, true),
  -- Mind Badge
  (50010, 5, NULL, 501, 2, 2, NULL, 'mind-badge', 'Mind Badge', 'Defeat Tate & Liza at Mossdeep Gym and receive the Mind Badge.', 10, true),
  -- Seafloor Cavern
  (50019, 5, NULL, 501, 1, 2, NULL, 'seafloor-cavern', 'Seafloor Cavern', 'Dive down to the Seafloor Cavern and face Maxie (Ruby) or Archie (Sapphire), who then awakens Groudon or Kyogre.', 11, true),
  -- Rain Badge
  (50011, 5, NULL, 501, 2, 2, NULL, 'rain-badge', 'Rain Badge', 'Defeat Wallace at Sootopolis Gym and receive the Rain Badge.', 12, true),
  -- Elite Four Sidney
  (50012, 5, NULL, 502, 7, 2, NULL, 'elite-four-sidney', 'Elite Four Sidney', 'Defeat Sidney at Ever Grande City.', 1, true),
  -- Elite Four Phoebe
  (50013, 5, NULL, 502, 7, 2, NULL, 'elite-four-phoebe', 'Elite Four Phoebe', 'Defeat Phoebe at Ever Grande City.', 2, true),
  -- Elite Four Glacia
  (50014, 5, NULL, 502, 7, 2, NULL, 'elite-four-glacia', 'Elite Four Glacia', 'Defeat Glacia at Ever Grande City.', 3, true),
  -- Elite Four Drake
  (50015, 5, NULL, 502, 7, 2, NULL, 'elite-four-drake', 'Elite Four Drake', 'Defeat Drake at Ever Grande City.', 4, true),
  -- Champion Steven
  (50016, 5, NULL, 502, 8, 2, NULL, 'champion-steven', 'Champion Steven', 'Defeat Champion Steven at Ever Grande City.', 5, true),
  -- Hall of Fame
  (50017, 5, NULL, 502, 13, 3, NULL, 'hall-of-fame', 'Hall of Fame', 'Enter the Hall of Fame after becoming Champion.', 6, true);
