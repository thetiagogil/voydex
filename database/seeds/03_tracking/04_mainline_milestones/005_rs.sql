-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, and Steven pages, and its Ruby /
-- Sapphire walkthrough (all 23 parts) and location pages for the story's
-- order, the beats the game forces and every beat's place.
-- Cross-check: the pret pokeruby disassembly's trainer parties and map scripts.
-- Legendary encounters: Bulbapedia, cross-checked with the pret disassemblies.
-- Scope: Pokémon Ruby / Sapphire shared story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Ruby / Sapphire story, decision, badge and League milestones, each at the
-- place it happens (location_id), in Red / Blue's pattern. Main Story follows
-- the order the walkthrough reaches each beat, with the beats the game forces
-- between badges as their own milestones (Rusturf Tunnel, the Oceanic Museum,
-- Meteor Falls, Mt. Chimney, the Weather Institute, Mt. Pyre, the hideout at
-- Lilycove City, the Seafloor Cavern and the Cave of Origin). The hideout is
-- one milestone for both versions, placed at Lilycove City, since Team
-- Magma's and Team Aqua's are different place rows. The Pokémon League closes
-- Main Story as one milestone: the four Elite Four milestones (50012 to
-- 50015) and the Hall of Fame milestone (50017) merged into it (50016);
-- database/game-data/id-changes.json moves saved Plays over. The roaming
-- Latios or Latias is Post Game, placed at Littleroot Town, where the news
-- report starts it. Dense optional walkthrough beats (the Trick House, New
-- Mauville, the Abandoned Ship, the Battle Tower) are intentionally excluded.
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
  (50001, 5, NULL, 501, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Professor Birch is being chased by a wild Pokémon on Route 101. Pick Treecko, Torchic or Mudkip from his bag to save him, and he lets you keep it.', 1, true, 201),
  -- Receive Pokédex (Professor Birch's Laboratory)
  (50002, 5, NULL, 501, 1, 1, NULL, 'receive-pokedex', 'Receive Pokédex', 'Beat May or Brendan on Route 103, then go back to Professor Birch''s lab in Littleroot Town. He gives you a Pokédex, and your rival gives you five Poké Balls.', 2, true, 833),
  -- Stone Badge (Rustboro Gym)
  (50003, 5, NULL, 501, 2, 2, NULL, 'stone-badge', 'Stone Badge', 'Beat Roxanne and her Rock types at Rustboro Gym. The Stone Badge lets you use Cut outside battle.', 3, true, 834),
  -- Rusturf Tunnel (Rusturf Tunnel)
  (50024, 5, NULL, 501, 1, 2, NULL, 'rusturf-tunnel', 'Rusturf Tunnel', 'Chase the Team Magma or Team Aqua Grunt into Rusturf Tunnel and win back the Devon Goods and Mr. Briney''s Wingull. Mr. Stone of Devon gives you a PokéNav, a Letter for Steven and the goods to deliver.', 4, true, 236),
  -- Knuckle Badge (Dewford Gym)
  (50004, 5, NULL, 501, 2, 2, NULL, 'knuckle-badge', 'Knuckle Badge', 'Find your way through the dark Dewford Gym and beat Brawly and his Fighting types. The Knuckle Badge lets you use Flash outside battle and makes Pokémon up to level 30 obey you.', 5, true, 835),
  -- Oceanic Museum (Oceanic Museum)
  (50025, 5, NULL, 501, 1, 2, NULL, 'oceanic-museum', 'Oceanic Museum', 'Hand the Devon Goods to Captain Stern in Slateport City''s Oceanic Museum. Beat the two Grunts who try to take them, and meet Maxie in Ruby or Archie in Sapphire.', 6, true, 836),
  -- Dynamo Badge (Mauville Gym)
  (50005, 5, NULL, 501, 2, 2, NULL, 'dynamo-badge', 'Dynamo Badge', 'Switch the electric barriers of Mauville Gym and beat Wattson and his Electric types. The Dynamo Badge lets you use Rock Smash outside battle.', 7, true, 838),
  -- Meteor Falls (Meteor Falls)
  (50026, 5, NULL, 501, 1, 2, NULL, 'meteor-falls', 'Meteor Falls', 'Follow the trail to Meteor Falls, where Team Magma in Ruby or Team Aqua in Sapphire takes Professor Cozmo''s Meteorite and leaves for Mt. Chimney. The rival team''s leader goes after them.', 8, true, 160),
  -- Mt. Chimney (Mt. Chimney)
  (50018, 5, NULL, 501, 1, 2, NULL, 'mt-chimney', 'Mt. Chimney', 'Ride the cable car up Mt. Chimney. Beat the Admin and then Maxie in Ruby or Archie in Sapphire to stop the Meteorite machine at the crater. Take the Meteorite back for Professor Cozmo.', 9, true, 841),
  -- Heat Badge (Lavaridge Gym)
  (50007, 5, NULL, 501, 2, 2, NULL, 'heat-badge', 'Heat Badge', 'Drop through the floors and ride the geysers of Lavaridge Gym, then beat Flannery and her Fire types. The Heat Badge lets you use Strength outside battle and makes Pokémon up to level 50 obey you.', 10, true, 842),
  -- Balance Badge (Petalburg Gym)
  (50008, 5, NULL, 501, 2, 2, NULL, 'balance-badge', 'Balance Badge', 'Beat your father Norman and his Normal types at Petalburg Gym, which opens once you have four badges. The Balance Badge lets you use Surf outside battle.', 11, true, 843),
  -- Weather Institute (Weather Institute)
  (50027, 5, NULL, 501, 1, 2, NULL, 'weather-institute', 'Weather Institute', 'Free the Weather Institute on Route 119 from Team Magma in Ruby or Team Aqua in Sapphire and beat their Admin on the second floor. The scientists give you a Castform.', 12, true, 253),
  -- Feather Badge (Fortree Gym)
  (50009, 5, NULL, 501, 2, 2, NULL, 'feather-badge', 'Feather Badge', 'Turn the gates of Fortree Gym the right way and beat Winona and her Flying types. The Feather Badge lets you use Fly outside battle and makes Pokémon up to level 70 obey you.', 13, true, 844),
  -- Mt. Pyre (Mt. Pyre)
  (50028, 5, NULL, 501, 1, 2, NULL, 'mt-pyre', 'Mt. Pyre', 'Climb to the summit of Mt. Pyre. Maxie in Ruby or Archie in Sapphire steals one of the two orbs kept there, and the old couple hands you the one that is left.', 14, true, 196),
  -- Team Magma or Aqua Hideout (Lilycove City)
  (50029, 5, NULL, 501, 1, 2, NULL, 'team-hideout', 'Team Magma or Aqua Hideout', 'Storm the hideout in the cove at Lilycove City, Team Magma''s in Ruby or Team Aqua''s in Sapphire. Take the warp panels to the Master Ball in the boss''s office and beat the Admin by the stolen submarine. The boss gets away in it.', 15, true, 157),
  -- Mind Badge (Mossdeep Gym)
  (50010, 5, NULL, 501, 2, 2, NULL, 'mind-badge', 'Mind Badge', 'Ride the arrow tiles of Mossdeep Gym and beat Tate and Liza and their Psychic types in a Double Battle. The Mind Badge lets you use Dive outside battle.', 16, true, 845),
  -- Seafloor Cavern (Seafloor Cavern)
  (50019, 5, NULL, 501, 1, 2, NULL, 'seafloor-cavern', 'Seafloor Cavern', 'Dive on Route 128 into the Seafloor Cavern and push through its boulder rooms. Beat the Admin and then Maxie in Ruby or Archie in Sapphire. The orb wakes Groudon or Kyogre, which escapes to Sootopolis City.', 17, true, 240),
  -- Cave of Origin (Cave of Origin)
  (50023, 5, NULL, 501, 6, 3, NULL, 'cave-of-origin', 'Cave of Origin', 'Go down the Cave of Origin in Sootopolis City with the orb from Mt. Pyre and face Groudon in Ruby or Kyogre in Sapphire. Catch it or beat it and the weather settles.', 18, true, 145),
  -- Rain Badge (Sootopolis Gym)
  (50011, 5, NULL, 501, 2, 2, NULL, 'rain-badge', 'Rain Badge', 'Crack every ice tile to reach Wallace in Sootopolis Gym and beat his Water types. The Rain Badge lets you use Waterfall outside battle and makes every Pokémon obey you.', 19, true, 846),
  -- Pokémon League (Ever Grande City)
  (50016, 5, NULL, 501, 8, 3, NULL, 'pokemon-league', 'Pokémon League', 'Beat the Elite Four and Champion Steven back to back at the Pokémon League in Ever Grande City. Your team enters the Hall of Fame.', 20, true, 150),
  -- Roaming Latios or Latias (Littleroot Town)
  (50022, 5, NULL, 503, 6, 2, NULL, 'roaming-lati', 'Roaming Latios or Latias', 'After the Hall of Fame, watch the news on the TV at home in Littleroot Town. Latios in Ruby or Latias in Sapphire then roams Hoenn. Track it down and catch or defeat it.', 1, false, 158),
  -- Fossil Choice (Route 111)
  (50006, 5, NULL, 504, 12, 1, NULL, 'fossil-choice', 'Fossil Choice', 'Take the Root Fossil or the Claw Fossil from the desert on Route 111, and the one you leave sinks into the sand. Devon Corporation in Rustboro City can revive it.', 1, false, 211),
  -- Sealed Chamber (Sealed Chamber)
  (50020, 5, NULL, 504, 6, 2, NULL, 'sealed-chamber', 'Sealed Chamber', 'Dive on Route 134 into the Sealed Chamber and read its Braille. Use Dig at the wall, then stand before the last stone with Relicanth first and Wailord last in your party. Three caves open across Hoenn, with Regirock, Regice and Registeel inside.', 2, false, 241),
  -- Sky Pillar (Sky Pillar)
  (50021, 5, NULL, 504, 6, 2, NULL, 'sky-pillar', 'Sky Pillar', 'Ride the Mach Bike across the cracked floors of the Sky Pillar on Route 131 and catch or defeat Rayquaza at the top.', 3, false, 243);
