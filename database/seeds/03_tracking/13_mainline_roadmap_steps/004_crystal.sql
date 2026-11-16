-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's Crystal walkthrough, all 29 parts, read against its
-- Gold / Silver walkthrough for what Crystal changes, with its location pages
-- for the places.
-- Cross-check: the pret pokecrystal disassembly's map scripts (the closed
-- Ecruteak Gym, Suicune and Eusine in Cianwood City and on Route 42, the Wise
-- Trio and Suicune at the Tin Tower).
-- Scope: Pokémon Crystal Story roadmap.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_roadmap_steps
-- Crystal's Story roadmap, step by step, in Red / Blue's pattern. Crystal
-- walks Gold / Silver's Johto and Kanto in the same order, so the steps match
-- theirs and change only where Crystal does: the Odd Egg on Route 34, Floria
-- and the SquirtBottle, the required Burned Tower, the Battle Tower on Route
-- 40, Suicune and Eusine in Cianwood City and on Route 42, Suicune at the Tin
-- Tower once the Radio Tower is free, the elder's quiz in the Dragon's Den,
-- and the Tin Tower for Ho-Oh and the Ilex Forest shrine after the League.
-- A place step carries a note on what happens there. It shows in the place's
-- detail only, and never lists the Pokémon found there, which the detail
-- already shows (a blocker or a story sighting may be named).
-- ============================================================================
INSERT INTO tracking.mainline_roadmap_steps (
  version_group_id,
  sort_order,
  location_id,
  milestone_id,
  note
) VALUES
  -- 1: New Bark Town
  (4, 1, 101, NULL, 'Your home town in Johto. Professor Elm asks you to visit his friend Mr. Pokémon, and lets you choose a Pokémon in his lab to take along.'),
  -- 2: Choose Starter (milestone)
  (4, 2, NULL, 40001, NULL),
  -- 3: Route 29
  (4, 3, 110, NULL, 'The road west to Cherrygrove City, with ledges you can only hop down. A Berry tree stands on the hill.'),
  -- 4: Cherrygrove City
  (4, 4, 84, NULL, 'The Guide Gent on the east side shows you around town and gives you a Map Card for your Pokégear.'),
  -- 5: Route 30
  (4, 5, 111, NULL, 'Runs north from Cherrygrove City. Two trainers are in the middle of a battle on the west path, so take the east path to Mr. Pokémon''s house.'),
  -- 6: Receive Pokédex (milestone)
  (4, 6, NULL, 40002, NULL),
  -- 7: Route 30
  (4, 7, 111, NULL, 'Professor Elm phones in a panic as you step outside. Head back south to New Bark Town.'),
  -- 8: Cherrygrove City
  (4, 8, 84, NULL, 'A red-haired boy stops you on the east side of town and battles you. He has a Pokémon from Professor Elm''s lab.'),
  -- 9: Route 29
  (4, 9, 110, NULL, 'Back east to New Bark Town with the Mystery Egg.'),
  -- 10: New Bark Town
  (4, 10, 101, NULL, 'A police officer is in the lab. One of Professor Elm''s Pokémon was stolen. Give Elm the Mystery Egg and his aide hands you five Poké Balls. Your mom offers to save part of your prize money.'),
  -- 11: Route 29
  (4, 11, 110, NULL, 'West again, now with Poké Balls to catch Pokémon on the way.'),
  -- 12: Cherrygrove City
  (4, 12, 84, NULL, 'The Poké Mart sells Poké Balls from now on.'),
  -- 13: Route 30
  (4, 13, 111, NULL, 'The battle on the west path is over, so the way north to Route 31 is open.'),
  -- 14: Route 31
  (4, 14, 112, NULL, 'A short road west to Violet City. Dark Cave opens off it, too dark and too blocked to explore for now.'),
  -- 15: Violet City
  (4, 15, 138, NULL, 'An old town with a Pokémon school. Falkner''s Gym uses Flying types. After you win, Professor Elm''s aide waits in the Pokémon Center with a Togepi Egg for you to carry.'),
  -- 16: Sprout Tower
  (4, 16, 135, NULL, 'A swaying pagoda full of Sages, north of town. Beat the Elder at the top and he gives you HM05 Flash.'),
  -- 17: Zephyr Badge (milestone)
  (4, 17, NULL, 40003, NULL),
  -- 18: Route 32
  (4, 18, 113, NULL, 'A long road south of Violet City. A man near the end tries to sell you a SlowpokeTail. The Fisherman in the Pokémon Center gives you an Old Rod.'),
  -- 19: Ruins of Alph
  (4, 19, 130, NULL, 'Old ruins west of Route 32. Solve the tile puzzle in the first chamber and the floor drops you into a hall of strange Pokémon. The three chambers left need Surf, and one of them Strength too.'),
  -- 20: Union Cave
  (4, 20, 137, NULL, 'A cave between Route 32 and Route 33. Its lower floors are flooded, so they wait until you can Surf.'),
  -- 21: Route 33
  (4, 21, 114, NULL, 'A short road from Union Cave into Azalea Town.'),
  -- 22: Azalea Town
  (4, 22, 80, NULL, 'Bugsy''s Gym uses Bug types, but a Team Rocket Grunt stands in front of it. Kurt, who makes Poké Balls from Apricorns, runs off to the Slowpoke Well to stop Team Rocket.'),
  -- 23: Slowpoke Well (milestone)
  (4, 23, NULL, 40033, NULL),
  -- 24: Hive Badge (milestone)
  (4, 24, NULL, 40004, NULL),
  -- 25: Azalea Town
  (4, 25, 80, NULL, 'Silver catches up with you at the west exit and battles you before you can reach Ilex Forest.'),
  -- 26: Ilex Forest (milestone)
  (4, 26, NULL, 40034, NULL),
  -- 27: Route 34
  (4, 27, 115, NULL, 'North of Ilex Forest. The Day Care couple here raise up to two Pokémon for you, and may find an Egg. The Day Care Man gives you an Odd Egg on your first visit. It hatches into one of seven baby Pokémon.'),
  -- 28: Goldenrod City
  (4, 28, 91, NULL, 'Johto''s biggest city. The Bike Shop lends you a Bicycle for free, and the Radio Tower''s quiz wins you a Radio Card. Whitney''s Gym uses Normal types.'),
  -- 29: Plain Badge (milestone)
  (4, 29, NULL, 40005, NULL),
  -- 30: Route 35
  (4, 30, 116, NULL, 'North of Goldenrod City. The guard in the gate asks you to carry his Spearow, which holds Mail, to his friend on Route 31.'),
  -- 31: National Park
  (4, 31, 100, NULL, 'A park between Route 35 and Route 36. The Bug-Catching Contest runs here on Tuesdays, Thursdays and Saturdays.'),
  -- 32: Route 36
  (4, 32, 117, NULL, 'An odd tree blocks the road in every direction. Floria stands beside it and goes to tell her sister. Go back to Goldenrod City''s flower shop with the Plain Badge for the SquirtBottle and use it on the tree. Catch it, beat it or run. A man nearby then gives you TM08 Rock Smash.'),
  -- 33: Route 37
  (4, 33, 118, NULL, 'A short road north to Ecruteak City.'),
  -- 34: Ecruteak City
  (4, 34, 90, NULL, 'An old city with two towers. Beat the five Kimono Girls in the Dance Theater and a gentleman gives you HM03 Surf. A man in the southwest house gives you an Itemfinder. Morty''s Gym uses Ghost types. Meet Bill in the Pokémon Center, then visit his house in Goldenrod City and he gives you an Eevee.'),
  -- 35: Burned Tower (milestone)
  (4, 35, NULL, 40026, NULL),
  -- 36: Roaming Raikou (milestone)
  (4, 36, NULL, 40028, NULL),
  -- 37: Roaming Entei (milestone)
  (4, 37, NULL, 40029, NULL),
  -- 38: Fog Badge (milestone)
  (4, 38, NULL, 40006, NULL),
  -- 39: Route 38
  (4, 39, 119, NULL, 'West of Ecruteak City, toward the coast.'),
  -- 40: Route 39
  (4, 40, 120, NULL, 'Moomoo Farm sits along this road. Its sick Miltank needs seven Berries, and the farmer thanks you with TM13 Snore.'),
  -- 41: Olivine City
  (4, 41, 102, NULL, 'A port town. Jasmine is away from her Gym, nursing a sick Pokémon at the top of the Lighthouse, and asks you to fetch medicine from Cianwood City. A sailor in the café gives you HM04 Strength, and the Fisherman south of the Gym a Good Rod.'),
  -- 42: Route 40
  (4, 42, 121, NULL, 'Surf west from Olivine City''s beach. The Battle Tower stands at the north end, where you take three Pokémon through seven battles in a row.'),
  -- 43: Route 41
  (4, 43, 122, NULL, 'Open sea south to Cianwood City, full of Swimmers. The Whirl Islands lie in the middle, ringed by whirlpools you can''t cross yet.'),
  -- 44: Cianwood City
  (4, 44, 85, NULL, 'An island town. The pharmacy gives you the SecretPotion for Jasmine. Chuck''s Gym uses Fighting types. After you win, his wife outside gives you HM02 Fly. A man in town asks you to look after his Shuckle.'),
  -- 45: Storm Badge (milestone)
  (4, 45, NULL, 40007, NULL),
  -- 46: Cianwood City
  (4, 46, 85, NULL, 'Suicune watches you from the north shore and runs off across the sea. Eusine turns up and battles you to prove himself to it.'),
  -- 47: Olivine City
  (4, 47, 102, NULL, 'Fly back and climb the Lighthouse with the SecretPotion.'),
  -- 48: Olivine Lighthouse (milestone)
  (4, 48, NULL, 40035, NULL),
  -- 49: Mineral Badge (milestone)
  (4, 49, NULL, 40008, NULL),
  -- 50: Ecruteak City
  (4, 50, 90, NULL, 'Fly back to Ecruteak City and take the east exit to Route 42.'),
  -- 51: Route 42
  (4, 51, 123, NULL, 'East of Ecruteak City, across ponds you Surf over. Suicune waits in the Apricorn grove between them and runs off again. Mt. Mortar''s three entrances open off this road. The cave is optional. Beat the Karate King deep inside and he gives you a Tyrogue.'),
  -- 52: Mahogany Town
  (4, 52, 824, NULL, 'A quiet mountain town. One man blocks the road east, and another blocks the Gym and tells you to go and see the Lake of Rage. The souvenir shop looks shady.'),
  -- 53: Route 43
  (4, 53, 124, NULL, 'North to the Lake of Rage. Team Rocket Grunts in the gate charge a toll of 1,000 Pokédollars. The long way round through the tall grass avoids them.'),
  -- 54: Lake of Rage (milestone)
  (4, 54, NULL, 40036, NULL),
  -- 55: Route 43
  (4, 55, 124, NULL, 'Back south to Mahogany Town, where Lance said to meet him.'),
  -- 56: Mahogany Town
  (4, 56, 824, NULL, 'Lance''s Dragonite is blasting the shopkeeper when you walk into the souvenir shop. A hidden stairway leads down to Team Rocket''s hideout.'),
  -- 57: Team Rocket HQ (milestone)
  (4, 57, NULL, 40037, NULL),
  -- 58: Glacier Badge (milestone)
  (4, 58, NULL, 40009, NULL),
  -- 59: Goldenrod City
  (4, 59, 91, NULL, 'Professor Elm phones about strange broadcasts, so fly back to Goldenrod City. Team Rocket has taken over the city and the Radio Tower. The man in the Director''s office is a fake, and he gives up the Basement Key when you beat him.'),
  -- 60: Goldenrod Underground
  (4, 60, 830, NULL, 'Enter from the north and unlock the door with the Basement Key. Silver waits in the basement. Past the shutter switches, the real Director is held in the warehouse and gives you the Card Key.'),
  -- 61: Radio Tower (milestone)
  (4, 61, NULL, 40027, NULL),
  -- 62: Suicune (milestone)
  (4, 62, NULL, 40039, NULL),
  -- 63: Mahogany Town
  (4, 63, 824, NULL, 'Fly back to Mahogany Town. With Team Rocket gone, the man blocking the road east has left.'),
  -- 64: Route 44
  (4, 64, 125, NULL, 'East of Mahogany Town, toward the Ice Path.'),
  -- 65: Ice Path
  (4, 65, 93, NULL, 'A frozen cave where you slide until something stops you. Push four boulders down the holes with Strength to cross. HM07 Waterfall lies on the first floor.'),
  -- 66: Blackthorn City
  (4, 66, 82, NULL, 'A mountain town of Dragon trainers. Clair''s Gym uses Dragon types. The Move Deleter here makes a Pokémon forget a move, HM moves included.'),
  -- 67: Dragon's Den
  (4, 67, 89, NULL, 'A cave behind the Gym, across water you Surf and Whirlpool through. After you beat Clair, pass the elder''s quiz in the shrine here and she hands over the badge. Come back with room in your party and the elder gives you a Dratini.'),
  -- 68: Rising Badge (milestone)
  (4, 68, NULL, 40010, NULL),
  -- 69: Route 45
  (4, 69, 126, NULL, 'A long way south from Blackthorn City, down ledges you can''t climb back up.'),
  -- 70: Route 46
  (4, 70, 127, NULL, 'More ledges, down to Route 29 beside New Bark Town.'),
  -- 71: New Bark Town
  (4, 71, 101, NULL, 'Professor Elm phones to ask you home, and gives you a Master Ball. Surf east from town to start for the Pokémon League.'),
  -- 72: Route 27
  (4, 72, 108, NULL, 'Across the water from New Bark Town, you step into Kanto.'),
  -- 73: Tohjo Falls
  (4, 73, 136, NULL, 'A small cave on the border between Johto and Kanto. You need Waterfall to climb through it.'),
  -- 74: Route 26
  (4, 74, 107, NULL, 'North toward the Pokémon League. A woman in a house on the way heals your team.'),
  -- 75: Victory Road
  (4, 75, 75, NULL, 'The guards at the gate check your eight badges. The cave has no trainers, but Silver stops you just before the exit.'),
  -- 76: Indigo Plateau
  (4, 76, 21, NULL, 'The last Pokémon Center and Poké Mart before the League. Once you face the Elite Four, there''s no way out until you win or lose.'),
  -- 77: Pokémon League (milestone)
  (4, 77, NULL, 40015, NULL),
  -- 78: Tin Tower (milestone)
  (4, 78, NULL, 40030, NULL),
  -- 79: Ilex Forest Shrine (milestone)
  (4, 79, NULL, 40032, NULL),
  -- 80: New Bark Town
  (4, 80, 101, NULL, 'After the credits you wake up at home. Professor Elm gives you the S.S. Ticket for the ship to Kanto.'),
  -- 81: Olivine City
  (4, 81, 102, NULL, 'Fly to Olivine City and show the S.S. Ticket at the harbour to board the S.S. Aqua.'),
  -- 82: S.S. Aqua
  (4, 82, 831, NULL, 'A fast ship to Vermilion City. A gentleman has lost his granddaughter. Beat the sailor napping in a cabin so the lower deck opens, find her in the captain''s cabin, and he gives you a Metal Coat.'),
  -- 83: Vermilion City
  (4, 83, 74, NULL, 'Kanto''s port. A sleeping Snorlax blocks the east exit and Diglett''s Cave. Lt. Surge''s Gym uses Electric types. The Pokémon Fan Club''s chairman gives you a Rare Candy.'),
  -- 84: Thunder Badge (milestone)
  (4, 84, NULL, 40019, NULL),
  -- 85: Route 6
  (4, 85, 59, NULL, 'North to Saffron City.'),
  -- 86: Saffron City
  (4, 86, 133, NULL, 'Kanto''s biggest city. Sabrina''s Gym uses Psychic types. Mr. Psychic gives you TM29 Psychic, and the Silph Co. guard an Up-Grade. The Magnet Train is stopped by trouble at the Power Plant.'),
  -- 87: Marsh Badge (milestone)
  (4, 87, NULL, 40022, NULL),
  -- 88: Route 8
  (4, 88, 61, NULL, 'East to Lavender Town.'),
  -- 89: Lavender Town
  (4, 89, 23, NULL, 'Pokémon Tower is now the Kanto Radio Tower, and its graves moved to the Soul House. The tower lets visitors only onto the first floor.'),
  -- 90: Route 10
  (4, 90, 39, NULL, 'North of Lavender Town, to the south mouth of Rock Tunnel.'),
  -- 91: Rock Tunnel
  (4, 91, 37, NULL, 'Pitch dark without Flash. Come out the north side onto Route 9.'),
  -- 92: Route 9
  (4, 92, 62, NULL, 'A man in the Pokémon Center by Rock Tunnel says the Power Plant''s manager is looking for strong trainers. Surf down the river to reach it.'),
  -- 93: Route 10
  (4, 93, 39, NULL, 'The Power Plant stands on the river. A thief has stolen a part from its generator, and the guard hears of a shady man around Cerulean City.'),
  -- 94: Cerulean City
  (4, 94, 9, NULL, 'A man in black runs into you at the Gym door and hurries off north. The Bike Shop has moved to Goldenrod City, and Cerulean Cave has collapsed.'),
  -- 95: Route 24
  (4, 95, 54, NULL, 'The man in black is a Team Rocket Grunt, waiting on Nugget Bridge. Beat him and he admits he hid the Machine Part in Cerulean Gym''s pool.'),
  -- 96: Cerulean City
  (4, 96, 9, NULL, 'Search the water in the middle of the Gym for the Machine Part, then take it back to the Power Plant.'),
  -- 97: Power Plant (milestone)
  (4, 97, NULL, 40038, NULL),
  -- 98: Lavender Town
  (4, 98, 23, NULL, 'The Radio Tower''s manager thanks you for the power with an EXPN Card. It tunes your Pokégear to the Poké Flute channel, which wakes sleeping Pokémon.'),
  -- 99: Route 25
  (4, 99, 55, NULL, 'Fly back to Cerulean City and go north over Nugget Bridge. Six trainers in a row along the cape, with a Nugget for beating them all. Misty is on a date at the end. Interrupt it and she goes back to her Gym. Bill''s grandfather keeps the Sea Cottage.'),
  -- 100: Cascade Badge (milestone)
  (4, 100, NULL, 40018, NULL),
  -- 101: Route 5
  (4, 101, 58, NULL, 'South of Cerulean City to Saffron City. The Underground Path is open again now the power is back.'),
  -- 102: Saffron City
  (4, 102, 133, NULL, 'Copycat has lost her doll. Fetch it from the Pokémon Fan Club in Vermilion City and she gives you the Pass for the Magnet Train to Goldenrod City.'),
  -- 103: Route 7
  (4, 103, 60, NULL, 'A short road west to Celadon City.'),
  -- 104: Celadon City
  (4, 104, 6, NULL, 'Erika''s Gym uses Grass types. The Department Store sells nearly everything, and Leftovers sit in the restaurant''s trash can. Eusine is in the Pokémon Center, and speaks of a rainbow Pokémon once you have caught the three that fled the Burned Tower.'),
  -- 105: Rainbow Badge (milestone)
  (4, 105, NULL, 40020, NULL),
  -- 106: Route 16
  (4, 106, 45, NULL, 'West of Celadon City, to the top of Cycling Road.'),
  -- 107: Route 17
  (4, 107, 46, NULL, 'Cycling Road, a long ride downhill over the sea. You need the Bicycle.'),
  -- 108: Route 18
  (4, 108, 47, NULL, 'The end of Cycling Road, leading east to Fuchsia City.'),
  -- 109: Fuchsia City
  (4, 109, 18, NULL, 'Janine''s Gym uses Poison types. The Safari Zone is closed, since its Warden has gone travelling. Rocks from Cinnabar Island''s volcano block the sea route south.'),
  -- 110: Soul Badge (milestone)
  (4, 110, NULL, 40021, NULL),
  -- 111: Route 15
  (4, 111, 44, NULL, 'East out of Fuchsia City.'),
  -- 112: Route 14
  (4, 112, 43, NULL, 'North along the coast.'),
  -- 113: Route 13
  (4, 113, 42, NULL, 'A maze of fences by the sea.'),
  -- 114: Route 12
  (4, 114, 41, NULL, 'The Fishing Guru''s brother, in the house by the turn to Route 11, gives you the Super Rod.'),
  -- 115: Route 11
  (4, 115, 40, NULL, 'West toward Vermilion City, to the sleeping Snorlax.'),
  -- 116: Vermilion City
  (4, 116, 74, NULL, 'Tune the Pokégear radio to the Poké Flute channel beside the Snorlax and it wakes up angry. Catch it, beat it or run. Diglett''s Cave is open.'),
  -- 117: Diglett's Cave
  (4, 117, 13, NULL, 'A long tunnel under Kanto to Route 2. With the sea route from Fuchsia City blocked, it''s the only way west.'),
  -- 118: Route 2
  (4, 118, 49, NULL, 'Out of Diglett''s Cave, north to Pewter City. A lonely man in the house here gives you a Nugget.'),
  -- 119: Pewter City
  (4, 119, 104, NULL, 'Brock''s Gym uses Rock types. The Museum is closed for renovations. An old man on the east side gives you the Silver Wing.'),
  -- 120: Boulder Badge (milestone)
  (4, 120, NULL, 40017, NULL),
  -- 121: Whirl Islands (milestone)
  (4, 121, NULL, 40031, NULL),
  -- 122: Route 3
  (4, 122, 56, NULL, 'East of Pewter City to Mt. Moon.'),
  -- 123: Mt. Moon
  (4, 123, 27, NULL, 'Collapses have left one chamber between Route 3 and Route 4. Silver meets you inside for one more battle. Mt. Moon Square is at the top.'),
  -- 124: Route 4
  (4, 124, 57, NULL, 'Down the ledges to Cerulean City.'),
  -- 125: Viridian City
  (4, 125, 76, NULL, 'South of Pewter City through Route 2. The Gym is open but its Leader is away. The Trainer House in the middle of town holds one battle a day.'),
  -- 126: Route 1
  (4, 126, 38, NULL, 'South to Pallet Town.'),
  -- 127: Pallet Town
  (4, 127, 30, NULL, 'Red''s mother and Blue''s sister Daisy live in the two houses. Professor Oak rates your Pokédex and asks you back once you have all eight Kanto badges.'),
  -- 128: Route 21
  (4, 128, 51, NULL, 'Surf south from Pallet Town to Cinnabar Island.'),
  -- 129: Cinnabar Island
  (4, 129, 11, NULL, 'The volcano erupted a year ago and only the Pokémon Center stands. Blue is behind it, looking at the ruins. Talk to him and he goes back to Viridian Gym.'),
  -- 130: Route 20
  (4, 130, 50, NULL, 'Surf east to the Seafoam Islands, where Blaine moved his Gym.'),
  -- 131: Seafoam Islands
  (4, 131, 65, NULL, 'Volcanic rock closed all but one small cave, and Blaine''s Gym is inside it.'),
  -- 132: Volcano Badge (milestone)
  (4, 132, NULL, 40023, NULL),
  -- 133: Route 19
  (4, 133, 48, NULL, 'The rocks are cleared, so the sea route north to Fuchsia City is open again.'),
  -- 134: Viridian City
  (4, 134, 76, NULL, 'Fly back. Blue is in his Gym now. He has no one type, and no trainers to fight first.'),
  -- 135: Earth Badge (milestone)
  (4, 135, NULL, 40024, NULL),
  -- 136: Pallet Town
  (4, 136, 30, NULL, 'Tell Professor Oak you have all sixteen badges and he arranges for you to enter Mt. Silver.'),
  -- 137: Route 22
  (4, 137, 52, NULL, 'West of Viridian City to the League gate, where the guards now let you through to Route 28.'),
  -- 138: Route 28
  (4, 138, 109, NULL, 'The road to Mt. Silver. A retired celebrity, in a house behind a tree that needs Cut, gives you TM47 Steel Wing.'),
  -- 139: Mt. Silver
  (4, 139, 98, NULL, 'A Pokémon Center stands at the foot of the mountain, the last stop before the climb.'),
  -- 140: Defeat Red (milestone)
  (4, 140, NULL, 40025, NULL);
