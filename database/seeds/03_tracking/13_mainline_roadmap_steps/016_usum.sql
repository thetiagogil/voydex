-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's Ultra Sun / Ultra Moon walkthrough (the order the
-- story passes each place and reaches each beat, and what happens there),
-- with its location pages for the places.
-- Scope: Pokémon Ultra Sun / Ultra Moon Story roadmap.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_roadmap_steps
-- Ultra Sun / Ultra Moon's Story roadmap, step by step, in Red / Blue's
-- pattern: a place the walkthrough passes (location_id) or a milestone
-- (milestone_id), which sits at its own place. It is Sun / Moon's route with
-- these games' own story, and a place keeps Sun / Moon's note where the game
-- plays the same there. The optional beats all come after the League.
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
  (16, 1, 543, NULL, 'Your new home on Melemele Island. On your way to meet Professor Kukui, wild Pokémon corner you, and three starter Pokémon jump in to help.'),
  -- 2: Choose Starter (milestone)
  (16, 2, NULL, 160001, NULL),
  -- 3: Receive Pokédex (milestone)
  (16, 3, NULL, 160002, NULL),
  -- 4: Iki Town
  (16, 4, 519, NULL, 'Kahuna Hala is out. A girl called Lillie hurries up the trail above town, and you follow her.'),
  -- 5: Mahalo Trail
  (16, 5, 933, NULL, 'Lillie asks you to save Nebby from a flock of Spearow on a rope bridge. The bridge breaks, and Tapu Koko catches you and leaves a Sparkling Stone. Then back down to Iki Town.'),
  -- 6: Iki Town Festival (milestone)
  (16, 6, NULL, 160033, NULL),
  -- 7: Route 1
  (16, 7, 543, NULL, 'The next day Hala gives you a Z-Ring made from the stone, and Lillie takes you down to Professor Kukui''s lab on the beach.'),
  -- 8: Trainers' School
  (16, 8, 567, NULL, 'Beat the four trainers the teacher points out, then the teacher herself. Ilima, the captain of the first trial, comes to watch.'),
  -- 9: Hau'oli City
  (16, 9, 516, NULL, 'Melemele''s big city. Ilima sees off two Team Skull Grunts at the marina, then battles you to see if you are ready for his trial.'),
  -- 10: Route 2
  (16, 10, 552, NULL, 'North of the city to the Pokémon Center by Verdant Cavern. The Berry fields are on this road.'),
  -- 11: Hau'oli Cemetery
  (16, 11, 515, NULL, 'A side trip to the graveyard on Route 2, where people and Pokémon rest.'),
  -- 12: Ilima Trial (milestone)
  (16, 12, NULL, 160003, NULL),
  -- 13: Route 3
  (16, 13, 553, NULL, 'A cliff road. Lillie has lost Nebby in Melemele Meadow. Hau battles you here once you have brought it back.'),
  -- 14: Melemele Meadow
  (16, 14, 527, NULL, 'A field of yellow flowers. Nebby is at the far end.'),
  -- 15: Seaward Cave
  (16, 15, 563, NULL, 'A cave under Melemele Meadow, reached through a hole in the flowers. A member of the Ultra Recon Squad tests you in battle.'),
  -- 16: Kala'e Bay
  (16, 16, 520, NULL, 'One of Melemele''s prettiest spots. Its small islands and southwest beach open once you can ride Lapras or Sharpedo. Then back to Iki Town.'),
  -- 17: Grand Trial Hala (milestone)
  (16, 17, NULL, 160004, NULL),
  -- 18: Ten Carat Hill
  (16, 18, 565, NULL, 'A side trip west of Route 1 into a cave hollowed out by an underwater volcano. Tauros breaks the boulders at its entrance.'),
  -- 19: Hau'oli City
  (16, 19, 516, NULL, 'Take the boat from the marina to Akala Island with Kukui, Lillie and Hau.'),
  -- 20: Heahea City
  (16, 20, 923, NULL, 'Akala''s port. Olivia, the kahuna, and Mallow, a captain, meet you on the dock. Samson Oak, on Heahea Beach, swaps your Totem Stickers for totem-sized Pokémon.'),
  -- 21: Heahea Beach
  (16, 21, 517, NULL, 'The beach by Heahea City, where Samson Oak hangs out. It is also Akala''s spot for Mantine Surf.'),
  -- 22: Route 4
  (16, 22, 554, NULL, 'North to Paniola Town.'),
  -- 23: Pikachu Valley
  (16, 23, 534, NULL, 'A side trip to a small fenced valley off Route 4, watched over by two Trial Guides. It is found only in Ultra Sun and Ultra Moon.'),
  -- 24: Paniola Town
  (16, 24, 533, NULL, 'A ranch town. Hau battles you on your way through.'),
  -- 25: Paniola Ranch
  (16, 25, 532, NULL, 'Mallow adds Stoutland to your Ride Pager, which sniffs out hidden items. A member of the Ultra Recon Squad stops you for a battle. A breeder in the Pokémon Nursery here gives you an Eevee Egg.'),
  -- 26: Route 5
  (16, 26, 555, NULL, 'Gladion, an enforcer for Team Skull, stops you for a battle. Brooklet Hill is at the north end.'),
  -- 27: Lana Trial (milestone)
  (16, 27, NULL, 160005, NULL),
  -- 28: Route 6
  (16, 28, 556, NULL, 'A road east to Royal Avenue.'),
  -- 29: Royal Avenue
  (16, 29, 560, NULL, 'Home of the Battle Royal Dome. The Masked Royal talks you, Hau and Gladion into a Battle Royal.'),
  -- 30: Route 7
  (16, 30, 557, NULL, 'A beach under Wela Volcano Park.'),
  -- 31: Kiawe Trial (milestone)
  (16, 31, NULL, 160006, NULL),
  -- 32: Dividing Peak Tunnel
  (16, 32, 511, NULL, 'A tunnel from Route 7 to Route 8. The Ultra Recon Squad is studying it, and no wild Pokémon turn up until you talk to them.'),
  -- 33: Route 8
  (16, 33, 558, NULL, 'A coast road north to Lush Jungle.'),
  -- 34: Mallow Trial (milestone)
  (16, 34, NULL, 160007, NULL),
  -- 35: Diglett's Tunnel
  (16, 35, 510, NULL, 'Ride Charizard back to Heahea City. Olivia has asked you to Konikoni City. Team Skull Grunts are making trouble in the tunnel on the way.'),
  -- 36: Route 9
  (16, 36, 559, NULL, 'A short road into Konikoni City.'),
  -- 37: Konikoni City
  (16, 37, 521, NULL, 'A market town. Olivia is out, and a note at her shop sends you to the Ruins of Life.'),
  -- 38: Memorial Hill
  (16, 38, 529, NULL, 'A graveyard on the way to the ruins. Team Skull Grunts are bullying a Pokémon here.'),
  -- 39: Akala Outskirts
  (16, 39, 506, NULL, 'Plumeria, Team Skull''s big sister, battles you for beating up her Grunts.'),
  -- 40: Grand Trial Olivia (milestone)
  (16, 40, NULL, 160008, NULL),
  -- 41: Heahea City
  (16, 41, 923, NULL, 'Ride Charizard back to Heahea City. Professor Kukui wants you at the Hano Grand Resort, where Faba of the Aether Foundation offers you a visit to Aether Paradise.'),
  -- 42: Hano Beach
  (16, 42, 514, NULL, 'A beach east of the Hano Grand Resort, where tossing washed-up Pokémon back into the sea is a part-time job.'),
  -- 43: Aether Paradise Visit (milestone)
  (16, 43, NULL, 160034, NULL),
  -- 44: Malie City
  (16, 44, 525, NULL, 'Ula''ula''s port, built like a town from Johto. The boat from Aether Paradise lands here, and Hau battles you. The library and Malie Garden are here.'),
  -- 45: Malie Garden
  (16, 45, 526, NULL, 'Professor Kukui is being heckled by Team Skull at the far end. Guzma, their boss, turns on you.'),
  -- 46: Route 10
  (16, 46, 544, NULL, 'The bus up Mount Hokulani stops here, once you have cleared the Team Skull Grunts off the stop.'),
  -- 47: Mount Hokulani
  (16, 47, 530, NULL, 'The bus takes you to the top, where Molayne brings you in to his cousin Sophocles at the observatory.'),
  -- 48: Sophocles Trial (milestone)
  (16, 48, NULL, 160009, NULL),
  -- 49: Route 11
  (16, 49, 545, NULL, 'South of Malie City, a quiet path of trees and bamboo. Its east gate opens once you have the Electrium Z.'),
  -- 50: Route 12
  (16, 50, 546, NULL, 'A rough road. Hapu adds Mudsdale to your Ride Pager to cross the rocks.'),
  -- 51: Blush Mountain
  (16, 51, 508, NULL, 'A side trip off Route 12 to the visitor centre of the Geothermal Power Plant, which powers all of Ula''ula.'),
  -- 52: Ula'ula Beach
  (16, 52, 568, NULL, 'A beach below Route 12, busy with Mantine Surf. Tents trade Battle Points for items and move lessons.'),
  -- 53: Route 13
  (16, 53, 547, NULL, 'A short stretch to Tapu Village.'),
  -- 54: Tapu Village
  (16, 54, 564, NULL, 'A village Tapu Bulu wrecked long ago. The Aether House is down Route 15.'),
  -- 55: Aether House
  (16, 55, 504, NULL, 'A home for children and their Pokémon. Acerola, the captain, lives here, and takes you to her trial.'),
  -- 56: Route 14
  (16, 56, 548, NULL, 'A black sand beach sacred to Tapu Bulu, who wrecked the lighthouse and the Thrifty Megamart here in a rage.'),
  -- 57: Acerola Trial (milestone)
  (16, 57, NULL, 160010, NULL),
  -- 58: Route 15
  (16, 58, 549, NULL, 'Team Skull has come to the Aether House while you were away. Plumeria battles you, and they leave with a child''s Yungoos. Grimsley, on the beach, adds Sharpedo to your Ride Pager to break the rocks in the water.'),
  -- 59: Route 16
  (16, 59, 550, NULL, 'A short road with a Pokémon Center and an Aether Base, on the way to Ula''ula Meadow.'),
  -- 60: Ula'ula Meadow
  (16, 60, 569, NULL, 'A field of red flowers crossed by wooden walkways. Their Red Nectar changes a dancing Pokémon''s style. Route 17 runs north from here.'),
  -- 61: Route 17
  (16, 61, 551, NULL, 'A rainy road to the walls of Po Town. Nanu, the police officer at the gate, lets you in.'),
  -- 62: Po Town (milestone)
  (16, 62, NULL, 160035, NULL),
  -- 63: Aether House
  (16, 63, 504, NULL, 'Back at the house, Team Skull has taken Lillie and Nebby. Gladion blames you and battles you. After Episode RR, an Aether worker here gives you a Porygon.'),
  -- 64: Grand Trial Nanu (milestone)
  (16, 64, NULL, 160011, NULL),
  -- 65: Malie City
  (16, 65, 525, NULL, 'Gladion waits at the ferry terminal to take you and Hau to Aether Paradise.'),
  -- 66: Aether Paradise (milestone)
  (16, 66, NULL, 160023, NULL),
  -- 67: Seafolk Village
  (16, 67, 562, NULL, 'Poni Island''s only village, built on boats. Gladion''s boat drops you and Lillie here to look for the kahuna. An Ace Trainer in the village gives you an Aerodactyl.'),
  -- 68: Poni Wilds
  (16, 68, 541, NULL, 'Wild country on the way to Hapu''s house.'),
  -- 69: Ancient Poni Path
  (16, 69, 507, NULL, 'Hapu lives here. She is not the kahuna yet, and asks you to meet her at the Ruins of Hope. After the credits, Wicke waits on this path with a Type: Null for you.'),
  -- 70: Poni Breaker Coast
  (16, 70, 535, NULL, 'At the Ruins of Hope beyond, Tapu Fini accepts Hapu as kahuna. She sends you to Exeggutor Island for a flute.'),
  -- 71: Exeggutor Island
  (16, 71, 512, NULL, 'Back in Seafolk Village, the chief sails you to the island. One of the two flutes you need rests on a stand at the top of the island.'),
  -- 72: Vast Poni Canyon Trial (milestone)
  (16, 72, NULL, 160013, NULL),
  -- 73: Ultra Necrozma (milestone)
  (16, 73, NULL, 160015, NULL),
  -- 74: Seafolk Village
  (16, 74, 562, NULL, 'With the light back, Mina is ready for you at her houseboat.'),
  -- 75: Mina Trial (milestone)
  (16, 75, NULL, 160012, NULL),
  -- 76: Grand Trial Hapu (milestone)
  (16, 76, NULL, 160014, NULL),
  -- 77: Mount Lanakila
  (16, 77, 531, NULL, 'A lift from Tapu Village takes you up the frozen mountain. Gladion battles you on the way.'),
  -- 78: Pokémon League
  (16, 78, 931, NULL, 'Alola''s first Pokémon League, just built. Its four rooms can be taken in any order. Once you go in, there''s no way out until you win or lose.'),
  -- 79: Pokémon League (milestone)
  (16, 79, NULL, 160020, NULL),
  -- 80: Team Rainbow Rocket (milestone)
  (16, 80, NULL, 160022, NULL),
  -- 81: Mahalo Trail (milestone)
  (16, 81, NULL, 160024, NULL),
  -- 82: Mount Lanakila Crater (milestone)
  (16, 82, NULL, 160025, NULL),
  -- 83: Ruins of Conflict (milestone)
  (16, 83, NULL, 160026, NULL),
  -- 84: Ruins of Life (milestone)
  (16, 84, NULL, 160027, NULL),
  -- 85: Haina Desert
  (16, 85, 513, NULL, 'North of Route 13. Harsh sun by day and a sandstorm by night turn the shifting sands into a maze. The Ruins of Abundance are inside.'),
  -- 86: Ruins of Abundance (milestone)
  (16, 86, NULL, 160028, NULL),
  -- 87: Ruins of Hope (milestone)
  (16, 87, NULL, 160029, NULL),
  -- 88: Poni Plains
  (16, 88, 540, NULL, 'Fly to Poni Island. Through Poni Grove to these open plains, which link Poni Meadow and Poni Coast.'),
  -- 89: Poni Meadow
  (16, 89, 539, NULL, 'A quiet meadow between Poni Plains and Resolution Cave.'),
  -- 90: Resolution Cave (milestone)
  (16, 90, NULL, 160030, NULL),
  -- 91: Poni Grove (milestone)
  (16, 91, NULL, 160031, NULL),
  -- 92: Poni Coast
  (16, 92, 536, NULL, 'A rocky shore north from Poni Plains, strewn with boulders.'),
  -- 93: Poni Gauntlet
  (16, 93, 537, NULL, 'A lush field on the north side of Poni Island, crossed by bridges over small waterfalls. Some of the strongest trainers in Alola gather here.'),
  -- 94: Ilima Bonus Trial (milestone)
  (16, 94, NULL, 160032, NULL),
  -- 95: Melemele Sea
  (16, 95, 528, NULL, 'Fly to Melemele Island and ride Lapras or Sharpedo along its southeast coast. Sharpedo reaches a cave on the southwest side of Ten Carat Hill.'),
  -- 96: Sandy Cave
  (16, 96, 561, NULL, 'A mostly flooded cave off Big Wave Beach on Melemele Island, found only in Ultra Sun and Ultra Moon.');
