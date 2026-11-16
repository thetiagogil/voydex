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
  note,
  game_id
) VALUES
  -- 1: Littleroot Town
  (14, 1, 158, NULL, 'Your new home town. You arrive in the back of the moving truck and set the clock in your room. Professor Birch and your rival, May or Brendan, live next door.', NULL),
  -- 2: Route 101
  (14, 2, 201, NULL, 'North of Littleroot Town. Professor Birch is running from a wild Pokémon here, and his bag lies on the ground.', NULL),
  -- 3: Choose Starter (milestone)
  (14, 3, NULL, 140001, NULL, NULL),
  -- 4: Littleroot Town
  (14, 4, 158, NULL, 'Professor Birch takes you back to his lab and lets you keep the Pokémon. He sends you to find your rival on Route 103.', NULL),
  -- 5: Route 101
  (14, 5, 201, NULL, 'North again to Oldale Town.', NULL),
  -- 6: Oldale Town
  (14, 6, 832, NULL, 'A small town. The Poké Mart clerk shows you the shop and hands you a free Potion. A man studying footprints blocks the road west.', NULL),
  -- 7: Route 103
  (14, 7, 203, NULL, 'Your rival is at the north end, studying wild Pokémon, and battles you.', NULL),
  -- 8: Oldale Town
  (14, 8, 832, NULL, 'Back through town on the way to the lab.', NULL),
  -- 9: Route 101
  (14, 9, 201, NULL, 'South to Littleroot Town, hopping down the ledges.', NULL),
  -- 10: Receive Pokédex (milestone)
  (14, 10, NULL, 140002, NULL, NULL),
  -- 11: Route 101
  (14, 11, 201, NULL, 'Your rival catches up with you on the way north and hands you the DexNav from the professor. After the credits, Professor Birch waits on this route with a Johto starter for you, then an Unova one after the Delta Episode and a Sinnoh one after your second Hall of Fame.', NULL),
  -- 12: Oldale Town
  (14, 12, 832, NULL, 'The man has finished his sketch, so the road west is open. The footprints were his own.', NULL),
  -- 13: Route 102
  (14, 13, 202, NULL, 'West of Oldale Town to Petalburg City. Berry trees grow in the soft soil on the north side.', NULL),
  -- 14: Petalburg City
  (14, 14, 199, NULL, 'Your father Norman leads the Gym here, but he won''t battle you until you have four badges. He asks you to help a sickly boy, Wally, catch his first Pokémon.', NULL),
  -- 15: Route 104
  (14, 15, 204, NULL, 'Along the beach, past Mr. Briney''s cottage, to Petalburg Woods.', NULL),
  -- 16: Petalburg Woods
  (14, 16, 200, NULL, 'A Devon researcher is attacked by a Team Magma Grunt in Omega Ruby or a Team Aqua Grunt in Alpha Sapphire. Beat the Grunt and the researcher gives you an Exp. Share.', NULL),
  -- 17: Route 104
  (14, 17, 204, NULL, 'North of the woods, the Pretty Petal flower shop gives you the Wailmer Pail for watering Berries.', NULL),
  -- 18: Rustboro City
  (14, 18, 235, NULL, 'A city of stone, home of the Devon Corporation. Roxanne''s Gym uses Rock types. The Cutter, in the house west of the Pokémon Center, gives you HM01 Cut, and the school''s teacher a Quick Claw.', NULL),
  -- 19: Stone Badge (milestone)
  (14, 19, NULL, 140003, NULL, NULL),
  -- 20: Route 116
  (14, 20, 216, NULL, 'A Grunt has robbed the Devon researcher and run this way. At the tunnel''s mouth, an old man says the thief took his Wingull too.', NULL),
  -- 21: Rusturf Tunnel (milestone)
  (14, 21, NULL, 140034, NULL, NULL),
  -- 22: Route 116
  (14, 22, 216, NULL, 'Back down the road to Rustboro City with the Devon Parts.', NULL),
  -- 23: Rustboro City
  (14, 23, 235, NULL, 'The researcher takes you into the Devon Corporation to meet his boss. Mr. Briney can sail you to Dewford Town.', NULL),
  -- 24: Devon Corporation
  (14, 24, 148, NULL, 'On the third floor, Mr. Stone, Devon''s president, adds the BuzzNav to your PokéNav Plus and gives you a Letter for Steven in Dewford Town and the parts to take to Slateport City.', NULL),
  -- 25: Route 104
  (14, 25, 204, NULL, 'South out of Rustboro City to the woods.', NULL),
  -- 26: Petalburg Woods
  (14, 26, 200, NULL, 'Back south through the woods to the beach.', NULL),
  -- 27: Route 104
  (14, 27, 204, NULL, 'Mr. Briney, at his cottage on the beach, sails you to Dewford Town.', NULL),
  -- 28: Dewford Town
  (14, 28, 149, NULL, 'A small island town. Brawly''s Gym uses Fighting types and is pitch dark inside. The Fisherman east of the Gym gives you an Old Rod.', NULL),
  -- 29: Knuckle Badge (milestone)
  (14, 29, NULL, 140004, NULL, NULL),
  -- 30: Route 106
  (14, 30, 206, NULL, 'The beach west of Dewford Town leads to Granite Cave.', NULL),
  -- 31: Granite Cave
  (14, 31, 154, NULL, 'A Hiker near the entrance gives you TM70 Flash. Steven is in the far room, looking at an old wall painting. Hand him the Letter and he gives you TM51 Steel Wing.', NULL),
  -- 32: Dewford Town
  (14, 32, 149, NULL, 'Mr. Briney waits at the pier to sail you on to Slateport City.', NULL),
  -- 33: Route 109
  (14, 33, 209, NULL, 'The beach south of Slateport City. Beat the trainers in the Seashore House and the owner gives you six bottles of Soda Pop.', NULL),
  -- 34: Slateport City
  (14, 34, 244, NULL, 'A port with an open-air market. Captain Stern is away from his shipyard, and a line of Grunts waits outside the Oceanic Museum. On your way out north, Lisia, the contest star, hands you a Contest Pass and a Pokéblock Kit. Enter one contest and a breeder gives you a Cosplay Pikachu.', NULL),
  -- 35: Contest Hall
  (14, 35, 146, NULL, 'A side trip to Slateport''s Contest Hall, where Contest Spectaculars are held. Verdanturf Town, Fallarbor Town and Lilycove City have one too.', NULL),
  -- 36: Oceanic Museum (milestone)
  (14, 36, NULL, 140035, NULL, NULL),
  -- 37: Route 110
  (14, 37, 210, NULL, 'North to Mauville City under the Cycling Road. The Trick House stands near the turn to Route 103. Your rival stops you for a battle.', NULL),
  -- 38: Mauville City
  (14, 38, 837, NULL, 'The crossroads of Hoenn, now one big indoor mall. Rydel gives you a free bike, the Mach Bike or the Acro Bike, and swaps it whenever you ask. Wally asks you for a battle in front of the Gym, and his uncle then gives you HM06 Rock Smash. Wattson''s Gym uses Electric types.', NULL),
  -- 39: Dynamo Badge (milestone)
  (14, 39, NULL, 140005, NULL, NULL),
  -- 40: Route 117
  (14, 40, 217, NULL, 'West of Mauville City. The Day Care here raises up to two Pokémon and may find an Egg.', NULL),
  -- 41: Verdanturf Town
  (14, 41, 839, NULL, 'A quiet town with clean air, where Wally is staying with his relatives. His cousin Wanda worries about her boyfriend, who is digging in Rusturf Tunnel.', NULL),
  -- 42: Rusturf Tunnel
  (14, 42, 236, NULL, 'Break the rocks in the tunnel with Rock Smash to bring Wanda and her boyfriend together. The tunnel becomes a shortcut to Rustboro City.', NULL),
  -- 43: Verdanturf Town
  (14, 43, 839, NULL, 'Back the way you came.', NULL),
  -- 44: Route 117
  (14, 44, 217, NULL, 'East again to Mauville City.', NULL),
  -- 45: Mauville City
  (14, 45, 837, NULL, 'Take the north exit onto Route 111.', NULL),
  -- 46: Route 111
  (14, 46, 211, NULL, 'North of Mauville City, past rocks that need Rock Smash. The Winstrate family battles you four times in a row for a Macho Brace. A sandstorm closes the desert, so turn west onto Route 112.', NULL),
  -- 47: Route 112
  (14, 47, 212, NULL, 'Your rival heals your team and gives you HM04 Strength. Grunts block the cable car up Mt. Chimney, so go through the Fiery Path.', NULL),
  -- 48: Fiery Path
  (14, 48, 152, NULL, 'A hot tunnel through the foot of Mt. Chimney. Boulders that need Strength close its side paths.', NULL),
  -- 49: Route 111
  (14, 49, 211, NULL, 'North of the desert. Aarune shows you how to make a Secret Base and gives you TM94 Secret Power. An old woman''s house heals your team.', NULL),
  -- 50: Route 113
  (14, 50, 213, NULL, 'Always under falling volcanic ash. The Glass Workshop gives you a Soot Sack and trades the ash you gather for glass items.', NULL),
  -- 51: Fallarbor Town
  (14, 51, 840, NULL, 'A farming town. Lanette, who runs the Pokémon Storage System, is at the Pokémon Center''s PC. The Move Reminder teaches a forgotten move again for a Heart Scale. Professor Cozmo has gone to Meteor Falls with some strangers.', NULL),
  -- 52: Route 114
  (14, 52, 214, NULL, 'Southwest of Fallarbor Town to Meteor Falls. The Fossil Maniac''s brother gives you TM28 Dig, and Lanette''s house stands by the water.', NULL),
  -- 53: Meteor Falls (milestone)
  (14, 53, NULL, 140036, NULL, NULL),
  -- 54: Route 115
  (14, 54, 215, NULL, 'Out of the west side of Meteor Falls and down the coast to Rustboro City. Take Rusturf Tunnel back east to Mauville City.', NULL),
  -- 55: Route 112
  (14, 55, 212, NULL, 'The Grunts have left the cable car station. Ride up to the summit.', NULL),
  -- 56: Mt. Chimney (milestone)
  (14, 56, NULL, 140019, NULL, NULL),
  -- 57: Jagged Pass
  (14, 57, 155, NULL, 'The rough path down the south side of Mt. Chimney to Lavaridge Town. Going back up needs the Acro Bike.', NULL),
  -- 58: Lavaridge Town
  (14, 58, 156, NULL, 'A hot spring town. Flannery''s Gym uses Fire types. An old woman by the hot spring gives you a Wynaut Egg, and a Togepi Egg once the weather crisis is over, and the old man in the Herb Shop a piece of Charcoal. After you win, your rival meets you outside with the Go-Goggles.', NULL),
  -- 59: Heat Badge (milestone)
  (14, 59, NULL, 140007, NULL, NULL),
  -- 60: Route 111
  (14, 60, 211, NULL, 'With the Go-Goggles the desert is open. Its sandstorm has uncovered two fossils, and the Desert Ruins stand sealed at its south end.', NULL),
  -- 61: Fossil Choice (milestone)
  (14, 61, NULL, 140006, NULL, NULL),
  -- 62: Petalburg City
  (14, 62, 199, NULL, 'Back west through Verdanturf Town and Rustboro City. With four badges, your father accepts your challenge. After you win, Wally''s father next door gives you HM03 Surf.', NULL),
  -- 63: Balance Badge (milestone)
  (14, 63, NULL, 140008, NULL, NULL),
  -- 64: Route 118
  (14, 64, 218, NULL, 'East of Mauville City, across the water. The Fisherman on the far shore gives you a Good Rod. Steven is on the beach when Latias in Omega Ruby or Latios in Alpha Sapphire flies down and carries you both off.', NULL),
  -- 65: Southern Island (milestone)
  (14, 65, NULL, 140037, NULL, NULL),
  -- 66: Route 119
  (14, 66, 219, NULL, 'A long, rainy road north through tall grass. Grunts guard the bridge outside the Weather Institute. Drive them out and a scientist inside gives you a Castform.', NULL),
  -- 67: Weather Institute (milestone)
  (14, 67, NULL, 140038, NULL, NULL),
  -- 68: Route 119
  (14, 68, 219, NULL, 'Past the Institute, your rival battles you on the way up to Fortree City.', NULL),
  -- 69: Fortree City
  (14, 69, 153, NULL, 'A town of treehouses. Winona''s Gym uses Flying types, but something you can''t see blocks the way to it. An old woman''s coin game wins you TM10 Hidden Power.', NULL),
  -- 70: Route 120
  (14, 70, 220, NULL, 'Steven waits on the bridge east of town. His Devon Scope shows the invisible Pokémon in your way, and it attacks. Catch or beat it and he gives you the scope, and a Mega Stone for your starter.', NULL),
  -- 71: Fortree City
  (14, 71, 153, NULL, 'Back in town, use the Devon Scope on the invisible Pokémon in front of the Gym.', NULL),
  -- 72: Feather Badge (milestone)
  (14, 72, NULL, 140009, NULL, NULL),
  -- 73: Route 120
  (14, 73, 220, NULL, 'South from Fortree City through tall grass and rain. The Ancient Tomb stands sealed on the western plateau, and Scorched Slab juts out of the pond.', NULL),
  -- 74: Route 121
  (14, 74, 221, NULL, 'Grunts at the top of the stairs leave for Mt. Pyre. The Safari Zone''s gate is on this road.', NULL),
  -- 75: Safari Zone
  (14, 75, 237, NULL, 'Free to enter in these games, with no Safari Balls and no step limit. Some of its areas need the Mach Bike or the Acro Bike.', NULL),
  -- 76: Lilycove City
  (14, 76, 157, NULL, 'A big port with Hoenn''s Department Store, an art museum and the Master Rank Contest Hall. The Move Deleter lives here. Route 122 leaves Route 121 just west of town, south to Mt. Pyre.', NULL),
  -- 77: Route 122
  (14, 77, 222, NULL, 'A short stretch of sea around Mt. Pyre.', NULL),
  -- 78: Mt. Pyre (milestone)
  (14, 78, NULL, 140039, NULL, NULL),
  -- 79: Route 123
  (14, 79, 223, NULL, 'West of Mt. Pyre, back toward Mauville City. The Berry Master''s house hands out rare Berries every day.', NULL),
  -- 80: Slateport City
  (14, 80, 244, NULL, 'Fly to Slateport City. Captain Stern is being interviewed outside the harbour about an undersea cavern on Route 128. Maxie in Omega Ruby or Archie in Alpha Sapphire takes his submarine and leaves for Lilycove City.', NULL),
  -- 81: Lilycove City
  (14, 81, 157, NULL, 'Fly back to Lilycove City. Grunts are all over town and one blocks the sea to the east. Your rival waits in front of the Department Store.', NULL),
  -- 82: Team Magma Hideout
  (14, 82, 249, NULL, 'In Omega Ruby, Team Magma has built its hideout in a big cave near Lilycove City, reached by sea. Its warp panels lead to the boss''s office.', 23),
  -- 83: Team Aqua Hideout
  (14, 83, 248, NULL, 'In Alpha Sapphire, Team Aqua has built its hideout in a big cave near Lilycove City, reached by sea. Its warp panels lead to the boss''s office.', 24),
  -- 84: Team Magma or Aqua Hideout (milestone)
  (14, 84, NULL, 140040, NULL, NULL),
  -- 85: Route 124
  (14, 85, 224, NULL, 'East of Lilycove City by sea. The Treasure Hunter''s house trades Shards for evolution stones.', NULL),
  -- 86: Mossdeep City
  (14, 86, 195, NULL, 'An island city with the Space Center. A Fisherman gives you the Super Rod. Tate and Liza''s Gym uses Psychic types. After you win, a pillar of light bursts from the sea to the south. After the Delta Episode, a Beldum waits in Steven''s house.', NULL),
  -- 87: Mind Badge (milestone)
  (14, 87, NULL, 140010, NULL, NULL),
  -- 88: Route 125
  (14, 88, 225, NULL, 'A side trip north of Mossdeep City by sea. Shoal Cave stands in the rocks in the middle.', NULL),
  -- 89: Shoal Cave
  (14, 89, 242, NULL, 'The tide changes the cave every six hours, flooding some rooms and draining others. Some parts need the Mach Bike. The old man inside makes a Shell Bell from the Shoal Salt and Shoal Shells you gather. Then back to Mossdeep City.', NULL),
  -- 90: Route 127
  (14, 90, 227, NULL, 'South of Mossdeep City by sea.', NULL),
  -- 91: Route 128
  (14, 91, 228, NULL, 'Dive at the dark patch of water to find the Seafloor Cavern, where the stolen submarine sits.', NULL),
  -- 92: Underwater
  (14, 92, 250, NULL, 'The seabed under Route 128. The Seafloor Cavern opens here.', NULL),
  -- 93: Seafloor Cavern (milestone)
  (14, 93, NULL, 140020, NULL, NULL),
  -- 94: Route 128
  (14, 94, 228, NULL, 'Back on the surface the weather has gone wild. Steven tells you to meet him in Sootopolis City.', NULL),
  -- 95: Route 126
  (14, 95, 226, NULL, 'Sootopolis City sits inside a crater in this sea. Dive under it to find the way in.', NULL),
  -- 96: Sootopolis City
  (14, 96, 246, NULL, 'A city in a crater, reached only by sea or sky. Everyone has shut themselves in. Wallace leads you and Steven to the Cave of Origin, where Maxie, Archie and their Admins hand you the Magma Suit in Omega Ruby or the Aqua Suit in Alpha Sapphire.', NULL),
  -- 97: Cave of Origin (milestone)
  (14, 97, NULL, 140033, NULL, NULL),
  -- 98: Sootopolis City
  (14, 98, 246, NULL, 'With the weather calm, Steven gives you the Eon Flute, which calls Latias or Latios to fly you over Hoenn. The Gym on the island is open, and Wallace uses Water types.', NULL),
  -- 99: Rain Badge (milestone)
  (14, 99, NULL, 140011, NULL, NULL),
  -- 100: New Mauville
  (14, 100, 197, NULL, 'A side trip. Fly to Mauville City and take Route 110 to New Mauville, an underground city left unfinished. Its magnetic field can make some Pokémon evolve.', NULL),
  -- 101: Route 129
  (14, 101, 229, NULL, 'Fly back to Sootopolis City, Dive back out and Surf to Route 128. This is the open sea south of it, heading west.', NULL),
  -- 102: Route 130
  (14, 102, 230, NULL, 'Open sea, heading west.', NULL),
  -- 103: Route 131
  (14, 103, 231, NULL, 'The Sky Pillar rises from an island here. Pacifidlog Town floats at the west end.', NULL),
  -- 104: Pacifidlog Town
  (14, 104, 198, NULL, 'A town on rafts over a Corsola colony. Its people tell of three Pokémon of rock, ice and steel.', NULL),
  -- 105: Route 132
  (14, 105, 232, NULL, 'A fast current carries you west from Pacifidlog Town.', NULL),
  -- 106: Route 133
  (14, 106, 233, NULL, 'The current runs on west.', NULL),
  -- 107: Route 134
  (14, 107, 234, NULL, 'The last of the currents, ending by Slateport City. A dive spot on the way leads to the Sealed Chamber.', NULL),
  -- 108: Sealed Chamber (milestone)
  (14, 108, NULL, 140021, NULL, NULL),
  -- 109: Route 105
  (14, 109, 205, NULL, 'A side trip by sea between Petalburg City and Dewford Town. Island Cave stands on a small island here.', NULL),
  -- 110: Route 107
  (14, 110, 207, NULL, 'A short stretch of sea east of Dewford Town.', NULL),
  -- 111: Route 108
  (14, 111, 208, NULL, 'Sea on toward Slateport City. The old sea base of Sea Mauville stands in these waters.', NULL),
  -- 112: Ever Grande City
  (14, 112, 150, NULL, 'Fly to Mossdeep City and Surf south to Route 128, then east. Climb the waterfall with HM05 Waterfall to reach the island''s Pokémon Center, the last stop before Victory Road.', NULL),
  -- 113: Victory Road
  (14, 113, 252, NULL, 'A long cave with dark lower floors and boulders to push. Wally stops you near the exit for one more battle.', NULL),
  -- 114: Ever Grande City
  (14, 114, 150, NULL, 'Past Victory Road, a stone walkway leads to the Pokémon League. Stock up at its Poké Mart. Once you face the Elite Four, there''s no way out until you win or lose.', NULL),
  -- 115: Pokémon League (milestone)
  (14, 115, NULL, 140016, NULL, NULL),
  -- 116: Delta Episode (milestone)
  (14, 116, NULL, 140018, NULL, NULL),
  -- 117: Scorched Slab (milestone)
  (14, 117, NULL, 140022, NULL, NULL),
  -- 118: Sea Mauville (milestone)
  (14, 118, NULL, 140023, NULL, NULL),
  -- 119: Crescent Isle (milestone)
  (14, 119, NULL, 140024, NULL, NULL),
  -- 120: Storm Clouds (milestone)
  (14, 120, NULL, 140025, NULL, NULL),
  -- 121: Regigigas in Island Cave (milestone)
  (14, 121, NULL, 140026, NULL, NULL),
  -- 122: Trackless Forest (milestone)
  (14, 122, NULL, 140027, NULL, NULL),
  -- 123: Nameless Cavern (milestone)
  (14, 123, NULL, 140028, NULL, NULL),
  -- 124: Dimensional Rift (milestone)
  (14, 124, NULL, 140029, NULL, NULL),
  -- 125: Pathless Plain (milestone)
  (14, 125, NULL, 140030, NULL, NULL),
  -- 126: Fabled Cave (milestone)
  (14, 126, NULL, 140031, NULL, NULL),
  -- 127: Gnarled Den (milestone)
  (14, 127, NULL, 140032, NULL, NULL),
  -- 128: Mirage Spots (milestone)
  (14, 128, NULL, 140041, NULL, NULL),
  -- 129: Battle Resort
  (14, 129, 144, NULL, 'Take the ferry from Slateport City or Lilycove City to this island of battle facilities. Wally waits here, and the Battle Maison holds its toughest challenges.', NULL);
