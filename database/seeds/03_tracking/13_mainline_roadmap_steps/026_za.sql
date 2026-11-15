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
  -- 9: Reach Rank X (milestone)
  (26, 9, NULL, 260014, NULL),
  -- 10: Hotel Z
  (26, 10, 437, NULL, 'Lida and Naveen ask why you joined Team MZ. Naveen battles you, and Lida tells you why he joined.'),
  -- 11: Wild Zone 6
  (26, 11, 500, NULL, 'A new Wild Zone to visit before Xavi''s match.'),
  -- 12: Reach Rank W (milestone)
  (26, 12, NULL, 260015, NULL),
  -- 13: Hotel Z
  (26, 13, 437, NULL, 'Lida has left her bag behind. AZ sends you after her with it, and she battles you when you find her.'),
  -- 14: Reach Rank V (milestone)
  (26, 14, NULL, 260016, NULL),
  -- 15: Jaune Sector 6
  (26, 15, 988, NULL, 'Zygarde is waiting outside the restaurant. Chase it through the streets and it lifts you to the rooftops, where an Absol glows pink.'),
  -- 16: Unlock Mega Evolution (milestone)
  (26, 16, NULL, 260005, NULL),
  -- 17: Wild Zone 8
  (26, 17, 502, NULL, 'Wild Zones 8, 9 and 10 open.'),
  -- 18: Reach Rank F (milestone)
  (26, 18, NULL, 260017, NULL),
  -- 19: Hotel Z
  (26, 19, 437, NULL, 'An emergency meeting. Three Rogue Mega Evolutions have been seen, and Team MZ splits up to calm them. Take them in any order.'),
  -- 20: Aymlis Park
  (26, 20, 983, NULL, 'A Rogue Mega Slowbro has been seen here. Taunie or Urbain meets you to face it.'),
  -- 21: Rogue Mega Slowbro (milestone)
  (26, 21, NULL, 260022, NULL),
  -- 22: Jaune Sector 3
  (26, 22, 986, NULL, 'A Rogue Mega Camerupt has been seen here. Lida meets you to face it.'),
  -- 23: Rogue Mega Camerupt (milestone)
  (26, 23, NULL, 260023, NULL),
  -- 24: Magenta Sector 9
  (26, 24, 994, NULL, 'A Rogue Mega Victreebel has been seen here. Naveen meets you to face it.'),
  -- 25: Rogue Mega Victreebel (milestone)
  (26, 25, NULL, 260024, NULL),
  -- 26: Hotel Z
  (26, 26, 437, NULL, 'Zygarde is waiting outside the hotel and battles you. Then the streamer Canari turns up as your next match, and Naveen, a fan of hers, battles you before he helps you find her.'),
  -- 27: Reach Rank E (milestone)
  (26, 27, NULL, 260018, NULL),
  -- 28: Wild Zone 11
  (26, 28, 486, NULL, 'Wild Zones 11, 12 and 13 open. Team MZ takes on three more Rogue Mega Evolutions.'),
  -- 29: Vert Sector 5
  (26, 29, 996, NULL, 'A Rogue Mega Beedrill has been seen here. Taunie or Urbain meets you to face it.'),
  -- 30: Rogue Mega Beedrill (milestone)
  (26, 30, NULL, 260025, NULL),
  -- 31: Magenta Sector 3
  (26, 31, 991, NULL, 'A Rogue Mega Hawlucha has been seen here. Lida meets you to face it.'),
  -- 32: Rogue Mega Hawlucha (milestone)
  (26, 32, NULL, 260026, NULL),
  -- 33: Jaune Sector 9
  (26, 33, 990, NULL, 'A Rogue Mega Banette has been seen here. Naveen meets you to face it.'),
  -- 34: Rogue Mega Banette (milestone)
  (26, 34, NULL, 260027, NULL),
  -- 35: Hotel Z
  (26, 35, 437, NULL, 'Back at the hotel, nobody can say what is causing the Rogue Mega Evolutions. Ivor of the Fist of Justice is your next match.'),
  -- 36: Reach Rank D (milestone)
  (26, 36, NULL, 260019, NULL),
  -- 37: Rust Syndicate Office
  (26, 37, 981, NULL, 'The Rust Syndicate says Taunie or Urbain owes it money. Go to its office with Lida, where its boss Corbeau has jobs for you. Wild Zones 14 and 15 open.'),
  -- 38: Magenta Sector 6
  (26, 38, 993, NULL, 'A Rogue Mega Mawile has been seen here. Taunie or Urbain meets you to face it.'),
  -- 39: Rogue Mega Mawile (milestone)
  (26, 39, NULL, 260028, NULL),
  -- 40: Bleu Sector 5
  (26, 40, 997, NULL, 'A Rogue Mega Barbaracle has been seen here. Lida meets you to face it.'),
  -- 41: Rogue Mega Barbaracle (milestone)
  (26, 41, NULL, 260029, NULL),
  -- 42: Rouge Sector 6
  (26, 42, 999, NULL, 'A Rogue Mega Ampharos has been seen here. Naveen meets you to face it.'),
  -- 43: Rogue Mega Ampharos (milestone)
  (26, 43, NULL, 260030, NULL),
  -- 44: Lumiose City
  (26, 44, 798, NULL, 'Corbeau''s jobs. Clear a building of the Pokémon squatting in it, then follow one of his people into the sewers.'),
  -- 45: Reach Rank C (milestone)
  (26, 45, NULL, 260020, NULL),
  -- 46: Hotel Z
  (26, 46, 437, NULL, 'Team MZ settles the debt. AZ gives Lida and Naveen Mega Rings, and they try them against you on the battle court. Wild Zones 16 and 17 open.'),
  -- 47: Hotel Richissime
  (26, 47, 982, NULL, 'Lebanne of the Society of Battle Connoisseurs invites you to dinner at this grand hotel. Dress for it. Jacinthe, who leads the Society, wants you in her tournament.'),
  -- 48: Aymlis Park
  (26, 48, 983, NULL, 'A Rogue Mega Froslass has been seen here. Naveen meets you to face it.'),
  -- 49: Rogue Mega Froslass (milestone)
  (26, 49, NULL, 260031, NULL),
  -- 50: Magenta Sector 4
  (26, 50, 992, NULL, 'A Rogue Mega Altaria has been seen here. Lida meets you to face it.'),
  -- 51: Rogue Mega Altaria (milestone)
  (26, 51, NULL, 260032, NULL),
  -- 52: Jaune Sector 8
  (26, 52, 989, NULL, 'A Rogue Mega Venusaur has been seen here. Taunie or Urbain meets you to face it.'),
  -- 53: Rogue Mega Venusaur (milestone)
  (26, 53, NULL, 260033, NULL),
  -- 54: Hotel Z
  (26, 54, 437, NULL, 'Jacinthe is tired of waiting and closes a Battle Zone of her own around the hotel. Beat Lebanne and two more of her people to get out.'),
  -- 55: Reach Rank B (milestone)
  (26, 55, NULL, 260006, NULL),
  -- 56: Quasartico Inc. (building)
  (26, 56, 448, NULL, 'Vinnie calls you in. Wild Zones 18 and 19 open, and three more Rogue Mega Evolutions appear.'),
  -- 57: Vert Sector 3
  (26, 57, 995, NULL, 'A Rogue Mega Dragonite has been seen here. Taunie or Urbain meets you to face it.'),
  -- 58: Rogue Mega Dragonite (milestone)
  (26, 58, NULL, 260034, NULL),
  -- 59: Jaune Sector 4
  (26, 59, 987, NULL, 'A Rogue Mega Tyranitar has been seen here. Naveen meets you to face it.'),
  -- 60: Rogue Mega Tyranitar (milestone)
  (26, 60, NULL, 260035, NULL),
  -- 61: Bleu Sector 9
  (26, 61, 998, NULL, 'A Rogue Mega Starmie has been seen here. Lida meets you to face it.'),
  -- 62: Rogue Mega Starmie (milestone)
  (26, 62, NULL, 260036, NULL),
  -- 63: Looker Bureau
  (26, 63, 985, NULL, 'Your next match is against someone who calls himself Grisham. Emma, the detective, tells you what she knows if you beat her.'),
  -- 64: Reach Rank A (milestone)
  (26, 64, NULL, 260021, NULL),
  -- 65: Hotel Z
  (26, 65, 437, NULL, 'The city shakes in the night, and Prism Tower glows pink with Mega Energy. Vinnie asks Team MZ to deal with it at once.'),
  -- 66: Stop the Ange Crisis (milestone)
  (26, 66, NULL, 260008, NULL),
  -- 67: Wild Zone 20
  (26, 67, 496, NULL, 'After the credits, a new Wild Zone opens where Prism Tower stood.'),
  -- 68: Infinite Z-A Royale (milestone)
  (26, 68, NULL, 260009, NULL),
  -- 69: Hotel Z
  (26, 69, 437, NULL, 'L is waiting at the hotel. He remembers two beings, one that gives and one that takes.'),
  -- 70: Pokémon Research Lab
  (26, 70, 445, NULL, 'Mable ties the anomalous Alphas turning up in the Wild Zones to the one that gives.'),
  -- 71: The One That Gives (milestone)
  (26, 71, NULL, 260010, NULL),
  -- 72: Quasartico Inc. (building)
  (26, 72, 448, NULL, 'Vinnie has built a simulator of the Rogue Mega Evolutions. Clear it to learn where the one that takes is.'),
  -- 73: The One That Takes (milestone)
  (26, 73, NULL, 260011, NULL),
  -- 74: Hotel Z
  (26, 74, 437, NULL, 'With both caught, L asks for a battle to see if you are fit to meet Zygarde.'),
  -- 75: To Keep the World in Balance (milestone)
  (26, 75, NULL, 260012, NULL);
