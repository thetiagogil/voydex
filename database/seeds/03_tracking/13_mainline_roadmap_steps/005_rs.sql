-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's Ruby / Sapphire walkthrough, all 23 parts (the order
-- the story passes each place and reaches each beat, and what happens there),
-- with its location pages for the places.
-- Cross-check: the pret pokeruby disassembly's map scripts.
-- Scope: Pokémon Ruby / Sapphire Story roadmap.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_roadmap_steps
-- Ruby / Sapphire's Story roadmap, step by step, in Red / Blue's pattern: a
-- place the walkthrough passes (location_id) or a milestone (milestone_id),
-- which sits at its own place. Places repeat where the walkthrough comes
-- back. Every Ruby / Sapphire milestone is one step where the walkthrough
-- reaches it: the optional Fossil Choice in the desert after the Heat Badge,
-- the Sealed Chamber on the way to Ever Grande City, the roaming Latios or
-- Latias and the Sky Pillar after the League.
-- A place step carries a note on what happens there. It shows in the place's
-- detail only, and never lists the Pokémon found there, which the detail
-- already shows. Where the two versions differ, the note names both teams.
-- ============================================================================
INSERT INTO tracking.mainline_roadmap_steps (
  version_group_id,
  sort_order,
  location_id,
  milestone_id,
  note
) VALUES
  -- 1: Littleroot Town
  (5, 1, 158, NULL, 'Your new home town. You arrive in the back of the moving truck and set the clock in your room. Professor Birch and your rival, May or Brendan, live next door.'),
  -- 2: Route 101
  (5, 2, 201, NULL, 'North of Littleroot Town. Professor Birch is running from a wild Pokémon here, and his bag lies on the ground.'),
  -- 3: Choose Starter (milestone)
  (5, 3, NULL, 50001, NULL),
  -- 4: Littleroot Town
  (5, 4, 158, NULL, 'Professor Birch takes you back to his lab and lets you keep the Pokémon. He sends you to find your rival on Route 103.'),
  -- 5: Route 101
  (5, 5, 201, NULL, 'North again to Oldale Town.'),
  -- 6: Oldale Town
  (5, 6, 832, NULL, 'A small town. The Poké Mart clerk shows you the shop and hands you a free Potion. A man studying footprints blocks the road west.'),
  -- 7: Route 103
  (5, 7, 203, NULL, 'Your rival is at the north end, studying wild Pokémon, and battles you.'),
  -- 8: Oldale Town
  (5, 8, 832, NULL, 'Back through town on the way to the lab.'),
  -- 9: Route 101
  (5, 9, 201, NULL, 'South to Littleroot Town, hopping down the ledges.'),
  -- 10: Receive Pokédex (milestone)
  (5, 10, NULL, 50002, NULL),
  -- 11: Littleroot Town
  (5, 11, 158, NULL, 'Your mom stops you outside with the Running Shoes.'),
  -- 12: Route 101
  (5, 12, 201, NULL, 'North once more, now with a Pokédex and Poké Balls.'),
  -- 13: Oldale Town
  (5, 13, 832, NULL, 'The man has finished his sketch, so the road west is open. The footprints were his own.'),
  -- 14: Route 102
  (5, 14, 202, NULL, 'West of Oldale Town to Petalburg City. Berry trees grow in the soft soil on the north side.'),
  -- 15: Petalburg City
  (5, 15, 199, NULL, 'Your father Norman leads the Gym here, but he won''t battle you until you have four badges. He asks you to help a sickly boy, Wally, catch his first Pokémon.'),
  -- 16: Route 104
  (5, 16, 204, NULL, 'Along the beach, past Mr. Briney''s cottage, to Petalburg Woods.'),
  -- 17: Petalburg Woods
  (5, 17, 200, NULL, 'A Devon researcher is attacked by a Team Magma Grunt in Ruby or a Team Aqua Grunt in Sapphire. Beat the Grunt and the researcher gives you a Great Ball.'),
  -- 18: Route 104
  (5, 18, 204, NULL, 'North of the woods, the Pretty Petal flower shop gives you the Wailmer Pail for watering Berries.'),
  -- 19: Rustboro City
  (5, 19, 235, NULL, 'A city of stone, home of the Devon Corporation. Roxanne''s Gym uses Rock types. The Cutter, in the house west of the Pokémon Center, gives you HM01 Cut, and the school''s teacher a Quick Claw.'),
  -- 20: Stone Badge (milestone)
  (5, 20, NULL, 50003, NULL),
  -- 21: Route 116
  (5, 21, 216, NULL, 'A Grunt has robbed the Devon researcher and run this way. At the tunnel''s mouth, an old man says the thief took his Wingull too.'),
  -- 22: Rusturf Tunnel (milestone)
  (5, 22, NULL, 50024, NULL),
  -- 23: Rustboro City
  (5, 23, 235, NULL, 'The researcher takes you up to Mr. Stone, Devon''s president. He gives you a PokéNav, a Letter for Steven in Dewford Town and the goods to take to Slateport City. Your rival, at the south gate, has seen Mr. Briney, who can sail you there.'),
  -- 24: Petalburg Woods
  (5, 24, 200, NULL, 'Back south through the woods to the beach.'),
  -- 25: Route 104
  (5, 25, 204, NULL, 'Mr. Briney, at his cottage on the beach, sails you to Dewford Town.'),
  -- 26: Dewford Town
  (5, 26, 149, NULL, 'A small island town. Brawly''s Gym uses Fighting types and is pitch dark inside. The Fisherman east of the Gym gives you an Old Rod.'),
  -- 27: Knuckle Badge (milestone)
  (5, 27, NULL, 50004, NULL),
  -- 28: Route 106
  (5, 28, 206, NULL, 'The beach west of Dewford Town leads to Granite Cave.'),
  -- 29: Granite Cave
  (5, 29, 154, NULL, 'A Hiker at the entrance gives you HM05 Flash. Steven is in the far room. Hand him the Letter and he gives you TM47 Steel Wing.'),
  -- 30: Dewford Town
  (5, 30, 149, NULL, 'Mr. Briney waits at the pier to sail you on to Slateport City.'),
  -- 31: Route 109
  (5, 31, 209, NULL, 'The beach south of Slateport City. Beat the trainers in the Seashore House and the owner gives you six bottles of Soda Pop.'),
  -- 32: Slateport City
  (5, 32, 244, NULL, 'A port with an open-air market. Captain Stern is away from his shipyard, and a line of Grunts waits outside the Oceanic Museum. A girl in the Contest Hall gives you a Pokéblock Case.'),
  -- 33: Oceanic Museum (milestone)
  (5, 33, NULL, 50025, NULL),
  -- 34: Route 110
  (5, 34, 210, NULL, 'North to Mauville City under the Cycling Road. The Trick House stands near the turn to Route 103. Your rival stops you for a battle.'),
  -- 35: Mauville City
  (5, 35, 837, NULL, 'The crossroads of Hoenn. Rydel gives you a free bike, the Mach Bike or the Acro Bike, and swaps it whenever you ask. A scientist in the southeast house gives you HM06 Rock Smash. Wattson''s Gym uses Electric types, and Wally asks you for a battle in front of it.'),
  -- 36: Dynamo Badge (milestone)
  (5, 36, NULL, 50005, NULL),
  -- 37: Route 117
  (5, 37, 217, NULL, 'West of Mauville City. The Day Care here raises up to two Pokémon and may find an Egg.'),
  -- 38: Verdanturf Town
  (5, 38, 839, NULL, 'A quiet town with clean air, where Wally is staying with his relatives. Its Contest Hall holds Normal Rank contests.'),
  -- 39: Rusturf Tunnel
  (5, 39, 236, NULL, 'Break the rocks in the tunnel with Rock Smash. Wanda''s boyfriend thanks you with HM04 Strength, and the tunnel becomes a shortcut to Rustboro City.'),
  -- 40: Route 111
  (5, 40, 211, NULL, 'North of Mauville City, past rocks that need Rock Smash. The Winstrate family battles you four times in a row for a Macho Brace. A sandstorm closes the desert, so turn west onto Route 112.'),
  -- 41: Route 112
  (5, 41, 212, NULL, 'Grunts block the cable car up Mt. Chimney. Go through the Fiery Path instead.'),
  -- 42: Fiery Path
  (5, 42, 152, NULL, 'A hot tunnel through the foot of Mt. Chimney. Boulders that need Strength close its side paths.'),
  -- 43: Route 111
  (5, 43, 211, NULL, 'North of the desert. A boy by a large tree gives you TM43 Secret Power for making a Secret Base, and an old woman''s house heals your team.'),
  -- 44: Route 113
  (5, 44, 213, NULL, 'Always under falling volcanic ash. The Glass Workshop gives you a Soot Sack and trades the ash you gather for glass items.'),
  -- 45: Fallarbor Town
  (5, 45, 840, NULL, 'A farming town. Lanette, who runs the Pokémon Storage System, is at the Pokémon Center''s PC. The Move Maniac teaches a forgotten move again for a Heart Scale.'),
  -- 46: Route 114
  (5, 46, 214, NULL, 'Southwest of Fallarbor Town to Meteor Falls. The Fossil Maniac''s brother gives you TM28 Dig, and Lanette''s house stands by the water.'),
  -- 47: Meteor Falls (milestone)
  (5, 47, NULL, 50026, NULL),
  -- 48: Route 115
  (5, 48, 215, NULL, 'Out of the west side of Meteor Falls and down the coast to Rustboro City. Take Rusturf Tunnel back east to Mauville City.'),
  -- 49: Route 112
  (5, 49, 212, NULL, 'The Grunts have left the cable car station. Ride up to the summit.'),
  -- 50: Mt. Chimney (milestone)
  (5, 50, NULL, 50018, NULL),
  -- 51: Jagged Pass
  (5, 51, 155, NULL, 'The rough path down the south side of Mt. Chimney to Lavaridge Town. Going back up needs the Acro Bike.'),
  -- 52: Lavaridge Town
  (5, 52, 156, NULL, 'A hot spring town. Flannery''s Gym uses Fire types. An old woman by the hot spring gives you an Egg, and the old man in the Herb Shop a piece of Charcoal. After you win, your rival meets you outside with the Go-Goggles.'),
  -- 53: Heat Badge (milestone)
  (5, 53, NULL, 50007, NULL),
  -- 54: Route 111
  (5, 54, 211, NULL, 'With the Go-Goggles the desert is open. Its sandstorm has uncovered two fossils, and the Desert Ruins stand sealed at its south end.'),
  -- 55: Fossil Choice (milestone)
  (5, 55, NULL, 50006, NULL),
  -- 56: Petalburg City
  (5, 56, 199, NULL, 'Back west through Verdanturf Town and Rustboro City. With four badges, your father accepts your challenge. After you win, Wally''s father next door gives you HM03 Surf.'),
  -- 57: Balance Badge (milestone)
  (5, 57, NULL, 50008, NULL),
  -- 58: Mauville City
  (5, 58, 837, NULL, 'Surf across Route 103 to get back. Wattson, outside the Pokémon Center, asks you to shut down the generator in New Mauville and gives you the Basement Key. He pays you with TM24 Thunderbolt.'),
  -- 59: New Mauville
  (5, 59, 197, NULL, 'A power plant under Mauville City. Surf east from the north end of the Cycling Road on Route 110 to reach it, and step on the coloured floor switches to get to the generator.'),
  -- 60: Route 118
  (5, 60, 218, NULL, 'East of Mauville City, across the water. The Fisherman on the far shore gives you a Good Rod, and Steven greets you on the beach.'),
  -- 61: Route 119
  (5, 61, 219, NULL, 'A long, rainy road north through tall grass. Grunts guard the bridge outside the Weather Institute.'),
  -- 62: Weather Institute (milestone)
  (5, 62, NULL, 50027, NULL),
  -- 63: Route 119
  (5, 63, 219, NULL, 'Past the Institute, your rival battles you on the way up to Fortree City.'),
  -- 64: Fortree City
  (5, 64, 153, NULL, 'A town of treehouses. Winona''s Gym uses Flying types, but something you can''t see blocks the way to it. An old woman''s coin game wins you TM10 Hidden Power.'),
  -- 65: Route 120
  (5, 65, 220, NULL, 'Steven waits on the bridge east of town. His Devon Scope shows the invisible Pokémon in your way, and it attacks. Catch or beat it and he gives you the scope.'),
  -- 66: Fortree City
  (5, 66, 153, NULL, 'Back in town, use the Devon Scope on the invisible Pokémon in front of the Gym.'),
  -- 67: Feather Badge (milestone)
  (5, 67, NULL, 50009, NULL),
  -- 68: Route 120
  (5, 68, 220, NULL, 'South from Fortree City through tall grass and rain. The Ancient Tomb stands sealed on the western plateau, and Scorched Slab juts out of the pond.'),
  -- 69: Route 121
  (5, 69, 221, NULL, 'Grunts at the top of the stairs leave for Mt. Pyre. The Safari Zone''s gate is on this road.'),
  -- 70: Safari Zone
  (5, 70, 237, NULL, 'Costs 500 Pokédollars for 30 Safari Balls and 500 steps. One of its four areas needs the Mach Bike and another the Acro Bike.'),
  -- 71: Route 122
  (5, 71, 222, NULL, 'A short stretch of sea around Mt. Pyre.'),
  -- 72: Mt. Pyre (milestone)
  (5, 72, NULL, 50028, NULL),
  -- 73: Route 123
  (5, 73, 223, NULL, 'West of Mt. Pyre, back toward Mauville City. The Berry Master''s house hands out rare Berries every day.'),
  -- 74: Slateport City
  (5, 74, 244, NULL, 'Captain Stern is being interviewed outside the harbour about an undersea cavern on Route 128. Maxie in Ruby or Archie in Sapphire takes his submarine and leaves for Lilycove City.'),
  -- 75: Lilycove City
  (5, 75, 157, NULL, 'A big port with Hoenn''s Department Store, an art museum and the Master Rank Contest Hall. Grunts are all over town and one blocks the sea to the east. Your rival waits in front of the Department Store. The Move Deleter lives here.'),
  -- 76: Team Magma or Aqua Hideout (milestone)
  (5, 76, NULL, 50029, NULL),
  -- 77: Route 124
  (5, 77, 224, NULL, 'East of Lilycove City by sea. The Treasure Hunter''s house trades Shards for evolution stones.'),
  -- 78: Mossdeep City
  (5, 78, 195, NULL, 'An island city with the Space Center. Steven, in the northwest house, gives you HM08 Dive. A Fisherman in the northeast house gives you the Super Rod, and a boy west of the Pokémon Center a King''s Rock. Tate and Liza''s Gym uses Psychic types.'),
  -- 79: Mind Badge (milestone)
  (5, 79, NULL, 50010, NULL),
  -- 80: Route 127
  (5, 80, 227, NULL, 'South of Mossdeep City by sea.'),
  -- 81: Route 128
  (5, 81, 228, NULL, 'Dive at the dark patch of water to find the Seafloor Cavern, where the stolen submarine sits.'),
  -- 82: Seafloor Cavern (milestone)
  (5, 82, NULL, 50019, NULL),
  -- 83: Route 128
  (5, 83, 228, NULL, 'Back on the surface the weather has gone wild. The two team leaders leave together, and Steven says the cause lies above Sootopolis City.'),
  -- 84: Route 126
  (5, 84, 226, NULL, 'Sootopolis City sits inside a crater in this sea. Dive under it to find the way in.'),
  -- 85: Sootopolis City
  (5, 85, 246, NULL, 'A city in a crater, reached only by sea or sky. Everyone has shut themselves in. Steven takes you to Wallace, who leads you to the Cave of Origin because you carry the orb.'),
  -- 86: Cave of Origin (milestone)
  (5, 86, NULL, 50023, NULL),
  -- 87: Sootopolis City
  (5, 87, 246, NULL, 'With the weather calm, the Gym on the island is open. Wallace''s Gym uses Water types. A woman east of the Pokémon Center gives you a Wailmer Doll.'),
  -- 88: Rain Badge (milestone)
  (5, 88, NULL, 50011, NULL),
  -- 89: Route 129
  (5, 89, 229, NULL, 'Open sea south of Route 128, heading west.'),
  -- 90: Route 130
  (5, 90, 230, NULL, 'On rare days, Mirage Island shows up in this stretch of sea.'),
  -- 91: Route 131
  (5, 91, 231, NULL, 'The Sky Pillar rises from an island here. Pacifidlog Town floats at the west end.'),
  -- 92: Pacifidlog Town
  (5, 92, 198, NULL, 'A town on rafts. Its people tell of three Pokémon of rock, ice and steel, and of a Pokémon that flies high above Hoenn. The Fan Club chairman''s brother gives you TM27 Return or TM21 Frustration.'),
  -- 93: Route 132
  (5, 93, 232, NULL, 'A fast current carries you west from Pacifidlog Town.'),
  -- 94: Route 133
  (5, 94, 233, NULL, 'The current runs on west.'),
  -- 95: Route 134
  (5, 95, 234, NULL, 'The last of the currents, ending by Slateport City. A dive spot on the way leads to the Sealed Chamber.'),
  -- 96: Sealed Chamber (milestone)
  (5, 96, NULL, 50020, NULL),
  -- 97: Abandoned Ship
  (5, 97, 140, NULL, 'A half-sunken ship on Route 108. Find the Scanner in its flooded cabins with Dive, and Captain Stern trades you a DeepSeaTooth or a DeepSeaScale for it.'),
  -- 98: Ever Grande City
  (5, 98, 150, NULL, 'Climb the waterfall with HM07 Waterfall to reach the island''s Pokémon Center, the last stop before Victory Road.'),
  -- 99: Victory Road
  (5, 99, 252, NULL, 'A long cave with dark lower floors and boulders to push. Wally stops you near the exit for one more battle.'),
  -- 100: Ever Grande City
  (5, 100, 150, NULL, 'Past Victory Road, a stone walkway leads to the Pokémon League. Stock up at its Poké Mart. Once you face the Elite Four, there''s no way out until you win or lose.'),
  -- 101: Pokémon League (milestone)
  (5, 101, NULL, 50016, NULL),
  -- 102: Roaming Latios or Latias (milestone)
  (5, 102, NULL, 50022, NULL),
  -- 103: Sky Pillar (milestone)
  (5, 103, NULL, 50021, NULL);
