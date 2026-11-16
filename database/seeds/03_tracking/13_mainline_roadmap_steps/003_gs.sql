-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's Gold / Silver walkthrough, all 29 parts (the order the
-- story passes each place and reaches each beat, and what happens there), with
-- its location pages for the places.
-- Cross-check: the pret pokegold disassembly's map scripts for what blocks the
-- way (the Team Rocket Grunt at Azalea Gym, the odd tree on Route 36, the red
-- Gyarados, the hideout's Electrode and Vermilion City's Snorlax all leave
-- whether you catch them, beat them or run).
-- Scope: Pokémon Gold / Silver Story roadmap.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_roadmap_steps
-- Gold / Silver's Story roadmap, step by step, in Red / Blue's pattern: a
-- place the walkthrough passes (location_id) or a milestone (milestone_id),
-- which sits at its own place. Johto runs from New Bark Town to the Pokémon
-- League, then Post Game walks Kanto from the S.S. Aqua to Red on Mt. Silver.
-- Places repeat where the walkthrough comes back (New Bark Town four times,
-- Cherrygrove City, Route 29, Route 30, Mahogany Town and Cerulean City three
-- times). Every Gold / Silver milestone is one step where the walkthrough
-- reaches it: the optional Burned Tower and the three Pokémon that flee it
-- before the Fog Badge, the Tin Tower and the Whirl Islands as soon as the
-- Radio Tower's wing opens one of them.
-- A place step carries a note on what happens there: who gives you what,
-- what a path needs, what blocks the way and the Gym's type. It shows in the
-- place's detail only, and never lists the Pokémon found there, which the
-- detail already shows (a blocker may be named). Only the way the story takes
-- gets places: Dark Cave, Mt. Mortar and the Goldenrod Department Store are
-- not steps.
-- ============================================================================
INSERT INTO tracking.mainline_roadmap_steps (
  version_group_id,
  sort_order,
  location_id,
  milestone_id,
  note
) VALUES
  -- 1: New Bark Town
  (3, 1, 101, NULL, 'Your home town in Johto. Professor Elm asks you to visit his friend Mr. Pokémon, and lets you choose a Pokémon in his lab to take along.'),
  -- 2: Choose Starter (milestone)
  (3, 2, NULL, 30001, NULL),
  -- 3: Route 29
  (3, 3, 110, NULL, 'The road west to Cherrygrove City, with ledges you can only hop down. A Berry tree stands on the hill.'),
  -- 4: Cherrygrove City
  (3, 4, 84, NULL, 'The Guide Gent on the east side shows you around town and gives you a Map Card for your Pokégear.'),
  -- 5: Route 30
  (3, 5, 111, NULL, 'Runs north from Cherrygrove City. Two trainers are in the middle of a battle on the west path, so take the east path to Mr. Pokémon''s house.'),
  -- 6: Receive Pokédex (milestone)
  (3, 6, NULL, 30002, NULL),
  -- 7: Route 30
  (3, 7, 111, NULL, 'Professor Elm phones in a panic as you step outside. Head back south to New Bark Town.'),
  -- 8: Cherrygrove City
  (3, 8, 84, NULL, 'A red-haired boy stops you on the east side of town and battles you. He has a Pokémon from Professor Elm''s lab.'),
  -- 9: Route 29
  (3, 9, 110, NULL, 'Back east to New Bark Town with the Mystery Egg.'),
  -- 10: New Bark Town
  (3, 10, 101, NULL, 'A police officer is in the lab. One of Professor Elm''s Pokémon was stolen. Give Elm the Mystery Egg and his aide hands you five Poké Balls. Your mom offers to save part of your prize money.'),
  -- 11: Route 29
  (3, 11, 110, NULL, 'West again, now with Poké Balls to catch Pokémon on the way.'),
  -- 12: Cherrygrove City
  (3, 12, 84, NULL, 'The Poké Mart sells Poké Balls from now on.'),
  -- 13: Route 30
  (3, 13, 111, NULL, 'The battle on the west path is over, so the way north to Route 31 is open.'),
  -- 14: Route 31
  (3, 14, 112, NULL, 'A short road west to Violet City. Dark Cave opens off it, too dark and too blocked to explore for now.'),
  -- 15: Violet City
  (3, 15, 138, NULL, 'An old town with a Pokémon school. Falkner''s Gym uses Flying types. After you win, Professor Elm''s aide waits in the Pokémon Center with the Egg for you to carry.'),
  -- 16: Sprout Tower
  (3, 16, 135, NULL, 'A swaying pagoda full of Sages, north of town. Beat the Elder at the top and he gives you HM05 Flash.'),
  -- 17: Zephyr Badge (milestone)
  (3, 17, NULL, 30003, NULL),
  -- 18: Route 32
  (3, 18, 113, NULL, 'A long road south of Violet City. A man near the end tries to sell you a SlowpokeTail. The Fisherman in the Pokémon Center gives you an Old Rod.'),
  -- 19: Ruins of Alph
  (3, 19, 130, NULL, 'Old ruins west of Route 32. Solve the tile puzzle in the first chamber and the floor drops you into a hall of strange Pokémon. The three chambers left need Surf, and one of them Strength too.'),
  -- 20: Union Cave
  (3, 20, 137, NULL, 'A cave between Route 32 and Route 33. Its lower floors are flooded, so they wait until you can Surf.'),
  -- 21: Route 33
  (3, 21, 114, NULL, 'A short road from Union Cave into Azalea Town.'),
  -- 22: Azalea Town
  (3, 22, 80, NULL, 'Bugsy''s Gym uses Bug types, but a Team Rocket Grunt stands in front of it. Kurt, who makes Poké Balls from Apricorns, runs off to the Slowpoke Well to stop Team Rocket.'),
  -- 23: Slowpoke Well (milestone)
  (3, 23, NULL, 30033, NULL),
  -- 24: Hive Badge (milestone)
  (3, 24, NULL, 30004, NULL),
  -- 25: Azalea Town
  (3, 25, 80, NULL, 'Silver catches up with you at the west exit and battles you before you can reach Ilex Forest.'),
  -- 26: Ilex Forest (milestone)
  (3, 26, NULL, 30034, NULL),
  -- 27: Route 34
  (3, 27, 115, NULL, 'North of Ilex Forest. The Day Care couple here raise up to two Pokémon for you, and may find an Egg.'),
  -- 28: Goldenrod City
  (3, 28, 91, NULL, 'Johto''s biggest city. The Bike Shop lends you a Bicycle for free, and the Radio Tower''s quiz wins you a Radio Card. Whitney''s Gym uses Normal types. After you win, the flower shop next door gives you the SquirtBottle.'),
  -- 29: Plain Badge (milestone)
  (3, 29, NULL, 30005, NULL),
  -- 30: Route 35
  (3, 30, 116, NULL, 'North of Goldenrod City. The guard in the gate asks you to carry a Pokémon holding Mail to his friend on Route 31.'),
  -- 31: National Park
  (3, 31, 100, NULL, 'A park between Route 35 and Route 36. The Bug-Catching Contest runs here on Tuesdays, Thursdays and Saturdays.'),
  -- 32: Route 36
  (3, 32, 117, NULL, 'An odd tree blocks the road in every direction. Use the SquirtBottle on it and it attacks. Catch it, beat it or run, and the way is clear. A man nearby then gives you TM08 Rock Smash.'),
  -- 33: Route 37
  (3, 33, 118, NULL, 'A short road north to Ecruteak City.'),
  -- 34: Ecruteak City
  (3, 34, 90, NULL, 'An old city with two towers. Beat the five Kimono Girls in the Dance Theater and a gentleman gives you HM03 Surf. A man in the southwest house gives you an Itemfinder. Morty''s Gym uses Ghost types.'),
  -- 35: Burned Tower (milestone)
  (3, 35, NULL, 30026, NULL),
  -- 36: Roaming Raikou (milestone)
  (3, 36, NULL, 30028, NULL),
  -- 37: Roaming Entei (milestone)
  (3, 37, NULL, 30029, NULL),
  -- 38: Roaming Suicune (milestone)
  (3, 38, NULL, 30030, NULL),
  -- 39: Fog Badge (milestone)
  (3, 39, NULL, 30006, NULL),
  -- 40: Route 38
  (3, 40, 119, NULL, 'West of Ecruteak City, toward the coast.'),
  -- 41: Route 39
  (3, 41, 120, NULL, 'Moomoo Farm sits along this road. Its sick Miltank needs seven Berries, and the farmer thanks you with TM13 Snore.'),
  -- 42: Olivine City
  (3, 42, 102, NULL, 'A port town. Jasmine is away from her Gym, nursing a sick Pokémon at the top of the Lighthouse, and asks you to fetch medicine from Cianwood City. A sailor in the café gives you HM04 Strength, and the Fisherman south of the Gym a Good Rod.'),
  -- 43: Route 40
  (3, 43, 121, NULL, 'Surf west from Olivine City''s beach.'),
  -- 44: Route 41
  (3, 44, 122, NULL, 'Open sea south to Cianwood City, full of Swimmers. The Whirl Islands lie in the middle, ringed by whirlpools you can''t cross yet.'),
  -- 45: Cianwood City
  (3, 45, 85, NULL, 'An island town. The pharmacy gives you the SecretPotion for Jasmine. Chuck''s Gym uses Fighting types. After you win, his wife outside gives you HM02 Fly.'),
  -- 46: Storm Badge (milestone)
  (3, 46, NULL, 30007, NULL),
  -- 47: Olivine City
  (3, 47, 102, NULL, 'Fly back and climb the Lighthouse with the SecretPotion.'),
  -- 48: Olivine Lighthouse (milestone)
  (3, 48, NULL, 30035, NULL),
  -- 49: Mineral Badge (milestone)
  (3, 49, NULL, 30008, NULL),
  -- 50: Ecruteak City
  (3, 50, 90, NULL, 'Fly back to Ecruteak City and take the east exit to Route 42.'),
  -- 51: Route 42
  (3, 51, 123, NULL, 'East of Ecruteak City, across ponds you Surf over. Mt. Mortar''s three entrances open off this road. The cave is optional.'),
  -- 52: Mahogany Town
  (3, 52, 824, NULL, 'A quiet mountain town. One man blocks the road east, and another blocks the Gym and tells you to go and see the Lake of Rage. The souvenir shop looks shady.'),
  -- 53: Route 43
  (3, 53, 124, NULL, 'North to the Lake of Rage. Team Rocket Grunts in the gate charge a toll of 1,000 Pokédollars. The long way round through the tall grass avoids them.'),
  -- 54: Lake of Rage (milestone)
  (3, 54, NULL, 30036, NULL),
  -- 55: Route 43
  (3, 55, 124, NULL, 'Back south to Mahogany Town, where Lance said to meet him.'),
  -- 56: Mahogany Town
  (3, 56, 824, NULL, 'Lance''s Dragonite is blasting the shopkeeper when you walk into the souvenir shop. A hidden stairway leads down to Team Rocket''s hideout.'),
  -- 57: Team Rocket HQ (milestone)
  (3, 57, NULL, 30037, NULL),
  -- 58: Glacier Badge (milestone)
  (3, 58, NULL, 30009, NULL),
  -- 59: Goldenrod City
  (3, 59, 91, NULL, 'Professor Elm phones about strange broadcasts. Team Rocket has taken over the city and the Radio Tower. The man in the Director''s office is a fake, and he gives up the Basement Key when you beat him.'),
  -- 60: Goldenrod Underground
  (3, 60, 830, NULL, 'Enter from the north and unlock the door with the Basement Key. Silver waits in the basement. Past the shutter switches, the real Director is held in the warehouse and gives you the Card Key.'),
  -- 61: Radio Tower (milestone)
  (3, 61, NULL, 30027, NULL),
  -- 62: Tin Tower (milestone)
  (3, 62, NULL, 30031, NULL),
  -- 63: Whirl Islands (milestone)
  (3, 63, NULL, 30032, NULL),
  -- 64: Mahogany Town
  (3, 64, 824, NULL, 'With Team Rocket gone, the man blocking the road east has left.'),
  -- 65: Route 44
  (3, 65, 125, NULL, 'East of Mahogany Town, toward the Ice Path.'),
  -- 66: Ice Path
  (3, 66, 93, NULL, 'A frozen cave where you slide until something stops you. Push four boulders down the holes with Strength to cross. HM07 Waterfall lies on the first floor.'),
  -- 67: Blackthorn City
  (3, 67, 82, NULL, 'A mountain town of Dragon trainers. Clair''s Gym uses Dragon types. The Move Deleter here makes a Pokémon forget a move, HM moves included.'),
  -- 68: Dragon's Den
  (3, 68, 89, NULL, 'A cave behind the Gym, across water you Surf and Whirlpool through. After you beat Clair, find the Dragon Fang here and she hands over the badge.'),
  -- 69: Rising Badge (milestone)
  (3, 69, NULL, 30010, NULL),
  -- 70: Route 45
  (3, 70, 126, NULL, 'A long way south from Blackthorn City, down ledges you can''t climb back up.'),
  -- 71: Route 46
  (3, 71, 127, NULL, 'More ledges, down to Route 29 beside New Bark Town.'),
  -- 72: New Bark Town
  (3, 72, 101, NULL, 'Professor Elm phones to ask you home, and gives you a Master Ball. Surf east from town to start for the Pokémon League.'),
  -- 73: Route 27
  (3, 73, 108, NULL, 'Across the water from New Bark Town, you step into Kanto.'),
  -- 74: Tohjo Falls
  (3, 74, 136, NULL, 'A small cave on the border between Johto and Kanto. You need Waterfall to climb through it.'),
  -- 75: Route 26
  (3, 75, 107, NULL, 'North toward the Pokémon League. A woman in a house on the way heals your team.'),
  -- 76: Victory Road
  (3, 76, 75, NULL, 'The guards at the gate check your eight badges. The cave has no trainers, but Silver stops you just before the exit.'),
  -- 77: Indigo Plateau
  (3, 77, 21, NULL, 'The last Pokémon Center and Poké Mart before the League. Once you face the Elite Four, there''s no way out until you win or lose.'),
  -- 78: Pokémon League (milestone)
  (3, 78, NULL, 30015, NULL),
  -- 79: New Bark Town
  (3, 79, 101, NULL, 'After the credits you wake up at home. Professor Elm gives you the S.S. Ticket for the ship to Kanto.'),
  -- 80: Olivine City
  (3, 80, 102, NULL, 'Show the S.S. Ticket at the harbour to board the S.S. Aqua.'),
  -- 81: S.S. Aqua
  (3, 81, 831, NULL, 'A fast ship to Vermilion City. A gentleman has lost his granddaughter. Beat the sailor napping in a cabin so the lower deck opens, find her in the captain''s cabin, and he gives you a Metal Coat.'),
  -- 82: Vermilion City
  (3, 82, 74, NULL, 'Kanto''s port. A sleeping Snorlax blocks the east exit and Diglett''s Cave. Lt. Surge''s Gym uses Electric types. The Pokémon Fan Club''s chairman gives you a Rare Candy.'),
  -- 83: Thunder Badge (milestone)
  (3, 83, NULL, 30019, NULL),
  -- 84: Route 6
  (3, 84, 59, NULL, 'North to Saffron City.'),
  -- 85: Saffron City
  (3, 85, 133, NULL, 'Kanto''s biggest city. Sabrina''s Gym uses Psychic types. Mr. Psychic gives you TM29 Psychic, and the Silph Co. guard an Up-Grade. The Magnet Train is stopped by trouble at the Power Plant.'),
  -- 86: Marsh Badge (milestone)
  (3, 86, NULL, 30022, NULL),
  -- 87: Route 8
  (3, 87, 61, NULL, 'East to Lavender Town.'),
  -- 88: Lavender Town
  (3, 88, 23, NULL, 'Pokémon Tower is now the Kanto Radio Tower, and its graves moved to the Soul House. The tower lets visitors only onto the first floor.'),
  -- 89: Route 10
  (3, 89, 39, NULL, 'North of Lavender Town, to the south mouth of Rock Tunnel.'),
  -- 90: Rock Tunnel
  (3, 90, 37, NULL, 'Pitch dark without Flash. Come out the north side onto Route 9.'),
  -- 91: Route 9
  (3, 91, 62, NULL, 'A man in the Pokémon Center by Rock Tunnel says the Power Plant''s manager is looking for strong trainers. Surf down the river to reach it.'),
  -- 92: Route 10
  (3, 92, 39, NULL, 'The Power Plant stands on the river. A thief has stolen a part from its generator, and the guard hears of a shady man around Cerulean City.'),
  -- 93: Cerulean City
  (3, 93, 9, NULL, 'A man in black runs into you at the Gym door and hurries off north. The Bike Shop has moved to Goldenrod City, and Cerulean Cave has collapsed.'),
  -- 94: Route 24
  (3, 94, 54, NULL, 'The man in black is a Team Rocket Grunt, waiting on Nugget Bridge. Beat him and he admits he hid the Machine Part in Cerulean Gym''s pool.'),
  -- 95: Cerulean City
  (3, 95, 9, NULL, 'Search the water in the middle of the Gym for the Machine Part, then take it back to the Power Plant.'),
  -- 96: Power Plant (milestone)
  (3, 96, NULL, 30038, NULL),
  -- 97: Lavender Town
  (3, 97, 23, NULL, 'The Radio Tower''s manager thanks you for the power with an EXPN Card. It tunes your Pokégear to the Poké Flute channel, which wakes sleeping Pokémon.'),
  -- 98: Route 25
  (3, 98, 55, NULL, 'Six trainers in a row along the cape, with a Nugget for beating them all. Misty is on a date at the end. Interrupt it and she goes back to her Gym. Bill''s grandfather keeps the Sea Cottage.'),
  -- 99: Cascade Badge (milestone)
  (3, 99, NULL, 30018, NULL),
  -- 100: Route 5
  (3, 100, 58, NULL, 'South of Cerulean City to Saffron City. The Underground Path is open again now the power is back.'),
  -- 101: Saffron City
  (3, 101, 133, NULL, 'Copycat has lost her doll. Fetch it from the Pokémon Fan Club in Vermilion City and she gives you the Pass for the Magnet Train to Goldenrod City.'),
  -- 102: Route 7
  (3, 102, 60, NULL, 'A short road west to Celadon City.'),
  -- 103: Celadon City
  (3, 103, 6, NULL, 'Erika''s Gym uses Grass types. The Department Store sells nearly everything, and Leftovers sit in the restaurant''s trash can.'),
  -- 104: Rainbow Badge (milestone)
  (3, 104, NULL, 30020, NULL),
  -- 105: Route 16
  (3, 105, 45, NULL, 'West of Celadon City, to the top of Cycling Road.'),
  -- 106: Route 17
  (3, 106, 46, NULL, 'Cycling Road, a long ride downhill over the sea. You need the Bicycle.'),
  -- 107: Route 18
  (3, 107, 47, NULL, 'The end of Cycling Road, leading east to Fuchsia City.'),
  -- 108: Fuchsia City
  (3, 108, 18, NULL, 'Janine''s Gym uses Poison types. The Safari Zone is closed, since its Warden has gone travelling. Rocks from Cinnabar Island''s volcano block the sea route south.'),
  -- 109: Soul Badge (milestone)
  (3, 109, NULL, 30021, NULL),
  -- 110: Route 15
  (3, 110, 44, NULL, 'East out of Fuchsia City.'),
  -- 111: Route 14
  (3, 111, 43, NULL, 'North along the coast.'),
  -- 112: Route 13
  (3, 112, 42, NULL, 'A maze of fences by the sea.'),
  -- 113: Route 12
  (3, 113, 41, NULL, 'The Fishing Guru''s brother, in the house by the turn to Route 11, gives you the Super Rod.'),
  -- 114: Route 11
  (3, 114, 40, NULL, 'West toward Vermilion City, to the sleeping Snorlax.'),
  -- 115: Vermilion City
  (3, 115, 74, NULL, 'Tune the Pokégear radio to the Poké Flute channel beside the Snorlax and it wakes up angry. Catch it, beat it or run. Diglett''s Cave is open.'),
  -- 116: Diglett's Cave
  (3, 116, 13, NULL, 'A long tunnel under Kanto to Route 2. With the sea route from Fuchsia City blocked, it''s the only way west.'),
  -- 117: Route 2
  (3, 117, 49, NULL, 'Out of Diglett''s Cave, north to Pewter City. A lonely man in the house here gives you a Nugget.'),
  -- 118: Pewter City
  (3, 118, 104, NULL, 'Brock''s Gym uses Rock types. The Museum is closed for renovations. An old man on the east side gives you the Silver Wing in Gold or the Rainbow Wing in Silver.'),
  -- 119: Boulder Badge (milestone)
  (3, 119, NULL, 30017, NULL),
  -- 120: Route 3
  (3, 120, 56, NULL, 'East of Pewter City to Mt. Moon.'),
  -- 121: Mt. Moon
  (3, 121, 27, NULL, 'Collapses have left one chamber between Route 3 and Route 4. Silver meets you inside for one more battle. Mt. Moon Square is at the top.'),
  -- 122: Route 4
  (3, 122, 57, NULL, 'Down the ledges to Cerulean City.'),
  -- 123: Viridian City
  (3, 123, 76, NULL, 'South of Pewter City through Route 2. The Gym is open but its Leader is away. The Trainer House in the middle of town holds one battle a day.'),
  -- 124: Route 1
  (3, 124, 38, NULL, 'South to Pallet Town.'),
  -- 125: Pallet Town
  (3, 125, 30, NULL, 'Red''s mother and Blue''s sister Daisy live in the two houses. Professor Oak rates your Pokédex and asks you back once you have all eight Kanto badges.'),
  -- 126: Route 21
  (3, 126, 51, NULL, 'Surf south from Pallet Town to Cinnabar Island.'),
  -- 127: Cinnabar Island
  (3, 127, 11, NULL, 'The volcano erupted a year ago and only the Pokémon Center stands. Blue is behind it, looking at the ruins. Talk to him and he goes back to Viridian Gym.'),
  -- 128: Route 20
  (3, 128, 50, NULL, 'Surf east to the Seafoam Islands, where Blaine moved his Gym.'),
  -- 129: Seafoam Islands
  (3, 129, 65, NULL, 'Volcanic rock closed all but one small cave, and Blaine''s Gym is inside it.'),
  -- 130: Volcano Badge (milestone)
  (3, 130, NULL, 30023, NULL),
  -- 131: Route 19
  (3, 131, 48, NULL, 'The rocks are cleared, so the sea route north to Fuchsia City is open again.'),
  -- 132: Viridian City
  (3, 132, 76, NULL, 'Fly back. Blue is in his Gym now. He has no one type, and no trainers to fight first.'),
  -- 133: Earth Badge (milestone)
  (3, 133, NULL, 30024, NULL),
  -- 134: Pallet Town
  (3, 134, 30, NULL, 'Tell Professor Oak you have all sixteen badges and he arranges for you to enter Mt. Silver.'),
  -- 135: Route 22
  (3, 135, 52, NULL, 'West of Viridian City to the League gate, where the guards now let you through to Route 28.'),
  -- 136: Route 28
  (3, 136, 109, NULL, 'The road to Mt. Silver. A retired celebrity, in a house behind a tree that needs Cut, gives you TM47 Steel Wing.'),
  -- 137: Mt. Silver
  (3, 137, 98, NULL, 'A Pokémon Center stands at the foot of the mountain, the last stop before the climb.'),
  -- 138: Defeat Red (milestone)
  (3, 138, NULL, 30025, NULL);
