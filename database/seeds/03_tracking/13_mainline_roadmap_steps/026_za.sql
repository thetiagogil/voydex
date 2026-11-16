-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's Legends: Z-A walkthrough, part by part (Main Missions
-- 01 to 42).
-- Scope: Pokémon Legends: Z-A Story roadmap.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_roadmap_steps
-- Legends: Z-A's Story roadmap, step by step, in Red / Blue's pattern: a
-- place the story passes (location_id) or a milestone (milestone_id).
-- A place step carries a note on what happens there, and never lists the
-- Pokémon found there.
-- ============================================================================
INSERT INTO tracking.mainline_roadmap_steps (
  version_group_id,
  sort_order,
  location_id,
  milestone_id,
  note
) VALUES
  -- 1: Gare de Lumiose
  (26, 1, 976, NULL, 'You step off the train here. Outside, Taunie or Urbain asks you to help advertise their hotel, and Jett of Quasartico Inc. tells you about the rebuilding of the city.'),
  -- 2: Choose Starter (milestone)
  (26, 2, NULL, 260001, NULL),
  -- 3: Lumiose City
  (26, 3, 798, NULL, 'Night falls and a Battle Zone closes around you. Follow Taunie or Urbain out of it. A Floette with a strange flower scares off the Trainers who corner you.'),
  -- 4: Hotel Z
  (26, 4, 437, NULL, 'A small hotel run by AZ, who gives you a room. In the morning Taunie or Urbain puts the Z-A Royale app on your phone.'),
  -- 5: Join Team MZ (milestone)
  (26, 5, NULL, 260003, NULL),
  -- 6: Wild Zone 1
  (26, 6, 484, NULL, 'The first Wild Zone, where you learn to catch Pokémon. Mable, who runs the Pokémon Research Lab, asks you to fill in the Pokédex.'),
  -- 7: Reach Rank Y (milestone)
  (26, 7, NULL, 260013, NULL),
  -- 8: Wild Zone 2
  (26, 8, 495, NULL, 'Taunie or Urbain shows you Prism Tower from the bridge, then sends you here. At the food truck after, you see a Mega Evolution for the first time.'),
  -- 9: Looker Bureau
  (26, 9, 985, NULL, 'The detective Emma has three small jobs for you around the city. Do them and she shows you what Mega Evolution is, in a battle. Three side missions in the city, A Feisty Chespin, Get Well, Fennekin and A Challenge from Froakie, each end with that Pokémon joining you.'),
  -- 10: Reach Rank X (milestone)
  (26, 10, NULL, 260014, NULL),
  -- 11: Hotel Z
  (26, 11, 437, NULL, 'Lida and Naveen ask why you joined Team MZ. Naveen battles you, and Lida tells you why he joined.'),
  -- 12: Wild Zone 6
  (26, 12, 500, NULL, 'A new Wild Zone to visit before Xavi''s match.'),
  -- 13: Reach Rank W (milestone)
  (26, 13, NULL, 260015, NULL),
  -- 14: Hotel Z
  (26, 14, 437, NULL, 'Lida has left her bag behind. AZ sends you after her with it, and she battles you when you find her.'),
  -- 15: Reach Rank V (milestone)
  (26, 15, NULL, 260016, NULL),
  -- 16: Jaune Sector 6
  (26, 16, 988, NULL, 'Zygarde is waiting outside the restaurant. Chase it through the streets and it lifts you to the rooftops, where an Absol glows pink. Calm it and it joins you.'),
  -- 17: Unlock Mega Evolution (milestone)
  (26, 17, NULL, 260005, NULL),
  -- 18: Wild Zone 8
  (26, 18, 502, NULL, 'Wild Zones 8, 9 and 10 open.'),
  -- 19: Reach Rank F (milestone)
  (26, 19, NULL, 260017, NULL),
  -- 20: Hotel Z
  (26, 20, 437, NULL, 'An emergency meeting. Three Rogue Mega Evolutions have been seen, and Team MZ splits up to calm them. Take them in any order.'),
  -- 21: Aymlis Park
  (26, 21, 983, NULL, 'A Rogue Mega Slowbro has been seen here. Taunie or Urbain meets you to face it.'),
  -- 22: Rogue Mega Slowbro (milestone)
  (26, 22, NULL, 260022, NULL),
  -- 23: Jaune Sector 3
  (26, 23, 986, NULL, 'A Rogue Mega Camerupt has been seen here. Lida meets you to face it.'),
  -- 24: Rogue Mega Camerupt (milestone)
  (26, 24, NULL, 260023, NULL),
  -- 25: Magenta Sector 9
  (26, 25, 994, NULL, 'A Rogue Mega Victreebel has been seen here. Naveen meets you to face it.'),
  -- 26: Rogue Mega Victreebel (milestone)
  (26, 26, NULL, 260024, NULL),
  -- 27: Hotel Z
  (26, 27, 437, NULL, 'Zygarde is waiting outside the hotel and battles you. Then the streamer Canari turns up as your next match, and Naveen, a fan of hers, battles you before he helps you find her.'),
  -- 28: Reach Rank E (milestone)
  (26, 28, NULL, 260018, NULL),
  -- 29: Wild Zone 11
  (26, 29, 486, NULL, 'Wild Zones 11, 12 and 13 open. Team MZ takes on three more Rogue Mega Evolutions. Terri''s side mission here ends with a Galarian Stunfisk.'),
  -- 30: Vert Sector 5
  (26, 30, 996, NULL, 'A Rogue Mega Beedrill has been seen here. Taunie or Urbain meets you to face it.'),
  -- 31: Rogue Mega Beedrill (milestone)
  (26, 31, NULL, 260025, NULL),
  -- 32: Magenta Sector 3
  (26, 32, 991, NULL, 'A Rogue Mega Hawlucha has been seen here. Lida meets you to face it.'),
  -- 33: Rogue Mega Hawlucha (milestone)
  (26, 33, NULL, 260026, NULL),
  -- 34: Jaune Sector 9
  (26, 34, 990, NULL, 'A Rogue Mega Banette has been seen here. Naveen meets you to face it.'),
  -- 35: Rogue Mega Banette (milestone)
  (26, 35, NULL, 260027, NULL),
  -- 36: Hotel Z
  (26, 36, 437, NULL, 'Back at the hotel, nobody can say what is causing the Rogue Mega Evolutions. Ivor of the Fist of Justice is your next match.'),
  -- 37: Reach Rank D (milestone)
  (26, 37, NULL, 260019, NULL),
  -- 38: Rust Syndicate Office
  (26, 38, 981, NULL, 'The Rust Syndicate says Taunie or Urbain owes it money. Go to its office with Lida, where its boss Corbeau has jobs for you. Wild Zones 14 and 15 open.'),
  -- 39: Magenta Sector 6
  (26, 39, 993, NULL, 'A Rogue Mega Mawile has been seen here. Taunie or Urbain meets you to face it.'),
  -- 40: Rogue Mega Mawile (milestone)
  (26, 40, NULL, 260028, NULL),
  -- 41: Bleu Sector 5
  (26, 41, 997, NULL, 'A Rogue Mega Barbaracle has been seen here. Lida meets you to face it.'),
  -- 42: Rogue Mega Barbaracle (milestone)
  (26, 42, NULL, 260029, NULL),
  -- 43: Rouge Sector 6
  (26, 43, 999, NULL, 'A Rogue Mega Ampharos has been seen here. Naveen meets you to face it.'),
  -- 44: Rogue Mega Ampharos (milestone)
  (26, 44, NULL, 260030, NULL),
  -- 45: Lumiose City
  (26, 45, 798, NULL, 'Corbeau''s jobs. Clear a building of the Pokémon squatting in it, then follow one of his people into the sewers.'),
  -- 46: Reach Rank C (milestone)
  (26, 46, NULL, 260020, NULL),
  -- 47: Hotel Z
  (26, 47, 437, NULL, 'Team MZ settles the debt. AZ gives Lida and Naveen Mega Rings, and they try them against you on the battle court. Wild Zones 16 and 17 open.'),
  -- 48: Hotel Richissime
  (26, 48, 982, NULL, 'Lebanne of the Society of Battle Connoisseurs invites you to dinner at this grand hotel. Dress for it. Jacinthe, who leads the Society, wants you in her tournament.'),
  -- 49: Aymlis Park
  (26, 49, 983, NULL, 'A Rogue Mega Froslass has been seen here. Naveen meets you to face it.'),
  -- 50: Rogue Mega Froslass (milestone)
  (26, 50, NULL, 260031, NULL),
  -- 51: Magenta Sector 4
  (26, 51, 992, NULL, 'A Rogue Mega Altaria has been seen here. Lida meets you to face it.'),
  -- 52: Rogue Mega Altaria (milestone)
  (26, 52, NULL, 260032, NULL),
  -- 53: Jaune Sector 8
  (26, 53, 989, NULL, 'A Rogue Mega Venusaur has been seen here. Taunie or Urbain meets you to face it.'),
  -- 54: Rogue Mega Venusaur (milestone)
  (26, 54, NULL, 260033, NULL),
  -- 55: Hotel Z
  (26, 55, 437, NULL, 'Jacinthe is tired of waiting and closes a Battle Zone of her own around the hotel. Beat Lebanne and two more of her people to get out.'),
  -- 56: Reach Rank B (milestone)
  (26, 56, NULL, 260006, NULL),
  -- 57: Quasartico Inc. (building)
  (26, 57, 448, NULL, 'Vinnie calls you in. Wild Zones 18 and 19 open, and three more Rogue Mega Evolutions appear.'),
  -- 58: Vert Sector 3
  (26, 58, 995, NULL, 'A Rogue Mega Dragonite has been seen here. Taunie or Urbain meets you to face it.'),
  -- 59: Rogue Mega Dragonite (milestone)
  (26, 59, NULL, 260034, NULL),
  -- 60: Jaune Sector 4
  (26, 60, 987, NULL, 'A Rogue Mega Tyranitar has been seen here. Naveen meets you to face it.'),
  -- 61: Rogue Mega Tyranitar (milestone)
  (26, 61, NULL, 260035, NULL),
  -- 62: Bleu Sector 9
  (26, 62, 998, NULL, 'A Rogue Mega Starmie has been seen here. Lida meets you to face it.'),
  -- 63: Rogue Mega Starmie (milestone)
  (26, 63, NULL, 260036, NULL),
  -- 64: Looker Bureau
  (26, 64, 985, NULL, 'Your next match is against someone who calls himself Grisham. Emma, the detective, tells you what she knows if you beat her.'),
  -- 65: Reach Rank A (milestone)
  (26, 65, NULL, 260021, NULL),
  -- 66: Hotel Z
  (26, 66, 437, NULL, 'The city shakes in the night, and Prism Tower glows pink with Mega Energy. Vinnie asks Team MZ to deal with it at once.'),
  -- 67: Stop the Ange Crisis (milestone)
  (26, 67, NULL, 260008, NULL),
  -- 68: Wild Zone 20
  (26, 68, 496, NULL, 'After the credits, a new Wild Zone opens where Prism Tower stood.'),
  -- 69: Infinite Z-A Royale (milestone)
  (26, 69, NULL, 260009, NULL),
  -- 70: Hotel Z
  (26, 70, 437, NULL, 'L is waiting at the hotel. He remembers two beings, one that gives and one that takes. The Lucario that AZ lent you is in your room, yours to keep.'),
  -- 71: Pokémon Research Lab
  (26, 71, 445, NULL, 'Mable ties the anomalous Alphas turning up in the Wild Zones to the one that gives. Her side mission, A Call from Mable, ends with a Bulbasaur, Charmander or Squirtle.'),
  -- 72: The One That Gives (milestone)
  (26, 72, NULL, 260010, NULL),
  -- 73: Quasartico Inc. (building)
  (26, 73, 448, NULL, 'Vinnie has built a simulator of the Rogue Mega Evolutions. Clear it to learn where the one that takes is.'),
  -- 74: The One That Takes (milestone)
  (26, 74, NULL, 260011, NULL),
  -- 75: Hotel Z
  (26, 75, 437, NULL, 'With both caught, L asks for a battle to see if you are fit to meet Zygarde.'),
  -- 76: To Keep the World in Balance (milestone)
  (26, 76, NULL, 260012, NULL),
  -- 77: Wild Zone 3
  (26, 77, 497, NULL, 'A side trip through the Wild Zones you have not walked yet. This one is at Rouge Plaza in the Rouge District.'),
  -- 78: Wild Zone 4
  (26, 78, 498, NULL, 'Built on the Dormez Bien Cemetery in the Rouge District, one of the first Wild Zones that open.'),
  -- 79: Wild Zone 5
  (26, 79, 499, NULL, 'Most of Bleu Sectors 1 and 2 in the Bleu District.'),
  -- 80: Wild Zone 7
  (26, 80, 501, NULL, 'Magenta Plaza, between Magenta Sectors 3 and 4.'),
  -- 81: Wild Zone 9
  (26, 81, 503, NULL, 'Magenta Sector 5 in the Magenta District.'),
  -- 82: Wild Zone 10
  (26, 82, 485, NULL, 'Bleu Sector 10 in the Bleu District.'),
  -- 83: Wild Zone 12
  (26, 83, 487, NULL, 'Aymlis Park in the Bleu District. It opens with Main Mission 15.'),
  -- 84: Wild Zone 13
  (26, 84, 488, NULL, 'A stretch of North Boulevard in the Rouge District. It opens with Main Mission 15.'),
  -- 85: Wild Zone 14
  (26, 85, 489, NULL, 'The Electrical Substation in the Magenta District. It opens with Main Mission 20.'),
  -- 86: Wild Zone 15
  (26, 86, 490, NULL, 'A stretch of North Boulevard in the Jaune District. It opens with Main Mission 20.'),
  -- 87: Wild Zone 16
  (26, 87, 491, NULL, 'Bleu Plaza in the Bleu District. It opens with Mission 25.'),
  -- 88: Wild Zone 17
  (26, 88, 492, NULL, 'Vert Sector 7 in the Vert District. It opens with Mission 25.'),
  -- 89: Wild Zone 18
  (26, 89, 493, NULL, 'Parts of Magenta Sector 9 and North Boulevard. It opens with Main Mission 31.'),
  -- 90: Wild Zone 19
  (26, 90, 494, NULL, 'Parts of Jaune Sector 8. It opens with Mission 31.'),
  -- 91: North Boulevard
  (26, 91, 802, NULL, 'The street along the north half of Lumiose City, with three gates out of town.'),
  -- 92: Lumiose Museum
  (26, 92, 441, NULL, 'A white museum on North Boulevard, free to enter, full of art about people and Pokémon. Find its 12 lost Spewpa in a side mission and one of them is yours.'),
  -- 93: Passage du Palais
  (26, 93, 799, NULL, 'A shopping arcade in Rouge Sector 8, with eight boutiques and a hair salon.'),
  -- 94: Saison Canal
  (26, 94, 472, NULL, 'The canal that runs under Prism Tower and Centrico Plaza and splits the city in two.'),
  -- 95: Magenta Sector 2
  (26, 95, 801, NULL, 'Northwest of Centrico Plaza. In Main Mission 37, three Rogue Mega Evolutions are battled here beside Griselle and Grisham.');
