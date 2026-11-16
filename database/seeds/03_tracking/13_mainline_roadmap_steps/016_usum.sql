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
  -- 11: Ilima Trial (milestone)
  (16, 11, NULL, 160003, NULL),
  -- 12: Route 3
  (16, 12, 553, NULL, 'A cliff road. Lillie has lost Nebby in Melemele Meadow. Hau battles you here once you have brought it back.'),
  -- 13: Melemele Meadow
  (16, 13, 527, NULL, 'A field of yellow flowers. Nebby is at the far end.'),
  -- 14: Seaward Cave
  (16, 14, 563, NULL, 'A cave under Melemele Meadow, reached through a hole in the flowers. A member of the Ultra Recon Squad tests you in battle.'),
  -- 15: Grand Trial Hala (milestone)
  (16, 15, NULL, 160004, NULL),
  -- 16: Hau'oli City
  (16, 16, 516, NULL, 'Take the boat from the marina to Akala Island with Kukui, Lillie and Hau.'),
  -- 17: Heahea City
  (16, 17, 923, NULL, 'Akala''s port. Olivia, the kahuna, and Mallow, a captain, meet you on the dock. Samson Oak, on Heahea Beach, swaps your Totem Stickers for totem-sized Pokémon.'),
  -- 18: Route 4
  (16, 18, 554, NULL, 'North to Paniola Town.'),
  -- 19: Paniola Town
  (16, 19, 533, NULL, 'A ranch town. Hau battles you on your way through.'),
  -- 20: Paniola Ranch
  (16, 20, 532, NULL, 'Mallow adds Stoutland to your Ride Pager, which sniffs out hidden items. A member of the Ultra Recon Squad stops you for a battle. A breeder in the Pokémon Nursery here gives you an Eevee Egg.'),
  -- 21: Route 5
  (16, 21, 555, NULL, 'Gladion, an enforcer for Team Skull, stops you for a battle. Brooklet Hill is at the north end.'),
  -- 22: Lana Trial (milestone)
  (16, 22, NULL, 160005, NULL),
  -- 23: Route 6
  (16, 23, 556, NULL, 'A road east to Royal Avenue.'),
  -- 24: Royal Avenue
  (16, 24, 560, NULL, 'Home of the Battle Royal Dome. The Masked Royal talks you, Hau and Gladion into a Battle Royal.'),
  -- 25: Route 7
  (16, 25, 557, NULL, 'A beach under Wela Volcano Park.'),
  -- 26: Kiawe Trial (milestone)
  (16, 26, NULL, 160006, NULL),
  -- 27: Route 8
  (16, 27, 558, NULL, 'A coast road north to Lush Jungle.'),
  -- 28: Mallow Trial (milestone)
  (16, 28, NULL, 160007, NULL),
  -- 29: Diglett's Tunnel
  (16, 29, 510, NULL, 'Ride Charizard back to Heahea City. Olivia has asked you to Konikoni City. Team Skull Grunts are making trouble in the tunnel on the way.'),
  -- 30: Route 9
  (16, 30, 559, NULL, 'A short road into Konikoni City.'),
  -- 31: Konikoni City
  (16, 31, 521, NULL, 'A market town. Olivia is out, and a note at her shop sends you to the Ruins of Life.'),
  -- 32: Memorial Hill
  (16, 32, 529, NULL, 'A graveyard on the way to the ruins. Team Skull Grunts are bullying a Pokémon here.'),
  -- 33: Akala Outskirts
  (16, 33, 506, NULL, 'Plumeria, Team Skull''s big sister, battles you for beating up her Grunts.'),
  -- 34: Grand Trial Olivia (milestone)
  (16, 34, NULL, 160008, NULL),
  -- 35: Heahea City
  (16, 35, 923, NULL, 'Ride Charizard back to Heahea City. Professor Kukui wants you at the Hano Grand Resort, where Faba of the Aether Foundation offers you a visit to Aether Paradise.'),
  -- 36: Aether Paradise Visit (milestone)
  (16, 36, NULL, 160034, NULL),
  -- 37: Malie City
  (16, 37, 525, NULL, 'Ula''ula''s port, built like a town from Johto. The boat from Aether Paradise lands here, and Hau battles you. The library and Malie Garden are here.'),
  -- 38: Malie Garden
  (16, 38, 526, NULL, 'Professor Kukui is being heckled by Team Skull at the far end. Guzma, their boss, turns on you.'),
  -- 39: Route 10
  (16, 39, 544, NULL, 'The bus up Mount Hokulani stops here, once you have cleared the Team Skull Grunts off the stop.'),
  -- 40: Mount Hokulani
  (16, 40, 530, NULL, 'The bus takes you to the top, where Molayne brings you in to his cousin Sophocles at the observatory.'),
  -- 41: Sophocles Trial (milestone)
  (16, 41, NULL, 160009, NULL),
  -- 42: Route 12
  (16, 42, 546, NULL, 'A rough road. Hapu adds Mudsdale to your Ride Pager to cross the rocks.'),
  -- 43: Route 13
  (16, 43, 547, NULL, 'A short stretch to Tapu Village.'),
  -- 44: Tapu Village
  (16, 44, 564, NULL, 'A village Tapu Bulu wrecked long ago. The Aether House is down Route 15.'),
  -- 45: Aether House
  (16, 45, 504, NULL, 'A home for children and their Pokémon. Acerola, the captain, lives here, and takes you to her trial.'),
  -- 46: Acerola Trial (milestone)
  (16, 46, NULL, 160010, NULL),
  -- 47: Route 15
  (16, 47, 549, NULL, 'Team Skull has come to the Aether House while you were away. Plumeria battles you, and they leave with a child''s Yungoos. Grimsley, on the beach, adds Sharpedo to your Ride Pager to break the rocks in the water.'),
  -- 48: Route 17
  (16, 48, 551, NULL, 'A rainy road to the walls of Po Town. Nanu, the police officer at the gate, lets you in.'),
  -- 49: Po Town (milestone)
  (16, 49, NULL, 160035, NULL),
  -- 50: Aether House
  (16, 50, 504, NULL, 'Back at the house, Team Skull has taken Lillie and Nebby. Gladion blames you and battles you. After Episode RR, an Aether worker here gives you a Porygon.'),
  -- 51: Grand Trial Nanu (milestone)
  (16, 51, NULL, 160011, NULL),
  -- 52: Malie City
  (16, 52, 525, NULL, 'Gladion waits at the ferry terminal to take you and Hau to Aether Paradise.'),
  -- 53: Aether Paradise (milestone)
  (16, 53, NULL, 160023, NULL),
  -- 54: Seafolk Village
  (16, 54, 562, NULL, 'Poni Island''s only village, built on boats. Gladion''s boat drops you and Lillie here to look for the kahuna. An Ace Trainer in the village gives you an Aerodactyl.'),
  -- 55: Poni Wilds
  (16, 55, 541, NULL, 'Wild country on the way to Hapu''s house.'),
  -- 56: Ancient Poni Path
  (16, 56, 507, NULL, 'Hapu lives here. She is not the kahuna yet, and asks you to meet her at the Ruins of Hope. After the credits, Wicke waits on this path with a Type: Null for you.'),
  -- 57: Poni Breaker Coast
  (16, 57, 535, NULL, 'At the Ruins of Hope beyond, Tapu Fini accepts Hapu as kahuna. She sends you to Exeggutor Island for a flute.'),
  -- 58: Exeggutor Island
  (16, 58, 512, NULL, 'Back in Seafolk Village, the chief sails you to the island. One of the two flutes you need rests on a stand at the top of the island.'),
  -- 59: Vast Poni Canyon Trial (milestone)
  (16, 59, NULL, 160013, NULL),
  -- 60: Ultra Necrozma (milestone)
  (16, 60, NULL, 160015, NULL),
  -- 61: Seafolk Village
  (16, 61, 562, NULL, 'With the light back, Mina is ready for you at her houseboat.'),
  -- 62: Mina Trial (milestone)
  (16, 62, NULL, 160012, NULL),
  -- 63: Grand Trial Hapu (milestone)
  (16, 63, NULL, 160014, NULL),
  -- 64: Mount Lanakila
  (16, 64, 531, NULL, 'A lift from Tapu Village takes you up the frozen mountain. Gladion battles you on the way.'),
  -- 65: Pokémon League
  (16, 65, 931, NULL, 'Alola''s first Pokémon League, just built. Its four rooms can be taken in any order. Once you go in, there''s no way out until you win or lose.'),
  -- 66: Pokémon League (milestone)
  (16, 66, NULL, 160020, NULL),
  -- 67: Team Rainbow Rocket (milestone)
  (16, 67, NULL, 160022, NULL),
  -- 68: Mahalo Trail (milestone)
  (16, 68, NULL, 160024, NULL),
  -- 69: Mount Lanakila Crater (milestone)
  (16, 69, NULL, 160025, NULL),
  -- 70: Ruins of Conflict (milestone)
  (16, 70, NULL, 160026, NULL),
  -- 71: Ruins of Life (milestone)
  (16, 71, NULL, 160027, NULL),
  -- 72: Ruins of Abundance (milestone)
  (16, 72, NULL, 160028, NULL),
  -- 73: Ruins of Hope (milestone)
  (16, 73, NULL, 160029, NULL),
  -- 74: Resolution Cave (milestone)
  (16, 74, NULL, 160030, NULL),
  -- 75: Poni Grove (milestone)
  (16, 75, NULL, 160031, NULL),
  -- 76: Ilima Bonus Trial (milestone)
  (16, 76, NULL, 160032, NULL);
