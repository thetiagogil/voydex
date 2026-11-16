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
  -- 12: Hau'oli Cemetery
  (15, 12, 515, NULL, 'A side trip to the graveyard on Route 2, where people and Pokémon rest.'),
  -- 13: Ilima Trial (milestone)
  (15, 13, NULL, 150003, NULL),
  -- 14: Route 3
  (15, 14, 553, NULL, 'A cliff road. Lillie has lost Nebby in Melemele Meadow. Hau battles you here once you have brought it back.'),
  -- 15: Melemele Meadow
  (15, 15, 527, NULL, 'A field of yellow flowers. Nebby is at the far end.'),
  -- 16: Seaward Cave
  (15, 16, 563, NULL, 'A cave from Melemele Meadow down to the sea at Kala''e Bay.'),
  -- 17: Kala'e Bay
  (15, 17, 520, NULL, 'One of Melemele''s prettiest spots. Its small islands and southwest beach open once you can ride Lapras or Sharpedo. Then back to Iki Town.'),
  -- 18: Grand Trial Hala (milestone)
  (15, 18, NULL, 150004, NULL),
  -- 19: Hau'oli City
  (15, 19, 516, NULL, 'Take the boat from the marina to Akala Island with Kukui, Lillie and Hau.'),
  -- 20: Heahea City
  (15, 20, 923, NULL, 'Akala''s port. Olivia, the kahuna, and Mallow, a captain, meet you on the dock.'),
  -- 21: Route 4
  (15, 21, 554, NULL, 'North to Paniola Town.'),
  -- 22: Paniola Town
  (15, 22, 533, NULL, 'A ranch town. Hau battles you on your way through.'),
  -- 23: Paniola Ranch
  (15, 23, 532, NULL, 'Mallow adds Stoutland to your Ride Pager, which sniffs out hidden items. A breeder in the Pokémon Nursery here gives you an Eevee Egg.'),
  -- 24: Route 5
  (15, 24, 555, NULL, 'Gladion, an enforcer for Team Skull, stops you for a battle. Brooklet Hill is at the north end.'),
  -- 25: Lana Trial (milestone)
  (15, 25, NULL, 150005, NULL),
  -- 26: Route 6
  (15, 26, 556, NULL, 'A road east to Royal Avenue.'),
  -- 27: Royal Avenue
  (15, 27, 560, NULL, 'Home of the Battle Royal Dome. The Masked Royal talks you, Hau and Gladion into a Battle Royal.'),
  -- 28: Route 7
  (15, 28, 557, NULL, 'A beach under Wela Volcano Park.'),
  -- 29: Kiawe Trial (milestone)
  (15, 29, NULL, 150006, NULL),
  -- 30: Route 8
  (15, 30, 558, NULL, 'A coast road north to Lush Jungle.'),
  -- 31: Mallow Trial (milestone)
  (15, 31, NULL, 150007, NULL),
  -- 32: Diglett's Tunnel
  (15, 32, 510, NULL, 'Ride Charizard back to Heahea City. Olivia has asked you to Konikoni City. Team Skull Grunts are making trouble in the tunnel on the way.'),
  -- 33: Route 9
  (15, 33, 559, NULL, 'A short road into Konikoni City.'),
  -- 34: Konikoni City
  (15, 34, 521, NULL, 'A market town. Olivia is out, and a note at her shop sends you to the Ruins of Life.'),
  -- 35: Memorial Hill
  (15, 35, 529, NULL, 'A graveyard on the way to the ruins. Team Skull Grunts are bullying a Pokémon here.'),
  -- 36: Akala Outskirts
  (15, 36, 506, NULL, 'Plumeria, Team Skull''s big sister, battles you for beating up her Grunts.'),
  -- 37: Grand Trial Olivia (milestone)
  (15, 37, NULL, 150008, NULL),
  -- 38: Heahea City
  (15, 38, 923, NULL, 'Ride Charizard back to Heahea City. Professor Kukui wants you at the Hano Grand Resort, where Faba of the Aether Foundation offers you a visit to Aether Paradise.'),
  -- 39: Hano Beach
  (15, 39, 514, NULL, 'A beach east of the Hano Grand Resort, where tossing washed-up Pokémon back into the sea is a part-time job.'),
  -- 40: Aether Paradise Visit (milestone)
  (15, 40, NULL, 150028, NULL),
  -- 41: Malie City
  (15, 41, 525, NULL, 'Ula''ula''s port, built like a town from Johto. The boat from Aether Paradise lands here, and Hau battles you. The library and Malie Garden are here.'),
  -- 42: Malie Garden
  (15, 42, 526, NULL, 'Professor Kukui is being heckled by Team Skull at the far end. Guzma, their boss, turns on you.'),
  -- 43: Route 10
  (15, 43, 544, NULL, 'The bus up Mount Hokulani stops here, once you have cleared the Team Skull Grunts off the stop.'),
  -- 44: Mount Hokulani
  (15, 44, 530, NULL, 'Molayne, who used to be a captain, battles you before he takes you in to his cousin Sophocles.'),
  -- 45: Sophocles Trial (milestone)
  (15, 45, NULL, 150009, NULL),
  -- 46: Route 11
  (15, 46, 545, NULL, 'South of Malie City, a quiet path of trees and bamboo. Its east gate opens once you have the Electrium Z.'),
  -- 47: Route 12
  (15, 47, 546, NULL, 'A rough road. Hapu adds Mudsdale to your Ride Pager to cross the rocks.'),
  -- 48: Blush Mountain
  (15, 48, 508, NULL, 'A side trip off Route 12 to the visitor centre of the Geothermal Power Plant, which powers all of Ula''ula.'),
  -- 49: Route 13
  (15, 49, 547, NULL, 'A short stretch to Tapu Village.'),
  -- 50: Tapu Village
  (15, 50, 564, NULL, 'A village Tapu Bulu wrecked long ago. The Aether House is down Route 15.'),
  -- 51: Aether House
  (15, 51, 504, NULL, 'A home for children and their Pokémon. Acerola, the captain, lives here, and takes you to her trial.'),
  -- 52: Route 14
  (15, 52, 548, NULL, 'A black sand beach sacred to Tapu Bulu, who wrecked the lighthouse and the Thrifty Megamart here in a rage.'),
  -- 53: Acerola Trial (milestone)
  (15, 53, NULL, 150010, NULL),
  -- 54: Route 15
  (15, 54, 549, NULL, 'Team Skull has come to the Aether House while you were away. Plumeria battles you, and they leave with a child''s Yungoos. Grimsley, on the beach, adds Sharpedo to your Ride Pager to break the rocks in the water.'),
  -- 55: Route 16
  (15, 55, 550, NULL, 'A short road with a Pokémon Center and an Aether Base, on the way to Ula''ula Meadow.'),
  -- 56: Ula'ula Meadow
  (15, 56, 569, NULL, 'A field of red flowers crossed by wooden walkways. Their Red Nectar changes a dancing Pokémon''s style. Route 17 runs north from here.'),
  -- 57: Route 17
  (15, 57, 551, NULL, 'A rainy road to the walls of Po Town. Nanu, the police officer at the gate, lets you in.'),
  -- 58: Po Town (milestone)
  (15, 58, NULL, 150029, NULL),
  -- 59: Aether House
  (15, 59, 504, NULL, 'Back at the house, Team Skull has taken Lillie and Nebby. Gladion blames you and battles you. After the credits, an Aether worker here gives you a Porygon.'),
  -- 60: Grand Trial Nanu (milestone)
  (15, 60, NULL, 150011, NULL),
  -- 61: Malie City
  (15, 61, 525, NULL, 'Gladion waits at the ferry terminal to take you and Hau to Aether Paradise.'),
  -- 62: Aether Paradise (milestone)
  (15, 62, NULL, 150021, NULL),
  -- 63: Seafolk Village
  (15, 63, 562, NULL, 'Poni Island''s only village, built on boats. Gladion''s boat drops you and Lillie here to look for the kahuna. An Ace Trainer in the village gives you an Aerodactyl.'),
  -- 64: Poni Wilds
  (15, 64, 541, NULL, 'Wild country on the way to Hapu''s house.'),
  -- 65: Ancient Poni Path
  (15, 65, 507, NULL, 'Hapu lives here. She is not the kahuna yet, and asks you to meet her at the Ruins of Hope.'),
  -- 66: Poni Breaker Coast
  (15, 66, 535, NULL, 'At the Ruins of Hope beyond, Tapu Fini accepts Hapu as kahuna. She sends you to Exeggutor Island for a flute.'),
  -- 67: Exeggutor Island
  (15, 67, 512, NULL, 'Back in Seafolk Village, the chief sails you to the island. One of the two flutes you need rests on a stand at the top of the island.'),
  -- 68: Ancient Poni Path
  (15, 68, 507, NULL, 'Back through Seafolk Village with the flute. Team Skull Grunts wait at the mouth of Vast Poni Canyon. Beat two of them and Plumeria gives you Poisonium Z and asks you to save Guzma.'),
  -- 69: Grand Trial Hapu (milestone)
  (15, 69, NULL, 150013, NULL),
  -- 70: Vast Poni Canyon Trial (milestone)
  (15, 70, NULL, 150012, NULL),
  -- 71: Ultra Space (milestone)
  (15, 71, NULL, 150022, NULL),
  -- 72: Mount Lanakila
  (15, 72, 531, NULL, 'A lift from Tapu Village takes you up the frozen mountain. Gladion battles you at the bottom, and Hau at the top.'),
  -- 73: Pokémon League
  (15, 73, 931, NULL, 'Alola''s first Pokémon League, just built. Its four rooms can be taken in any order. Once you go in, there''s no way out until you win or lose.'),
  -- 74: Pokémon League (milestone)
  (15, 74, NULL, 150018, NULL),
  -- 75: Ruins of Conflict
  (15, 75, 927, NULL, 'After the party in Iki Town, Lillie takes you up Mahalo Trail to thank the island''s guardian, and it comes out to battle you.'),
  -- 76: Ultra Beast Missions (milestone)
  (15, 76, NULL, 150020, NULL),
  -- 77: Ruins of Life (milestone)
  (15, 77, NULL, 150023, NULL),
  -- 78: Haina Desert
  (15, 78, 513, NULL, 'North of Route 13. Harsh sun by day and a sandstorm by night turn the shifting sands into a maze. The Ruins of Abundance are inside.'),
  -- 79: Ruins of Abundance (milestone)
  (15, 79, NULL, 150024, NULL),
  -- 80: Ruins of Hope (milestone)
  (15, 80, NULL, 150025, NULL),
  -- 81: Ten Carat Hill (milestone)
  (15, 81, NULL, 150026, NULL),
  -- 82: Melemele Sea
  (15, 82, 528, NULL, 'Fly to Melemele Island and ride Lapras or Sharpedo along its southeast coast. Sharpedo reaches a cave on the southwest side of Ten Carat Hill.'),
  -- 83: Poni Grove
  (15, 83, 538, NULL, 'Fly to Poni Island. A short, lush path east from Ancient Poni Path.'),
  -- 84: Poni Plains
  (15, 84, 540, NULL, 'Open plains that link Poni Meadow and Poni Coast.'),
  -- 85: Poni Meadow
  (15, 85, 539, NULL, 'A quiet meadow between Poni Plains and Resolution Cave.'),
  -- 86: Resolution Cave
  (15, 86, 542, NULL, 'A deep cave past Poni Meadow, crossed on Mudsdale. A Pokémon of legend waits at the bottom.'),
  -- 87: Poni Coast
  (15, 87, 536, NULL, 'A rocky shore north from Poni Plains, strewn with boulders.'),
  -- 88: Poni Gauntlet
  (15, 88, 537, NULL, 'A lush field on the north side of Poni Island, crossed by bridges over small waterfalls. Some of the strongest trainers in Alola gather here.');
