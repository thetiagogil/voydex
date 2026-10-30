-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Omega Ruby / Alpha Sapphire, Fossil, Delta Episode, and First partner Pokémon pages.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii.
-- Scope: Pokémon Omega Ruby / Alpha Sapphire major story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Omega Ruby / Alpha Sapphire mainline progression milestones. Dense rival, evil-team, rematch, and route-level story beats outside these anchors remain part of the later story-boss pass.
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
  (140001, 14, NULL, 1401, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Choose Treecko, Torchic, or Mudkip as the first partner Pokémon.', 1, true),
  -- Receive Pokedex
  (140002, 14, NULL, 1401, 1, 1, NULL, 'receive-pokedex', 'Receive Pokedex', 'Receive the Pokedex and begin the Hoenn adventure record.', 2, true),
  -- Stone Badge
  (140003, 14, NULL, 1401, 2, 2, NULL, 'stone-badge', 'Stone Badge', 'Defeat Roxanne at Rustboro Gym and receive the Stone Badge.', 3, true),
  -- Knuckle Badge
  (140004, 14, NULL, 1401, 2, 2, NULL, 'knuckle-badge', 'Knuckle Badge', 'Defeat Brawly at Dewford Gym and receive the Knuckle Badge.', 4, true),
  -- Dynamo Badge
  (140005, 14, NULL, 1401, 2, 2, NULL, 'dynamo-badge', 'Dynamo Badge', 'Defeat Wattson at Mauville Gym and receive the Dynamo Badge.', 5, true),
  -- Mt. Chimney
  (140019, 14, NULL, 1401, 1, 2, NULL, 'mt-chimney', 'Mt. Chimney', 'Ride the cable car up Mt. Chimney and stop Maxie (Omega Ruby) or Archie (Alpha Sapphire) from using the Meteorite on the volcano.', 6, true),
  -- Fossil Choice
  (140006, 14, NULL, 1404, 12, 1, NULL, 'fossil-choice', 'Fossil Choice', 'Choose the Root Fossil or Claw Fossil in the desert on Route 111.', 1, false),
  -- Sealed Chamber
  (140021, 14, NULL, 1404, 6, 2, NULL, 'sealed-chamber', 'Sealed Chamber', 'Open the Sealed Chamber with Relicanth first and Wailord last in your party, then solve the Braille puzzles to meet Regirock, Regice and Registeel.', 2, false),
  -- Scorched Slab
  (140022, 14, NULL, 1404, 6, 2, NULL, 'scorched-slab', 'Scorched Slab', 'After the Primal Groudon or Kyogre crisis, go to the bottom of the Scorched Slab and battle Heatran through a portal.', 3, false),
  -- Sea Mauville
  (140023, 14, NULL, 1404, 6, 2, NULL, 'sea-mauville', 'Sea Mauville', 'Trade Captain Stern the Scanner for the Clear Bell or Tidal Bell, then meet Ho-Oh (Omega Ruby) or Lugia (Alpha Sapphire) at Sea Mauville.', 4, false),
  -- Crescent Isle
  (140024, 14, NULL, 1404, 6, 2, NULL, 'crescent-isle', 'Crescent Isle', 'Soar to Crescent Isle when it appears as the day''s Mirage spot and battle Cresselia.', 5, false),
  -- Storm Clouds
  (140025, 14, NULL, 1404, 6, 2, NULL, 'storm-clouds', 'Storm Clouds', 'Soar into the black clouds above Fortree City with Castform, then with Tornadus and Thundurus, to battle the forces of nature.', 6, false),
  -- Regigigas in Island Cave
  (140026, 14, NULL, 1404, 6, 2, NULL, 'island-cave-regigigas', 'Regigigas in Island Cave', 'With Regirock, Registeel and a nicknamed Regice holding a cold item in your party, return to Island Cave by day to battle Regigigas.', 7, false),
  -- Trackless Forest
  (140027, 14, NULL, 1404, 6, 2, NULL, 'trackless-forest', 'Trackless Forest', 'Soar to the Trackless Forest with Ho-Oh or Lugia in your party and battle Raikou, Entei and Suicune.', 8, false),
  -- Nameless Cavern
  (140028, 14, NULL, 1404, 6, 2, NULL, 'nameless-cavern', 'Nameless Cavern', 'Soar to the Nameless Cavern with three Pokémon at maximum friendship and battle Uxie, Mesprit and Azelf.', 9, false),
  -- Dimensional Rift
  (140029, 14, NULL, 1404, 6, 2, NULL, 'dimensional-rift', 'Dimensional Rift', 'Soar into the rifts south of Dewford Town with the lake trio, then with Dialga and Palkia, to battle the Sinnoh dragons.', 10, false),
  -- Pathless Plain
  (140030, 14, NULL, 1404, 6, 2, NULL, 'pathless-plain', 'Pathless Plain', 'Soar to the Pathless Plain with three Pokémon with maximum EVs and battle Cobalion, Terrakion and Virizion.', 11, false),
  -- Fabled Cave
  (140031, 14, NULL, 1404, 6, 2, NULL, 'fabled-cave', 'Fabled Cave', 'Soar to the Fabled Cave with a level 100 Pokémon in your party and battle Reshiram (Omega Ruby) or Zekrom (Alpha Sapphire).', 12, false),
  -- Gnarled Den
  (140032, 14, NULL, 1404, 6, 2, NULL, 'gnarled-den', 'Gnarled Den', 'Soar to the Gnarled Den with Reshiram and Zekrom in your party and battle Kyurem.', 13, false),
  -- Heat Badge
  (140007, 14, NULL, 1401, 2, 2, NULL, 'heat-badge', 'Heat Badge', 'Defeat Flannery at Lavaridge Gym and receive the Heat Badge.', 7, true),
  -- Balance Badge
  (140008, 14, NULL, 1401, 2, 2, NULL, 'balance-badge', 'Balance Badge', 'Defeat Norman at Petalburg Gym and receive the Balance Badge.', 8, true),
  -- Feather Badge
  (140009, 14, NULL, 1401, 2, 2, NULL, 'feather-badge', 'Feather Badge', 'Defeat Winona at Fortree Gym and receive the Feather Badge.', 9, true),
  -- Mind Badge
  (140010, 14, NULL, 1401, 2, 2, NULL, 'mind-badge', 'Mind Badge', 'Defeat Tate & Liza at Mossdeep Gym and receive the Mind Badge.', 10, true),
  -- Seafloor Cavern
  (140020, 14, NULL, 1401, 1, 2, NULL, 'seafloor-cavern', 'Seafloor Cavern', 'Dive down to the Seafloor Cavern and face Maxie (Omega Ruby) or Archie (Alpha Sapphire), who then awakens Primal Groudon or Primal Kyogre.', 11, true),
  -- Cave of Origin
  (140033, 14, NULL, 1401, 6, 3, NULL, 'cave-of-origin', 'Cave of Origin', 'Catch Primal Groudon (Omega Ruby) or Primal Kyogre (Alpha Sapphire) at the bottom of the Cave of Origin in Sootopolis City.', 12, true),
  -- Rain Badge
  (140011, 14, NULL, 1401, 2, 2, NULL, 'rain-badge', 'Rain Badge', 'Defeat Wallace at Sootopolis Gym and receive the Rain Badge.', 13, true),
  -- Elite Four Sidney
  (140012, 14, NULL, 1402, 7, 2, NULL, 'elite-four-sidney', 'Elite Four Sidney', 'Defeat Sidney at Ever Grande City.', 1, true),
  -- Elite Four Phoebe
  (140013, 14, NULL, 1402, 7, 2, NULL, 'elite-four-phoebe', 'Elite Four Phoebe', 'Defeat Phoebe at Ever Grande City.', 2, true),
  -- Elite Four Glacia
  (140014, 14, NULL, 1402, 7, 2, NULL, 'elite-four-glacia', 'Elite Four Glacia', 'Defeat Glacia at Ever Grande City.', 3, true),
  -- Elite Four Drake
  (140015, 14, NULL, 1402, 7, 2, NULL, 'elite-four-drake', 'Elite Four Drake', 'Defeat Drake at Ever Grande City.', 4, true),
  -- Champion Steven
  (140016, 14, NULL, 1402, 8, 2, NULL, 'champion-steven', 'Champion Steven', 'Defeat Champion Steven at Ever Grande City.', 5, true),
  -- Hall of Fame
  (140017, 14, NULL, 1402, 13, 3, NULL, 'hall-of-fame', 'Hall of Fame', 'Enter the Hall of Fame after becoming Champion.', 6, true),
  -- Delta Episode
  (140018, 14, NULL, 1403, 6, 3, NULL, 'delta-episode', 'Delta Episode', 'Complete the Delta Episode and defeat Zinnia at Sky Pillar.', 1, true);
