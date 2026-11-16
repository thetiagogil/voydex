-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's Black 2 / White 2 walkthrough, all 22 parts (the
-- order the story passes each place and reaches each beat, and what happens
-- there), with its location pages for the places.
-- Scope: Pokémon Black 2 / White 2 Story roadmap.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_roadmap_steps
-- Black 2 / White 2's Story roadmap, step by step, in Red / Blue's pattern: a
-- place the walkthrough passes (location_id) or a milestone (milestone_id),
-- which sits at its own place. Places repeat where the walkthrough comes
-- back. Every Black 2 / White 2 milestone is one step where the walkthrough
-- reaches it: the Swords of Justice from Route 13 on, and the rest of the
-- optional beats after the League.
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
  -- 1: Aspertia City
  (12, 1, 344, NULL, 'Your home town in the southwest of Unova. Your mom sends you to find Bianca, who has a Pokémon for you. Your rival Hugh comes along to the lookout at the top of town.'),
  -- 2: Choose Starter (milestone)
  (12, 2, NULL, 120001, NULL),
  -- 3: Receive Pokédex (milestone)
  (12, 3, NULL, 120002, NULL),
  -- 4: Route 19
  (12, 4, 385, NULL, 'North of Aspertia City. Bianca shows you how to catch a Pokémon.'),
  -- 5: Floccesy Town
  (12, 5, 358, NULL, 'A small town. Alder, the old Champion, drops in front of you and offers to train you once you have been out to Route 20 and the ranch. Much later, once you beat Benga in Black Tower or White Treehollow, he gives you a Shiny Gible in Black 2 or a Shiny Dratini in White 2 at Alder''s house.'),
  -- 6: Route 20
  (12, 6, 387, NULL, 'East of Floccesy Town, with the ranch to the north.'),
  -- 7: Floccesy Ranch
  (12, 7, 357, NULL, 'Hugh battles you at the gate. One of the owners'' two Herdier is missing. Find it in the trees, where a Team Plasma Grunt has cornered it. He throws TM21 Frustration at you and runs.'),
  -- 8: Floccesy Town
  (12, 8, 358, NULL, 'Alder has you battle his two students, then tells you the Gym in Aspertia City is open.'),
  -- 9: Route 19
  (12, 9, 385, NULL, 'Back down to Aspertia City.'),
  -- 10: Aspertia City
  (12, 10, 344, NULL, 'The Gym is behind the Trainers'' School. Its new Leader is Cheren, and he uses Normal types. After you win, Bianca gives you the C-Gear.'),
  -- 11: Basic Badge (milestone)
  (12, 11, NULL, 120003, NULL),
  -- 12: Route 19
  (12, 12, 385, NULL, 'North again.'),
  -- 13: Floccesy Town
  (12, 13, 358, NULL, 'Through town to Route 20.'),
  -- 14: Route 20
  (12, 14, 387, NULL, 'Back east, and on to Virbank City.'),
  -- 15: Virbank City
  (12, 15, 408, NULL, 'A port town of factories. Roxie''s Gym is a music club and uses Poison types. Pokéstar Studios is just north of town.'),
  -- 16: Virbank Complex
  (12, 16, 409, NULL, 'A side trip to the industrial zone by the town, with raised walkways over the tall grass. Its tanks and towers light up at night.'),
  -- 17: Toxic Badge (milestone)
  (12, 17, NULL, 120004, NULL),
  -- 18: Virbank City
  (12, 18, 408, NULL, 'Roxie and Hugh are facing Team Plasma at the pier. Beat the Grunt in the middle, and Roxie gives you HM01 Cut. Chase the last one back to Route 20, then take the ship to Castelia City.'),
  -- 19: Castelia City
  (12, 19, 345, NULL, 'Unova''s biggest city. A Harlequin gives you a Bicycle. Burgh is away from his Gym, which uses Bug types. Iris, who used to lead Opelucid Gym, thinks Team Plasma may be hiding in the sewers. After the credits, Amanita gives you an Eevee here.'),
  -- 20: Castelia Sewers (milestone)
  (12, 20, NULL, 120029, NULL),
  -- 21: Insect Badge (milestone)
  (12, 21, NULL, 120005, NULL),
  -- 22: Castelia City
  (12, 22, 345, NULL, 'Bianca catches you at the north gate with a Dowsing Machine.'),
  -- 23: Route 4
  (12, 23, 392, NULL, 'A desert road, with new buildings in Black 2 and old ruins in White 2. Colress is waiting to battle you.'),
  -- 24: Desert Resort
  (12, 24, 352, NULL, 'A desert of ruins west of Route 4. The Relic Castle lies half buried in it.'),
  -- 25: Nimbasa City
  (12, 25, 368, NULL, 'A city of fun. Elesa''s Gym is now a fashion runway and uses Electric types. After you win, Hugh is squaring up to four Team Plasma Grunts outside Big Stadium, and they run off.'),
  -- 26: Bolt Badge (milestone)
  (12, 26, NULL, 120006, NULL),
  -- 27: Route 16
  (12, 27, 382, NULL, 'A side trip east of Nimbasa City. The lift up to Marvelous Bridge is out of order for now.'),
  -- 28: Lostlorn Forest
  (12, 28, 363, NULL, 'A small wood north of Route 16. Two years ago it looked far thicker, but that was an illusion.'),
  -- 29: Route 5
  (12, 29, 393, NULL, 'Bianca catches up with you and gives you HM02 Fly, then shows you a Hidden Grotto.'),
  -- 30: Hidden Grotto
  (12, 30, 360, NULL, 'A shadow under a group of trees. Grottoes like this one are scattered across Unova, each with a Pokémon or an item inside.'),
  -- 31: Driftveil Drawbridge
  (12, 31, 356, NULL, 'A drawbridge over the river to Driftveil City.'),
  -- 32: Driftveil City
  (12, 32, 355, NULL, 'A port and market town. On the hill by the Gym, old Team Plasma members led by Rood look after Pokémon the team once stole. Hugh comes looking for his sister''s Purrloin, and Rood asks you to take in a Zorua that was N''s. Clay''s Gym uses Ground types.'),
  -- 33: Quake Badge (milestone)
  (12, 33, NULL, 120007, NULL),
  -- 34: Pokémon World Tournament (milestone)
  (12, 34, NULL, 120030, NULL),
  -- 35: Relic Passage
  (12, 35, 373, NULL, 'A side trip into a newly found tunnel from the Pokémon World Tournament to the Castelia Sewers. One branch leads to the Relic Castle.'),
  -- 36: Relic Castle
  (12, 36, 372, NULL, 'The lowest floor of the castle buried under the desert, reached through the Relic Passage. Then back through the passage to Driftveil City.'),
  -- 37: Route 6
  (12, 37, 394, NULL, 'Cheren is outside the Season Research Lab and gives you HM03 Surf. Cobalion jumps down in front of you on the last bridge, then leaves. A researcher inside gives you a Deerling.'),
  -- 38: Mistralton Cave
  (12, 38, 365, NULL, 'A side trip into the cave off Route 6, once home to Cobalion. An old man deep inside is still searching for it.'),
  -- 39: Chargestone Cave
  (12, 39, 349, NULL, 'A cave of floating magnetic stones. Bianca is inside, studying them.'),
  -- 40: Mistralton City
  (12, 40, 884, NULL, 'A town around an airport runway. Professor Juniper gives you a Master Ball. Skyla''s Gym uses Flying types. After you win, she flies you, Juniper and Bianca to Lentimas Town.'),
  -- 41: Route 7
  (12, 41, 395, NULL, 'North of Mistralton City on raised walkways. Professor Juniper has gone up Celestial Tower.'),
  -- 42: Celestial Tower
  (12, 42, 347, NULL, 'A tower of graves with a bell on its roof. Catch up with Professor Juniper at the top and ring the bell. Then back down Route 7 to the Gym.'),
  -- 43: Jet Badge (milestone)
  (12, 43, NULL, 120008, NULL),
  -- 44: Lentimas Town
  (12, 44, 894, NULL, 'A dusty town under a volcano. Professor Juniper tells you about the dragons before you go on. The Strange House stands to the east.'),
  -- 45: Strange House
  (12, 45, 399, NULL, 'A side trip to an old house in the canyon east of town, known for a sad story. A ghost appears inside, and the furniture moves on its own.'),
  -- 46: Reversal Mountain
  (12, 46, 374, NULL, 'A volcano between Lentimas Town and Undella Town. Bianca teams up with you inside and heals your team after every battle.'),
  -- 47: Undella Town
  (12, 47, 403, NULL, 'A summer resort by the sea. Hugh catches up with you at the gate to Route 13 and battles you.'),
  -- 48: Undella Bay
  (12, 48, 402, NULL, 'A side trip into the bay where people sunbathe. The Abyssal Ruins lie on the seabed far below, out of reach without Dive.'),
  -- 49: Route 13
  (12, 49, 379, NULL, 'A beach under cliffs. Cobalion stands in a clearing past the trees that need Cut.'),
  -- 50: Swords of Justice (milestone)
  (12, 50, NULL, 120019, NULL),
  -- 51: Lacunosa Town
  (12, 51, 895, NULL, 'A town that shuts its doors at night for fear of a monster. Professor Juniper tells you its old legend. Zinzolin and a Team Plasma Grunt appear on the west side, and Hugh asks you to fight beside him.'),
  -- 52: Route 12
  (12, 52, 378, NULL, 'Rolling hills west of Lacunosa Town.'),
  -- 53: Village Bridge
  (12, 53, 407, NULL, 'An old bridge with houses built on it.'),
  -- 54: Route 11
  (12, 54, 377, NULL, 'A short road past a waterfall, where Virizion waits.'),
  -- 55: Opelucid City
  (12, 55, 888, NULL, 'Iris greets you at the gate. Drayden, the mayor, leads the Gym alone now, and it uses Dragon types. After you win, he tells you the story of Kyurem and the DNA Splicers at his house.'),
  -- 56: Route 9
  (12, 56, 397, NULL, 'A side trip east of Opelucid City to Shopping Mall Nine, the biggest shop in Unova.'),
  -- 57: Legend Badge (milestone)
  (12, 57, NULL, 120009, NULL),
  -- 58: Team Plasma's Attack (milestone)
  (12, 58, NULL, 120031, NULL),
  -- 59: Humilau City
  (12, 59, 361, NULL, 'A resort on stilts over the sea, reached through the Marine Tube from Undella Town. Hugh waits by the exit. Marlon jumps out of the sea to meet you and goes back to his Gym, which uses Water types.'),
  -- 60: Wave Badge (milestone)
  (12, 60, NULL, 120010, NULL),
  -- 61: Route 22
  (12, 61, 389, NULL, 'West of Humilau City. Colress gives you the Colress Machine. Terrakion waits in the middle of the route.'),
  -- 62: Route 21
  (12, 62, 388, NULL, 'A sea route south of Humilau City, to Seaside Cave.'),
  -- 63: Seaside Cave
  (12, 63, 398, NULL, 'Use the Colress Machine on the odd boulder at the exit. It is a Crustle, and it attacks. Beyond it, the Plasma Frigate lies at anchor, and Hugh is looking for a way aboard.'),
  -- 64: Giant Chasm
  (12, 64, 359, NULL, 'The frigate lands in the crater after its crew throws you off at sea. Team Plasma Grunts hold the cave and the forest, and Hugh and Rood''s people help you through.'),
  -- 65: Plasma Frigate (milestone)
  (12, 65, NULL, 120011, NULL),
  -- 66: Defeat Ghetsis (milestone)
  (12, 66, NULL, 120012, NULL),
  -- 67: Route 23
  (12, 67, 390, NULL, 'The way from the Giant Chasm to Victory Road.'),
  -- 68: Victory Road (Black 2 and White 2)
  (12, 68, 405, NULL, 'N waits at the entrance and gives you HM05 Waterfall. Hugh battles you inside, before the League.'),
  -- 69: Pokémon League
  (12, 69, 890, NULL, 'The last Pokémon Center and shop. The Elite Four''s rooms can be taken in any order. Once you go in, there''s no way out until you win or lose.'),
  -- 70: Pokémon League (milestone)
  (12, 70, NULL, 120017, NULL),
  -- 71: Hugh in Undella Town (milestone)
  (12, 71, NULL, 120028, NULL),
  -- 72: Pinwheel Forest
  (12, 72, 371, NULL, 'Fly to Castelia City and cross Skyarrow Bridge into the forest.'),
  -- 73: Nacrene City
  (12, 73, 367, NULL, 'A town of old warehouses, home of the Nacrene Museum and Loblolly''s studio.'),
  -- 74: Route 3
  (12, 74, 391, NULL, 'East toward Striaton City, past the Pokémon Day Care and the preschool.'),
  -- 75: Wellspring Cave
  (12, 75, 410, NULL, 'A short cave off Route 3.'),
  -- 76: Striaton City
  (12, 76, 400, NULL, 'Cilan, Chili and Cress now run the restaurant and battle you together. The Dreamyard is east of town.'),
  -- 77: Dreamyard (milestone)
  (12, 77, NULL, 120020, NULL),
  -- 78: Route 2
  (12, 78, 386, NULL, 'South to Accumula Town.'),
  -- 79: Accumula Town
  (12, 79, 343, NULL, 'A quiet hillside town.'),
  -- 80: Route 1
  (12, 80, 375, NULL, 'South toward Nuvema Town. Surf west from its shore to Route 17.'),
  -- 81: Route 17
  (12, 81, 383, NULL, 'Fast sea currents west of Route 1.'),
  -- 82: Route 18
  (12, 82, 384, NULL, 'A large island at the end of the currents. The Magma Stone lies here.'),
  -- 83: P2 Laboratory
  (12, 83, 370, NULL, 'An old lab on a small island in the currents, where the Plasma Frigate is docked.'),
  -- 84: Cave of Being (milestone)
  (12, 84, NULL, 120021, NULL),
  -- 85: Route 8
  (12, 85, 396, NULL, 'Fly to Icirrus City. The marshy road east of town leads north to the Moor of Icirrus.'),
  -- 86: Moor of Icirrus
  (12, 86, 366, NULL, 'A marsh once burned by a wildfire, now watched over by Rangers. Strength moves the boulder on its west side.'),
  -- 87: Icirrus City
  (12, 87, 362, NULL, 'Back in town. The Pokémon Fan Club and Aha''s quizzes are here. Brycen, the old Gym Leader, now acts at Pokéstar Studios.'),
  -- 88: Dragonspiral Tower (milestone)
  (12, 88, NULL, 120022, NULL),
  -- 89: Giant Chasm (milestone)
  (12, 89, NULL, 120023, NULL),
  -- 90: Clay Tunnel
  (12, 90, 350, NULL, 'Fly to Driftveil City. Clay''s mining dug this tunnel under the western peninsula, linking Driftveil City, Mistralton Cave and Twist Mountain. The Underground Ruins lie at its deepest point.'),
  -- 91: Underground Ruins (milestone)
  (12, 91, NULL, 120024, NULL),
  -- 92: Twist Mountain (milestone)
  (12, 92, NULL, 120025, NULL),
  -- 93: Reversal Mountain (milestone)
  (12, 93, NULL, 120026, NULL),
  -- 94: Route 14
  (12, 94, 380, NULL, 'Fly to Undella Town and head south. Mist from the waterfalls hangs over its rivers.'),
  -- 95: Abundant Shrine
  (12, 95, 342, NULL, 'Far to the west, the only sign left of a village that once stood here. The shrine stands on a hill to the north.'),
  -- 96: Route 15
  (12, 96, 381, NULL, 'Cliffs east of Route 14. The Poké Transfer Lab in the middle moves Pokémon over from older games.'),
  -- 97: Marvelous Bridge (milestone)
  (12, 97, NULL, 120027, NULL);
