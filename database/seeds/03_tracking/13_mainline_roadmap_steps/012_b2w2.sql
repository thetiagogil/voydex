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
  (12, 5, 358, NULL, 'A small town. Alder, the old Champion, drops in front of you and offers to train you once you have been out to Route 20 and the ranch.'),
  -- 6: Route 20
  (12, 6, 387, NULL, 'East of Floccesy Town, with the ranch to the north.'),
  -- 7: Floccesy Ranch
  (12, 7, 357, NULL, 'Hugh battles you at the gate. One of the owners'' two Herdier is missing. Find it in the trees, where a Team Plasma Grunt has cornered it. He throws TM21 Frustration at you and runs.'),
  -- 8: Floccesy Town
  (12, 8, 358, NULL, 'Alder has you battle his two students, then tells you the Gym in Aspertia City is open.'),
  -- 9: Aspertia City
  (12, 9, 344, NULL, 'The Gym is behind the Trainers'' School. Its new Leader is Cheren, and he uses Normal types. After you win, Bianca gives you the C-Gear.'),
  -- 10: Basic Badge (milestone)
  (12, 10, NULL, 120003, NULL),
  -- 11: Route 20
  (12, 11, 387, NULL, 'Back east, and on to Virbank City.'),
  -- 12: Virbank City
  (12, 12, 408, NULL, 'A port town of factories. Roxie''s Gym is a music club and uses Poison types. Pokéstar Studios is just north of town.'),
  -- 13: Toxic Badge (milestone)
  (12, 13, NULL, 120004, NULL),
  -- 14: Virbank City
  (12, 14, 408, NULL, 'Roxie and Hugh are facing Team Plasma at the pier. Beat the Grunt in the middle, and Roxie gives you HM01 Cut. Chase the last one back to Route 20, then take the ship to Castelia City.'),
  -- 15: Castelia City
  (12, 15, 345, NULL, 'Unova''s biggest city. A Harlequin gives you a Bicycle. Burgh is away from his Gym, which uses Bug types. Iris, who used to lead Opelucid Gym, thinks Team Plasma may be hiding in the sewers.'),
  -- 16: Castelia Sewers (milestone)
  (12, 16, NULL, 120029, NULL),
  -- 17: Insect Badge (milestone)
  (12, 17, NULL, 120005, NULL),
  -- 18: Castelia City
  (12, 18, 345, NULL, 'Bianca catches you at the north gate with a Dowsing Machine.'),
  -- 19: Route 4
  (12, 19, 392, NULL, 'A desert road, with new buildings in Black 2 and old ruins in White 2. Colress is waiting to battle you.'),
  -- 20: Desert Resort
  (12, 20, 352, NULL, 'A desert of ruins west of Route 4. The Relic Castle lies half buried in it.'),
  -- 21: Nimbasa City
  (12, 21, 368, NULL, 'A city of fun. Elesa''s Gym is now a fashion runway and uses Electric types. After you win, Hugh is squaring up to four Team Plasma Grunts outside Big Stadium, and they run off.'),
  -- 22: Bolt Badge (milestone)
  (12, 22, NULL, 120006, NULL),
  -- 23: Route 5
  (12, 23, 393, NULL, 'Bianca catches up with you and gives you HM02 Fly, then shows you a Hidden Grotto.'),
  -- 24: Driftveil Drawbridge
  (12, 24, 356, NULL, 'A drawbridge over the river to Driftveil City.'),
  -- 25: Driftveil City
  (12, 25, 355, NULL, 'A port and market town. On the hill by the Gym, old Team Plasma members led by Rood look after Pokémon the team once stole. Hugh comes looking for his sister''s Purrloin, and Rood asks you to take in a Zorua that was N''s. Clay''s Gym uses Ground types.'),
  -- 26: Quake Badge (milestone)
  (12, 26, NULL, 120007, NULL),
  -- 27: Pokémon World Tournament (milestone)
  (12, 27, NULL, 120030, NULL),
  -- 28: Route 6
  (12, 28, 394, NULL, 'Cheren is outside the Season Research Lab and gives you HM03 Surf. Cobalion jumps down in front of you on the last bridge, then leaves.'),
  -- 29: Chargestone Cave
  (12, 29, 349, NULL, 'A cave of floating magnetic stones. Bianca is inside, studying them.'),
  -- 30: Mistralton City
  (12, 30, 884, NULL, 'A town around an airport runway. Professor Juniper gives you a Master Ball. Skyla''s Gym uses Flying types. After you win, she flies you, Juniper and Bianca to Lentimas Town.'),
  -- 31: Jet Badge (milestone)
  (12, 31, NULL, 120008, NULL),
  -- 32: Lentimas Town
  (12, 32, 894, NULL, 'A dusty town under a volcano. Professor Juniper tells you about the dragons before you go on. The Strange House stands to the east.'),
  -- 33: Reversal Mountain
  (12, 33, 374, NULL, 'A volcano between Lentimas Town and Undella Town. Bianca teams up with you inside and heals your team after every battle.'),
  -- 34: Undella Town
  (12, 34, 403, NULL, 'A summer resort by the sea. Hugh catches up with you at the gate to Route 13 and battles you.'),
  -- 35: Route 13
  (12, 35, 379, NULL, 'A beach under cliffs. Cobalion stands in a clearing past the trees that need Cut.'),
  -- 36: Swords of Justice (milestone)
  (12, 36, NULL, 120019, NULL),
  -- 37: Lacunosa Town
  (12, 37, 895, NULL, 'A town that shuts its doors at night for fear of a monster. Professor Juniper tells you its old legend. Zinzolin and a Team Plasma Grunt appear on the west side, and Hugh asks you to fight beside him.'),
  -- 38: Route 12
  (12, 38, 378, NULL, 'Rolling hills west of Lacunosa Town.'),
  -- 39: Village Bridge
  (12, 39, 407, NULL, 'An old bridge with houses built on it.'),
  -- 40: Route 11
  (12, 40, 377, NULL, 'A short road past a waterfall, where Virizion waits.'),
  -- 41: Opelucid City
  (12, 41, 888, NULL, 'Iris greets you at the gate. Drayden, the mayor, leads the Gym alone now, and it uses Dragon types. After you win, he tells you the story of Kyurem and the DNA Splicers at his house.'),
  -- 42: Legend Badge (milestone)
  (12, 42, NULL, 120009, NULL),
  -- 43: Team Plasma's Attack (milestone)
  (12, 43, NULL, 120031, NULL),
  -- 44: Humilau City
  (12, 44, 361, NULL, 'A resort on stilts over the sea, reached through the Marine Tube from Undella Town. Hugh waits by the exit. Marlon jumps out of the sea to meet you and goes back to his Gym, which uses Water types.'),
  -- 45: Wave Badge (milestone)
  (12, 45, NULL, 120010, NULL),
  -- 46: Route 22
  (12, 46, 389, NULL, 'West of Humilau City. Colress gives you the Colress Machine. Terrakion waits in the middle of the route.'),
  -- 47: Route 21
  (12, 47, 388, NULL, 'A sea route south of Humilau City, to Seaside Cave.'),
  -- 48: Seaside Cave
  (12, 48, 398, NULL, 'Use the Colress Machine on the odd boulder at the exit. It is a Crustle, and it attacks. Beyond it, the Plasma Frigate lies at anchor, and Hugh is looking for a way aboard.'),
  -- 49: Giant Chasm
  (12, 49, 359, NULL, 'The frigate lands in the crater after its crew throws you off at sea. Team Plasma Grunts hold the cave and the forest, and Hugh and Rood''s people help you through.'),
  -- 50: Plasma Frigate (milestone)
  (12, 50, NULL, 120011, NULL),
  -- 51: Defeat Ghetsis (milestone)
  (12, 51, NULL, 120012, NULL),
  -- 52: Route 23
  (12, 52, 390, NULL, 'The way from the Giant Chasm to Victory Road.'),
  -- 53: Victory Road (Black 2 and White 2)
  (12, 53, 405, NULL, 'N waits at the entrance and gives you HM05 Waterfall. Hugh battles you inside, before the League.'),
  -- 54: Pokémon League
  (12, 54, 890, NULL, 'The last Pokémon Center and shop. The Elite Four''s rooms can be taken in any order. Once you go in, there''s no way out until you win or lose.'),
  -- 55: Pokémon League (milestone)
  (12, 55, NULL, 120017, NULL),
  -- 56: Hugh in Undella Town (milestone)
  (12, 56, NULL, 120028, NULL),
  -- 57: Dreamyard (milestone)
  (12, 57, NULL, 120020, NULL),
  -- 58: Cave of Being (milestone)
  (12, 58, NULL, 120021, NULL),
  -- 59: Dragonspiral Tower (milestone)
  (12, 59, NULL, 120022, NULL),
  -- 60: Giant Chasm (milestone)
  (12, 60, NULL, 120023, NULL),
  -- 61: Underground Ruins (milestone)
  (12, 61, NULL, 120024, NULL),
  -- 62: Twist Mountain (milestone)
  (12, 62, NULL, 120025, NULL),
  -- 63: Reversal Mountain (milestone)
  (12, 63, NULL, 120026, NULL),
  -- 64: Marvelous Bridge (milestone)
  (12, 64, NULL, 120027, NULL);
