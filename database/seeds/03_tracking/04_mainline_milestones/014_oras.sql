-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Steven and Zinnia pages, and its
-- Omega Ruby / Alpha Sapphire walkthrough (all 25 parts) and location pages
-- for the story's order, the beats the game forces and every beat's place.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and data-mined game data.
-- Scope: Pokémon Omega Ruby / Alpha Sapphire shared story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Omega Ruby / Alpha Sapphire story, decision, badge and League milestones,
-- each at the place it happens (location_id), in Red / Blue's pattern. Main
-- Story is Ruby / Sapphire's with the remake's own beats: the Multi Battle at
-- Meteor Falls, Southern Island, the Admin on Mt. Pyre, and the Primal
-- Pokémon in the Cave of Origin. The hideout is one milestone for both
-- versions, placed at Lilycove City. The Pokémon League closes Main Story as
-- one milestone: the four Elite Four milestones (140012 to 140015) and the
-- Hall of Fame milestone (140017) merged into it (140016);
-- database/game-data/id-changes.json moves saved Plays over. The Delta
-- Episode is Post Game, placed at the Sky Pillar where it ends. Side Content
-- is the fossil, the Sealed Chamber and the legendary Pokémon of the Mirage
-- spots and the sky. Dense optional walkthrough beats (Contest Spectaculars,
-- Secret Bases, New Mauville, the Battle Resort) are intentionally excluded.
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
  is_required_for_completion,
  location_id
) VALUES
  -- Choose Starter (Route 101)
  (140001, 14, NULL, 1401, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Professor Birch is being chased by a wild Pokémon on Route 101. Pick Treecko, Torchic or Mudkip from his bag to save him, and he lets you keep it.', 1, true, 201),
  -- Receive Pokédex (Professor Birch's Laboratory)
  (140002, 14, NULL, 1401, 1, 1, NULL, 'receive-pokedex', 'Receive Pokédex', 'Beat May or Brendan on Route 103, then go back to Professor Birch''s lab in Littleroot Town. He gives you a Pokédex, and your rival gives you ten Poké Balls.', 2, true, 833),
  -- Stone Badge (Rustboro Gym)
  (140003, 14, NULL, 1401, 2, 2, NULL, 'stone-badge', 'Stone Badge', 'Beat Roxanne and her Rock types at Rustboro Gym. The Stone Badge lets you use Cut outside battle and makes Pokémon up to level 20 obey you.', 3, true, 834),
  -- Rusturf Tunnel (Rusturf Tunnel)
  (140034, 14, NULL, 1401, 1, 2, NULL, 'rusturf-tunnel', 'Rusturf Tunnel', 'Chase the Team Magma or Team Aqua Grunt into Rusturf Tunnel and win back the Devon Parts and Mr. Briney''s Wingull. Mr. Stone of Devon upgrades your PokéNav Plus with the BuzzNav and gives you a Letter for Steven and the parts to deliver.', 4, true, 236),
  -- Knuckle Badge (Dewford Gym)
  (140004, 14, NULL, 1401, 2, 2, NULL, 'knuckle-badge', 'Knuckle Badge', 'Work your way through the dark Dewford Gym and beat Brawly and his Fighting types. The Knuckle Badge makes Pokémon up to level 30 obey you.', 5, true, 835),
  -- Oceanic Museum (Oceanic Museum)
  (140035, 14, NULL, 1401, 1, 2, NULL, 'oceanic-museum', 'Oceanic Museum', 'Hand the Devon Parts to Captain Stern in Slateport City''s Oceanic Museum. Beat the two Grunts who try to take them, and meet Maxie in Omega Ruby or Archie in Alpha Sapphire.', 6, true, 836),
  -- Dynamo Badge (Mauville Gym)
  (140005, 14, NULL, 1401, 2, 2, NULL, 'dynamo-badge', 'Dynamo Badge', 'Switch the electric barriers of Mauville Gym and beat Wattson and his Electric types. The Dynamo Badge lets you use Rock Smash outside battle and makes Pokémon up to level 40 obey you.', 7, true, 838),
  -- Meteor Falls (Meteor Falls)
  (140036, 14, NULL, 1401, 1, 2, NULL, 'meteor-falls', 'Meteor Falls', 'Follow your rival to Meteor Falls, where Team Magma in Omega Ruby or Team Aqua in Alpha Sapphire has cornered Professor Cozmo. Beat the Admin and a Grunt in a Multi Battle beside your rival. They leave for Mt. Chimney with the Meteorite all the same.', 8, true, 160),
  -- Mt. Chimney (Mt. Chimney)
  (140019, 14, NULL, 1401, 1, 2, NULL, 'mt-chimney', 'Mt. Chimney', 'Ride the cable car up Mt. Chimney. Beat the Admin on the glass bridge and then Maxie in Omega Ruby or Archie in Alpha Sapphire at the crater. He gives up the Meteorite and leaves for Mt. Pyre.', 9, true, 841),
  -- Heat Badge (Lavaridge Gym)
  (140007, 14, NULL, 1401, 2, 2, NULL, 'heat-badge', 'Heat Badge', 'Drop through the floors and ride the geysers of Lavaridge Gym, then beat Flannery and her Fire types. The Heat Badge lets you use Strength outside battle and makes Pokémon up to level 50 obey you.', 10, true, 842),
  -- Balance Badge (Petalburg Gym)
  (140008, 14, NULL, 1401, 2, 2, NULL, 'balance-badge', 'Balance Badge', 'Beat your father Norman and his Normal types at Petalburg Gym, which opens once you have four badges. The Balance Badge lets you use Surf outside battle and makes Pokémon up to level 60 obey you.', 11, true, 843),
  -- Southern Island (Southern Island)
  (140037, 14, NULL, 1401, 1, 2, NULL, 'southern-island', 'Southern Island', 'Latias in Omega Ruby or Latios in Alpha Sapphire carries you and Steven to Southern Island, where the second of the pair is hiding from Team Magma or Team Aqua. Beat the Admin and a Grunt in a Multi Battle beside Steven. The Pokémon joins you, and Steven gives you the Mega Bracelet.', 12, true, 247),
  -- Weather Institute (Weather Institute)
  (140038, 14, NULL, 1401, 1, 2, NULL, 'weather-institute', 'Weather Institute', 'Free the Weather Institute on Route 119 from Team Magma in Omega Ruby or Team Aqua in Alpha Sapphire and beat their Admin on the second floor. The scientists give you a Castform.', 13, true, 253),
  -- Feather Badge (Fortree Gym)
  (140009, 14, NULL, 1401, 2, 2, NULL, 'feather-badge', 'Feather Badge', 'Turn the gates of Fortree Gym the right way and beat Winona and her Flying types. The Feather Badge lets you use Fly outside battle and makes Pokémon up to level 70 obey you.', 14, true, 844),
  -- Mt. Pyre (Mt. Pyre)
  (140039, 14, NULL, 1401, 1, 2, NULL, 'mt-pyre', 'Mt. Pyre', 'Climb to the summit of Mt. Pyre. Maxie in Omega Ruby or Archie in Alpha Sapphire takes one of the two orbs kept there and leaves his Admin to battle you. The old couple hands you the orb that is left.', 15, true, 196),
  -- Team Magma or Aqua Hideout (Lilycove City)
  (140040, 14, NULL, 1401, 1, 2, NULL, 'team-hideout', 'Team Magma or Aqua Hideout', 'Storm the hideout in the cove at Lilycove City, Team Magma''s in Omega Ruby or Team Aqua''s in Alpha Sapphire. Take the warp panels to the Master Ball and beat the Admin by the stolen submarine. The boss gets away in it.', 16, true, 157),
  -- Mind Badge (Mossdeep Gym)
  (140010, 14, NULL, 1401, 2, 2, NULL, 'mind-badge', 'Mind Badge', 'Ride the arrow tiles of Mossdeep Gym and beat Tate and Liza and their Psychic types in a Double Battle. The Mind Badge lets you use Dive outside battle and makes Pokémon up to level 80 obey you.', 17, true, 845),
  -- Seafloor Cavern (Seafloor Cavern)
  (140020, 14, NULL, 1401, 1, 2, NULL, 'seafloor-cavern', 'Seafloor Cavern', 'Dive on Route 128 into the Seafloor Cavern and push through its boulder rooms. Beat Maxie in Omega Ruby or Archie in Alpha Sapphire. The orb wakes Groudon or Kyogre, which changes into its Primal form and leaves for Sootopolis City.', 18, true, 240),
  -- Cave of Origin (Cave of Origin)
  (140033, 14, NULL, 1401, 6, 3, NULL, 'cave-of-origin', 'Cave of Origin', 'Put on the Magma Suit in Omega Ruby or the Aqua Suit in Alpha Sapphire and ride down into the Cave of Origin in Sootopolis City. Face Primal Groudon or Primal Kyogre at the bottom. Catch it or defeat it and the weather settles.', 19, true, 145),
  -- Rain Badge (Sootopolis Gym)
  (140011, 14, NULL, 1401, 2, 2, NULL, 'rain-badge', 'Rain Badge', 'Crack every ice tile to reach Wallace in Sootopolis Gym and beat his Water types. The Rain Badge makes every Pokémon obey you, and Wallace gives you HM05 Waterfall.', 20, true, 846),
  -- Pokémon League (Ever Grande City)
  (140016, 14, NULL, 1401, 8, 3, NULL, 'pokemon-league', 'Pokémon League', 'Beat the Elite Four and Champion Steven back to back at the Pokémon League in Ever Grande City. Your team enters the Hall of Fame.', 21, true, 150),
  -- Delta Episode (Sky Pillar)
  (140018, 14, NULL, 1403, 6, 3, NULL, 'delta-episode', 'Delta Episode', 'A meteoroid is heading for Hoenn. Follow Zinnia from Petalburg City to Granite Cave and the Mossdeep Space Center, then up the Sky Pillar. Catch Rayquaza, beat Zinnia, and ride Mega Rayquaza into space to break the meteoroid and meet Deoxys.', 1, false, 243),
  -- Fossil Choice (Route 111)
  (140006, 14, NULL, 1404, 12, 1, NULL, 'fossil-choice', 'Fossil Choice', 'Take the Root Fossil or the Claw Fossil from the desert on Route 111, and the one you leave sinks into the sand. Devon Corporation in Rustboro City can revive it.', 1, false, 211),
  -- Sealed Chamber (Sealed Chamber)
  (140021, 14, NULL, 1404, 6, 2, NULL, 'sealed-chamber', 'Sealed Chamber', 'Dive on Route 134 into the Sealed Chamber and read its Braille. Use Dig at the wall, then stand before the last stone with Relicanth first and Wailord last in your party. Three caves open across Hoenn, with Regirock, Regice and Registeel inside.', 2, false, 241),
  -- Scorched Slab (Scorched Slab)
  (140022, 14, NULL, 1404, 6, 2, NULL, 'scorched-slab', 'Scorched Slab', 'After the Cave of Origin, go to the bottom of the Scorched Slab on Route 120. Heatran waits behind a ring of light. Catch or defeat it.', 3, false, 238),
  -- Sea Mauville (Sea Mauville)
  (140023, 14, NULL, 1404, 6, 2, NULL, 'sea-mauville', 'Sea Mauville', 'Find the Scanner in Sea Mauville and trade it to Captain Stern for the Clear Bell in Omega Ruby or the Tidal Bell in Alpha Sapphire. Ho-Oh or Lugia then waits at Sea Mauville. Catch or defeat it.', 4, false, 239),
  -- Crescent Isle (Crescent Isle)
  (140024, 14, NULL, 1404, 6, 2, NULL, 'crescent-isle', 'Crescent Isle', 'Soar to Crescent Isle on a day it shows up as a Mirage spot. Cresselia waits there. Catch or defeat it.', 5, false, 917),
  -- Storm Clouds (Soaring in the sky)
  (140025, 14, NULL, 1404, 6, 2, NULL, 'storm-clouds', 'Storm Clouds', 'Soar into the black cloud above Fortree City with a Castform in your party for Tornadus in Omega Ruby or Thundurus in Alpha Sapphire. Come back with both, one traded from the opposite game, for Landorus.', 6, false, 245),
  -- Regigigas in Island Cave (Island Cave)
  (140026, 14, NULL, 1404, 6, 2, NULL, 'island-cave-regigigas', 'Regigigas in Island Cave', 'With Regirock, Registeel and a nicknamed Regice holding a cold item in your party, go back to Island Cave by day. Regigigas wakes. Catch or defeat it.', 7, false, 916),
  -- Trackless Forest (Trackless Forest)
  (140027, 14, NULL, 1404, 6, 2, NULL, 'trackless-forest', 'Trackless Forest', 'Soar to the Trackless Forest with Ho-Oh or Lugia in your party. Raikou, Entei or Suicune waits there, depending on the time. Catch or defeat it.', 8, false, 918),
  -- Nameless Cavern (Nameless Cavern)
  (140028, 14, NULL, 1404, 6, 2, NULL, 'nameless-cavern', 'Nameless Cavern', 'Soar to the Nameless Cavern with three Pokémon at full friendship. Uxie, Mesprit or Azelf waits there, depending on the time. Catch or defeat it.', 9, false, 919),
  -- Dimensional Rift (Soaring in the sky)
  (140029, 14, NULL, 1404, 6, 2, NULL, 'dimensional-rift', 'Dimensional Rift', 'Soar into the rift south of Dewford Town with Uxie, Mesprit and Azelf in your party for Palkia in Omega Ruby or Dialga in Alpha Sapphire. Come back with both, one traded from the opposite game, for Giratina.', 10, false, 245),
  -- Pathless Plain (Pathless Plain)
  (140030, 14, NULL, 1404, 6, 2, NULL, 'pathless-plain', 'Pathless Plain', 'Soar to the Pathless Plain with three Pokémon trained to their full effort. Cobalion, Terrakion or Virizion waits there, depending on the day. Catch or defeat it.', 11, false, 920),
  -- Fabled Cave (Fabled Cave)
  (140031, 14, NULL, 1404, 6, 2, NULL, 'fabled-cave', 'Fabled Cave', 'Soar to the Fabled Cave with a level 100 Pokémon in your party. Reshiram in Omega Ruby or Zekrom in Alpha Sapphire waits there. Catch or defeat it.', 12, false, 921),
  -- Gnarled Den (Gnarled Den)
  (140032, 14, NULL, 1404, 6, 2, NULL, 'gnarled-den', 'Gnarled Den', 'Soar to the Gnarled Den with Reshiram and Zekrom in your party. Kyurem waits there. Catch or defeat it.', 13, false, 922),
  -- Mirage Spots (Soaring in the sky)
  (140041, 14, NULL, 1404, 1, 1, NULL, 'mirage-spots', 'Mirage Spots', 'Once Latias or Latios can fly you over Hoenn, a different Mirage spot appears each day: a cave, a forest, an island or a mountain. Each one has its own rare Pokémon.', 14, false, 245);
