-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's Emerald walkthrough, all 21 parts (the order the
-- story passes each place and reaches each beat, and what happens there),
-- with its location pages for the places.
-- Cross-check: the pret pokeemerald disassembly's map scripts.
-- Scope: Pokémon Emerald Story roadmap.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_roadmap_steps
-- Emerald's Story roadmap, step by step, in Red / Blue's pattern: a place the
-- walkthrough passes (location_id) or a milestone (milestone_id), which sits
-- at its own place. Places repeat where the walkthrough comes back. Every
-- Emerald milestone is one step where the walkthrough reaches it: the
-- optional Fossil Choice in Mirage Tower after the Heat Badge, Rayquaza back
-- on the Sky Pillar after the Rain Badge, the Sealed Chamber on the way to
-- Ever Grande City, and the roaming Latias or Latios, Steven, Terra Cave and
-- Marine Cave after the League.
-- A place step carries a note on what happens there. It shows in the place's
-- detail only, and never lists the Pokémon found there, which the detail
-- already shows.
-- ============================================================================
INSERT INTO tracking.mainline_roadmap_steps (
  version_group_id,
  sort_order,
  location_id,
  milestone_id,
  note
) VALUES
  -- 1: Littleroot Town
  (7, 1, 158, NULL, 'Your new home town. You arrive in the back of the moving truck and set the clock in your room. Professor Birch and your rival, May or Brendan, live next door.'),
  -- 2: Route 101
  (7, 2, 201, NULL, 'North of Littleroot Town. Professor Birch is running from a wild Pokémon here, and his bag lies on the ground.'),
  -- 3: Choose Starter (milestone)
  (7, 3, NULL, 70001, NULL),
  -- 4: Littleroot Town
  (7, 4, 158, NULL, 'Professor Birch takes you back to his lab and lets you keep the Pokémon. He sends you to find your rival on Route 103.'),
  -- 5: Route 101
  (7, 5, 201, NULL, 'North again to Oldale Town.'),
  -- 6: Oldale Town
  (7, 6, 832, NULL, 'A small town. The Poké Mart clerk shows you the shop and hands you a free Potion. A man studying footprints blocks the road west.'),
  -- 7: Route 103
  (7, 7, 203, NULL, 'Your rival is at the north end, studying wild Pokémon, and battles you.'),
  -- 8: Oldale Town
  (7, 8, 832, NULL, 'Back through town on the way to the lab.'),
  -- 9: Route 101
  (7, 9, 201, NULL, 'South to Littleroot Town, hopping down the ledges.'),
  -- 10: Receive Pokédex (milestone)
  (7, 10, NULL, 70002, NULL),
  -- 11: Littleroot Town
  (7, 11, 158, NULL, 'Your mom stops you outside with the Running Shoes. Much later, filling the Hoenn Pokédex earns you a Chikorita, Cyndaquil or Totodile from Professor Birch.'),
  -- 12: Route 101
  (7, 12, 201, NULL, 'North once more, now with a Pokédex and Poké Balls.'),
  -- 13: Oldale Town
  (7, 13, 832, NULL, 'The man has finished his sketch, so the road west is open. The footprints were his own.'),
  -- 14: Route 102
  (7, 14, 202, NULL, 'West of Oldale Town to Petalburg City. Berry trees grow in the soft soil on the north side.'),
  -- 15: Petalburg City
  (7, 15, 199, NULL, 'Your father Norman leads the Gym here, but he won''t battle you until you have four badges. He asks you to help a sickly boy, Wally, catch his first Pokémon. A man in sunglasses stops you on your way out of town.'),
  -- 16: Route 104
  (7, 16, 204, NULL, 'Along the beach, past Mr. Briney''s cottage, to Petalburg Woods.'),
  -- 17: Petalburg Woods
  (7, 17, 200, NULL, 'A Devon researcher is attacked by a Team Aqua Grunt. Beat the Grunt and the researcher gives you a Great Ball.'),
  -- 18: Route 104
  (7, 18, 204, NULL, 'North of the woods, the Pretty Petal flower shop gives you the Wailmer Pail for watering Berries.'),
  -- 19: Rustboro City
  (7, 19, 235, NULL, 'A city of stone, home of the Devon Corporation. Roxanne''s Gym uses Rock types. The Cutter, in the house west of the Pokémon Center, gives you HM01 Cut, and the school''s teacher a Quick Claw.'),
  -- 20: Stone Badge (milestone)
  (7, 20, NULL, 70003, NULL),
  -- 21: Route 116
  (7, 21, 216, NULL, 'A Team Aqua Grunt has robbed the Devon researcher and run this way. At the tunnel''s mouth, an old man says the thief took his Wingull too.'),
  -- 22: Rusturf Tunnel (milestone)
  (7, 22, NULL, 70029, NULL),
  -- 23: Route 116
  (7, 23, 216, NULL, 'Back down the road to Rustboro City with the Devon Goods.'),
  -- 24: Rustboro City
  (7, 24, 235, NULL, 'The researcher takes you into the Devon Corporation to meet his boss. Your rival waits outside the Poké Mart, has seen Mr. Briney, who can sail you to Dewford Town, and offers a battle.'),
  -- 25: Devon Corporation
  (7, 25, 148, NULL, 'On the third floor, Mr. Stone, Devon''s president, gives you a PokéNav, a Letter for Steven in Dewford Town and the goods to take to Slateport City.'),
  -- 26: Route 104
  (7, 26, 204, NULL, 'South out of Rustboro City to the woods.'),
  -- 27: Petalburg Woods
  (7, 27, 200, NULL, 'Back south through the woods to the beach.'),
  -- 28: Route 104
  (7, 28, 204, NULL, 'Mr. Briney, at his cottage on the beach, sails you to Dewford Town.'),
  -- 29: Dewford Town
  (7, 29, 149, NULL, 'A small island town. Brawly''s Gym uses Fighting types and is pitch dark inside. The Fisherman outside the Gym gives you an Old Rod.'),
  -- 30: Knuckle Badge (milestone)
  (7, 30, NULL, 70004, NULL),
  -- 31: Route 106
  (7, 31, 206, NULL, 'The beach west of Dewford Town leads to Granite Cave.'),
  -- 32: Granite Cave
  (7, 32, 154, NULL, 'A Hiker at the entrance gives you HM05 Flash. Steven is in the far room. Hand him the Letter and he gives you TM47 Steel Wing.'),
  -- 33: Dewford Town
  (7, 33, 149, NULL, 'Mr. Briney waits at the pier to sail you on to Slateport City.'),
  -- 34: Route 109
  (7, 34, 209, NULL, 'The beach south of Slateport City. Beat the trainers in the Seashore House and the owner gives you six bottles of Soda Pop.'),
  -- 35: Slateport City
  (7, 35, 244, NULL, 'A port with an open-air market and a Battle Tent. Captain Stern is away from his shipyard, and a line of Team Aqua Grunts waits outside the Oceanic Museum.'),
  -- 36: Oceanic Museum (milestone)
  (7, 36, NULL, 70030, NULL),
  -- 37: Route 110
  (7, 37, 210, NULL, 'North to Mauville City under the Cycling Road. The Trick House stands near the turn to Route 103. Your rival stops you for a battle.'),
  -- 38: Mauville City
  (7, 38, 837, NULL, 'The crossroads of Hoenn. Rydel gives you a free bike, the Mach Bike or the Acro Bike, and swaps it whenever you ask. A scientist in the southeast house gives you HM06 Rock Smash. Wattson''s Gym uses Electric types, and Wally, here with his uncle, asks you for a battle in front of it.'),
  -- 39: Dynamo Badge (milestone)
  (7, 39, NULL, 70005, NULL),
  -- 40: Route 117
  (7, 40, 217, NULL, 'West of Mauville City. The Day Care here raises up to two Pokémon and may find an Egg.'),
  -- 41: Verdanturf Town
  (7, 41, 839, NULL, 'A quiet town with clean air, where Wally is staying with his relatives. It has a Battle Tent.'),
  -- 42: Rusturf Tunnel
  (7, 42, 236, NULL, 'Break the rocks in the tunnel with Rock Smash. Wanda''s boyfriend thanks you with HM04 Strength, and the tunnel becomes a shortcut to Rustboro City.'),
  -- 43: Verdanturf Town
  (7, 43, 839, NULL, 'Back the way you came.'),
  -- 44: Route 117
  (7, 44, 217, NULL, 'East again to Mauville City.'),
  -- 45: Mauville City
  (7, 45, 837, NULL, 'Take the north exit onto Route 111.'),
  -- 46: Route 111
  (7, 46, 211, NULL, 'North of Mauville City, past rocks that need Rock Smash. The Winstrate family battles you four times in a row for a Macho Brace. A sandstorm closes the desert, so turn west onto Route 112.'),
  -- 47: Route 112
  (7, 47, 212, NULL, 'Team Magma Grunts block the cable car up Mt. Chimney. Go through the Fiery Path instead.'),
  -- 48: Fiery Path
  (7, 48, 152, NULL, 'A hot tunnel through the foot of Mt. Chimney. Boulders that need Strength close its side paths.'),
  -- 49: Route 111
  (7, 49, 211, NULL, 'North of the desert. A boy by a large tree gives you TM43 Secret Power for making a Secret Base, and an old woman''s house heals your team.'),
  -- 50: Route 113
  (7, 50, 213, NULL, 'Always under falling volcanic ash. The Glass Workshop gives you a Soot Sack and trades the ash you gather for glass items.'),
  -- 51: Fallarbor Town
  (7, 51, 840, NULL, 'A farming town with a Battle Tent. Lanette, who runs the Pokémon Storage System, is at the Pokémon Center''s PC. The Move Maniac teaches a forgotten move again for a Heart Scale.'),
  -- 52: Route 114
  (7, 52, 214, NULL, 'Southwest of Fallarbor Town to Meteor Falls. The Fossil Maniac''s brother gives you TM28 Dig, and Lanette''s house stands by the water.'),
  -- 53: Meteor Falls (milestone)
  (7, 53, NULL, 70031, NULL),
  -- 54: Route 115
  (7, 54, 215, NULL, 'Out of the west side of Meteor Falls and down the coast to Rustboro City. Take Rusturf Tunnel back east to Mauville City.'),
  -- 55: Route 112
  (7, 55, 212, NULL, 'The Grunts have left the cable car station. Ride up to the summit.'),
  -- 56: Mt. Chimney (milestone)
  (7, 56, NULL, 70020, NULL),
  -- 57: Jagged Pass
  (7, 57, 155, NULL, 'The rough path down the south side of Mt. Chimney to Lavaridge Town. Going back up needs the Acro Bike.'),
  -- 58: Lavaridge Town
  (7, 58, 156, NULL, 'A hot spring town. Flannery''s Gym uses Fire types. An old woman by the hot spring gives you a Wynaut Egg, and the old man in the Herb Shop a piece of Charcoal. After you win, your rival meets you outside with the Go-Goggles.'),
  -- 59: Heat Badge (milestone)
  (7, 59, NULL, 70007, NULL),
  -- 60: Route 111
  (7, 60, 211, NULL, 'With the Go-Goggles the desert is open. Mirage Tower comes and goes near its south entrance, and the Desert Ruins stand sealed at its south end.'),
  -- 61: Fossil Choice (milestone)
  (7, 61, NULL, 70006, NULL),
  -- 62: Petalburg City
  (7, 62, 199, NULL, 'Back west through Verdanturf Town and Rustboro City. With four badges, your father accepts your challenge. After you win, Wally''s father next door gives you HM03 Surf.'),
  -- 63: Balance Badge (milestone)
  (7, 63, NULL, 70008, NULL),
  -- 64: Mauville City
  (7, 64, 837, NULL, 'Surf across Route 103 to get back. Wattson, outside the Pokémon Center, asks you to shut down the generator in New Mauville and gives you the Basement Key. He pays you with TM24 Thunderbolt.'),
  -- 65: New Mauville
  (7, 65, 197, NULL, 'A power plant under Mauville City. Surf east from the north end of the Cycling Road on Route 110 to reach it, and step on the coloured floor switches to get to the generator.'),
  -- 66: Route 118
  (7, 66, 218, NULL, 'East of Mauville City, across the water. The Fisherman on the far shore gives you a Good Rod, and Steven greets you on the beach.'),
  -- 67: Route 119
  (7, 67, 219, NULL, 'A long, rainy road north through tall grass. Team Aqua has taken over the Weather Institute by the river. Drive them out and a scientist inside gives you a Castform.'),
  -- 68: Weather Institute (milestone)
  (7, 68, NULL, 70032, NULL),
  -- 69: Route 119
  (7, 69, 219, NULL, 'Past the Institute, your rival battles you on the way up to Fortree City.'),
  -- 70: Fortree City
  (7, 70, 153, NULL, 'A town of treehouses. Winona''s Gym uses Flying types, but something you can''t see blocks the way to it. An old woman''s coin game wins you TM10 Hidden Power.'),
  -- 71: Route 120
  (7, 71, 220, NULL, 'Steven waits on the bridge east of town. His Devon Scope shows the invisible Pokémon in your way, and it attacks. Catch or beat it and he gives you the scope.'),
  -- 72: Fortree City
  (7, 72, 153, NULL, 'Back in town, use the Devon Scope on the invisible Pokémon in front of the Gym.'),
  -- 73: Feather Badge (milestone)
  (7, 73, NULL, 70009, NULL),
  -- 74: Route 120
  (7, 74, 220, NULL, 'South from Fortree City through tall grass and rain. The Ancient Tomb stands sealed on the western plateau, and Scorched Slab juts out of the pond.'),
  -- 75: Route 121
  (7, 75, 221, NULL, 'Team Aqua Grunts at the top of the stairs leave for Mt. Pyre. The Safari Zone''s gate is on this road.'),
  -- 76: Safari Zone
  (7, 76, 237, NULL, 'Costs 500 Pokédollars for 30 Safari Balls and 500 steps, and you need a Pokéblock Case to get in. One of its four areas needs the Mach Bike and another the Acro Bike.'),
  -- 77: Lilycove City
  (7, 77, 157, NULL, 'A big port with Hoenn''s Department Store, an art museum and the Contest Hall, where the receptionist gives you a Pokéblock Case. Team Aqua''s hideout is in the cove, and a herd of Wailmer blocks the sea to the east. The Move Deleter lives here.'),
  -- 78: Route 122
  (7, 78, 222, NULL, 'A short stretch of sea around Mt. Pyre.'),
  -- 79: Mt. Pyre (milestone)
  (7, 79, NULL, 70033, NULL),
  -- 80: Route 123
  (7, 80, 223, NULL, 'West of Mt. Pyre, back toward Mauville City. The Berry Master''s house hands out rare Berries every day.'),
  -- 81: Jagged Pass
  (7, 81, 155, NULL, 'Fly to Lavaridge Town. Ride the cable car up Mt. Chimney and walk down, or climb from Lavaridge Town with the Acro Bike. Partway, a rock face shakes as the Magma Emblem comes near. The hideout''s first room needs Strength.'),
  -- 82: Magma Hideout (milestone)
  (7, 82, NULL, 70021, NULL),
  -- 83: Slateport City
  (7, 83, 244, NULL, 'Fly to Slateport City. Captain Stern is being interviewed outside the harbour about an undersea cavern. Archie takes his submarine and leaves for Lilycove City.'),
  -- 84: Lilycove City
  (7, 84, 157, NULL, 'Your rival waits in front of the Department Store for one last battle. Surf across the cove to Team Aqua''s hideout.'),
  -- 85: Aqua Hideout (milestone)
  (7, 85, NULL, 70034, NULL),
  -- 86: Route 124
  (7, 86, 224, NULL, 'The Wailmer are gone, so the sea east of Lilycove City is open. The Treasure Hunter''s house trades Shards for evolution stones.'),
  -- 87: Mossdeep City
  (7, 87, 195, NULL, 'An island city with the Space Center. A Fisherman in the house above the Gym gives you the Super Rod, and a boy west of the Pokémon Center a King''s Rock. Tate and Liza''s Gym uses Psychic types. After the credits, a Beldum waits on the table in Steven''s house.'),
  -- 88: Mind Badge (milestone)
  (7, 88, NULL, 70010, NULL),
  -- 89: Route 125
  (7, 89, 225, NULL, 'A side trip north of Mossdeep City by sea. Shoal Cave stands in the rocks in the middle.'),
  -- 90: Shoal Cave
  (7, 90, 242, NULL, 'The tide changes the cave every six hours, flooding some rooms and draining others. The old man inside makes a Shell Bell from the Shoal Salt and Shoal Shells you gather. Then back to Mossdeep City.'),
  -- 91: Mossdeep Space Center (milestone)
  (7, 91, NULL, 70027, NULL),
  -- 92: Route 127
  (7, 92, 227, NULL, 'South of Mossdeep City by sea.'),
  -- 93: Route 128
  (7, 93, 228, NULL, 'Dive at the dark patch of water to find the Seafloor Cavern, where the stolen submarine sits.'),
  -- 94: Underwater
  (7, 94, 250, NULL, 'The seabed under Route 128. The Seafloor Cavern opens here.'),
  -- 95: Seafloor Cavern (milestone)
  (7, 95, NULL, 70022, NULL),
  -- 96: Route 128
  (7, 96, 228, NULL, 'Back on the surface, heavy rain and harsh sunlight take turns. Maxie and Archie agree to set things right, and Steven tells you to come to Sootopolis City.'),
  -- 97: Route 126
  (7, 97, 226, NULL, 'Sootopolis City sits inside a crater in this sea. Dive under it to find the way in.'),
  -- 98: Sootopolis City
  (7, 98, 246, NULL, 'A city in a crater, reached only by sea or sky. Groudon and Kyogre are fighting in its lake, and everyone has shut themselves in. Steven takes you to Wallace at the Cave of Origin.'),
  -- 99: Cave of Origin
  (7, 99, 145, NULL, 'Wallace waits just inside the entrance. He asks where Rayquaza is, then leaves for the Sky Pillar.'),
  -- 100: Route 129
  (7, 100, 229, NULL, 'Dive back out of Sootopolis City and Surf to Route 128. This is the open sea south of it, heading west.'),
  -- 101: Route 130
  (7, 101, 230, NULL, 'On rare days, Mirage Island shows up in this stretch of sea.'),
  -- 102: Mirage Island (Generation III)
  (7, 102, 177, NULL, 'On rare days this island rises out of Route 130. The old man in the southeast house of Pacifidlog Town tells you when. A single Liechi Berry grows in its soft soil.'),
  -- 103: Route 131
  (7, 103, 231, NULL, 'The Sky Pillar rises from an island on the north side. Wallace has just unlocked its door.'),
  -- 104: Awaken Rayquaza (milestone)
  (7, 104, NULL, 70028, NULL),
  -- 105: Sootopolis City
  (7, 105, 246, NULL, 'Fly back to Sootopolis City. Rayquaza comes down and the two flee. Wallace gives you HM07 Waterfall. The Gym on the island is open again, now led by Juan, Wallace''s teacher, who uses Water types. A woman east of the Pokémon Center gives you a Wailmer Doll.'),
  -- 106: Rain Badge (milestone)
  (7, 106, NULL, 70011, NULL),
  -- 107: Route 131
  (7, 107, 231, NULL, 'Surf back out west along Routes 129 and 130. Rayquaza is back on top of the Sky Pillar. Pacifidlog Town floats at the west end of the route.'),
  -- 108: Sky Pillar (milestone)
  (7, 108, NULL, 70024, NULL),
  -- 109: Pacifidlog Town
  (7, 109, 198, NULL, 'A town on rafts. Its people tell of three Pokémon of rock, ice and steel. The Fan Club chairman''s brother gives you TM27 Return or TM21 Frustration.'),
  -- 110: Route 132
  (7, 110, 232, NULL, 'A fast current carries you west from Pacifidlog Town.'),
  -- 111: Route 133
  (7, 111, 233, NULL, 'The current runs on west.'),
  -- 112: Route 134
  (7, 112, 234, NULL, 'The last of the currents, ending by Slateport City. A dive spot on the way leads to the Sealed Chamber.'),
  -- 113: Sealed Chamber (milestone)
  (7, 113, NULL, 70023, NULL),
  -- 114: Route 105
  (7, 114, 205, NULL, 'A side trip by sea between Petalburg City and Dewford Town. Island Cave stands on a small island here.'),
  -- 115: Route 107
  (7, 115, 207, NULL, 'A short stretch of sea east of Dewford Town.'),
  -- 116: Route 108
  (7, 116, 208, NULL, 'Sea on toward Slateport City. The Abandoned Ship lies aground in the north shallows.'),
  -- 117: Abandoned Ship
  (7, 117, 140, NULL, 'A half-sunken ship on Route 108. Find the Scanner in its flooded cabins with Dive, and Captain Stern trades you a DeepSeaTooth or a DeepSeaScale for it.'),
  -- 118: Ever Grande City
  (7, 118, 150, NULL, 'Fly to Mossdeep City and Surf south to Route 128, then east. Climb the waterfall with HM07 Waterfall to reach the island''s Pokémon Center, the last stop before Victory Road.'),
  -- 119: Victory Road
  (7, 119, 252, NULL, 'A long cave with dark lower floors and boulders to push. Wally stops you near the exit for one more battle.'),
  -- 120: Ever Grande City
  (7, 120, 150, NULL, 'Past Victory Road, a stone walkway leads to the Pokémon League. Stock up at its Poké Mart. Once you face the Elite Four, there''s no way out until you win or lose.'),
  -- 121: Pokémon League (milestone)
  (7, 121, NULL, 70016, NULL),
  -- 122: Roaming Latias or Latios (milestone)
  (7, 122, NULL, 70018, NULL),
  -- 123: Defeat Steven (milestone)
  (7, 123, NULL, 70019, NULL),
  -- 124: Terra Cave (milestone)
  (7, 124, NULL, 70025, NULL),
  -- 125: Marine Cave (milestone)
  (7, 125, NULL, 70026, NULL),
  -- 126: Altering Cave
  (7, 126, 1, NULL, 'Back on Route 103, a cave has opened on the east bank of the river that divides the route. Only one kind of wild Pokémon lives inside.'),
  -- 127: Desert Underpass
  (7, 127, 147, NULL, 'Fly to Fallarbor Town and visit the Fossil Maniac''s house on Route 114. His digging has opened a sandy tunnel east under the mountains. At its end lies the fossil you left in the desert.'),
  -- 128: Battle Frontier (Generation III)
  (7, 128, 142, NULL, 'Take the S.S. Tidal from Slateport City or Lilycove City. The island holds seven battle facilities for trainers who have beaten the League.'),
  -- 129: Battle Pike
  (7, 129, 143, NULL, 'One of the seven facilities. Its 21 rooms come in sets of three, and each room holds a battle or a surprise.'),
  -- 130: Artisan Cave
  (7, 130, 141, NULL, 'Tunnels across the Battle Frontier''s island, reached by water from its south side. The exit comes out just east of the Battle Tower.'),
  -- 131: Southern Island
  (7, 131, 247, NULL, 'Sail from Lilycove City with the Eon Ticket, an event item, to this island far to the south. A Pokémon of legend waits there.');
