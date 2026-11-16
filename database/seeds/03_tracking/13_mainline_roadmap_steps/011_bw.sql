-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's Black / White walkthrough, all 18 parts (the order
-- the story passes each place and reaches each beat, and what happens there),
-- with its location pages for the places.
-- Scope: Pokémon Black / White Story roadmap.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_roadmap_steps
-- Black / White's Story roadmap, step by step, in Red / Blue's pattern: a
-- place the walkthrough passes (location_id) or a milestone (milestone_id),
-- which sits at its own place. Places repeat where the walkthrough comes
-- back. Every Black / White milestone is one step where the walkthrough
-- reaches it: the Swords of Justice once you have Surf, the roaming Tornadus
-- or Thundurus after the Legend Badge, and Champion Alder, Kyurem and
-- Landorus after the League.
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
  -- 1: Nuvema Town
  (11, 1, 369, NULL, 'Your home town. Professor Juniper has left a gift box in your room for you and your friends Cheren and Bianca.'),
  -- 2: Choose Starter (milestone)
  (11, 2, NULL, 110001, NULL),
  -- 3: Nuvema Town
  (11, 3, 369, NULL, 'Your mom doesn''t mind the mess, and gives you an Xtransceiver. Fetch Bianca from her house and meet Cheren at the lab.'),
  -- 4: Receive Pokédex (milestone)
  (11, 4, NULL, 110002, NULL),
  -- 5: Route 1
  (11, 5, 375, NULL, 'The three of you take the first step together. Professor Juniper shows you how to catch a Pokémon and gives you five Poké Balls.'),
  -- 6: Accumula Town
  (11, 6, 343, NULL, 'Ghetsis of Team Plasma is giving a speech in the plaza about setting Pokémon free. A strange boy called N says he can hear your Pokémon, and battles you.'),
  -- 7: Route 2
  (11, 7, 386, NULL, 'Your mom catches up with you and gives you the Running Shoes. Bianca battles you just before Striaton City.'),
  -- 8: Striaton City
  (11, 8, 400, NULL, 'The Gym Leader is out until you have been to the Trainers'' School, where Cheren battles you. A girl in the Dreamyard gives you Pansage, Pansear or Panpour, the one that beats the Gym Leader you will face. Three brothers run the Gym.'),
  -- 9: Trio Badge (milestone)
  (11, 9, NULL, 110003, NULL),
  -- 10: Striaton City
  (11, 10, 400, NULL, 'Fennel meets you outside the Gym and takes you to her lab, where she gives you HM01 Cut.'),
  -- 11: Dreamyard (milestone)
  (11, 11, NULL, 110023, NULL),
  -- 12: Route 3
  (11, 12, 391, NULL, 'Past the Day Care and the preschool, Cheren battles you at the fork. Two Team Plasma Grunts then run by with a little girl''s Pokémon.'),
  -- 13: Wellspring Cave
  (11, 13, 410, NULL, 'Corner the Grunts with Cheren. Beat the first one alone and the next two in a Double Battle beside him to get the Pokémon back.'),
  -- 14: Nacrene City
  (11, 14, 367, NULL, 'A town of artists in old warehouses. N battles you outside the museum. Lenora''s Gym is at the back of the museum and uses Normal types. After you win, Team Plasma walks out with the museum''s Dragon Skull, and Bianca gives you a Dowsing Machine.'),
  -- 15: Basic Badge (milestone)
  (11, 15, NULL, 110004, NULL),
  -- 16: Pinwheel Forest (milestone)
  (11, 16, NULL, 110024, NULL),
  -- 17: Skyarrow Bridge
  (11, 17, 880, NULL, 'Unova''s longest bridge, from Pinwheel Forest to Castelia City.'),
  -- 18: Castelia City
  (11, 18, 345, NULL, 'Unova''s biggest city. Burgh leaves his Gym to help Bianca, whose Munna Team Plasma has taken. Beat the Grunts outside their building across from the Gym, and Ghetsis hands the Munna back. Burgh''s Gym uses Bug types.'),
  -- 19: Insect Badge (milestone)
  (11, 19, NULL, 110005, NULL),
  -- 20: Castelia City
  (11, 20, 345, NULL, 'Bianca asks you for a battle at the gate to Route 4.'),
  -- 21: Route 4
  (11, 21, 392, NULL, 'A desert road under a sandstorm, still being built. Cheren battles you on your way north.'),
  -- 22: Desert Resort
  (11, 22, 352, NULL, 'A desert of ruins west of Route 4. The Relic Castle lies half buried in it.'),
  -- 23: Relic Castle
  (11, 23, 372, NULL, 'A sunken castle full of quicksand. A Backpacker inside gives you the Cover Fossil or the Plume Fossil. Sand blocks the lower floors for now.'),
  -- 24: Nimbasa City
  (11, 24, 368, NULL, 'A city of fun. Chase two Team Plasma Grunts off the Day Care man and he gives you a Bicycle. A man in a house gives you HM04 Strength. N takes you on the Ferris wheel, tells you he is Team Plasma''s king and battles you. Elesa''s Gym uses Electric types.'),
  -- 25: Bolt Badge (milestone)
  (11, 25, NULL, 110006, NULL),
  -- 26: Route 5
  (11, 26, 393, NULL, 'Cheren battles you outside the city. Alder, the Champion, turns up, and Elesa has the Driftveil Drawbridge lowered for you.'),
  -- 27: Driftveil Drawbridge
  (11, 27, 356, NULL, 'A drawbridge over the river to Driftveil City.'),
  -- 28: Driftveil City
  (11, 28, 355, NULL, 'A port and market town. Clay is angry. The Team Plasma members he had caught got away when the bridge came down, and he wants them found. His Gym uses Ground types.'),
  -- 29: Cold Storage (milestone)
  (11, 29, NULL, 110025, NULL),
  -- 30: Quake Badge (milestone)
  (11, 30, NULL, 110007, NULL),
  -- 31: Driftveil City
  (11, 31, 355, NULL, 'Bianca battles you at the exit to Route 6 and gives you HM02 Fly.'),
  -- 32: Route 6
  (11, 32, 394, NULL, 'The Season Research Lab is on this road. A Galvantula web blocks Chargestone Cave until Clay clears it.'),
  -- 33: Chargestone Cave
  (11, 33, 349, NULL, 'A cave of floating magnetic stones. The Shadow Triad takes you to N, who says Team Plasma will test you. Professor Juniper gives you a Lucky Egg. N battles you near the exit.'),
  -- 34: Mistralton City
  (11, 34, 884, NULL, 'A town around an airport runway. Professor Juniper''s father is here. Skyla, the Gym Leader, has gone to Celestial Tower.'),
  -- 35: Route 7
  (11, 35, 395, NULL, 'Raised walkways over tall grass, north to Celestial Tower.'),
  -- 36: Celestial Tower
  (11, 36, 347, NULL, 'A tower of graves. Skyla is on the roof and asks you to ring the bell, then goes back to her Gym. Follow her back down Route 7.'),
  -- 37: Jet Badge (milestone)
  (11, 37, NULL, 110008, NULL),
  -- 38: Route 7
  (11, 38, 395, NULL, 'Cheren battles you at the entrance to Twist Mountain. Alder then gives you both HM03 Surf.'),
  -- 39: Route 17
  (11, 39, 383, NULL, 'A side trip with Surf. Fly to Nuvema Town and Surf west from Route 1 into these fast sea currents.'),
  -- 40: Route 18
  (11, 40, 384, NULL, 'The large island at the end of the westbound currents.'),
  -- 41: P2 Laboratory
  (11, 41, 370, NULL, 'An empty lab on a small island in the currents, cluttered with machines. Then fly back north.'),
  -- 42: Swords of Justice (milestone)
  (11, 42, NULL, 110019, NULL),
  -- 43: Twist Mountain
  (11, 43, 401, NULL, 'A mine in a crater, on the way to Icirrus City. Snow changes its paths in winter.'),
  -- 44: Icirrus City
  (11, 44, 362, NULL, 'A cold town by the marsh. Brycen''s Gym uses Ice types. After you win, the Shadow Triad says Ghetsis wants you at Dragonspiral Tower.'),
  -- 45: Freeze Badge (milestone)
  (11, 45, NULL, 110009, NULL),
  -- 46: Dragonspiral Tower (milestone)
  (11, 46, NULL, 110026, NULL),
  -- 47: Desert Resort
  (11, 47, 352, NULL, 'Fly south to the desert, where Team Plasma is searching the Relic Castle.'),
  -- 48: Relic Castle (milestone)
  (11, 48, NULL, 110027, NULL),
  -- 49: Nacrene City
  (11, 49, 367, NULL, 'Fly to Nacrene City. Lenora brings the stone out of the museum for you. Head back north, past Icirrus City.'),
  -- 50: Route 8
  (11, 50, 396, NULL, 'Fly to Icirrus City. A marshy road runs east of it. Bianca battles you on the way.'),
  -- 51: Moor of Icirrus
  (11, 51, 366, NULL, 'A side trip into the marsh off Route 8. Strength moves the rock on its west side.'),
  -- 52: Tubeline Bridge
  (11, 52, 887, NULL, 'A railway bridge. Ghetsis and the Shadow Triad wait for you at the far end with one more lecture.'),
  -- 53: Route 9
  (11, 53, 397, NULL, 'A short road with Shopping Mall Nine.'),
  -- 54: Opelucid City
  (11, 54, 888, NULL, 'Old in Black and futuristic in White. Ghetsis tells a crowd that N has joined with the legendary dragon. Drayden and Iris tell you the legend of the two dragons at their house. The Gym uses Dragon types. After you win, Professor Juniper gives you a Master Ball.'),
  -- 55: Legend Badge (milestone)
  (11, 55, NULL, 110010, NULL),
  -- 56: Roaming Tornadus or Thundurus (milestone)
  (11, 56, NULL, 110020, NULL),
  -- 57: Route 10
  (11, 57, 376, NULL, 'The road to the Pokémon League. Cheren battles you before the badge gates.'),
  -- 58: Victory Road (Black and White)
  (11, 58, 406, NULL, 'A mountain you climb through its caves and cliffs, sliding down the slopes.'),
  -- 59: Pokémon League
  (11, 59, 890, NULL, 'The last Pokémon Center and shop. The Elite Four''s rooms can be taken in any order. Once you go in, there''s no way out until you win or lose.'),
  -- 60: Pokémon League (milestone)
  (11, 60, NULL, 110016, NULL),
  -- 61: Challenger's Cave
  (11, 61, 348, NULL, 'A side trip into a cave off Route 9, north of Opelucid City, full of strong trainers.'),
  -- 62: Champion Alder (milestone)
  (11, 62, NULL, 110017, NULL),
  -- 63: Route 11
  (11, 63, 377, NULL, 'East of Opelucid City, over a river with a large waterfall.'),
  -- 64: Village Bridge
  (11, 64, 407, NULL, 'A bridge with houses on it, about 200 years old. The girl in the northeast house heals your team.'),
  -- 65: Route 12
  (11, 65, 378, NULL, 'Gentle hills east to Lacunosa Town.'),
  -- 66: Lacunosa Town
  (11, 66, 895, NULL, 'A tiny town whose people once feared a monster that came at night.'),
  -- 67: Route 13
  (11, 67, 379, NULL, 'A seaside road lined with trees. A treasure hunter gives you a rare item every day, and a move tutor teaches an ultimate move. The Giant Chasm opens to the north.'),
  -- 68: Giant Chasm (milestone)
  (11, 68, NULL, 110021, NULL),
  -- 69: Undella Town
  (11, 69, 403, NULL, 'A summer resort with villas on the beach. The wealthy family in the large villa on the west side wants a tough battle. Cynthia, Sinnoh''s Champion, stays here in the warm months.'),
  -- 70: Undella Bay
  (11, 70, 402, NULL, 'Dive at one of the four dark spots to find the Abyssal Ruins on the seabed.'),
  -- 71: Route 14
  (11, 71, 380, NULL, 'A misty, wooded route south of Undella Town, with a river and waterfalls. The Abundant Shrine lies in the trees to the west.'),
  -- 72: Abundant Shrine (milestone)
  (11, 72, NULL, 110022, NULL),
  -- 73: White Forest
  (11, 73, 411, NULL, 'In White, a woodland that grows as more people come. In Black, Black City stands here, a city that grows the same way. How big it is depends on how many days you took to get here.'),
  -- 74: Route 15
  (11, 74, 381, NULL, 'Cliffs with stairways and bridges. The Poké Transfer Lab at the top moves Pokémon over from older games.'),
  -- 75: Marvelous Bridge
  (11, 75, 364, NULL, 'A futuristic bridge over the sea, west to Route 16.'),
  -- 76: Route 16
  (11, 76, 382, NULL, 'A short road to Nimbasa City. A gap in the trees to the north leads to Lostlorn Forest.'),
  -- 77: Lostlorn Forest
  (11, 77, 363, NULL, 'A small wood where people get lost. A quiet woman lives alone in the trailer on its north side.');
