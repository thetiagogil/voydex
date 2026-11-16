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
  (15, 2, 519, NULL, 'The kahuna is out. A girl called Lillie hurries up the trail above town, and you follow her.'),
  -- 3: Mahalo Trail
  (15, 3, 933, NULL, 'Lillie asks you to save Nebby from a flock of Spearow on a rope bridge. The bridge breaks, and Tapu Koko catches you and leaves a Sparkling Stone. Then back down to Iki Town.'),
  -- 4: Choose Starter (milestone)
  (15, 4, NULL, 150001, NULL),
  -- 5: Receive Pokédex (milestone)
  (15, 5, NULL, 150002, NULL),
  -- 6: Route 1
  (15, 6, 543, NULL, 'Professor Kukui shows you how to catch a Pokémon on the way home. The festival in Iki Town is that evening.'),
  -- 7: Iki Town Festival (milestone)
  (15, 7, NULL, 150027, NULL),
  -- 8: Route 1
  (15, 8, 543, NULL, 'The next day Hala gives you a Z-Ring made from the stone, and Lillie takes you down to Professor Kukui''s lab on the beach.'),
  -- 9: Trainers' School
  (15, 9, 567, NULL, 'Beat the four trainers the teacher points out, then the teacher herself. Ilima, the captain of the first trial, comes to watch.'),
  -- 10: Hau'oli City
  (15, 10, 516, NULL, 'Melemele''s big city. Ilima sees off two Team Skull Grunts at the marina, then battles you to see if you are ready for his trial.'),
  -- 11: Route 2
  (15, 11, 552, NULL, 'North of the city to the Pokémon Center by Verdant Cavern. The Berry fields are on this road.'),
  -- 12: Ilima Trial (milestone)
  (15, 12, NULL, 150003, NULL),
  -- 13: Route 3
  (15, 13, 553, NULL, 'A cliff road. Lillie has lost Nebby in Melemele Meadow. Hau battles you here once you have brought it back.'),
  -- 14: Melemele Meadow
  (15, 14, 527, NULL, 'A field of yellow flowers. Nebby is at the far end.'),
  -- 15: Grand Trial Hala (milestone)
  (15, 15, NULL, 150004, NULL),
  -- 16: Hau'oli City
  (15, 16, 516, NULL, 'Take the boat from the marina to Akala Island with Kukui, Lillie and Hau.'),
  -- 17: Heahea City
  (15, 17, 923, NULL, 'Akala''s port. Olivia, the kahuna, and Mallow, a captain, meet you on the dock.'),
  -- 18: Route 4
  (15, 18, 554, NULL, 'North to Paniola Town.'),
  -- 19: Paniola Town
  (15, 19, 533, NULL, 'A ranch town. Hau battles you on your way through.'),
  -- 20: Paniola Ranch
  (15, 20, 532, NULL, 'Mallow adds Stoutland to your Ride Pager, which sniffs out hidden items. A breeder in the Pokémon Nursery here gives you an Eevee Egg.'),
  -- 21: Route 5
  (15, 21, 555, NULL, 'Gladion, an enforcer for Team Skull, stops you for a battle. Brooklet Hill is at the north end.'),
  -- 22: Lana Trial (milestone)
  (15, 22, NULL, 150005, NULL),
  -- 23: Route 6
  (15, 23, 556, NULL, 'A road east to Royal Avenue.'),
  -- 24: Royal Avenue
  (15, 24, 560, NULL, 'Home of the Battle Royal Dome. The Masked Royal talks you, Hau and Gladion into a Battle Royal.'),
  -- 25: Route 7
  (15, 25, 557, NULL, 'A beach under Wela Volcano Park.'),
  -- 26: Kiawe Trial (milestone)
  (15, 26, NULL, 150006, NULL),
  -- 27: Route 8
  (15, 27, 558, NULL, 'A coast road north to Lush Jungle.'),
  -- 28: Mallow Trial (milestone)
  (15, 28, NULL, 150007, NULL),
  -- 29: Diglett's Tunnel
  (15, 29, 510, NULL, 'Ride Charizard back to Heahea City. Olivia has asked you to Konikoni City. Team Skull Grunts are making trouble in the tunnel on the way.'),
  -- 30: Route 9
  (15, 30, 559, NULL, 'A short road into Konikoni City.'),
  -- 31: Konikoni City
  (15, 31, 521, NULL, 'A market town. Olivia is out, and a note at her shop sends you to the Ruins of Life.'),
  -- 32: Memorial Hill
  (15, 32, 529, NULL, 'A graveyard on the way to the ruins. Team Skull Grunts are bullying a Pokémon here.'),
  -- 33: Akala Outskirts
  (15, 33, 506, NULL, 'Plumeria, Team Skull''s big sister, battles you for beating up her Grunts.'),
  -- 34: Grand Trial Olivia (milestone)
  (15, 34, NULL, 150008, NULL),
  -- 35: Heahea City
  (15, 35, 923, NULL, 'Ride Charizard back to Heahea City. Professor Kukui wants you at the Hano Grand Resort, where Faba of the Aether Foundation offers you a visit to Aether Paradise.'),
  -- 36: Aether Paradise Visit (milestone)
  (15, 36, NULL, 150028, NULL),
  -- 37: Malie City
  (15, 37, 525, NULL, 'Ula''ula''s port, built like a town from Johto. The boat from Aether Paradise lands here, and Hau battles you. The library and Malie Garden are here.'),
  -- 38: Malie Garden
  (15, 38, 526, NULL, 'Professor Kukui is being heckled by Team Skull at the far end. Guzma, their boss, turns on you.'),
  -- 39: Route 10
  (15, 39, 544, NULL, 'The bus up Mount Hokulani stops here, once you have cleared the Team Skull Grunts off the stop.'),
  -- 40: Mount Hokulani
  (15, 40, 530, NULL, 'Molayne, who used to be a captain, battles you before he takes you in to his cousin Sophocles.'),
  -- 41: Sophocles Trial (milestone)
  (15, 41, NULL, 150009, NULL),
  -- 42: Route 12
  (15, 42, 546, NULL, 'A rough road. Hapu adds Mudsdale to your Ride Pager to cross the rocks.'),
  -- 43: Route 13
  (15, 43, 547, NULL, 'A short stretch to Tapu Village.'),
  -- 44: Tapu Village
  (15, 44, 564, NULL, 'A village Tapu Bulu wrecked long ago. The Aether House is down Route 15.'),
  -- 45: Aether House
  (15, 45, 504, NULL, 'A home for children and their Pokémon. Acerola, the captain, lives here, and takes you to her trial.'),
  -- 46: Acerola Trial (milestone)
  (15, 46, NULL, 150010, NULL),
  -- 47: Route 15
  (15, 47, 549, NULL, 'Team Skull has come to the Aether House while you were away. Plumeria battles you, and they leave with a child''s Yungoos. Grimsley, on the beach, adds Sharpedo to your Ride Pager to break the rocks in the water.'),
  -- 48: Route 17
  (15, 48, 551, NULL, 'A rainy road to the walls of Po Town. Nanu, the police officer at the gate, lets you in.'),
  -- 49: Po Town (milestone)
  (15, 49, NULL, 150029, NULL),
  -- 50: Aether House
  (15, 50, 504, NULL, 'Back at the house, Team Skull has taken Lillie and Nebby. Gladion blames you and battles you. After the credits, an Aether worker here gives you a Porygon.'),
  -- 51: Grand Trial Nanu (milestone)
  (15, 51, NULL, 150011, NULL),
  -- 52: Malie City
  (15, 52, 525, NULL, 'Gladion waits at the ferry terminal to take you and Hau to Aether Paradise.'),
  -- 53: Aether Paradise (milestone)
  (15, 53, NULL, 150021, NULL),
  -- 54: Seafolk Village
  (15, 54, 562, NULL, 'Poni Island''s only village, built on boats. Gladion''s boat drops you and Lillie here to look for the kahuna. An Ace Trainer in the village gives you an Aerodactyl.'),
  -- 55: Poni Wilds
  (15, 55, 541, NULL, 'Wild country on the way to Hapu''s house.'),
  -- 56: Ancient Poni Path
  (15, 56, 507, NULL, 'Hapu lives here. She is not the kahuna yet, and asks you to meet her at the Ruins of Hope.'),
  -- 57: Poni Breaker Coast
  (15, 57, 535, NULL, 'At the Ruins of Hope beyond, Tapu Fini accepts Hapu as kahuna. She sends you to Exeggutor Island for a flute.'),
  -- 58: Exeggutor Island
  (15, 58, 512, NULL, 'Back in Seafolk Village, the chief sails you to the island. One of the two flutes you need rests on a stand at the top of the island.'),
  -- 59: Ancient Poni Path
  (15, 59, 507, NULL, 'Back through Seafolk Village with the flute. Team Skull Grunts wait at the mouth of Vast Poni Canyon. Beat two of them and Plumeria gives you Poisonium Z and asks you to save Guzma.'),
  -- 60: Grand Trial Hapu (milestone)
  (15, 60, NULL, 150013, NULL),
  -- 61: Vast Poni Canyon Trial (milestone)
  (15, 61, NULL, 150012, NULL),
  -- 62: Ultra Space (milestone)
  (15, 62, NULL, 150022, NULL),
  -- 63: Mount Lanakila
  (15, 63, 531, NULL, 'A lift from Tapu Village takes you up the frozen mountain. Gladion battles you at the bottom, and Hau at the top.'),
  -- 64: Pokémon League
  (15, 64, 931, NULL, 'Alola''s first Pokémon League, just built. Its four rooms can be taken in any order. Once you go in, there''s no way out until you win or lose.'),
  -- 65: Pokémon League (milestone)
  (15, 65, NULL, 150018, NULL),
  -- 66: Ruins of Conflict
  (15, 66, 927, NULL, 'After the party in Iki Town, Lillie takes you up Mahalo Trail to thank the island''s guardian, and it comes out to battle you.'),
  -- 67: Ultra Beast Missions (milestone)
  (15, 67, NULL, 150020, NULL),
  -- 68: Ruins of Life (milestone)
  (15, 68, NULL, 150023, NULL),
  -- 69: Ruins of Abundance (milestone)
  (15, 69, NULL, 150024, NULL),
  -- 70: Ruins of Hope (milestone)
  (15, 70, NULL, 150025, NULL),
  -- 71: Ten Carat Hill (milestone)
  (15, 71, NULL, 150026, NULL);
