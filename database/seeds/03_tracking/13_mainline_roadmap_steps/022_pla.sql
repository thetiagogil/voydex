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
  -- 16: Windswept Run
  (22, 16, 735, NULL, 'A side trip to the east shore of the Fieldlands'' middle, between Deertrack Path, Deertrack Heights and Nature''s Pantry.'),
  -- 17: Worn Bridge
  (22, 17, 736, NULL, 'Stone overpasses off the northeast tip of Deertrack Heights, up toward Horseshoe Plains and Grueling Grove.'),
  -- 18: Grueling Grove
  (22, 18, 694, NULL, 'Land by a river in the northeast of the Fieldlands, east of Horseshoe Plains.'),
  -- 19: Obsidian Falls
  (22, 19, 708, NULL, 'A waterfall south of Grueling Grove. Its upper part reaches The Heartwood.'),
  -- 20: Oreburrow Tunnel
  (22, 20, 709, NULL, 'A tunnel through the mountain of the falls, from The Heartwood to Grueling Grove. In time it becomes part of Oreburgh Mine.'),
  -- 21: Floaro Gardens
  (22, 21, 687, NULL, 'Flower fields in the northwest of the Fieldlands, north of Aspiration Hill.'),
  -- 22: Sandgem Flats
  (22, 22, 715, NULL, 'Flats in the southwest of the Fieldlands, south of Aspiration Hill and Lake Verity.'),
  -- 23: Ramanas Island
  (22, 23, 712, NULL, 'An island across the river from Sandgem Flats, reached by water.'),
  -- 24: Jubilife Village
  (22, 24, 704, NULL, 'A girl called Vessa asks you to find the wisps of a Pokémon that was sealed away. Arezu of the Diamond Clan asks for help with Ursaluna, and Akari or Rei battles you at the front gate before you go.'),
  -- 25: Golden Lowlands
  (22, 25, 692, NULL, 'The way into the Crimson Mirelands, a land of bogs. The Miss Fortune sisters, three bandits, have a camp by the river here. Coin battles you for the Wall Fragment they took from the ruins.'),
  -- 26: Solaceon Ruins
  (22, 26, 323, NULL, 'Old ruins in the north. Calaba, Ursaluna''s warden, wants the stolen Wall Fragment back before she will help. Bring it, and Volo, who is studying the carvings, asks for a battle.'),
  -- 27: Sludge Mound
  (22, 27, 721, NULL, 'Calaba calls Ursaluna here. Beat it and she cures it, then lets you ride it to sniff out buried things.'),
  -- 28: Jubilife Village
  (22, 28, 704, NULL, 'Lilligant has gone into a frenzy, and Arezu has gone off alone to help her. Follow her scent across the Mirelands on Ursaluna.'),
  -- 29: Noble Lilligant (milestone)
  (22, 29, NULL, 220004, NULL),
  -- 30: Gapejaw Bog
  (22, 30, 689, NULL, 'A side trip into the bog between the Golden Lowlands and Sludge Mound.'),
  -- 31: Holm of Trials
  (22, 31, 698, NULL, 'Across the river south of Gapejaw Bog, on a large island by the east shore.'),
  -- 32: Ursa's Ring
  (22, 32, 730, NULL, 'Rugged plateaus south of Sludge Mound.'),
  -- 33: Scarlet Bog
  (22, 33, 716, NULL, 'A bog east of Gapejaw Bog.'),
  -- 34: Bolderoll Slope
  (22, 34, 668, NULL, 'A slope from the high north of the Mirelands down into the Scarlet Bog.'),
  -- 35: Diamond Settlement
  (22, 35, 683, NULL, 'The Diamond Clan''s camp, in a forest in the north of the Mirelands. Adaman lives here.'),
  -- 36: Diamond Heath
  (22, 36, 682, NULL, 'Higher ground on the edge of the Diamond Settlement.'),
  -- 37: Cloudpool Ridge
  (22, 37, 675, NULL, 'A forested climb from Diamond Heath up toward Brava Arena.'),
  -- 38: Droning Meadow
  (22, 38, 684, NULL, 'Uneven ground dotted with plateaus in the east of the Mirelands.'),
  -- 39: Cottonsedge Prairie
  (22, 39, 676, NULL, 'A small hidden valley north of the Droning Meadow, below Lake Valor.'),
  -- 40: Veilstone Cape
  (22, 40, 731, NULL, 'In the Cobalt Coastlands, ride to the far point of the cape. Palina, the warden, is there with two Growlithe and asks which one is the old lord''s child.'),
  -- 41: Aipom Hill
  (22, 41, 660, NULL, 'Iscan lives here. He will lend you Basculegion to cross the sea once you bring what its favourite food needs from Deadwood Haunt.'),
  -- 42: Deadwood Haunt
  (22, 42, 679, NULL, 'A shore of wrecked ships. Catch the Pokémon Iscan needs here.'),
  -- 43: Firespit Island
  (22, 43, 686, NULL, 'A volcano island across the sea. The Miss Fortune sisters have carried off one of Palina''s Growlithe to the arena at the top.'),
  -- 44: Noble Arcanine (milestone)
  (22, 44, NULL, 220005, NULL),
  -- 45: Crossing Slope
  (22, 45, 678, NULL, 'A side trip to the hills by the Beachside Camp, at the west edge of the Coastlands.'),
  -- 46: Ginkgo Landing
  (22, 46, 690, NULL, 'East of Crossing Slope, on the west shore of Tranquility Cove.'),
  -- 47: Windbreak Stand
  (22, 47, 734, NULL, 'High ground north of Crossing Slope, reached on a Ride Pokémon. It leads east to Veilstone Cape.'),
  -- 48: Castaway Shore
  (22, 48, 670, NULL, 'A rugged shore at the north end of Tranquility Cove, south of Veilstone Cape.'),
  -- 49: Tranquility Cove
  (22, 49, 729, NULL, 'The great bay in the heart of the Coastlands, crossed by water.'),
  -- 50: Bathers' Lagoon
  (22, 50, 666, NULL, 'Flat land on the south shore of Tranquility Cove, east of Aipom Hill.'),
  -- 51: Hideaway Bay
  (22, 51, 697, NULL, 'A hidden shore at the far south of the Coastlands, below Bathers'' Lagoon.'),
  -- 52: Tombolo Walk
  (22, 52, 728, NULL, 'Three islands off the shore southeast of Sand''s Reach.'),
  -- 53: Lunker's Lair
  (22, 53, 706, NULL, 'Open water below the eastern tip of Veilstone Cape, north of Tranquility Cove. One large island sits out in it.'),
  -- 54: Seagrass Haven
  (22, 54, 717, NULL, 'Islands in the northern waters, between Veilstone Cape and Firespit Island.'),
  -- 55: Islespy Shore
  (22, 55, 703, NULL, 'The crescent-shaped northern shore of the Coastlands, east of the Spring Path.'),
  -- 56: Jubilife Village
  (22, 56, 704, NULL, 'Before you leave for the Coronet Highlands, Adaman tests you in the village.'),
  -- 57: Wayward Cave
  (22, 57, 340, NULL, 'Ingo, a warden who has lost his memory, leads you through the dark cave. Stay close to him.'),
  -- 58: Ancient Quarry
  (22, 58, 661, NULL, 'The stones of the Temple of Sinnoh were cut here. Volo catches up with you and Ingo.'),
  -- 59: Clamberclaw Cliffs
  (22, 59, 673, NULL, 'Cliffs too steep to walk. Ingo battles you before he lends you Sneasler to climb them.'),
  -- 60: Noble Electrode (milestone)
  (22, 60, NULL, 220006, NULL),
  -- 61: Sonorous Path
  (22, 61, 723, NULL, 'A side trip east from the Ancient Quarry toward Lonely Spring.'),
  -- 62: Lonely Spring
  (22, 62, 705, NULL, 'East of Sonorous Path, south of Clamberclaw Cliffs.'),
  -- 63: Heavenward Lookout
  (22, 63, 696, NULL, 'At the foot of Mount Coronet, south of Lonely Spring. The Highlands Camp and the lower way into Wayward Cave are here.'),
  -- 64: Wayward Wood
  (22, 64, 732, NULL, 'A forest across the river west of Heavenward Lookout, over Wayward Cave.'),
  -- 65: Fabled Spring
  (22, 65, 685, NULL, 'A spring west of Wayward Wood, south of Bolderoll Ravine.'),
  -- 66: Bolderoll Ravine
  (22, 66, 667, NULL, 'Ravines cut into the mountain north of Fabled Spring.'),
  -- 67: Celestica Trail
  (22, 67, 672, NULL, 'A long passage from Clamberclaw Cliffs west to Bolderoll Ravine.'),
  -- 68: Celestica Ruins
  (22, 68, 671, NULL, 'Old ruins across flat land at the top of the Highlands, north of Clamberclaw Cliffs.'),
  -- 69: Sacred Plaza
  (22, 69, 713, NULL, 'West of the Celestica Ruins, beside Moonview Arena.'),
  -- 70: Stonetooth Rows
  (22, 70, 725, NULL, 'Stone terraces climbing up to the Sacred Plaza.'),
  -- 71: Jubilife Village
  (22, 71, 704, NULL, 'Akari or Rei battles you at the front gate before you leave for the Alabaster Icelands. Professor Laventon wonders if Avalugg should be quelled at all, since it has hurt no one.'),
  -- 72: Whiteout Valley
  (22, 72, 733, NULL, 'The way into the Alabaster Icelands. Adaman and Irida go ahead to meet Avalugg''s warden. Keaka gives you an Alolan Vulpix if you find all five of his in the snow.'),
  -- 73: Avalugg's Legacy
  (22, 73, 665, NULL, 'Gaeric, Avalugg''s warden and Irida''s teacher, is not sure the lord needs quelling. He battles you to see what you are made of.'),
  -- 74: Snowpoint Temple
  (22, 74, 322, NULL, 'A temple of statues, with a door that opens when you press its three symbols in the right order. Sabi, Braviary''s warden, waits on the roof.'),
  -- 75: Noble Avalugg (milestone)
  (22, 75, NULL, 220007, NULL),
  -- 76: Crevasse Passage
  (22, 76, 677, NULL, 'A side trip into a short cave from Whiteout Valley north to Bonechill Wastes.'),
  -- 77: Bonechill Wastes
  (22, 77, 669, NULL, 'A vast plain of ice south of Avalugg''s Legacy.'),
  -- 78: Icepeak Cavern
  (22, 78, 702, NULL, 'Caves under the middle of the Icelands, with several ways in. The Ice Rock is in the part under Bonechill Wastes.'),
  -- 79: Pearl Settlement
  (22, 79, 710, NULL, 'The Pearl Clan''s camp in the northeast of the Icelands. Irida lives here.'),
  -- 80: Heart's Crag
  (22, 80, 695, NULL, 'A forested spot across a wide river, southeast of the Pearl Settlement, reached on a Ride Pokémon.'),
  -- 81: Snowfall Hot Spring
  (22, 81, 722, NULL, 'A hot spring in a valley north of Icepeak Arena.'),
  -- 82: Glacier Terrace
  (22, 82, 691, NULL, 'North of Snowfall Hot Spring, west of Lake Acuity.'),
  -- 83: Secret Hollow
  (22, 83, 719, NULL, 'A cave east of Glacier Terrace, behind a rock wall a Ride Pokémon can break.'),
  -- 84: Arena's Approach
  (22, 84, 662, NULL, 'A wooded path south of Icepeak Arena.'),
  -- 85: Ice Column Chamber
  (22, 85, 700, NULL, 'A cave at the northeast end of Avalanche Slopes.'),
  -- 86: Avalanche Slopes
  (22, 86, 664, NULL, 'Snowy slopes south of Arena''s Approach, rising toward Mount Coronet.'),
  -- 87: Icebound Falls
  (22, 87, 701, NULL, 'A valley of steep cliffs southeast of Avalanche Slopes.'),
  -- 88: Jubilife Village
  (22, 88, 704, NULL, 'The sky tears open over Mount Coronet. Commander Kamado blames you and banishes you. Volo takes you to Cogita.'),
  -- 89: Choose Clan Leader (milestone)
  (22, 89, NULL, 220008, NULL),
  -- 90: Lake Verity
  (22, 90, 274, NULL, 'One of the three lakes. Mesprit sets you a trial in its cavern before it gives its part of the Red Chain.'),
  -- 91: Lake Valor
  (22, 91, 273, NULL, 'Azelf''s lake, in the Crimson Mirelands. Its cavern holds the second trial.'),
  -- 92: Lake Acuity
  (22, 92, 272, NULL, 'Uxie''s lake, in the Alabaster Icelands. Its cavern holds the last trial.'),
  -- 93: Shrouded Ruins
  (22, 93, 720, NULL, 'Volo takes you straight here from Lake Acuity. The three lake guardians meet you with Cogita, and forge the Red Chain.'),
  -- 94: Jubilife Village
  (22, 94, 704, NULL, 'Your clan leader speaks for you at the front gate. Commander Kamado has already left for Mount Coronet.'),
  -- 95: Cloudcap Pass
  (22, 95, 674, NULL, 'The climb from the Summit Camp, by Moonview Arena, to the Stone Portal.'),
  -- 96: Stone Portal
  (22, 96, 949, NULL, 'The gate to the Temple of Sinnoh, high on Mount Coronet. Beni of the Galaxy Team bars the way.'),
  -- 97: Commander Kamado (milestone)
  (22, 97, NULL, 220009, NULL),
  -- 98: Primeval Grotto
  (22, 98, 711, NULL, 'The second Pokémon breaks the Red Chain. Lian, Kleavor''s warden, helps you dig Origin Ore out of the wall here for a ball that can hold it. The Miss Fortune sisters turn up to take the ore and are driven off.'),
  -- 99: Origin Pokémon (milestone)
  (22, 99, NULL, 220010, NULL),
  -- 100: Ancient Retreat
  (22, 100, 950, NULL, 'After the credits, Volo and Cogita set you looking for the plates that are still missing.'),
  -- 101: The Plate of the Lakes (milestone)
  (22, 101, NULL, 220013, NULL),
  -- 102: The Plate of Firespit Island (milestone)
  (22, 102, NULL, 220014, NULL),
  -- 103: The Plate of Moonview Arena (milestone)
  (22, 103, NULL, 220015, NULL),
  -- 104: The Plate of Snowpoint Temple (milestone)
  (22, 104, NULL, 220016, NULL),
  -- 105: Stone Portal
  (22, 105, 949, NULL, 'With every plate but one, Volo asks you to meet him at the Temple of Sinnoh.'),
  -- 106: Defeat Volo (milestone)
  (22, 106, NULL, 220011, NULL),
  -- 107: Meet Arceus (milestone)
  (22, 107, NULL, 220012, NULL),
  -- 108: Sand's Reach
  (22, 108, 714, NULL, 'Two stone pillars stand in the sea off this beach.'),
  -- 109: The Sea's Legend (milestone)
  (22, 109, NULL, 220017, NULL),
  -- 110: Spring Path
  (22, 110, 724, NULL, 'A path in the Cobalt Coastlands. Turnback Cave opens off it.'),
  -- 111: On the Trail of Giratina (milestone)
  (22, 111, NULL, 220018, NULL),
  -- 112: Incarnate Forces (milestone)
  (22, 112, NULL, 220019, NULL);
