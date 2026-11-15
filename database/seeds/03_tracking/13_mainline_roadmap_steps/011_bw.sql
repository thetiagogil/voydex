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
  (11, 36, 347, NULL, 'A tower of graves. Skyla is on the roof and asks you to ring the bell, then goes back to her Gym.'),
  -- 37: Jet Badge (milestone)
  (11, 37, NULL, 110008, NULL),
  -- 38: Route 7
  (11, 38, 395, NULL, 'Cheren battles you at the entrance to Twist Mountain. Alder then gives you both HM03 Surf.'),
  -- 39: Swords of Justice (milestone)
  (11, 39, NULL, 110019, NULL),
  -- 40: Twist Mountain
  (11, 40, 401, NULL, 'A mine in a crater, on the way to Icirrus City. Snow changes its paths in winter.'),
  -- 41: Icirrus City
  (11, 41, 362, NULL, 'A cold town by the marsh. Brycen''s Gym uses Ice types. After you win, the Shadow Triad says Ghetsis wants you at Dragonspiral Tower.'),
  -- 42: Freeze Badge (milestone)
  (11, 42, NULL, 110009, NULL),
  -- 43: Dragonspiral Tower (milestone)
  (11, 43, NULL, 110026, NULL),
  -- 44: Relic Castle (milestone)
  (11, 44, NULL, 110027, NULL),
  -- 45: Nacrene City
  (11, 45, 367, NULL, 'Lenora brings the stone out of the museum for you. Head back north, past Icirrus City.'),
  -- 46: Route 8
  (11, 46, 396, NULL, 'A marshy road east of Icirrus City. Bianca battles you on the way.'),
  -- 47: Tubeline Bridge
  (11, 47, 887, NULL, 'A railway bridge. Ghetsis and the Shadow Triad wait for you at the far end with one more lecture.'),
  -- 48: Route 9
  (11, 48, 397, NULL, 'A short road with Shopping Mall Nine.'),
  -- 49: Opelucid City
  (11, 49, 888, NULL, 'Old in Black and futuristic in White. Ghetsis tells a crowd that N has joined with the legendary dragon. Drayden and Iris tell you the legend of the two dragons at their house. The Gym uses Dragon types. After you win, Professor Juniper gives you a Master Ball.'),
  -- 50: Legend Badge (milestone)
  (11, 50, NULL, 110010, NULL),
  -- 51: Roaming Tornadus or Thundurus (milestone)
  (11, 51, NULL, 110020, NULL),
  -- 52: Route 10
  (11, 52, 376, NULL, 'The road to the Pokémon League. Cheren battles you before the badge gates.'),
  -- 53: Victory Road (Black and White)
  (11, 53, 406, NULL, 'A mountain you climb through its caves and cliffs, sliding down the slopes.'),
  -- 54: Pokémon League
  (11, 54, 890, NULL, 'The last Pokémon Center and shop. The Elite Four''s rooms can be taken in any order. Once you go in, there''s no way out until you win or lose.'),
  -- 55: Pokémon League (milestone)
  (11, 55, NULL, 110016, NULL),
  -- 56: Champion Alder (milestone)
  (11, 56, NULL, 110017, NULL),
  -- 57: Giant Chasm (milestone)
  (11, 57, NULL, 110021, NULL),
  -- 58: Abundant Shrine (milestone)
  (11, 58, NULL, 110022, NULL);
