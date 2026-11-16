-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's Omega Ruby / Alpha Sapphire walkthrough, all 25 parts
-- (the order the story passes each place and reaches each beat, and what
-- happens there), with its location pages for the places.
-- Scope: Pokémon Omega Ruby / Alpha Sapphire Story roadmap.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_roadmap_steps
-- Omega Ruby / Alpha Sapphire's Story roadmap, step by step, in Red / Blue's
-- pattern: a place the walkthrough passes (location_id) or a milestone
-- (milestone_id), which sits at its own place. Places repeat where the
-- walkthrough comes back. It is Ruby / Sapphire's route with the remake's
-- own story, and a place keeps Ruby / Sapphire's note where the game plays
-- the same there. The Delta Episode and the legendary Pokémon come after the
-- League.
-- A place step carries a note on what happens there. It shows in the place's
-- detail only, and never lists the Pokémon found there, which the detail
-- already shows. Where the two versions differ, the note names both.
-- ============================================================================
INSERT INTO tracking.mainline_roadmap_steps (
  version_group_id,
  sort_order,
  location_id,
  milestone_id,
  note
) VALUES
  -- 1: Littleroot Town
  (14, 1, 158, NULL, 'Your new home town. You arrive in the back of the moving truck and set the clock in your room. Professor Birch and your rival, May or Brendan, live next door.'),
  -- 2: Route 101
  (14, 2, 201, NULL, 'North of Littleroot Town. Professor Birch is running from a wild Pokémon here, and his bag lies on the ground.'),
  -- 3: Choose Starter (milestone)
  (14, 3, NULL, 140001, NULL),
  -- 4: Littleroot Town
  (14, 4, 158, NULL, 'Professor Birch takes you back to his lab and lets you keep the Pokémon. He sends you to find your rival on Route 103.'),
  -- 5: Route 101
  (14, 5, 201, NULL, 'North again to Oldale Town.'),
  -- 6: Oldale Town
  (14, 6, 832, NULL, 'A small town. The Poké Mart clerk shows you the shop and hands you a free Potion. A man studying footprints blocks the road west.'),
  -- 7: Route 103
  (14, 7, 203, NULL, 'Your rival is at the north end, studying wild Pokémon, and battles you.'),
  -- 8: Oldale Town
  (14, 8, 832, NULL, 'Back through town on the way to the lab.'),
  -- 9: Route 101
  (14, 9, 201, NULL, 'South to Littleroot Town, hopping down the ledges.'),
  -- 10: Receive Pokédex (milestone)
  (14, 10, NULL, 140002, NULL),
  -- 11: Route 101
  (14, 11, 201, NULL, 'Your rival catches up with you on the way north and hands you the DexNav from the professor. After the credits, Professor Birch waits on this route with a Johto starter for you, then an Unova one after the Delta Episode and a Sinnoh one after your second Hall of Fame.'),
  -- 12: Oldale Town
  (14, 12, 832, NULL, 'The man has finished his sketch, so the road west is open. The footprints were his own.'),
  -- 13: Route 102
  (14, 13, 202, NULL, 'West of Oldale Town to Petalburg City. Berry trees grow in the soft soil on the north side.'),
  -- 14: Petalburg City
  (14, 14, 199, NULL, 'Your father Norman leads the Gym here, but he won''t battle you until you have four badges. He asks you to help a sickly boy, Wally, catch his first Pokémon.'),
  -- 15: Route 104
  (14, 15, 204, NULL, 'Along the beach, past Mr. Briney''s cottage, to Petalburg Woods.'),
  -- 16: Petalburg Woods
  (14, 16, 200, NULL, 'A Devon researcher is attacked by a Team Magma Grunt in Omega Ruby or a Team Aqua Grunt in Alpha Sapphire. Beat the Grunt and the researcher gives you an Exp. Share.'),
  -- 17: Route 104
  (14, 17, 204, NULL, 'North of the woods, the Pretty Petal flower shop gives you the Wailmer Pail for watering Berries.'),
  -- 18: Rustboro City
  (14, 18, 235, NULL, 'A city of stone, home of the Devon Corporation. Roxanne''s Gym uses Rock types. The Cutter, in the house west of the Pokémon Center, gives you HM01 Cut, and the school''s teacher a Quick Claw.'),
  -- 19: Stone Badge (milestone)
  (14, 19, NULL, 140003, NULL),
  -- 20: Route 116
  (14, 20, 216, NULL, 'A Grunt has robbed the Devon researcher and run this way. At the tunnel''s mouth, an old man says the thief took his Wingull too.'),
  -- 21: Rusturf Tunnel (milestone)
  (14, 21, NULL, 140034, NULL),
  -- 22: Route 116
  (14, 22, 216, NULL, 'Back down the road to Rustboro City with the Devon Parts.'),
  -- 23: Rustboro City
  (14, 23, 235, NULL, 'The researcher takes you up to Mr. Stone, Devon''s president. He adds the BuzzNav to your PokéNav Plus and gives you a Letter for Steven in Dewford Town and the parts to take to Slateport City. Mr. Briney can sail you there.'),
  -- 24: Route 104
  (14, 24, 204, NULL, 'South out of Rustboro City to the woods.'),
  -- 25: Petalburg Woods
  (14, 25, 200, NULL, 'Back south through the woods to the beach.'),
  -- 26: Route 104
  (14, 26, 204, NULL, 'Mr. Briney, at his cottage on the beach, sails you to Dewford Town.'),
  -- 27: Dewford Town
  (14, 27, 149, NULL, 'A small island town. Brawly''s Gym uses Fighting types and is pitch dark inside. The Fisherman east of the Gym gives you an Old Rod.'),
  -- 28: Knuckle Badge (milestone)
  (14, 28, NULL, 140004, NULL),
  -- 29: Route 106
  (14, 29, 206, NULL, 'The beach west of Dewford Town leads to Granite Cave.'),
  -- 30: Granite Cave
  (14, 30, 154, NULL, 'A Hiker near the entrance gives you TM70 Flash. Steven is in the far room, looking at an old wall painting. Hand him the Letter and he gives you TM51 Steel Wing.'),
  -- 31: Dewford Town
  (14, 31, 149, NULL, 'Mr. Briney waits at the pier to sail you on to Slateport City.'),
  -- 32: Route 109
  (14, 32, 209, NULL, 'The beach south of Slateport City. Beat the trainers in the Seashore House and the owner gives you six bottles of Soda Pop.'),
  -- 33: Slateport City
  (14, 33, 244, NULL, 'A port with an open-air market. Captain Stern is away from his shipyard, and a line of Grunts waits outside the Oceanic Museum. On your way out north, Lisia, the contest star, hands you a Contest Pass and a Pokéblock Kit. Enter one contest and a breeder gives you a Cosplay Pikachu.'),
  -- 34: Oceanic Museum (milestone)
  (14, 34, NULL, 140035, NULL),
  -- 35: Route 110
  (14, 35, 210, NULL, 'North to Mauville City under the Cycling Road. The Trick House stands near the turn to Route 103. Your rival stops you for a battle.'),
  -- 36: Mauville City
  (14, 36, 837, NULL, 'The crossroads of Hoenn, now one big indoor mall. Rydel gives you a free bike, the Mach Bike or the Acro Bike, and swaps it whenever you ask. Wally asks you for a battle in front of the Gym, and his uncle then gives you HM06 Rock Smash. Wattson''s Gym uses Electric types.'),
  -- 37: Dynamo Badge (milestone)
  (14, 37, NULL, 140005, NULL),
  -- 38: Route 117
  (14, 38, 217, NULL, 'West of Mauville City. The Day Care here raises up to two Pokémon and may find an Egg.'),
  -- 39: Verdanturf Town
  (14, 39, 839, NULL, 'A quiet town with clean air, where Wally is staying with his relatives. His cousin Wanda worries about her boyfriend, who is digging in Rusturf Tunnel.'),
  -- 40: Rusturf Tunnel
  (14, 40, 236, NULL, 'Break the rocks in the tunnel with Rock Smash to bring Wanda and her boyfriend together. The tunnel becomes a shortcut to Rustboro City.'),
  -- 41: Verdanturf Town
  (14, 41, 839, NULL, 'Back the way you came.'),
  -- 42: Route 117
  (14, 42, 217, NULL, 'East again to Mauville City.'),
  -- 43: Mauville City
  (14, 43, 837, NULL, 'Take the north exit onto Route 111.'),
  -- 44: Route 111
  (14, 44, 211, NULL, 'North of Mauville City, past rocks that need Rock Smash. The Winstrate family battles you four times in a row for a Macho Brace. A sandstorm closes the desert, so turn west onto Route 112.'),
  -- 45: Route 112
  (14, 45, 212, NULL, 'Your rival heals your team and gives you HM04 Strength. Grunts block the cable car up Mt. Chimney, so go through the Fiery Path.'),
  -- 46: Fiery Path
  (14, 46, 152, NULL, 'A hot tunnel through the foot of Mt. Chimney. Boulders that need Strength close its side paths.'),
  -- 47: Route 111
  (14, 47, 211, NULL, 'North of the desert. Aarune shows you how to make a Secret Base and gives you TM94 Secret Power. An old woman''s house heals your team.'),
  -- 48: Route 113
  (14, 48, 213, NULL, 'Always under falling volcanic ash. The Glass Workshop gives you a Soot Sack and trades the ash you gather for glass items.'),
  -- 49: Fallarbor Town
  (14, 49, 840, NULL, 'A farming town. Lanette, who runs the Pokémon Storage System, is at the Pokémon Center''s PC. The Move Reminder teaches a forgotten move again for a Heart Scale. Professor Cozmo has gone to Meteor Falls with some strangers.'),
  -- 50: Route 114
  (14, 50, 214, NULL, 'Southwest of Fallarbor Town to Meteor Falls. The Fossil Maniac''s brother gives you TM28 Dig, and Lanette''s house stands by the water.'),
  -- 51: Meteor Falls (milestone)
  (14, 51, NULL, 140036, NULL),
  -- 52: Route 115
  (14, 52, 215, NULL, 'Out of the west side of Meteor Falls and down the coast to Rustboro City. Take Rusturf Tunnel back east to Mauville City.'),
  -- 53: Route 112
  (14, 53, 212, NULL, 'The Grunts have left the cable car station. Ride up to the summit.'),
  -- 54: Mt. Chimney (milestone)
  (14, 54, NULL, 140019, NULL),
  -- 55: Jagged Pass
  (14, 55, 155, NULL, 'The rough path down the south side of Mt. Chimney to Lavaridge Town. Going back up needs the Acro Bike.'),
  -- 56: Lavaridge Town
  (14, 56, 156, NULL, 'A hot spring town. Flannery''s Gym uses Fire types. An old woman by the hot spring gives you a Wynaut Egg, and a Togepi Egg once the weather crisis is over, and the old man in the Herb Shop a piece of Charcoal. After you win, your rival meets you outside with the Go-Goggles.'),
  -- 57: Heat Badge (milestone)
  (14, 57, NULL, 140007, NULL),
  -- 58: Route 111
  (14, 58, 211, NULL, 'With the Go-Goggles the desert is open. Its sandstorm has uncovered two fossils, and the Desert Ruins stand sealed at its south end.'),
  -- 59: Fossil Choice (milestone)
  (14, 59, NULL, 140006, NULL),
  -- 60: Petalburg City
  (14, 60, 199, NULL, 'Back west through Verdanturf Town and Rustboro City. With four badges, your father accepts your challenge. After you win, Wally''s father next door gives you HM03 Surf.'),
  -- 61: Balance Badge (milestone)
  (14, 61, NULL, 140008, NULL),
  -- 62: Route 118
  (14, 62, 218, NULL, 'East of Mauville City, across the water. The Fisherman on the far shore gives you a Good Rod. Steven is on the beach when Latias in Omega Ruby or Latios in Alpha Sapphire flies down and carries you both off.'),
  -- 63: Southern Island (milestone)
  (14, 63, NULL, 140037, NULL),
  -- 64: Route 119
  (14, 64, 219, NULL, 'A long, rainy road north through tall grass. Grunts guard the bridge outside the Weather Institute. Drive them out and a scientist inside gives you a Castform.'),
  -- 65: Weather Institute (milestone)
  (14, 65, NULL, 140038, NULL),
  -- 66: Route 119
  (14, 66, 219, NULL, 'Past the Institute, your rival battles you on the way up to Fortree City.'),
  -- 67: Fortree City
  (14, 67, 153, NULL, 'A town of treehouses. Winona''s Gym uses Flying types, but something you can''t see blocks the way to it. An old woman''s coin game wins you TM10 Hidden Power.'),
  -- 68: Route 120
  (14, 68, 220, NULL, 'Steven waits on the bridge east of town. His Devon Scope shows the invisible Pokémon in your way, and it attacks. Catch or beat it and he gives you the scope, and a Mega Stone for your starter.'),
  -- 69: Fortree City
  (14, 69, 153, NULL, 'Back in town, use the Devon Scope on the invisible Pokémon in front of the Gym.'),
  -- 70: Feather Badge (milestone)
  (14, 70, NULL, 140009, NULL),
  -- 71: Route 120
  (14, 71, 220, NULL, 'South from Fortree City through tall grass and rain. The Ancient Tomb stands sealed on the western plateau, and Scorched Slab juts out of the pond.'),
  -- 72: Route 121
  (14, 72, 221, NULL, 'Grunts at the top of the stairs leave for Mt. Pyre. The Safari Zone''s gate is on this road.'),
  -- 73: Safari Zone
  (14, 73, 237, NULL, 'Free to enter in these games, with no Safari Balls and no step limit. Some of its areas need the Mach Bike or the Acro Bike.'),
  -- 74: Lilycove City
  (14, 74, 157, NULL, 'A big port with Hoenn''s Department Store, an art museum and the Master Rank Contest Hall. The Move Deleter lives here. Route 122 leaves Route 121 just west of town, south to Mt. Pyre.'),
  -- 75: Route 122
  (14, 75, 222, NULL, 'A short stretch of sea around Mt. Pyre.'),
  -- 76: Mt. Pyre (milestone)
  (14, 76, NULL, 140039, NULL),
  -- 77: Route 123
  (14, 77, 223, NULL, 'West of Mt. Pyre, back toward Mauville City. The Berry Master''s house hands out rare Berries every day.'),
  -- 78: Slateport City
  (14, 78, 244, NULL, 'Fly to Slateport City. Captain Stern is being interviewed outside the harbour about an undersea cavern on Route 128. Maxie in Omega Ruby or Archie in Alpha Sapphire takes his submarine and leaves for Lilycove City.'),
  -- 79: Lilycove City
  (14, 79, 157, NULL, 'Fly back to Lilycove City. Grunts are all over town and one blocks the sea to the east. Your rival waits in front of the Department Store.'),
  -- 80: Team Magma or Aqua Hideout (milestone)
  (14, 80, NULL, 140040, NULL),
  -- 81: Route 124
  (14, 81, 224, NULL, 'East of Lilycove City by sea. The Treasure Hunter''s house trades Shards for evolution stones.'),
  -- 82: Mossdeep City
  (14, 82, 195, NULL, 'An island city with the Space Center. A Fisherman gives you the Super Rod. Tate and Liza''s Gym uses Psychic types. After you win, a pillar of light bursts from the sea to the south. After the Delta Episode, a Beldum waits in Steven''s house.'),
  -- 83: Mind Badge (milestone)
  (14, 83, NULL, 140010, NULL),
  -- 84: Route 127
  (14, 84, 227, NULL, 'South of Mossdeep City by sea.'),
  -- 85: Route 128
  (14, 85, 228, NULL, 'Dive at the dark patch of water to find the Seafloor Cavern, where the stolen submarine sits.'),
  -- 86: Seafloor Cavern (milestone)
  (14, 86, NULL, 140020, NULL),
  -- 87: Route 128
  (14, 87, 228, NULL, 'Back on the surface the weather has gone wild. Steven tells you to meet him in Sootopolis City.'),
  -- 88: Route 126
  (14, 88, 226, NULL, 'Sootopolis City sits inside a crater in this sea. Dive under it to find the way in.'),
  -- 89: Sootopolis City
  (14, 89, 246, NULL, 'A city in a crater, reached only by sea or sky. Everyone has shut themselves in. Wallace leads you and Steven to the Cave of Origin, where Maxie, Archie and their Admins hand you the Magma Suit in Omega Ruby or the Aqua Suit in Alpha Sapphire.'),
  -- 90: Cave of Origin (milestone)
  (14, 90, NULL, 140033, NULL),
  -- 91: Sootopolis City
  (14, 91, 246, NULL, 'With the weather calm, Steven gives you the Eon Flute, which calls Latias or Latios to fly you over Hoenn. The Gym on the island is open, and Wallace uses Water types.'),
  -- 92: Rain Badge (milestone)
  (14, 92, NULL, 140011, NULL),
  -- 93: Route 129
  (14, 93, 229, NULL, 'Dive back out of Sootopolis City and Surf to Route 128. This is the open sea south of it, heading west.'),
  -- 94: Route 130
  (14, 94, 230, NULL, 'Open sea, heading west.'),
  -- 95: Route 131
  (14, 95, 231, NULL, 'The Sky Pillar rises from an island here. Pacifidlog Town floats at the west end.'),
  -- 96: Pacifidlog Town
  (14, 96, 198, NULL, 'A town on rafts over a Corsola colony. Its people tell of three Pokémon of rock, ice and steel.'),
  -- 97: Route 132
  (14, 97, 232, NULL, 'A fast current carries you west from Pacifidlog Town.'),
  -- 98: Route 133
  (14, 98, 233, NULL, 'The current runs on west.'),
  -- 99: Route 134
  (14, 99, 234, NULL, 'The last of the currents, ending by Slateport City. A dive spot on the way leads to the Sealed Chamber.'),
  -- 100: Sealed Chamber (milestone)
  (14, 100, NULL, 140021, NULL),
  -- 101: Ever Grande City
  (14, 101, 150, NULL, 'Fly to Mossdeep City and Surf south to Route 128, then east. Climb the waterfall with HM05 Waterfall to reach the island''s Pokémon Center, the last stop before Victory Road.'),
  -- 102: Victory Road
  (14, 102, 252, NULL, 'A long cave with dark lower floors and boulders to push. Wally stops you near the exit for one more battle.'),
  -- 103: Ever Grande City
  (14, 103, 150, NULL, 'Past Victory Road, a stone walkway leads to the Pokémon League. Stock up at its Poké Mart. Once you face the Elite Four, there''s no way out until you win or lose.'),
  -- 104: Pokémon League (milestone)
  (14, 104, NULL, 140016, NULL),
  -- 105: Delta Episode (milestone)
  (14, 105, NULL, 140018, NULL),
  -- 106: Scorched Slab (milestone)
  (14, 106, NULL, 140022, NULL),
  -- 107: Sea Mauville (milestone)
  (14, 107, NULL, 140023, NULL),
  -- 108: Crescent Isle (milestone)
  (14, 108, NULL, 140024, NULL),
  -- 109: Storm Clouds (milestone)
  (14, 109, NULL, 140025, NULL),
  -- 110: Regigigas in Island Cave (milestone)
  (14, 110, NULL, 140026, NULL),
  -- 111: Trackless Forest (milestone)
  (14, 111, NULL, 140027, NULL),
  -- 112: Nameless Cavern (milestone)
  (14, 112, NULL, 140028, NULL),
  -- 113: Dimensional Rift (milestone)
  (14, 113, NULL, 140029, NULL),
  -- 114: Pathless Plain (milestone)
  (14, 114, NULL, 140030, NULL),
  -- 115: Fabled Cave (milestone)
  (14, 115, NULL, 140031, NULL),
  -- 116: Gnarled Den (milestone)
  (14, 116, NULL, 140032, NULL);
