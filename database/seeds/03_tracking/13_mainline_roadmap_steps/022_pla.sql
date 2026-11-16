-- ============================================================================
-- Source
-- ============================================================================
-- Primary: Bulbapedia's Legends: Arceus walkthrough (parts 1 to 13) and its
-- mission and location pages for the rest.
-- Scope: Pokémon Legends: Arceus Story roadmap.
-- ============================================================================
-- File Scope
-- ============================================================================
-- Table: tracking.mainline_roadmap_steps
-- Legends: Arceus's Story roadmap, step by step, in Red / Blue's pattern: a
-- place the missions pass (location_id) or a milestone (milestone_id). Hisui's
-- big areas are not places of their own, so a step names the part of the area
-- the story goes through.
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
  -- 1: Prelude Beach
  (22, 1, 944, NULL, 'You fall out of a rift in the sky onto this beach. Professor Laventon is chasing three Pokémon that got away, and you catch them for him.'),
  -- 2: Jubilife Village
  (22, 2, 704, NULL, 'Hisui''s one town, home of the Galaxy Expedition Team. Captain Cyllene of the Survey Corps sets you an entry trial, and Professor Laventon lets you take one of his three Pokémon along.'),
  -- 3: Choose Starter (milestone)
  (22, 3, NULL, 220001, NULL),
  -- 4: Aspiration Hill
  (22, 4, 663, NULL, 'Your first steps into the Obsidian Fieldlands, with Akari or Rei. The trial is to catch a Bidoof, a Starly and a Shinx.'),
  -- 5: Galaxy Hall
  (22, 5, 688, NULL, 'The Galaxy Team''s headquarters. Cyllene makes you a member of the Survey Corps, and Commander Kamado tests you himself on the top floor.'),
  -- 6: Receive Pokédex (milestone)
  (22, 6, NULL, 220002, NULL),
  -- 7: Horseshoe Plains
  (22, 7, 699, NULL, 'West of Aspiration Hill. Fill in research tasks around here until Cyllene makes you a First Star.'),
  -- 8: Jubilife Village
  (22, 8, 704, NULL, 'With your first star, Akari or Rei battles you on the training grounds, and Zisu of the Security Corps teaches you about move styles. Mai, a warden of the Diamond Clan, has asked for help.'),
  -- 9: Deertrack Path
  (22, 9, 681, NULL, 'A path lined with torches, past the bridge. Mai battles you here to see how you handle Pokémon.'),
  -- 10: Deertrack Heights
  (22, 10, 680, NULL, 'Mai is at the top of the stairs. An alpha Pokémon has been causing trouble here, and she asks you to deal with it.'),
  -- 11: Jubilife Village
  (22, 11, 704, NULL, 'Kleavor, a noble Pokémon, has gone into a frenzy and hurt members of the Survey Corps. Commander Kamado sends you to look into it.'),
  -- 12: Nature's Pantry
  (22, 12, 707, NULL, 'South of the Heights Camp, on the way to The Heartwood.'),
  -- 13: Tidewater Dam
  (22, 13, 727, NULL, 'Past Nature''s Pantry, on the way east into The Heartwood.'),
  -- 14: The Heartwood
  (22, 14, 726, NULL, 'Deep woods around Grandtree Arena. Lian, Kleavor''s warden, turns you away until you beat him. Gather Kleavor''s favourite food for balms, and Mai calls Wyrdeer for you to ride.'),
  -- 15: Noble Kleavor (milestone)
  (22, 15, NULL, 220003, NULL),
  -- 16: Jubilife Village
  (22, 16, 704, NULL, 'A girl called Vessa asks you to find the wisps of a Pokémon that was sealed away. Arezu of the Diamond Clan asks for help with Ursaluna, and Akari or Rei battles you at the front gate before you go.'),
  -- 17: Golden Lowlands
  (22, 17, 692, NULL, 'The way into the Crimson Mirelands, a land of bogs. The Miss Fortune sisters, three bandits, have a camp by the river here. Coin battles you for the Wall Fragment they took from the ruins.'),
  -- 18: Solaceon Ruins
  (22, 18, 323, NULL, 'Old ruins in the north. Calaba, Ursaluna''s warden, wants the stolen Wall Fragment back before she will help. Bring it, and Volo, who is studying the carvings, asks for a battle.'),
  -- 19: Sludge Mound
  (22, 19, 721, NULL, 'Calaba calls Ursaluna here. Beat it and she cures it, then lets you ride it to sniff out buried things.'),
  -- 20: Jubilife Village
  (22, 20, 704, NULL, 'Lilligant has gone into a frenzy, and Arezu has gone off alone to help her. Follow her scent across the Mirelands on Ursaluna.'),
  -- 21: Noble Lilligant (milestone)
  (22, 21, NULL, 220004, NULL),
  -- 22: Veilstone Cape
  (22, 22, 731, NULL, 'In the Cobalt Coastlands, ride to the far point of the cape. Palina, the warden, is there with two Growlithe and asks which one is the old lord''s child.'),
  -- 23: Aipom Hill
  (22, 23, 660, NULL, 'Iscan lives here. He will lend you Basculegion to cross the sea once you bring what its favourite food needs from Deadwood Haunt.'),
  -- 24: Deadwood Haunt
  (22, 24, 679, NULL, 'A shore of wrecked ships. Catch the Pokémon Iscan needs here.'),
  -- 25: Firespit Island
  (22, 25, 686, NULL, 'A volcano island across the sea. The Miss Fortune sisters have carried off one of Palina''s Growlithe to the arena at the top.'),
  -- 26: Noble Arcanine (milestone)
  (22, 26, NULL, 220005, NULL),
  -- 27: Jubilife Village
  (22, 27, 704, NULL, 'Before you leave for the Coronet Highlands, Adaman tests you in the village.'),
  -- 28: Wayward Cave
  (22, 28, 340, NULL, 'Ingo, a warden who has lost his memory, leads you through the dark cave. Stay close to him.'),
  -- 29: Ancient Quarry
  (22, 29, 661, NULL, 'The stones of the Temple of Sinnoh were cut here. Volo catches up with you and Ingo.'),
  -- 30: Clamberclaw Cliffs
  (22, 30, 673, NULL, 'Cliffs too steep to walk. Ingo battles you before he lends you Sneasler to climb them.'),
  -- 31: Noble Electrode (milestone)
  (22, 31, NULL, 220006, NULL),
  -- 32: Jubilife Village
  (22, 32, 704, NULL, 'Akari or Rei battles you at the front gate before you leave for the Alabaster Icelands. Professor Laventon wonders if Avalugg should be quelled at all, since it has hurt no one.'),
  -- 33: Whiteout Valley
  (22, 33, 733, NULL, 'The way into the Alabaster Icelands. Adaman and Irida go ahead to meet Avalugg''s warden. Keaka gives you an Alolan Vulpix if you find all five of his in the snow.'),
  -- 34: Avalugg's Legacy
  (22, 34, 665, NULL, 'Gaeric, Avalugg''s warden and Irida''s teacher, is not sure the lord needs quelling. He battles you to see what you are made of.'),
  -- 35: Snowpoint Temple
  (22, 35, 322, NULL, 'A temple of statues, with a door that opens when you press its three symbols in the right order. Sabi, Braviary''s warden, waits on the roof.'),
  -- 36: Noble Avalugg (milestone)
  (22, 36, NULL, 220007, NULL),
  -- 37: Jubilife Village
  (22, 37, 704, NULL, 'The sky tears open over Mount Coronet. Commander Kamado blames you and banishes you. Volo takes you to Cogita.'),
  -- 38: Choose Clan Leader (milestone)
  (22, 38, NULL, 220008, NULL),
  -- 39: Lake Verity
  (22, 39, 274, NULL, 'One of the three lakes. Mesprit sets you a trial in its cavern before it gives its part of the Red Chain.'),
  -- 40: Lake Valor
  (22, 40, 273, NULL, 'Azelf''s lake, in the Crimson Mirelands. Its cavern holds the second trial.'),
  -- 41: Lake Acuity
  (22, 41, 272, NULL, 'Uxie''s lake, in the Alabaster Icelands. Its cavern holds the last trial.'),
  -- 42: Shrouded Ruins
  (22, 42, 720, NULL, 'Volo takes you straight here from Lake Acuity. The three lake guardians meet you with Cogita, and forge the Red Chain.'),
  -- 43: Jubilife Village
  (22, 43, 704, NULL, 'Your clan leader speaks for you at the front gate. Commander Kamado has already left for Mount Coronet.'),
  -- 44: Cloudcap Pass
  (22, 44, 674, NULL, 'The climb from the Summit Camp, by Moonview Arena, to the Stone Portal.'),
  -- 45: Stone Portal
  (22, 45, 949, NULL, 'The gate to the Temple of Sinnoh, high on Mount Coronet. Beni of the Galaxy Team bars the way.'),
  -- 46: Commander Kamado (milestone)
  (22, 46, NULL, 220009, NULL),
  -- 47: Primeval Grotto
  (22, 47, 711, NULL, 'The second Pokémon breaks the Red Chain. Lian, Kleavor''s warden, helps you dig Origin Ore out of the wall here for a ball that can hold it. The Miss Fortune sisters turn up to take the ore and are driven off.'),
  -- 48: Origin Pokémon (milestone)
  (22, 48, NULL, 220010, NULL),
  -- 49: Ancient Retreat
  (22, 49, 950, NULL, 'After the credits, Volo and Cogita set you looking for the plates that are still missing.'),
  -- 50: The Plate of the Lakes (milestone)
  (22, 50, NULL, 220013, NULL),
  -- 51: The Plate of Firespit Island (milestone)
  (22, 51, NULL, 220014, NULL),
  -- 52: The Plate of Moonview Arena (milestone)
  (22, 52, NULL, 220015, NULL),
  -- 53: The Plate of Snowpoint Temple (milestone)
  (22, 53, NULL, 220016, NULL),
  -- 54: Stone Portal
  (22, 54, 949, NULL, 'With every plate but one, Volo asks you to meet him at the Temple of Sinnoh.'),
  -- 55: Defeat Volo (milestone)
  (22, 55, NULL, 220011, NULL),
  -- 56: Meet Arceus (milestone)
  (22, 56, NULL, 220012, NULL),
  -- 57: Sand's Reach
  (22, 57, 714, NULL, 'Two stone pillars stand in the sea off this beach.'),
  -- 58: The Sea's Legend (milestone)
  (22, 58, NULL, 220017, NULL),
  -- 59: Spring Path
  (22, 59, 724, NULL, 'A path in the Cobalt Coastlands. Turnback Cave opens off it.'),
  -- 60: On the Trail of Giratina (milestone)
  (22, 60, NULL, 220018, NULL),
  -- 61: Incarnate Forces (milestone)
  (22, 61, NULL, 220019, NULL);
