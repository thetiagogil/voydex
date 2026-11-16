-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's Sun / Moon walkthrough (the order the story passes
-- each place and reaches each beat, and what happens there), with its
-- location pages for the places.
-- Scope: Pokémon Sun / Moon Story roadmap.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_roadmap_steps
-- Sun / Moon's Story roadmap, step by step, in Red / Blue's pattern: a place
-- the walkthrough passes (location_id) or a milestone (milestone_id), which
-- sits at its own place. Places repeat where the walkthrough comes back.
-- Every Sun / Moon milestone is one step where the walkthrough reaches it.
-- The optional beats all come after the League.
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
  -- 1: Route 1
  (15, 1, 543, NULL, 'Your new home on Melemele Island. Professor Kukui comes to take you up to Iki Town to meet the kahuna.'),
  -- 2: Iki Town
  (15, 2, 519, NULL, 'The kahuna is out. On the trail above town, a girl called Lillie asks you to save Nebby from a flock of Spearow on a rope bridge. The bridge breaks, and Tapu Koko catches you and leaves a Sparkling Stone.'),
  -- 3: Choose Starter (milestone)
  (15, 3, NULL, 150001, NULL),
  -- 4: Receive Pokédex (milestone)
  (15, 4, NULL, 150002, NULL),
  -- 5: Route 1
  (15, 5, 543, NULL, 'Professor Kukui shows you how to catch a Pokémon on the way home. The festival in Iki Town is that evening.'),
  -- 6: Iki Town Festival (milestone)
  (15, 6, NULL, 150027, NULL),
  -- 7: Route 1
  (15, 7, 543, NULL, 'The next day Hala gives you a Z-Ring made from the stone, and Lillie takes you down to Professor Kukui''s lab on the beach.'),
  -- 8: Trainers' School
  (15, 8, 567, NULL, 'Beat the four trainers the teacher points out, then the teacher herself. Ilima, the captain of the first trial, comes to watch.'),
  -- 9: Hau'oli City
  (15, 9, 516, NULL, 'Melemele''s big city. Ilima sees off two Team Skull Grunts at the marina, then battles you to see if you are ready for his trial.'),
  -- 10: Route 2
  (15, 10, 552, NULL, 'North of the city to the Pokémon Center by Verdant Cavern. The Berry fields are on this road.'),
  -- 11: Ilima Trial (milestone)
  (15, 11, NULL, 150003, NULL),
  -- 12: Route 3
  (15, 12, 553, NULL, 'A cliff road. Lillie has lost Nebby in Melemele Meadow. Hau battles you here once you have brought it back.'),
  -- 13: Melemele Meadow
  (15, 13, 527, NULL, 'A field of yellow flowers. Nebby is at the far end.'),
  -- 14: Grand Trial Hala (milestone)
  (15, 14, NULL, 150004, NULL),
  -- 15: Hau'oli City
  (15, 15, 516, NULL, 'Take the boat from the marina to Akala Island with Kukui, Lillie and Hau.'),
  -- 16: Heahea City
  (15, 16, 923, NULL, 'Akala''s port. Olivia, the kahuna, and Mallow, a captain, meet you on the dock.'),
  -- 17: Route 4
  (15, 17, 554, NULL, 'North to Paniola Town.'),
  -- 18: Paniola Town
  (15, 18, 533, NULL, 'A ranch town. Hau battles you on your way through.'),
  -- 19: Paniola Ranch
  (15, 19, 532, NULL, 'Mallow adds Stoutland to your Ride Pager, which sniffs out hidden items. The Pokémon Nursery is here.'),
  -- 20: Route 5
  (15, 20, 555, NULL, 'Gladion, an enforcer for Team Skull, stops you for a battle. Brooklet Hill is at the north end.'),
  -- 21: Lana Trial (milestone)
  (15, 21, NULL, 150005, NULL),
  -- 22: Route 6
  (15, 22, 556, NULL, 'A road east to Royal Avenue.'),
  -- 23: Royal Avenue
  (15, 23, 560, NULL, 'Home of the Battle Royal Dome. The Masked Royal talks you, Hau and Gladion into a Battle Royal.'),
  -- 24: Route 7
  (15, 24, 557, NULL, 'A beach under Wela Volcano Park.'),
  -- 25: Kiawe Trial (milestone)
  (15, 25, NULL, 150006, NULL),
  -- 26: Route 8
  (15, 26, 558, NULL, 'A coast road north to Lush Jungle.'),
  -- 27: Mallow Trial (milestone)
  (15, 27, NULL, 150007, NULL),
  -- 28: Diglett's Tunnel
  (15, 28, 510, NULL, 'Olivia has asked you to Konikoni City. Team Skull Grunts are making trouble in the tunnel on the way.'),
  -- 29: Route 9
  (15, 29, 559, NULL, 'A short road into Konikoni City.'),
  -- 30: Konikoni City
  (15, 30, 521, NULL, 'A market town. Olivia is out, and a note at her shop sends you to the Ruins of Life.'),
  -- 31: Memorial Hill
  (15, 31, 529, NULL, 'A graveyard on the way to the ruins. Team Skull Grunts are bullying a Pokémon here.'),
  -- 32: Akala Outskirts
  (15, 32, 506, NULL, 'Plumeria, Team Skull''s big sister, battles you for beating up her Grunts.'),
  -- 33: Grand Trial Olivia (milestone)
  (15, 33, NULL, 150008, NULL),
  -- 34: Heahea City
  (15, 34, 923, NULL, 'Professor Kukui wants you at the Hano Grand Resort, where Faba of the Aether Foundation offers you a visit to Aether Paradise.'),
  -- 35: Aether Paradise Visit (milestone)
  (15, 35, NULL, 150028, NULL),
  -- 36: Malie City
  (15, 36, 525, NULL, 'Ula''ula''s port, built like a town from Johto. Hau battles you when you land. The library and Malie Garden are here.'),
  -- 37: Malie Garden
  (15, 37, 526, NULL, 'Professor Kukui is being heckled by Team Skull at the far end. Guzma, their boss, turns on you.'),
  -- 38: Route 10
  (15, 38, 544, NULL, 'The bus up Mount Hokulani stops here, once you have cleared the Team Skull Grunts off the stop.'),
  -- 39: Mount Hokulani
  (15, 39, 530, NULL, 'Molayne, who used to be a captain, battles you before he takes you in to his cousin Sophocles.'),
  -- 40: Sophocles Trial (milestone)
  (15, 40, NULL, 150009, NULL),
  -- 41: Route 12
  (15, 41, 546, NULL, 'A rough road. Hapu adds Mudsdale to your Ride Pager to cross the rocks.'),
  -- 42: Route 13
  (15, 42, 547, NULL, 'A short stretch to Tapu Village.'),
  -- 43: Tapu Village
  (15, 43, 564, NULL, 'A village Tapu Bulu wrecked long ago. The Aether House is down Route 15.'),
  -- 44: Aether House
  (15, 44, 504, NULL, 'A home for children and their Pokémon. Acerola, the captain, lives here, and takes you to her trial.'),
  -- 45: Acerola Trial (milestone)
  (15, 45, NULL, 150010, NULL),
  -- 46: Route 15
  (15, 46, 549, NULL, 'Team Skull has come to the Aether House while you were away. Plumeria battles you, and they leave with a child''s Yungoos. Grimsley, on the beach, adds Sharpedo to your Ride Pager to break the rocks in the water.'),
  -- 47: Route 17
  (15, 47, 551, NULL, 'A rainy road to the walls of Po Town. Nanu, the police officer at the gate, lets you in.'),
  -- 48: Po Town (milestone)
  (15, 48, NULL, 150029, NULL),
  -- 49: Aether House
  (15, 49, 504, NULL, 'Team Skull took Lillie and Nebby while you were gone. Gladion blames you and battles you.'),
  -- 50: Grand Trial Nanu (milestone)
  (15, 50, NULL, 150011, NULL),
  -- 51: Malie City
  (15, 51, 525, NULL, 'Gladion waits at the ferry terminal to take you and Hau to Aether Paradise.'),
  -- 52: Aether Paradise (milestone)
  (15, 52, NULL, 150021, NULL),
  -- 53: Seafolk Village
  (15, 53, 562, NULL, 'Poni Island''s only village, built on boats. Gladion''s boat drops you and Lillie here to look for the kahuna.'),
  -- 54: Poni Wilds
  (15, 54, 541, NULL, 'Wild country on the way to Hapu''s house.'),
  -- 55: Ancient Poni Path
  (15, 55, 507, NULL, 'Hapu lives here. She is not the kahuna yet, and asks you to meet her at the Ruins of Hope.'),
  -- 56: Poni Breaker Coast
  (15, 56, 535, NULL, 'At the Ruins of Hope beyond, Tapu Fini accepts Hapu as kahuna. She sends you to Exeggutor Island for a flute.'),
  -- 57: Exeggutor Island
  (15, 57, 512, NULL, 'One of the two flutes you need rests on a stand at the top of the island.'),
  -- 58: Ancient Poni Path
  (15, 58, 507, NULL, 'Back through Seafolk Village with the flute. Team Skull Grunts wait at the mouth of Vast Poni Canyon. Beat two of them and Plumeria gives you Poisonium Z and asks you to save Guzma.'),
  -- 59: Grand Trial Hapu (milestone)
  (15, 59, NULL, 150013, NULL),
  -- 60: Vast Poni Canyon Trial (milestone)
  (15, 60, NULL, 150012, NULL),
  -- 61: Ultra Space (milestone)
  (15, 61, NULL, 150022, NULL),
  -- 62: Mount Lanakila
  (15, 62, 531, NULL, 'A lift from Tapu Village takes you up the frozen mountain. Gladion battles you at the bottom, and Hau at the top.'),
  -- 63: Pokémon League
  (15, 63, 931, NULL, 'Alola''s first Pokémon League, just built. Its four rooms can be taken in any order. Once you go in, there''s no way out until you win or lose.'),
  -- 64: Pokémon League (milestone)
  (15, 64, NULL, 150018, NULL),
  -- 65: Ruins of Conflict
  (15, 65, 927, NULL, 'After the party in Iki Town, Lillie takes you up Mahalo Trail to thank the island''s guardian, and it comes out to battle you.'),
  -- 66: Ultra Beast Missions (milestone)
  (15, 66, NULL, 150020, NULL),
  -- 67: Ruins of Life (milestone)
  (15, 67, NULL, 150023, NULL),
  -- 68: Ruins of Abundance (milestone)
  (15, 68, NULL, 150024, NULL),
  -- 69: Ruins of Hope (milestone)
  (15, 69, NULL, 150025, NULL),
  -- 70: Ten Carat Hill (milestone)
  (15, 70, NULL, 150026, NULL);
