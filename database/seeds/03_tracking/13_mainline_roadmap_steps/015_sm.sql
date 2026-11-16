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
  note,
  game_id
) VALUES
  -- 1: Route 1
  (15, 1, 543, NULL, 'Your new home on Melemele Island. Professor Kukui comes to take you up to Iki Town to meet the kahuna.', NULL),
  -- 2: Iki Town
  (15, 2, 519, NULL, 'The kahuna is out. A girl called Lillie hurries up the trail above town, and you follow her.', NULL),
  -- 3: Mahalo Trail
  (15, 3, 933, NULL, 'Lillie asks you to save Nebby from a flock of Spearow on a rope bridge. The bridge breaks, and Tapu Koko catches you and leaves a Sparkling Stone. Then back down to Iki Town.', NULL),
  -- 4: Choose Starter (milestone)
  (15, 4, NULL, 150001, NULL, NULL),
  -- 5: Receive Pokédex (milestone)
  (15, 5, NULL, 150002, NULL, NULL),
  -- 6: Route 1
  (15, 6, 543, NULL, 'Professor Kukui shows you how to catch a Pokémon on the way home. The festival in Iki Town is that evening.', NULL),
  -- 7: Iki Town Festival (milestone)
  (15, 7, NULL, 150027, NULL, NULL),
  -- 8: Route 1
  (15, 8, 543, NULL, 'The next day Hala gives you a Z-Ring made from the stone, and Lillie takes you down to Professor Kukui''s lab on the beach.', NULL),
  -- 9: Trainers' School
  (15, 9, 567, NULL, 'Beat the four trainers the teacher points out, then the teacher herself. Ilima, the captain of the first trial, comes to watch.', NULL),
  -- 10: Hau'oli City
  (15, 10, 516, NULL, 'Melemele''s big city. Ilima sees off two Team Skull Grunts at the marina, then battles you to see if you are ready for his trial.', NULL),
  -- 11: Route 2
  (15, 11, 552, NULL, 'North of the city to the Pokémon Center by Verdant Cavern. The Berry fields are on this road.', NULL),
  -- 12: Hau'oli Cemetery
  (15, 12, 515, NULL, 'A side trip to the graveyard on Route 2, where people and Pokémon rest.', NULL),
  -- 13: Ilima Trial (milestone)
  (15, 13, NULL, 150003, NULL, NULL),
  -- 14: Route 3
  (15, 14, 553, NULL, 'A cliff road. Lillie has lost Nebby in Melemele Meadow. Hau battles you here once you have brought it back.', NULL),
  -- 15: Melemele Meadow
  (15, 15, 527, NULL, 'A field of yellow flowers. Nebby is at the far end.', NULL),
  -- 16: Seaward Cave
  (15, 16, 563, NULL, 'A cave from Melemele Meadow down to the sea at Kala''e Bay.', NULL),
  -- 17: Kala'e Bay
  (15, 17, 520, NULL, 'One of Melemele''s prettiest spots. Its small islands and southwest beach open once you can ride Lapras or Sharpedo. Then back to Iki Town.', NULL),
  -- 18: Grand Trial Hala (milestone)
  (15, 18, NULL, 150004, NULL, NULL),
  -- 19: Ten Carat Hill
  (15, 19, 565, NULL, 'A side trip west of Route 1 into a cave hollowed out by an underwater volcano. Tauros breaks the boulders at its entrance.', NULL),
  -- 20: Hau'oli City
  (15, 20, 516, NULL, 'Take the boat from the marina to Akala Island with Kukui, Lillie and Hau.', NULL),
  -- 21: Heahea City
  (15, 21, 923, NULL, 'Akala''s port. Olivia, the kahuna, and Mallow, a captain, meet you on the dock.', NULL),
  -- 22: Route 4
  (15, 22, 554, NULL, 'North to Paniola Town.', NULL),
  -- 23: Paniola Town
  (15, 23, 533, NULL, 'A ranch town. Hau battles you on your way through.', NULL),
  -- 24: Paniola Ranch
  (15, 24, 532, NULL, 'Mallow adds Stoutland to your Ride Pager, which sniffs out hidden items. A breeder in the Pokémon Nursery here gives you an Eevee Egg.', NULL),
  -- 25: Route 5
  (15, 25, 555, NULL, 'Gladion, an enforcer for Team Skull, stops you for a battle. Brooklet Hill is at the north end.', NULL),
  -- 26: Lana Trial (milestone)
  (15, 26, NULL, 150005, NULL, NULL),
  -- 27: Route 6
  (15, 27, 556, NULL, 'A road east to Royal Avenue.', NULL),
  -- 28: Royal Avenue
  (15, 28, 560, NULL, 'Home of the Battle Royal Dome. The Masked Royal talks you, Hau and Gladion into a Battle Royal.', NULL),
  -- 29: Route 7
  (15, 29, 557, NULL, 'A beach under Wela Volcano Park.', NULL),
  -- 30: Kiawe Trial (milestone)
  (15, 30, NULL, 150006, NULL, NULL),
  -- 31: Route 8
  (15, 31, 558, NULL, 'A coast road north to Lush Jungle.', NULL),
  -- 32: Mallow Trial (milestone)
  (15, 32, NULL, 150007, NULL, NULL),
  -- 33: Diglett's Tunnel
  (15, 33, 510, NULL, 'Ride Charizard back to Heahea City. Olivia has asked you to Konikoni City. Team Skull Grunts are making trouble in the tunnel on the way.', NULL),
  -- 34: Route 9
  (15, 34, 559, NULL, 'A short road into Konikoni City.', NULL),
  -- 35: Konikoni City
  (15, 35, 521, NULL, 'A market town. Olivia is out, and a note at her shop sends you to the Ruins of Life.', NULL),
  -- 36: Memorial Hill
  (15, 36, 529, NULL, 'A graveyard on the way to the ruins. Team Skull Grunts are bullying a Pokémon here.', NULL),
  -- 37: Akala Outskirts
  (15, 37, 506, NULL, 'Plumeria, Team Skull''s big sister, battles you for beating up her Grunts.', NULL),
  -- 38: Grand Trial Olivia (milestone)
  (15, 38, NULL, 150008, NULL, NULL),
  -- 39: Heahea City
  (15, 39, 923, NULL, 'Ride Charizard back to Heahea City. Professor Kukui wants you at the Hano Grand Resort, where Faba of the Aether Foundation offers you a visit to Aether Paradise.', NULL),
  -- 40: Hano Beach
  (15, 40, 514, NULL, 'A beach east of the Hano Grand Resort, where tossing washed-up Pokémon back into the sea is a part-time job.', NULL),
  -- 41: Aether Paradise Visit (milestone)
  (15, 41, NULL, 150028, NULL, NULL),
  -- 42: Malie City
  (15, 42, 525, NULL, 'Ula''ula''s port, built like a town from Johto. The boat from Aether Paradise lands here, and Hau battles you. The library and Malie Garden are here.', NULL),
  -- 43: Malie Garden
  (15, 43, 526, NULL, 'Professor Kukui is being heckled by Team Skull at the far end. Guzma, their boss, turns on you.', NULL),
  -- 44: Route 10
  (15, 44, 544, NULL, 'The bus up Mount Hokulani stops here, once you have cleared the Team Skull Grunts off the stop.', NULL),
  -- 45: Mount Hokulani
  (15, 45, 530, NULL, 'Molayne, who used to be a captain, battles you before he takes you in to his cousin Sophocles.', NULL),
  -- 46: Sophocles Trial (milestone)
  (15, 46, NULL, 150009, NULL, NULL),
  -- 47: Route 11
  (15, 47, 545, NULL, 'South of Malie City, a quiet path of trees and bamboo. Its east gate opens once you have the Electrium Z.', NULL),
  -- 48: Route 12
  (15, 48, 546, NULL, 'A rough road. Hapu adds Mudsdale to your Ride Pager to cross the rocks.', NULL),
  -- 49: Blush Mountain
  (15, 49, 508, NULL, 'A side trip off Route 12 to the visitor centre of the Geothermal Power Plant, which powers all of Ula''ula.', NULL),
  -- 50: Route 13
  (15, 50, 547, NULL, 'A short stretch to Tapu Village.', NULL),
  -- 51: Tapu Village
  (15, 51, 564, NULL, 'A village Tapu Bulu wrecked long ago. The Aether House is down Route 15.', NULL),
  -- 52: Aether House
  (15, 52, 504, NULL, 'A home for children and their Pokémon. Acerola, the captain, lives here, and takes you to her trial.', NULL),
  -- 53: Route 14
  (15, 53, 548, NULL, 'A black sand beach sacred to Tapu Bulu, who wrecked the lighthouse and the Thrifty Megamart here in a rage.', NULL),
  -- 54: Acerola Trial (milestone)
  (15, 54, NULL, 150010, NULL, NULL),
  -- 55: Route 15
  (15, 55, 549, NULL, 'Team Skull has come to the Aether House while you were away. Plumeria battles you, and they leave with a child''s Yungoos. Grimsley, on the beach, adds Sharpedo to your Ride Pager to break the rocks in the water.', NULL),
  -- 56: Route 16
  (15, 56, 550, NULL, 'A short road with a Pokémon Center and an Aether Base, on the way to Ula''ula Meadow.', NULL),
  -- 57: Ula'ula Meadow
  (15, 57, 569, NULL, 'A field of red flowers crossed by wooden walkways. Their Red Nectar changes a dancing Pokémon''s style. Route 17 runs north from here.', NULL),
  -- 58: Lake of the Moone
  (15, 58, 522, NULL, 'A path northeast of Ula''ula Meadow leads to this round lake. A stone bridge crosses it to a shrine, and stairs inside lead down a damp corridor.', 25),
  -- 59: Lake of the Sunne
  (15, 59, 523, NULL, 'A path northeast of Ula''ula Meadow leads to this round lake. A stone bridge crosses it to a shrine, and stairs inside lead down a damp corridor.', 26),
  -- 60: Route 17
  (15, 60, 551, NULL, 'A rainy road to the walls of Po Town. Nanu, the police officer at the gate, lets you in.', NULL),
  -- 61: Po Town (milestone)
  (15, 61, NULL, 150029, NULL, NULL),
  -- 62: Aether House
  (15, 62, 504, NULL, 'Back at the house, Team Skull has taken Lillie and Nebby. Gladion blames you and battles you. After the credits, an Aether worker here gives you a Porygon.', NULL),
  -- 63: Grand Trial Nanu (milestone)
  (15, 63, NULL, 150011, NULL, NULL),
  -- 64: Malie City
  (15, 64, 525, NULL, 'Gladion waits at the ferry terminal to take you and Hau to Aether Paradise.', NULL),
  -- 65: Aether Paradise (milestone)
  (15, 65, NULL, 150021, NULL, NULL),
  -- 66: Seafolk Village
  (15, 66, 562, NULL, 'Poni Island''s only village, built on boats. Gladion''s boat drops you and Lillie here to look for the kahuna. An Ace Trainer in the village gives you an Aerodactyl.', NULL),
  -- 67: Poni Wilds
  (15, 67, 541, NULL, 'Wild country on the way to Hapu''s house.', NULL),
  -- 68: Ancient Poni Path
  (15, 68, 507, NULL, 'Hapu lives here. She is not the kahuna yet, and asks you to meet her at the Ruins of Hope.', NULL),
  -- 69: Poni Breaker Coast
  (15, 69, 535, NULL, 'At the Ruins of Hope beyond, Tapu Fini accepts Hapu as kahuna. She sends you to Exeggutor Island for a flute.', NULL),
  -- 70: Exeggutor Island
  (15, 70, 512, NULL, 'Back in Seafolk Village, the chief sails you to the island. One of the two flutes you need rests on a stand at the top of the island.', NULL),
  -- 71: Ancient Poni Path
  (15, 71, 507, NULL, 'Back through Seafolk Village with the flute. Team Skull Grunts wait at the mouth of Vast Poni Canyon. Beat two of them and Plumeria gives you Poisonium Z and asks you to save Guzma.', NULL),
  -- 72: Grand Trial Hapu (milestone)
  (15, 72, NULL, 150013, NULL, NULL),
  -- 73: Vast Poni Canyon Trial (milestone)
  (15, 73, NULL, 150012, NULL, NULL),
  -- 74: Ultra Space (milestone)
  (15, 74, NULL, 150022, NULL, NULL),
  -- 75: Mount Lanakila
  (15, 75, 531, NULL, 'A lift from Tapu Village takes you up the frozen mountain. Gladion battles you at the bottom, and Hau at the top.', NULL),
  -- 76: Pokémon League
  (15, 76, 931, NULL, 'Alola''s first Pokémon League, just built. Its four rooms can be taken in any order. Once you go in, there''s no way out until you win or lose.', NULL),
  -- 77: Pokémon League (milestone)
  (15, 77, NULL, 150018, NULL, NULL),
  -- 78: Ruins of Conflict
  (15, 78, 927, NULL, 'After the party in Iki Town, Lillie takes you up Mahalo Trail to thank the island''s guardian, and it comes out to battle you.', NULL),
  -- 79: Ultra Beast Missions (milestone)
  (15, 79, NULL, 150020, NULL, NULL),
  -- 80: Ruins of Life (milestone)
  (15, 80, NULL, 150023, NULL, NULL),
  -- 81: Haina Desert
  (15, 81, 513, NULL, 'North of Route 13. Harsh sun by day and a sandstorm by night turn the shifting sands into a maze. The Ruins of Abundance are inside.', NULL),
  -- 82: Ruins of Abundance (milestone)
  (15, 82, NULL, 150024, NULL, NULL),
  -- 83: Ruins of Hope (milestone)
  (15, 83, NULL, 150025, NULL, NULL),
  -- 84: Ten Carat Hill (milestone)
  (15, 84, NULL, 150026, NULL, NULL),
  -- 85: Melemele Sea
  (15, 85, 528, NULL, 'Fly to Melemele Island and ride Lapras or Sharpedo along its southeast coast. Sharpedo reaches a cave on the southwest side of Ten Carat Hill.', NULL),
  -- 86: Poni Grove
  (15, 86, 538, NULL, 'Fly to Poni Island. A short, lush path east from Ancient Poni Path.', NULL),
  -- 87: Poni Plains
  (15, 87, 540, NULL, 'Open plains that link Poni Meadow and Poni Coast.', NULL),
  -- 88: Poni Meadow
  (15, 88, 539, NULL, 'A quiet meadow between Poni Plains and Resolution Cave.', NULL),
  -- 89: Resolution Cave
  (15, 89, 542, NULL, 'A deep cave past Poni Meadow, crossed on Mudsdale. A Pokémon of legend waits at the bottom.', NULL),
  -- 90: Poni Coast
  (15, 90, 536, NULL, 'A rocky shore north from Poni Plains, strewn with boulders.', NULL),
  -- 91: Poni Gauntlet
  (15, 91, 537, NULL, 'A lush field on the north side of Poni Island, crossed by bridges over small waterfalls. Some of the strongest trainers in Alola gather here.', NULL),
  -- 92: Lake of the Sunne
  (15, 92, 523, NULL, 'After the League, take the Ultra Wormhole at the altar above Vast Poni Canyon with your legendary partner. In that reverse world, this lake stands in place of the one you know.', 25),
  -- 93: Lake of the Moone
  (15, 93, 522, NULL, 'After the League, take the Ultra Wormhole at the altar above Vast Poni Canyon with your legendary partner. In that reverse world, this lake stands in place of the one you know.', 26);
