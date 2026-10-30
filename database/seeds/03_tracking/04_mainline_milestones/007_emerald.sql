-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Emerald, and Steven Stone pages.
-- Cross-check: Pokémon Emerald source page.
-- Story points with rival and villain battles: Bulbapedia walkthrough pages and the pret pokeemerald map scripts.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and the pret disassemblies.
-- Scope: Pokémon Emerald major story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Emerald starter, fossil, badge, league, champion, Hall of Fame, Lati choice,
-- and post-game Steven milestones. Team Magma/Aqua, rival, Rayquaza, and
-- route-level story beats are deferred to the denser story-boss pass.
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
  (70001, 7, NULL, 701, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Choose Treecko, Torchic, or Mudkip as the first partner Pokémon.', 1, true),
  -- Receive Pokedex
  (70002, 7, NULL, 701, 1, 1, NULL, 'receive-pokedex', 'Receive Pokedex', 'Receive the Pokedex and begin the Hoenn adventure record.', 2, true),
  -- Stone Badge
  (70003, 7, NULL, 701, 2, 2, NULL, 'stone-badge', 'Stone Badge', 'Defeat Roxanne at Rustboro Gym and receive the Stone Badge.', 3, true),
  -- Knuckle Badge
  (70004, 7, NULL, 701, 2, 2, NULL, 'knuckle-badge', 'Knuckle Badge', 'Defeat Brawly at Dewford Gym and receive the Knuckle Badge.', 4, true),
  -- Dynamo Badge
  (70005, 7, NULL, 701, 2, 2, NULL, 'dynamo-badge', 'Dynamo Badge', 'Defeat Wattson at Mauville Gym and receive the Dynamo Badge.', 5, true),
  -- Mt. Chimney
  (70020, 7, NULL, 701, 1, 2, NULL, 'mt-chimney', 'Mt. Chimney', 'Ride the cable car up Mt. Chimney and stop Team Magma from using the Meteorite to make the volcano erupt.', 6, true),
  -- Fossil Choice
  (70006, 7, NULL, 704, 12, 1, NULL, 'fossil-choice', 'Fossil Choice', 'Choose the Root Fossil or Claw Fossil in Mirage Tower.', 1, false),
  -- Sealed Chamber
  (70023, 7, NULL, 704, 6, 2, NULL, 'sealed-chamber', 'Sealed Chamber', 'Open the Sealed Chamber with Wailord first and Relicanth last in your party, then solve the Braille puzzles to meet Regirock, Regice and Registeel.', 2, false),
  -- Sky Pillar
  (70024, 7, NULL, 704, 6, 2, NULL, 'sky-pillar', 'Sky Pillar', 'Return to the top of the Sky Pillar after the Sootopolis crisis and catch or defeat Rayquaza.', 3, false),
  -- Terra Cave
  (70025, 7, NULL, 704, 6, 2, NULL, 'terra-cave', 'Terra Cave', 'After entering the Hall of Fame, follow the Weather Institute''s report of harsh sunlight to the Terra Cave and catch or defeat Groudon.', 4, false),
  -- Marine Cave
  (70026, 7, NULL, 704, 6, 2, NULL, 'marine-cave', 'Marine Cave', 'After entering the Hall of Fame, follow the Weather Institute''s report of heavy rain, dive into the Marine Cave and catch or defeat Kyogre.', 5, false),
  -- Heat Badge
  (70007, 7, NULL, 701, 2, 2, NULL, 'heat-badge', 'Heat Badge', 'Defeat Flannery at Lavaridge Gym and receive the Heat Badge.', 7, true),
  -- Balance Badge
  (70008, 7, NULL, 701, 2, 2, NULL, 'balance-badge', 'Balance Badge', 'Defeat Norman at Petalburg Gym and receive the Balance Badge.', 8, true),
  -- Feather Badge
  (70009, 7, NULL, 701, 2, 2, NULL, 'feather-badge', 'Feather Badge', 'Defeat Winona at Fortree Gym and receive the Feather Badge.', 9, true),
  -- Magma Hideout
  (70021, 7, NULL, 701, 1, 2, NULL, 'magma-hideout', 'Magma Hideout', 'Use the Magma Emblem to open Team Magma''s hideout at Jagged Pass and face Maxie as Groudon awakens.', 10, true),
  -- Mind Badge
  (70010, 7, NULL, 701, 2, 2, NULL, 'mind-badge', 'Mind Badge', 'Defeat Tate & Liza at Mossdeep Gym and receive the Mind Badge.', 11, true),
  -- Mossdeep Space Center
  (70027, 7, NULL, 701, 6, 2, NULL, 'space-center', 'Mossdeep Space Center', 'Fight beside Steven against Maxie and Tabitha at the Mossdeep Space Center.', 12, true),
  -- Seafloor Cavern
  (70022, 7, NULL, 701, 1, 2, NULL, 'seafloor-cavern', 'Seafloor Cavern', 'Dive down to the Seafloor Cavern and face Archie, who then awakens Kyogre.', 13, true),
  -- Awaken Rayquaza
  (70028, 7, NULL, 701, 1, 2, NULL, 'awaken-rayquaza', 'Awaken Rayquaza', 'Climb the Sky Pillar and awaken Rayquaza to end the clash between Groudon and Kyogre in Sootopolis City.', 14, true),
  -- Rain Badge
  (70011, 7, NULL, 701, 2, 2, NULL, 'rain-badge', 'Rain Badge', 'Defeat Juan at Sootopolis Gym and receive the Rain Badge.', 15, true),
  -- Elite Four Sidney
  (70012, 7, NULL, 702, 7, 2, NULL, 'elite-four-sidney', 'Elite Four Sidney', 'Defeat Sidney at Ever Grande City.', 1, true),
  -- Elite Four Phoebe
  (70013, 7, NULL, 702, 7, 2, NULL, 'elite-four-phoebe', 'Elite Four Phoebe', 'Defeat Phoebe at Ever Grande City.', 2, true),
  -- Elite Four Glacia
  (70014, 7, NULL, 702, 7, 2, NULL, 'elite-four-glacia', 'Elite Four Glacia', 'Defeat Glacia at Ever Grande City.', 3, true),
  -- Elite Four Drake
  (70015, 7, NULL, 702, 7, 2, NULL, 'elite-four-drake', 'Elite Four Drake', 'Defeat Drake at Ever Grande City.', 4, true),
  -- Champion Wallace
  (70016, 7, NULL, 702, 8, 2, NULL, 'champion-wallace', 'Champion Wallace', 'Defeat Champion Wallace at Ever Grande City.', 5, true),
  -- Hall of Fame
  (70017, 7, NULL, 702, 13, 3, NULL, 'hall-of-fame', 'Hall of Fame', 'Enter the Hall of Fame after becoming Champion.', 6, true),
  -- Lati Choice
  (70018, 7, NULL, 703, 12, 1, NULL, 'lati-choice', 'Lati Choice', 'Choose whether Latias or Latios roams Hoenn after entering the Hall of Fame.', 1, false),
  -- Defeat Steven
  (70019, 7, NULL, 703, 6, 3, NULL, 'defeat-steven', 'Defeat Steven', 'Defeat Steven at Meteor Falls.', 2, false);
