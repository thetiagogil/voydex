-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia Badge, Elite Four, Emerald, and Steven Stone pages, and
-- its Emerald walkthrough (all 21 parts) and location pages for the story's
-- order, the beats the game forces and every beat's place.
-- Cross-check: the pret pokeemerald disassembly's trainer parties and map scripts.
-- Legendary encounters: Bulbapedia, cross-checked with Serebii and the pret disassemblies.
-- Scope: Pokémon Emerald story and decision milestones.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Emerald story, decision, badge and League milestones, each at the place it
-- happens (location_id), in Red / Blue's pattern. Main Story follows the
-- order the walkthrough reaches each beat, with the beats the game forces
-- between badges as their own milestones (Rusturf Tunnel, the Oceanic Museum,
-- Meteor Falls, Mt. Chimney, the Weather Institute, Mt. Pyre, the Magma
-- Hideout on Jagged Pass, the Aqua Hideout at Lilycove City, the Mossdeep
-- Space Center, the Seafloor Cavern and waking Rayquaza on the Sky Pillar).
-- The Pokémon League closes Main Story as one milestone: the four Elite Four
-- milestones (70012 to 70015) and the Hall of Fame milestone (70017) merged
-- into it (70016); database/game-data/id-changes.json moves saved Plays over.
-- Post Game is the roaming Latias or Latios, placed at Littleroot Town where
-- the news report starts it, and Steven in Meteor Falls. Side Content is the
-- fossil in Mirage Tower, Rayquaza back on the Sky Pillar, the Sealed Chamber,
-- and Terra Cave and Marine Cave. Dense optional walkthrough beats (the Trick
-- House, New Mauville, the Abandoned Ship, Trainer Hill, the Battle Frontier)
-- are intentionally excluded.
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
  (70001, 7, NULL, 701, 12, 1, NULL, 'choose-starter', 'Choose Starter', 'Professor Birch is being chased by a wild Pokémon on Route 101. Pick Treecko, Torchic or Mudkip from his bag to save him, and he lets you keep it.', 1, true, 201),
  -- Receive Pokédex (Professor Birch's Laboratory)
  (70002, 7, NULL, 701, 1, 1, NULL, 'receive-pokedex', 'Receive Pokédex', 'Beat May or Brendan on Route 103, then go back to Professor Birch''s lab in Littleroot Town. He gives you a Pokédex, and your rival gives you five Poké Balls.', 2, true, 833),
  -- Stone Badge (Rustboro Gym)
  (70003, 7, NULL, 701, 2, 2, NULL, 'stone-badge', 'Stone Badge', 'Beat Roxanne and her Rock types at Rustboro Gym. The Stone Badge lets you use Cut outside battle.', 3, true, 834),
  -- Rusturf Tunnel (Rusturf Tunnel)
  (70029, 7, NULL, 701, 1, 2, NULL, 'rusturf-tunnel', 'Rusturf Tunnel', 'Chase the Team Aqua Grunt into Rusturf Tunnel and win back the Devon Goods and Mr. Briney''s Wingull. Mr. Stone of Devon gives you a PokéNav, a Letter for Steven and the goods to deliver.', 4, true, 236),
  -- Knuckle Badge (Dewford Gym)
  (70004, 7, NULL, 701, 2, 2, NULL, 'knuckle-badge', 'Knuckle Badge', 'Find your way through the dark Dewford Gym and beat Brawly and his Fighting types. The Knuckle Badge lets you use Flash outside battle and makes Pokémon up to level 30 obey you.', 5, true, 835),
  -- Oceanic Museum (Oceanic Museum)
  (70030, 7, NULL, 701, 1, 2, NULL, 'oceanic-museum', 'Oceanic Museum', 'Hand the Devon Goods to Captain Stern in Slateport City''s Oceanic Museum. Beat the two Team Aqua Grunts who try to take them, and meet their boss, Archie.', 6, true, 836),
  -- Dynamo Badge (Mauville Gym)
  (70005, 7, NULL, 701, 2, 2, NULL, 'dynamo-badge', 'Dynamo Badge', 'Switch the electric barriers of Mauville Gym and beat Wattson and his Electric types. The Dynamo Badge lets you use Rock Smash outside battle.', 7, true, 838),
  -- Meteor Falls (Meteor Falls)
  (70031, 7, NULL, 701, 1, 2, NULL, 'meteor-falls', 'Meteor Falls', 'Follow the trail to Meteor Falls, where Team Magma takes Professor Cozmo''s Meteorite and leaves for Mt. Chimney. Archie and Team Aqua go after them.', 8, true, 160),
  -- Mt. Chimney (Mt. Chimney)
  (70020, 7, NULL, 701, 1, 2, NULL, 'mt-chimney', 'Mt. Chimney', 'Ride the cable car up Mt. Chimney, where Team Aqua is holding off Team Magma. Beat Tabitha and then Maxie to stop the Meteorite machine at the crater. Take the Meteorite back for Professor Cozmo.', 9, true, 841),
  -- Heat Badge (Lavaridge Gym)
  (70007, 7, NULL, 701, 2, 2, NULL, 'heat-badge', 'Heat Badge', 'Drop through the floors and ride the geysers of Lavaridge Gym, then beat Flannery and her Fire types. The Heat Badge lets you use Strength outside battle and makes Pokémon up to level 50 obey you.', 10, true, 842),
  -- Balance Badge (Petalburg Gym)
  (70008, 7, NULL, 701, 2, 2, NULL, 'balance-badge', 'Balance Badge', 'Beat your father Norman and his Normal types at Petalburg Gym, which opens once you have four badges. The Balance Badge lets you use Surf outside battle.', 11, true, 843),
  -- Weather Institute (Weather Institute)
  (70032, 7, NULL, 701, 1, 2, NULL, 'weather-institute', 'Weather Institute', 'Free the Weather Institute on Route 119 from Team Aqua and beat Shelly on the second floor. The scientists give you a Castform.', 12, true, 253),
  -- Feather Badge (Fortree Gym)
  (70009, 7, NULL, 701, 2, 2, NULL, 'feather-badge', 'Feather Badge', 'Turn the gates of Fortree Gym the right way and beat Winona and her Flying types. The Feather Badge lets you use Fly outside battle and makes Pokémon up to level 70 obey you.', 13, true, 844),
  -- Mt. Pyre (Mt. Pyre)
  (70033, 7, NULL, 701, 1, 2, NULL, 'mt-pyre', 'Mt. Pyre', 'Climb to the summit of Mt. Pyre. Team Magma has already taken the Blue Orb, and Archie takes the Red Orb in front of you. The old couple hands you the Magma Emblem that Team Magma left behind.', 14, true, 196),
  -- Magma Hideout (Magma Hideout (Jagged Pass))
  (70021, 7, NULL, 701, 1, 2, NULL, 'magma-hideout', 'Magma Hideout', 'Carry the Magma Emblem up Jagged Pass and a rock face opens into Team Magma''s hideout. Beat Tabitha and then Maxie, who wakes Groudon with the Blue Orb. Groudon breaks out and disappears.', 15, true, 159),
  -- Aqua Hideout (Team Aqua Hideout)
  (70034, 7, NULL, 701, 1, 2, NULL, 'aqua-hideout', 'Aqua Hideout', 'Storm Team Aqua''s hideout in the cove at Lilycove City. Take the warp panels to the Master Ball in Archie''s office and beat Matt by the stolen submarine. Archie gets away in it.', 16, true, 248),
  -- Mind Badge (Mossdeep Gym)
  (70010, 7, NULL, 701, 2, 2, NULL, 'mind-badge', 'Mind Badge', 'Ride the arrow tiles of Mossdeep Gym and beat Tate and Liza and their Psychic types in a Double Battle. The Mind Badge lets you use Dive outside battle.', 17, true, 845),
  -- Mossdeep Space Center (Mossdeep Space Center)
  (70027, 7, NULL, 701, 1, 2, NULL, 'space-center', 'Mossdeep Space Center', 'Team Magma storms the Mossdeep Space Center for its rocket fuel. Fight beside Steven in a Multi Battle against Maxie and Tabitha on the second floor. Steven then gives you HM08 Dive at his house.', 18, true, 854),
  -- Seafloor Cavern (Seafloor Cavern)
  (70022, 7, NULL, 701, 1, 2, NULL, 'seafloor-cavern', 'Seafloor Cavern', 'Dive on Route 128 into the Seafloor Cavern and push through its boulder rooms. Beat Archie in the deepest chamber. The Red Orb wakes Kyogre, which escapes to Sootopolis City.', 19, true, 240),
  -- Awaken Rayquaza (Sky Pillar)
  (70028, 7, NULL, 701, 1, 2, NULL, 'awaken-rayquaza', 'Awaken Rayquaza', 'Groudon and Kyogre are fighting in Sootopolis City. Wallace unlocks the Sky Pillar on Route 131 for you. Climb to the top and wake Rayquaza, which flies to Sootopolis City and ends the fight.', 20, true, 243),
  -- Rain Badge (Sootopolis Gym)
  (70011, 7, NULL, 701, 2, 2, NULL, 'rain-badge', 'Rain Badge', 'Crack every ice tile to reach Juan in Sootopolis Gym and beat his Water types. The Rain Badge lets you use Waterfall outside battle and makes every Pokémon obey you.', 21, true, 846),
  -- Pokémon League (Ever Grande City)
  (70016, 7, NULL, 701, 8, 3, NULL, 'pokemon-league', 'Pokémon League', 'Beat the Elite Four and Champion Wallace back to back at the Pokémon League in Ever Grande City. Your team enters the Hall of Fame.', 22, true, 150),
  -- Roaming Latias or Latios (Littleroot Town)
  (70018, 7, NULL, 703, 12, 1, NULL, 'lati-choice', 'Roaming Latias or Latios', 'After the Hall of Fame, watch the news on the TV at home in Littleroot Town and tell your mom the colour you saw. Red makes Latias roam Hoenn and blue makes Latios. Track it down and catch or defeat it.', 1, false, 158),
  -- Defeat Steven (Meteor Falls)
  (70019, 7, NULL, 703, 6, 3, NULL, 'defeat-steven', 'Defeat Steven', 'Steven has left Mossdeep City to train. Find him in the last room of Meteor Falls, which needs Surf and Waterfall, and beat him.', 2, false, 160),
  -- Fossil Choice (Mirage Tower)
  (70006, 7, NULL, 704, 12, 1, NULL, 'fossil-choice', 'Fossil Choice', 'Climb Mirage Tower in the desert on Route 111 with the Mach Bike and Rock Smash and take the Root Fossil or the Claw Fossil. The tower then sinks into the sand with the one you left. Devon Corporation in Rustboro City can revive yours.', 1, false, 194),
  -- Sky Pillar (Sky Pillar)
  (70024, 7, NULL, 704, 6, 2, NULL, 'sky-pillar', 'Sky Pillar', 'After it calms Sootopolis City, Rayquaza goes back to the top of the Sky Pillar. Ride the Mach Bike across the floors that have cracked since your first climb and catch or defeat it.', 2, false, 243),
  -- Sealed Chamber (Sealed Chamber)
  (70023, 7, NULL, 704, 6, 2, NULL, 'sealed-chamber', 'Sealed Chamber', 'Dive on Route 134 into the Sealed Chamber and read its Braille. Use Dig at the wall, then stand before the last stone with Wailord first and Relicanth last in your party. Three caves open across Hoenn, with Regirock, Regice and Registeel inside.', 3, false, 241),
  -- Terra Cave (Terra Cave)
  (70025, 7, NULL, 704, 6, 2, NULL, 'terra-cave', 'Terra Cave', 'After the Hall of Fame, ask the scientist at the Weather Institute where the drought is. Terra Cave opens on that route, Route 114, 115, 116 or 118, and Groudon waits inside. Catch or defeat it.', 4, false, 855),
  -- Marine Cave (Marine Cave)
  (70026, 7, NULL, 704, 6, 2, NULL, 'marine-cave', 'Marine Cave', 'After the Hall of Fame, ask the scientist at the Weather Institute where the heavy rain is. Dive on that route, Route 105, 125, 127 or 129, into Marine Cave, where Kyogre waits. Catch or defeat it.', 5, false, 856);
