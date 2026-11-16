-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's HeartGold / SoulSilver walkthrough, all 32 parts (the
-- order the story passes each place and reaches each beat, and what happens
-- there), with its location pages for the places.
-- Scope: Pokémon HeartGold / SoulSilver Story roadmap.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_roadmap_steps
-- HeartGold / SoulSilver's Story roadmap, step by step, in Red / Blue's
-- pattern: a place the walkthrough passes (location_id) or a milestone
-- (milestone_id), which sits at its own place. Places repeat where the
-- walkthrough comes back. It is Gold / Silver's route with the remake's own
-- story, and a place keeps Gold / Silver's note where the game plays the same
-- there. The Bell Tower and the Whirl Islands follow the Kimono Girls' ritual,
-- one for each version.
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
  -- 1: New Bark Town
  (10, 1, 101, NULL, 'Your home town in Johto. Your friend Lyra or Ethan lives next door with a Marill. Professor Elm asks you to visit his friend Mr. Pokémon, and lets you choose a Pokémon in his lab to take along.'),
  -- 2: Choose Johto Starter (milestone)
  (10, 2, NULL, 100001, NULL),
  -- 3: Route 29
  (10, 3, 110, NULL, 'The road west to Cherrygrove City, with ledges you can only hop down. A Berry tree stands on the hill.'),
  -- 4: Cherrygrove City
  (10, 4, 84, NULL, 'The Guide Gent on the east side shows you around town. Keep up with him and he gives you the Running Shoes, then a Map Card for your Pokégear.'),
  -- 5: Route 30
  (10, 5, 111, NULL, 'Runs north from Cherrygrove City. A man in the first house gives you an Apricorn Box. Two trainers are in the middle of a battle on the west path, so take the east path to Mr. Pokémon''s house.'),
  -- 6: Receive Pokédex (milestone)
  (10, 6, NULL, 100002, NULL),
  -- 7: Route 30
  (10, 7, 111, NULL, 'Professor Elm phones in a panic as you step outside. Head back south to New Bark Town.'),
  -- 8: Cherrygrove City
  (10, 8, 84, NULL, 'A red-haired boy stops you on the east side of town and battles you. He has a Pokémon from Professor Elm''s lab.'),
  -- 9: Route 29
  (10, 9, 110, NULL, 'Back east to New Bark Town with the Mystery Egg.'),
  -- 10: New Bark Town
  (10, 10, 101, NULL, 'A police officer is in the lab. One of Professor Elm''s Pokémon was stolen, and your friend clears your name. Give Elm the Mystery Egg. Your mom offers to save part of your prize money.'),
  -- 11: Route 29
  (10, 11, 110, NULL, 'Lyra or Ethan shows you how to catch a Pokémon and gives you five Poké Balls.'),
  -- 12: Cherrygrove City
  (10, 12, 84, NULL, 'The Poké Mart sells Poké Balls from now on.'),
  -- 13: Route 30
  (10, 13, 111, NULL, 'The battle on the west path is over, so the way north to Route 31 is open.'),
  -- 14: Route 31
  (10, 14, 112, NULL, 'A short road west to Violet City. Dark Cave opens off it, too dark and too blocked to explore for now.'),
  -- 15: Violet City
  (10, 15, 138, NULL, 'An old town with a Pokémon school. Falkner''s Gym uses Flying types. After you win, Professor Elm''s aide waits in the Pokémon Center with a Togepi Egg for you to carry, and a Kimono Girl stops you outside to look at it.'),
  -- 16: Sprout Tower
  (10, 16, 135, NULL, 'A swaying pagoda full of Sages, north of town. Silver has just beaten the Elder at the top. Beat him too and he gives you TM70 Flash.'),
  -- 17: Zephyr Badge (milestone)
  (10, 17, NULL, 100003, NULL),
  -- 18: Route 32
  (10, 18, 113, NULL, 'A long road south of Violet City. A man near the end tries to sell you a SlowpokeTail. The Fisherman in the Pokémon Center gives you an Old Rod.'),
  -- 19: Ruins of Alph
  (10, 19, 130, NULL, 'Old ruins west of Route 32. Solve the tile puzzle in the first chamber and the floor drops you into a hall of strange Pokémon. The three chambers left need Surf, and one of them Strength too.'),
  -- 20: Union Cave
  (10, 20, 137, NULL, 'A cave between Route 32 and Route 33. Its lower floors are flooded, so they wait until you can Surf.'),
  -- 21: Route 33
  (10, 21, 114, NULL, 'A short road from Union Cave into Azalea Town.'),
  -- 22: Azalea Town
  (10, 22, 80, NULL, 'Bugsy''s Gym uses Bug types, but a Team Rocket Grunt stands in front of it. Kurt, who makes Poké Balls from Apricorns, runs off to the Slowpoke Well to stop Team Rocket.'),
  -- 23: Slowpoke Well (milestone)
  (10, 23, NULL, 100042, NULL),
  -- 24: Hive Badge (milestone)
  (10, 24, NULL, 100004, NULL),
  -- 25: Azalea Town
  (10, 25, 80, NULL, 'Silver catches up with you at the west exit and battles you before you can reach Ilex Forest.'),
  -- 26: Ilex Forest (milestone)
  (10, 26, NULL, 100043, NULL),
  -- 27: Route 34
  (10, 27, 115, NULL, 'North of Ilex Forest. The Day Care couple here raise up to two Pokémon for you, and may find an Egg.'),
  -- 28: Goldenrod City
  (10, 28, 91, NULL, 'Johto''s biggest city. The Bike Shop lends you a Bicycle for free, and the Radio Tower''s quiz wins you a Radio Card. Whitney''s Gym uses Normal types. After you win, the flower shop next door gives you the SquirtBottle. Once you have met Bill in Ecruteak City, he gives you an Eevee at his house here.'),
  -- 29: Plain Badge (milestone)
  (10, 29, NULL, 100005, NULL),
  -- 30: Route 35
  (10, 30, 116, NULL, 'North of Goldenrod City. The guard in the gate asks you to carry his Spearow, which holds Mail, to his friend on Route 31.'),
  -- 31: National Park
  (10, 31, 100, NULL, 'A park between Route 35 and Route 36. The Bug-Catching Contest runs here on Tuesdays, Thursdays and Saturdays. The Pokéathlon Dome is just to the west.'),
  -- 32: Route 36
  (10, 32, 117, NULL, 'An odd tree blocks the road in every direction. Use the SquirtBottle on it and it attacks. Catch it, beat it or run, and the way is clear. A man nearby then gives you HM06 Rock Smash, and the flower shop girl the Berry Pots.'),
  -- 33: Route 37
  (10, 33, 118, NULL, 'A short road north to Ecruteak City.'),
  -- 34: Ecruteak City
  (10, 34, 90, NULL, 'An old city with two towers. A Team Rocket Grunt is bullying a Kimono Girl in the Dance Theater. Beat him and a gentleman gives you HM03 Surf. A man in town gives you a Dowsing Machine. Morty''s Gym uses Ghost types, but he is in the Burned Tower.'),
  -- 35: Burned Tower (milestone)
  (10, 35, NULL, 100028, NULL),
  -- 36: Roaming Raikou (milestone)
  (10, 36, NULL, 100031, NULL),
  -- 37: Roaming Entei (milestone)
  (10, 37, NULL, 100032, NULL),
  -- 38: Fog Badge (milestone)
  (10, 38, NULL, 100006, NULL),
  -- 39: Route 38
  (10, 39, 119, NULL, 'West of Ecruteak City, toward the coast.'),
  -- 40: Route 39
  (10, 40, 120, NULL, 'Moomoo Farm sits along this road. Its sick Miltank gets well once you have fed it seven Oran Berries.'),
  -- 41: Olivine City
  (10, 41, 102, NULL, 'A port town. Jasmine is away from her Gym, nursing a sick Pokémon at the top of the Lighthouse, and asks you to fetch medicine from Cianwood City. A sailor in the café gives you HM04 Strength, and the Fisherman south of the Gym a Good Rod.'),
  -- 42: Route 40
  (10, 42, 121, NULL, 'Surf west from Olivine City''s beach.'),
  -- 43: Route 41
  (10, 43, 122, NULL, 'Open sea south to Cianwood City, full of Swimmers. The Whirl Islands lie in the middle, ringed by whirlpools you can''t cross yet.'),
  -- 44: Cianwood City
  (10, 44, 85, NULL, 'An island town. The pharmacy gives you the SecretPotion for Jasmine. Chuck''s Gym uses Fighting types. After you win, his wife outside gives you HM02 Fly. The gate on the west side leads to Route 47 and the Safari Zone, which opens later. A man in town lends you his Shuckle.'),
  -- 45: Storm Badge (milestone)
  (10, 45, NULL, 100007, NULL),
  -- 46: Cianwood City
  (10, 46, 85, NULL, 'Suicune watches you from the north shore and runs off across the sea. Eusine turns up and battles you to prove himself to it.'),
  -- 47: Olivine City
  (10, 47, 102, NULL, 'Fly back and climb the Lighthouse with the SecretPotion.'),
  -- 48: Olivine Lighthouse (milestone)
  (10, 48, NULL, 100044, NULL),
  -- 49: Mineral Badge (milestone)
  (10, 49, NULL, 100008, NULL),
  -- 50: Ecruteak City
  (10, 50, 90, NULL, 'Fly back to Ecruteak City and take the east exit to Route 42.'),
  -- 51: Route 42
  (10, 51, 123, NULL, 'East of Ecruteak City, across ponds you Surf over. Mt. Mortar''s three entrances open off this road. The cave is optional. Beat the Karate King deep inside and he gives you a Tyrogue.'),
  -- 52: Mahogany Town
  (10, 52, 824, NULL, 'A quiet mountain town. One man blocks the road east, and another blocks the Gym and tells you to go and see the Lake of Rage. The souvenir shop looks shady.'),
  -- 53: Route 43
  (10, 53, 124, NULL, 'North to the Lake of Rage. Team Rocket Grunts in the gate charge a toll of 1,000 Pokédollars. The long way round through the tall grass avoids them.'),
  -- 54: Lake of Rage (milestone)
  (10, 54, NULL, 100045, NULL),
  -- 55: Route 43
  (10, 55, 124, NULL, 'Back south to Mahogany Town, where Lance said to meet him.'),
  -- 56: Mahogany Town
  (10, 56, 824, NULL, 'Lance''s Dragonite is blasting the shopkeeper when you walk into the souvenir shop. A hidden stairway leads down to Team Rocket''s hideout.'),
  -- 57: Team Rocket HQ (milestone)
  (10, 57, NULL, 100046, NULL),
  -- 58: Glacier Badge (milestone)
  (10, 58, NULL, 100009, NULL),
  -- 59: Goldenrod City
  (10, 59, 91, NULL, 'Professor Elm phones about strange broadcasts, so fly back to Goldenrod City. Team Rocket holds the city and the Radio Tower. A Grunt in the Underground''s photo booth dresses you as one of them, which gets you in. The man in the Director''s office is a fake, and gives up the Basement Key when beaten.'),
  -- 60: Goldenrod Underground
  (10, 60, 830, NULL, 'Enter from the north and unlock the door with the Basement Key. Silver waits in the basement. Past the shutter switches, the real Director is held in the warehouse and gives you the Card Key.'),
  -- 61: Radio Tower (milestone)
  (10, 61, NULL, 100029, NULL),
  -- 62: Mahogany Town
  (10, 62, 824, NULL, 'Fly back to Mahogany Town. With Team Rocket gone, the man blocking the road east has left.'),
  -- 63: Route 44
  (10, 63, 125, NULL, 'East of Mahogany Town, toward the Ice Path.'),
  -- 64: Ice Path
  (10, 64, 93, NULL, 'A frozen cave where you slide until something stops you. Push four boulders down the holes with Strength to cross. HM07 Waterfall lies on the first floor.'),
  -- 65: Blackthorn City
  (10, 65, 82, NULL, 'A mountain town of Dragon trainers. Clair''s Gym uses Dragon types. The Move Deleter here makes a Pokémon forget a move, HM moves included.'),
  -- 66: Dragon's Den
  (10, 66, 89, NULL, 'A cave behind the Gym, across water you Surf and Whirlpool through. After you beat Clair, answer the Master''s questions in the shrine and she hands over the badge. Come back with room in your party and the Master gives you a Dratini.'),
  -- 67: Rising Badge (milestone)
  (10, 67, NULL, 100010, NULL),
  -- 68: Route 45
  (10, 68, 126, NULL, 'A long way south from Blackthorn City, down ledges you can''t climb back up.'),
  -- 69: Route 46
  (10, 69, 127, NULL, 'More ledges, down to Route 29 beside New Bark Town.'),
  -- 70: New Bark Town
  (10, 70, 101, NULL, 'Professor Elm phones to ask you home, and gives you a Master Ball. He says the Kimono Girls are waiting for you at the Ecruteak Dance Theater.'),
  -- 71: Ecruteak City
  (10, 71, 90, NULL, 'Fly to Ecruteak City. Silver is leaving the Dance Theater, beaten by the Kimono Girls. All five are on stage, waiting for you.'),
  -- 72: Kimono Girls' Ritual (milestone)
  (10, 72, NULL, 100030, NULL),
  -- 73: Bell Tower
  (10, 73, 81, NULL, 'HeartGold: with the Rainbow Wing and the Clear Bell, climb to the roof. The Kimono Girls dance, and Ho-Oh comes down.'),
  -- 74: Whirl Islands
  (10, 74, 139, NULL, 'SoulSilver: with the Silver Wing and the Tidal Bell, go in from the northeast island and down to the deepest chamber. The Kimono Girls dance, and Lugia rises. The islands need Whirlpool, and the caves are dark without Flash.'),
  -- 75: New Bark Town
  (10, 75, 101, NULL, 'Fly home, then Surf east from town to start for the Pokémon League.'),
  -- 76: Route 27
  (10, 76, 108, NULL, 'Across the water from New Bark Town, you step into Kanto.'),
  -- 77: Tohjo Falls
  (10, 77, 136, NULL, 'A small cave on the border between Johto and Kanto. You need Waterfall to climb through it.'),
  -- 78: Route 26
  (10, 78, 107, NULL, 'North toward the Pokémon League. A woman in a house on the way heals your team.'),
  -- 79: Victory Road
  (10, 79, 75, NULL, 'The guards at the gate check your eight badges. The cave has no trainers, but Silver stops you just before the exit.'),
  -- 80: Indigo Plateau
  (10, 80, 21, NULL, 'The last Pokémon Center and Poké Mart before the League. Once you face the Elite Four, there''s no way out until you win or lose.'),
  -- 81: Pokémon League (milestone)
  (10, 81, NULL, 100015, NULL),
  -- 82: New Bark Town
  (10, 82, 101, NULL, 'After the credits you wake up at home. Professor Elm gives you the S.S. Ticket for the ship to Kanto.'),
  -- 83: Olivine City
  (10, 83, 102, NULL, 'Fly to Olivine City and show the S.S. Ticket at the harbour to board the S.S. Aqua.'),
  -- 84: S.S. Aqua
  (10, 84, 831, NULL, 'A fast ship to Vermilion City. A gentleman has lost his granddaughter. Beat the sailor napping in a cabin so the lower deck opens, find her in the captain''s cabin, and he gives you a Metal Coat.'),
  -- 85: Vermilion City
  (10, 85, 74, NULL, 'Kanto''s port. A sleeping Snorlax blocks the east exit and Diglett''s Cave. Lt. Surge''s Gym uses Electric types. The Pokémon Fan Club''s chairman gives you a Rare Candy.'),
  -- 86: Thunder Badge (milestone)
  (10, 86, NULL, 100019, NULL),
  -- 87: Route 6
  (10, 87, 59, NULL, 'North to Saffron City.'),
  -- 88: Saffron City
  (10, 88, 133, NULL, 'Kanto''s biggest city. Sabrina''s Gym uses Psychic types. Mr. Psychic gives you TM29 Psychic, and the Silph Co. guard an Up-Grade. The Magnet Train is stopped by trouble at the Power Plant.'),
  -- 89: Marsh Badge (milestone)
  (10, 89, NULL, 100022, NULL),
  -- 90: Route 8
  (10, 90, 61, NULL, 'East to Lavender Town.'),
  -- 91: Lavender Town
  (10, 91, 23, NULL, 'Pokémon Tower is now the Kanto Radio Tower, and its graves moved to the House of Memories. The tower lets visitors only onto the first floor.'),
  -- 92: Route 10
  (10, 92, 39, NULL, 'North of Lavender Town, to the south mouth of Rock Tunnel.'),
  -- 93: Rock Tunnel
  (10, 93, 37, NULL, 'Pitch dark without Flash. Come out the north side onto Route 9.'),
  -- 94: Route 9
  (10, 94, 62, NULL, 'A man in the Pokémon Center by Rock Tunnel says the Power Plant''s manager is looking for strong trainers. Surf down the river to reach it.'),
  -- 95: Route 10
  (10, 95, 39, NULL, 'The Power Plant stands on the river. A thief has stolen a part from its generator, and the guard hears of a shady man around Cerulean City.'),
  -- 96: Cerulean City
  (10, 96, 9, NULL, 'A man in black runs into you at the Gym door and hurries off north. The Bike Shop has moved to Goldenrod City.'),
  -- 97: Route 24
  (10, 97, 54, NULL, 'The man in black is a Team Rocket Grunt, waiting on Nugget Bridge. Beat him and he admits he hid the Machine Part in Cerulean Gym''s pool.'),
  -- 98: Cerulean City
  (10, 98, 9, NULL, 'Search the inflatable tubes at the back of the Gym for the Machine Part, then take it back to the Power Plant.'),
  -- 99: Machine Part (milestone)
  (10, 99, NULL, 100047, NULL),
  -- 100: Lavender Town
  (10, 100, 23, NULL, 'The Radio Tower''s manager thanks you for the power with an EXPN Card. It tunes your Pokégear to the Poké Flute channel, which wakes sleeping Pokémon.'),
  -- 101: Route 25
  (10, 101, 55, NULL, 'Fly back to Cerulean City and go north over Nugget Bridge. Six trainers in a row along the cape, with a Nugget for beating them all. Misty is on a date at the end. Interrupt it and she goes back to her Gym. Bill''s grandfather keeps the Sea Cottage.'),
  -- 102: Cascade Badge (milestone)
  (10, 102, NULL, 100018, NULL),
  -- 103: Route 5
  (10, 103, 58, NULL, 'South of Cerulean City to Saffron City.'),
  -- 104: Saffron City
  (10, 104, 133, NULL, 'Copycat has lost her doll. Fetch it from the Pokémon Fan Club in Vermilion City, where Steven of Hoenn stops you on the way out, and she gives you the Pass for the Magnet Train to Goldenrod City.'),
  -- 105: Route 7
  (10, 105, 60, NULL, 'A short road west to Celadon City.'),
  -- 106: Celadon City
  (10, 106, 6, NULL, 'Erika''s Gym uses Grass types. The Department Store sells nearly everything.'),
  -- 107: Rainbow Badge (milestone)
  (10, 107, NULL, 100020, NULL),
  -- 108: Route 16
  (10, 108, 45, NULL, 'West of Celadon City, to the top of Cycling Road.'),
  -- 109: Route 17
  (10, 109, 46, NULL, 'Cycling Road, a long ride downhill over the sea. You need the Bicycle.'),
  -- 110: Route 18
  (10, 110, 47, NULL, 'The end of Cycling Road, leading east to Fuchsia City.'),
  -- 111: Fuchsia City
  (10, 111, 18, NULL, 'Janine''s Gym uses Poison types. The old Safari Zone is now Pal Park, where Pokémon from Game Boy Advance games arrive.'),
  -- 112: Soul Badge (milestone)
  (10, 112, NULL, 100021, NULL),
  -- 113: Route 15
  (10, 113, 44, NULL, 'East out of Fuchsia City.'),
  -- 114: Route 14
  (10, 114, 43, NULL, 'North along the coast.'),
  -- 115: Route 13
  (10, 115, 42, NULL, 'A maze of fences by the sea.'),
  -- 116: Route 12
  (10, 116, 41, NULL, 'The Fishing Guru''s brother, in the house by the turn to Route 11, gives you the Super Rod.'),
  -- 117: Route 11
  (10, 117, 40, NULL, 'West toward Vermilion City, to the sleeping Snorlax.'),
  -- 118: Vermilion City
  (10, 118, 74, NULL, 'Tune the Pokégear radio to the Poké Flute channel beside the Snorlax and it wakes up angry. Catch it, beat it or run. Diglett''s Cave is open.'),
  -- 119: Diglett's Cave
  (10, 119, 13, NULL, 'A long tunnel under Kanto to Route 2.'),
  -- 120: Route 2
  (10, 120, 49, NULL, 'Out of Diglett''s Cave, north to Pewter City. A lonely man in the house here gives you a Nugget.'),
  -- 121: Pewter City
  (10, 121, 104, NULL, 'Brock''s Gym uses Rock types. An old man on the east side gives you the Silver Wing in HeartGold or the Rainbow Wing in SoulSilver.'),
  -- 122: Boulder Badge (milestone)
  (10, 122, NULL, 100017, NULL),
  -- 123: Route 3
  (10, 123, 56, NULL, 'East of Pewter City to Mt. Moon.'),
  -- 124: Mt. Moon
  (10, 124, 27, NULL, 'Collapses have left one chamber between Route 3 and Route 4. Silver meets you inside for one more battle. Mt. Moon Square is at the top.'),
  -- 125: Route 4
  (10, 125, 57, NULL, 'Down the ledges to Cerulean City.'),
  -- 126: Viridian City
  (10, 126, 76, NULL, 'South of Pewter City through Route 2. The Gym is open but its Leader is away. The Trainer House in the middle of town holds one battle a day.'),
  -- 127: Route 1
  (10, 127, 38, NULL, 'South to Pallet Town.'),
  -- 128: Pallet Town
  (10, 128, 30, NULL, 'Red''s mother and Blue''s sister Daisy live in the two houses. Professor Oak rates your Pokédex and asks you back once you have all eight Kanto badges.'),
  -- 129: Route 21
  (10, 129, 51, NULL, 'Surf south from Pallet Town to Cinnabar Island.'),
  -- 130: Cinnabar Island
  (10, 130, 11, NULL, 'The volcano erupted a year ago and only the Pokémon Center stands. Blue is behind it, looking at the ruins. Talk to him and he goes back to Viridian Gym.'),
  -- 131: Route 20
  (10, 131, 50, NULL, 'Surf east to the Seafoam Islands, where Blaine moved his Gym.'),
  -- 132: Seafoam Islands
  (10, 132, 65, NULL, 'Volcanic rock closed all but one small cave, and Blaine''s Gym is inside it.'),
  -- 133: Volcano Badge (milestone)
  (10, 133, NULL, 100023, NULL),
  -- 134: Viridian City
  (10, 134, 76, NULL, 'Fly back. Blue is in his Gym now. He has no one type, and no trainers to fight first.'),
  -- 135: Earth Badge (milestone)
  (10, 135, NULL, 100024, NULL),
  -- 136: Pallet Town
  (10, 136, 30, NULL, 'Tell Professor Oak you have all sixteen badges. He gives you HM08 Rock Climb and arranges for you to enter Mt. Silver. After you beat Red, Oak gives you a Bulbasaur, Charmander or Squirtle, and Steven then gives you a Treecko, Torchic or Mudkip at Silph Co.'),
  -- 137: Route 22
  (10, 137, 52, NULL, 'West of Viridian City to the League gate, where the guards now let you through to Route 28.'),
  -- 138: Route 28
  (10, 138, 109, NULL, 'The road to Mt. Silver. A retired celebrity, in a house behind a tree that needs Cut, gives you TM47 Steel Wing.'),
  -- 139: Mt. Silver
  (10, 139, 98, NULL, 'A Pokémon Center stands at the foot of the mountain, the last stop before the climb.'),
  -- 140: Defeat Red (milestone)
  (10, 140, NULL, 100025, NULL),
  -- 141: Choose Kanto Starter (milestone)
  (10, 141, NULL, 100026, NULL),
  -- 142: Choose Hoenn Starter (milestone)
  (10, 142, NULL, 100027, NULL),
  -- 143: Route 25 (milestone)
  (10, 143, NULL, 100034, NULL),
  -- 144: Roaming Latias or Latios (milestone)
  (10, 144, NULL, 100033, NULL),
  -- 145: Power Plant (milestone)
  (10, 145, NULL, 100035, NULL),
  -- 146: Seafoam Islands (milestone)
  (10, 146, NULL, 100036, NULL),
  -- 147: Mt. Silver Cave (milestone)
  (10, 147, NULL, 100037, NULL),
  -- 148: Cerulean Cave (milestone)
  (10, 148, NULL, 100038, NULL),
  -- 149: Pewter City Wing (milestone)
  (10, 149, NULL, 100039, NULL),
  -- 150: Embedded Tower (milestone)
  (10, 150, NULL, 100040, NULL),
  -- 151: Dragon's Den (milestone)
  (10, 151, NULL, 100041, NULL);
